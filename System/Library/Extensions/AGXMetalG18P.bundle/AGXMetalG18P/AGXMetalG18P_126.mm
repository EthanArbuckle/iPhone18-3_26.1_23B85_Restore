uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v26, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = 32 * *(a1 + 76);
      v7 = &v26[256 * v5 + v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 32 * v4;
      if ((v10 - 1) >> 32)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 == 0;
      }

      if (v11)
      {
        for (i = 0; i != v3; ++i)
        {
          v13 = 0;
          do
          {
            v7[v13] = *(v9 + v13);
            ++v13;
          }

          while (v10 > v13);
          v7 += 256;
          v9 += v8;
        }
      }

      else if (v9 < &v26[256 * v3 - 256 + 256 * v5 + v10 + v6] && v7 < v9 + v8 * (v3 - 1) + v10 || v8 < 0)
      {
        for (j = 0; j != v3; ++j)
        {
          v17 = 0;
          do
          {
            v7[v17] = *(v9 + v17);
            ++v17;
          }

          while (v10 > v17);
          v7 += 256;
          v9 += v8;
        }
      }

      else
      {
        v18 = 0;
        v19 = &v26[256 * v5 + 16 + v6];
        v20 = (v9 + 16);
        do
        {
          v21 = v20;
          v22 = v19;
          v23 = v10;
          do
          {
            v24 = *v21;
            *(v22 - 1) = *(v21 - 1);
            *v22 = v24;
            v22 += 2;
            v21 += 2;
            v23 -= 32;
          }

          while (v23);
          ++v18;
          v19 += 256;
          v20 = (v20 + v8);
        }

        while (v18 != v3);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v26, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, __n128 a3, int8x8_t a4)
{
  v52 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(*(v6 + 208) + 52);
  v9 = &byte_29D2F30E1;
  v10 = 16;
  do
  {
    v12 = &v51[128 * *v9 + 16 * *(v9 - 1)];
    v13 = *v7;
    if (*v7)
    {
      if (v13 < 0xF0)
      {
        if (v13 == 31)
        {
          a2.n128_u64[0] = *v5;
          a3.n128_u64[0] = *(v5 + 8);
          a4 = *(v5 + 16);
          v14 = *(v5 + 24);
          v12->n128_u64[0] = *v5;
          v12->n128_u64[1] = a3.n128_u64[0];
          v12[4].n128_f64[0] = *&a4;
          v12[4].n128_u64[1] = v14;
          v11 = 32;
        }

        else if (v13 == 96)
        {
          a2 = vld1q_dup_s8(v5);
          *v12 = a2;
          v12[4] = a2;
          v11 = 1;
        }

        else
        {
          v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v12, 64, v5, v13, a2.n128_f64[0], a3.n128_u64[0]);
        }
      }

      else
      {
        a2.n128_u64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v12, 64, v5, v13, v8).n128_u64[0];
        v11 = 16;
      }
    }

    else
    {
      v11 = 0;
      v12->n128_u64[0] = 0;
      v12->n128_u64[1] = 0;
      v12[4].n128_u64[0] = 0;
      v12[4].n128_u64[1] = 0;
    }

    v5 += v11;
    ++v7;
    v9 += 2;
    v10 -= 2;
  }

  while (v10);
  v15 = *(a1 + 80);
  if (v15)
  {
    v16 = *(a1 + 84);
    if (v16)
    {
      v17 = *(a1 + 72);
      v18 = v17 << 6;
      v19 = 8 * *(a1 + 76);
      v20 = &v51[64 * v17 + v19];
      v22 = *(a1 + 56);
      v21 = *(a1 + 64);
      v23 = 8 * *(a1 + 84);
      if ((v23 - 1) >> 32)
      {
        v24 = 1;
      }

      else
      {
        v24 = 8 * v16 == 0;
      }

      if (v24)
      {
        for (i = 0; i != v15; ++i)
        {
          v26 = 0;
          do
          {
            v20[v26] = v22->n128_u8[v26];
            ++v26;
          }

          while (v23 > v26);
          v20 += 64;
          v22 = (v22 + v21);
        }
      }

      else if (v22 < &v51[64 * v15 - 64 + 64 * v17 + v23 + v19] && v20 < v22 + v21 * (v15 - 1) + v23 || v21 < 0)
      {
        for (j = 0; j != v15; ++j)
        {
          v30 = 0;
          do
          {
            v20[v30] = v22->n128_u8[v30];
            ++v30;
          }

          while (v23 > v30);
          v20 += 64;
          v22 = (v22 + v21);
        }
      }

      else if (v16 >= 4)
      {
        v34 = 0;
        v35 = v16 & 3;
        v36 = &v51[v18 + v19];
        v37 = &v51[v18 + 16 + v19];
        v38 = v22 + 1;
        v39 = (v22->n128_u64 + (v23 & 0x1FFFFFFE0));
        v40 = &v36[v23 & 0x1FFFFFFE0];
        do
        {
          v41 = v38;
          v42 = v37;
          v43 = v23 & 0x1FFFFFFE0;
          do
          {
            a2 = v41[-1];
            a3 = *v41;
            v42[-1] = a2;
            *v42 = a3;
            v42 += 2;
            v41 += 2;
            v43 -= 32;
          }

          while (v43);
          if (v23 != (v23 & 0x1FFFFFFE0))
          {
            v44 = v40;
            v45 = v39;
            v46 = v23 - (v23 & 0x1FFFFFFE0);
            if (v35)
            {
              do
              {
                v47 = *v45++;
                a2.n128_u64[0] = v47;
                *v44++ = v47;
                v46 -= 8;
              }

              while (v46);
            }

            else
            {
              v48 = 0;
              v49 = (v23 & 0xFFFFFFE0) + 1;
              do
              {
                *(v40 + v48) = *(v39 + v48);
                v50 = v23 > v49++;
                ++v48;
              }

              while (v50);
            }
          }

          ++v34;
          v37 += 4;
          v38 = (v38 + v21);
          v39 = (v39 + v21);
          v40 += 8;
        }

        while (v34 != v15);
      }

      else
      {
        n128_u64 = v22[1].n128_u64;
        v33 = &v51[v18 + 16 + v19];
        do
        {
          a2.n128_u64[0] = *(n128_u64 - 2);
          *(v33 - 2) = a2.n128_u64[0];
          if (v16 != 1)
          {
            a2.n128_u64[0] = *(n128_u64 - 1);
            *(v33 - 1) = a2.n128_u64[0];
            if (v16 != 2)
            {
              a2.n128_u64[0] = *n128_u64;
              *v33 = *n128_u64;
            }
          }

          n128_u64 = (n128_u64 + v21);
          v33 += 8;
          --v15;
        }

        while (v15);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v51, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v6 + 208) + 52), a2.n128_u64[0], a3.n128_f64[0], a4);
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj4ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v50[97] = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(v3 + 208) + 52);
  v6 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v47, 512, v2, *v4, v5);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v49, 512, v6, v4[1], v5);
  v8 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v48, 512, v7, v4[2], v5);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v50, 512, v7 + v8, v4[3], v5);
  v10 = *(a1 + 80);
  if (v10)
  {
    v11 = *(a1 + 84);
    if (v11)
    {
      v12 = *(a1 + 72);
      v13 = *(a1 + 76) << 6;
      v14 = &v47[512 * v12 + v13];
      v16 = *(a1 + 56);
      v15 = *(a1 + 64);
      v17 = v11 << 6;
      if ((v17 - 1) >> 32)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17 == 0;
      }

      if (v18)
      {
        for (i = 0; i != v10; ++i)
        {
          v20 = 0;
          do
          {
            v14[v20] = *(v16 + v20);
            ++v20;
          }

          while (v17 > v20);
          v14 += 512;
          v16 += v15;
        }
      }

      else
      {
        result = v17 + v13;
        if (v16 < &v47[512 * v10 - 512 + 512 * v12 + v17 + v13] && v14 < v16 + v15 * (v10 - 1) + v17 || v15 < 0)
        {
          for (j = 0; j != v10; ++j)
          {
            v24 = 0;
            do
            {
              v14[v24] = *(v16 + v24);
              ++v24;
            }

            while (v17 > v24);
            v14 += 512;
            v16 += v15;
          }
        }

        else
        {
          v25 = 0;
          v26 = &v47[512 * v12 + 16 + v13];
          v27 = (v16 + 16);
          do
          {
            v28 = v27;
            v29 = v26;
            v30 = v17;
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
            ++v25;
            v26 += 512;
            v27 = (v27 + v15);
          }

          while (v25 != v10);
        }
      }
    }
  }

  v32 = *(a1 + 40);
  v33 = *(a1 + 48);
  v34 = *(a1 + 88);
  v35 = *(a1 + 89);
  v36 = *(*(v3 + 208) + 52);
  if (v34 && v35)
  {
    if (v35 >= 2)
    {
      v37 = 2;
    }

    else
    {
      v37 = v35;
    }

    if (v34 >= 4)
    {
      v38 = 4;
    }

    else
    {
      v38 = v34;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v32, v33, v47, 512, v38, v37, v36);
    v32 += result;
    v39 = v35 - 2;
  }

  else
  {
    *v33 = 0;
    v39 = v35 - 2;
    if (!v34)
    {
LABEL_47:
      v33[1] = 0;
      goto LABEL_48;
    }
  }

  if (v35 < 3)
  {
    goto LABEL_47;
  }

  if (v39 >= 2)
  {
    v40 = 2;
  }

  else
  {
    v40 = v39;
  }

  if (v34 >= 4)
  {
    v41 = 4;
  }

  else
  {
    v41 = v34;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v32, v33 + 1, v49, 512, v41, v40, v36);
  v32 += result;
LABEL_48:
  v42 = v34 - 4;
  if (v34 >= 5 && v35)
  {
    if (v35 >= 2)
    {
      v43 = 2;
    }

    else
    {
      v43 = v35;
    }

    if (v42 >= 4)
    {
      v44 = 4;
    }

    else
    {
      v44 = v34 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v32, v33 + 2, v48, 512, v44, v43, v36);
    v32 += result;
  }

  else
  {
    v33[2] = 0;
    if (v34 < 5)
    {
LABEL_66:
      v33[3] = 0;
      return result;
    }
  }

  if (v35 < 3)
  {
    goto LABEL_66;
  }

  if (v39 >= 2)
  {
    v45 = 2;
  }

  else
  {
    v45 = v39;
  }

  if (v42 >= 4)
  {
    v46 = 4;
  }

  else
  {
    v46 = v34 - 4;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v32, v33 + 3, v50, 512, v46, v45, v36);
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(v3 + 208) + 52);
  v6 = &byte_29D2F2FE5;
  v7 = 16;
  do
  {
    v9 = &v35[512 * *v6 + 128 * *(v6 - 1)];
    v10 = *v4;
    if (*v4)
    {
      if (v10 < 0xF0)
      {
        if (v10 == 7)
        {
          v11 = vld1q_dup_f64(v2);
          *v9 = v11;
          v9[1] = v11;
          v9[2] = v11;
          v9[3] = v11;
          v9[4] = v11;
          v9[5] = v11;
          v9[6] = v11;
          v9[7] = v11;
          v9[16] = v11;
          v9[17] = v11;
          v9[18] = v11;
          v9[19] = v11;
          v9[20] = v11;
          v9[21] = v11;
          v9[22] = v11;
          v9[23] = v11;
          v8 = 8;
        }

        else
        {
          v8 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v9, 256, v2, v10);
        }
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v9, 256, v2, v10, v5);
        v8 = 128;
      }
    }

    else
    {
      v8 = 0;
      v9[6] = 0u;
      v9[7] = 0u;
      v9[4] = 0u;
      v9[5] = 0u;
      v9[2] = 0u;
      v9[3] = 0u;
      *v9 = 0u;
      v9[1] = 0u;
      v9[16] = 0u;
      v9[17] = 0u;
      v9[18] = 0u;
      v9[19] = 0u;
      v9[20] = 0u;
      v9[21] = 0u;
      v9[22] = 0u;
      v9[23] = 0u;
    }

    v2 = (v2 + v8);
    ++v4;
    v6 += 2;
    v7 -= 2;
  }

  while (v7);
  v12 = *(a1 + 80);
  if (v12)
  {
    v13 = *(a1 + 84);
    if (v13)
    {
      v14 = *(a1 + 72);
      v15 = 32 * *(a1 + 76);
      v16 = &v35[256 * v14 + v15];
      v18 = *(a1 + 56);
      v17 = *(a1 + 64);
      v19 = 32 * v13;
      if ((v19 - 1) >> 32)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19 == 0;
      }

      if (v20)
      {
        for (i = 0; i != v12; ++i)
        {
          v22 = 0;
          do
          {
            v16[v22] = *(v18 + v22);
            ++v22;
          }

          while (v19 > v22);
          v16 += 256;
          v18 += v17;
        }
      }

      else if (v18 < &v35[256 * v12 - 256 + 256 * v14 + v19 + v15] && v16 < v18 + v17 * (v12 - 1) + v19 || v17 < 0)
      {
        for (j = 0; j != v12; ++j)
        {
          v26 = 0;
          do
          {
            v16[v26] = *(v18 + v26);
            ++v26;
          }

          while (v19 > v26);
          v16 += 256;
          v18 += v17;
        }
      }

      else
      {
        v27 = 0;
        v28 = &v35[256 * v14 + 16 + v15];
        v29 = (v18 + 16);
        do
        {
          v30 = v29;
          v31 = v28;
          v32 = v19;
          do
          {
            v33 = *v30;
            *(v31 - 1) = *(v30 - 1);
            *v31 = v33;
            v31 += 2;
            v30 += 2;
            v32 -= 32;
          }

          while (v32);
          ++v27;
          v28 += 256;
          v29 = (v29 + v17);
        }

        while (v27 != v12);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v35, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v3 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, __n128 a3)
{
  v53 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(*(v5 + 208) + 52);
  v8 = &byte_29D2F2FE5;
  v9 = 16;
  do
  {
    v11 = &v52[128 * *v8 + 32 * *(v8 - 1)];
    v12 = *v6;
    if (*v6)
    {
      if (v12 < 0xF0)
      {
        if (v12 == 63)
        {
          a2 = *v4;
          a3 = *(v4 + 16);
          v13 = *(v4 + 32);
          v14 = *(v4 + 48);
          *v11 = *v4;
          *(v11 + 1) = v13;
          *(v11 + 4) = a3;
          *(v11 + 5) = v14;
          v10 = 64;
        }

        else if (v12 == 1)
        {
          a2 = vld1q_dup_s16(v4);
          *v11 = a2;
          *(v11 + 1) = a2;
          *(v11 + 4) = a2;
          *(v11 + 5) = a2;
          v10 = 2;
        }

        else
        {
          v10 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v11, 64, v4, v12, a2.n128_u64[0], a3.n128_u64[0]);
        }
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v11, 64, v4, v12, v7);
        v10 = 32;
      }
    }

    else
    {
      v10 = 0;
      a2.n128_u64[0] = 0;
      *v11 = 0u;
      *(v11 + 1) = 0u;
      *(v11 + 4) = 0u;
      *(v11 + 5) = 0u;
    }

    v4 += v10;
    ++v6;
    v8 += 2;
    v9 -= 2;
  }

  while (v9);
  v15 = *(a1 + 80);
  if (v15)
  {
    v16 = *(a1 + 84);
    if (v16)
    {
      v17 = *(a1 + 72);
      v18 = v17 << 6;
      v19 = 8 * *(a1 + 76);
      v20 = &v52[64 * v17 + v19];
      v22 = *(a1 + 56);
      v21 = *(a1 + 64);
      v23 = 8 * *(a1 + 84);
      if ((v23 - 1) >> 32)
      {
        v24 = 1;
      }

      else
      {
        v24 = 8 * v16 == 0;
      }

      if (v24)
      {
        for (i = 0; i != v15; ++i)
        {
          v26 = 0;
          do
          {
            v20[v26] = *(v22 + v26);
            ++v26;
          }

          while (v23 > v26);
          v20 += 64;
          v22 += v21;
        }
      }

      else if (v22 < &v52[64 * v15 - 64 + 64 * v17 + v23 + v19] && v20 < v22 + v21 * (v15 - 1) + v23 || v21 < 0)
      {
        for (j = 0; j != v15; ++j)
        {
          v30 = 0;
          do
          {
            v20[v30] = *(v22 + v30);
            ++v30;
          }

          while (v23 > v30);
          v20 += 64;
          v22 += v21;
        }
      }

      else if (v16 >= 4)
      {
        v34 = 0;
        v35 = v16 & 3;
        v36 = &v52[v18 + v19];
        v37 = &v52[v18 + 16 + v19];
        v38 = (v22 + 16);
        v39 = (v22 + (v23 & 0x1FFFFFFE0));
        v40 = &v36[v23 & 0x1FFFFFFE0];
        do
        {
          v41 = v38;
          v42 = v37;
          v43 = v23 & 0x1FFFFFFE0;
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
          if (v23 != (v23 & 0x1FFFFFFE0))
          {
            v45 = v40;
            v46 = v39;
            v47 = v23 - (v23 & 0x1FFFFFFE0);
            if (v35)
            {
              do
              {
                v48 = *v46++;
                *v45++ = v48;
                v47 -= 8;
              }

              while (v47);
            }

            else
            {
              v49 = 0;
              v50 = (v23 & 0xFFFFFFE0) + 1;
              do
              {
                *(v40 + v49) = *(v39 + v49);
                v51 = v23 > v50++;
                ++v49;
              }

              while (v51);
            }
          }

          ++v34;
          v37 += 64;
          v38 = (v38 + v21);
          v39 = (v39 + v21);
          v40 += 8;
        }

        while (v34 != v15);
      }

      else
      {
        v32 = (v22 + 16);
        v33 = &v52[v18 + 16 + v19];
        do
        {
          *(v33 - 2) = *(v32 - 2);
          if (v16 != 1)
          {
            *(v33 - 1) = *(v32 - 1);
            if (v16 != 2)
            {
              *v33 = *v32;
            }
          }

          v32 = (v32 + v21);
          v33 += 8;
          --v15;
        }

        while (v15);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v52, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v5 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v26, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = 32 * *(a1 + 76);
      v7 = &v26[256 * v5 + v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 32 * v4;
      if ((v10 - 1) >> 32)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 == 0;
      }

      if (v11)
      {
        for (i = 0; i != v3; ++i)
        {
          v13 = 0;
          do
          {
            v7[v13] = *(v9 + v13);
            ++v13;
          }

          while (v10 > v13);
          v7 += 256;
          v9 += v8;
        }
      }

      else if (v9 < &v26[256 * v3 - 256 + 256 * v5 + v10 + v6] && v7 < v9 + v8 * (v3 - 1) + v10 || v8 < 0)
      {
        for (j = 0; j != v3; ++j)
        {
          v17 = 0;
          do
          {
            v7[v17] = *(v9 + v17);
            ++v17;
          }

          while (v10 > v17);
          v7 += 256;
          v9 += v8;
        }
      }

      else
      {
        v18 = 0;
        v19 = &v26[256 * v5 + 16 + v6];
        v20 = (v9 + 16);
        do
        {
          v21 = v20;
          v22 = v19;
          v23 = v10;
          do
          {
            v24 = *v21;
            *(v22 - 1) = *(v21 - 1);
            *v22 = v24;
            v22 += 2;
            v21 += 2;
            v23 -= 32;
          }

          while (v23);
          ++v18;
          v19 += 256;
          v20 = (v20 + v8);
        }

        while (v18 != v3);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v26, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(v3 + 208) + 52);
  v6 = &byte_29D2F2FE5;
  v7 = 16;
  do
  {
    v9 = &v53[256 * *v6 + 64 * *(v6 - 1)];
    v10 = *v4;
    if (*v4)
    {
      if (v10 < 0xF0)
      {
        if (v10 == 127)
        {
          v12 = *(v2 + 16);
          v13 = *(v2 + 32);
          v14 = *(v2 + 48);
          v15 = *(v2 + 64);
          v16 = *(v2 + 80);
          v17 = *(v2 + 96);
          v18 = *(v2 + 112);
          *v9 = *v2;
          *(v9 + 1) = v12;
          *(v9 + 2) = v15;
          *(v9 + 3) = v16;
          *(v9 + 8) = v13;
          *(v9 + 9) = v14;
          *(v9 + 10) = v17;
          *(v9 + 11) = v18;
          v8 = 128;
        }

        else if (v10 == 3)
        {
          v11 = vld1q_dup_f32(v2);
          *v9 = v11;
          *(v9 + 1) = v11;
          *(v9 + 2) = v11;
          *(v9 + 3) = v11;
          *(v9 + 8) = v11;
          *(v9 + 9) = v11;
          *(v9 + 10) = v11;
          *(v9 + 11) = v11;
          v8 = 4;
        }

        else
        {
          v8 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v9, 128, v2, v10);
        }
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v9, 128, v2, v10, v5);
        v8 = 64;
      }
    }

    else
    {
      v8 = 0;
      *(v9 + 2) = 0u;
      *(v9 + 3) = 0u;
      *v9 = 0u;
      *(v9 + 1) = 0u;
      *(v9 + 8) = 0u;
      *(v9 + 9) = 0u;
      *(v9 + 10) = 0u;
      *(v9 + 11) = 0u;
    }

    v2 += v8;
    ++v4;
    v6 += 2;
    v7 -= 2;
  }

  while (v7);
  v19 = *(a1 + 80);
  if (v19)
  {
    v20 = *(a1 + 84);
    if (v20)
    {
      v21 = *(a1 + 72);
      v22 = v21 << 7;
      v23 = 16 * *(a1 + 76);
      v24 = &v53[128 * v21 + v23];
      v26 = *(a1 + 56);
      v25 = *(a1 + 64);
      v27 = 16 * *(a1 + 84);
      if ((v27 - 1) >> 32)
      {
        v28 = 1;
      }

      else
      {
        v28 = 16 * v20 == 0;
      }

      if (v28)
      {
        for (i = 0; i != v19; ++i)
        {
          v30 = 0;
          do
          {
            *(v24 + v30) = *(v26 + v30);
            ++v30;
          }

          while (v27 > v30);
          v24 += 8;
          v26 = (v26 + v25);
        }
      }

      else if (v26 < &v53[128 * v19 - 128 + 128 * v21 + v27 + v23] && v24 < (v26 + v25 * (v19 - 1) + v27) || v25 < 0)
      {
        for (j = 0; j != v19; ++j)
        {
          v34 = 0;
          do
          {
            *(v24 + v34) = *(v26 + v34);
            ++v34;
          }

          while (v27 > v34);
          v24 += 8;
          v26 = (v26 + v25);
        }
      }

      else if (v20 == 1)
      {
        do
        {
          *v24 = *v26;
          v24 += 8;
          v26 = (v26 + v25);
          --v19;
        }

        while (v19);
      }

      else
      {
        v36 = 0;
        v37 = &v53[v22 + v23];
        v38 = &v53[v22 + 16 + v23];
        v39 = v26 + 1;
        v40 = (v26 + (v27 & 0x1FFFFFFE0));
        v41 = &v37[v27 & 0x1FFFFFFE0];
        do
        {
          v42 = v39;
          v43 = v38;
          v44 = v27 & 0x1FFFFFFE0;
          do
          {
            v45 = *v42;
            *(v43 - 1) = *(v42 - 1);
            *v43 = v45;
            v43 += 2;
            v42 += 2;
            v44 -= 32;
          }

          while (v44);
          if (v27 != (v27 & 0x1FFFFFFE0))
          {
            v46 = v41;
            v47 = v40;
            v48 = v27 - (v27 & 0x1FFFFFFE0);
            if (v20)
            {
              do
              {
                v52 = *v47++;
                *v46++ = v52;
                v48 -= 16;
              }

              while (v48);
            }

            else
            {
              v49 = 0;
              v50 = (v27 & 0xFFFFFFE0) + 1;
              do
              {
                *(v41 + v49) = *(v40 + v49);
                v51 = v27 > v50++;
                ++v49;
              }

              while (v51);
            }
          }

          ++v36;
          v38 += 128;
          v39 = (v39 + v25);
          v40 = (v40 + v25);
          v41 += 8;
        }

        while (v36 != v19);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v53, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v3 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v37, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 7;
      v7 = 16 * *(a1 + 76);
      v8 = &v37[128 * v5 + v7];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 16 * *(a1 + 84);
      if ((v11 - 1) >> 32)
      {
        v12 = 1;
      }

      else
      {
        v12 = 16 * v4 == 0;
      }

      if (v12)
      {
        for (i = 0; i != v3; ++i)
        {
          v14 = 0;
          do
          {
            *(v8 + v14) = *(v10 + v14);
            ++v14;
          }

          while (v11 > v14);
          v8 += 8;
          v10 = (v10 + v9);
        }
      }

      else if (v10 < &v37[128 * v3 - 128 + 128 * v5 + v11 + v7] && v8 < (v10 + v9 * (v3 - 1) + v11) || v9 < 0)
      {
        for (j = 0; j != v3; ++j)
        {
          v18 = 0;
          do
          {
            *(v8 + v18) = *(v10 + v18);
            ++v18;
          }

          while (v11 > v18);
          v8 += 8;
          v10 = (v10 + v9);
        }
      }

      else if (v4 == 1)
      {
        do
        {
          *v8 = *v10;
          v8 += 8;
          v10 = (v10 + v9);
          --v3;
        }

        while (v3);
      }

      else
      {
        v20 = 0;
        v21 = &v37[v6 + v7];
        v22 = &v37[v6 + 16 + v7];
        v23 = v10 + 1;
        v24 = (v10 + (v11 & 0x1FFFFFFE0));
        v25 = &v21[v11 & 0x1FFFFFFE0];
        do
        {
          v26 = v23;
          v27 = v22;
          v28 = v11 & 0x1FFFFFFE0;
          do
          {
            v29 = *v26;
            *(v27 - 1) = *(v26 - 1);
            *v27 = v29;
            v27 += 2;
            v26 += 2;
            v28 -= 32;
          }

          while (v28);
          if (v11 != (v11 & 0x1FFFFFFE0))
          {
            v30 = v25;
            v31 = v24;
            v32 = v11 - (v11 & 0x1FFFFFFE0);
            if (v4)
            {
              do
              {
                v36 = *v31++;
                *v30++ = v36;
                v32 -= 16;
              }

              while (v32);
            }

            else
            {
              v33 = 0;
              v34 = (v11 & 0xFFFFFFE0) + 1;
              do
              {
                *(v25 + v33) = *(v24 + v33);
                v35 = v11 > v34++;
                ++v33;
              }

              while (v35);
            }
          }

          ++v20;
          v22 += 128;
          v23 = (v23 + v9);
          v24 = (v24 + v9);
          v25 += 8;
        }

        while (v20 != v3);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v37, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int16x8_t a2, __n128 a3, __n128 a4, __n128 a5, int16x4_t a6, double a7, double a8, int16x4_t a9)
{
  v56 = *MEMORY[0x29EDCA608];
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(*(v11 + 208) + 52);
  v14 = &byte_29D2F2FE5;
  v15 = 16;
  do
  {
    v17 = &v55[128 * *v14 + 32 * *(v14 - 1)];
    v18 = *v12;
    if (*v12)
    {
      if (v18 < 0xF0)
      {
        if (v18 == 63)
        {
          a2 = *v10;
          a3 = v10[1];
          a4 = v10[2];
          a5 = v10[3];
          *v17 = *v10;
          v17[1] = a4;
          v17[4] = a3;
          v17[5] = a5;
          v16 = 64;
        }

        else if (v18 == 1)
        {
          a2 = vld1q_dup_s16(v10);
          *v17 = a2;
          v17[1] = a2;
          v17[4] = a2;
          v17[5] = a2;
          v16 = 2;
        }

        else
        {
          v16 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v17, 64, v10, v18, *a2.i64, a3.n128_f64[0], a4.n128_f64[0], a5.n128_u64[0]);
        }
      }

      else
      {
        a2.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v17, 64, v10, v18, v13).u64[0];
        v16 = 32;
      }
    }

    else
    {
      v16 = 0;
      a2.i64[0] = 0;
      *v17 = 0u;
      v17[1] = 0u;
      v17[4] = 0u;
      v17[5] = 0u;
    }

    v10 = (v10 + v16);
    ++v12;
    v14 += 2;
    v15 -= 2;
  }

  while (v15);
  v19 = *(a1 + 80);
  if (v19)
  {
    v20 = *(a1 + 84);
    if (v20)
    {
      v21 = *(a1 + 72);
      v22 = v21 << 6;
      v23 = 8 * *(a1 + 76);
      v24 = &v55[64 * v21 + v23];
      v26 = *(a1 + 56);
      v25 = *(a1 + 64);
      v27 = 8 * *(a1 + 84);
      if ((v27 - 1) >> 32)
      {
        v28 = 1;
      }

      else
      {
        v28 = 8 * v20 == 0;
      }

      if (v28)
      {
        for (i = 0; i != v19; ++i)
        {
          v30 = 0;
          do
          {
            v24[v30] = v26->n128_u8[v30];
            ++v30;
          }

          while (v27 > v30);
          v24 += 64;
          v26 = (v26 + v25);
        }
      }

      else if (v26 < &v55[64 * v19 - 64 + 64 * v21 + v27 + v23] && v24 < v26 + v25 * (v19 - 1) + v27 || v25 < 0)
      {
        for (j = 0; j != v19; ++j)
        {
          v34 = 0;
          do
          {
            v24[v34] = v26->n128_u8[v34];
            ++v34;
          }

          while (v27 > v34);
          v24 += 64;
          v26 = (v26 + v25);
        }
      }

      else if (v20 >= 4)
      {
        v38 = 0;
        v39 = v20 & 3;
        v40 = &v55[v22 + v23];
        v41 = &v55[v22 + 16 + v23];
        v42 = v26 + 1;
        v43 = (v26->n128_u64 + (v27 & 0x1FFFFFFE0));
        v44 = &v40[v27 & 0x1FFFFFFE0];
        do
        {
          v45 = v42;
          v46 = v41;
          v47 = v27 & 0x1FFFFFFE0;
          do
          {
            a2 = v45[-1];
            a3 = *v45;
            v46[-1] = a2;
            *v46 = a3;
            v46 += 2;
            v45 += 2;
            v47 -= 32;
          }

          while (v47);
          if (v27 != (v27 & 0x1FFFFFFE0))
          {
            v48 = v44;
            v49 = v43;
            v50 = v27 - (v27 & 0x1FFFFFFE0);
            if (v39)
            {
              do
              {
                v51 = *v49++;
                a2.i64[0] = v51;
                *v48++ = v51;
                v50 -= 8;
              }

              while (v50);
            }

            else
            {
              v52 = 0;
              v53 = (v27 & 0xFFFFFFE0) + 1;
              do
              {
                *(v44 + v52) = *(v43 + v52);
                v54 = v27 > v53++;
                ++v52;
              }

              while (v54);
            }
          }

          ++v38;
          v41 += 4;
          v42 = (v42 + v25);
          v43 = (v43 + v25);
          v44 += 8;
        }

        while (v38 != v19);
      }

      else
      {
        n128_u64 = v26[1].n128_u64;
        v37 = &v55[v22 + 16 + v23];
        do
        {
          a2.i64[0] = *(n128_u64 - 2);
          *(v37 - 2) = a2.i64[0];
          if (v20 != 1)
          {
            a2.i64[0] = *(n128_u64 - 1);
            *(v37 - 1) = a2.i64[0];
            if (v20 != 2)
            {
              a2.i64[0] = *n128_u64;
              *v37 = *n128_u64;
            }
          }

          n128_u64 = (n128_u64 + v25);
          v37 += 8;
          --v19;
        }

        while (v19);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v55, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v11 + 208) + 52), *a2.i8, a3.n128_u64[0], a4.n128_f64[0], a5.n128_f64[0], a6, a7, a8, a9);
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(v3 + 208) + 52);
  v6 = &byte_29D2F2FE5;
  v7 = 16;
  do
  {
    v9 = &v53[256 * *v6 + 64 * *(v6 - 1)];
    v10 = *v4;
    if (*v4)
    {
      if (v10 < 0xF0)
      {
        if (v10 == 127)
        {
          v12 = *(v2 + 16);
          v13 = *(v2 + 32);
          v14 = *(v2 + 48);
          v15 = *(v2 + 64);
          v16 = *(v2 + 80);
          v17 = *(v2 + 96);
          v18 = *(v2 + 112);
          *v9 = *v2;
          *(v9 + 1) = v12;
          *(v9 + 2) = v15;
          *(v9 + 3) = v16;
          *(v9 + 8) = v13;
          *(v9 + 9) = v14;
          *(v9 + 10) = v17;
          *(v9 + 11) = v18;
          v8 = 128;
        }

        else if (v10 == 3)
        {
          v11 = vld1q_dup_f32(v2);
          *v9 = v11;
          *(v9 + 1) = v11;
          *(v9 + 2) = v11;
          *(v9 + 3) = v11;
          *(v9 + 8) = v11;
          *(v9 + 9) = v11;
          *(v9 + 10) = v11;
          *(v9 + 11) = v11;
          v8 = 4;
        }

        else
        {
          v8 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v9, 128, v2, v10);
        }
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v9, 128, v2, v10, v5);
        v8 = 64;
      }
    }

    else
    {
      v8 = 0;
      *(v9 + 2) = 0u;
      *(v9 + 3) = 0u;
      *v9 = 0u;
      *(v9 + 1) = 0u;
      *(v9 + 8) = 0u;
      *(v9 + 9) = 0u;
      *(v9 + 10) = 0u;
      *(v9 + 11) = 0u;
    }

    v2 += v8;
    ++v4;
    v6 += 2;
    v7 -= 2;
  }

  while (v7);
  v19 = *(a1 + 80);
  if (v19)
  {
    v20 = *(a1 + 84);
    if (v20)
    {
      v21 = *(a1 + 72);
      v22 = v21 << 7;
      v23 = 16 * *(a1 + 76);
      v24 = &v53[128 * v21 + v23];
      v26 = *(a1 + 56);
      v25 = *(a1 + 64);
      v27 = 16 * *(a1 + 84);
      if ((v27 - 1) >> 32)
      {
        v28 = 1;
      }

      else
      {
        v28 = 16 * v20 == 0;
      }

      if (v28)
      {
        for (i = 0; i != v19; ++i)
        {
          v30 = 0;
          do
          {
            *(v24 + v30) = *(v26 + v30);
            ++v30;
          }

          while (v27 > v30);
          v24 += 8;
          v26 = (v26 + v25);
        }
      }

      else if (v26 < &v53[128 * v19 - 128 + 128 * v21 + v27 + v23] && v24 < (v26 + v25 * (v19 - 1) + v27) || v25 < 0)
      {
        for (j = 0; j != v19; ++j)
        {
          v34 = 0;
          do
          {
            *(v24 + v34) = *(v26 + v34);
            ++v34;
          }

          while (v27 > v34);
          v24 += 8;
          v26 = (v26 + v25);
        }
      }

      else if (v20 == 1)
      {
        do
        {
          *v24 = *v26;
          v24 += 8;
          v26 = (v26 + v25);
          --v19;
        }

        while (v19);
      }

      else
      {
        v36 = 0;
        v37 = &v53[v22 + v23];
        v38 = &v53[v22 + 16 + v23];
        v39 = v26 + 1;
        v40 = (v26 + (v27 & 0x1FFFFFFE0));
        v41 = &v37[v27 & 0x1FFFFFFE0];
        do
        {
          v42 = v39;
          v43 = v38;
          v44 = v27 & 0x1FFFFFFE0;
          do
          {
            v45 = *v42;
            *(v43 - 1) = *(v42 - 1);
            *v43 = v45;
            v43 += 2;
            v42 += 2;
            v44 -= 32;
          }

          while (v44);
          if (v27 != (v27 & 0x1FFFFFFE0))
          {
            v46 = v41;
            v47 = v40;
            v48 = v27 - (v27 & 0x1FFFFFFE0);
            if (v20)
            {
              do
              {
                v52 = *v47++;
                *v46++ = v52;
                v48 -= 16;
              }

              while (v48);
            }

            else
            {
              v49 = 0;
              v50 = (v27 & 0xFFFFFFE0) + 1;
              do
              {
                *(v41 + v49) = *(v40 + v49);
                v51 = v27 > v50++;
                ++v49;
              }

              while (v51);
            }
          }

          ++v36;
          v38 += 128;
          v39 = (v39 + v25);
          v40 = (v40 + v25);
          v41 += 8;
        }

        while (v36 != v19);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v53, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v3 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v37, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 7;
      v7 = 16 * *(a1 + 76);
      v8 = &v37[128 * v5 + v7];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 16 * *(a1 + 84);
      if ((v11 - 1) >> 32)
      {
        v12 = 1;
      }

      else
      {
        v12 = 16 * v4 == 0;
      }

      if (v12)
      {
        for (i = 0; i != v3; ++i)
        {
          v14 = 0;
          do
          {
            *(v8 + v14) = *(v10 + v14);
            ++v14;
          }

          while (v11 > v14);
          v8 += 8;
          v10 = (v10 + v9);
        }
      }

      else if (v10 < &v37[128 * v3 - 128 + 128 * v5 + v11 + v7] && v8 < (v10 + v9 * (v3 - 1) + v11) || v9 < 0)
      {
        for (j = 0; j != v3; ++j)
        {
          v18 = 0;
          do
          {
            *(v8 + v18) = *(v10 + v18);
            ++v18;
          }

          while (v11 > v18);
          v8 += 8;
          v10 = (v10 + v9);
        }
      }

      else if (v4 == 1)
      {
        do
        {
          *v8 = *v10;
          v8 += 8;
          v10 = (v10 + v9);
          --v3;
        }

        while (v3);
      }

      else
      {
        v20 = 0;
        v21 = &v37[v6 + v7];
        v22 = &v37[v6 + 16 + v7];
        v23 = v10 + 1;
        v24 = (v10 + (v11 & 0x1FFFFFFE0));
        v25 = &v21[v11 & 0x1FFFFFFE0];
        do
        {
          v26 = v23;
          v27 = v22;
          v28 = v11 & 0x1FFFFFFE0;
          do
          {
            v29 = *v26;
            *(v27 - 1) = *(v26 - 1);
            *v27 = v29;
            v27 += 2;
            v26 += 2;
            v28 -= 32;
          }

          while (v28);
          if (v11 != (v11 & 0x1FFFFFFE0))
          {
            v30 = v25;
            v31 = v24;
            v32 = v11 - (v11 & 0x1FFFFFFE0);
            if (v4)
            {
              do
              {
                v36 = *v31++;
                *v30++ = v36;
                v32 -= 16;
              }

              while (v32);
            }

            else
            {
              v33 = 0;
              v34 = (v11 & 0xFFFFFFE0) + 1;
              do
              {
                *(v25 + v33) = *(v24 + v33);
                v35 = v11 > v34++;
                ++v33;
              }

              while (v35);
            }
          }

          ++v20;
          v22 += 128;
          v23 = (v23 + v9);
          v24 = (v24 + v9);
          v25 += 8;
        }

        while (v20 != v3);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v37, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, __n128 a3, int8x8_t a4)
{
  v75 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(*(v6 + 208) + 52);
  v9 = &byte_29D2F2FE5;
  v10 = 16;
  do
  {
    v12 = &v74[64 * *v9 + 16 * *(v9 - 1)];
    v13 = *v7;
    if (*v7)
    {
      if (v13 < 0xF0)
      {
        if (v13 == 31)
        {
          a2.n128_u64[0] = *v5;
          a3.n128_u64[0] = *(v5 + 8);
          a4 = *(v5 + 16);
          v14 = *(v5 + 24);
          v12->n128_u64[0] = *v5;
          v12->n128_f64[1] = *&a4;
          v12[2].n128_u64[0] = a3.n128_u64[0];
          v12[2].n128_u64[1] = v14;
          v11 = 32;
        }

        else if (v13 == 96)
        {
          a2 = vld1q_dup_s8(v5);
          *v12 = a2;
          v12[2] = a2;
          v11 = 1;
        }

        else
        {
          v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v12, 32, v5, v13, a2.n128_f64[0], a3.n128_u64[0]);
        }
      }

      else
      {
        a2.n128_u64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v12, 32, v5, v13, v8).u64[0];
        v11 = 16;
      }
    }

    else
    {
      v11 = 0;
      v12->n128_u64[0] = 0;
      v12->n128_u64[1] = 0;
      v12[2].n128_u64[0] = 0;
      v12[2].n128_u64[1] = 0;
    }

    v5 += v11;
    ++v7;
    v9 += 2;
    v10 -= 2;
  }

  while (v10);
  v15 = *(a1 + 80);
  if (v15)
  {
    v16 = *(a1 + 84);
    if (v16)
    {
      v17 = *(a1 + 72);
      v18 = 32 * v17;
      v19 = 4 * *(a1 + 76);
      v20 = &v74[32 * v17 + v19];
      v22 = *(a1 + 56);
      v21 = *(a1 + 64);
      v23 = 4 * v16;
      v24 = &v74[32 * v15 - 32 + 32 * v17 + 4 * v16 + v19];
      v27 = v20 < (v22->n128_u64 + 4 * v16 + v21 * (v15 - 1)) && v22 < v24 || v21 < 0;
      if (v16 == 1)
      {
        for (i = 0; i != v15; ++i)
        {
          v29 = v22 + v21 * i;
          v30 = &v20[4 * i];
          v31 = -1;
          do
          {
            v32 = *v29++;
            *v30 = v32;
            v30 = (v30 + 1);
            ++v31;
          }

          while (v31 < 3);
        }
      }

      else if (!v23 || (v23 - 1) >> 32)
      {
        for (j = 0; j != v15; ++j)
        {
          v36 = 0;
          do
          {
            *(v20 + v36) = v22->n128_u8[v36];
            ++v36;
          }

          while (v23 > v36);
          v20 += 4;
          v22 = (v22 + v21);
        }
      }

      else if (v27)
      {
        for (k = 0; k != v15; ++k)
        {
          v34 = 0;
          do
          {
            *(v20 + v34) = v22->n128_u8[v34];
            ++v34;
          }

          while (v23 > v34);
          v20 += 4;
          v22 = (v22 + v21);
        }
      }

      else
      {
        v38 = v23 & 0x1FFFFFFF8;
        if (v16 > 7)
        {
          v44 = v23 & 0x1FFFFFFE0;
          if (v23 == (v23 & 0x1FFFFFFE0))
          {
            v45 = 0;
            v46 = &v74[v18 + 16 + v19];
            v47 = v22 + 1;
            do
            {
              v48 = v47;
              v49 = v46;
              v50 = v23;
              do
              {
                a2 = v48[-1];
                a3 = *v48;
                v49[-1] = a2;
                *v49 = a3;
                v49 += 2;
                v48 += 2;
                v50 -= 32;
              }

              while (v50);
              ++v45;
              v46 += 2;
              v47 = (v47 + v21);
            }

            while (v45 != v15);
          }

          else
          {
            v59 = 0;
            v60 = v16 & 6;
            v61 = &v74[v18 + v19];
            v62 = &v74[v18 + 16 + v19];
            v63 = v22 + 1;
            v64 = (v22->n128_u64 + v44);
            v65 = &v61[v44];
            do
            {
              v66 = v63;
              v67 = v62;
              v68 = v23 & 0x1FFFFFFE0;
              do
              {
                a2 = v66[-1];
                a3 = *v66;
                v67[-1] = a2;
                *v67 = a3;
                v67 += 2;
                v66 += 2;
                v68 -= 32;
              }

              while (v68);
              v69 = v23 & 0x1FFFFFFE0;
              if (!v60)
              {
                goto LABEL_74;
              }

              v70 = v65;
              v71 = v64;
              v72 = v38 - v44;
              do
              {
                v73 = *v71++;
                a2.n128_u64[0] = v73;
                *v70++ = v73;
                v72 -= 8;
              }

              while (v72);
              v69 = v23 & 0x1FFFFFFF8;
              if (v23 != v38)
              {
LABEL_74:
                do
                {
                  *(v20 + v69) = v22->n128_u8[v69];
                  ++v69;
                }

                while (v23 > v69);
              }

              ++v59;
              v62 += 2;
              v63 = (v63 + v21);
              v64 = (v64 + v21);
              v65 += 4;
              v20 += 4;
              v22 = (v22 + v21);
            }

            while (v59 != v15);
          }
        }

        else if (v23 == v38)
        {
          for (m = 0; m != v15; ++m)
          {
            v40 = v20;
            v41 = v22;
            v42 = v23;
            do
            {
              v43 = *v41++;
              a2.n128_u64[0] = v43;
              *v40++ = v43;
              v42 -= 8;
            }

            while (v42);
            v22 = (v22 + v21);
            v20 += 4;
          }
        }

        else
        {
          v51 = 0;
          v52 = v20;
          do
          {
            v53 = &v20[4 * v51] + v38;
            v54 = v52;
            v55 = v22;
            v56 = v23 & 0x1FFFFFFF8;
            do
            {
              v57 = *v55++;
              a2.n128_u64[0] = v57;
              *v54++ = v57;
              v56 -= 8;
            }

            while (v56);
            v58 = v23 & 0x1FFFFFFF8;
            do
            {
              *v53++ = v22->n128_u8[v58++];
            }

            while (v23 > v58);
            ++v51;
            v22 = (v22 + v21);
            v52 += 4;
          }

          while (v51 != v15);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v74, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v6 + 208) + 52), a2.n128_u64[0], a3.n128_f64[0], a4);
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj2ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(v3 + 208) + 52);
  v6 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v47, 256, v2, *v4, v5);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v48, 256, v6, v4[1], v5);
  v8 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v49, 256, v7, v4[2], v5);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v50, 256, v7 + v8, v4[3], v5);
  v10 = *(a1 + 80);
  if (v10)
  {
    v11 = *(a1 + 84);
    if (v11)
    {
      v12 = *(a1 + 72);
      v13 = 2 * *(a1 + 76);
      v14 = &v47[16 * v12 + v13];
      v16 = *(a1 + 56);
      v15 = *(a1 + 64);
      v17 = 32 * v11;
      if ((v17 - 1) >> 32)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17 == 0;
      }

      if (v18)
      {
        for (i = 0; i != v10; ++i)
        {
          v20 = 0;
          do
          {
            v14->i8[v20] = v16->i8[v20];
            ++v20;
          }

          while (v17 > v20);
          v14 += 16;
          v16 = (v16 + v15);
        }
      }

      else
      {
        result = v17 + v13 * 16;
        if (v16 < &v47[16 * v10 - 16 + 16 * v12 + v17 / 0x10 + v13] && v14 < &v16->i8[v15 * (v10 - 1) + v17] || v15 < 0)
        {
          for (j = 0; j != v10; ++j)
          {
            v24 = 0;
            do
            {
              v14->i8[v24] = v16->i8[v24];
              ++v24;
            }

            while (v17 > v24);
            v14 += 16;
            v16 = (v16 + v15);
          }
        }

        else
        {
          v25 = 0;
          v26 = &v47[16 * v12 + 1 + v13];
          v27 = v16 + 1;
          do
          {
            v28 = v27;
            v29 = v26;
            v30 = v17;
            do
            {
              v31 = *v28;
              v29[-1] = v28[-1];
              *v29 = v31;
              v29 += 2;
              v28 += 2;
              v30 -= 32;
            }

            while (v30);
            ++v25;
            v26 += 16;
            v27 = (v27 + v15);
          }

          while (v25 != v10);
        }
      }
    }
  }

  v32 = *(a1 + 40);
  v33 = *(a1 + 48);
  v34 = *(a1 + 88);
  v35 = *(a1 + 89);
  v36 = *(*(v3 + 208) + 52);
  if (v34 && v35)
  {
    if (v35 >= 4)
    {
      v37 = 4;
    }

    else
    {
      v37 = v35;
    }

    if (v34 >= 4)
    {
      v38 = 4;
    }

    else
    {
      v38 = v34;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v32, v33, v47, 256, v38, v37, v36);
    v32 += result;
  }

  else
  {
    *v33 = 0;
  }

  v39 = v34 - 4;
  if (v34 >= 5 && v35)
  {
    if (v35 >= 4)
    {
      v40 = 4;
    }

    else
    {
      v40 = v35;
    }

    if (v39 >= 4)
    {
      v41 = 4;
    }

    else
    {
      v41 = v34 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v32, v33 + 1, v48, 256, v41, v40, v36);
    v32 += result;
    v42 = v35 - 4;
  }

  else
  {
    v33[1] = 0;
    v42 = v35 - 4;
    if (!v34)
    {
      goto LABEL_58;
    }
  }

  if (v35 >= 5)
  {
    if (v42 >= 4)
    {
      v43 = 4;
    }

    else
    {
      v43 = v42;
    }

    if (v34 >= 4)
    {
      v44 = 4;
    }

    else
    {
      v44 = v34;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v32, v33 + 2, v49, 256, v44, v43, v36);
    v32 += result;
    if (v34 < 5)
    {
      goto LABEL_67;
    }

    goto LABEL_59;
  }

LABEL_58:
  v33[2] = 0;
  if (v34 < 5)
  {
LABEL_67:
    v33[3] = 0;
    return result;
  }

LABEL_59:
  if (v35 < 5)
  {
    goto LABEL_67;
  }

  if (v42 >= 4)
  {
    v45 = 4;
  }

  else
  {
    v45 = v42;
  }

  if (v39 >= 4)
  {
    v46 = 4;
  }

  else
  {
    v46 = v34 - 4;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v32, v33 + 3, v50, 256, v46, v45, v36);
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v37, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 8;
      v7 = 16 * *(a1 + 76);
      v8 = &v37[256 * v5 + v7];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 16 * *(a1 + 84);
      if ((v11 - 1) >> 32)
      {
        v12 = 1;
      }

      else
      {
        v12 = 16 * v4 == 0;
      }

      if (v12)
      {
        for (i = 0; i != v3; ++i)
        {
          v14 = 0;
          do
          {
            *(v8 + v14) = *(v10 + v14);
            ++v14;
          }

          while (v11 > v14);
          v8 += 16;
          v10 = (v10 + v9);
        }
      }

      else if (v10 < &v37[256 * v3 - 256 + 256 * v5 + v11 + v7] && v8 < (v10 + v9 * (v3 - 1) + v11) || v9 < 0)
      {
        for (j = 0; j != v3; ++j)
        {
          v18 = 0;
          do
          {
            *(v8 + v18) = *(v10 + v18);
            ++v18;
          }

          while (v11 > v18);
          v8 += 16;
          v10 = (v10 + v9);
        }
      }

      else if (v4 == 1)
      {
        do
        {
          *v8 = *v10;
          v10 = (v10 + v9);
          v8 += 16;
          --v3;
        }

        while (v3);
      }

      else
      {
        v20 = 0;
        v21 = &v37[v6 + v7];
        v22 = &v37[v6 + 16 + v7];
        v23 = v10 + 1;
        v24 = (v10 + (v11 & 0x1FFFFFFE0));
        v25 = &v21[v11 & 0x1FFFFFFE0];
        do
        {
          v26 = v23;
          v27 = v22;
          v28 = v11 & 0x1FFFFFFE0;
          do
          {
            v29 = *v26;
            *(v27 - 1) = *(v26 - 1);
            *v27 = v29;
            v27 += 2;
            v26 += 2;
            v28 -= 32;
          }

          while (v28);
          if (v11 != (v11 & 0x1FFFFFFE0))
          {
            v30 = v25;
            v31 = v24;
            v32 = v11 - (v11 & 0x1FFFFFFE0);
            if (v4)
            {
              do
              {
                v36 = *v31++;
                *v30++ = v36;
                v32 -= 16;
              }

              while (v32);
            }

            else
            {
              v33 = 0;
              v34 = (v11 & 0xFFFFFFE0) + 1;
              do
              {
                *(v25 + v33) = *(v24 + v33);
                v35 = v11 > v34++;
                ++v33;
              }

              while (v35);
            }
          }

          ++v20;
          v22 += 256;
          v23 = (v23 + v9);
          v24 = (v24 + v9);
          v25 += 16;
        }

        while (v20 != v3);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v37, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int64x2_t a3)
{
  v77 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(*(v5 + 208) + 52);
  v8 = &byte_29D2F30D1;
  v9 = 16;
  do
  {
    v11 = &v76[256 * *v8 + 16 * *(v8 - 1)];
    v12 = *v6;
    if (*v6)
    {
      if (v12 < 0xF0)
      {
        if (v12 == 63)
        {
          v13 = *v4;
          a3 = *(v4 + 16);
          v14 = (v4 + 32);
          v78 = vld2q_f64(v14);
          *v11 = vzip1q_s64(*v4, a3);
          a2 = vzip2q_s64(v13, a3);
          v11[4] = a2;
          v11[8] = v78.val[0];
          v11[12] = v78.val[1];
          v10 = 64;
        }

        else if (v12 == 1)
        {
          a2 = vld1q_dup_s16(v4);
          *v11 = a2;
          v11[4] = a2;
          v11[8] = a2;
          v11[12] = a2;
          v10 = 2;
        }

        else
        {
          v10 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v11, 64, v4, v12, a2.n128_u64[0], *a3.i8);
        }
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v11, 64, v4, v12, v7);
        v10 = 32;
      }
    }

    else
    {
      v10 = 0;
      v11->n128_u64[0] = 0;
      v11->n128_u64[1] = 0;
      v11[4].n128_u64[0] = 0;
      v11[4].n128_u64[1] = 0;
      v11[8].n128_u64[0] = 0;
      v11[8].n128_u64[1] = 0;
      v11[12].n128_u64[0] = 0;
      v11[12].n128_u64[1] = 0;
    }

    v4 += v10;
    ++v6;
    v8 += 2;
    v9 -= 2;
  }

  while (v9);
  v15 = *(a1 + 80);
  if (v15)
  {
    v16 = *(a1 + 84);
    if (v16)
    {
      v17 = *(a1 + 72);
      v18 = v17 << 6;
      v19 = 4 * *(a1 + 76);
      v20 = &v76[64 * v17 + v19];
      v22 = *(a1 + 56);
      v21 = *(a1 + 64);
      v23 = 4 * v16;
      v24 = &v76[64 * v15 - 64 + 64 * v17 + 4 * v16 + v19];
      v27 = v20 < v22 + 4 * v16 + v21 * (v15 - 1) && v22 < v24 || v21 < 0;
      if (v16 == 1)
      {
        for (i = 0; i != v15; ++i)
        {
          v29 = v22 + v21 * i;
          v30 = &v20[64 * i];
          v31 = -1;
          do
          {
            v32 = *v29++;
            *v30++ = v32;
            ++v31;
          }

          while (v31 < 3);
        }
      }

      else if (!v23 || (v23 - 1) >> 32)
      {
        for (j = 0; j != v15; ++j)
        {
          v36 = 0;
          do
          {
            v20[v36] = *(v22 + v36);
            ++v36;
          }

          while (v23 > v36);
          v20 += 64;
          v22 = (v22 + v21);
        }
      }

      else if (v27)
      {
        for (k = 0; k != v15; ++k)
        {
          v34 = 0;
          do
          {
            v20[v34] = *(v22 + v34);
            ++v34;
          }

          while (v23 > v34);
          v20 += 64;
          v22 = (v22 + v21);
        }
      }

      else
      {
        v38 = v23 & 0x1FFFFFFF8;
        if (v16 > 7)
        {
          v44 = v23 & 0x1FFFFFFE0;
          if (v23 == (v23 & 0x1FFFFFFE0))
          {
            v45 = 0;
            v46 = &v76[v18 + 16 + v19];
            v47 = (v22 + 2);
            do
            {
              v48 = v47;
              v49 = v46;
              v50 = v23;
              do
              {
                v51 = *v48;
                *(v49 - 1) = *(v48 - 1);
                *v49 = v51;
                v49 += 2;
                v48 += 2;
                v50 -= 32;
              }

              while (v50);
              ++v45;
              v46 += 64;
              v47 = (v47 + v21);
            }

            while (v45 != v15);
          }

          else
          {
            v60 = 0;
            v61 = v16 & 6;
            v62 = &v76[v18 + v19];
            v63 = &v76[v18 + 16 + v19];
            v64 = (v22 + 2);
            v65 = (v22 + v44);
            v66 = &v62[v44];
            do
            {
              v67 = v64;
              v68 = v63;
              v69 = v23 & 0x1FFFFFFE0;
              do
              {
                v70 = *v67;
                *(v68 - 1) = *(v67 - 1);
                *v68 = v70;
                v68 += 2;
                v67 += 2;
                v69 -= 32;
              }

              while (v69);
              v71 = v23 & 0x1FFFFFFE0;
              if (!v61)
              {
                goto LABEL_74;
              }

              v72 = v66;
              v73 = v65;
              v74 = v38 - v44;
              do
              {
                v75 = *v73++;
                *v72++ = v75;
                v74 -= 8;
              }

              while (v74);
              v71 = v23 & 0x1FFFFFFF8;
              if (v23 != v38)
              {
LABEL_74:
                do
                {
                  v20[v71] = *(v22 + v71);
                  ++v71;
                }

                while (v23 > v71);
              }

              ++v60;
              v63 += 64;
              v64 = (v64 + v21);
              v65 = (v65 + v21);
              v66 += 8;
              v20 += 64;
              v22 = (v22 + v21);
            }

            while (v60 != v15);
          }
        }

        else if (v23 == v38)
        {
          for (m = 0; m != v15; ++m)
          {
            v40 = v20;
            v41 = v22;
            v42 = v23;
            do
            {
              v43 = *v41++;
              *v40++ = v43;
              v42 -= 8;
            }

            while (v42);
            v22 = (v22 + v21);
            v20 += 64;
          }
        }

        else
        {
          v52 = 0;
          v53 = v20;
          do
          {
            v54 = &v20[64 * v52 + v38];
            v55 = v53;
            v56 = v22;
            v57 = v23 & 0x1FFFFFFF8;
            do
            {
              v58 = *v56++;
              *v55++ = v58;
              v57 -= 8;
            }

            while (v57);
            v59 = v23 & 0x1FFFFFFF8;
            do
            {
              *v54++ = *(v22 + v59++);
            }

            while (v23 > v59);
            ++v52;
            v22 = (v22 + v21);
            v53 += 8;
          }

          while (v52 != v15);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v76, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v5 + 208) + 52));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v37, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 8;
      v7 = *(a1 + 76);
      v8 = &v37[16 * v5 + v7];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 16 * *(a1 + 84);
      if ((v11 - 1) >> 32)
      {
        v12 = 1;
      }

      else
      {
        v12 = 16 * v4 == 0;
      }

      if (v12)
      {
        for (i = 0; i != v3; ++i)
        {
          v14 = 0;
          do
          {
            *(v8->f64 + v14) = *(v10->f64 + v14);
            ++v14;
          }

          while (v11 > v14);
          v8 += 16;
          v10 = (v10 + v9);
        }
      }

      else if (v10 < &v37[16 * v3 - 16 + 16 * v5 + v11 / 0x10 + v7] && v8 < (v10 + v9 * (v3 - 1) + v11) || v9 < 0)
      {
        for (j = 0; j != v3; ++j)
        {
          v18 = 0;
          do
          {
            *(v8->f64 + v18) = *(v10->f64 + v18);
            ++v18;
          }

          while (v11 > v18);
          v8 += 16;
          v10 = (v10 + v9);
        }
      }

      else if (v4 == 1)
      {
        do
        {
          *v8 = *v10;
          v10 = (v10 + v9);
          v8 += 16;
          --v3;
        }

        while (v3);
      }

      else
      {
        v20 = 0;
        v21 = v37 + v6 + v7 * 16;
        v22 = &v37[1] + v6 + v7 * 16;
        v23 = &v10[1];
        v24 = (v10 + (v11 & 0x1FFFFFFE0));
        v25 = &v21[v11 & 0x1FFFFFFE0];
        do
        {
          v26 = v23;
          v27 = v22;
          v28 = v11 & 0x1FFFFFFE0;
          do
          {
            v29 = *v26;
            *(v27 - 1) = *(v26 - 1);
            *v27 = v29;
            v27 += 2;
            v26 += 2;
            v28 -= 32;
          }

          while (v28);
          if (v11 != (v11 & 0x1FFFFFFE0))
          {
            v30 = v25;
            v31 = v24;
            v32 = v11 - (v11 & 0x1FFFFFFE0);
            if (v4)
            {
              do
              {
                v36 = *v31++;
                *v30 = v36;
                v30 += 16;
                v32 -= 16;
              }

              while (v32);
            }

            else
            {
              v33 = 0;
              v34 = (v11 & 0xFFFFFFE0) + 1;
              do
              {
                v25[v33] = *(v24 + v33);
                v35 = v11 > v34++;
                ++v33;
              }

              while (v35);
            }
          }

          ++v20;
          v22 += 256;
          v23 = (v23 + v9);
          v24 = (v24 + v9);
          v25 += 256;
        }

        while (v20 != v3);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v37, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(v3 + 208) + 52);
  v6 = &byte_29D2F30D1;
  v7 = 16;
  do
  {
    v9 = &v56[512 * *v6 + 32 * *(v6 - 1)];
    v10 = *v4;
    if (*v4)
    {
      if (v10 < 0xF0)
      {
        if (v10 == 127)
        {
          v12 = *(v2 + 16);
          v13 = *(v2 + 32);
          v14 = *(v2 + 48);
          v15 = *(v2 + 80);
          v16 = *(v2 + 96);
          v17 = *(v2 + 112);
          v18 = *(v2 + 64);
          *v9 = *v2;
          *(v9 + 1) = v13;
          *(v9 + 8) = v12;
          *(v9 + 9) = v14;
          *(v9 + 16) = v18;
          *(v9 + 17) = v16;
          *(v9 + 24) = v15;
          *(v9 + 25) = v17;
          v8 = 128;
        }

        else if (v10 == 3)
        {
          v11 = vld1q_dup_f32(v2);
          *v9 = v11;
          *(v9 + 1) = v11;
          *(v9 + 8) = v11;
          *(v9 + 9) = v11;
          *(v9 + 16) = v11;
          *(v9 + 17) = v11;
          *(v9 + 24) = v11;
          *(v9 + 25) = v11;
          v8 = 4;
        }

        else
        {
          v8 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v9, 128, v2, v10);
        }
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v9, 128, v2, v10, v5);
        v8 = 64;
      }
    }

    else
    {
      v8 = 0;
      *v9 = 0u;
      *(v9 + 1) = 0u;
      *(v9 + 8) = 0u;
      *(v9 + 9) = 0u;
      *(v9 + 16) = 0u;
      *(v9 + 17) = 0u;
      *(v9 + 24) = 0u;
      *(v9 + 25) = 0u;
    }

    v2 += v8;
    ++v4;
    v6 += 2;
    v7 -= 2;
  }

  while (v7);
  v19 = *(a1 + 80);
  if (v19)
  {
    v20 = *(a1 + 84);
    if (v20)
    {
      v21 = *(a1 + 72);
      v22 = v21 << 7;
      v23 = 8 * *(a1 + 76);
      v24 = &v56[128 * v21 + v23];
      v26 = *(a1 + 56);
      v25 = *(a1 + 64);
      v27 = 8 * *(a1 + 84);
      if ((v27 - 1) >> 32)
      {
        v28 = 1;
      }

      else
      {
        v28 = 8 * v20 == 0;
      }

      if (v28)
      {
        for (i = 0; i != v19; ++i)
        {
          v30 = 0;
          do
          {
            v24[v30] = *(v26 + v30);
            ++v30;
          }

          while (v27 > v30);
          v24 += 128;
          v26 += v25;
        }
      }

      else if (v26 < &v56[128 * v19 - 128 + 128 * v21 + v27 + v23] && v24 < v26 + v25 * (v19 - 1) + v27 || v25 < 0)
      {
        for (j = 0; j != v19; ++j)
        {
          v34 = 0;
          do
          {
            v24[v34] = *(v26 + v34);
            ++v34;
          }

          while (v27 > v34);
          v24 += 128;
          v26 += v25;
        }
      }

      else if (v20 >= 4)
      {
        v38 = 0;
        v39 = v20 & 3;
        v40 = &v56[v22 + v23];
        v41 = &v56[v22 + 16 + v23];
        v42 = (v26 + 16);
        v43 = (v26 + (v27 & 0x1FFFFFFE0));
        v44 = &v40[v27 & 0x1FFFFFFE0];
        do
        {
          v45 = v42;
          v46 = v41;
          v47 = v27 & 0x1FFFFFFE0;
          do
          {
            v48 = *v45;
            *(v46 - 1) = *(v45 - 1);
            *v46 = v48;
            v46 += 2;
            v45 += 2;
            v47 -= 32;
          }

          while (v47);
          if (v27 != (v27 & 0x1FFFFFFE0))
          {
            v49 = v44;
            v50 = v43;
            v51 = v27 - (v27 & 0x1FFFFFFE0);
            if (v39)
            {
              do
              {
                v52 = *v50++;
                *v49++ = v52;
                v51 -= 8;
              }

              while (v51);
            }

            else
            {
              v53 = 0;
              v54 = (v27 & 0xFFFFFFE0) + 1;
              do
              {
                *(v44 + v53) = *(v43 + v53);
                v55 = v27 > v54++;
                ++v53;
              }

              while (v55);
            }
          }

          ++v38;
          v41 += 128;
          v42 = (v42 + v25);
          v43 = (v43 + v25);
          v44 += 16;
        }

        while (v38 != v19);
      }

      else
      {
        v36 = (v26 + 16);
        v37 = &v56[v22 + 16 + v23];
        do
        {
          *(v37 - 2) = *(v36 - 2);
          if (v20 != 1)
          {
            *(v37 - 1) = *(v36 - 1);
            if (v20 != 2)
            {
              *v37 = *v36;
            }
          }

          v36 = (v36 + v25);
          v37 += 16;
          --v19;
        }

        while (v19);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v56, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v3 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v40, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v40, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int64x2_t a3, __n128 a4, __n128 a5, __n128 a6, double a7, double a8, int16x4_t a9)
{
  v81 = *MEMORY[0x29EDCA608];
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(*(v11 + 208) + 52);
  v14 = &byte_29D2F30D1;
  v15 = 16;
  do
  {
    v17 = &v80[256 * *v14 + 16 * *(v14 - 1)];
    v18 = *v12;
    if (*v12)
    {
      if (v18 < 0xF0)
      {
        if (v18 == 63)
        {
          v19 = *v10;
          a3 = *(v10 + 16);
          v20 = (v10 + 32);
          *a4.n128_u64 = vld2q_f64(v20);
          a6 = vzip1q_s64(*v10, a3);
          *v17 = a6;
          a2 = vzip2q_s64(v19, a3);
          v17[4] = a2;
          v17[8] = a4;
          v17[12] = a5;
          v16 = 64;
        }

        else if (v18 == 1)
        {
          a2 = vld1q_dup_s16(v10);
          *v17 = a2;
          v17[4] = a2;
          v17[8] = a2;
          v17[12] = a2;
          v16 = 2;
        }

        else
        {
          v16 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v17, 64, v10, v18, a2.n128_f64[0], *a3.i64, a4.n128_f64[0], a5.n128_u64[0]);
        }
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v17, 64, v10, v18, v13);
        v16 = 32;
      }
    }

    else
    {
      v16 = 0;
      v17->n128_u64[0] = 0;
      v17->n128_u64[1] = 0;
      v17[4].n128_u64[0] = 0;
      v17[4].n128_u64[1] = 0;
      v17[8].n128_u64[0] = 0;
      v17[8].n128_u64[1] = 0;
      v17[12].n128_u64[0] = 0;
      v17[12].n128_u64[1] = 0;
    }

    v10 += v16;
    ++v12;
    v14 += 2;
    v15 -= 2;
  }

  while (v15);
  v21 = *(a1 + 80);
  if (v21)
  {
    v22 = *(a1 + 84);
    if (v22)
    {
      v23 = *(a1 + 72);
      v24 = v23 << 6;
      v25 = 4 * *(a1 + 76);
      v26 = &v80[64 * v23 + v25];
      v28 = *(a1 + 56);
      v27 = *(a1 + 64);
      v29 = 4 * v22;
      v30 = &v80[64 * v21 - 64 + 64 * v23 + 4 * v22 + v25];
      v33 = v26 < (v28 + 4 * v22 + v27 * (v21 - 1)) && v28 < v30 || v27 < 0;
      if (v22 == 1)
      {
        for (i = 0; i != v21; ++i)
        {
          v35 = &v28->i8[v27 * i];
          v36 = &v26[8 * i];
          v37 = -1;
          do
          {
            v38 = *v35++;
            *v36 = v38;
            v36 = (v36 + 1);
            ++v37;
          }

          while (v37 < 3);
        }
      }

      else if (!v29 || (v29 - 1) >> 32)
      {
        for (j = 0; j != v21; ++j)
        {
          v42 = 0;
          do
          {
            *(v26 + v42) = v28->i8[v42];
            ++v42;
          }

          while (v29 > v42);
          v26 += 8;
          v28 = (v28 + v27);
        }
      }

      else if (v33)
      {
        for (k = 0; k != v21; ++k)
        {
          v40 = 0;
          do
          {
            *(v26 + v40) = v28->i8[v40];
            ++v40;
          }

          while (v29 > v40);
          v26 += 8;
          v28 = (v28 + v27);
        }
      }

      else
      {
        v44 = v29 & 0x1FFFFFFF8;
        if (v22 > 7)
        {
          v50 = v29 & 0x1FFFFFFE0;
          if (v29 == (v29 & 0x1FFFFFFE0))
          {
            v51 = 0;
            v52 = &v80[v24 + 16 + v25];
            v53 = v28 + 1;
            do
            {
              v54 = v53;
              v55 = v52;
              v56 = v29;
              do
              {
                a2 = v54[-1];
                a3 = *v54;
                v55[-1] = a2;
                *v55 = a3;
                v55 += 2;
                v54 += 2;
                v56 -= 32;
              }

              while (v56);
              ++v51;
              v52 += 4;
              v53 = (v53 + v27);
            }

            while (v51 != v21);
          }

          else
          {
            v65 = 0;
            v66 = v22 & 6;
            v67 = &v80[v24 + v25];
            v68 = &v80[v24 + 16 + v25];
            v69 = v28 + 1;
            v70 = (v28->u64 + v50);
            v71 = &v67[v50];
            do
            {
              v72 = v69;
              v73 = v68;
              v74 = v29 & 0x1FFFFFFE0;
              do
              {
                a2 = v72[-1];
                a3 = *v72;
                v73[-1] = a2;
                *v73 = a3;
                v73 += 2;
                v72 += 2;
                v74 -= 32;
              }

              while (v74);
              v75 = v29 & 0x1FFFFFFE0;
              if (!v66)
              {
                goto LABEL_74;
              }

              v76 = v71;
              v77 = v70;
              v78 = v44 - v50;
              do
              {
                v79 = *v77++;
                a2.n128_u64[0] = v79;
                *v76++ = v79;
                v78 -= 8;
              }

              while (v78);
              v75 = v29 & 0x1FFFFFFF8;
              if (v29 != v44)
              {
LABEL_74:
                do
                {
                  *(v26 + v75) = v28->i8[v75];
                  ++v75;
                }

                while (v29 > v75);
              }

              ++v65;
              v68 += 4;
              v69 = (v69 + v27);
              v70 = (v70 + v27);
              v71 += 8;
              v26 += 8;
              v28 = (v28 + v27);
            }

            while (v65 != v21);
          }
        }

        else if (v29 == v44)
        {
          for (m = 0; m != v21; ++m)
          {
            v46 = v26;
            v47 = v28;
            v48 = v29;
            do
            {
              v49 = *v47++;
              a2.n128_u64[0] = v49;
              *v46++ = v49;
              v48 -= 8;
            }

            while (v48);
            v28 = (v28 + v27);
            v26 += 8;
          }
        }

        else
        {
          v57 = 0;
          v58 = v26;
          do
          {
            v59 = &v26[8 * v57] + v44;
            v60 = v58;
            v61 = v28;
            v62 = v29 & 0x1FFFFFFF8;
            do
            {
              v63 = *v61++;
              a2.n128_u64[0] = v63;
              *v60++ = v63;
              v62 -= 8;
            }

            while (v62);
            v64 = v29 & 0x1FFFFFFF8;
            do
            {
              *v59++ = v28->i8[v64++];
            }

            while (v29 > v64);
            ++v57;
            v28 = (v28 + v27);
            v58 += 8;
          }

          while (v57 != v21);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v80, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v11 + 208) + 52), a2.n128_f64[0], *a3.i64, a4.n128_f64[0], a5.n128_f64[0], a6.n128_u64[0], a7, a8, a9);
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(v3 + 208) + 52);
  v6 = &byte_29D2F30D1;
  v7 = 16;
  do
  {
    v9 = &v56[512 * *v6 + 32 * *(v6 - 1)];
    v10 = *v4;
    if (*v4)
    {
      if (v10 < 0xF0)
      {
        if (v10 == 127)
        {
          v12 = *(v2 + 16);
          v13 = *(v2 + 32);
          v14 = *(v2 + 48);
          v15 = *(v2 + 80);
          v16 = *(v2 + 96);
          v17 = *(v2 + 112);
          v18 = *(v2 + 64);
          *v9 = *v2;
          *(v9 + 1) = v13;
          *(v9 + 8) = v12;
          *(v9 + 9) = v14;
          *(v9 + 16) = v18;
          *(v9 + 17) = v16;
          *(v9 + 24) = v15;
          *(v9 + 25) = v17;
          v8 = 128;
        }

        else if (v10 == 3)
        {
          v11 = vld1q_dup_f32(v2);
          *v9 = v11;
          *(v9 + 1) = v11;
          *(v9 + 8) = v11;
          *(v9 + 9) = v11;
          *(v9 + 16) = v11;
          *(v9 + 17) = v11;
          *(v9 + 24) = v11;
          *(v9 + 25) = v11;
          v8 = 4;
        }

        else
        {
          v8 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v9, 128, v2, v10);
        }
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v9, 128, v2, v10, v5);
        v8 = 64;
      }
    }

    else
    {
      v8 = 0;
      *v9 = 0u;
      *(v9 + 1) = 0u;
      *(v9 + 8) = 0u;
      *(v9 + 9) = 0u;
      *(v9 + 16) = 0u;
      *(v9 + 17) = 0u;
      *(v9 + 24) = 0u;
      *(v9 + 25) = 0u;
    }

    v2 += v8;
    ++v4;
    v6 += 2;
    v7 -= 2;
  }

  while (v7);
  v19 = *(a1 + 80);
  if (v19)
  {
    v20 = *(a1 + 84);
    if (v20)
    {
      v21 = *(a1 + 72);
      v22 = v21 << 7;
      v23 = 8 * *(a1 + 76);
      v24 = &v56[128 * v21 + v23];
      v26 = *(a1 + 56);
      v25 = *(a1 + 64);
      v27 = 8 * *(a1 + 84);
      if ((v27 - 1) >> 32)
      {
        v28 = 1;
      }

      else
      {
        v28 = 8 * v20 == 0;
      }

      if (v28)
      {
        for (i = 0; i != v19; ++i)
        {
          v30 = 0;
          do
          {
            v24[v30] = *(v26 + v30);
            ++v30;
          }

          while (v27 > v30);
          v24 += 128;
          v26 += v25;
        }
      }

      else if (v26 < &v56[128 * v19 - 128 + 128 * v21 + v27 + v23] && v24 < v26 + v25 * (v19 - 1) + v27 || v25 < 0)
      {
        for (j = 0; j != v19; ++j)
        {
          v34 = 0;
          do
          {
            v24[v34] = *(v26 + v34);
            ++v34;
          }

          while (v27 > v34);
          v24 += 128;
          v26 += v25;
        }
      }

      else if (v20 >= 4)
      {
        v38 = 0;
        v39 = v20 & 3;
        v40 = &v56[v22 + v23];
        v41 = &v56[v22 + 16 + v23];
        v42 = (v26 + 16);
        v43 = (v26 + (v27 & 0x1FFFFFFE0));
        v44 = &v40[v27 & 0x1FFFFFFE0];
        do
        {
          v45 = v42;
          v46 = v41;
          v47 = v27 & 0x1FFFFFFE0;
          do
          {
            v48 = *v45;
            *(v46 - 1) = *(v45 - 1);
            *v46 = v48;
            v46 += 2;
            v45 += 2;
            v47 -= 32;
          }

          while (v47);
          if (v27 != (v27 & 0x1FFFFFFE0))
          {
            v49 = v44;
            v50 = v43;
            v51 = v27 - (v27 & 0x1FFFFFFE0);
            if (v39)
            {
              do
              {
                v52 = *v50++;
                *v49++ = v52;
                v51 -= 8;
              }

              while (v51);
            }

            else
            {
              v53 = 0;
              v54 = (v27 & 0xFFFFFFE0) + 1;
              do
              {
                *(v44 + v53) = *(v43 + v53);
                v55 = v27 > v54++;
                ++v53;
              }

              while (v55);
            }
          }

          ++v38;
          v41 += 128;
          v42 = (v42 + v25);
          v43 = (v43 + v25);
          v44 += 16;
        }

        while (v38 != v19);
      }

      else
      {
        v36 = (v26 + 16);
        v37 = &v56[v22 + 16 + v23];
        do
        {
          *(v37 - 2) = *(v36 - 2);
          if (v20 != 1)
          {
            *(v37 - 1) = *(v36 - 1);
            if (v20 != 2)
            {
              *v37 = *v36;
            }
          }

          v36 = (v36 + v25);
          v37 += 16;
          --v19;
        }

        while (v19);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v56, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v3 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v40, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v40, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int32x2_t a3)
{
  v70 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(*(v5 + 208) + 52);
  v8 = &byte_29D2F30D1;
  v9 = 16;
  do
  {
    v11 = &v69[128 * *v8 + 8 * *(v8 - 1)];
    v12 = *v6;
    if (*v6)
    {
      if (v12 < 0xF0)
      {
        if (v12 == 31)
        {
          v13 = *v4;
          a3 = *(v4 + 8);
          v14 = (v4 + 16);
          v71 = vld2_f32(v14);
          *v11 = vzip1_s32(*v4, a3);
          a2 = COERCE_DOUBLE(vzip2_s32(v13, a3));
          v11[4] = a2;
          v11[8] = *v71.val;
          v11[12] = *&v71.val[1];
          v10 = 32;
        }

        else if (v12 == 96)
        {
          a2 = COERCE_DOUBLE(vdup_lane_s8(*v4, 0));
          *v11 = a2;
          v11[4] = a2;
          v11[8] = a2;
          v11[12] = a2;
          v10 = 1;
        }

        else
        {
          v10 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v11, 32, v4, v12, a2, a3);
        }
      }

      else
      {
        a2 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v11, 32, v4, v12, v7).n64_f64[0];
        v10 = 16;
      }
    }

    else
    {
      v10 = 0;
      *v11 = 0.0;
      v11[4] = 0.0;
      v11[8] = 0.0;
      v11[12] = 0.0;
    }

    v4 += v10;
    ++v6;
    v8 += 2;
    v9 -= 2;
  }

  while (v9);
  v15 = *(a1 + 80);
  if (v15)
  {
    v16 = *(a1 + 84);
    if (v16)
    {
      v17 = *(a1 + 72);
      v18 = 32 * v17;
      v19 = 2 * *(a1 + 76);
      v20 = &v69[32 * v17 + v19];
      v22 = *(a1 + 56);
      v21 = *(a1 + 64);
      v23 = 2 * v16;
      v24 = &v69[32 * v15 - 32 + 32 * v17 + 2 * v16 + v19];
      v27 = v20 < v22 + v21 * (v15 - 1) + 2 * v16 && v22 < v24 || v21 < 0;
      if (v16 > 3)
      {
        if (!v23 || (v23 - 1) >> 32)
        {
          for (i = 0; i != v15; ++i)
          {
            v33 = 0;
            do
            {
              v20[v33] = *(v22 + v33);
              ++v33;
            }

            while (v23 > v33);
            v20 += 32;
            v22 += v21;
          }
        }

        else if (v27)
        {
          for (j = 0; j != v15; ++j)
          {
            v31 = 0;
            do
            {
              v20[v31] = *(v22 + v31);
              ++v31;
            }

            while (v23 > v31);
            v20 += 32;
            v22 += v21;
          }
        }

        else
        {
          v35 = v23 & 0x1FFFFFFF8;
          if (v16 > 0xF)
          {
            v38 = v23 & 0x1FFFFFFE0;
            if (v23 == (v23 & 0x1FFFFFFE0))
            {
              v39 = 0;
              v40 = &v69[v18 + 16 + v19];
              v41 = (v22 + 16);
              do
              {
                v42 = v41;
                v43 = v40;
                v44 = v23;
                do
                {
                  v45 = *v42;
                  *(v43 - 1) = *(v42 - 1);
                  *v43 = v45;
                  v43 += 2;
                  v42 += 2;
                  v44 -= 32;
                }

                while (v44);
                ++v39;
                v40 += 32;
                v41 = (v41 + v21);
              }

              while (v39 != v15);
            }

            else
            {
              v53 = 0;
              v54 = v16 & 0xC;
              v55 = &v69[v18 + v19];
              v56 = &v69[v18 + 16 + v19];
              v57 = (v22 + 16);
              v58 = (v22 + v38);
              v59 = &v55[v38];
              do
              {
                v60 = v57;
                v61 = v56;
                v62 = v23 & 0x1FFFFFFE0;
                do
                {
                  v63 = *v60;
                  *(v61 - 1) = *(v60 - 1);
                  *v61 = v63;
                  v61 += 2;
                  v60 += 2;
                  v62 -= 32;
                }

                while (v62);
                v64 = v23 & 0x1FFFFFFE0;
                if (!v54)
                {
                  goto LABEL_75;
                }

                v65 = v59;
                v66 = v58;
                v67 = v35 - v38;
                do
                {
                  v68 = *v66++;
                  *v65++ = v68;
                  v67 -= 8;
                }

                while (v67);
                v64 = v23 & 0x1FFFFFFF8;
                if (v23 != v35)
                {
LABEL_75:
                  do
                  {
                    v20[v64] = *(v22 + v64);
                    ++v64;
                  }

                  while (v23 > v64);
                }

                ++v53;
                v56 += 32;
                v57 = (v57 + v21);
                v58 = (v58 + v21);
                v59 += 4;
                v20 += 32;
                v22 += v21;
              }

              while (v53 != v15);
            }
          }

          else if (v23 == v35)
          {
            v36 = (v22 + 16);
            v37 = &v69[v18 + 16 + v19];
            do
            {
              *(v37 - 2) = *(v36 - 2);
              if (v16 != 4)
              {
                *(v37 - 1) = *(v36 - 1);
                if (v16 != 8)
                {
                  *v37 = *v36;
                }
              }

              v36 = (v36 + v21);
              v37 += 4;
              --v15;
            }

            while (v15);
          }

          else
          {
            for (k = 0; k != v15; ++k)
            {
              v47 = (v22 + v21 * k);
              v48 = &v20[32 * k];
              *v48 = *v47;
              if (v35 != 8)
              {
                v48[1] = v47[1];
                if (v35 != 16)
                {
                  v48[2] = v47[2];
                }
              }

              v49 = v48 + v35;
              v50 = v47 + v35;
              v51 = v23 & 0x18;
              do
              {
                v52 = *v50++;
                *v49++ = v52;
                ++v51;
              }

              while (v23 > v51);
            }
          }
        }
      }

      else
      {
        for (m = 0; m != v15; ++m)
        {
          v29 = 0;
          do
          {
            v20[v29] = *(v22 + v29);
            ++v29;
          }

          while (v29 < v23);
          v20 += 32;
          v22 += v21;
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v69, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v5 + 208) + 52));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressMacroblock(v26, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = *(a1 + 76) << 6;
      v7 = &v26[32 * v5].i8[v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = v4 << 6;
      if ((v10 - 1) >> 32)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 == 0;
      }

      if (v11)
      {
        for (i = 0; i != v3; ++i)
        {
          v13 = 0;
          do
          {
            v7[v13] = *(v9 + v13);
            ++v13;
          }

          while (v10 > v13);
          v7 += 512;
          v9 += v8;
        }
      }

      else if (v9 < v26[32 * v3 - 32 + 32 * v5].u64 + v10 + v6 && v7 < v9 + v8 * (v3 - 1) + v10 || v8 < 0)
      {
        for (j = 0; j != v3; ++j)
        {
          v17 = 0;
          do
          {
            v7[v17] = *(v9 + v17);
            ++v17;
          }

          while (v10 > v17);
          v7 += 512;
          v9 += v8;
        }
      }

      else
      {
        v18 = 0;
        v19 = &v26[32 * v5 + 1].i8[v6];
        v20 = (v9 + 16);
        do
        {
          v21 = v20;
          v22 = v19;
          v23 = v10;
          do
          {
            v24 = *v21;
            *(v22 - 1) = *(v21 - 1);
            *v22 = v24;
            v22 += 32;
            v21 += 2;
            v23 -= 32;
          }

          while (v23);
          ++v18;
          v19 += 512;
          v20 = (v20 + v8);
        }

        while (v18 != v3);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressMacroblock(v26, 512, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressMacroblock(v26, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = 2 * *(a1 + 76);
      v7 = &v26[16 * v5 + v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 32 * v4;
      if ((v10 - 1) >> 32)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 == 0;
      }

      if (v11)
      {
        for (i = 0; i != v3; ++i)
        {
          v13 = 0;
          do
          {
            v7->i8[v13] = v9->i8[v13];
            ++v13;
          }

          while (v10 > v13);
          v7 += 16;
          v9 = (v9 + v8);
        }
      }

      else if (v9 < &v26[16 * v3 - 16 + 16 * v5 + v10 / 0x10 + v6] && v7 < &v9->i8[v8 * (v3 - 1) + v10] || v8 < 0)
      {
        for (j = 0; j != v3; ++j)
        {
          v17 = 0;
          do
          {
            v7->i8[v17] = v9->i8[v17];
            ++v17;
          }

          while (v10 > v17);
          v7 += 16;
          v9 = (v9 + v8);
        }
      }

      else
      {
        v18 = 0;
        v19 = &v26[16 * v5 + 1 + v6];
        v20 = v9 + 1;
        do
        {
          v21 = v20;
          v22 = v19;
          v23 = v10;
          do
          {
            v24 = *v21;
            v22[-1] = v21[-1];
            *v22 = v24;
            v22 += 2;
            v21 += 2;
            v23 -= 32;
          }

          while (v23);
          ++v18;
          v19 += 16;
          v20 = (v20 + v8);
        }

        while (v18 != v3);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressMacroblock(v26, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressMacroblock(v37, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 8;
      v7 = *(a1 + 76);
      v8 = &v37[16 * v5 + v7];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 16 * *(a1 + 84);
      if ((v11 - 1) >> 32)
      {
        v12 = 1;
      }

      else
      {
        v12 = 16 * v4 == 0;
      }

      if (v12)
      {
        for (i = 0; i != v3; ++i)
        {
          v14 = 0;
          do
          {
            *(v8 + v14) = *(v10 + v14);
            ++v14;
          }

          while (v11 > v14);
          v8 += 16;
          v10 = (v10 + v9);
        }
      }

      else if (v10 < &v37[16 * v3 - 16 + 16 * v5 + v11 / 0x10 + v7] && v8 < (v10 + v9 * (v3 - 1) + v11) || v9 < 0)
      {
        for (j = 0; j != v3; ++j)
        {
          v18 = 0;
          do
          {
            *(v8 + v18) = *(v10 + v18);
            ++v18;
          }

          while (v11 > v18);
          v8 += 16;
          v10 = (v10 + v9);
        }
      }

      else if (v4 == 1)
      {
        do
        {
          *v8 = *v10;
          v10 = (v10 + v9);
          v8 += 16;
          --v3;
        }

        while (v3);
      }

      else
      {
        v20 = 0;
        v21 = v37 + v6 + v7 * 16;
        v22 = &v37[1] + v6 + v7 * 16;
        v23 = v10 + 1;
        v24 = (v10 + (v11 & 0x1FFFFFFE0));
        v25 = &v21[v11 & 0x1FFFFFFE0];
        do
        {
          v26 = v23;
          v27 = v22;
          v28 = v11 & 0x1FFFFFFE0;
          do
          {
            v29 = *v26;
            *(v27 - 1) = *(v26 - 1);
            *v27 = v29;
            v27 += 2;
            v26 += 2;
            v28 -= 32;
          }

          while (v28);
          if (v11 != (v11 & 0x1FFFFFFE0))
          {
            v30 = v25;
            v31 = v24;
            v32 = v11 - (v11 & 0x1FFFFFFE0);
            if (v4)
            {
              do
              {
                v36 = *v31++;
                *v30 = v36;
                v30 += 16;
                v32 -= 16;
              }

              while (v32);
            }

            else
            {
              v33 = 0;
              v34 = (v11 & 0xFFFFFFE0) + 1;
              do
              {
                v25[v33] = *(v24 + v33);
                v35 = v11 > v34++;
                ++v33;
              }

              while (v35);
            }
          }

          ++v20;
          v22 += 256;
          v23 = (v23 + v9);
          v24 = (v24 + v9);
          v25 += 256;
        }

        while (v20 != v3);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressMacroblock(v37, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE6ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(v64, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 6;
      v7 = 4 * *(a1 + 76);
      v8 = &v64[4 * v5].i8[v7];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 4 * v4;
      v12 = &v64[4 * v3 - 4 + 4 * v5].i8[4 * v4 + v7];
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
            v34 = &v64[1].i8[v6 + v7];
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
                v37 += 32;
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
            v50 = &v64[0].i8[v6 + v7];
            v51 = &v64[1].i8[v6 + v7];
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
                v56 += 32;
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
              v31 = *v29;
              v29 += 8;
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
              v46 = *v44;
              v44 += 8;
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(v64, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE6ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(v64, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 6;
      v7 = 4 * *(a1 + 76);
      v8 = &v64[4 * v5].i8[v7];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 4 * v4;
      v12 = &v64[4 * v3 - 4 + 4 * v5].i8[4 * v4 + v7];
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
            v34 = &v64[1].i8[v6 + v7];
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
                v37 += 32;
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
            v50 = &v64[0].i8[v6 + v7];
            v51 = &v64[1].i8[v6 + v7];
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
                v56 += 32;
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
              v31 = *v29;
              v29 += 8;
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
              v46 = *v44;
              v44 += 8;
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(v64, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE6ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(v64, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 6;
      v7 = 4 * *(a1 + 76);
      v8 = &v64[4 * v5].i8[v7];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 4 * v4;
      v12 = &v64[4 * v3 - 4 + 4 * v5].i8[4 * v4 + v7];
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
            v34 = &v64[1].i8[v6 + v7];
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
                v37 += 32;
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
            v50 = &v64[0].i8[v6 + v7];
            v51 = &v64[1].i8[v6 + v7];
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
                v56 += 32;
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
              v31 = *v29;
              v29 += 8;
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
              v46 = *v44;
              v44 += 8;
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(v64, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE6ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v84, *(a1 + 40), *(a1 + 48));
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
  v27 = &byte_29D2F30C1;
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

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE6ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v63, *(a1 + 40), *(a1 + 48));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(v63, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(v64, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(v64, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(v64, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(v64, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(v64, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(v64, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v84, *(a1 + 40), *(a1 + 48));
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
  v27 = &byte_29D2F30C1;
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

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v63, *(a1 + 40), *(a1 + 48));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(v63, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(v40, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(v40, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(v40, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(v40, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(v40, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(v40, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v67 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v66, *(a1 + 40), *(a1 + 48));
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
  v22 = &byte_29D2F30C1;
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

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v39, *(a1 + 40), *(a1 + 48));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(v39, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, double a3, double a4, int8x8_t a5)
{
  v68 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(v67, *(a1 + 40), *(a1 + 48), *(*(v6 + 208) + 52), a2, a3, a4, a5);
  v15 = *(a1 + 80);
  if (v15)
  {
    v16 = *(a1 + 84);
    if (v16)
    {
      v17 = *(a1 + 72);
      v18 = 2 * v17;
      v19 = 2 * *(a1 + 76);
      v20 = &v67[2 * v17].i8[v19];
      v22 = *(a1 + 56);
      v21 = *(a1 + 64);
      v23 = 2 * v16;
      v24 = &v67[2 * v15 - 2 + 2 * v17].i8[2 * v16 + v19];
      v27 = v20 < v22 + v21 * (v15 - 1) + 2 * v16 && v22 < v24 || v21 < 0;
      if (v16 > 3)
      {
        if (!v23 || (v23 - 1) >> 32)
        {
          for (i = 0; i != v15; ++i)
          {
            v33 = 0;
            do
            {
              v20[v33] = *(v22 + v33);
              ++v33;
            }

            while (v23 > v33);
            v20 += 32;
            v22 += v21;
          }
        }

        else if (v27)
        {
          for (j = 0; j != v15; ++j)
          {
            v31 = 0;
            do
            {
              v20[v31] = *(v22 + v31);
              ++v31;
            }

            while (v23 > v31);
            v20 += 32;
            v22 += v21;
          }
        }

        else
        {
          v35 = v23 & 0x1FFFFFFF8;
          if (v16 > 0xF)
          {
            v38 = v23 & 0x1FFFFFFE0;
            if (v23 == (v23 & 0x1FFFFFFE0))
            {
              v39 = 0;
              v40 = &v67[v18 + 1].i8[v19];
              v41 = (v22 + 16);
              do
              {
                v42 = v41;
                v43 = v40;
                v44 = v23;
                do
                {
                  v7 = *(v42 - 1);
                  v8 = *v42;
                  *(v43 - 1) = v7;
                  *v43 = v8;
                  v43 += 32;
                  v42 += 2;
                  v44 -= 32;
                }

                while (v44);
                ++v39;
                v40 += 32;
                v41 = (v41 + v21);
              }

              while (v39 != v15);
            }

            else
            {
              v52 = 0;
              v53 = v16 & 0xC;
              v54 = &v67[v18].i8[v19];
              v55 = &v67[v18 + 1].i8[v19];
              v56 = (v22 + 16);
              v57 = (v22 + v38);
              v58 = &v54[v38];
              do
              {
                v59 = v56;
                v60 = v55;
                v61 = v23 & 0x1FFFFFFE0;
                do
                {
                  v7 = *(v59 - 1);
                  v8 = *v59;
                  *(v60 - 1) = v7;
                  *v60 = v8;
                  v60 += 32;
                  v59 += 2;
                  v61 -= 32;
                }

                while (v61);
                v62 = v23 & 0x1FFFFFFE0;
                if (!v53)
                {
                  goto LABEL_64;
                }

                v63 = v58;
                v64 = v57;
                v65 = v35 - v38;
                do
                {
                  v66 = *v64++;
                  *&v7 = v66;
                  *v63 = v66;
                  v63 += 8;
                  v65 -= 8;
                }

                while (v65);
                v62 = v23 & 0x1FFFFFFF8;
                if (v23 != v35)
                {
LABEL_64:
                  do
                  {
                    v20[v62] = *(v22 + v62);
                    ++v62;
                  }

                  while (v23 > v62);
                }

                ++v52;
                v55 += 32;
                v56 = (v56 + v21);
                v57 = (v57 + v21);
                v58 += 32;
                v20 += 32;
                v22 += v21;
              }

              while (v52 != v15);
            }
          }

          else if (v23 == v35)
          {
            v36 = (v22 + 16);
            v37 = (v67[v18 + 1].i64 + v19);
            do
            {
              *&v7 = *(v36 - 2);
              *(v37 - 2) = v7;
              if (v16 != 4)
              {
                *&v7 = *(v36 - 1);
                *(v37 - 1) = v7;
                if (v16 != 8)
                {
                  *&v7 = *v36;
                  *v37 = *v36;
                }
              }

              v36 = (v36 + v21);
              v37 += 4;
              --v15;
            }

            while (v15);
          }

          else
          {
            for (k = 0; k != v15; ++k)
            {
              v46 = (v22 + v21 * k);
              v47 = &v20[32 * k];
              *&v7 = *v46;
              *v47 = *v46;
              if (v35 != 8)
              {
                *&v7 = v46[1];
                *(v47 + 1) = v7;
                if (v35 != 16)
                {
                  *&v7 = v46[2];
                  *(v47 + 2) = v7;
                }
              }

              v48 = &v47[v35];
              v49 = v46 + v35;
              v50 = v23 & 0x18;
              do
              {
                v51 = *v49++;
                *v48++ = v51;
                ++v50;
              }

              while (v23 > v50);
            }
          }
        }
      }

      else
      {
        for (m = 0; m != v15; ++m)
        {
          v29 = 0;
          do
          {
            v20[v29] = *(v22 + v29);
            ++v29;
          }

          while (v29 < v23);
          v20 += 32;
          v22 += v21;
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(v67, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v6 + 208) + 52), *&v7, *&v8, v9, v10, v11, v12, v13, v14);
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, double a3, double a4, int8x8_t a5)
{
  v68 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(v67, *(a1 + 40), *(a1 + 48), *(*(v6 + 208) + 52), a2, a3, a4, a5);
  v15 = *(a1 + 80);
  if (v15)
  {
    v16 = *(a1 + 84);
    if (v16)
    {
      v17 = *(a1 + 72);
      v18 = 2 * v17;
      v19 = 2 * *(a1 + 76);
      v20 = &v67[2 * v17].i8[v19];
      v22 = *(a1 + 56);
      v21 = *(a1 + 64);
      v23 = 2 * v16;
      v24 = &v67[2 * v15 - 2 + 2 * v17].i8[2 * v16 + v19];
      v27 = v20 < v22 + v21 * (v15 - 1) + 2 * v16 && v22 < v24 || v21 < 0;
      if (v16 > 3)
      {
        if (!v23 || (v23 - 1) >> 32)
        {
          for (i = 0; i != v15; ++i)
          {
            v33 = 0;
            do
            {
              v20[v33] = *(v22 + v33);
              ++v33;
            }

            while (v23 > v33);
            v20 += 32;
            v22 += v21;
          }
        }

        else if (v27)
        {
          for (j = 0; j != v15; ++j)
          {
            v31 = 0;
            do
            {
              v20[v31] = *(v22 + v31);
              ++v31;
            }

            while (v23 > v31);
            v20 += 32;
            v22 += v21;
          }
        }

        else
        {
          v35 = v23 & 0x1FFFFFFF8;
          if (v16 > 0xF)
          {
            v38 = v23 & 0x1FFFFFFE0;
            if (v23 == (v23 & 0x1FFFFFFE0))
            {
              v39 = 0;
              v40 = &v67[v18 + 1].i8[v19];
              v41 = (v22 + 16);
              do
              {
                v42 = v41;
                v43 = v40;
                v44 = v23;
                do
                {
                  v7 = *(v42 - 1);
                  v8 = *v42;
                  *(v43 - 1) = v7;
                  *v43 = v8;
                  v43 += 32;
                  v42 += 2;
                  v44 -= 32;
                }

                while (v44);
                ++v39;
                v40 += 32;
                v41 = (v41 + v21);
              }

              while (v39 != v15);
            }

            else
            {
              v52 = 0;
              v53 = v16 & 0xC;
              v54 = &v67[v18].i8[v19];
              v55 = &v67[v18 + 1].i8[v19];
              v56 = (v22 + 16);
              v57 = (v22 + v38);
              v58 = &v54[v38];
              do
              {
                v59 = v56;
                v60 = v55;
                v61 = v23 & 0x1FFFFFFE0;
                do
                {
                  v7 = *(v59 - 1);
                  v8 = *v59;
                  *(v60 - 1) = v7;
                  *v60 = v8;
                  v60 += 32;
                  v59 += 2;
                  v61 -= 32;
                }

                while (v61);
                v62 = v23 & 0x1FFFFFFE0;
                if (!v53)
                {
                  goto LABEL_64;
                }

                v63 = v58;
                v64 = v57;
                v65 = v35 - v38;
                do
                {
                  v66 = *v64++;
                  *&v7 = v66;
                  *v63 = v66;
                  v63 += 8;
                  v65 -= 8;
                }

                while (v65);
                v62 = v23 & 0x1FFFFFFF8;
                if (v23 != v35)
                {
LABEL_64:
                  do
                  {
                    v20[v62] = *(v22 + v62);
                    ++v62;
                  }

                  while (v23 > v62);
                }

                ++v52;
                v55 += 32;
                v56 = (v56 + v21);
                v57 = (v57 + v21);
                v58 += 32;
                v20 += 32;
                v22 += v21;
              }

              while (v52 != v15);
            }
          }

          else if (v23 == v35)
          {
            v36 = (v22 + 16);
            v37 = (v67[v18 + 1].i64 + v19);
            do
            {
              *&v7 = *(v36 - 2);
              *(v37 - 2) = v7;
              if (v16 != 4)
              {
                *&v7 = *(v36 - 1);
                *(v37 - 1) = v7;
                if (v16 != 8)
                {
                  *&v7 = *v36;
                  *v37 = *v36;
                }
              }

              v36 = (v36 + v21);
              v37 += 4;
              --v15;
            }

            while (v15);
          }

          else
          {
            for (k = 0; k != v15; ++k)
            {
              v46 = (v22 + v21 * k);
              v47 = &v20[32 * k];
              *&v7 = *v46;
              *v47 = *v46;
              if (v35 != 8)
              {
                *&v7 = v46[1];
                *(v47 + 1) = v7;
                if (v35 != 16)
                {
                  *&v7 = v46[2];
                  *(v47 + 2) = v7;
                }
              }

              v48 = &v47[v35];
              v49 = v46 + v35;
              v50 = v23 & 0x18;
              do
              {
                v51 = *v49++;
                *v48++ = v51;
                ++v50;
              }

              while (v23 > v50);
            }
          }
        }
      }

      else
      {
        for (m = 0; m != v15; ++m)
        {
          v29 = 0;
          do
          {
            v20[v29] = *(v22 + v29);
            ++v29;
          }

          while (v29 < v23);
          v20 += 32;
          v22 += v21;
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(v67, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v6 + 208) + 52), *&v7, *&v8, v9, v10, v11, v12, v13, v14);
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, double a3, double a4, int8x8_t a5)
{
  v68 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(v67, *(a1 + 40), *(a1 + 48), *(*(v6 + 208) + 52), a2, a3, a4, a5);
  v15 = *(a1 + 80);
  if (v15)
  {
    v16 = *(a1 + 84);
    if (v16)
    {
      v17 = *(a1 + 72);
      v18 = 2 * v17;
      v19 = 2 * *(a1 + 76);
      v20 = &v67[2 * v17].i8[v19];
      v22 = *(a1 + 56);
      v21 = *(a1 + 64);
      v23 = 2 * v16;
      v24 = &v67[2 * v15 - 2 + 2 * v17].i8[2 * v16 + v19];
      v27 = v20 < v22 + v21 * (v15 - 1) + 2 * v16 && v22 < v24 || v21 < 0;
      if (v16 > 3)
      {
        if (!v23 || (v23 - 1) >> 32)
        {
          for (i = 0; i != v15; ++i)
          {
            v33 = 0;
            do
            {
              v20[v33] = *(v22 + v33);
              ++v33;
            }

            while (v23 > v33);
            v20 += 32;
            v22 += v21;
          }
        }

        else if (v27)
        {
          for (j = 0; j != v15; ++j)
          {
            v31 = 0;
            do
            {
              v20[v31] = *(v22 + v31);
              ++v31;
            }

            while (v23 > v31);
            v20 += 32;
            v22 += v21;
          }
        }

        else
        {
          v35 = v23 & 0x1FFFFFFF8;
          if (v16 > 0xF)
          {
            v38 = v23 & 0x1FFFFFFE0;
            if (v23 == (v23 & 0x1FFFFFFE0))
            {
              v39 = 0;
              v40 = &v67[v18 + 1].i8[v19];
              v41 = (v22 + 16);
              do
              {
                v42 = v41;
                v43 = v40;
                v44 = v23;
                do
                {
                  v7 = *(v42 - 1);
                  v8 = *v42;
                  *(v43 - 1) = v7;
                  *v43 = v8;
                  v43 += 32;
                  v42 += 2;
                  v44 -= 32;
                }

                while (v44);
                ++v39;
                v40 += 32;
                v41 = (v41 + v21);
              }

              while (v39 != v15);
            }

            else
            {
              v52 = 0;
              v53 = v16 & 0xC;
              v54 = &v67[v18].i8[v19];
              v55 = &v67[v18 + 1].i8[v19];
              v56 = (v22 + 16);
              v57 = (v22 + v38);
              v58 = &v54[v38];
              do
              {
                v59 = v56;
                v60 = v55;
                v61 = v23 & 0x1FFFFFFE0;
                do
                {
                  v7 = *(v59 - 1);
                  v8 = *v59;
                  *(v60 - 1) = v7;
                  *v60 = v8;
                  v60 += 32;
                  v59 += 2;
                  v61 -= 32;
                }

                while (v61);
                v62 = v23 & 0x1FFFFFFE0;
                if (!v53)
                {
                  goto LABEL_64;
                }

                v63 = v58;
                v64 = v57;
                v65 = v35 - v38;
                do
                {
                  v66 = *v64++;
                  *&v7 = v66;
                  *v63 = v66;
                  v63 += 8;
                  v65 -= 8;
                }

                while (v65);
                v62 = v23 & 0x1FFFFFFF8;
                if (v23 != v35)
                {
LABEL_64:
                  do
                  {
                    v20[v62] = *(v22 + v62);
                    ++v62;
                  }

                  while (v23 > v62);
                }

                ++v52;
                v55 += 32;
                v56 = (v56 + v21);
                v57 = (v57 + v21);
                v58 += 32;
                v20 += 32;
                v22 += v21;
              }

              while (v52 != v15);
            }
          }

          else if (v23 == v35)
          {
            v36 = (v22 + 16);
            v37 = (v67[v18 + 1].i64 + v19);
            do
            {
              *&v7 = *(v36 - 2);
              *(v37 - 2) = v7;
              if (v16 != 4)
              {
                *&v7 = *(v36 - 1);
                *(v37 - 1) = v7;
                if (v16 != 8)
                {
                  *&v7 = *v36;
                  *v37 = *v36;
                }
              }

              v36 = (v36 + v21);
              v37 += 4;
              --v15;
            }

            while (v15);
          }

          else
          {
            for (k = 0; k != v15; ++k)
            {
              v46 = (v22 + v21 * k);
              v47 = &v20[32 * k];
              *&v7 = *v46;
              *v47 = *v46;
              if (v35 != 8)
              {
                *&v7 = v46[1];
                *(v47 + 1) = v7;
                if (v35 != 16)
                {
                  *&v7 = v46[2];
                  *(v47 + 2) = v7;
                }
              }

              v48 = &v47[v35];
              v49 = v46 + v35;
              v50 = v23 & 0x18;
              do
              {
                v51 = *v49++;
                *v48++ = v51;
                ++v50;
              }

              while (v23 > v50);
            }
          }
        }
      }

      else
      {
        for (m = 0; m != v15; ++m)
        {
          v29 = 0;
          do
          {
            v20[v29] = *(v22 + v29);
            ++v29;
          }

          while (v29 < v23);
          v20 += 32;
          v22 += v21;
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(v67, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v6 + 208) + 52), *&v7, *&v8, v9, v10, v11, v12, v13, v14);
}

float32x2x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int32x4_t a3, int32x4_t a4, int32x4_t a5)
{
  v69 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = &byte_29D2F30C1;
  v9 = 16;
  do
  {
    v11 = &v68[8 * *v8 + *(v8 - 1)];
    v12 = *v7;
    if (v12 == 63)
    {
      v13 = *v6;
      a3 = *(v6 + 16);
      a4 = *(v6 + 32);
      a5 = *(v6 + 48);
      *v11 = vuzp1q_s32(*v6, a4);
      v11[2] = vuzp2q_s32(v13, a4);
      v11[4] = vuzp1q_s32(a3, a5);
      a2 = vuzp2q_s32(a3, a5);
      v11[6] = a2;
      v10 = 64;
    }

    else if (v12 == 1)
    {
      a2 = vld1q_dup_s16(v6);
      *v11 = a2;
      v11[2] = a2;
      v11[4] = a2;
      v11[6] = a2;
      v10 = 2;
    }

    else if (*v7)
    {
      v10 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v11, 32, v6, v12, a2.n128_f64[0], *a3.i64, *a4.i64, *a5.i8);
    }

    else
    {
      v10 = 0;
      v11->val[0] = 0;
      v11->val[1] = 0;
      v11[2].val[0] = 0;
      v11[2].val[1] = 0;
      v11[4].val[0] = 0;
      v11[4].val[1] = 0;
      v11[6].val[0] = 0;
      v11[6].val[1] = 0;
    }

    v6 += v10;
    ++v7;
    v8 += 2;
    v9 -= 2;
  }

  while (v9);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(v68, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int32x4_t a3, int32x4_t a4, int32x4_t a5, int32x4_t a6, double a7, double a8, int16x4_t a9)
{
  v71 = *MEMORY[0x29EDCA608];
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = &byte_29D2F30C1;
  v13 = 16;
  do
  {
    v15 = &v70[128 * *v12 + 16 * *(v12 - 1)];
    v16 = *v11;
    if (v16 == 63)
    {
      v17 = *v10;
      a3 = *(v10 + 16);
      a4 = *(v10 + 32);
      a5 = *(v10 + 48);
      a6 = vuzp1q_s32(*v10, a4);
      *v15 = a6;
      v15[2] = vuzp2q_s32(v17, a4);
      v15[4] = vuzp1q_s32(a3, a5);
      a2 = vuzp2q_s32(a3, a5);
      v15[6] = a2;
      v14 = 64;
    }

    else if (v16 == 1)
    {
      a2 = vld1q_dup_s16(v10);
      *v15 = a2;
      v15[2] = a2;
      v15[4] = a2;
      v15[6] = a2;
      v14 = 2;
    }

    else if (*v11)
    {
      v14 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v15, 32, v10, v16, a2.n128_f64[0], *a3.i64, *a4.i64, *a5.i8);
    }

    else
    {
      v14 = 0;
      v15->i64[0] = 0;
      v15->i64[1] = 0;
      v15[2].i64[0] = 0;
      v15[2].i64[1] = 0;
      v15[4].i64[0] = 0;
      v15[4].i64[1] = 0;
      v15[6].i64[0] = 0;
      v15[6].i64[1] = 0;
    }

    v10 += v14;
    ++v11;
    v12 += 2;
    v13 -= 2;
  }

  while (v13);
  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = *(a1 + 84);
    if (v19)
    {
      v20 = *(a1 + 72);
      v21 = 32 * v20;
      v22 = 2 * *(a1 + 76);
      v23 = &v70[32 * v20 + v22];
      v25 = *(a1 + 56);
      v24 = *(a1 + 64);
      v26 = 2 * v19;
      v27 = &v70[32 * v18 - 32 + 32 * v20 + 2 * v19 + v22];
      v30 = v23 < v25 + v24 * (v18 - 1) + 2 * v19 && v25 < v27 || v24 < 0;
      if (v19 > 3)
      {
        if (!v26 || (v26 - 1) >> 32)
        {
          for (i = 0; i != v18; ++i)
          {
            v36 = 0;
            do
            {
              v23[v36] = *(v25 + v36);
              ++v36;
            }

            while (v26 > v36);
            v23 += 32;
            v25 += v24;
          }
        }

        else if (v30)
        {
          for (j = 0; j != v18; ++j)
          {
            v34 = 0;
            do
            {
              v23[v34] = *(v25 + v34);
              ++v34;
            }

            while (v26 > v34);
            v23 += 32;
            v25 += v24;
          }
        }

        else
        {
          v38 = v26 & 0x1FFFFFFF8;
          if (v19 > 0xF)
          {
            v41 = v26 & 0x1FFFFFFE0;
            if (v26 == (v26 & 0x1FFFFFFE0))
            {
              v42 = 0;
              v43 = &v70[v21 + 16 + v22];
              v44 = (v25 + 16);
              do
              {
                v45 = v44;
                v46 = v43;
                v47 = v26;
                do
                {
                  a2 = v45[-1];
                  a3 = *v45;
                  v46[-1] = a2;
                  *v46 = a3;
                  v46 += 2;
                  v45 += 2;
                  v47 -= 32;
                }

                while (v47);
                ++v42;
                v43 += 2;
                v44 = (v44 + v24);
              }

              while (v42 != v18);
            }

            else
            {
              v55 = 0;
              v56 = v19 & 0xC;
              v57 = &v70[v21 + v22];
              v58 = &v70[v21 + 16 + v22];
              v59 = (v25 + 16);
              v60 = (v25 + v41);
              v61 = &v57[v41];
              do
              {
                v62 = v59;
                v63 = v58;
                v64 = v26 & 0x1FFFFFFE0;
                do
                {
                  a2 = v62[-1];
                  a3 = *v62;
                  v63[-1] = a2;
                  *v63 = a3;
                  v63 += 2;
                  v62 += 2;
                  v64 -= 32;
                }

                while (v64);
                v65 = v26 & 0x1FFFFFFE0;
                if (!v56)
                {
                  goto LABEL_73;
                }

                v66 = v61;
                v67 = v60;
                v68 = v38 - v41;
                do
                {
                  v69 = *v67++;
                  a2.n128_u64[0] = v69;
                  *v66++ = v69;
                  v68 -= 8;
                }

                while (v68);
                v65 = v26 & 0x1FFFFFFF8;
                if (v26 != v38)
                {
LABEL_73:
                  do
                  {
                    v23[v65] = *(v25 + v65);
                    ++v65;
                  }

                  while (v26 > v65);
                }

                ++v55;
                v58 += 2;
                v59 = (v59 + v24);
                v60 = (v60 + v24);
                v61 += 4;
                v23 += 32;
                v25 += v24;
              }

              while (v55 != v18);
            }
          }

          else if (v26 == v38)
          {
            v39 = (v25 + 16);
            v40 = &v70[v21 + 16 + v22];
            do
            {
              a2.n128_u64[0] = *(v39 - 2);
              *(v40 - 2) = a2.n128_u64[0];
              if (v19 != 4)
              {
                a2.n128_u64[0] = *(v39 - 1);
                *(v40 - 1) = a2.n128_u64[0];
                if (v19 != 8)
                {
                  a2.n128_u64[0] = *v39;
                  *v40 = *v39;
                }
              }

              v39 = (v39 + v24);
              v40 += 4;
              --v18;
            }

            while (v18);
          }

          else
          {
            for (k = 0; k != v18; ++k)
            {
              v49 = (v25 + v24 * k);
              v50 = &v23[32 * k];
              a2.n128_u64[0] = *v49;
              *v50 = *v49;
              if (v38 != 8)
              {
                a2.n128_u64[0] = v49[1];
                v50[1] = a2.n128_u64[0];
                if (v38 != 16)
                {
                  a2.n128_u64[0] = v49[2];
                  v50[2] = a2.n128_u64[0];
                }
              }

              v51 = v50 + v38;
              v52 = v49 + v38;
              v53 = v26 & 0x18;
              do
              {
                v54 = *v52++;
                *v51++ = v54;
                ++v53;
              }

              while (v26 > v53);
            }
          }
        }
      }

      else
      {
        for (m = 0; m != v18; ++m)
        {
          v32 = 0;
          do
          {
            v23[v32] = *(v25 + v32);
            ++v32;
          }

          while (v32 < v26);
          v23 += 32;
          v25 += v24;
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(v70, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), a2.n128_f64[0], *a3.i64, *a4.i64, *a5.i64, *a6.i64, a7, a8, a9);
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(v40, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(v40, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}