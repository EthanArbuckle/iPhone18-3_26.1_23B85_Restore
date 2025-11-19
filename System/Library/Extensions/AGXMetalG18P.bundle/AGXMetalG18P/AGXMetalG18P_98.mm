float32x2x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int32x4_t a3, int32x4_t a4, int32x4_t a5)
{
  v61 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v60, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v6 = *(a1 + 80);
  if (v6)
  {
    v7 = *(a1 + 84);
    if (v7)
    {
      v8 = *(a1 + 72);
      v9 = 2 * v8;
      v10 = 2 * *(a1 + 76);
      v11 = &v60[2 * v8] + v10;
      v13 = *(a1 + 56);
      v12 = *(a1 + 64);
      v14 = 2 * v7;
      v15 = &v60[2 * v6 - 2 + 2 * v8] + 2 * v7 + v10;
      v18 = v11 < v13 + v12 * (v6 - 1) + 2 * v7 && v13 < v15 || v12 < 0;
      if (v7 > 3)
      {
        if (!v14 || (v14 - 1) >> 32)
        {
          for (i = 0; i != v6; ++i)
          {
            v24 = 0;
            do
            {
              v11[v24] = *(v13 + v24);
              ++v24;
            }

            while (v14 > v24);
            v11 += 32;
            v13 += v12;
          }
        }

        else if (v18)
        {
          for (j = 0; j != v6; ++j)
          {
            v22 = 0;
            do
            {
              v11[v22] = *(v13 + v22);
              ++v22;
            }

            while (v14 > v22);
            v11 += 32;
            v13 += v12;
          }
        }

        else
        {
          v26 = v14 & 0x1FFFFFFF8;
          if (v7 > 0xF)
          {
            v29 = v14 & 0x1FFFFFFE0;
            if (v14 == (v14 & 0x1FFFFFFE0))
            {
              v30 = 0;
              v31 = &v60[v9 + 1] + v10;
              v32 = (v13 + 16);
              do
              {
                v33 = v32;
                v34 = v31;
                v35 = v14;
                do
                {
                  v36 = *v33;
                  *(v34 - 1) = *(v33 - 1);
                  *v34 = v36;
                  v34 += 2;
                  v33 += 2;
                  v35 -= 32;
                }

                while (v35);
                ++v30;
                v31 += 32;
                v32 = (v32 + v12);
              }

              while (v30 != v6);
            }

            else
            {
              v44 = 0;
              v45 = v7 & 0xC;
              v46 = &v60[v9] + v10;
              v47 = &v60[v9 + 1] + v10;
              v48 = (v13 + 16);
              v49 = (v13 + v29);
              v50 = &v46[v29];
              do
              {
                v51 = v48;
                v52 = v47;
                v53 = v14 & 0x1FFFFFFE0;
                do
                {
                  v54 = *v51;
                  *(v52 - 1) = *(v51 - 1);
                  *v52 = v54;
                  v52 += 2;
                  v51 += 2;
                  v53 -= 32;
                }

                while (v53);
                v55 = v14 & 0x1FFFFFFE0;
                if (!v45)
                {
                  goto LABEL_64;
                }

                v56 = v50;
                v57 = v49;
                v58 = v26 - v29;
                do
                {
                  v59 = *v57++;
                  *v56 = v59;
                  v56 += 8;
                  v58 -= 8;
                }

                while (v58);
                v55 = v14 & 0x1FFFFFFF8;
                if (v14 != v26)
                {
LABEL_64:
                  do
                  {
                    v11[v55] = *(v13 + v55);
                    ++v55;
                  }

                  while (v14 > v55);
                }

                ++v44;
                v47 += 32;
                v48 = (v48 + v12);
                v49 = (v49 + v12);
                v50 += 32;
                v11 += 32;
                v13 += v12;
              }

              while (v44 != v6);
            }
          }

          else if (v14 == v26)
          {
            v27 = (v13 + 16);
            v28 = (&v60[v9 + 1] + v10);
            do
            {
              v28[-1].val[0] = v27[-2];
              if (v7 != 4)
              {
                v28[-1].val[1] = v27[-1];
                if (v7 != 8)
                {
                  v28->val[0] = *v27;
                }
              }

              v27 = (v27 + v12);
              v28 += 2;
              --v6;
            }

            while (v6);
          }

          else
          {
            for (k = 0; k != v6; ++k)
            {
              v38 = (v13 + v12 * k);
              v39 = &v11[32 * k];
              *v39 = *v38;
              if (v26 != 8)
              {
                *(v39 + 1) = v38[1];
                if (v26 != 16)
                {
                  *(v39 + 2) = v38[2];
                }
              }

              v40 = &v39[v26];
              v41 = v38 + v26;
              v42 = v14 & 0x18;
              do
              {
                v43 = *v41++;
                *v40++ = v43;
                ++v42;
              }

              while (v14 > v42);
            }
          }
        }
      }

      else
      {
        for (m = 0; m != v6; ++m)
        {
          v20 = 0;
          do
          {
            v11[v20] = *(v13 + v20);
            ++v20;
          }

          while (v20 < v14);
          v11 += 32;
          v13 += v12;
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v60, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int32x4_t a3, int32x4_t a4, int32x4_t a5)
{
  v67 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v66, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = *(a1 + 84);
    if (v15)
    {
      v16 = *(a1 + 72);
      v17 = 32 * v16;
      v18 = 2 * *(a1 + 76);
      v19 = &v66[32 * v16 + v18];
      v21 = *(a1 + 56);
      v20 = *(a1 + 64);
      v22 = 2 * v15;
      v23 = &v66[32 * v14 - 32 + 32 * v16 + 2 * v15 + v18];
      v26 = v19 < v21 + v20 * (v14 - 1) + 2 * v15 && v21 < v23 || v20 < 0;
      if (v15 > 3)
      {
        if (!v22 || (v22 - 1) >> 32)
        {
          for (i = 0; i != v14; ++i)
          {
            v32 = 0;
            do
            {
              v19[v32] = *(v21 + v32);
              ++v32;
            }

            while (v22 > v32);
            v19 += 32;
            v21 += v20;
          }
        }

        else if (v26)
        {
          for (j = 0; j != v14; ++j)
          {
            v30 = 0;
            do
            {
              v19[v30] = *(v21 + v30);
              ++v30;
            }

            while (v22 > v30);
            v19 += 32;
            v21 += v20;
          }
        }

        else
        {
          v34 = v22 & 0x1FFFFFFF8;
          if (v15 > 0xF)
          {
            v37 = v22 & 0x1FFFFFFE0;
            if (v22 == (v22 & 0x1FFFFFFE0))
            {
              v38 = 0;
              v39 = &v66[v17 + 16 + v18];
              v40 = (v21 + 16);
              do
              {
                v41 = v40;
                v42 = v39;
                v43 = v22;
                do
                {
                  v6 = *(v41 - 1);
                  v7 = *v41;
                  *(v42 - 1) = v6;
                  *v42 = v7;
                  v42 += 2;
                  v41 += 2;
                  v43 -= 32;
                }

                while (v43);
                ++v38;
                v39 += 32;
                v40 = (v40 + v20);
              }

              while (v38 != v14);
            }

            else
            {
              v51 = 0;
              v52 = v15 & 0xC;
              v53 = &v66[v17 + v18];
              v54 = &v66[v17 + 16 + v18];
              v55 = (v21 + 16);
              v56 = (v21 + v37);
              v57 = &v53[v37];
              do
              {
                v58 = v55;
                v59 = v54;
                v60 = v22 & 0x1FFFFFFE0;
                do
                {
                  v6 = *(v58 - 1);
                  v7 = *v58;
                  *(v59 - 1) = v6;
                  *v59 = v7;
                  v59 += 2;
                  v58 += 2;
                  v60 -= 32;
                }

                while (v60);
                v61 = v22 & 0x1FFFFFFE0;
                if (!v52)
                {
                  goto LABEL_64;
                }

                v62 = v57;
                v63 = v56;
                v64 = v34 - v37;
                do
                {
                  v65 = *v63++;
                  *&v6 = v65;
                  *v62++ = v65;
                  v64 -= 8;
                }

                while (v64);
                v61 = v22 & 0x1FFFFFFF8;
                if (v22 != v34)
                {
LABEL_64:
                  do
                  {
                    v19[v61] = *(v21 + v61);
                    ++v61;
                  }

                  while (v22 > v61);
                }

                ++v51;
                v54 += 32;
                v55 = (v55 + v20);
                v56 = (v56 + v20);
                v57 += 4;
                v19 += 32;
                v21 += v20;
              }

              while (v51 != v14);
            }
          }

          else if (v22 == v34)
          {
            v35 = (v21 + 16);
            v36 = &v66[v17 + 16 + v18];
            do
            {
              *&v6 = *(v35 - 2);
              *(v36 - 2) = v6;
              if (v15 != 4)
              {
                *&v6 = *(v35 - 1);
                *(v36 - 1) = v6;
                if (v15 != 8)
                {
                  *&v6 = *v35;
                  *v36 = *v35;
                }
              }

              v35 = (v35 + v20);
              v36 += 4;
              --v14;
            }

            while (v14);
          }

          else
          {
            for (k = 0; k != v14; ++k)
            {
              v45 = (v21 + v20 * k);
              v46 = &v19[32 * k];
              *&v6 = *v45;
              *v46 = *v45;
              if (v34 != 8)
              {
                *&v6 = v45[1];
                v46[1] = v6;
                if (v34 != 16)
                {
                  *&v6 = v45[2];
                  v46[2] = v6;
                }
              }

              v47 = v46 + v34;
              v48 = v45 + v34;
              v49 = v22 & 0x18;
              do
              {
                v50 = *v48++;
                *v47++ = v50;
                ++v49;
              }

              while (v22 > v49);
            }
          }
        }
      }

      else
      {
        for (m = 0; m != v14; ++m)
        {
          v28 = 0;
          do
          {
            v19[v28] = *(v21 + v28);
            ++v28;
          }

          while (v28 < v22);
          v19 += 32;
          v21 += v20;
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v66, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *&v6, *&v7, v8, v9, v10, v11, v12, v13);
}

float32x2x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int32x4_t a3, int32x4_t a4, int32x4_t a5)
{
  v61 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v60, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v6 = *(a1 + 80);
  if (v6)
  {
    v7 = *(a1 + 84);
    if (v7)
    {
      v8 = *(a1 + 72);
      v9 = 2 * v8;
      v10 = 2 * *(a1 + 76);
      v11 = &v60[2 * v8] + v10;
      v13 = *(a1 + 56);
      v12 = *(a1 + 64);
      v14 = 2 * v7;
      v15 = &v60[2 * v6 - 2 + 2 * v8] + 2 * v7 + v10;
      v18 = v11 < v13 + v12 * (v6 - 1) + 2 * v7 && v13 < v15 || v12 < 0;
      if (v7 > 3)
      {
        if (!v14 || (v14 - 1) >> 32)
        {
          for (i = 0; i != v6; ++i)
          {
            v24 = 0;
            do
            {
              v11[v24] = *(v13 + v24);
              ++v24;
            }

            while (v14 > v24);
            v11 += 32;
            v13 += v12;
          }
        }

        else if (v18)
        {
          for (j = 0; j != v6; ++j)
          {
            v22 = 0;
            do
            {
              v11[v22] = *(v13 + v22);
              ++v22;
            }

            while (v14 > v22);
            v11 += 32;
            v13 += v12;
          }
        }

        else
        {
          v26 = v14 & 0x1FFFFFFF8;
          if (v7 > 0xF)
          {
            v29 = v14 & 0x1FFFFFFE0;
            if (v14 == (v14 & 0x1FFFFFFE0))
            {
              v30 = 0;
              v31 = &v60[v9 + 1] + v10;
              v32 = (v13 + 16);
              do
              {
                v33 = v32;
                v34 = v31;
                v35 = v14;
                do
                {
                  v36 = *v33;
                  *(v34 - 1) = *(v33 - 1);
                  *v34 = v36;
                  v34 += 2;
                  v33 += 2;
                  v35 -= 32;
                }

                while (v35);
                ++v30;
                v31 += 32;
                v32 = (v32 + v12);
              }

              while (v30 != v6);
            }

            else
            {
              v44 = 0;
              v45 = v7 & 0xC;
              v46 = &v60[v9] + v10;
              v47 = &v60[v9 + 1] + v10;
              v48 = (v13 + 16);
              v49 = (v13 + v29);
              v50 = &v46[v29];
              do
              {
                v51 = v48;
                v52 = v47;
                v53 = v14 & 0x1FFFFFFE0;
                do
                {
                  v54 = *v51;
                  *(v52 - 1) = *(v51 - 1);
                  *v52 = v54;
                  v52 += 2;
                  v51 += 2;
                  v53 -= 32;
                }

                while (v53);
                v55 = v14 & 0x1FFFFFFE0;
                if (!v45)
                {
                  goto LABEL_64;
                }

                v56 = v50;
                v57 = v49;
                v58 = v26 - v29;
                do
                {
                  v59 = *v57++;
                  *v56 = v59;
                  v56 += 8;
                  v58 -= 8;
                }

                while (v58);
                v55 = v14 & 0x1FFFFFFF8;
                if (v14 != v26)
                {
LABEL_64:
                  do
                  {
                    v11[v55] = *(v13 + v55);
                    ++v55;
                  }

                  while (v14 > v55);
                }

                ++v44;
                v47 += 32;
                v48 = (v48 + v12);
                v49 = (v49 + v12);
                v50 += 32;
                v11 += 32;
                v13 += v12;
              }

              while (v44 != v6);
            }
          }

          else if (v14 == v26)
          {
            v27 = (v13 + 16);
            v28 = (&v60[v9 + 1] + v10);
            do
            {
              v28[-1].val[0] = v27[-2];
              if (v7 != 4)
              {
                v28[-1].val[1] = v27[-1];
                if (v7 != 8)
                {
                  v28->val[0] = *v27;
                }
              }

              v27 = (v27 + v12);
              v28 += 2;
              --v6;
            }

            while (v6);
          }

          else
          {
            for (k = 0; k != v6; ++k)
            {
              v38 = (v13 + v12 * k);
              v39 = &v11[32 * k];
              *v39 = *v38;
              if (v26 != 8)
              {
                *(v39 + 1) = v38[1];
                if (v26 != 16)
                {
                  *(v39 + 2) = v38[2];
                }
              }

              v40 = &v39[v26];
              v41 = v38 + v26;
              v42 = v14 & 0x18;
              do
              {
                v43 = *v41++;
                *v40++ = v43;
                ++v42;
              }

              while (v14 > v42);
            }
          }
        }
      }

      else
      {
        for (m = 0; m != v6; ++m)
        {
          v20 = 0;
          do
          {
            v11[v20] = *(v13 + v20);
            ++v20;
          }

          while (v20 < v14);
          v11 += 32;
          v13 += v12;
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v60, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int32x4_t a3, int32x4_t a4, int32x4_t a5)
{
  v67 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v66, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = *(a1 + 84);
    if (v15)
    {
      v16 = *(a1 + 72);
      v17 = 32 * v16;
      v18 = 2 * *(a1 + 76);
      v19 = &v66[32 * v16 + v18];
      v21 = *(a1 + 56);
      v20 = *(a1 + 64);
      v22 = 2 * v15;
      v23 = &v66[32 * v14 - 32 + 32 * v16 + 2 * v15 + v18];
      v26 = v19 < v21 + v20 * (v14 - 1) + 2 * v15 && v21 < v23 || v20 < 0;
      if (v15 > 3)
      {
        if (!v22 || (v22 - 1) >> 32)
        {
          for (i = 0; i != v14; ++i)
          {
            v32 = 0;
            do
            {
              v19[v32] = *(v21 + v32);
              ++v32;
            }

            while (v22 > v32);
            v19 += 32;
            v21 += v20;
          }
        }

        else if (v26)
        {
          for (j = 0; j != v14; ++j)
          {
            v30 = 0;
            do
            {
              v19[v30] = *(v21 + v30);
              ++v30;
            }

            while (v22 > v30);
            v19 += 32;
            v21 += v20;
          }
        }

        else
        {
          v34 = v22 & 0x1FFFFFFF8;
          if (v15 > 0xF)
          {
            v37 = v22 & 0x1FFFFFFE0;
            if (v22 == (v22 & 0x1FFFFFFE0))
            {
              v38 = 0;
              v39 = &v66[v17 + 16 + v18];
              v40 = (v21 + 16);
              do
              {
                v41 = v40;
                v42 = v39;
                v43 = v22;
                do
                {
                  v6 = *(v41 - 1);
                  v7 = *v41;
                  *(v42 - 1) = v6;
                  *v42 = v7;
                  v42 += 2;
                  v41 += 2;
                  v43 -= 32;
                }

                while (v43);
                ++v38;
                v39 += 32;
                v40 = (v40 + v20);
              }

              while (v38 != v14);
            }

            else
            {
              v51 = 0;
              v52 = v15 & 0xC;
              v53 = &v66[v17 + v18];
              v54 = &v66[v17 + 16 + v18];
              v55 = (v21 + 16);
              v56 = (v21 + v37);
              v57 = &v53[v37];
              do
              {
                v58 = v55;
                v59 = v54;
                v60 = v22 & 0x1FFFFFFE0;
                do
                {
                  v6 = *(v58 - 1);
                  v7 = *v58;
                  *(v59 - 1) = v6;
                  *v59 = v7;
                  v59 += 2;
                  v58 += 2;
                  v60 -= 32;
                }

                while (v60);
                v61 = v22 & 0x1FFFFFFE0;
                if (!v52)
                {
                  goto LABEL_64;
                }

                v62 = v57;
                v63 = v56;
                v64 = v34 - v37;
                do
                {
                  v65 = *v63++;
                  *&v6 = v65;
                  *v62++ = v65;
                  v64 -= 8;
                }

                while (v64);
                v61 = v22 & 0x1FFFFFFF8;
                if (v22 != v34)
                {
LABEL_64:
                  do
                  {
                    v19[v61] = *(v21 + v61);
                    ++v61;
                  }

                  while (v22 > v61);
                }

                ++v51;
                v54 += 32;
                v55 = (v55 + v20);
                v56 = (v56 + v20);
                v57 += 4;
                v19 += 32;
                v21 += v20;
              }

              while (v51 != v14);
            }
          }

          else if (v22 == v34)
          {
            v35 = (v21 + 16);
            v36 = &v66[v17 + 16 + v18];
            do
            {
              *&v6 = *(v35 - 2);
              *(v36 - 2) = v6;
              if (v15 != 4)
              {
                *&v6 = *(v35 - 1);
                *(v36 - 1) = v6;
                if (v15 != 8)
                {
                  *&v6 = *v35;
                  *v36 = *v35;
                }
              }

              v35 = (v35 + v20);
              v36 += 4;
              --v14;
            }

            while (v14);
          }

          else
          {
            for (k = 0; k != v14; ++k)
            {
              v45 = (v21 + v20 * k);
              v46 = &v19[32 * k];
              *&v6 = *v45;
              *v46 = *v45;
              if (v34 != 8)
              {
                *&v6 = v45[1];
                v46[1] = v6;
                if (v34 != 16)
                {
                  *&v6 = v45[2];
                  v46[2] = v6;
                }
              }

              v47 = v46 + v34;
              v48 = v45 + v34;
              v49 = v22 & 0x18;
              do
              {
                v50 = *v48++;
                *v47++ = v50;
                ++v49;
              }

              while (v22 > v49);
            }
          }
        }
      }

      else
      {
        for (m = 0; m != v14; ++m)
        {
          v28 = 0;
          do
          {
            v19[v28] = *(v21 + v28);
            ++v28;
          }

          while (v28 < v22);
          v19 += 32;
          v21 += v20;
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v66, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *&v6, *&v7, v8, v9, v10, v11, v12, v13);
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v80 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    v8 = &v79[16 * *v4 + 2 * *(v4 - 1)];
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
      *v8 = vzip1q_s64(*v2, v11);
      v8[1] = vzip1q_s64(v14, v15);
      v8[4] = vzip2q_s64(v10, v11);
      v8[5] = vzip2q_s64(v14, v15);
      v8[8] = vzip1q_s64(v12, v13);
      v8[9] = vzip1q_s64(v16, v17);
      v8[12] = vzip2q_s64(v12, v13);
      v8[13] = vzip2q_s64(v16, v17);
      v7 = 128;
    }

    else if (v9 == 3)
    {
      v6 = vld1q_dup_f32(v2);
      *v8 = v6;
      v8[1] = v6;
      v8[4] = v6;
      v8[5] = v6;
      v8[8] = v6;
      v8[9] = v6;
      v8[12] = v6;
      v8[13] = v6;
      v7 = 4;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 64, v2, v9);
    }

    else
    {
      v7 = 0;
      *v8 = 0u;
      v8[1] = 0u;
      v8[4] = 0u;
      v8[5] = 0u;
      v8[8] = 0u;
      v8[9] = 0u;
      v8[12] = 0u;
      v8[13] = 0u;
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
    v19 = *(a1 + 84);
    if (v19)
    {
      v20 = *(a1 + 72);
      v21 = v20 << 6;
      v22 = 4 * *(a1 + 76);
      v23 = &v79[4 * v20].i8[v22];
      v25 = *(a1 + 56);
      v24 = *(a1 + 64);
      v26 = 4 * v19;
      v27 = &v79[4 * v18 - 4 + 4 * v20].i8[4 * v19 + v22];
      v30 = v23 < &v25[4 * v19 + v24 * (v18 - 1)] && v25 < v27 || v24 < 0;
      if (v19 == 1)
      {
        for (i = 0; i != v18; ++i)
        {
          v32 = &v25[v24 * i];
          v33 = &v23[64 * i];
          v34 = -1;
          do
          {
            v35 = *v32++;
            *v33++ = v35;
            ++v34;
          }

          while (v34 < 3);
        }
      }

      else if (!v26 || (v26 - 1) >> 32)
      {
        for (j = 0; j != v18; ++j)
        {
          v39 = 0;
          do
          {
            v23[v39] = v25[v39];
            ++v39;
          }

          while (v26 > v39);
          v23 += 64;
          v25 += v24;
        }
      }

      else if (v30)
      {
        for (k = 0; k != v18; ++k)
        {
          v37 = 0;
          do
          {
            v23[v37] = v25[v37];
            ++v37;
          }

          while (v26 > v37);
          v23 += 64;
          v25 += v24;
        }
      }

      else
      {
        v41 = v26 & 0x1FFFFFFF8;
        if (v19 > 7)
        {
          v47 = v26 & 0x1FFFFFFE0;
          if (v26 == (v26 & 0x1FFFFFFE0))
          {
            v48 = 0;
            v49 = &v79[1].i8[v21 + v22];
            v50 = (v25 + 16);
            do
            {
              v51 = v50;
              v52 = v49;
              v53 = v26;
              do
              {
                v54 = *v51;
                *(v52 - 1) = *(v51 - 1);
                *v52 = v54;
                v52 += 32;
                v51 += 2;
                v53 -= 32;
              }

              while (v53);
              ++v48;
              v49 += 64;
              v50 = (v50 + v24);
            }

            while (v48 != v18);
          }

          else
          {
            v63 = 0;
            v64 = v19 & 6;
            v65 = &v79[0].i8[v21 + v22];
            v66 = &v79[1].i8[v21 + v22];
            v67 = (v25 + 16);
            v68 = &v25[v47];
            v69 = &v65[v47];
            do
            {
              v70 = v67;
              v71 = v66;
              v72 = v26 & 0x1FFFFFFE0;
              do
              {
                v73 = *v70;
                *(v71 - 1) = *(v70 - 1);
                *v71 = v73;
                v71 += 32;
                v70 += 2;
                v72 -= 32;
              }

              while (v72);
              v74 = v26 & 0x1FFFFFFE0;
              if (!v64)
              {
                goto LABEL_72;
              }

              v75 = v69;
              v76 = v68;
              v77 = v41 - v47;
              do
              {
                v78 = *v76++;
                *v75 = v78;
                v75 += 8;
                v77 -= 8;
              }

              while (v77);
              v74 = v26 & 0x1FFFFFFF8;
              if (v26 != v41)
              {
LABEL_72:
                do
                {
                  v23[v74] = v25[v74];
                  ++v74;
                }

                while (v26 > v74);
              }

              ++v63;
              v66 += 64;
              v67 = (v67 + v24);
              v68 += v24;
              v69 += 64;
              v23 += 64;
              v25 += v24;
            }

            while (v63 != v18);
          }
        }

        else if (v26 == v41)
        {
          for (m = 0; m != v18; ++m)
          {
            v43 = v23;
            v44 = v25;
            v45 = v26;
            do
            {
              v46 = *v44;
              v44 += 8;
              *v43 = v46;
              v43 += 8;
              v45 -= 8;
            }

            while (v45);
            v25 += v24;
            v23 += 64;
          }
        }

        else
        {
          v55 = 0;
          v56 = v23;
          do
          {
            v57 = &v23[64 * v55 + v41];
            v58 = v56;
            v59 = v25;
            v60 = v26 & 0x1FFFFFFF8;
            do
            {
              v61 = *v59;
              v59 += 8;
              *v58 = v61;
              v58 += 8;
              v60 -= 8;
            }

            while (v60);
            v62 = v26 & 0x1FFFFFFF8;
            do
            {
              *v57++ = v25[v62++];
            }

            while (v26 > v62);
            ++v55;
            v25 += v24;
            v56 += 64;
          }

          while (v55 != v18);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v79, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v80 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    v8 = &v79[256 * *v4 + 32 * *(v4 - 1)];
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
      *v8 = vzip1q_s64(*v2, v11);
      v8[1] = vzip1q_s64(v14, v15);
      v8[4] = vzip2q_s64(v10, v11);
      v8[5] = vzip2q_s64(v14, v15);
      v8[8] = vzip1q_s64(v12, v13);
      v8[9] = vzip1q_s64(v16, v17);
      v8[12] = vzip2q_s64(v12, v13);
      v8[13] = vzip2q_s64(v16, v17);
      v7 = 128;
    }

    else if (v9 == 3)
    {
      v6 = vld1q_dup_f32(v2);
      *v8 = v6;
      v8[1] = v6;
      v8[4] = v6;
      v8[5] = v6;
      v8[8] = v6;
      v8[9] = v6;
      v8[12] = v6;
      v8[13] = v6;
      v7 = 4;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 64, v2, v9);
    }

    else
    {
      v7 = 0;
      *v8 = 0u;
      v8[1] = 0u;
      v8[4] = 0u;
      v8[5] = 0u;
      v8[8] = 0u;
      v8[9] = 0u;
      v8[12] = 0u;
      v8[13] = 0u;
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
    v19 = *(a1 + 84);
    if (v19)
    {
      v20 = *(a1 + 72);
      v21 = v20 << 6;
      v22 = 4 * *(a1 + 76);
      v23 = &v79[64 * v20 + v22];
      v25 = *(a1 + 56);
      v24 = *(a1 + 64);
      v26 = 4 * v19;
      v27 = &v79[64 * v18 - 64 + 64 * v20 + 4 * v19 + v22];
      v30 = v23 < v25 + 4 * v19 + v24 * (v18 - 1) && v25 < v27 || v24 < 0;
      if (v19 == 1)
      {
        for (i = 0; i != v18; ++i)
        {
          v32 = v25 + v24 * i;
          v33 = &v23[64 * i];
          v34 = -1;
          do
          {
            v35 = *v32++;
            *v33++ = v35;
            ++v34;
          }

          while (v34 < 3);
        }
      }

      else if (!v26 || (v26 - 1) >> 32)
      {
        for (j = 0; j != v18; ++j)
        {
          v39 = 0;
          do
          {
            v23[v39] = *(v25 + v39);
            ++v39;
          }

          while (v26 > v39);
          v23 += 64;
          v25 = (v25 + v24);
        }
      }

      else if (v30)
      {
        for (k = 0; k != v18; ++k)
        {
          v37 = 0;
          do
          {
            v23[v37] = *(v25 + v37);
            ++v37;
          }

          while (v26 > v37);
          v23 += 64;
          v25 = (v25 + v24);
        }
      }

      else
      {
        v41 = v26 & 0x1FFFFFFF8;
        if (v19 > 7)
        {
          v47 = v26 & 0x1FFFFFFE0;
          if (v26 == (v26 & 0x1FFFFFFE0))
          {
            v48 = 0;
            v49 = &v79[v21 + 16 + v22];
            v50 = (v25 + 2);
            do
            {
              v51 = v50;
              v52 = v49;
              v53 = v26;
              do
              {
                v54 = *v51;
                *(v52 - 1) = *(v51 - 1);
                *v52 = v54;
                v52 += 2;
                v51 += 2;
                v53 -= 32;
              }

              while (v53);
              ++v48;
              v49 += 64;
              v50 = (v50 + v24);
            }

            while (v48 != v18);
          }

          else
          {
            v63 = 0;
            v64 = v19 & 6;
            v65 = &v79[v21 + v22];
            v66 = &v79[v21 + 16 + v22];
            v67 = (v25 + 2);
            v68 = (v25 + v47);
            v69 = &v65[v47];
            do
            {
              v70 = v67;
              v71 = v66;
              v72 = v26 & 0x1FFFFFFE0;
              do
              {
                v73 = *v70;
                *(v71 - 1) = *(v70 - 1);
                *v71 = v73;
                v71 += 2;
                v70 += 2;
                v72 -= 32;
              }

              while (v72);
              v74 = v26 & 0x1FFFFFFE0;
              if (!v64)
              {
                goto LABEL_72;
              }

              v75 = v69;
              v76 = v68;
              v77 = v41 - v47;
              do
              {
                v78 = *v76++;
                *v75++ = v78;
                v77 -= 8;
              }

              while (v77);
              v74 = v26 & 0x1FFFFFFF8;
              if (v26 != v41)
              {
LABEL_72:
                do
                {
                  v23[v74] = *(v25 + v74);
                  ++v74;
                }

                while (v26 > v74);
              }

              ++v63;
              v66 += 64;
              v67 = (v67 + v24);
              v68 = (v68 + v24);
              v69 += 8;
              v23 += 64;
              v25 = (v25 + v24);
            }

            while (v63 != v18);
          }
        }

        else if (v26 == v41)
        {
          for (m = 0; m != v18; ++m)
          {
            v43 = v23;
            v44 = v25;
            v45 = v26;
            do
            {
              v46 = *v44++;
              *v43++ = v46;
              v45 -= 8;
            }

            while (v45);
            v25 = (v25 + v24);
            v23 += 64;
          }
        }

        else
        {
          v55 = 0;
          v56 = v23;
          do
          {
            v57 = &v23[64 * v55 + v41];
            v58 = v56;
            v59 = v25;
            v60 = v26 & 0x1FFFFFFF8;
            do
            {
              v61 = *v59++;
              *v58++ = v61;
              v60 -= 8;
            }

            while (v60);
            v62 = v26 & 0x1FFFFFFF8;
            do
            {
              *v57++ = *(v25 + v62++);
            }

            while (v26 > v62);
            ++v55;
            v25 = (v25 + v24);
            v56 += 8;
          }

          while (v55 != v18);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v79, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v80 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    v8 = &v79[16 * *v4 + 2 * *(v4 - 1)];
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
      *v8 = vzip1q_s64(*v2, v11);
      v8[1] = vzip1q_s64(v14, v15);
      v8[4] = vzip2q_s64(v10, v11);
      v8[5] = vzip2q_s64(v14, v15);
      v8[8] = vzip1q_s64(v12, v13);
      v8[9] = vzip1q_s64(v16, v17);
      v8[12] = vzip2q_s64(v12, v13);
      v8[13] = vzip2q_s64(v16, v17);
      v7 = 128;
    }

    else if (v9 == 3)
    {
      v6 = vld1q_dup_f32(v2);
      *v8 = v6;
      v8[1] = v6;
      v8[4] = v6;
      v8[5] = v6;
      v8[8] = v6;
      v8[9] = v6;
      v8[12] = v6;
      v8[13] = v6;
      v7 = 4;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 64, v2, v9);
    }

    else
    {
      v7 = 0;
      *v8 = 0u;
      v8[1] = 0u;
      v8[4] = 0u;
      v8[5] = 0u;
      v8[8] = 0u;
      v8[9] = 0u;
      v8[12] = 0u;
      v8[13] = 0u;
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
    v19 = *(a1 + 84);
    if (v19)
    {
      v20 = *(a1 + 72);
      v21 = v20 << 6;
      v22 = 4 * *(a1 + 76);
      v23 = &v79[4 * v20].i8[v22];
      v25 = *(a1 + 56);
      v24 = *(a1 + 64);
      v26 = 4 * v19;
      v27 = &v79[4 * v18 - 4 + 4 * v20].i8[4 * v19 + v22];
      v30 = v23 < &v25[4 * v19 + v24 * (v18 - 1)] && v25 < v27 || v24 < 0;
      if (v19 == 1)
      {
        for (i = 0; i != v18; ++i)
        {
          v32 = &v25[v24 * i];
          v33 = &v23[64 * i];
          v34 = -1;
          do
          {
            v35 = *v32++;
            *v33++ = v35;
            ++v34;
          }

          while (v34 < 3);
        }
      }

      else if (!v26 || (v26 - 1) >> 32)
      {
        for (j = 0; j != v18; ++j)
        {
          v39 = 0;
          do
          {
            v23[v39] = v25[v39];
            ++v39;
          }

          while (v26 > v39);
          v23 += 64;
          v25 += v24;
        }
      }

      else if (v30)
      {
        for (k = 0; k != v18; ++k)
        {
          v37 = 0;
          do
          {
            v23[v37] = v25[v37];
            ++v37;
          }

          while (v26 > v37);
          v23 += 64;
          v25 += v24;
        }
      }

      else
      {
        v41 = v26 & 0x1FFFFFFF8;
        if (v19 > 7)
        {
          v47 = v26 & 0x1FFFFFFE0;
          if (v26 == (v26 & 0x1FFFFFFE0))
          {
            v48 = 0;
            v49 = &v79[1].i8[v21 + v22];
            v50 = (v25 + 16);
            do
            {
              v51 = v50;
              v52 = v49;
              v53 = v26;
              do
              {
                v54 = *v51;
                *(v52 - 1) = *(v51 - 1);
                *v52 = v54;
                v52 += 32;
                v51 += 2;
                v53 -= 32;
              }

              while (v53);
              ++v48;
              v49 += 64;
              v50 = (v50 + v24);
            }

            while (v48 != v18);
          }

          else
          {
            v63 = 0;
            v64 = v19 & 6;
            v65 = &v79[0].i8[v21 + v22];
            v66 = &v79[1].i8[v21 + v22];
            v67 = (v25 + 16);
            v68 = &v25[v47];
            v69 = &v65[v47];
            do
            {
              v70 = v67;
              v71 = v66;
              v72 = v26 & 0x1FFFFFFE0;
              do
              {
                v73 = *v70;
                *(v71 - 1) = *(v70 - 1);
                *v71 = v73;
                v71 += 32;
                v70 += 2;
                v72 -= 32;
              }

              while (v72);
              v74 = v26 & 0x1FFFFFFE0;
              if (!v64)
              {
                goto LABEL_72;
              }

              v75 = v69;
              v76 = v68;
              v77 = v41 - v47;
              do
              {
                v78 = *v76++;
                *v75 = v78;
                v75 += 8;
                v77 -= 8;
              }

              while (v77);
              v74 = v26 & 0x1FFFFFFF8;
              if (v26 != v41)
              {
LABEL_72:
                do
                {
                  v23[v74] = v25[v74];
                  ++v74;
                }

                while (v26 > v74);
              }

              ++v63;
              v66 += 64;
              v67 = (v67 + v24);
              v68 += v24;
              v69 += 64;
              v23 += 64;
              v25 += v24;
            }

            while (v63 != v18);
          }
        }

        else if (v26 == v41)
        {
          for (m = 0; m != v18; ++m)
          {
            v43 = v23;
            v44 = v25;
            v45 = v26;
            do
            {
              v46 = *v44;
              v44 += 8;
              *v43 = v46;
              v43 += 8;
              v45 -= 8;
            }

            while (v45);
            v25 += v24;
            v23 += 64;
          }
        }

        else
        {
          v55 = 0;
          v56 = v23;
          do
          {
            v57 = &v23[64 * v55 + v41];
            v58 = v56;
            v59 = v25;
            v60 = v26 & 0x1FFFFFFF8;
            do
            {
              v61 = *v59;
              v59 += 8;
              *v58 = v61;
              v58 += 8;
              v60 -= 8;
            }

            while (v60);
            v62 = v26 & 0x1FFFFFFF8;
            do
            {
              *v57++ = v25[v62++];
            }

            while (v26 > v62);
            ++v55;
            v25 += v24;
            v56 += 64;
          }

          while (v55 != v18);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v79, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v80 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    v8 = &v79[256 * *v4 + 32 * *(v4 - 1)];
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
      *v8 = vzip1q_s64(*v2, v11);
      v8[1] = vzip1q_s64(v14, v15);
      v8[4] = vzip2q_s64(v10, v11);
      v8[5] = vzip2q_s64(v14, v15);
      v8[8] = vzip1q_s64(v12, v13);
      v8[9] = vzip1q_s64(v16, v17);
      v8[12] = vzip2q_s64(v12, v13);
      v8[13] = vzip2q_s64(v16, v17);
      v7 = 128;
    }

    else if (v9 == 3)
    {
      v6 = vld1q_dup_f32(v2);
      *v8 = v6;
      v8[1] = v6;
      v8[4] = v6;
      v8[5] = v6;
      v8[8] = v6;
      v8[9] = v6;
      v8[12] = v6;
      v8[13] = v6;
      v7 = 4;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 64, v2, v9);
    }

    else
    {
      v7 = 0;
      *v8 = 0u;
      v8[1] = 0u;
      v8[4] = 0u;
      v8[5] = 0u;
      v8[8] = 0u;
      v8[9] = 0u;
      v8[12] = 0u;
      v8[13] = 0u;
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
    v19 = *(a1 + 84);
    if (v19)
    {
      v20 = *(a1 + 72);
      v21 = v20 << 6;
      v22 = 4 * *(a1 + 76);
      v23 = &v79[64 * v20 + v22];
      v25 = *(a1 + 56);
      v24 = *(a1 + 64);
      v26 = 4 * v19;
      v27 = &v79[64 * v18 - 64 + 64 * v20 + 4 * v19 + v22];
      v30 = v23 < v25 + 4 * v19 + v24 * (v18 - 1) && v25 < v27 || v24 < 0;
      if (v19 == 1)
      {
        for (i = 0; i != v18; ++i)
        {
          v32 = v25 + v24 * i;
          v33 = &v23[64 * i];
          v34 = -1;
          do
          {
            v35 = *v32++;
            *v33++ = v35;
            ++v34;
          }

          while (v34 < 3);
        }
      }

      else if (!v26 || (v26 - 1) >> 32)
      {
        for (j = 0; j != v18; ++j)
        {
          v39 = 0;
          do
          {
            v23[v39] = *(v25 + v39);
            ++v39;
          }

          while (v26 > v39);
          v23 += 64;
          v25 = (v25 + v24);
        }
      }

      else if (v30)
      {
        for (k = 0; k != v18; ++k)
        {
          v37 = 0;
          do
          {
            v23[v37] = *(v25 + v37);
            ++v37;
          }

          while (v26 > v37);
          v23 += 64;
          v25 = (v25 + v24);
        }
      }

      else
      {
        v41 = v26 & 0x1FFFFFFF8;
        if (v19 > 7)
        {
          v47 = v26 & 0x1FFFFFFE0;
          if (v26 == (v26 & 0x1FFFFFFE0))
          {
            v48 = 0;
            v49 = &v79[v21 + 16 + v22];
            v50 = (v25 + 2);
            do
            {
              v51 = v50;
              v52 = v49;
              v53 = v26;
              do
              {
                v54 = *v51;
                *(v52 - 1) = *(v51 - 1);
                *v52 = v54;
                v52 += 2;
                v51 += 2;
                v53 -= 32;
              }

              while (v53);
              ++v48;
              v49 += 64;
              v50 = (v50 + v24);
            }

            while (v48 != v18);
          }

          else
          {
            v63 = 0;
            v64 = v19 & 6;
            v65 = &v79[v21 + v22];
            v66 = &v79[v21 + 16 + v22];
            v67 = (v25 + 2);
            v68 = (v25 + v47);
            v69 = &v65[v47];
            do
            {
              v70 = v67;
              v71 = v66;
              v72 = v26 & 0x1FFFFFFE0;
              do
              {
                v73 = *v70;
                *(v71 - 1) = *(v70 - 1);
                *v71 = v73;
                v71 += 2;
                v70 += 2;
                v72 -= 32;
              }

              while (v72);
              v74 = v26 & 0x1FFFFFFE0;
              if (!v64)
              {
                goto LABEL_72;
              }

              v75 = v69;
              v76 = v68;
              v77 = v41 - v47;
              do
              {
                v78 = *v76++;
                *v75++ = v78;
                v77 -= 8;
              }

              while (v77);
              v74 = v26 & 0x1FFFFFFF8;
              if (v26 != v41)
              {
LABEL_72:
                do
                {
                  v23[v74] = *(v25 + v74);
                  ++v74;
                }

                while (v26 > v74);
              }

              ++v63;
              v66 += 64;
              v67 = (v67 + v24);
              v68 = (v68 + v24);
              v69 += 8;
              v23 += 64;
              v25 = (v25 + v24);
            }

            while (v63 != v18);
          }
        }

        else if (v26 == v41)
        {
          for (m = 0; m != v18; ++m)
          {
            v43 = v23;
            v44 = v25;
            v45 = v26;
            do
            {
              v46 = *v44++;
              *v43++ = v46;
              v45 -= 8;
            }

            while (v45);
            v25 = (v25 + v24);
            v23 += 64;
          }
        }

        else
        {
          v55 = 0;
          v56 = v23;
          do
          {
            v57 = &v23[64 * v55 + v41];
            v58 = v56;
            v59 = v25;
            v60 = v26 & 0x1FFFFFFF8;
            do
            {
              v61 = *v59++;
              *v58++ = v61;
              v60 -= 8;
            }

            while (v60);
            v62 = v26 & 0x1FFFFFFF8;
            do
            {
              *v57++ = *(v25 + v62++);
            }

            while (v26 > v62);
            ++v55;
            v25 = (v25 + v24);
            v56 += 8;
          }

          while (v55 != v18);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v79, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v84, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 6;
      result = 4 * *(a1 + 76);
      v7 = &v84[4 * v5].i8[result];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 4 * v4;
      v11 = &v84[4 * v3 - 4 + 4 * v5].i8[4 * v4 + result];
      v14 = v7 < &v9[4 * v4 + v8 * (v3 - 1)] && v9 < v11 || v8 < 0;
      if (v4 == 1)
      {
        for (i = 0; i != v3; ++i)
        {
          v16 = &v9[v8 * i];
          v17 = &v7[64 * i];
          v18 = -1;
          do
          {
            v19 = *v16++;
            *v17++ = v19;
            ++v18;
          }

          while (v18 < 3);
        }
      }

      else if (!v10 || (v10 - 1) >> 32)
      {
        for (j = 0; j != v3; ++j)
        {
          v23 = 0;
          do
          {
            v7[v23] = v9[v23];
            ++v23;
          }

          while (v10 > v23);
          v7 += 64;
          v9 += v8;
        }
      }

      else if (v14)
      {
        for (k = 0; k != v3; ++k)
        {
          v21 = 0;
          do
          {
            v7[v21] = v9[v21];
            ++v21;
          }

          while (v10 > v21);
          v7 += 64;
          v9 += v8;
        }
      }

      else
      {
        v47 = v10 & 0x1FFFFFFF8;
        if (v4 > 7)
        {
          v53 = v10 & 0x1FFFFFFE0;
          if (v10 == (v10 & 0x1FFFFFFE0))
          {
            v54 = 0;
            v55 = &v84[1].i8[v6 + result];
            v56 = (v9 + 16);
            do
            {
              v57 = v56;
              v58 = v55;
              v59 = v10;
              do
              {
                v60 = *v57;
                *(v58 - 1) = *(v57 - 1);
                *v58 = v60;
                v58 += 32;
                v57 += 2;
                v59 -= 32;
              }

              while (v59);
              ++v54;
              v55 += 64;
              v56 = (v56 + v8);
            }

            while (v54 != v3);
          }

          else
          {
            v69 = 0;
            v70 = v4 & 6;
            v71 = &v84[0].i8[v6 + result];
            v72 = &v84[1].i8[v6 + result];
            result = (v9 + 16);
            v73 = &v9[v53];
            v74 = &v71[v53];
            do
            {
              v75 = result;
              v76 = v72;
              v77 = v10 & 0x1FFFFFFE0;
              do
              {
                v78 = *v75;
                *(v76 - 1) = *(v75 - 1);
                *v76 = v78;
                v76 += 32;
                v75 += 2;
                v77 -= 32;
              }

              while (v77);
              v79 = v10 & 0x1FFFFFFE0;
              if (!v70)
              {
                goto LABEL_71;
              }

              v80 = v74;
              v81 = v73;
              v82 = v47 - v53;
              do
              {
                v83 = *v81++;
                *v80 = v83;
                v80 += 8;
                v82 -= 8;
              }

              while (v82);
              v79 = v10 & 0x1FFFFFFF8;
              if (v10 != v47)
              {
LABEL_71:
                do
                {
                  v7[v79] = v9[v79];
                  ++v79;
                }

                while (v10 > v79);
              }

              ++v69;
              v72 += 64;
              result += v8;
              v73 += v8;
              v74 += 64;
              v7 += 64;
              v9 += v8;
            }

            while (v69 != v3);
          }
        }

        else if (v10 == v47)
        {
          for (m = 0; m != v3; ++m)
          {
            v49 = v7;
            v50 = v9;
            v51 = v10;
            do
            {
              v52 = *v50;
              v50 += 8;
              *v49 = v52;
              v49 += 8;
              v51 -= 8;
            }

            while (v51);
            v9 += v8;
            v7 += 64;
          }
        }

        else
        {
          v61 = 0;
          v62 = v7;
          do
          {
            v63 = &v7[64 * v61 + v47];
            v64 = v62;
            v65 = v9;
            v66 = v10 & 0x1FFFFFFF8;
            do
            {
              v67 = *v65;
              v65 += 8;
              *v64 = v67;
              v64 += 8;
              v66 -= 8;
            }

            while (v66);
            v68 = v10 & 0x1FFFFFFF8;
            do
            {
              result = v9[v68];
              *v63++ = result;
              ++v68;
            }

            while (v10 > v68);
            ++v61;
            v9 += v8;
            v62 += 64;
          }

          while (v61 != v3);
        }
      }
    }
  }

  v24 = *(a1 + 40);
  v25 = *(a1 + 48);
  v26 = *(a1 + 88);
  v27 = &byte_29D2F2FD5;
  v28 = 16;
  v29 = *(a1 + 89);
  do
  {
    v44 = *v27;
    v45 = *(v27 - 1);
    if (v26 <= 8 * v45 || 4 * v44 >= v29)
    {
      v43 = 0;
    }

    else
    {
      v30 = &v84[16 * v44 + 2 * v45];
      v31 = v30[1];
      v32 = v30[4];
      v33 = v30[5];
      v34 = vzip1q_s64(*v30, v32);
      v35 = vzip2q_s64(*v30, v32);
      v36 = vzip1q_s64(v31, v33);
      v37 = vzip2q_s64(v31, v33);
      v38 = v30[8];
      v39 = v30[9];
      v30 += 12;
      v40 = v30[1];
      v41 = vzip1q_s64(v38, *v30);
      v42 = vzip2q_s64(v38, *v30);
      *v24 = v34;
      v24[1] = v35;
      v24[2] = v41;
      v24[3] = v42;
      v24[4] = v36;
      v24[5] = v37;
      v24[6] = vzip1q_s64(v39, v40);
      v24[7] = vzip2q_s64(v39, v40);
      v24 += 8;
      v43 = 127;
    }

    *v25++ = v43;
    v27 += 2;
    v28 -= 2;
  }

  while (v28);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v63, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 6;
      v6 = 4 * *(a1 + 76);
      v7 = &v63[4 * v4].i8[v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 4 * v3;
      v11 = &v63[4 * v2 - 4 + 4 * v4].i8[4 * v3 + v6];
      v14 = v7 < &v9[4 * v3 + v8 * (v2 - 1)] && v9 < v11 || v8 < 0;
      if (v3 == 1)
      {
        for (i = 0; i != v2; ++i)
        {
          v16 = &v9[v8 * i];
          v17 = &v7[64 * i];
          v18 = -1;
          do
          {
            v19 = *v16++;
            *v17++ = v19;
            ++v18;
          }

          while (v18 < 3);
        }
      }

      else if (!v10 || (v10 - 1) >> 32)
      {
        for (j = 0; j != v2; ++j)
        {
          v23 = 0;
          do
          {
            v7[v23] = v9[v23];
            ++v23;
          }

          while (v10 > v23);
          v7 += 64;
          v9 += v8;
        }
      }

      else if (v14)
      {
        for (k = 0; k != v2; ++k)
        {
          v21 = 0;
          do
          {
            v7[v21] = v9[v21];
            ++v21;
          }

          while (v10 > v21);
          v7 += 64;
          v9 += v8;
        }
      }

      else
      {
        v25 = v10 & 0x1FFFFFFF8;
        if (v3 > 7)
        {
          v31 = v10 & 0x1FFFFFFE0;
          if (v10 == (v10 & 0x1FFFFFFE0))
          {
            v32 = 0;
            v33 = &v63[1].i8[v5 + v6];
            v34 = (v9 + 16);
            do
            {
              v35 = v34;
              v36 = v33;
              v37 = v10;
              do
              {
                v38 = *v35;
                *(v36 - 1) = *(v35 - 1);
                *v36 = v38;
                v36 += 32;
                v35 += 2;
                v37 -= 32;
              }

              while (v37);
              ++v32;
              v33 += 64;
              v34 = (v34 + v8);
            }

            while (v32 != v2);
          }

          else
          {
            v47 = 0;
            v48 = v3 & 6;
            v49 = &v63[0].i8[v5 + v6];
            v50 = &v63[1].i8[v5 + v6];
            v51 = (v9 + 16);
            v52 = &v9[v31];
            v53 = &v49[v31];
            do
            {
              v54 = v51;
              v55 = v50;
              v56 = v10 & 0x1FFFFFFE0;
              do
              {
                v57 = *v54;
                *(v55 - 1) = *(v54 - 1);
                *v55 = v57;
                v55 += 32;
                v54 += 2;
                v56 -= 32;
              }

              while (v56);
              v58 = v10 & 0x1FFFFFFE0;
              if (!v48)
              {
                goto LABEL_63;
              }

              v59 = v53;
              v60 = v52;
              v61 = v25 - v31;
              do
              {
                v62 = *v60++;
                *v59 = v62;
                v59 += 8;
                v61 -= 8;
              }

              while (v61);
              v58 = v10 & 0x1FFFFFFF8;
              if (v10 != v25)
              {
LABEL_63:
                do
                {
                  v7[v58] = v9[v58];
                  ++v58;
                }

                while (v10 > v58);
              }

              ++v47;
              v50 += 64;
              v51 = (v51 + v8);
              v52 += v8;
              v53 += 64;
              v7 += 64;
              v9 += v8;
            }

            while (v47 != v2);
          }
        }

        else if (v10 == v25)
        {
          for (m = 0; m != v2; ++m)
          {
            v27 = v7;
            v28 = v9;
            v29 = v10;
            do
            {
              v30 = *v28;
              v28 += 8;
              *v27 = v30;
              v27 += 8;
              v29 -= 8;
            }

            while (v29);
            v9 += v8;
            v7 += 64;
          }
        }

        else
        {
          v39 = 0;
          v40 = v7;
          do
          {
            v41 = &v7[64 * v39 + v25];
            v42 = v40;
            v43 = v9;
            v44 = v10 & 0x1FFFFFFF8;
            do
            {
              v45 = *v43;
              v43 += 8;
              *v42 = v45;
              v42 += 8;
              v44 -= 8;
            }

            while (v44);
            v46 = v10 & 0x1FFFFFFF8;
            do
            {
              *v41++ = v9[v46++];
            }

            while (v10 > v46);
            ++v39;
            v9 += v8;
            v40 += 64;
          }

          while (v39 != v2);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v63, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v84, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 6;
      result = 4 * *(a1 + 76);
      v7 = &v84[4 * v5].i8[result];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 4 * v4;
      v11 = &v84[4 * v3 - 4 + 4 * v5].i8[4 * v4 + result];
      v14 = v7 < &v9[4 * v4 + v8 * (v3 - 1)] && v9 < v11 || v8 < 0;
      if (v4 == 1)
      {
        for (i = 0; i != v3; ++i)
        {
          v16 = &v9[v8 * i];
          v17 = &v7[64 * i];
          v18 = -1;
          do
          {
            v19 = *v16++;
            *v17++ = v19;
            ++v18;
          }

          while (v18 < 3);
        }
      }

      else if (!v10 || (v10 - 1) >> 32)
      {
        for (j = 0; j != v3; ++j)
        {
          v23 = 0;
          do
          {
            v7[v23] = v9[v23];
            ++v23;
          }

          while (v10 > v23);
          v7 += 64;
          v9 += v8;
        }
      }

      else if (v14)
      {
        for (k = 0; k != v3; ++k)
        {
          v21 = 0;
          do
          {
            v7[v21] = v9[v21];
            ++v21;
          }

          while (v10 > v21);
          v7 += 64;
          v9 += v8;
        }
      }

      else
      {
        v47 = v10 & 0x1FFFFFFF8;
        if (v4 > 7)
        {
          v53 = v10 & 0x1FFFFFFE0;
          if (v10 == (v10 & 0x1FFFFFFE0))
          {
            v54 = 0;
            v55 = &v84[1].i8[v6 + result];
            v56 = (v9 + 16);
            do
            {
              v57 = v56;
              v58 = v55;
              v59 = v10;
              do
              {
                v60 = *v57;
                *(v58 - 1) = *(v57 - 1);
                *v58 = v60;
                v58 += 32;
                v57 += 2;
                v59 -= 32;
              }

              while (v59);
              ++v54;
              v55 += 64;
              v56 = (v56 + v8);
            }

            while (v54 != v3);
          }

          else
          {
            v69 = 0;
            v70 = v4 & 6;
            v71 = &v84[0].i8[v6 + result];
            v72 = &v84[1].i8[v6 + result];
            result = (v9 + 16);
            v73 = &v9[v53];
            v74 = &v71[v53];
            do
            {
              v75 = result;
              v76 = v72;
              v77 = v10 & 0x1FFFFFFE0;
              do
              {
                v78 = *v75;
                *(v76 - 1) = *(v75 - 1);
                *v76 = v78;
                v76 += 32;
                v75 += 2;
                v77 -= 32;
              }

              while (v77);
              v79 = v10 & 0x1FFFFFFE0;
              if (!v70)
              {
                goto LABEL_71;
              }

              v80 = v74;
              v81 = v73;
              v82 = v47 - v53;
              do
              {
                v83 = *v81++;
                *v80 = v83;
                v80 += 8;
                v82 -= 8;
              }

              while (v82);
              v79 = v10 & 0x1FFFFFFF8;
              if (v10 != v47)
              {
LABEL_71:
                do
                {
                  v7[v79] = v9[v79];
                  ++v79;
                }

                while (v10 > v79);
              }

              ++v69;
              v72 += 64;
              result += v8;
              v73 += v8;
              v74 += 64;
              v7 += 64;
              v9 += v8;
            }

            while (v69 != v3);
          }
        }

        else if (v10 == v47)
        {
          for (m = 0; m != v3; ++m)
          {
            v49 = v7;
            v50 = v9;
            v51 = v10;
            do
            {
              v52 = *v50;
              v50 += 8;
              *v49 = v52;
              v49 += 8;
              v51 -= 8;
            }

            while (v51);
            v9 += v8;
            v7 += 64;
          }
        }

        else
        {
          v61 = 0;
          v62 = v7;
          do
          {
            v63 = &v7[64 * v61 + v47];
            v64 = v62;
            v65 = v9;
            v66 = v10 & 0x1FFFFFFF8;
            do
            {
              v67 = *v65;
              v65 += 8;
              *v64 = v67;
              v64 += 8;
              v66 -= 8;
            }

            while (v66);
            v68 = v10 & 0x1FFFFFFF8;
            do
            {
              result = v9[v68];
              *v63++ = result;
              ++v68;
            }

            while (v10 > v68);
            ++v61;
            v9 += v8;
            v62 += 64;
          }

          while (v61 != v3);
        }
      }
    }
  }

  v24 = *(a1 + 40);
  v25 = *(a1 + 48);
  v26 = *(a1 + 88);
  v27 = &byte_29D2F2FD5;
  v28 = 16;
  v29 = *(a1 + 89);
  do
  {
    v44 = *v27;
    v45 = *(v27 - 1);
    if (v26 <= 8 * v45 || 4 * v44 >= v29)
    {
      v43 = 0;
    }

    else
    {
      v30 = &v84[16 * v44 + 2 * v45];
      v31 = v30[1];
      v32 = v30[4];
      v33 = v30[5];
      v34 = vzip1q_s64(*v30, v32);
      v35 = vzip2q_s64(*v30, v32);
      v36 = vzip1q_s64(v31, v33);
      v37 = vzip2q_s64(v31, v33);
      v38 = v30[8];
      v39 = v30[9];
      v30 += 12;
      v40 = v30[1];
      v41 = vzip1q_s64(v38, *v30);
      v42 = vzip2q_s64(v38, *v30);
      *v24 = v34;
      v24[1] = v35;
      v24[2] = v41;
      v24[3] = v42;
      v24[4] = v36;
      v24[5] = v37;
      v24[6] = vzip1q_s64(v39, v40);
      v24[7] = vzip2q_s64(v39, v40);
      v24 += 8;
      v43 = 127;
    }

    *v25++ = v43;
    v27 += 2;
    v28 -= 2;
  }

  while (v28);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v63, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 6;
      v6 = 4 * *(a1 + 76);
      v7 = &v63[4 * v4].i8[v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 4 * v3;
      v11 = &v63[4 * v2 - 4 + 4 * v4].i8[4 * v3 + v6];
      v14 = v7 < &v9[4 * v3 + v8 * (v2 - 1)] && v9 < v11 || v8 < 0;
      if (v3 == 1)
      {
        for (i = 0; i != v2; ++i)
        {
          v16 = &v9[v8 * i];
          v17 = &v7[64 * i];
          v18 = -1;
          do
          {
            v19 = *v16++;
            *v17++ = v19;
            ++v18;
          }

          while (v18 < 3);
        }
      }

      else if (!v10 || (v10 - 1) >> 32)
      {
        for (j = 0; j != v2; ++j)
        {
          v23 = 0;
          do
          {
            v7[v23] = v9[v23];
            ++v23;
          }

          while (v10 > v23);
          v7 += 64;
          v9 += v8;
        }
      }

      else if (v14)
      {
        for (k = 0; k != v2; ++k)
        {
          v21 = 0;
          do
          {
            v7[v21] = v9[v21];
            ++v21;
          }

          while (v10 > v21);
          v7 += 64;
          v9 += v8;
        }
      }

      else
      {
        v25 = v10 & 0x1FFFFFFF8;
        if (v3 > 7)
        {
          v31 = v10 & 0x1FFFFFFE0;
          if (v10 == (v10 & 0x1FFFFFFE0))
          {
            v32 = 0;
            v33 = &v63[1].i8[v5 + v6];
            v34 = (v9 + 16);
            do
            {
              v35 = v34;
              v36 = v33;
              v37 = v10;
              do
              {
                v38 = *v35;
                *(v36 - 1) = *(v35 - 1);
                *v36 = v38;
                v36 += 32;
                v35 += 2;
                v37 -= 32;
              }

              while (v37);
              ++v32;
              v33 += 64;
              v34 = (v34 + v8);
            }

            while (v32 != v2);
          }

          else
          {
            v47 = 0;
            v48 = v3 & 6;
            v49 = &v63[0].i8[v5 + v6];
            v50 = &v63[1].i8[v5 + v6];
            v51 = (v9 + 16);
            v52 = &v9[v31];
            v53 = &v49[v31];
            do
            {
              v54 = v51;
              v55 = v50;
              v56 = v10 & 0x1FFFFFFE0;
              do
              {
                v57 = *v54;
                *(v55 - 1) = *(v54 - 1);
                *v55 = v57;
                v55 += 32;
                v54 += 2;
                v56 -= 32;
              }

              while (v56);
              v58 = v10 & 0x1FFFFFFE0;
              if (!v48)
              {
                goto LABEL_63;
              }

              v59 = v53;
              v60 = v52;
              v61 = v25 - v31;
              do
              {
                v62 = *v60++;
                *v59 = v62;
                v59 += 8;
                v61 -= 8;
              }

              while (v61);
              v58 = v10 & 0x1FFFFFFF8;
              if (v10 != v25)
              {
LABEL_63:
                do
                {
                  v7[v58] = v9[v58];
                  ++v58;
                }

                while (v10 > v58);
              }

              ++v47;
              v50 += 64;
              v51 = (v51 + v8);
              v52 += v8;
              v53 += 64;
              v7 += 64;
              v9 += v8;
            }

            while (v47 != v2);
          }
        }

        else if (v10 == v25)
        {
          for (m = 0; m != v2; ++m)
          {
            v27 = v7;
            v28 = v9;
            v29 = v10;
            do
            {
              v30 = *v28;
              v28 += 8;
              *v27 = v30;
              v27 += 8;
              v29 -= 8;
            }

            while (v29);
            v9 += v8;
            v7 += 64;
          }
        }

        else
        {
          v39 = 0;
          v40 = v7;
          do
          {
            v41 = &v7[64 * v39 + v25];
            v42 = v40;
            v43 = v9;
            v44 = v10 & 0x1FFFFFFF8;
            do
            {
              v45 = *v43;
              v43 += 8;
              *v42 = v45;
              v42 += 8;
              v44 -= 8;
            }

            while (v44);
            v46 = v10 & 0x1FFFFFFF8;
            do
            {
              *v41++ = v9[v46++];
            }

            while (v10 > v46);
            ++v39;
            v9 += v8;
            v40 += 64;
          }

          while (v39 != v2);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v63, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

int16x4_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int16x4_t a3)
{
  v61[33] = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v61, *(a1 + 40), *(a1 + 48), a2, a3);
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 84);
    if (v5)
    {
      v7 = *(a1 + 72);
      v6 = *(a1 + 76);
      v8 = 2 * v7;
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      if (v5 > 7)
      {
        v13 = v61 + v6 + v8 * 8;
        v14 = (v5 - 1);
        v15 = v10 >= &v61[2 * v4 - 1 + 2 * v7 - 1] + v6 + v14 + 1 || v13 >= v10 + v9 * (v4 - 1) + v14 + 1;
        if (!v15 || v9 < 0)
        {
          for (i = 0; i != v4; ++i)
          {
            v20 = (v10 + v9 * i);
            v21 = &v13[16 * i];
            v22 = v5;
            do
            {
              v23 = *v20++;
              *v21++ = v23;
              --v22;
            }

            while (v22);
          }
        }

        else
        {
          v16 = v5 & 0xFFFFFFF8;
          if (v5 > 0x1F)
          {
            v25 = v5 & 0xFFFFFFE0;
            if (v25 == v5)
            {
              v26 = 0;
              v27 = &v61[v8 + 2] + v6;
              v28 = (v10 + 16);
              do
              {
                v29 = v28;
                v30 = v27;
                v31 = v5;
                do
                {
                  v32 = *v29;
                  *(v30 - 1) = *(v29 - 1);
                  *v30 = v32;
                  v30 += 2;
                  v29 += 2;
                  v31 -= 32;
                }

                while (v31);
                ++v26;
                v27 += 16;
                v28 = (v28 + v9);
              }

              while (v26 != v4);
            }

            else
            {
              v41 = 0;
              v42 = (v10 + 16);
              v43 = &v61[v8] + v6;
              v44 = &v61[v8 + 2] + v6;
              v45 = (v10 + v25);
              v46 = &v43[v25];
              do
              {
                v47 = v44;
                v48 = v42;
                v49 = v5 & 0xFFFFFFE0;
                do
                {
                  v50 = *v48;
                  *(v47 - 1) = *(v48 - 1);
                  *v47 = v50;
                  v48 += 2;
                  v47 += 2;
                  v49 -= 32;
                }

                while (v49);
                v51 = v5 & 0xFFFFFFE0;
                v52 = v5 & 0xFFFFFFE0;
                if ((v5 & 0x18) == 0)
                {
                  goto LABEL_53;
                }

                v53 = v46;
                v54 = v45;
                v55 = v16 - v25;
                do
                {
                  v56 = *v54++;
                  *v53 = v56;
                  v53 += 8;
                  v55 -= 8;
                }

                while (v55);
                v51 = v5 & 0xFFFFFFF8;
                v52 = v5 & 0xFFFFFFF8;
                if (v16 != v5)
                {
LABEL_53:
                  v57 = (v10 + v9 * v41 + v52);
                  v58 = &v13[16 * v41 + v52];
                  v59 = v5 - v51;
                  do
                  {
                    v60 = *v57++;
                    *v58++ = v60;
                    --v59;
                  }

                  while (v59);
                }

                ++v41;
                v42 = (v42 + v9);
                v44 += 16;
                v45 = (v45 + v9);
                v46 += 16;
              }

              while (v41 != v4);
            }
          }

          else if (v16 == v5)
          {
            v17 = (v10 + 16);
            v18 = (&v61[v8 + 2] + v6);
            do
            {
              v18[-2] = v17[-2];
              if (v5 != 8)
              {
                v18[-1] = v17[-1];
                if (v5 != 16)
                {
                  *v18 = *v17;
                }
              }

              v17 = (v17 + v9);
              v18 += 2;
              --v4;
            }

            while (v4);
          }

          else
          {
            v33 = 0;
            v34 = v5 - v16;
            do
            {
              v35 = (v10 + v9 * v33);
              v36 = &v13[16 * v33];
              *v36 = *v35;
              if (v16 != 8)
              {
                *(v36 + 1) = v35[1];
                if (v16 != 16)
                {
                  *(v36 + 2) = v35[2];
                }
              }

              v37 = &v36[v16];
              v38 = v35 + v16;
              v39 = v34;
              do
              {
                v40 = *v38++;
                *v37++ = v40;
                --v39;
              }

              while (v39);
              ++v33;
            }

            while (v33 != v4);
          }
        }
      }

      else
      {
        v11 = &v61[v8] + v6 + 3;
        v12 = (v10 + 3);
        do
        {
          *(v11 - 3) = *(v12 - 3);
          if (v5 != 1)
          {
            *(v11 - 2) = *(v12 - 2);
            if (v5 != 2)
            {
              *(v11 - 1) = *(v12 - 1);
              if (v5 != 3)
              {
                *v11 = *v12;
                if (v5 != 4)
                {
                  v11[1] = v12[1];
                  if (v5 != 5)
                  {
                    v11[2] = v12[2];
                    if (v5 != 6)
                    {
                      v11[3] = v12[3];
                    }
                  }
                }
              }
            }
          }

          v11 += 16;
          v12 += v9;
          --v4;
        }

        while (v4);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v61, 16, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int16x4_t a3)
{
  v62 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v61, *(a1 + 40), *(a1 + 48), a2, a3);
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 84);
    if (v5)
    {
      v7 = *(a1 + 72);
      v6 = *(a1 + 76);
      v8 = 16 * v7;
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      if (v5 > 7)
      {
        v13 = &v61[v6 + v8];
        v14 = (v5 - 1);
        v15 = v10 >= &v61[16 * v4 - 15 + 16 * v7 + v6 + v14] || v13 >= v10 + v9 * (v4 - 1) + v14 + 1;
        if (!v15 || v9 < 0)
        {
          for (i = 0; i != v4; ++i)
          {
            v20 = (v10 + v9 * i);
            v21 = &v13[16 * i];
            v22 = v5;
            do
            {
              v23 = *v20++;
              *v21++ = v23;
              --v22;
            }

            while (v22);
          }
        }

        else
        {
          v16 = v5 & 0xFFFFFFF8;
          if (v5 > 0x1F)
          {
            v25 = v5 & 0xFFFFFFE0;
            if (v25 == v5)
            {
              v26 = 0;
              v27 = &v61[v8 + 16 + v6];
              v28 = (v10 + 16);
              do
              {
                v29 = v28;
                v30 = v27;
                v31 = v5;
                do
                {
                  v32 = *v29;
                  *(v30 - 1) = *(v29 - 1);
                  *v30 = v32;
                  v30 += 2;
                  v29 += 2;
                  v31 -= 32;
                }

                while (v31);
                ++v26;
                v27 += 16;
                v28 = (v28 + v9);
              }

              while (v26 != v4);
            }

            else
            {
              v41 = 0;
              v42 = (v10 + 16);
              v43 = &v61[v8 + v6];
              v44 = &v61[v8 + 16 + v6];
              v45 = (v10 + v25);
              v46 = &v43[v25];
              do
              {
                v47 = v44;
                v48 = v42;
                v49 = v5 & 0xFFFFFFE0;
                do
                {
                  v50 = *v48;
                  *(v47 - 1) = *(v48 - 1);
                  *v47 = v50;
                  v48 += 2;
                  v47 += 2;
                  v49 -= 32;
                }

                while (v49);
                v51 = v5 & 0xFFFFFFE0;
                v52 = v5 & 0xFFFFFFE0;
                if ((v5 & 0x18) == 0)
                {
                  goto LABEL_53;
                }

                v53 = v46;
                v54 = v45;
                v55 = v16 - v25;
                do
                {
                  v56 = *v54++;
                  *v53++ = v56;
                  v55 -= 8;
                }

                while (v55);
                v51 = v5 & 0xFFFFFFF8;
                v52 = v5 & 0xFFFFFFF8;
                if (v16 != v5)
                {
LABEL_53:
                  v57 = (v10 + v9 * v41 + v52);
                  v58 = &v13[16 * v41 + v52];
                  v59 = v5 - v51;
                  do
                  {
                    v60 = *v57++;
                    *v58++ = v60;
                    --v59;
                  }

                  while (v59);
                }

                ++v41;
                v42 = (v42 + v9);
                v44 += 16;
                v45 = (v45 + v9);
                v46 += 2;
              }

              while (v41 != v4);
            }
          }

          else if (v16 == v5)
          {
            v17 = (v10 + 16);
            v18 = &v61[v8 + 16 + v6];
            do
            {
              *(v18 - 2) = *(v17 - 2);
              if (v5 != 8)
              {
                *(v18 - 1) = *(v17 - 1);
                if (v5 != 16)
                {
                  *v18 = *v17;
                }
              }

              v17 = (v17 + v9);
              v18 += 2;
              --v4;
            }

            while (v4);
          }

          else
          {
            v33 = 0;
            v34 = v5 - v16;
            do
            {
              v35 = (v10 + v9 * v33);
              v36 = &v13[16 * v33];
              *v36 = *v35;
              if (v16 != 8)
              {
                v36[1] = v35[1];
                if (v16 != 16)
                {
                  v36[2] = v35[2];
                }
              }

              v37 = v36 + v16;
              v38 = v35 + v16;
              v39 = v34;
              do
              {
                v40 = *v38++;
                *v37++ = v40;
                --v39;
              }

              while (v39);
              ++v33;
            }

            while (v33 != v4);
          }
        }
      }

      else
      {
        v11 = &v61[v8 + 3 + v6];
        v12 = (v10 + 3);
        do
        {
          *(v11 - 3) = *(v12 - 3);
          if (v5 != 1)
          {
            *(v11 - 2) = *(v12 - 2);
            if (v5 != 2)
            {
              *(v11 - 1) = *(v12 - 1);
              if (v5 != 3)
              {
                *v11 = *v12;
                if (v5 != 4)
                {
                  v11[1] = v12[1];
                  if (v5 != 5)
                  {
                    v11[2] = v12[2];
                    if (v5 != 6)
                    {
                      v11[3] = v12[3];
                    }
                  }
                }
              }
            }
          }

          v11 += 16;
          v12 += v9;
          --v4;
        }

        while (v4);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v61, 16, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

int16x4_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int16x4_t a3)
{
  v61[33] = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v61, *(a1 + 40), *(a1 + 48), a2, a3);
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 84);
    if (v5)
    {
      v7 = *(a1 + 72);
      v6 = *(a1 + 76);
      v8 = 2 * v7;
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      if (v5 > 7)
      {
        v13 = v61 + v6 + v8 * 8;
        v14 = (v5 - 1);
        v15 = v10 >= &v61[2 * v4 - 1 + 2 * v7 - 1] + v6 + v14 + 1 || v13 >= v10 + v9 * (v4 - 1) + v14 + 1;
        if (!v15 || v9 < 0)
        {
          for (i = 0; i != v4; ++i)
          {
            v20 = (v10 + v9 * i);
            v21 = &v13[16 * i];
            v22 = v5;
            do
            {
              v23 = *v20++;
              *v21++ = v23;
              --v22;
            }

            while (v22);
          }
        }

        else
        {
          v16 = v5 & 0xFFFFFFF8;
          if (v5 > 0x1F)
          {
            v25 = v5 & 0xFFFFFFE0;
            if (v25 == v5)
            {
              v26 = 0;
              v27 = &v61[v8 + 2] + v6;
              v28 = (v10 + 16);
              do
              {
                v29 = v28;
                v30 = v27;
                v31 = v5;
                do
                {
                  v32 = *v29;
                  *(v30 - 1) = *(v29 - 1);
                  *v30 = v32;
                  v30 += 2;
                  v29 += 2;
                  v31 -= 32;
                }

                while (v31);
                ++v26;
                v27 += 16;
                v28 = (v28 + v9);
              }

              while (v26 != v4);
            }

            else
            {
              v41 = 0;
              v42 = (v10 + 16);
              v43 = &v61[v8] + v6;
              v44 = &v61[v8 + 2] + v6;
              v45 = (v10 + v25);
              v46 = &v43[v25];
              do
              {
                v47 = v44;
                v48 = v42;
                v49 = v5 & 0xFFFFFFE0;
                do
                {
                  v50 = *v48;
                  *(v47 - 1) = *(v48 - 1);
                  *v47 = v50;
                  v48 += 2;
                  v47 += 2;
                  v49 -= 32;
                }

                while (v49);
                v51 = v5 & 0xFFFFFFE0;
                v52 = v5 & 0xFFFFFFE0;
                if ((v5 & 0x18) == 0)
                {
                  goto LABEL_53;
                }

                v53 = v46;
                v54 = v45;
                v55 = v16 - v25;
                do
                {
                  v56 = *v54++;
                  *v53 = v56;
                  v53 += 8;
                  v55 -= 8;
                }

                while (v55);
                v51 = v5 & 0xFFFFFFF8;
                v52 = v5 & 0xFFFFFFF8;
                if (v16 != v5)
                {
LABEL_53:
                  v57 = (v10 + v9 * v41 + v52);
                  v58 = &v13[16 * v41 + v52];
                  v59 = v5 - v51;
                  do
                  {
                    v60 = *v57++;
                    *v58++ = v60;
                    --v59;
                  }

                  while (v59);
                }

                ++v41;
                v42 = (v42 + v9);
                v44 += 16;
                v45 = (v45 + v9);
                v46 += 16;
              }

              while (v41 != v4);
            }
          }

          else if (v16 == v5)
          {
            v17 = (v10 + 16);
            v18 = (&v61[v8 + 2] + v6);
            do
            {
              v18[-2] = v17[-2];
              if (v5 != 8)
              {
                v18[-1] = v17[-1];
                if (v5 != 16)
                {
                  *v18 = *v17;
                }
              }

              v17 = (v17 + v9);
              v18 += 2;
              --v4;
            }

            while (v4);
          }

          else
          {
            v33 = 0;
            v34 = v5 - v16;
            do
            {
              v35 = (v10 + v9 * v33);
              v36 = &v13[16 * v33];
              *v36 = *v35;
              if (v16 != 8)
              {
                *(v36 + 1) = v35[1];
                if (v16 != 16)
                {
                  *(v36 + 2) = v35[2];
                }
              }

              v37 = &v36[v16];
              v38 = v35 + v16;
              v39 = v34;
              do
              {
                v40 = *v38++;
                *v37++ = v40;
                --v39;
              }

              while (v39);
              ++v33;
            }

            while (v33 != v4);
          }
        }
      }

      else
      {
        v11 = &v61[v8] + v6 + 3;
        v12 = (v10 + 3);
        do
        {
          *(v11 - 3) = *(v12 - 3);
          if (v5 != 1)
          {
            *(v11 - 2) = *(v12 - 2);
            if (v5 != 2)
            {
              *(v11 - 1) = *(v12 - 1);
              if (v5 != 3)
              {
                *v11 = *v12;
                if (v5 != 4)
                {
                  v11[1] = v12[1];
                  if (v5 != 5)
                  {
                    v11[2] = v12[2];
                    if (v5 != 6)
                    {
                      v11[3] = v12[3];
                    }
                  }
                }
              }
            }
          }

          v11 += 16;
          v12 += v9;
          --v4;
        }

        while (v4);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v61, 16, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int16x4_t a3)
{
  v62 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v61, *(a1 + 40), *(a1 + 48), a2, a3);
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 84);
    if (v5)
    {
      v7 = *(a1 + 72);
      v6 = *(a1 + 76);
      v8 = 16 * v7;
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      if (v5 > 7)
      {
        v13 = &v61[v6 + v8];
        v14 = (v5 - 1);
        v15 = v10 >= &v61[16 * v4 - 15 + 16 * v7 + v6 + v14] || v13 >= v10 + v9 * (v4 - 1) + v14 + 1;
        if (!v15 || v9 < 0)
        {
          for (i = 0; i != v4; ++i)
          {
            v20 = (v10 + v9 * i);
            v21 = &v13[16 * i];
            v22 = v5;
            do
            {
              v23 = *v20++;
              *v21++ = v23;
              --v22;
            }

            while (v22);
          }
        }

        else
        {
          v16 = v5 & 0xFFFFFFF8;
          if (v5 > 0x1F)
          {
            v25 = v5 & 0xFFFFFFE0;
            if (v25 == v5)
            {
              v26 = 0;
              v27 = &v61[v8 + 16 + v6];
              v28 = (v10 + 16);
              do
              {
                v29 = v28;
                v30 = v27;
                v31 = v5;
                do
                {
                  v32 = *v29;
                  *(v30 - 1) = *(v29 - 1);
                  *v30 = v32;
                  v30 += 2;
                  v29 += 2;
                  v31 -= 32;
                }

                while (v31);
                ++v26;
                v27 += 16;
                v28 = (v28 + v9);
              }

              while (v26 != v4);
            }

            else
            {
              v41 = 0;
              v42 = (v10 + 16);
              v43 = &v61[v8 + v6];
              v44 = &v61[v8 + 16 + v6];
              v45 = (v10 + v25);
              v46 = &v43[v25];
              do
              {
                v47 = v44;
                v48 = v42;
                v49 = v5 & 0xFFFFFFE0;
                do
                {
                  v50 = *v48;
                  *(v47 - 1) = *(v48 - 1);
                  *v47 = v50;
                  v48 += 2;
                  v47 += 2;
                  v49 -= 32;
                }

                while (v49);
                v51 = v5 & 0xFFFFFFE0;
                v52 = v5 & 0xFFFFFFE0;
                if ((v5 & 0x18) == 0)
                {
                  goto LABEL_53;
                }

                v53 = v46;
                v54 = v45;
                v55 = v16 - v25;
                do
                {
                  v56 = *v54++;
                  *v53++ = v56;
                  v55 -= 8;
                }

                while (v55);
                v51 = v5 & 0xFFFFFFF8;
                v52 = v5 & 0xFFFFFFF8;
                if (v16 != v5)
                {
LABEL_53:
                  v57 = (v10 + v9 * v41 + v52);
                  v58 = &v13[16 * v41 + v52];
                  v59 = v5 - v51;
                  do
                  {
                    v60 = *v57++;
                    *v58++ = v60;
                    --v59;
                  }

                  while (v59);
                }

                ++v41;
                v42 = (v42 + v9);
                v44 += 16;
                v45 = (v45 + v9);
                v46 += 2;
              }

              while (v41 != v4);
            }
          }

          else if (v16 == v5)
          {
            v17 = (v10 + 16);
            v18 = &v61[v8 + 16 + v6];
            do
            {
              *(v18 - 2) = *(v17 - 2);
              if (v5 != 8)
              {
                *(v18 - 1) = *(v17 - 1);
                if (v5 != 16)
                {
                  *v18 = *v17;
                }
              }

              v17 = (v17 + v9);
              v18 += 2;
              --v4;
            }

            while (v4);
          }

          else
          {
            v33 = 0;
            v34 = v5 - v16;
            do
            {
              v35 = (v10 + v9 * v33);
              v36 = &v13[16 * v33];
              *v36 = *v35;
              if (v16 != 8)
              {
                v36[1] = v35[1];
                if (v16 != 16)
                {
                  v36[2] = v35[2];
                }
              }

              v37 = v36 + v16;
              v38 = v35 + v16;
              v39 = v34;
              do
              {
                v40 = *v38++;
                *v37++ = v40;
                --v39;
              }

              while (v39);
              ++v33;
            }

            while (v33 != v4);
          }
        }
      }

      else
      {
        v11 = &v61[v8 + 3 + v6];
        v12 = (v10 + 3);
        do
        {
          *(v11 - 3) = *(v12 - 3);
          if (v5 != 1)
          {
            *(v11 - 2) = *(v12 - 2);
            if (v5 != 2)
            {
              *(v11 - 1) = *(v12 - 1);
              if (v5 != 3)
              {
                *v11 = *v12;
                if (v5 != 4)
                {
                  v11[1] = v12[1];
                  if (v5 != 5)
                  {
                    v11[2] = v12[2];
                    if (v5 != 6)
                    {
                      v11[3] = v12[3];
                    }
                  }
                }
              }
            }
          }

          v11 += 16;
          v12 += v9;
          --v4;
        }

        while (v4);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v61, 16, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj1ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(v3 + 208) + 52);
  v6 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v57, 256, v2, *v4, v5);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v59, 256, v6, v4[1], v5);
  v8 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v58, 256, v7, v4[2], v5);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v60, 256, v7 + v8, v4[3], v5);
  v10 = *(a1 + 80);
  if (v10)
  {
    v11 = *(a1 + 84);
    if (v11)
    {
      v12 = *(a1 + 72);
      v13 = v12 << 8;
      v14 = 16 * *(a1 + 76);
      v15 = &v57[16 * v12 + v14 / 0x10];
      v17 = *(a1 + 56);
      v16 = *(a1 + 64);
      v18 = 16 * *(a1 + 84);
      result = (v18 - 1) >> 32;
      if (result)
      {
        v19 = 1;
      }

      else
      {
        v19 = 16 * v11 == 0;
      }

      if (v19)
      {
        for (i = 0; i != v10; ++i)
        {
          v21 = 0;
          do
          {
            v15->i8[v21] = v17->i8[v21];
            ++v21;
          }

          while (v18 > v21);
          v15 += 16;
          v17 = (v17 + v16);
        }
      }

      else
      {
        result = v18 + v14;
        if (v17 < &v57[16 * v10 - 16 + 16 * v12 + v18 / 0x10 + v14 / 0x10] && v15 < &v17->i8[v16 * (v10 - 1) + v18] || v16 < 0)
        {
          for (j = 0; j != v10; ++j)
          {
            v25 = 0;
            do
            {
              v15->i8[v25] = v17->i8[v25];
              ++v25;
            }

            while (v18 > v25);
            v15 += 16;
            v17 = (v17 + v16);
          }
        }

        else if (v11 == 1)
        {
          do
          {
            *v15 = *v17;
            v17 = (v17 + v16);
            v15 += 16;
            --v10;
          }

          while (v10);
        }

        else
        {
          v41 = 0;
          v42 = &v57[0].i8[v13 + v14];
          v43 = &v57[1].i8[v13 + v14];
          v44 = v17 + 1;
          v45 = &v17->i8[v18 & 0x1FFFFFFE0];
          result = &v42[v18 & 0x1FFFFFFE0];
          do
          {
            v46 = v44;
            v47 = v43;
            v48 = v18 & 0x1FFFFFFE0;
            do
            {
              v49 = *v46;
              *(v47 - 1) = v46[-1];
              *v47 = v49;
              v47 += 32;
              v46 += 2;
              v48 -= 32;
            }

            while (v48);
            if (v18 != (v18 & 0x1FFFFFFE0))
            {
              v50 = result;
              v51 = v45;
              v52 = v18 - (v18 & 0x1FFFFFFE0);
              if (v11)
              {
                do
                {
                  v56 = *v51;
                  v51 += 16;
                  *v50++ = v56;
                  v52 -= 16;
                }

                while (v52);
              }

              else
              {
                v53 = 0;
                v54 = (v18 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v53) = v45[v53];
                  v55 = v18 > v54++;
                  ++v53;
                }

                while (v55);
              }
            }

            ++v41;
            v43 += 256;
            v44 = (v44 + v16);
            v45 += v16;
            result += 256;
          }

          while (v41 != v10);
        }
      }
    }
  }

  v26 = *(a1 + 40);
  v27 = *(a1 + 48);
  v28 = *(a1 + 88);
  v29 = *(a1 + 89);
  v30 = *(*(v3 + 208) + 52);
  if (v28 && v29)
  {
    if (v29 >= 4)
    {
      v31 = 4;
    }

    else
    {
      v31 = v29;
    }

    if (v28 >= 8)
    {
      v32 = 8;
    }

    else
    {
      v32 = v28;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v26, v27, v57, 256, v32, v31, v30);
    v26 += result;
    v33 = v29 - 4;
  }

  else
  {
    *v27 = 0;
    v33 = v29 - 4;
    if (!v28)
    {
LABEL_46:
      v27[1] = 0;
      goto LABEL_47;
    }
  }

  if (v29 < 5)
  {
    goto LABEL_46;
  }

  if (v33 >= 4)
  {
    v34 = 4;
  }

  else
  {
    v34 = v33;
  }

  if (v28 >= 8)
  {
    v35 = 8;
  }

  else
  {
    v35 = v28;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v26, v27 + 1, v59, 256, v35, v34, v30);
  v26 += result;
LABEL_47:
  v36 = v28 - 8;
  if (v28 >= 9 && v29)
  {
    if (v29 >= 4)
    {
      v37 = 4;
    }

    else
    {
      v37 = v29;
    }

    if (v36 >= 8)
    {
      v38 = 8;
    }

    else
    {
      v38 = v28 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v26, v27 + 2, v58, 256, v38, v37, v30);
    v26 += result;
  }

  else
  {
    v27[2] = 0;
    if (v28 < 9)
    {
LABEL_65:
      v27[3] = 0;
      return result;
    }
  }

  if (v29 < 5)
  {
    goto LABEL_65;
  }

  if (v33 >= 4)
  {
    v39 = 4;
  }

  else
  {
    v39 = v33;
  }

  if (v36 >= 8)
  {
    v40 = 8;
  }

  else
  {
    v40 = v28 - 8;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v26, v27 + 3, v60, 256, v40, v39, v30);
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v40, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 7;
      v7 = 8 * *(a1 + 76);
      v8 = &v40[128 * v5 + v7];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 8 * *(a1 + 84);
      if ((v11 - 1) >> 32)
      {
        v12 = 1;
      }

      else
      {
        v12 = 8 * v4 == 0;
      }

      if (v12)
      {
        for (i = 0; i != v3; ++i)
        {
          v14 = 0;
          do
          {
            v8[v14] = *(v10 + v14);
            ++v14;
          }

          while (v11 > v14);
          v8 += 128;
          v10 += v9;
        }
      }

      else if (v10 < &v40[128 * v3 - 128 + 128 * v5 + v11 + v7] && v8 < v10 + v9 * (v3 - 1) + v11 || v9 < 0)
      {
        for (j = 0; j != v3; ++j)
        {
          v18 = 0;
          do
          {
            v8[v18] = *(v10 + v18);
            ++v18;
          }

          while (v11 > v18);
          v8 += 128;
          v10 += v9;
        }
      }

      else if (v4 >= 4)
      {
        v22 = 0;
        v23 = v4 & 3;
        v24 = &v40[v6 + v7];
        v25 = &v40[v6 + 16 + v7];
        v26 = (v10 + 16);
        v27 = (v10 + (v11 & 0x1FFFFFFE0));
        v28 = &v24[v11 & 0x1FFFFFFE0];
        do
        {
          v29 = v26;
          v30 = v25;
          v31 = v11 & 0x1FFFFFFE0;
          do
          {
            v32 = *v29;
            *(v30 - 1) = *(v29 - 1);
            *v30 = v32;
            v30 += 2;
            v29 += 2;
            v31 -= 32;
          }

          while (v31);
          if (v11 != (v11 & 0x1FFFFFFE0))
          {
            v33 = v28;
            v34 = v27;
            v35 = v11 - (v11 & 0x1FFFFFFE0);
            if (v23)
            {
              do
              {
                v36 = *v34++;
                *v33++ = v36;
                v35 -= 8;
              }

              while (v35);
            }

            else
            {
              v37 = 0;
              v38 = (v11 & 0xFFFFFFE0) + 1;
              do
              {
                *(v28 + v37) = *(v27 + v37);
                v39 = v11 > v38++;
                ++v37;
              }

              while (v39);
            }
          }

          ++v22;
          v25 += 128;
          v26 = (v26 + v9);
          v27 = (v27 + v9);
          v28 += 16;
        }

        while (v22 != v3);
      }

      else
      {
        v20 = (v10 + 16);
        v21 = &v40[v6 + 16 + v7];
        do
        {
          *(v21 - 2) = *(v20 - 2);
          if (v4 != 1)
          {
            *(v21 - 1) = *(v20 - 1);
            if (v4 != 2)
            {
              *v21 = *v20;
            }
          }

          v20 = (v20 + v9);
          v21 += 16;
          --v3;
        }

        while (v3);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v40, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int32x4_t a2, int32x4_t a3)
{
  v71 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(*(v5 + 208) + 52);
  v8 = &byte_29D2F2FD5;
  v9 = 16;
  do
  {
    v11 = &v70[128 * *v8 + 16 * *(v8 - 1)];
    v12 = *v6;
    if (*v6)
    {
      if (v12 < 0xF0)
      {
        if (v12 == 63)
        {
          v13 = *v4;
          a3 = *(v4 + 16);
          v14 = *(v4 + 32);
          v15 = *(v4 + 48);
          *v11 = vuzp1q_s32(*v4, v14);
          v11[2] = vuzp2q_s32(v13, v14);
          v11[4] = vuzp1q_s32(a3, v15);
          a2 = vuzp2q_s32(a3, v15);
          v11[6] = a2;
          v10 = 64;
        }

        else if (v12 == 1)
        {
          a2 = vld1q_dup_s16(v4);
          *v11 = a2;
          v11[2] = a2;
          v11[4] = a2;
          v11[6] = a2;
          v10 = 2;
        }

        else
        {
          v10 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v11, 32, v4, v12, *a2.i8, *a3.i8);
        }
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v11, 32, v4, v12, v7);
        v10 = 32;
      }
    }

    else
    {
      v10 = 0;
      v11->i64[0] = 0;
      v11->i64[1] = 0;
      v11[2].i64[0] = 0;
      v11[2].i64[1] = 0;
      v11[4].i64[0] = 0;
      v11[4].i64[1] = 0;
      v11[6].i64[0] = 0;
      v11[6].i64[1] = 0;
    }

    v4 += v10;
    ++v6;
    v8 += 2;
    v9 -= 2;
  }

  while (v9);
  v16 = *(a1 + 80);
  if (v16)
  {
    v17 = *(a1 + 84);
    if (v17)
    {
      v18 = *(a1 + 72);
      v19 = 32 * v18;
      v20 = 2 * *(a1 + 76);
      v21 = &v70[32 * v18 + v20];
      v23 = *(a1 + 56);
      v22 = *(a1 + 64);
      v24 = 2 * v17;
      v25 = &v70[32 * v16 - 32 + 32 * v18 + 2 * v17 + v20];
      v28 = v21 < v23 + v22 * (v16 - 1) + 2 * v17 && v23 < v25 || v22 < 0;
      if (v17 > 3)
      {
        if (!v24 || (v24 - 1) >> 32)
        {
          for (i = 0; i != v16; ++i)
          {
            v34 = 0;
            do
            {
              v21[v34] = *(v23 + v34);
              ++v34;
            }

            while (v24 > v34);
            v21 += 32;
            v23 += v22;
          }
        }

        else if (v28)
        {
          for (j = 0; j != v16; ++j)
          {
            v32 = 0;
            do
            {
              v21[v32] = *(v23 + v32);
              ++v32;
            }

            while (v24 > v32);
            v21 += 32;
            v23 += v22;
          }
        }

        else
        {
          v36 = v24 & 0x1FFFFFFF8;
          if (v17 > 0xF)
          {
            v39 = v24 & 0x1FFFFFFE0;
            if (v24 == (v24 & 0x1FFFFFFE0))
            {
              v40 = 0;
              v41 = &v70[v19 + 16 + v20];
              v42 = (v23 + 16);
              do
              {
                v43 = v42;
                v44 = v41;
                v45 = v24;
                do
                {
                  v46 = *v43;
                  *(v44 - 1) = *(v43 - 1);
                  *v44 = v46;
                  v44 += 2;
                  v43 += 2;
                  v45 -= 32;
                }

                while (v45);
                ++v40;
                v41 += 32;
                v42 = (v42 + v22);
              }

              while (v40 != v16);
            }

            else
            {
              v54 = 0;
              v55 = v17 & 0xC;
              v56 = &v70[v19 + v20];
              v57 = &v70[v19 + 16 + v20];
              v58 = (v23 + 16);
              v59 = (v23 + v39);
              v60 = &v56[v39];
              do
              {
                v61 = v58;
                v62 = v57;
                v63 = v24 & 0x1FFFFFFE0;
                do
                {
                  v64 = *v61;
                  *(v62 - 1) = *(v61 - 1);
                  *v62 = v64;
                  v62 += 2;
                  v61 += 2;
                  v63 -= 32;
                }

                while (v63);
                v65 = v24 & 0x1FFFFFFE0;
                if (!v55)
                {
                  goto LABEL_75;
                }

                v66 = v60;
                v67 = v59;
                v68 = v36 - v39;
                do
                {
                  v69 = *v67++;
                  *v66++ = v69;
                  v68 -= 8;
                }

                while (v68);
                v65 = v24 & 0x1FFFFFFF8;
                if (v24 != v36)
                {
LABEL_75:
                  do
                  {
                    v21[v65] = *(v23 + v65);
                    ++v65;
                  }

                  while (v24 > v65);
                }

                ++v54;
                v57 += 32;
                v58 = (v58 + v22);
                v59 = (v59 + v22);
                v60 += 4;
                v21 += 32;
                v23 += v22;
              }

              while (v54 != v16);
            }
          }

          else if (v24 == v36)
          {
            v37 = (v23 + 16);
            v38 = &v70[v19 + 16 + v20];
            do
            {
              *(v38 - 2) = *(v37 - 2);
              if (v17 != 4)
              {
                *(v38 - 1) = *(v37 - 1);
                if (v17 != 8)
                {
                  *v38 = *v37;
                }
              }

              v37 = (v37 + v22);
              v38 += 4;
              --v16;
            }

            while (v16);
          }

          else
          {
            for (k = 0; k != v16; ++k)
            {
              v48 = (v23 + v22 * k);
              v49 = &v21[32 * k];
              *v49 = *v48;
              if (v36 != 8)
              {
                v49[1] = v48[1];
                if (v36 != 16)
                {
                  v49[2] = v48[2];
                }
              }

              v50 = v49 + v36;
              v51 = v48 + v36;
              v52 = v24 & 0x18;
              do
              {
                v53 = *v51++;
                *v50++ = v53;
                ++v52;
              }

              while (v24 > v52);
            }
          }
        }
      }

      else
      {
        for (m = 0; m != v16; ++m)
        {
          v30 = 0;
          do
          {
            v21[v30] = *(v23 + v30);
            ++v30;
          }

          while (v30 < v24);
          v21 += 32;
          v23 += v22;
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v70, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v5 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v40, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 7;
      v7 = 8 * *(a1 + 76);
      v8 = &v40[8 * v5] + v7;
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 8 * *(a1 + 84);
      if ((v11 - 1) >> 32)
      {
        v12 = 1;
      }

      else
      {
        v12 = 8 * v4 == 0;
      }

      if (v12)
      {
        for (i = 0; i != v3; ++i)
        {
          v14 = 0;
          do
          {
            v8[v14] = *(v10 + v14);
            ++v14;
          }

          while (v11 > v14);
          v8 += 128;
          v10 += v9;
        }
      }

      else if (v10 < &v40[8 * v3 - 8 + 8 * v5] + v11 + v7 && v8 < v10 + v9 * (v3 - 1) + v11 || v9 < 0)
      {
        for (j = 0; j != v3; ++j)
        {
          v18 = 0;
          do
          {
            v8[v18] = *(v10 + v18);
            ++v18;
          }

          while (v11 > v18);
          v8 += 128;
          v10 += v9;
        }
      }

      else if (v4 >= 4)
      {
        v22 = 0;
        v23 = v4 & 3;
        v24 = v40 + v6 + v7;
        v25 = &v40[1] + v6 + v7;
        v26 = (v10 + 16);
        v27 = (v10 + (v11 & 0x1FFFFFFE0));
        v28 = &v24[v11 & 0x1FFFFFFE0];
        do
        {
          v29 = v26;
          v30 = v25;
          v31 = v11 & 0x1FFFFFFE0;
          do
          {
            v32 = *v29;
            *(v30 - 1) = *(v29 - 1);
            *v30 = v32;
            v30 += 2;
            v29 += 2;
            v31 -= 32;
          }

          while (v31);
          if (v11 != (v11 & 0x1FFFFFFE0))
          {
            v33 = v28;
            v34 = v27;
            v35 = v11 - (v11 & 0x1FFFFFFE0);
            if (v23)
            {
              do
              {
                v36 = *v34++;
                *v33 = v36;
                v33 += 8;
                v35 -= 8;
              }

              while (v35);
            }

            else
            {
              v37 = 0;
              v38 = (v11 & 0xFFFFFFE0) + 1;
              do
              {
                v28[v37] = *(v27 + v37);
                v39 = v11 > v38++;
                ++v37;
              }

              while (v39);
            }
          }

          ++v22;
          v25 += 128;
          v26 = (v26 + v9);
          v27 = (v27 + v9);
          v28 += 128;
        }

        while (v22 != v3);
      }

      else
      {
        v20 = (v10 + 16);
        v21 = (v40[1].f64 + v6 + v7);
        do
        {
          *(v21 - 2) = *(v20 - 2);
          if (v4 != 1)
          {
            *(v21 - 1) = *(v20 - 1);
            if (v4 != 2)
            {
              *v21 = *v20;
            }
          }

          v20 = (v20 + v9);
          v21 += 16;
          --v3;
        }

        while (v3);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v40, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v82 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(v3 + 208) + 52);
  v6 = &byte_29D2F2FD5;
  v7 = 16;
  do
  {
    v9 = &v81[256 * *v6 + 32 * *(v6 - 1)];
    v10 = *v4;
    if (*v4)
    {
      if (v10 < 0xF0)
      {
        if (v10 == 127)
        {
          v12 = *v2;
          v13 = *(v2 + 16);
          v14 = *(v2 + 32);
          v15 = *(v2 + 48);
          v16 = *(v2 + 64);
          v17 = *(v2 + 80);
          v18 = *(v2 + 96);
          v19 = *(v2 + 112);
          *v9 = vzip1q_s64(*v2, v13);
          v9[1] = vzip1q_s64(v16, v17);
          v9[4] = vzip2q_s64(v12, v13);
          v9[5] = vzip2q_s64(v16, v17);
          v9[8] = vzip1q_s64(v14, v15);
          v9[9] = vzip1q_s64(v18, v19);
          v9[12] = vzip2q_s64(v14, v15);
          v9[13] = vzip2q_s64(v18, v19);
          v8 = 128;
        }

        else if (v10 == 3)
        {
          v11 = vld1q_dup_f32(v2);
          *v9 = v11;
          v9[1] = v11;
          v9[4] = v11;
          v9[5] = v11;
          v9[8] = v11;
          v9[9] = v11;
          v9[12] = v11;
          v9[13] = v11;
          v8 = 4;
        }

        else
        {
          v8 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v9, 64, v2, v10);
        }
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v9->i32, 64, v2, v10, v5);
        v8 = 64;
      }
    }

    else
    {
      v8 = 0;
      *v9 = 0u;
      v9[1] = 0u;
      v9[4] = 0u;
      v9[5] = 0u;
      v9[8] = 0u;
      v9[9] = 0u;
      v9[12] = 0u;
      v9[13] = 0u;
    }

    v2 += v8;
    ++v4;
    v6 += 2;
    v7 -= 2;
  }

  while (v7);
  v20 = *(a1 + 80);
  if (v20)
  {
    v21 = *(a1 + 84);
    if (v21)
    {
      v22 = *(a1 + 72);
      v23 = v22 << 6;
      v24 = 4 * *(a1 + 76);
      v25 = &v81[64 * v22 + v24];
      v27 = *(a1 + 56);
      v26 = *(a1 + 64);
      v28 = 4 * v21;
      v29 = &v81[64 * v20 - 64 + 64 * v22 + 4 * v21 + v24];
      v32 = v25 < v27 + 4 * v21 + v26 * (v20 - 1) && v27 < v29 || v26 < 0;
      if (v21 == 1)
      {
        for (i = 0; i != v20; ++i)
        {
          v34 = v27 + v26 * i;
          v35 = &v25[64 * i];
          v36 = -1;
          do
          {
            v37 = *v34++;
            *v35++ = v37;
            ++v36;
          }

          while (v36 < 3);
        }
      }

      else if (!v28 || (v28 - 1) >> 32)
      {
        for (j = 0; j != v20; ++j)
        {
          v41 = 0;
          do
          {
            v25[v41] = *(v27 + v41);
            ++v41;
          }

          while (v28 > v41);
          v25 += 64;
          v27 = (v27 + v26);
        }
      }

      else if (v32)
      {
        for (k = 0; k != v20; ++k)
        {
          v39 = 0;
          do
          {
            v25[v39] = *(v27 + v39);
            ++v39;
          }

          while (v28 > v39);
          v25 += 64;
          v27 = (v27 + v26);
        }
      }

      else
      {
        v43 = v28 & 0x1FFFFFFF8;
        if (v21 > 7)
        {
          v49 = v28 & 0x1FFFFFFE0;
          if (v28 == (v28 & 0x1FFFFFFE0))
          {
            v50 = 0;
            v51 = &v81[v23 + 16 + v24];
            v52 = (v27 + 2);
            do
            {
              v53 = v52;
              v54 = v51;
              v55 = v28;
              do
              {
                v56 = *v53;
                *(v54 - 1) = *(v53 - 1);
                *v54 = v56;
                v54 += 2;
                v53 += 2;
                v55 -= 32;
              }

              while (v55);
              ++v50;
              v51 += 64;
              v52 = (v52 + v26);
            }

            while (v50 != v20);
          }

          else
          {
            v65 = 0;
            v66 = v21 & 6;
            v67 = &v81[v23 + v24];
            v68 = &v81[v23 + 16 + v24];
            v69 = (v27 + 2);
            v70 = (v27 + v49);
            v71 = &v67[v49];
            do
            {
              v72 = v69;
              v73 = v68;
              v74 = v28 & 0x1FFFFFFE0;
              do
              {
                v75 = *v72;
                *(v73 - 1) = *(v72 - 1);
                *v73 = v75;
                v73 += 2;
                v72 += 2;
                v74 -= 32;
              }

              while (v74);
              v76 = v28 & 0x1FFFFFFE0;
              if (!v66)
              {
                goto LABEL_74;
              }

              v77 = v71;
              v78 = v70;
              v79 = v43 - v49;
              do
              {
                v80 = *v78++;
                *v77++ = v80;
                v79 -= 8;
              }

              while (v79);
              v76 = v28 & 0x1FFFFFFF8;
              if (v28 != v43)
              {
LABEL_74:
                do
                {
                  v25[v76] = *(v27 + v76);
                  ++v76;
                }

                while (v28 > v76);
              }

              ++v65;
              v68 += 64;
              v69 = (v69 + v26);
              v70 = (v70 + v26);
              v71 += 8;
              v25 += 64;
              v27 = (v27 + v26);
            }

            while (v65 != v20);
          }
        }

        else if (v28 == v43)
        {
          for (m = 0; m != v20; ++m)
          {
            v45 = v25;
            v46 = v27;
            v47 = v28;
            do
            {
              v48 = *v46++;
              *v45++ = v48;
              v47 -= 8;
            }

            while (v47);
            v27 = (v27 + v26);
            v25 += 64;
          }
        }

        else
        {
          v57 = 0;
          v58 = v25;
          do
          {
            v59 = &v25[64 * v57 + v43];
            v60 = v58;
            v61 = v27;
            v62 = v28 & 0x1FFFFFFF8;
            do
            {
              v63 = *v61++;
              *v60++ = v63;
              v62 -= 8;
            }

            while (v62);
            v64 = v28 & 0x1FFFFFFF8;
            do
            {
              *v59++ = *(v27 + v64++);
            }

            while (v28 > v64);
            ++v57;
            v27 = (v27 + v26);
            v58 += 8;
          }

          while (v57 != v20);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v81, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v3 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v64, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 6;
      v7 = 4 * *(a1 + 76);
      v8 = &v64[4 * v5] + v7;
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 4 * v4;
      v12 = &v64[4 * v3 - 4 + 4 * v5] + 4 * v4 + v7;
      v15 = v8 < &v10[4 * v4 + v9 * (v3 - 1)] && v10 < v12 || v9 < 0;
      if (v4 == 1)
      {
        for (i = 0; i != v3; ++i)
        {
          v17 = &v10[v9 * i];
          v18 = &v8[64 * i];
          v19 = -1;
          do
          {
            v20 = *v17++;
            *v18++ = v20;
            ++v19;
          }

          while (v19 < 3);
        }
      }

      else if (!v11 || (v11 - 1) >> 32)
      {
        for (j = 0; j != v3; ++j)
        {
          v24 = 0;
          do
          {
            v8[v24] = v10[v24];
            ++v24;
          }

          while (v11 > v24);
          v8 += 64;
          v10 += v9;
        }
      }

      else if (v15)
      {
        for (k = 0; k != v3; ++k)
        {
          v22 = 0;
          do
          {
            v8[v22] = v10[v22];
            ++v22;
          }

          while (v11 > v22);
          v8 += 64;
          v10 += v9;
        }
      }

      else
      {
        v26 = v11 & 0x1FFFFFFF8;
        if (v4 > 7)
        {
          v32 = v11 & 0x1FFFFFFE0;
          if (v11 == (v11 & 0x1FFFFFFE0))
          {
            v33 = 0;
            v34 = &v64[1] + v6 + v7;
            v35 = (v10 + 16);
            do
            {
              v36 = v35;
              v37 = v34;
              v38 = v11;
              do
              {
                v39 = *v36;
                *(v37 - 1) = *(v36 - 1);
                *v37 = v39;
                v37 += 2;
                v36 += 2;
                v38 -= 32;
              }

              while (v38);
              ++v33;
              v34 += 64;
              v35 = (v35 + v9);
            }

            while (v33 != v3);
          }

          else
          {
            v48 = 0;
            v49 = v4 & 6;
            v50 = v64 + v6 + v7;
            v51 = &v64[1] + v6 + v7;
            v52 = (v10 + 16);
            v53 = &v10[v32];
            v54 = &v50[v32];
            do
            {
              v55 = v52;
              v56 = v51;
              v57 = v11 & 0x1FFFFFFE0;
              do
              {
                v58 = *v55;
                *(v56 - 1) = *(v55 - 1);
                *v56 = v58;
                v56 += 2;
                v55 += 2;
                v57 -= 32;
              }

              while (v57);
              v59 = v11 & 0x1FFFFFFE0;
              if (!v49)
              {
                goto LABEL_63;
              }

              v60 = v54;
              v61 = v53;
              v62 = v26 - v32;
              do
              {
                v63 = *v61++;
                *v60 = v63;
                v60 += 8;
                v62 -= 8;
              }

              while (v62);
              v59 = v11 & 0x1FFFFFFF8;
              if (v11 != v26)
              {
LABEL_63:
                do
                {
                  v8[v59] = v10[v59];
                  ++v59;
                }

                while (v11 > v59);
              }

              ++v48;
              v51 += 64;
              v52 = (v52 + v9);
              v53 += v9;
              v54 += 64;
              v8 += 64;
              v10 += v9;
            }

            while (v48 != v3);
          }
        }

        else if (v11 == v26)
        {
          for (m = 0; m != v3; ++m)
          {
            v28 = v8;
            v29 = v10;
            v30 = v11;
            do
            {
              v31 = *v29++;
              *v28 = v31;
              v28 += 8;
              v30 -= 8;
            }

            while (v30);
            v10 += v9;
            v8 += 64;
          }
        }

        else
        {
          v40 = 0;
          v41 = v8;
          do
          {
            v42 = &v8[64 * v40 + v26];
            v43 = v41;
            v44 = v10;
            v45 = v11 & 0x1FFFFFFF8;
            do
            {
              v46 = *v44++;
              *v43 = v46;
              v43 += 8;
              v45 -= 8;
            }

            while (v45);
            v47 = v11 & 0x1FFFFFFF8;
            do
            {
              *v42++ = v10[v47++];
            }

            while (v11 > v47);
            ++v40;
            v10 += v9;
            v41 += 64;
          }

          while (v40 != v3);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v64, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int32x4_t a3, int32x4_t a4, int32x4_t a5, int32x4_t a6, double a7, double a8, int16x4_t a9)
{
  v73 = *MEMORY[0x29EDCA608];
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(*(v11 + 208) + 52);
  v14 = &byte_29D2F2FD5;
  v15 = 16;
  do
  {
    v17 = &v72[128 * *v14 + 16 * *(v14 - 1)];
    v18 = *v12;
    if (*v12)
    {
      if (v18 < 0xF0)
      {
        if (v18 == 63)
        {
          v19 = *v10;
          a3 = *(v10 + 16);
          a4 = *(v10 + 32);
          a5 = *(v10 + 48);
          a6 = vuzp1q_s32(*v10, a4);
          *v17 = a6;
          v17[2] = vuzp2q_s32(v19, a4);
          v17[4] = vuzp1q_s32(a3, a5);
          a2 = vuzp2q_s32(a3, a5);
          v17[6] = a2;
          v16 = 64;
        }

        else if (v18 == 1)
        {
          a2 = vld1q_dup_s16(v10);
          *v17 = a2;
          v17[2] = a2;
          v17[4] = a2;
          v17[6] = a2;
          v16 = 2;
        }

        else
        {
          v16 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v17, 32, v10, v18, a2.n128_f64[0], *a3.i64, *a4.i64, *a5.i8);
        }
      }

      else
      {
        a2.n128_u64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v17, 32, v10, v18, v13).u64[0];
        v16 = 32;
      }
    }

    else
    {
      v16 = 0;
      v17->i64[0] = 0;
      v17->i64[1] = 0;
      v17[2].i64[0] = 0;
      v17[2].i64[1] = 0;
      v17[4].i64[0] = 0;
      v17[4].i64[1] = 0;
      v17[6].i64[0] = 0;
      v17[6].i64[1] = 0;
    }

    v10 += v16;
    ++v12;
    v14 += 2;
    v15 -= 2;
  }

  while (v15);
  v20 = *(a1 + 80);
  if (v20)
  {
    v21 = *(a1 + 84);
    if (v21)
    {
      v22 = *(a1 + 72);
      v23 = 32 * v22;
      v24 = 2 * *(a1 + 76);
      v25 = &v72[32 * v22 + v24];
      v27 = *(a1 + 56);
      v26 = *(a1 + 64);
      v28 = 2 * v21;
      v29 = &v72[32 * v20 - 32 + 32 * v22 + 2 * v21 + v24];
      v32 = v25 < v27 + v26 * (v20 - 1) + 2 * v21 && v27 < v29 || v26 < 0;
      if (v21 > 3)
      {
        if (!v28 || (v28 - 1) >> 32)
        {
          for (i = 0; i != v20; ++i)
          {
            v38 = 0;
            do
            {
              v25[v38] = *(v27 + v38);
              ++v38;
            }

            while (v28 > v38);
            v25 += 32;
            v27 += v26;
          }
        }

        else if (v32)
        {
          for (j = 0; j != v20; ++j)
          {
            v36 = 0;
            do
            {
              v25[v36] = *(v27 + v36);
              ++v36;
            }

            while (v28 > v36);
            v25 += 32;
            v27 += v26;
          }
        }

        else
        {
          v40 = v28 & 0x1FFFFFFF8;
          if (v21 > 0xF)
          {
            v43 = v28 & 0x1FFFFFFE0;
            if (v28 == (v28 & 0x1FFFFFFE0))
            {
              v44 = 0;
              v45 = &v72[v23 + 16 + v24];
              v46 = (v27 + 16);
              do
              {
                v47 = v46;
                v48 = v45;
                v49 = v28;
                do
                {
                  a2 = v47[-1];
                  a3 = *v47;
                  v48[-1] = a2;
                  *v48 = a3;
                  v48 += 2;
                  v47 += 2;
                  v49 -= 32;
                }

                while (v49);
                ++v44;
                v45 += 2;
                v46 = (v46 + v26);
              }

              while (v44 != v20);
            }

            else
            {
              v57 = 0;
              v58 = v21 & 0xC;
              v59 = &v72[v23 + v24];
              v60 = &v72[v23 + 16 + v24];
              v61 = (v27 + 16);
              v62 = (v27 + v43);
              v63 = &v59[v43];
              do
              {
                v64 = v61;
                v65 = v60;
                v66 = v28 & 0x1FFFFFFE0;
                do
                {
                  a2 = v64[-1];
                  a3 = *v64;
                  v65[-1] = a2;
                  *v65 = a3;
                  v65 += 2;
                  v64 += 2;
                  v66 -= 32;
                }

                while (v66);
                v67 = v28 & 0x1FFFFFFE0;
                if (!v58)
                {
                  goto LABEL_75;
                }

                v68 = v63;
                v69 = v62;
                v70 = v40 - v43;
                do
                {
                  v71 = *v69++;
                  a2.n128_u64[0] = v71;
                  *v68++ = v71;
                  v70 -= 8;
                }

                while (v70);
                v67 = v28 & 0x1FFFFFFF8;
                if (v28 != v40)
                {
LABEL_75:
                  do
                  {
                    v25[v67] = *(v27 + v67);
                    ++v67;
                  }

                  while (v28 > v67);
                }

                ++v57;
                v60 += 2;
                v61 = (v61 + v26);
                v62 = (v62 + v26);
                v63 += 4;
                v25 += 32;
                v27 += v26;
              }

              while (v57 != v20);
            }
          }

          else if (v28 == v40)
          {
            v41 = (v27 + 16);
            v42 = &v72[v23 + 16 + v24];
            do
            {
              a2.n128_u64[0] = *(v41 - 2);
              *(v42 - 2) = a2.n128_u64[0];
              if (v21 != 4)
              {
                a2.n128_u64[0] = *(v41 - 1);
                *(v42 - 1) = a2.n128_u64[0];
                if (v21 != 8)
                {
                  a2.n128_u64[0] = *v41;
                  *v42 = *v41;
                }
              }

              v41 = (v41 + v26);
              v42 += 4;
              --v20;
            }

            while (v20);
          }

          else
          {
            for (k = 0; k != v20; ++k)
            {
              v51 = (v27 + v26 * k);
              v52 = &v25[32 * k];
              a2.n128_u64[0] = *v51;
              *v52 = *v51;
              if (v40 != 8)
              {
                a2.n128_u64[0] = v51[1];
                v52[1] = a2.n128_u64[0];
                if (v40 != 16)
                {
                  a2.n128_u64[0] = v51[2];
                  v52[2] = a2.n128_u64[0];
                }
              }

              v53 = v52 + v40;
              v54 = v51 + v40;
              v55 = v28 & 0x18;
              do
              {
                v56 = *v54++;
                *v53++ = v56;
                ++v55;
              }

              while (v28 > v55);
            }
          }
        }
      }

      else
      {
        for (m = 0; m != v20; ++m)
        {
          v34 = 0;
          do
          {
            v25[v34] = *(v27 + v34);
            ++v34;
          }

          while (v34 < v28);
          v25 += 32;
          v27 += v26;
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v72, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v11 + 208) + 52), a2.n128_f64[0], *a3.i64, *a4.i64, *a5.i64, *a6.i8, a7, a8, a9);
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v82 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(v3 + 208) + 52);
  v6 = &byte_29D2F2FD5;
  v7 = 16;
  do
  {
    v9 = &v81[256 * *v6 + 32 * *(v6 - 1)];
    v10 = *v4;
    if (*v4)
    {
      if (v10 < 0xF0)
      {
        if (v10 == 127)
        {
          v12 = *v2;
          v13 = *(v2 + 16);
          v14 = *(v2 + 32);
          v15 = *(v2 + 48);
          v16 = *(v2 + 64);
          v17 = *(v2 + 80);
          v18 = *(v2 + 96);
          v19 = *(v2 + 112);
          *v9 = vzip1q_s64(*v2, v13);
          v9[1] = vzip1q_s64(v16, v17);
          v9[4] = vzip2q_s64(v12, v13);
          v9[5] = vzip2q_s64(v16, v17);
          v9[8] = vzip1q_s64(v14, v15);
          v9[9] = vzip1q_s64(v18, v19);
          v9[12] = vzip2q_s64(v14, v15);
          v9[13] = vzip2q_s64(v18, v19);
          v8 = 128;
        }

        else if (v10 == 3)
        {
          v11 = vld1q_dup_f32(v2);
          *v9 = v11;
          v9[1] = v11;
          v9[4] = v11;
          v9[5] = v11;
          v9[8] = v11;
          v9[9] = v11;
          v9[12] = v11;
          v9[13] = v11;
          v8 = 4;
        }

        else
        {
          v8 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v9, 64, v2, v10);
        }
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v9, 64, v2, v10, v5);
        v8 = 64;
      }
    }

    else
    {
      v8 = 0;
      *v9 = 0u;
      v9[1] = 0u;
      v9[4] = 0u;
      v9[5] = 0u;
      v9[8] = 0u;
      v9[9] = 0u;
      v9[12] = 0u;
      v9[13] = 0u;
    }

    v2 += v8;
    ++v4;
    v6 += 2;
    v7 -= 2;
  }

  while (v7);
  v20 = *(a1 + 80);
  if (v20)
  {
    v21 = *(a1 + 84);
    if (v21)
    {
      v22 = *(a1 + 72);
      v23 = v22 << 6;
      v24 = 4 * *(a1 + 76);
      v25 = &v81[64 * v22 + v24];
      v27 = *(a1 + 56);
      v26 = *(a1 + 64);
      v28 = 4 * v21;
      v29 = &v81[64 * v20 - 64 + 64 * v22 + 4 * v21 + v24];
      v32 = v25 < v27 + 4 * v21 + v26 * (v20 - 1) && v27 < v29 || v26 < 0;
      if (v21 == 1)
      {
        for (i = 0; i != v20; ++i)
        {
          v34 = v27 + v26 * i;
          v35 = &v25[64 * i];
          v36 = -1;
          do
          {
            v37 = *v34++;
            *v35++ = v37;
            ++v36;
          }

          while (v36 < 3);
        }
      }

      else if (!v28 || (v28 - 1) >> 32)
      {
        for (j = 0; j != v20; ++j)
        {
          v41 = 0;
          do
          {
            v25[v41] = *(v27 + v41);
            ++v41;
          }

          while (v28 > v41);
          v25 += 64;
          v27 = (v27 + v26);
        }
      }

      else if (v32)
      {
        for (k = 0; k != v20; ++k)
        {
          v39 = 0;
          do
          {
            v25[v39] = *(v27 + v39);
            ++v39;
          }

          while (v28 > v39);
          v25 += 64;
          v27 = (v27 + v26);
        }
      }

      else
      {
        v43 = v28 & 0x1FFFFFFF8;
        if (v21 > 7)
        {
          v49 = v28 & 0x1FFFFFFE0;
          if (v28 == (v28 & 0x1FFFFFFE0))
          {
            v50 = 0;
            v51 = &v81[v23 + 16 + v24];
            v52 = (v27 + 2);
            do
            {
              v53 = v52;
              v54 = v51;
              v55 = v28;
              do
              {
                v56 = *v53;
                *(v54 - 1) = *(v53 - 1);
                *v54 = v56;
                v54 += 2;
                v53 += 2;
                v55 -= 32;
              }

              while (v55);
              ++v50;
              v51 += 64;
              v52 = (v52 + v26);
            }

            while (v50 != v20);
          }

          else
          {
            v65 = 0;
            v66 = v21 & 6;
            v67 = &v81[v23 + v24];
            v68 = &v81[v23 + 16 + v24];
            v69 = (v27 + 2);
            v70 = (v27 + v49);
            v71 = &v67[v49];
            do
            {
              v72 = v69;
              v73 = v68;
              v74 = v28 & 0x1FFFFFFE0;
              do
              {
                v75 = *v72;
                *(v73 - 1) = *(v72 - 1);
                *v73 = v75;
                v73 += 2;
                v72 += 2;
                v74 -= 32;
              }

              while (v74);
              v76 = v28 & 0x1FFFFFFE0;
              if (!v66)
              {
                goto LABEL_74;
              }

              v77 = v71;
              v78 = v70;
              v79 = v43 - v49;
              do
              {
                v80 = *v78++;
                *v77++ = v80;
                v79 -= 8;
              }

              while (v79);
              v76 = v28 & 0x1FFFFFFF8;
              if (v28 != v43)
              {
LABEL_74:
                do
                {
                  v25[v76] = *(v27 + v76);
                  ++v76;
                }

                while (v28 > v76);
              }

              ++v65;
              v68 += 64;
              v69 = (v69 + v26);
              v70 = (v70 + v26);
              v71 += 8;
              v25 += 64;
              v27 = (v27 + v26);
            }

            while (v65 != v20);
          }
        }

        else if (v28 == v43)
        {
          for (m = 0; m != v20; ++m)
          {
            v45 = v25;
            v46 = v27;
            v47 = v28;
            do
            {
              v48 = *v46++;
              *v45++ = v48;
              v47 -= 8;
            }

            while (v47);
            v27 = (v27 + v26);
            v25 += 64;
          }
        }

        else
        {
          v57 = 0;
          v58 = v25;
          do
          {
            v59 = &v25[64 * v57 + v43];
            v60 = v58;
            v61 = v27;
            v62 = v28 & 0x1FFFFFFF8;
            do
            {
              v63 = *v61++;
              *v60++ = v63;
              v62 -= 8;
            }

            while (v62);
            v64 = v28 & 0x1FFFFFFF8;
            do
            {
              *v59++ = *(v27 + v64++);
            }

            while (v28 > v64);
            ++v57;
            v27 = (v27 + v26);
            v58 += 8;
          }

          while (v57 != v20);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v81, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v3 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v64, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 6;
      v7 = 4 * *(a1 + 76);
      v8 = &v64[64 * v5 + v7];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 4 * v4;
      v12 = &v64[64 * v3 - 64 + 64 * v5 + 4 * v4 + v7];
      v15 = v8 < v10 + 4 * v4 + v9 * (v3 - 1) && v10 < v12 || v9 < 0;
      if (v4 == 1)
      {
        for (i = 0; i != v3; ++i)
        {
          v17 = v10 + v9 * i;
          v18 = &v8[64 * i];
          v19 = -1;
          do
          {
            v20 = *v17++;
            *v18++ = v20;
            ++v19;
          }

          while (v19 < 3);
        }
      }

      else if (!v11 || (v11 - 1) >> 32)
      {
        for (j = 0; j != v3; ++j)
        {
          v24 = 0;
          do
          {
            v8[v24] = *(v10 + v24);
            ++v24;
          }

          while (v11 > v24);
          v8 += 64;
          v10 = (v10 + v9);
        }
      }

      else if (v15)
      {
        for (k = 0; k != v3; ++k)
        {
          v22 = 0;
          do
          {
            v8[v22] = *(v10 + v22);
            ++v22;
          }

          while (v11 > v22);
          v8 += 64;
          v10 = (v10 + v9);
        }
      }

      else
      {
        v26 = v11 & 0x1FFFFFFF8;
        if (v4 > 7)
        {
          v32 = v11 & 0x1FFFFFFE0;
          if (v11 == (v11 & 0x1FFFFFFE0))
          {
            v33 = 0;
            v34 = &v64[v6 + 16 + v7];
            v35 = (v10 + 2);
            do
            {
              v36 = v35;
              v37 = v34;
              v38 = v11;
              do
              {
                v39 = *v36;
                *(v37 - 1) = *(v36 - 1);
                *v37 = v39;
                v37 += 2;
                v36 += 2;
                v38 -= 32;
              }

              while (v38);
              ++v33;
              v34 += 64;
              v35 = (v35 + v9);
            }

            while (v33 != v3);
          }

          else
          {
            v48 = 0;
            v49 = v4 & 6;
            v50 = &v64[v6 + v7];
            v51 = &v64[v6 + 16 + v7];
            v52 = (v10 + 2);
            v53 = (v10 + v32);
            v54 = &v50[v32];
            do
            {
              v55 = v52;
              v56 = v51;
              v57 = v11 & 0x1FFFFFFE0;
              do
              {
                v58 = *v55;
                *(v56 - 1) = *(v55 - 1);
                *v56 = v58;
                v56 += 2;
                v55 += 2;
                v57 -= 32;
              }

              while (v57);
              v59 = v11 & 0x1FFFFFFE0;
              if (!v49)
              {
                goto LABEL_63;
              }

              v60 = v54;
              v61 = v53;
              v62 = v26 - v32;
              do
              {
                v63 = *v61++;
                *v60++ = v63;
                v62 -= 8;
              }

              while (v62);
              v59 = v11 & 0x1FFFFFFF8;
              if (v11 != v26)
              {
LABEL_63:
                do
                {
                  v8[v59] = *(v10 + v59);
                  ++v59;
                }

                while (v11 > v59);
              }

              ++v48;
              v51 += 64;
              v52 = (v52 + v9);
              v53 = (v53 + v9);
              v54 += 8;
              v8 += 64;
              v10 = (v10 + v9);
            }

            while (v48 != v3);
          }
        }

        else if (v11 == v26)
        {
          for (m = 0; m != v3; ++m)
          {
            v28 = v8;
            v29 = v10;
            v30 = v11;
            do
            {
              v31 = *v29++;
              *v28++ = v31;
              v30 -= 8;
            }

            while (v30);
            v10 = (v10 + v9);
            v8 += 64;
          }
        }

        else
        {
          v40 = 0;
          v41 = v8;
          do
          {
            v42 = &v8[64 * v40 + v26];
            v43 = v41;
            v44 = v10;
            v45 = v11 & 0x1FFFFFFF8;
            do
            {
              v46 = *v44++;
              *v43++ = v46;
              v45 -= 8;
            }

            while (v45);
            v47 = v11 & 0x1FFFFFFF8;
            do
            {
              *v42++ = *(v10 + v47++);
            }

            while (v11 > v47);
            ++v40;
            v10 = (v10 + v9);
            v41 += 8;
          }

          while (v40 != v3);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v64, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int16x4_t a3)
{
  v74 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(*(v5 + 208) + 52);
  v8 = &byte_29D2F2FD5;
  v9 = 16;
  do
  {
    v11 = &v73[64 * *v8 + 8 * *(v8 - 1)];
    v12 = *v6;
    if (*v6)
    {
      if (v12 < 0xF0)
      {
        if (v12 == 31)
        {
          v13 = *v4;
          a3 = *(v4 + 8);
          v14 = *(v4 + 16);
          v15 = *(v4 + 24);
          *v11 = vuzp1_s16(*v4, v14);
          v11[2] = vuzp2_s16(v13, v14);
          v11[4] = vuzp1_s16(a3, v15);
          a2 = COERCE_DOUBLE(vuzp2_s16(a3, v15));
          *&v11[6] = a2;
          v10 = 32;
        }

        else if (v12 == 96)
        {
          a2 = COERCE_DOUBLE(vdup_lane_s8(*v4, 0));
          *v11 = a2;
          *&v11[2] = a2;
          *&v11[4] = a2;
          *&v11[6] = a2;
          v10 = 1;
        }

        else
        {
          v10 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v11, 16, v4, v12, a2, a3);
        }
      }

      else
      {
        *&a2 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v11, 16, v4, v12, v7);
        v10 = 16;
      }
    }

    else
    {
      v10 = 0;
      *v11 = 0;
      v11[2] = 0;
      v11[4] = 0;
      v11[6] = 0;
    }

    v4 += v10;
    ++v6;
    v8 += 2;
    v9 -= 2;
  }

  while (v9);
  v16 = *(a1 + 80);
  if (v16)
  {
    v17 = *(a1 + 84);
    if (v17)
    {
      v19 = *(a1 + 72);
      v18 = *(a1 + 76);
      v20 = 16 * v19;
      v22 = *(a1 + 56);
      v21 = *(a1 + 64);
      if (v17 > 7)
      {
        v25 = &v73[v18 + v20];
        v26 = (v17 - 1);
        v27 = v22 >= &v73[16 * v16 - 15 + 16 * v19 + v18 + v26] || v25 >= v22 + v21 * (v16 - 1) + v26 + 1;
        if (!v27 || v21 < 0)
        {
          for (i = 0; i != v16; ++i)
          {
            v32 = (v22 + v21 * i);
            v33 = &v25[16 * i];
            v34 = v17;
            do
            {
              v35 = *v32++;
              *v33++ = v35;
              --v34;
            }

            while (v34);
          }
        }

        else
        {
          v28 = v17 & 0xFFFFFFF8;
          if (v17 > 0x1F)
          {
            v37 = v17 & 0xFFFFFFE0;
            if (v37 == v17)
            {
              v38 = 0;
              v39 = &v73[v20 + 16 + v18];
              v40 = (v22 + 16);
              do
              {
                v41 = v40;
                v42 = v39;
                v43 = v17;
                do
                {
                  v44 = *v41;
                  *(v42 - 1) = *(v41 - 1);
                  *v42 = v44;
                  v42 += 2;
                  v41 += 2;
                  v43 -= 32;
                }

                while (v43);
                ++v38;
                v39 += 16;
                v40 = (v40 + v21);
              }

              while (v38 != v16);
            }

            else
            {
              v53 = 0;
              v54 = (v22 + 16);
              v55 = &v73[v20 + v18];
              v56 = &v73[v20 + 16 + v18];
              v57 = (v22 + v37);
              v58 = &v55[v37];
              do
              {
                v59 = v56;
                v60 = v54;
                v61 = v17 & 0xFFFFFFE0;
                do
                {
                  v62 = *v60;
                  *(v59 - 1) = *(v60 - 1);
                  *v59 = v62;
                  v60 += 2;
                  v59 += 2;
                  v61 -= 32;
                }

                while (v61);
                v63 = v17 & 0xFFFFFFE0;
                v64 = v17 & 0xFFFFFFE0;
                if ((v17 & 0x18) == 0)
                {
                  goto LABEL_64;
                }

                v65 = v58;
                v66 = v57;
                v67 = v28 - v37;
                do
                {
                  v68 = *v66++;
                  *v65++ = v68;
                  v67 -= 8;
                }

                while (v67);
                v63 = v17 & 0xFFFFFFF8;
                v64 = v17 & 0xFFFFFFF8;
                if (v28 != v17)
                {
LABEL_64:
                  v69 = (v22 + v21 * v53 + v64);
                  v70 = &v25[16 * v53 + v64];
                  v71 = v17 - v63;
                  do
                  {
                    v72 = *v69++;
                    *v70++ = v72;
                    --v71;
                  }

                  while (v71);
                }

                ++v53;
                v54 = (v54 + v21);
                v56 += 16;
                v57 = (v57 + v21);
                v58 += 2;
              }

              while (v53 != v16);
            }
          }

          else if (v28 == v17)
          {
            v29 = (v22 + 16);
            v30 = &v73[v20 + 16 + v18];
            do
            {
              *(v30 - 2) = *(v29 - 2);
              if (v17 != 8)
              {
                *(v30 - 1) = *(v29 - 1);
                if (v17 != 16)
                {
                  *v30 = *v29;
                }
              }

              v29 = (v29 + v21);
              v30 += 2;
              --v16;
            }

            while (v16);
          }

          else
          {
            v45 = 0;
            v46 = v17 - v28;
            do
            {
              v47 = (v22 + v21 * v45);
              v48 = &v25[16 * v45];
              *v48 = *v47;
              if (v28 != 8)
              {
                v48[1] = v47[1];
                if (v28 != 16)
                {
                  v48[2] = v47[2];
                }
              }

              v49 = v48 + v28;
              v50 = v47 + v28;
              v51 = v46;
              do
              {
                v52 = *v50++;
                *v49++ = v52;
                --v51;
              }

              while (v51);
              ++v45;
            }

            while (v45 != v16);
          }
        }
      }

      else
      {
        v23 = &v73[v20 + 3 + v18];
        v24 = (v22 + 3);
        do
        {
          *(v23 - 3) = *(v24 - 3);
          if (v17 != 1)
          {
            *(v23 - 2) = *(v24 - 2);
            if (v17 != 2)
            {
              *(v23 - 1) = *(v24 - 1);
              if (v17 != 3)
              {
                *v23 = *v24;
                if (v17 != 4)
                {
                  v23[1] = v24[1];
                  if (v17 != 5)
                  {
                    v23[2] = v24[2];
                    if (v17 != 6)
                    {
                      v23[3] = v24[3];
                    }
                  }
                }
              }
            }
          }

          v23 += 16;
          v24 += v21;
          --v16;
        }

        while (v16);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v73, 16, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v5 + 208) + 52));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressMacroblock(v40, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 7;
      v7 = 8 * *(a1 + 76);
      v8 = &v40[8 * v5] + v7;
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 8 * *(a1 + 84);
      if ((v11 - 1) >> 32)
      {
        v12 = 1;
      }

      else
      {
        v12 = 8 * v4 == 0;
      }

      if (v12)
      {
        for (i = 0; i != v3; ++i)
        {
          v14 = 0;
          do
          {
            v8[v14] = *(v10 + v14);
            ++v14;
          }

          while (v11 > v14);
          v8 += 128;
          v10 += v9;
        }
      }

      else if (v10 < &v40[8 * v3 - 8 + 8 * v5] + v11 + v7 && v8 < v10 + v9 * (v3 - 1) + v11 || v9 < 0)
      {
        for (j = 0; j != v3; ++j)
        {
          v18 = 0;
          do
          {
            v8[v18] = *(v10 + v18);
            ++v18;
          }

          while (v11 > v18);
          v8 += 128;
          v10 += v9;
        }
      }

      else if (v4 >= 4)
      {
        v22 = 0;
        v23 = v4 & 3;
        v24 = v40 + v6 + v7;
        v25 = &v40[1] + v6 + v7;
        v26 = (v10 + 16);
        v27 = (v10 + (v11 & 0x1FFFFFFE0));
        v28 = &v24[v11 & 0x1FFFFFFE0];
        do
        {
          v29 = v26;
          v30 = v25;
          v31 = v11 & 0x1FFFFFFE0;
          do
          {
            v32 = *v29;
            *(v30 - 1) = *(v29 - 1);
            *v30 = v32;
            v30 += 2;
            v29 += 2;
            v31 -= 32;
          }

          while (v31);
          if (v11 != (v11 & 0x1FFFFFFE0))
          {
            v33 = v28;
            v34 = v27;
            v35 = v11 - (v11 & 0x1FFFFFFE0);
            if (v23)
            {
              do
              {
                v36 = *v34++;
                *v33 = v36;
                v33 += 8;
                v35 -= 8;
              }

              while (v35);
            }

            else
            {
              v37 = 0;
              v38 = (v11 & 0xFFFFFFE0) + 1;
              do
              {
                v28[v37] = *(v27 + v37);
                v39 = v11 > v38++;
                ++v37;
              }

              while (v39);
            }
          }

          ++v22;
          v25 += 128;
          v26 = (v26 + v9);
          v27 = (v27 + v9);
          v28 += 128;
        }

        while (v22 != v3);
      }

      else
      {
        v20 = (v10 + 16);
        v21 = (&v40[1] + v6 + v7);
        do
        {
          *(v21 - 2) = *(v20 - 2);
          if (v4 != 1)
          {
            *(v21 - 1) = *(v20 - 1);
            if (v4 != 2)
            {
              *v21 = *v20;
            }
          }

          v20 = (v20 + v9);
          v21 += 16;
          --v3;
        }

        while (v3);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressMacroblock(v40, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v159 = *MEMORY[0x29EDCA608];
  v128 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v141 = a8;
  v24 = a8 >> 5;
  v127 = a8 + a10 - 1;
  v25 = v127 >> 5;
  v142 = a1;
  result = *(a1 + 168);
  if (result)
  {
    result = IOSurfaceGetCacheMode();
    v27 = result & 0xF00;
  }

  else
  {
    v27 = 0;
  }

  v28 = (v27 & 0xD00) == 0 || v27 == 768;
  v29 = v27 & 0xE00;
  v31 = !v28 && v29 != 1024;
  v145 = v31;
  if (v24 <= v25)
  {
    v138 = a7 + a9 - 1;
    if (a7 >> 5 <= v138 >> 5)
    {
      v143 = (a5 - 1) >> 5;
      v126 = (a6 - 1) >> 5;
      v132 = (a5 - 1) & 0x1F;
      v124 = ((a6 - 1) & 0x1F) + 1;
      v125 = (a6 - 1) & 0x1F;
      v32 = 4 * a11;
      v136 = a7;
      v122 = v25 + 1;
      v123 = a7 >> 5;
      v137 = a7;
      do
      {
        v33 = (32 * v24) | 0x1F;
        if (32 * v24 <= v141)
        {
          v34 = v141;
        }

        else
        {
          v34 = 32 * v24;
        }

        if (v127 < v33)
        {
          v33 = v127;
        }

        v135 = v34 - 32 * v24;
        v35 = v33 - v34;
        v36 = v35 + 1;
        v37 = v35 != v125;
        v134 = v36;
        if (v24 == v126)
        {
          v38 = v124;
        }

        else
        {
          v38 = 32;
        }

        if (v24 != v126)
        {
          v37 = v36 != 32;
        }

        v133 = v37;
        v140 = a3 + (v34 - v141) * a11;
        v39 = v123;
        v40 = v142;
        do
        {
          v41 = 32 * v39;
          v144 = v39 + 1;
          v42 = 32 * (v39 + 1) - 1;
          if (32 * v39 <= a7)
          {
            v43 = a7;
          }

          else
          {
            v43 = 32 * v39;
          }

          if (v138 < v42)
          {
            v42 = v138;
          }

          v44 = v42 - v43;
          v45 = v44 + 1;
          if (v39 == v143)
          {
            v46 = v132 + 1;
          }

          else
          {
            v46 = 32;
          }

          v47 = 1;
          if (32 * v24 >= v141 && v41 >= v136)
          {
            v48 = v44 != v132;
            if (v39 != v143)
            {
              v48 = v45 != 32;
            }

            v47 = v48 || v133;
          }

          v49 = *(v40 + 128) >> (*(v40 + 144) + a12);
          if (v49 <= 1)
          {
            v49 = 1;
          }

          v50 = v49 + 31;
          if (v50 < 0x40)
          {
            v51 = 0;
          }

          else
          {
            v51 = 32 - __clz(~(-1 << -__clz((v50 >> 5) - 1)));
          }

          v52 = *(v40 + 132) >> (*(v40 + 144) + a12);
          if (v52 <= 1)
          {
            v52 = 1;
          }

          v53 = v52 + 31;
          if (v53 < 0x40)
          {
            v54 = 0;
            if (!v51)
            {
LABEL_62:
              v60 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v54 = 32 - __clz(~(-1 << -__clz((v53 >> 5) - 1)));
            if (!(v54 | v51))
            {
              goto LABEL_62;
            }
          }

          v55 = 0;
          v56 = 0;
          v57 = v51 != 0;
          v58 = v54 != 0;
          v59 = 1;
          do
          {
            --v51;
            if (v57)
            {
              v56 |= (v59 & v39) << v55++;
            }

            else
            {
              v51 = 0;
            }

            --v54;
            if (v58)
            {
              v56 |= (v59 & v24) << v55++;
            }

            else
            {
              v54 = 0;
            }

            v59 *= 2;
            --v55;
            v58 = v54 != 0;
            v57 = v51 != 0;
          }

          while (v54 | v51);
          v60 = 32 * v56;
LABEL_63:
          v61 = (a4 + v60);
          v62 = v140 + v43 - a7;
          v63 = (a2 + v24 * v128 + (v39 << 10));
          __src = v63;
          if (v145)
          {
            if (!(v47 & 1 | (v46 < 0x20u) | (v38 < 0x20u)))
            {
              v63 = __dst;
LABEL_70:
              v65 = &byte_29D2F790B;
              v66 = 64;
              v64 = v63;
              v67 = v63;
              do
              {
                v70 = *v65;
                v71 = *(v65 - 1);
                v72 = v46 - 8 * v71;
                v73 = v38 - 4 * v70;
                if (v72 < 1 || v73 <= 0)
                {
                  *v61 = 0;
                }

                else
                {
                  if (v73 >= 4)
                  {
                    v68 = 4;
                  }

                  else
                  {
                    v68 = v38 - 4 * v70;
                  }

                  if (v72 >= 8)
                  {
                    v69 = 8;
                  }

                  else
                  {
                    v69 = v46 - 8 * v71;
                  }

                  v67 = (v67 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v67, v61, (v62 + v32 * v70 + 8 * v71), a11, v69, v68, *&v17, *&v18, v19, v20, v21, v22, v23));
                }

                v65 += 2;
                ++v61;
                v66 -= 2;
              }

              while (v66);
              a7 = v137;
              v40 = v142;
              goto LABEL_130;
            }

            memcpy(__dst, v63, 0x400uLL);
            v63 = __dst;
          }

          else if (!(v47 & 1 | (v46 < 0x20u) | (v38 < 0x20u)))
          {
            goto LABEL_70;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v142;
          v148 = v63;
          v156 = v46;
          v157 = v38;
          v152 = v135;
          v153 = v43 - v41;
          v149 = v61;
          v150 = v62;
          v151 = a11;
          v154 = v134;
          v155 = v45;
          if (v47)
          {
            v64 = v63;
            dispatch_sync(*(*(v142 + 8) + 16552), block);
            a7 = v137;
            v40 = v142;
            goto LABEL_130;
          }

          v75 = &byte_29D2F790B;
          v76 = 64;
          v131 = v63;
          v77 = v63;
          do
          {
            v78 = *v61++;
            v77 = (v77 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&__dst[128 * *v75 + 1024 + 8 * *(v75 - 1)], 32, v77, v78, *&v17, *&v18));
            v75 += 2;
            v76 -= 2;
          }

          while (v76);
          v79 = v154;
          if (v154)
          {
            v80 = v155;
            if (v155)
            {
              v81 = 0;
              v82 = 32 * v152;
              v83 = &__dst[v153 + 1024 + v82];
              v84 = v150;
              v85 = v151;
              v86 = v155 - 1;
              v88 = v83 < v150 + v151 * (v154 - 1) + v86 + 1 && v150 < &__dst[32 * v154 + 993 + 32 * v152 + v153 + v86];
              v89 = v155 & 0xFFFFFFE0;
              v90 = v155 & 0xFFFFFFF8;
              v91 = v155 < 8 || v151 < 0 || v88;
              v92 = &__dst[v82 + 1040 + v153];
              v93 = (v150 + 16);
              v94 = v83;
              v95 = v150;
              do
              {
                v96 = (v84 + v81 * v85);
                v97 = &v83[32 * v81];
                if (v91)
                {
                  v98 = 0;
                  goto LABEL_111;
                }

                if (v80 >= 0x20)
                {
                  v100 = v93;
                  v101 = v92;
                  v102 = v80 & 0xFFFFFFE0;
                  do
                  {
                    v17 = *(v100 - 1);
                    v18 = *v100;
                    *(v101 - 1) = v17;
                    *v101 = v18;
                    v101 += 2;
                    v100 += 2;
                    v102 -= 32;
                  }

                  while (v102);
                  if (v89 == v80)
                  {
                    goto LABEL_97;
                  }

                  v99 = v80 & 0xFFFFFFE0;
                  if ((v80 & 0x18) == 0)
                  {
                    v96 += v89;
                    v97 += v89;
                    v98 = v80 & 0xFFFFFFE0;
                    goto LABEL_111;
                  }
                }

                else
                {
                  v99 = 0;
                }

                v97 += v90;
                v103 = v99 - (v80 & 0xFFFFFFF8);
                v104 = (v95 + v99);
                v105 = &v94[v99];
                do
                {
                  v106 = *v104++;
                  *&v17 = v106;
                  *v105++ = v106;
                  v103 += 8;
                }

                while (v103);
                if (v90 == v80)
                {
                  goto LABEL_97;
                }

                v96 += v90;
                v98 = v80 & 0xFFFFFFF8;
LABEL_111:
                v107 = v80 - v98;
                do
                {
                  v108 = *v96++;
                  *v97++ = v108;
                  --v107;
                }

                while (v107);
LABEL_97:
                ++v81;
                v92 += 32;
                v93 = (v93 + v85);
                v95 += v85;
                v94 += 32;
              }

              while (v81 != v79);
            }
          }

          v109 = v148;
          v110 = v149;
          v111 = v156;
          v112 = &byte_29D2F790B;
          v113 = 64;
          v114 = v157;
          do
          {
            v117 = *v112;
            v118 = *(v112 - 1);
            v119 = v111 - 8 * v118;
            v120 = v114 - 4 * v117;
            if (v119 < 1 || v120 <= 0)
            {
              *v110 = 0;
            }

            else
            {
              if (v120 >= 4)
              {
                v115 = 4;
              }

              else
              {
                v115 = v114 - 4 * v117;
              }

              if (v119 >= 8)
              {
                v116 = 8;
              }

              else
              {
                v116 = v111 - 8 * v118;
              }

              v109 = (v109 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v109, v110, &__dst[128 * v117 + 1024 + 8 * v118], 32, v116, v115, *&v17, *&v18, v19, v20, v21, v22, v23));
            }

            v112 += 2;
            ++v110;
            v113 -= 2;
          }

          while (v113);
          a7 = v137;
          v40 = v142;
          v32 = 4 * a11;
          v64 = v131;
LABEL_130:
          result = __src;
          if (v145)
          {
            result = memcpy(__src, v64, 0x400uLL);
          }

          v39 = v144;
        }

        while (v144 != (v138 >> 5) + 1);
        ++v24;
      }

      while (v24 != v122);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v158 = *MEMORY[0x29EDCA608];
  v129 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v141 = a8;
  v18 = a8 >> 5;
  v128 = a8 + a10 - 1;
  v19 = v128 >> 5;
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
  v144 = v24;
  result = a1;
  if (v18 <= v19)
  {
    v138 = a7 + a9 - 1;
    if (a7 >> 5 <= v138 >> 5)
    {
      v142 = (a5 - 1) >> 5;
      v127 = (a6 - 1) >> 5;
      v134 = (a5 - 1) & 0x1F;
      v125 = ((a6 - 1) & 0x1F) + 1;
      v126 = (a6 - 1) & 0x1F;
      v124 = v19 + 1;
      v26 = 2 * a11;
      do
      {
        v27 = (32 * v18) | 0x1F;
        if (32 * v18 <= v141)
        {
          v28 = v141;
        }

        else
        {
          v28 = 32 * v18;
        }

        if (v128 < v27)
        {
          v27 = v128;
        }

        v137 = v28 - 32 * v18;
        v29 = v27 - v28;
        v30 = v29 + 1;
        v31 = v29 != v126;
        v136 = v30;
        if (v18 == v127)
        {
          v32 = v125;
        }

        else
        {
          v32 = 32;
        }

        if (v18 != v127)
        {
          v31 = v30 != 32;
        }

        v135 = v31;
        v140 = a3 + (v28 - v141) * a11;
        v33 = a7 >> 5;
        do
        {
          v34 = 32 * v33;
          v35 = 32 * (v33 + 1) - 1;
          if (32 * v33 <= a7)
          {
            v36 = a7;
          }

          else
          {
            v36 = 32 * v33;
          }

          if (v138 < v35)
          {
            v35 = a7 + a9 - 1;
          }

          v37 = v35 - v36;
          v38 = v37 + 1;
          if (v33 == v142)
          {
            v39 = v134 + 1;
          }

          else
          {
            v39 = 32;
          }

          v40 = 1;
          if (32 * v18 >= v141 && v34 >= a7)
          {
            v41 = v37 != v134;
            if (v33 != v142)
            {
              v41 = v38 != 32;
            }

            v40 = v41 || v135;
          }

          v42 = *(result + 128) >> (*(result + 144) + a12);
          if (v42 <= 1)
          {
            v42 = 1;
          }

          v43 = v42 + 31;
          if (v43 < 0x40)
          {
            v44 = 0;
          }

          else
          {
            v44 = 32 - __clz(~(-1 << -__clz((v43 >> 5) - 1)));
          }

          v45 = *(result + 132) >> (*(result + 144) + a12);
          if (v45 <= 1)
          {
            v45 = 1;
          }

          v46 = v45 + 31;
          if (v46 < 0x40)
          {
            v47 = 0;
          }

          else
          {
            v47 = 32 - __clz(~(-1 << -__clz((v46 >> 5) - 1)));
          }

          v143 = v33 + 1;
          if (v47 | v44)
          {
            v48 = 0;
            v49 = 0;
            v50 = v44 != 0;
            v51 = v47 != 0;
            v52 = 1;
            do
            {
              --v44;
              if (v50)
              {
                v49 |= (v52 & v33) << v48++;
              }

              else
              {
                v44 = 0;
              }

              --v47;
              if (v51)
              {
                v49 |= (v52 & v18) << v48++;
              }

              else
              {
                v47 = 0;
              }

              v52 *= 2;
              --v48;
              v51 = v47 != 0;
              v50 = v44 != 0;
            }

            while (v47 | v44);
            v53 = 32 * v49;
          }

          else
          {
            v53 = 0;
          }

          v54 = (a4 + v53);
          v55 = (a2 + v18 * v129 + (v33 << 10));
          if (v144)
          {
            if (!(v40 & 1 | (v39 < 0x20u) | (v32 < 0x20u)))
            {
              v57 = __dst;
LABEL_70:
              v61 = &byte_29D2F790B;
              v62 = 64;
              v63 = v57;
              do
              {
                v71 = *v61;
                v72 = *(v61 - 1);
                if (v39 <= 8 * v72 || 4 * v71 >= v32)
                {
                  v70 = 0;
                }

                else
                {
                  v64 = (v140 + v36 - a7 + 4 * a11 * v71 + 8 * v72);
                  v65 = *(v64 + a11);
                  v66 = vzip1_s16(*v64, v65);
                  *&v16 = vzip2_s16(*v64, v65);
                  v67 = (v64 + v26);
                  v68 = *(v67 + a11);
                  v69 = vzip1_s16(*v67, v68);
                  *&v17 = vzip2_s16(*v67, v68);
                  *v63 = v66;
                  v63[1] = v69;
                  v63[2] = v16;
                  v63[3] = v17;
                  v63 += 4;
                  v70 = 31;
                }

                v61 += 2;
                *v54++ = v70;
                v62 -= 2;
              }

              while (v62);
              v60 = v143;
              if (v144)
              {
                goto LABEL_117;
              }

              goto LABEL_29;
            }

            v56 = (a2 + v18 * v129 + (v33 << 10));
            __srca = v38;
            memcpy(__dst, v55, 0x400uLL);
            v38 = __srca;
            v57 = __dst;
            v55 = v56;
            result = a1;
          }

          else
          {
            v57 = (a2 + v18 * v129 + (v33 << 10));
            if (!(v40 & 1 | (v39 < 0x20u) | (v32 < 0x20u)))
            {
              goto LABEL_70;
            }
          }

          v58 = v55;
          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh1ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = result;
          v147 = v57;
          v155 = v39;
          v156 = v32;
          v151 = v137;
          v152 = v36 - v34;
          v148 = v54;
          v149 = v140 + v36 - a7;
          v150 = a11;
          v153 = v136;
          v154 = v38;
          if (v40)
          {
            v59 = v57;
            dispatch_sync(*(*(result + 8) + 16552), block);
            v57 = v59;
            result = a1;
            v60 = v143;
            v55 = v58;
            v26 = 2 * a11;
            if (!v144)
            {
              goto LABEL_29;
            }

LABEL_117:
            memcpy(v55, v57, 0x400uLL);
            result = a1;
            goto LABEL_29;
          }

          v74 = &byte_29D2F790B;
          v75 = 64;
          __src = v57;
          v76 = v57;
          do
          {
            v77 = *v54++;
            v76 = (v76 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&__dst[128 * *v74 + 1024 + 8 * *(v74 - 1)], 32, v76, v77, *&v16, *&v17));
            v74 += 2;
            v75 -= 2;
          }

          while (v75);
          v78 = v153;
          v60 = v143;
          if (v153)
          {
            v79 = v154;
            if (v154)
            {
              v80 = 0;
              v81 = 32 * v151;
              v82 = &__dst[v152 + 1024 + v81];
              v83 = v149;
              v84 = v150;
              v85 = v154 - 1;
              v87 = v82 < v149 + v150 * (v153 - 1) + v85 + 1 && v149 < &__dst[32 * v153 + 993 + 32 * v151 + v152 + v85];
              v88 = v154 & 0xFFFFFFE0;
              v89 = v154 & 0xFFFFFFF8;
              v90 = v154 < 8 || v150 < 0 || v87;
              v91 = &__dst[v81 + 1040 + v152];
              v92 = (v149 + 16);
              v93 = v82;
              v94 = v149;
              do
              {
                v95 = (v83 + v80 * v84);
                v96 = &v82[32 * v80];
                if (v90)
                {
                  v97 = 0;
                  goto LABEL_105;
                }

                if (v79 >= 0x20)
                {
                  v99 = v92;
                  v100 = v91;
                  v101 = v79 & 0xFFFFFFE0;
                  do
                  {
                    v16 = *(v99 - 1);
                    v17 = *v99;
                    *(v100 - 1) = v16;
                    *v100 = v17;
                    v100 += 2;
                    v99 += 2;
                    v101 -= 32;
                  }

                  while (v101);
                  if (v88 == v79)
                  {
                    goto LABEL_91;
                  }

                  v98 = v79 & 0xFFFFFFE0;
                  if ((v79 & 0x18) == 0)
                  {
                    v95 += v88;
                    v96 += v88;
                    v97 = v79 & 0xFFFFFFE0;
                    goto LABEL_105;
                  }
                }

                else
                {
                  v98 = 0;
                }

                v96 += v89;
                v102 = v98 - (v79 & 0xFFFFFFF8);
                v103 = (v94 + v98);
                v104 = &v93[v98];
                do
                {
                  v105 = *v103++;
                  *&v16 = v105;
                  *v104++ = v105;
                  v102 += 8;
                }

                while (v102);
                if (v89 == v79)
                {
                  goto LABEL_91;
                }

                v95 += v89;
                v97 = v79 & 0xFFFFFFF8;
LABEL_105:
                v106 = v79 - v97;
                do
                {
                  v107 = *v95++;
                  *v96++ = v107;
                  --v106;
                }

                while (v106);
LABEL_91:
                ++v80;
                v91 += 32;
                v92 = (v92 + v84);
                v94 += v84;
                v93 += 32;
              }

              while (v80 != v78);
            }
          }

          v108 = v147;
          v109 = v148;
          v110 = v155;
          v111 = &byte_29D2F790B;
          v112 = 64;
          v113 = v156;
          v55 = v58;
          v26 = 2 * a11;
          do
          {
            v121 = *v111;
            v122 = *(v111 - 1);
            if (v110 <= 8 * v122 || 4 * v121 >= v113)
            {
              v120 = 0;
            }

            else
            {
              v114 = &__dst[128 * v121 + 1024 + 8 * v122];
              v115 = v114[4];
              v116 = vzip1_s16(*v114, v115);
              *&v16 = vzip2_s16(*v114, v115);
              v117 = v114[8];
              v118 = v114[12];
              v119 = vzip1_s16(v117, v118);
              *&v17 = vzip2_s16(v117, v118);
              *v108 = v116;
              v108[1] = v119;
              v108[2] = v16;
              v108[3] = v17;
              v108 += 4;
              v120 = 31;
            }

            v111 += 2;
            *v109++ = v120;
            v112 -= 2;
          }

          while (v112);
          result = a1;
          v57 = __src;
          if (v144)
          {
            goto LABEL_117;
          }

LABEL_29:
          v33 = v60;
        }

        while (v60 != (v138 >> 5) + 1);
        ++v18;
      }

      while (v18 != v124);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v162 = *MEMORY[0x29EDCA608];
  v132 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v143 = a8;
  v23 = a8 >> 5;
  v131 = a8 + a10 - 1;
  v24 = v131 >> 5;
  result = *(v15 + 168);
  if (result)
  {
    result = IOSurfaceGetCacheMode();
    v26 = result & 0xF00;
  }

  else
  {
    v26 = 0;
  }

  v27 = (v26 & 0xD00) == 0 || v26 == 768;
  v28 = v26 & 0xE00;
  v30 = !v27 && v28 != 1024;
  v148 = v30;
  v31 = a7;
  if (v23 <= v24)
  {
    v139 = a7 + a9 - 1;
    if (a7 >> 5 <= v139 >> 5)
    {
      v32 = a11;
      v145 = (a5 - 1) >> 5;
      v130 = (a6 - 1) >> 5;
      v135 = (a5 - 1) & 0x1F;
      v128 = ((a6 - 1) & 0x1F) + 1;
      v129 = (a6 - 1) & 0x1F;
      v127 = v24 + 1;
      v146 = v15;
      do
      {
        v33 = (32 * v23) | 0x1F;
        if (32 * v23 <= v143)
        {
          v34 = v143;
        }

        else
        {
          v34 = 32 * v23;
        }

        if (v131 < v33)
        {
          v33 = v131;
        }

        v138 = v34 - 32 * v23;
        v35 = v33 - v34;
        v36 = v35 + 1;
        v37 = v35 != v129;
        v137 = v36;
        if (v23 == v130)
        {
          v38 = v128;
        }

        else
        {
          v38 = 32;
        }

        if (v23 != v130)
        {
          v37 = v36 != 32;
        }

        v136 = v37;
        v142 = a3 + (v34 - v143) * v32;
        v39 = a7 >> 5;
        do
        {
          v40 = 32 * v39;
          v147 = v39 + 1;
          v41 = 32 * (v39 + 1) - 1;
          if (32 * v39 <= v31)
          {
            v42 = v31;
          }

          else
          {
            v42 = 32 * v39;
          }

          if (v139 < v41)
          {
            v41 = a7 + a9 - 1;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v39 == v145)
          {
            v45 = v135 + 1;
          }

          else
          {
            v45 = 32;
          }

          v46 = 1;
          if (32 * v23 >= v143 && v40 >= a7)
          {
            v47 = v43 != v135;
            if (v39 != v145)
            {
              v47 = v44 != 32;
            }

            v46 = v47 || v136;
          }

          v48 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v48 <= 1)
          {
            v48 = 1;
          }

          v49 = v48 + 31;
          if (v49 < 0x40)
          {
            v50 = 0;
          }

          else
          {
            v50 = 32 - __clz(~(-1 << -__clz((v49 >> 5) - 1)));
          }

          v51 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v51 <= 1)
          {
            v51 = 1;
          }

          v52 = v51 + 31;
          if (v52 < 0x40)
          {
            v53 = 0;
            if (!v50)
            {
LABEL_62:
              v59 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v53 = 32 - __clz(~(-1 << -__clz((v52 >> 5) - 1)));
            if (!(v53 | v50))
            {
              goto LABEL_62;
            }
          }

          v54 = 0;
          v55 = 0;
          v56 = v50 != 0;
          v57 = v53 != 0;
          v58 = 1;
          do
          {
            --v50;
            if (v56)
            {
              v55 |= (v58 & v39) << v54++;
            }

            else
            {
              v50 = 0;
            }

            --v53;
            if (v57)
            {
              v55 |= (v58 & v23) << v54++;
            }

            else
            {
              v53 = 0;
            }

            v58 *= 2;
            --v54;
            v57 = v53 != 0;
            v56 = v50 != 0;
          }

          while (v53 | v50);
          v59 = 32 * v55;
LABEL_63:
          v60 = (a4 + v59);
          v61 = v142 + v42 - v31;
          v62 = (a2 + v23 * v132 + 768 * v39);
          __src = v62;
          if (v148)
          {
            if (!(v46 & 1 | (v45 < 0x20u) | (v38 < 0x20u)))
            {
              v62 = __dst;
LABEL_70:
              v67 = *(*(v146 + 208) + 52);
              v68 = &byte_29D2F790B;
              v69 = 64;
              v144 = v62;
              v70 = v62;
              do
              {
                v73 = *v68;
                v74 = *(v68 - 1);
                v75 = v45 - 8 * v74;
                v76 = v38 - 4 * v73;
                if (v75 < 1 || v76 <= 0)
                {
                  *v60 = 0;
                }

                else
                {
                  if (v76 >= 4)
                  {
                    v71 = 4;
                  }

                  else
                  {
                    v71 = v38 - 4 * v73;
                  }

                  if (v75 >= 8)
                  {
                    v72 = 8;
                  }

                  else
                  {
                    v72 = v45 - 8 * v74;
                  }

                  v70 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressSubblock(v70, v60, (v61 + 4 * a11 * v73 + 8 * v74), v32, v72, v71, v67, *&v16, *&v17, v18, v19, v20, v21, v22);
                }

                v68 += 2;
                ++v60;
                v69 -= 2;
              }

              while (v69);
              v31 = a7;
              v15 = v146;
              goto LABEL_130;
            }

            v63 = v44;
            v64 = v46;
            memcpy(__dst, v62, 0x400uLL);
            v46 = v64;
            v44 = v63;
            v31 = a7;
            v62 = __dst;
          }

          else if (!(v46 & 1 | (v45 < 0x20u) | (v38 < 0x20u)))
          {
            goto LABEL_70;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v146;
          v151 = v62;
          v159 = v45;
          v160 = v38;
          v155 = v138;
          v156 = v42 - v40;
          v152 = v60;
          v153 = v61;
          v154 = v32;
          v157 = v137;
          v158 = v44;
          if (v46)
          {
            v65 = v62;
            dispatch_sync(*(*(v146 + 8) + 16552), block);
            v66 = v65;
            v15 = v146;
            result = __src;
            goto LABEL_131;
          }

          v78 = *(*(v146 + 208) + 52);
          v79 = &byte_29D2F790B;
          v80 = 64;
          v144 = v62;
          v81 = v62;
          do
          {
            v82 = *v60++;
            v81 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&__dst[128 * *v79 + 1024 + 8 * *(v79 - 1)], 32, v81, v82, v78, *&v16, *&v17);
            v79 += 2;
            v80 -= 2;
          }

          while (v80);
          v83 = v157;
          if (v157)
          {
            v84 = v158;
            if (v158)
            {
              v85 = 0;
              v86 = 32 * v155;
              v87 = &__dst[v156 + 1024 + v86];
              v88 = v153;
              v89 = v154;
              v90 = v158 - 1;
              v92 = v87 < v153 + v154 * (v157 - 1) + v90 + 1 && v153 < &__dst[32 * v157 + 993 + 32 * v155 + v156 + v90];
              v93 = v158 & 0xFFFFFFE0;
              v94 = v158 & 0xFFFFFFF8;
              v95 = v158 < 8 || v154 < 0 || v92;
              v96 = &__dst[v86 + 1040 + v156];
              v97 = (v153 + 16);
              v98 = v87;
              v99 = v153;
              do
              {
                v100 = (v88 + v85 * v89);
                v101 = &v87[32 * v85];
                if (v95)
                {
                  v102 = 0;
                  goto LABEL_111;
                }

                if (v84 >= 0x20)
                {
                  v104 = v97;
                  v105 = v96;
                  v106 = v84 & 0xFFFFFFE0;
                  do
                  {
                    v16 = *(v104 - 1);
                    v17 = *v104;
                    *(v105 - 1) = v16;
                    *v105 = v17;
                    v105 += 2;
                    v104 += 2;
                    v106 -= 32;
                  }

                  while (v106);
                  if (v93 == v84)
                  {
                    goto LABEL_97;
                  }

                  v103 = v84 & 0xFFFFFFE0;
                  if ((v84 & 0x18) == 0)
                  {
                    v100 += v93;
                    v101 += v93;
                    v102 = v84 & 0xFFFFFFE0;
                    goto LABEL_111;
                  }
                }

                else
                {
                  v103 = 0;
                }

                v101 += v94;
                v107 = v103 - (v84 & 0xFFFFFFF8);
                v108 = (v99 + v103);
                v109 = &v98[v103];
                do
                {
                  v110 = *v108++;
                  *&v16 = v110;
                  *v109++ = v110;
                  v107 += 8;
                }

                while (v107);
                if (v94 == v84)
                {
                  goto LABEL_97;
                }

                v100 += v94;
                v102 = v84 & 0xFFFFFFF8;
LABEL_111:
                v111 = v84 - v102;
                do
                {
                  v112 = *v100++;
                  *v101++ = v112;
                  --v111;
                }

                while (v111);
LABEL_97:
                ++v85;
                v96 += 32;
                v97 = (v97 + v89);
                v99 += v89;
                v98 += 32;
              }

              while (v85 != v83);
            }
          }

          v113 = v151;
          v114 = v152;
          v115 = v159;
          v116 = v160;
          v117 = *(*(v146 + 208) + 52);
          v118 = &byte_29D2F790B;
          v119 = 64;
          do
          {
            v122 = *v118;
            v123 = *(v118 - 1);
            v124 = v115 - 8 * v123;
            v125 = v116 - 4 * v122;
            if (v124 < 1 || v125 <= 0)
            {
              *v114 = 0;
            }

            else
            {
              if (v125 >= 4)
              {
                v120 = 4;
              }

              else
              {
                v120 = v116 - 4 * v122;
              }

              if (v124 >= 8)
              {
                v121 = 8;
              }

              else
              {
                v121 = v115 - 8 * v123;
              }

              v113 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressSubblock(v113, v114, &__dst[128 * v122 + 1024 + 8 * v123], 32, v121, v120, v117, *&v16, *&v17, v18, v19, v20, v21, v22);
            }

            v118 += 2;
            ++v114;
            v119 -= 2;
          }

          while (v119);
          v31 = a7;
          v15 = v146;
          v32 = a11;
LABEL_130:
          result = __src;
          v66 = v144;
LABEL_131:
          if (v148)
          {
            result = memcpy(result, v66, 0x400uLL);
          }

          v39 = v147;
        }

        while (v147 != (v139 >> 5) + 1);
        ++v23;
      }

      while (v23 != v127);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v162 = *MEMORY[0x29EDCA608];
  v132 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v143 = a8;
  v23 = a8 >> 5;
  v131 = a8 + a10 - 1;
  v24 = v131 >> 5;
  result = *(v15 + 168);
  if (result)
  {
    result = IOSurfaceGetCacheMode();
    v26 = result & 0xF00;
  }

  else
  {
    v26 = 0;
  }

  v27 = (v26 & 0xD00) == 0 || v26 == 768;
  v28 = v26 & 0xE00;
  v30 = !v27 && v28 != 1024;
  v148 = v30;
  v31 = a7;
  if (v23 <= v24)
  {
    v139 = a7 + a9 - 1;
    if (a7 >> 5 <= v139 >> 5)
    {
      v32 = a11;
      v145 = (a5 - 1) >> 5;
      v130 = (a6 - 1) >> 5;
      v135 = (a5 - 1) & 0x1F;
      v128 = ((a6 - 1) & 0x1F) + 1;
      v129 = (a6 - 1) & 0x1F;
      v127 = v24 + 1;
      v146 = v15;
      do
      {
        v33 = (32 * v23) | 0x1F;
        if (32 * v23 <= v143)
        {
          v34 = v143;
        }

        else
        {
          v34 = 32 * v23;
        }

        if (v131 < v33)
        {
          v33 = v131;
        }

        v138 = v34 - 32 * v23;
        v35 = v33 - v34;
        v36 = v35 + 1;
        v37 = v35 != v129;
        v137 = v36;
        if (v23 == v130)
        {
          v38 = v128;
        }

        else
        {
          v38 = 32;
        }

        if (v23 != v130)
        {
          v37 = v36 != 32;
        }

        v136 = v37;
        v142 = a3 + (v34 - v143) * v32;
        v39 = a7 >> 5;
        do
        {
          v40 = 32 * v39;
          v147 = v39 + 1;
          v41 = 32 * (v39 + 1) - 1;
          if (32 * v39 <= v31)
          {
            v42 = v31;
          }

          else
          {
            v42 = 32 * v39;
          }

          if (v139 < v41)
          {
            v41 = a7 + a9 - 1;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v39 == v145)
          {
            v45 = v135 + 1;
          }

          else
          {
            v45 = 32;
          }

          v46 = 1;
          if (32 * v23 >= v143 && v40 >= a7)
          {
            v47 = v43 != v135;
            if (v39 != v145)
            {
              v47 = v44 != 32;
            }

            v46 = v47 || v136;
          }

          v48 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v48 <= 1)
          {
            v48 = 1;
          }

          v49 = v48 + 31;
          if (v49 < 0x40)
          {
            v50 = 0;
          }

          else
          {
            v50 = 32 - __clz(~(-1 << -__clz((v49 >> 5) - 1)));
          }

          v51 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v51 <= 1)
          {
            v51 = 1;
          }

          v52 = v51 + 31;
          if (v52 < 0x40)
          {
            v53 = 0;
            if (!v50)
            {
LABEL_62:
              v59 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v53 = 32 - __clz(~(-1 << -__clz((v52 >> 5) - 1)));
            if (!(v53 | v50))
            {
              goto LABEL_62;
            }
          }

          v54 = 0;
          v55 = 0;
          v56 = v50 != 0;
          v57 = v53 != 0;
          v58 = 1;
          do
          {
            --v50;
            if (v56)
            {
              v55 |= (v58 & v39) << v54++;
            }

            else
            {
              v50 = 0;
            }

            --v53;
            if (v57)
            {
              v55 |= (v58 & v23) << v54++;
            }

            else
            {
              v53 = 0;
            }

            v58 *= 2;
            --v54;
            v57 = v53 != 0;
            v56 = v50 != 0;
          }

          while (v53 | v50);
          v59 = 32 * v55;
LABEL_63:
          v60 = (a4 + v59);
          v61 = v142 + v42 - v31;
          v62 = (a2 + v23 * v132 + 640 * v39);
          __src = v62;
          if (v148)
          {
            if (!(v46 & 1 | (v45 < 0x20u) | (v38 < 0x20u)))
            {
              v62 = __dst;
LABEL_70:
              v67 = *(*(v146 + 208) + 52);
              v68 = &byte_29D2F790B;
              v69 = 64;
              v144 = v62;
              v70 = v62;
              do
              {
                v73 = *v68;
                v74 = *(v68 - 1);
                v75 = v45 - 8 * v74;
                v76 = v38 - 4 * v73;
                if (v75 < 1 || v76 <= 0)
                {
                  *v60 = 0;
                }

                else
                {
                  if (v76 >= 4)
                  {
                    v71 = 4;
                  }

                  else
                  {
                    v71 = v38 - 4 * v73;
                  }

                  if (v75 >= 8)
                  {
                    v72 = 8;
                  }

                  else
                  {
                    v72 = v45 - 8 * v74;
                  }

                  v70 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressSubblock(v70, v60, (v61 + 4 * a11 * v73 + 8 * v74), v32, v72, v71, v67, *&v16, *&v17, v18, v19, v20, v21, v22);
                }

                v68 += 2;
                ++v60;
                v69 -= 2;
              }

              while (v69);
              v31 = a7;
              v15 = v146;
              goto LABEL_130;
            }

            v63 = v44;
            v64 = v46;
            memcpy(__dst, v62, 0x400uLL);
            v46 = v64;
            v44 = v63;
            v31 = a7;
            v62 = __dst;
          }

          else if (!(v46 & 1 | (v45 < 0x20u) | (v38 < 0x20u)))
          {
            goto LABEL_70;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v146;
          v151 = v62;
          v159 = v45;
          v160 = v38;
          v155 = v138;
          v156 = v42 - v40;
          v152 = v60;
          v153 = v61;
          v154 = v32;
          v157 = v137;
          v158 = v44;
          if (v46)
          {
            v65 = v62;
            dispatch_sync(*(*(v146 + 8) + 16552), block);
            v66 = v65;
            v15 = v146;
            result = __src;
            goto LABEL_131;
          }

          v78 = *(*(v146 + 208) + 52);
          v79 = &byte_29D2F790B;
          v80 = 64;
          v144 = v62;
          v81 = v62;
          do
          {
            v82 = *v60++;
            v81 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&__dst[128 * *v79 + 1024 + 8 * *(v79 - 1)], 32, v81, v82, v78, *&v16, *&v17);
            v79 += 2;
            v80 -= 2;
          }

          while (v80);
          v83 = v157;
          if (v157)
          {
            v84 = v158;
            if (v158)
            {
              v85 = 0;
              v86 = 32 * v155;
              v87 = &__dst[v156 + 1024 + v86];
              v88 = v153;
              v89 = v154;
              v90 = v158 - 1;
              v92 = v87 < v153 + v154 * (v157 - 1) + v90 + 1 && v153 < &__dst[32 * v157 + 993 + 32 * v155 + v156 + v90];
              v93 = v158 & 0xFFFFFFE0;
              v94 = v158 & 0xFFFFFFF8;
              v95 = v158 < 8 || v154 < 0 || v92;
              v96 = &__dst[v86 + 1040 + v156];
              v97 = (v153 + 16);
              v98 = v87;
              v99 = v153;
              do
              {
                v100 = (v88 + v85 * v89);
                v101 = &v87[32 * v85];
                if (v95)
                {
                  v102 = 0;
                  goto LABEL_111;
                }

                if (v84 >= 0x20)
                {
                  v104 = v97;
                  v105 = v96;
                  v106 = v84 & 0xFFFFFFE0;
                  do
                  {
                    v16 = *(v104 - 1);
                    v17 = *v104;
                    *(v105 - 1) = v16;
                    *v105 = v17;
                    v105 += 2;
                    v104 += 2;
                    v106 -= 32;
                  }

                  while (v106);
                  if (v93 == v84)
                  {
                    goto LABEL_97;
                  }

                  v103 = v84 & 0xFFFFFFE0;
                  if ((v84 & 0x18) == 0)
                  {
                    v100 += v93;
                    v101 += v93;
                    v102 = v84 & 0xFFFFFFE0;
                    goto LABEL_111;
                  }
                }

                else
                {
                  v103 = 0;
                }

                v101 += v94;
                v107 = v103 - (v84 & 0xFFFFFFF8);
                v108 = (v99 + v103);
                v109 = &v98[v103];
                do
                {
                  v110 = *v108++;
                  *&v16 = v110;
                  *v109++ = v110;
                  v107 += 8;
                }

                while (v107);
                if (v94 == v84)
                {
                  goto LABEL_97;
                }

                v100 += v94;
                v102 = v84 & 0xFFFFFFF8;
LABEL_111:
                v111 = v84 - v102;
                do
                {
                  v112 = *v100++;
                  *v101++ = v112;
                  --v111;
                }

                while (v111);
LABEL_97:
                ++v85;
                v96 += 32;
                v97 = (v97 + v89);
                v99 += v89;
                v98 += 32;
              }

              while (v85 != v83);
            }
          }

          v113 = v151;
          v114 = v152;
          v115 = v159;
          v116 = v160;
          v117 = *(*(v146 + 208) + 52);
          v118 = &byte_29D2F790B;
          v119 = 64;
          do
          {
            v122 = *v118;
            v123 = *(v118 - 1);
            v124 = v115 - 8 * v123;
            v125 = v116 - 4 * v122;
            if (v124 < 1 || v125 <= 0)
            {
              *v114 = 0;
            }

            else
            {
              if (v125 >= 4)
              {
                v120 = 4;
              }

              else
              {
                v120 = v116 - 4 * v122;
              }

              if (v124 >= 8)
              {
                v121 = 8;
              }

              else
              {
                v121 = v115 - 8 * v123;
              }

              v113 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressSubblock(v113, v114, &__dst[128 * v122 + 1024 + 8 * v123], 32, v121, v120, v117, *&v16, *&v17, v18, v19, v20, v21, v22);
            }

            v118 += 2;
            ++v114;
            v119 -= 2;
          }

          while (v119);
          v31 = a7;
          v15 = v146;
          v32 = a11;
LABEL_130:
          result = __src;
          v66 = v144;
LABEL_131:
          if (v148)
          {
            result = memcpy(result, v66, 0x400uLL);
          }

          v39 = v147;
        }

        while (v147 != (v139 >> 5) + 1);
        ++v23;
      }

      while (v23 != v127);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, char a12)
{
  v15 = a1;
  v162 = *MEMORY[0x29EDCA608];
  v132 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, 0);
  v143 = a8;
  v23 = a8 >> 5;
  v131 = a8 + a10 - 1;
  v24 = v131 >> 5;
  result = *(v15 + 168);
  if (result)
  {
    result = IOSurfaceGetCacheMode();
    v26 = result & 0xF00;
  }

  else
  {
    v26 = 0;
  }

  v27 = (v26 & 0xD00) == 0 || v26 == 768;
  v28 = v26 & 0xE00;
  v30 = !v27 && v28 != 1024;
  v148 = v30;
  v31 = a7;
  if (v23 <= v24)
  {
    v139 = a7 + a9 - 1;
    if (a7 >> 5 <= v139 >> 5)
    {
      v32 = a11;
      v145 = (a5 - 1) >> 5;
      v130 = (a6 - 1) >> 5;
      v135 = (a5 - 1) & 0x1F;
      v128 = ((a6 - 1) & 0x1F) + 1;
      v129 = (a6 - 1) & 0x1F;
      v127 = v24 + 1;
      v146 = v15;
      do
      {
        v33 = (32 * v23) | 0x1F;
        if (32 * v23 <= v143)
        {
          v34 = v143;
        }

        else
        {
          v34 = 32 * v23;
        }

        if (v131 < v33)
        {
          v33 = v131;
        }

        v138 = v34 - 32 * v23;
        v35 = v33 - v34;
        v36 = v35 + 1;
        v37 = v35 != v129;
        v137 = v36;
        if (v23 == v130)
        {
          v38 = v128;
        }

        else
        {
          v38 = 32;
        }

        if (v23 != v130)
        {
          v37 = v36 != 32;
        }

        v136 = v37;
        v142 = a3 + (v34 - v143) * v32;
        v39 = a7 >> 5;
        do
        {
          v40 = 32 * v39;
          v147 = v39 + 1;
          v41 = 32 * (v39 + 1) - 1;
          if (32 * v39 <= v31)
          {
            v42 = v31;
          }

          else
          {
            v42 = 32 * v39;
          }

          if (v139 < v41)
          {
            v41 = a7 + a9 - 1;
          }

          v43 = v41 - v42;
          v44 = v43 + 1;
          if (v39 == v145)
          {
            v45 = v135 + 1;
          }

          else
          {
            v45 = 32;
          }

          v46 = 1;
          if (32 * v23 >= v143 && v40 >= a7)
          {
            v47 = v43 != v135;
            if (v39 != v145)
            {
              v47 = v44 != 32;
            }

            v46 = v47 || v136;
          }

          v48 = *(v15 + 128) >> (*(v15 + 144) + a12);
          if (v48 <= 1)
          {
            v48 = 1;
          }

          v49 = v48 + 31;
          if (v49 < 0x40)
          {
            v50 = 0;
          }

          else
          {
            v50 = 32 - __clz(~(-1 << -__clz((v49 >> 5) - 1)));
          }

          v51 = *(v15 + 132) >> (*(v15 + 144) + a12);
          if (v51 <= 1)
          {
            v51 = 1;
          }

          v52 = v51 + 31;
          if (v52 < 0x40)
          {
            v53 = 0;
            if (!v50)
            {
LABEL_62:
              v59 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v53 = 32 - __clz(~(-1 << -__clz((v52 >> 5) - 1)));
            if (!(v53 | v50))
            {
              goto LABEL_62;
            }
          }

          v54 = 0;
          v55 = 0;
          v56 = v50 != 0;
          v57 = v53 != 0;
          v58 = 1;
          do
          {
            --v50;
            if (v56)
            {
              v55 |= (v58 & v39) << v54++;
            }

            else
            {
              v50 = 0;
            }

            --v53;
            if (v57)
            {
              v55 |= (v58 & v23) << v54++;
            }

            else
            {
              v53 = 0;
            }

            v58 *= 2;
            --v54;
            v57 = v53 != 0;
            v56 = v50 != 0;
          }

          while (v53 | v50);
          v59 = 32 * v55;
LABEL_63:
          v60 = (a4 + v59);
          v61 = v142 + v42 - v31;
          v62 = (a2 + v23 * v132 + (v39 << 9));
          __src = v62;
          if (v148)
          {
            if (!(v46 & 1 | (v45 < 0x20u) | (v38 < 0x20u)))
            {
              v62 = __dst;
LABEL_70:
              v67 = *(*(v146 + 208) + 52);
              v68 = &byte_29D2F790B;
              v69 = 64;
              v144 = v62;
              v70 = v62;
              do
              {
                v73 = *v68;
                v74 = *(v68 - 1);
                v75 = v45 - 8 * v74;
                v76 = v38 - 4 * v73;
                if (v75 < 1 || v76 <= 0)
                {
                  *v60 = 0;
                }

                else
                {
                  if (v76 >= 4)
                  {
                    v71 = 4;
                  }

                  else
                  {
                    v71 = v38 - 4 * v73;
                  }

                  if (v75 >= 8)
                  {
                    v72 = 8;
                  }

                  else
                  {
                    v72 = v45 - 8 * v74;
                  }

                  v70 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressSubblock(v70, v60, (v61 + 4 * a11 * v73 + 8 * v74), v32, v72, v71, v67, *&v16, *&v17, v18, v19, v20, v21, v22);
                }

                v68 += 2;
                ++v60;
                v69 -= 2;
              }

              while (v69);
              v31 = a7;
              v15 = v146;
              goto LABEL_130;
            }

            v63 = v44;
            v64 = v46;
            memcpy(__dst, v62, 0x400uLL);
            v46 = v64;
            v44 = v63;
            v31 = a7;
            v62 = __dst;
          }

          else if (!(v46 & 1 | (v45 < 0x20u) | (v38 < 0x20u)))
          {
            goto LABEL_70;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v146;
          v151 = v62;
          v159 = v45;
          v160 = v38;
          v155 = v138;
          v156 = v42 - v40;
          v152 = v60;
          v153 = v61;
          v154 = v32;
          v157 = v137;
          v158 = v44;
          if (v46)
          {
            v65 = v62;
            dispatch_sync(*(*(v146 + 8) + 16552), block);
            v66 = v65;
            v15 = v146;
            result = __src;
            goto LABEL_131;
          }

          v78 = *(*(v146 + 208) + 52);
          v79 = &byte_29D2F790B;
          v80 = 64;
          v144 = v62;
          v81 = v62;
          do
          {
            v82 = *v60++;
            v81 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&__dst[128 * *v79 + 1024 + 8 * *(v79 - 1)], 32, v81, v82, v78, *&v16, *&v17);
            v79 += 2;
            v80 -= 2;
          }

          while (v80);
          v83 = v157;
          if (v157)
          {
            v84 = v158;
            if (v158)
            {
              v85 = 0;
              v86 = 32 * v155;
              v87 = &__dst[v156 + 1024 + v86];
              v88 = v153;
              v89 = v154;
              v90 = v158 - 1;
              v92 = v87 < v153 + v154 * (v157 - 1) + v90 + 1 && v153 < &__dst[32 * v157 + 993 + 32 * v155 + v156 + v90];
              v93 = v158 & 0xFFFFFFE0;
              v94 = v158 & 0xFFFFFFF8;
              v95 = v158 < 8 || v154 < 0 || v92;
              v96 = &__dst[v86 + 1040 + v156];
              v97 = (v153 + 16);
              v98 = v87;
              v99 = v153;
              do
              {
                v100 = (v88 + v85 * v89);
                v101 = &v87[32 * v85];
                if (v95)
                {
                  v102 = 0;
                  goto LABEL_111;
                }

                if (v84 >= 0x20)
                {
                  v104 = v97;
                  v105 = v96;
                  v106 = v84 & 0xFFFFFFE0;
                  do
                  {
                    v16 = *(v104 - 1);
                    v17 = *v104;
                    *(v105 - 1) = v16;
                    *v105 = v17;
                    v105 += 2;
                    v104 += 2;
                    v106 -= 32;
                  }

                  while (v106);
                  if (v93 == v84)
                  {
                    goto LABEL_97;
                  }

                  v103 = v84 & 0xFFFFFFE0;
                  if ((v84 & 0x18) == 0)
                  {
                    v100 += v93;
                    v101 += v93;
                    v102 = v84 & 0xFFFFFFE0;
                    goto LABEL_111;
                  }
                }

                else
                {
                  v103 = 0;
                }

                v101 += v94;
                v107 = v103 - (v84 & 0xFFFFFFF8);
                v108 = (v99 + v103);
                v109 = &v98[v103];
                do
                {
                  v110 = *v108++;
                  *&v16 = v110;
                  *v109++ = v110;
                  v107 += 8;
                }

                while (v107);
                if (v94 == v84)
                {
                  goto LABEL_97;
                }

                v100 += v94;
                v102 = v84 & 0xFFFFFFF8;
LABEL_111:
                v111 = v84 - v102;
                do
                {
                  v112 = *v100++;
                  *v101++ = v112;
                  --v111;
                }

                while (v111);
LABEL_97:
                ++v85;
                v96 += 32;
                v97 = (v97 + v89);
                v99 += v89;
                v98 += 32;
              }

              while (v85 != v83);
            }
          }

          v113 = v151;
          v114 = v152;
          v115 = v159;
          v116 = v160;
          v117 = *(*(v146 + 208) + 52);
          v118 = &byte_29D2F790B;
          v119 = 64;
          do
          {
            v122 = *v118;
            v123 = *(v118 - 1);
            v124 = v115 - 8 * v123;
            v125 = v116 - 4 * v122;
            if (v124 < 1 || v125 <= 0)
            {
              *v114 = 0;
            }

            else
            {
              if (v125 >= 4)
              {
                v120 = 4;
              }

              else
              {
                v120 = v116 - 4 * v122;
              }

              if (v124 >= 8)
              {
                v121 = 8;
              }

              else
              {
                v121 = v115 - 8 * v123;
              }

              v113 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressSubblock(v113, v114, &__dst[128 * v122 + 1024 + 8 * v123], 32, v121, v120, v117, *&v16, *&v17, v18, v19, v20, v21, v22);
            }

            v118 += 2;
            ++v114;
            v119 -= 2;
          }

          while (v119);
          v31 = a7;
          v15 = v146;
          v32 = a11;
LABEL_130:
          result = __src;
          v66 = v144;
LABEL_131:
          if (v148)
          {
            result = memcpy(result, v66, 0x400uLL);
          }

          v39 = v147;
        }

        while (v147 != (v139 >> 5) + 1);
        ++v23;
      }

      while (v23 != v127);
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, char a12)
{
  v12 = MEMORY[0x2A1C7C4A8](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v152 = v21;
  v142 = v22;
  v143 = v23;
  v24 = v12;
  v172 = *MEMORY[0x29EDCA608];
  v141 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v12, 0);
  v154 = v14;
  v33 = v14 >> 5;
  v140 = v14 + a10 - 1;
  v34 = v140 >> 5;
  v155 = v24;
  result = *(v24 + 168);
  if (result)
  {
    result = IOSurfaceGetCacheMode();
    v36 = result & 0xF00;
  }

  else
  {
    v36 = 0;
  }

  v37 = (v36 & 0xD00) == 0 || v36 == 768;
  v38 = v36 & 0xE00;
  v40 = !v37 && v38 != 1024;
  v158 = v40;
  if (v33 <= v34)
  {
    v151 = v16 + a9 - 1;
    if (v16 >> 5 <= v151 >> 5)
    {
      v156 = (v20 - 1) >> 5;
      v139 = (v18 - 1) >> 5;
      v145 = (v20 - 1) & 0x1F;
      v137 = ((v18 - 1) & 0x1F) + 1;
      v138 = (v18 - 1) & 0x1F;
      v41 = 4 * a11;
      v149 = v16;
      v135 = v34 + 1;
      v136 = v16 >> 5;
      v150 = v16;
      do
      {
        v42 = (32 * v33) | 0x1F;
        if (32 * v33 <= v154)
        {
          v43 = v154;
        }

        else
        {
          v43 = 32 * v33;
        }

        if (v140 < v42)
        {
          v42 = v140;
        }

        v148 = v43 - 32 * v33;
        v44 = v42 - v43;
        v45 = v44 + 1;
        v46 = v44 != v138;
        v147 = v45;
        if (v33 == v139)
        {
          v47 = v137;
        }

        else
        {
          v47 = 32;
        }

        if (v33 != v139)
        {
          v46 = v45 != 32;
        }

        v146 = v46;
        v153 = v143 + (v43 - v154) * a11;
        v48 = v136;
        v49 = v155;
        do
        {
          v50 = 32 * v48;
          v157 = v48 + 1;
          v51 = 32 * (v48 + 1) - 1;
          if (32 * v48 <= v16)
          {
            v52 = v16;
          }

          else
          {
            v52 = 32 * v48;
          }

          if (v151 < v51)
          {
            v51 = v151;
          }

          v53 = v51 - v52;
          v54 = v53 + 1;
          if (v48 == v156)
          {
            v55 = v145 + 1;
          }

          else
          {
            v55 = 32;
          }

          v56 = 1;
          if (32 * v33 >= v154 && v50 >= v149)
          {
            v57 = v53 != v145;
            if (v48 != v156)
            {
              v57 = v54 != 32;
            }

            v56 = v57 || v146;
          }

          v58 = *(v49 + 128) >> (*(v49 + 144) + a12);
          if (v58 <= 1)
          {
            v58 = 1;
          }

          v59 = v58 + 31;
          if (v59 < 0x40)
          {
            v60 = 0;
          }

          else
          {
            v60 = 32 - __clz(~(-1 << -__clz((v59 >> 5) - 1)));
          }

          v61 = *(v49 + 132) >> (*(v49 + 144) + a12);
          if (v61 <= 1)
          {
            v61 = 1;
          }

          v62 = v61 + 31;
          if (v62 < 0x40)
          {
            v63 = 0;
            if (!v60)
            {
LABEL_62:
              v69 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v63 = 32 - __clz(~(-1 << -__clz((v62 >> 5) - 1)));
            if (!(v63 | v60))
            {
              goto LABEL_62;
            }
          }

          v64 = 0;
          v65 = 0;
          v66 = v60 != 0;
          v67 = v63 != 0;
          v68 = 1;
          do
          {
            --v60;
            if (v66)
            {
              v65 |= (v68 & v48) << v64++;
            }

            else
            {
              v60 = 0;
            }

            --v63;
            if (v67)
            {
              v65 |= (v68 & v33) << v64++;
            }

            else
            {
              v63 = 0;
            }

            v68 *= 2;
            --v64;
            v67 = v63 != 0;
            v66 = v60 != 0;
          }

          while (v63 | v60);
          v69 = 32 * v65;
LABEL_63:
          v70 = (v152 + v69);
          v71 = v153 + 2 * (v52 - v16);
          v72 = (v142 + v33 * v141 + (v48 << 11));
          __src = v72;
          if (v158)
          {
            if (!(v56 & 1 | (v55 < 0x20u) | (v47 < 0x20u)))
            {
              v72 = __dst;
LABEL_70:
              v74 = &byte_29D2F790B;
              v75 = 64;
              v73 = v72;
              v76 = v72;
              do
              {
                v79 = *v74;
                v80 = *(v74 - 1);
                v81 = v55 - 8 * v80;
                v82 = v47 - 4 * v79;
                v83 = v81 < 1 || v82 <= 0;
                if (v83)
                {
                  *v70 = 0;
                }

                else
                {
                  if (v82 >= 4)
                  {
                    v77 = 4;
                  }

                  else
                  {
                    v77 = v47 - 4 * v79;
                  }

                  if (v81 >= 8)
                  {
                    v78 = 8;
                  }

                  else
                  {
                    v78 = v55 - 8 * v80;
                  }

                  v76 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::compressSubblock(v76, v70, (v71 + v41 * v79 + 16 * v80), a11, v78, v77, *&v25, *&v26, v27, v28, v29, v30, v31, v32);
                }

                v74 += 2;
                ++v70;
                v75 -= 2;
              }

              while (v75);
              v16 = v150;
              v49 = v155;
              goto LABEL_136;
            }

            memcpy(__dst, v72, 0x800uLL);
            v72 = __dst;
          }

          else if (!(v56 & 1 | (v55 < 0x20u) | (v47 < 0x20u)))
          {
            goto LABEL_70;
          }

          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 3221225472;
          block[2] = ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE1ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke;
          block[3] = &__block_descriptor_90_e5_v8__0l;
          block[4] = v155;
          v161 = v72;
          v169 = v55;
          v170 = v47;
          v165 = v148;
          v166 = v52 - v50;
          v162 = v70;
          v163 = v71;
          v164 = a11;
          v167 = v147;
          v168 = v54;
          if (v56)
          {
            v73 = v72;
            dispatch_sync(*(*(v155 + 8) + 16552), block);
            v16 = v150;
            v49 = v155;
            goto LABEL_136;
          }

          v84 = &byte_29D2F790B;
          v85 = 64;
          v144 = v72;
          v86 = v72;
          do
          {
            v87 = *v70++;
            v86 = (v86 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&__dst[256 * *v84 + 2048 + 16 * *(v84 - 1)], 64, v86, v87, *&v25, *&v26, v27, *&v28));
            v84 += 2;
            v85 -= 2;
          }

          while (v85);
          v88 = v167;
          if (v167)
          {
            v89 = v168;
            if (v168)
            {
              v90 = 0;
              v91 = v165 << 6;
              v92 = 2 * v166;
              v93 = &__dst[v91 + 2048 + v92];
              v94 = v163;
              v95 = v164;
              v96 = 2 * v168;
              if (2 * v168)
              {
                v97 = (2 * v168 - 1) >> 32 == 0;
              }

              else
              {
                v97 = 0;
              }

              v98 = !v97;
              v100 = v93 < v163 + v164 * (v167 - 1) + 2 * v168 && v163 < &__dst[64 * v167 + 1984 + 64 * v165 + 2 * v168 + v92];
              v101 = v100 || v164 < 0;
              v102 = v96 & 0x1FFFFFFE0;
              v103 = v96 & 0x1FFFFFFF8;
              v104 = (v168 < 4) | v98 | v101;
              v105 = &__dst[v91 + 2064 + v92];
              v106 = (v163 + 16);
              v107 = v93;
              v108 = v163;
              do
              {
                v109 = (v94 + v90 * v95);
                v110 = &v93[64 * v90];
                if (v104)
                {
                  v111 = 0;
                  goto LABEL_117;
                }

                if (v89 >= 0x10)
                {
                  v113 = v106;
                  v114 = v105;
                  v115 = v96 & 0x1FFFFFFE0;
                  do
                  {
                    v25 = *(v113 - 1);
                    v26 = *v113;
                    *(v114 - 1) = v25;
                    *v114 = v26;
                    v114 += 2;
                    v113 += 2;
                    v115 -= 32;
                  }

                  while (v115);
                  if (v96 == v102)
                  {
                    goto LABEL_103;
                  }

                  v112 = v96 & 0x1FFFFFFE0;
                  if ((v89 & 0xC) == 0)
                  {
                    v109 += v102;
                    v110 += v102;
                    v111 = v96 & 0xFFFFFFE0;
                    goto LABEL_117;
                  }
                }

                else
                {
                  v112 = 0;
                }

                v110 += v103;
                v116 = v112 - (v96 & 0x1FFFFFFF8);
                v117 = (v108 + v112);
                v118 = &v107[v112];
                do
                {
                  v119 = *v117++;
                  *&v25 = v119;
                  *v118++ = v119;
                  v116 += 8;
                }

                while (v116);
                if (v96 == v103)
                {
                  goto LABEL_103;
                }

                v109 += v103;
                v111 = v96 & 0xFFFFFFF8;
LABEL_117:
                v120 = v111 + 1;
                do
                {
                  v121 = *v109++;
                  *v110++ = v121;
                  v83 = v96 > v120++;
                }

                while (v83);
LABEL_103:
                ++v90;
                v105 += 64;
                v106 = (v106 + v95);
                v108 += v95;
                v107 += 64;
              }

              while (v90 != v88);
            }
          }

          v122 = v161;
          v123 = v162;
          v124 = v169;
          v125 = &byte_29D2F790B;
          v126 = 64;
          v127 = v170;
          do
          {
            v130 = *v125;
            v131 = *(v125 - 1);
            v132 = v124 - 8 * v131;
            v133 = v127 - 4 * v130;
            if (v132 < 1 || v133 <= 0)
            {
              *v123 = 0;
            }

            else
            {
              if (v133 >= 4)
              {
                v128 = 4;
              }

              else
              {
                v128 = v127 - 4 * v130;
              }

              if (v132 >= 8)
              {
                v129 = 8;
              }

              else
              {
                v129 = v124 - 8 * v131;
              }

              v122 += AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::compressSubblock(v122, v123, &__dst[256 * v130 + 2048 + 16 * v131], 64, v129, v128, *&v25, *&v26, v27, v28, v29, v30, v31, v32);
            }

            v125 += 2;
            ++v123;
            v126 -= 2;
          }

          while (v126);
          v16 = v150;
          v49 = v155;
          v41 = 4 * a11;
          v73 = v144;
LABEL_136:
          result = __src;
          if (v158)
          {
            result = memcpy(__src, v73, 0x800uLL);
          }

          v48 = v157;
        }

        while (v157 != (v151 >> 5) + 1);
        ++v33;
      }

      while (v33 != v135);
    }
  }

  return result;
}