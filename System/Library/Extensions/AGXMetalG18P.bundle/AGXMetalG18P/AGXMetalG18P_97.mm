float32x2x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    v8 = &v68[8 * *v4 + *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *v8 = vuzp1q_s32(*v2, v12);
      v8[2] = vuzp2q_s32(v10, v12);
      v8[4] = vuzp1q_s32(v11, v13);
      v8[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[2] = v6;
      v8[4] = v6;
      v8[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 32, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[2].i64[0] = 0;
      v8[2].i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[6].i64[0] = 0;
      v8[6].i64[1] = 0;
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
    v15 = *(a1 + 84);
    if (v15)
    {
      v16 = *(a1 + 72);
      v17 = 2 * v16;
      v18 = 2 * *(a1 + 76);
      v19 = &v68[2 * v16] + v18;
      v21 = *(a1 + 56);
      v20 = *(a1 + 64);
      v22 = 2 * v15;
      v23 = &v68[2 * v14 - 2 + 2 * v16] + 2 * v15 + v18;
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
              v39 = &v68[v17 + 1] + v18;
              v40 = (v21 + 16);
              do
              {
                v41 = v40;
                v42 = v39;
                v43 = v22;
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
                v39 += 32;
                v40 = (v40 + v20);
              }

              while (v38 != v14);
            }

            else
            {
              v52 = 0;
              v53 = v15 & 0xC;
              v54 = &v68[v17] + v18;
              v55 = &v68[v17 + 1] + v18;
              v56 = (v21 + 16);
              v57 = (v21 + v37);
              v58 = &v54[v37];
              do
              {
                v59 = v56;
                v60 = v55;
                v61 = v22 & 0x1FFFFFFE0;
                do
                {
                  v62 = *v59;
                  *(v60 - 1) = *(v59 - 1);
                  *v60 = v62;
                  v60 += 2;
                  v59 += 2;
                  v61 -= 32;
                }

                while (v61);
                v63 = v22 & 0x1FFFFFFE0;
                if (!v53)
                {
                  goto LABEL_73;
                }

                v64 = v58;
                v65 = v57;
                v66 = v34 - v37;
                do
                {
                  v67 = *v65++;
                  *v64 = v67;
                  v64 += 8;
                  v66 -= 8;
                }

                while (v66);
                v63 = v22 & 0x1FFFFFFF8;
                if (v22 != v34)
                {
LABEL_73:
                  do
                  {
                    v19[v63] = *(v21 + v63);
                    ++v63;
                  }

                  while (v22 > v63);
                }

                ++v52;
                v55 += 32;
                v56 = (v56 + v20);
                v57 = (v57 + v20);
                v58 += 32;
                v19 += 32;
                v21 += v20;
              }

              while (v52 != v14);
            }
          }

          else if (v22 == v34)
          {
            v35 = (v21 + 16);
            v36 = (&v68[v17 + 1] + v18);
            do
            {
              v36[-1].val[0] = v35[-2];
              if (v15 != 4)
              {
                v36[-1].val[1] = v35[-1];
                if (v15 != 8)
                {
                  v36->val[0] = *v35;
                }
              }

              v35 = (v35 + v20);
              v36 += 2;
              --v14;
            }

            while (v14);
          }

          else
          {
            for (k = 0; k != v14; ++k)
            {
              v46 = (v21 + v20 * k);
              v47 = &v19[32 * k];
              *v47 = *v46;
              if (v34 != 8)
              {
                *(v47 + 1) = v46[1];
                if (v34 != 16)
                {
                  *(v47 + 2) = v46[2];
                }
              }

              v48 = &v47[v34];
              v49 = v46 + v34;
              v50 = v22 & 0x18;
              do
              {
                v51 = *v49++;
                *v48++ = v51;
                ++v50;
              }

              while (v22 > v50);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v68, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    v8 = &v68[128 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *v8 = vuzp1q_s32(*v2, v12);
      v8[2] = vuzp2q_s32(v10, v12);
      v8[4] = vuzp1q_s32(v11, v13);
      v8[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[2] = v6;
      v8[4] = v6;
      v8[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 32, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[2].i64[0] = 0;
      v8[2].i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[6].i64[0] = 0;
      v8[6].i64[1] = 0;
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
    v15 = *(a1 + 84);
    if (v15)
    {
      v16 = *(a1 + 72);
      v17 = 32 * v16;
      v18 = 2 * *(a1 + 76);
      v19 = &v68[32 * v16 + v18];
      v21 = *(a1 + 56);
      v20 = *(a1 + 64);
      v22 = 2 * v15;
      v23 = &v68[32 * v14 - 32 + 32 * v16 + 2 * v15 + v18];
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
              v39 = &v68[v17 + 16 + v18];
              v40 = (v21 + 16);
              do
              {
                v41 = v40;
                v42 = v39;
                v43 = v22;
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
                v39 += 32;
                v40 = (v40 + v20);
              }

              while (v38 != v14);
            }

            else
            {
              v52 = 0;
              v53 = v15 & 0xC;
              v54 = &v68[v17 + v18];
              v55 = &v68[v17 + 16 + v18];
              v56 = (v21 + 16);
              v57 = (v21 + v37);
              v58 = &v54[v37];
              do
              {
                v59 = v56;
                v60 = v55;
                v61 = v22 & 0x1FFFFFFE0;
                do
                {
                  v62 = *v59;
                  *(v60 - 1) = *(v59 - 1);
                  *v60 = v62;
                  v60 += 2;
                  v59 += 2;
                  v61 -= 32;
                }

                while (v61);
                v63 = v22 & 0x1FFFFFFE0;
                if (!v53)
                {
                  goto LABEL_73;
                }

                v64 = v58;
                v65 = v57;
                v66 = v34 - v37;
                do
                {
                  v67 = *v65++;
                  *v64++ = v67;
                  v66 -= 8;
                }

                while (v66);
                v63 = v22 & 0x1FFFFFFF8;
                if (v22 != v34)
                {
LABEL_73:
                  do
                  {
                    v19[v63] = *(v21 + v63);
                    ++v63;
                  }

                  while (v22 > v63);
                }

                ++v52;
                v55 += 32;
                v56 = (v56 + v20);
                v57 = (v57 + v20);
                v58 += 4;
                v19 += 32;
                v21 += v20;
              }

              while (v52 != v14);
            }
          }

          else if (v22 == v34)
          {
            v35 = (v21 + 16);
            v36 = &v68[v17 + 16 + v18];
            do
            {
              *(v36 - 2) = *(v35 - 2);
              if (v15 != 4)
              {
                *(v36 - 1) = *(v35 - 1);
                if (v15 != 8)
                {
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
              v46 = (v21 + v20 * k);
              v47 = &v19[32 * k];
              *v47 = *v46;
              if (v34 != 8)
              {
                v47[1] = v46[1];
                if (v34 != 16)
                {
                  v47[2] = v46[2];
                }
              }

              v48 = v47 + v34;
              v49 = v46 + v34;
              v50 = v22 & 0x18;
              do
              {
                v51 = *v49++;
                *v48++ = v51;
                ++v50;
              }

              while (v22 > v50);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v68, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

float32x2x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    v8 = &v68[8 * *v4 + *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *v8 = vuzp1q_s32(*v2, v12);
      v8[2] = vuzp2q_s32(v10, v12);
      v8[4] = vuzp1q_s32(v11, v13);
      v8[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[2] = v6;
      v8[4] = v6;
      v8[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 32, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[2].i64[0] = 0;
      v8[2].i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[6].i64[0] = 0;
      v8[6].i64[1] = 0;
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
    v15 = *(a1 + 84);
    if (v15)
    {
      v16 = *(a1 + 72);
      v17 = 2 * v16;
      v18 = 2 * *(a1 + 76);
      v19 = &v68[2 * v16] + v18;
      v21 = *(a1 + 56);
      v20 = *(a1 + 64);
      v22 = 2 * v15;
      v23 = &v68[2 * v14 - 2 + 2 * v16] + 2 * v15 + v18;
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
              v39 = &v68[v17 + 1] + v18;
              v40 = (v21 + 16);
              do
              {
                v41 = v40;
                v42 = v39;
                v43 = v22;
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
                v39 += 32;
                v40 = (v40 + v20);
              }

              while (v38 != v14);
            }

            else
            {
              v52 = 0;
              v53 = v15 & 0xC;
              v54 = &v68[v17] + v18;
              v55 = &v68[v17 + 1] + v18;
              v56 = (v21 + 16);
              v57 = (v21 + v37);
              v58 = &v54[v37];
              do
              {
                v59 = v56;
                v60 = v55;
                v61 = v22 & 0x1FFFFFFE0;
                do
                {
                  v62 = *v59;
                  *(v60 - 1) = *(v59 - 1);
                  *v60 = v62;
                  v60 += 2;
                  v59 += 2;
                  v61 -= 32;
                }

                while (v61);
                v63 = v22 & 0x1FFFFFFE0;
                if (!v53)
                {
                  goto LABEL_73;
                }

                v64 = v58;
                v65 = v57;
                v66 = v34 - v37;
                do
                {
                  v67 = *v65++;
                  *v64 = v67;
                  v64 += 8;
                  v66 -= 8;
                }

                while (v66);
                v63 = v22 & 0x1FFFFFFF8;
                if (v22 != v34)
                {
LABEL_73:
                  do
                  {
                    v19[v63] = *(v21 + v63);
                    ++v63;
                  }

                  while (v22 > v63);
                }

                ++v52;
                v55 += 32;
                v56 = (v56 + v20);
                v57 = (v57 + v20);
                v58 += 32;
                v19 += 32;
                v21 += v20;
              }

              while (v52 != v14);
            }
          }

          else if (v22 == v34)
          {
            v35 = (v21 + 16);
            v36 = (&v68[v17 + 1] + v18);
            do
            {
              v36[-1].val[0] = v35[-2];
              if (v15 != 4)
              {
                v36[-1].val[1] = v35[-1];
                if (v15 != 8)
                {
                  v36->val[0] = *v35;
                }
              }

              v35 = (v35 + v20);
              v36 += 2;
              --v14;
            }

            while (v14);
          }

          else
          {
            for (k = 0; k != v14; ++k)
            {
              v46 = (v21 + v20 * k);
              v47 = &v19[32 * k];
              *v47 = *v46;
              if (v34 != 8)
              {
                *(v47 + 1) = v46[1];
                if (v34 != 16)
                {
                  *(v47 + 2) = v46[2];
                }
              }

              v48 = &v47[v34];
              v49 = v46 + v34;
              v50 = v22 & 0x18;
              do
              {
                v51 = *v49++;
                *v48++ = v51;
                ++v50;
              }

              while (v22 > v50);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v68, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    v8 = &v68[128 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *v8 = vuzp1q_s32(*v2, v12);
      v8[2] = vuzp2q_s32(v10, v12);
      v8[4] = vuzp1q_s32(v11, v13);
      v8[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[2] = v6;
      v8[4] = v6;
      v8[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 32, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[2].i64[0] = 0;
      v8[2].i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[6].i64[0] = 0;
      v8[6].i64[1] = 0;
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
    v15 = *(a1 + 84);
    if (v15)
    {
      v16 = *(a1 + 72);
      v17 = 32 * v16;
      v18 = 2 * *(a1 + 76);
      v19 = &v68[32 * v16 + v18];
      v21 = *(a1 + 56);
      v20 = *(a1 + 64);
      v22 = 2 * v15;
      v23 = &v68[32 * v14 - 32 + 32 * v16 + 2 * v15 + v18];
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
              v39 = &v68[v17 + 16 + v18];
              v40 = (v21 + 16);
              do
              {
                v41 = v40;
                v42 = v39;
                v43 = v22;
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
                v39 += 32;
                v40 = (v40 + v20);
              }

              while (v38 != v14);
            }

            else
            {
              v52 = 0;
              v53 = v15 & 0xC;
              v54 = &v68[v17 + v18];
              v55 = &v68[v17 + 16 + v18];
              v56 = (v21 + 16);
              v57 = (v21 + v37);
              v58 = &v54[v37];
              do
              {
                v59 = v56;
                v60 = v55;
                v61 = v22 & 0x1FFFFFFE0;
                do
                {
                  v62 = *v59;
                  *(v60 - 1) = *(v59 - 1);
                  *v60 = v62;
                  v60 += 2;
                  v59 += 2;
                  v61 -= 32;
                }

                while (v61);
                v63 = v22 & 0x1FFFFFFE0;
                if (!v53)
                {
                  goto LABEL_73;
                }

                v64 = v58;
                v65 = v57;
                v66 = v34 - v37;
                do
                {
                  v67 = *v65++;
                  *v64++ = v67;
                  v66 -= 8;
                }

                while (v66);
                v63 = v22 & 0x1FFFFFFF8;
                if (v22 != v34)
                {
LABEL_73:
                  do
                  {
                    v19[v63] = *(v21 + v63);
                    ++v63;
                  }

                  while (v22 > v63);
                }

                ++v52;
                v55 += 32;
                v56 = (v56 + v20);
                v57 = (v57 + v20);
                v58 += 4;
                v19 += 32;
                v21 += v20;
              }

              while (v52 != v14);
            }
          }

          else if (v22 == v34)
          {
            v35 = (v21 + 16);
            v36 = &v68[v17 + 16 + v18];
            do
            {
              *(v36 - 2) = *(v35 - 2);
              if (v15 != 4)
              {
                *(v36 - 1) = *(v35 - 1);
                if (v15 != 8)
                {
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
              v46 = (v21 + v20 * k);
              v47 = &v19[32 * k];
              *v47 = *v46;
              if (v34 != 8)
              {
                v47[1] = v46[1];
                if (v34 != 16)
                {
                  v47[2] = v46[2];
                }
              }

              v48 = v47 + v34;
              v49 = v46 + v34;
              v50 = v22 & 0x18;
              do
              {
                v51 = *v49++;
                *v48++ = v51;
                ++v50;
              }

              while (v22 > v50);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v68, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

float32x2x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    v8 = &v68[8 * *v4 + *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *v8 = vuzp1q_s32(*v2, v12);
      v8[2] = vuzp2q_s32(v10, v12);
      v8[4] = vuzp1q_s32(v11, v13);
      v8[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[2] = v6;
      v8[4] = v6;
      v8[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 32, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[2].i64[0] = 0;
      v8[2].i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[6].i64[0] = 0;
      v8[6].i64[1] = 0;
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
    v15 = *(a1 + 84);
    if (v15)
    {
      v16 = *(a1 + 72);
      v17 = 2 * v16;
      v18 = 2 * *(a1 + 76);
      v19 = &v68[2 * v16] + v18;
      v21 = *(a1 + 56);
      v20 = *(a1 + 64);
      v22 = 2 * v15;
      v23 = &v68[2 * v14 - 2 + 2 * v16] + 2 * v15 + v18;
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
              v39 = &v68[v17 + 1] + v18;
              v40 = (v21 + 16);
              do
              {
                v41 = v40;
                v42 = v39;
                v43 = v22;
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
                v39 += 32;
                v40 = (v40 + v20);
              }

              while (v38 != v14);
            }

            else
            {
              v52 = 0;
              v53 = v15 & 0xC;
              v54 = &v68[v17] + v18;
              v55 = &v68[v17 + 1] + v18;
              v56 = (v21 + 16);
              v57 = (v21 + v37);
              v58 = &v54[v37];
              do
              {
                v59 = v56;
                v60 = v55;
                v61 = v22 & 0x1FFFFFFE0;
                do
                {
                  v62 = *v59;
                  *(v60 - 1) = *(v59 - 1);
                  *v60 = v62;
                  v60 += 2;
                  v59 += 2;
                  v61 -= 32;
                }

                while (v61);
                v63 = v22 & 0x1FFFFFFE0;
                if (!v53)
                {
                  goto LABEL_73;
                }

                v64 = v58;
                v65 = v57;
                v66 = v34 - v37;
                do
                {
                  v67 = *v65++;
                  *v64 = v67;
                  v64 += 8;
                  v66 -= 8;
                }

                while (v66);
                v63 = v22 & 0x1FFFFFFF8;
                if (v22 != v34)
                {
LABEL_73:
                  do
                  {
                    v19[v63] = *(v21 + v63);
                    ++v63;
                  }

                  while (v22 > v63);
                }

                ++v52;
                v55 += 32;
                v56 = (v56 + v20);
                v57 = (v57 + v20);
                v58 += 32;
                v19 += 32;
                v21 += v20;
              }

              while (v52 != v14);
            }
          }

          else if (v22 == v34)
          {
            v35 = (v21 + 16);
            v36 = (&v68[v17 + 1] + v18);
            do
            {
              v36[-1].val[0] = v35[-2];
              if (v15 != 4)
              {
                v36[-1].val[1] = v35[-1];
                if (v15 != 8)
                {
                  v36->val[0] = *v35;
                }
              }

              v35 = (v35 + v20);
              v36 += 2;
              --v14;
            }

            while (v14);
          }

          else
          {
            for (k = 0; k != v14; ++k)
            {
              v46 = (v21 + v20 * k);
              v47 = &v19[32 * k];
              *v47 = *v46;
              if (v34 != 8)
              {
                *(v47 + 1) = v46[1];
                if (v34 != 16)
                {
                  *(v47 + 2) = v46[2];
                }
              }

              v48 = &v47[v34];
              v49 = v46 + v34;
              v50 = v22 & 0x18;
              do
              {
                v51 = *v49++;
                *v48++ = v51;
                ++v50;
              }

              while (v22 > v50);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v68, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    v8 = &v68[128 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *v8 = vuzp1q_s32(*v2, v12);
      v8[2] = vuzp2q_s32(v10, v12);
      v8[4] = vuzp1q_s32(v11, v13);
      v8[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[2] = v6;
      v8[4] = v6;
      v8[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 32, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[2].i64[0] = 0;
      v8[2].i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[6].i64[0] = 0;
      v8[6].i64[1] = 0;
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
    v15 = *(a1 + 84);
    if (v15)
    {
      v16 = *(a1 + 72);
      v17 = 32 * v16;
      v18 = 2 * *(a1 + 76);
      v19 = &v68[32 * v16 + v18];
      v21 = *(a1 + 56);
      v20 = *(a1 + 64);
      v22 = 2 * v15;
      v23 = &v68[32 * v14 - 32 + 32 * v16 + 2 * v15 + v18];
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
              v39 = &v68[v17 + 16 + v18];
              v40 = (v21 + 16);
              do
              {
                v41 = v40;
                v42 = v39;
                v43 = v22;
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
                v39 += 32;
                v40 = (v40 + v20);
              }

              while (v38 != v14);
            }

            else
            {
              v52 = 0;
              v53 = v15 & 0xC;
              v54 = &v68[v17 + v18];
              v55 = &v68[v17 + 16 + v18];
              v56 = (v21 + 16);
              v57 = (v21 + v37);
              v58 = &v54[v37];
              do
              {
                v59 = v56;
                v60 = v55;
                v61 = v22 & 0x1FFFFFFE0;
                do
                {
                  v62 = *v59;
                  *(v60 - 1) = *(v59 - 1);
                  *v60 = v62;
                  v60 += 2;
                  v59 += 2;
                  v61 -= 32;
                }

                while (v61);
                v63 = v22 & 0x1FFFFFFE0;
                if (!v53)
                {
                  goto LABEL_73;
                }

                v64 = v58;
                v65 = v57;
                v66 = v34 - v37;
                do
                {
                  v67 = *v65++;
                  *v64++ = v67;
                  v66 -= 8;
                }

                while (v66);
                v63 = v22 & 0x1FFFFFFF8;
                if (v22 != v34)
                {
LABEL_73:
                  do
                  {
                    v19[v63] = *(v21 + v63);
                    ++v63;
                  }

                  while (v22 > v63);
                }

                ++v52;
                v55 += 32;
                v56 = (v56 + v20);
                v57 = (v57 + v20);
                v58 += 4;
                v19 += 32;
                v21 += v20;
              }

              while (v52 != v14);
            }
          }

          else if (v22 == v34)
          {
            v35 = (v21 + 16);
            v36 = &v68[v17 + 16 + v18];
            do
            {
              *(v36 - 2) = *(v35 - 2);
              if (v15 != 4)
              {
                *(v36 - 1) = *(v35 - 1);
                if (v15 != 8)
                {
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
              v46 = (v21 + v20 * k);
              v47 = &v19[32 * k];
              *v47 = *v46;
              if (v34 != 8)
              {
                v47[1] = v46[1];
                if (v34 != 16)
                {
                  v47[2] = v46[2];
                }
              }

              v48 = v47 + v34;
              v49 = v46 + v34;
              v50 = v22 & 0x18;
              do
              {
                v51 = *v49++;
                *v48++ = v51;
                ++v50;
              }

              while (v22 > v50);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v68, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

float32x2x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    v8 = &v68[8 * *v4 + *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *v8 = vuzp1q_s32(*v2, v12);
      v8[2] = vuzp2q_s32(v10, v12);
      v8[4] = vuzp1q_s32(v11, v13);
      v8[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[2] = v6;
      v8[4] = v6;
      v8[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 32, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[2].i64[0] = 0;
      v8[2].i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[6].i64[0] = 0;
      v8[6].i64[1] = 0;
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
    v15 = *(a1 + 84);
    if (v15)
    {
      v16 = *(a1 + 72);
      v17 = 2 * v16;
      v18 = 2 * *(a1 + 76);
      v19 = &v68[2 * v16] + v18;
      v21 = *(a1 + 56);
      v20 = *(a1 + 64);
      v22 = 2 * v15;
      v23 = &v68[2 * v14 - 2 + 2 * v16] + 2 * v15 + v18;
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
              v39 = &v68[v17 + 1] + v18;
              v40 = (v21 + 16);
              do
              {
                v41 = v40;
                v42 = v39;
                v43 = v22;
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
                v39 += 32;
                v40 = (v40 + v20);
              }

              while (v38 != v14);
            }

            else
            {
              v52 = 0;
              v53 = v15 & 0xC;
              v54 = &v68[v17] + v18;
              v55 = &v68[v17 + 1] + v18;
              v56 = (v21 + 16);
              v57 = (v21 + v37);
              v58 = &v54[v37];
              do
              {
                v59 = v56;
                v60 = v55;
                v61 = v22 & 0x1FFFFFFE0;
                do
                {
                  v62 = *v59;
                  *(v60 - 1) = *(v59 - 1);
                  *v60 = v62;
                  v60 += 2;
                  v59 += 2;
                  v61 -= 32;
                }

                while (v61);
                v63 = v22 & 0x1FFFFFFE0;
                if (!v53)
                {
                  goto LABEL_73;
                }

                v64 = v58;
                v65 = v57;
                v66 = v34 - v37;
                do
                {
                  v67 = *v65++;
                  *v64 = v67;
                  v64 += 8;
                  v66 -= 8;
                }

                while (v66);
                v63 = v22 & 0x1FFFFFFF8;
                if (v22 != v34)
                {
LABEL_73:
                  do
                  {
                    v19[v63] = *(v21 + v63);
                    ++v63;
                  }

                  while (v22 > v63);
                }

                ++v52;
                v55 += 32;
                v56 = (v56 + v20);
                v57 = (v57 + v20);
                v58 += 32;
                v19 += 32;
                v21 += v20;
              }

              while (v52 != v14);
            }
          }

          else if (v22 == v34)
          {
            v35 = (v21 + 16);
            v36 = (&v68[v17 + 1] + v18);
            do
            {
              v36[-1].val[0] = v35[-2];
              if (v15 != 4)
              {
                v36[-1].val[1] = v35[-1];
                if (v15 != 8)
                {
                  v36->val[0] = *v35;
                }
              }

              v35 = (v35 + v20);
              v36 += 2;
              --v14;
            }

            while (v14);
          }

          else
          {
            for (k = 0; k != v14; ++k)
            {
              v46 = (v21 + v20 * k);
              v47 = &v19[32 * k];
              *v47 = *v46;
              if (v34 != 8)
              {
                *(v47 + 1) = v46[1];
                if (v34 != 16)
                {
                  *(v47 + 2) = v46[2];
                }
              }

              v48 = &v47[v34];
              v49 = v46 + v34;
              v50 = v22 & 0x18;
              do
              {
                v51 = *v49++;
                *v48++ = v51;
                ++v50;
              }

              while (v22 > v50);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v68, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    v8 = &v68[128 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *v8 = vuzp1q_s32(*v2, v12);
      v8[2] = vuzp2q_s32(v10, v12);
      v8[4] = vuzp1q_s32(v11, v13);
      v8[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[2] = v6;
      v8[4] = v6;
      v8[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 32, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[2].i64[0] = 0;
      v8[2].i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[6].i64[0] = 0;
      v8[6].i64[1] = 0;
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
    v15 = *(a1 + 84);
    if (v15)
    {
      v16 = *(a1 + 72);
      v17 = 32 * v16;
      v18 = 2 * *(a1 + 76);
      v19 = &v68[32 * v16 + v18];
      v21 = *(a1 + 56);
      v20 = *(a1 + 64);
      v22 = 2 * v15;
      v23 = &v68[32 * v14 - 32 + 32 * v16 + 2 * v15 + v18];
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
              v39 = &v68[v17 + 16 + v18];
              v40 = (v21 + 16);
              do
              {
                v41 = v40;
                v42 = v39;
                v43 = v22;
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
                v39 += 32;
                v40 = (v40 + v20);
              }

              while (v38 != v14);
            }

            else
            {
              v52 = 0;
              v53 = v15 & 0xC;
              v54 = &v68[v17 + v18];
              v55 = &v68[v17 + 16 + v18];
              v56 = (v21 + 16);
              v57 = (v21 + v37);
              v58 = &v54[v37];
              do
              {
                v59 = v56;
                v60 = v55;
                v61 = v22 & 0x1FFFFFFE0;
                do
                {
                  v62 = *v59;
                  *(v60 - 1) = *(v59 - 1);
                  *v60 = v62;
                  v60 += 2;
                  v59 += 2;
                  v61 -= 32;
                }

                while (v61);
                v63 = v22 & 0x1FFFFFFE0;
                if (!v53)
                {
                  goto LABEL_73;
                }

                v64 = v58;
                v65 = v57;
                v66 = v34 - v37;
                do
                {
                  v67 = *v65++;
                  *v64++ = v67;
                  v66 -= 8;
                }

                while (v66);
                v63 = v22 & 0x1FFFFFFF8;
                if (v22 != v34)
                {
LABEL_73:
                  do
                  {
                    v19[v63] = *(v21 + v63);
                    ++v63;
                  }

                  while (v22 > v63);
                }

                ++v52;
                v55 += 32;
                v56 = (v56 + v20);
                v57 = (v57 + v20);
                v58 += 4;
                v19 += 32;
                v21 += v20;
              }

              while (v52 != v14);
            }
          }

          else if (v22 == v34)
          {
            v35 = (v21 + 16);
            v36 = &v68[v17 + 16 + v18];
            do
            {
              *(v36 - 2) = *(v35 - 2);
              if (v15 != 4)
              {
                *(v36 - 1) = *(v35 - 1);
                if (v15 != 8)
                {
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
              v46 = (v21 + v20 * k);
              v47 = &v19[32 * k];
              *v47 = *v46;
              if (v34 != 8)
              {
                v47[1] = v46[1];
                if (v34 != 16)
                {
                  v47[2] = v46[2];
                }
              }

              v48 = v47 + v34;
              v49 = v46 + v34;
              v50 = v22 & 0x18;
              do
              {
                v51 = *v49++;
                *v48++ = v51;
                ++v50;
              }

              while (v22 > v50);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v68, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

float32x2x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    v8 = &v68[8 * *v4 + *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *v8 = vuzp1q_s32(*v2, v12);
      v8[2] = vuzp2q_s32(v10, v12);
      v8[4] = vuzp1q_s32(v11, v13);
      v8[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[2] = v6;
      v8[4] = v6;
      v8[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 32, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[2].i64[0] = 0;
      v8[2].i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[6].i64[0] = 0;
      v8[6].i64[1] = 0;
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
    v15 = *(a1 + 84);
    if (v15)
    {
      v16 = *(a1 + 72);
      v17 = 2 * v16;
      v18 = 2 * *(a1 + 76);
      v19 = &v68[2 * v16] + v18;
      v21 = *(a1 + 56);
      v20 = *(a1 + 64);
      v22 = 2 * v15;
      v23 = &v68[2 * v14 - 2 + 2 * v16] + 2 * v15 + v18;
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
              v39 = &v68[v17 + 1] + v18;
              v40 = (v21 + 16);
              do
              {
                v41 = v40;
                v42 = v39;
                v43 = v22;
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
                v39 += 32;
                v40 = (v40 + v20);
              }

              while (v38 != v14);
            }

            else
            {
              v52 = 0;
              v53 = v15 & 0xC;
              v54 = &v68[v17] + v18;
              v55 = &v68[v17 + 1] + v18;
              v56 = (v21 + 16);
              v57 = (v21 + v37);
              v58 = &v54[v37];
              do
              {
                v59 = v56;
                v60 = v55;
                v61 = v22 & 0x1FFFFFFE0;
                do
                {
                  v62 = *v59;
                  *(v60 - 1) = *(v59 - 1);
                  *v60 = v62;
                  v60 += 2;
                  v59 += 2;
                  v61 -= 32;
                }

                while (v61);
                v63 = v22 & 0x1FFFFFFE0;
                if (!v53)
                {
                  goto LABEL_73;
                }

                v64 = v58;
                v65 = v57;
                v66 = v34 - v37;
                do
                {
                  v67 = *v65++;
                  *v64 = v67;
                  v64 += 8;
                  v66 -= 8;
                }

                while (v66);
                v63 = v22 & 0x1FFFFFFF8;
                if (v22 != v34)
                {
LABEL_73:
                  do
                  {
                    v19[v63] = *(v21 + v63);
                    ++v63;
                  }

                  while (v22 > v63);
                }

                ++v52;
                v55 += 32;
                v56 = (v56 + v20);
                v57 = (v57 + v20);
                v58 += 32;
                v19 += 32;
                v21 += v20;
              }

              while (v52 != v14);
            }
          }

          else if (v22 == v34)
          {
            v35 = (v21 + 16);
            v36 = (&v68[v17 + 1] + v18);
            do
            {
              v36[-1].val[0] = v35[-2];
              if (v15 != 4)
              {
                v36[-1].val[1] = v35[-1];
                if (v15 != 8)
                {
                  v36->val[0] = *v35;
                }
              }

              v35 = (v35 + v20);
              v36 += 2;
              --v14;
            }

            while (v14);
          }

          else
          {
            for (k = 0; k != v14; ++k)
            {
              v46 = (v21 + v20 * k);
              v47 = &v19[32 * k];
              *v47 = *v46;
              if (v34 != 8)
              {
                *(v47 + 1) = v46[1];
                if (v34 != 16)
                {
                  *(v47 + 2) = v46[2];
                }
              }

              v48 = &v47[v34];
              v49 = v46 + v34;
              v50 = v22 & 0x18;
              do
              {
                v51 = *v49++;
                *v48++ = v51;
                ++v50;
              }

              while (v22 > v50);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v68, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    v8 = &v68[128 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *v8 = vuzp1q_s32(*v2, v12);
      v8[2] = vuzp2q_s32(v10, v12);
      v8[4] = vuzp1q_s32(v11, v13);
      v8[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[2] = v6;
      v8[4] = v6;
      v8[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 32, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[2].i64[0] = 0;
      v8[2].i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[6].i64[0] = 0;
      v8[6].i64[1] = 0;
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
    v15 = *(a1 + 84);
    if (v15)
    {
      v16 = *(a1 + 72);
      v17 = 32 * v16;
      v18 = 2 * *(a1 + 76);
      v19 = &v68[32 * v16 + v18];
      v21 = *(a1 + 56);
      v20 = *(a1 + 64);
      v22 = 2 * v15;
      v23 = &v68[32 * v14 - 32 + 32 * v16 + 2 * v15 + v18];
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
              v39 = &v68[v17 + 16 + v18];
              v40 = (v21 + 16);
              do
              {
                v41 = v40;
                v42 = v39;
                v43 = v22;
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
                v39 += 32;
                v40 = (v40 + v20);
              }

              while (v38 != v14);
            }

            else
            {
              v52 = 0;
              v53 = v15 & 0xC;
              v54 = &v68[v17 + v18];
              v55 = &v68[v17 + 16 + v18];
              v56 = (v21 + 16);
              v57 = (v21 + v37);
              v58 = &v54[v37];
              do
              {
                v59 = v56;
                v60 = v55;
                v61 = v22 & 0x1FFFFFFE0;
                do
                {
                  v62 = *v59;
                  *(v60 - 1) = *(v59 - 1);
                  *v60 = v62;
                  v60 += 2;
                  v59 += 2;
                  v61 -= 32;
                }

                while (v61);
                v63 = v22 & 0x1FFFFFFE0;
                if (!v53)
                {
                  goto LABEL_73;
                }

                v64 = v58;
                v65 = v57;
                v66 = v34 - v37;
                do
                {
                  v67 = *v65++;
                  *v64++ = v67;
                  v66 -= 8;
                }

                while (v66);
                v63 = v22 & 0x1FFFFFFF8;
                if (v22 != v34)
                {
LABEL_73:
                  do
                  {
                    v19[v63] = *(v21 + v63);
                    ++v63;
                  }

                  while (v22 > v63);
                }

                ++v52;
                v55 += 32;
                v56 = (v56 + v20);
                v57 = (v57 + v20);
                v58 += 4;
                v19 += 32;
                v21 += v20;
              }

              while (v52 != v14);
            }
          }

          else if (v22 == v34)
          {
            v35 = (v21 + 16);
            v36 = &v68[v17 + 16 + v18];
            do
            {
              *(v36 - 2) = *(v35 - 2);
              if (v15 != 4)
              {
                *(v36 - 1) = *(v35 - 1);
                if (v15 != 8)
                {
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
              v46 = (v21 + v20 * k);
              v47 = &v19[32 * k];
              *v47 = *v46;
              if (v34 != 8)
              {
                v47[1] = v46[1];
                if (v34 != 16)
                {
                  v47[2] = v46[2];
                }
              }

              v48 = v47 + v34;
              v49 = v46 + v34;
              v50 = v22 & 0x18;
              do
              {
                v51 = *v49++;
                *v48++ = v51;
                ++v50;
              }

              while (v22 > v50);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v68, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

float32x2x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    v8 = &v68[8 * *v4 + *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *v8 = vuzp1q_s32(*v2, v12);
      v8[2] = vuzp2q_s32(v10, v12);
      v8[4] = vuzp1q_s32(v11, v13);
      v8[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[2] = v6;
      v8[4] = v6;
      v8[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 32, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[2].i64[0] = 0;
      v8[2].i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[6].i64[0] = 0;
      v8[6].i64[1] = 0;
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
    v15 = *(a1 + 84);
    if (v15)
    {
      v16 = *(a1 + 72);
      v17 = 2 * v16;
      v18 = 2 * *(a1 + 76);
      v19 = &v68[2 * v16] + v18;
      v21 = *(a1 + 56);
      v20 = *(a1 + 64);
      v22 = 2 * v15;
      v23 = &v68[2 * v14 - 2 + 2 * v16] + 2 * v15 + v18;
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
              v39 = &v68[v17 + 1] + v18;
              v40 = (v21 + 16);
              do
              {
                v41 = v40;
                v42 = v39;
                v43 = v22;
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
                v39 += 32;
                v40 = (v40 + v20);
              }

              while (v38 != v14);
            }

            else
            {
              v52 = 0;
              v53 = v15 & 0xC;
              v54 = &v68[v17] + v18;
              v55 = &v68[v17 + 1] + v18;
              v56 = (v21 + 16);
              v57 = (v21 + v37);
              v58 = &v54[v37];
              do
              {
                v59 = v56;
                v60 = v55;
                v61 = v22 & 0x1FFFFFFE0;
                do
                {
                  v62 = *v59;
                  *(v60 - 1) = *(v59 - 1);
                  *v60 = v62;
                  v60 += 2;
                  v59 += 2;
                  v61 -= 32;
                }

                while (v61);
                v63 = v22 & 0x1FFFFFFE0;
                if (!v53)
                {
                  goto LABEL_73;
                }

                v64 = v58;
                v65 = v57;
                v66 = v34 - v37;
                do
                {
                  v67 = *v65++;
                  *v64 = v67;
                  v64 += 8;
                  v66 -= 8;
                }

                while (v66);
                v63 = v22 & 0x1FFFFFFF8;
                if (v22 != v34)
                {
LABEL_73:
                  do
                  {
                    v19[v63] = *(v21 + v63);
                    ++v63;
                  }

                  while (v22 > v63);
                }

                ++v52;
                v55 += 32;
                v56 = (v56 + v20);
                v57 = (v57 + v20);
                v58 += 32;
                v19 += 32;
                v21 += v20;
              }

              while (v52 != v14);
            }
          }

          else if (v22 == v34)
          {
            v35 = (v21 + 16);
            v36 = (&v68[v17 + 1] + v18);
            do
            {
              v36[-1].val[0] = v35[-2];
              if (v15 != 4)
              {
                v36[-1].val[1] = v35[-1];
                if (v15 != 8)
                {
                  v36->val[0] = *v35;
                }
              }

              v35 = (v35 + v20);
              v36 += 2;
              --v14;
            }

            while (v14);
          }

          else
          {
            for (k = 0; k != v14; ++k)
            {
              v46 = (v21 + v20 * k);
              v47 = &v19[32 * k];
              *v47 = *v46;
              if (v34 != 8)
              {
                *(v47 + 1) = v46[1];
                if (v34 != 16)
                {
                  *(v47 + 2) = v46[2];
                }
              }

              v48 = &v47[v34];
              v49 = v46 + v34;
              v50 = v22 & 0x18;
              do
              {
                v51 = *v49++;
                *v48++ = v51;
                ++v50;
              }

              while (v22 > v50);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v68, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    v8 = &v68[128 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *v8 = vuzp1q_s32(*v2, v12);
      v8[2] = vuzp2q_s32(v10, v12);
      v8[4] = vuzp1q_s32(v11, v13);
      v8[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[2] = v6;
      v8[4] = v6;
      v8[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 32, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[2].i64[0] = 0;
      v8[2].i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[6].i64[0] = 0;
      v8[6].i64[1] = 0;
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
    v15 = *(a1 + 84);
    if (v15)
    {
      v16 = *(a1 + 72);
      v17 = 32 * v16;
      v18 = 2 * *(a1 + 76);
      v19 = &v68[32 * v16 + v18];
      v21 = *(a1 + 56);
      v20 = *(a1 + 64);
      v22 = 2 * v15;
      v23 = &v68[32 * v14 - 32 + 32 * v16 + 2 * v15 + v18];
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
              v39 = &v68[v17 + 16 + v18];
              v40 = (v21 + 16);
              do
              {
                v41 = v40;
                v42 = v39;
                v43 = v22;
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
                v39 += 32;
                v40 = (v40 + v20);
              }

              while (v38 != v14);
            }

            else
            {
              v52 = 0;
              v53 = v15 & 0xC;
              v54 = &v68[v17 + v18];
              v55 = &v68[v17 + 16 + v18];
              v56 = (v21 + 16);
              v57 = (v21 + v37);
              v58 = &v54[v37];
              do
              {
                v59 = v56;
                v60 = v55;
                v61 = v22 & 0x1FFFFFFE0;
                do
                {
                  v62 = *v59;
                  *(v60 - 1) = *(v59 - 1);
                  *v60 = v62;
                  v60 += 2;
                  v59 += 2;
                  v61 -= 32;
                }

                while (v61);
                v63 = v22 & 0x1FFFFFFE0;
                if (!v53)
                {
                  goto LABEL_73;
                }

                v64 = v58;
                v65 = v57;
                v66 = v34 - v37;
                do
                {
                  v67 = *v65++;
                  *v64++ = v67;
                  v66 -= 8;
                }

                while (v66);
                v63 = v22 & 0x1FFFFFFF8;
                if (v22 != v34)
                {
LABEL_73:
                  do
                  {
                    v19[v63] = *(v21 + v63);
                    ++v63;
                  }

                  while (v22 > v63);
                }

                ++v52;
                v55 += 32;
                v56 = (v56 + v20);
                v57 = (v57 + v20);
                v58 += 4;
                v19 += 32;
                v21 += v20;
              }

              while (v52 != v14);
            }
          }

          else if (v22 == v34)
          {
            v35 = (v21 + 16);
            v36 = &v68[v17 + 16 + v18];
            do
            {
              *(v36 - 2) = *(v35 - 2);
              if (v15 != 4)
              {
                *(v36 - 1) = *(v35 - 1);
                if (v15 != 8)
                {
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
              v46 = (v21 + v20 * k);
              v47 = &v19[32 * k];
              *v47 = *v46;
              if (v34 != 8)
              {
                v47[1] = v46[1];
                if (v34 != 16)
                {
                  v47[2] = v46[2];
                }
              }

              v48 = v47 + v34;
              v49 = v46 + v34;
              v50 = v22 & 0x18;
              do
              {
                v51 = *v49++;
                *v48++ = v51;
                ++v50;
              }

              while (v22 > v50);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v68, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

float32x2x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    v8 = &v68[8 * *v4 + *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *v8 = vuzp1q_s32(*v2, v12);
      v8[2] = vuzp2q_s32(v10, v12);
      v8[4] = vuzp1q_s32(v11, v13);
      v8[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[2] = v6;
      v8[4] = v6;
      v8[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 32, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[2].i64[0] = 0;
      v8[2].i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[6].i64[0] = 0;
      v8[6].i64[1] = 0;
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
    v15 = *(a1 + 84);
    if (v15)
    {
      v16 = *(a1 + 72);
      v17 = 2 * v16;
      v18 = 2 * *(a1 + 76);
      v19 = &v68[2 * v16] + v18;
      v21 = *(a1 + 56);
      v20 = *(a1 + 64);
      v22 = 2 * v15;
      v23 = &v68[2 * v14 - 2 + 2 * v16] + 2 * v15 + v18;
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
              v39 = &v68[v17 + 1] + v18;
              v40 = (v21 + 16);
              do
              {
                v41 = v40;
                v42 = v39;
                v43 = v22;
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
                v39 += 32;
                v40 = (v40 + v20);
              }

              while (v38 != v14);
            }

            else
            {
              v52 = 0;
              v53 = v15 & 0xC;
              v54 = &v68[v17] + v18;
              v55 = &v68[v17 + 1] + v18;
              v56 = (v21 + 16);
              v57 = (v21 + v37);
              v58 = &v54[v37];
              do
              {
                v59 = v56;
                v60 = v55;
                v61 = v22 & 0x1FFFFFFE0;
                do
                {
                  v62 = *v59;
                  *(v60 - 1) = *(v59 - 1);
                  *v60 = v62;
                  v60 += 2;
                  v59 += 2;
                  v61 -= 32;
                }

                while (v61);
                v63 = v22 & 0x1FFFFFFE0;
                if (!v53)
                {
                  goto LABEL_73;
                }

                v64 = v58;
                v65 = v57;
                v66 = v34 - v37;
                do
                {
                  v67 = *v65++;
                  *v64 = v67;
                  v64 += 8;
                  v66 -= 8;
                }

                while (v66);
                v63 = v22 & 0x1FFFFFFF8;
                if (v22 != v34)
                {
LABEL_73:
                  do
                  {
                    v19[v63] = *(v21 + v63);
                    ++v63;
                  }

                  while (v22 > v63);
                }

                ++v52;
                v55 += 32;
                v56 = (v56 + v20);
                v57 = (v57 + v20);
                v58 += 32;
                v19 += 32;
                v21 += v20;
              }

              while (v52 != v14);
            }
          }

          else if (v22 == v34)
          {
            v35 = (v21 + 16);
            v36 = (&v68[v17 + 1] + v18);
            do
            {
              v36[-1].val[0] = v35[-2];
              if (v15 != 4)
              {
                v36[-1].val[1] = v35[-1];
                if (v15 != 8)
                {
                  v36->val[0] = *v35;
                }
              }

              v35 = (v35 + v20);
              v36 += 2;
              --v14;
            }

            while (v14);
          }

          else
          {
            for (k = 0; k != v14; ++k)
            {
              v46 = (v21 + v20 * k);
              v47 = &v19[32 * k];
              *v47 = *v46;
              if (v34 != 8)
              {
                *(v47 + 1) = v46[1];
                if (v34 != 16)
                {
                  *(v47 + 2) = v46[2];
                }
              }

              v48 = &v47[v34];
              v49 = v46 + v34;
              v50 = v22 & 0x18;
              do
              {
                v51 = *v49++;
                *v48++ = v51;
                ++v50;
              }

              while (v22 > v50);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v68, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    v8 = &v68[128 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = *(v2 + 32);
      v13 = *(v2 + 48);
      *v8 = vuzp1q_s32(*v2, v12);
      v8[2] = vuzp2q_s32(v10, v12);
      v8[4] = vuzp1q_s32(v11, v13);
      v8[6] = vuzp2q_s32(v11, v13);
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[2] = v6;
      v8[4] = v6;
      v8[6] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 32, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[2].i64[0] = 0;
      v8[2].i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[6].i64[0] = 0;
      v8[6].i64[1] = 0;
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
    v15 = *(a1 + 84);
    if (v15)
    {
      v16 = *(a1 + 72);
      v17 = 32 * v16;
      v18 = 2 * *(a1 + 76);
      v19 = &v68[32 * v16 + v18];
      v21 = *(a1 + 56);
      v20 = *(a1 + 64);
      v22 = 2 * v15;
      v23 = &v68[32 * v14 - 32 + 32 * v16 + 2 * v15 + v18];
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
              v39 = &v68[v17 + 16 + v18];
              v40 = (v21 + 16);
              do
              {
                v41 = v40;
                v42 = v39;
                v43 = v22;
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
                v39 += 32;
                v40 = (v40 + v20);
              }

              while (v38 != v14);
            }

            else
            {
              v52 = 0;
              v53 = v15 & 0xC;
              v54 = &v68[v17 + v18];
              v55 = &v68[v17 + 16 + v18];
              v56 = (v21 + 16);
              v57 = (v21 + v37);
              v58 = &v54[v37];
              do
              {
                v59 = v56;
                v60 = v55;
                v61 = v22 & 0x1FFFFFFE0;
                do
                {
                  v62 = *v59;
                  *(v60 - 1) = *(v59 - 1);
                  *v60 = v62;
                  v60 += 2;
                  v59 += 2;
                  v61 -= 32;
                }

                while (v61);
                v63 = v22 & 0x1FFFFFFE0;
                if (!v53)
                {
                  goto LABEL_73;
                }

                v64 = v58;
                v65 = v57;
                v66 = v34 - v37;
                do
                {
                  v67 = *v65++;
                  *v64++ = v67;
                  v66 -= 8;
                }

                while (v66);
                v63 = v22 & 0x1FFFFFFF8;
                if (v22 != v34)
                {
LABEL_73:
                  do
                  {
                    v19[v63] = *(v21 + v63);
                    ++v63;
                  }

                  while (v22 > v63);
                }

                ++v52;
                v55 += 32;
                v56 = (v56 + v20);
                v57 = (v57 + v20);
                v58 += 4;
                v19 += 32;
                v21 += v20;
              }

              while (v52 != v14);
            }
          }

          else if (v22 == v34)
          {
            v35 = (v21 + 16);
            v36 = &v68[v17 + 16 + v18];
            do
            {
              *(v36 - 2) = *(v35 - 2);
              if (v15 != 4)
              {
                *(v36 - 1) = *(v35 - 1);
                if (v15 != 8)
                {
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
              v46 = (v21 + v20 * k);
              v47 = &v19[32 * k];
              *v47 = *v46;
              if (v34 != 8)
              {
                v47[1] = v46[1];
                if (v34 != 16)
                {
                  v47[2] = v46[2];
                }
              }

              v48 = v47 + v34;
              v49 = v46 + v34;
              v50 = v22 & 0x18;
              do
              {
                v51 = *v49++;
                *v48++ = v51;
                ++v50;
              }

              while (v22 > v50);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v68, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v67 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v66, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 7;
      v7 = 8 * *(a1 + 76);
      v8 = &v66[8 * v5].i8[v7];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 8 * *(a1 + 84);
      result = (v11 - 1) >> 32;
      if (result)
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

      else
      {
        result = v11 + v7;
        if (v10 < &v66[8 * v3 - 8 + 8 * v5].u64[v11 / 8 + v7 / 8] && v8 < v10 + v9 * (v3 - 1) + v11 || v9 < 0)
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
          v49 = 0;
          v50 = v4 & 3;
          v51 = &v66[0].i8[v6 + v7];
          v52 = &v66[1].i8[v6 + v7];
          v53 = (v10 + 16);
          v54 = (v10 + (v11 & 0x1FFFFFFE0));
          result = &v51[v11 & 0x1FFFFFFE0];
          do
          {
            v55 = v53;
            v56 = v52;
            v57 = v11 & 0x1FFFFFFE0;
            do
            {
              v58 = *v55;
              *(v56 - 1) = *(v55 - 1);
              *v56 = v58;
              v56 += 32;
              v55 += 2;
              v57 -= 32;
            }

            while (v57);
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v59 = result;
              v60 = v54;
              v61 = v11 - (v11 & 0x1FFFFFFE0);
              if (v50)
              {
                do
                {
                  v62 = *v60++;
                  *v59++ = v62;
                  v61 -= 8;
                }

                while (v61);
              }

              else
              {
                v63 = 0;
                v64 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v63) = *(v54 + v63);
                  v65 = v11 > v64++;
                  ++v63;
                }

                while (v65);
              }
            }

            ++v49;
            v52 += 128;
            v53 = (v53 + v9);
            v54 = (v54 + v9);
            result += 128;
          }

          while (v49 != v3);
        }

        else
        {
          v47 = (v10 + 16);
          v48 = (v66[1].i64 + v6 + v7);
          do
          {
            *(v48 - 2) = *(v47 - 2);
            if (v4 != 1)
            {
              *(v48 - 1) = *(v47 - 1);
              if (v4 != 2)
              {
                *v48 = *v47;
              }
            }

            v47 = (v47 + v9);
            v48 += 16;
            --v3;
          }

          while (v3);
        }
      }
    }
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 88);
  v22 = &byte_29D2F2FD5;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v44 = *v22;
    v45 = *(v22 - 1);
    if (v21 <= 8 * v45 || 4 * v44 >= v24)
    {
      v43 = 0;
    }

    else
    {
      v25 = &v66[32 * v44 + 4 * v45];
      v26 = v25[2];
      v27 = v25[10];
      v28 = v25[3];
      v29 = v25[11];
      v30 = *v25;
      v31 = v25[8];
      v32 = v25[1];
      v33 = v25[16];
      v34 = v25[17];
      v35 = v25[18];
      v36 = v25[19];
      v37 = v25[9];
      v25 += 24;
      v38 = v25[1];
      v39 = v25[2];
      v40 = v25[3];
      v41 = *v25;
      *v19 = v30;
      v19[1] = v31;
      v19[2] = v32;
      v19[3] = v37;
      v19[4] = v33;
      v19[5] = v41;
      v19[6] = v34;
      v19[7] = v38;
      v19[8] = v26;
      v19[9] = v27;
      v19[10] = v28;
      v19[11] = v29;
      v42 = v19 + 12;
      v19 += 16;
      v43 = -1;
      *v42 = v35;
      v42[1] = v39;
      v42[2] = v36;
      v42[3] = v40;
    }

    *v20++ = v43;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v41, *(a1 + 40), *(a1 + 48));
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 84);
    if (v5)
    {
      v6 = *(a1 + 72);
      v7 = v6 << 7;
      v8 = 8 * *(a1 + 76);
      v9 = &v41[8 * v6].i8[v8];
      v11 = *(a1 + 56);
      v10 = *(a1 + 64);
      v12 = 8 * *(a1 + 84);
      if ((v12 - 1) >> 32)
      {
        v13 = 1;
      }

      else
      {
        v13 = 8 * v5 == 0;
      }

      if (v13)
      {
        for (i = 0; i != v4; ++i)
        {
          v15 = 0;
          do
          {
            v9[v15] = *(v11 + v15);
            ++v15;
          }

          while (v12 > v15);
          v9 += 128;
          v11 += v10;
        }
      }

      else if (v11 < &v41[8 * v4 - 8 + 8 * v6].u64[v12 / 8 + v8 / 8] && v9 < v11 + v10 * (v4 - 1) + v12 || v10 < 0)
      {
        for (j = 0; j != v4; ++j)
        {
          v19 = 0;
          do
          {
            v9[v19] = *(v11 + v19);
            ++v19;
          }

          while (v12 > v19);
          v9 += 128;
          v11 += v10;
        }
      }

      else if (v5 >= 4)
      {
        v23 = 0;
        v24 = v5 & 3;
        v25 = &v41[0].i8[v7 + v8];
        v26 = &v41[1].i8[v7 + v8];
        v27 = (v11 + 16);
        v28 = (v11 + (v12 & 0x1FFFFFFE0));
        v29 = &v25[v12 & 0x1FFFFFFE0];
        do
        {
          v30 = v27;
          v31 = v26;
          v32 = v12 & 0x1FFFFFFE0;
          do
          {
            v33 = *v30;
            *(v31 - 1) = *(v30 - 1);
            *v31 = v33;
            v31 += 32;
            v30 += 2;
            v32 -= 32;
          }

          while (v32);
          if (v12 != (v12 & 0x1FFFFFFE0))
          {
            v34 = v29;
            v35 = v28;
            v36 = v12 - (v12 & 0x1FFFFFFE0);
            if (v24)
            {
              do
              {
                v37 = *v35++;
                *v34 = v37;
                v34 += 8;
                v36 -= 8;
              }

              while (v36);
            }

            else
            {
              v38 = 0;
              v39 = (v12 & 0xFFFFFFE0) + 1;
              do
              {
                v29[v38] = *(v28 + v38);
                v40 = v12 > v39++;
                ++v38;
              }

              while (v40);
            }
          }

          ++v23;
          v26 += 128;
          v27 = (v27 + v10);
          v28 = (v28 + v10);
          v29 += 128;
        }

        while (v23 != v4);
      }

      else
      {
        v21 = (v11 + 16);
        v22 = (v41[1].i64 + v7 + v8);
        do
        {
          *(v22 - 2) = *(v21 - 2);
          if (v5 != 1)
          {
            *(v22 - 1) = *(v21 - 1);
            if (v5 != 2)
            {
              *v22 = *v21;
            }
          }

          v21 = (v21 + v10);
          v22 += 16;
          --v4;
        }

        while (v4);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v41, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), v2, v3);
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v67 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v66, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 7;
      v7 = 8 * *(a1 + 76);
      v8 = &v66[8 * v5].i8[v7];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 8 * *(a1 + 84);
      result = (v11 - 1) >> 32;
      if (result)
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

      else
      {
        result = v11 + v7;
        if (v10 < &v66[8 * v3 - 8 + 8 * v5].u64[v11 / 8 + v7 / 8] && v8 < v10 + v9 * (v3 - 1) + v11 || v9 < 0)
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
          v49 = 0;
          v50 = v4 & 3;
          v51 = &v66[0].i8[v6 + v7];
          v52 = &v66[1].i8[v6 + v7];
          v53 = (v10 + 16);
          v54 = (v10 + (v11 & 0x1FFFFFFE0));
          result = &v51[v11 & 0x1FFFFFFE0];
          do
          {
            v55 = v53;
            v56 = v52;
            v57 = v11 & 0x1FFFFFFE0;
            do
            {
              v58 = *v55;
              *(v56 - 1) = *(v55 - 1);
              *v56 = v58;
              v56 += 32;
              v55 += 2;
              v57 -= 32;
            }

            while (v57);
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v59 = result;
              v60 = v54;
              v61 = v11 - (v11 & 0x1FFFFFFE0);
              if (v50)
              {
                do
                {
                  v62 = *v60++;
                  *v59++ = v62;
                  v61 -= 8;
                }

                while (v61);
              }

              else
              {
                v63 = 0;
                v64 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v63) = *(v54 + v63);
                  v65 = v11 > v64++;
                  ++v63;
                }

                while (v65);
              }
            }

            ++v49;
            v52 += 128;
            v53 = (v53 + v9);
            v54 = (v54 + v9);
            result += 128;
          }

          while (v49 != v3);
        }

        else
        {
          v47 = (v10 + 16);
          v48 = (v66[1].i64 + v6 + v7);
          do
          {
            *(v48 - 2) = *(v47 - 2);
            if (v4 != 1)
            {
              *(v48 - 1) = *(v47 - 1);
              if (v4 != 2)
              {
                *v48 = *v47;
              }
            }

            v47 = (v47 + v9);
            v48 += 16;
            --v3;
          }

          while (v3);
        }
      }
    }
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 88);
  v22 = &byte_29D2F2FD5;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v44 = *v22;
    v45 = *(v22 - 1);
    if (v21 <= 8 * v45 || 4 * v44 >= v24)
    {
      v43 = 0;
    }

    else
    {
      v25 = &v66[32 * v44 + 4 * v45];
      v26 = v25[2];
      v27 = v25[10];
      v28 = v25[3];
      v29 = v25[11];
      v30 = *v25;
      v31 = v25[8];
      v32 = v25[1];
      v33 = v25[16];
      v34 = v25[17];
      v35 = v25[18];
      v36 = v25[19];
      v37 = v25[9];
      v25 += 24;
      v38 = v25[1];
      v39 = v25[2];
      v40 = v25[3];
      v41 = *v25;
      *v19 = v30;
      v19[1] = v31;
      v19[2] = v32;
      v19[3] = v37;
      v19[4] = v33;
      v19[5] = v41;
      v19[6] = v34;
      v19[7] = v38;
      v19[8] = v26;
      v19[9] = v27;
      v19[10] = v28;
      v19[11] = v29;
      v42 = v19 + 12;
      v19 += 16;
      v43 = -1;
      *v42 = v35;
      v42[1] = v39;
      v42[2] = v36;
      v42[3] = v40;
    }

    *v20++ = v43;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v41, *(a1 + 40), *(a1 + 48));
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 84);
    if (v5)
    {
      v6 = *(a1 + 72);
      v7 = v6 << 7;
      v8 = 8 * *(a1 + 76);
      v9 = &v41[8 * v6].i8[v8];
      v11 = *(a1 + 56);
      v10 = *(a1 + 64);
      v12 = 8 * *(a1 + 84);
      if ((v12 - 1) >> 32)
      {
        v13 = 1;
      }

      else
      {
        v13 = 8 * v5 == 0;
      }

      if (v13)
      {
        for (i = 0; i != v4; ++i)
        {
          v15 = 0;
          do
          {
            v9[v15] = *(v11 + v15);
            ++v15;
          }

          while (v12 > v15);
          v9 += 128;
          v11 += v10;
        }
      }

      else if (v11 < &v41[8 * v4 - 8 + 8 * v6].u64[v12 / 8 + v8 / 8] && v9 < v11 + v10 * (v4 - 1) + v12 || v10 < 0)
      {
        for (j = 0; j != v4; ++j)
        {
          v19 = 0;
          do
          {
            v9[v19] = *(v11 + v19);
            ++v19;
          }

          while (v12 > v19);
          v9 += 128;
          v11 += v10;
        }
      }

      else if (v5 >= 4)
      {
        v23 = 0;
        v24 = v5 & 3;
        v25 = &v41[0].i8[v7 + v8];
        v26 = &v41[1].i8[v7 + v8];
        v27 = (v11 + 16);
        v28 = (v11 + (v12 & 0x1FFFFFFE0));
        v29 = &v25[v12 & 0x1FFFFFFE0];
        do
        {
          v30 = v27;
          v31 = v26;
          v32 = v12 & 0x1FFFFFFE0;
          do
          {
            v33 = *v30;
            *(v31 - 1) = *(v30 - 1);
            *v31 = v33;
            v31 += 32;
            v30 += 2;
            v32 -= 32;
          }

          while (v32);
          if (v12 != (v12 & 0x1FFFFFFE0))
          {
            v34 = v29;
            v35 = v28;
            v36 = v12 - (v12 & 0x1FFFFFFE0);
            if (v24)
            {
              do
              {
                v37 = *v35++;
                *v34 = v37;
                v34 += 8;
                v36 -= 8;
              }

              while (v36);
            }

            else
            {
              v38 = 0;
              v39 = (v12 & 0xFFFFFFE0) + 1;
              do
              {
                v29[v38] = *(v28 + v38);
                v40 = v12 > v39++;
                ++v38;
              }

              while (v40);
            }
          }

          ++v23;
          v26 += 128;
          v27 = (v27 + v10);
          v28 = (v28 + v10);
          v29 += 128;
        }

        while (v23 != v4);
      }

      else
      {
        v21 = (v11 + 16);
        v22 = (v41[1].i64 + v7 + v8);
        do
        {
          *(v22 - 2) = *(v21 - 2);
          if (v5 != 1)
          {
            *(v22 - 1) = *(v21 - 1);
            if (v5 != 2)
            {
              *v22 = *v21;
            }
          }

          v21 = (v21 + v10);
          v22 += 16;
          --v4;
        }

        while (v4);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v41, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), v2, v3);
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    v8 = &v61[32 * *v4 + 4 * *(v4 - 1)];
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
      *v8 = *v2;
      v8[1] = v17;
      v8[2] = v18;
      v8[3] = v19;
      v8[8] = v10;
      v8[9] = v11;
      v8[10] = v12;
      v8[11] = v14;
      v8[16] = v13;
      v8[17] = v24;
      v8[18] = v15;
      v8[19] = v16;
      v7 = 256;
      v8[24] = v20;
      v8[25] = v21;
      v8[26] = v22;
      v8[27] = v23;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *v8 = v6;
      v8[1] = v6;
      v8[2] = v6;
      v8[3] = v6;
      v8[8] = v6;
      v8[9] = v6;
      v8[10] = v6;
      v8[11] = v6;
      v8[16] = v6;
      v8[17] = v6;
      v8[18] = v6;
      v8[19] = v6;
      v8[24] = v6;
      v8[25] = v6;
      v8[26] = v6;
      v8[27] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 128, v2, v9);
    }

    else
    {
      v7 = 0;
      v8[2] = 0u;
      v8[3] = 0u;
      *v8 = 0u;
      v8[1] = 0u;
      v8[8] = 0u;
      v8[9] = 0u;
      v8[10] = 0u;
      v8[11] = 0u;
      v8[16] = 0u;
      v8[17] = 0u;
      v8[18] = 0u;
      v8[19] = 0u;
      v8[24] = 0u;
      v8[25] = 0u;
      v8[26] = 0u;
      v8[27] = 0u;
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
    v26 = *(a1 + 84);
    if (v26)
    {
      v27 = *(a1 + 72);
      v28 = v27 << 7;
      v29 = 8 * *(a1 + 76);
      v30 = &v61[8 * v27] + v29;
      v32 = *(a1 + 56);
      v31 = *(a1 + 64);
      v33 = 8 * *(a1 + 84);
      if ((v33 - 1) >> 32)
      {
        v34 = 1;
      }

      else
      {
        v34 = 8 * v26 == 0;
      }

      if (v34)
      {
        for (i = 0; i != v25; ++i)
        {
          v36 = 0;
          do
          {
            v30[v36] = *(v32 + v36);
            ++v36;
          }

          while (v33 > v36);
          v30 += 128;
          v32 += v31;
        }
      }

      else
      {
        v38 = v32 < &v61[8 * v25 - 8 + 8 * v27] + v33 + v29 && v30 < v32 + v31 * (v25 - 1) + v33 || v31 < 0;
        if (v38)
        {
          for (j = 0; j != v25; ++j)
          {
            v40 = 0;
            do
            {
              v30[v40] = *(v32 + v40);
              ++v40;
            }

            while (v33 > v40);
            v30 += 128;
            v32 += v31;
          }
        }

        else if (v26 >= 4)
        {
          v44 = 0;
          v45 = v26 & 3;
          v46 = v61 + v28 + v29;
          v47 = &v61[1] + v28 + v29;
          v48 = (v32 + 16);
          v49 = (v32 + (v33 & 0x1FFFFFFE0));
          v50 = &v46[v33 & 0x1FFFFFFE0];
          do
          {
            v51 = v48;
            v52 = v47;
            v53 = v33 & 0x1FFFFFFE0;
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
            if (v33 != (v33 & 0x1FFFFFFE0))
            {
              v55 = v50;
              v56 = v49;
              v57 = v33 - (v33 & 0x1FFFFFFE0);
              if (v45)
              {
                do
                {
                  v58 = *v56++;
                  *v55 = v58;
                  v55 += 8;
                  v57 -= 8;
                }

                while (v57);
              }

              else
              {
                v59 = 0;
                v60 = (v33 & 0xFFFFFFE0) + 1;
                do
                {
                  v50[v59] = *(v49 + v59);
                  v38 = v33 > v60++;
                  ++v59;
                }

                while (v38);
              }
            }

            ++v44;
            v47 += 128;
            v48 = (v48 + v31);
            v49 = (v49 + v31);
            v50 += 128;
          }

          while (v44 != v25);
        }

        else
        {
          v42 = (v32 + 16);
          v43 = (&v61[1] + v28 + v29);
          do
          {
            *(v43 - 2) = *(v42 - 2);
            if (v26 != 1)
            {
              *(v43 - 1) = *(v42 - 1);
              if (v26 != 2)
              {
                *v43 = *v42;
              }
            }

            v42 = (v42 + v31);
            v43 += 16;
            --v25;
          }

          while (v25);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v61, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    v8 = &v61[512 * *v4 + 64 * *(v4 - 1)];
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
      *v8 = *v2;
      v8[1] = v17;
      v8[2] = v18;
      v8[3] = v19;
      v8[8] = v10;
      v8[9] = v11;
      v8[10] = v12;
      v8[11] = v14;
      v8[16] = v13;
      v8[17] = v24;
      v8[18] = v15;
      v8[19] = v16;
      v7 = 256;
      v8[24] = v20;
      v8[25] = v21;
      v8[26] = v22;
      v8[27] = v23;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *v8 = v6;
      v8[1] = v6;
      v8[2] = v6;
      v8[3] = v6;
      v8[8] = v6;
      v8[9] = v6;
      v8[10] = v6;
      v8[11] = v6;
      v8[16] = v6;
      v8[17] = v6;
      v8[18] = v6;
      v8[19] = v6;
      v8[24] = v6;
      v8[25] = v6;
      v8[26] = v6;
      v8[27] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 128, v2, v9);
    }

    else
    {
      v7 = 0;
      v8[2] = 0u;
      v8[3] = 0u;
      *v8 = 0u;
      v8[1] = 0u;
      v8[8] = 0u;
      v8[9] = 0u;
      v8[10] = 0u;
      v8[11] = 0u;
      v8[16] = 0u;
      v8[17] = 0u;
      v8[18] = 0u;
      v8[19] = 0u;
      v8[24] = 0u;
      v8[25] = 0u;
      v8[26] = 0u;
      v8[27] = 0u;
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
    v26 = *(a1 + 84);
    if (v26)
    {
      v27 = *(a1 + 72);
      v28 = v27 << 7;
      v29 = 8 * *(a1 + 76);
      v30 = &v61[128 * v27 + v29];
      v32 = *(a1 + 56);
      v31 = *(a1 + 64);
      v33 = 8 * *(a1 + 84);
      if ((v33 - 1) >> 32)
      {
        v34 = 1;
      }

      else
      {
        v34 = 8 * v26 == 0;
      }

      if (v34)
      {
        for (i = 0; i != v25; ++i)
        {
          v36 = 0;
          do
          {
            v30[v36] = *(v32 + v36);
            ++v36;
          }

          while (v33 > v36);
          v30 += 128;
          v32 += v31;
        }
      }

      else
      {
        v38 = v32 < &v61[128 * v25 - 128 + 128 * v27 + v33 + v29] && v30 < v32 + v31 * (v25 - 1) + v33 || v31 < 0;
        if (v38)
        {
          for (j = 0; j != v25; ++j)
          {
            v40 = 0;
            do
            {
              v30[v40] = *(v32 + v40);
              ++v40;
            }

            while (v33 > v40);
            v30 += 128;
            v32 += v31;
          }
        }

        else if (v26 >= 4)
        {
          v44 = 0;
          v45 = v26 & 3;
          v46 = &v61[v28 + v29];
          v47 = &v61[v28 + 16 + v29];
          v48 = (v32 + 16);
          v49 = (v32 + (v33 & 0x1FFFFFFE0));
          v50 = &v46[v33 & 0x1FFFFFFE0];
          do
          {
            v51 = v48;
            v52 = v47;
            v53 = v33 & 0x1FFFFFFE0;
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
            if (v33 != (v33 & 0x1FFFFFFE0))
            {
              v55 = v50;
              v56 = v49;
              v57 = v33 - (v33 & 0x1FFFFFFE0);
              if (v45)
              {
                do
                {
                  v58 = *v56++;
                  *v55++ = v58;
                  v57 -= 8;
                }

                while (v57);
              }

              else
              {
                v59 = 0;
                v60 = (v33 & 0xFFFFFFE0) + 1;
                do
                {
                  *(v50 + v59) = *(v49 + v59);
                  v38 = v33 > v60++;
                  ++v59;
                }

                while (v38);
              }
            }

            ++v44;
            v47 += 128;
            v48 = (v48 + v31);
            v49 = (v49 + v31);
            v50 += 16;
          }

          while (v44 != v25);
        }

        else
        {
          v42 = (v32 + 16);
          v43 = &v61[v28 + 16 + v29];
          do
          {
            *(v43 - 2) = *(v42 - 2);
            if (v26 != 1)
            {
              *(v43 - 1) = *(v42 - 1);
              if (v26 != 2)
              {
                *v43 = *v42;
              }
            }

            v42 = (v42 + v31);
            v43 += 16;
            --v25;
          }

          while (v25);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v61, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    v8 = &v61[32 * *v4 + 4 * *(v4 - 1)];
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
      *v8 = *v2;
      v8[1] = v17;
      v8[2] = v18;
      v8[3] = v19;
      v8[8] = v10;
      v8[9] = v11;
      v8[10] = v12;
      v8[11] = v14;
      v8[16] = v13;
      v8[17] = v24;
      v8[18] = v15;
      v8[19] = v16;
      v7 = 256;
      v8[24] = v20;
      v8[25] = v21;
      v8[26] = v22;
      v8[27] = v23;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *v8 = v6;
      v8[1] = v6;
      v8[2] = v6;
      v8[3] = v6;
      v8[8] = v6;
      v8[9] = v6;
      v8[10] = v6;
      v8[11] = v6;
      v8[16] = v6;
      v8[17] = v6;
      v8[18] = v6;
      v8[19] = v6;
      v8[24] = v6;
      v8[25] = v6;
      v8[26] = v6;
      v8[27] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 128, v2, v9);
    }

    else
    {
      v7 = 0;
      v8[2] = 0u;
      v8[3] = 0u;
      *v8 = 0u;
      v8[1] = 0u;
      v8[8] = 0u;
      v8[9] = 0u;
      v8[10] = 0u;
      v8[11] = 0u;
      v8[16] = 0u;
      v8[17] = 0u;
      v8[18] = 0u;
      v8[19] = 0u;
      v8[24] = 0u;
      v8[25] = 0u;
      v8[26] = 0u;
      v8[27] = 0u;
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
    v26 = *(a1 + 84);
    if (v26)
    {
      v27 = *(a1 + 72);
      v28 = v27 << 7;
      v29 = 8 * *(a1 + 76);
      v30 = &v61[8 * v27] + v29;
      v32 = *(a1 + 56);
      v31 = *(a1 + 64);
      v33 = 8 * *(a1 + 84);
      if ((v33 - 1) >> 32)
      {
        v34 = 1;
      }

      else
      {
        v34 = 8 * v26 == 0;
      }

      if (v34)
      {
        for (i = 0; i != v25; ++i)
        {
          v36 = 0;
          do
          {
            v30[v36] = *(v32 + v36);
            ++v36;
          }

          while (v33 > v36);
          v30 += 128;
          v32 += v31;
        }
      }

      else
      {
        v38 = v32 < &v61[8 * v25 - 8 + 8 * v27] + v33 + v29 && v30 < v32 + v31 * (v25 - 1) + v33 || v31 < 0;
        if (v38)
        {
          for (j = 0; j != v25; ++j)
          {
            v40 = 0;
            do
            {
              v30[v40] = *(v32 + v40);
              ++v40;
            }

            while (v33 > v40);
            v30 += 128;
            v32 += v31;
          }
        }

        else if (v26 >= 4)
        {
          v44 = 0;
          v45 = v26 & 3;
          v46 = v61 + v28 + v29;
          v47 = &v61[1] + v28 + v29;
          v48 = (v32 + 16);
          v49 = (v32 + (v33 & 0x1FFFFFFE0));
          v50 = &v46[v33 & 0x1FFFFFFE0];
          do
          {
            v51 = v48;
            v52 = v47;
            v53 = v33 & 0x1FFFFFFE0;
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
            if (v33 != (v33 & 0x1FFFFFFE0))
            {
              v55 = v50;
              v56 = v49;
              v57 = v33 - (v33 & 0x1FFFFFFE0);
              if (v45)
              {
                do
                {
                  v58 = *v56++;
                  *v55 = v58;
                  v55 += 8;
                  v57 -= 8;
                }

                while (v57);
              }

              else
              {
                v59 = 0;
                v60 = (v33 & 0xFFFFFFE0) + 1;
                do
                {
                  v50[v59] = *(v49 + v59);
                  v38 = v33 > v60++;
                  ++v59;
                }

                while (v38);
              }
            }

            ++v44;
            v47 += 128;
            v48 = (v48 + v31);
            v49 = (v49 + v31);
            v50 += 128;
          }

          while (v44 != v25);
        }

        else
        {
          v42 = (v32 + 16);
          v43 = (&v61[1] + v28 + v29);
          do
          {
            *(v43 - 2) = *(v42 - 2);
            if (v26 != 1)
            {
              *(v43 - 1) = *(v42 - 1);
              if (v26 != 2)
              {
                *v43 = *v42;
              }
            }

            v42 = (v42 + v31);
            v43 += 16;
            --v25;
          }

          while (v25);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v61, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FD5;
  v5 = 16;
  do
  {
    v8 = &v61[512 * *v4 + 64 * *(v4 - 1)];
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
      *v8 = *v2;
      v8[1] = v17;
      v8[2] = v18;
      v8[3] = v19;
      v8[8] = v10;
      v8[9] = v11;
      v8[10] = v12;
      v8[11] = v14;
      v8[16] = v13;
      v8[17] = v24;
      v8[18] = v15;
      v8[19] = v16;
      v7 = 256;
      v8[24] = v20;
      v8[25] = v21;
      v8[26] = v22;
      v8[27] = v23;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *v8 = v6;
      v8[1] = v6;
      v8[2] = v6;
      v8[3] = v6;
      v8[8] = v6;
      v8[9] = v6;
      v8[10] = v6;
      v8[11] = v6;
      v8[16] = v6;
      v8[17] = v6;
      v8[18] = v6;
      v8[19] = v6;
      v8[24] = v6;
      v8[25] = v6;
      v8[26] = v6;
      v8[27] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 128, v2, v9);
    }

    else
    {
      v7 = 0;
      v8[2] = 0u;
      v8[3] = 0u;
      *v8 = 0u;
      v8[1] = 0u;
      v8[8] = 0u;
      v8[9] = 0u;
      v8[10] = 0u;
      v8[11] = 0u;
      v8[16] = 0u;
      v8[17] = 0u;
      v8[18] = 0u;
      v8[19] = 0u;
      v8[24] = 0u;
      v8[25] = 0u;
      v8[26] = 0u;
      v8[27] = 0u;
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
    v26 = *(a1 + 84);
    if (v26)
    {
      v27 = *(a1 + 72);
      v28 = v27 << 7;
      v29 = 8 * *(a1 + 76);
      v30 = &v61[128 * v27 + v29];
      v32 = *(a1 + 56);
      v31 = *(a1 + 64);
      v33 = 8 * *(a1 + 84);
      if ((v33 - 1) >> 32)
      {
        v34 = 1;
      }

      else
      {
        v34 = 8 * v26 == 0;
      }

      if (v34)
      {
        for (i = 0; i != v25; ++i)
        {
          v36 = 0;
          do
          {
            v30[v36] = *(v32 + v36);
            ++v36;
          }

          while (v33 > v36);
          v30 += 128;
          v32 += v31;
        }
      }

      else
      {
        v38 = v32 < &v61[128 * v25 - 128 + 128 * v27 + v33 + v29] && v30 < v32 + v31 * (v25 - 1) + v33 || v31 < 0;
        if (v38)
        {
          for (j = 0; j != v25; ++j)
          {
            v40 = 0;
            do
            {
              v30[v40] = *(v32 + v40);
              ++v40;
            }

            while (v33 > v40);
            v30 += 128;
            v32 += v31;
          }
        }

        else if (v26 >= 4)
        {
          v44 = 0;
          v45 = v26 & 3;
          v46 = &v61[v28 + v29];
          v47 = &v61[v28 + 16 + v29];
          v48 = (v32 + 16);
          v49 = (v32 + (v33 & 0x1FFFFFFE0));
          v50 = &v46[v33 & 0x1FFFFFFE0];
          do
          {
            v51 = v48;
            v52 = v47;
            v53 = v33 & 0x1FFFFFFE0;
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
            if (v33 != (v33 & 0x1FFFFFFE0))
            {
              v55 = v50;
              v56 = v49;
              v57 = v33 - (v33 & 0x1FFFFFFE0);
              if (v45)
              {
                do
                {
                  v58 = *v56++;
                  *v55++ = v58;
                  v57 -= 8;
                }

                while (v57);
              }

              else
              {
                v59 = 0;
                v60 = (v33 & 0xFFFFFFE0) + 1;
                do
                {
                  *(v50 + v59) = *(v49 + v59);
                  v38 = v33 > v60++;
                  ++v59;
                }

                while (v38);
              }
            }

            ++v44;
            v47 += 128;
            v48 = (v48 + v31);
            v49 = (v49 + v31);
            v50 += 16;
          }

          while (v44 != v25);
        }

        else
        {
          v42 = (v32 + 16);
          v43 = &v61[v28 + 16 + v29];
          do
          {
            *(v43 - 2) = *(v42 - 2);
            if (v26 != 1)
            {
              *(v43 - 1) = *(v42 - 1);
              if (v26 != 2)
              {
                *v43 = *v42;
              }
            }

            v42 = (v42 + v31);
            v43 += 16;
            --v25;
          }

          while (v25);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v61, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

float32x2x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int32x4_t a3)
{
  v59 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v58, *(a1 + 40), *(a1 + 48), a2, a3);
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 84);
    if (v5)
    {
      v6 = *(a1 + 72);
      v7 = 2 * v6;
      v8 = 2 * *(a1 + 76);
      v9 = &v58[2 * v6] + v8;
      v11 = *(a1 + 56);
      v10 = *(a1 + 64);
      v12 = 2 * v5;
      v13 = &v58[2 * v4 - 2 + 2 * v6] + 2 * v5 + v8;
      v16 = v9 < v11 + v10 * (v4 - 1) + 2 * v5 && v11 < v13 || v10 < 0;
      if (v5 > 3)
      {
        if (!v12 || (v12 - 1) >> 32)
        {
          for (i = 0; i != v4; ++i)
          {
            v22 = 0;
            do
            {
              v9[v22] = *(v11 + v22);
              ++v22;
            }

            while (v12 > v22);
            v9 += 32;
            v11 += v10;
          }
        }

        else if (v16)
        {
          for (j = 0; j != v4; ++j)
          {
            v20 = 0;
            do
            {
              v9[v20] = *(v11 + v20);
              ++v20;
            }

            while (v12 > v20);
            v9 += 32;
            v11 += v10;
          }
        }

        else
        {
          v24 = v12 & 0x1FFFFFFF8;
          if (v5 > 0xF)
          {
            v27 = v12 & 0x1FFFFFFE0;
            if (v12 == (v12 & 0x1FFFFFFE0))
            {
              v28 = 0;
              v29 = &v58[v7 + 1] + v8;
              v30 = (v11 + 16);
              do
              {
                v31 = v30;
                v32 = v29;
                v33 = v12;
                do
                {
                  v34 = *v31;
                  *(v32 - 1) = *(v31 - 1);
                  *v32 = v34;
                  v32 += 2;
                  v31 += 2;
                  v33 -= 32;
                }

                while (v33);
                ++v28;
                v29 += 32;
                v30 = (v30 + v10);
              }

              while (v28 != v4);
            }

            else
            {
              v42 = 0;
              v43 = v5 & 0xC;
              v44 = &v58[v7] + v8;
              v45 = &v58[v7 + 1] + v8;
              v46 = (v11 + 16);
              v47 = (v11 + v27);
              v48 = &v44[v27];
              do
              {
                v49 = v46;
                v50 = v45;
                v51 = v12 & 0x1FFFFFFE0;
                do
                {
                  v52 = *v49;
                  *(v50 - 1) = *(v49 - 1);
                  *v50 = v52;
                  v50 += 2;
                  v49 += 2;
                  v51 -= 32;
                }

                while (v51);
                v53 = v12 & 0x1FFFFFFE0;
                if (!v43)
                {
                  goto LABEL_64;
                }

                v54 = v48;
                v55 = v47;
                v56 = v24 - v27;
                do
                {
                  v57 = *v55++;
                  *v54 = v57;
                  v54 += 8;
                  v56 -= 8;
                }

                while (v56);
                v53 = v12 & 0x1FFFFFFF8;
                if (v12 != v24)
                {
LABEL_64:
                  do
                  {
                    v9[v53] = *(v11 + v53);
                    ++v53;
                  }

                  while (v12 > v53);
                }

                ++v42;
                v45 += 32;
                v46 = (v46 + v10);
                v47 = (v47 + v10);
                v48 += 32;
                v9 += 32;
                v11 += v10;
              }

              while (v42 != v4);
            }
          }

          else if (v12 == v24)
          {
            v25 = (v11 + 16);
            v26 = (&v58[v7 + 1] + v8);
            do
            {
              v26[-1].val[0] = v25[-2];
              if (v5 != 4)
              {
                v26[-1].val[1] = v25[-1];
                if (v5 != 8)
                {
                  v26->val[0] = *v25;
                }
              }

              v25 = (v25 + v10);
              v26 += 2;
              --v4;
            }

            while (v4);
          }

          else
          {
            for (k = 0; k != v4; ++k)
            {
              v36 = (v11 + v10 * k);
              v37 = &v9[32 * k];
              *v37 = *v36;
              if (v24 != 8)
              {
                *(v37 + 1) = v36[1];
                if (v24 != 16)
                {
                  *(v37 + 2) = v36[2];
                }
              }

              v38 = &v37[v24];
              v39 = v36 + v24;
              v40 = v12 & 0x18;
              do
              {
                v41 = *v39++;
                *v38++ = v41;
                ++v40;
              }

              while (v12 > v40);
            }
          }
        }
      }

      else
      {
        for (m = 0; m != v4; ++m)
        {
          v18 = 0;
          do
          {
            v9[v18] = *(v11 + v18);
            ++v18;
          }

          while (v18 < v12);
          v9 += 32;
          v11 += v10;
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v58, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int32x4_t a3)
{
  v59 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v58, *(a1 + 40), *(a1 + 48), a2, a3);
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 84);
    if (v5)
    {
      v6 = *(a1 + 72);
      v7 = 32 * v6;
      v8 = 2 * *(a1 + 76);
      v9 = &v58[32 * v6 + v8];
      v11 = *(a1 + 56);
      v10 = *(a1 + 64);
      v12 = 2 * v5;
      v13 = &v58[32 * v4 - 32 + 32 * v6 + 2 * v5 + v8];
      v16 = v9 < v11 + v10 * (v4 - 1) + 2 * v5 && v11 < v13 || v10 < 0;
      if (v5 > 3)
      {
        if (!v12 || (v12 - 1) >> 32)
        {
          for (i = 0; i != v4; ++i)
          {
            v22 = 0;
            do
            {
              v9[v22] = *(v11 + v22);
              ++v22;
            }

            while (v12 > v22);
            v9 += 32;
            v11 += v10;
          }
        }

        else if (v16)
        {
          for (j = 0; j != v4; ++j)
          {
            v20 = 0;
            do
            {
              v9[v20] = *(v11 + v20);
              ++v20;
            }

            while (v12 > v20);
            v9 += 32;
            v11 += v10;
          }
        }

        else
        {
          v24 = v12 & 0x1FFFFFFF8;
          if (v5 > 0xF)
          {
            v27 = v12 & 0x1FFFFFFE0;
            if (v12 == (v12 & 0x1FFFFFFE0))
            {
              v28 = 0;
              v29 = &v58[v7 + 16 + v8];
              v30 = (v11 + 16);
              do
              {
                v31 = v30;
                v32 = v29;
                v33 = v12;
                do
                {
                  v34 = *v31;
                  *(v32 - 1) = *(v31 - 1);
                  *v32 = v34;
                  v32 += 2;
                  v31 += 2;
                  v33 -= 32;
                }

                while (v33);
                ++v28;
                v29 += 32;
                v30 = (v30 + v10);
              }

              while (v28 != v4);
            }

            else
            {
              v42 = 0;
              v43 = v5 & 0xC;
              v44 = &v58[v7 + v8];
              v45 = &v58[v7 + 16 + v8];
              v46 = (v11 + 16);
              v47 = (v11 + v27);
              v48 = &v44[v27];
              do
              {
                v49 = v46;
                v50 = v45;
                v51 = v12 & 0x1FFFFFFE0;
                do
                {
                  v52 = *v49;
                  *(v50 - 1) = *(v49 - 1);
                  *v50 = v52;
                  v50 += 2;
                  v49 += 2;
                  v51 -= 32;
                }

                while (v51);
                v53 = v12 & 0x1FFFFFFE0;
                if (!v43)
                {
                  goto LABEL_64;
                }

                v54 = v48;
                v55 = v47;
                v56 = v24 - v27;
                do
                {
                  v57 = *v55++;
                  *v54++ = v57;
                  v56 -= 8;
                }

                while (v56);
                v53 = v12 & 0x1FFFFFFF8;
                if (v12 != v24)
                {
LABEL_64:
                  do
                  {
                    v9[v53] = *(v11 + v53);
                    ++v53;
                  }

                  while (v12 > v53);
                }

                ++v42;
                v45 += 32;
                v46 = (v46 + v10);
                v47 = (v47 + v10);
                v48 += 4;
                v9 += 32;
                v11 += v10;
              }

              while (v42 != v4);
            }
          }

          else if (v12 == v24)
          {
            v25 = (v11 + 16);
            v26 = &v58[v7 + 16 + v8];
            do
            {
              *(v26 - 2) = *(v25 - 2);
              if (v5 != 4)
              {
                *(v26 - 1) = *(v25 - 1);
                if (v5 != 8)
                {
                  *v26 = *v25;
                }
              }

              v25 = (v25 + v10);
              v26 += 4;
              --v4;
            }

            while (v4);
          }

          else
          {
            for (k = 0; k != v4; ++k)
            {
              v36 = (v11 + v10 * k);
              v37 = &v9[32 * k];
              *v37 = *v36;
              if (v24 != 8)
              {
                v37[1] = v36[1];
                if (v24 != 16)
                {
                  v37[2] = v36[2];
                }
              }

              v38 = v37 + v24;
              v39 = v36 + v24;
              v40 = v12 & 0x18;
              do
              {
                v41 = *v39++;
                *v38++ = v41;
                ++v40;
              }

              while (v12 > v40);
            }
          }
        }
      }

      else
      {
        for (m = 0; m != v4; ++m)
        {
          v18 = 0;
          do
          {
            v9[v18] = *(v11 + v18);
            ++v18;
          }

          while (v18 < v12);
          v9 += 32;
          v11 += v10;
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v58, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

float32x2x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int32x4_t a3)
{
  v59 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v58, *(a1 + 40), *(a1 + 48), a2, a3);
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 84);
    if (v5)
    {
      v6 = *(a1 + 72);
      v7 = 2 * v6;
      v8 = 2 * *(a1 + 76);
      v9 = &v58[2 * v6] + v8;
      v11 = *(a1 + 56);
      v10 = *(a1 + 64);
      v12 = 2 * v5;
      v13 = &v58[2 * v4 - 2 + 2 * v6] + 2 * v5 + v8;
      v16 = v9 < v11 + v10 * (v4 - 1) + 2 * v5 && v11 < v13 || v10 < 0;
      if (v5 > 3)
      {
        if (!v12 || (v12 - 1) >> 32)
        {
          for (i = 0; i != v4; ++i)
          {
            v22 = 0;
            do
            {
              v9[v22] = *(v11 + v22);
              ++v22;
            }

            while (v12 > v22);
            v9 += 32;
            v11 += v10;
          }
        }

        else if (v16)
        {
          for (j = 0; j != v4; ++j)
          {
            v20 = 0;
            do
            {
              v9[v20] = *(v11 + v20);
              ++v20;
            }

            while (v12 > v20);
            v9 += 32;
            v11 += v10;
          }
        }

        else
        {
          v24 = v12 & 0x1FFFFFFF8;
          if (v5 > 0xF)
          {
            v27 = v12 & 0x1FFFFFFE0;
            if (v12 == (v12 & 0x1FFFFFFE0))
            {
              v28 = 0;
              v29 = &v58[v7 + 1] + v8;
              v30 = (v11 + 16);
              do
              {
                v31 = v30;
                v32 = v29;
                v33 = v12;
                do
                {
                  v34 = *v31;
                  *(v32 - 1) = *(v31 - 1);
                  *v32 = v34;
                  v32 += 2;
                  v31 += 2;
                  v33 -= 32;
                }

                while (v33);
                ++v28;
                v29 += 32;
                v30 = (v30 + v10);
              }

              while (v28 != v4);
            }

            else
            {
              v42 = 0;
              v43 = v5 & 0xC;
              v44 = &v58[v7] + v8;
              v45 = &v58[v7 + 1] + v8;
              v46 = (v11 + 16);
              v47 = (v11 + v27);
              v48 = &v44[v27];
              do
              {
                v49 = v46;
                v50 = v45;
                v51 = v12 & 0x1FFFFFFE0;
                do
                {
                  v52 = *v49;
                  *(v50 - 1) = *(v49 - 1);
                  *v50 = v52;
                  v50 += 2;
                  v49 += 2;
                  v51 -= 32;
                }

                while (v51);
                v53 = v12 & 0x1FFFFFFE0;
                if (!v43)
                {
                  goto LABEL_64;
                }

                v54 = v48;
                v55 = v47;
                v56 = v24 - v27;
                do
                {
                  v57 = *v55++;
                  *v54 = v57;
                  v54 += 8;
                  v56 -= 8;
                }

                while (v56);
                v53 = v12 & 0x1FFFFFFF8;
                if (v12 != v24)
                {
LABEL_64:
                  do
                  {
                    v9[v53] = *(v11 + v53);
                    ++v53;
                  }

                  while (v12 > v53);
                }

                ++v42;
                v45 += 32;
                v46 = (v46 + v10);
                v47 = (v47 + v10);
                v48 += 32;
                v9 += 32;
                v11 += v10;
              }

              while (v42 != v4);
            }
          }

          else if (v12 == v24)
          {
            v25 = (v11 + 16);
            v26 = (&v58[v7 + 1] + v8);
            do
            {
              v26[-1].val[0] = v25[-2];
              if (v5 != 4)
              {
                v26[-1].val[1] = v25[-1];
                if (v5 != 8)
                {
                  v26->val[0] = *v25;
                }
              }

              v25 = (v25 + v10);
              v26 += 2;
              --v4;
            }

            while (v4);
          }

          else
          {
            for (k = 0; k != v4; ++k)
            {
              v36 = (v11 + v10 * k);
              v37 = &v9[32 * k];
              *v37 = *v36;
              if (v24 != 8)
              {
                *(v37 + 1) = v36[1];
                if (v24 != 16)
                {
                  *(v37 + 2) = v36[2];
                }
              }

              v38 = &v37[v24];
              v39 = v36 + v24;
              v40 = v12 & 0x18;
              do
              {
                v41 = *v39++;
                *v38++ = v41;
                ++v40;
              }

              while (v12 > v40);
            }
          }
        }
      }

      else
      {
        for (m = 0; m != v4; ++m)
        {
          v18 = 0;
          do
          {
            v9[v18] = *(v11 + v18);
            ++v18;
          }

          while (v18 < v12);
          v9 += 32;
          v11 += v10;
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v58, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int32x4_t a3)
{
  v59 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v58, *(a1 + 40), *(a1 + 48), a2, a3);
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 84);
    if (v5)
    {
      v6 = *(a1 + 72);
      v7 = 32 * v6;
      v8 = 2 * *(a1 + 76);
      v9 = &v58[32 * v6 + v8];
      v11 = *(a1 + 56);
      v10 = *(a1 + 64);
      v12 = 2 * v5;
      v13 = &v58[32 * v4 - 32 + 32 * v6 + 2 * v5 + v8];
      v16 = v9 < v11 + v10 * (v4 - 1) + 2 * v5 && v11 < v13 || v10 < 0;
      if (v5 > 3)
      {
        if (!v12 || (v12 - 1) >> 32)
        {
          for (i = 0; i != v4; ++i)
          {
            v22 = 0;
            do
            {
              v9[v22] = *(v11 + v22);
              ++v22;
            }

            while (v12 > v22);
            v9 += 32;
            v11 += v10;
          }
        }

        else if (v16)
        {
          for (j = 0; j != v4; ++j)
          {
            v20 = 0;
            do
            {
              v9[v20] = *(v11 + v20);
              ++v20;
            }

            while (v12 > v20);
            v9 += 32;
            v11 += v10;
          }
        }

        else
        {
          v24 = v12 & 0x1FFFFFFF8;
          if (v5 > 0xF)
          {
            v27 = v12 & 0x1FFFFFFE0;
            if (v12 == (v12 & 0x1FFFFFFE0))
            {
              v28 = 0;
              v29 = &v58[v7 + 16 + v8];
              v30 = (v11 + 16);
              do
              {
                v31 = v30;
                v32 = v29;
                v33 = v12;
                do
                {
                  v34 = *v31;
                  *(v32 - 1) = *(v31 - 1);
                  *v32 = v34;
                  v32 += 2;
                  v31 += 2;
                  v33 -= 32;
                }

                while (v33);
                ++v28;
                v29 += 32;
                v30 = (v30 + v10);
              }

              while (v28 != v4);
            }

            else
            {
              v42 = 0;
              v43 = v5 & 0xC;
              v44 = &v58[v7 + v8];
              v45 = &v58[v7 + 16 + v8];
              v46 = (v11 + 16);
              v47 = (v11 + v27);
              v48 = &v44[v27];
              do
              {
                v49 = v46;
                v50 = v45;
                v51 = v12 & 0x1FFFFFFE0;
                do
                {
                  v52 = *v49;
                  *(v50 - 1) = *(v49 - 1);
                  *v50 = v52;
                  v50 += 2;
                  v49 += 2;
                  v51 -= 32;
                }

                while (v51);
                v53 = v12 & 0x1FFFFFFE0;
                if (!v43)
                {
                  goto LABEL_64;
                }

                v54 = v48;
                v55 = v47;
                v56 = v24 - v27;
                do
                {
                  v57 = *v55++;
                  *v54++ = v57;
                  v56 -= 8;
                }

                while (v56);
                v53 = v12 & 0x1FFFFFFF8;
                if (v12 != v24)
                {
LABEL_64:
                  do
                  {
                    v9[v53] = *(v11 + v53);
                    ++v53;
                  }

                  while (v12 > v53);
                }

                ++v42;
                v45 += 32;
                v46 = (v46 + v10);
                v47 = (v47 + v10);
                v48 += 4;
                v9 += 32;
                v11 += v10;
              }

              while (v42 != v4);
            }
          }

          else if (v12 == v24)
          {
            v25 = (v11 + 16);
            v26 = &v58[v7 + 16 + v8];
            do
            {
              *(v26 - 2) = *(v25 - 2);
              if (v5 != 4)
              {
                *(v26 - 1) = *(v25 - 1);
                if (v5 != 8)
                {
                  *v26 = *v25;
                }
              }

              v25 = (v25 + v10);
              v26 += 4;
              --v4;
            }

            while (v4);
          }

          else
          {
            for (k = 0; k != v4; ++k)
            {
              v36 = (v11 + v10 * k);
              v37 = &v9[32 * k];
              *v37 = *v36;
              if (v24 != 8)
              {
                v37[1] = v36[1];
                if (v24 != 16)
                {
                  v37[2] = v36[2];
                }
              }

              v38 = v37 + v24;
              v39 = v36 + v24;
              v40 = v12 & 0x18;
              do
              {
                v41 = *v39++;
                *v38++ = v41;
                ++v40;
              }

              while (v12 > v40);
            }
          }
        }
      }

      else
      {
        for (m = 0; m != v4; ++m)
        {
          v18 = 0;
          do
          {
            v9[v18] = *(v11 + v18);
            ++v18;
          }

          while (v18 < v12);
          v9 += 32;
          v11 += v10;
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v58, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v67 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v66, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 7;
      v7 = 8 * *(a1 + 76);
      v8 = &v66[8 * v5] + v7;
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 8 * *(a1 + 84);
      result = (v11 - 1) >> 32;
      if (result)
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

      else
      {
        result = v11 + v7;
        if (v10 < &v66[8 * v3 - 8 + 8 * v5] + v11 + v7 && v8 < v10 + v9 * (v3 - 1) + v11 || v9 < 0)
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
          v49 = 0;
          v50 = v4 & 3;
          v51 = v66 + v6 + v7;
          v52 = &v66[1] + v6 + v7;
          v53 = (v10 + 16);
          v54 = (v10 + (v11 & 0x1FFFFFFE0));
          result = &v51[v11 & 0x1FFFFFFE0];
          do
          {
            v55 = v53;
            v56 = v52;
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
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v59 = result;
              v60 = v54;
              v61 = v11 - (v11 & 0x1FFFFFFE0);
              if (v50)
              {
                do
                {
                  v62 = *v60++;
                  *v59++ = v62;
                  v61 -= 8;
                }

                while (v61);
              }

              else
              {
                v63 = 0;
                v64 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v63) = *(v54 + v63);
                  v65 = v11 > v64++;
                  ++v63;
                }

                while (v65);
              }
            }

            ++v49;
            v52 += 128;
            v53 = (v53 + v9);
            v54 = (v54 + v9);
            result += 128;
          }

          while (v49 != v3);
        }

        else
        {
          v47 = (v10 + 16);
          v48 = (v66[1].f64 + v6 + v7);
          do
          {
            *(v48 - 2) = *(v47 - 2);
            if (v4 != 1)
            {
              *(v48 - 1) = *(v47 - 1);
              if (v4 != 2)
              {
                *v48 = *v47;
              }
            }

            v47 = (v47 + v9);
            v48 += 16;
            --v3;
          }

          while (v3);
        }
      }
    }
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 88);
  v22 = &byte_29D2F2FD5;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v44 = *v22;
    v45 = *(v22 - 1);
    if (v21 <= 8 * v45 || 4 * v44 >= v24)
    {
      v43 = 0;
    }

    else
    {
      v25 = &v66[32 * v44 + 4 * v45];
      v26 = v25[2];
      v27 = v25[10];
      v28 = v25[3];
      v29 = v25[11];
      v30 = *v25;
      v31 = v25[8];
      v32 = v25[1];
      v33 = v25[16];
      v34 = v25[17];
      v35 = v25[18];
      v36 = v25[19];
      v37 = v25[9];
      v25 += 24;
      v38 = v25[1];
      v39 = v25[2];
      v40 = v25[3];
      v41 = *v25;
      *v19 = v30;
      v19[1] = v31;
      v19[2] = v32;
      v19[3] = v37;
      v19[4] = v33;
      v19[5] = v41;
      v19[6] = v34;
      v19[7] = v38;
      v19[8] = v26;
      v19[9] = v27;
      v19[10] = v28;
      v19[11] = v29;
      v42 = v19 + 12;
      v19 += 16;
      v43 = -1;
      *v42 = v35;
      v42[1] = v39;
      v42[2] = v36;
      v42[3] = v40;
    }

    *v20++ = v43;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v39, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 7;
      v6 = 8 * *(a1 + 76);
      v7 = &v39[8 * v4] + v6;
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 8 * *(a1 + 84);
      if ((v10 - 1) >> 32)
      {
        v11 = 1;
      }

      else
      {
        v11 = 8 * v3 == 0;
      }

      if (v11)
      {
        for (i = 0; i != v2; ++i)
        {
          v13 = 0;
          do
          {
            v7[v13] = *(v9 + v13);
            ++v13;
          }

          while (v10 > v13);
          v7 += 128;
          v9 += v8;
        }
      }

      else if (v9 < &v39[8 * v2 - 8 + 8 * v4] + v10 + v6 && v7 < v9 + v8 * (v2 - 1) + v10 || v8 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v17 = 0;
          do
          {
            v7[v17] = *(v9 + v17);
            ++v17;
          }

          while (v10 > v17);
          v7 += 128;
          v9 += v8;
        }
      }

      else if (v3 >= 4)
      {
        v21 = 0;
        v22 = v3 & 3;
        v23 = v39 + v5 + v6;
        v24 = &v39[1] + v5 + v6;
        v25 = (v9 + 16);
        v26 = (v9 + (v10 & 0x1FFFFFFE0));
        v27 = &v23[v10 & 0x1FFFFFFE0];
        do
        {
          v28 = v25;
          v29 = v24;
          v30 = v10 & 0x1FFFFFFE0;
          do
          {
            v31 = *v28;
            *(v29 - 1) = *(v28 - 1);
            *v29 = v31;
            v29 += 2;
            v28 += 2;
            v30 -= 32;
          }

          while (v30);
          if (v10 != (v10 & 0x1FFFFFFE0))
          {
            v32 = v27;
            v33 = v26;
            v34 = v10 - (v10 & 0x1FFFFFFE0);
            if (v22)
            {
              do
              {
                v35 = *v33++;
                *v32 = v35;
                v32 += 8;
                v34 -= 8;
              }

              while (v34);
            }

            else
            {
              v36 = 0;
              v37 = (v10 & 0xFFFFFFE0) + 1;
              do
              {
                v27[v36] = *(v26 + v36);
                v38 = v10 > v37++;
                ++v36;
              }

              while (v38);
            }
          }

          ++v21;
          v24 += 128;
          v25 = (v25 + v8);
          v26 = (v26 + v8);
          v27 += 128;
        }

        while (v21 != v2);
      }

      else
      {
        v19 = (v9 + 16);
        v20 = (v39[1].f64 + v5 + v6);
        do
        {
          *(v20 - 2) = *(v19 - 2);
          if (v3 != 1)
          {
            *(v20 - 1) = *(v19 - 1);
            if (v3 != 2)
            {
              *v20 = *v19;
            }
          }

          v19 = (v19 + v8);
          v20 += 16;
          --v2;
        }

        while (v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v39, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v67 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v66, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 7;
      v7 = 8 * *(a1 + 76);
      v8 = &v66[8 * v5] + v7;
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 8 * *(a1 + 84);
      result = (v11 - 1) >> 32;
      if (result)
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

      else
      {
        result = v11 + v7;
        if (v10 < &v66[8 * v3 - 8 + 8 * v5] + v11 + v7 && v8 < v10 + v9 * (v3 - 1) + v11 || v9 < 0)
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
          v49 = 0;
          v50 = v4 & 3;
          v51 = v66 + v6 + v7;
          v52 = &v66[1] + v6 + v7;
          v53 = (v10 + 16);
          v54 = (v10 + (v11 & 0x1FFFFFFE0));
          result = &v51[v11 & 0x1FFFFFFE0];
          do
          {
            v55 = v53;
            v56 = v52;
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
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v59 = result;
              v60 = v54;
              v61 = v11 - (v11 & 0x1FFFFFFE0);
              if (v50)
              {
                do
                {
                  v62 = *v60++;
                  *v59++ = v62;
                  v61 -= 8;
                }

                while (v61);
              }

              else
              {
                v63 = 0;
                v64 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v63) = *(v54 + v63);
                  v65 = v11 > v64++;
                  ++v63;
                }

                while (v65);
              }
            }

            ++v49;
            v52 += 128;
            v53 = (v53 + v9);
            v54 = (v54 + v9);
            result += 128;
          }

          while (v49 != v3);
        }

        else
        {
          v47 = (v10 + 16);
          v48 = (v66[1].f64 + v6 + v7);
          do
          {
            *(v48 - 2) = *(v47 - 2);
            if (v4 != 1)
            {
              *(v48 - 1) = *(v47 - 1);
              if (v4 != 2)
              {
                *v48 = *v47;
              }
            }

            v47 = (v47 + v9);
            v48 += 16;
            --v3;
          }

          while (v3);
        }
      }
    }
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 88);
  v22 = &byte_29D2F2FD5;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v44 = *v22;
    v45 = *(v22 - 1);
    if (v21 <= 8 * v45 || 4 * v44 >= v24)
    {
      v43 = 0;
    }

    else
    {
      v25 = &v66[32 * v44 + 4 * v45];
      v26 = v25[2];
      v27 = v25[10];
      v28 = v25[3];
      v29 = v25[11];
      v30 = *v25;
      v31 = v25[8];
      v32 = v25[1];
      v33 = v25[16];
      v34 = v25[17];
      v35 = v25[18];
      v36 = v25[19];
      v37 = v25[9];
      v25 += 24;
      v38 = v25[1];
      v39 = v25[2];
      v40 = v25[3];
      v41 = *v25;
      *v19 = v30;
      v19[1] = v31;
      v19[2] = v32;
      v19[3] = v37;
      v19[4] = v33;
      v19[5] = v41;
      v19[6] = v34;
      v19[7] = v38;
      v19[8] = v26;
      v19[9] = v27;
      v19[10] = v28;
      v19[11] = v29;
      v42 = v19 + 12;
      v19 += 16;
      v43 = -1;
      *v42 = v35;
      v42[1] = v39;
      v42[2] = v36;
      v42[3] = v40;
    }

    *v20++ = v43;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v39, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 7;
      v6 = 8 * *(a1 + 76);
      v7 = &v39[8 * v4] + v6;
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 8 * *(a1 + 84);
      if ((v10 - 1) >> 32)
      {
        v11 = 1;
      }

      else
      {
        v11 = 8 * v3 == 0;
      }

      if (v11)
      {
        for (i = 0; i != v2; ++i)
        {
          v13 = 0;
          do
          {
            v7[v13] = *(v9 + v13);
            ++v13;
          }

          while (v10 > v13);
          v7 += 128;
          v9 += v8;
        }
      }

      else if (v9 < &v39[8 * v2 - 8 + 8 * v4] + v10 + v6 && v7 < v9 + v8 * (v2 - 1) + v10 || v8 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v17 = 0;
          do
          {
            v7[v17] = *(v9 + v17);
            ++v17;
          }

          while (v10 > v17);
          v7 += 128;
          v9 += v8;
        }
      }

      else if (v3 >= 4)
      {
        v21 = 0;
        v22 = v3 & 3;
        v23 = v39 + v5 + v6;
        v24 = &v39[1] + v5 + v6;
        v25 = (v9 + 16);
        v26 = (v9 + (v10 & 0x1FFFFFFE0));
        v27 = &v23[v10 & 0x1FFFFFFE0];
        do
        {
          v28 = v25;
          v29 = v24;
          v30 = v10 & 0x1FFFFFFE0;
          do
          {
            v31 = *v28;
            *(v29 - 1) = *(v28 - 1);
            *v29 = v31;
            v29 += 2;
            v28 += 2;
            v30 -= 32;
          }

          while (v30);
          if (v10 != (v10 & 0x1FFFFFFE0))
          {
            v32 = v27;
            v33 = v26;
            v34 = v10 - (v10 & 0x1FFFFFFE0);
            if (v22)
            {
              do
              {
                v35 = *v33++;
                *v32 = v35;
                v32 += 8;
                v34 -= 8;
              }

              while (v34);
            }

            else
            {
              v36 = 0;
              v37 = (v10 & 0xFFFFFFE0) + 1;
              do
              {
                v27[v36] = *(v26 + v36);
                v38 = v10 > v37++;
                ++v36;
              }

              while (v38);
            }
          }

          ++v21;
          v24 += 128;
          v25 = (v25 + v8);
          v26 = (v26 + v8);
          v27 += 128;
        }

        while (v21 != v2);
      }

      else
      {
        v19 = (v9 + 16);
        v20 = (v39[1].f64 + v5 + v6);
        do
        {
          *(v20 - 2) = *(v19 - 2);
          if (v3 != 1)
          {
            *(v20 - 1) = *(v19 - 1);
            if (v3 != 2)
            {
              *v20 = *v19;
            }
          }

          v19 = (v19 + v8);
          v20 += 16;
          --v2;
        }

        while (v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v39, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
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
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 64, v2, v9);
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

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
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
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 64, v2, v9);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v79, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
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
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 64, v2, v9);
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

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
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
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 64, v2, v9);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v79, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v84, *(a1 + 40), *(a1 + 48));
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

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v63, *(a1 + 40), *(a1 + 48));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v63, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj1ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v84, *(a1 + 40), *(a1 + 48));
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

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj1ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v63, *(a1 + 40), *(a1 + 48));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v63, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}