uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int64x2_t a3, __n128 a4, __n128 a5)
{
  v14 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v13, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = 0;
    v9 = &v13[64 * *(a1 + 72) + 4 * *(a1 + 76)];
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

        while (4 * v10 > v11);
        v7 = *(a1 + 80);
      }

      ++v8;
      v9 += 64;
    }

    while (v8 < v7);
  }

  return result;
}

int8x16_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

int8x16_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

int8x16_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

int8x16_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

_BYTE *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    result = &v23[512 * *v4 + 32 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 127)
    {
      v10 = *(v2 + 16);
      v11 = *(v2 + 32);
      v12 = *(v2 + 48);
      v13 = *(v2 + 80);
      v14 = *(v2 + 96);
      v15 = *(v2 + 112);
      v16 = *(v2 + 64);
      *result = *v2;
      *(result + 1) = v11;
      *(result + 8) = v10;
      *(result + 9) = v12;
      *(result + 16) = v16;
      *(result + 17) = v14;
      *(result + 24) = v13;
      *(result + 25) = v15;
      v7 = 128;
    }

    else if (v9 == 3)
    {
      v6 = vld1q_dup_f32(v2);
      *result = v6;
      *(result + 1) = v6;
      *(result + 8) = v6;
      *(result + 9) = v6;
      *(result + 16) = v6;
      *(result + 17) = v6;
      *(result + 24) = v6;
      *(result + 25) = v6;
      v7 = 4;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 128, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      *result = 0u;
      *(result + 1) = 0u;
      *(result + 8) = 0u;
      *(result + 9) = 0u;
      *(result + 16) = 0u;
      *(result + 17) = 0u;
      *(result + 24) = 0u;
      *(result + 25) = 0u;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v17 = *(a1 + 80);
  if (v17)
  {
    v18 = 0;
    v19 = &v23[128 * *(a1 + 72) + 8 * *(a1 + 76)];
    LODWORD(v20) = *(a1 + 84);
    do
    {
      if (v20)
      {
        v21 = 0;
        v22 = *(a1 + 56) + *(a1 + 64) * v18;
        do
        {
          *(v22 + v21) = v19[v21];
          ++v21;
          v20 = *(a1 + 84);
        }

        while (8 * v20 > v21);
        v17 = *(a1 + 80);
      }

      ++v18;
      v19 += 128;
    }

    while (v18 < v17);
  }

  return result;
}

_BYTE *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    result = &v23[512 * *v4 + 32 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 127)
    {
      v10 = *(v2 + 16);
      v11 = *(v2 + 32);
      v12 = *(v2 + 48);
      v13 = *(v2 + 80);
      v14 = *(v2 + 96);
      v15 = *(v2 + 112);
      v16 = *(v2 + 64);
      *result = *v2;
      *(result + 1) = v11;
      *(result + 8) = v10;
      *(result + 9) = v12;
      *(result + 16) = v16;
      *(result + 17) = v14;
      *(result + 24) = v13;
      *(result + 25) = v15;
      v7 = 128;
    }

    else if (v9 == 3)
    {
      v6 = vld1q_dup_f32(v2);
      *result = v6;
      *(result + 1) = v6;
      *(result + 8) = v6;
      *(result + 9) = v6;
      *(result + 16) = v6;
      *(result + 17) = v6;
      *(result + 24) = v6;
      *(result + 25) = v6;
      v7 = 4;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 128, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      *result = 0u;
      *(result + 1) = 0u;
      *(result + 8) = 0u;
      *(result + 9) = 0u;
      *(result + 16) = 0u;
      *(result + 17) = 0u;
      *(result + 24) = 0u;
      *(result + 25) = 0u;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v17 = *(a1 + 80);
  if (v17)
  {
    v18 = 0;
    v19 = &v23[128 * *(a1 + 72) + 8 * *(a1 + 76)];
    LODWORD(v20) = *(a1 + 84);
    do
    {
      if (v20)
      {
        v21 = 0;
        v22 = *(a1 + 56) + *(a1 + 64) * v18;
        do
        {
          *(v22 + v21) = v19[v21];
          ++v21;
          v20 = *(a1 + 84);
        }

        while (8 * v20 > v21);
        v17 = *(a1 + 80);
      }

      ++v18;
      v19 += 128;
    }

    while (v18 < v17);
  }

  return result;
}

_BYTE *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    result = &v23[512 * *v4 + 32 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 127)
    {
      v10 = *(v2 + 16);
      v11 = *(v2 + 32);
      v12 = *(v2 + 48);
      v13 = *(v2 + 80);
      v14 = *(v2 + 96);
      v15 = *(v2 + 112);
      v16 = *(v2 + 64);
      *result = *v2;
      *(result + 1) = v11;
      *(result + 8) = v10;
      *(result + 9) = v12;
      *(result + 16) = v16;
      *(result + 17) = v14;
      *(result + 24) = v13;
      *(result + 25) = v15;
      v7 = 128;
    }

    else if (v9 == 3)
    {
      v6 = vld1q_dup_f32(v2);
      *result = v6;
      *(result + 1) = v6;
      *(result + 8) = v6;
      *(result + 9) = v6;
      *(result + 16) = v6;
      *(result + 17) = v6;
      *(result + 24) = v6;
      *(result + 25) = v6;
      v7 = 4;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 128, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      *result = 0u;
      *(result + 1) = 0u;
      *(result + 8) = 0u;
      *(result + 9) = 0u;
      *(result + 16) = 0u;
      *(result + 17) = 0u;
      *(result + 24) = 0u;
      *(result + 25) = 0u;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v17 = *(a1 + 80);
  if (v17)
  {
    v18 = 0;
    v19 = &v23[128 * *(a1 + 72) + 8 * *(a1 + 76)];
    LODWORD(v20) = *(a1 + 84);
    do
    {
      if (v20)
      {
        v21 = 0;
        v22 = *(a1 + 56) + *(a1 + 64) * v18;
        do
        {
          *(v22 + v21) = v19[v21];
          ++v21;
          v20 = *(a1 + 84);
        }

        while (8 * v20 > v21);
        v17 = *(a1 + 80);
      }

      ++v18;
      v19 += 128;
    }

    while (v18 < v17);
  }

  return result;
}

_BYTE *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    result = &v23[512 * *v4 + 32 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 127)
    {
      v10 = *(v2 + 16);
      v11 = *(v2 + 32);
      v12 = *(v2 + 48);
      v13 = *(v2 + 80);
      v14 = *(v2 + 96);
      v15 = *(v2 + 112);
      v16 = *(v2 + 64);
      *result = *v2;
      *(result + 1) = v11;
      *(result + 8) = v10;
      *(result + 9) = v12;
      *(result + 16) = v16;
      *(result + 17) = v14;
      *(result + 24) = v13;
      *(result + 25) = v15;
      v7 = 128;
    }

    else if (v9 == 3)
    {
      v6 = vld1q_dup_f32(v2);
      *result = v6;
      *(result + 1) = v6;
      *(result + 8) = v6;
      *(result + 9) = v6;
      *(result + 16) = v6;
      *(result + 17) = v6;
      *(result + 24) = v6;
      *(result + 25) = v6;
      v7 = 4;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 128, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      *result = 0u;
      *(result + 1) = 0u;
      *(result + 8) = 0u;
      *(result + 9) = 0u;
      *(result + 16) = 0u;
      *(result + 17) = 0u;
      *(result + 24) = 0u;
      *(result + 25) = 0u;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v17 = *(a1 + 80);
  if (v17)
  {
    v18 = 0;
    v19 = &v23[128 * *(a1 + 72) + 8 * *(a1 + 76)];
    LODWORD(v20) = *(a1 + 84);
    do
    {
      if (v20)
      {
        v21 = 0;
        v22 = *(a1 + 56) + *(a1 + 64) * v18;
        do
        {
          *(v22 + v21) = v19[v21];
          ++v21;
          v20 = *(a1 + 84);
        }

        while (8 * v20 > v21);
        v17 = *(a1 + 80);
      }

      ++v18;
      v19 += 128;
    }

    while (v18 < v17);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int32x2_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int32x2_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int32x2_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int32x2_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj8ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v18[97] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(*(*(a1 + 32) + 208) + 52);
  v5 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v15, 512, v2, *v3, v4);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(&v16, 512, v5, v3[1], v4);
  v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(&v17, 512, v6, v3[2], v4);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v18, 512, v6 + v7, v3[3], v4);
  v9 = *(a1 + 80);
  if (v9)
  {
    v10 = 0;
    v11 = &v15[512 * *(a1 + 72) + 128 * *(a1 + 76)];
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

        while (v12 << 7 > v13);
        v9 = *(a1 + 80);
      }

      ++v10;
      v11 += 512;
    }

    while (v10 < v9);
  }

  return result;
}

float64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(*(*(a1 + 32) + 208) + 52);
  v5 = &byte_29D2F30E1;
  v6 = 16;
  do
  {
    result = &v17[1024 * *v5 + 128 * *(v5 - 1)];
    v9 = *v3;
    if (*v3)
    {
      if (v9 < 0xF0)
      {
        if (v9 == 7)
        {
          v10 = vld1q_dup_f64(v2);
          *result = v10;
          result[1] = v10;
          result[2] = v10;
          result[3] = v10;
          result[4] = v10;
          result[5] = v10;
          result[6] = v10;
          result[7] = v10;
          result[32] = v10;
          result[33] = v10;
          result[34] = v10;
          result[35] = v10;
          result[36] = v10;
          result[37] = v10;
          result[38] = v10;
          result[39] = v10;
          v7 = 8;
        }

        else
        {
          result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(result, 512, v2, v9);
          v7 = result;
        }
      }

      else
      {
        result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(result, 512, v2, v9, v4);
        v7 = 128;
      }
    }

    else
    {
      v7 = 0;
      result[6] = 0u;
      result[7] = 0u;
      result[4] = 0u;
      result[5] = 0u;
      result[2] = 0u;
      result[3] = 0u;
      *result = 0u;
      result[1] = 0u;
      result[32] = 0u;
      result[33] = 0u;
      result[34] = 0u;
      result[35] = 0u;
      result[36] = 0u;
      result[37] = 0u;
      result[38] = 0u;
      result[39] = 0u;
    }

    v2 = (v2 + v7);
    ++v3;
    v5 += 2;
    v6 -= 2;
  }

  while (v6);
  v11 = *(a1 + 80);
  if (v11)
  {
    v12 = 0;
    v13 = &v17[512 * *(a1 + 72) + 64 * *(a1 + 76)];
    LODWORD(v14) = *(a1 + 84);
    do
    {
      if (v14)
      {
        v15 = 0;
        v16 = *(a1 + 56) + *(a1 + 64) * v12;
        do
        {
          *(v16 + v15) = v13[v15];
          ++v15;
          v14 = *(a1 + 84);
        }

        while (v14 << 6 > v15);
        v11 = *(a1 + 80);
      }

      ++v12;
      v13 += 512;
    }

    while (v12 < v11);
  }

  return result;
}

__n128 *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int16x8_t a2, __n128 a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(*(*(a1 + 32) + 208) + 52);
  v7 = &byte_29D2F30E1;
  v8 = 16;
  do
  {
    result = &v20[256 * *v7 + 32 * *(v7 - 1)];
    v11 = *v5;
    if (*v5)
    {
      if (v11 < 0xF0)
      {
        if (v11 == 63)
        {
          a2 = *v4;
          a3 = *(v4 + 16);
          v12 = *(v4 + 32);
          v13 = *(v4 + 48);
          *result = *v4;
          result[1] = a3;
          result[8] = v12;
          result[9] = v13;
          v9 = 64;
        }

        else if (v11 == 1)
        {
          a2 = vld1q_dup_s16(v4);
          *result = a2;
          result[1] = a2;
          result[8] = a2;
          result[9] = a2;
          v9 = 2;
        }

        else
        {
          result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(result, 128, v4, v11, *a2.i8, a3.n128_u64[0]);
          v9 = result;
        }
      }

      else
      {
        result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(result, 128, v4, v11, v6);
        v9 = 32;
      }
    }

    else
    {
      v9 = 0;
      a2.i64[0] = 0;
      *result = 0u;
      result[1] = 0u;
      result[8] = 0u;
      result[9] = 0u;
    }

    v4 += v9;
    ++v5;
    v7 += 2;
    v8 -= 2;
  }

  while (v8);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = 0;
    v16 = &v20[128 * *(a1 + 72) + 16 * *(a1 + 76)];
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

        while (16 * v17 > v18);
        v14 = *(a1 + 80);
      }

      ++v15;
      v16 += 128;
    }

    while (v15 < v14);
  }

  return result;
}

void ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v8, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = 0;
    v4 = &v8[512 * *(a1 + 72) + 64 * *(a1 + 76)];
    LODWORD(v5) = *(a1 + 84);
    do
    {
      if (v5)
      {
        v6 = 0;
        v7 = *(a1 + 56) + *(a1 + 64) * v3;
        do
        {
          *(v7 + v6) = v4[v6];
          ++v6;
          v5 = *(a1 + 84);
        }

        while (v5 << 6 > v6);
        v2 = *(a1 + 80);
      }

      ++v3;
      v4 += 512;
    }

    while (v3 < v2);
  }
}

_BYTE *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(*(*(a1 + 32) + 208) + 52);
  v5 = &byte_29D2F30E1;
  v6 = 16;
  do
  {
    result = &v24[512 * *v5 + 64 * *(v5 - 1)];
    v9 = *v3;
    if (*v3)
    {
      if (v9 < 0xF0)
      {
        if (v9 == 127)
        {
          v11 = *(v2 + 16);
          v12 = *(v2 + 32);
          v13 = *(v2 + 48);
          v14 = *(v2 + 64);
          v15 = *(v2 + 80);
          v16 = *(v2 + 96);
          v17 = *(v2 + 112);
          *result = *v2;
          *(result + 1) = v11;
          *(result + 2) = v12;
          *(result + 3) = v13;
          *(result + 16) = v14;
          *(result + 17) = v15;
          *(result + 18) = v16;
          *(result + 19) = v17;
          v7 = 128;
        }

        else if (v9 == 3)
        {
          v10 = vld1q_dup_f32(v2);
          *result = v10;
          *(result + 1) = v10;
          *(result + 2) = v10;
          *(result + 3) = v10;
          *(result + 16) = v10;
          *(result + 17) = v10;
          *(result + 18) = v10;
          *(result + 19) = v10;
          v7 = 4;
        }

        else
        {
          result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(result, 256, v2, v9);
          v7 = result;
        }
      }

      else
      {
        result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(result, 256, v2, v9, v4);
        v7 = 64;
      }
    }

    else
    {
      v7 = 0;
      *(result + 2) = 0u;
      *(result + 3) = 0u;
      *result = 0u;
      *(result + 1) = 0u;
      *(result + 16) = 0u;
      *(result + 17) = 0u;
      *(result + 18) = 0u;
      *(result + 19) = 0u;
    }

    v2 += v7;
    ++v3;
    v5 += 2;
    v6 -= 2;
  }

  while (v6);
  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = 0;
    v20 = &v24[256 * *(a1 + 72) + 32 * *(a1 + 76)];
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

        while (32 * v21 > v22);
        v18 = *(a1 + 80);
      }

      ++v19;
      v20 += 256;
    }

    while (v19 < v18);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[16 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5->i8[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (32 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 16;
    }

    while (v4 < v3);
  }

  return result;
}

void ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int16x8_t a2, __n128 a3, __n128 a4, __n128 a5)
{
  v21 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(*(*(a1 + 32) + 208) + 52);
  v9 = &byte_29D2F30E1;
  v10 = 16;
  do
  {
    v12 = &v20[256 * *v9 + 32 * *(v9 - 1)];
    v13 = *v7;
    if (*v7)
    {
      if (v13 < 0xF0)
      {
        if (v13 == 63)
        {
          a2 = *v6;
          a3 = v6[1];
          a4 = v6[2];
          a5 = v6[3];
          *v12 = *v6;
          v12[1] = a3;
          v12[8] = a4;
          v12[9] = a5;
          v11 = 64;
        }

        else if (v13 == 1)
        {
          a2 = vld1q_dup_s16(v6);
          *v12 = a2;
          v12[1] = a2;
          v12[8] = a2;
          v12[9] = a2;
          v11 = 2;
        }

        else
        {
          v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v12, 128, v6, v13, *a2.i64, a3.n128_f64[0], a4.n128_f64[0], a5.n128_u64[0]);
        }
      }

      else
      {
        a2.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v12, 128, v6, v13, v8).u64[0];
        v11 = 32;
      }
    }

    else
    {
      v11 = 0;
      a2.i64[0] = 0;
      *v12 = 0u;
      v12[1] = 0u;
      v12[8] = 0u;
      v12[9] = 0u;
    }

    v6 = (v6 + v11);
    ++v7;
    v9 += 2;
    v10 -= 2;
  }

  while (v10);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = 0;
    v16 = &v20[128 * *(a1 + 72) + 16 * *(a1 + 76)];
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

        while (16 * v17 > v18);
        v14 = *(a1 + 80);
      }

      ++v15;
      v16 += 128;
    }

    while (v15 < v14);
  }
}

_BYTE *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(*(*(a1 + 32) + 208) + 52);
  v5 = &byte_29D2F30E1;
  v6 = 16;
  do
  {
    result = &v24[512 * *v5 + 64 * *(v5 - 1)];
    v9 = *v3;
    if (*v3)
    {
      if (v9 < 0xF0)
      {
        if (v9 == 127)
        {
          v11 = *(v2 + 16);
          v12 = *(v2 + 32);
          v13 = *(v2 + 48);
          v14 = *(v2 + 64);
          v15 = *(v2 + 80);
          v16 = *(v2 + 96);
          v17 = *(v2 + 112);
          *result = *v2;
          *(result + 1) = v11;
          *(result + 2) = v12;
          *(result + 3) = v13;
          *(result + 16) = v14;
          *(result + 17) = v15;
          *(result + 18) = v16;
          *(result + 19) = v17;
          v7 = 128;
        }

        else if (v9 == 3)
        {
          v10 = vld1q_dup_f32(v2);
          *result = v10;
          *(result + 1) = v10;
          *(result + 2) = v10;
          *(result + 3) = v10;
          *(result + 16) = v10;
          *(result + 17) = v10;
          *(result + 18) = v10;
          *(result + 19) = v10;
          v7 = 4;
        }

        else
        {
          result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(result, 256, v2, v9);
          v7 = result;
        }
      }

      else
      {
        result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(result, 256, v2, v9, v4);
        v7 = 64;
      }
    }

    else
    {
      v7 = 0;
      *(result + 2) = 0u;
      *(result + 3) = 0u;
      *result = 0u;
      *(result + 1) = 0u;
      *(result + 16) = 0u;
      *(result + 17) = 0u;
      *(result + 18) = 0u;
      *(result + 19) = 0u;
    }

    v2 += v7;
    ++v3;
    v5 += 2;
    v6 -= 2;
  }

  while (v6);
  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = 0;
    v20 = &v24[256 * *(a1 + 72) + 32 * *(a1 + 76)];
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

        while (32 * v21 > v22);
        v18 = *(a1 + 80);
      }

      ++v19;
      v20 += 256;
    }

    while (v19 < v18);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[256 * *(a1 + 72) + 32 * *(a1 + 76)];
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

        while (32 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 256;
    }

    while (v4 < v3);
  }

  return result;
}

void ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int8x8_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(*(*(a1 + 32) + 208) + 52);
  v7 = &byte_29D2F30E1;
  v8 = 16;
  do
  {
    v10 = &v20[128 * *v7 + 16 * *(v7 - 1)];
    v11 = *v5;
    if (*v5)
    {
      if (v11 < 0xF0)
      {
        if (v11 == 31)
        {
          a2.n128_u64[0] = *v4;
          a3 = *(v4 + 8);
          v12 = *(v4 + 16);
          v13 = *(v4 + 24);
          v10->n128_u64[0] = *v4;
          v10->n128_f64[1] = *&a3;
          v10[4].n128_u64[0] = v12;
          v10[4].n128_u64[1] = v13;
          v9 = 32;
        }

        else if (v11 == 96)
        {
          a2 = vld1q_dup_s8(v4);
          *v10 = a2;
          v10[4] = a2;
          v9 = 1;
        }

        else
        {
          v9 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v10, 64, v4, v11, a2.n128_f64[0], a3);
        }
      }

      else
      {
        a2.n128_u64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v10, 64, v4, v11, v6).n128_u64[0];
        v9 = 16;
      }
    }

    else
    {
      v9 = 0;
      v10->n128_u64[0] = 0;
      v10->n128_u64[1] = 0;
      v10[4].n128_u64[0] = 0;
      v10[4].n128_u64[1] = 0;
    }

    v4 += v9;
    ++v5;
    v7 += 2;
    v8 -= 2;
  }

  while (v8);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = 0;
    v16 = &v20[64 * *(a1 + 72) + 8 * *(a1 + 76)];
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

        while (8 * v17 > v18);
        v14 = *(a1 + 80);
      }

      ++v15;
      v16 += 64;
    }

    while (v15 < v14);
  }
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj4ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v18[97] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(*(*(a1 + 32) + 208) + 52);
  v5 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v15, 512, v2, *v3, v4);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(&v17, 512, v5, v3[1], v4);
  v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(&v16, 512, v6, v3[2], v4);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v18, 512, v6 + v7, v3[3], v4);
  v9 = *(a1 + 80);
  if (v9)
  {
    v10 = 0;
    v11 = &v15[512 * *(a1 + 72) + 64 * *(a1 + 76)];
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

        while (v12 << 6 > v13);
        v9 = *(a1 + 80);
      }

      ++v10;
      v11 += 512;
    }

    while (v10 < v9);
  }

  return result;
}

float64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(*(*(a1 + 32) + 208) + 52);
  v5 = &byte_29D2F2FE5;
  v6 = 16;
  do
  {
    result = &v17[512 * *v5 + 128 * *(v5 - 1)];
    v9 = *v3;
    if (*v3)
    {
      if (v9 < 0xF0)
      {
        if (v9 == 7)
        {
          v10 = vld1q_dup_f64(v2);
          *result = v10;
          result[1] = v10;
          result[2] = v10;
          result[3] = v10;
          result[4] = v10;
          result[5] = v10;
          result[6] = v10;
          result[7] = v10;
          result[16] = v10;
          result[17] = v10;
          result[18] = v10;
          result[19] = v10;
          result[20] = v10;
          result[21] = v10;
          result[22] = v10;
          result[23] = v10;
          v7 = 8;
        }

        else
        {
          result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(result, 256, v2, v9);
          v7 = result;
        }
      }

      else
      {
        result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(result, 256, v2, v9, v4);
        v7 = 128;
      }
    }

    else
    {
      v7 = 0;
      result[6] = 0u;
      result[7] = 0u;
      result[4] = 0u;
      result[5] = 0u;
      result[2] = 0u;
      result[3] = 0u;
      *result = 0u;
      result[1] = 0u;
      result[16] = 0u;
      result[17] = 0u;
      result[18] = 0u;
      result[19] = 0u;
      result[20] = 0u;
      result[21] = 0u;
      result[22] = 0u;
      result[23] = 0u;
    }

    v2 = (v2 + v7);
    ++v3;
    v5 += 2;
    v6 -= 2;
  }

  while (v6);
  v11 = *(a1 + 80);
  if (v11)
  {
    v12 = 0;
    v13 = &v17[256 * *(a1 + 72) + 32 * *(a1 + 76)];
    LODWORD(v14) = *(a1 + 84);
    do
    {
      if (v14)
      {
        v15 = 0;
        v16 = *(a1 + 56) + *(a1 + 64) * v12;
        do
        {
          *(v16 + v15) = v13[v15];
          ++v15;
          v14 = *(a1 + 84);
        }

        while (32 * v14 > v15);
        v11 = *(a1 + 80);
      }

      ++v12;
      v13 += 256;
    }

    while (v12 < v11);
  }

  return result;
}

_BYTE *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, __n128 a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(*(*(a1 + 32) + 208) + 52);
  v7 = &byte_29D2F2FE5;
  v8 = 16;
  do
  {
    result = &v20[128 * *v7 + 32 * *(v7 - 1)];
    v11 = *v5;
    if (*v5)
    {
      if (v11 < 0xF0)
      {
        if (v11 == 63)
        {
          a2 = *v4;
          a3 = *(v4 + 16);
          v12 = *(v4 + 32);
          v13 = *(v4 + 48);
          *result = *v4;
          *(result + 1) = v12;
          *(result + 4) = a3;
          *(result + 5) = v13;
          v9 = 64;
        }

        else if (v11 == 1)
        {
          a2 = vld1q_dup_s16(v4);
          *result = a2;
          *(result + 1) = a2;
          *(result + 4) = a2;
          *(result + 5) = a2;
          v9 = 2;
        }

        else
        {
          result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(result, 64, v4, v11, a2.n128_u64[0], a3.n128_u64[0]);
          v9 = result;
        }
      }

      else
      {
        result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(result, 64, v4, v11, v6);
        v9 = 32;
      }
    }

    else
    {
      v9 = 0;
      a2.n128_u64[0] = 0;
      *result = 0u;
      *(result + 1) = 0u;
      *(result + 4) = 0u;
      *(result + 5) = 0u;
    }

    v4 += v9;
    ++v5;
    v7 += 2;
    v8 -= 2;
  }

  while (v8);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = 0;
    v16 = &v20[64 * *(a1 + 72) + 8 * *(a1 + 76)];
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

        while (8 * v17 > v18);
        v14 = *(a1 + 80);
      }

      ++v15;
      v16 += 64;
    }

    while (v15 < v14);
  }

  return result;
}

void ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v8, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = 0;
    v4 = &v8[256 * *(a1 + 72) + 32 * *(a1 + 76)];
    LODWORD(v5) = *(a1 + 84);
    do
    {
      if (v5)
      {
        v6 = 0;
        v7 = *(a1 + 56) + *(a1 + 64) * v3;
        do
        {
          *(v7 + v6) = v4[v6];
          ++v6;
          v5 = *(a1 + 84);
        }

        while (32 * v5 > v6);
        v2 = *(a1 + 80);
      }

      ++v3;
      v4 += 256;
    }

    while (v3 < v2);
  }
}

_BYTE *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(*(*(a1 + 32) + 208) + 52);
  v5 = &byte_29D2F2FE5;
  v6 = 16;
  do
  {
    result = &v24[256 * *v5 + 64 * *(v5 - 1)];
    v9 = *v3;
    if (*v3)
    {
      if (v9 < 0xF0)
      {
        if (v9 == 127)
        {
          v11 = *(v2 + 16);
          v12 = *(v2 + 32);
          v13 = *(v2 + 48);
          v14 = *(v2 + 64);
          v15 = *(v2 + 80);
          v16 = *(v2 + 96);
          v17 = *(v2 + 112);
          *result = *v2;
          *(result + 1) = v11;
          *(result + 2) = v14;
          *(result + 3) = v15;
          *(result + 8) = v12;
          *(result + 9) = v13;
          *(result + 10) = v16;
          *(result + 11) = v17;
          v7 = 128;
        }

        else if (v9 == 3)
        {
          v10 = vld1q_dup_f32(v2);
          *result = v10;
          *(result + 1) = v10;
          *(result + 2) = v10;
          *(result + 3) = v10;
          *(result + 8) = v10;
          *(result + 9) = v10;
          *(result + 10) = v10;
          *(result + 11) = v10;
          v7 = 4;
        }

        else
        {
          result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(result, 128, v2, v9);
          v7 = result;
        }
      }

      else
      {
        result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(result, 128, v2, v9, v4);
        v7 = 64;
      }
    }

    else
    {
      v7 = 0;
      *(result + 2) = 0u;
      *(result + 3) = 0u;
      *result = 0u;
      *(result + 1) = 0u;
      *(result + 8) = 0u;
      *(result + 9) = 0u;
      *(result + 10) = 0u;
      *(result + 11) = 0u;
    }

    v2 += v7;
    ++v3;
    v5 += 2;
    v6 -= 2;
  }

  while (v6);
  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = 0;
    v20 = &v24[128 * *(a1 + 72) + 16 * *(a1 + 76)];
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

        while (16 * v21 > v22);
        v18 = *(a1 + 80);
      }

      ++v19;
      v20 += 128;
    }

    while (v19 < v18);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[128 * *(a1 + 72) + 16 * *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 128;
    }

    while (v4 < v3);
  }

  return result;
}

void ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int16x8_t a2, __n128 a3, __n128 a4, __n128 a5)
{
  v21 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(*(*(a1 + 32) + 208) + 52);
  v9 = &byte_29D2F2FE5;
  v10 = 16;
  do
  {
    v12 = &v20[128 * *v9 + 32 * *(v9 - 1)];
    v13 = *v7;
    if (*v7)
    {
      if (v13 < 0xF0)
      {
        if (v13 == 63)
        {
          a2 = *v6;
          a3 = v6[1];
          a4 = v6[2];
          a5 = v6[3];
          *v12 = *v6;
          v12[1] = a4;
          v12[4] = a3;
          v12[5] = a5;
          v11 = 64;
        }

        else if (v13 == 1)
        {
          a2 = vld1q_dup_s16(v6);
          *v12 = a2;
          v12[1] = a2;
          v12[4] = a2;
          v12[5] = a2;
          v11 = 2;
        }

        else
        {
          v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v12, 64, v6, v13, *a2.i64, a3.n128_f64[0], a4.n128_f64[0], a5.n128_u64[0]);
        }
      }

      else
      {
        a2.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v12, 64, v6, v13, v8).u64[0];
        v11 = 32;
      }
    }

    else
    {
      v11 = 0;
      a2.i64[0] = 0;
      *v12 = 0u;
      v12[1] = 0u;
      v12[4] = 0u;
      v12[5] = 0u;
    }

    v6 = (v6 + v11);
    ++v7;
    v9 += 2;
    v10 -= 2;
  }

  while (v10);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = 0;
    v16 = &v20[64 * *(a1 + 72) + 8 * *(a1 + 76)];
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

        while (8 * v17 > v18);
        v14 = *(a1 + 80);
      }

      ++v15;
      v16 += 64;
    }

    while (v15 < v14);
  }
}

_BYTE *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(*(*(a1 + 32) + 208) + 52);
  v5 = &byte_29D2F2FE5;
  v6 = 16;
  do
  {
    result = &v24[256 * *v5 + 64 * *(v5 - 1)];
    v9 = *v3;
    if (*v3)
    {
      if (v9 < 0xF0)
      {
        if (v9 == 127)
        {
          v11 = *(v2 + 16);
          v12 = *(v2 + 32);
          v13 = *(v2 + 48);
          v14 = *(v2 + 64);
          v15 = *(v2 + 80);
          v16 = *(v2 + 96);
          v17 = *(v2 + 112);
          *result = *v2;
          *(result + 1) = v11;
          *(result + 2) = v14;
          *(result + 3) = v15;
          *(result + 8) = v12;
          *(result + 9) = v13;
          *(result + 10) = v16;
          *(result + 11) = v17;
          v7 = 128;
        }

        else if (v9 == 3)
        {
          v10 = vld1q_dup_f32(v2);
          *result = v10;
          *(result + 1) = v10;
          *(result + 2) = v10;
          *(result + 3) = v10;
          *(result + 8) = v10;
          *(result + 9) = v10;
          *(result + 10) = v10;
          *(result + 11) = v10;
          v7 = 4;
        }

        else
        {
          result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(result, 128, v2, v9);
          v7 = result;
        }
      }

      else
      {
        result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(result, 128, v2, v9, v4);
        v7 = 64;
      }
    }

    else
    {
      v7 = 0;
      *(result + 2) = 0u;
      *(result + 3) = 0u;
      *result = 0u;
      *(result + 1) = 0u;
      *(result + 8) = 0u;
      *(result + 9) = 0u;
      *(result + 10) = 0u;
      *(result + 11) = 0u;
    }

    v2 += v7;
    ++v3;
    v5 += 2;
    v6 -= 2;
  }

  while (v6);
  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = 0;
    v20 = &v24[128 * *(a1 + 72) + 16 * *(a1 + 76)];
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

        while (16 * v21 > v22);
        v18 = *(a1 + 80);
      }

      ++v19;
      v20 += 128;
    }

    while (v19 < v18);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[128 * *(a1 + 72) + 16 * *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 128;
    }

    while (v4 < v3);
  }

  return result;
}

void ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int8x8_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(*(*(a1 + 32) + 208) + 52);
  v7 = &byte_29D2F2FE5;
  v8 = 16;
  do
  {
    v10 = &v20[64 * *v7 + 16 * *(v7 - 1)];
    v11 = *v5;
    if (*v5)
    {
      if (v11 < 0xF0)
      {
        if (v11 == 31)
        {
          a2.n128_u64[0] = *v4;
          a3 = *(v4 + 8);
          v12 = *(v4 + 16);
          v13 = *(v4 + 24);
          v10->n128_u64[0] = *v4;
          v10->n128_u64[1] = v12;
          v10[2].n128_f64[0] = *&a3;
          v10[2].n128_u64[1] = v13;
          v9 = 32;
        }

        else if (v11 == 96)
        {
          a2 = vld1q_dup_s8(v4);
          *v10 = a2;
          v10[2] = a2;
          v9 = 1;
        }

        else
        {
          v9 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v10, 32, v4, v11, a2.n128_f64[0], a3);
        }
      }

      else
      {
        a2.n128_u64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v10, 32, v4, v11, v6).u64[0];
        v9 = 16;
      }
    }

    else
    {
      v9 = 0;
      v10->n128_u64[0] = 0;
      v10->n128_u64[1] = 0;
      v10[2].n128_u64[0] = 0;
      v10[2].n128_u64[1] = 0;
    }

    v4 += v9;
    ++v5;
    v7 += 2;
    v8 -= 2;
  }

  while (v8);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = 0;
    v16 = &v20[32 * *(a1 + 72) + 4 * *(a1 + 76)];
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

        while (4 * v17 > v18);
        v14 = *(a1 + 80);
      }

      ++v15;
      v16 += 32;
    }

    while (v15 < v14);
  }
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj2ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v18[113] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(*(*(a1 + 32) + 208) + 52);
  v5 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v15, 256, v2, *v3, v4);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(&v16, 256, v5, v3[1], v4);
  v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(&v17, 256, v6, v3[2], v4);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v18, 256, v6 + v7, v3[3], v4);
  v9 = *(a1 + 80);
  if (v9)
  {
    v10 = 0;
    v11 = &v15[256 * *(a1 + 72) + 32 * *(a1 + 76)];
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

        while (32 * v12 > v13);
        v9 = *(a1 + 80);
      }

      ++v10;
      v11 += 256;
    }

    while (v10 < v9);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[256 * *(a1 + 72) + 16 * *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 256;
    }

    while (v4 < v3);
  }

  return result;
}

__n128 *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int64x2_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(*(*(a1 + 32) + 208) + 52);
  v7 = &byte_29D2F30D1;
  v8 = 16;
  do
  {
    result = &v20[256 * *v7 + 16 * *(v7 - 1)];
    v11 = *v5;
    if (*v5)
    {
      if (v11 < 0xF0)
      {
        if (v11 == 63)
        {
          v12 = *v4;
          a3 = *(v4 + 16);
          v13 = (v4 + 32);
          v22 = vld2q_f64(v13);
          *result = vzip1q_s64(*v4, a3);
          a2 = vzip2q_s64(v12, a3);
          result[4] = a2;
          result[8] = v22.val[0];
          result[12] = v22.val[1];
          v9 = 64;
        }

        else if (v11 == 1)
        {
          a2 = vld1q_dup_s16(v4);
          *result = a2;
          result[4] = a2;
          result[8] = a2;
          result[12] = a2;
          v9 = 2;
        }

        else
        {
          result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(result, 64, v4, v11, a2.n128_u64[0], *a3.i8);
          v9 = result;
        }
      }

      else
      {
        result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(result, 64, v4, v11, v6);
        v9 = 32;
      }
    }

    else
    {
      v9 = 0;
      result->n128_u64[0] = 0;
      result->n128_u64[1] = 0;
      result[4].n128_u64[0] = 0;
      result[4].n128_u64[1] = 0;
      result[8].n128_u64[0] = 0;
      result[8].n128_u64[1] = 0;
      result[12].n128_u64[0] = 0;
      result[12].n128_u64[1] = 0;
    }

    v4 += v9;
    ++v5;
    v7 += 2;
    v8 -= 2;
  }

  while (v8);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = 0;
    v16 = &v20[64 * *(a1 + 72) + 4 * *(a1 + 76)];
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

        while (4 * v17 > v18);
        v14 = *(a1 + 80);
      }

      ++v15;
      v16 += 64;
    }

    while (v15 < v14);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[16 * *(a1 + 72) + *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = *(v5->f64 + v7);
          ++v7;
          v6 = *(a1 + 84);
        }

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 16;
    }

    while (v4 < v3);
  }

  return result;
}

_BYTE *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(*(*(a1 + 32) + 208) + 52);
  v5 = &byte_29D2F30D1;
  v6 = 16;
  do
  {
    result = &v24[512 * *v5 + 32 * *(v5 - 1)];
    v9 = *v3;
    if (*v3)
    {
      if (v9 < 0xF0)
      {
        if (v9 == 127)
        {
          v11 = *(v2 + 16);
          v12 = *(v2 + 32);
          v13 = *(v2 + 48);
          v14 = *(v2 + 80);
          v15 = *(v2 + 96);
          v16 = *(v2 + 112);
          v17 = *(v2 + 64);
          *result = *v2;
          *(result + 1) = v12;
          *(result + 8) = v11;
          *(result + 9) = v13;
          *(result + 16) = v17;
          *(result + 17) = v15;
          *(result + 24) = v14;
          *(result + 25) = v16;
          v7 = 128;
        }

        else if (v9 == 3)
        {
          v10 = vld1q_dup_f32(v2);
          *result = v10;
          *(result + 1) = v10;
          *(result + 8) = v10;
          *(result + 9) = v10;
          *(result + 16) = v10;
          *(result + 17) = v10;
          *(result + 24) = v10;
          *(result + 25) = v10;
          v7 = 4;
        }

        else
        {
          result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(result, 128, v2, v9);
          v7 = result;
        }
      }

      else
      {
        result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(result, 128, v2, v9, v4);
        v7 = 64;
      }
    }

    else
    {
      v7 = 0;
      *result = 0u;
      *(result + 1) = 0u;
      *(result + 8) = 0u;
      *(result + 9) = 0u;
      *(result + 16) = 0u;
      *(result + 17) = 0u;
      *(result + 24) = 0u;
      *(result + 25) = 0u;
    }

    v2 += v7;
    ++v3;
    v5 += 2;
    v6 -= 2;
  }

  while (v6);
  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = 0;
    v20 = &v24[128 * *(a1 + 72) + 8 * *(a1 + 76)];
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

        while (8 * v21 > v22);
        v18 = *(a1 + 80);
      }

      ++v19;
      v20 += 128;
    }

    while (v19 < v18);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
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

__n128 *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int64x2_t a3, __n128 a4, __n128 a5)
{
  v23 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(*(*(a1 + 32) + 208) + 52);
  v9 = &byte_29D2F30D1;
  v10 = 16;
  do
  {
    result = &v22[256 * *v9 + 16 * *(v9 - 1)];
    v13 = *v7;
    if (*v7)
    {
      if (v13 < 0xF0)
      {
        if (v13 == 63)
        {
          v14 = *v6;
          a3 = *(v6 + 16);
          v15 = (v6 + 32);
          *a4.n128_u64 = vld2q_f64(v15);
          *result = vzip1q_s64(*v6, a3);
          a2 = vzip2q_s64(v14, a3);
          result[4] = a2;
          result[8] = a4;
          result[12] = a5;
          v11 = 64;
        }

        else if (v13 == 1)
        {
          a2 = vld1q_dup_s16(v6);
          *result = a2;
          result[4] = a2;
          result[8] = a2;
          result[12] = a2;
          v11 = 2;
        }

        else
        {
          result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(result, 64, v6, v13, a2.n128_f64[0], *a3.i64, a4.n128_f64[0], a5.n128_u64[0]);
          v11 = result;
        }
      }

      else
      {
        result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(result, 64, v6, v13, v8);
        v11 = 32;
      }
    }

    else
    {
      v11 = 0;
      result->n128_u64[0] = 0;
      result->n128_u64[1] = 0;
      result[4].n128_u64[0] = 0;
      result[4].n128_u64[1] = 0;
      result[8].n128_u64[0] = 0;
      result[8].n128_u64[1] = 0;
      result[12].n128_u64[0] = 0;
      result[12].n128_u64[1] = 0;
    }

    v6 += v11;
    ++v7;
    v9 += 2;
    v10 -= 2;
  }

  while (v10);
  v16 = *(a1 + 80);
  if (v16)
  {
    v17 = 0;
    v18 = &v22[64 * *(a1 + 72) + 4 * *(a1 + 76)];
    LODWORD(v19) = *(a1 + 84);
    do
    {
      if (v19)
      {
        v20 = 0;
        v21 = *(a1 + 56) + *(a1 + 64) * v17;
        do
        {
          *(v21 + v20) = v18[v20];
          ++v20;
          v19 = *(a1 + 84);
        }

        while (4 * v19 > v20);
        v16 = *(a1 + 80);
      }

      ++v17;
      v18 += 64;
    }

    while (v17 < v16);
  }

  return result;
}

_BYTE *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(*(*(a1 + 32) + 208) + 52);
  v5 = &byte_29D2F30D1;
  v6 = 16;
  do
  {
    result = &v24[512 * *v5 + 32 * *(v5 - 1)];
    v9 = *v3;
    if (*v3)
    {
      if (v9 < 0xF0)
      {
        if (v9 == 127)
        {
          v11 = *(v2 + 16);
          v12 = *(v2 + 32);
          v13 = *(v2 + 48);
          v14 = *(v2 + 80);
          v15 = *(v2 + 96);
          v16 = *(v2 + 112);
          v17 = *(v2 + 64);
          *result = *v2;
          *(result + 1) = v12;
          *(result + 8) = v11;
          *(result + 9) = v13;
          *(result + 16) = v17;
          *(result + 17) = v15;
          *(result + 24) = v14;
          *(result + 25) = v16;
          v7 = 128;
        }

        else if (v9 == 3)
        {
          v10 = vld1q_dup_f32(v2);
          *result = v10;
          *(result + 1) = v10;
          *(result + 8) = v10;
          *(result + 9) = v10;
          *(result + 16) = v10;
          *(result + 17) = v10;
          *(result + 24) = v10;
          *(result + 25) = v10;
          v7 = 4;
        }

        else
        {
          result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(result, 128, v2, v9);
          v7 = result;
        }
      }

      else
      {
        result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(result, 128, v2, v9, v4);
        v7 = 64;
      }
    }

    else
    {
      v7 = 0;
      *result = 0u;
      *(result + 1) = 0u;
      *(result + 8) = 0u;
      *(result + 9) = 0u;
      *(result + 16) = 0u;
      *(result + 17) = 0u;
      *(result + 24) = 0u;
      *(result + 25) = 0u;
    }

    v2 += v7;
    ++v3;
    v5 += 2;
    v6 -= 2;
  }

  while (v6);
  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = 0;
    v20 = &v24[128 * *(a1 + 72) + 8 * *(a1 + 76)];
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

        while (8 * v21 > v22);
        v18 = *(a1 + 80);
      }

      ++v19;
      v20 += 128;
    }

    while (v19 < v18);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
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

void ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int32x2_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(*(*(a1 + 32) + 208) + 52);
  v7 = &byte_29D2F30D1;
  v8 = 16;
  do
  {
    v10 = &v20[128 * *v7 + 8 * *(v7 - 1)];
    v11 = *v5;
    if (*v5)
    {
      if (v11 < 0xF0)
      {
        if (v11 == 31)
        {
          v12 = *v4;
          a3 = *(v4 + 8);
          v13 = (v4 + 16);
          v22 = vld2_f32(v13);
          *v10 = vzip1_s32(*v4, a3);
          a2 = COERCE_DOUBLE(vzip2_s32(v12, a3));
          v10[4] = a2;
          v10[8] = *v22.val;
          v10[12] = *&v22.val[1];
          v9 = 32;
        }

        else if (v11 == 96)
        {
          a2 = COERCE_DOUBLE(vdup_lane_s8(*v4, 0));
          *v10 = a2;
          v10[4] = a2;
          v10[8] = a2;
          v10[12] = a2;
          v9 = 1;
        }

        else
        {
          v9 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v10, 32, v4, v11, a2, a3);
        }
      }

      else
      {
        a2 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v10, 32, v4, v11, v6).n64_f64[0];
        v9 = 16;
      }
    }

    else
    {
      v9 = 0;
      *v10 = 0.0;
      v10[4] = 0.0;
      v10[8] = 0.0;
      v10[12] = 0.0;
    }

    v4 += v9;
    ++v5;
    v7 += 2;
    v8 -= 2;
  }

  while (v8);
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
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[32 * *(a1 + 72) + 4 * *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5->i8[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (v6 << 6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 32;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[16 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = v5->i8[v7];
          ++v7;
          v6 = *(a1 + 84);
        }

        while (32 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 16;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[16 * *(a1 + 72) + *(a1 + 76)];
    LODWORD(v6) = *(a1 + 84);
    do
    {
      if (v6)
      {
        v7 = 0;
        v8 = *(a1 + 56) + *(a1 + 64) * v4;
        do
        {
          *(v8 + v7) = *(v5 + v7);
          ++v7;
          v6 = *(a1 + 84);
        }

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 16;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE6ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE6ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE6ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE6ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE6ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, double a3, double a4, int8x8_t a5)
{
  v14 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(v13, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52), a2, a3, a4, a5);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = 0;
    v9 = &v13[2 * *(a1 + 72)].i8[2 * *(a1 + 76)];
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, double a3, double a4, int8x8_t a5)
{
  v14 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(v13, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52), a2, a3, a4, a5);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = 0;
    v9 = &v13[2 * *(a1 + 72)].i8[2 * *(a1 + 76)];
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, double a3, double a4, int8x8_t a5)
{
  v14 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(v13, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52), a2, a3, a4, a5);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = 0;
    v9 = &v13[2 * *(a1 + 72)].i8[2 * *(a1 + 76)];
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

int32x4_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int32x4_t a2, int32x4_t a3, int32x4_t a4, int32x4_t a5)
{
  v21 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = &byte_29D2F30C1;
  v9 = 16;
  do
  {
    result = &v20[128 * *v8 + 16 * *(v8 - 1)];
    v12 = *v7;
    if (v12 == 63)
    {
      v13 = *v6;
      a3 = *(v6 + 16);
      a4 = *(v6 + 32);
      a5 = *(v6 + 48);
      *result = vuzp1q_s32(*v6, a4);
      result[2] = vuzp2q_s32(v13, a4);
      result[4] = vuzp1q_s32(a3, a5);
      a2 = vuzp2q_s32(a3, a5);
      result[6] = a2;
      v10 = 64;
    }

    else if (v12 == 1)
    {
      a2 = vld1q_dup_s16(v6);
      *result = a2;
      result[2] = a2;
      result[4] = a2;
      result[6] = a2;
      v10 = 2;
    }

    else if (*v7)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 32, v6, v12, *a2.i64, *a3.i64, *a4.i64, *a5.i8);
      v10 = result;
    }

    else
    {
      v10 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[2].i64[0] = 0;
      result[2].i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[6].i64[0] = 0;
      result[6].i64[1] = 0;
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

int32x4_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int32x4_t a2, int32x4_t a3, int32x4_t a4, int32x4_t a5)
{
  v21 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = &byte_29D2F30C1;
  v9 = 16;
  do
  {
    result = &v20[128 * *v8 + 16 * *(v8 - 1)];
    v12 = *v7;
    if (v12 == 63)
    {
      v13 = *v6;
      a3 = *(v6 + 16);
      a4 = *(v6 + 32);
      a5 = *(v6 + 48);
      *result = vuzp1q_s32(*v6, a4);
      result[2] = vuzp2q_s32(v13, a4);
      result[4] = vuzp1q_s32(a3, a5);
      a2 = vuzp2q_s32(a3, a5);
      result[6] = a2;
      v10 = 64;
    }

    else if (v12 == 1)
    {
      a2 = vld1q_dup_s16(v6);
      *result = a2;
      result[2] = a2;
      result[4] = a2;
      result[6] = a2;
      v10 = 2;
    }

    else if (*v7)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 32, v6, v12, *a2.i64, *a3.i64, *a4.i64, *a5.i8);
      v10 = result;
    }

    else
    {
      v10 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[2].i64[0] = 0;
      result[2].i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[6].i64[0] = 0;
      result[6].i64[1] = 0;
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE5ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE5ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE5ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE5ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE5ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int8x8_t a2, double a3, int8x8_t a4)
{
  v13 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(v12, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52), a2, a3, a4);
  v6 = *(a1 + 80);
  if (v6)
  {
    v7 = 0;
    v8 = &v12[2 * *(a1 + 72)] + 2 * *(a1 + 76);
    LODWORD(v9) = *(a1 + 84);
    do
    {
      if (v9)
      {
        v10 = 0;
        v11 = *(a1 + 56) + *(a1 + 64) * v7;
        do
        {
          *(v11 + v10) = v8[v10];
          ++v10;
          v9 = *(a1 + 84);
        }

        while (2 * v9 > v10);
        v6 = *(a1 + 80);
      }

      ++v7;
      v8 += 32;
    }

    while (v7 < v6);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int8x8_t a2, double a3, int8x8_t a4)
{
  v13 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(v12, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52), a2, a3, a4);
  v6 = *(a1 + 80);
  if (v6)
  {
    v7 = 0;
    v8 = &v12[2 * *(a1 + 72)] + 2 * *(a1 + 76);
    LODWORD(v9) = *(a1 + 84);
    do
    {
      if (v9)
      {
        v10 = 0;
        v11 = *(a1 + 56) + *(a1 + 64) * v7;
        do
        {
          *(v11 + v10) = v8[v10];
          ++v10;
          v9 = *(a1 + 84);
        }

        while (2 * v9 > v10);
        v6 = *(a1 + 80);
      }

      ++v7;
      v8 += 32;
    }

    while (v7 < v6);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int8x8_t a2, double a3, int8x8_t a4)
{
  v13 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(v12, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52), a2, a3, a4);
  v6 = *(a1 + 80);
  if (v6)
  {
    v7 = 0;
    v8 = &v12[2 * *(a1 + 72)] + 2 * *(a1 + 76);
    LODWORD(v9) = *(a1 + 84);
    do
    {
      if (v9)
      {
        v10 = 0;
        v11 = *(a1 + 56) + *(a1 + 64) * v7;
        do
        {
          *(v11 + v10) = v8[v10];
          ++v10;
          v9 = *(a1 + 84);
        }

        while (2 * v9 > v10);
        v6 = *(a1 + 80);
      }

      ++v7;
      v8 += 32;
    }

    while (v7 < v6);
  }

  return result;
}

int32x4_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int32x4_t a2, int32x4_t a3, int32x4_t a4)
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = &byte_29D2F30C1;
  v8 = 16;
  do
  {
    result = &v20[128 * *v7 + 16 * *(v7 - 1)];
    v11 = *v6;
    if (v11 == 63)
    {
      v12 = *v5;
      a3 = *(v5 + 16);
      a4 = *(v5 + 32);
      v13 = *(v5 + 48);
      *result = vuzp1q_s32(*v5, a4);
      result[2] = vuzp2q_s32(v12, a4);
      result[4] = vuzp1q_s32(a3, v13);
      a2 = vuzp2q_s32(a3, v13);
      result[6] = a2;
      v9 = 64;
    }

    else if (v11 == 1)
    {
      a2 = vld1q_dup_s16(v5);
      *result = a2;
      result[2] = a2;
      result[4] = a2;
      result[6] = a2;
      v9 = 2;
    }

    else if (*v6)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 32, v5, v11, *a2.i8, *a3.i64, *a4.i8);
      v9 = result;
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

    v5 += v9;
    ++v6;
    v7 += 2;
    v8 -= 2;
  }

  while (v8);
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

int32x4_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int32x4_t a2, int32x4_t a3, int32x4_t a4)
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = &byte_29D2F30C1;
  v8 = 16;
  do
  {
    result = &v20[128 * *v7 + 16 * *(v7 - 1)];
    v11 = *v6;
    if (v11 == 63)
    {
      v12 = *v5;
      a3 = *(v5 + 16);
      a4 = *(v5 + 32);
      v13 = *(v5 + 48);
      *result = vuzp1q_s32(*v5, a4);
      result[2] = vuzp2q_s32(v12, a4);
      result[4] = vuzp1q_s32(a3, v13);
      a2 = vuzp2q_s32(a3, v13);
      result[6] = a2;
      v9 = 64;
    }

    else if (v11 == 1)
    {
      a2 = vld1q_dup_s16(v5);
      *result = a2;
      result[2] = a2;
      result[4] = a2;
      result[6] = a2;
      v9 = 2;
    }

    else if (*v6)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 32, v5, v11, *a2.i8, *a3.i64, *a4.i8);
      v9 = result;
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

    v5 += v9;
    ++v6;
    v7 += 2;
    v8 -= 2;
  }

  while (v8);
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int8x8_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52), a2, a3);
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int8x8_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52), a2, a3);
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int8x8_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), *(*(*(a1 + 32) + 208) + 52), a2, a3);
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

double *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int16x4_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = &byte_29D2F30C1;
  v7 = 16;
  do
  {
    result = &v20[64 * *v6 + 8 * *(v6 - 1)];
    v13 = *v5;
    if (v13 == 96)
    {
      a2 = COERCE_DOUBLE(vdup_lane_s8(*v4, 0));
      *result = a2;
      result[2] = a2;
      result[4] = a2;
      result[6] = a2;
      v11 = 1;
    }

    else if (v13 == 31)
    {
      v8 = *v4;
      a3 = *(v4 + 8);
      v9 = *(v4 + 16);
      v10 = *(v4 + 24);
      *result = vuzp1_s16(*v4, v9);
      *(result + 2) = vuzp2_s16(v8, v9);
      *(result + 4) = vuzp1_s16(a3, v10);
      a2 = COERCE_DOUBLE(vuzp2_s16(a3, v10));
      result[6] = a2;
      v11 = 32;
    }

    else if (*v5)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 16, v4, v13, a2, a3);
      v11 = result;
    }

    else
    {
      v11 = 0;
      *result = 0.0;
      result[2] = 0.0;
      result[4] = 0.0;
      result[6] = 0.0;
    }

    v4 += v11;
    ++v5;
    v6 += 2;
    v7 -= 2;
  }

  while (v7);
  v14 = *(a1 + 80);
  if (v14 && *(a1 + 84))
  {
    v15 = 0;
    v16 = &v20[16 * *(a1 + 72) + *(a1 + 76)];
    v17 = 1;
    do
    {
      if (v17)
      {
        v18 = 0;
        v19 = *(a1 + 56) + *(a1 + 64) * v15;
        do
        {
          *(v19 + v18) = v16[v18];
          v17 = *(a1 + 84);
          ++v18;
        }

        while (v17 > v18);
        v14 = *(a1 + 80);
      }

      ++v15;
      v16 += 16;
    }

    while (v15 < v14);
  }

  return result;
}

double *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int16x4_t a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = &byte_29D2F30C1;
  v7 = 16;
  do
  {
    result = &v20[64 * *v6 + 8 * *(v6 - 1)];
    v13 = *v5;
    if (v13 == 96)
    {
      a2 = COERCE_DOUBLE(vdup_lane_s8(*v4, 0));
      *result = a2;
      result[2] = a2;
      result[4] = a2;
      result[6] = a2;
      v11 = 1;
    }

    else if (v13 == 31)
    {
      v8 = *v4;
      a3 = *(v4 + 8);
      v9 = *(v4 + 16);
      v10 = *(v4 + 24);
      *result = vuzp1_s16(*v4, v9);
      *(result + 2) = vuzp2_s16(v8, v9);
      *(result + 4) = vuzp1_s16(a3, v10);
      a2 = COERCE_DOUBLE(vuzp2_s16(a3, v10));
      result[6] = a2;
      v11 = 32;
    }

    else if (*v5)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 16, v4, v13, a2, a3);
      v11 = result;
    }

    else
    {
      v11 = 0;
      *result = 0.0;
      result[2] = 0.0;
      result[4] = 0.0;
      result[6] = 0.0;
    }

    v4 += v11;
    ++v5;
    v6 += 2;
    v7 -= 2;
  }

  while (v7);
  v14 = *(a1 + 80);
  if (v14 && *(a1 + 84))
  {
    v15 = 0;
    v16 = &v20[16 * *(a1 + 72) + *(a1 + 76)];
    v17 = 1;
    do
    {
      if (v17)
      {
        v18 = 0;
        v19 = *(a1 + 56) + *(a1 + 64) * v15;
        do
        {
          *(v19 + v18) = v16[v18];
          v17 = *(a1 + 84);
          ++v18;
        }

        while (v17 > v18);
        v14 = *(a1 + 80);
      }

      ++v15;
      v16 += 16;
    }

    while (v15 < v14);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE2ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, double a3, double a4, int8x8_t a5)
{
  v20 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(*(*(a1 + 32) + 208) + 52);
  v9 = &byte_29D2F790B;
  v10 = 64;
  do
  {
    v11 = *v7++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressSubblock(&v19[256 * *v9 + 16 * *(v9 - 1)], 64, v6, v11, v8, a2, a3, a4, a5);
    v6 += result;
    v9 += 2;
    v10 -= 2;
  }

  while (v10);
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    v15 = &v19[64 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v16) = *(a1 + 84);
    do
    {
      if (v16)
      {
        v17 = 0;
        v18 = *(a1 + 56) + *(a1 + 64) * v14;
        do
        {
          *(v18 + v17) = v15[v17];
          ++v17;
          v16 = *(a1 + 84);
        }

        while (2 * v16 > v17);
        v13 = *(a1 + 80);
      }

      ++v14;
      v15 += 64;
    }

    while (v14 < v13);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE2ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, double a3, double a4, int8x8_t a5)
{
  v20 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(*(*(a1 + 32) + 208) + 52);
  v9 = &byte_29D2F790B;
  v10 = 64;
  do
  {
    v11 = *v7++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressSubblock(&v19[256 * *v9 + 16 * *(v9 - 1)], 64, v6, v11, v8, a2, a3, a4, a5);
    v6 += result;
    v9 += 2;
    v10 -= 2;
  }

  while (v10);
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    v15 = &v19[64 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v16) = *(a1 + 84);
    do
    {
      if (v16)
      {
        v17 = 0;
        v18 = *(a1 + 56) + *(a1 + 64) * v14;
        do
        {
          *(v18 + v17) = v15[v17];
          ++v17;
          v16 = *(a1 + 84);
        }

        while (2 * v16 > v17);
        v13 = *(a1 + 80);
      }

      ++v14;
      v15 += 64;
    }

    while (v14 < v13);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE2ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, double a3, double a4, int8x8_t a5)
{
  v20 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(*(*(a1 + 32) + 208) + 52);
  v9 = &byte_29D2F790B;
  v10 = 64;
  do
  {
    v11 = *v7++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressSubblock(&v19[256 * *v9 + 16 * *(v9 - 1)], 64, v6, v11, v8, a2, a3, a4, a5);
    v6 += result;
    v9 += 2;
    v10 -= 2;
  }

  while (v10);
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    v15 = &v19[64 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v16) = *(a1 + 84);
    do
    {
      if (v16)
      {
        v17 = 0;
        v18 = *(a1 + 56) + *(a1 + 64) * v14;
        do
        {
          *(v18 + v17) = v15[v17];
          ++v17;
          v16 = *(a1 + 84);
        }

        while (2 * v16 > v17);
        v13 = *(a1 + 80);
      }

      ++v14;
      v15 += 64;
    }

    while (v14 < v13);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE2ELj1ELh1ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, double a3, double a4, int8x8_t a5)
{
  v19 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = &byte_29D2F790B;
  v9 = 64;
  do
  {
    v10 = *v7++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&v18[256 * *v8 + 16 * *(v8 - 1)], 64, v6, v10, a2, a3, a4, a5);
    v6 = (v6 + result);
    v8 += 2;
    v9 -= 2;
  }

  while (v9);
  v12 = *(a1 + 80);
  if (v12)
  {
    v13 = 0;
    v14 = &v18[64 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v15) = *(a1 + 84);
    do
    {
      if (v15)
      {
        v16 = 0;
        v17 = *(a1 + 56) + *(a1 + 64) * v13;
        do
        {
          *(v17 + v16) = v14[v16];
          ++v16;
          v15 = *(a1 + 84);
        }

        while (2 * v15 > v16);
        v12 = *(a1 + 80);
      }

      ++v13;
      v14 += 64;
    }

    while (v13 < v12);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE2ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, double a3, double a4, int8x8_t a5)
{
  v19 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = &byte_29D2F790B;
  v9 = 64;
  do
  {
    v10 = *v7++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&v18[256 * *v8 + 16 * *(v8 - 1)], 64, v6, v10, a2, a3, a4, a5);
    v6 = (v6 + result);
    v8 += 2;
    v9 -= 2;
  }

  while (v9);
  v12 = *(a1 + 80);
  if (v12)
  {
    v13 = 0;
    v14 = &v18[64 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v15) = *(a1 + 84);
    do
    {
      if (v15)
      {
        v16 = 0;
        v17 = *(a1 + 56) + *(a1 + 64) * v13;
        do
        {
          *(v17 + v16) = v14[v16];
          ++v16;
          v15 = *(a1 + 84);
        }

        while (2 * v15 > v16);
        v12 = *(a1 + 80);
      }

      ++v13;
      v14 += 64;
    }

    while (v13 < v12);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, double a3, double a4, int8x8_t a5)
{
  v20 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(*(*(a1 + 32) + 208) + 52);
  v9 = &byte_29D2F790B;
  v10 = 64;
  do
  {
    v11 = *v7++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v19[256 * *v9 + 16 * *(v9 - 1)], 64, v6, v11, v8, a2, a3, a4, a5);
    v6 += result;
    v9 += 2;
    v10 -= 2;
  }

  while (v10);
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    v15 = &v19[64 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v16) = *(a1 + 84);
    do
    {
      if (v16)
      {
        v17 = 0;
        v18 = *(a1 + 56) + *(a1 + 64) * v14;
        do
        {
          *(v18 + v17) = v15[v17];
          ++v17;
          v16 = *(a1 + 84);
        }

        while (2 * v16 > v17);
        v13 = *(a1 + 80);
      }

      ++v14;
      v15 += 64;
    }

    while (v14 < v13);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, double a3, double a4, int8x8_t a5)
{
  v20 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(*(*(a1 + 32) + 208) + 52);
  v9 = &byte_29D2F790B;
  v10 = 64;
  do
  {
    v11 = *v7++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v19[256 * *v9 + 16 * *(v9 - 1)], 64, v6, v11, v8, a2, a3, a4, a5);
    v6 += result;
    v9 += 2;
    v10 -= 2;
  }

  while (v10);
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    v15 = &v19[64 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v16) = *(a1 + 84);
    do
    {
      if (v16)
      {
        v17 = 0;
        v18 = *(a1 + 56) + *(a1 + 64) * v14;
        do
        {
          *(v18 + v17) = v15[v17];
          ++v17;
          v16 = *(a1 + 84);
        }

        while (2 * v16 > v17);
        v13 = *(a1 + 80);
      }

      ++v14;
      v15 += 64;
    }

    while (v14 < v13);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, double a3, double a4, int8x8_t a5)
{
  v20 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(*(*(a1 + 32) + 208) + 52);
  v9 = &byte_29D2F790B;
  v10 = 64;
  do
  {
    v11 = *v7++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v19[256 * *v9 + 16 * *(v9 - 1)], 64, v6, v11, v8, a2, a3, a4, a5);
    v6 += result;
    v9 += 2;
    v10 -= 2;
  }

  while (v10);
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    v15 = &v19[64 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v16) = *(a1 + 84);
    do
    {
      if (v16)
      {
        v17 = 0;
        v18 = *(a1 + 56) + *(a1 + 64) * v14;
        do
        {
          *(v18 + v17) = v15[v17];
          ++v17;
          v16 = *(a1 + 84);
        }

        while (2 * v16 > v17);
        v13 = *(a1 + 80);
      }

      ++v14;
      v15 += 64;
    }

    while (v14 < v13);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh1ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, double a3, double a4, int8x8_t a5)
{
  v19 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = &byte_29D2F790B;
  v9 = 64;
  do
  {
    v10 = *v7++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&v18[256 * *v8 + 16 * *(v8 - 1)], 64, v6, v10, a2, a3, a4, a5);
    v6 = (v6 + result);
    v8 += 2;
    v9 -= 2;
  }

  while (v9);
  v12 = *(a1 + 80);
  if (v12)
  {
    v13 = 0;
    v14 = &v18[64 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v15) = *(a1 + 84);
    do
    {
      if (v15)
      {
        v16 = 0;
        v17 = *(a1 + 56) + *(a1 + 64) * v13;
        do
        {
          *(v17 + v16) = v14[v16];
          ++v16;
          v15 = *(a1 + 84);
        }

        while (2 * v15 > v16);
        v12 = *(a1 + 80);
      }

      ++v13;
      v14 += 64;
    }

    while (v13 < v12);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, double a3, double a4, int8x8_t a5)
{
  v19 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = &byte_29D2F790B;
  v9 = 64;
  do
  {
    v10 = *v7++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&v18[256 * *v8 + 16 * *(v8 - 1)], 64, v6, v10, a2, a3, a4, a5);
    v6 = (v6 + result);
    v8 += 2;
    v9 -= 2;
  }

  while (v9);
  v12 = *(a1 + 80);
  if (v12)
  {
    v13 = 0;
    v14 = &v18[64 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v15) = *(a1 + 84);
    do
    {
      if (v15)
      {
        v16 = 0;
        v17 = *(a1 + 56) + *(a1 + 64) * v13;
        do
        {
          *(v17 + v16) = v14[v16];
          ++v16;
          v15 = *(a1 + 84);
        }

        while (2 * v15 > v16);
        v12 = *(a1 + 80);
      }

      ++v13;
      v14 += 64;
    }

    while (v13 < v12);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE1ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, double a3, double a4, int8x8_t a5)
{
  v20 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(*(*(a1 + 32) + 208) + 52);
  v9 = &byte_29D2F790B;
  v10 = 64;
  do
  {
    v11 = *v7++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressSubblock(&v19[256 * *v9 + 16 * *(v9 - 1)], 64, v6, v11, v8, a2, a3, a4, a5);
    v6 += result;
    v9 += 2;
    v10 -= 2;
  }

  while (v10);
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    v15 = &v19[64 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v16) = *(a1 + 84);
    do
    {
      if (v16)
      {
        v17 = 0;
        v18 = *(a1 + 56) + *(a1 + 64) * v14;
        do
        {
          *(v18 + v17) = v15[v17];
          ++v17;
          v16 = *(a1 + 84);
        }

        while (2 * v16 > v17);
        v13 = *(a1 + 80);
      }

      ++v14;
      v15 += 64;
    }

    while (v14 < v13);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE1ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, double a3, double a4, int8x8_t a5)
{
  v20 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(*(*(a1 + 32) + 208) + 52);
  v9 = &byte_29D2F790B;
  v10 = 64;
  do
  {
    v11 = *v7++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressSubblock(&v19[256 * *v9 + 16 * *(v9 - 1)], 64, v6, v11, v8, a2, a3, a4, a5);
    v6 += result;
    v9 += 2;
    v10 -= 2;
  }

  while (v10);
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    v15 = &v19[64 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v16) = *(a1 + 84);
    do
    {
      if (v16)
      {
        v17 = 0;
        v18 = *(a1 + 56) + *(a1 + 64) * v14;
        do
        {
          *(v18 + v17) = v15[v17];
          ++v17;
          v16 = *(a1 + 84);
        }

        while (2 * v16 > v17);
        v13 = *(a1 + 80);
      }

      ++v14;
      v15 += 64;
    }

    while (v14 < v13);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE1ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, double a3, double a4, int8x8_t a5)
{
  v20 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(*(*(a1 + 32) + 208) + 52);
  v9 = &byte_29D2F790B;
  v10 = 64;
  do
  {
    v11 = *v7++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressSubblock(&v19[256 * *v9 + 16 * *(v9 - 1)], 64, v6, v11, v8, a2, a3, a4, a5);
    v6 += result;
    v9 += 2;
    v10 -= 2;
  }

  while (v10);
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    v15 = &v19[64 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v16) = *(a1 + 84);
    do
    {
      if (v16)
      {
        v17 = 0;
        v18 = *(a1 + 56) + *(a1 + 64) * v14;
        do
        {
          *(v18 + v17) = v15[v17];
          ++v17;
          v16 = *(a1 + 84);
        }

        while (2 * v16 > v17);
        v13 = *(a1 + 80);
      }

      ++v14;
      v15 += 64;
    }

    while (v14 < v13);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE1ELj1ELh1ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, double a3, double a4, int8x8_t a5)
{
  v19 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = &byte_29D2F790B;
  v9 = 64;
  do
  {
    v10 = *v7++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&v18[256 * *v8 + 16 * *(v8 - 1)], 64, v6, v10, a2, a3, a4, a5);
    v6 = (v6 + result);
    v8 += 2;
    v9 -= 2;
  }

  while (v9);
  v12 = *(a1 + 80);
  if (v12)
  {
    v13 = 0;
    v14 = &v18[64 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v15) = *(a1 + 84);
    do
    {
      if (v15)
      {
        v16 = 0;
        v17 = *(a1 + 56) + *(a1 + 64) * v13;
        do
        {
          *(v17 + v16) = v14[v16];
          ++v16;
          v15 = *(a1 + 84);
        }

        while (2 * v15 > v16);
        v12 = *(a1 + 80);
      }

      ++v13;
      v14 += 64;
    }

    while (v13 < v12);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE1ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, double a3, double a4, int8x8_t a5)
{
  v19 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = &byte_29D2F790B;
  v9 = 64;
  do
  {
    v10 = *v7++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&v18[256 * *v8 + 16 * *(v8 - 1)], 64, v6, v10, a2, a3, a4, a5);
    v6 = (v6 + result);
    v8 += 2;
    v9 -= 2;
  }

  while (v9);
  v12 = *(a1 + 80);
  if (v12)
  {
    v13 = 0;
    v14 = &v18[64 * *(a1 + 72) + 2 * *(a1 + 76)];
    LODWORD(v15) = *(a1 + 84);
    do
    {
      if (v15)
      {
        v16 = 0;
        v17 = *(a1 + 56) + *(a1 + 64) * v13;
        do
        {
          *(v17 + v16) = v14[v16];
          ++v16;
          v15 = *(a1 + 84);
        }

        while (2 * v15 > v16);
        v12 = *(a1 + 80);
      }

      ++v13;
      v14 += 64;
    }

    while (v13 < v12);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint3EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int8x8_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(*(*(a1 + 32) + 208) + 52);
  v7 = &byte_29D2F790B;
  v8 = 64;
  do
  {
    v9 = *v5++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v17[128 * *v7 + 8 * *(v7 - 1)], 32, v4, v9, v6, a2, a3);
    v4 += result;
    v7 += 2;
    v8 -= 2;
  }

  while (v8);
  v11 = *(a1 + 80);
  if (v11 && *(a1 + 84))
  {
    v12 = 0;
    v13 = &v17[32 * *(a1 + 72) + *(a1 + 76)];
    v14 = 1;
    do
    {
      if (v14)
      {
        v15 = 0;
        v16 = *(a1 + 56) + *(a1 + 64) * v12;
        do
        {
          *(v16 + v15) = v13[v15];
          v14 = *(a1 + 84);
          ++v15;
        }

        while (v14 > v15);
        v11 = *(a1 + 80);
      }

      ++v12;
      v13 += 32;
    }

    while (v12 < v11);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint2EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int8x8_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(*(*(a1 + 32) + 208) + 52);
  v7 = &byte_29D2F790B;
  v8 = 64;
  do
  {
    v9 = *v5++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v17[128 * *v7 + 8 * *(v7 - 1)], 32, v4, v9, v6, a2, a3);
    v4 += result;
    v7 += 2;
    v8 -= 2;
  }

  while (v8);
  v11 = *(a1 + 80);
  if (v11 && *(a1 + 84))
  {
    v12 = 0;
    v13 = &v17[32 * *(a1 + 72) + *(a1 + 76)];
    v14 = 1;
    do
    {
      if (v14)
      {
        v15 = 0;
        v16 = *(a1 + 56) + *(a1 + 64) * v12;
        do
        {
          *(v16 + v15) = v13[v15];
          v14 = *(a1 + 84);
          ++v15;
        }

        while (v14 > v15);
        v11 = *(a1 + 80);
      }

      ++v12;
      v13 += 32;
    }

    while (v12 < v11);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint1EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int8x8_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(*(*(a1 + 32) + 208) + 52);
  v7 = &byte_29D2F790B;
  v8 = 64;
  do
  {
    v9 = *v5++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v17[128 * *v7 + 8 * *(v7 - 1)], 32, v4, v9, v6, a2, a3);
    v4 += result;
    v7 += 2;
    v8 -= 2;
  }

  while (v8);
  v11 = *(a1 + 80);
  if (v11 && *(a1 + 84))
  {
    v12 = 0;
    v13 = &v17[32 * *(a1 + 72) + *(a1 + 76)];
    v14 = 1;
    do
    {
      if (v14)
      {
        v15 = 0;
        v16 = *(a1 + 56) + *(a1 + 64) * v12;
        do
        {
          *(v16 + v15) = v13[v15];
          v14 = *(a1 + 84);
          ++v15;
        }

        while (v14 > v15);
        v11 = *(a1 + 80);
      }

      ++v12;
      v13 += 32;
    }

    while (v12 < v11);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh1ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int8x8_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = &byte_29D2F790B;
  v7 = 64;
  do
  {
    v8 = *v5++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&v16[128 * *v6 + 8 * *(v6 - 1)], 32, v4, v8, a2, a3);
    v4 = (v4 + result);
    v6 += 2;
    v7 -= 2;
  }

  while (v7);
  v10 = *(a1 + 80);
  if (v10 && *(a1 + 84))
  {
    v11 = 0;
    v12 = &v16[32 * *(a1 + 72) + *(a1 + 76)];
    v13 = 1;
    do
    {
      if (v13)
      {
        v14 = 0;
        v15 = *(a1 + 56) + *(a1 + 64) * v11;
        do
        {
          *(v15 + v14) = v12[v14];
          v13 = *(a1 + 84);
          ++v14;
        }

        while (v13 > v14);
        v10 = *(a1 + 80);
      }

      ++v11;
      v12 += 32;
    }

    while (v11 < v10);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int8x8_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = &byte_29D2F790B;
  v7 = 64;
  do
  {
    v8 = *v5++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&v16[128 * *v6 + 8 * *(v6 - 1)], 32, v4, v8, a2, a3);
    v4 = (v4 + result);
    v6 += 2;
    v7 -= 2;
  }

  while (v7);
  v10 = *(a1 + 80);
  if (v10 && *(a1 + 84))
  {
    v11 = 0;
    v12 = &v16[32 * *(a1 + 72) + *(a1 + 76)];
    v13 = 1;
    do
    {
      if (v13)
      {
        v14 = 0;
        v15 = *(a1 + 56) + *(a1 + 64) * v11;
        do
        {
          *(v15 + v14) = v12[v14];
          v13 = *(a1 + 84);
          ++v14;
        }

        while (v13 > v14);
        v10 = *(a1 + 80);
      }

      ++v11;
      v12 += 32;
    }

    while (v11 < v10);
  }

  return result;
}

uint64_t agxsTwiddleAddressPVRTC2<false,(TwiddleOrder)1>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  if (result && a2)
  {
    v10 = (a9 + 7) >> 3;
    v11 = (a10 + 3) >> 2;
    v12 = ((a9 + 7) >> 4) * v11;
    v13 = 8 * v12;
    v14 = 16 * v12;
    if (v10 <= v11)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    if (v10 <= v11)
    {
      v16 = 0;
    }

    else
    {
      v16 = v13;
    }

    if (v10 <= v11)
    {
      v17 = (a9 + 7) >> 3;
    }

    else
    {
      v17 = v10 >> 1;
    }

    v18 = 32 - __clz(v17 - 1);
    if (v17 < 2)
    {
      v18 = 0;
    }

    v19 = 32 - __clz(v11 - 1);
    if ((a10 + 3) >= 8)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20 < v18)
    {
      LOBYTE(v18) = v20;
    }

    v21 = 8 * v17 * v11;
    if (v21)
    {
      v22 = 0;
      v23 = 8 * ~(-1 << (2 * v18));
      v24 = v23 & 0x2AAAAAAAAAAAAAA8;
      v25 = v23 & 0x5555555555555555;
      v26 = ~v23;
      do
      {
        *(a2 + (v22 & v26 | (2 * (v24 & v22)) | ((v25 & v22) >> 1))) = *(result + v22);
        v22 += 8;
      }

      while (v22 < v21);
      if (v10 > v11)
      {
        v27 = 0;
        v28 = result + v16;
        do
        {
          *(a2 + v15 + (v27 & v26 | (2 * (v24 & v27)) | ((v25 & v27) >> 1))) = *(v28 + v27);
          v27 += 8;
        }

        while (v27 < v21);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,8u,(TwiddleOrder)1>>(uint64_t result, _OWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, unsigned int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v14 = a11;
  v15 = a10;
  if (!a12)
  {
    v23 = 32 - __clz(a6 - 1);
    v24 = a6 > 1;
    if (a6 <= 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = v23;
    }

    v26 = 32 - __clz(a5 - 1);
    v27 = a5 > 1;
    if (a5 <= 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = v26;
    }

    if (v25 | v28)
    {
      v29 = a2;
      v30 = 0;
      v31 = 0;
      v32 = a5 > 1;
      v33 = v24;
      v34 = 1;
      v35 = v28;
      v36 = v25;
      do
      {
        --v35;
        if (v32)
        {
          v31 |= (v34 & ~(-1 << v28)) << v30++;
        }

        else
        {
          v35 = 0;
        }

        --v36;
        if (!v33)
        {
          v36 = 0;
        }

        v34 *= 2;
        v30 = (__PAIR64__(v30, v33) - 1) >> 32;
        v33 = v36 != 0;
        v32 = v35 != 0;
      }

      while (v36 | v35);
      v37 = 0;
      v38 = 0;
      v39 = 1;
      v40 = v27;
      v41 = v24;
      v42 = v28;
      v43 = v25;
      do
      {
        --v42;
        v44 = v40;
        if (!v44)
        {
          v42 = 0;
        }

        v45 = v37 + v44;
        if (v41)
        {
          --v43;
        }

        else
        {
          v43 = 0;
        }

        if (v41)
        {
          v38 |= (v39 & ~(-1 << v25)) << v45++;
        }

        v39 *= 2;
        v37 = v45 - 1;
        v41 = v43 != 0;
        v40 = v42 != 0;
      }

      while (v43 | v42);
      v46 = 0;
      v47 = 0;
      v48 = v27;
      v49 = v24;
      v50 = 1;
      v51 = v28;
      v52 = v25;
      do
      {
        --v51;
        if (v48)
        {
          v47 |= (v50 & a7) << v46++;
        }

        else
        {
          v51 = 0;
        }

        --v52;
        if (!v49)
        {
          v52 = 0;
        }

        v50 *= 2;
        v46 = (__PAIR64__(v46, v49) - 1) >> 32;
        v49 = v52 != 0;
        v48 = v51 != 0;
      }

      while (v52 | v51);
      v53 = 0;
      v54 = 0;
      v55 = 1;
      do
      {
        --v28;
        v56 = v27;
        if (!v56)
        {
          v28 = 0;
        }

        v57 = v53 + v56;
        --v25;
        if (v24)
        {
          v54 |= (v55 & a8) << v57;
          v58 = v57 + 1;
        }

        else
        {
          v25 = 0;
          v58 = v57;
        }

        v55 *= 2;
        v53 = v58 - 1;
        v24 = v25 != 0;
        v27 = v28 != 0;
      }

      while (v25 | v28);
      a2 = v29;
      v15 = a10;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v47 = 0;
      v31 = 0;
      v38 = 0;
      v54 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      v241 = 0;
      do
      {
        v242 = a9;
        v243 = a2;
        v244 = v47;
        do
        {
          v245 = (result + ((v244 + v54) << 7));
          v246 = *v245;
          v247 = v245[1];
          v248 = v245[3];
          v243[2] = v245[2];
          v243[3] = v248;
          *v243 = v246;
          v243[1] = v247;
          v249 = v245[4];
          v250 = v245[5];
          v251 = v245[7];
          v243[6] = v245[6];
          v243[7] = v251;
          v243[4] = v249;
          v243[5] = v250;
          v244 = (v244 - v31) & v31;
          v243 += 8;
          --v242;
        }

        while (v242);
        v54 = (v54 - v38) & v38;
        a2 = (a2 + a11);
        ++v241;
      }

      while (v241 != v15);
    }

    return result;
  }

  v278 = result;
  v279 = a7;
  if (!*(a12 + 20))
  {
    v59 = *(a12 + 13);
    v60 = *(a12 + 12);
    v61 = 1 << v59;
    v62 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v62 = 0;
    }

    v63 = v60 + v59;
    result = v60 + v59 + v62;
    if (a6 >> v59)
    {
      v64 = 1;
    }

    else
    {
      v64 = 1 << v60 >= a5;
    }

    if (v64)
    {
      v65 = *(a12 + 12);
    }

    else
    {
      v65 = v60 + v59 + v62;
    }

    if (v64)
    {
      LOBYTE(v66) = *(a12 + 13);
    }

    else
    {
      v66 = -v62;
    }

    v67 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v67) = 0;
    }

    if (v61 < a6 && a5 >> v60 == 0)
    {
      LOBYTE(v66) = v63 - v67;
    }

    else
    {
      LOBYTE(v67) = v65;
    }

    v69 = 1 << v66;
    v70 = *(a12 + 15);
    v71 = 1 << v70;
    if (v70)
    {
      v72 = v71 > a3;
    }

    else
    {
      v72 = 1;
    }

    v73 = v72 || v71 > a4;
    v74 = (~(-1 << v70) + a3) & (-1 << v70);
    if (v73)
    {
      v75 = a3;
    }

    else
    {
      v75 = v74;
    }

    v284 = 1 << v66;
    v76 = v69 - 1;
    v280 = a10 + a8;
    v282 = a8 >> v66;
    v275 = (v69 - 1 + a10 + a8) >> v66;
    v277 = v66;
    if (a8 >> v66 >= v275)
    {
      return result;
    }

    result = a7 >> v67;
    v77 = (1 << v67) - 1;
    v298 = a9 + a7;
    if (v69 >= a6)
    {
      v69 = a6;
    }

    v78 = 32 - __clz(v69 - 1);
    v79 = v69 > 1;
    v80 = v69 <= 1 ? 0 : v78;
    v81 = 1 << v67 >= a5 ? a5 : 1 << v67;
    v82 = 32 - __clz(v81 - 1);
    v83 = v81 > 1;
    v84 = v81 <= 1 ? 0 : v82;
    v292 = a7 >> v67;
    v296 = (v77 + a9 + a7) >> v67;
    if (result >= v296)
    {
      return result;
    }

    v273 = (v75 + ~(-1 << v67)) >> v67;
    v85 = v77 & a7;
    v294 = v77 & v298;
    v270 = v76 & v280;
    v272 = v76 & a8;
    v86 = v282;
    v266 = a2;
LABEL_92:
    v87 = v86 << v277;
    v88 = v86 - v282;
    v290 = v86 * v273;
    v286 = v86 + 1;
    v64 = v280 >= (v86 + 1) << v277;
    v89 = v284;
    v90 = v284 - v272;
    if (!v64)
    {
      v89 = v270;
      v90 = v15;
    }

    v91 = v88 << v277;
    if (v87 >= a8)
    {
      v92 = 0;
    }

    else
    {
      v92 = v272;
    }

    if (v87 >= a8)
    {
      v93 = v89;
    }

    else
    {
      v93 = v90;
    }

    v288 = (v92 + v91 - v272) * a11;
    v94 = v292;
    while (1)
    {
      v95 = v94 << v67;
      v96 = v94 + 1;
      v97 = 1 << v67;
      v98 = a9;
      if (v298 >= (v94 + 1) << v67)
      {
        v98 = (1 << v67) - v85;
      }

      if (v298 < v96 << v67)
      {
        v97 = v294;
      }

      v99 = v95 >= a7 ? 0 : v85;
      v100 = v95 >= a7 ? v97 : v98;
      if (v80 | v84)
      {
        break;
      }

      v117 = 0;
      v102 = 0;
      v109 = 0;
      v124 = 0;
      if (v93)
      {
        goto LABEL_147;
      }

LABEL_101:
      v94 = v96;
      a7 = v279;
      if (v96 == v296)
      {
        v86 = v286;
        v15 = a10;
        if (v286 == v275)
        {
          return result;
        }

        goto LABEL_92;
      }
    }

    v101 = 0;
    v102 = 0;
    v103 = 1;
    v104 = v83;
    v105 = v79;
    v106 = v84;
    v107 = v80;
    do
    {
      --v106;
      if (v104)
      {
        v102 |= (v103 & ~(-1 << v84)) << v101++;
      }

      else
      {
        v106 = 0;
      }

      if (v105)
      {
        --v107;
      }

      else
      {
        v107 = 0;
      }

      v103 *= 2;
      v101 = (__PAIR64__(v101, v105) - 1) >> 32;
      v105 = v107 != 0;
      v104 = v106 != 0;
    }

    while (v107 | v106);
    v108 = 0;
    v109 = 0;
    v110 = 1;
    v111 = v83;
    v112 = v79;
    v113 = v84;
    v114 = v80;
    do
    {
      --v113;
      if (!v111)
      {
        v113 = 0;
      }

      v115 = v108 + v111;
      if (v112)
      {
        --v114;
      }

      else
      {
        v114 = 0;
      }

      if (v112)
      {
        v109 |= (v110 & ~(-1 << v80)) << v115++;
      }

      v110 *= 2;
      v108 = v115 - 1;
      v112 = v114 != 0;
      v111 = v113 != 0;
    }

    while (v114 | v113);
    v116 = 0;
    v117 = 0;
    v118 = 1;
    v119 = v83;
    v120 = v79;
    v121 = v84;
    v122 = v80;
    do
    {
      --v121;
      if (v119)
      {
        v117 |= (v118 & v99) << v116;
        v123 = v116 + 1;
      }

      else
      {
        v121 = 0;
        v123 = v116;
      }

      --v122;
      if (!v120)
      {
        v122 = 0;
      }

      v118 *= 2;
      v116 = (__PAIR64__(v123, v120) - 1) >> 32;
      v120 = v122 != 0;
      v119 = v121 != 0;
    }

    while (v122 | v121);
    LODWORD(result) = 0;
    v124 = 0;
    v125 = 1;
    v126 = v83;
    v127 = v79;
    v128 = v84;
    v129 = v80;
    do
    {
      --v128;
      v130 = v126;
      if (!v130)
      {
        v128 = 0;
      }

      v131 = result + v130;
      --v129;
      if (v127)
      {
        v124 |= (v125 & v92) << v131++;
      }

      else
      {
        v129 = 0;
      }

      v125 *= 2;
      result = (v131 - 1);
      v127 = v129 != 0;
      v126 = v128 != 0;
    }

    while (v129 | v128);
    if (!v93)
    {
      goto LABEL_101;
    }

LABEL_147:
    if (v100)
    {
      v132 = 0;
      v133 = (&v266[8 * (v99 + ((v94 - v292) << v67) - v85)] + v288);
      v134 = (v94 + v290) * a12[3] * *(a12 + 9) + v278;
      do
      {
        v135 = v100;
        v136 = v133;
        v137 = v117;
        do
        {
          v138 = (v134 + ((v137 + v124) << 7));
          v139 = *v138;
          v140 = v138[1];
          v141 = v138[3];
          v136[2] = v138[2];
          v136[3] = v141;
          *v136 = v139;
          v136[1] = v140;
          v142 = v138[4];
          v143 = v138[5];
          v144 = v138[7];
          v136[6] = v138[6];
          v136[7] = v144;
          v136[4] = v142;
          v136[5] = v143;
          v137 = (v137 - v102) & v102;
          v136 += 8;
          --v135;
        }

        while (v135);
        result = v124 - v109;
        v124 = (v124 - v109) & v109;
        v133 = (v133 + a11);
        ++v132;
      }

      while (v132 != v93);
    }

    goto LABEL_101;
  }

  v16 = a2;
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v301);
  v19 = *(a12 + 13);
  v20 = *(a12 + 12);
  v265 = v16;
  if (1 << v19 >= a6 || a5 >> v20)
  {
    v145 = a6 >> v19;
    v146 = 1 << v20;
    v147 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v147 = 0;
    }

    v148 = v146 >= a5;
    if (v146 < a5)
    {
      v149 = v20 + v19 + v147;
    }

    else
    {
      v149 = *(a12 + 12);
    }

    if (v148)
    {
      LOBYTE(v150) = *(a12 + 13);
    }

    else
    {
      v150 = -v147;
    }

    if (!v145)
    {
      v20 = v149;
    }

    v259 = v20;
    if (v145)
    {
      v22 = *(a12 + 13);
    }

    else
    {
      v22 = v150;
    }
  }

  else
  {
    v21 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v21) = 0;
    }

    v259 = v21;
    v22 = v20 + v19 - v21;
  }

  v151 = v278;
  v152 = a10;
  v153 = a8;
  v257 = v307;
  if (v307)
  {
    v154 = 1 << v22;
    if (1 << v22 >= a6)
    {
      v155 = a6;
    }

    else
    {
      v155 = 1 << v22;
    }

    v156 = 32 - __clz(v155 - 1);
    v157 = v155 > 1;
    if (v155 <= 1)
    {
      v158 = 0;
    }

    else
    {
      v158 = v156;
    }

    v258 = 1 << v259;
    if (1 << v259 >= a5)
    {
      v159 = a5;
    }

    else
    {
      v159 = 1 << v259;
    }

    v160 = 32 - __clz(v159 - 1);
    v161 = v308;
    v162 = v159 > 1;
    if (v159 <= 1)
    {
      v160 = 0;
    }

    v291 = v305;
    v293 = v160;
    v287 = v305 != 0;
    v289 = v306;
    v285 = v306 != 0;
    if (v308)
    {
      v163 = 0;
      v164 = 0;
      v256 = a7 >> v259;
      v274 = a8 >> v22;
      v299 = v309;
      v300 = v304;
      v297 = v306 | v305;
      v255 = a9 + a7;
      v254 = (v258 - 1) & (a9 + a7);
      v253 = v302;
      v295 = v303;
      v252 = (v258 - 1) & a7;
      v269 = (v154 - 1) & a8;
      v271 = (v154 - 1) & (a10 + a8);
      v268 = v154 - v269;
      v165 = ~(-1 << v160);
      v267 = v158 | v160;
      v281 = v162;
      v261 = 1 << v22;
      v262 = v22;
      v276 = v308;
      do
      {
        v260 = v164;
        v166 = 0;
        v167 = 0;
        v168 = (v163 + v256) << v259;
        v169 = a9;
        if (v255 >= (v163 + v256 + 1) << v259)
        {
          v169 = v258 - v252;
        }

        v170 = 1 << v259;
        if (v255 < (v163 + v256 + 1) << v259)
        {
          v170 = v254;
        }

        v171 = v253 + v163;
        v172 = v163 << v259;
        if (v168 >= a7)
        {
          v173 = v170;
        }

        else
        {
          v173 = v169;
        }

        if (v168 >= a7)
        {
          v174 = 0;
        }

        else
        {
          v174 = v252;
        }

        v263 = &v265[8 * (v174 + v172)];
        v175 = v152;
        v283 = v173;
        do
        {
          v176 = v295 + v166;
          if (v299)
          {
            v177 = v297;
            if (v297)
            {
              v178 = 0;
              v177 = 0;
              v179 = 1;
              v180 = v285;
              v181 = v287;
              v182 = v291;
              v183 = v289;
              do
              {
                --v182;
                if (v181)
                {
                  v177 |= (v179 & v171) << v178;
                }

                else
                {
                  v182 = 0;
                }

                if (v181)
                {
                  ++v178;
                }

                --v183;
                if (v180)
                {
                  v177 |= (v179 & v176) << v178;
                }

                else
                {
                  v183 = 0;
                }

                if (v180)
                {
                  ++v178;
                }

                v179 *= 2;
                --v178;
                v180 = v183 != 0;
                v181 = v182 != 0;
              }

              while (v183 | v182);
            }
          }

          else
          {
            v177 = v297;
            if (v297)
            {
              v184 = 0;
              v177 = 0;
              v185 = 1;
              v187 = v285;
              v186 = v287;
              v188 = v289;
              v189 = v291;
              do
              {
                --v188;
                if (v187)
                {
                  v177 |= (v185 & v176) << v184;
                }

                else
                {
                  v188 = 0;
                }

                if (v187)
                {
                  ++v184;
                }

                --v189;
                if (v186)
                {
                  v177 |= (v185 & v171) << v184;
                }

                else
                {
                  v189 = 0;
                }

                if (v186)
                {
                  ++v184;
                }

                v185 *= 2;
                --v184;
                v186 = v189 != 0;
                v187 = v188 != 0;
              }

              while (v189 | v188);
            }
          }

          v190 = *(v151 + 4 * ((v177 + v300) | ((v177 + v300) >> 8 << 9)));
          if (v190 < 0)
          {
            v191 = v151 - *(a13 + 3) + ((v190 & 0x1FFFFFFF) << 14);
            result = *a13;
            v192 = a13[2];
            if (result > v192)
            {
              v193 = v166;
              result = get_level_offset_within_tail(result, v192, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v162 = v281;
              v173 = v283;
              v166 = v193;
              v154 = v261;
              v22 = v262;
              v14 = a11;
              v153 = a8;
              v175 = a10;
              v151 = v278;
              v191 += result;
            }

            v194 = (v166 + v274) << v22;
            v195 = v268;
            if (a10 + a8 >= (v166 + v274 + 1) << v22)
            {
              v196 = v154;
            }

            else
            {
              v195 = v175;
              v196 = v271;
            }

            if (v194 >= v153)
            {
              v197 = 0;
            }

            else
            {
              v197 = v269;
            }

            if (v194 >= v153)
            {
              v195 = v196;
            }

            if (!v267)
            {
              v216 = 0;
              v200 = 0;
              v207 = 0;
              v223 = 0;
              v161 = v276;
              if (!v195)
              {
                goto LABEL_192;
              }

LABEL_264:
              if (v173)
              {
                v230 = 0;
                v231 = (v263 + (v197 + (v166 << v22)) * v14);
                do
                {
                  v232 = v173;
                  v233 = v231;
                  v234 = v216;
                  do
                  {
                    result = v191 + ((v234 + v223) << 7);
                    v235 = *result;
                    v236 = *(result + 16);
                    v237 = *(result + 48);
                    v233[2] = *(result + 32);
                    v233[3] = v237;
                    *v233 = v235;
                    v233[1] = v236;
                    v238 = *(result + 64);
                    v239 = *(result + 80);
                    v240 = *(result + 112);
                    v233[6] = *(result + 96);
                    v233[7] = v240;
                    v233[4] = v238;
                    v233[5] = v239;
                    v234 = (v234 - v200) & v200;
                    v233 += 8;
                    --v232;
                  }

                  while (v232);
                  v223 = (v223 - v207) & v207;
                  v231 = (v231 + v14);
                  ++v230;
                }

                while (v230 != v195);
              }

              goto LABEL_192;
            }

            v198 = v166;
            v199 = 0;
            v200 = 0;
            v201 = 1;
            v202 = v162;
            v203 = v157;
            v204 = v293;
            v205 = v158;
            do
            {
              --v204;
              if (v202)
              {
                v200 |= (v201 & v165) << v199++;
              }

              else
              {
                v204 = 0;
              }

              --v205;
              if (!v203)
              {
                v205 = 0;
              }

              v201 *= 2;
              v199 = (__PAIR64__(v199, v203) - 1) >> 32;
              v203 = v205 != 0;
              v202 = v204 != 0;
            }

            while (v205 | v204);
            v206 = 0;
            v207 = 0;
            v208 = 1;
            v209 = v162;
            v210 = v157;
            v211 = v293;
            v212 = v158;
            do
            {
              --v211;
              v213 = v209;
              if (!v213)
              {
                v211 = 0;
              }

              v214 = v206 + v213;
              --v212;
              if (v210)
              {
                v207 |= (v208 & ~(-1 << v158)) << v214++;
              }

              else
              {
                v212 = 0;
              }

              v208 *= 2;
              v206 = v214 - 1;
              v210 = v212 != 0;
              v209 = v211 != 0;
            }

            while (v212 | v211);
            v215 = 0;
            v216 = 0;
            v217 = 1;
            v218 = v162;
            v219 = v157;
            v220 = v293;
            v221 = v158;
            do
            {
              --v220;
              if (v218)
              {
                v216 |= (v217 & v174) << v215++;
              }

              else
              {
                v220 = 0;
              }

              --v221;
              if (!v219)
              {
                v221 = 0;
              }

              v217 *= 2;
              v215 = (__PAIR64__(v215, v219) - 1) >> 32;
              v219 = v221 != 0;
              v218 = v220 != 0;
            }

            while (v221 | v220);
            v222 = 0;
            v223 = 0;
            v224 = 1;
            v225 = v162;
            LOBYTE(result) = v157;
            v226 = v293;
            v227 = v158;
            do
            {
              --v226;
              v228 = v225;
              if (!v228)
              {
                v226 = 0;
              }

              v229 = v222 + v228;
              --v227;
              if (result)
              {
                v223 |= (v224 & v197) << v229++;
              }

              else
              {
                v227 = 0;
              }

              v224 *= 2;
              v222 = v229 - 1;
              result = v227 != 0;
              v225 = v226 != 0;
            }

            while (v227 | v226);
            v161 = v276;
            v166 = v198;
            v162 = v281;
            v173 = v283;
            if (v195)
            {
              goto LABEL_264;
            }
          }

LABEL_192:
          v166 = ++v167;
        }

        while (v161 > v167);
        v152 = v175;
        v164 = v260 + 1;
        v163 = (v260 + 1);
        a7 = v279;
      }

      while (v257 > v163);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,4u,(TwiddleOrder)1>>(uint64_t result, _OWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, unsigned int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v14 = a11;
  v15 = a10;
  if (!a12)
  {
    v23 = 32 - __clz(a6 - 1);
    v24 = a6 > 1;
    if (a6 <= 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = v23;
    }

    v26 = 32 - __clz(a5 - 1);
    v27 = a5 > 1;
    if (a5 <= 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = v26;
    }

    if (v25 | v28)
    {
      v29 = a2;
      v30 = 0;
      v31 = 0;
      v32 = a5 > 1;
      v33 = v24;
      v34 = 1;
      v35 = v28;
      v36 = v25;
      do
      {
        --v35;
        if (v32)
        {
          v31 |= (v34 & ~(-1 << v28)) << v30++;
        }

        else
        {
          v35 = 0;
        }

        --v36;
        if (!v33)
        {
          v36 = 0;
        }

        v34 *= 2;
        v30 = (__PAIR64__(v30, v33) - 1) >> 32;
        v33 = v36 != 0;
        v32 = v35 != 0;
      }

      while (v36 | v35);
      v37 = 0;
      v38 = 0;
      v39 = 1;
      v40 = v27;
      v41 = v24;
      v42 = v28;
      v43 = v25;
      do
      {
        --v42;
        v44 = v40;
        if (!v44)
        {
          v42 = 0;
        }

        v45 = v37 + v44;
        if (v41)
        {
          --v43;
        }

        else
        {
          v43 = 0;
        }

        if (v41)
        {
          v38 |= (v39 & ~(-1 << v25)) << v45++;
        }

        v39 *= 2;
        v37 = v45 - 1;
        v41 = v43 != 0;
        v40 = v42 != 0;
      }

      while (v43 | v42);
      v46 = 0;
      v47 = 0;
      v48 = v27;
      v49 = v24;
      v50 = 1;
      v51 = v28;
      v52 = v25;
      do
      {
        --v51;
        if (v48)
        {
          v47 |= (v50 & a7) << v46++;
        }

        else
        {
          v51 = 0;
        }

        --v52;
        if (!v49)
        {
          v52 = 0;
        }

        v50 *= 2;
        v46 = (__PAIR64__(v46, v49) - 1) >> 32;
        v49 = v52 != 0;
        v48 = v51 != 0;
      }

      while (v52 | v51);
      v53 = 0;
      v54 = 0;
      v55 = 1;
      do
      {
        --v28;
        v56 = v27;
        if (!v56)
        {
          v28 = 0;
        }

        v57 = v53 + v56;
        --v25;
        if (v24)
        {
          v54 |= (v55 & a8) << v57;
          v58 = v57 + 1;
        }

        else
        {
          v25 = 0;
          v58 = v57;
        }

        v55 *= 2;
        v53 = v58 - 1;
        v24 = v25 != 0;
        v27 = v28 != 0;
      }

      while (v25 | v28);
      a2 = v29;
      v15 = a10;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v47 = 0;
      v31 = 0;
      v38 = 0;
      v54 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      v234 = 0;
      do
      {
        v235 = a9;
        v236 = a2;
        v237 = v47;
        do
        {
          v238 = (result + ((v237 + v54) << 6));
          v239 = *v238;
          v240 = v238[1];
          v241 = v238[3];
          v236[2] = v238[2];
          v236[3] = v241;
          *v236 = v239;
          v236[1] = v240;
          v236 += 4;
          v237 = (v237 - v31) & v31;
          --v235;
        }

        while (v235);
        v54 = (v54 - v38) & v38;
        a2 = (a2 + a11);
        ++v234;
      }

      while (v234 != v15);
    }

    return result;
  }

  v268 = result;
  v269 = a7;
  if (!*(a12 + 20))
  {
    v59 = *(a12 + 13);
    v60 = *(a12 + 12);
    v61 = 1 << v59;
    v62 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v62 = 0;
    }

    v63 = v60 + v59;
    result = v60 + v59 + v62;
    if (a6 >> v59)
    {
      v64 = 1;
    }

    else
    {
      v64 = 1 << v60 >= a5;
    }

    if (v64)
    {
      v65 = *(a12 + 12);
    }

    else
    {
      v65 = v60 + v59 + v62;
    }

    if (v64)
    {
      LOBYTE(v66) = *(a12 + 13);
    }

    else
    {
      v66 = -v62;
    }

    v67 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v67) = 0;
    }

    if (v61 < a6 && a5 >> v60 == 0)
    {
      LOBYTE(v66) = v63 - v67;
    }

    else
    {
      LOBYTE(v67) = v65;
    }

    v69 = 1 << v66;
    v70 = *(a12 + 15);
    v71 = 1 << v70;
    if (v70)
    {
      v72 = v71 > a3;
    }

    else
    {
      v72 = 1;
    }

    v73 = v72 || v71 > a4;
    v74 = (~(-1 << v70) + a3) & (-1 << v70);
    if (v73)
    {
      v75 = a3;
    }

    else
    {
      v75 = v74;
    }

    v274 = 1 << v66;
    v76 = v69 - 1;
    v270 = a10 + a8;
    v272 = a8 >> v66;
    v265 = (v69 - 1 + a10 + a8) >> v66;
    v267 = v66;
    if (a8 >> v66 >= v265)
    {
      return result;
    }

    result = a7 >> v67;
    v77 = (1 << v67) - 1;
    v288 = a9 + a7;
    if (v69 >= a6)
    {
      v69 = a6;
    }

    v78 = 32 - __clz(v69 - 1);
    v79 = v69 > 1;
    v80 = v69 <= 1 ? 0 : v78;
    v81 = 1 << v67 >= a5 ? a5 : 1 << v67;
    v82 = 32 - __clz(v81 - 1);
    v83 = v81 > 1;
    v84 = v81 <= 1 ? 0 : v82;
    v282 = a7 >> v67;
    v286 = (v77 + a9 + a7) >> v67;
    if (result >= v286)
    {
      return result;
    }

    v263 = (v75 + ~(-1 << v67)) >> v67;
    v85 = v77 & a7;
    v284 = v77 & v288;
    v260 = v76 & v270;
    v262 = v76 & a8;
    v86 = v272;
    v256 = a2;
LABEL_92:
    v87 = v86 << v267;
    v88 = v86 - v272;
    v280 = v86 * v263;
    v276 = v86 + 1;
    v64 = v270 >= (v86 + 1) << v267;
    v89 = v274;
    v90 = v274 - v262;
    if (!v64)
    {
      v89 = v260;
      v90 = v15;
    }

    v91 = v88 << v267;
    if (v87 >= a8)
    {
      v92 = 0;
    }

    else
    {
      v92 = v262;
    }

    if (v87 >= a8)
    {
      v93 = v89;
    }

    else
    {
      v93 = v90;
    }

    v278 = (v92 + v91 - v262) * a11;
    v94 = v282;
    while (1)
    {
      v95 = v94 << v67;
      v96 = v94 + 1;
      if (v288 >= (v94 + 1) << v67)
      {
        v97 = (1 << v67) - v85;
      }

      else
      {
        v97 = a9;
      }

      v98 = v284;
      if (v288 >= v96 << v67)
      {
        v98 = 1 << v67;
      }

      if (v95 >= a7)
      {
        v99 = 0;
      }

      else
      {
        v99 = v85;
      }

      if (v95 < a7)
      {
        v98 = v97;
      }

      if (v80 | v84)
      {
        break;
      }

      v116 = 0;
      v101 = 0;
      v108 = 0;
      v123 = 0;
      if (v93)
      {
        goto LABEL_147;
      }

LABEL_101:
      v94 = v96;
      a7 = v269;
      if (v96 == v286)
      {
        v86 = v276;
        v15 = a10;
        if (v276 == v265)
        {
          return result;
        }

        goto LABEL_92;
      }
    }

    v100 = 0;
    v101 = 0;
    v102 = 1;
    v103 = v83;
    v104 = v79;
    v105 = v84;
    v106 = v80;
    do
    {
      --v105;
      if (v103)
      {
        v101 |= (v102 & ~(-1 << v84)) << v100++;
      }

      else
      {
        v105 = 0;
      }

      if (v104)
      {
        --v106;
      }

      else
      {
        v106 = 0;
      }

      v102 *= 2;
      v100 = (__PAIR64__(v100, v104) - 1) >> 32;
      v104 = v106 != 0;
      v103 = v105 != 0;
    }

    while (v106 | v105);
    v107 = 0;
    v108 = 0;
    v109 = 1;
    v110 = v83;
    v111 = v79;
    v112 = v84;
    v113 = v80;
    do
    {
      --v112;
      if (!v110)
      {
        v112 = 0;
      }

      v114 = v107 + v110;
      if (v111)
      {
        --v113;
      }

      else
      {
        v113 = 0;
      }

      if (v111)
      {
        v108 |= (v109 & ~(-1 << v80)) << v114++;
      }

      v109 *= 2;
      v107 = v114 - 1;
      v111 = v113 != 0;
      v110 = v112 != 0;
    }

    while (v113 | v112);
    v115 = 0;
    v116 = 0;
    v117 = 1;
    v118 = v83;
    v119 = v79;
    v120 = v84;
    v121 = v80;
    do
    {
      --v120;
      if (v118)
      {
        v116 |= (v117 & v99) << v115;
        v122 = v115 + 1;
      }

      else
      {
        v120 = 0;
        v122 = v115;
      }

      --v121;
      if (!v119)
      {
        v121 = 0;
      }

      v117 *= 2;
      v115 = (__PAIR64__(v122, v119) - 1) >> 32;
      v119 = v121 != 0;
      v118 = v120 != 0;
    }

    while (v121 | v120);
    LODWORD(result) = 0;
    v123 = 0;
    v124 = 1;
    v125 = v83;
    v126 = v79;
    v127 = v84;
    v128 = v80;
    do
    {
      --v127;
      v129 = v125;
      if (!v129)
      {
        v127 = 0;
      }

      v130 = result + v129;
      --v128;
      if (v126)
      {
        v123 |= (v124 & v92) << v130++;
      }

      else
      {
        v128 = 0;
      }

      v124 *= 2;
      result = (v130 - 1);
      v126 = v128 != 0;
      v125 = v127 != 0;
    }

    while (v128 | v127);
    if (!v93)
    {
      goto LABEL_101;
    }

LABEL_147:
    if (v98)
    {
      v131 = 0;
      v132 = (&v256[4 * (v99 + ((v94 - v282) << v67) - v85)] + v278);
      v133 = (v94 + v280) * a12[3] * *(a12 + 9) + v268;
      do
      {
        v134 = v98;
        v135 = v132;
        v136 = v116;
        do
        {
          v137 = (v133 + ((v136 + v123) << 6));
          v138 = *v137;
          v139 = v137[1];
          v140 = v137[3];
          v135[2] = v137[2];
          v135[3] = v140;
          *v135 = v138;
          v135[1] = v139;
          v135 += 4;
          v136 = (v136 - v101) & v101;
          --v134;
        }

        while (v134);
        result = v123 - v108;
        v123 = (v123 - v108) & v108;
        v132 = (v132 + a11);
        ++v131;
      }

      while (v131 != v93);
    }

    goto LABEL_101;
  }

  v16 = a2;
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v291);
  v19 = *(a12 + 13);
  v20 = *(a12 + 12);
  v255 = v16;
  if (1 << v19 >= a6 || a5 >> v20)
  {
    v141 = a6 >> v19;
    v142 = 1 << v20;
    v143 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v143 = 0;
    }

    v144 = v142 >= a5;
    if (v142 < a5)
    {
      v145 = v20 + v19 + v143;
    }

    else
    {
      v145 = *(a12 + 12);
    }

    if (v144)
    {
      LOBYTE(v146) = *(a12 + 13);
    }

    else
    {
      v146 = -v143;
    }

    if (!v141)
    {
      v20 = v145;
    }

    v249 = v20;
    if (v141)
    {
      v22 = *(a12 + 13);
    }

    else
    {
      v22 = v146;
    }
  }

  else
  {
    v21 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v21) = 0;
    }

    v249 = v21;
    v22 = v20 + v19 - v21;
  }

  v147 = v268;
  v148 = a10;
  v149 = a8;
  v247 = v297;
  if (v297)
  {
    v150 = 1 << v22;
    if (1 << v22 >= a6)
    {
      v151 = a6;
    }

    else
    {
      v151 = 1 << v22;
    }

    v152 = 32 - __clz(v151 - 1);
    v153 = v151 > 1;
    if (v151 <= 1)
    {
      v154 = 0;
    }

    else
    {
      v154 = v152;
    }

    v248 = 1 << v249;
    if (1 << v249 >= a5)
    {
      v155 = a5;
    }

    else
    {
      v155 = 1 << v249;
    }

    v156 = 32 - __clz(v155 - 1);
    v157 = v298;
    v158 = v155 > 1;
    if (v155 <= 1)
    {
      v156 = 0;
    }

    v281 = v295;
    v283 = v156;
    v277 = v295 != 0;
    v279 = v296;
    v275 = v296 != 0;
    if (v298)
    {
      v159 = 0;
      v160 = 0;
      v246 = a7 >> v249;
      v264 = a8 >> v22;
      v289 = v299;
      v290 = v294;
      v287 = v296 | v295;
      v245 = a9 + a7;
      v244 = (v248 - 1) & (a9 + a7);
      v243 = v292;
      v285 = v293;
      v242 = (v248 - 1) & a7;
      v259 = (v150 - 1) & a8;
      v261 = (v150 - 1) & (a10 + a8);
      v258 = v150 - v259;
      v161 = ~(-1 << v156);
      v257 = v154 | v156;
      v271 = v158;
      v251 = 1 << v22;
      v252 = v22;
      v266 = v298;
      do
      {
        v250 = v160;
        v162 = 0;
        v163 = 0;
        v164 = (v159 + v246) << v249;
        v165 = a9;
        if (v245 >= (v159 + v246 + 1) << v249)
        {
          v165 = v248 - v242;
        }

        v166 = 1 << v249;
        if (v245 < (v159 + v246 + 1) << v249)
        {
          v166 = v244;
        }

        v167 = v243 + v159;
        v168 = v159 << v249;
        if (v164 >= a7)
        {
          v169 = v166;
        }

        else
        {
          v169 = v165;
        }

        if (v164 >= a7)
        {
          v170 = 0;
        }

        else
        {
          v170 = v242;
        }

        v253 = &v255[4 * (v170 + v168)];
        v171 = v148;
        v273 = v169;
        do
        {
          v172 = v285 + v162;
          if (v289)
          {
            v173 = v287;
            if (v287)
            {
              v174 = 0;
              v173 = 0;
              v175 = 1;
              v176 = v275;
              v177 = v277;
              v178 = v281;
              v179 = v279;
              do
              {
                --v178;
                if (v177)
                {
                  v173 |= (v175 & v167) << v174;
                }

                else
                {
                  v178 = 0;
                }

                if (v177)
                {
                  ++v174;
                }

                --v179;
                if (v176)
                {
                  v173 |= (v175 & v172) << v174;
                }

                else
                {
                  v179 = 0;
                }

                if (v176)
                {
                  ++v174;
                }

                v175 *= 2;
                --v174;
                v176 = v179 != 0;
                v177 = v178 != 0;
              }

              while (v179 | v178);
            }
          }

          else
          {
            v173 = v287;
            if (v287)
            {
              v180 = 0;
              v173 = 0;
              v181 = 1;
              v183 = v275;
              v182 = v277;
              v184 = v279;
              v185 = v281;
              do
              {
                --v184;
                if (v183)
                {
                  v173 |= (v181 & v172) << v180;
                }

                else
                {
                  v184 = 0;
                }

                if (v183)
                {
                  ++v180;
                }

                --v185;
                if (v182)
                {
                  v173 |= (v181 & v167) << v180;
                }

                else
                {
                  v185 = 0;
                }

                if (v182)
                {
                  ++v180;
                }

                v181 *= 2;
                --v180;
                v182 = v185 != 0;
                v183 = v184 != 0;
              }

              while (v185 | v184);
            }
          }

          v186 = *(v147 + 4 * ((v173 + v290) | ((v173 + v290) >> 8 << 9)));
          if (v186 < 0)
          {
            v187 = v147 - *(a13 + 3) + ((v186 & 0x1FFFFFFF) << 14);
            result = *a13;
            v188 = a13[2];
            if (result > v188)
            {
              v189 = v162;
              result = get_level_offset_within_tail(result, v188, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v158 = v271;
              v169 = v273;
              v162 = v189;
              v150 = v251;
              v22 = v252;
              v14 = a11;
              v149 = a8;
              v171 = a10;
              v147 = v268;
              v187 += result;
            }

            v190 = (v162 + v264) << v22;
            v191 = v258;
            if (a10 + a8 >= (v162 + v264 + 1) << v22)
            {
              v192 = v150;
            }

            else
            {
              v191 = v171;
              v192 = v261;
            }

            if (v190 >= v149)
            {
              v193 = 0;
            }

            else
            {
              v193 = v259;
            }

            if (v190 >= v149)
            {
              v191 = v192;
            }

            if (!v257)
            {
              v212 = 0;
              v196 = 0;
              v203 = 0;
              v219 = 0;
              v157 = v266;
              if (!v191)
              {
                goto LABEL_192;
              }

LABEL_264:
              if (v169)
              {
                v226 = 0;
                v227 = (v253 + (v193 + (v162 << v22)) * v14);
                do
                {
                  v228 = v169;
                  v229 = v227;
                  v230 = v212;
                  do
                  {
                    result = v187 + ((v230 + v219) << 6);
                    v231 = *result;
                    v232 = *(result + 16);
                    v233 = *(result + 48);
                    v229[2] = *(result + 32);
                    v229[3] = v233;
                    *v229 = v231;
                    v229[1] = v232;
                    v229 += 4;
                    v230 = (v230 - v196) & v196;
                    --v228;
                  }

                  while (v228);
                  v219 = (v219 - v203) & v203;
                  v227 = (v227 + v14);
                  ++v226;
                }

                while (v226 != v191);
              }

              goto LABEL_192;
            }

            v194 = v162;
            v195 = 0;
            v196 = 0;
            v197 = 1;
            v198 = v158;
            v199 = v153;
            v200 = v283;
            v201 = v154;
            do
            {
              --v200;
              if (v198)
              {
                v196 |= (v197 & v161) << v195++;
              }

              else
              {
                v200 = 0;
              }

              --v201;
              if (!v199)
              {
                v201 = 0;
              }

              v197 *= 2;
              v195 = (__PAIR64__(v195, v199) - 1) >> 32;
              v199 = v201 != 0;
              v198 = v200 != 0;
            }

            while (v201 | v200);
            v202 = 0;
            v203 = 0;
            v204 = 1;
            v205 = v158;
            v206 = v153;
            v207 = v283;
            v208 = v154;
            do
            {
              --v207;
              v209 = v205;
              if (!v209)
              {
                v207 = 0;
              }

              v210 = v202 + v209;
              --v208;
              if (v206)
              {
                v203 |= (v204 & ~(-1 << v154)) << v210++;
              }

              else
              {
                v208 = 0;
              }

              v204 *= 2;
              v202 = v210 - 1;
              v206 = v208 != 0;
              v205 = v207 != 0;
            }

            while (v208 | v207);
            v211 = 0;
            v212 = 0;
            v213 = 1;
            v214 = v158;
            v215 = v153;
            v216 = v283;
            v217 = v154;
            do
            {
              --v216;
              if (v214)
              {
                v212 |= (v213 & v170) << v211++;
              }

              else
              {
                v216 = 0;
              }

              --v217;
              if (!v215)
              {
                v217 = 0;
              }

              v213 *= 2;
              v211 = (__PAIR64__(v211, v215) - 1) >> 32;
              v215 = v217 != 0;
              v214 = v216 != 0;
            }

            while (v217 | v216);
            v218 = 0;
            v219 = 0;
            v220 = 1;
            v221 = v158;
            LOBYTE(result) = v153;
            v222 = v283;
            v223 = v154;
            do
            {
              --v222;
              v224 = v221;
              if (!v224)
              {
                v222 = 0;
              }

              v225 = v218 + v224;
              --v223;
              if (result)
              {
                v219 |= (v220 & v193) << v225++;
              }

              else
              {
                v223 = 0;
              }

              v220 *= 2;
              v218 = v225 - 1;
              result = v223 != 0;
              v221 = v222 != 0;
            }

            while (v223 | v222);
            v157 = v266;
            v162 = v194;
            v158 = v271;
            v169 = v273;
            if (v191)
            {
              goto LABEL_264;
            }
          }

LABEL_192:
          v162 = ++v163;
        }

        while (v157 > v163);
        v148 = v171;
        v160 = v250 + 1;
        v159 = (v250 + 1);
        a7 = v269;
      }

      while (v247 > v159);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,2u,(TwiddleOrder)1>>(uint64_t result, _OWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, unsigned int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v14 = a11;
  v15 = a10;
  if (!a12)
  {
    v23 = 32 - __clz(a6 - 1);
    v24 = a6 > 1;
    if (a6 <= 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = v23;
    }

    v26 = 32 - __clz(a5 - 1);
    v27 = a5 > 1;
    if (a5 <= 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = v26;
    }

    if (v25 | v28)
    {
      v29 = a2;
      v30 = 0;
      v31 = 0;
      v32 = a5 > 1;
      v33 = v24;
      v34 = 1;
      v35 = v28;
      v36 = v25;
      do
      {
        --v35;
        if (v32)
        {
          v31 |= (v34 & ~(-1 << v28)) << v30++;
        }

        else
        {
          v35 = 0;
        }

        --v36;
        if (!v33)
        {
          v36 = 0;
        }

        v34 *= 2;
        v30 = (__PAIR64__(v30, v33) - 1) >> 32;
        v33 = v36 != 0;
        v32 = v35 != 0;
      }

      while (v36 | v35);
      v37 = 0;
      v38 = 0;
      v39 = 1;
      v40 = v27;
      v41 = v24;
      v42 = v28;
      v43 = v25;
      do
      {
        --v42;
        v44 = v40;
        if (!v44)
        {
          v42 = 0;
        }

        v45 = v37 + v44;
        if (v41)
        {
          --v43;
        }

        else
        {
          v43 = 0;
        }

        if (v41)
        {
          v38 |= (v39 & ~(-1 << v25)) << v45++;
        }

        v39 *= 2;
        v37 = v45 - 1;
        v41 = v43 != 0;
        v40 = v42 != 0;
      }

      while (v43 | v42);
      v46 = 0;
      v47 = 0;
      v48 = v27;
      v49 = v24;
      v50 = 1;
      v51 = v28;
      v52 = v25;
      do
      {
        --v51;
        if (v48)
        {
          v47 |= (v50 & a7) << v46++;
        }

        else
        {
          v51 = 0;
        }

        --v52;
        if (!v49)
        {
          v52 = 0;
        }

        v50 *= 2;
        v46 = (__PAIR64__(v46, v49) - 1) >> 32;
        v49 = v52 != 0;
        v48 = v51 != 0;
      }

      while (v52 | v51);
      v53 = 0;
      v54 = 0;
      v55 = 1;
      do
      {
        --v28;
        v56 = v27;
        if (!v56)
        {
          v28 = 0;
        }

        v57 = v53 + v56;
        --v25;
        if (v24)
        {
          v54 |= (v55 & a8) << v57;
          v58 = v57 + 1;
        }

        else
        {
          v25 = 0;
          v58 = v57;
        }

        v55 *= 2;
        v53 = v58 - 1;
        v24 = v25 != 0;
        v27 = v28 != 0;
      }

      while (v25 | v28);
      a2 = v29;
      v15 = a10;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v47 = 0;
      v31 = 0;
      v38 = 0;
      v54 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      v230 = 0;
      do
      {
        v231 = a9;
        v232 = a2;
        v233 = v47;
        do
        {
          v234 = (result + 32 * (v233 + v54));
          v235 = v234[1];
          *v232 = *v234;
          v232[1] = v235;
          v232 += 2;
          v233 = (v233 - v31) & v31;
          --v231;
        }

        while (v231);
        v54 = (v54 - v38) & v38;
        a2 = (a2 + a11);
        ++v230;
      }

      while (v230 != v15);
    }

    return result;
  }

  v262 = result;
  v263 = a7;
  if (!*(a12 + 20))
  {
    v59 = *(a12 + 13);
    v60 = *(a12 + 12);
    v61 = 1 << v59;
    v62 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v62 = 0;
    }

    v63 = v60 + v59;
    result = v60 + v59 + v62;
    if (a6 >> v59)
    {
      v64 = 1;
    }

    else
    {
      v64 = 1 << v60 >= a5;
    }

    if (v64)
    {
      v65 = *(a12 + 12);
    }

    else
    {
      v65 = v60 + v59 + v62;
    }

    if (v64)
    {
      LOBYTE(v66) = *(a12 + 13);
    }

    else
    {
      v66 = -v62;
    }

    v67 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v67) = 0;
    }

    if (v61 < a6 && a5 >> v60 == 0)
    {
      LOBYTE(v66) = v63 - v67;
    }

    else
    {
      LOBYTE(v67) = v65;
    }

    v69 = 1 << v66;
    v70 = *(a12 + 15);
    v71 = 1 << v70;
    if (v70)
    {
      v72 = v71 > a3;
    }

    else
    {
      v72 = 1;
    }

    v73 = v72 || v71 > a4;
    v74 = (~(-1 << v70) + a3) & (-1 << v70);
    if (v73)
    {
      v75 = a3;
    }

    else
    {
      v75 = v74;
    }

    v268 = 1 << v66;
    v76 = v69 - 1;
    v264 = a10 + a8;
    v266 = a8 >> v66;
    v259 = (v69 - 1 + a10 + a8) >> v66;
    v261 = v66;
    if (a8 >> v66 >= v259)
    {
      return result;
    }

    result = a7 >> v67;
    v77 = (1 << v67) - 1;
    v282 = a9 + a7;
    if (v69 >= a6)
    {
      v69 = a6;
    }

    v78 = 32 - __clz(v69 - 1);
    v79 = v69 > 1;
    v80 = v69 <= 1 ? 0 : v78;
    v81 = 1 << v67 >= a5 ? a5 : 1 << v67;
    v82 = 32 - __clz(v81 - 1);
    v83 = v81 > 1;
    v84 = v81 <= 1 ? 0 : v82;
    v276 = a7 >> v67;
    v280 = (v77 + a9 + a7) >> v67;
    if (result >= v280)
    {
      return result;
    }

    v257 = (v75 + ~(-1 << v67)) >> v67;
    v85 = v77 & a7;
    v278 = v77 & v282;
    v254 = v76 & v264;
    v256 = v76 & a8;
    v86 = v266;
    v250 = a2;
LABEL_92:
    v87 = v86 << v261;
    v88 = v86 - v266;
    v274 = v86 * v257;
    v270 = v86 + 1;
    v64 = v264 >= (v86 + 1) << v261;
    v89 = v268;
    v90 = v268 - v256;
    if (!v64)
    {
      v89 = v254;
      v90 = v15;
    }

    v91 = v88 << v261;
    if (v87 >= a8)
    {
      v92 = 0;
    }

    else
    {
      v92 = v256;
    }

    if (v87 >= a8)
    {
      v93 = v89;
    }

    else
    {
      v93 = v90;
    }

    v272 = (v92 + v91 - v256) * a11;
    v94 = v276;
    while (1)
    {
      v95 = v94 << v67;
      v96 = v94 + 1;
      if (v282 >= (v94 + 1) << v67)
      {
        v97 = (1 << v67) - v85;
      }

      else
      {
        v97 = a9;
      }

      v98 = v278;
      if (v282 >= v96 << v67)
      {
        v98 = 1 << v67;
      }

      if (v95 >= a7)
      {
        v99 = 0;
      }

      else
      {
        v99 = v85;
      }

      if (v95 < a7)
      {
        v98 = v97;
      }

      if (v80 | v84)
      {
        break;
      }

      v116 = 0;
      v101 = 0;
      v108 = 0;
      v123 = 0;
      if (v93)
      {
        goto LABEL_147;
      }

LABEL_101:
      v94 = v96;
      a7 = v263;
      if (v96 == v280)
      {
        v86 = v270;
        v15 = a10;
        if (v270 == v259)
        {
          return result;
        }

        goto LABEL_92;
      }
    }

    v100 = 0;
    v101 = 0;
    v102 = 1;
    v103 = v83;
    v104 = v79;
    v105 = v84;
    v106 = v80;
    do
    {
      --v105;
      if (v103)
      {
        v101 |= (v102 & ~(-1 << v84)) << v100++;
      }

      else
      {
        v105 = 0;
      }

      if (v104)
      {
        --v106;
      }

      else
      {
        v106 = 0;
      }

      v102 *= 2;
      v100 = (__PAIR64__(v100, v104) - 1) >> 32;
      v104 = v106 != 0;
      v103 = v105 != 0;
    }

    while (v106 | v105);
    v107 = 0;
    v108 = 0;
    v109 = 1;
    v110 = v83;
    v111 = v79;
    v112 = v84;
    v113 = v80;
    do
    {
      --v112;
      if (!v110)
      {
        v112 = 0;
      }

      v114 = v107 + v110;
      if (v111)
      {
        --v113;
      }

      else
      {
        v113 = 0;
      }

      if (v111)
      {
        v108 |= (v109 & ~(-1 << v80)) << v114++;
      }

      v109 *= 2;
      v107 = v114 - 1;
      v111 = v113 != 0;
      v110 = v112 != 0;
    }

    while (v113 | v112);
    v115 = 0;
    v116 = 0;
    v117 = 1;
    v118 = v83;
    v119 = v79;
    v120 = v84;
    v121 = v80;
    do
    {
      --v120;
      if (v118)
      {
        v116 |= (v117 & v99) << v115;
        v122 = v115 + 1;
      }

      else
      {
        v120 = 0;
        v122 = v115;
      }

      --v121;
      if (!v119)
      {
        v121 = 0;
      }

      v117 *= 2;
      v115 = (__PAIR64__(v122, v119) - 1) >> 32;
      v119 = v121 != 0;
      v118 = v120 != 0;
    }

    while (v121 | v120);
    LODWORD(result) = 0;
    v123 = 0;
    v124 = 1;
    v125 = v83;
    v126 = v79;
    v127 = v84;
    v128 = v80;
    do
    {
      --v127;
      v129 = v125;
      if (!v129)
      {
        v127 = 0;
      }

      v130 = result + v129;
      --v128;
      if (v126)
      {
        v123 |= (v124 & v92) << v130++;
      }

      else
      {
        v128 = 0;
      }

      v124 *= 2;
      result = (v130 - 1);
      v126 = v128 != 0;
      v125 = v127 != 0;
    }

    while (v128 | v127);
    if (!v93)
    {
      goto LABEL_101;
    }

LABEL_147:
    if (v98)
    {
      v131 = 0;
      v132 = (&v250[2 * (v99 + ((v94 - v276) << v67) - v85)] + v272);
      v133 = (v94 + v274) * a12[3] * *(a12 + 9) + v262;
      do
      {
        v134 = v98;
        v135 = v132;
        v136 = v116;
        do
        {
          v137 = (v133 + 32 * (v136 + v123));
          v138 = v137[1];
          *v135 = *v137;
          v135[1] = v138;
          v135 += 2;
          v136 = (v136 - v101) & v101;
          --v134;
        }

        while (v134);
        result = v123 - v108;
        v123 = (v123 - v108) & v108;
        v132 = (v132 + a11);
        ++v131;
      }

      while (v131 != v93);
    }

    goto LABEL_101;
  }

  v16 = a2;
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v285);
  v19 = *(a12 + 13);
  v20 = *(a12 + 12);
  v249 = v16;
  if (1 << v19 >= a6 || a5 >> v20)
  {
    v139 = a6 >> v19;
    v140 = 1 << v20;
    v141 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v141 = 0;
    }

    v142 = v140 >= a5;
    if (v140 < a5)
    {
      v143 = v20 + v19 + v141;
    }

    else
    {
      v143 = *(a12 + 12);
    }

    if (v142)
    {
      LOBYTE(v144) = *(a12 + 13);
    }

    else
    {
      v144 = -v141;
    }

    if (!v139)
    {
      v20 = v143;
    }

    v243 = v20;
    if (v139)
    {
      v22 = *(a12 + 13);
    }

    else
    {
      v22 = v144;
    }
  }

  else
  {
    v21 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v21) = 0;
    }

    v243 = v21;
    v22 = v20 + v19 - v21;
  }

  v145 = v262;
  v146 = a10;
  v147 = a8;
  v241 = v291;
  if (v291)
  {
    v148 = 1 << v22;
    if (1 << v22 >= a6)
    {
      v149 = a6;
    }

    else
    {
      v149 = 1 << v22;
    }

    v150 = 32 - __clz(v149 - 1);
    v151 = v149 > 1;
    if (v149 <= 1)
    {
      v152 = 0;
    }

    else
    {
      v152 = v150;
    }

    v242 = 1 << v243;
    if (1 << v243 >= a5)
    {
      v153 = a5;
    }

    else
    {
      v153 = 1 << v243;
    }

    v154 = 32 - __clz(v153 - 1);
    v155 = v292;
    v156 = v153 > 1;
    if (v153 <= 1)
    {
      v154 = 0;
    }

    v275 = v289;
    v277 = v154;
    v271 = v289 != 0;
    v273 = v290;
    v269 = v290 != 0;
    if (v292)
    {
      v157 = 0;
      v158 = 0;
      v240 = a7 >> v243;
      v258 = a8 >> v22;
      v283 = v293;
      v284 = v288;
      v281 = v290 | v289;
      v239 = a9 + a7;
      v238 = (v242 - 1) & (a9 + a7);
      v237 = v286;
      v279 = v287;
      v236 = (v242 - 1) & a7;
      v253 = (v148 - 1) & a8;
      v255 = (v148 - 1) & (a10 + a8);
      v252 = v148 - v253;
      v159 = ~(-1 << v154);
      v251 = v152 | v154;
      v265 = v156;
      v245 = 1 << v22;
      v246 = v22;
      v260 = v292;
      do
      {
        v244 = v158;
        v160 = 0;
        v161 = 0;
        v162 = (v157 + v240) << v243;
        v163 = a9;
        if (v239 >= (v157 + v240 + 1) << v243)
        {
          v163 = v242 - v236;
        }

        v164 = 1 << v243;
        if (v239 < (v157 + v240 + 1) << v243)
        {
          v164 = v238;
        }

        v165 = v237 + v157;
        v166 = v157 << v243;
        if (v162 >= a7)
        {
          v167 = v164;
        }

        else
        {
          v167 = v163;
        }

        if (v162 >= a7)
        {
          v168 = 0;
        }

        else
        {
          v168 = v236;
        }

        v247 = &v249[2 * (v168 + v166)];
        v169 = v146;
        v267 = v167;
        do
        {
          v170 = v279 + v160;
          if (v283)
          {
            v171 = v281;
            if (v281)
            {
              v172 = 0;
              v171 = 0;
              v173 = 1;
              v174 = v269;
              v175 = v271;
              v176 = v275;
              v177 = v273;
              do
              {
                --v176;
                if (v175)
                {
                  v171 |= (v173 & v165) << v172;
                }

                else
                {
                  v176 = 0;
                }

                if (v175)
                {
                  ++v172;
                }

                --v177;
                if (v174)
                {
                  v171 |= (v173 & v170) << v172;
                }

                else
                {
                  v177 = 0;
                }

                if (v174)
                {
                  ++v172;
                }

                v173 *= 2;
                --v172;
                v174 = v177 != 0;
                v175 = v176 != 0;
              }

              while (v177 | v176);
            }
          }

          else
          {
            v171 = v281;
            if (v281)
            {
              v178 = 0;
              v171 = 0;
              v179 = 1;
              v181 = v269;
              v180 = v271;
              v182 = v273;
              v183 = v275;
              do
              {
                --v182;
                if (v181)
                {
                  v171 |= (v179 & v170) << v178;
                }

                else
                {
                  v182 = 0;
                }

                if (v181)
                {
                  ++v178;
                }

                --v183;
                if (v180)
                {
                  v171 |= (v179 & v165) << v178;
                }

                else
                {
                  v183 = 0;
                }

                if (v180)
                {
                  ++v178;
                }

                v179 *= 2;
                --v178;
                v180 = v183 != 0;
                v181 = v182 != 0;
              }

              while (v183 | v182);
            }
          }

          v184 = *(v145 + 4 * ((v171 + v284) | ((v171 + v284) >> 8 << 9)));
          if (v184 < 0)
          {
            v185 = v145 - *(a13 + 3) + ((v184 & 0x1FFFFFFF) << 14);
            result = *a13;
            v186 = a13[2];
            if (result > v186)
            {
              v187 = v160;
              result = get_level_offset_within_tail(result, v186, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v156 = v265;
              v167 = v267;
              v160 = v187;
              v148 = v245;
              v22 = v246;
              v14 = a11;
              v147 = a8;
              v169 = a10;
              v145 = v262;
              v185 += result;
            }

            v188 = (v160 + v258) << v22;
            v189 = v252;
            if (a10 + a8 >= (v160 + v258 + 1) << v22)
            {
              v190 = v148;
            }

            else
            {
              v189 = v169;
              v190 = v255;
            }

            if (v188 >= v147)
            {
              v191 = 0;
            }

            else
            {
              v191 = v253;
            }

            if (v188 >= v147)
            {
              v189 = v190;
            }

            if (!v251)
            {
              v210 = 0;
              v194 = 0;
              v201 = 0;
              v217 = 0;
              v155 = v260;
              if (!v189)
              {
                goto LABEL_192;
              }

LABEL_264:
              if (v167)
              {
                v224 = 0;
                v225 = (v247 + (v191 + (v160 << v22)) * v14);
                do
                {
                  v226 = v167;
                  v227 = v225;
                  v228 = v210;
                  do
                  {
                    result = v185 + 32 * (v228 + v217);
                    v229 = *(result + 16);
                    *v227 = *result;
                    v227[1] = v229;
                    v227 += 2;
                    v228 = (v228 - v194) & v194;
                    --v226;
                  }

                  while (v226);
                  v217 = (v217 - v201) & v201;
                  v225 = (v225 + v14);
                  ++v224;
                }

                while (v224 != v189);
              }

              goto LABEL_192;
            }

            v192 = v160;
            v193 = 0;
            v194 = 0;
            v195 = 1;
            v196 = v156;
            v197 = v151;
            v198 = v277;
            v199 = v152;
            do
            {
              --v198;
              if (v196)
              {
                v194 |= (v195 & v159) << v193++;
              }

              else
              {
                v198 = 0;
              }

              --v199;
              if (!v197)
              {
                v199 = 0;
              }

              v195 *= 2;
              v193 = (__PAIR64__(v193, v197) - 1) >> 32;
              v197 = v199 != 0;
              v196 = v198 != 0;
            }

            while (v199 | v198);
            v200 = 0;
            v201 = 0;
            v202 = 1;
            v203 = v156;
            v204 = v151;
            v205 = v277;
            v206 = v152;
            do
            {
              --v205;
              v207 = v203;
              if (!v207)
              {
                v205 = 0;
              }

              v208 = v200 + v207;
              --v206;
              if (v204)
              {
                v201 |= (v202 & ~(-1 << v152)) << v208++;
              }

              else
              {
                v206 = 0;
              }

              v202 *= 2;
              v200 = v208 - 1;
              v204 = v206 != 0;
              v203 = v205 != 0;
            }

            while (v206 | v205);
            v209 = 0;
            v210 = 0;
            v211 = 1;
            v212 = v156;
            v213 = v151;
            v214 = v277;
            v215 = v152;
            do
            {
              --v214;
              if (v212)
              {
                v210 |= (v211 & v168) << v209++;
              }

              else
              {
                v214 = 0;
              }

              --v215;
              if (!v213)
              {
                v215 = 0;
              }

              v211 *= 2;
              v209 = (__PAIR64__(v209, v213) - 1) >> 32;
              v213 = v215 != 0;
              v212 = v214 != 0;
            }

            while (v215 | v214);
            v216 = 0;
            v217 = 0;
            v218 = 1;
            v219 = v156;
            LOBYTE(result) = v151;
            v220 = v277;
            v221 = v152;
            do
            {
              --v220;
              v222 = v219;
              if (!v222)
              {
                v220 = 0;
              }

              v223 = v216 + v222;
              --v221;
              if (result)
              {
                v217 |= (v218 & v191) << v223++;
              }

              else
              {
                v221 = 0;
              }

              v218 *= 2;
              v216 = v223 - 1;
              result = v221 != 0;
              v219 = v220 != 0;
            }

            while (v221 | v220);
            v155 = v260;
            v160 = v192;
            v156 = v265;
            v167 = v267;
            if (v189)
            {
              goto LABEL_264;
            }
          }

LABEL_192:
          v160 = ++v161;
        }

        while (v155 > v161);
        v146 = v169;
        v158 = v244 + 1;
        v157 = (v244 + 1);
        a7 = v263;
      }

      while (v241 > v157);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,8ul,8u,(TwiddleOrder)1>>(uint64_t result, _OWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, unsigned int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v14 = a11;
  v15 = a10;
  if (!a12)
  {
    v23 = 32 - __clz(a6 - 1);
    v24 = a6 > 1;
    if (a6 <= 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = v23;
    }

    v26 = 32 - __clz(a5 - 1);
    v27 = a5 > 1;
    if (a5 <= 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = v26;
    }

    if (v25 | v28)
    {
      v29 = a2;
      v30 = 0;
      v31 = 0;
      v32 = a5 > 1;
      v33 = v24;
      v34 = 1;
      v35 = v28;
      v36 = v25;
      do
      {
        --v35;
        if (v32)
        {
          v31 |= (v34 & ~(-1 << v28)) << v30++;
        }

        else
        {
          v35 = 0;
        }

        --v36;
        if (!v33)
        {
          v36 = 0;
        }

        v34 *= 2;
        v30 = (__PAIR64__(v30, v33) - 1) >> 32;
        v33 = v36 != 0;
        v32 = v35 != 0;
      }

      while (v36 | v35);
      v37 = 0;
      v38 = 0;
      v39 = 1;
      v40 = v27;
      v41 = v24;
      v42 = v28;
      v43 = v25;
      do
      {
        --v42;
        v44 = v40;
        if (!v44)
        {
          v42 = 0;
        }

        v45 = v37 + v44;
        if (v41)
        {
          --v43;
        }

        else
        {
          v43 = 0;
        }

        if (v41)
        {
          v38 |= (v39 & ~(-1 << v25)) << v45++;
        }

        v39 *= 2;
        v37 = v45 - 1;
        v41 = v43 != 0;
        v40 = v42 != 0;
      }

      while (v43 | v42);
      v46 = 0;
      v47 = 0;
      v48 = v27;
      v49 = v24;
      v50 = 1;
      v51 = v28;
      v52 = v25;
      do
      {
        --v51;
        if (v48)
        {
          v47 |= (v50 & a7) << v46++;
        }

        else
        {
          v51 = 0;
        }

        --v52;
        if (!v49)
        {
          v52 = 0;
        }

        v50 *= 2;
        v46 = (__PAIR64__(v46, v49) - 1) >> 32;
        v49 = v52 != 0;
        v48 = v51 != 0;
      }

      while (v52 | v51);
      v53 = 0;
      v54 = 0;
      v55 = 1;
      do
      {
        --v28;
        v56 = v27;
        if (!v56)
        {
          v28 = 0;
        }

        v57 = v53 + v56;
        --v25;
        if (v24)
        {
          v54 |= (v55 & a8) << v57;
          v58 = v57 + 1;
        }

        else
        {
          v25 = 0;
          v58 = v57;
        }

        v55 *= 2;
        v53 = v58 - 1;
        v24 = v25 != 0;
        v27 = v28 != 0;
      }

      while (v25 | v28);
      a2 = v29;
      v15 = a10;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v47 = 0;
      v31 = 0;
      v38 = 0;
      v54 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      v234 = 0;
      do
      {
        v235 = a9;
        v236 = a2;
        v237 = v47;
        do
        {
          v238 = (result + ((v237 + v54) << 6));
          v239 = *v238;
          v240 = v238[1];
          v241 = v238[3];
          v236[2] = v238[2];
          v236[3] = v241;
          *v236 = v239;
          v236[1] = v240;
          v236 += 4;
          v237 = (v237 - v31) & v31;
          --v235;
        }

        while (v235);
        v54 = (v54 - v38) & v38;
        a2 = (a2 + a11);
        ++v234;
      }

      while (v234 != v15);
    }

    return result;
  }

  v268 = result;
  v269 = a7;
  if (!*(a12 + 20))
  {
    v59 = *(a12 + 13);
    v60 = *(a12 + 12);
    v61 = 1 << v59;
    v62 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v62 = 0;
    }

    v63 = v60 + v59;
    result = v60 + v59 + v62;
    if (a6 >> v59)
    {
      v64 = 1;
    }

    else
    {
      v64 = 1 << v60 >= a5;
    }

    if (v64)
    {
      v65 = *(a12 + 12);
    }

    else
    {
      v65 = v60 + v59 + v62;
    }

    if (v64)
    {
      LOBYTE(v66) = *(a12 + 13);
    }

    else
    {
      v66 = -v62;
    }

    v67 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v67) = 0;
    }

    if (v61 < a6 && a5 >> v60 == 0)
    {
      LOBYTE(v66) = v63 - v67;
    }

    else
    {
      LOBYTE(v67) = v65;
    }

    v69 = 1 << v66;
    v70 = *(a12 + 15);
    v71 = 1 << v70;
    if (v70)
    {
      v72 = v71 > a3;
    }

    else
    {
      v72 = 1;
    }

    v73 = v72 || v71 > a4;
    v74 = (~(-1 << v70) + a3) & (-1 << v70);
    if (v73)
    {
      v75 = a3;
    }

    else
    {
      v75 = v74;
    }

    v274 = 1 << v66;
    v76 = v69 - 1;
    v270 = a10 + a8;
    v272 = a8 >> v66;
    v265 = (v69 - 1 + a10 + a8) >> v66;
    v267 = v66;
    if (a8 >> v66 >= v265)
    {
      return result;
    }

    result = a7 >> v67;
    v77 = (1 << v67) - 1;
    v288 = a9 + a7;
    if (v69 >= a6)
    {
      v69 = a6;
    }

    v78 = 32 - __clz(v69 - 1);
    v79 = v69 > 1;
    v80 = v69 <= 1 ? 0 : v78;
    v81 = 1 << v67 >= a5 ? a5 : 1 << v67;
    v82 = 32 - __clz(v81 - 1);
    v83 = v81 > 1;
    v84 = v81 <= 1 ? 0 : v82;
    v282 = a7 >> v67;
    v286 = (v77 + a9 + a7) >> v67;
    if (result >= v286)
    {
      return result;
    }

    v263 = (v75 + ~(-1 << v67)) >> v67;
    v85 = v77 & a7;
    v284 = v77 & v288;
    v260 = v76 & v270;
    v262 = v76 & a8;
    v86 = v272;
    v256 = a2;
LABEL_92:
    v87 = v86 << v267;
    v88 = v86 - v272;
    v280 = v86 * v263;
    v276 = v86 + 1;
    v64 = v270 >= (v86 + 1) << v267;
    v89 = v274;
    v90 = v274 - v262;
    if (!v64)
    {
      v89 = v260;
      v90 = v15;
    }

    v91 = v88 << v267;
    if (v87 >= a8)
    {
      v92 = 0;
    }

    else
    {
      v92 = v262;
    }

    if (v87 >= a8)
    {
      v93 = v89;
    }

    else
    {
      v93 = v90;
    }

    v278 = (v92 + v91 - v262) * a11;
    v94 = v282;
    while (1)
    {
      v95 = v94 << v67;
      v96 = v94 + 1;
      if (v288 >= (v94 + 1) << v67)
      {
        v97 = (1 << v67) - v85;
      }

      else
      {
        v97 = a9;
      }

      v98 = v284;
      if (v288 >= v96 << v67)
      {
        v98 = 1 << v67;
      }

      if (v95 >= a7)
      {
        v99 = 0;
      }

      else
      {
        v99 = v85;
      }

      if (v95 < a7)
      {
        v98 = v97;
      }

      if (v80 | v84)
      {
        break;
      }

      v116 = 0;
      v101 = 0;
      v108 = 0;
      v123 = 0;
      if (v93)
      {
        goto LABEL_147;
      }

LABEL_101:
      v94 = v96;
      a7 = v269;
      if (v96 == v286)
      {
        v86 = v276;
        v15 = a10;
        if (v276 == v265)
        {
          return result;
        }

        goto LABEL_92;
      }
    }

    v100 = 0;
    v101 = 0;
    v102 = 1;
    v103 = v83;
    v104 = v79;
    v105 = v84;
    v106 = v80;
    do
    {
      --v105;
      if (v103)
      {
        v101 |= (v102 & ~(-1 << v84)) << v100++;
      }

      else
      {
        v105 = 0;
      }

      if (v104)
      {
        --v106;
      }

      else
      {
        v106 = 0;
      }

      v102 *= 2;
      v100 = (__PAIR64__(v100, v104) - 1) >> 32;
      v104 = v106 != 0;
      v103 = v105 != 0;
    }

    while (v106 | v105);
    v107 = 0;
    v108 = 0;
    v109 = 1;
    v110 = v83;
    v111 = v79;
    v112 = v84;
    v113 = v80;
    do
    {
      --v112;
      if (!v110)
      {
        v112 = 0;
      }

      v114 = v107 + v110;
      if (v111)
      {
        --v113;
      }

      else
      {
        v113 = 0;
      }

      if (v111)
      {
        v108 |= (v109 & ~(-1 << v80)) << v114++;
      }

      v109 *= 2;
      v107 = v114 - 1;
      v111 = v113 != 0;
      v110 = v112 != 0;
    }

    while (v113 | v112);
    v115 = 0;
    v116 = 0;
    v117 = 1;
    v118 = v83;
    v119 = v79;
    v120 = v84;
    v121 = v80;
    do
    {
      --v120;
      if (v118)
      {
        v116 |= (v117 & v99) << v115;
        v122 = v115 + 1;
      }

      else
      {
        v120 = 0;
        v122 = v115;
      }

      --v121;
      if (!v119)
      {
        v121 = 0;
      }

      v117 *= 2;
      v115 = (__PAIR64__(v122, v119) - 1) >> 32;
      v119 = v121 != 0;
      v118 = v120 != 0;
    }

    while (v121 | v120);
    LODWORD(result) = 0;
    v123 = 0;
    v124 = 1;
    v125 = v83;
    v126 = v79;
    v127 = v84;
    v128 = v80;
    do
    {
      --v127;
      v129 = v125;
      if (!v129)
      {
        v127 = 0;
      }

      v130 = result + v129;
      --v128;
      if (v126)
      {
        v123 |= (v124 & v92) << v130++;
      }

      else
      {
        v128 = 0;
      }

      v124 *= 2;
      result = (v130 - 1);
      v126 = v128 != 0;
      v125 = v127 != 0;
    }

    while (v128 | v127);
    if (!v93)
    {
      goto LABEL_101;
    }

LABEL_147:
    if (v98)
    {
      v131 = 0;
      v132 = (&v256[4 * (v99 + ((v94 - v282) << v67) - v85)] + v278);
      v133 = (v94 + v280) * a12[3] * *(a12 + 9) + v268;
      do
      {
        v134 = v98;
        v135 = v132;
        v136 = v116;
        do
        {
          v137 = (v133 + ((v136 + v123) << 6));
          v138 = *v137;
          v139 = v137[1];
          v140 = v137[3];
          v135[2] = v137[2];
          v135[3] = v140;
          *v135 = v138;
          v135[1] = v139;
          v135 += 4;
          v136 = (v136 - v101) & v101;
          --v134;
        }

        while (v134);
        result = v123 - v108;
        v123 = (v123 - v108) & v108;
        v132 = (v132 + a11);
        ++v131;
      }

      while (v131 != v93);
    }

    goto LABEL_101;
  }

  v16 = a2;
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v291);
  v19 = *(a12 + 13);
  v20 = *(a12 + 12);
  v255 = v16;
  if (1 << v19 >= a6 || a5 >> v20)
  {
    v141 = a6 >> v19;
    v142 = 1 << v20;
    v143 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v143 = 0;
    }

    v144 = v142 >= a5;
    if (v142 < a5)
    {
      v145 = v20 + v19 + v143;
    }

    else
    {
      v145 = *(a12 + 12);
    }

    if (v144)
    {
      LOBYTE(v146) = *(a12 + 13);
    }

    else
    {
      v146 = -v143;
    }

    if (!v141)
    {
      v20 = v145;
    }

    v249 = v20;
    if (v141)
    {
      v22 = *(a12 + 13);
    }

    else
    {
      v22 = v146;
    }
  }

  else
  {
    v21 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v21) = 0;
    }

    v249 = v21;
    v22 = v20 + v19 - v21;
  }

  v147 = v268;
  v148 = a10;
  v149 = a8;
  v247 = v297;
  if (v297)
  {
    v150 = 1 << v22;
    if (1 << v22 >= a6)
    {
      v151 = a6;
    }

    else
    {
      v151 = 1 << v22;
    }

    v152 = 32 - __clz(v151 - 1);
    v153 = v151 > 1;
    if (v151 <= 1)
    {
      v154 = 0;
    }

    else
    {
      v154 = v152;
    }

    v248 = 1 << v249;
    if (1 << v249 >= a5)
    {
      v155 = a5;
    }

    else
    {
      v155 = 1 << v249;
    }

    v156 = 32 - __clz(v155 - 1);
    v157 = v298;
    v158 = v155 > 1;
    if (v155 <= 1)
    {
      v156 = 0;
    }

    v281 = v295;
    v283 = v156;
    v277 = v295 != 0;
    v279 = v296;
    v275 = v296 != 0;
    if (v298)
    {
      v159 = 0;
      v160 = 0;
      v246 = a7 >> v249;
      v264 = a8 >> v22;
      v289 = v299;
      v290 = v294;
      v287 = v296 | v295;
      v245 = a9 + a7;
      v244 = (v248 - 1) & (a9 + a7);
      v243 = v292;
      v285 = v293;
      v242 = (v248 - 1) & a7;
      v259 = (v150 - 1) & a8;
      v261 = (v150 - 1) & (a10 + a8);
      v258 = v150 - v259;
      v161 = ~(-1 << v156);
      v257 = v154 | v156;
      v271 = v158;
      v251 = 1 << v22;
      v252 = v22;
      v266 = v298;
      do
      {
        v250 = v160;
        v162 = 0;
        v163 = 0;
        v164 = (v159 + v246) << v249;
        v165 = a9;
        if (v245 >= (v159 + v246 + 1) << v249)
        {
          v165 = v248 - v242;
        }

        v166 = 1 << v249;
        if (v245 < (v159 + v246 + 1) << v249)
        {
          v166 = v244;
        }

        v167 = v243 + v159;
        v168 = v159 << v249;
        if (v164 >= a7)
        {
          v169 = v166;
        }

        else
        {
          v169 = v165;
        }

        if (v164 >= a7)
        {
          v170 = 0;
        }

        else
        {
          v170 = v242;
        }

        v253 = &v255[4 * (v170 + v168)];
        v171 = v148;
        v273 = v169;
        do
        {
          v172 = v285 + v162;
          if (v289)
          {
            v173 = v287;
            if (v287)
            {
              v174 = 0;
              v173 = 0;
              v175 = 1;
              v176 = v275;
              v177 = v277;
              v178 = v281;
              v179 = v279;
              do
              {
                --v178;
                if (v177)
                {
                  v173 |= (v175 & v167) << v174;
                }

                else
                {
                  v178 = 0;
                }

                if (v177)
                {
                  ++v174;
                }

                --v179;
                if (v176)
                {
                  v173 |= (v175 & v172) << v174;
                }

                else
                {
                  v179 = 0;
                }

                if (v176)
                {
                  ++v174;
                }

                v175 *= 2;
                --v174;
                v176 = v179 != 0;
                v177 = v178 != 0;
              }

              while (v179 | v178);
            }
          }

          else
          {
            v173 = v287;
            if (v287)
            {
              v180 = 0;
              v173 = 0;
              v181 = 1;
              v183 = v275;
              v182 = v277;
              v184 = v279;
              v185 = v281;
              do
              {
                --v184;
                if (v183)
                {
                  v173 |= (v181 & v172) << v180;
                }

                else
                {
                  v184 = 0;
                }

                if (v183)
                {
                  ++v180;
                }

                --v185;
                if (v182)
                {
                  v173 |= (v181 & v167) << v180;
                }

                else
                {
                  v185 = 0;
                }

                if (v182)
                {
                  ++v180;
                }

                v181 *= 2;
                --v180;
                v182 = v185 != 0;
                v183 = v184 != 0;
              }

              while (v185 | v184);
            }
          }

          v186 = *(v147 + 4 * ((v173 + v290) | ((v173 + v290) >> 8 << 9)));
          if (v186 < 0)
          {
            v187 = v147 - *(a13 + 3) + ((v186 & 0x1FFFFFFF) << 14);
            result = *a13;
            v188 = a13[2];
            if (result > v188)
            {
              v189 = v162;
              result = get_level_offset_within_tail(result, v188, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v158 = v271;
              v169 = v273;
              v162 = v189;
              v150 = v251;
              v22 = v252;
              v14 = a11;
              v149 = a8;
              v171 = a10;
              v147 = v268;
              v187 += result;
            }

            v190 = (v162 + v264) << v22;
            v191 = v258;
            if (a10 + a8 >= (v162 + v264 + 1) << v22)
            {
              v192 = v150;
            }

            else
            {
              v191 = v171;
              v192 = v261;
            }

            if (v190 >= v149)
            {
              v193 = 0;
            }

            else
            {
              v193 = v259;
            }

            if (v190 >= v149)
            {
              v191 = v192;
            }

            if (!v257)
            {
              v212 = 0;
              v196 = 0;
              v203 = 0;
              v219 = 0;
              v157 = v266;
              if (!v191)
              {
                goto LABEL_192;
              }

LABEL_264:
              if (v169)
              {
                v226 = 0;
                v227 = (v253 + (v193 + (v162 << v22)) * v14);
                do
                {
                  v228 = v169;
                  v229 = v227;
                  v230 = v212;
                  do
                  {
                    result = v187 + ((v230 + v219) << 6);
                    v231 = *result;
                    v232 = *(result + 16);
                    v233 = *(result + 48);
                    v229[2] = *(result + 32);
                    v229[3] = v233;
                    *v229 = v231;
                    v229[1] = v232;
                    v229 += 4;
                    v230 = (v230 - v196) & v196;
                    --v228;
                  }

                  while (v228);
                  v219 = (v219 - v203) & v203;
                  v227 = (v227 + v14);
                  ++v226;
                }

                while (v226 != v191);
              }

              goto LABEL_192;
            }

            v194 = v162;
            v195 = 0;
            v196 = 0;
            v197 = 1;
            v198 = v158;
            v199 = v153;
            v200 = v283;
            v201 = v154;
            do
            {
              --v200;
              if (v198)
              {
                v196 |= (v197 & v161) << v195++;
              }

              else
              {
                v200 = 0;
              }

              --v201;
              if (!v199)
              {
                v201 = 0;
              }

              v197 *= 2;
              v195 = (__PAIR64__(v195, v199) - 1) >> 32;
              v199 = v201 != 0;
              v198 = v200 != 0;
            }

            while (v201 | v200);
            v202 = 0;
            v203 = 0;
            v204 = 1;
            v205 = v158;
            v206 = v153;
            v207 = v283;
            v208 = v154;
            do
            {
              --v207;
              v209 = v205;
              if (!v209)
              {
                v207 = 0;
              }

              v210 = v202 + v209;
              --v208;
              if (v206)
              {
                v203 |= (v204 & ~(-1 << v154)) << v210++;
              }

              else
              {
                v208 = 0;
              }

              v204 *= 2;
              v202 = v210 - 1;
              v206 = v208 != 0;
              v205 = v207 != 0;
            }

            while (v208 | v207);
            v211 = 0;
            v212 = 0;
            v213 = 1;
            v214 = v158;
            v215 = v153;
            v216 = v283;
            v217 = v154;
            do
            {
              --v216;
              if (v214)
              {
                v212 |= (v213 & v170) << v211++;
              }

              else
              {
                v216 = 0;
              }

              --v217;
              if (!v215)
              {
                v217 = 0;
              }

              v213 *= 2;
              v211 = (__PAIR64__(v211, v215) - 1) >> 32;
              v215 = v217 != 0;
              v214 = v216 != 0;
            }

            while (v217 | v216);
            v218 = 0;
            v219 = 0;
            v220 = 1;
            v221 = v158;
            LOBYTE(result) = v153;
            v222 = v283;
            v223 = v154;
            do
            {
              --v222;
              v224 = v221;
              if (!v224)
              {
                v222 = 0;
              }

              v225 = v218 + v224;
              --v223;
              if (result)
              {
                v219 |= (v220 & v193) << v225++;
              }

              else
              {
                v223 = 0;
              }

              v220 *= 2;
              v218 = v225 - 1;
              result = v223 != 0;
              v221 = v222 != 0;
            }

            while (v223 | v222);
            v157 = v266;
            v162 = v194;
            v158 = v271;
            v169 = v273;
            if (v191)
            {
              goto LABEL_264;
            }
          }

LABEL_192:
          v162 = ++v163;
        }

        while (v157 > v163);
        v148 = v171;
        v160 = v250 + 1;
        v159 = (v250 + 1);
        a7 = v269;
      }

      while (v247 > v159);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,8ul,4u,(TwiddleOrder)1>>(uint64_t result, _OWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, unsigned int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v14 = a11;
  v15 = a10;
  if (!a12)
  {
    v23 = 32 - __clz(a6 - 1);
    v24 = a6 > 1;
    if (a6 <= 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = v23;
    }

    v26 = 32 - __clz(a5 - 1);
    v27 = a5 > 1;
    if (a5 <= 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = v26;
    }

    if (v25 | v28)
    {
      v29 = a2;
      v30 = 0;
      v31 = 0;
      v32 = a5 > 1;
      v33 = v24;
      v34 = 1;
      v35 = v28;
      v36 = v25;
      do
      {
        --v35;
        if (v32)
        {
          v31 |= (v34 & ~(-1 << v28)) << v30++;
        }

        else
        {
          v35 = 0;
        }

        --v36;
        if (!v33)
        {
          v36 = 0;
        }

        v34 *= 2;
        v30 = (__PAIR64__(v30, v33) - 1) >> 32;
        v33 = v36 != 0;
        v32 = v35 != 0;
      }

      while (v36 | v35);
      v37 = 0;
      v38 = 0;
      v39 = 1;
      v40 = v27;
      v41 = v24;
      v42 = v28;
      v43 = v25;
      do
      {
        --v42;
        v44 = v40;
        if (!v44)
        {
          v42 = 0;
        }

        v45 = v37 + v44;
        if (v41)
        {
          --v43;
        }

        else
        {
          v43 = 0;
        }

        if (v41)
        {
          v38 |= (v39 & ~(-1 << v25)) << v45++;
        }

        v39 *= 2;
        v37 = v45 - 1;
        v41 = v43 != 0;
        v40 = v42 != 0;
      }

      while (v43 | v42);
      v46 = 0;
      v47 = 0;
      v48 = v27;
      v49 = v24;
      v50 = 1;
      v51 = v28;
      v52 = v25;
      do
      {
        --v51;
        if (v48)
        {
          v47 |= (v50 & a7) << v46++;
        }

        else
        {
          v51 = 0;
        }

        --v52;
        if (!v49)
        {
          v52 = 0;
        }

        v50 *= 2;
        v46 = (__PAIR64__(v46, v49) - 1) >> 32;
        v49 = v52 != 0;
        v48 = v51 != 0;
      }

      while (v52 | v51);
      v53 = 0;
      v54 = 0;
      v55 = 1;
      do
      {
        --v28;
        v56 = v27;
        if (!v56)
        {
          v28 = 0;
        }

        v57 = v53 + v56;
        --v25;
        if (v24)
        {
          v54 |= (v55 & a8) << v57;
          v58 = v57 + 1;
        }

        else
        {
          v25 = 0;
          v58 = v57;
        }

        v55 *= 2;
        v53 = v58 - 1;
        v24 = v25 != 0;
        v27 = v28 != 0;
      }

      while (v25 | v28);
      a2 = v29;
      v15 = a10;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v47 = 0;
      v31 = 0;
      v38 = 0;
      v54 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      v230 = 0;
      do
      {
        v231 = a9;
        v232 = a2;
        v233 = v47;
        do
        {
          v234 = (result + 32 * (v233 + v54));
          v235 = v234[1];
          *v232 = *v234;
          v232[1] = v235;
          v232 += 2;
          v233 = (v233 - v31) & v31;
          --v231;
        }

        while (v231);
        v54 = (v54 - v38) & v38;
        a2 = (a2 + a11);
        ++v230;
      }

      while (v230 != v15);
    }

    return result;
  }

  v262 = result;
  v263 = a7;
  if (!*(a12 + 20))
  {
    v59 = *(a12 + 13);
    v60 = *(a12 + 12);
    v61 = 1 << v59;
    v62 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v62 = 0;
    }

    v63 = v60 + v59;
    result = v60 + v59 + v62;
    if (a6 >> v59)
    {
      v64 = 1;
    }

    else
    {
      v64 = 1 << v60 >= a5;
    }

    if (v64)
    {
      v65 = *(a12 + 12);
    }

    else
    {
      v65 = v60 + v59 + v62;
    }

    if (v64)
    {
      LOBYTE(v66) = *(a12 + 13);
    }

    else
    {
      v66 = -v62;
    }

    v67 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v67) = 0;
    }

    if (v61 < a6 && a5 >> v60 == 0)
    {
      LOBYTE(v66) = v63 - v67;
    }

    else
    {
      LOBYTE(v67) = v65;
    }

    v69 = 1 << v66;
    v70 = *(a12 + 15);
    v71 = 1 << v70;
    if (v70)
    {
      v72 = v71 > a3;
    }

    else
    {
      v72 = 1;
    }

    v73 = v72 || v71 > a4;
    v74 = (~(-1 << v70) + a3) & (-1 << v70);
    if (v73)
    {
      v75 = a3;
    }

    else
    {
      v75 = v74;
    }

    v268 = 1 << v66;
    v76 = v69 - 1;
    v264 = a10 + a8;
    v266 = a8 >> v66;
    v259 = (v69 - 1 + a10 + a8) >> v66;
    v261 = v66;
    if (a8 >> v66 >= v259)
    {
      return result;
    }

    result = a7 >> v67;
    v77 = (1 << v67) - 1;
    v282 = a9 + a7;
    if (v69 >= a6)
    {
      v69 = a6;
    }

    v78 = 32 - __clz(v69 - 1);
    v79 = v69 > 1;
    v80 = v69 <= 1 ? 0 : v78;
    v81 = 1 << v67 >= a5 ? a5 : 1 << v67;
    v82 = 32 - __clz(v81 - 1);
    v83 = v81 > 1;
    v84 = v81 <= 1 ? 0 : v82;
    v276 = a7 >> v67;
    v280 = (v77 + a9 + a7) >> v67;
    if (result >= v280)
    {
      return result;
    }

    v257 = (v75 + ~(-1 << v67)) >> v67;
    v85 = v77 & a7;
    v278 = v77 & v282;
    v254 = v76 & v264;
    v256 = v76 & a8;
    v86 = v266;
    v250 = a2;
LABEL_92:
    v87 = v86 << v261;
    v88 = v86 - v266;
    v274 = v86 * v257;
    v270 = v86 + 1;
    v64 = v264 >= (v86 + 1) << v261;
    v89 = v268;
    v90 = v268 - v256;
    if (!v64)
    {
      v89 = v254;
      v90 = v15;
    }

    v91 = v88 << v261;
    if (v87 >= a8)
    {
      v92 = 0;
    }

    else
    {
      v92 = v256;
    }

    if (v87 >= a8)
    {
      v93 = v89;
    }

    else
    {
      v93 = v90;
    }

    v272 = (v92 + v91 - v256) * a11;
    v94 = v276;
    while (1)
    {
      v95 = v94 << v67;
      v96 = v94 + 1;
      if (v282 >= (v94 + 1) << v67)
      {
        v97 = (1 << v67) - v85;
      }

      else
      {
        v97 = a9;
      }

      v98 = v278;
      if (v282 >= v96 << v67)
      {
        v98 = 1 << v67;
      }

      if (v95 >= a7)
      {
        v99 = 0;
      }

      else
      {
        v99 = v85;
      }

      if (v95 < a7)
      {
        v98 = v97;
      }

      if (v80 | v84)
      {
        break;
      }

      v116 = 0;
      v101 = 0;
      v108 = 0;
      v123 = 0;
      if (v93)
      {
        goto LABEL_147;
      }

LABEL_101:
      v94 = v96;
      a7 = v263;
      if (v96 == v280)
      {
        v86 = v270;
        v15 = a10;
        if (v270 == v259)
        {
          return result;
        }

        goto LABEL_92;
      }
    }

    v100 = 0;
    v101 = 0;
    v102 = 1;
    v103 = v83;
    v104 = v79;
    v105 = v84;
    v106 = v80;
    do
    {
      --v105;
      if (v103)
      {
        v101 |= (v102 & ~(-1 << v84)) << v100++;
      }

      else
      {
        v105 = 0;
      }

      if (v104)
      {
        --v106;
      }

      else
      {
        v106 = 0;
      }

      v102 *= 2;
      v100 = (__PAIR64__(v100, v104) - 1) >> 32;
      v104 = v106 != 0;
      v103 = v105 != 0;
    }

    while (v106 | v105);
    v107 = 0;
    v108 = 0;
    v109 = 1;
    v110 = v83;
    v111 = v79;
    v112 = v84;
    v113 = v80;
    do
    {
      --v112;
      if (!v110)
      {
        v112 = 0;
      }

      v114 = v107 + v110;
      if (v111)
      {
        --v113;
      }

      else
      {
        v113 = 0;
      }

      if (v111)
      {
        v108 |= (v109 & ~(-1 << v80)) << v114++;
      }

      v109 *= 2;
      v107 = v114 - 1;
      v111 = v113 != 0;
      v110 = v112 != 0;
    }

    while (v113 | v112);
    v115 = 0;
    v116 = 0;
    v117 = 1;
    v118 = v83;
    v119 = v79;
    v120 = v84;
    v121 = v80;
    do
    {
      --v120;
      if (v118)
      {
        v116 |= (v117 & v99) << v115;
        v122 = v115 + 1;
      }

      else
      {
        v120 = 0;
        v122 = v115;
      }

      --v121;
      if (!v119)
      {
        v121 = 0;
      }

      v117 *= 2;
      v115 = (__PAIR64__(v122, v119) - 1) >> 32;
      v119 = v121 != 0;
      v118 = v120 != 0;
    }

    while (v121 | v120);
    LODWORD(result) = 0;
    v123 = 0;
    v124 = 1;
    v125 = v83;
    v126 = v79;
    v127 = v84;
    v128 = v80;
    do
    {
      --v127;
      v129 = v125;
      if (!v129)
      {
        v127 = 0;
      }

      v130 = result + v129;
      --v128;
      if (v126)
      {
        v123 |= (v124 & v92) << v130++;
      }

      else
      {
        v128 = 0;
      }

      v124 *= 2;
      result = (v130 - 1);
      v126 = v128 != 0;
      v125 = v127 != 0;
    }

    while (v128 | v127);
    if (!v93)
    {
      goto LABEL_101;
    }

LABEL_147:
    if (v98)
    {
      v131 = 0;
      v132 = (&v250[2 * (v99 + ((v94 - v276) << v67) - v85)] + v272);
      v133 = (v94 + v274) * a12[3] * *(a12 + 9) + v262;
      do
      {
        v134 = v98;
        v135 = v132;
        v136 = v116;
        do
        {
          v137 = (v133 + 32 * (v136 + v123));
          v138 = v137[1];
          *v135 = *v137;
          v135[1] = v138;
          v135 += 2;
          v136 = (v136 - v101) & v101;
          --v134;
        }

        while (v134);
        result = v123 - v108;
        v123 = (v123 - v108) & v108;
        v132 = (v132 + a11);
        ++v131;
      }

      while (v131 != v93);
    }

    goto LABEL_101;
  }

  v16 = a2;
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v285);
  v19 = *(a12 + 13);
  v20 = *(a12 + 12);
  v249 = v16;
  if (1 << v19 >= a6 || a5 >> v20)
  {
    v139 = a6 >> v19;
    v140 = 1 << v20;
    v141 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v141 = 0;
    }

    v142 = v140 >= a5;
    if (v140 < a5)
    {
      v143 = v20 + v19 + v141;
    }

    else
    {
      v143 = *(a12 + 12);
    }

    if (v142)
    {
      LOBYTE(v144) = *(a12 + 13);
    }

    else
    {
      v144 = -v141;
    }

    if (!v139)
    {
      v20 = v143;
    }

    v243 = v20;
    if (v139)
    {
      v22 = *(a12 + 13);
    }

    else
    {
      v22 = v144;
    }
  }

  else
  {
    v21 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v21) = 0;
    }

    v243 = v21;
    v22 = v20 + v19 - v21;
  }

  v145 = v262;
  v146 = a10;
  v147 = a8;
  v241 = v291;
  if (v291)
  {
    v148 = 1 << v22;
    if (1 << v22 >= a6)
    {
      v149 = a6;
    }

    else
    {
      v149 = 1 << v22;
    }

    v150 = 32 - __clz(v149 - 1);
    v151 = v149 > 1;
    if (v149 <= 1)
    {
      v152 = 0;
    }

    else
    {
      v152 = v150;
    }

    v242 = 1 << v243;
    if (1 << v243 >= a5)
    {
      v153 = a5;
    }

    else
    {
      v153 = 1 << v243;
    }

    v154 = 32 - __clz(v153 - 1);
    v155 = v292;
    v156 = v153 > 1;
    if (v153 <= 1)
    {
      v154 = 0;
    }

    v275 = v289;
    v277 = v154;
    v271 = v289 != 0;
    v273 = v290;
    v269 = v290 != 0;
    if (v292)
    {
      v157 = 0;
      v158 = 0;
      v240 = a7 >> v243;
      v258 = a8 >> v22;
      v283 = v293;
      v284 = v288;
      v281 = v290 | v289;
      v239 = a9 + a7;
      v238 = (v242 - 1) & (a9 + a7);
      v237 = v286;
      v279 = v287;
      v236 = (v242 - 1) & a7;
      v253 = (v148 - 1) & a8;
      v255 = (v148 - 1) & (a10 + a8);
      v252 = v148 - v253;
      v159 = ~(-1 << v154);
      v251 = v152 | v154;
      v265 = v156;
      v245 = 1 << v22;
      v246 = v22;
      v260 = v292;
      do
      {
        v244 = v158;
        v160 = 0;
        v161 = 0;
        v162 = (v157 + v240) << v243;
        v163 = a9;
        if (v239 >= (v157 + v240 + 1) << v243)
        {
          v163 = v242 - v236;
        }

        v164 = 1 << v243;
        if (v239 < (v157 + v240 + 1) << v243)
        {
          v164 = v238;
        }

        v165 = v237 + v157;
        v166 = v157 << v243;
        if (v162 >= a7)
        {
          v167 = v164;
        }

        else
        {
          v167 = v163;
        }

        if (v162 >= a7)
        {
          v168 = 0;
        }

        else
        {
          v168 = v236;
        }

        v247 = &v249[2 * (v168 + v166)];
        v169 = v146;
        v267 = v167;
        do
        {
          v170 = v279 + v160;
          if (v283)
          {
            v171 = v281;
            if (v281)
            {
              v172 = 0;
              v171 = 0;
              v173 = 1;
              v174 = v269;
              v175 = v271;
              v176 = v275;
              v177 = v273;
              do
              {
                --v176;
                if (v175)
                {
                  v171 |= (v173 & v165) << v172;
                }

                else
                {
                  v176 = 0;
                }

                if (v175)
                {
                  ++v172;
                }

                --v177;
                if (v174)
                {
                  v171 |= (v173 & v170) << v172;
                }

                else
                {
                  v177 = 0;
                }

                if (v174)
                {
                  ++v172;
                }

                v173 *= 2;
                --v172;
                v174 = v177 != 0;
                v175 = v176 != 0;
              }

              while (v177 | v176);
            }
          }

          else
          {
            v171 = v281;
            if (v281)
            {
              v178 = 0;
              v171 = 0;
              v179 = 1;
              v181 = v269;
              v180 = v271;
              v182 = v273;
              v183 = v275;
              do
              {
                --v182;
                if (v181)
                {
                  v171 |= (v179 & v170) << v178;
                }

                else
                {
                  v182 = 0;
                }

                if (v181)
                {
                  ++v178;
                }

                --v183;
                if (v180)
                {
                  v171 |= (v179 & v165) << v178;
                }

                else
                {
                  v183 = 0;
                }

                if (v180)
                {
                  ++v178;
                }

                v179 *= 2;
                --v178;
                v180 = v183 != 0;
                v181 = v182 != 0;
              }

              while (v183 | v182);
            }
          }

          v184 = *(v145 + 4 * ((v171 + v284) | ((v171 + v284) >> 8 << 9)));
          if (v184 < 0)
          {
            v185 = v145 - *(a13 + 3) + ((v184 & 0x1FFFFFFF) << 14);
            result = *a13;
            v186 = a13[2];
            if (result > v186)
            {
              v187 = v160;
              result = get_level_offset_within_tail(result, v186, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v156 = v265;
              v167 = v267;
              v160 = v187;
              v148 = v245;
              v22 = v246;
              v14 = a11;
              v147 = a8;
              v169 = a10;
              v145 = v262;
              v185 += result;
            }

            v188 = (v160 + v258) << v22;
            v189 = v252;
            if (a10 + a8 >= (v160 + v258 + 1) << v22)
            {
              v190 = v148;
            }

            else
            {
              v189 = v169;
              v190 = v255;
            }

            if (v188 >= v147)
            {
              v191 = 0;
            }

            else
            {
              v191 = v253;
            }

            if (v188 >= v147)
            {
              v189 = v190;
            }

            if (!v251)
            {
              v210 = 0;
              v194 = 0;
              v201 = 0;
              v217 = 0;
              v155 = v260;
              if (!v189)
              {
                goto LABEL_192;
              }

LABEL_264:
              if (v167)
              {
                v224 = 0;
                v225 = (v247 + (v191 + (v160 << v22)) * v14);
                do
                {
                  v226 = v167;
                  v227 = v225;
                  v228 = v210;
                  do
                  {
                    result = v185 + 32 * (v228 + v217);
                    v229 = *(result + 16);
                    *v227 = *result;
                    v227[1] = v229;
                    v227 += 2;
                    v228 = (v228 - v194) & v194;
                    --v226;
                  }

                  while (v226);
                  v217 = (v217 - v201) & v201;
                  v225 = (v225 + v14);
                  ++v224;
                }

                while (v224 != v189);
              }

              goto LABEL_192;
            }

            v192 = v160;
            v193 = 0;
            v194 = 0;
            v195 = 1;
            v196 = v156;
            v197 = v151;
            v198 = v277;
            v199 = v152;
            do
            {
              --v198;
              if (v196)
              {
                v194 |= (v195 & v159) << v193++;
              }

              else
              {
                v198 = 0;
              }

              --v199;
              if (!v197)
              {
                v199 = 0;
              }

              v195 *= 2;
              v193 = (__PAIR64__(v193, v197) - 1) >> 32;
              v197 = v199 != 0;
              v196 = v198 != 0;
            }

            while (v199 | v198);
            v200 = 0;
            v201 = 0;
            v202 = 1;
            v203 = v156;
            v204 = v151;
            v205 = v277;
            v206 = v152;
            do
            {
              --v205;
              v207 = v203;
              if (!v207)
              {
                v205 = 0;
              }

              v208 = v200 + v207;
              --v206;
              if (v204)
              {
                v201 |= (v202 & ~(-1 << v152)) << v208++;
              }

              else
              {
                v206 = 0;
              }

              v202 *= 2;
              v200 = v208 - 1;
              v204 = v206 != 0;
              v203 = v205 != 0;
            }

            while (v206 | v205);
            v209 = 0;
            v210 = 0;
            v211 = 1;
            v212 = v156;
            v213 = v151;
            v214 = v277;
            v215 = v152;
            do
            {
              --v214;
              if (v212)
              {
                v210 |= (v211 & v168) << v209++;
              }

              else
              {
                v214 = 0;
              }

              --v215;
              if (!v213)
              {
                v215 = 0;
              }

              v211 *= 2;
              v209 = (__PAIR64__(v209, v213) - 1) >> 32;
              v213 = v215 != 0;
              v212 = v214 != 0;
            }

            while (v215 | v214);
            v216 = 0;
            v217 = 0;
            v218 = 1;
            v219 = v156;
            LOBYTE(result) = v151;
            v220 = v277;
            v221 = v152;
            do
            {
              --v220;
              v222 = v219;
              if (!v222)
              {
                v220 = 0;
              }

              v223 = v216 + v222;
              --v221;
              if (result)
              {
                v217 |= (v218 & v191) << v223++;
              }

              else
              {
                v221 = 0;
              }

              v218 *= 2;
              v216 = v223 - 1;
              result = v221 != 0;
              v219 = v220 != 0;
            }

            while (v221 | v220);
            v155 = v260;
            v160 = v192;
            v156 = v265;
            v167 = v267;
            if (v189)
            {
              goto LABEL_264;
            }
          }

LABEL_192:
          v160 = ++v161;
        }

        while (v155 > v161);
        v146 = v169;
        v158 = v244 + 1;
        v157 = (v244 + 1);
        a7 = v263;
      }

      while (v241 > v157);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,8ul,2u,(TwiddleOrder)1>>(uint64_t result, _OWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, unsigned int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v14 = a11;
  v15 = a10;
  if (!a12)
  {
    v23 = 32 - __clz(a6 - 1);
    v24 = a6 > 1;
    if (a6 <= 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = v23;
    }

    v26 = 32 - __clz(a5 - 1);
    v27 = a5 > 1;
    if (a5 <= 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = v26;
    }

    if (v25 | v28)
    {
      v29 = a2;
      v30 = 0;
      v31 = 0;
      v32 = a5 > 1;
      v33 = v24;
      v34 = 1;
      v35 = v28;
      v36 = v25;
      do
      {
        --v35;
        if (v32)
        {
          v31 |= (v34 & ~(-1 << v28)) << v30++;
        }

        else
        {
          v35 = 0;
        }

        --v36;
        if (!v33)
        {
          v36 = 0;
        }

        v34 *= 2;
        v30 = (__PAIR64__(v30, v33) - 1) >> 32;
        v33 = v36 != 0;
        v32 = v35 != 0;
      }

      while (v36 | v35);
      v37 = 0;
      v38 = 0;
      v39 = 1;
      v40 = v27;
      v41 = v24;
      v42 = v28;
      v43 = v25;
      do
      {
        --v42;
        v44 = v40;
        if (!v44)
        {
          v42 = 0;
        }

        v45 = v37 + v44;
        if (v41)
        {
          --v43;
        }

        else
        {
          v43 = 0;
        }

        if (v41)
        {
          v38 |= (v39 & ~(-1 << v25)) << v45++;
        }

        v39 *= 2;
        v37 = v45 - 1;
        v41 = v43 != 0;
        v40 = v42 != 0;
      }

      while (v43 | v42);
      v46 = 0;
      v47 = 0;
      v48 = v27;
      v49 = v24;
      v50 = 1;
      v51 = v28;
      v52 = v25;
      do
      {
        --v51;
        if (v48)
        {
          v47 |= (v50 & a7) << v46++;
        }

        else
        {
          v51 = 0;
        }

        --v52;
        if (!v49)
        {
          v52 = 0;
        }

        v50 *= 2;
        v46 = (__PAIR64__(v46, v49) - 1) >> 32;
        v49 = v52 != 0;
        v48 = v51 != 0;
      }

      while (v52 | v51);
      v53 = 0;
      v54 = 0;
      v55 = 1;
      do
      {
        --v28;
        v56 = v27;
        if (!v56)
        {
          v28 = 0;
        }

        v57 = v53 + v56;
        --v25;
        if (v24)
        {
          v54 |= (v55 & a8) << v57;
          v58 = v57 + 1;
        }

        else
        {
          v25 = 0;
          v58 = v57;
        }

        v55 *= 2;
        v53 = v58 - 1;
        v24 = v25 != 0;
        v27 = v28 != 0;
      }

      while (v25 | v28);
      a2 = v29;
      v15 = a10;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v47 = 0;
      v31 = 0;
      v38 = 0;
      v54 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      v227 = 0;
      do
      {
        v228 = a9;
        v229 = a2;
        v230 = v47;
        do
        {
          *v229++ = *(result + 16 * (v230 + v54));
          v230 = (v230 - v31) & v31;
          --v228;
        }

        while (v228);
        v54 = (v54 - v38) & v38;
        a2 = (a2 + a11);
        ++v227;
      }

      while (v227 != v15);
    }

    return result;
  }

  v257 = result;
  v258 = a7;
  if (!*(a12 + 20))
  {
    v59 = *(a12 + 13);
    v60 = *(a12 + 12);
    v61 = 1 << v59;
    v62 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v62 = 0;
    }

    v63 = v60 + v59;
    result = v60 + v59 + v62;
    if (a6 >> v59)
    {
      v64 = 1;
    }

    else
    {
      v64 = 1 << v60 >= a5;
    }

    if (v64)
    {
      v65 = *(a12 + 12);
    }

    else
    {
      v65 = v60 + v59 + v62;
    }

    if (v64)
    {
      LOBYTE(v66) = *(a12 + 13);
    }

    else
    {
      v66 = -v62;
    }

    v67 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v67) = 0;
    }

    if (v61 < a6 && a5 >> v60 == 0)
    {
      LOBYTE(v66) = v63 - v67;
    }

    else
    {
      LOBYTE(v67) = v65;
    }

    v69 = 1 << v66;
    v70 = *(a12 + 15);
    v71 = 1 << v70;
    if (v70)
    {
      v72 = v71 > a3;
    }

    else
    {
      v72 = 1;
    }

    v73 = v72 || v71 > a4;
    v74 = (~(-1 << v70) + a3) & (-1 << v70);
    if (v73)
    {
      v75 = a3;
    }

    else
    {
      v75 = v74;
    }

    v263 = 1 << v66;
    v76 = v69 - 1;
    v259 = a10 + a8;
    v261 = a8 >> v66;
    v254 = (v69 - 1 + a10 + a8) >> v66;
    v256 = v66;
    if (a8 >> v66 >= v254)
    {
      return result;
    }

    result = a7 >> v67;
    v77 = (1 << v67) - 1;
    v277 = a9 + a7;
    if (v69 >= a6)
    {
      v69 = a6;
    }

    v78 = 32 - __clz(v69 - 1);
    v79 = v69 > 1;
    v80 = v69 <= 1 ? 0 : v78;
    v81 = 1 << v67 >= a5 ? a5 : 1 << v67;
    v82 = 32 - __clz(v81 - 1);
    v83 = v81 > 1;
    v84 = v81 <= 1 ? 0 : v82;
    v271 = a7 >> v67;
    v275 = (v77 + a9 + a7) >> v67;
    if (result >= v275)
    {
      return result;
    }

    v252 = (v75 + ~(-1 << v67)) >> v67;
    v85 = v77 & a7;
    v273 = v77 & v277;
    v249 = v76 & v259;
    v251 = v76 & a8;
    v86 = v261;
    v245 = a2;
LABEL_92:
    v87 = v86 << v256;
    v88 = v86 - v261;
    v269 = v86 * v252;
    v265 = v86 + 1;
    v64 = v259 >= (v86 + 1) << v256;
    v89 = v263;
    v90 = v263 - v251;
    if (!v64)
    {
      v89 = v249;
      v90 = v15;
    }

    v91 = v88 << v256;
    if (v87 >= a8)
    {
      v92 = 0;
    }

    else
    {
      v92 = v251;
    }

    if (v87 >= a8)
    {
      v93 = v89;
    }

    else
    {
      v93 = v90;
    }

    v267 = (v92 + v91 - v251) * a11;
    v94 = v271;
    while (1)
    {
      v95 = v94 << v67;
      v96 = v94 + 1;
      if (v277 >= (v94 + 1) << v67)
      {
        v97 = (1 << v67) - v85;
      }

      else
      {
        v97 = a9;
      }

      v98 = v273;
      if (v277 >= v96 << v67)
      {
        v98 = 1 << v67;
      }

      if (v95 >= a7)
      {
        v99 = 0;
      }

      else
      {
        v99 = v85;
      }

      if (v95 < a7)
      {
        v98 = v97;
      }

      if (v80 | v84)
      {
        break;
      }

      v116 = 0;
      v101 = 0;
      v108 = 0;
      v123 = 0;
      if (v93)
      {
        goto LABEL_147;
      }

LABEL_101:
      v94 = v96;
      a7 = v258;
      if (v96 == v275)
      {
        v86 = v265;
        v15 = a10;
        if (v265 == v254)
        {
          return result;
        }

        goto LABEL_92;
      }
    }

    v100 = 0;
    v101 = 0;
    v102 = 1;
    v103 = v83;
    v104 = v79;
    v105 = v84;
    v106 = v80;
    do
    {
      --v105;
      if (v103)
      {
        v101 |= (v102 & ~(-1 << v84)) << v100++;
      }

      else
      {
        v105 = 0;
      }

      if (v104)
      {
        --v106;
      }

      else
      {
        v106 = 0;
      }

      v102 *= 2;
      v100 = (__PAIR64__(v100, v104) - 1) >> 32;
      v104 = v106 != 0;
      v103 = v105 != 0;
    }

    while (v106 | v105);
    v107 = 0;
    v108 = 0;
    v109 = 1;
    v110 = v83;
    v111 = v79;
    v112 = v84;
    v113 = v80;
    do
    {
      --v112;
      if (!v110)
      {
        v112 = 0;
      }

      v114 = v107 + v110;
      if (v111)
      {
        --v113;
      }

      else
      {
        v113 = 0;
      }

      if (v111)
      {
        v108 |= (v109 & ~(-1 << v80)) << v114++;
      }

      v109 *= 2;
      v107 = v114 - 1;
      v111 = v113 != 0;
      v110 = v112 != 0;
    }

    while (v113 | v112);
    v115 = 0;
    v116 = 0;
    v117 = 1;
    v118 = v83;
    v119 = v79;
    v120 = v84;
    v121 = v80;
    do
    {
      --v120;
      if (v118)
      {
        v116 |= (v117 & v99) << v115;
        v122 = v115 + 1;
      }

      else
      {
        v120 = 0;
        v122 = v115;
      }

      --v121;
      if (!v119)
      {
        v121 = 0;
      }

      v117 *= 2;
      v115 = (__PAIR64__(v122, v119) - 1) >> 32;
      v119 = v121 != 0;
      v118 = v120 != 0;
    }

    while (v121 | v120);
    LODWORD(result) = 0;
    v123 = 0;
    v124 = 1;
    v125 = v83;
    v126 = v79;
    v127 = v84;
    v128 = v80;
    do
    {
      --v127;
      v129 = v125;
      if (!v129)
      {
        v127 = 0;
      }

      v130 = result + v129;
      --v128;
      if (v126)
      {
        v123 |= (v124 & v92) << v130++;
      }

      else
      {
        v128 = 0;
      }

      v124 *= 2;
      result = (v130 - 1);
      v126 = v128 != 0;
      v125 = v127 != 0;
    }

    while (v128 | v127);
    if (!v93)
    {
      goto LABEL_101;
    }

LABEL_147:
    if (v98)
    {
      v131 = 0;
      v132 = (&v245[v99 + ((v94 - v271) << v67) - v85] + v267);
      v133 = (v94 + v269) * a12[3] * *(a12 + 9) + v257;
      do
      {
        v134 = v98;
        v135 = v132;
        v136 = v116;
        do
        {
          *v135++ = *(v133 + 16 * (v136 + v123));
          v136 = (v136 - v101) & v101;
          --v134;
        }

        while (v134);
        result = v123 - v108;
        v123 = (v123 - v108) & v108;
        v132 = (v132 + a11);
        ++v131;
      }

      while (v131 != v93);
    }

    goto LABEL_101;
  }

  v16 = a2;
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v280);
  v19 = *(a12 + 13);
  v20 = *(a12 + 12);
  v244 = v16;
  if (1 << v19 >= a6 || a5 >> v20)
  {
    v137 = a6 >> v19;
    v138 = 1 << v20;
    v139 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v139 = 0;
    }

    v140 = v138 >= a5;
    if (v138 < a5)
    {
      v141 = v20 + v19 + v139;
    }

    else
    {
      v141 = *(a12 + 12);
    }

    if (v140)
    {
      LOBYTE(v142) = *(a12 + 13);
    }

    else
    {
      v142 = -v139;
    }

    if (!v137)
    {
      v20 = v141;
    }

    v238 = v20;
    if (v137)
    {
      v22 = *(a12 + 13);
    }

    else
    {
      v22 = v142;
    }
  }

  else
  {
    v21 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v21) = 0;
    }

    v238 = v21;
    v22 = v20 + v19 - v21;
  }

  v143 = v257;
  v144 = a10;
  v145 = a8;
  v236 = v286;
  if (v286)
  {
    v146 = 1 << v22;
    if (1 << v22 >= a6)
    {
      v147 = a6;
    }

    else
    {
      v147 = 1 << v22;
    }

    v148 = 32 - __clz(v147 - 1);
    v149 = v147 > 1;
    if (v147 <= 1)
    {
      v150 = 0;
    }

    else
    {
      v150 = v148;
    }

    v237 = 1 << v238;
    if (1 << v238 >= a5)
    {
      v151 = a5;
    }

    else
    {
      v151 = 1 << v238;
    }

    v152 = 32 - __clz(v151 - 1);
    v153 = v287;
    v154 = v151 > 1;
    if (v151 <= 1)
    {
      v152 = 0;
    }

    v270 = v284;
    v272 = v152;
    v266 = v284 != 0;
    v268 = v285;
    v264 = v285 != 0;
    if (v287)
    {
      v155 = 0;
      v156 = 0;
      v235 = a7 >> v238;
      v253 = a8 >> v22;
      v278 = v288;
      v279 = v283;
      v276 = v285 | v284;
      v234 = a9 + a7;
      v233 = (v237 - 1) & (a9 + a7);
      v232 = v281;
      v274 = v282;
      v231 = (v237 - 1) & a7;
      v248 = (v146 - 1) & a8;
      v250 = (v146 - 1) & (a10 + a8);
      v247 = v146 - v248;
      v157 = ~(-1 << v152);
      v246 = v150 | v152;
      v260 = v154;
      v240 = 1 << v22;
      v241 = v22;
      v255 = v287;
      do
      {
        v239 = v156;
        v158 = 0;
        v159 = 0;
        v160 = (v155 + v235) << v238;
        v161 = a9;
        if (v234 >= (v155 + v235 + 1) << v238)
        {
          v161 = v237 - v231;
        }

        v162 = 1 << v238;
        if (v234 < (v155 + v235 + 1) << v238)
        {
          v162 = v233;
        }

        v163 = v232 + v155;
        v164 = v155 << v238;
        if (v160 >= a7)
        {
          v165 = v162;
        }

        else
        {
          v165 = v161;
        }

        if (v160 >= a7)
        {
          v166 = 0;
        }

        else
        {
          v166 = v231;
        }

        v242 = &v244[v166 + v164];
        v167 = v144;
        v262 = v165;
        do
        {
          v168 = v274 + v158;
          if (v278)
          {
            v169 = v276;
            if (v276)
            {
              v170 = 0;
              v169 = 0;
              v171 = 1;
              v172 = v264;
              v173 = v266;
              v174 = v270;
              v175 = v268;
              do
              {
                --v174;
                if (v173)
                {
                  v169 |= (v171 & v163) << v170;
                }

                else
                {
                  v174 = 0;
                }

                if (v173)
                {
                  ++v170;
                }

                --v175;
                if (v172)
                {
                  v169 |= (v171 & v168) << v170;
                }

                else
                {
                  v175 = 0;
                }

                if (v172)
                {
                  ++v170;
                }

                v171 *= 2;
                --v170;
                v172 = v175 != 0;
                v173 = v174 != 0;
              }

              while (v175 | v174);
            }
          }

          else
          {
            v169 = v276;
            if (v276)
            {
              v176 = 0;
              v169 = 0;
              v177 = 1;
              v179 = v264;
              v178 = v266;
              v180 = v268;
              v181 = v270;
              do
              {
                --v180;
                if (v179)
                {
                  v169 |= (v177 & v168) << v176;
                }

                else
                {
                  v180 = 0;
                }

                if (v179)
                {
                  ++v176;
                }

                --v181;
                if (v178)
                {
                  v169 |= (v177 & v163) << v176;
                }

                else
                {
                  v181 = 0;
                }

                if (v178)
                {
                  ++v176;
                }

                v177 *= 2;
                --v176;
                v178 = v181 != 0;
                v179 = v180 != 0;
              }

              while (v181 | v180);
            }
          }

          v182 = *(v143 + 4 * ((v169 + v279) | ((v169 + v279) >> 8 << 9)));
          if (v182 < 0)
          {
            v183 = v143 - *(a13 + 3) + ((v182 & 0x1FFFFFFF) << 14);
            result = *a13;
            v184 = a13[2];
            if (result > v184)
            {
              v185 = v158;
              result = get_level_offset_within_tail(result, v184, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v154 = v260;
              v165 = v262;
              v158 = v185;
              v146 = v240;
              v22 = v241;
              v14 = a11;
              v145 = a8;
              v167 = a10;
              v143 = v257;
              v183 += result;
            }

            v186 = (v158 + v253) << v22;
            v187 = v247;
            if (a10 + a8 >= (v158 + v253 + 1) << v22)
            {
              v188 = v146;
            }

            else
            {
              v187 = v167;
              v188 = v250;
            }

            if (v186 >= v145)
            {
              v189 = 0;
            }

            else
            {
              v189 = v248;
            }

            if (v186 >= v145)
            {
              v187 = v188;
            }

            if (!v246)
            {
              v208 = 0;
              v192 = 0;
              v199 = 0;
              v215 = 0;
              v153 = v255;
              if (!v187)
              {
                goto LABEL_192;
              }

LABEL_264:
              if (v165)
              {
                v222 = 0;
                v223 = (v242 + (v189 + (v158 << v22)) * v14);
                do
                {
                  v224 = v165;
                  v225 = v223;
                  v226 = v208;
                  do
                  {
                    result = v226 + v215;
                    *v225++ = *(v183 + 16 * (v226 + v215));
                    v226 = (v226 - v192) & v192;
                    --v224;
                  }

                  while (v224);
                  v215 = (v215 - v199) & v199;
                  v223 = (v223 + v14);
                  ++v222;
                }

                while (v222 != v187);
              }

              goto LABEL_192;
            }

            v190 = v158;
            v191 = 0;
            v192 = 0;
            v193 = 1;
            v194 = v154;
            v195 = v149;
            v196 = v272;
            v197 = v150;
            do
            {
              --v196;
              if (v194)
              {
                v192 |= (v193 & v157) << v191++;
              }

              else
              {
                v196 = 0;
              }

              --v197;
              if (!v195)
              {
                v197 = 0;
              }

              v193 *= 2;
              v191 = (__PAIR64__(v191, v195) - 1) >> 32;
              v195 = v197 != 0;
              v194 = v196 != 0;
            }

            while (v197 | v196);
            v198 = 0;
            v199 = 0;
            v200 = 1;
            v201 = v154;
            v202 = v149;
            v203 = v272;
            v204 = v150;
            do
            {
              --v203;
              v205 = v201;
              if (!v205)
              {
                v203 = 0;
              }

              v206 = v198 + v205;
              --v204;
              if (v202)
              {
                v199 |= (v200 & ~(-1 << v150)) << v206++;
              }

              else
              {
                v204 = 0;
              }

              v200 *= 2;
              v198 = v206 - 1;
              v202 = v204 != 0;
              v201 = v203 != 0;
            }

            while (v204 | v203);
            v207 = 0;
            v208 = 0;
            v209 = 1;
            v210 = v154;
            v211 = v149;
            v212 = v272;
            v213 = v150;
            do
            {
              --v212;
              if (v210)
              {
                v208 |= (v209 & v166) << v207++;
              }

              else
              {
                v212 = 0;
              }

              --v213;
              if (!v211)
              {
                v213 = 0;
              }

              v209 *= 2;
              v207 = (__PAIR64__(v207, v211) - 1) >> 32;
              v211 = v213 != 0;
              v210 = v212 != 0;
            }

            while (v213 | v212);
            v214 = 0;
            v215 = 0;
            v216 = 1;
            v217 = v154;
            LOBYTE(result) = v149;
            v218 = v272;
            v219 = v150;
            do
            {
              --v218;
              v220 = v217;
              if (!v220)
              {
                v218 = 0;
              }

              v221 = v214 + v220;
              --v219;
              if (result)
              {
                v215 |= (v216 & v189) << v221++;
              }

              else
              {
                v219 = 0;
              }

              v216 *= 2;
              v214 = v221 - 1;
              result = v219 != 0;
              v217 = v218 != 0;
            }

            while (v219 | v218);
            v153 = v255;
            v158 = v190;
            v154 = v260;
            v165 = v262;
            if (v187)
            {
              goto LABEL_264;
            }
          }

LABEL_192:
          v158 = ++v159;
        }

        while (v153 > v159);
        v144 = v167;
        v156 = v239 + 1;
        v155 = (v239 + 1);
        a7 = v258;
      }

      while (v236 > v155);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,4ul,8u,(TwiddleOrder)1>>(uint64_t result, _OWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, unsigned int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v14 = a11;
  v15 = a10;
  if (!a12)
  {
    v23 = 32 - __clz(a6 - 1);
    v24 = a6 > 1;
    if (a6 <= 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = v23;
    }

    v26 = 32 - __clz(a5 - 1);
    v27 = a5 > 1;
    if (a5 <= 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = v26;
    }

    if (v25 | v28)
    {
      v29 = a2;
      v30 = 0;
      v31 = 0;
      v32 = a5 > 1;
      v33 = v24;
      v34 = 1;
      v35 = v28;
      v36 = v25;
      do
      {
        --v35;
        if (v32)
        {
          v31 |= (v34 & ~(-1 << v28)) << v30++;
        }

        else
        {
          v35 = 0;
        }

        --v36;
        if (!v33)
        {
          v36 = 0;
        }

        v34 *= 2;
        v30 = (__PAIR64__(v30, v33) - 1) >> 32;
        v33 = v36 != 0;
        v32 = v35 != 0;
      }

      while (v36 | v35);
      v37 = 0;
      v38 = 0;
      v39 = 1;
      v40 = v27;
      v41 = v24;
      v42 = v28;
      v43 = v25;
      do
      {
        --v42;
        v44 = v40;
        if (!v44)
        {
          v42 = 0;
        }

        v45 = v37 + v44;
        if (v41)
        {
          --v43;
        }

        else
        {
          v43 = 0;
        }

        if (v41)
        {
          v38 |= (v39 & ~(-1 << v25)) << v45++;
        }

        v39 *= 2;
        v37 = v45 - 1;
        v41 = v43 != 0;
        v40 = v42 != 0;
      }

      while (v43 | v42);
      v46 = 0;
      v47 = 0;
      v48 = v27;
      v49 = v24;
      v50 = 1;
      v51 = v28;
      v52 = v25;
      do
      {
        --v51;
        if (v48)
        {
          v47 |= (v50 & a7) << v46++;
        }

        else
        {
          v51 = 0;
        }

        --v52;
        if (!v49)
        {
          v52 = 0;
        }

        v50 *= 2;
        v46 = (__PAIR64__(v46, v49) - 1) >> 32;
        v49 = v52 != 0;
        v48 = v51 != 0;
      }

      while (v52 | v51);
      v53 = 0;
      v54 = 0;
      v55 = 1;
      do
      {
        --v28;
        v56 = v27;
        if (!v56)
        {
          v28 = 0;
        }

        v57 = v53 + v56;
        --v25;
        if (v24)
        {
          v54 |= (v55 & a8) << v57;
          v58 = v57 + 1;
        }

        else
        {
          v25 = 0;
          v58 = v57;
        }

        v55 *= 2;
        v53 = v58 - 1;
        v24 = v25 != 0;
        v27 = v28 != 0;
      }

      while (v25 | v28);
      a2 = v29;
      v15 = a10;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v47 = 0;
      v31 = 0;
      v38 = 0;
      v54 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      v230 = 0;
      do
      {
        v231 = a9;
        v232 = a2;
        v233 = v47;
        do
        {
          v234 = (result + 32 * (v233 + v54));
          v235 = v234[1];
          *v232 = *v234;
          v232[1] = v235;
          v232 += 2;
          v233 = (v233 - v31) & v31;
          --v231;
        }

        while (v231);
        v54 = (v54 - v38) & v38;
        a2 = (a2 + a11);
        ++v230;
      }

      while (v230 != v15);
    }

    return result;
  }

  v262 = result;
  v263 = a7;
  if (!*(a12 + 20))
  {
    v59 = *(a12 + 13);
    v60 = *(a12 + 12);
    v61 = 1 << v59;
    v62 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v62 = 0;
    }

    v63 = v60 + v59;
    result = v60 + v59 + v62;
    if (a6 >> v59)
    {
      v64 = 1;
    }

    else
    {
      v64 = 1 << v60 >= a5;
    }

    if (v64)
    {
      v65 = *(a12 + 12);
    }

    else
    {
      v65 = v60 + v59 + v62;
    }

    if (v64)
    {
      LOBYTE(v66) = *(a12 + 13);
    }

    else
    {
      v66 = -v62;
    }

    v67 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v67) = 0;
    }

    if (v61 < a6 && a5 >> v60 == 0)
    {
      LOBYTE(v66) = v63 - v67;
    }

    else
    {
      LOBYTE(v67) = v65;
    }

    v69 = 1 << v66;
    v70 = *(a12 + 15);
    v71 = 1 << v70;
    if (v70)
    {
      v72 = v71 > a3;
    }

    else
    {
      v72 = 1;
    }

    v73 = v72 || v71 > a4;
    v74 = (~(-1 << v70) + a3) & (-1 << v70);
    if (v73)
    {
      v75 = a3;
    }

    else
    {
      v75 = v74;
    }

    v268 = 1 << v66;
    v76 = v69 - 1;
    v264 = a10 + a8;
    v266 = a8 >> v66;
    v259 = (v69 - 1 + a10 + a8) >> v66;
    v261 = v66;
    if (a8 >> v66 >= v259)
    {
      return result;
    }

    result = a7 >> v67;
    v77 = (1 << v67) - 1;
    v282 = a9 + a7;
    if (v69 >= a6)
    {
      v69 = a6;
    }

    v78 = 32 - __clz(v69 - 1);
    v79 = v69 > 1;
    v80 = v69 <= 1 ? 0 : v78;
    v81 = 1 << v67 >= a5 ? a5 : 1 << v67;
    v82 = 32 - __clz(v81 - 1);
    v83 = v81 > 1;
    v84 = v81 <= 1 ? 0 : v82;
    v276 = a7 >> v67;
    v280 = (v77 + a9 + a7) >> v67;
    if (result >= v280)
    {
      return result;
    }

    v257 = (v75 + ~(-1 << v67)) >> v67;
    v85 = v77 & a7;
    v278 = v77 & v282;
    v254 = v76 & v264;
    v256 = v76 & a8;
    v86 = v266;
    v250 = a2;
LABEL_92:
    v87 = v86 << v261;
    v88 = v86 - v266;
    v274 = v86 * v257;
    v270 = v86 + 1;
    v64 = v264 >= (v86 + 1) << v261;
    v89 = v268;
    v90 = v268 - v256;
    if (!v64)
    {
      v89 = v254;
      v90 = v15;
    }

    v91 = v88 << v261;
    if (v87 >= a8)
    {
      v92 = 0;
    }

    else
    {
      v92 = v256;
    }

    if (v87 >= a8)
    {
      v93 = v89;
    }

    else
    {
      v93 = v90;
    }

    v272 = (v92 + v91 - v256) * a11;
    v94 = v276;
    while (1)
    {
      v95 = v94 << v67;
      v96 = v94 + 1;
      if (v282 >= (v94 + 1) << v67)
      {
        v97 = (1 << v67) - v85;
      }

      else
      {
        v97 = a9;
      }

      v98 = v278;
      if (v282 >= v96 << v67)
      {
        v98 = 1 << v67;
      }

      if (v95 >= a7)
      {
        v99 = 0;
      }

      else
      {
        v99 = v85;
      }

      if (v95 < a7)
      {
        v98 = v97;
      }

      if (v80 | v84)
      {
        break;
      }

      v116 = 0;
      v101 = 0;
      v108 = 0;
      v123 = 0;
      if (v93)
      {
        goto LABEL_147;
      }

LABEL_101:
      v94 = v96;
      a7 = v263;
      if (v96 == v280)
      {
        v86 = v270;
        v15 = a10;
        if (v270 == v259)
        {
          return result;
        }

        goto LABEL_92;
      }
    }

    v100 = 0;
    v101 = 0;
    v102 = 1;
    v103 = v83;
    v104 = v79;
    v105 = v84;
    v106 = v80;
    do
    {
      --v105;
      if (v103)
      {
        v101 |= (v102 & ~(-1 << v84)) << v100++;
      }

      else
      {
        v105 = 0;
      }

      if (v104)
      {
        --v106;
      }

      else
      {
        v106 = 0;
      }

      v102 *= 2;
      v100 = (__PAIR64__(v100, v104) - 1) >> 32;
      v104 = v106 != 0;
      v103 = v105 != 0;
    }

    while (v106 | v105);
    v107 = 0;
    v108 = 0;
    v109 = 1;
    v110 = v83;
    v111 = v79;
    v112 = v84;
    v113 = v80;
    do
    {
      --v112;
      if (!v110)
      {
        v112 = 0;
      }

      v114 = v107 + v110;
      if (v111)
      {
        --v113;
      }

      else
      {
        v113 = 0;
      }

      if (v111)
      {
        v108 |= (v109 & ~(-1 << v80)) << v114++;
      }

      v109 *= 2;
      v107 = v114 - 1;
      v111 = v113 != 0;
      v110 = v112 != 0;
    }

    while (v113 | v112);
    v115 = 0;
    v116 = 0;
    v117 = 1;
    v118 = v83;
    v119 = v79;
    v120 = v84;
    v121 = v80;
    do
    {
      --v120;
      if (v118)
      {
        v116 |= (v117 & v99) << v115;
        v122 = v115 + 1;
      }

      else
      {
        v120 = 0;
        v122 = v115;
      }

      --v121;
      if (!v119)
      {
        v121 = 0;
      }

      v117 *= 2;
      v115 = (__PAIR64__(v122, v119) - 1) >> 32;
      v119 = v121 != 0;
      v118 = v120 != 0;
    }

    while (v121 | v120);
    LODWORD(result) = 0;
    v123 = 0;
    v124 = 1;
    v125 = v83;
    v126 = v79;
    v127 = v84;
    v128 = v80;
    do
    {
      --v127;
      v129 = v125;
      if (!v129)
      {
        v127 = 0;
      }

      v130 = result + v129;
      --v128;
      if (v126)
      {
        v123 |= (v124 & v92) << v130++;
      }

      else
      {
        v128 = 0;
      }

      v124 *= 2;
      result = (v130 - 1);
      v126 = v128 != 0;
      v125 = v127 != 0;
    }

    while (v128 | v127);
    if (!v93)
    {
      goto LABEL_101;
    }

LABEL_147:
    if (v98)
    {
      v131 = 0;
      v132 = (&v250[2 * (v99 + ((v94 - v276) << v67) - v85)] + v272);
      v133 = (v94 + v274) * a12[3] * *(a12 + 9) + v262;
      do
      {
        v134 = v98;
        v135 = v132;
        v136 = v116;
        do
        {
          v137 = (v133 + 32 * (v136 + v123));
          v138 = v137[1];
          *v135 = *v137;
          v135[1] = v138;
          v135 += 2;
          v136 = (v136 - v101) & v101;
          --v134;
        }

        while (v134);
        result = v123 - v108;
        v123 = (v123 - v108) & v108;
        v132 = (v132 + a11);
        ++v131;
      }

      while (v131 != v93);
    }

    goto LABEL_101;
  }

  v16 = a2;
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v285);
  v19 = *(a12 + 13);
  v20 = *(a12 + 12);
  v249 = v16;
  if (1 << v19 >= a6 || a5 >> v20)
  {
    v139 = a6 >> v19;
    v140 = 1 << v20;
    v141 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v141 = 0;
    }

    v142 = v140 >= a5;
    if (v140 < a5)
    {
      v143 = v20 + v19 + v141;
    }

    else
    {
      v143 = *(a12 + 12);
    }

    if (v142)
    {
      LOBYTE(v144) = *(a12 + 13);
    }

    else
    {
      v144 = -v141;
    }

    if (!v139)
    {
      v20 = v143;
    }

    v243 = v20;
    if (v139)
    {
      v22 = *(a12 + 13);
    }

    else
    {
      v22 = v144;
    }
  }

  else
  {
    v21 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v21) = 0;
    }

    v243 = v21;
    v22 = v20 + v19 - v21;
  }

  v145 = v262;
  v146 = a10;
  v147 = a8;
  v241 = v291;
  if (v291)
  {
    v148 = 1 << v22;
    if (1 << v22 >= a6)
    {
      v149 = a6;
    }

    else
    {
      v149 = 1 << v22;
    }

    v150 = 32 - __clz(v149 - 1);
    v151 = v149 > 1;
    if (v149 <= 1)
    {
      v152 = 0;
    }

    else
    {
      v152 = v150;
    }

    v242 = 1 << v243;
    if (1 << v243 >= a5)
    {
      v153 = a5;
    }

    else
    {
      v153 = 1 << v243;
    }

    v154 = 32 - __clz(v153 - 1);
    v155 = v292;
    v156 = v153 > 1;
    if (v153 <= 1)
    {
      v154 = 0;
    }

    v275 = v289;
    v277 = v154;
    v271 = v289 != 0;
    v273 = v290;
    v269 = v290 != 0;
    if (v292)
    {
      v157 = 0;
      v158 = 0;
      v240 = a7 >> v243;
      v258 = a8 >> v22;
      v283 = v293;
      v284 = v288;
      v281 = v290 | v289;
      v239 = a9 + a7;
      v238 = (v242 - 1) & (a9 + a7);
      v237 = v286;
      v279 = v287;
      v236 = (v242 - 1) & a7;
      v253 = (v148 - 1) & a8;
      v255 = (v148 - 1) & (a10 + a8);
      v252 = v148 - v253;
      v159 = ~(-1 << v154);
      v251 = v152 | v154;
      v265 = v156;
      v245 = 1 << v22;
      v246 = v22;
      v260 = v292;
      do
      {
        v244 = v158;
        v160 = 0;
        v161 = 0;
        v162 = (v157 + v240) << v243;
        v163 = a9;
        if (v239 >= (v157 + v240 + 1) << v243)
        {
          v163 = v242 - v236;
        }

        v164 = 1 << v243;
        if (v239 < (v157 + v240 + 1) << v243)
        {
          v164 = v238;
        }

        v165 = v237 + v157;
        v166 = v157 << v243;
        if (v162 >= a7)
        {
          v167 = v164;
        }

        else
        {
          v167 = v163;
        }

        if (v162 >= a7)
        {
          v168 = 0;
        }

        else
        {
          v168 = v236;
        }

        v247 = &v249[2 * (v168 + v166)];
        v169 = v146;
        v267 = v167;
        do
        {
          v170 = v279 + v160;
          if (v283)
          {
            v171 = v281;
            if (v281)
            {
              v172 = 0;
              v171 = 0;
              v173 = 1;
              v174 = v269;
              v175 = v271;
              v176 = v275;
              v177 = v273;
              do
              {
                --v176;
                if (v175)
                {
                  v171 |= (v173 & v165) << v172;
                }

                else
                {
                  v176 = 0;
                }

                if (v175)
                {
                  ++v172;
                }

                --v177;
                if (v174)
                {
                  v171 |= (v173 & v170) << v172;
                }

                else
                {
                  v177 = 0;
                }

                if (v174)
                {
                  ++v172;
                }

                v173 *= 2;
                --v172;
                v174 = v177 != 0;
                v175 = v176 != 0;
              }

              while (v177 | v176);
            }
          }

          else
          {
            v171 = v281;
            if (v281)
            {
              v178 = 0;
              v171 = 0;
              v179 = 1;
              v181 = v269;
              v180 = v271;
              v182 = v273;
              v183 = v275;
              do
              {
                --v182;
                if (v181)
                {
                  v171 |= (v179 & v170) << v178;
                }

                else
                {
                  v182 = 0;
                }

                if (v181)
                {
                  ++v178;
                }

                --v183;
                if (v180)
                {
                  v171 |= (v179 & v165) << v178;
                }

                else
                {
                  v183 = 0;
                }

                if (v180)
                {
                  ++v178;
                }

                v179 *= 2;
                --v178;
                v180 = v183 != 0;
                v181 = v182 != 0;
              }

              while (v183 | v182);
            }
          }

          v184 = *(v145 + 4 * ((v171 + v284) | ((v171 + v284) >> 8 << 9)));
          if (v184 < 0)
          {
            v185 = v145 - *(a13 + 3) + ((v184 & 0x1FFFFFFF) << 14);
            result = *a13;
            v186 = a13[2];
            if (result > v186)
            {
              v187 = v160;
              result = get_level_offset_within_tail(result, v186, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v156 = v265;
              v167 = v267;
              v160 = v187;
              v148 = v245;
              v22 = v246;
              v14 = a11;
              v147 = a8;
              v169 = a10;
              v145 = v262;
              v185 += result;
            }

            v188 = (v160 + v258) << v22;
            v189 = v252;
            if (a10 + a8 >= (v160 + v258 + 1) << v22)
            {
              v190 = v148;
            }

            else
            {
              v189 = v169;
              v190 = v255;
            }

            if (v188 >= v147)
            {
              v191 = 0;
            }

            else
            {
              v191 = v253;
            }

            if (v188 >= v147)
            {
              v189 = v190;
            }

            if (!v251)
            {
              v210 = 0;
              v194 = 0;
              v201 = 0;
              v217 = 0;
              v155 = v260;
              if (!v189)
              {
                goto LABEL_192;
              }

LABEL_264:
              if (v167)
              {
                v224 = 0;
                v225 = (v247 + (v191 + (v160 << v22)) * v14);
                do
                {
                  v226 = v167;
                  v227 = v225;
                  v228 = v210;
                  do
                  {
                    result = v185 + 32 * (v228 + v217);
                    v229 = *(result + 16);
                    *v227 = *result;
                    v227[1] = v229;
                    v227 += 2;
                    v228 = (v228 - v194) & v194;
                    --v226;
                  }

                  while (v226);
                  v217 = (v217 - v201) & v201;
                  v225 = (v225 + v14);
                  ++v224;
                }

                while (v224 != v189);
              }

              goto LABEL_192;
            }

            v192 = v160;
            v193 = 0;
            v194 = 0;
            v195 = 1;
            v196 = v156;
            v197 = v151;
            v198 = v277;
            v199 = v152;
            do
            {
              --v198;
              if (v196)
              {
                v194 |= (v195 & v159) << v193++;
              }

              else
              {
                v198 = 0;
              }

              --v199;
              if (!v197)
              {
                v199 = 0;
              }

              v195 *= 2;
              v193 = (__PAIR64__(v193, v197) - 1) >> 32;
              v197 = v199 != 0;
              v196 = v198 != 0;
            }

            while (v199 | v198);
            v200 = 0;
            v201 = 0;
            v202 = 1;
            v203 = v156;
            v204 = v151;
            v205 = v277;
            v206 = v152;
            do
            {
              --v205;
              v207 = v203;
              if (!v207)
              {
                v205 = 0;
              }

              v208 = v200 + v207;
              --v206;
              if (v204)
              {
                v201 |= (v202 & ~(-1 << v152)) << v208++;
              }

              else
              {
                v206 = 0;
              }

              v202 *= 2;
              v200 = v208 - 1;
              v204 = v206 != 0;
              v203 = v205 != 0;
            }

            while (v206 | v205);
            v209 = 0;
            v210 = 0;
            v211 = 1;
            v212 = v156;
            v213 = v151;
            v214 = v277;
            v215 = v152;
            do
            {
              --v214;
              if (v212)
              {
                v210 |= (v211 & v168) << v209++;
              }

              else
              {
                v214 = 0;
              }

              --v215;
              if (!v213)
              {
                v215 = 0;
              }

              v211 *= 2;
              v209 = (__PAIR64__(v209, v213) - 1) >> 32;
              v213 = v215 != 0;
              v212 = v214 != 0;
            }

            while (v215 | v214);
            v216 = 0;
            v217 = 0;
            v218 = 1;
            v219 = v156;
            LOBYTE(result) = v151;
            v220 = v277;
            v221 = v152;
            do
            {
              --v220;
              v222 = v219;
              if (!v222)
              {
                v220 = 0;
              }

              v223 = v216 + v222;
              --v221;
              if (result)
              {
                v217 |= (v218 & v191) << v223++;
              }

              else
              {
                v221 = 0;
              }

              v218 *= 2;
              v216 = v223 - 1;
              result = v221 != 0;
              v219 = v220 != 0;
            }

            while (v221 | v220);
            v155 = v260;
            v160 = v192;
            v156 = v265;
            v167 = v267;
            if (v189)
            {
              goto LABEL_264;
            }
          }

LABEL_192:
          v160 = ++v161;
        }

        while (v155 > v161);
        v146 = v169;
        v158 = v244 + 1;
        v157 = (v244 + 1);
        a7 = v263;
      }

      while (v241 > v157);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,4ul,4u,(TwiddleOrder)1>>(uint64_t result, _OWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, unsigned int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v14 = a11;
  v15 = a10;
  if (!a12)
  {
    v23 = 32 - __clz(a6 - 1);
    v24 = a6 > 1;
    if (a6 <= 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = v23;
    }

    v26 = 32 - __clz(a5 - 1);
    v27 = a5 > 1;
    if (a5 <= 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = v26;
    }

    if (v25 | v28)
    {
      v29 = a2;
      v30 = 0;
      v31 = 0;
      v32 = a5 > 1;
      v33 = v24;
      v34 = 1;
      v35 = v28;
      v36 = v25;
      do
      {
        --v35;
        if (v32)
        {
          v31 |= (v34 & ~(-1 << v28)) << v30++;
        }

        else
        {
          v35 = 0;
        }

        --v36;
        if (!v33)
        {
          v36 = 0;
        }

        v34 *= 2;
        v30 = (__PAIR64__(v30, v33) - 1) >> 32;
        v33 = v36 != 0;
        v32 = v35 != 0;
      }

      while (v36 | v35);
      v37 = 0;
      v38 = 0;
      v39 = 1;
      v40 = v27;
      v41 = v24;
      v42 = v28;
      v43 = v25;
      do
      {
        --v42;
        v44 = v40;
        if (!v44)
        {
          v42 = 0;
        }

        v45 = v37 + v44;
        if (v41)
        {
          --v43;
        }

        else
        {
          v43 = 0;
        }

        if (v41)
        {
          v38 |= (v39 & ~(-1 << v25)) << v45++;
        }

        v39 *= 2;
        v37 = v45 - 1;
        v41 = v43 != 0;
        v40 = v42 != 0;
      }

      while (v43 | v42);
      v46 = 0;
      v47 = 0;
      v48 = v27;
      v49 = v24;
      v50 = 1;
      v51 = v28;
      v52 = v25;
      do
      {
        --v51;
        if (v48)
        {
          v47 |= (v50 & a7) << v46++;
        }

        else
        {
          v51 = 0;
        }

        --v52;
        if (!v49)
        {
          v52 = 0;
        }

        v50 *= 2;
        v46 = (__PAIR64__(v46, v49) - 1) >> 32;
        v49 = v52 != 0;
        v48 = v51 != 0;
      }

      while (v52 | v51);
      v53 = 0;
      v54 = 0;
      v55 = 1;
      do
      {
        --v28;
        v56 = v27;
        if (!v56)
        {
          v28 = 0;
        }

        v57 = v53 + v56;
        --v25;
        if (v24)
        {
          v54 |= (v55 & a8) << v57;
          v58 = v57 + 1;
        }

        else
        {
          v25 = 0;
          v58 = v57;
        }

        v55 *= 2;
        v53 = v58 - 1;
        v24 = v25 != 0;
        v27 = v28 != 0;
      }

      while (v25 | v28);
      a2 = v29;
      v15 = a10;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v47 = 0;
      v31 = 0;
      v38 = 0;
      v54 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      v227 = 0;
      do
      {
        v228 = a9;
        v229 = a2;
        v230 = v47;
        do
        {
          *v229++ = *(result + 16 * (v230 + v54));
          v230 = (v230 - v31) & v31;
          --v228;
        }

        while (v228);
        v54 = (v54 - v38) & v38;
        a2 = (a2 + a11);
        ++v227;
      }

      while (v227 != v15);
    }

    return result;
  }

  v257 = result;
  v258 = a7;
  if (!*(a12 + 20))
  {
    v59 = *(a12 + 13);
    v60 = *(a12 + 12);
    v61 = 1 << v59;
    v62 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v62 = 0;
    }

    v63 = v60 + v59;
    result = v60 + v59 + v62;
    if (a6 >> v59)
    {
      v64 = 1;
    }

    else
    {
      v64 = 1 << v60 >= a5;
    }

    if (v64)
    {
      v65 = *(a12 + 12);
    }

    else
    {
      v65 = v60 + v59 + v62;
    }

    if (v64)
    {
      LOBYTE(v66) = *(a12 + 13);
    }

    else
    {
      v66 = -v62;
    }

    v67 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v67) = 0;
    }

    if (v61 < a6 && a5 >> v60 == 0)
    {
      LOBYTE(v66) = v63 - v67;
    }

    else
    {
      LOBYTE(v67) = v65;
    }

    v69 = 1 << v66;
    v70 = *(a12 + 15);
    v71 = 1 << v70;
    if (v70)
    {
      v72 = v71 > a3;
    }

    else
    {
      v72 = 1;
    }

    v73 = v72 || v71 > a4;
    v74 = (~(-1 << v70) + a3) & (-1 << v70);
    if (v73)
    {
      v75 = a3;
    }

    else
    {
      v75 = v74;
    }

    v263 = 1 << v66;
    v76 = v69 - 1;
    v259 = a10 + a8;
    v261 = a8 >> v66;
    v254 = (v69 - 1 + a10 + a8) >> v66;
    v256 = v66;
    if (a8 >> v66 >= v254)
    {
      return result;
    }

    result = a7 >> v67;
    v77 = (1 << v67) - 1;
    v277 = a9 + a7;
    if (v69 >= a6)
    {
      v69 = a6;
    }

    v78 = 32 - __clz(v69 - 1);
    v79 = v69 > 1;
    v80 = v69 <= 1 ? 0 : v78;
    v81 = 1 << v67 >= a5 ? a5 : 1 << v67;
    v82 = 32 - __clz(v81 - 1);
    v83 = v81 > 1;
    v84 = v81 <= 1 ? 0 : v82;
    v271 = a7 >> v67;
    v275 = (v77 + a9 + a7) >> v67;
    if (result >= v275)
    {
      return result;
    }

    v252 = (v75 + ~(-1 << v67)) >> v67;
    v85 = v77 & a7;
    v273 = v77 & v277;
    v249 = v76 & v259;
    v251 = v76 & a8;
    v86 = v261;
    v245 = a2;
LABEL_92:
    v87 = v86 << v256;
    v88 = v86 - v261;
    v269 = v86 * v252;
    v265 = v86 + 1;
    v64 = v259 >= (v86 + 1) << v256;
    v89 = v263;
    v90 = v263 - v251;
    if (!v64)
    {
      v89 = v249;
      v90 = v15;
    }

    v91 = v88 << v256;
    if (v87 >= a8)
    {
      v92 = 0;
    }

    else
    {
      v92 = v251;
    }

    if (v87 >= a8)
    {
      v93 = v89;
    }

    else
    {
      v93 = v90;
    }

    v267 = (v92 + v91 - v251) * a11;
    v94 = v271;
    while (1)
    {
      v95 = v94 << v67;
      v96 = v94 + 1;
      if (v277 >= (v94 + 1) << v67)
      {
        v97 = (1 << v67) - v85;
      }

      else
      {
        v97 = a9;
      }

      v98 = v273;
      if (v277 >= v96 << v67)
      {
        v98 = 1 << v67;
      }

      if (v95 >= a7)
      {
        v99 = 0;
      }

      else
      {
        v99 = v85;
      }

      if (v95 < a7)
      {
        v98 = v97;
      }

      if (v80 | v84)
      {
        break;
      }

      v116 = 0;
      v101 = 0;
      v108 = 0;
      v123 = 0;
      if (v93)
      {
        goto LABEL_147;
      }

LABEL_101:
      v94 = v96;
      a7 = v258;
      if (v96 == v275)
      {
        v86 = v265;
        v15 = a10;
        if (v265 == v254)
        {
          return result;
        }

        goto LABEL_92;
      }
    }

    v100 = 0;
    v101 = 0;
    v102 = 1;
    v103 = v83;
    v104 = v79;
    v105 = v84;
    v106 = v80;
    do
    {
      --v105;
      if (v103)
      {
        v101 |= (v102 & ~(-1 << v84)) << v100++;
      }

      else
      {
        v105 = 0;
      }

      if (v104)
      {
        --v106;
      }

      else
      {
        v106 = 0;
      }

      v102 *= 2;
      v100 = (__PAIR64__(v100, v104) - 1) >> 32;
      v104 = v106 != 0;
      v103 = v105 != 0;
    }

    while (v106 | v105);
    v107 = 0;
    v108 = 0;
    v109 = 1;
    v110 = v83;
    v111 = v79;
    v112 = v84;
    v113 = v80;
    do
    {
      --v112;
      if (!v110)
      {
        v112 = 0;
      }

      v114 = v107 + v110;
      if (v111)
      {
        --v113;
      }

      else
      {
        v113 = 0;
      }

      if (v111)
      {
        v108 |= (v109 & ~(-1 << v80)) << v114++;
      }

      v109 *= 2;
      v107 = v114 - 1;
      v111 = v113 != 0;
      v110 = v112 != 0;
    }

    while (v113 | v112);
    v115 = 0;
    v116 = 0;
    v117 = 1;
    v118 = v83;
    v119 = v79;
    v120 = v84;
    v121 = v80;
    do
    {
      --v120;
      if (v118)
      {
        v116 |= (v117 & v99) << v115;
        v122 = v115 + 1;
      }

      else
      {
        v120 = 0;
        v122 = v115;
      }

      --v121;
      if (!v119)
      {
        v121 = 0;
      }

      v117 *= 2;
      v115 = (__PAIR64__(v122, v119) - 1) >> 32;
      v119 = v121 != 0;
      v118 = v120 != 0;
    }

    while (v121 | v120);
    LODWORD(result) = 0;
    v123 = 0;
    v124 = 1;
    v125 = v83;
    v126 = v79;
    v127 = v84;
    v128 = v80;
    do
    {
      --v127;
      v129 = v125;
      if (!v129)
      {
        v127 = 0;
      }

      v130 = result + v129;
      --v128;
      if (v126)
      {
        v123 |= (v124 & v92) << v130++;
      }

      else
      {
        v128 = 0;
      }

      v124 *= 2;
      result = (v130 - 1);
      v126 = v128 != 0;
      v125 = v127 != 0;
    }

    while (v128 | v127);
    if (!v93)
    {
      goto LABEL_101;
    }

LABEL_147:
    if (v98)
    {
      v131 = 0;
      v132 = (&v245[v99 + ((v94 - v271) << v67) - v85] + v267);
      v133 = (v94 + v269) * a12[3] * *(a12 + 9) + v257;
      do
      {
        v134 = v98;
        v135 = v132;
        v136 = v116;
        do
        {
          *v135++ = *(v133 + 16 * (v136 + v123));
          v136 = (v136 - v101) & v101;
          --v134;
        }

        while (v134);
        result = v123 - v108;
        v123 = (v123 - v108) & v108;
        v132 = (v132 + a11);
        ++v131;
      }

      while (v131 != v93);
    }

    goto LABEL_101;
  }

  v16 = a2;
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v280);
  v19 = *(a12 + 13);
  v20 = *(a12 + 12);
  v244 = v16;
  if (1 << v19 >= a6 || a5 >> v20)
  {
    v137 = a6 >> v19;
    v138 = 1 << v20;
    v139 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v139 = 0;
    }

    v140 = v138 >= a5;
    if (v138 < a5)
    {
      v141 = v20 + v19 + v139;
    }

    else
    {
      v141 = *(a12 + 12);
    }

    if (v140)
    {
      LOBYTE(v142) = *(a12 + 13);
    }

    else
    {
      v142 = -v139;
    }

    if (!v137)
    {
      v20 = v141;
    }

    v238 = v20;
    if (v137)
    {
      v22 = *(a12 + 13);
    }

    else
    {
      v22 = v142;
    }
  }

  else
  {
    v21 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v21) = 0;
    }

    v238 = v21;
    v22 = v20 + v19 - v21;
  }

  v143 = v257;
  v144 = a10;
  v145 = a8;
  v236 = v286;
  if (v286)
  {
    v146 = 1 << v22;
    if (1 << v22 >= a6)
    {
      v147 = a6;
    }

    else
    {
      v147 = 1 << v22;
    }

    v148 = 32 - __clz(v147 - 1);
    v149 = v147 > 1;
    if (v147 <= 1)
    {
      v150 = 0;
    }

    else
    {
      v150 = v148;
    }

    v237 = 1 << v238;
    if (1 << v238 >= a5)
    {
      v151 = a5;
    }

    else
    {
      v151 = 1 << v238;
    }

    v152 = 32 - __clz(v151 - 1);
    v153 = v287;
    v154 = v151 > 1;
    if (v151 <= 1)
    {
      v152 = 0;
    }

    v270 = v284;
    v272 = v152;
    v266 = v284 != 0;
    v268 = v285;
    v264 = v285 != 0;
    if (v287)
    {
      v155 = 0;
      v156 = 0;
      v235 = a7 >> v238;
      v253 = a8 >> v22;
      v278 = v288;
      v279 = v283;
      v276 = v285 | v284;
      v234 = a9 + a7;
      v233 = (v237 - 1) & (a9 + a7);
      v232 = v281;
      v274 = v282;
      v231 = (v237 - 1) & a7;
      v248 = (v146 - 1) & a8;
      v250 = (v146 - 1) & (a10 + a8);
      v247 = v146 - v248;
      v157 = ~(-1 << v152);
      v246 = v150 | v152;
      v260 = v154;
      v240 = 1 << v22;
      v241 = v22;
      v255 = v287;
      do
      {
        v239 = v156;
        v158 = 0;
        v159 = 0;
        v160 = (v155 + v235) << v238;
        v161 = a9;
        if (v234 >= (v155 + v235 + 1) << v238)
        {
          v161 = v237 - v231;
        }

        v162 = 1 << v238;
        if (v234 < (v155 + v235 + 1) << v238)
        {
          v162 = v233;
        }

        v163 = v232 + v155;
        v164 = v155 << v238;
        if (v160 >= a7)
        {
          v165 = v162;
        }

        else
        {
          v165 = v161;
        }

        if (v160 >= a7)
        {
          v166 = 0;
        }

        else
        {
          v166 = v231;
        }

        v242 = &v244[v166 + v164];
        v167 = v144;
        v262 = v165;
        do
        {
          v168 = v274 + v158;
          if (v278)
          {
            v169 = v276;
            if (v276)
            {
              v170 = 0;
              v169 = 0;
              v171 = 1;
              v172 = v264;
              v173 = v266;
              v174 = v270;
              v175 = v268;
              do
              {
                --v174;
                if (v173)
                {
                  v169 |= (v171 & v163) << v170;
                }

                else
                {
                  v174 = 0;
                }

                if (v173)
                {
                  ++v170;
                }

                --v175;
                if (v172)
                {
                  v169 |= (v171 & v168) << v170;
                }

                else
                {
                  v175 = 0;
                }

                if (v172)
                {
                  ++v170;
                }

                v171 *= 2;
                --v170;
                v172 = v175 != 0;
                v173 = v174 != 0;
              }

              while (v175 | v174);
            }
          }

          else
          {
            v169 = v276;
            if (v276)
            {
              v176 = 0;
              v169 = 0;
              v177 = 1;
              v179 = v264;
              v178 = v266;
              v180 = v268;
              v181 = v270;
              do
              {
                --v180;
                if (v179)
                {
                  v169 |= (v177 & v168) << v176;
                }

                else
                {
                  v180 = 0;
                }

                if (v179)
                {
                  ++v176;
                }

                --v181;
                if (v178)
                {
                  v169 |= (v177 & v163) << v176;
                }

                else
                {
                  v181 = 0;
                }

                if (v178)
                {
                  ++v176;
                }

                v177 *= 2;
                --v176;
                v178 = v181 != 0;
                v179 = v180 != 0;
              }

              while (v181 | v180);
            }
          }

          v182 = *(v143 + 4 * ((v169 + v279) | ((v169 + v279) >> 8 << 9)));
          if (v182 < 0)
          {
            v183 = v143 - *(a13 + 3) + ((v182 & 0x1FFFFFFF) << 14);
            result = *a13;
            v184 = a13[2];
            if (result > v184)
            {
              v185 = v158;
              result = get_level_offset_within_tail(result, v184, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v154 = v260;
              v165 = v262;
              v158 = v185;
              v146 = v240;
              v22 = v241;
              v14 = a11;
              v145 = a8;
              v167 = a10;
              v143 = v257;
              v183 += result;
            }

            v186 = (v158 + v253) << v22;
            v187 = v247;
            if (a10 + a8 >= (v158 + v253 + 1) << v22)
            {
              v188 = v146;
            }

            else
            {
              v187 = v167;
              v188 = v250;
            }

            if (v186 >= v145)
            {
              v189 = 0;
            }

            else
            {
              v189 = v248;
            }

            if (v186 >= v145)
            {
              v187 = v188;
            }

            if (!v246)
            {
              v208 = 0;
              v192 = 0;
              v199 = 0;
              v215 = 0;
              v153 = v255;
              if (!v187)
              {
                goto LABEL_192;
              }

LABEL_264:
              if (v165)
              {
                v222 = 0;
                v223 = (v242 + (v189 + (v158 << v22)) * v14);
                do
                {
                  v224 = v165;
                  v225 = v223;
                  v226 = v208;
                  do
                  {
                    result = v226 + v215;
                    *v225++ = *(v183 + 16 * (v226 + v215));
                    v226 = (v226 - v192) & v192;
                    --v224;
                  }

                  while (v224);
                  v215 = (v215 - v199) & v199;
                  v223 = (v223 + v14);
                  ++v222;
                }

                while (v222 != v187);
              }

              goto LABEL_192;
            }

            v190 = v158;
            v191 = 0;
            v192 = 0;
            v193 = 1;
            v194 = v154;
            v195 = v149;
            v196 = v272;
            v197 = v150;
            do
            {
              --v196;
              if (v194)
              {
                v192 |= (v193 & v157) << v191++;
              }

              else
              {
                v196 = 0;
              }

              --v197;
              if (!v195)
              {
                v197 = 0;
              }

              v193 *= 2;
              v191 = (__PAIR64__(v191, v195) - 1) >> 32;
              v195 = v197 != 0;
              v194 = v196 != 0;
            }

            while (v197 | v196);
            v198 = 0;
            v199 = 0;
            v200 = 1;
            v201 = v154;
            v202 = v149;
            v203 = v272;
            v204 = v150;
            do
            {
              --v203;
              v205 = v201;
              if (!v205)
              {
                v203 = 0;
              }

              v206 = v198 + v205;
              --v204;
              if (v202)
              {
                v199 |= (v200 & ~(-1 << v150)) << v206++;
              }

              else
              {
                v204 = 0;
              }

              v200 *= 2;
              v198 = v206 - 1;
              v202 = v204 != 0;
              v201 = v203 != 0;
            }

            while (v204 | v203);
            v207 = 0;
            v208 = 0;
            v209 = 1;
            v210 = v154;
            v211 = v149;
            v212 = v272;
            v213 = v150;
            do
            {
              --v212;
              if (v210)
              {
                v208 |= (v209 & v166) << v207++;
              }

              else
              {
                v212 = 0;
              }

              --v213;
              if (!v211)
              {
                v213 = 0;
              }

              v209 *= 2;
              v207 = (__PAIR64__(v207, v211) - 1) >> 32;
              v211 = v213 != 0;
              v210 = v212 != 0;
            }

            while (v213 | v212);
            v214 = 0;
            v215 = 0;
            v216 = 1;
            v217 = v154;
            LOBYTE(result) = v149;
            v218 = v272;
            v219 = v150;
            do
            {
              --v218;
              v220 = v217;
              if (!v220)
              {
                v218 = 0;
              }

              v221 = v214 + v220;
              --v219;
              if (result)
              {
                v215 |= (v216 & v189) << v221++;
              }

              else
              {
                v219 = 0;
              }

              v216 *= 2;
              v214 = v221 - 1;
              result = v219 != 0;
              v217 = v218 != 0;
            }

            while (v219 | v218);
            v153 = v255;
            v158 = v190;
            v154 = v260;
            v165 = v262;
            if (v187)
            {
              goto LABEL_264;
            }
          }

LABEL_192:
          v158 = ++v159;
        }

        while (v153 > v159);
        v144 = v167;
        v156 = v239 + 1;
        v155 = (v239 + 1);
        a7 = v258;
      }

      while (v236 > v155);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,4ul,2u,(TwiddleOrder)1>>(uint64_t result, void *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v14 = result;
  v15 = a11;
  v16 = a10;
  if (!a12)
  {
    v24 = 32 - __clz(a6 - 1);
    v25 = a6 > 1;
    if (a6 <= 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = v24;
    }

    v27 = 32 - __clz(a5 - 1);
    v28 = a5 > 1;
    if (a5 <= 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = v27;
    }

    if (v26 | v29)
    {
      v30 = a2;
      v31 = 0;
      v32 = 0;
      v33 = a5 > 1;
      v34 = v25;
      v35 = 1;
      v36 = v29;
      v37 = v26;
      do
      {
        --v36;
        if (v33)
        {
          v32 |= (v35 & ~(-1 << v29)) << v31++;
        }

        else
        {
          v36 = 0;
        }

        --v37;
        if (!v34)
        {
          v37 = 0;
        }

        v35 *= 2;
        v31 = (__PAIR64__(v31, v34) - 1) >> 32;
        v34 = v37 != 0;
        v33 = v36 != 0;
      }

      while (v37 | v36);
      v38 = 0;
      v39 = 0;
      v40 = 1;
      v41 = a5 > 1;
      v42 = v25;
      v43 = v29;
      v44 = v26;
      do
      {
        --v43;
        v45 = v41;
        if (!v45)
        {
          v43 = 0;
        }

        v46 = v38 + v45;
        --v44;
        if (v42)
        {
          v39 |= (v40 & ~(-1 << v26)) << v46++;
        }

        else
        {
          v44 = 0;
        }

        v40 *= 2;
        v38 = v46 - 1;
        v42 = v44 != 0;
        v41 = v43 != 0;
      }

      while (v44 | v43);
      v47 = 0;
      v48 = 0;
      v49 = a5 > 1;
      v50 = v25;
      v51 = 1;
      v52 = v29;
      v53 = v26;
      do
      {
        --v52;
        if (v49)
        {
          v48 |= (v51 & a7) << v47++;
        }

        else
        {
          v52 = 0;
        }

        --v53;
        if (!v50)
        {
          v53 = 0;
        }

        v51 *= 2;
        v47 = (__PAIR64__(v47, v50) - 1) >> 32;
        v50 = v53 != 0;
        v49 = v52 != 0;
      }

      while (v53 | v52);
      v54 = 0;
      v55 = 0;
      v56 = 1;
      do
      {
        --v29;
        v57 = v28;
        if (!v57)
        {
          v29 = 0;
        }

        v58 = v54 + v57;
        --v26;
        if (v25)
        {
          v55 |= (v56 & a8) << v58;
          v59 = v58 + 1;
        }

        else
        {
          v26 = 0;
          v59 = v58;
        }

        v56 *= 2;
        v54 = v59 - 1;
        v25 = v26 != 0;
        v28 = v29 != 0;
        result = v26 | v29;
      }

      while (result);
      a2 = v30;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v48 = 0;
      v32 = 0;
      v39 = 0;
      v55 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      for (i = 0; i != a10; ++i)
      {
        v224 = a9;
        v225 = a2;
        v226 = v48;
        do
        {
          *v225++ = *(v14 + 8 * (v226 + v55));
          v226 = (v226 - v32) & v32;
          --v224;
        }

        while (v224);
        v55 = (v55 - v39) & v39;
        a2 = (a2 + a11);
      }
    }

    return result;
  }

  v243 = a7;
  if (!*(a12 + 20))
  {
    v60 = *(a12 + 13);
    v61 = *(a12 + 12);
    v62 = 1 << v60;
    v63 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v63 = 0;
    }

    v64 = v61 + v60;
    result = v61 + v60 + v63;
    if (a6 >> v60)
    {
      v65 = 1;
    }

    else
    {
      v65 = 1 << v61 >= a5;
    }

    if (v65)
    {
      v66 = *(a12 + 12);
    }

    else
    {
      v66 = v61 + v60 + v63;
    }

    if (v65)
    {
      LOBYTE(v67) = *(a12 + 13);
    }

    else
    {
      v67 = -v63;
    }

    v68 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v68) = 0;
    }

    if (v62 < a6 && a5 >> v61 == 0)
    {
      LOBYTE(v67) = v64 - v68;
    }

    else
    {
      LOBYTE(v68) = v66;
    }

    v70 = 1 << v67;
    v71 = *(a12 + 15);
    v72 = 1 << v71;
    if (v71)
    {
      v73 = v72 > a3;
    }

    else
    {
      v73 = 1;
    }

    v74 = v73 || v72 > a4;
    v75 = (~(-1 << v71) + a3) & (-1 << v71);
    if (v74)
    {
      v76 = a3;
    }

    else
    {
      v76 = v75;
    }

    v257 = 1 << v67;
    v77 = v70 - 1;
    v252 = v67;
    v254 = a10 + a8;
    v256 = a8 >> v67;
    v251 = (v70 - 1 + a10 + a8) >> v67;
    if (a8 >> v67 >= v251)
    {
      return result;
    }

    result = (1 << v68);
    v78 = result - 1;
    v273 = a9 + a7;
    if (v70 >= a6)
    {
      v70 = a6;
    }

    v79 = 32 - __clz(v70 - 1);
    v80 = v70 > 1;
    v81 = v70 <= 1 ? 0 : v79;
    v82 = result >= a5 ? a5 : 1 << v68;
    v83 = 32 - __clz(v82 - 1);
    v84 = v82 > 1;
    v85 = v82 <= 1 ? 0 : v83;
    v265 = a7 >> v68;
    v271 = (result - 1 + a9 + a7) >> v68;
    if (a7 >> v68 >= v271)
    {
      return result;
    }

    v249 = (v76 + ~(-1 << v68)) >> v68;
    v86 = v78 & a7;
    v269 = v78 & v273;
    v267 = result - v86;
    v245 = v77 & v254;
    v247 = v77 & a8;
    v87 = v256;
    v242 = a2;
LABEL_90:
    v88 = v87 << v252;
    v89 = v87 - v256;
    v263 = v87 * v249;
    v259 = v87 + 1;
    v65 = v254 >= (v87 + 1) << v252;
    v90 = v257;
    v91 = v257 - v247;
    if (!v65)
    {
      v90 = v245;
      v91 = v16;
    }

    v92 = v89 << v252;
    if (v88 >= a8)
    {
      v93 = 0;
    }

    else
    {
      v93 = v247;
    }

    if (v88 >= a8)
    {
      v94 = v90;
    }

    else
    {
      v94 = v91;
    }

    v261 = (v93 + v92 - v247) * a11;
    v95 = v265;
    while (1)
    {
      v96 = v95 << v68;
      v97 = v95 + 1;
      v98 = a9;
      if (v273 >= (v95 + 1) << v68)
      {
        v98 = v267;
      }

      v99 = 1 << v68;
      if (v273 < v97 << v68)
      {
        v99 = v269;
      }

      if (v96 >= a7)
      {
        v100 = 0;
      }

      else
      {
        v100 = v86;
      }

      if (v96 < a7)
      {
        v99 = v98;
      }

      if (v81 | v85)
      {
        break;
      }

      v118 = 0;
      v102 = 0;
      v109 = 0;
      v125 = 0;
      if (v94)
      {
        goto LABEL_145;
      }

LABEL_99:
      v95 = v97;
      if (v97 == v271)
      {
        v87 = v259;
        v16 = a10;
        if (v259 == v251)
        {
          return result;
        }

        goto LABEL_90;
      }
    }

    v101 = 0;
    v102 = 0;
    v103 = 1;
    v104 = v84;
    v105 = v80;
    v106 = v85;
    v107 = v81;
    do
    {
      --v106;
      if (v104)
      {
        v102 |= (v103 & ~(-1 << v85)) << v101++;
      }

      else
      {
        v106 = 0;
      }

      if (v105)
      {
        --v107;
      }

      else
      {
        v107 = 0;
      }

      v103 *= 2;
      v101 = (__PAIR64__(v101, v105) - 1) >> 32;
      v105 = v107 != 0;
      v104 = v106 != 0;
    }

    while (v107 | v106);
    v108 = 0;
    v109 = 0;
    v110 = 1;
    v111 = v84;
    v112 = v80;
    v113 = v85;
    v114 = v81;
    do
    {
      --v113;
      if (!v111)
      {
        v113 = 0;
      }

      v115 = v108 + v111;
      if (v112)
      {
        --v114;
      }

      else
      {
        v114 = 0;
      }

      if (v112)
      {
        v109 |= (v110 & ~(-1 << v81)) << v115;
        v116 = v115 + 1;
      }

      else
      {
        v116 = v108 + v111;
      }

      v110 *= 2;
      v108 = v116 - 1;
      v112 = v114 != 0;
      v111 = v113 != 0;
    }

    while (v114 | v113);
    v117 = 0;
    v118 = 0;
    v119 = 1;
    v120 = v84;
    v121 = v80;
    v122 = v85;
    v123 = v81;
    do
    {
      --v122;
      if (v120)
      {
        v118 |= (v119 & v100) << v117;
        v124 = v117 + 1;
      }

      else
      {
        v122 = 0;
        v124 = v117;
      }

      --v123;
      if (!v121)
      {
        v123 = 0;
      }

      v119 *= 2;
      v117 = (__PAIR64__(v124, v121) - 1) >> 32;
      v121 = v123 != 0;
      v120 = v122 != 0;
    }

    while (v123 | v122);
    LODWORD(result) = 0;
    v125 = 0;
    v126 = 1;
    v127 = v84;
    v128 = v80;
    v129 = v85;
    v130 = v81;
    do
    {
      --v129;
      v131 = v127;
      if (!v131)
      {
        v129 = 0;
      }

      v132 = result + v131;
      --v130;
      if (v128)
      {
        v125 |= (v126 & v93) << v132++;
      }

      else
      {
        v130 = 0;
      }

      v126 *= 2;
      result = (v132 - 1);
      v128 = v130 != 0;
      v127 = v129 != 0;
    }

    while (v130 | v129);
    a7 = v243;
    if (!v94)
    {
      goto LABEL_99;
    }

LABEL_145:
    if (v99)
    {
      v133 = 0;
      v134 = (&v242[v100 + ((v95 - v265) << v68) - v86] + v261);
      v135 = (v95 + v263) * a12[3] * *(a12 + 9) + v14;
      do
      {
        LODWORD(result) = v99;
        v136 = v134;
        v137 = v118;
        do
        {
          *v136++ = *(v135 + 8 * (v137 + v125));
          v137 = (v137 - v102) & v102;
          result = (result - 1);
        }

        while (result);
        v125 = (v125 - v109) & v109;
        v134 = (v134 + a11);
        ++v133;
      }

      while (v133 != v94);
    }

    goto LABEL_99;
  }

  v17 = a2;
  v227 = a7;
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, v227, a8, a9, a10, v276);
  v20 = *(a12 + 13);
  v21 = *(a12 + 12);
  if (1 << v20 >= a6 || a5 >> v21)
  {
    v138 = a6 >> v20;
    v139 = 1 << v21;
    v140 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v140 = 0;
    }

    v141 = v139 >= a5;
    if (v139 < a5)
    {
      v142 = v21 + v20 + v140;
    }

    else
    {
      v142 = *(a12 + 12);
    }

    if (v141)
    {
      LOBYTE(v143) = *(a12 + 13);
    }

    else
    {
      v143 = -v140;
    }

    if (!v138)
    {
      v21 = v142;
    }

    v235 = v21;
    if (v138)
    {
      v23 = *(a12 + 13);
    }

    else
    {
      v23 = v143;
    }
  }

  else
  {
    v22 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v22) = 0;
    }

    v235 = v22;
    v23 = v21 + v20 - v22;
  }

  v144 = a10;
  v145 = a8;
  v234 = v282;
  if (v282)
  {
    v146 = 1 << v235;
    v147 = 1 << v23;
    if (1 << v23 >= a6)
    {
      v148 = a6;
    }

    else
    {
      v148 = 1 << v23;
    }

    v149 = 32 - __clz(v148 - 1);
    v150 = v148 > 1;
    if (v148 <= 1)
    {
      v151 = 0;
    }

    else
    {
      v151 = v149;
    }

    if (v146 >= a5)
    {
      v152 = a5;
    }

    else
    {
      v152 = 1 << v235;
    }

    v153 = 32 - __clz(v152 - 1);
    v154 = v283;
    v155 = v152 > 1;
    if (v152 <= 1)
    {
      v153 = 0;
    }

    v266 = v280;
    v268 = v153;
    v262 = v280 != 0;
    v264 = v281;
    v260 = v281 != 0;
    if (v283)
    {
      v156 = 0;
      v233 = v243 >> v235;
      v253 = a8 >> v23;
      v274 = v281 | v280;
      v275 = v279;
      v272 = v284;
      v232 = a9 + v243;
      v231 = (v146 - 1) & (a9 + v243);
      v229 = v277;
      v270 = v278;
      v230 = (v146 - 1) & v243;
      v228 = v146 - v230;
      v250 = (v147 - 1) & (a10 + a8);
      v248 = (v147 - 1) & a8;
      v246 = v147 - v248;
      v157 = ~(-1 << v153);
      v244 = v151 | v153;
      v258 = v152 > 1;
      v239 = v14;
      v237 = 1 << v23;
      v238 = v23;
      v255 = v283;
      do
      {
        v158 = 0;
        v159 = v229 + v156;
        v160 = (v156 + v233) << v235;
        v161 = a9;
        if (v232 >= (v156 + v233 + 1) << v235)
        {
          v161 = v228;
        }

        v162 = 1 << v235;
        if (v232 < (v156 + v233 + 1) << v235)
        {
          v162 = v231;
        }

        v236 = v156;
        if (v160 >= v243)
        {
          v163 = v162;
        }

        else
        {
          v163 = v161;
        }

        if (v160 >= v243)
        {
          v164 = 0;
        }

        else
        {
          v164 = v230;
        }

        v240 = &v17[v164 + (v156 << v235)];
        do
        {
          v165 = v270 + v158;
          if (v272)
          {
            v166 = v274;
            if (v274)
            {
              v167 = 0;
              v166 = 0;
              v168 = 1;
              v169 = v260;
              v170 = v262;
              v172 = v264;
              v171 = v266;
              do
              {
                --v171;
                if (v170)
                {
                  v166 |= (v168 & v159) << v167;
                }

                else
                {
                  v171 = 0;
                }

                if (v170)
                {
                  ++v167;
                }

                --v172;
                if (v169)
                {
                  v166 |= (v168 & v165) << v167;
                }

                else
                {
                  v172 = 0;
                }

                if (v169)
                {
                  ++v167;
                }

                v168 *= 2;
                --v167;
                v169 = v172 != 0;
                v170 = v171 != 0;
              }

              while (v172 | v171);
            }
          }

          else
          {
            v166 = v274;
            if (v274)
            {
              v173 = 0;
              v166 = 0;
              v174 = 1;
              v176 = v260;
              v175 = v262;
              v177 = v264;
              v178 = v266;
              do
              {
                --v177;
                if (v176)
                {
                  v166 |= (v174 & v165) << v173;
                }

                else
                {
                  v177 = 0;
                }

                if (v176)
                {
                  ++v173;
                }

                --v178;
                if (v175)
                {
                  v166 |= (v174 & v159) << v173;
                }

                else
                {
                  v178 = 0;
                }

                if (v175)
                {
                  ++v173;
                }

                v174 *= 2;
                --v173;
                v175 = v178 != 0;
                v176 = v177 != 0;
              }

              while (v178 | v177);
            }
          }

          v179 = *(v14 + 4 * ((v166 + v275) | ((v166 + v275) >> 8 << 9)));
          if (v179 < 0)
          {
            v180 = v14 - *(a13 + 3) + ((v179 & 0x1FFFFFFF) << 14);
            result = *a13;
            v181 = a13[2];
            if (result > v181)
            {
              v182 = v150;
              result = get_level_offset_within_tail(result, v181, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v155 = v258;
              v150 = v182;
              v147 = v237;
              v23 = v238;
              v14 = v239;
              v15 = a11;
              v145 = a8;
              v144 = a10;
              v180 += result;
            }

            v183 = (v158 + v253) << v23;
            v184 = v246;
            if (a10 + a8 >= (v158 + v253 + 1) << v23)
            {
              v185 = v147;
            }

            else
            {
              v184 = v144;
              v185 = v250;
            }

            if (v183 >= v145)
            {
              v186 = 0;
            }

            else
            {
              v186 = v248;
            }

            if (v183 >= v145)
            {
              v184 = v185;
            }

            if (!v244)
            {
              v204 = 0;
              v188 = 0;
              v195 = 0;
              v211 = 0;
              v154 = v255;
              if (!v184)
              {
                goto LABEL_190;
              }

LABEL_262:
              if (v163)
              {
                v218 = 0;
                v219 = (v240 + (v186 + (v158 << v23)) * v15);
                do
                {
                  v220 = v163;
                  v221 = v219;
                  v222 = v204;
                  do
                  {
                    result = *(v180 + 8 * (v222 + v211));
                    *v221++ = result;
                    v222 = (v222 - v188) & v188;
                    --v220;
                  }

                  while (v220);
                  v211 = (v211 - v195) & v195;
                  v219 = (v219 + v15);
                  ++v218;
                }

                while (v218 != v184);
              }

              goto LABEL_190;
            }

            v187 = 0;
            v188 = 0;
            v189 = 1;
            v190 = v155;
            v191 = v150;
            v192 = v268;
            v193 = v151;
            do
            {
              --v192;
              if (v190)
              {
                v188 |= (v189 & v157) << v187++;
              }

              else
              {
                v192 = 0;
              }

              --v193;
              if (!v191)
              {
                v193 = 0;
              }

              v189 *= 2;
              v187 = (__PAIR64__(v187, v191) - 1) >> 32;
              v191 = v193 != 0;
              v190 = v192 != 0;
            }

            while (v193 | v192);
            v194 = 0;
            v195 = 0;
            v196 = 1;
            v197 = v155;
            v198 = v150;
            v199 = v268;
            v200 = v151;
            do
            {
              --v199;
              v201 = v197;
              if (!v201)
              {
                v199 = 0;
              }

              v202 = v194 + v201;
              --v200;
              if (v198)
              {
                v195 |= (v196 & ~(-1 << v151)) << v202++;
              }

              else
              {
                v200 = 0;
              }

              v196 *= 2;
              v194 = v202 - 1;
              v198 = v200 != 0;
              v197 = v199 != 0;
            }

            while (v200 | v199);
            v203 = 0;
            v204 = 0;
            v205 = 1;
            v206 = v155;
            v207 = v150;
            v208 = v268;
            v209 = v151;
            do
            {
              --v208;
              if (v206)
              {
                v204 |= (v205 & v164) << v203++;
              }

              else
              {
                v208 = 0;
              }

              --v209;
              if (!v207)
              {
                v209 = 0;
              }

              v205 *= 2;
              v203 = (__PAIR64__(v203, v207) - 1) >> 32;
              v207 = v209 != 0;
              v206 = v208 != 0;
            }

            while (v209 | v208);
            v210 = 0;
            v211 = 0;
            v212 = 1;
            v213 = v155;
            LOBYTE(result) = v150;
            v214 = v268;
            v215 = v151;
            do
            {
              --v214;
              v216 = v213;
              if (!v216)
              {
                v214 = 0;
              }

              v217 = v210 + v216;
              --v215;
              if (result)
              {
                v211 |= (v212 & v186) << v217++;
              }

              else
              {
                v215 = 0;
              }

              v212 *= 2;
              v210 = v217 - 1;
              result = v215 != 0;
              v213 = v214 != 0;
            }

            while (v215 | v214);
            v154 = v255;
            v155 = v258;
            if (v184)
            {
              goto LABEL_262;
            }
          }

LABEL_190:
          ++v158;
        }

        while (v154 > v158);
        v156 = v236 + 1;
      }

      while (v234 > (v236 + 1));
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,1ul,8u,(TwiddleOrder)1>>(uint64_t result, void *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v14 = result;
  v15 = a11;
  v16 = a10;
  if (!a12)
  {
    v24 = 32 - __clz(a6 - 1);
    v25 = a6 > 1;
    if (a6 <= 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = v24;
    }

    v27 = 32 - __clz(a5 - 1);
    v28 = a5 > 1;
    if (a5 <= 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = v27;
    }

    if (v26 | v29)
    {
      v30 = a2;
      v31 = 0;
      v32 = 0;
      v33 = a5 > 1;
      v34 = v25;
      v35 = 1;
      v36 = v29;
      v37 = v26;
      do
      {
        --v36;
        if (v33)
        {
          v32 |= (v35 & ~(-1 << v29)) << v31++;
        }

        else
        {
          v36 = 0;
        }

        --v37;
        if (!v34)
        {
          v37 = 0;
        }

        v35 *= 2;
        v31 = (__PAIR64__(v31, v34) - 1) >> 32;
        v34 = v37 != 0;
        v33 = v36 != 0;
      }

      while (v37 | v36);
      v38 = 0;
      v39 = 0;
      v40 = 1;
      v41 = a5 > 1;
      v42 = v25;
      v43 = v29;
      v44 = v26;
      do
      {
        --v43;
        v45 = v41;
        if (!v45)
        {
          v43 = 0;
        }

        v46 = v38 + v45;
        --v44;
        if (v42)
        {
          v39 |= (v40 & ~(-1 << v26)) << v46++;
        }

        else
        {
          v44 = 0;
        }

        v40 *= 2;
        v38 = v46 - 1;
        v42 = v44 != 0;
        v41 = v43 != 0;
      }

      while (v44 | v43);
      v47 = 0;
      v48 = 0;
      v49 = a5 > 1;
      v50 = v25;
      v51 = 1;
      v52 = v29;
      v53 = v26;
      do
      {
        --v52;
        if (v49)
        {
          v48 |= (v51 & a7) << v47++;
        }

        else
        {
          v52 = 0;
        }

        --v53;
        if (!v50)
        {
          v53 = 0;
        }

        v51 *= 2;
        v47 = (__PAIR64__(v47, v50) - 1) >> 32;
        v50 = v53 != 0;
        v49 = v52 != 0;
      }

      while (v53 | v52);
      v54 = 0;
      v55 = 0;
      v56 = 1;
      do
      {
        --v29;
        v57 = v28;
        if (!v57)
        {
          v29 = 0;
        }

        v58 = v54 + v57;
        --v26;
        if (v25)
        {
          v55 |= (v56 & a8) << v58;
          v59 = v58 + 1;
        }

        else
        {
          v26 = 0;
          v59 = v58;
        }

        v56 *= 2;
        v54 = v59 - 1;
        v25 = v26 != 0;
        v28 = v29 != 0;
        result = v26 | v29;
      }

      while (result);
      a2 = v30;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v48 = 0;
      v32 = 0;
      v39 = 0;
      v55 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      for (i = 0; i != a10; ++i)
      {
        v224 = a9;
        v225 = a2;
        v226 = v48;
        do
        {
          *v225++ = *(v14 + 8 * (v226 + v55));
          v226 = (v226 - v32) & v32;
          --v224;
        }

        while (v224);
        v55 = (v55 - v39) & v39;
        a2 = (a2 + a11);
      }
    }

    return result;
  }

  v243 = a7;
  if (!*(a12 + 20))
  {
    v60 = *(a12 + 13);
    v61 = *(a12 + 12);
    v62 = 1 << v60;
    v63 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v63 = 0;
    }

    v64 = v61 + v60;
    result = v61 + v60 + v63;
    if (a6 >> v60)
    {
      v65 = 1;
    }

    else
    {
      v65 = 1 << v61 >= a5;
    }

    if (v65)
    {
      v66 = *(a12 + 12);
    }

    else
    {
      v66 = v61 + v60 + v63;
    }

    if (v65)
    {
      LOBYTE(v67) = *(a12 + 13);
    }

    else
    {
      v67 = -v63;
    }

    v68 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v68) = 0;
    }

    if (v62 < a6 && a5 >> v61 == 0)
    {
      LOBYTE(v67) = v64 - v68;
    }

    else
    {
      LOBYTE(v68) = v66;
    }

    v70 = 1 << v67;
    v71 = *(a12 + 15);
    v72 = 1 << v71;
    if (v71)
    {
      v73 = v72 > a3;
    }

    else
    {
      v73 = 1;
    }

    v74 = v73 || v72 > a4;
    v75 = (~(-1 << v71) + a3) & (-1 << v71);
    if (v74)
    {
      v76 = a3;
    }

    else
    {
      v76 = v75;
    }

    v257 = 1 << v67;
    v77 = v70 - 1;
    v252 = v67;
    v254 = a10 + a8;
    v256 = a8 >> v67;
    v251 = (v70 - 1 + a10 + a8) >> v67;
    if (a8 >> v67 >= v251)
    {
      return result;
    }

    result = (1 << v68);
    v78 = result - 1;
    v273 = a9 + a7;
    if (v70 >= a6)
    {
      v70 = a6;
    }

    v79 = 32 - __clz(v70 - 1);
    v80 = v70 > 1;
    v81 = v70 <= 1 ? 0 : v79;
    v82 = result >= a5 ? a5 : 1 << v68;
    v83 = 32 - __clz(v82 - 1);
    v84 = v82 > 1;
    v85 = v82 <= 1 ? 0 : v83;
    v265 = a7 >> v68;
    v271 = (result - 1 + a9 + a7) >> v68;
    if (a7 >> v68 >= v271)
    {
      return result;
    }

    v249 = (v76 + ~(-1 << v68)) >> v68;
    v86 = v78 & a7;
    v269 = v78 & v273;
    v267 = result - v86;
    v245 = v77 & v254;
    v247 = v77 & a8;
    v87 = v256;
    v242 = a2;
LABEL_90:
    v88 = v87 << v252;
    v89 = v87 - v256;
    v263 = v87 * v249;
    v259 = v87 + 1;
    v65 = v254 >= (v87 + 1) << v252;
    v90 = v257;
    v91 = v257 - v247;
    if (!v65)
    {
      v90 = v245;
      v91 = v16;
    }

    v92 = v89 << v252;
    if (v88 >= a8)
    {
      v93 = 0;
    }

    else
    {
      v93 = v247;
    }

    if (v88 >= a8)
    {
      v94 = v90;
    }

    else
    {
      v94 = v91;
    }

    v261 = (v93 + v92 - v247) * a11;
    v95 = v265;
    while (1)
    {
      v96 = v95 << v68;
      v97 = v95 + 1;
      v98 = a9;
      if (v273 >= (v95 + 1) << v68)
      {
        v98 = v267;
      }

      v99 = 1 << v68;
      if (v273 < v97 << v68)
      {
        v99 = v269;
      }

      if (v96 >= a7)
      {
        v100 = 0;
      }

      else
      {
        v100 = v86;
      }

      if (v96 < a7)
      {
        v99 = v98;
      }

      if (v81 | v85)
      {
        break;
      }

      v118 = 0;
      v102 = 0;
      v109 = 0;
      v125 = 0;
      if (v94)
      {
        goto LABEL_145;
      }

LABEL_99:
      v95 = v97;
      if (v97 == v271)
      {
        v87 = v259;
        v16 = a10;
        if (v259 == v251)
        {
          return result;
        }

        goto LABEL_90;
      }
    }

    v101 = 0;
    v102 = 0;
    v103 = 1;
    v104 = v84;
    v105 = v80;
    v106 = v85;
    v107 = v81;
    do
    {
      --v106;
      if (v104)
      {
        v102 |= (v103 & ~(-1 << v85)) << v101++;
      }

      else
      {
        v106 = 0;
      }

      if (v105)
      {
        --v107;
      }

      else
      {
        v107 = 0;
      }

      v103 *= 2;
      v101 = (__PAIR64__(v101, v105) - 1) >> 32;
      v105 = v107 != 0;
      v104 = v106 != 0;
    }

    while (v107 | v106);
    v108 = 0;
    v109 = 0;
    v110 = 1;
    v111 = v84;
    v112 = v80;
    v113 = v85;
    v114 = v81;
    do
    {
      --v113;
      if (!v111)
      {
        v113 = 0;
      }

      v115 = v108 + v111;
      if (v112)
      {
        --v114;
      }

      else
      {
        v114 = 0;
      }

      if (v112)
      {
        v109 |= (v110 & ~(-1 << v81)) << v115;
        v116 = v115 + 1;
      }

      else
      {
        v116 = v108 + v111;
      }

      v110 *= 2;
      v108 = v116 - 1;
      v112 = v114 != 0;
      v111 = v113 != 0;
    }

    while (v114 | v113);
    v117 = 0;
    v118 = 0;
    v119 = 1;
    v120 = v84;
    v121 = v80;
    v122 = v85;
    v123 = v81;
    do
    {
      --v122;
      if (v120)
      {
        v118 |= (v119 & v100) << v117;
        v124 = v117 + 1;
      }

      else
      {
        v122 = 0;
        v124 = v117;
      }

      --v123;
      if (!v121)
      {
        v123 = 0;
      }

      v119 *= 2;
      v117 = (__PAIR64__(v124, v121) - 1) >> 32;
      v121 = v123 != 0;
      v120 = v122 != 0;
    }

    while (v123 | v122);
    LODWORD(result) = 0;
    v125 = 0;
    v126 = 1;
    v127 = v84;
    v128 = v80;
    v129 = v85;
    v130 = v81;
    do
    {
      --v129;
      v131 = v127;
      if (!v131)
      {
        v129 = 0;
      }

      v132 = result + v131;
      --v130;
      if (v128)
      {
        v125 |= (v126 & v93) << v132++;
      }

      else
      {
        v130 = 0;
      }

      v126 *= 2;
      result = (v132 - 1);
      v128 = v130 != 0;
      v127 = v129 != 0;
    }

    while (v130 | v129);
    a7 = v243;
    if (!v94)
    {
      goto LABEL_99;
    }

LABEL_145:
    if (v99)
    {
      v133 = 0;
      v134 = (&v242[v100 + ((v95 - v265) << v68) - v86] + v261);
      v135 = (v95 + v263) * a12[3] * *(a12 + 9) + v14;
      do
      {
        LODWORD(result) = v99;
        v136 = v134;
        v137 = v118;
        do
        {
          *v136++ = *(v135 + 8 * (v137 + v125));
          v137 = (v137 - v102) & v102;
          result = (result - 1);
        }

        while (result);
        v125 = (v125 - v109) & v109;
        v134 = (v134 + a11);
        ++v133;
      }

      while (v133 != v94);
    }

    goto LABEL_99;
  }

  v17 = a2;
  v227 = a7;
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, v227, a8, a9, a10, v276);
  v20 = *(a12 + 13);
  v21 = *(a12 + 12);
  if (1 << v20 >= a6 || a5 >> v21)
  {
    v138 = a6 >> v20;
    v139 = 1 << v21;
    v140 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v140 = 0;
    }

    v141 = v139 >= a5;
    if (v139 < a5)
    {
      v142 = v21 + v20 + v140;
    }

    else
    {
      v142 = *(a12 + 12);
    }

    if (v141)
    {
      LOBYTE(v143) = *(a12 + 13);
    }

    else
    {
      v143 = -v140;
    }

    if (!v138)
    {
      v21 = v142;
    }

    v235 = v21;
    if (v138)
    {
      v23 = *(a12 + 13);
    }

    else
    {
      v23 = v143;
    }
  }

  else
  {
    v22 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v22) = 0;
    }

    v235 = v22;
    v23 = v21 + v20 - v22;
  }

  v144 = a10;
  v145 = a8;
  v234 = v282;
  if (v282)
  {
    v146 = 1 << v235;
    v147 = 1 << v23;
    if (1 << v23 >= a6)
    {
      v148 = a6;
    }

    else
    {
      v148 = 1 << v23;
    }

    v149 = 32 - __clz(v148 - 1);
    v150 = v148 > 1;
    if (v148 <= 1)
    {
      v151 = 0;
    }

    else
    {
      v151 = v149;
    }

    if (v146 >= a5)
    {
      v152 = a5;
    }

    else
    {
      v152 = 1 << v235;
    }

    v153 = 32 - __clz(v152 - 1);
    v154 = v283;
    v155 = v152 > 1;
    if (v152 <= 1)
    {
      v153 = 0;
    }

    v266 = v280;
    v268 = v153;
    v262 = v280 != 0;
    v264 = v281;
    v260 = v281 != 0;
    if (v283)
    {
      v156 = 0;
      v233 = v243 >> v235;
      v253 = a8 >> v23;
      v274 = v281 | v280;
      v275 = v279;
      v272 = v284;
      v232 = a9 + v243;
      v231 = (v146 - 1) & (a9 + v243);
      v229 = v277;
      v270 = v278;
      v230 = (v146 - 1) & v243;
      v228 = v146 - v230;
      v250 = (v147 - 1) & (a10 + a8);
      v248 = (v147 - 1) & a8;
      v246 = v147 - v248;
      v157 = ~(-1 << v153);
      v244 = v151 | v153;
      v258 = v152 > 1;
      v239 = v14;
      v237 = 1 << v23;
      v238 = v23;
      v255 = v283;
      do
      {
        v158 = 0;
        v159 = v229 + v156;
        v160 = (v156 + v233) << v235;
        v161 = a9;
        if (v232 >= (v156 + v233 + 1) << v235)
        {
          v161 = v228;
        }

        v162 = 1 << v235;
        if (v232 < (v156 + v233 + 1) << v235)
        {
          v162 = v231;
        }

        v236 = v156;
        if (v160 >= v243)
        {
          v163 = v162;
        }

        else
        {
          v163 = v161;
        }

        if (v160 >= v243)
        {
          v164 = 0;
        }

        else
        {
          v164 = v230;
        }

        v240 = &v17[v164 + (v156 << v235)];
        do
        {
          v165 = v270 + v158;
          if (v272)
          {
            v166 = v274;
            if (v274)
            {
              v167 = 0;
              v166 = 0;
              v168 = 1;
              v169 = v260;
              v170 = v262;
              v172 = v264;
              v171 = v266;
              do
              {
                --v171;
                if (v170)
                {
                  v166 |= (v168 & v159) << v167;
                }

                else
                {
                  v171 = 0;
                }

                if (v170)
                {
                  ++v167;
                }

                --v172;
                if (v169)
                {
                  v166 |= (v168 & v165) << v167;
                }

                else
                {
                  v172 = 0;
                }

                if (v169)
                {
                  ++v167;
                }

                v168 *= 2;
                --v167;
                v169 = v172 != 0;
                v170 = v171 != 0;
              }

              while (v172 | v171);
            }
          }

          else
          {
            v166 = v274;
            if (v274)
            {
              v173 = 0;
              v166 = 0;
              v174 = 1;
              v176 = v260;
              v175 = v262;
              v177 = v264;
              v178 = v266;
              do
              {
                --v177;
                if (v176)
                {
                  v166 |= (v174 & v165) << v173;
                }

                else
                {
                  v177 = 0;
                }

                if (v176)
                {
                  ++v173;
                }

                --v178;
                if (v175)
                {
                  v166 |= (v174 & v159) << v173;
                }

                else
                {
                  v178 = 0;
                }

                if (v175)
                {
                  ++v173;
                }

                v174 *= 2;
                --v173;
                v175 = v178 != 0;
                v176 = v177 != 0;
              }

              while (v178 | v177);
            }
          }

          v179 = *(v14 + 4 * ((v166 + v275) | ((v166 + v275) >> 8 << 9)));
          if (v179 < 0)
          {
            v180 = v14 - *(a13 + 3) + ((v179 & 0x1FFFFFFF) << 14);
            result = *a13;
            v181 = a13[2];
            if (result > v181)
            {
              v182 = v150;
              result = get_level_offset_within_tail(result, v181, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v155 = v258;
              v150 = v182;
              v147 = v237;
              v23 = v238;
              v14 = v239;
              v15 = a11;
              v145 = a8;
              v144 = a10;
              v180 += result;
            }

            v183 = (v158 + v253) << v23;
            v184 = v246;
            if (a10 + a8 >= (v158 + v253 + 1) << v23)
            {
              v185 = v147;
            }

            else
            {
              v184 = v144;
              v185 = v250;
            }

            if (v183 >= v145)
            {
              v186 = 0;
            }

            else
            {
              v186 = v248;
            }

            if (v183 >= v145)
            {
              v184 = v185;
            }

            if (!v244)
            {
              v204 = 0;
              v188 = 0;
              v195 = 0;
              v211 = 0;
              v154 = v255;
              if (!v184)
              {
                goto LABEL_190;
              }

LABEL_262:
              if (v163)
              {
                v218 = 0;
                v219 = (v240 + (v186 + (v158 << v23)) * v15);
                do
                {
                  v220 = v163;
                  v221 = v219;
                  v222 = v204;
                  do
                  {
                    result = *(v180 + 8 * (v222 + v211));
                    *v221++ = result;
                    v222 = (v222 - v188) & v188;
                    --v220;
                  }

                  while (v220);
                  v211 = (v211 - v195) & v195;
                  v219 = (v219 + v15);
                  ++v218;
                }

                while (v218 != v184);
              }

              goto LABEL_190;
            }

            v187 = 0;
            v188 = 0;
            v189 = 1;
            v190 = v155;
            v191 = v150;
            v192 = v268;
            v193 = v151;
            do
            {
              --v192;
              if (v190)
              {
                v188 |= (v189 & v157) << v187++;
              }

              else
              {
                v192 = 0;
              }

              --v193;
              if (!v191)
              {
                v193 = 0;
              }

              v189 *= 2;
              v187 = (__PAIR64__(v187, v191) - 1) >> 32;
              v191 = v193 != 0;
              v190 = v192 != 0;
            }

            while (v193 | v192);
            v194 = 0;
            v195 = 0;
            v196 = 1;
            v197 = v155;
            v198 = v150;
            v199 = v268;
            v200 = v151;
            do
            {
              --v199;
              v201 = v197;
              if (!v201)
              {
                v199 = 0;
              }

              v202 = v194 + v201;
              --v200;
              if (v198)
              {
                v195 |= (v196 & ~(-1 << v151)) << v202++;
              }

              else
              {
                v200 = 0;
              }

              v196 *= 2;
              v194 = v202 - 1;
              v198 = v200 != 0;
              v197 = v199 != 0;
            }

            while (v200 | v199);
            v203 = 0;
            v204 = 0;
            v205 = 1;
            v206 = v155;
            v207 = v150;
            v208 = v268;
            v209 = v151;
            do
            {
              --v208;
              if (v206)
              {
                v204 |= (v205 & v164) << v203++;
              }

              else
              {
                v208 = 0;
              }

              --v209;
              if (!v207)
              {
                v209 = 0;
              }

              v205 *= 2;
              v203 = (__PAIR64__(v203, v207) - 1) >> 32;
              v207 = v209 != 0;
              v206 = v208 != 0;
            }

            while (v209 | v208);
            v210 = 0;
            v211 = 0;
            v212 = 1;
            v213 = v155;
            LOBYTE(result) = v150;
            v214 = v268;
            v215 = v151;
            do
            {
              --v214;
              v216 = v213;
              if (!v216)
              {
                v214 = 0;
              }

              v217 = v210 + v216;
              --v215;
              if (result)
              {
                v211 |= (v212 & v186) << v217++;
              }

              else
              {
                v215 = 0;
              }

              v212 *= 2;
              v210 = v217 - 1;
              result = v215 != 0;
              v213 = v214 != 0;
            }

            while (v215 | v214);
            v154 = v255;
            v155 = v258;
            if (v184)
            {
              goto LABEL_262;
            }
          }

LABEL_190:
          ++v158;
        }

        while (v154 > v158);
        v156 = v236 + 1;
      }

      while (v234 > (v236 + 1));
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,1ul,4u,(TwiddleOrder)1>>(uint64_t result, _DWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v14 = result;
  v15 = a11;
  v16 = a10;
  if (!a12)
  {
    v24 = 32 - __clz(a6 - 1);
    v25 = a6 > 1;
    if (a6 <= 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = v24;
    }

    v27 = 32 - __clz(a5 - 1);
    v28 = a5 > 1;
    if (a5 <= 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = v27;
    }

    if (v26 | v29)
    {
      v30 = a2;
      v31 = 0;
      v32 = 0;
      v33 = a5 > 1;
      v34 = v25;
      v35 = 1;
      v36 = v29;
      v37 = v26;
      do
      {
        --v36;
        if (v33)
        {
          v32 |= (v35 & ~(-1 << v29)) << v31++;
        }

        else
        {
          v36 = 0;
        }

        --v37;
        if (!v34)
        {
          v37 = 0;
        }

        v35 *= 2;
        v31 = (__PAIR64__(v31, v34) - 1) >> 32;
        v34 = v37 != 0;
        v33 = v36 != 0;
      }

      while (v37 | v36);
      v38 = 0;
      v39 = 0;
      v40 = 1;
      v41 = a5 > 1;
      v42 = v25;
      v43 = v29;
      v44 = v26;
      do
      {
        --v43;
        v45 = v41;
        if (!v45)
        {
          v43 = 0;
        }

        v46 = v38 + v45;
        --v44;
        if (v42)
        {
          v39 |= (v40 & ~(-1 << v26)) << v46++;
        }

        else
        {
          v44 = 0;
        }

        v40 *= 2;
        v38 = v46 - 1;
        v42 = v44 != 0;
        v41 = v43 != 0;
      }

      while (v44 | v43);
      v47 = 0;
      v48 = 0;
      v49 = a5 > 1;
      v50 = v25;
      v51 = 1;
      v52 = v29;
      v53 = v26;
      do
      {
        --v52;
        if (v49)
        {
          v48 |= (v51 & a7) << v47++;
        }

        else
        {
          v52 = 0;
        }

        --v53;
        if (!v50)
        {
          v53 = 0;
        }

        v51 *= 2;
        v47 = (__PAIR64__(v47, v50) - 1) >> 32;
        v50 = v53 != 0;
        v49 = v52 != 0;
      }

      while (v53 | v52);
      v54 = 0;
      v55 = 0;
      v56 = 1;
      do
      {
        --v29;
        v57 = v28;
        if (!v57)
        {
          v29 = 0;
        }

        v58 = v54 + v57;
        --v26;
        if (v25)
        {
          v55 |= (v56 & a8) << v58;
          v59 = v58 + 1;
        }

        else
        {
          v26 = 0;
          v59 = v58;
        }

        v56 *= 2;
        v54 = v59 - 1;
        v25 = v26 != 0;
        v28 = v29 != 0;
        result = v26 | v29;
      }

      while (result);
      a2 = v30;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v48 = 0;
      v32 = 0;
      v39 = 0;
      v55 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      for (i = 0; i != a10; ++i)
      {
        v224 = a9;
        v225 = a2;
        v226 = v48;
        do
        {
          *v225++ = *(v14 + 4 * (v226 + v55));
          v226 = (v226 - v32) & v32;
          --v224;
        }

        while (v224);
        v55 = (v55 - v39) & v39;
        a2 = (a2 + a11);
      }
    }

    return result;
  }

  v243 = a7;
  if (!*(a12 + 20))
  {
    v60 = *(a12 + 13);
    v61 = *(a12 + 12);
    v62 = 1 << v60;
    v63 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v63 = 0;
    }

    v64 = v61 + v60;
    result = v61 + v60 + v63;
    if (a6 >> v60)
    {
      v65 = 1;
    }

    else
    {
      v65 = 1 << v61 >= a5;
    }

    if (v65)
    {
      v66 = *(a12 + 12);
    }

    else
    {
      v66 = v61 + v60 + v63;
    }

    if (v65)
    {
      LOBYTE(v67) = *(a12 + 13);
    }

    else
    {
      v67 = -v63;
    }

    v68 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v68) = 0;
    }

    if (v62 < a6 && a5 >> v61 == 0)
    {
      LOBYTE(v67) = v64 - v68;
    }

    else
    {
      LOBYTE(v68) = v66;
    }

    v70 = 1 << v67;
    v71 = *(a12 + 15);
    v72 = 1 << v71;
    if (v71)
    {
      v73 = v72 > a3;
    }

    else
    {
      v73 = 1;
    }

    v74 = v73 || v72 > a4;
    v75 = (~(-1 << v71) + a3) & (-1 << v71);
    if (v74)
    {
      v76 = a3;
    }

    else
    {
      v76 = v75;
    }

    v257 = 1 << v67;
    v77 = v70 - 1;
    v252 = v67;
    v254 = a10 + a8;
    v256 = a8 >> v67;
    v251 = (v70 - 1 + a10 + a8) >> v67;
    if (a8 >> v67 >= v251)
    {
      return result;
    }

    result = (1 << v68);
    v78 = result - 1;
    v273 = a9 + a7;
    if (v70 >= a6)
    {
      v70 = a6;
    }

    v79 = 32 - __clz(v70 - 1);
    v80 = v70 > 1;
    v81 = v70 <= 1 ? 0 : v79;
    v82 = result >= a5 ? a5 : 1 << v68;
    v83 = 32 - __clz(v82 - 1);
    v84 = v82 > 1;
    v85 = v82 <= 1 ? 0 : v83;
    v265 = a7 >> v68;
    v271 = (result - 1 + a9 + a7) >> v68;
    if (a7 >> v68 >= v271)
    {
      return result;
    }

    v249 = (v76 + ~(-1 << v68)) >> v68;
    v86 = v78 & a7;
    v269 = v78 & v273;
    v267 = result - v86;
    v245 = v77 & v254;
    v247 = v77 & a8;
    v87 = v256;
    v242 = a2;
LABEL_90:
    v88 = v87 << v252;
    v89 = v87 - v256;
    v263 = v87 * v249;
    v259 = v87 + 1;
    v65 = v254 >= (v87 + 1) << v252;
    v90 = v257;
    v91 = v257 - v247;
    if (!v65)
    {
      v90 = v245;
      v91 = v16;
    }

    v92 = v89 << v252;
    if (v88 >= a8)
    {
      v93 = 0;
    }

    else
    {
      v93 = v247;
    }

    if (v88 >= a8)
    {
      v94 = v90;
    }

    else
    {
      v94 = v91;
    }

    v261 = (v93 + v92 - v247) * a11;
    v95 = v265;
    while (1)
    {
      v96 = v95 << v68;
      v97 = v95 + 1;
      v98 = a9;
      if (v273 >= (v95 + 1) << v68)
      {
        v98 = v267;
      }

      v99 = 1 << v68;
      if (v273 < v97 << v68)
      {
        v99 = v269;
      }

      if (v96 >= a7)
      {
        v100 = 0;
      }

      else
      {
        v100 = v86;
      }

      if (v96 < a7)
      {
        v99 = v98;
      }

      if (v81 | v85)
      {
        break;
      }

      v118 = 0;
      v102 = 0;
      v109 = 0;
      v125 = 0;
      if (v94)
      {
        goto LABEL_145;
      }

LABEL_99:
      v95 = v97;
      if (v97 == v271)
      {
        v87 = v259;
        v16 = a10;
        if (v259 == v251)
        {
          return result;
        }

        goto LABEL_90;
      }
    }

    v101 = 0;
    v102 = 0;
    v103 = 1;
    v104 = v84;
    v105 = v80;
    v106 = v85;
    v107 = v81;
    do
    {
      --v106;
      if (v104)
      {
        v102 |= (v103 & ~(-1 << v85)) << v101++;
      }

      else
      {
        v106 = 0;
      }

      if (v105)
      {
        --v107;
      }

      else
      {
        v107 = 0;
      }

      v103 *= 2;
      v101 = (__PAIR64__(v101, v105) - 1) >> 32;
      v105 = v107 != 0;
      v104 = v106 != 0;
    }

    while (v107 | v106);
    v108 = 0;
    v109 = 0;
    v110 = 1;
    v111 = v84;
    v112 = v80;
    v113 = v85;
    v114 = v81;
    do
    {
      --v113;
      if (!v111)
      {
        v113 = 0;
      }

      v115 = v108 + v111;
      if (v112)
      {
        --v114;
      }

      else
      {
        v114 = 0;
      }

      if (v112)
      {
        v109 |= (v110 & ~(-1 << v81)) << v115;
        v116 = v115 + 1;
      }

      else
      {
        v116 = v108 + v111;
      }

      v110 *= 2;
      v108 = v116 - 1;
      v112 = v114 != 0;
      v111 = v113 != 0;
    }

    while (v114 | v113);
    v117 = 0;
    v118 = 0;
    v119 = 1;
    v120 = v84;
    v121 = v80;
    v122 = v85;
    v123 = v81;
    do
    {
      --v122;
      if (v120)
      {
        v118 |= (v119 & v100) << v117;
        v124 = v117 + 1;
      }

      else
      {
        v122 = 0;
        v124 = v117;
      }

      --v123;
      if (!v121)
      {
        v123 = 0;
      }

      v119 *= 2;
      v117 = (__PAIR64__(v124, v121) - 1) >> 32;
      v121 = v123 != 0;
      v120 = v122 != 0;
    }

    while (v123 | v122);
    LODWORD(result) = 0;
    v125 = 0;
    v126 = 1;
    v127 = v84;
    v128 = v80;
    v129 = v85;
    v130 = v81;
    do
    {
      --v129;
      v131 = v127;
      if (!v131)
      {
        v129 = 0;
      }

      v132 = result + v131;
      --v130;
      if (v128)
      {
        v125 |= (v126 & v93) << v132++;
      }

      else
      {
        v130 = 0;
      }

      v126 *= 2;
      result = (v132 - 1);
      v128 = v130 != 0;
      v127 = v129 != 0;
    }

    while (v130 | v129);
    a7 = v243;
    if (!v94)
    {
      goto LABEL_99;
    }

LABEL_145:
    if (v99)
    {
      v133 = 0;
      v134 = (&v242[v100 + ((v95 - v265) << v68) - v86] + v261);
      v135 = (v95 + v263) * a12[3] * *(a12 + 9) + v14;
      do
      {
        LODWORD(result) = v99;
        v136 = v134;
        v137 = v118;
        do
        {
          *v136++ = *(v135 + 4 * (v137 + v125));
          v137 = (v137 - v102) & v102;
          result = (result - 1);
        }

        while (result);
        v125 = (v125 - v109) & v109;
        v134 = (v134 + a11);
        ++v133;
      }

      while (v133 != v94);
    }

    goto LABEL_99;
  }

  v17 = a2;
  v227 = a7;
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, v227, a8, a9, a10, v276);
  v20 = *(a12 + 13);
  v21 = *(a12 + 12);
  if (1 << v20 >= a6 || a5 >> v21)
  {
    v138 = a6 >> v20;
    v139 = 1 << v21;
    v140 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v140 = 0;
    }

    v141 = v139 >= a5;
    if (v139 < a5)
    {
      v142 = v21 + v20 + v140;
    }

    else
    {
      v142 = *(a12 + 12);
    }

    if (v141)
    {
      LOBYTE(v143) = *(a12 + 13);
    }

    else
    {
      v143 = -v140;
    }

    if (!v138)
    {
      v21 = v142;
    }

    v235 = v21;
    if (v138)
    {
      v23 = *(a12 + 13);
    }

    else
    {
      v23 = v143;
    }
  }

  else
  {
    v22 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v22) = 0;
    }

    v235 = v22;
    v23 = v21 + v20 - v22;
  }

  v144 = a10;
  v145 = a8;
  v234 = v282;
  if (v282)
  {
    v146 = 1 << v235;
    v147 = 1 << v23;
    if (1 << v23 >= a6)
    {
      v148 = a6;
    }

    else
    {
      v148 = 1 << v23;
    }

    v149 = 32 - __clz(v148 - 1);
    v150 = v148 > 1;
    if (v148 <= 1)
    {
      v151 = 0;
    }

    else
    {
      v151 = v149;
    }

    if (v146 >= a5)
    {
      v152 = a5;
    }

    else
    {
      v152 = 1 << v235;
    }

    v153 = 32 - __clz(v152 - 1);
    v154 = v283;
    v155 = v152 > 1;
    if (v152 <= 1)
    {
      v153 = 0;
    }

    v266 = v280;
    v268 = v153;
    v262 = v280 != 0;
    v264 = v281;
    v260 = v281 != 0;
    if (v283)
    {
      v156 = 0;
      v233 = v243 >> v235;
      v253 = a8 >> v23;
      v274 = v281 | v280;
      v275 = v279;
      v272 = v284;
      v232 = a9 + v243;
      v231 = (v146 - 1) & (a9 + v243);
      v229 = v277;
      v270 = v278;
      v230 = (v146 - 1) & v243;
      v228 = v146 - v230;
      v250 = (v147 - 1) & (a10 + a8);
      v248 = (v147 - 1) & a8;
      v246 = v147 - v248;
      v157 = ~(-1 << v153);
      v244 = v151 | v153;
      v258 = v152 > 1;
      v239 = v14;
      v237 = 1 << v23;
      v238 = v23;
      v255 = v283;
      do
      {
        v158 = 0;
        v159 = v229 + v156;
        v160 = (v156 + v233) << v235;
        v161 = a9;
        if (v232 >= (v156 + v233 + 1) << v235)
        {
          v161 = v228;
        }

        v162 = 1 << v235;
        if (v232 < (v156 + v233 + 1) << v235)
        {
          v162 = v231;
        }

        v236 = v156;
        if (v160 >= v243)
        {
          v163 = v162;
        }

        else
        {
          v163 = v161;
        }

        if (v160 >= v243)
        {
          v164 = 0;
        }

        else
        {
          v164 = v230;
        }

        v240 = &v17[v164 + (v156 << v235)];
        do
        {
          v165 = v270 + v158;
          if (v272)
          {
            v166 = v274;
            if (v274)
            {
              v167 = 0;
              v166 = 0;
              v168 = 1;
              v169 = v260;
              v170 = v262;
              v172 = v264;
              v171 = v266;
              do
              {
                --v171;
                if (v170)
                {
                  v166 |= (v168 & v159) << v167;
                }

                else
                {
                  v171 = 0;
                }

                if (v170)
                {
                  ++v167;
                }

                --v172;
                if (v169)
                {
                  v166 |= (v168 & v165) << v167;
                }

                else
                {
                  v172 = 0;
                }

                if (v169)
                {
                  ++v167;
                }

                v168 *= 2;
                --v167;
                v169 = v172 != 0;
                v170 = v171 != 0;
              }

              while (v172 | v171);
            }
          }

          else
          {
            v166 = v274;
            if (v274)
            {
              v173 = 0;
              v166 = 0;
              v174 = 1;
              v176 = v260;
              v175 = v262;
              v177 = v264;
              v178 = v266;
              do
              {
                --v177;
                if (v176)
                {
                  v166 |= (v174 & v165) << v173;
                }

                else
                {
                  v177 = 0;
                }

                if (v176)
                {
                  ++v173;
                }

                --v178;
                if (v175)
                {
                  v166 |= (v174 & v159) << v173;
                }

                else
                {
                  v178 = 0;
                }

                if (v175)
                {
                  ++v173;
                }

                v174 *= 2;
                --v173;
                v175 = v178 != 0;
                v176 = v177 != 0;
              }

              while (v178 | v177);
            }
          }

          v179 = *(v14 + 4 * ((v166 + v275) | ((v166 + v275) >> 8 << 9)));
          if (v179 < 0)
          {
            v180 = v14 - *(a13 + 3) + ((v179 & 0x1FFFFFFF) << 14);
            result = *a13;
            v181 = a13[2];
            if (result > v181)
            {
              v182 = v150;
              result = get_level_offset_within_tail(result, v181, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v155 = v258;
              v150 = v182;
              v147 = v237;
              v23 = v238;
              v14 = v239;
              v15 = a11;
              v145 = a8;
              v144 = a10;
              v180 += result;
            }

            v183 = (v158 + v253) << v23;
            v184 = v246;
            if (a10 + a8 >= (v158 + v253 + 1) << v23)
            {
              v185 = v147;
            }

            else
            {
              v184 = v144;
              v185 = v250;
            }

            if (v183 >= v145)
            {
              v186 = 0;
            }

            else
            {
              v186 = v248;
            }

            if (v183 >= v145)
            {
              v184 = v185;
            }

            if (!v244)
            {
              v204 = 0;
              v188 = 0;
              v195 = 0;
              v211 = 0;
              v154 = v255;
              if (!v184)
              {
                goto LABEL_190;
              }

LABEL_262:
              if (v163)
              {
                v218 = 0;
                v219 = (v240 + (v186 + (v158 << v23)) * v15);
                do
                {
                  v220 = v163;
                  v221 = v219;
                  v222 = v204;
                  do
                  {
                    result = *(v180 + 4 * (v222 + v211));
                    *v221++ = result;
                    v222 = (v222 - v188) & v188;
                    --v220;
                  }

                  while (v220);
                  v211 = (v211 - v195) & v195;
                  v219 = (v219 + v15);
                  ++v218;
                }

                while (v218 != v184);
              }

              goto LABEL_190;
            }

            v187 = 0;
            v188 = 0;
            v189 = 1;
            v190 = v155;
            v191 = v150;
            v192 = v268;
            v193 = v151;
            do
            {
              --v192;
              if (v190)
              {
                v188 |= (v189 & v157) << v187++;
              }

              else
              {
                v192 = 0;
              }

              --v193;
              if (!v191)
              {
                v193 = 0;
              }

              v189 *= 2;
              v187 = (__PAIR64__(v187, v191) - 1) >> 32;
              v191 = v193 != 0;
              v190 = v192 != 0;
            }

            while (v193 | v192);
            v194 = 0;
            v195 = 0;
            v196 = 1;
            v197 = v155;
            v198 = v150;
            v199 = v268;
            v200 = v151;
            do
            {
              --v199;
              v201 = v197;
              if (!v201)
              {
                v199 = 0;
              }

              v202 = v194 + v201;
              --v200;
              if (v198)
              {
                v195 |= (v196 & ~(-1 << v151)) << v202++;
              }

              else
              {
                v200 = 0;
              }

              v196 *= 2;
              v194 = v202 - 1;
              v198 = v200 != 0;
              v197 = v199 != 0;
            }

            while (v200 | v199);
            v203 = 0;
            v204 = 0;
            v205 = 1;
            v206 = v155;
            v207 = v150;
            v208 = v268;
            v209 = v151;
            do
            {
              --v208;
              if (v206)
              {
                v204 |= (v205 & v164) << v203++;
              }

              else
              {
                v208 = 0;
              }

              --v209;
              if (!v207)
              {
                v209 = 0;
              }

              v205 *= 2;
              v203 = (__PAIR64__(v203, v207) - 1) >> 32;
              v207 = v209 != 0;
              v206 = v208 != 0;
            }

            while (v209 | v208);
            v210 = 0;
            v211 = 0;
            v212 = 1;
            v213 = v155;
            LOBYTE(result) = v150;
            v214 = v268;
            v215 = v151;
            do
            {
              --v214;
              v216 = v213;
              if (!v216)
              {
                v214 = 0;
              }

              v217 = v210 + v216;
              --v215;
              if (result)
              {
                v211 |= (v212 & v186) << v217++;
              }

              else
              {
                v215 = 0;
              }

              v212 *= 2;
              v210 = v217 - 1;
              result = v215 != 0;
              v213 = v214 != 0;
            }

            while (v215 | v214);
            v154 = v255;
            v155 = v258;
            if (v184)
            {
              goto LABEL_262;
            }
          }

LABEL_190:
          ++v158;
        }

        while (v154 > v158);
        v156 = v236 + 1;
      }

      while (v234 > (v236 + 1));
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,1ul,2u,(TwiddleOrder)1>>(uint64_t result, _WORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v14 = result;
  v15 = a11;
  v16 = a10;
  if (!a12)
  {
    v24 = 32 - __clz(a6 - 1);
    v25 = a6 > 1;
    if (a6 <= 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = v24;
    }

    v27 = 32 - __clz(a5 - 1);
    v28 = a5 > 1;
    if (a5 <= 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = v27;
    }

    if (v26 | v29)
    {
      v30 = a2;
      v31 = 0;
      v32 = 0;
      v33 = a5 > 1;
      v34 = v25;
      v35 = 1;
      v36 = v29;
      v37 = v26;
      do
      {
        --v36;
        if (v33)
        {
          v32 |= (v35 & ~(-1 << v29)) << v31++;
        }

        else
        {
          v36 = 0;
        }

        --v37;
        if (!v34)
        {
          v37 = 0;
        }

        v35 *= 2;
        v31 = (__PAIR64__(v31, v34) - 1) >> 32;
        v34 = v37 != 0;
        v33 = v36 != 0;
      }

      while (v37 | v36);
      v38 = 0;
      v39 = 0;
      v40 = 1;
      v41 = a5 > 1;
      v42 = v25;
      v43 = v29;
      v44 = v26;
      do
      {
        --v43;
        v45 = v41;
        if (!v45)
        {
          v43 = 0;
        }

        v46 = v38 + v45;
        --v44;
        if (v42)
        {
          v39 |= (v40 & ~(-1 << v26)) << v46++;
        }

        else
        {
          v44 = 0;
        }

        v40 *= 2;
        v38 = v46 - 1;
        v42 = v44 != 0;
        v41 = v43 != 0;
      }

      while (v44 | v43);
      v47 = 0;
      v48 = 0;
      v49 = a5 > 1;
      v50 = v25;
      v51 = 1;
      v52 = v29;
      v53 = v26;
      do
      {
        --v52;
        if (v49)
        {
          v48 |= (v51 & a7) << v47++;
        }

        else
        {
          v52 = 0;
        }

        --v53;
        if (!v50)
        {
          v53 = 0;
        }

        v51 *= 2;
        v47 = (__PAIR64__(v47, v50) - 1) >> 32;
        v50 = v53 != 0;
        v49 = v52 != 0;
      }

      while (v53 | v52);
      v54 = 0;
      v55 = 0;
      v56 = 1;
      do
      {
        --v29;
        v57 = v28;
        if (!v57)
        {
          v29 = 0;
        }

        v58 = v54 + v57;
        --v26;
        if (v25)
        {
          v55 |= (v56 & a8) << v58;
          v59 = v58 + 1;
        }

        else
        {
          v26 = 0;
          v59 = v58;
        }

        v56 *= 2;
        v54 = v59 - 1;
        v25 = v26 != 0;
        v28 = v29 != 0;
        result = v26 | v29;
      }

      while (result);
      a2 = v30;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v48 = 0;
      v32 = 0;
      v39 = 0;
      v55 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      for (i = 0; i != a10; ++i)
      {
        v224 = a9;
        v225 = a2;
        v226 = v48;
        do
        {
          *v225++ = *(v14 + 2 * (v226 + v55));
          v226 = (v226 - v32) & v32;
          --v224;
        }

        while (v224);
        v55 = (v55 - v39) & v39;
        a2 = (a2 + a11);
      }
    }

    return result;
  }

  v243 = a7;
  if (!*(a12 + 20))
  {
    v60 = *(a12 + 13);
    v61 = *(a12 + 12);
    v62 = 1 << v60;
    v63 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v63 = 0;
    }

    v64 = v61 + v60;
    result = v61 + v60 + v63;
    if (a6 >> v60)
    {
      v65 = 1;
    }

    else
    {
      v65 = 1 << v61 >= a5;
    }

    if (v65)
    {
      v66 = *(a12 + 12);
    }

    else
    {
      v66 = v61 + v60 + v63;
    }

    if (v65)
    {
      LOBYTE(v67) = *(a12 + 13);
    }

    else
    {
      v67 = -v63;
    }

    v68 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v68) = 0;
    }

    if (v62 < a6 && a5 >> v61 == 0)
    {
      LOBYTE(v67) = v64 - v68;
    }

    else
    {
      LOBYTE(v68) = v66;
    }

    v70 = 1 << v67;
    v71 = *(a12 + 15);
    v72 = 1 << v71;
    if (v71)
    {
      v73 = v72 > a3;
    }

    else
    {
      v73 = 1;
    }

    v74 = v73 || v72 > a4;
    v75 = (~(-1 << v71) + a3) & (-1 << v71);
    if (v74)
    {
      v76 = a3;
    }

    else
    {
      v76 = v75;
    }

    v257 = 1 << v67;
    v77 = v70 - 1;
    v252 = v67;
    v254 = a10 + a8;
    v256 = a8 >> v67;
    v251 = (v70 - 1 + a10 + a8) >> v67;
    if (a8 >> v67 >= v251)
    {
      return result;
    }

    result = (1 << v68);
    v78 = result - 1;
    v273 = a9 + a7;
    if (v70 >= a6)
    {
      v70 = a6;
    }

    v79 = 32 - __clz(v70 - 1);
    v80 = v70 > 1;
    v81 = v70 <= 1 ? 0 : v79;
    v82 = result >= a5 ? a5 : 1 << v68;
    v83 = 32 - __clz(v82 - 1);
    v84 = v82 > 1;
    v85 = v82 <= 1 ? 0 : v83;
    v265 = a7 >> v68;
    v271 = (result - 1 + a9 + a7) >> v68;
    if (a7 >> v68 >= v271)
    {
      return result;
    }

    v249 = (v76 + ~(-1 << v68)) >> v68;
    v86 = v78 & a7;
    v269 = v78 & v273;
    v267 = result - v86;
    v245 = v77 & v254;
    v247 = v77 & a8;
    v87 = v256;
    v242 = a2;
LABEL_90:
    v88 = v87 << v252;
    v89 = v87 - v256;
    v263 = v87 * v249;
    v259 = v87 + 1;
    v65 = v254 >= (v87 + 1) << v252;
    v90 = v257;
    v91 = v257 - v247;
    if (!v65)
    {
      v90 = v245;
      v91 = v16;
    }

    v92 = v89 << v252;
    if (v88 >= a8)
    {
      v93 = 0;
    }

    else
    {
      v93 = v247;
    }

    if (v88 >= a8)
    {
      v94 = v90;
    }

    else
    {
      v94 = v91;
    }

    v261 = (v93 + v92 - v247) * a11;
    v95 = v265;
    while (1)
    {
      v96 = v95 << v68;
      v97 = v95 + 1;
      v98 = a9;
      if (v273 >= (v95 + 1) << v68)
      {
        v98 = v267;
      }

      v99 = 1 << v68;
      if (v273 < v97 << v68)
      {
        v99 = v269;
      }

      if (v96 >= a7)
      {
        v100 = 0;
      }

      else
      {
        v100 = v86;
      }

      if (v96 < a7)
      {
        v99 = v98;
      }

      if (v81 | v85)
      {
        break;
      }

      v118 = 0;
      v102 = 0;
      v109 = 0;
      v125 = 0;
      if (v94)
      {
        goto LABEL_145;
      }

LABEL_99:
      v95 = v97;
      if (v97 == v271)
      {
        v87 = v259;
        v16 = a10;
        if (v259 == v251)
        {
          return result;
        }

        goto LABEL_90;
      }
    }

    v101 = 0;
    v102 = 0;
    v103 = 1;
    v104 = v84;
    v105 = v80;
    v106 = v85;
    v107 = v81;
    do
    {
      --v106;
      if (v104)
      {
        v102 |= (v103 & ~(-1 << v85)) << v101++;
      }

      else
      {
        v106 = 0;
      }

      if (v105)
      {
        --v107;
      }

      else
      {
        v107 = 0;
      }

      v103 *= 2;
      v101 = (__PAIR64__(v101, v105) - 1) >> 32;
      v105 = v107 != 0;
      v104 = v106 != 0;
    }

    while (v107 | v106);
    v108 = 0;
    v109 = 0;
    v110 = 1;
    v111 = v84;
    v112 = v80;
    v113 = v85;
    v114 = v81;
    do
    {
      --v113;
      if (!v111)
      {
        v113 = 0;
      }

      v115 = v108 + v111;
      if (v112)
      {
        --v114;
      }

      else
      {
        v114 = 0;
      }

      if (v112)
      {
        v109 |= (v110 & ~(-1 << v81)) << v115;
        v116 = v115 + 1;
      }

      else
      {
        v116 = v108 + v111;
      }

      v110 *= 2;
      v108 = v116 - 1;
      v112 = v114 != 0;
      v111 = v113 != 0;
    }

    while (v114 | v113);
    v117 = 0;
    v118 = 0;
    v119 = 1;
    v120 = v84;
    v121 = v80;
    v122 = v85;
    v123 = v81;
    do
    {
      --v122;
      if (v120)
      {
        v118 |= (v119 & v100) << v117;
        v124 = v117 + 1;
      }

      else
      {
        v122 = 0;
        v124 = v117;
      }

      --v123;
      if (!v121)
      {
        v123 = 0;
      }

      v119 *= 2;
      v117 = (__PAIR64__(v124, v121) - 1) >> 32;
      v121 = v123 != 0;
      v120 = v122 != 0;
    }

    while (v123 | v122);
    LODWORD(result) = 0;
    v125 = 0;
    v126 = 1;
    v127 = v84;
    v128 = v80;
    v129 = v85;
    v130 = v81;
    do
    {
      --v129;
      v131 = v127;
      if (!v131)
      {
        v129 = 0;
      }

      v132 = result + v131;
      --v130;
      if (v128)
      {
        v125 |= (v126 & v93) << v132++;
      }

      else
      {
        v130 = 0;
      }

      v126 *= 2;
      result = (v132 - 1);
      v128 = v130 != 0;
      v127 = v129 != 0;
    }

    while (v130 | v129);
    a7 = v243;
    if (!v94)
    {
      goto LABEL_99;
    }

LABEL_145:
    if (v99)
    {
      v133 = 0;
      v134 = (&v242[v100 + ((v95 - v265) << v68) - v86] + v261);
      v135 = (v95 + v263) * a12[3] * *(a12 + 9) + v14;
      do
      {
        LODWORD(result) = v99;
        v136 = v134;
        v137 = v118;
        do
        {
          *v136++ = *(v135 + 2 * (v137 + v125));
          v137 = (v137 - v102) & v102;
          result = (result - 1);
        }

        while (result);
        v125 = (v125 - v109) & v109;
        v134 = (v134 + a11);
        ++v133;
      }

      while (v133 != v94);
    }

    goto LABEL_99;
  }

  v17 = a2;
  v227 = a7;
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, v227, a8, a9, a10, v276);
  v20 = *(a12 + 13);
  v21 = *(a12 + 12);
  if (1 << v20 >= a6 || a5 >> v21)
  {
    v138 = a6 >> v20;
    v139 = 1 << v21;
    v140 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v140 = 0;
    }

    v141 = v139 >= a5;
    if (v139 < a5)
    {
      v142 = v21 + v20 + v140;
    }

    else
    {
      v142 = *(a12 + 12);
    }

    if (v141)
    {
      LOBYTE(v143) = *(a12 + 13);
    }

    else
    {
      v143 = -v140;
    }

    if (!v138)
    {
      v21 = v142;
    }

    v235 = v21;
    if (v138)
    {
      v23 = *(a12 + 13);
    }

    else
    {
      v23 = v143;
    }
  }

  else
  {
    v22 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v22) = 0;
    }

    v235 = v22;
    v23 = v21 + v20 - v22;
  }

  v144 = a10;
  v145 = a8;
  v234 = v282;
  if (v282)
  {
    v146 = 1 << v235;
    v147 = 1 << v23;
    if (1 << v23 >= a6)
    {
      v148 = a6;
    }

    else
    {
      v148 = 1 << v23;
    }

    v149 = 32 - __clz(v148 - 1);
    v150 = v148 > 1;
    if (v148 <= 1)
    {
      v151 = 0;
    }

    else
    {
      v151 = v149;
    }

    if (v146 >= a5)
    {
      v152 = a5;
    }

    else
    {
      v152 = 1 << v235;
    }

    v153 = 32 - __clz(v152 - 1);
    v154 = v283;
    v155 = v152 > 1;
    if (v152 <= 1)
    {
      v153 = 0;
    }

    v266 = v280;
    v268 = v153;
    v262 = v280 != 0;
    v264 = v281;
    v260 = v281 != 0;
    if (v283)
    {
      v156 = 0;
      v233 = v243 >> v235;
      v253 = a8 >> v23;
      v274 = v281 | v280;
      v275 = v279;
      v272 = v284;
      v232 = a9 + v243;
      v231 = (v146 - 1) & (a9 + v243);
      v229 = v277;
      v270 = v278;
      v230 = (v146 - 1) & v243;
      v228 = v146 - v230;
      v250 = (v147 - 1) & (a10 + a8);
      v248 = (v147 - 1) & a8;
      v246 = v147 - v248;
      v157 = ~(-1 << v153);
      v244 = v151 | v153;
      v258 = v152 > 1;
      v239 = v14;
      v237 = 1 << v23;
      v238 = v23;
      v255 = v283;
      do
      {
        v158 = 0;
        v159 = v229 + v156;
        v160 = (v156 + v233) << v235;
        v161 = a9;
        if (v232 >= (v156 + v233 + 1) << v235)
        {
          v161 = v228;
        }

        v162 = 1 << v235;
        if (v232 < (v156 + v233 + 1) << v235)
        {
          v162 = v231;
        }

        v236 = v156;
        if (v160 >= v243)
        {
          v163 = v162;
        }

        else
        {
          v163 = v161;
        }

        if (v160 >= v243)
        {
          v164 = 0;
        }

        else
        {
          v164 = v230;
        }

        v240 = &v17[v164 + (v156 << v235)];
        do
        {
          v165 = v270 + v158;
          if (v272)
          {
            v166 = v274;
            if (v274)
            {
              v167 = 0;
              v166 = 0;
              v168 = 1;
              v169 = v260;
              v170 = v262;
              v172 = v264;
              v171 = v266;
              do
              {
                --v171;
                if (v170)
                {
                  v166 |= (v168 & v159) << v167;
                }

                else
                {
                  v171 = 0;
                }

                if (v170)
                {
                  ++v167;
                }

                --v172;
                if (v169)
                {
                  v166 |= (v168 & v165) << v167;
                }

                else
                {
                  v172 = 0;
                }

                if (v169)
                {
                  ++v167;
                }

                v168 *= 2;
                --v167;
                v169 = v172 != 0;
                v170 = v171 != 0;
              }

              while (v172 | v171);
            }
          }

          else
          {
            v166 = v274;
            if (v274)
            {
              v173 = 0;
              v166 = 0;
              v174 = 1;
              v176 = v260;
              v175 = v262;
              v177 = v264;
              v178 = v266;
              do
              {
                --v177;
                if (v176)
                {
                  v166 |= (v174 & v165) << v173;
                }

                else
                {
                  v177 = 0;
                }

                if (v176)
                {
                  ++v173;
                }

                --v178;
                if (v175)
                {
                  v166 |= (v174 & v159) << v173;
                }

                else
                {
                  v178 = 0;
                }

                if (v175)
                {
                  ++v173;
                }

                v174 *= 2;
                --v173;
                v175 = v178 != 0;
                v176 = v177 != 0;
              }

              while (v178 | v177);
            }
          }

          v179 = *(v14 + 4 * ((v166 + v275) | ((v166 + v275) >> 8 << 9)));
          if (v179 < 0)
          {
            v180 = v14 - *(a13 + 3) + ((v179 & 0x1FFFFFFF) << 14);
            result = *a13;
            v181 = a13[2];
            if (result > v181)
            {
              v182 = v150;
              result = get_level_offset_within_tail(result, v181, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v155 = v258;
              v150 = v182;
              v147 = v237;
              v23 = v238;
              v14 = v239;
              v15 = a11;
              v145 = a8;
              v144 = a10;
              v180 += result;
            }

            v183 = (v158 + v253) << v23;
            v184 = v246;
            if (a10 + a8 >= (v158 + v253 + 1) << v23)
            {
              v185 = v147;
            }

            else
            {
              v184 = v144;
              v185 = v250;
            }

            if (v183 >= v145)
            {
              v186 = 0;
            }

            else
            {
              v186 = v248;
            }

            if (v183 >= v145)
            {
              v184 = v185;
            }

            if (!v244)
            {
              v204 = 0;
              v188 = 0;
              v195 = 0;
              v211 = 0;
              v154 = v255;
              if (!v184)
              {
                goto LABEL_190;
              }

LABEL_262:
              if (v163)
              {
                v218 = 0;
                v219 = (v240 + (v186 + (v158 << v23)) * v15);
                do
                {
                  v220 = v163;
                  v221 = v219;
                  v222 = v204;
                  do
                  {
                    result = *(v180 + 2 * (v222 + v211));
                    *v221++ = result;
                    v222 = (v222 - v188) & v188;
                    --v220;
                  }

                  while (v220);
                  v211 = (v211 - v195) & v195;
                  v219 = (v219 + v15);
                  ++v218;
                }

                while (v218 != v184);
              }

              goto LABEL_190;
            }

            v187 = 0;
            v188 = 0;
            v189 = 1;
            v190 = v155;
            v191 = v150;
            v192 = v268;
            v193 = v151;
            do
            {
              --v192;
              if (v190)
              {
                v188 |= (v189 & v157) << v187++;
              }

              else
              {
                v192 = 0;
              }

              --v193;
              if (!v191)
              {
                v193 = 0;
              }

              v189 *= 2;
              v187 = (__PAIR64__(v187, v191) - 1) >> 32;
              v191 = v193 != 0;
              v190 = v192 != 0;
            }

            while (v193 | v192);
            v194 = 0;
            v195 = 0;
            v196 = 1;
            v197 = v155;
            v198 = v150;
            v199 = v268;
            v200 = v151;
            do
            {
              --v199;
              v201 = v197;
              if (!v201)
              {
                v199 = 0;
              }

              v202 = v194 + v201;
              --v200;
              if (v198)
              {
                v195 |= (v196 & ~(-1 << v151)) << v202++;
              }

              else
              {
                v200 = 0;
              }

              v196 *= 2;
              v194 = v202 - 1;
              v198 = v200 != 0;
              v197 = v199 != 0;
            }

            while (v200 | v199);
            v203 = 0;
            v204 = 0;
            v205 = 1;
            v206 = v155;
            v207 = v150;
            v208 = v268;
            v209 = v151;
            do
            {
              --v208;
              if (v206)
              {
                v204 |= (v205 & v164) << v203++;
              }

              else
              {
                v208 = 0;
              }

              --v209;
              if (!v207)
              {
                v209 = 0;
              }

              v205 *= 2;
              v203 = (__PAIR64__(v203, v207) - 1) >> 32;
              v207 = v209 != 0;
              v206 = v208 != 0;
            }

            while (v209 | v208);
            v210 = 0;
            v211 = 0;
            v212 = 1;
            v213 = v155;
            LOBYTE(result) = v150;
            v214 = v268;
            v215 = v151;
            do
            {
              --v214;
              v216 = v213;
              if (!v216)
              {
                v214 = 0;
              }

              v217 = v210 + v216;
              --v215;
              if (result)
              {
                v211 |= (v212 & v186) << v217++;
              }

              else
              {
                v215 = 0;
              }

              v212 *= 2;
              v210 = v217 - 1;
              result = v215 != 0;
              v213 = v214 != 0;
            }

            while (v215 | v214);
            v154 = v255;
            v155 = v258;
            if (v184)
            {
              goto LABEL_262;
            }
          }

LABEL_190:
          ++v158;
        }

        while (v154 > v158);
        v156 = v236 + 1;
      }

      while (v234 > (v236 + 1));
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,2ul,8u,(TwiddleOrder)1>>(uint64_t result, _OWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, unsigned int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v14 = a11;
  v15 = a10;
  if (!a12)
  {
    v23 = 32 - __clz(a6 - 1);
    v24 = a6 > 1;
    if (a6 <= 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = v23;
    }

    v26 = 32 - __clz(a5 - 1);
    v27 = a5 > 1;
    if (a5 <= 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = v26;
    }

    if (v25 | v28)
    {
      v29 = a2;
      v30 = 0;
      v31 = 0;
      v32 = a5 > 1;
      v33 = v24;
      v34 = 1;
      v35 = v28;
      v36 = v25;
      do
      {
        --v35;
        if (v32)
        {
          v31 |= (v34 & ~(-1 << v28)) << v30++;
        }

        else
        {
          v35 = 0;
        }

        --v36;
        if (!v33)
        {
          v36 = 0;
        }

        v34 *= 2;
        v30 = (__PAIR64__(v30, v33) - 1) >> 32;
        v33 = v36 != 0;
        v32 = v35 != 0;
      }

      while (v36 | v35);
      v37 = 0;
      v38 = 0;
      v39 = 1;
      v40 = v27;
      v41 = v24;
      v42 = v28;
      v43 = v25;
      do
      {
        --v42;
        v44 = v40;
        if (!v44)
        {
          v42 = 0;
        }

        v45 = v37 + v44;
        if (v41)
        {
          --v43;
        }

        else
        {
          v43 = 0;
        }

        if (v41)
        {
          v38 |= (v39 & ~(-1 << v25)) << v45++;
        }

        v39 *= 2;
        v37 = v45 - 1;
        v41 = v43 != 0;
        v40 = v42 != 0;
      }

      while (v43 | v42);
      v46 = 0;
      v47 = 0;
      v48 = v27;
      v49 = v24;
      v50 = 1;
      v51 = v28;
      v52 = v25;
      do
      {
        --v51;
        if (v48)
        {
          v47 |= (v50 & a7) << v46++;
        }

        else
        {
          v51 = 0;
        }

        --v52;
        if (!v49)
        {
          v52 = 0;
        }

        v50 *= 2;
        v46 = (__PAIR64__(v46, v49) - 1) >> 32;
        v49 = v52 != 0;
        v48 = v51 != 0;
      }

      while (v52 | v51);
      v53 = 0;
      v54 = 0;
      v55 = 1;
      do
      {
        --v28;
        v56 = v27;
        if (!v56)
        {
          v28 = 0;
        }

        v57 = v53 + v56;
        --v25;
        if (v24)
        {
          v54 |= (v55 & a8) << v57;
          v58 = v57 + 1;
        }

        else
        {
          v25 = 0;
          v58 = v57;
        }

        v55 *= 2;
        v53 = v58 - 1;
        v24 = v25 != 0;
        v27 = v28 != 0;
      }

      while (v25 | v28);
      a2 = v29;
      v15 = a10;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v47 = 0;
      v31 = 0;
      v38 = 0;
      v54 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      v227 = 0;
      do
      {
        v228 = a9;
        v229 = a2;
        v230 = v47;
        do
        {
          *v229++ = *(result + 16 * (v230 + v54));
          v230 = (v230 - v31) & v31;
          --v228;
        }

        while (v228);
        v54 = (v54 - v38) & v38;
        a2 = (a2 + a11);
        ++v227;
      }

      while (v227 != v15);
    }

    return result;
  }

  v257 = result;
  v258 = a7;
  if (!*(a12 + 20))
  {
    v59 = *(a12 + 13);
    v60 = *(a12 + 12);
    v61 = 1 << v59;
    v62 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v62 = 0;
    }

    v63 = v60 + v59;
    result = v60 + v59 + v62;
    if (a6 >> v59)
    {
      v64 = 1;
    }

    else
    {
      v64 = 1 << v60 >= a5;
    }

    if (v64)
    {
      v65 = *(a12 + 12);
    }

    else
    {
      v65 = v60 + v59 + v62;
    }

    if (v64)
    {
      LOBYTE(v66) = *(a12 + 13);
    }

    else
    {
      v66 = -v62;
    }

    v67 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v67) = 0;
    }

    if (v61 < a6 && a5 >> v60 == 0)
    {
      LOBYTE(v66) = v63 - v67;
    }

    else
    {
      LOBYTE(v67) = v65;
    }

    v69 = 1 << v66;
    v70 = *(a12 + 15);
    v71 = 1 << v70;
    if (v70)
    {
      v72 = v71 > a3;
    }

    else
    {
      v72 = 1;
    }

    v73 = v72 || v71 > a4;
    v74 = (~(-1 << v70) + a3) & (-1 << v70);
    if (v73)
    {
      v75 = a3;
    }

    else
    {
      v75 = v74;
    }

    v263 = 1 << v66;
    v76 = v69 - 1;
    v259 = a10 + a8;
    v261 = a8 >> v66;
    v254 = (v69 - 1 + a10 + a8) >> v66;
    v256 = v66;
    if (a8 >> v66 >= v254)
    {
      return result;
    }

    result = a7 >> v67;
    v77 = (1 << v67) - 1;
    v277 = a9 + a7;
    if (v69 >= a6)
    {
      v69 = a6;
    }

    v78 = 32 - __clz(v69 - 1);
    v79 = v69 > 1;
    v80 = v69 <= 1 ? 0 : v78;
    v81 = 1 << v67 >= a5 ? a5 : 1 << v67;
    v82 = 32 - __clz(v81 - 1);
    v83 = v81 > 1;
    v84 = v81 <= 1 ? 0 : v82;
    v271 = a7 >> v67;
    v275 = (v77 + a9 + a7) >> v67;
    if (result >= v275)
    {
      return result;
    }

    v252 = (v75 + ~(-1 << v67)) >> v67;
    v85 = v77 & a7;
    v273 = v77 & v277;
    v249 = v76 & v259;
    v251 = v76 & a8;
    v86 = v261;
    v245 = a2;
LABEL_92:
    v87 = v86 << v256;
    v88 = v86 - v261;
    v269 = v86 * v252;
    v265 = v86 + 1;
    v64 = v259 >= (v86 + 1) << v256;
    v89 = v263;
    v90 = v263 - v251;
    if (!v64)
    {
      v89 = v249;
      v90 = v15;
    }

    v91 = v88 << v256;
    if (v87 >= a8)
    {
      v92 = 0;
    }

    else
    {
      v92 = v251;
    }

    if (v87 >= a8)
    {
      v93 = v89;
    }

    else
    {
      v93 = v90;
    }

    v267 = (v92 + v91 - v251) * a11;
    v94 = v271;
    while (1)
    {
      v95 = v94 << v67;
      v96 = v94 + 1;
      if (v277 >= (v94 + 1) << v67)
      {
        v97 = (1 << v67) - v85;
      }

      else
      {
        v97 = a9;
      }

      v98 = v273;
      if (v277 >= v96 << v67)
      {
        v98 = 1 << v67;
      }

      if (v95 >= a7)
      {
        v99 = 0;
      }

      else
      {
        v99 = v85;
      }

      if (v95 < a7)
      {
        v98 = v97;
      }

      if (v80 | v84)
      {
        break;
      }

      v116 = 0;
      v101 = 0;
      v108 = 0;
      v123 = 0;
      if (v93)
      {
        goto LABEL_147;
      }

LABEL_101:
      v94 = v96;
      a7 = v258;
      if (v96 == v275)
      {
        v86 = v265;
        v15 = a10;
        if (v265 == v254)
        {
          return result;
        }

        goto LABEL_92;
      }
    }

    v100 = 0;
    v101 = 0;
    v102 = 1;
    v103 = v83;
    v104 = v79;
    v105 = v84;
    v106 = v80;
    do
    {
      --v105;
      if (v103)
      {
        v101 |= (v102 & ~(-1 << v84)) << v100++;
      }

      else
      {
        v105 = 0;
      }

      if (v104)
      {
        --v106;
      }

      else
      {
        v106 = 0;
      }

      v102 *= 2;
      v100 = (__PAIR64__(v100, v104) - 1) >> 32;
      v104 = v106 != 0;
      v103 = v105 != 0;
    }

    while (v106 | v105);
    v107 = 0;
    v108 = 0;
    v109 = 1;
    v110 = v83;
    v111 = v79;
    v112 = v84;
    v113 = v80;
    do
    {
      --v112;
      if (!v110)
      {
        v112 = 0;
      }

      v114 = v107 + v110;
      if (v111)
      {
        --v113;
      }

      else
      {
        v113 = 0;
      }

      if (v111)
      {
        v108 |= (v109 & ~(-1 << v80)) << v114++;
      }

      v109 *= 2;
      v107 = v114 - 1;
      v111 = v113 != 0;
      v110 = v112 != 0;
    }

    while (v113 | v112);
    v115 = 0;
    v116 = 0;
    v117 = 1;
    v118 = v83;
    v119 = v79;
    v120 = v84;
    v121 = v80;
    do
    {
      --v120;
      if (v118)
      {
        v116 |= (v117 & v99) << v115;
        v122 = v115 + 1;
      }

      else
      {
        v120 = 0;
        v122 = v115;
      }

      --v121;
      if (!v119)
      {
        v121 = 0;
      }

      v117 *= 2;
      v115 = (__PAIR64__(v122, v119) - 1) >> 32;
      v119 = v121 != 0;
      v118 = v120 != 0;
    }

    while (v121 | v120);
    LODWORD(result) = 0;
    v123 = 0;
    v124 = 1;
    v125 = v83;
    v126 = v79;
    v127 = v84;
    v128 = v80;
    do
    {
      --v127;
      v129 = v125;
      if (!v129)
      {
        v127 = 0;
      }

      v130 = result + v129;
      --v128;
      if (v126)
      {
        v123 |= (v124 & v92) << v130++;
      }

      else
      {
        v128 = 0;
      }

      v124 *= 2;
      result = (v130 - 1);
      v126 = v128 != 0;
      v125 = v127 != 0;
    }

    while (v128 | v127);
    if (!v93)
    {
      goto LABEL_101;
    }

LABEL_147:
    if (v98)
    {
      v131 = 0;
      v132 = (&v245[v99 + ((v94 - v271) << v67) - v85] + v267);
      v133 = (v94 + v269) * a12[3] * *(a12 + 9) + v257;
      do
      {
        v134 = v98;
        v135 = v132;
        v136 = v116;
        do
        {
          *v135++ = *(v133 + 16 * (v136 + v123));
          v136 = (v136 - v101) & v101;
          --v134;
        }

        while (v134);
        result = v123 - v108;
        v123 = (v123 - v108) & v108;
        v132 = (v132 + a11);
        ++v131;
      }

      while (v131 != v93);
    }

    goto LABEL_101;
  }

  v16 = a2;
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v280);
  v19 = *(a12 + 13);
  v20 = *(a12 + 12);
  v244 = v16;
  if (1 << v19 >= a6 || a5 >> v20)
  {
    v137 = a6 >> v19;
    v138 = 1 << v20;
    v139 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v139 = 0;
    }

    v140 = v138 >= a5;
    if (v138 < a5)
    {
      v141 = v20 + v19 + v139;
    }

    else
    {
      v141 = *(a12 + 12);
    }

    if (v140)
    {
      LOBYTE(v142) = *(a12 + 13);
    }

    else
    {
      v142 = -v139;
    }

    if (!v137)
    {
      v20 = v141;
    }

    v238 = v20;
    if (v137)
    {
      v22 = *(a12 + 13);
    }

    else
    {
      v22 = v142;
    }
  }

  else
  {
    v21 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v21) = 0;
    }

    v238 = v21;
    v22 = v20 + v19 - v21;
  }

  v143 = v257;
  v144 = a10;
  v145 = a8;
  v236 = v286;
  if (v286)
  {
    v146 = 1 << v22;
    if (1 << v22 >= a6)
    {
      v147 = a6;
    }

    else
    {
      v147 = 1 << v22;
    }

    v148 = 32 - __clz(v147 - 1);
    v149 = v147 > 1;
    if (v147 <= 1)
    {
      v150 = 0;
    }

    else
    {
      v150 = v148;
    }

    v237 = 1 << v238;
    if (1 << v238 >= a5)
    {
      v151 = a5;
    }

    else
    {
      v151 = 1 << v238;
    }

    v152 = 32 - __clz(v151 - 1);
    v153 = v287;
    v154 = v151 > 1;
    if (v151 <= 1)
    {
      v152 = 0;
    }

    v270 = v284;
    v272 = v152;
    v266 = v284 != 0;
    v268 = v285;
    v264 = v285 != 0;
    if (v287)
    {
      v155 = 0;
      v156 = 0;
      v235 = a7 >> v238;
      v253 = a8 >> v22;
      v278 = v288;
      v279 = v283;
      v276 = v285 | v284;
      v234 = a9 + a7;
      v233 = (v237 - 1) & (a9 + a7);
      v232 = v281;
      v274 = v282;
      v231 = (v237 - 1) & a7;
      v248 = (v146 - 1) & a8;
      v250 = (v146 - 1) & (a10 + a8);
      v247 = v146 - v248;
      v157 = ~(-1 << v152);
      v246 = v150 | v152;
      v260 = v154;
      v240 = 1 << v22;
      v241 = v22;
      v255 = v287;
      do
      {
        v239 = v156;
        v158 = 0;
        v159 = 0;
        v160 = (v155 + v235) << v238;
        v161 = a9;
        if (v234 >= (v155 + v235 + 1) << v238)
        {
          v161 = v237 - v231;
        }

        v162 = 1 << v238;
        if (v234 < (v155 + v235 + 1) << v238)
        {
          v162 = v233;
        }

        v163 = v232 + v155;
        v164 = v155 << v238;
        if (v160 >= a7)
        {
          v165 = v162;
        }

        else
        {
          v165 = v161;
        }

        if (v160 >= a7)
        {
          v166 = 0;
        }

        else
        {
          v166 = v231;
        }

        v242 = &v244[v166 + v164];
        v167 = v144;
        v262 = v165;
        do
        {
          v168 = v274 + v158;
          if (v278)
          {
            v169 = v276;
            if (v276)
            {
              v170 = 0;
              v169 = 0;
              v171 = 1;
              v172 = v264;
              v173 = v266;
              v174 = v270;
              v175 = v268;
              do
              {
                --v174;
                if (v173)
                {
                  v169 |= (v171 & v163) << v170;
                }

                else
                {
                  v174 = 0;
                }

                if (v173)
                {
                  ++v170;
                }

                --v175;
                if (v172)
                {
                  v169 |= (v171 & v168) << v170;
                }

                else
                {
                  v175 = 0;
                }

                if (v172)
                {
                  ++v170;
                }

                v171 *= 2;
                --v170;
                v172 = v175 != 0;
                v173 = v174 != 0;
              }

              while (v175 | v174);
            }
          }

          else
          {
            v169 = v276;
            if (v276)
            {
              v176 = 0;
              v169 = 0;
              v177 = 1;
              v179 = v264;
              v178 = v266;
              v180 = v268;
              v181 = v270;
              do
              {
                --v180;
                if (v179)
                {
                  v169 |= (v177 & v168) << v176;
                }

                else
                {
                  v180 = 0;
                }

                if (v179)
                {
                  ++v176;
                }

                --v181;
                if (v178)
                {
                  v169 |= (v177 & v163) << v176;
                }

                else
                {
                  v181 = 0;
                }

                if (v178)
                {
                  ++v176;
                }

                v177 *= 2;
                --v176;
                v178 = v181 != 0;
                v179 = v180 != 0;
              }

              while (v181 | v180);
            }
          }

          v182 = *(v143 + 4 * ((v169 + v279) | ((v169 + v279) >> 8 << 9)));
          if (v182 < 0)
          {
            v183 = v143 - *(a13 + 3) + ((v182 & 0x1FFFFFFF) << 14);
            result = *a13;
            v184 = a13[2];
            if (result > v184)
            {
              v185 = v158;
              result = get_level_offset_within_tail(result, v184, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v154 = v260;
              v165 = v262;
              v158 = v185;
              v146 = v240;
              v22 = v241;
              v14 = a11;
              v145 = a8;
              v167 = a10;
              v143 = v257;
              v183 += result;
            }

            v186 = (v158 + v253) << v22;
            v187 = v247;
            if (a10 + a8 >= (v158 + v253 + 1) << v22)
            {
              v188 = v146;
            }

            else
            {
              v187 = v167;
              v188 = v250;
            }

            if (v186 >= v145)
            {
              v189 = 0;
            }

            else
            {
              v189 = v248;
            }

            if (v186 >= v145)
            {
              v187 = v188;
            }

            if (!v246)
            {
              v208 = 0;
              v192 = 0;
              v199 = 0;
              v215 = 0;
              v153 = v255;
              if (!v187)
              {
                goto LABEL_192;
              }

LABEL_264:
              if (v165)
              {
                v222 = 0;
                v223 = (v242 + (v189 + (v158 << v22)) * v14);
                do
                {
                  v224 = v165;
                  v225 = v223;
                  v226 = v208;
                  do
                  {
                    result = v226 + v215;
                    *v225++ = *(v183 + 16 * (v226 + v215));
                    v226 = (v226 - v192) & v192;
                    --v224;
                  }

                  while (v224);
                  v215 = (v215 - v199) & v199;
                  v223 = (v223 + v14);
                  ++v222;
                }

                while (v222 != v187);
              }

              goto LABEL_192;
            }

            v190 = v158;
            v191 = 0;
            v192 = 0;
            v193 = 1;
            v194 = v154;
            v195 = v149;
            v196 = v272;
            v197 = v150;
            do
            {
              --v196;
              if (v194)
              {
                v192 |= (v193 & v157) << v191++;
              }

              else
              {
                v196 = 0;
              }

              --v197;
              if (!v195)
              {
                v197 = 0;
              }

              v193 *= 2;
              v191 = (__PAIR64__(v191, v195) - 1) >> 32;
              v195 = v197 != 0;
              v194 = v196 != 0;
            }

            while (v197 | v196);
            v198 = 0;
            v199 = 0;
            v200 = 1;
            v201 = v154;
            v202 = v149;
            v203 = v272;
            v204 = v150;
            do
            {
              --v203;
              v205 = v201;
              if (!v205)
              {
                v203 = 0;
              }

              v206 = v198 + v205;
              --v204;
              if (v202)
              {
                v199 |= (v200 & ~(-1 << v150)) << v206++;
              }

              else
              {
                v204 = 0;
              }

              v200 *= 2;
              v198 = v206 - 1;
              v202 = v204 != 0;
              v201 = v203 != 0;
            }

            while (v204 | v203);
            v207 = 0;
            v208 = 0;
            v209 = 1;
            v210 = v154;
            v211 = v149;
            v212 = v272;
            v213 = v150;
            do
            {
              --v212;
              if (v210)
              {
                v208 |= (v209 & v166) << v207++;
              }

              else
              {
                v212 = 0;
              }

              --v213;
              if (!v211)
              {
                v213 = 0;
              }

              v209 *= 2;
              v207 = (__PAIR64__(v207, v211) - 1) >> 32;
              v211 = v213 != 0;
              v210 = v212 != 0;
            }

            while (v213 | v212);
            v214 = 0;
            v215 = 0;
            v216 = 1;
            v217 = v154;
            LOBYTE(result) = v149;
            v218 = v272;
            v219 = v150;
            do
            {
              --v218;
              v220 = v217;
              if (!v220)
              {
                v218 = 0;
              }

              v221 = v214 + v220;
              --v219;
              if (result)
              {
                v215 |= (v216 & v189) << v221++;
              }

              else
              {
                v219 = 0;
              }

              v216 *= 2;
              v214 = v221 - 1;
              result = v219 != 0;
              v217 = v218 != 0;
            }

            while (v219 | v218);
            v153 = v255;
            v158 = v190;
            v154 = v260;
            v165 = v262;
            if (v187)
            {
              goto LABEL_264;
            }
          }

LABEL_192:
          v158 = ++v159;
        }

        while (v153 > v159);
        v144 = v167;
        v156 = v239 + 1;
        v155 = (v239 + 1);
        a7 = v258;
      }

      while (v236 > v155);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,2ul,4u,(TwiddleOrder)1>>(uint64_t result, void *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v14 = result;
  v15 = a11;
  v16 = a10;
  if (!a12)
  {
    v24 = 32 - __clz(a6 - 1);
    v25 = a6 > 1;
    if (a6 <= 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = v24;
    }

    v27 = 32 - __clz(a5 - 1);
    v28 = a5 > 1;
    if (a5 <= 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = v27;
    }

    if (v26 | v29)
    {
      v30 = a2;
      v31 = 0;
      v32 = 0;
      v33 = a5 > 1;
      v34 = v25;
      v35 = 1;
      v36 = v29;
      v37 = v26;
      do
      {
        --v36;
        if (v33)
        {
          v32 |= (v35 & ~(-1 << v29)) << v31++;
        }

        else
        {
          v36 = 0;
        }

        --v37;
        if (!v34)
        {
          v37 = 0;
        }

        v35 *= 2;
        v31 = (__PAIR64__(v31, v34) - 1) >> 32;
        v34 = v37 != 0;
        v33 = v36 != 0;
      }

      while (v37 | v36);
      v38 = 0;
      v39 = 0;
      v40 = 1;
      v41 = a5 > 1;
      v42 = v25;
      v43 = v29;
      v44 = v26;
      do
      {
        --v43;
        v45 = v41;
        if (!v45)
        {
          v43 = 0;
        }

        v46 = v38 + v45;
        --v44;
        if (v42)
        {
          v39 |= (v40 & ~(-1 << v26)) << v46++;
        }

        else
        {
          v44 = 0;
        }

        v40 *= 2;
        v38 = v46 - 1;
        v42 = v44 != 0;
        v41 = v43 != 0;
      }

      while (v44 | v43);
      v47 = 0;
      v48 = 0;
      v49 = a5 > 1;
      v50 = v25;
      v51 = 1;
      v52 = v29;
      v53 = v26;
      do
      {
        --v52;
        if (v49)
        {
          v48 |= (v51 & a7) << v47++;
        }

        else
        {
          v52 = 0;
        }

        --v53;
        if (!v50)
        {
          v53 = 0;
        }

        v51 *= 2;
        v47 = (__PAIR64__(v47, v50) - 1) >> 32;
        v50 = v53 != 0;
        v49 = v52 != 0;
      }

      while (v53 | v52);
      v54 = 0;
      v55 = 0;
      v56 = 1;
      do
      {
        --v29;
        v57 = v28;
        if (!v57)
        {
          v29 = 0;
        }

        v58 = v54 + v57;
        --v26;
        if (v25)
        {
          v55 |= (v56 & a8) << v58;
          v59 = v58 + 1;
        }

        else
        {
          v26 = 0;
          v59 = v58;
        }

        v56 *= 2;
        v54 = v59 - 1;
        v25 = v26 != 0;
        v28 = v29 != 0;
        result = v26 | v29;
      }

      while (result);
      a2 = v30;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v48 = 0;
      v32 = 0;
      v39 = 0;
      v55 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      for (i = 0; i != a10; ++i)
      {
        v224 = a9;
        v225 = a2;
        v226 = v48;
        do
        {
          *v225++ = *(v14 + 8 * (v226 + v55));
          v226 = (v226 - v32) & v32;
          --v224;
        }

        while (v224);
        v55 = (v55 - v39) & v39;
        a2 = (a2 + a11);
      }
    }

    return result;
  }

  v243 = a7;
  if (!*(a12 + 20))
  {
    v60 = *(a12 + 13);
    v61 = *(a12 + 12);
    v62 = 1 << v60;
    v63 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v63 = 0;
    }

    v64 = v61 + v60;
    result = v61 + v60 + v63;
    if (a6 >> v60)
    {
      v65 = 1;
    }

    else
    {
      v65 = 1 << v61 >= a5;
    }

    if (v65)
    {
      v66 = *(a12 + 12);
    }

    else
    {
      v66 = v61 + v60 + v63;
    }

    if (v65)
    {
      LOBYTE(v67) = *(a12 + 13);
    }

    else
    {
      v67 = -v63;
    }

    v68 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v68) = 0;
    }

    if (v62 < a6 && a5 >> v61 == 0)
    {
      LOBYTE(v67) = v64 - v68;
    }

    else
    {
      LOBYTE(v68) = v66;
    }

    v70 = 1 << v67;
    v71 = *(a12 + 15);
    v72 = 1 << v71;
    if (v71)
    {
      v73 = v72 > a3;
    }

    else
    {
      v73 = 1;
    }

    v74 = v73 || v72 > a4;
    v75 = (~(-1 << v71) + a3) & (-1 << v71);
    if (v74)
    {
      v76 = a3;
    }

    else
    {
      v76 = v75;
    }

    v257 = 1 << v67;
    v77 = v70 - 1;
    v252 = v67;
    v254 = a10 + a8;
    v256 = a8 >> v67;
    v251 = (v70 - 1 + a10 + a8) >> v67;
    if (a8 >> v67 >= v251)
    {
      return result;
    }

    result = (1 << v68);
    v78 = result - 1;
    v273 = a9 + a7;
    if (v70 >= a6)
    {
      v70 = a6;
    }

    v79 = 32 - __clz(v70 - 1);
    v80 = v70 > 1;
    v81 = v70 <= 1 ? 0 : v79;
    v82 = result >= a5 ? a5 : 1 << v68;
    v83 = 32 - __clz(v82 - 1);
    v84 = v82 > 1;
    v85 = v82 <= 1 ? 0 : v83;
    v265 = a7 >> v68;
    v271 = (result - 1 + a9 + a7) >> v68;
    if (a7 >> v68 >= v271)
    {
      return result;
    }

    v249 = (v76 + ~(-1 << v68)) >> v68;
    v86 = v78 & a7;
    v269 = v78 & v273;
    v267 = result - v86;
    v245 = v77 & v254;
    v247 = v77 & a8;
    v87 = v256;
    v242 = a2;
LABEL_90:
    v88 = v87 << v252;
    v89 = v87 - v256;
    v263 = v87 * v249;
    v259 = v87 + 1;
    v65 = v254 >= (v87 + 1) << v252;
    v90 = v257;
    v91 = v257 - v247;
    if (!v65)
    {
      v90 = v245;
      v91 = v16;
    }

    v92 = v89 << v252;
    if (v88 >= a8)
    {
      v93 = 0;
    }

    else
    {
      v93 = v247;
    }

    if (v88 >= a8)
    {
      v94 = v90;
    }

    else
    {
      v94 = v91;
    }

    v261 = (v93 + v92 - v247) * a11;
    v95 = v265;
    while (1)
    {
      v96 = v95 << v68;
      v97 = v95 + 1;
      v98 = a9;
      if (v273 >= (v95 + 1) << v68)
      {
        v98 = v267;
      }

      v99 = 1 << v68;
      if (v273 < v97 << v68)
      {
        v99 = v269;
      }

      if (v96 >= a7)
      {
        v100 = 0;
      }

      else
      {
        v100 = v86;
      }

      if (v96 < a7)
      {
        v99 = v98;
      }

      if (v81 | v85)
      {
        break;
      }

      v118 = 0;
      v102 = 0;
      v109 = 0;
      v125 = 0;
      if (v94)
      {
        goto LABEL_145;
      }

LABEL_99:
      v95 = v97;
      if (v97 == v271)
      {
        v87 = v259;
        v16 = a10;
        if (v259 == v251)
        {
          return result;
        }

        goto LABEL_90;
      }
    }

    v101 = 0;
    v102 = 0;
    v103 = 1;
    v104 = v84;
    v105 = v80;
    v106 = v85;
    v107 = v81;
    do
    {
      --v106;
      if (v104)
      {
        v102 |= (v103 & ~(-1 << v85)) << v101++;
      }

      else
      {
        v106 = 0;
      }

      if (v105)
      {
        --v107;
      }

      else
      {
        v107 = 0;
      }

      v103 *= 2;
      v101 = (__PAIR64__(v101, v105) - 1) >> 32;
      v105 = v107 != 0;
      v104 = v106 != 0;
    }

    while (v107 | v106);
    v108 = 0;
    v109 = 0;
    v110 = 1;
    v111 = v84;
    v112 = v80;
    v113 = v85;
    v114 = v81;
    do
    {
      --v113;
      if (!v111)
      {
        v113 = 0;
      }

      v115 = v108 + v111;
      if (v112)
      {
        --v114;
      }

      else
      {
        v114 = 0;
      }

      if (v112)
      {
        v109 |= (v110 & ~(-1 << v81)) << v115;
        v116 = v115 + 1;
      }

      else
      {
        v116 = v108 + v111;
      }

      v110 *= 2;
      v108 = v116 - 1;
      v112 = v114 != 0;
      v111 = v113 != 0;
    }

    while (v114 | v113);
    v117 = 0;
    v118 = 0;
    v119 = 1;
    v120 = v84;
    v121 = v80;
    v122 = v85;
    v123 = v81;
    do
    {
      --v122;
      if (v120)
      {
        v118 |= (v119 & v100) << v117;
        v124 = v117 + 1;
      }

      else
      {
        v122 = 0;
        v124 = v117;
      }

      --v123;
      if (!v121)
      {
        v123 = 0;
      }

      v119 *= 2;
      v117 = (__PAIR64__(v124, v121) - 1) >> 32;
      v121 = v123 != 0;
      v120 = v122 != 0;
    }

    while (v123 | v122);
    LODWORD(result) = 0;
    v125 = 0;
    v126 = 1;
    v127 = v84;
    v128 = v80;
    v129 = v85;
    v130 = v81;
    do
    {
      --v129;
      v131 = v127;
      if (!v131)
      {
        v129 = 0;
      }

      v132 = result + v131;
      --v130;
      if (v128)
      {
        v125 |= (v126 & v93) << v132++;
      }

      else
      {
        v130 = 0;
      }

      v126 *= 2;
      result = (v132 - 1);
      v128 = v130 != 0;
      v127 = v129 != 0;
    }

    while (v130 | v129);
    a7 = v243;
    if (!v94)
    {
      goto LABEL_99;
    }

LABEL_145:
    if (v99)
    {
      v133 = 0;
      v134 = (&v242[v100 + ((v95 - v265) << v68) - v86] + v261);
      v135 = (v95 + v263) * a12[3] * *(a12 + 9) + v14;
      do
      {
        LODWORD(result) = v99;
        v136 = v134;
        v137 = v118;
        do
        {
          *v136++ = *(v135 + 8 * (v137 + v125));
          v137 = (v137 - v102) & v102;
          result = (result - 1);
        }

        while (result);
        v125 = (v125 - v109) & v109;
        v134 = (v134 + a11);
        ++v133;
      }

      while (v133 != v94);
    }

    goto LABEL_99;
  }

  v17 = a2;
  v227 = a7;
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, v227, a8, a9, a10, v276);
  v20 = *(a12 + 13);
  v21 = *(a12 + 12);
  if (1 << v20 >= a6 || a5 >> v21)
  {
    v138 = a6 >> v20;
    v139 = 1 << v21;
    v140 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v140 = 0;
    }

    v141 = v139 >= a5;
    if (v139 < a5)
    {
      v142 = v21 + v20 + v140;
    }

    else
    {
      v142 = *(a12 + 12);
    }

    if (v141)
    {
      LOBYTE(v143) = *(a12 + 13);
    }

    else
    {
      v143 = -v140;
    }

    if (!v138)
    {
      v21 = v142;
    }

    v235 = v21;
    if (v138)
    {
      v23 = *(a12 + 13);
    }

    else
    {
      v23 = v143;
    }
  }

  else
  {
    v22 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v22) = 0;
    }

    v235 = v22;
    v23 = v21 + v20 - v22;
  }

  v144 = a10;
  v145 = a8;
  v234 = v282;
  if (v282)
  {
    v146 = 1 << v235;
    v147 = 1 << v23;
    if (1 << v23 >= a6)
    {
      v148 = a6;
    }

    else
    {
      v148 = 1 << v23;
    }

    v149 = 32 - __clz(v148 - 1);
    v150 = v148 > 1;
    if (v148 <= 1)
    {
      v151 = 0;
    }

    else
    {
      v151 = v149;
    }

    if (v146 >= a5)
    {
      v152 = a5;
    }

    else
    {
      v152 = 1 << v235;
    }

    v153 = 32 - __clz(v152 - 1);
    v154 = v283;
    v155 = v152 > 1;
    if (v152 <= 1)
    {
      v153 = 0;
    }

    v266 = v280;
    v268 = v153;
    v262 = v280 != 0;
    v264 = v281;
    v260 = v281 != 0;
    if (v283)
    {
      v156 = 0;
      v233 = v243 >> v235;
      v253 = a8 >> v23;
      v274 = v281 | v280;
      v275 = v279;
      v272 = v284;
      v232 = a9 + v243;
      v231 = (v146 - 1) & (a9 + v243);
      v229 = v277;
      v270 = v278;
      v230 = (v146 - 1) & v243;
      v228 = v146 - v230;
      v250 = (v147 - 1) & (a10 + a8);
      v248 = (v147 - 1) & a8;
      v246 = v147 - v248;
      v157 = ~(-1 << v153);
      v244 = v151 | v153;
      v258 = v152 > 1;
      v239 = v14;
      v237 = 1 << v23;
      v238 = v23;
      v255 = v283;
      do
      {
        v158 = 0;
        v159 = v229 + v156;
        v160 = (v156 + v233) << v235;
        v161 = a9;
        if (v232 >= (v156 + v233 + 1) << v235)
        {
          v161 = v228;
        }

        v162 = 1 << v235;
        if (v232 < (v156 + v233 + 1) << v235)
        {
          v162 = v231;
        }

        v236 = v156;
        if (v160 >= v243)
        {
          v163 = v162;
        }

        else
        {
          v163 = v161;
        }

        if (v160 >= v243)
        {
          v164 = 0;
        }

        else
        {
          v164 = v230;
        }

        v240 = &v17[v164 + (v156 << v235)];
        do
        {
          v165 = v270 + v158;
          if (v272)
          {
            v166 = v274;
            if (v274)
            {
              v167 = 0;
              v166 = 0;
              v168 = 1;
              v169 = v260;
              v170 = v262;
              v172 = v264;
              v171 = v266;
              do
              {
                --v171;
                if (v170)
                {
                  v166 |= (v168 & v159) << v167;
                }

                else
                {
                  v171 = 0;
                }

                if (v170)
                {
                  ++v167;
                }

                --v172;
                if (v169)
                {
                  v166 |= (v168 & v165) << v167;
                }

                else
                {
                  v172 = 0;
                }

                if (v169)
                {
                  ++v167;
                }

                v168 *= 2;
                --v167;
                v169 = v172 != 0;
                v170 = v171 != 0;
              }

              while (v172 | v171);
            }
          }

          else
          {
            v166 = v274;
            if (v274)
            {
              v173 = 0;
              v166 = 0;
              v174 = 1;
              v176 = v260;
              v175 = v262;
              v177 = v264;
              v178 = v266;
              do
              {
                --v177;
                if (v176)
                {
                  v166 |= (v174 & v165) << v173;
                }

                else
                {
                  v177 = 0;
                }

                if (v176)
                {
                  ++v173;
                }

                --v178;
                if (v175)
                {
                  v166 |= (v174 & v159) << v173;
                }

                else
                {
                  v178 = 0;
                }

                if (v175)
                {
                  ++v173;
                }

                v174 *= 2;
                --v173;
                v175 = v178 != 0;
                v176 = v177 != 0;
              }

              while (v178 | v177);
            }
          }

          v179 = *(v14 + 4 * ((v166 + v275) | ((v166 + v275) >> 8 << 9)));
          if (v179 < 0)
          {
            v180 = v14 - *(a13 + 3) + ((v179 & 0x1FFFFFFF) << 14);
            result = *a13;
            v181 = a13[2];
            if (result > v181)
            {
              v182 = v150;
              result = get_level_offset_within_tail(result, v181, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v155 = v258;
              v150 = v182;
              v147 = v237;
              v23 = v238;
              v14 = v239;
              v15 = a11;
              v145 = a8;
              v144 = a10;
              v180 += result;
            }

            v183 = (v158 + v253) << v23;
            v184 = v246;
            if (a10 + a8 >= (v158 + v253 + 1) << v23)
            {
              v185 = v147;
            }

            else
            {
              v184 = v144;
              v185 = v250;
            }

            if (v183 >= v145)
            {
              v186 = 0;
            }

            else
            {
              v186 = v248;
            }

            if (v183 >= v145)
            {
              v184 = v185;
            }

            if (!v244)
            {
              v204 = 0;
              v188 = 0;
              v195 = 0;
              v211 = 0;
              v154 = v255;
              if (!v184)
              {
                goto LABEL_190;
              }

LABEL_262:
              if (v163)
              {
                v218 = 0;
                v219 = (v240 + (v186 + (v158 << v23)) * v15);
                do
                {
                  v220 = v163;
                  v221 = v219;
                  v222 = v204;
                  do
                  {
                    result = *(v180 + 8 * (v222 + v211));
                    *v221++ = result;
                    v222 = (v222 - v188) & v188;
                    --v220;
                  }

                  while (v220);
                  v211 = (v211 - v195) & v195;
                  v219 = (v219 + v15);
                  ++v218;
                }

                while (v218 != v184);
              }

              goto LABEL_190;
            }

            v187 = 0;
            v188 = 0;
            v189 = 1;
            v190 = v155;
            v191 = v150;
            v192 = v268;
            v193 = v151;
            do
            {
              --v192;
              if (v190)
              {
                v188 |= (v189 & v157) << v187++;
              }

              else
              {
                v192 = 0;
              }

              --v193;
              if (!v191)
              {
                v193 = 0;
              }

              v189 *= 2;
              v187 = (__PAIR64__(v187, v191) - 1) >> 32;
              v191 = v193 != 0;
              v190 = v192 != 0;
            }

            while (v193 | v192);
            v194 = 0;
            v195 = 0;
            v196 = 1;
            v197 = v155;
            v198 = v150;
            v199 = v268;
            v200 = v151;
            do
            {
              --v199;
              v201 = v197;
              if (!v201)
              {
                v199 = 0;
              }

              v202 = v194 + v201;
              --v200;
              if (v198)
              {
                v195 |= (v196 & ~(-1 << v151)) << v202++;
              }

              else
              {
                v200 = 0;
              }

              v196 *= 2;
              v194 = v202 - 1;
              v198 = v200 != 0;
              v197 = v199 != 0;
            }

            while (v200 | v199);
            v203 = 0;
            v204 = 0;
            v205 = 1;
            v206 = v155;
            v207 = v150;
            v208 = v268;
            v209 = v151;
            do
            {
              --v208;
              if (v206)
              {
                v204 |= (v205 & v164) << v203++;
              }

              else
              {
                v208 = 0;
              }

              --v209;
              if (!v207)
              {
                v209 = 0;
              }

              v205 *= 2;
              v203 = (__PAIR64__(v203, v207) - 1) >> 32;
              v207 = v209 != 0;
              v206 = v208 != 0;
            }

            while (v209 | v208);
            v210 = 0;
            v211 = 0;
            v212 = 1;
            v213 = v155;
            LOBYTE(result) = v150;
            v214 = v268;
            v215 = v151;
            do
            {
              --v214;
              v216 = v213;
              if (!v216)
              {
                v214 = 0;
              }

              v217 = v210 + v216;
              --v215;
              if (result)
              {
                v211 |= (v212 & v186) << v217++;
              }

              else
              {
                v215 = 0;
              }

              v212 *= 2;
              v210 = v217 - 1;
              result = v215 != 0;
              v213 = v214 != 0;
            }

            while (v215 | v214);
            v154 = v255;
            v155 = v258;
            if (v184)
            {
              goto LABEL_262;
            }
          }

LABEL_190:
          ++v158;
        }

        while (v154 > v158);
        v156 = v236 + 1;
      }

      while (v234 > (v236 + 1));
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,2ul,2u,(TwiddleOrder)1>>(uint64_t result, _DWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v14 = result;
  v15 = a11;
  v16 = a10;
  if (!a12)
  {
    v24 = 32 - __clz(a6 - 1);
    v25 = a6 > 1;
    if (a6 <= 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = v24;
    }

    v27 = 32 - __clz(a5 - 1);
    v28 = a5 > 1;
    if (a5 <= 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = v27;
    }

    if (v26 | v29)
    {
      v30 = a2;
      v31 = 0;
      v32 = 0;
      v33 = a5 > 1;
      v34 = v25;
      v35 = 1;
      v36 = v29;
      v37 = v26;
      do
      {
        --v36;
        if (v33)
        {
          v32 |= (v35 & ~(-1 << v29)) << v31++;
        }

        else
        {
          v36 = 0;
        }

        --v37;
        if (!v34)
        {
          v37 = 0;
        }

        v35 *= 2;
        v31 = (__PAIR64__(v31, v34) - 1) >> 32;
        v34 = v37 != 0;
        v33 = v36 != 0;
      }

      while (v37 | v36);
      v38 = 0;
      v39 = 0;
      v40 = 1;
      v41 = a5 > 1;
      v42 = v25;
      v43 = v29;
      v44 = v26;
      do
      {
        --v43;
        v45 = v41;
        if (!v45)
        {
          v43 = 0;
        }

        v46 = v38 + v45;
        --v44;
        if (v42)
        {
          v39 |= (v40 & ~(-1 << v26)) << v46++;
        }

        else
        {
          v44 = 0;
        }

        v40 *= 2;
        v38 = v46 - 1;
        v42 = v44 != 0;
        v41 = v43 != 0;
      }

      while (v44 | v43);
      v47 = 0;
      v48 = 0;
      v49 = a5 > 1;
      v50 = v25;
      v51 = 1;
      v52 = v29;
      v53 = v26;
      do
      {
        --v52;
        if (v49)
        {
          v48 |= (v51 & a7) << v47++;
        }

        else
        {
          v52 = 0;
        }

        --v53;
        if (!v50)
        {
          v53 = 0;
        }

        v51 *= 2;
        v47 = (__PAIR64__(v47, v50) - 1) >> 32;
        v50 = v53 != 0;
        v49 = v52 != 0;
      }

      while (v53 | v52);
      v54 = 0;
      v55 = 0;
      v56 = 1;
      do
      {
        --v29;
        v57 = v28;
        if (!v57)
        {
          v29 = 0;
        }

        v58 = v54 + v57;
        --v26;
        if (v25)
        {
          v55 |= (v56 & a8) << v58;
          v59 = v58 + 1;
        }

        else
        {
          v26 = 0;
          v59 = v58;
        }

        v56 *= 2;
        v54 = v59 - 1;
        v25 = v26 != 0;
        v28 = v29 != 0;
        result = v26 | v29;
      }

      while (result);
      a2 = v30;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v48 = 0;
      v32 = 0;
      v39 = 0;
      v55 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      for (i = 0; i != a10; ++i)
      {
        v224 = a9;
        v225 = a2;
        v226 = v48;
        do
        {
          *v225++ = *(v14 + 4 * (v226 + v55));
          v226 = (v226 - v32) & v32;
          --v224;
        }

        while (v224);
        v55 = (v55 - v39) & v39;
        a2 = (a2 + a11);
      }
    }

    return result;
  }

  v243 = a7;
  if (!*(a12 + 20))
  {
    v60 = *(a12 + 13);
    v61 = *(a12 + 12);
    v62 = 1 << v60;
    v63 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v63 = 0;
    }

    v64 = v61 + v60;
    result = v61 + v60 + v63;
    if (a6 >> v60)
    {
      v65 = 1;
    }

    else
    {
      v65 = 1 << v61 >= a5;
    }

    if (v65)
    {
      v66 = *(a12 + 12);
    }

    else
    {
      v66 = v61 + v60 + v63;
    }

    if (v65)
    {
      LOBYTE(v67) = *(a12 + 13);
    }

    else
    {
      v67 = -v63;
    }

    v68 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v68) = 0;
    }

    if (v62 < a6 && a5 >> v61 == 0)
    {
      LOBYTE(v67) = v64 - v68;
    }

    else
    {
      LOBYTE(v68) = v66;
    }

    v70 = 1 << v67;
    v71 = *(a12 + 15);
    v72 = 1 << v71;
    if (v71)
    {
      v73 = v72 > a3;
    }

    else
    {
      v73 = 1;
    }

    v74 = v73 || v72 > a4;
    v75 = (~(-1 << v71) + a3) & (-1 << v71);
    if (v74)
    {
      v76 = a3;
    }

    else
    {
      v76 = v75;
    }

    v257 = 1 << v67;
    v77 = v70 - 1;
    v252 = v67;
    v254 = a10 + a8;
    v256 = a8 >> v67;
    v251 = (v70 - 1 + a10 + a8) >> v67;
    if (a8 >> v67 >= v251)
    {
      return result;
    }

    result = (1 << v68);
    v78 = result - 1;
    v273 = a9 + a7;
    if (v70 >= a6)
    {
      v70 = a6;
    }

    v79 = 32 - __clz(v70 - 1);
    v80 = v70 > 1;
    v81 = v70 <= 1 ? 0 : v79;
    v82 = result >= a5 ? a5 : 1 << v68;
    v83 = 32 - __clz(v82 - 1);
    v84 = v82 > 1;
    v85 = v82 <= 1 ? 0 : v83;
    v265 = a7 >> v68;
    v271 = (result - 1 + a9 + a7) >> v68;
    if (a7 >> v68 >= v271)
    {
      return result;
    }

    v249 = (v76 + ~(-1 << v68)) >> v68;
    v86 = v78 & a7;
    v269 = v78 & v273;
    v267 = result - v86;
    v245 = v77 & v254;
    v247 = v77 & a8;
    v87 = v256;
    v242 = a2;
LABEL_90:
    v88 = v87 << v252;
    v89 = v87 - v256;
    v263 = v87 * v249;
    v259 = v87 + 1;
    v65 = v254 >= (v87 + 1) << v252;
    v90 = v257;
    v91 = v257 - v247;
    if (!v65)
    {
      v90 = v245;
      v91 = v16;
    }

    v92 = v89 << v252;
    if (v88 >= a8)
    {
      v93 = 0;
    }

    else
    {
      v93 = v247;
    }

    if (v88 >= a8)
    {
      v94 = v90;
    }

    else
    {
      v94 = v91;
    }

    v261 = (v93 + v92 - v247) * a11;
    v95 = v265;
    while (1)
    {
      v96 = v95 << v68;
      v97 = v95 + 1;
      v98 = a9;
      if (v273 >= (v95 + 1) << v68)
      {
        v98 = v267;
      }

      v99 = 1 << v68;
      if (v273 < v97 << v68)
      {
        v99 = v269;
      }

      if (v96 >= a7)
      {
        v100 = 0;
      }

      else
      {
        v100 = v86;
      }

      if (v96 < a7)
      {
        v99 = v98;
      }

      if (v81 | v85)
      {
        break;
      }

      v118 = 0;
      v102 = 0;
      v109 = 0;
      v125 = 0;
      if (v94)
      {
        goto LABEL_145;
      }

LABEL_99:
      v95 = v97;
      if (v97 == v271)
      {
        v87 = v259;
        v16 = a10;
        if (v259 == v251)
        {
          return result;
        }

        goto LABEL_90;
      }
    }

    v101 = 0;
    v102 = 0;
    v103 = 1;
    v104 = v84;
    v105 = v80;
    v106 = v85;
    v107 = v81;
    do
    {
      --v106;
      if (v104)
      {
        v102 |= (v103 & ~(-1 << v85)) << v101++;
      }

      else
      {
        v106 = 0;
      }

      if (v105)
      {
        --v107;
      }

      else
      {
        v107 = 0;
      }

      v103 *= 2;
      v101 = (__PAIR64__(v101, v105) - 1) >> 32;
      v105 = v107 != 0;
      v104 = v106 != 0;
    }

    while (v107 | v106);
    v108 = 0;
    v109 = 0;
    v110 = 1;
    v111 = v84;
    v112 = v80;
    v113 = v85;
    v114 = v81;
    do
    {
      --v113;
      if (!v111)
      {
        v113 = 0;
      }

      v115 = v108 + v111;
      if (v112)
      {
        --v114;
      }

      else
      {
        v114 = 0;
      }

      if (v112)
      {
        v109 |= (v110 & ~(-1 << v81)) << v115;
        v116 = v115 + 1;
      }

      else
      {
        v116 = v108 + v111;
      }

      v110 *= 2;
      v108 = v116 - 1;
      v112 = v114 != 0;
      v111 = v113 != 0;
    }

    while (v114 | v113);
    v117 = 0;
    v118 = 0;
    v119 = 1;
    v120 = v84;
    v121 = v80;
    v122 = v85;
    v123 = v81;
    do
    {
      --v122;
      if (v120)
      {
        v118 |= (v119 & v100) << v117;
        v124 = v117 + 1;
      }

      else
      {
        v122 = 0;
        v124 = v117;
      }

      --v123;
      if (!v121)
      {
        v123 = 0;
      }

      v119 *= 2;
      v117 = (__PAIR64__(v124, v121) - 1) >> 32;
      v121 = v123 != 0;
      v120 = v122 != 0;
    }

    while (v123 | v122);
    LODWORD(result) = 0;
    v125 = 0;
    v126 = 1;
    v127 = v84;
    v128 = v80;
    v129 = v85;
    v130 = v81;
    do
    {
      --v129;
      v131 = v127;
      if (!v131)
      {
        v129 = 0;
      }

      v132 = result + v131;
      --v130;
      if (v128)
      {
        v125 |= (v126 & v93) << v132++;
      }

      else
      {
        v130 = 0;
      }

      v126 *= 2;
      result = (v132 - 1);
      v128 = v130 != 0;
      v127 = v129 != 0;
    }

    while (v130 | v129);
    a7 = v243;
    if (!v94)
    {
      goto LABEL_99;
    }

LABEL_145:
    if (v99)
    {
      v133 = 0;
      v134 = (&v242[v100 + ((v95 - v265) << v68) - v86] + v261);
      v135 = (v95 + v263) * a12[3] * *(a12 + 9) + v14;
      do
      {
        LODWORD(result) = v99;
        v136 = v134;
        v137 = v118;
        do
        {
          *v136++ = *(v135 + 4 * (v137 + v125));
          v137 = (v137 - v102) & v102;
          result = (result - 1);
        }

        while (result);
        v125 = (v125 - v109) & v109;
        v134 = (v134 + a11);
        ++v133;
      }

      while (v133 != v94);
    }

    goto LABEL_99;
  }

  v17 = a2;
  v227 = a7;
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, v227, a8, a9, a10, v276);
  v20 = *(a12 + 13);
  v21 = *(a12 + 12);
  if (1 << v20 >= a6 || a5 >> v21)
  {
    v138 = a6 >> v20;
    v139 = 1 << v21;
    v140 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v140 = 0;
    }

    v141 = v139 >= a5;
    if (v139 < a5)
    {
      v142 = v21 + v20 + v140;
    }

    else
    {
      v142 = *(a12 + 12);
    }

    if (v141)
    {
      LOBYTE(v143) = *(a12 + 13);
    }

    else
    {
      v143 = -v140;
    }

    if (!v138)
    {
      v21 = v142;
    }

    v235 = v21;
    if (v138)
    {
      v23 = *(a12 + 13);
    }

    else
    {
      v23 = v143;
    }
  }

  else
  {
    v22 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v22) = 0;
    }

    v235 = v22;
    v23 = v21 + v20 - v22;
  }

  v144 = a10;
  v145 = a8;
  v234 = v282;
  if (v282)
  {
    v146 = 1 << v235;
    v147 = 1 << v23;
    if (1 << v23 >= a6)
    {
      v148 = a6;
    }

    else
    {
      v148 = 1 << v23;
    }

    v149 = 32 - __clz(v148 - 1);
    v150 = v148 > 1;
    if (v148 <= 1)
    {
      v151 = 0;
    }

    else
    {
      v151 = v149;
    }

    if (v146 >= a5)
    {
      v152 = a5;
    }

    else
    {
      v152 = 1 << v235;
    }

    v153 = 32 - __clz(v152 - 1);
    v154 = v283;
    v155 = v152 > 1;
    if (v152 <= 1)
    {
      v153 = 0;
    }

    v266 = v280;
    v268 = v153;
    v262 = v280 != 0;
    v264 = v281;
    v260 = v281 != 0;
    if (v283)
    {
      v156 = 0;
      v233 = v243 >> v235;
      v253 = a8 >> v23;
      v274 = v281 | v280;
      v275 = v279;
      v272 = v284;
      v232 = a9 + v243;
      v231 = (v146 - 1) & (a9 + v243);
      v229 = v277;
      v270 = v278;
      v230 = (v146 - 1) & v243;
      v228 = v146 - v230;
      v250 = (v147 - 1) & (a10 + a8);
      v248 = (v147 - 1) & a8;
      v246 = v147 - v248;
      v157 = ~(-1 << v153);
      v244 = v151 | v153;
      v258 = v152 > 1;
      v239 = v14;
      v237 = 1 << v23;
      v238 = v23;
      v255 = v283;
      do
      {
        v158 = 0;
        v159 = v229 + v156;
        v160 = (v156 + v233) << v235;
        v161 = a9;
        if (v232 >= (v156 + v233 + 1) << v235)
        {
          v161 = v228;
        }

        v162 = 1 << v235;
        if (v232 < (v156 + v233 + 1) << v235)
        {
          v162 = v231;
        }

        v236 = v156;
        if (v160 >= v243)
        {
          v163 = v162;
        }

        else
        {
          v163 = v161;
        }

        if (v160 >= v243)
        {
          v164 = 0;
        }

        else
        {
          v164 = v230;
        }

        v240 = &v17[v164 + (v156 << v235)];
        do
        {
          v165 = v270 + v158;
          if (v272)
          {
            v166 = v274;
            if (v274)
            {
              v167 = 0;
              v166 = 0;
              v168 = 1;
              v169 = v260;
              v170 = v262;
              v172 = v264;
              v171 = v266;
              do
              {
                --v171;
                if (v170)
                {
                  v166 |= (v168 & v159) << v167;
                }

                else
                {
                  v171 = 0;
                }

                if (v170)
                {
                  ++v167;
                }

                --v172;
                if (v169)
                {
                  v166 |= (v168 & v165) << v167;
                }

                else
                {
                  v172 = 0;
                }

                if (v169)
                {
                  ++v167;
                }

                v168 *= 2;
                --v167;
                v169 = v172 != 0;
                v170 = v171 != 0;
              }

              while (v172 | v171);
            }
          }

          else
          {
            v166 = v274;
            if (v274)
            {
              v173 = 0;
              v166 = 0;
              v174 = 1;
              v176 = v260;
              v175 = v262;
              v177 = v264;
              v178 = v266;
              do
              {
                --v177;
                if (v176)
                {
                  v166 |= (v174 & v165) << v173;
                }

                else
                {
                  v177 = 0;
                }

                if (v176)
                {
                  ++v173;
                }

                --v178;
                if (v175)
                {
                  v166 |= (v174 & v159) << v173;
                }

                else
                {
                  v178 = 0;
                }

                if (v175)
                {
                  ++v173;
                }

                v174 *= 2;
                --v173;
                v175 = v178 != 0;
                v176 = v177 != 0;
              }

              while (v178 | v177);
            }
          }

          v179 = *(v14 + 4 * ((v166 + v275) | ((v166 + v275) >> 8 << 9)));
          if (v179 < 0)
          {
            v180 = v14 - *(a13 + 3) + ((v179 & 0x1FFFFFFF) << 14);
            result = *a13;
            v181 = a13[2];
            if (result > v181)
            {
              v182 = v150;
              result = get_level_offset_within_tail(result, v181, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v155 = v258;
              v150 = v182;
              v147 = v237;
              v23 = v238;
              v14 = v239;
              v15 = a11;
              v145 = a8;
              v144 = a10;
              v180 += result;
            }

            v183 = (v158 + v253) << v23;
            v184 = v246;
            if (a10 + a8 >= (v158 + v253 + 1) << v23)
            {
              v185 = v147;
            }

            else
            {
              v184 = v144;
              v185 = v250;
            }

            if (v183 >= v145)
            {
              v186 = 0;
            }

            else
            {
              v186 = v248;
            }

            if (v183 >= v145)
            {
              v184 = v185;
            }

            if (!v244)
            {
              v204 = 0;
              v188 = 0;
              v195 = 0;
              v211 = 0;
              v154 = v255;
              if (!v184)
              {
                goto LABEL_190;
              }

LABEL_262:
              if (v163)
              {
                v218 = 0;
                v219 = (v240 + (v186 + (v158 << v23)) * v15);
                do
                {
                  v220 = v163;
                  v221 = v219;
                  v222 = v204;
                  do
                  {
                    result = *(v180 + 4 * (v222 + v211));
                    *v221++ = result;
                    v222 = (v222 - v188) & v188;
                    --v220;
                  }

                  while (v220);
                  v211 = (v211 - v195) & v195;
                  v219 = (v219 + v15);
                  ++v218;
                }

                while (v218 != v184);
              }

              goto LABEL_190;
            }

            v187 = 0;
            v188 = 0;
            v189 = 1;
            v190 = v155;
            v191 = v150;
            v192 = v268;
            v193 = v151;
            do
            {
              --v192;
              if (v190)
              {
                v188 |= (v189 & v157) << v187++;
              }

              else
              {
                v192 = 0;
              }

              --v193;
              if (!v191)
              {
                v193 = 0;
              }

              v189 *= 2;
              v187 = (__PAIR64__(v187, v191) - 1) >> 32;
              v191 = v193 != 0;
              v190 = v192 != 0;
            }

            while (v193 | v192);
            v194 = 0;
            v195 = 0;
            v196 = 1;
            v197 = v155;
            v198 = v150;
            v199 = v268;
            v200 = v151;
            do
            {
              --v199;
              v201 = v197;
              if (!v201)
              {
                v199 = 0;
              }

              v202 = v194 + v201;
              --v200;
              if (v198)
              {
                v195 |= (v196 & ~(-1 << v151)) << v202++;
              }

              else
              {
                v200 = 0;
              }

              v196 *= 2;
              v194 = v202 - 1;
              v198 = v200 != 0;
              v197 = v199 != 0;
            }

            while (v200 | v199);
            v203 = 0;
            v204 = 0;
            v205 = 1;
            v206 = v155;
            v207 = v150;
            v208 = v268;
            v209 = v151;
            do
            {
              --v208;
              if (v206)
              {
                v204 |= (v205 & v164) << v203++;
              }

              else
              {
                v208 = 0;
              }

              --v209;
              if (!v207)
              {
                v209 = 0;
              }

              v205 *= 2;
              v203 = (__PAIR64__(v203, v207) - 1) >> 32;
              v207 = v209 != 0;
              v206 = v208 != 0;
            }

            while (v209 | v208);
            v210 = 0;
            v211 = 0;
            v212 = 1;
            v213 = v155;
            LOBYTE(result) = v150;
            v214 = v268;
            v215 = v151;
            do
            {
              --v214;
              v216 = v213;
              if (!v216)
              {
                v214 = 0;
              }

              v217 = v210 + v216;
              --v215;
              if (result)
              {
                v211 |= (v212 & v186) << v217++;
              }

              else
              {
                v215 = 0;
              }

              v212 *= 2;
              v210 = v217 - 1;
              result = v215 != 0;
              v213 = v214 != 0;
            }

            while (v215 | v214);
            v154 = v255;
            v155 = v258;
            if (v184)
            {
              goto LABEL_262;
            }
          }

LABEL_190:
          ++v158;
        }

        while (v154 > v158);
        v156 = v236 + 1;
      }

      while (v234 > (v236 + 1));
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCompressed<false,12u,12u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (result)
  {
    if (a2)
    {
      return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(result, a2, (a3 + 11) / 0xCu, (a4 + 11) / 0xCu, a5, a6, a7 / 0xC, a8 / 0xC, (a9 + 11) / 0xCu, (a10 + 11) / 0xCu, a11, a12, a13);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCompressed<false,12u,10u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (result)
  {
    if (a2)
    {
      return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(result, a2, (a3 + 11) / 0xCu, (a4 + 9) / 0xAu, a5, a6, a7 / 0xC, a8 / 0xA, (a9 + 11) / 0xCu, (a10 + 9) / 0xAu, a11, a12, a13);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCompressed<false,10u,10u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (result)
  {
    if (a2)
    {
      return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(result, a2, (a3 + 9) / 0xAu, (a4 + 9) / 0xAu, a5, a6, a7 / 0xA, a8 / 0xA, (a9 + 9) / 0xAu, (a10 + 9) / 0xAu, a11, a12, a13);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCompressed<false,10u,8u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (result)
  {
    if (a2)
    {
      return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(result, a2, (a3 + 9) / 0xAu, (a4 + 7) >> 3, a5, a6, a7 / 0xA, a8 >> 3, (a9 + 9) / 0xAu, (a10 + 7) >> 3, a11, a12, a13);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCompressed<false,10u,6u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (result)
  {
    if (a2)
    {
      return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(result, a2, (a3 + 9) / 0xAu, (a4 + 5) / 6u, a5, a6, a7 / 0xA, a8 / 6, (a9 + 9) / 0xAu, (a10 + 5) / 6u, a11, a12, a13);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCompressed<false,10u,5u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (result)
  {
    if (a2)
    {
      return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(result, a2, (a3 + 9) / 0xAu, (a4 + 4) / 5u, a5, a6, a7 / 0xA, a8 / 5, (a9 + 9) / 0xAu, (a10 + 4) / 5u, a11, a12, a13);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCompressed<false,8u,8u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (result)
  {
    if (a2)
    {
      return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(result, a2, (a3 + 7) >> 3, (a4 + 7) >> 3, a5, a6, a7 >> 3, a8 >> 3, (a9 + 7) >> 3, (a10 + 7) >> 3, a11, a12, a13);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCompressed<false,8u,6u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (result)
  {
    if (a2)
    {
      return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(result, a2, (a3 + 7) >> 3, (a4 + 5) / 6u, a5, a6, a7 >> 3, a8 / 6, (a9 + 7) >> 3, (a10 + 5) / 6u, a11, a12, a13);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCompressed<false,8u,5u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (result)
  {
    if (a2)
    {
      return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(result, a2, (a3 + 7) >> 3, (a4 + 4) / 5u, a5, a6, a7 >> 3, a8 / 5, (a9 + 7) >> 3, (a10 + 4) / 5u, a11, a12, a13);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCompressed<false,8u,4u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (result)
  {
    if (a2)
    {
      return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(result, a2, (a3 + 7) >> 3, (a4 + 3) >> 2, a5, a6, a7 >> 3, a8 >> 2, (a9 + 7) >> 3, (a10 + 3) >> 2, a11, a12, a13);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCompressed<false,6u,6u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (result)
  {
    if (a2)
    {
      return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(result, a2, (a3 + 5) / 6u, (a4 + 5) / 6u, a5, a6, a7 / 6, a8 / 6, (a9 + 5) / 6u, (a10 + 5) / 6u, a11, a12, a13);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCompressed<false,6u,5u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (result)
  {
    if (a2)
    {
      return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(result, a2, (a3 + 5) / 6u, (a4 + 4) / 5u, a5, a6, a7 / 6, a8 / 5, (a9 + 5) / 6u, (a10 + 4) / 5u, a11, a12, a13);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCompressed<false,5u,5u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (result)
  {
    if (a2)
    {
      return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(result, a2, (a3 + 4) / 5u, (a4 + 4) / 5u, a5, a6, a7 / 5, a8 / 5, (a9 + 4) / 5u, (a10 + 4) / 5u, a11, a12, a13);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCompressed<false,5u,4u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (result)
  {
    if (a2)
    {
      return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(result, a2, (a3 + 4) / 5u, (a4 + 3) >> 2, a5, a6, a7 / 5, a8 >> 2, (a9 + 4) / 5u, (a10 + 3) >> 2, a11, a12, a13);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCompressed<false,4u,2u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (result)
  {
    if (a2)
    {
      return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(result, a2, (a3 + 3) >> 2, (a4 + 1) >> 1, a5, a6, a7 >> 2, a8 >> 1, (a9 + 3) >> 2, (a10 + 1) >> 1, a11, a12, a13);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCompressed<false,4u,4u,16ul,(TwiddleOrder)1>(uint64_t result, _OWORD *a2, int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (result)
  {
    if (a2)
    {
      return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,16ul,1u,(TwiddleOrder)1>>(result, a2, (a3 + 3) >> 2, (a4 + 3) >> 2, a5, a6, a7 >> 2, a8 >> 2, (a9 + 3) >> 2, (a10 + 3) >> 2, a11, a12, a13);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCompressed<false,4u,4u,8ul,(TwiddleOrder)1>(uint64_t result, void *a2, int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (result)
  {
    if (a2)
    {
      return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<false,8ul,1u,(TwiddleOrder)1>>(result, a2, (a3 + 3) >> 2, (a4 + 3) >> 2, a5, a6, a7 >> 2, a8 >> 2, (a9 + 3) >> 2, (a10 + 3) >> 2, a11, a12, a13);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressPVRTC4<false,(TwiddleOrder)1>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  if (result && a2)
  {
    v10 = (a9 + 3) >> 2;
    v11 = (a10 + 3) >> 2;
    v12 = ((a9 + 3) >> 3) * v11;
    v13 = 8 * v12;
    v14 = 16 * v12;
    if (v10 <= v11)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    if (v10 <= v11)
    {
      v16 = 0;
    }

    else
    {
      v16 = v13;
    }

    if (v10 <= v11)
    {
      v17 = (a9 + 3) >> 2;
    }

    else
    {
      v17 = v10 >> 1;
    }

    v18 = 32 - __clz(v17 - 1);
    if (v17 < 2)
    {
      v18 = 0;
    }

    v19 = 32 - __clz(v11 - 1);
    if ((a10 + 3) >= 8)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20 < v18)
    {
      LOBYTE(v18) = v20;
    }

    v21 = 8 * v17 * v11;
    if (v21)
    {
      v22 = 0;
      v23 = 8 * ~(-1 << (2 * v18));
      v24 = v23 & 0x2AAAAAAAAAAAAAA8;
      v25 = v23 & 0x5555555555555555;
      v26 = ~v23;
      do
      {
        *(a2 + (v22 & v26 | (2 * (v24 & v22)) | ((v25 & v22) >> 1))) = *(result + v22);
        v22 += 8;
      }

      while (v22 < v21);
      if (v10 > v11)
      {
        v27 = 0;
        v28 = result + v16;
        do
        {
          *(a2 + v15 + (v27 & v26 | (2 * (v24 & v27)) | ((v25 & v27) >> 1))) = *(v28 + v27);
          v27 += 8;
        }

        while (v27 < v21);
      }
    }
  }

  return result;
}

uint64_t AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(uint64_t a1, os_unfair_lock_s *a2, int a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, unsigned int a15, unsigned int a16, unsigned int a17, unsigned int a18, int a19, int a20, uint64_t a21, int a22, char a23, uint64_t a24, uint64_t a25, int a26, int a27, uint64_t a28, int a29, int a30, char a31, char a32, char a33, int a34, int a35)
{
  v36 = a11 & 0xFF00;
  v141 = a7 & 0xFFFFFFFFFFFFFFFELL;
  if (v36 == 768 && (a7 & 0xFFFFFFFFFFFFFFFELL) == 552)
  {
    v36 = 256;
  }

  v38 = v36 | a11 & 0xFFFFFFFFFFFF00FFLL;
  v39 = &texFormatUnsupported;
  if ((a7 - 1) <= 0x289)
  {
    v39 = *(&off_29F342380 + (a7 - 1));
  }

  v40 = *(v39 + 10);
  v41 = v40 >= 0x33;
  v42 = 0x4000800000200uLL >> v40;
  v43 = !v41;
  v44 = v43 & v42;
  v45 = *(v39 + 16);
  v46 = v39[2] == 4;
  v47 = (v45 & 0x38000) == 0x8000;
  *(a1 + 16) = a3;
  *(a1 + 32) = a7;
  *(a1 + 40) = a8;
  *(a1 + 48) = a10;
  if ((v46 & v44) != 0)
  {
    v48 = 0x40000000;
  }

  else
  {
    v48 = 0;
  }

  v49 = a15 >> a29;
  if (a15 >> a29 <= 1)
  {
    v49 = 1;
  }

  v50 = a16 >> a29;
  if (a16 >> a29 <= 1)
  {
    v50 = 1;
  }

  *(a1 + 84) = a20 - 1;
  *(a1 + 88) = v49;
  *(a1 + 92) = v50;
  *(a1 + 104) = v48 | (v47 << 31);
  *(a1 + 108) = a30;
  *(a1 + 152) = a21;
  *(a1 + 168) = a25;
  *(a1 + 176) = a26;
  *(a1 + 180) = a27;
  *(a1 + 184) = a28;
  *(a1 + 192) = a13;
  *(a1 + 196) = a14;
  *(a1 + 208) = a6;
  *(a1 + 241) = a23;
  *(a1 + 236) = a22;
  *(a1 + 256) = a22;
  *(a1 + 276) = 0u;
  *(a1 + 292) = 0u;
  *(a1 + 260) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 112) = 1 << -__clz(a19 - 1);
  *(a1 + 116) = a29;
  *(a1 + 140) = a18;
  *(a1 + 144) = a29;
  v51 = a17 >> a29;
  if (a17 >> a29 <= 1)
  {
    v51 = 1;
  }

  *(a1 + 96) = v51;
  *(a1 + 100) = a20;
  *(a1 + 392) = a20;
  *(a1 + 24) = a5;
  *(a1 + 80) = 0;
  *(a1 + 120) = 1;
  *a1 = &unk_2A23FA388;
  *(a1 + 8) = a2;
  *(a1 + 56) = v38;
  *(a1 + 72) = 0;
  *(a1 + 128) = a15;
  *(a1 + 132) = a16;
  *(a1 + 136) = a17;
  *(a1 + 148) = a9;
  *(a1 + 160) = a24;
  *(a1 + 200) = 0;
  *(a1 + 216) = 0;
  *(a1 + 232) = 0;
  *(a1 + 248) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 324) = 0;
  *(a1 + 396) = 0;
  *(a1 + 398) = 0;
  *(a1 + 400) = v38;
  *(a1 + 408) = a32;
  *(a1 + 409) = a33;
  v52 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Texture(AGX::HAL300::Device *,eAGXTextureMetadataType,AGXHardwareTextureMemoryOrder,AGX::TextureFormat const*,MTLTextureType,MTLPixelFormat,unsigned long,MTLStorageMode,AGXTextureCompressionSettings,eAGXColorSpaceConversion,eAGXTextureRotation,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned long,unsigned int,BOOL,MTLCPUCacheMode,unsigned int,eAGXTextureCoordType,__IOSurface *,unsigned int,unsigned int,__IOSurface *,unsigned int,unsigned int,float,BOOL,BOOL,BOOL)::iosurface_alignment;
  *(a1 + 336) = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Texture(AGX::HAL300::Device *,eAGXTextureMetadataType,AGXHardwareTextureMemoryOrder,AGX::TextureFormat const*,MTLTextureType,MTLPixelFormat,unsigned long,MTLStorageMode,AGXTextureCompressionSettings,eAGXColorSpaceConversion,eAGXTextureRotation,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned long,unsigned int,BOOL,MTLCPUCacheMode,unsigned int,eAGXTextureCoordType,__IOSurface *,unsigned int,unsigned int,__IOSurface *,unsigned int,unsigned int,float,BOOL,BOOL,BOOL)::iosurface_alignment;
  if (!v52)
  {
    v57 = MEMORY[0x29ED51AC0](*MEMORY[0x29EDBB178], 1);
    *(a1 + 336) = v57;
    AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Texture(AGX::HAL300::Device *,eAGXTextureMetadataType,AGXHardwareTextureMemoryOrder,AGX::TextureFormat const*,MTLTextureType,MTLPixelFormat,unsigned long,MTLStorageMode,AGXTextureCompressionSettings,eAGXColorSpaceConversion,eAGXTextureRotation,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned long,unsigned int,BOOL,MTLCPUCacheMode,unsigned int,eAGXTextureCoordType,__IOSurface *,unsigned int,unsigned int,__IOSurface *,unsigned int,unsigned int,float,BOOL,BOOL,BOOL)::iosurface_alignment = v57;
    if (a18 >= 2)
    {
      goto LABEL_22;
    }

LABEL_34:
    v56 = 1;
    goto LABEL_35;
  }

  if (a18 < 2)
  {
    goto LABEL_34;
  }

LABEL_22:
  if (a15 <= a16)
  {
    v53 = a16;
  }

  else
  {
    v53 = a15;
  }

  if (v53 <= a17)
  {
    v54 = a17;
  }

  else
  {
    v54 = v53;
  }

  if (*(a1 + 16) != 1)
  {
    v53 = v54;
  }

  v55 = 32 - __clz(v53);
  if (v53)
  {
    v56 = v55;
  }

  else
  {
    v56 = 0;
  }

LABEL_35:
  *(a1 + 64) = v56;
  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::initTextureLayout(a1, a4);
  if (*(a1 + 396) == 3)
  {
    if (*(a1 + 168))
    {
      CompressedTileWidthOfPlane = IOSurfaceGetCompressedTileWidthOfPlane();
      CompressedTileHeightOfPlane = IOSurfaceGetCompressedTileHeightOfPlane();
      v61 = CompressedTileWidthOfPlane != 16 || CompressedTileHeightOfPlane != 16;
    }

    else
    {
      v61 = MTLPixelFormatA8Unorm;
    }

    v68 = AGX::HAL300::TextureFormatTable::chooseInterchangeFormat(*(a1 + 32), v61);
    *(a1 + 208) = v68;
    if (v68 == &texFormatUnsupported)
    {
      goto LABEL_56;
    }
  }

  else if (*(a1 + 208) == &texFormatUnsupported)
  {
LABEL_56:
    *(a1 + 200) = 0;
    goto LABEL_57;
  }

  v62 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::validateTextureParams(a1);
  *(a1 + 200) = v62;
  if (!v62)
  {
LABEL_57:
    *(a1 + 208) = &texFormatUnsupported;
    goto LABEL_58;
  }

  v63 = *(a1 + 32);
  *(a1 + 332) = ((v63 - 185) < 0x34) & (0xFFFF3FFFCFFFFuLL >> (v63 + 71));
  *(a1 + 333) = (v63 & 0xFFFFFFFFFFFFFFF8) == 160;
  *(a1 + 216) = *&dword_29D2FEEF0[2 * *(*(a1 + 208) + 56)];
  *(a1 + 320) = (v63 - 40) < 5;
  v64 = *(a1 + 396);
  if ((v64 & 0x40000) != 0 || (v65 = v63 - 586, v65 <= 0x2B) && ((1 << v65) & 0xC0000000003) != 0)
  {
    inited = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::initColorSpaceConversionType(a1);
    v67 = a12 ? a12 : inited;
    *(a1 + 324) = v67;
    v64 = *(a1 + 396);
    if ((v64 & 0x40000) != 0)
    {
      if (*(a1 + 168))
      {
        v155 = 0;
        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        IOSurfaceGetBulkAttachments();
        v64 = *(a1 + 396);
      }

      *(a1 + 328) = 0;
    }
  }

  if (!v64)
  {
    v121 = *(a1 + 152);
    if (v141 == 240 && !v121)
    {
      v121 = (*(*(a1 + 208) + 49) * *(a1 + 128) + 15) & 0x1FFFFFFFFF0;
      *(a1 + 152) = v121;
    }

    if (!v121)
    {
      *(a1 + 152) = *(*(a1 + 208) + 49) * *(a1 + 128);
    }
  }

  if (*(a1 + 24) == 9)
  {
    *(a1 + 152) = (*(a1 + 152) + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  v122 = 0;
  if ((v64 & 0xFF00) == 0x400)
  {
    v123 = 6;
  }

  else
  {
    v123 = 1;
  }

  *(a1 + 384) = v123;
  *(a1 + 240) = 0;
  v124 = *(a1 + 236);
  if (!v124 && a31)
  {
    v122 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::initSparseNPOT(a1);
    v124 = *(a1 + 236);
  }

  *(a1 + 232) = v122;
  if (v124)
  {
    v125 = *(a1 + 208);
    v126 = *(a1 + 112);
    v127 = &dword_29D2FEEF0[2 * *(v125 + 56)];
    v129 = *v127;
    v128 = v127[1];
    v130 = *(v125 + 88);
    v131 = v124 / (v130 * v126);
    v132 = 32 - __clz(v131 - 1);
    v133 = v131 >= 2 ? v132 : 0;
    v134 = (v133 + 1) >> 1;
    *(a1 + 224) = v129 << v134;
    *(a1 + 228) = v128 << (v133 - v134);
    if (*(a1 + 248) == 1)
    {
      v135 = (8 * (v126 * v130)) >> (*(a1 + 57) != 0);
      v136 = 0;
      if (v135 <= 63)
      {
        if (v135 > 15)
        {
          if (v135 == 16)
          {
            *(a1 + 224) = 0x4000000080;
            goto LABEL_58;
          }

          if (v135 == 32)
          {
            *(a1 + 224) = 0x4000000040;
            goto LABEL_58;
          }
        }

        else
        {
          if (v135 == 4)
          {
            *(a1 + 224) = 0x8000000100;
            goto LABEL_58;
          }

          if (v135 == 8)
          {
            *(a1 + 224) = 0x8000000080;
            goto LABEL_58;
          }
        }
      }

      else if (v135 <= 255)
      {
        if (v135 == 64)
        {
          *(a1 + 224) = 0x2000000040;
          goto LABEL_58;
        }

        if (v135 == 128)
        {
          *(a1 + 224) = 0x2000000020;
          goto LABEL_58;
        }
      }

      else
      {
        switch(v135)
        {
          case 256:
            *(a1 + 224) = 0x1000000020;
            goto LABEL_58;
          case 512:
            v136 = 0x1000000010;
            break;
          case 1024:
            *(a1 + 224) = 0x800000010;
            goto LABEL_58;
        }
      }

      *(a1 + 224) = v136;
    }
  }

LABEL_58:
  *a1 = &unk_2A23FA3B0;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 552) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 584) = 0;
  *(a1 + 600) = 0;
  *(a1 + 592) = 0;
  *(a1 + 608) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  if (*(a1 + 200) != 1)
  {
    return a1;
  }

  v142 = (a1 + 560);
  v144 = (a1 + 584);
  if (!*(a1 + 16))
  {
    if (*(a1 + 248) == 1)
    {
      v69 = 2;
    }

    else
    {
      v69 = 1;
    }

    AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::RangeAllocation::RangeAllocation(&v147, a2 + 1810, v69, a35);
    v70 = v147;
    v71 = *(a1 + 560);
    *(a1 + 560) = v147;
    *&v147 = v71;
    v72 = *(a1 + 568);
    *(a1 + 568) = *(&v147 + 1);
    *(&v147 + 1) = v72;
    v73 = *(a1 + 576);
    *(a1 + 576) = v148;
    v74 = v70;
    LOBYTE(v148) = v73;
    if (v71 && (v73 & 1) == 0)
    {
      os_unfair_lock_lock(v72 + 336);
      AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(&v147 + 1) + 1288, v147, v147 + DWORD1(v147) - 1);
      os_unfair_lock_unlock(v72 + 336);
      v74 = *v142;
    }

    AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::RangeAllocation::RangeAllocation(&v147, a2 + 1810, 1u, v74);
    v75 = *(a1 + 480);
    *(a1 + 480) = v147;
    *&v147 = v75;
    v76 = *(a1 + 488);
    *(a1 + 488) = *(&v147 + 1);
    *(&v147 + 1) = v76;
    v77 = *(a1 + 496);
    *(a1 + 496) = v148;
    LOBYTE(v148) = v77;
    if (v75 && (v77 & 1) == 0)
    {
      os_unfair_lock_lock(v76 + 336);
      AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(&v147 + 1) + 1288, v147, v147 + DWORD1(v147) - 1);
      os_unfair_lock_unlock(v76 + 336);
    }

    if (*(a1 + 248) == 1)
    {
      AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::RangeAllocation::RangeAllocation(&v147, a2 + 1810, 1u, *v142 + 1);
      v78 = *(a1 + 536);
      *(a1 + 536) = v147;
      *&v147 = v78;
      v79 = *(a1 + 544);
      *(a1 + 544) = *(&v147 + 1);
      *(&v147 + 1) = v79;
      v80 = *(a1 + 552);
      *(a1 + 552) = v148;
      LOBYTE(v148) = v80;
      if (v78)
      {
        if ((v80 & 1) == 0)
        {
          os_unfair_lock_lock(v79 + 336);
          AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(&v147 + 1) + 1288, v147, v147 + DWORD1(v147) - 1);
          os_unfair_lock_unlock(v79 + 336);
        }
      }
    }
  }

  *(a1 + 120) = *(a1 + 480);
  if (AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::evaluateCompressionFeedback<AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isCompressionAllowed(void)::CompressionPolicyVisitor>(a1))
  {
    operator new();
  }

  if (*(a1 + 248) == 1)
  {
    v81 = *(a1 + 152);
    v82 = v81 == 0;
    if (v81)
    {
      v83 = 123;
    }

    else
    {
      v83 = 13;
    }

    v84 = *(a1 + 24);
    v85 = *(a1 + 128);
    if (v85 >= 0x8000)
    {
      LODWORD(v86) = 0x8000;
    }

    else
    {
      LODWORD(v86) = *(a1 + 128);
    }

    if (v84 == 9)
    {
      v86 = v86;
    }

    else
    {
      v86 = v85;
    }

    v87 = *(a1 + 224);
    v88 = (v87 + v86 - 1) & -v87;
    v89 = v88 / v87;
    v90 = *(a1 + 228);
    if (v84 == 9)
    {
      v91 = -v90;
      v92 = (v90 - 1 + ((v85 + 0x7FFF) >> 15)) & -v90;
      v93 = 1;
    }

    else
    {
      v93 = *(a1 + 136);
      v91 = -v90;
      v92 = (v90 - 1 + *(a1 + 132)) & -v90;
    }

    v94 = v92 / v90;
    if (*(a1 + 64) < 2u)
    {
      v98 = 1;
    }

    else
    {
      if (v89 <= v94)
      {
        v95 = v92 / v90;
      }

      else
      {
        v95 = v88 / v87;
      }

      if (v95 <= v93)
      {
        v96 = v93;
      }

      else
      {
        v96 = v95;
      }

      if (*(a1 + 16) != 1)
      {
        v95 = v96;
      }

      v97 = 32 - __clz(v95);
      if (v95)
      {
        v98 = v97;
      }

      else
      {
        v98 = 0;
      }
    }

    v99 = *(&off_29F342380 + (v83 - 1));
    *(a1 + 640) = v86 / v88;
    if (v84 == 9)
    {
      v100 = (v85 + 0x7FFF) >> 15;
    }

    else
    {
      v100 = *(a1 + 132);
    }

    *(a1 + 644) = v100 / ((v90 - 1 + v100) & v91);
    if (v81)
    {
      v101 = v89 * *(v99 + 49);
    }

    else
    {
      v101 = 0;
    }

    v102 = malloc_type_calloc(0x288uLL, 1uLL, 0x10E1040DA59F5FCuLL);
    *(a1 + 632) = v102;
    BYTE2(v140) = a33;
    LOWORD(v140) = 0;
    LODWORD(v139) = 0;
    HIDWORD(v139) = v98;
    BYTE4(v138) = 0;
    LODWORD(v138) = 0;
    HIDWORD(v137) = v89;
    LODWORD(v137) = 84148994;
    *AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(v102, a2, 2, v82, a5, v99, v83, 1, 0.0, 2, 2, 0, v137, __PAIR64__(v93, v94), v98 | 0x100000000, *(a1 + 392), v101, v138, a24, 0, 0, 0, v139, v140, 0) = off_2A23FA3D8;
    *(*(a1 + 632) + 640) = *(a1 + 640);
  }

  v103 = *(a1 + 208);
  if (!*(a1 + 16) && *(v103 + 24) >= 2u)
  {
    v104 = 0;
    v105 = 0;
    v106 = 0;
    do
    {
      v106 += AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a1, v104, 1);
      v105 += AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(a1, v104, 1);
      v107 = a1 + 8 * v104;
      *(v107 + 352) = v106;
      *(v107 + 360) = v105;
      v103 = *(a1 + 208);
      v108 = v104 + 2;
      ++v104;
    }

    while (v108 < *(v103 + 24));
  }

  v109 = *v144;
  if (*v144 && *(v103 + 24) >= 2u)
  {
    if (*(a1 + 168) && (IOSurfaceGetSliceCount() & 0xFFFFFFFELL) != 0)
    {
      BaseAddressOfCompressedTileDataRegionOfSliceAndPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane();
      v111 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane() - BaseAddressOfCompressedTileDataRegionOfSliceAndPlane;
      if (!*(a1 + 168))
      {
        goto LABEL_121;
      }
    }

    else
    {
      v112 = *(a1 + 352);
      v111 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a1, 1u, 0) + v112;
      if (!*(a1 + 168))
      {
        goto LABEL_121;
      }
    }

    if ((IOSurfaceGetSliceCount() & 0xFFFFFFFELL) != 0)
    {
      v113 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane();
      v114 = IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane() - v113;
LABEL_122:
      *(v109 + 1336) = v111 - v114;
      v103 = *(a1 + 208);
      goto LABEL_123;
    }

LABEL_121:
    v114 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a1, 0, 0);
    goto LABEL_122;
  }

LABEL_123:
  if (*(v103 + 24))
  {
    v115 = 0;
    v116 = 0;
    do
    {
      v116 += AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(a1, v115, 1);
      v115 = (v115 + 1);
      v117 = *(*(a1 + 208) + 24);
    }

    while (v115 < v117);
    *(a1 + 368) = v116;
    if (v117)
    {
      v118 = 0;
      v119 = 0;
      do
      {
        v119 += AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a1, v118++, 1);
      }

      while (v118 < *(*(a1 + 208) + 24));
    }

    else
    {
      v119 = 0;
    }
  }

  else
  {
    v119 = 0;
    *(a1 + 368) = 0;
  }

  *(a1 + 376) = v119;
  return a1;
}

void sub_29D2BDA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t *a27)
{
  v29 = *a27;
  *a27 = 0;
  if (v29)
  {
    std::default_delete<AGX::HAL300::CompressionMetadata>::operator()[abi:nn200100](v29);
  }

  AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::RangeAllocation::~RangeAllocation(a26);
  AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::RangeAllocation::~RangeAllocation(v27 + 536);
  AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::RangeAllocation::~RangeAllocation(v27 + 480);
  _Unwind_Resume(a1);
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::initTextureLayout(uint64_t a1, char a2)
{
  v4 = *(a1 + 168);
  if (v4)
  {
    goto LABEL_2;
  }

  v16 = *(a1 + 57);
  if (!*(a1 + 57))
  {
    goto LABEL_2;
  }

  v17 = *(a1 + 32);
  if ((v17 - 630) > 0x13)
  {
    v22 = v17 - 40;
    if ((v17 - 552) > 0x35)
    {
      goto LABEL_101;
    }

    if (((1 << v22) & 0x3800000F000000) != 0)
    {
      goto LABEL_80;
    }

    if (((1 << v22) & 3) != 0)
    {
      if (v16 != 1)
      {
        goto LABEL_80;
      }
    }

    else
    {
LABEL_101:
      if (v16 != 3)
      {
        goto LABEL_80;
      }
    }

LABEL_2:
    v5 = 0;
    goto LABEL_3;
  }

  if (((1 << (v17 - 118)) & 0xFF07F) == 0 && v16 == 1)
  {
    goto LABEL_2;
  }

LABEL_80:
  if (*(a1 + 24) != 2 || *(a1 + 64) > 1u)
  {
    goto LABEL_2;
  }

  v5 = 1;
  switch(v17)
  {
    case 1:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 20:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 60:
    case 62:
    case 63:
    case 64:
    case 65:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 80:
    case 81:
    case 84:
    case 85:
    case 90:
    case 91:
    case 94:
    case 110:
    case 112:
    case 113:
    case 114:
    case 115:
    case 552:
    case 553:
    case 554:
    case 555:
    case 576:
    case 577:
    case 578:
    case 579:
    case 603:
    case 604:
    case 605:
    case 630:
    case 631:
    case 632:
    case 633:
    case 634:
    case 635:
    case 636:
    case 637:
    case 638:
    case 639:
    case 640:
    case 641:
    case 642:
    case 643:
    case 644:
    case 645:
    case 646:
    case 647:
    case 648:
    case 649:
      break;
    default:
      goto LABEL_2;
  }

LABEL_3:
  v6 = *(a1 + 32);
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isYUVTexture(v6);
  if (result)
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 24);
  v10 = 2;
  v11 = 1;
  if (v9 <= 4)
  {
    if (v9 > 2)
    {
      if (v9 == 4)
      {
        v19 = 2;
      }

      else
      {
        v19 = v8;
      }

      if (v9 == 3)
      {
        v8 = 1;
      }

      else
      {
        v8 = v19;
      }

      v15 = 0;
      v11 = 1;
      v10 = 2;
      if (*(a1 + 408))
      {
        goto LABEL_61;
      }

      goto LABEL_51;
    }

    if (v9)
    {
      if (v9 != 1)
      {
        v15 = 0;
        if (*(a1 + 408))
        {
          goto LABEL_61;
        }

        goto LABEL_51;
      }

      v8 = 1;
    }

    v11 = 0;
    v15 = 1;
    v10 = 1;
    if (*(a1 + 408))
    {
      goto LABEL_61;
    }
  }

  else if (v9 <= 6)
  {
    if (v9 != 5)
    {
      v8 = 1;
    }

    v15 = 0;
    v10 = 4;
    if (*(a1 + 408))
    {
      goto LABEL_61;
    }
  }

  else
  {
    if (v9 == 9)
    {
      v12 = 0;
    }

    else
    {
      v12 = a2;
    }

    if (v9 == 8)
    {
      v13 = 3;
    }

    else
    {
      v13 = v8;
    }

    if (v9 == 8)
    {
      v14 = a2;
    }

    else
    {
      v14 = v12;
    }

    if (v9 != 7)
    {
      v8 = v13;
    }

    v15 = 0;
    v11 = 1;
    if (v9 == 7)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    if (v9 != 7)
    {
      a2 = v14;
    }

    if (*(a1 + 408))
    {
      goto LABEL_61;
    }
  }

LABEL_51:
  if (v4)
  {
    result = IOSurfaceGetAddressFormatOfPlane();
    if (result >= 6)
    {
      a2 = 0;
    }

    else
    {
      a2 = 0x30002010000uLL >> (8 * (result & 0x1Fu));
    }

    if (!*(a1 + 236))
    {
      goto LABEL_85;
    }

    goto LABEL_62;
  }

  if (!*(a1 + 152) && ((v6 - 624) > 0x1A || ((1 << (v6 - 112)) & 0x400000F) == 0))
  {
    if (v5)
    {
      v24 = 3;
    }

    else
    {
      v24 = a2;
    }

    if (result)
    {
      v24 = 0;
    }

    if ((v6 - 550) >= 2)
    {
      a2 = v24;
    }

    else
    {
      a2 = 0;
    }

    if (!*(a1 + 236))
    {
      goto LABEL_85;
    }

    goto LABEL_62;
  }

  a2 = 0;
LABEL_61:
  if (!*(a1 + 236))
  {
    goto LABEL_85;
  }

LABEL_62:
  if (!a2 && *(a1 + 241) && (*(a1 + 409) & 1) != 0)
  {
    a2 = 0;
LABEL_84:
    *(a1 + 248) = 1;
    *(a1 + 236) = 0x4000;
    goto LABEL_85;
  }

  if (*(a1 + 241))
  {
    if (a2 == 0 && *(a1 + 24) == 9)
    {
      v20 = 0;
    }

    else
    {
      v20 = 2;
    }

    if ((a2 == 0 && *(a1 + 24) == 9) | v15 & 1)
    {
      a2 = v20;
      goto LABEL_84;
    }

    if ((*(a1 + 40) & 2) != 0)
    {
      a2 = 2;
      goto LABEL_84;
    }
  }

  v21 = v11 ^ 1;
  if (a2 != 1)
  {
    v21 = 1;
  }

  if (v21)
  {
    *(a1 + 248) = 0;
  }

  else
  {
    *(a1 + 248) = 2;
    a2 = 1;
  }

LABEL_85:
  v23 = *(a1 + 56);
  *(a1 + 396) = a2;
  *(a1 + 397) = v10;
  *(a1 + 398) = v8;
  *(a1 + 400) = v23;
  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::validateTextureParams(uint64_t a1)
{
  v2 = *(a1 + 32);
  switch(v2)
  {
    case 160:
    case 161:
    case 162:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
      if ((*(a1 + 128) ^ (*(a1 + 128) - 1)) > *(a1 + 128) - 1 && (*(a1 + 132) ^ (*(a1 + 132) - 1)) > *(a1 + 132) - 1)
      {
        goto LABEL_9;
      }

      return 0;
    case 500:
    case 501:
    case 502:
    case 505:
    case 506:
    case 508:
    case 509:
    case 520:
    case 521:
    case 522:
    case 525:
    case 526:
    case 528:
    case 529:
    case 540:
    case 541:
    case 543:
    case 544:
    case 546:
    case 547:
    case 562:
    case 564:
    case 565:
    case 567:
    case 568:
    case 570:
    case 571:
    case 573:
    case 574:
    case 580:
    case 581:
    case 583:
    case 584:
    case 591:
    case 592:
    case 594:
    case 595:
    case 597:
    case 598:
    case 600:
    case 601:
    case 608:
    case 609:
    case 611:
    case 612:
    case 615:
    case 616:
    case 618:
    case 619:
      if (*(a1 + 128) & 1) != 0 || (*(a1 + 132))
      {
        v3 = *(a1 + 40) && (*(a1 + 40) & 6) == 0;
        if (!v3)
        {
          return 0;
        }
      }

      goto LABEL_9;
    default:
LABEL_9:
      v4 = *(a1 + 208);
      if (*(v4 + 24) >= 2u && !*(a1 + 168) && !*(v4 + 80))
      {
        v5 = (v2 - 624) > 0x1A || ((1 << (v2 - 112)) & 0x400000F) == 0;
        if (v5 && (v2 - 550) >= 2 && *(a1 + 16) != 1)
        {
          return 0;
        }
      }

      if (*(a1 + 236) && !*(a1 + 248) || *(a1 + 57) && !*(a1 + 396))
      {
        return 0;
      }

      switch(v2)
      {
        case 508:
        case 509:
        case 510:
        case 528:
        case 529:
        case 530:
        case 546:
        case 547:
        case 548:
        case 567:
        case 568:
        case 569:
        case 580:
        case 581:
        case 582:
        case 583:
        case 584:
        case 585:
        case 588:
        case 589:
        case 594:
        case 595:
        case 596:
        case 600:
        case 601:
        case 602:
        case 611:
        case 612:
        case 618:
        case 619:
        case 620:
        case 630:
        case 631:
        case 632:
        case 633:
        case 634:
        case 635:
        case 636:
        case 643:
        case 645:
        case 647:
        case 649:
          if (*(a1 + 396) == 3 && (*(a1 + 56) & 2) != 0)
          {
            return 0;
          }

          break;
        default:
          break;
      }

      if ((*(a1 + 56) & 4) == 0)
      {
        return 1;
      }

      if (*(a1 + 396) != 3)
      {
        return 1;
      }

      PlaneCount = IOSurfaceGetPlaneCount(*(a1 + 168));
      if (!PlaneCount)
      {
        return 1;
      }

      v7 = 0;
      v8 = PlaneCount - 1;
      do
      {
        if (IOSurfaceGetSliceCount() < 2)
        {
          BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(*(a1 + 168), v7);
        }

        else
        {
          BaseAddressOfPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane();
        }

        v3 = ((BaseAddressOfPlane + 2047) & 0xFFFFFFFFFFFFF800) == BaseAddressOfPlane;
        result = v3;
      }

      while (v3 && v8 != v7++);
      return result;
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::initColorSpaceConversionType(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1 - 586) <= 0x2B && ((1 << (v1 - 74)) & 0xC2000000003) != 0)
  {
    return 7;
  }

  v4 = *(a1 + 168);
  if (!v4)
  {
    return 0;
  }

  result = 0;
  v5 = (v1 - 540) > 0x31 || ((1 << (v1 - 28)) & 0x30000000001FFLL) == 0;
  if (v5 && (v1 - 240) >= 2)
  {
    PixelFormat = IOSurfaceGetPixelFormat(v4);
    IOSurfaceGetYCbCrMatrix();
    if (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isVideoRange(PixelFormat))
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

BOOL AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::initSparseNPOT(uint64_t a1)
{
  v1 = (a1 + 396);
  v2 = *(a1 + 396);
  if (v2 != 1)
  {
    return 0;
  }

  v3 = v2 & 0xFF00;
  if (v3 != 512 && v3 != 1024 && v3 != 768)
  {
    return 0;
  }

  if (AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::evaluateCompressionFeedback<AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isCompressionAllowed(void)::CompressionPolicyVisitor>(a1))
  {
    return 0;
  }

  v6 = a1;
  v7 = *(a1 + 128);
  v8 = v7 <= 1 ? 1 : *(a1 + 128);
  v9 = *(a1 + 216);
  v10 = v9 + v8 - 1;
  if (v9 <= v10 && ((v10 / v9) & (v10 / v9 - 1)) == 0)
  {
    v11 = *(a1 + 132) <= 1u ? 1 : *(a1 + 132);
    v12 = *(a1 + 220);
    v13 = v12 + v11 - 1;
    if (v12 <= v13 && ((v13 / v12) & (v13 / v12 - 1)) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 32) == 260 && (v7 < 0x40 || *(a1 + 132) < 0x40u))
  {
    return 0;
  }

  v14 = *(a1 + 208);
  if (!*(v14 + 24))
  {
    return 1;
  }

  v15 = 0;
  v16 = *MEMORY[0x29EDCA6D0];
  v17 = *(v14 + 24);
  v18 = (a1 + 282);
  v19 = (v7 + *(a1 + 216) - 1) / *(a1 + 216);
  LOBYTE(result) = 1;
  do
  {
    if (!result)
    {
      goto LABEL_23;
    }

    v20 = *v1 & 0xFF00;
    if (v20 == 768)
    {
      v21 = *(v6 + 136);
    }

    else if ((*v1 & 0x10000) != 0 || v20 == 1024)
    {
      v21 = *(v6 + 392);
      if (v20 == 1024)
      {
        LOWORD(v21) = 6 * v21;
      }
    }

    else
    {
      LOWORD(v21) = 1;
    }

    v22 = *(v6 + 132);
    v23 = *(v6 + 220);
    v24 = *(v6 + 112) * *(v14 + 88 + v15);
    v25 = *(v6 + 64);
    v26 = *(v14 + 48);
    v27 = *(v6 + 332);
    v28 = *(v6 + 336);
    v29 = (*(v6 + 112) * *(v14 + 88 + v15));
    *(v18 - 8) = v24;
    *(v18 - 11) = v7;
    *(v18 - 10) = v22;
    *(v18 - 9) = v21;
    *(v18 - 14) = v25;
    *(v18 - 8) = v28;
    *(v18 - 5) = 4;
    *(v18 - 7) = v26;
    *(v18 - 4) = v9;
    *(v18 - 3) = v23;
    *(v18 - 2) = 0;
    *(v18 - 1) = v20 == 1024;
    *v18 = v20 == 768;
    v30 = (v22 + v23 - 1) / v23;
    if (v16 > v19 * v24 * v30 || v16 < v28)
    {
      goto LABEL_23;
    }

    if (v20 == 1024)
    {
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }

    if (!v27)
    {
      v32 = 0;
    }

    *(v18 - 6) = v32;
    v33 = v28;
    v34 = 3 * v28;
    if (-1431655765 * v29 >= 0x55555556)
    {
      v34 = v28;
    }

    v35 = v34 / v29;
    v36 = 32 - __clz(v35 - 1);
    if (v35 >= 2)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    v38 = v37 >> 1;
    *(v18 - 10) = v37 >> 1;
    v39 = v37 - (v37 >> 1);
    *(v18 - 9) = v37 - (v37 >> 1);
    if (v27)
    {
      if (v38 <= 5)
      {
        LOBYTE(v38) = 5;
      }

      *(v18 - 10) = v38;
      if (v39 <= 5)
      {
        LOBYTE(v39) = 5;
      }

      *(v18 - 9) = v39;
    }

    *(v18 - 13) = (v29 << (v39 + v38)) / v33;
    if (v19 < 2)
    {
      LOBYTE(v40) = 0;
    }

    else
    {
      v40 = 32 - __clz(~(-1 << -__clz(v19 - 1)));
    }

    *(v18 - 12) = v40;
    if (v30 < 2)
    {
      LOBYTE(v41) = 0;
    }

    else
    {
      v41 = 32 - __clz(~(-1 << -__clz(v30 - 1)));
    }

    *(v18 - 11) = v41;
    if (v19 >> v38)
    {
      result = v30 >> v39 != 0;
    }

    else
    {
LABEL_23:
      result = 0;
    }

    ++v15;
    v18 += 24;
  }

  while (v15 < v17);
  return result;
}

uint64_t AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::evaluateCompressionFeedback<AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isCompressionAllowed(void)::CompressionPolicyVisitor>(uint64_t a1)
{
  {
    v16 = a1;
    a1 = v16;
    if (v17)
    {
      AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::evaluateCompressionFeedback<AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isCompressionAllowed(void)::CompressionPolicyVisitor>(void)const::disable_apple_compression = 0;
      a1 = v16;
    }
  }

  {
    v18 = a1;
    a1 = v18;
    if (v19)
    {
      AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::evaluateCompressionFeedback<AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isCompressionAllowed(void)::CompressionPolicyVisitor>(void)const::disable_apple_compression_for_shared_textures = 0;
      a1 = v18;
    }
  }

  {
    v20 = a1;
    a1 = v20;
    if (v21)
    {
      AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::evaluateCompressionFeedback<AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isCompressionAllowed(void)::CompressionPolicyVisitor>(void)const::disable_apple_compression_for_shared_attachments = 0;
      a1 = v20;
    }
  }

  v1 = *(a1 + 56);
  if (AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::evaluateCompressionFeedback<AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isCompressionAllowed(void)::CompressionPolicyVisitor>(void)const::disable_apple_compression == 1 && !*(a1 + 168) && (v1 & 0xFF00) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) == 1)
  {
    return 0;
  }

  v2 = *(a1 + 48);
  if (v2 == 3)
  {
    return 0;
  }

  if (v2)
  {
    if ((v1 & 6) == 2)
    {
      return 0;
    }

LABEL_21:
    v6 = *(a1 + 396);
    v3 = 0;
    if (!v6)
    {
      return v3;
    }

    if ((v6 & 0xFF00) == 0x100)
    {
      return v3;
    }

    v7 = *(a1 + 208);
    if (*(v7 + 14))
    {
      return v3;
    }

    if (*(a1 + 240))
    {
      return 0;
    }

    if (*(a1 + 396) == 3)
    {
LABEL_26:
      if (v1)
      {
        return 1;
      }

      v8 = *(a1 + 40);
      if (v8)
      {
        v9 = a1;
        v10 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::supportsCompressedWrites(a1, *(a1 + 32), *(a1 + 409), (v8 >> 14) & 1);
        if (((v8 & 2) == 0 || v10) && !(*(v9 + 40) & 0x20 | v8 & 0x10))
        {
          return 1;
        }
      }

      return 0;
    }

    v11 = *(a1 + 112);
    v12 = *v7;
    v13 = 16;
    v23 = 16;
    if (v12 == 56)
    {
      v14 = 8;
      v22 = 8;
      switch(v11)
      {
        case 2:
LABEL_38:
          v15 = &v23;
LABEL_45:
          *v15 = v14;
          v13 = v23;
          break;
        case 4:
LABEL_37:
          v22 = 4;
          goto LABEL_38;
        case 8:
          v23 = 8;
          v14 = 4;
          goto LABEL_37;
      }

LABEL_46:
      if (*(a1 + 128) >= v13 && *(a1 + 132) >= v22)
      {
        goto LABEL_26;
      }

      return 0;
    }

    v22 = 16;
    v14 = 8;
    if (v11 != 2)
    {
      if (v11 != 4)
      {
        if (v11 != 8)
        {
          goto LABEL_46;
        }

        v22 = 8;
        v14 = 4;
      }

      v23 = 8;
    }

    v15 = &v22;
    goto LABEL_45;
  }

  if (AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::evaluateCompressionFeedback<AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isCompressionAllowed(void)::CompressionPolicyVisitor>(void)const::disable_apple_compression_for_shared_attachments == 1 && (*(a1 + 40) & 4) != 0 && (v1 & 0xFF00) == 0)
  {
    return 0;
  }

  v3 = 0;
  v4 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::evaluateCompressionFeedback<AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isCompressionAllowed(void)::CompressionPolicyVisitor>(void)const::disable_apple_compression_for_shared_textures;
  if ((v1 & 0xFF00) != 0)
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0 && (v1 & 6) != 2)
  {
    goto LABEL_21;
  }

  return v3;
}

uint64_t AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::CompressionMetadataGen2(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  *(a1 + 48) = 0;
  *(a1 + 55) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0x504030200000000;
  *(a1 + 200) = 0;
  *(a1 + 208) = &texFormatUnsupported;
  *(a1 + 216) = 0;
  *(a1 + 232) = 0;
  *(a1 + 236) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 324) = 0;
  *(a1 + 396) = 0;
  *(a1 + 398) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 292) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0;
  *(a1 + 400) = 2;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0;
  *(a1 + 584) = 0;
  *a1 = off_2A23FA3D8;
  *(a1 + 664) = 0;
  *(a1 + 680) = -1;
  *(a1 + 672) = -1;
  *(a1 + 703) = 0;
  *(a1 + 696) = 0;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0x504030200000000;
  *(a1 + 848) = 0;
  *(a1 + 856) = &texFormatUnsupported;
  *(a1 + 864) = 0;
  *(a1 + 880) = 0;
  *(a1 + 884) = 0;
  *(a1 + 960) = 0;
  *(a1 + 968) = 0;
  *(a1 + 972) = 0;
  *(a1 + 1044) = 0;
  *(a1 + 1046) = 0;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 940) = 0u;
  *(a1 + 1032) = 0;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 1048) = 2;
  *(a1 + 1144) = 0;
  *(a1 + 1128) = 0u;
  *(a1 + 1200) = 0;
  *(a1 + 1184) = 0u;
  *(a1 + 1224) = 0;
  *(a1 + 1208) = 0u;
  *(a1 + 1232) = 0;
  *(a1 + 648) = off_2A23FA3D8;
  v70 = (a1 + 1308);
  *(a1 + 1308) = *(a2 + 128);
  *(a1 + 1336) = 0;
  v3 = *(a2 + 208);
  v4 = *(v3 + 24);
  *(a1 + 1344) = v4;
  *(a1 + 1296) = v3;
  *(a1 + 1352) = BYTE1(*(a2 + 56));
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = a1 + 1316;
    v69 = a1 + 1324;
    do
    {
      v10 = (v69 + 4 * v6);
      AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMacroBlockDimensions(*(a2 + 168), *(a2 + 176), *(a2 + 32), *(a1 + 1296), *(a2 + 396), v7, *(a2 + 112), (v8 + 4 * v6), v10);
      v11 = *v70;
      if (v7 == 1 && (*(*(a1 + 1296) + 72) & 0xFFFFFFFE) == 2)
      {
        v11 = (v11 + 1) >> 1;
      }

      v12 = *(v8 + 4 * v6);
      v13 = v11 - 1;
      v14 = __CFADD__(v13, v12);
      v15 = (v13 + v12) / v12;
      if (v14)
      {
        v15 = 1;
      }

      v16 = *(a1 + 1312);
      if (v7 == 1 && *(*(a1 + 1296) + 72) == 3)
      {
        v16 = (v16 + 1) >> 1;
      }

      v17 = *v10;
      v18 = v16 - 1;
      v14 = __CFADD__(v18, *v10);
      v19 = (v18 + *v10) / *v10;
      if (v14)
      {
        v19 = 1;
      }

      if (*(a2 + 140) < 2u)
      {
        v22 = 1;
        *(a1 + 1304) = 1;
      }

      else
      {
        if (v15 <= v19)
        {
          v20 = v19;
        }

        else
        {
          v20 = v15;
        }

        if (v20 + 1 < 2)
        {
          v22 = 0;
          *(a1 + 1304) = 0;
        }

        else
        {
          v21 = 0;
          v22 = 32 - __clz(~(-1 << -__clz(v20)));
          *(a1 + 1304) = 0;
          v23 = *(a2 + 128);
          do
          {
            if (v23 >> v21 < v12)
            {
              break;
            }

            if (*(a2 + 132) >> v21 < v17)
            {
              break;
            }

            *(a1 + 1304) = ++v21;
          }

          while (v22 != v21);
        }
      }

      v24 = *(a2 + 24);
      v25 = 3;
      if (v24 != 8)
      {
        v25 = *(a2 + 24);
      }

      if (v24 == 4)
      {
        v26 = 2;
      }

      else
      {
        v26 = v25;
      }

      if (v12 == 32)
      {
        v27 = 4;
      }

      else
      {
        v27 = 1;
      }

      if (v12 == 32)
      {
        v28 = 4;
      }

      else
      {
        v28 = v26;
      }

      BYTE2(v68) = *(a2 + 409);
      LOWORD(v68) = 0;
      LODWORD(v67) = *(a2 + 144);
      HIDWORD(v67) = *(a2 + 108);
      BYTE4(v66) = 0;
      LODWORD(v66) = 0;
      HIDWORD(v65) = *(a2 + 136);
      HIDWORD(v64) = v15;
      LODWORD(v65) = v19;
      HIDWORD(v63) = *(a2 + 192);
      LODWORD(v64) = 84148994;
      LODWORD(v63) = *(a2 + 324);
      AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(&v71, *(a2 + 8), 1, 1, v28, &texFormatRGBA16UI, 113, 0, *(a2 + 148), *(a2 + 48), 2, v63, v64, v65, __PAIR64__(v27, v22), *(a2 + 392), 0, v66, *(a2 + 160), 0, 0, 0, v67, v68, 0);
      v71 = off_2A23FA3D8;
      v29 = a1 + 648 * v6;
      *(v29 + 8) = v72;
      *(v29 + 24) = v73;
      *(v29 + 40) = *v74;
      *(v29 + 52) = *&v74[12];
      *(v29 + 72) = v75;
      *(v29 + 88) = v76;
      *(v29 + 104) = v77;
      *(v29 + 120) = v78;
      memcpy((v29 + 128), v79, 0x11AuLL);
      v30 = v81;
      *(v29 + 416) = v80;
      *(v29 + 432) = v30;
      v31 = v83;
      *(v29 + 448) = v82;
      *(v29 + 464) = v31;
      v32 = *(v29 + 480);
      *(v29 + 480) = v84;
      v84 = v32;
      v33 = *(v29 + 488);
      *(v29 + 488) = v85;
      v85 = v33;
      LOBYTE(v33) = *(v29 + 496);
      *(v29 + 496) = v86;
      v86 = v33;
      v34 = v88;
      *(v29 + 504) = v87;
      *(v29 + 520) = v34;
      v35 = *(v29 + 536);
      *(v29 + 536) = v89;
      v89 = v35;
      v36 = *(v29 + 544);
      *(v29 + 544) = v90;
      v90 = v36;
      LOBYTE(v36) = *(v29 + 552);
      *(v29 + 552) = v91;
      v91 = v36;
      v37 = *(v29 + 560);
      *(v29 + 560) = v92;
      v92 = v37;
      v38 = *(v29 + 568);
      *(v29 + 568) = v93;
      v93 = v38;
      LOBYTE(v38) = *(v29 + 576);
      *(v29 + 576) = v94;
      v94 = v38;
      v39 = v95;
      v95 = 0;
      v40 = *(v29 + 584);
      *(v29 + 584) = v39;
      if (v40)
      {
        std::default_delete<AGX::HAL300::CompressionMetadata>::operator()[abi:nn200100](v40);
      }

      v41 = v97;
      *(v29 + 592) = v96;
      *(v29 + 608) = v41;
      *(v29 + 624) = v98;
      *(v29 + 640) = v99;
      v71 = &unk_2A23FA3B0;
      if (*(&v98 + 1))
      {
        free(*(&v98 + 1));
        *(&v98 + 1) = 0;
      }

      v42 = v95;
      v95 = 0;
      if (v42)
      {
        std::default_delete<AGX::HAL300::CompressionMetadata>::operator()[abi:nn200100](v42);
      }

      if (v92 && (v94 & 1) == 0)
      {
        v43 = v93;
        os_unfair_lock_lock(v93 + 336);
        AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(&v93[322], v92, v92 + HIDWORD(v92) - 1);
        os_unfair_lock_unlock(v43 + 336);
      }

      if (v89 && (v91 & 1) == 0)
      {
        v44 = v90;
        os_unfair_lock_lock(v90 + 336);
        AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(&v90[322], v89, v89 + HIDWORD(v89) - 1);
        os_unfair_lock_unlock(v44 + 336);
      }

      if (v84 && (v86 & 1) == 0)
      {
        v45 = v85;
        os_unfair_lock_lock(v85 + 336);
        AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(&v85[322], v84, v84 + HIDWORD(v84) - 1);
        os_unfair_lock_unlock(v45 + 336);
      }

      v9 = *(a1 + 1344);
      v6 = ++v7;
    }

    while (v9 > v7);
    if (v9 == 1)
    {
      bzero(&v72, 0x280uLL);
      *&v73 = -1;
      *(&v73 + 1) = -1;
      *&v74[8] = 0;
      *&v74[15] = 0;
      memset(&v79[2], 0, 32);
      *&v79[4] = 0x504030200000000;
      *&v79[5] = &texFormatUnsupported;
      HIDWORD(v79[6]) = 0;
      DWORD2(v79[12]) = 0;
      *(&v79[8] + 8) = 0u;
      *(&v79[9] + 8) = 0u;
      *(&v79[10] + 4) = 0u;
      *(&v79[7] + 8) = 0u;
      memset(&v79[14], 0, 40);
      *&v79[17] = 2;
      v71 = off_2A23FA3D8;
      v46 = v73;
      *(a1 + 656) = v72;
      *(a1 + 672) = v46;
      *(a1 + 688) = *v74;
      *(a1 + 700) = *&v74[12];
      v47 = v76;
      *(a1 + 720) = v75;
      *(a1 + 736) = v47;
      *(a1 + 752) = v77;
      *(a1 + 768) = v78;
      memcpy((a1 + 776), v79, 0x11AuLL);
      v48 = v81;
      *(a1 + 1064) = v80;
      *(a1 + 1080) = v48;
      v49 = v83;
      *(a1 + 1096) = v82;
      *(a1 + 1112) = v49;
      v50 = *(a1 + 1128);
      v51 = *(a1 + 1136);
      *(a1 + 1128) = 0u;
      v84 = v50;
      v85 = v51;
      v52 = *(a1 + 1144);
      *(a1 + 1144) = 0;
      v86 = v52;
      v53 = v87;
      *(a1 + 1168) = v88;
      *(a1 + 1152) = v53;
      *&v53 = *(a1 + 1184);
      *(a1 + 1184) = 0;
      v89 = v53;
      v54 = *(a1 + 1192);
      *(a1 + 1192) = 0;
      v90 = v54;
      LOBYTE(v54) = *(a1 + 1200);
      *(a1 + 1200) = 0;
      v91 = v54;
      *&v53 = *(a1 + 1208);
      *(a1 + 1208) = 0;
      v92 = v53;
      v55 = *(a1 + 1216);
      *(a1 + 1216) = 0;
      v93 = v55;
      LOBYTE(v55) = *(a1 + 1224);
      *(a1 + 1224) = 0;
      v94 = v55;
      v56 = *(a1 + 1232);
      *(a1 + 1232) = v95;
      if (v56)
      {
        std::default_delete<AGX::HAL300::CompressionMetadata>::operator()[abi:nn200100](v56);
      }

      *(a1 + 1288) = v99;
      v57 = v97;
      *(a1 + 1240) = v96;
      *(a1 + 1256) = v57;
      *(a1 + 1272) = v98;
      v71 = &unk_2A23FA3B0;
      if (*(&v98 + 1))
      {
        free(*(&v98 + 1));
        *(&v98 + 1) = 0;
      }

      v58 = v95;
      v95 = 0;
      if (v58)
      {
        std::default_delete<AGX::HAL300::CompressionMetadata>::operator()[abi:nn200100](v58);
      }

      if (v92 && (v94 & 1) == 0)
      {
        v59 = v93;
        os_unfair_lock_lock(v93 + 336);
        AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(&v93[322], v92, v92 + HIDWORD(v92) - 1);
        os_unfair_lock_unlock(v59 + 336);
      }

      if (v89 && (v91 & 1) == 0)
      {
        v60 = v90;
        os_unfair_lock_lock(v90 + 336);
        AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(&v90[322], v89, v89 + HIDWORD(v89) - 1);
        os_unfair_lock_unlock(v60 + 336);
      }

      if (v84 && (v86 & 1) == 0)
      {
        v61 = v85;
        os_unfair_lock_lock(v85 + 336);
        AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(&v85[322], v84, v84 + HIDWORD(v84) - 1);
        os_unfair_lock_unlock(v61 + 336);
      }
    }
  }

  return a1;
}

void sub_29D2C04D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(a26);
  AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(v26);
  _Unwind_Resume(a1);
}

uint64_t AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMacroBlockDimensions(uint64_t result, int a2, uint64_t a3, uint64_t *a4, char a5, int a6, int a7, unsigned int *a8, unsigned int *a9)
{
  v9 = a8;
  if (a5 == 3)
  {
    if (result)
    {
      CompressedTileWidthOfPlane = IOSurfaceGetCompressedTileWidthOfPlane();
      result = IOSurfaceGetCompressedTileHeightOfPlane();
    }

    else
    {
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      InterchangeTiledMemory::getPlaneInfo(v15, a6, a3, *(a4 + 49));
      CompressedTileWidthOfPlane = v15[0];
      result = BYTE1(v15[0]);
    }

    v14 = result;
    *v9 = CompressedTileWidthOfPlane;
    *a9 = result;
    if (*a4 == 56)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = *a4;
    v14 = 16;
    *a8 = 16;
    if (v13 == 56)
    {
      v14 = 8;
      *a9 = 8;
LABEL_9:
      if (a7 != 2)
      {
        if (a7 != 4)
        {
          if (a7 != 8)
          {
            return result;
          }

          *v9 >>= 1;
          v14 = *a9;
        }

        *a9 = v14 >> 1;
      }

      v14 = *v9;
      goto LABEL_21;
    }

    *a9 = 16;
  }

  if (a7 != 2)
  {
    if (a7 != 4)
    {
      if (a7 != 8)
      {
        return result;
      }

      *a9 = v14 >> 1;
    }

    *v9 >>= 1;
    v14 = *a9;
  }

  v9 = a9;
LABEL_21:
  *v9 = v14 >> 1;
  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isVideoRange(int a1)
{
  result = 1;
  if (a1 > 1534617135)
  {
    if (a1 > 1952854577)
    {
      if (a1 <= 2021077551)
      {
        if (a1 > 2019963441)
        {
          if (a1 == 2019963442 || a1 == 2019963956)
          {
            return 0;
          }

          v3 = 2019964016;
        }

        else
        {
          if (a1 == 1952854578 || a1 == 1952855092)
          {
            return 0;
          }

          v3 = 2019963440;
        }
      }

      else if (a1 <= 2021078127)
      {
        if (a1 == 2021077552 || a1 == 2021077554)
        {
          return 0;
        }

        v3 = 2021078068;
      }

      else if (a1 > 2084070959)
      {
        if (a1 == 2088265264)
        {
          return 0;
        }

        v3 = 2084070960;
      }

      else
      {
        if (a1 == 2021078128)
        {
          return 0;
        }

        v3 = 2037741158;
      }

      goto LABEL_60;
    }

    if (a1 <= 1568171567)
    {
      if ((a1 - 1534617136) <= 4 && ((1 << (a1 - 48)) & 0x15) != 0)
      {
        return 0;
      }

      v4 = -1563977264;
    }

    else
    {
      if (a1 > 1885745711)
      {
        if (a1 > 1885746227)
        {
          if (a1 == 1885746228)
          {
            return 0;
          }

          v3 = 1952854576;
        }

        else
        {
          if (a1 == 1885745712)
          {
            return 0;
          }

          v3 = 1885745714;
        }

        goto LABEL_60;
      }

      v4 = -1568171568;
    }
  }

  else if (a1 > 792225327)
  {
    if (a1 <= 1530422831)
    {
      if (a1 > 875704933)
      {
        if ((a1 - 1027423538) < 2 || a1 == 875704934)
        {
          return 0;
        }

        v3 = 875836518;
      }

      else
      {
        if (a1 == 792225328 || a1 == 796419632)
        {
          return 0;
        }

        v3 = 875704422;
      }

      goto LABEL_60;
    }

    if ((a1 - 1530422832) <= 4 && ((1 << (a1 - 48)) & 0x15) != 0)
    {
      return 0;
    }

    v4 = -1534354992;
  }

  else
  {
    if (a1 > 644232303)
    {
      if (a1 <= 645494117)
      {
        if ((a1 - 645424688) > 4 || ((1 << (a1 - 48)) & 0x15) == 0)
        {
          v3 = 644232304;
          goto LABEL_60;
        }

        return 0;
      }

      if (a1 == 645494118 || a1 == 758670896)
      {
        return 0;
      }

      v3 = 762865200;
LABEL_60:
      if (a1 != v3)
      {
        return result;
      }

      return 0;
    }

    if ((a1 - 590898736) <= 4 && ((1 << (a1 - 48)) & 0x15) != 0)
    {
      return 0;
    }

    v4 = -641230384;
  }

  v5 = a1 + v4;
  if (v5 <= 4 && ((1 << v5) & 0x15) != 0)
  {
    return 0;
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isTwiddledOnlyFormat(uint64_t a1)
{
  if ((a1 - 185) <= 0x33 && ((1 << (a1 + 71)) & 0xFFFF3FFFCFFFFLL) != 0)
  {
    return 1;
  }

  result = 0;
  v3 = a1 - 130;
  if (v3 <= 0x35 && ((1 << v3) & 0x3F553FC0F03C3FLL) != 0)
  {
    return 1;
  }

  return result;
}

void sub_29D2C4A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(va);
  _Unwind_Resume(a1);
}

void sub_29D2C4A94(_Unwind_Exception *a1)
{
  v3 = STACK[0x288];
  STACK[0x288] = 0;
  if (v3)
  {
    std::default_delete<AGX::HAL300::CompressionMetadata>::operator()[abi:nn200100](v3);
  }

  AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::RangeAllocation::~RangeAllocation(v1 + 560);
  AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::RangeAllocation::~RangeAllocation(&STACK[0x258]);
  AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::RangeAllocation::~RangeAllocation(&STACK[0x220]);
  _Unwind_Resume(a1);
}

void AGX::TextureViewPool<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::setTexture(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (*(a3 + 480))
    {
      v6 = *(a3 + 488);
      os_unfair_lock_lock(v6 + 336);
      v7 = *(a3 + 488);
      v8 = *(a3 + 480);
      if (atomic_load_explicit((v7 + 1172), memory_order_acquire))
      {
        v9 = (*(*(v7 + 1264) + 24 * (v8 >> 15) + 16) + 8 * (v8 & 0x7FFF));
      }

      else
      {
        os_unfair_lock_assert_owner((v7 + 1344));
        v9 = (*(*(v7 + 40 * *(v7 + 1168) + 32) + *MEMORY[0x29EDC5638] + 24) + 8 * v8);
      }

      v21 = *v9;
      os_unfair_lock_unlock(v6 + 336);
    }

    else if (*(a3 + 16) == 2)
    {
      v21 = *(a3 + 640);
    }

    else
    {
      v42 = *(a3 + 536);
      if (*(a3 + 24) == 9)
      {
        v21 = *(a3 + 128) | (v42 << 32);
      }

      else
      {
        v21 = v42 << 32;
      }
    }

    v44 = *(a3 + 416);
    v46 = *(a3 + 432);
    v48 = *(a3 + 448);
    v50 = *(a3 + 464);
    v22 = *(a1 + 16);
    os_unfair_lock_lock(v22 + 336);
    v23 = *(a1 + 16);
    v24 = *(a1 + 8) + a2;
    if (atomic_load_explicit((v23 + 1172), memory_order_acquire))
    {
      v25 = (*(v23 + 1264) + 24 * (v24 >> 15));
      v26 = v25[1];
      v27 = v25[2];
      v28 = 32 * (v24 & 0x7FFF);
      v29 = (*v25 + v28);
      v30 = (v26 + v28);
      v31 = (v27 + 8 * (v24 & 0x7FFF));
    }

    else
    {
      os_unfair_lock_assert_owner((v23 + 1344));
      v32 = (v23 + 40 * *(v23 + 1168));
      v33 = *MEMORY[0x29EDC5638];
      v34 = 32 * v24;
      v29 = (*(v32[2] + v33 + 24) + v34);
      v30 = (*(v32[3] + v33 + 24) + v34);
      v31 = (*(v32[4] + v33 + 24) + 8 * v24);
    }

    *v29 = v44;
    v29[1] = v46;
    *v30 = v48;
    v30[1] = v50;
    *v31 = v21;
    os_unfair_lock_unlock(v22 + 336);
    if (*(a3 + 236) && *(a3 + 248) == 1)
    {
      operator new();
    }

    v35 = *(a1 + 32);
    v36 = *(a1 + 40) - v35;
    if (v36)
    {
      if (v36 >> 4 > a2)
      {
        v37 = (v35 + 16 * a2);
        v38 = v37[1];
        *v37 = 0;
        v37[1] = 0;
        if (v38)
        {
          if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v38->__on_zero_shared)(v38);

            std::__shared_weak_count::__release_weak(v38);
          }
        }
      }
    }
  }

  else
  {
    v10 = *(*a1 + 848);
    v43 = v10[1030];
    v45 = v10[1031];
    v47 = v10[1032];
    v49 = v10[1033];
    v11 = *(a1 + 16);
    os_unfair_lock_lock(v11 + 336);
    v12 = *(a1 + 16);
    v13 = *(a1 + 8) + a2;
    if (atomic_load_explicit((v12 + 1172), memory_order_acquire))
    {
      v14 = (*(v12 + 1264) + 24 * (v13 >> 15));
      v15 = v14[1];
      v16 = v14[2];
      v17 = 32 * (v13 & 0x7FFF);
      v18 = (*v14 + v17);
      v19 = (v15 + v17);
      v20 = (v16 + 8 * (v13 & 0x7FFF));
    }

    else
    {
      os_unfair_lock_assert_owner((v12 + 1344));
      v39 = (v12 + 40 * *(v12 + 1168));
      v40 = *MEMORY[0x29EDC5638];
      v41 = 32 * v13;
      v18 = (*(v39[2] + v40 + 24) + v41);
      v19 = (*(v39[3] + v40 + 24) + v41);
      v20 = (*(v39[4] + v40 + 24) + 8 * v13);
    }

    *v18 = v43;
    v18[1] = v45;
    *v19 = v47;
    v19[1] = v49;
    *v20 = 0;
    os_unfair_lock_unlock(v11 + 336);
  }
}

void sub_29D2C50A8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::RangeAllocation>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = (16 * (v6 >> 4));
    v12 = 16 * a2;
    bzero(v11, 16 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void std::__shared_ptr_emplace<AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::Allocation,std::allocator<AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::Allocation>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 24) && (*(a1 + 40) & 1) == 0)
  {
    v1 = *(a1 + 32);
    os_unfair_lock_lock(v1 + 336);
    AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(a1 + 32) + 1288, *(a1 + 24), *(a1 + 24) + *(a1 + 28) - 1);

    os_unfair_lock_unlock(v1 + 336);
  }
}

void sub_29D2C528C(_Unwind_Exception *a1)
{
  v2 = v1;
  os_unfair_lock_unlock(v2 + 336);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::Allocation,std::allocator<AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::Allocation>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A23FA400;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29ED520D0);
}

void sub_29D2C660C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::~TextureGen4(va);
  _Unwind_Resume(a1);
}

void sub_29D2C66A0(_Unwind_Exception *a1)
{
  v3 = STACK[0x2A8];
  STACK[0x2A8] = 0;
  if (v3)
  {
    std::default_delete<AGX::HAL300::CompressionMetadata>::operator()[abi:nn200100](v3);
  }

  AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::RangeAllocation::~RangeAllocation(v1 + 560);
  AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::RangeAllocation::~RangeAllocation(&STACK[0x278]);
  AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::RangeAllocation::~RangeAllocation(&STACK[0x240]);
  _Unwind_Resume(a1);
}

int64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::createTextureViewForBlit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, unsigned int a8, int a9, unsigned int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, unsigned __int8 a18, char a19)
{
  v23 = *(a2 + 140);
  v24 = *(a2 + 144) + a9;
  v64 = *(a2 + 136);
  v25 = *(a2 + 128);
  if (v25 <= 1)
  {
    v25 = 1;
  }

  v26 = (*(a2 + 216) + v25 - 1) / *(a2 + 216);
  AddressingBaseLevelWidthInBlocks = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getAddressingBaseLevelWidthInBlocks(a2, v24);
  v28 = AddressingBaseLevelWidthInBlocks << v24;
  if (AddressingBaseLevelWidthInBlocks << v24 <= v26)
  {
    v28 = v26;
  }

  if (AddressingBaseLevelWidthInBlocks != 1)
  {
    v26 = v28;
  }

  v29 = *(a2 + 132);
  if (v29 <= 1)
  {
    v29 = 1;
  }

  v30 = (*(a2 + 220) + v29 - 1) / *(a2 + 220);
  AddressingBaseLevelHeightInBlocks = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getAddressingBaseLevelHeightInBlocks(a2, v24);
  v32 = AddressingBaseLevelHeightInBlocks << v24;
  if (AddressingBaseLevelHeightInBlocks << v24 <= v30)
  {
    v32 = v30;
  }

  if (AddressingBaseLevelHeightInBlocks == 1)
  {
    v32 = v30;
  }

  v33 = v26 << (a11 == 4);
  v34 = 2;
  if (a3 != 4)
  {
    v34 = a3;
  }

  if (a19)
  {
    v35 = v34;
  }

  else
  {
    v35 = a3;
  }

  if (a19)
  {
    v36 = 1;
  }

  else
  {
    v36 = a11;
  }

  if (a19)
  {
    v32 <<= a11 == 4;
  }

  else
  {
    v33 = v26;
  }

  if (v35 == 2)
  {
    v37 = a4;
    v38 = a6;
    v39 = v23;
    if (*(a2 + 248) == 1)
    {
      v40 = *(a2 + 24);
      v41 = a5;
      v42 = a18;
      if (v40 <= 9 && ((1 << v40) & 0x203) != 0)
      {
        v41 = a5 | 2;
        v43 = *(a2 + 584);
        if (!v43)
        {
          goto LABEL_35;
        }

LABEL_32:
        if (*(v43 + 1304))
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v41 = a5;
      v42 = a18;
    }

    v43 = *(a2 + 584);
    if (v43)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v41 = a5;
    v37 = a4;
    v38 = a6;
    v39 = v23;
    v42 = a18;
    v43 = *(a2 + 584);
    if (v43)
    {
      goto LABEL_32;
    }
  }

LABEL_35:
  v38 = 2;
LABEL_36:
  v44 = 1;
  if (v42)
  {
    v45 = *(a2 + 396) & 0xFF00;
    if ((*(a2 + 396) & 0x10000) != 0 || v45 == 1024)
    {
      v44 = *(a2 + 392);
      if (v45 == 1024)
      {
        v44 *= 6;
      }
    }

    else
    {
      v44 = 1;
    }
  }

  v46 = *(a2 + 236);
  if (v42)
  {
    v47 = v39 - v24;
  }

  else
  {
    v47 = 1;
  }

  if (v46)
  {
    v48 = 1;
  }

  else
  {
    v48 = 2;
  }

  if ((v37 - 1) > 0x289)
  {
    v49 = &texFormatUnsupported;
  }

  else
  {
    v49 = *(&off_29F342380 + (v37 - 1));
  }

  AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(a1, *(a2 + 8), 0, v48, v35, v49, v37, v41, *(a2 + 148), *(a2 + 48), v38, a7, 0, 84148994, v33, v32, v64, v39, v36, v44, a12, v46, *(a2 + 241), a13, a14, a15, a16, a17, v24, v47, *(a2 + 232), *(a2 + 408), *(a2 + 409), v62, 0);
  *a1 = off_2A23FA3D8;
  v50 = *(a1 + 584);
  if (v50)
  {
    if (*(v50 + 1304))
    {
      GPUVirtualAddress = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(a2 + 584) + 648 * a10, a8, 0, 0, 0);
      *(v50 + 312) = 0;
      *(v50 + 72) = GPUVirtualAddress;
      (*(*v50 + 16))(v50);
      if (*(v50 + 1344) >= 2uLL)
      {
        v52 = *(v50 + 1336);
        *(v50 + 960) = v52;
        *(v50 + 720) = v52 + GPUVirtualAddress;
        (*(*(v50 + 648) + 16))();
      }
    }
  }

  v53 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a2, a8, 0, 0, a10);
  if (*(a1 + 236))
  {
    v54 = 0;
    v55 = 0;
    if (!*(a2 + 236))
    {
      goto LABEL_61;
    }
  }

  else
  {
    v54 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a2, a8, v24, 0, a10) - v53;
    v55 = *(a1 + 72) - AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a1, 0, v24, 0, 0);
    if (!*(a2 + 236))
    {
      goto LABEL_61;
    }
  }

  if (*(a2 + 248) == 1)
  {
    v56 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(*(a2 + 632), a8, 0, 0, a10);
    v57 = *(a1 + 632);
    v57[39] = 0;
    v57[9] = v56;
    (*(*v57 + 16))(v57);
  }

LABEL_61:
  *(a1 + 312) = 0;
  *(a1 + 72) = v54 + v53 + v55;
  result = (*(*a1 + 16))(a1);
  if (*(a1 + 397) << 8 == 768)
  {
    v59 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a2, 0, 0, 0, a10);
    v60 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a2, 0, 0, 1u, a10);
    v61 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a1, 0, 0, 0, a10);
    result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPUVirtualAddress(a1, 0, 0, 1u, a10);
    *(a1 + 344) = v60 + v61 - (v59 + result);
  }

  return result;
}

BOOL AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::blitTextureViewAllowed(uint64_t a1, int a2)
{
  if (!*(*(a1 + 208) + 56) || *(a1 + 64) < 2u)
  {
    return 1;
  }

  v2 = *(a1 + 144) + a2;
  v3 = *(a1 + 128);
  if (v3 <= 1)
  {
    v3 = 1;
  }

  v4 = (*(a1 + 216) + v3 - 1) / *(a1 + 216);
  AddressingBaseLevelWidthInBlocks = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getAddressingBaseLevelWidthInBlocks(a1, *(a1 + 144) + a2);
  v7 = AddressingBaseLevelWidthInBlocks << v2;
  if (AddressingBaseLevelWidthInBlocks << v2 <= v4)
  {
    v7 = v4;
  }

  if (AddressingBaseLevelWidthInBlocks != 1)
  {
    v4 = v7;
  }

  v8 = *(a1 + 132);
  if (v8 <= 1)
  {
    v8 = 1;
  }

  v9 = (*(a1 + 220) + v8 - 1) / *(a1 + 220);
  AddressingBaseLevelHeightInBlocks = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getAddressingBaseLevelHeightInBlocks(a1, v2);
  v11 = AddressingBaseLevelHeightInBlocks << v2;
  if (AddressingBaseLevelHeightInBlocks << v2 <= v9)
  {
    v11 = v9;
  }

  if (AddressingBaseLevelHeightInBlocks == 1)
  {
    v11 = v9;
  }

  v12 = *(a1 + 136);
  if (v4 > v11)
  {
    v11 = v4;
  }

  if (v11 > v12)
  {
    v12 = v11;
  }

  if (*(a1 + 16) != 1)
  {
    v11 = v12;
  }

  v13 = 32 - __clz(v11);
  if (v11)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v2 < v14 && v14 > 1;
}

BOOL AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLargeMacroblock(uint64_t a1)
{
  if (!*(a1 + 584) || *(a1 + 396) != 3)
  {
    return 0;
  }

  v10 = v1;
  v11 = v2;
  if (*(a1 + 168))
  {
    CompressedTileWidthOfPlane = IOSurfaceGetCompressedTileWidthOfPlane();
    IOSurfaceGetCompressedTileHeightOfPlane();
    return CompressedTileWidthOfPlane == 32;
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 208);
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    InterchangeTiledMemory::getPlaneInfo(v8, 0, v6, *(v7 + 49));
    return LOBYTE(v8[0]) == 32;
  }
}

BOOL AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::is16x8Macroblock(uint64_t a1)
{
  v1 = *(a1 + 584);
  if (!v1)
  {
    v7 = 0;
    return v7 * v1 * *(a1 + 112) == 128;
  }

  v2 = *(a1 + 208);
  v3 = *(a1 + 112);
  if (*(a1 + 396) == 3)
  {
    v4 = a1;
    if (*(a1 + 168))
    {
      CompressedTileWidthOfPlane = IOSurfaceGetCompressedTileWidthOfPlane();
      CompressedTileHeightOfPlane = IOSurfaceGetCompressedTileHeightOfPlane();
    }

    else
    {
      v9 = *(a1 + 32);
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      InterchangeTiledMemory::getPlaneInfo(v13, 0, v9, *(v2 + 49));
      CompressedTileWidthOfPlane = v13[0];
      CompressedTileHeightOfPlane = BYTE1(v13[0]);
    }

    v7 = CompressedTileHeightOfPlane;
    LODWORD(v1) = CompressedTileWidthOfPlane;
    v12 = CompressedTileHeightOfPlane;
    LODWORD(v13[0]) = CompressedTileWidthOfPlane;
    a1 = v4;
    if (*v2 == 56)
    {
      goto LABEL_11;
    }

LABEL_17:
    if (v3 != 2)
    {
      if (v3 != 4)
      {
        if (v3 != 8)
        {
          return v7 * v1 * *(a1 + 112) == 128;
        }

        v7 >>= 1;
        v12 = v7;
      }

      LODWORD(v13[0]) = v1 >> 1;
    }

    v10 = &v12;
    LODWORD(v1) = v7;
    goto LABEL_23;
  }

  v8 = *v2;
  LODWORD(v1) = 16;
  LODWORD(v13[0]) = 16;
  if (v8 != 56)
  {
    v12 = 16;
    v7 = 16;
    goto LABEL_17;
  }

  v7 = 8;
  v12 = 8;
LABEL_11:
  switch(v3)
  {
    case 2:
LABEL_16:
      v10 = v13;
LABEL_23:
      *v10 = v1 >> 1;
      v7 = v12;
      LODWORD(v1) = v13[0];
      return v7 * v1 * *(a1 + 112) == 128;
    case 4:
LABEL_15:
      v12 = v7 >> 1;
      goto LABEL_16;
    case 8:
      LODWORD(v1) = v1 >> 1;
      LODWORD(v13[0]) = v1;
      goto LABEL_15;
  }

  return v7 * v1 * *(a1 + 112) == 128;
}

size_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getGPULayerSize(uint64_t a1, unsigned int a2)
{
  if ((*(a1 + 396) & 0xFF00) == 0x400)
  {
    v3 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a1, a2);
    v4 = *(a1 + 236);
    v5 = (v3 + v4 - 1) & -v4;
    if (!v4)
    {
      v5 = v3;
    }

    result = 6 * v5;
  }

  else
  {
    if (!*(a1 + 396))
    {
      return (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, a2) * *(a1 + 132) + 127) & 0xFFFFFFFFFFFFFF80;
    }

    result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a1, a2);
    LODWORD(v4) = *(a1 + 236);
  }

  if (v4)
  {
    return (result + v4 - 1) & -v4;
  }

  return result;
}

uint64_t AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getTextureViewForBlit(void *a1, uint64_t a2, char a3, unsigned int a4)
{
  v7 = *(a2 + 584) + 648 * a4;
  v8 = *(v7 + 24);
  v9 = v8 - 1;
  if (v8 - 1) <= 5 && ((0x35u >> v9))
  {
    v8 = qword_29D2F7950[v9];
  }

  v10 = *(a2 + 208);
  v11 = *(a2 + 112);
  if (*(a2 + 396) == 3)
  {
    if (*(a2 + 168))
    {
      CompressedTileWidthOfPlane = IOSurfaceGetCompressedTileWidthOfPlane();
      CompressedTileHeightOfPlane = IOSurfaceGetCompressedTileHeightOfPlane();
    }

    else
    {
      v17 = *(a2 + 32);
      v34 = 0;
      memset(v33, 0, sizeof(v33));
      InterchangeTiledMemory::getPlaneInfo(v33, a4, v17, *(v10 + 49));
      CompressedTileWidthOfPlane = v33[0];
      CompressedTileHeightOfPlane = BYTE1(v33[0]);
    }

    v16 = CompressedTileHeightOfPlane;
    v15 = CompressedTileWidthOfPlane;
    v32 = CompressedTileHeightOfPlane;
    LODWORD(v33[0]) = CompressedTileWidthOfPlane;
    if (*v10 == 56)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = *v10;
    v15 = 16;
    LODWORD(v33[0]) = 16;
    if (v14 == 56)
    {
      v16 = 8;
      v32 = 8;
LABEL_12:
      if (v11 != 2)
      {
        if (v11 != 4)
        {
          if (v11 != 8)
          {
            goto LABEL_25;
          }

          v15 >>= 1;
          LODWORD(v33[0]) = v15;
        }

        v32 = v16 >> 1;
      }

      v18 = v33;
      goto LABEL_24;
    }

    v32 = 16;
    v16 = 16;
  }

  if (v11 != 2)
  {
    if (v11 != 4)
    {
      if (v11 != 8)
      {
        goto LABEL_25;
      }

      v16 >>= 1;
      v32 = v16;
    }

    LODWORD(v33[0]) = v15 >> 1;
  }

  v18 = &v32;
  v15 = v16;
LABEL_24:
  *v18 = v15 >> 1;
  v15 = v33[0];
LABEL_25:
  v20 = v15 - 1;
  v19 = v15 > 1;
  v21 = v15 - 1 + (*(a2 + 128) >> a3);
  if (v19)
  {
    v22 = __clz(v20);
    if (v21 >> -v22 >= 2)
    {
      v23 = 32 - v22;
LABEL_29:
      v24 = v21 >> v23;
      goto LABEL_33;
    }
  }

  else if (v21 > 1)
  {
    v23 = 0;
    goto LABEL_29;
  }

  v24 = 1;
LABEL_33:
  v25 = v32 - 1 + (*(a2 + 132) >> a3);
  if (v32 <= 1)
  {
    if (v25 > 1)
    {
      v27 = 0;
      goto LABEL_36;
    }
  }

  else
  {
    v26 = __clz(v32 - 1);
    if (v25 >> -v26 >= 2)
    {
      v27 = 32 - v26;
LABEL_36:
      v28 = v25 >> v27;
      goto LABEL_40;
    }
  }

  v28 = 1;
LABEL_40:
  v29 = *(v7 + 136) >> (*(v7 + 144) + a3);
  if (v29 <= 1)
  {
    v29 = 1;
  }

  result = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::TextureGen4(a1, *(a2 + 8), 0, 1, v8, &texFormatRGBA16UI, *(v7 + 32), 0, 0.0, *(v7 + 48), 2, *(v7 + 324), *(v7 + 192), 84148994, v24, v28, v29, 1u, *(v7 + 112), 1, 0, 0, 0, *(v7 + 160), 0, 0, 0, 0, 0, 1, 0, 0, *(a2 + 409), v31, 0);
  *a1 = off_2A23FA3D8;
  return result;
}

uint64_t *AGX::HAL300::TextureFormatTable::chooseInterchangeFormat(AGX::HAL300::TextureFormatTable *this, MTLPixelFormat a2)
{
  if (a2)
  {
    v2 = this - 10;
    if (this - 10 < 0x11 && ((0x1F41Fu >> v2) & 1) != 0)
    {
      return *(&off_29F3437D0 + v2);
    }
  }

  if ((this - 1) > 0x289)
  {
    v4 = &texFormatUnsupported;
  }

  else
  {
    v4 = *(&off_29F342380 + (this - 1));
  }

  v5 = *v4;
  v6 = &texFormatUnsupported;
  if ((*v4 - 66) < 0xC)
  {
    v6 = v4;
  }

  v7 = v5 > 0x3F;
  v8 = (1 << v5) & 0xFC1D074D00038703;
  if (v7 || v8 == 0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::~Mempool(uint64_t a1)
{
  if ((atomic_load_explicit((a1 + 1172), memory_order_acquire) & 1) == 0)
  {
    v3 = (a1 + 16);
    v4 = 1160;
    do
    {
      if ((*(v3 - 4) & 1) == 0)
      {
        *(v3 - 4) = 1;
      }

      v3 += 5;
      v4 -= 40;
    }

    while (v4);
  }

  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 1328));
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(*(a1 + 1304));
  free(*(a1 + 1264));

  return a1;
}

void sub_29D2C7E58(_Unwind_Exception *a1)
{
  AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::~FreeIntervalList(v1 + 1288);
  AGX::SparseHeap<262144u,1u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::~SparseHeap((v1 + 1176));
  _Unwind_Resume(a1);
}

id *AGX::SparseHeap<262144u,1u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::~SparseHeap(id *a1)
{
  free(a1[11]);

  return a1;
}

void AGX::SparseHeap<262144u,1u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::setupDeferred(unsigned int *a1, int a2)
{
  *(a1 + 11) = malloc_type_malloc(24 * *a1, 0x100004000313F17uLL);
  v4 = [[AGXBuffer alloc] initWithDevice:*(a1 + 5) length:*(a1 + 4) alignment:0x40000 options:288 pointerTag:0 pinnedGPUAddress:0 placementSparsePageSize:103];
  v5 = *(a1 + 7);
  if (v5 != v4)
  {
    v6 = v4;

    *(a1 + 7) = v6;
  }

  v7 = objc_opt_new();
  v8 = [*(a1 + 5) newResidencySetWithDescriptor:v7 error:0];
  v9 = *(a1 + 8);
  if (v9 != v8)
  {
    v10 = v8;

    *(a1 + 8) = v10;
  }

  [*(a1 + 8) addAllocation:*(a1 + 7)];
  v11 = *(a1 + 6);
  if (v11)
  {
    [*(v11 + 8) addInternalResidencySet:*(a1 + 8)];
  }

  AGX::SparseHeap<262144u,1u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::mapPagesForTiles(a1, 0, a2);
}

void AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::grow(void *a1, unsigned int a2, int a3)
{
  if (atomic_load_explicit(a1 + 1172, memory_order_acquire))
  {
    v6 = *(a1 + 321);
    v7 = *(a1 + 320);
    if (v7 >= a2)
    {
      v7 = a2;
    }

    *(a1 + 321) = v7;
    if (a3)
    {
      if (v6 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v6;
      }

      v9 = (a1 + 161);

      AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(v9, v8, v7 - 1);
    }
  }

  else
  {
    add = atomic_fetch_add(a1 + 292, 1u);
    v11 = add + 1;
    if (add == -1)
    {
      v12 = 0;
    }

    else
    {
      v12 = a1[5 * add + 2];
    }

    v13 = a1 + 1;
    v14 = [[AGXBuffer alloc] initUntrackedInternalBufferWithDevice:*a1 length:32 * a2 options:0];
    a1[5 * v11 + 2] = v14;
    if (v12)
    {
      memcpy(*&v14[*MEMORY[0x29EDC5638] + 24], *(v12 + *MEMORY[0x29EDC5638] + 24), 32 * *(a1 + 321));
    }

    if (add == -1)
    {
      v15 = 0;
    }

    else
    {
      v15 = v13[5 * add + 2];
    }

    v16 = [[AGXBuffer alloc] initUntrackedInternalBufferWithDevice:*a1 length:32 * a2 options:0];
    v13[5 * v11 + 2] = v16;
    if (v15)
    {
      memcpy(*&v16[*MEMORY[0x29EDC5638] + 24], *(v15 + *MEMORY[0x29EDC5638] + 24), 32 * *(a1 + 321));
    }

    if (add == -1)
    {
      v17 = 0;
    }

    else
    {
      v17 = v13[5 * add + 3];
    }

    v18 = MEMORY[0x29EDC5638];
    v19 = [[AGXBuffer alloc] initUntrackedInternalBufferWithDevice:*a1 length:8 * a2 options:0];
    v13[5 * v11 + 3] = v19;
    if (v17)
    {
      memcpy(*&v19[*v18 + 24], *(v17 + *v18 + 24), 8 * *(a1 + 321));
    }

    if (*(a1 + 321) <= 1u)
    {
      v20 = 1;
    }

    else
    {
      v20 = *(a1 + 321);
    }

    *(a1 + 321) = a2;
    atomic_fetch_add(&v13[5 * v11], 0x80000000);
    if ((add & 0x80000000) == 0)
    {
      v21 = &v13[5 * add];
      if (atomic_fetch_add(v21, 0x80000000) == 0x80000000)
      {
        os_unfair_lock_assert_owner(a1 + 336);
        if ((*(v21 + 4) & 1) == 0)
        {
          *(v21 + 4) = 1;
        }
      }
    }

    if (a3)
    {
      AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push((a1 + 161), v20, a2 - 1);
    }

    v22 = a1[170];
    v23 = *v22;
    if ((*v22 + 1) > 1)
    {
      v24 = v23 + 1;
    }

    else
    {
      v24 = 1;
    }

    v25 = *v22;
    atomic_compare_exchange_strong(v22, &v25, v24);
    if (v25 != v23)
    {
      v26 = v25;
      do
      {
        if ((v25 + 1) > 1)
        {
          v27 = v25 + 1;
        }

        else
        {
          v27 = 1;
        }

        atomic_compare_exchange_strong(v22, &v26, v27);
        v28 = v26 == v25;
        v25 = v26;
      }

      while (!v28);
    }
  }
}

void AGX::SparseHeap<262144u,1u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::mapPagesForTiles(uint64_t a1, int a2, int a3)
{
  v3 = a3 + a2;
  v4 = a3 + a2 - 1;
  if (atomic_load_explicit((a1 + 96), memory_order_acquire) <= v4)
  {
    os_unfair_lock_lock((a1 + 100));
    v6 = *(a1 + 96);
    if (v6 <= v4)
    {
      v7 = v3 - v6;
      if (v3 != v6)
      {
        os_unfair_lock_assert_owner((a1 + 100));
        v8 = *(a1 + 80);
        if (v8)
        {
          if (v8 >= v7)
          {
            v9 = v3 - v6;
          }

          else
          {
            v9 = *(a1 + 80);
          }

          *(a1 + 80) = v8 - v9;
        }

        else if (v7 > 0x10)
        {
          v17 = objc_opt_new();
          [v17 setSize:2359296 * v7];
          [v17 setStorageMode:0];
          [v17 setType:1];
          [v17 setMaxCompatiblePlacementSparsePageSize:103];
          v18 = [*(a1 + 40) newHeapWithDescriptor:v17];
          [*(a1 + 64) addAllocation:v18];
        }

        else
        {
          v10 = 2 * *(a1 + 84);
          if (v10 <= 1)
          {
            v10 = 1;
          }

          if (v10 >= 0x10)
          {
            v11 = 16;
          }

          else
          {
            v11 = v10;
          }

          *(a1 + 84) = v11;
          v12 = objc_opt_new();
          [v12 setSize:(2359296 * v11)];
          [v12 setStorageMode:0];
          [v12 setType:1];
          [v12 setMaxCompatiblePlacementSparsePageSize:103];
          v13 = [*(a1 + 40) newHeapWithDescriptor:v12];
          [*(a1 + 64) addAllocation:v13];

          v14 = *(a1 + 72);
          if (v14 != v13)
          {

            *(a1 + 72) = v13;
          }

          v15 = *(a1 + 84);
          if (v15 >= v7)
          {
            v16 = v3 - v6;
          }

          else
          {
            v16 = *(a1 + 84);
          }

          *(a1 + 80) = v15 - v16;
          if (!v15)
          {
            operator new();
          }
        }

        operator new();
      }

      atomic_store(v3, (a1 + 96));
      [*(a1 + 64) commit];
    }

    os_unfair_lock_unlock((a1 + 100));
  }
}

uint64_t AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::RangeAllocation::RangeAllocation(uint64_t a1, os_unfair_lock_s *a2, unsigned int a3, int a4)
{
  *a1 = a4;
  *(a1 + 4) = a3;
  *(a1 + 8) = a2;
  *(a1 + 16) = a4 != 0;
  os_unfair_lock_lock(a2 + 336);
  if ((*(a1 + 16) & 1) == 0)
  {
    v7 = AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::FreeIntervalList::pop((*(a1 + 8) + 1288), a3);
    *a1 = v7;
    if (!v7)
    {
      v10 = *(a1 + 8);
      v11 = *(v10 + 1284);
      if (v11)
      {
        v12 = v11 + a3;
        do
        {
          if (v11)
          {
            v11 *= 2;
          }

          else
          {
            v11 = 16;
          }
        }

        while (v11 <= v12);
        AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::grow(v10, v11, 1);
      }

      else
      {
        AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::grow(v10, 0x10u, 1);
        if (atomic_load_explicit((*(a1 + 8) + 1172), memory_order_acquire))
        {
          AGX::SparseHeap<262144u,1u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::setupDeferred((*(a1 + 8) + 1176), 1);
        }
      }

      *a1 = AGX::Mempool<32u,0u,true,0u,0u,std::array<AGX::IntersectionFunctionTableEncoderGen2<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::Entry,8ul>>::FreeIntervalList::pop((*(a1 + 8) + 1288), a3);
    }

    if ((atomic_load_explicit((*(a1 + 8) + 1172), memory_order_acquire) & 1) != 0 && *a1)
    {
      AGX::SparseHeap<262144u,1u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::mapPagesForTiles(*(a1 + 8) + 1176, (a3 + *a1 - 1) >> 15, 1);
    }
  }

  explicit = atomic_load_explicit((*(a1 + 8) + 1348), memory_order_acquire);
  if (explicit <= a3 + *a1 - 1)
  {
    explicit = a3 + *a1 - 1;
  }

  atomic_store(explicit, (*(a1 + 8) + 1348));
  atomic_fetch_add((*(a1 + 8) + 1352), 1u);
  os_unfair_lock_unlock(a2 + 336);
  return a1;
}

uint64_t AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::RangeAllocation::~RangeAllocation(uint64_t result)
{
  if (*result)
  {
    if ((*(result + 16) & 1) == 0)
    {
      v1 = *(result + 8);
      v2 = result;
      os_unfair_lock_lock(v1 + 336);
      AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(v2 + 8) + 1288, *v2, *v2 + *(v2 + 4) - 1);
      os_unfair_lock_unlock(v1 + 336);
      return v2;
    }
  }

  return result;
}

{
  if (*result)
  {
    if ((*(result + 16) & 1) == 0)
    {
      v1 = *(result + 8);
      v2 = result;
      os_unfair_lock_lock(v1 + 336);
      AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::push(*(v2 + 8) + 1288, *v2, *v2 + *(v2 + 4) - 1);
      os_unfair_lock_unlock(v1 + 336);
      return v2;
    }
  }

  return result;
}

void sub_29D2C8BE8(_Unwind_Exception *a1)
{
  v2 = v1;
  os_unfair_lock_unlock(v2 + 336);
  _Unwind_Resume(a1);
}

void sub_29D2C8C6C(_Unwind_Exception *a1)
{
  v2 = v1;
  os_unfair_lock_unlock(v2 + 336);
  _Unwind_Resume(a1);
}

uint64_t AGX::Mempool<16u,0u,true,0u,268435456u,AGX::HAL300::TextureHeapElem,AGX::HAL300::TextureHeapElem,unsigned long long>::addToResourceList(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  os_unfair_lock_lock((a1 + 1344));
  if (atomic_load_explicit((a1 + 1172), memory_order_acquire))
  {
    v7 = *(a1 + 1232) + 8;
    v8 = *(a1 + 1192);
    v9 = *(a1 + 1200);
    v10 = MEMORY[0x29EDC5638];
    v11 = *(a2 + 8);
    v12 = *(v7 + *MEMORY[0x29EDC5638]);
    v13 = *(a1 + 1184) + v12;
    if (**a2 == v13 && !*v11)
    {
      v14 = 0;
    }

    else
    {
      **a2 = v13;
      *v11 = 0;
      v12 = *(v7 + *v10);
      v14 = 1;
    }

    v15 = v8 + v12;
    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
    if (*v16 != v15 || *v17)
    {
      *v16 = v15;
      *v17 = 0;
      v12 = *(v7 + *v10);
      v14 = 1;
    }

    v18 = v9 + v12;
    v19 = *(a2 + 32);
    v20 = *(a2 + 40);
    if (*v19 != v18 || *v20)
    {
      *v19 = v18;
      *v20 = 0;
      v14 = 1;
    }

    if (a4)
    {
      v21 = 1;
LABEL_24:
      *a4 = v21;
    }
  }

  else
  {
    os_unfair_lock_assert_owner((a1 + 1344));
    v22 = a1 + 40 * *(a1 + 1168);
    v24 = *(v22 + 16);
    v23 = (v22 + 16);
    v25 = *(a2 + 8);
    v26 = MEMORY[0x29EDC5638];
    v27 = *MEMORY[0x29EDC5638];
    v28 = v24 + v27;
    v29 = *(v24 + v27 + 8);
    if (**a2 == v29 && ((*(v28 + 40) ^ *(*v25 + 40)) & 0xFFFFFFFFFFFFFFLL) == 0)
    {
      v14 = 0;
    }

    else
    {
      **a2 = v29;
      *v25 = *v23 + *v26;
      MTLResourceListAddResource();
      v27 = *v26;
      v14 = 1;
    }

    v30 = *(a2 + 16);
    v31 = *(a2 + 24);
    v32 = v23[1] + v27;
    v33 = *(v32 + 8);
    if (*v30 != v33 || ((*(v32 + 40) ^ *(*v31 + 40)) & 0xFFFFFFFFFFFFFFLL) != 0)
    {
      *v30 = v33;
      *v31 = v23[1] + *v26;
      MTLResourceListAddResource();
      v27 = *v26;
      v14 = 1;
    }

    v34 = *(a2 + 32);
    v35 = *(a2 + 40);
    v36 = v23[2] + v27;
    v37 = *(v36 + 8);
    if (*v34 != v37 || ((*(v36 + 40) ^ *(*v35 + 40)) & 0xFFFFFFFFFFFFFFLL) != 0)
    {
      *v34 = v37;
      *v35 = v23[2] + *v26;
      MTLResourceListAddResource();
      v14 = 1;
    }

    if (a4)
    {
      v21 = 0;
      goto LABEL_24;
    }
  }

  os_unfair_lock_unlock((a1 + 1344));
  return v14;
}

void sub_29D2C9E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__9351(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void *___ZN3AGX18ThreadedRenderPassINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE6commitEPU27objcproto16MTLCommandBuffer23IOGPUMetalCommandBufferPS9_PPNS1_14RenderContextAEm_block_invoke@<X0>(void *result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (result[4] <= a2)
  {
    v5 = 0;
    v4 = 0;
    v3 = 1;
  }

  else
  {
    v3 = 0;
    v4 = *(result[5] + 8 * a2);
    v5 = *(result[6] + 8 * a2);
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v3;
  return result;
}

BOOL ___ZN3AGX18ThreadedRenderPassINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE6commitEPU27objcproto16MTLCommandBuffer23IOGPUMetalCommandBufferPS9_PPNS1_14RenderContextAEm_block_invoke_2(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 40);
  if (v2 > a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return v2 > a2;
}

BOOL ___ZN3AGX18ThreadedRenderPassINS_6HAL3008EncodersENS1_7ClassesENS1_10ObjClassesENS1_15CommandEncodingEE6commitEPU27objcproto16MTLCommandBuffer23IOGPUMetalCommandBufferPS9_PPNS1_14RenderContextAEm_block_invoke_3(void *a1, unsigned int a2)
{
  v2 = a2;
  v3 = a1[6];
  if (v3 > a2)
  {
    v29 = *(a1[7] + 8 * *(*(a1[4] + 8) + 24));
    [v29 getCurrentKernelCommandBufferStart:&__src current:&v31 end:&v32];
    v5 = *(a1[5] + 8);
    v6 = [v29 commandBufferStorage];
    if (*(v6 + 64))
    {
      v33[0] = [*(v5 + 48) commandBufferStorage];
      v33[1] = v33[0] + 64;
      v7 = *(v33[0] + 80) - *(v33[0] + 72);
      v8 = *(v6 + 80) - *(v6 + 72);
      v9 = AGX::SidebandBufferAllocator::allocate(v33, *(v6 + 80) - *(v6 + 72), 8u, 0);
      memcpy(v9, *(v6 + 72), v8);
    }

    else
    {
      v7 = 0;
    }

    v10 = __src;
    v11 = v31 - __src;
    if (*(__src + 1) >= (v31 - __src))
    {
      v22 = *(v5 + 64);
      v23 = v11;
      if (v11 + v22 > *(v5 + 72))
      {
        [*(v5 + 48) setCurrentKernelCommandBufferPointer:?];
        [*(v5 + 48) growKernelCommandBuffer:v23];
        [*(v5 + 48) getCurrentKernelCommandBufferStart:v5 + 56 current:v5 + 64 end:v5 + 72];
        v22 = *(v5 + 64);
      }

      [*(v5 + 48) beginSegment:v22];
      [*(v5 + 48) ioGPUResourceList];
      [v29 ioGPUResourceList];
      IOGPUResourceListMergeLists();
      memcpy(*(v5 + 64), __src, v23);
      v24 = *(*(v5 + 48) + 720);
      v25 = *(v24 + 8);
      if (v25 && (*v24 != 1 || ([v25 ownedByParallelEncoder] & 1) != 0))
      {
        v26 = 0;
      }

      else
      {
        *v24 = 0;
        v26 = 4;
      }

      v27 = *(v5 + 64);
      *(v27 + 136) = v26;
      *(v5 + 64) = v23 + v27;
      [*(v5 + 48) setCurrentKernelCommandBufferPointer:?];
      *(*([*(v5 + 48) commandBufferStorage] + 128) + 16) = v7;
      [*(v5 + 48) endCurrentSegment];
    }

    else
    {
      v12 = *(v6 + 120);
      v13 = *(v12 + 8);
      if (v13)
      {
        v14 = v12 + 16;
        do
        {
          v17 = *(v14 + 28);
          v18 = v10[1];
          v19 = *(v5 + 64);
          if ((v19 + v18) > *(v5 + 72))
          {
            [*(v5 + 48) setCurrentKernelCommandBufferPointer:?];
            [*(v5 + 48) growKernelCommandBuffer:v18];
            [*(v5 + 48) getCurrentKernelCommandBufferStart:v5 + 56 current:v5 + 64 end:v5 + 72];
            v19 = *(v5 + 64);
          }

          [*(v5 + 48) beginSegment:v19];
          [*(v5 + 48) ioGPUResourceList];
          IOGPUResourceListMerge();
          memcpy(*(v5 + 64), v10, v10[1]);
          v20 = *(*(v5 + 48) + 720);
          v21 = *(v20 + 8);
          if (v21 && (*v20 != 1 || ([v21 ownedByParallelEncoder] & 1) != 0))
          {
            v15 = 0;
          }

          else
          {
            *v20 = 0;
            v15 = 4;
          }

          v16 = *(v5 + 64);
          *(v16 + 136) = v15;
          *(v5 + 64) = v10[1] + v16;
          [*(v5 + 48) setCurrentKernelCommandBufferPointer:?];
          *(*([*(v5 + 48) commandBufferStorage] + 128) + 16) = v7;
          [*(v5 + 48) endCurrentSegment];
          v10 = (v10 + v10[1]);
          v14 += 32 + (v17 << 6);
          --v13;
        }

        while (v13);
      }
    }
  }

  return v3 > v2;
}

void sub_29D2CA9E0(_Unwind_Exception *a1)
{
  v2 = v1;
  os_unfair_lock_unlock(v2 + 188);
  _Unwind_Resume(a1);
}

char *initializeWithDevice<AGXG18PFamilyVisibleFunctionTable>(void *a1, void *a2, unint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v6 = (a3 + *MEMORY[0x29EDCA6D0] - 1) & -*MEMORY[0x29EDCA6D0];
  if (v6 < a3)
  {

    return 0;
  }

  v8 = a4;
  if (*MEMORY[0x29EDCA6D0] <= a3 || (a5 & 1) != 0)
  {
LABEL_11:
    LODWORD(v21) = 104;
    result = [a1 initWithDevice:a2 pointer:0 length:a3 alignment:1 options:v8 sysMemSize:v6 gpuAddress:0 gpuTag:0 args:a6 argsSize:v21 deallocator:0];
    if (!result)
    {
      return result;
    }

    goto LABEL_12;
  }

  v10 = a1;
  v11 = a6;
  v23 = 0;
  v22 = 0;
  if ((a4 & 0xF0) == 0x20)
  {
    a4 |= 0x20000uLL;
  }

  v12 = a2;
  v13 = [a2 allocBufferSubDataWithLength:a3 options:a4 alignment:256 heapIndex:&v23 + 2 bufferIndex:&v23 bufferOffset:&v22 parentAddress:0 parentLength:0];
  if (!v13)
  {
    a6 = v11;
    a1 = v10;
    a2 = v12;
    goto LABEL_11;
  }

  LODWORD(v20) = 104;
  result = [v10 initWithPrimaryBuffer:v13 heapIndex:SHIWORD(v23) bufferIndex:v23 bufferOffset:v22 length:a3 args:v11 argsSize:v20 gpuTag:0];
  if (result)
  {
LABEL_12:
    v14 = &result[*MEMORY[0x29EDC5638]];
    v15 = *(v14 + 9);
    v16 = *(v14 + 16);
    v17 = result;
    v18 = [result length];
    result = v17;
    v19 = *(v14 + 2) & 0x1F00000000000000 | v18 & 0xFFFFFFFFFFFFFFLL | 0x2000000000000000;
    *(v14 + 1) = v15;
    *(v14 + 2) = v19;
    *(v14 + 3) = v16;
  }

  return result;
}

uint64_t AGX::VsStateConfigGen3<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::VsStateConfigGen3(uint64_t result, void *a2)
{
  *(result + 8) = 0;
  v2 = a2 + 28;
  v3 = a2 + 98;
  if (a2[28])
  {
    v4 = a2[29] == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = 28;
  if (v4)
  {
    v5 = 98;
    v6 = a2 + 98;
  }

  else
  {
    v6 = a2 + 28;
  }

  v7 = a2[v5];
  v8 = v6[1];
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = (v7 + *v7);
  }

  v11 = (v10 - *v10);
  if (*v11 < 5u)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11[2];
    if (v12)
    {
      v12 = (v12 + v10 + *(v12 + v10));
    }
  }

  v13 = (v12 - *v12);
  if (*v13 < 7u)
  {
    LODWORD(v14) = 0;
  }

  else
  {
    v14 = v13[3];
    if (v14)
    {
      LODWORD(v14) = *(v12 + v14);
    }
  }

  *result = v14;
  v15 = (v12 - *v12);
  if (*v15 >= 0x21u && (v16 = v15[16]) != 0)
  {
    v17 = *(v12 + v16);
  }

  else
  {
    v17 = 0;
  }

  v18 = &qword_2A17A1000;
  {
    v128 = result;
    v124 = a2 + 28;
    v125 = a2;
    v126 = a2 + 98;
    v123 = v12;
    v127 = v17;
    v18 = &qword_2A17A1000;
    v17 = v127;
    v12 = v123;
    v2 = v124;
    a2 = v125;
    v3 = v126;
    v122 = v121;
    result = v128;
    if (v122)
    {
      getAdditionalSpillBufferBytes(void)::extra = 0;
      v18 = &qword_2A17A1000;
      v17 = v127;
      v12 = v123;
      v2 = v124;
      a2 = v125;
      v3 = v126;
      result = v128;
    }
  }

  *(result + 4) = *(v18 + 402) + v17;
  v19 = (v12 - *v12);
  v20 = *v19;
  if (v20 < 0x25)
  {
    goto LABEL_36;
  }

  if (v19[18] && *(v12 + v19[18]))
  {
    goto LABEL_32;
  }

  if (v20 < 0x27)
  {
    goto LABEL_36;
  }

  if (v19[19] && *(v12 + v19[19]))
  {
LABEL_32:
    LOBYTE(v21) = 1;
    goto LABEL_37;
  }

  if (v20 < 0x71)
  {
LABEL_36:
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = v19[56];
    if (v21)
    {
      LOBYTE(v21) = *(v12 + v21) != 0;
    }
  }

LABEL_37:
  v22 = 0;
  *(result + 12) = 0u;
  v23 = (result + 12);
  *(result + 8) = v21;
  *(result + 28) = 0u;
  *(result + 44) = 0;
  if (a2[58])
  {
    v24 = a2[59] == 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = 58;
  if (v24)
  {
    v25 = 128;
  }

  v26 = a2 + 128;
  if (!v24)
  {
    v26 = a2 + 58;
  }

  v27 = a2[v25];
  if (v27)
  {
    v28 = v26[1] == 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = !v28;
  if (!v28)
  {
    v22 = (v27 + *v27);
  }

  v30 = (v22 - *v22);
  if (*v30 < 7u || (v31 = v30[3]) == 0)
  {
    v32 = 0;
    if (!v29)
    {
      goto LABEL_55;
    }

LABEL_57:
    v33 = (v27 + *v27);
    goto LABEL_58;
  }

  v32 = (v22 + v31 + *(v22 + v31));
  if (v29)
  {
    goto LABEL_57;
  }

LABEL_55:
  v33 = 0;
LABEL_58:
  v34 = (v33 - *v33);
  if (*v34 >= 0x17u && (v35 = v34[11]) != 0)
  {
    v36 = (v33 + v35 + *(v33 + v35));
    if (!v32)
    {
LABEL_61:
      if (!v36)
      {
        return result;
      }

      v37 = (v36 - *v36);
      if (*v37 < 0x11u)
      {
        LODWORD(v38) = 0;
      }

      else
      {
        v38 = v37[8];
        if (v38)
        {
          LODWORD(v38) = *(v36 + v38);
        }
      }

      *(result + 32) = v38;
      v75 = (v36 - *v36);
      if (*v75 < 0x13u)
      {
        LODWORD(v76) = 0;
      }

      else
      {
        v76 = v75[9];
        if (v76)
        {
          LODWORD(v76) = *(v36 + v76);
        }
      }

      *(result + 36) = v76;
      v77 = (v36 - *v36);
      if (*v77 >= 0x3Du && (v78 = v77[30]) != 0)
      {
        v79 = *(v36 + v78);
      }

      else
      {
        v79 = 0;
      }

      v80 = 0;
      *(result + 40) = v79;
      if (a2[28])
      {
        v81 = a2[29] == 0;
      }

      else
      {
        v81 = 1;
      }

      v82 = 28;
      if (v81)
      {
        v82 = 98;
      }

      else
      {
        v3 = v2;
      }

      v83 = a2[v82];
      if (v83 && v3[1])
      {
        v80 = (v83 + *v83);
      }

      v84 = (v80 - *v80);
      if (*v84 < 0xBu)
      {
        v85 = 0;
      }

      else
      {
        v85 = v84[5];
        if (v85)
        {
          v85 = (v85 + v80 + *(v85 + v80));
        }
      }

      v86 = (v85 - *v85);
      if (*v86 >= 9u && (v87 = v86[4]) != 0)
      {
        v88 = 4 * *(v85 + v87);
      }

      else
      {
        v88 = 0;
      }

      *(result + 44) = v88;
      v89 = (v36 - *v36);
      if (*v89 < 0xDu)
      {
        LODWORD(v90) = 0;
      }

      else
      {
        v90 = v89[6];
        if (v90)
        {
          LODWORD(v90) = *(v36 + v90);
        }
      }

      *v23 = v90;
      v91 = (v36 - *v36);
      if (*v91 < 0xFu)
      {
        LODWORD(v92) = 0;
      }

      else
      {
        v92 = v91[7];
        if (v92)
        {
          LODWORD(v92) = *(v36 + v92);
        }
      }

      *(result + 20) = v92;
      v93 = (v36 - *v36);
      if (*v93 < 0x23u)
      {
        LODWORD(v94) = 0;
      }

      else
      {
        v94 = v93[17];
        if (v94)
        {
          LODWORD(v94) = *(v36 + v94);
        }
      }

      *(result + 16) = v94;
      v95 = (v36 - *v36);
      if (*v95 < 0x21u)
      {
        LODWORD(v96) = 0;
      }

      else
      {
        v96 = v95[16];
        if (v96)
        {
          LODWORD(v96) = (*(v36 + v96) != 0) << 7;
        }
      }

      *(result + 48) = v96;
      v97 = (v36 - *v36);
      if (*v97 < 0x2Bu)
      {
        LODWORD(v98) = 0;
      }

      else
      {
        v98 = v97[21];
        if (v98)
        {
          LODWORD(v98) = 4 * (*(v36 + v98) != 0);
        }
      }

      v99 = v98 | v96;
      *(result + 48) = v99;
      v100 = (v36 - *v36);
      if (*v100 < 0x2Du)
      {
        LODWORD(v101) = 0;
      }

      else
      {
        v101 = v100[22];
        if (v101)
        {
          LODWORD(v101) = 8 * (*(v36 + v101) != 0);
        }
      }

      v102 = v101 | v99;
      *(result + 48) = v102;
      v103 = (v36 - *v36);
      if (*v103 < 0x15u)
      {
        LODWORD(v104) = 0;
      }

      else
      {
        v104 = v103[10];
        if (v104)
        {
          LODWORD(v104) = *(v36 + v104);
        }
      }

      *(result + 24) = v104;
      v105 = (v36 - *v36);
      if (*v105 < 0x17u)
      {
        LODWORD(v106) = 0;
      }

      else
      {
        v106 = v105[11];
        if (v106)
        {
          LODWORD(v106) = *(v36 + v106);
        }
      }

      *(result + 28) = v106;
      v107 = (v36 - *v36);
      if (*v107 < 0x29u)
      {
        LODWORD(v108) = 0;
      }

      else
      {
        v108 = v107[20];
        if (v108)
        {
          LODWORD(v108) = (*(v36 + v108) != 0) << 8;
        }
      }

      v109 = v108 | v102;
      *(result + 48) = v109;
      v110 = (v36 - *v36);
      if (*v110 < 0x35u)
      {
        LODWORD(v111) = 0;
      }

      else
      {
        v111 = v110[26];
        if (v111)
        {
          LODWORD(v111) = (*(v36 + v111) != 0) << 9;
        }
      }

      v112 = v111 | v109;
      *(result + 48) = v112;
      v113 = (v36 - *v36);
      if (*v113 < 0x2Fu)
      {
        LODWORD(v114) = 0;
      }

      else
      {
        v114 = v113[23];
        if (v114)
        {
          LODWORD(v114) = (*(v36 + v114) != 0) << 10;
        }
      }

      v115 = v114 | v112;
      *(result + 48) = v115;
      v116 = (v36 - *v36);
      if (*v116 < 0x25u)
      {
        LODWORD(v117) = 0;
      }

      else
      {
        v117 = v116[18];
        if (v117)
        {
          LODWORD(v117) = *(v36 + v117) != 0;
        }
      }

      v118 = v117 | v115 & 0x7FE;
      *(result + 48) = v118;
      v119 = (v36 - *v36);
      if (*v119 >= 0x27u && (v120 = v119[19]) != 0)
      {
        v73 = 2 * (*(v36 + v120) != 0);
      }

      else
      {
        v73 = 0;
      }

      v74 = v118 & 0xFFFFFFFD;
      goto LABEL_196;
    }
  }

  else
  {
    v36 = 0;
    if (!v32)
    {
      goto LABEL_61;
    }
  }

  v39 = (v32 - *v32);
  if (*v39 < 0xBu)
  {
    LODWORD(v40) = 0;
  }

  else
  {
    v40 = v39[5];
    if (v40)
    {
      LODWORD(v40) = *(v32 + v40);
    }
  }

  *v23 = v40;
  v41 = (v32 - *v32);
  if (*v41 < 0xFu)
  {
    LODWORD(v42) = 0;
  }

  else
  {
    v42 = v41[7];
    if (v42)
    {
      LODWORD(v42) = *(v32 + v42);
    }
  }

  *(result + 16) = v42;
  v43 = (v32 - *v32);
  if (*v43 >= 9u && (v44 = v43[4]) != 0)
  {
    v45 = (*(v32 + v44) != 0) << 7;
  }

  else
  {
    v45 = 0;
  }

  *(result + 48) = v45;
  v46 = (v32 - *v32);
  if (*v46 < 0xDu)
  {
    LODWORD(v47) = 0;
  }

  else
  {
    v47 = v46[6];
    if (v47)
    {
      LODWORD(v47) = *(v32 + v47);
    }
  }

  *(result + 20) = v47;
  v48 = a2 + 63;
  if (a2[63])
  {
    v49 = a2[64] == 0;
  }

  else
  {
    v49 = 1;
  }

  v50 = 63;
  if (v49)
  {
    v50 = 133;
    v48 = a2 + 133;
  }

  if (v48[1])
  {
    v51 = a2[v50];
    if (v51)
    {
      v52 = (v51 + *v51);
      v53 = (v52 - *v52);
      if (*v53 >= 5u && (v54 = v53[2]) != 0)
      {
        v55 = (v52 + v54 + *(v52 + v54));
      }

      else
      {
        v55 = 0;
      }

      v56 = (v55 - *v55);
      if (*v56 < 5u)
      {
        LODWORD(v57) = 0;
      }

      else
      {
        v57 = v56[2];
        if (v57)
        {
          LODWORD(v57) = *(v55 + v57) != 0;
        }
      }

      v58 = v57 | v45;
      *(result + 48) = v58;
      v59 = (v55 - *v55);
      if (*v59 < 7u)
      {
        LODWORD(v60) = 0;
      }

      else
      {
        v60 = v59[3];
        if (v60)
        {
          LODWORD(v60) = 2 * (*(v55 + v60) != 0);
        }
      }

      v61 = v60 | v58;
      *(result + 48) = v61;
      v62 = (v55 - *v55);
      if (*v62 < 9u)
      {
        LODWORD(v63) = 0;
      }

      else
      {
        v63 = v62[4];
        if (v63)
        {
          LODWORD(v63) = 4 * (*(v55 + v63) != 0);
        }
      }

      v64 = v63 | v61;
      *(result + 48) = v64;
      v65 = (v55 - *v55);
      if (*v65 < 0xBu)
      {
        LODWORD(v66) = 0;
      }

      else
      {
        v66 = v65[5];
        if (v66)
        {
          LODWORD(v66) = 8 * (*(v55 + v66) != 0);
        }
      }

      v67 = v66 | v64;
      *(result + 48) = v67;
      v68 = (v55 - *v55);
      if (*v68 < 0xDu)
      {
        LODWORD(v69) = 0;
      }

      else
      {
        v69 = v68[6];
        if (v69)
        {
          LODWORD(v69) = 16 * (*(v55 + v69) != 0);
        }
      }

      v70 = v69 | v67 & 0xFFFFFFEF;
      *(result + 48) = v70;
      v71 = (v55 - *v55);
      if (*v71 >= 0xFu && (v72 = v71[7]) != 0)
      {
        v73 = 32 * (*(v55 + v72) != 0);
        v74 = v70 & 0xFFFFFFDF;
      }

      else
      {
        v73 = 0;
        v74 = v70 & 0xFFFFFFDF;
      }

LABEL_196:
      *(result + 48) = v73 | v74;
    }
  }

  return result;
}

void AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~WarpFunction(void *a1)
{
  *a1 = &unk_2A23FA638;
  if (a1[6162])
  {
    v2 = a1 + 6159;
    v3 = a1[6163];
    v4 = *(v3 + 16);
    var40[0] = MEMORY[0x29EDCA5F8];
    var40[1] = 3221225472;
    var40[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    var40[3] = &__block_descriptor_48_e5_v8__0l;
    var40[4] = v3;
    var40[5] = a1 + 6159;
    dispatch_sync(v4, var40);
    *(v2 + 25) = 0u;
    *v2 = 0u;
    v2[1] = 0u;
    v1 = var40[9];
  }

  JUMPOUT(0x29ED520D0);
}

double AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::~WarpFunction(void *a1)
{
  *a1 = &unk_2A23FA638;
  if (a1[6162])
  {
    v1 = a1 + 6159;
    v2 = a1[6163];
    v3 = *(v2 + 16);
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = v2;
    v5[5] = a1 + 6159;
    dispatch_sync(v3, v5);
    result = 0.0;
    *(v1 + 25) = 0u;
    *v1 = 0u;
    v1[1] = 0u;
  }

  return result;
}

void *AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::initFactors(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v154 = v2;
  HIDWORD(v151) = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v162 = *MEMORY[0x29EDCA608];
  v156 = v1;
  v1[4] = v6;
  v1[12308] = v4;
  v1[12309] = v10;
  v152 = v10;
  v153 = v1 + 12288;
  v1[12313] = (v4 + 31) >> 5;
  v1[12314] = (v10 + 31) >> 5;
  MEMORY[0x2A1C7C4A8](v1);
  v155 = &v151 - v12;
  v160[0] = 0;
  v160[1] = 0;
  v159[0] = 0;
  v159[1] = 0;
  if (v13)
  {
    v14 = 0;
    v15 = 1;
    do
    {
      v20 = *(v9 + 8 * v14);
      if (v20)
      {
        [v20 sampleCount];
        v21 = v157[2];
        v20 = *(v9 + 8 * v14);
      }

      else
      {
        v21 = 0;
      }

      v161[v14] = v21;
      v160[v14] = [v20 verticalSampleStorage];
      v17 = *(v9 + 8 * v14);
      if (v17)
      {
        [v17 sampleCount];
        v16 = v157[0];
        v17 = *(v9 + 8 * v14);
      }

      else
      {
        v16 = 0;
      }

      *(&v159[2] + v14) = v16;
      v159[v14] = [v17 horizontalSampleStorage];
      v14 = v15++;
    }

    while (v14 < v7);
    v22 = v156 + 12305;
    v23 = v156 + 12310;
    if (v154)
    {
      v24 = 0;
      v25 = v155;
      do
      {
        v23[v24] = 0;
        v27 = *(&v159[2] + v24);
        if (v27)
        {
          v28 = 0;
          v29 = 0;
          v30 = v159[v24];
          v31 = 1;
          do
          {
            v32 = *(v30 + 4 * v28);
            v33 = vcvtps_u32_f32(32.0 / v32);
            if (v32 > 0.01)
            {
              v31 = v33;
            }

            *&v25[4 * v28++] = vcvts_n_f32_u32(v31, 5uLL);
            v29 += v31;
          }

          while (v27 != v28);
          v23[v24] = v28;
        }

        else
        {
          LODWORD(v28) = 0;
          v29 = 0;
          v31 = 1;
        }

        v34 = &v155[4096 * v24];
        if (v29 != v5)
        {
          *(v34 + 4 * (v28 - 1)) = vcvts_n_f32_u32(v5 - v29 + v31, 5uLL);
        }

        v22[v24] = vcvts_n_u32_f32(v28, 5uLL);
        AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::buildWidthLUT(v156, v34, v24);
        v158[v24++] = v26;
        v25 += 4096;
      }

      while (v24 != v7);
    }

    else if (HIDWORD(v151))
    {
      v35 = 0;
      do
      {
        v40 = &v155[4096 * v35];
        v41 = 0;
        if (v5)
        {
          v42 = v159[v35];
          v43 = 0x100000000;
          v44 = -1;
          v45 = 0.01;
          v46 = -1;
          do
          {
            v48 = v45;
            v45 = fmaxf(*v42, 0.01);
            if (v45 > v48)
            {
              v48 = v45;
            }

            if ((v48 * (v44 - v46 + 1)) > 32.0)
            {
              *(v40 + 4 * v41++) = vcvts_n_f32_s32(v44 - v46, 5uLL);
              v46 = v44;
            }

            else
            {
              v45 = v48;
            }

            v47 = v5 > v43 >> 32;
            v43 += 0x100000000;
            ++v44;
            ++v42;
          }

          while (v47);
          v36 = ~v46;
        }

        else
        {
          v36 = 0;
          v45 = 0.01;
        }

        v37 = (v36 + v5);
        v38 = ceilf(v45 * v37);
        v23[v35] = v41 + 1;
        *(v40 + 4 * v41) = v37 / v38;
        v22[v35] = (v38 + (v41 * 32.0));
        AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::buildWidthLUT(v156, v40, v35);
        v158[v35] = v39;
        v35 = (v35 + 1);
      }

      while (v35 < v7);
    }

    else
    {
      v49 = 0;
      v50 = v5;
      do
      {
        v52 = &v155[4096 * v49];
        if (v5)
        {
          v53 = 0;
          v54 = 0;
          v55 = v159[v49];
          v56 = (*(&v159[2] + v49) - 1);
          v57 = -1;
          v58 = 0.01;
          do
          {
            v59 = v53 + 1;
            v60 = (v53 / v50) * v56;
            v61 = ((v53 + 1) / v50) * v56;
            LODWORD(v18) = vcvtps_u32_f32(v60);
            LODWORD(v19) = vcvtms_u32_f32(v61);
            v62 = *(v55 + 4 * vcvtms_u32_f32(v60)) + 0.0039062;
            v63 = fminf(fmaxf(*(v55 + 4 * v18) + 0.0039062, 0.01), 1.0);
            v64 = v63;
            if (v18 != v19)
            {
              v64 = fminf(fmaxf(*(v55 + 4 * v19) + 0.0039062, 0.01), 1.0);
            }

            v65 = fminf(fmaxf(v62, 0.01), 1.0);
            v66 = v65 + ((v60 - floorf(v60)) * (v63 - v65));
            v67 = v64 + ((v61 - floorf(v61)) * (fminf(fmaxf(*(v55 + 4 * vcvtps_u32_f32(v61)) + 0.0039062, 0.01), 1.0) - v64));
            if (v66 <= v67)
            {
              v66 = v67;
            }

            if (v18 < v19)
            {
              v19 -= v18;
              v68 = (v55 + 4 * v18);
              do
              {
                v69 = *v68++;
                v70 = fminf(fmaxf(v69 + 0.0039062, 0.01), 1.0);
                if (v66 <= v70)
                {
                  v66 = v70;
                }

                --v19;
              }

              while (v19);
            }

            v71 = fmaxf(v66, 0.01);
            if (v71 > v58)
            {
              v58 = v71;
            }

            if ((v58 * (v53 - v57)) > 32.0)
            {
              v72 = v53 - 1;
              *(v52 + 4 * v54++) = vcvts_n_f32_s32(v72 - v57, 5uLL);
              v23[v49] = v54;
              v57 = v72;
              v58 = v71;
            }

            v18 = v59;
            v53 = v59;
          }

          while (v59 < v5);
          v73 = ~v57;
        }

        else
        {
          v54 = 0;
          v73 = 0;
          v58 = 0.01;
        }

        v74 = v73 + v5;
        v75 = v74;
        v76 = ceilf(v58 * v74);
        if (v74 <= 32.0)
        {
          v77 = v74;
        }

        else
        {
          v77 = 32.0;
        }

        if (v76 < v77)
        {
          v78 = 0;
          v79 = 0.0;
          do
          {
            v80 = ((v75 / v76) * 32.0) - truncf((v75 / v76) * 32.0);
            if (v80 == 0.0)
            {
              v79 = v76;
            }

            v78 |= v80 == 0.0;
            v76 = v76 + 1.0;
          }

          while (v76 < v77);
          if (v78)
          {
            v77 = v79;
          }
        }

        v23[v49] = v54 + 1;
        *(v52 + 4 * v54) = v75 / v77;
        v22[v49] = (v77 + (v54 * 32.0));
        AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::buildWidthLUT(v156, v52, v49);
        v158[v49] = v51;
        v49 = (v49 + 1);
      }

      while (v49 < v7);
    }
  }

  v81 = v153;
  v153[24] = 0;
  v82 = v156[4];
  if ((v154 & 1) == 0)
  {
    if (HIDWORD(v151))
    {
      v95 = v152;
      if (v152)
      {
        if (v82)
        {
          v96 = 0;
          v97 = 0;
          v98 = -1;
          v99 = 0.01;
          do
          {
            v100 = v160;
            v101 = 0.01;
            v102 = v82;
            do
            {
              v103 = *v100++;
              v104 = *(v103 + 4 * v96);
              if (v104 > v101)
              {
                v101 = v104;
              }

              --v102;
            }

            while (v102);
            if (v101 > v99)
            {
              v99 = v101;
            }

            if ((v99 * (v96 - v98)) > 32.0)
            {
              *&v157[v97++] = vcvts_n_f32_s32(v96 - 1 - v98, 5uLL);
              v98 = v96 - 1;
            }

            else
            {
              v101 = v99;
            }

            ++v96;
            v99 = v101;
          }

          while (v95 > v96);
          goto LABEL_121;
        }

        v97 = 0;
        v147 = -1;
        v98 = -1;
        do
        {
          if (((v147 - v98 + 1) * 0.01) > 32.0)
          {
            *&v157[v97++] = vcvts_n_f32_s32(v147 - v98, 5uLL);
            v98 = v147;
          }

          v148 = v147 + 2;
          ++v147;
        }

        while (v148 < v95);
      }

      else
      {
        v97 = 0;
        v98 = -1;
      }

      v101 = 0.01;
LABEL_121:
      v130 = (~v98 + v95);
      v131 = ceilf(v101 * v130);
      *&v157[v97] = v130 / v131;
      v81[24] = v97 + 1;
      v132 = v131 + (v97 * 32.0);
LABEL_134:
      v129 = v132;
      goto LABEL_135;
    }

    v105 = v152;
    if (v152)
    {
      if (v82)
      {
        v106 = 0;
        v107 = 0;
        v108 = v152;
        v109 = -1;
        v110 = 0.01;
        do
        {
          v112 = 0;
          v113 = v106;
          v114 = v106++ / v108;
          v115 = 0.01;
          do
          {
            v116 = v160[v112];
            v119 = (v161[v112] - 1);
            v117 = v114 * v119;
            v118 = (v106 / v108) * v119;
            LODWORD(v119) = vcvtps_u32_f32(v117);
            LODWORD(v11) = vcvtms_u32_f32(v118);
            v120 = *(v116 + 4 * vcvtms_u32_f32(v117)) + 0.0039062;
            v121 = fminf(fmaxf(*(v116 + 4 * v119) + 0.0039062, 0.01), 1.0);
            v122 = v121;
            if (v119 != v11)
            {
              v122 = fminf(fmaxf(*(v116 + 4 * v11) + 0.0039062, 0.01), 1.0);
            }

            v123 = fminf(fmaxf(v120, 0.01), 1.0);
            v124 = v123 + ((v117 - floorf(v117)) * (v121 - v123));
            v125 = v122 + ((v118 - floorf(v118)) * (fminf(fmaxf(*(v116 + 4 * vcvtps_u32_f32(v118)) + 0.0039062, 0.01), 1.0) - v122));
            if (v124 <= v125)
            {
              v124 = v125;
            }

            if (v119 < v11)
            {
              v11 -= v119;
              v126 = (v116 + 4 * v119);
              do
              {
                v127 = *v126++;
                v128 = fminf(fmaxf(v127 + 0.0039062, 0.01), 1.0);
                if (v124 <= v128)
                {
                  v124 = v128;
                }

                --v11;
              }

              while (v11);
            }

            if (v124 > v115)
            {
              v115 = v124;
            }

            ++v112;
          }

          while (v112 != v82);
          if (v115 > v110)
          {
            v110 = v115;
          }

          if ((v110 * (v113 - v109)) > 32.0)
          {
            v111 = v113 - 1;
            *&v157[v107++] = vcvts_n_f32_s32(v111 - v109, 5uLL);
            v109 = v111;
          }

          else
          {
            v115 = v110;
          }

          v110 = v115;
        }

        while (v106 < v105);
        goto LABEL_124;
      }

      v107 = 0;
      v149 = -1;
      v109 = -1;
      do
      {
        if (((v149 - v109 + 1) * 0.01) > 32.0)
        {
          *&v157[v107++] = vcvts_n_f32_s32(v149 - v109, 5uLL);
          v109 = v149;
        }

        v150 = v149 + 2;
        ++v149;
      }

      while (v150 < v105);
    }

    else
    {
      v107 = 0;
      v109 = -1;
    }

    v115 = 0.01;
LABEL_124:
    v133 = (~v109 + v105);
    v134 = ceilf(v115 * v133);
    v135 = 32.0;
    if (v133 <= 32.0)
    {
      v135 = (~v109 + v105);
    }

    if (v134 < v135)
    {
      v136 = 0;
      v137 = 0.0;
      do
      {
        v138 = ((v133 / v134) * 32.0) - truncf((v133 / v134) * 32.0);
        if (v138 == 0.0)
        {
          v137 = v134;
        }

        v136 |= v138 == 0.0;
        v134 = v134 + 1.0;
      }

      while (v134 < v135);
      if (v136)
      {
        v135 = v137;
      }
    }

    *&v157[v107] = v133 / v135;
    v81[24] = v107 + 1;
    v132 = v135 + (v107 * 32.0);
    goto LABEL_134;
  }

  v83 = v161[0];
  if (v161[0])
  {
    if (v82)
    {
      v84 = 0;
      v85 = 0;
      v86 = 1;
      v87 = v152;
      do
      {
        v88 = v160;
        v89 = 0.01;
        v90 = v82;
        do
        {
          v91 = *v88++;
          v92 = *(v91 + 4 * v84);
          v93 = vcvtps_u32_f32(32.0 / v92);
          if (v92 > v89)
          {
            v86 = v93;
            v89 = v92;
          }

          --v90;
        }

        while (v90);
        v94 = v84 + 1;
        *&v157[v84] = vcvts_n_f32_u32(v86, 5uLL);
        v85 += v86;
        v84 = v94;
      }

      while (v94 != v83);
      LODWORD(v83) = v94;
    }

    else
    {
      memset_pattern16(v157, &unk_29D2F27E0, 4 * v161[0]);
      v86 = 1;
      v85 = v83;
      v87 = v152;
    }

    v81[24] = v83;
  }

  else
  {
    v85 = 0;
    v86 = 1;
    v87 = v152;
  }

  if (v85 != v87)
  {
    *&v157[(v83 - 1)] = vcvts_n_f32_u32(v87 - v85 + v86, 5uLL);
  }

  v129 = vcvts_n_u32_f32(v83, 5uLL);
LABEL_135:
  v81[19] = v129;
  result = AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::buildHeightLUTs(v156);
  v141 = 1.0;
  if (v7)
  {
    v142 = v158;
    v143 = 1;
    do
    {
      v144 = *v142++;
      v145 = v144;
      if (v144 < v141)
      {
        v141 = v145;
      }

      v146 = v143++;
    }

    while (v146 < v7);
  }

  if (v140 >= v141)
  {
    v140 = v141;
  }

  *(v81 + 108) = fmin(ceil(2.0 / v140), 255.0);
  if (v81[42])
  {
    return memcpy(*(v81 + 28), v156 + 5, 0xC030uLL);
  }

  return result;
}

uint64_t AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::buildWidthLUT(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a1 + 49152;
  v6 = *(a1 + 49352) + 4 * (a3 << 10);
  v7 = *(a1 + 49328) + 8 * (a3 << 10);
  result = AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::buildGPULUTs<true>();
  v9 = a1 + 8200 * a3;
  v10 = (v9 + 20);
  v11 = v9 + 16420;
  v12 = *(a1 + 4 * a3 + 49240);
  if (!v12)
  {
    goto LABEL_11;
  }

  if (v12 <= 3)
  {
    LODWORD(v13) = 0;
    v14 = v7;
    v15 = v10;
    goto LABEL_8;
  }

  v13 = v12 & 0xFFFFFFFC;
  v15 = &v10[2 * v13];
  v16 = vdupq_n_s32(0x4B800000u);
  v17.i64[0] = 0x100000001;
  v17.i64[1] = 0x100000001;
  v18 = vdupq_n_s32(0x3B800000u);
  v19 = v7;
  v20 = v13;
  do
  {
    v32 = vld2q_f32(v19);
    v19 += 8;
    v33.val[0] = vdivq_f32(v16, vcvtq_f32_u32(vaddq_s32(v32.val[0], v17)));
    v33.val[1] = vmulq_f32(vcvtq_f32_s32(vshrq_n_s32(vshlq_n_s32(v32.val[1], 8uLL), 8uLL)), v18);
    vst2q_f32(v10, v33);
    v10 += 8;
    v20 -= 4;
  }

  while (v20);
  if (v13 != v12)
  {
    v14 = (v7 + 8 * v13);
LABEL_8:
    v21 = v12 - v13;
    do
    {
      v22 = *v14;
      v23 = v14[1];
      v14 += 2;
      *v15 = 16777000.0 / (v22 + 1);
      v15[1] = vcvts_n_f32_s32(v23 << 8 >> 8, 8uLL);
      v15 += 2;
      --v21;
    }

    while (v21);
  }

  v10 = v15;
  if (v12 < 0x401)
  {
LABEL_11:
    *v10 = *(v10 - 1);
  }

  v24 = *(v5 + 100);
  v25 = __CFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    goto LABEL_18;
  }

  v27 = v26;
  do
  {
    v28 = (v7 + 8 * (*v6 & 0x7FF));
    v29 = *v28;
    LODWORD(v28) = v28[1];
    *v11 = vcvts_n_f32_u32(v29 + 1, 0x18uLL);
    v30 = v28 << 8;
    *(v11 + 4) = *(v11 + 4) | (v28 << 8);
    v31 = *(v6 + 2) & 0x3F;
    if ((*(v6 + 2) & 0x3F) == 0)
    {
      v31 = 255;
    }

    *(v11 + 4) = v31 | v30;
    v6 += 4;
    v11 += 8;
    --v27;
  }

  while (v27);
  if (v26 < 0x401)
  {
LABEL_18:
    *v11 = *(v11 - 8);
  }

  return result;
}

uint64_t AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::buildHeightLUTs(uint64_t a1)
{
  v2 = (a1 + 49248);
  v3 = (a1 + 32820);
  v4 = *(a1 + 49336);
  v28 = *(a1 + 49360);
  result = AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::buildGPULUTs<false>();
  v6 = a1 + 41020;
  v7 = *(&v28 + 1);
  v8 = *v2;
  if (!v8)
  {
    goto LABEL_11;
  }

  if (v8 <= 3)
  {
    LODWORD(v9) = 0;
    v10 = v4;
    v11 = v3;
    goto LABEL_8;
  }

  v9 = v8 & 0xFFFFFFFC;
  v11 = &v3[2 * v9];
  v12 = vdupq_n_s32(0x4B800000u);
  v13.i64[0] = 0x100000001;
  v13.i64[1] = 0x100000001;
  v14 = vdupq_n_s32(0x3B800000u);
  v15 = v4;
  v16 = v9;
  do
  {
    v29 = vld2q_f32(v15);
    v15 += 8;
    v30.val[0] = vdivq_f32(v12, vcvtq_f32_u32(vaddq_s32(v29.val[0], v13)));
    v30.val[1] = vmulq_f32(vcvtq_f32_s32(vshrq_n_s32(vshlq_n_s32(v29.val[1], 8uLL), 8uLL)), v14);
    vst2q_f32(v3, v30);
    v3 += 8;
    v16 -= 4;
  }

  while (v16);
  if (v9 != v8)
  {
    v10 = &v4[2 * v9];
LABEL_8:
    v17 = v8 - v9;
    do
    {
      v18 = *v10;
      v19 = v10[1];
      v10 += 2;
      *v11 = 16777000.0 / (v18 + 1);
      v11[1] = vcvts_n_f32_s32(v19 << 8 >> 8, 8uLL);
      v11 += 2;
      --v17;
    }

    while (v17);
  }

  v3 = v11;
  if (v8 < 0x401)
  {
LABEL_11:
    *v3 = *(v3 - 1);
  }

  v20 = v2[2];
  v21 = __CFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    goto LABEL_18;
  }

  v23 = v22;
  do
  {
    v24 = &v4[2 * (*v7 & 0x7FF)];
    v25 = *v24;
    LODWORD(v24) = v24[1];
    *v6 = vcvts_n_f32_u32(v25 + 1, 0x18uLL);
    v26 = v24 << 8;
    *(v6 + 4) = *(v6 + 4) | (v24 << 8);
    v27 = *(v7 + 2) & 0x3F;
    if ((*(v7 + 2) & 0x3F) == 0)
    {
      v27 = 255;
    }

    *(v6 + 4) = v27 | v26;
    v7 += 4;
    v6 += 8;
    --v23;
  }

  while (v23);
  if (v22 < 0x401)
  {
LABEL_18:
    *v6 = *(v6 - 8);
  }

  return result;
}

uint64_t AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::buildGPULUTs<false>()
{
  v45[1] = *MEMORY[0x29EDCA608];
  result = MEMORY[0x2A1C7C4A8]();
  v8 = v45 - v7;
  if (v6)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 32 * v6;
    v13 = 1.0;
    do
    {
      v14 = (v2 + 4 * v9);
      v15 = *v1++;
      v16 = v15;
      v17 = 1.0 / v15;
      if (v17 < v13)
      {
        v13 = v17;
      }

      v18 = v10 - v11 * v17;
      *v14 = (v17 * 16777216.0 + 0.5 + -1.0);
      v14[1] = llround(v18 * 256.0) & 0xFFFFFF;
      *&v8[4 * v9] = v11;
      *&v8[4 * (v9 + 1)] = ((v16 * 32.0) * 0.5) + v11;
      v11 += vcvts_n_u32_f32(v16, 5uLL);
      v10 += 32;
      v9 += 2;
    }

    while (v12 != v10);
  }

  v19 = *(v5 + 104);
  if (v19 != -1)
  {
    v20 = 0;
    v21 = 0;
    v22 = *v3;
    do
    {
      v24 = (32 * v20);
      v25 = v21 + 1;
      if (v4 <= v21 + 1)
      {
        v26 = v21 + 1;
      }

      else
      {
        v26 = v4;
      }

      v21 = v26 - 1;
      while (1)
      {
        v27 = 0.0;
        if (v26 == v25)
        {
          break;
        }

        v28 = v25;
        v29 = *&v8[4 * v25++];
        if (v29 > v24)
        {
          v21 = v28 - 1;
          if (v28 < v4)
          {
            v30 = v29 - v24;
            if (v30 < 32.0)
            {
              v31 = v30;
              goto LABEL_19;
            }
          }

          break;
        }
      }

      v31 = 0.0;
LABEL_19:
      if (v21 + 2 < v4)
      {
        v32 = *&v8[4 * v21 + 8] - v24;
        if (v32 < 32.0)
        {
          v27 = v32;
        }
      }

      *v22 = *v22 & 0xC0C0F800 | v21 & 0x7FF | (((v31 * 2.0 + 0.5) & 0x3F) << 16) | (((v27 * 2.0 + 0.5) & 0x3F) << 24);
      ++v22;
      v23 = v20++ == v19;
    }

    while (!v23);
    v33 = 0;
    v34 = 0;
    v35 = *(v3 + 8);
    do
    {
      v36 = (32 * v33);
      v37 = &v8[4 * v34 + 8];
      while (1)
      {
        v38 = v34 + 2;
        v39 = 0.0;
        if (v34 + 2 >= v4)
        {
          break;
        }

        v40 = *v37;
        v37 += 2;
        v41 = v40;
        v34 += 2;
        if (v40 > v36)
        {
          v34 = v38 - 2;
          v42 = v41 - v36;
          if (v42 < 32.0)
          {
            v43 = v42;
            goto LABEL_30;
          }

          break;
        }
      }

      v43 = 0.0;
LABEL_30:
      if (v34 + 4 < v4)
      {
        v44 = *&v8[4 * v34 + 16] - v36;
        if (v44 < 32.0)
        {
          v39 = v44;
        }
      }

      result = (v34 >> 1) & 0x7FF;
      *v35 = *v35 & 0xC0C0F800 | result | (((v43 * 2.0 + 0.5) & 0x3F) << 16) | (((v39 * 2.0 + 0.5) & 0x3F) << 24);
      ++v35;
      v23 = v33++ == v19;
    }

    while (!v23);
  }

  return result;
}

uint64_t AGX::WarpFunction<AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::buildGPULUTs<true>()
{
  v44[1] = *MEMORY[0x29EDCA608];
  result = MEMORY[0x2A1C7C4A8]();
  v7 = v44 - v6;
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 32 * v5;
    v12 = 1.0;
    do
    {
      v13 = (v2 + 4 * v8);
      v14 = *v1++;
      v15 = v14;
      v16 = 1.0 / v14;
      if (v16 < v12)
      {
        v12 = v16;
      }

      v17 = v9 - v10 * v16;
      *v13 = (v16 * 16777216.0 + 0.5 + -1.0);
      v13[1] = llround(v17 * 256.0) & 0xFFFFFF;
      *&v7[4 * v8] = v10;
      *&v7[4 * (v8 + 1)] = ((v15 * 32.0) * 0.5) + v10;
      v10 += vcvts_n_u32_f32(v15, 5uLL);
      v9 += 32;
      v8 += 2;
    }

    while (v11 != v9);
  }

  v18 = *(result + 49252);
  if (v18 != -1)
  {
    v19 = 0;
    v20 = 0;
    v21 = *v3;
    do
    {
      v23 = (32 * v19);
      v24 = v20 + 1;
      if (v4 <= v20 + 1)
      {
        v25 = v20 + 1;
      }

      else
      {
        v25 = v4;
      }

      v20 = v25 - 1;
      while (1)
      {
        v26 = 0.0;
        if (v25 == v24)
        {
          break;
        }

        v27 = v24;
        v28 = *&v7[4 * v24++];
        if (v28 > v23)
        {
          v20 = v27 - 1;
          if (v27 < v4)
          {
            v29 = v28 - v23;
            if (v29 < 32.0)
            {
              v30 = v29;
              goto LABEL_19;
            }
          }

          break;
        }
      }

      v30 = 0.0;
LABEL_19:
      if (v20 + 2 < v4)
      {
        v31 = *&v7[4 * v20 + 8] - v23;
        if (v31 < 32.0)
        {
          v26 = v31;
        }
      }

      *v21 = *v21 & 0xC0C0F800 | v20 & 0x7FF | (((v30 * 2.0 + 0.5) & 0x3F) << 16) | (((v26 * 2.0 + 0.5) & 0x3F) << 24);
      ++v21;
      v22 = v19++ == v18;
    }

    while (!v22);
    v32 = 0;
    v33 = 0;
    v34 = *(v3 + 8);
    do
    {
      v35 = (32 * v32);
      v36 = &v7[4 * v33 + 8];
      while (1)
      {
        v37 = v33 + 2;
        v38 = 0.0;
        if (v33 + 2 >= v4)
        {
          break;
        }

        v39 = *v36;
        v36 += 2;
        v40 = v39;
        v33 += 2;
        if (v39 > v35)
        {
          v33 = v37 - 2;
          v41 = v40 - v35;
          if (v41 < 32.0)
          {
            v42 = v41;
            goto LABEL_30;
          }

          break;
        }
      }

      v42 = 0.0;
LABEL_30:
      if (v33 + 4 < v4)
      {
        v43 = *&v7[4 * v33 + 16] - v35;
        if (v43 < 32.0)
        {
          v38 = v43;
        }
      }

      result = (v33 >> 1) & 0x7FF;
      *v34 = *v34 & 0xC0C0F800 | result | (((v42 * 2.0 + 0.5) & 0x3F) << 16) | (((v38 * 2.0 + 0.5) & 0x3F) << 24);
      ++v34;
      v22 = v32++ == v18;
    }

    while (!v22);
  }

  return result;
}

void AGX::HAL300::WarpFunction::~WarpFunction(AGX::HAL300::WarpFunction *this)
{
  *this = &unk_2A23FA638;
  if (*(this + 6162))
  {
    v2 = (this + 49272);
    v3 = *(this + 6163);
    v4 = *(v3 + 16);
    var40[0] = MEMORY[0x29EDCA5F8];
    var40[1] = 3221225472;
    var40[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    var40[3] = &__block_descriptor_48_e5_v8__0l;
    var40[4] = v3;
    var40[5] = this + 49272;
    dispatch_sync(v4, var40);
    *(v2 + 25) = 0u;
    *v2 = 0u;
    v2[1] = 0u;
    v1 = var40[9];
  }

  JUMPOUT(0x29ED520D0);
}

{
  *this = &unk_2A23FA638;
  if (*(this + 6162))
  {
    v1 = (this + 49272);
    v2 = *(this + 6163);
    v3 = *(v2 + 16);
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 3221225472;
    v4[2] = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
    v4[3] = &__block_descriptor_48_e5_v8__0l;
    v4[4] = v2;
    v4[5] = this + 49272;
    dispatch_sync(v3, v4);
    *(v1 + 25) = 0u;
    *v1 = 0u;
    v1[1] = 0u;
  }
}

void ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v2 + 24);
  if (*(v3 + 304) == 1)
  {
    v9 = *v3;
    v10 = v3[1];
    if (*v3)
    {
      v1 = *v3;
    }

    *(v1 + 8) = v10;
    *v10 = v9;

    free(v3);
  }

  else
  {
    v4 = (*(v2 + 8) - *(v1 + 144));
    v5 = *v4;
    if (*v4 > 0x800)
    {
      v7 = v3 + 36;
    }

    else
    {
      v6 = (v5 >> 6) - 1;
      *(v3 + 6) |= 1 << v6;
      v7 = &v3[v6 + 4];
    }

    v8 = *v7;
    *v7 = v4;
    v4[1] = v8;
    v3[2] += v5;
  }
}

void AGX::Heap<true>::allocateImpl(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v8 = (a3 + *(a2 + 144) + 63) & 0xFFFFFFFFFFFFFFC0;
  v9 = *(a2 + 16);
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = ___ZN3AGX4HeapILb1EE12allocateImplEmPPK18IOGPUMetalResource_block_invoke;
  v13[3] = &unk_29F343920;
  v13[8] = a2;
  v13[9] = v8;
  v13[4] = &v15;
  v13[5] = v14;
  v13[6] = &v19;
  v13[7] = &v23;
  dispatch_sync(v9, v13);
  v10 = v16;
  if (a4)
  {
    *a4 = *(v16[3] + 296);
  }

  v11 = v24[3];
  v12 = v10[3];
  *a1 = v20[3];
  a1[1] = v11;
  a1[2] = a3;
  a1[3] = v12;
  a1[4] = a2;
  _Block_object_dispose(v14, 8);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
}

uint64_t ___ZN3AGX4HeapILb1EE12allocateImplEmPPK18IOGPUMetalResource_block_invoke(void *a1)
{
  v2 = a1[8];
  *(*(a1[4] + 8) + 24) = *v2;
  v3 = a1[4];
  v4 = *(*(v3 + 8) + 24);
  if (!v4)
  {
LABEL_18:
    *(*(a1[4] + 8) + 24) = malloc_type_malloc(0x138uLL, 0x10A0040668EDDA4uLL);
    v15 = *(*(a1[4] + 8) + 24);
    if (!v15)
    {
      _ZZZN3AGX4HeapILb1EE12allocateImplEmPPK18IOGPUMetalResourceEUb_ENKUlvE0_clB14_AGX__Crashed_Ev();
    }

    *(v15 + 304) = 0;
    v16 = *(v2 + 136) + a1[9];
    v17 = *(v2 + 104);
    if (v16 <= v17)
    {
      if (*v2)
      {
        v23 = 1;
        if (!(v17 >> 22))
        {
          v23 = 2;
        }

        v24 = v17 << v23;
        if (v24 >= 0x40000)
        {
          v24 = 0x40000;
        }

        *(v2 + 104) = v24;
      }

      *(*(*(a1[4] + 8) + 24) + 296) = [objc_alloc(MEMORY[0x29EDC55B8]) initWithDevice:*(v2 + 24) options:0 args:v2 + 32 argsSize:104];
      v20 = *(v2 + 136);
      v21 = @"AGXHeap with guard";
      v22 = @"AGXHeap without guard";
    }

    else
    {
      v18 = *(v2 + 96);
      v61 = *(v2 + 80);
      v62 = v18;
      v63 = *(v2 + 112);
      v64 = *(v2 + 128);
      v19 = *(v2 + 48);
      v58 = *(v2 + 32);
      v59 = v19;
      v60 = *(v2 + 64);
      *(&v62 + 1) = (v16 + 0x3FFF) & 0xFFFFFFFFFFFFC000;
      *(*(*(a1[4] + 8) + 24) + 296) = [objc_alloc(MEMORY[0x29EDC55B8]) initWithDevice:*(v2 + 24) options:0 args:&v58 argsSize:104];
      v20 = *(v2 + 136);
      v21 = @"AGXHeap with guard (large)";
      v22 = @"AGXHeap without guard (large)";
    }

    if (v20)
    {
      v25 = v21;
    }

    else
    {
      v25 = v22;
    }

    [*(*(*(a1[4] + 8) + 24) + 296) setLabel:{v25, v58, v59, v60, v61, v62, v63, v64}];
    v26 = *(*(a1[4] + 8) + 24);
    if (!v26[37])
    {
      free(v26);
      *(*(a1[4] + 8) + 24) = 0;
      _ZZZN3AGX4HeapILb1EE12allocateImplEmPPK18IOGPUMetalResourceEUb_ENKUlvE_clB14_AGX__Crashed_Ev();
    }

    v27 = *(v2 + 160);
    if (v27)
    {
      v28 = *v27;
      v29 = (*v27 + 1) > 1 ? v28 + 1 : 1;
      v30 = *v27;
      atomic_compare_exchange_strong(v27, &v30, v29);
      if (v30 != v28)
      {
        v31 = v30;
        do
        {
          if ((v30 + 1) > 1)
          {
            v32 = v30 + 1;
          }

          else
          {
            v32 = 1;
          }

          atomic_compare_exchange_strong(v27, &v31, v32);
          v33 = v31 == v30;
          v30 = v31;
        }

        while (!v33);
      }
    }

    *(*(*(a1[4] + 8) + 24) + 16) = [*(*(*(a1[4] + 8) + 24) + 296) resourceSize] - *(v2 + 136);
    *(*(*(a1[4] + 8) + 24) + 24) = 0;
    *(*(*(a1[4] + 8) + 24) + 32) = 0;
    *(*(*(a1[4] + 8) + 24) + 40) = 0;
    *(*(*(a1[4] + 8) + 24) + 48) = 0;
    *(*(*(a1[4] + 8) + 24) + 56) = 0;
    *(*(*(a1[4] + 8) + 24) + 64) = 0;
    *(*(*(a1[4] + 8) + 24) + 72) = 0;
    *(*(*(a1[4] + 8) + 24) + 80) = 0;
    *(*(*(a1[4] + 8) + 24) + 88) = 0;
    *(*(*(a1[4] + 8) + 24) + 96) = 0;
    *(*(*(a1[4] + 8) + 24) + 104) = 0;
    *(*(*(a1[4] + 8) + 24) + 112) = 0;
    *(*(*(a1[4] + 8) + 24) + 120) = 0;
    *(*(*(a1[4] + 8) + 24) + 128) = 0;
    *(*(*(a1[4] + 8) + 24) + 136) = 0;
    *(*(*(a1[4] + 8) + 24) + 144) = 0;
    *(*(*(a1[4] + 8) + 24) + 152) = 0;
    *(*(*(a1[4] + 8) + 24) + 160) = 0;
    *(*(*(a1[4] + 8) + 24) + 168) = 0;
    *(*(*(a1[4] + 8) + 24) + 176) = 0;
    *(*(*(a1[4] + 8) + 24) + 184) = 0;
    *(*(*(a1[4] + 8) + 24) + 192) = 0;
    *(*(*(a1[4] + 8) + 24) + 200) = 0;
    *(*(*(a1[4] + 8) + 24) + 208) = 0;
    *(*(*(a1[4] + 8) + 24) + 216) = 0;
    *(*(*(a1[4] + 8) + 24) + 224) = 0;
    *(*(*(a1[4] + 8) + 24) + 232) = 0;
    *(*(*(a1[4] + 8) + 24) + 240) = 0;
    *(*(*(a1[4] + 8) + 24) + 248) = 0;
    *(*(*(a1[4] + 8) + 24) + 256) = 0;
    *(*(*(a1[4] + 8) + 24) + 264) = 0;
    *(*(*(a1[4] + 8) + 24) + 272) = 0;
    *(*(*(a1[4] + 8) + 24) + 280) = 0;
    *(*(*(a1[4] + 8) + 24) + 288) = 0;
    **(*(a1[4] + 8) + 24) = 0;
    v34 = *(v2 + 8);
    *(*(*(a1[4] + 8) + 24) + 8) = v34;
    *v34 = *(*(a1[4] + 8) + 24);
    *(v2 + 8) = *(*(a1[4] + 8) + 24);
    v35 = *(*(a1[4] + 8) + 24);
    v36 = [*(v35 + 296) virtualAddress];
    *v36 = *(v35 + 16);
    *(*(a1[5] + 8) + 24) = v36;
    v37 = *(*(a1[4] + 8) + 24);
    v38 = *(*(a1[5] + 8) + 24);
    v39 = a1[9];
    v40 = *v38 - v39;
    if (*v38 != v39)
    {
      v41 = v38 + v39;
      *(v38 + v39) = v40;
      if (v40 > 0x800)
      {
        v43 = (v37 + 288);
      }

      else
      {
        v42 = (v40 >> 6) - 1;
        *(v37 + 24) |= 1 << v42;
        v43 = (v37 + 8 * v42 + 32);
      }

      v44 = *v43;
      *v43 = v41;
      *(v41 + 1) = v44;
      *v38 = v39;
      v38 = *(*(a1[5] + 8) + 24);
      v37 = *(*(a1[4] + 8) + 24);
    }

    v45 = v38 + *(v2 + 144);
    v46 = [*(v37 + 296) gpuAddress];
    *(*(a1[6] + 8) + 24) = &v45[v46 - [*(*(*(a1[4] + 8) + 24) + 296) virtualAddress]];
    v47 = *(*(a1[4] + 8) + 24);
    *(v47 + 16) -= **(*(a1[5] + 8) + 24);
    *(*(a1[7] + 8) + 24) = v45;
    [*(*(*(a1[4] + 8) + 24) + 296) gpuAddress];
    return [*(*(*(a1[4] + 8) + 24) + 296) virtualAddress];
  }

  v5 = a1[9];
  while (1)
  {
    if (*(v4 + 16) >= v5 && (*(v4 + 304) & 1) == 0)
    {
      if (v5 <= 0x800)
      {
        v8 = __clz(__rbit32(*(v4 + 24) >> ((v5 >> 6) - 1))) + (v5 >> 6) - 1;
        if (v8 <= 0x1F)
        {
          v9 = 8 * v8;
          *(*(a1[5] + 8) + 24) = *(v4 + v9 + 32);
          v10 = *(*(a1[4] + 8) + 24) + v9;
          *(v10 + 32) = *(*(v10 + 32) + 8);
          v3 = a1[4];
          v11 = *(*(v3 + 8) + 24);
          if (!*(v11 + v9 + 32))
          {
            *(v11 + 24) &= ~(1 << v8);
            v3 = a1[4];
          }
        }
      }

      v12 = *(a1[5] + 8);
      v7 = *(v12 + 24);
      if (v7)
      {
        goto LABEL_50;
      }

      v13 = *(*(*(v3 + 8) + 24) + 288);
      if (v13)
      {
        break;
      }
    }

LABEL_5:
    *(*(v3 + 8) + 24) = **(*(v3 + 8) + 24);
    v3 = a1[4];
    v4 = *(*(v3 + 8) + 24);
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  if (*v13 < v5)
  {
    while (1)
    {
      v14 = v13;
      v13 = v13[1];
      if (!v13)
      {
        goto LABEL_5;
      }

      if (*v13 >= v5)
      {
        v6 = (v14 + 1);
        *(v12 + 24) = v13;
        goto LABEL_4;
      }
    }
  }

  *(v12 + 24) = v13;
  v6 = *(*(a1[4] + 8) + 24) + 288;
LABEL_4:
  *v6 = *(*v6 + 8);
  v3 = a1[4];
  v7 = *(*(a1[5] + 8) + 24);
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_50:
  v49 = *(*(v3 + 8) + 24);
  v50 = *v7 - v5;
  if (*v7 != v5)
  {
    v51 = v7 + v5;
    *(v7 + v5) = v50;
    if (v50 > 0x800)
    {
      v53 = (v49 + 288);
    }

    else
    {
      v52 = (v50 >> 6) - 1;
      *(v49 + 24) |= 1 << v52;
      v53 = (v49 + 8 * v52 + 32);
    }

    v54 = *v53;
    *v53 = v51;
    *(v51 + 1) = v54;
    *v7 = v5;
    v7 = *(*(a1[5] + 8) + 24);
    v49 = *(*(a1[4] + 8) + 24);
  }

  v55 = v7 + *(v2 + 144);
  v56 = [*(v49 + 296) gpuAddress];
  result = [*(*(*(a1[4] + 8) + 24) + 296) virtualAddress];
  *(*(a1[6] + 8) + 24) = &v55[v56 - result];
  v57 = *(*(a1[4] + 8) + 24);
  *(v57 + 16) -= **(*(a1[5] + 8) + 24);
  *(*(a1[7] + 8) + 24) = v55;
  return result;
}

void _ZZZN3AGX4HeapILb1EE12allocateImplEmPPK18IOGPUMetalResourceEUb_ENKUlvE_clB14_AGX__Crashed_Ev()
{
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

void _ZZZN3AGX4HeapILb1EE12allocateImplEmPPK18IOGPUMetalResourceEUb_ENKUlvE0_clB14_AGX__Crashed_Ev()
{
  os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
}

void ___ZN3AGX4HeapILb1EED2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *v1;
  if (*v1)
  {
    do
    {
      v4 = *v2;
      v3 = *(v2 + 1);
      if (*v2)
      {
        v5 = *v2;
      }

      else
      {
        v5 = v1;
      }

      v5[1] = v3;
      *v3 = v4;
      [*(v2 + 37) gpuAddress];
      [*(v2 + 37) virtualAddress];

      free(v2);
      v2 = v4;
    }

    while (v4);
  }
}

void ___ZN3AGX4HeapILb1EE6shrinkEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *v1;
  if (*v1)
  {
    do
    {
      v3 = *v2;
      v4 = v2[2];
      if (v4 == ([v2[37] resourceSize] - *(v1 + 136)))
      {
        v5 = *v2;
        v6 = v2[1];
        if (*v2)
        {
          v7 = *v2;
        }

        else
        {
          v7 = v1;
        }

        v7[1] = v6;
        *v6 = v5;
        [v2[37] gpuAddress];
        [v2[37] virtualAddress];

        free(v2);
      }

      v2 = v3;
    }

    while (v3);
  }
}

uint64x2_t InterchangeTiledMemory::getPlaneInfo(InterchangeTiledMemory *this, int a2, uint64_t a3, uint64_t a4)
{
  if (a3 <= 551)
  {
    if (a3 <= 0x19)
    {
      if (((1 << a3) & 0x7C00) != 0)
      {
LABEL_29:
        *this = 8224;
        *(this + 2) = 8;
        *(this + 8) = xmmword_29D2FE868;
        *(this + 24) = unk_29D2FE878;
        v5 = &xmmword_29D2FE888;
        goto LABEL_30;
      }

      if (((1 << a3) & 0x3D00000) != 0)
      {
        *this = 8224;
        *(this + 2) = 16;
        *(this + 8) = xmmword_29D2FE7E8;
        *(this + 24) = unk_29D2FE7F8;
        v5 = &xmmword_29D2FE808;
        goto LABEL_30;
      }
    }

    if ((a3 - 90) > 4 || ((1 << (a3 - 90)) & 0x13) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v4 = a3 - 40;
  if ((a3 - 552) > 0x32)
  {
    goto LABEL_6;
  }

  if (((1 << v4) & 0x70003F0000000) != 0)
  {
    goto LABEL_13;
  }

  if (((1 << v4) & 3) == 0)
  {
    if (((1 << v4) & 0xC) == 0)
    {
LABEL_6:
      if ((a3 - 637) < 5)
      {
        goto LABEL_7;
      }

      if ((a3 - 618) < 3)
      {
LABEL_13:
        if (a2)
        {
LABEL_14:
          *this = 4112;
          *(this + 2) = 24;
          *(this + 8) = xmmword_29D2FE968;
          *(this + 24) = unk_29D2FE978;
          v5 = &xmmword_29D2FE988;
        }

        else
        {
LABEL_21:
          *this = 8224;
          *(this + 2) = 12;
          *(this + 8) = xmmword_29D2FE928;
          *(this + 24) = unk_29D2FE938;
          v5 = &xmmword_29D2FE948;
        }

        goto LABEL_30;
      }

LABEL_18:
      switch(a3)
      {
        case 500:
        case 502:
        case 503:
        case 520:
        case 522:
        case 523:
        case 540:
        case 541:
        case 542:
          if (!a2)
          {
            goto LABEL_29;
          }

          *this = 4112;
          *(this + 2) = 16;
          *(this + 8) = xmmword_29D2FE8A8;
          *(this + 24) = unk_29D2FE8B8;
          v5 = &xmmword_29D2FE8C8;
          goto LABEL_30;
        case 504:
        case 524:
        case 563:
        case 586:
        case 587:
        case 590:
        case 607:
        case 623:
        case 628:
        case 629:
          break;
        case 505:
        case 506:
        case 507:
        case 525:
        case 526:
        case 527:
        case 543:
        case 544:
        case 545:
        case 564:
        case 565:
        case 566:
        case 591:
        case 592:
        case 593:
        case 608:
        case 609:
        case 610:
          if (!a2)
          {
            goto LABEL_26;
          }

          *this = 4112;
          *(this + 2) = 32;
          *(this + 8) = xmmword_29D2FEA28;
          *(this + 24) = unk_29D2FEA38;
          v5 = &xmmword_29D2FEA48;
          goto LABEL_30;
        case 508:
        case 509:
        case 510:
        case 528:
        case 529:
        case 530:
        case 546:
        case 547:
        case 548:
        case 567:
        case 568:
        case 569:
        case 594:
        case 595:
        case 596:
        case 611:
        case 612:
        case 613:
          if (!a2)
          {
            goto LABEL_31;
          }

          *this = 4112;
          *(this + 2) = 20;
          *(this + 8) = xmmword_29D2FEB28;
          *(this + 24) = unk_29D2FEB38;
          v5 = &xmmword_29D2FEB48;
          goto LABEL_30;
        case 550:
        case 551:
        case 624:
        case 625:
        case 626:
        case 627:
        case 650:
          *this = 4112;
          if (a2)
          {
            *(this + 2) = 8;
            *(this + 8) = xmmword_29D2FEB68;
            *(this + 24) = unk_29D2FEB78;
            v8 = &xmmword_29D2FEB88;
          }

          else
          {
            *(this + 2) = 32;
            *(this + 8) = xmmword_29D2FEBA8;
            *(this + 24) = unk_29D2FEBB8;
            v8 = &xmmword_29D2FEBC8;
          }

          result = *v8;
          v9 = v8[1];
          *(this + 40) = *v8;
          *(this + 56) = v9;
          return result;
        case 570:
        case 571:
        case 572:
        case 573:
        case 574:
        case 575:
        case 597:
        case 598:
        case 599:
        case 615:
        case 616:
        case 617:
          if (a2)
          {
            goto LABEL_25;
          }

          goto LABEL_32;
        case 576:
        case 577:
        case 606:
        case 621:
        case 642:
LABEL_26:
          *this = 8224;
          *(this + 2) = 16;
          *(this + 8) = xmmword_29D2FE9E8;
          *(this + 24) = unk_29D2FE9F8;
          v5 = &xmmword_29D2FEA08;
          goto LABEL_30;
        case 578:
        case 579:
        case 644:
          *this = 4112;
          *(this + 2) = 32;
          *(this + 8) = xmmword_29D2FE8E8;
          *(this + 24) = unk_29D2FE8F8;
          v5 = &xmmword_29D2FE908;
          goto LABEL_30;
        case 588:
        case 643:
LABEL_31:
          *this = 8224;
          *(this + 2) = 10;
          *(this + 8) = xmmword_29D2FEAE8;
          *(this + 24) = unk_29D2FEAF8;
          v5 = &xmmword_29D2FEB08;
          goto LABEL_30;
        case 589:
        case 645:
          *this = 4112;
          *(this + 2) = 20;
          *(this + 8) = xmmword_29D2FE9A8;
          *(this + 24) = unk_29D2FE9B8;
          v5 = &xmmword_29D2FE9C8;
          goto LABEL_30;
        case 603:
        case 604:
        case 622:
        case 646:
LABEL_32:
          *this = 8224;
          *(this + 2) = 16;
          *(this + 8) = xmmword_29D2FEA68;
          *(this + 24) = unk_29D2FEA78;
          v5 = &xmmword_29D2FEA88;
          goto LABEL_30;
        case 605:
        case 648:
LABEL_25:
          *this = 4112;
          *(this + 2) = 32;
          *(this + 8) = xmmword_29D2FEAA8;
          *(this + 24) = unk_29D2FEAB8;
          v5 = &xmmword_29D2FEAC8;
          goto LABEL_30;
        case 630:
        case 631:
        case 632:
        case 633:
        case 634:
        case 635:
        case 636:
          *this = 4112;
          *(this + 2) = 40;
          *(this + 8) = xmmword_29D2FEBE8;
          *(this + 24) = unk_29D2FEBF8;
          v5 = &xmmword_29D2FEC08;
          goto LABEL_30;
        case 647:
          goto LABEL_21;
        case 649:
          goto LABEL_14;
        default:
          *this = 4112;
          *(this + 2) = 8 * a4;
          *(this + 1) = 32 * a4;
          *(this + 1) = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(0x3F2000003F400000, (32 * a4))));
          *(this + 4) = vcvts_n_f32_u64(32 * a4, 1uLL);
          *(this + 5) = a4 << 8;
          result = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(0x3F2000003F400000, (a4 << 8))));
          *(this + 3) = result;
          *(this + 8) = vcvts_n_f32_u64(a4 << 8, 1uLL);
          return result;
      }
    }

LABEL_17:
    *this = 4112;
    *(this + 2) = 32;
    *(this + 8) = xmmword_29D2FEBA8;
    *(this + 24) = unk_29D2FEBB8;
    v5 = &xmmword_29D2FEBC8;
    goto LABEL_30;
  }

LABEL_7:
  *this = 4112;
  *(this + 2) = 64;
  *(this + 8) = xmmword_29D2FE828;
  *(this + 24) = unk_29D2FE838;
  v5 = &xmmword_29D2FE848;
LABEL_30:
  result = *v5;
  v7 = v5[1];
  *(this + 40) = *v5;
  *(this + 56) = v7;
  return result;
}

uint64_t InterchangeTiledMemory::read(uint64_t result, uint64_t a2, int a3, unsigned int a4, unsigned int a5, int a6, int a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10)
{
  v38 = result;
  v11 = a9[2];
  HIDWORD(v13) = v11 - 8;
  LODWORD(v13) = v11 - 8;
  v12 = v13 >> 3;
  if (v12 > 7)
  {
    v14 = 0;
  }

  else
  {
    v14 = off_2A23FA668[v12];
  }

  v15 = a9[1];
  v16 = a5 / v15;
  v44 = a7 + a5;
  v37 = (a7 + a5 - 1) / v15;
  if (a5 / v15 <= v37)
  {
    v17 = *a9;
    v43 = a6 + a4;
    v36 = a4 / v17;
    v42 = (a6 + a4 - 1) / v17;
    if (a4 / v17 <= v42)
    {
      v18 = 4 * v11;
      v49 = (v17 >> 3) * 4 * v11;
      v39 = (v17 * v11 * v15) >> 3;
      v35 = (a3 + v17 - 1) / v17 * v39;
      do
      {
        v19 = v36;
        v41 = v38 + v35 * v16;
        v47 = v16;
        do
        {
          v20 = *a9;
          v48 = v19;
          v21 = v19 * v20;
          v22 = a9[1];
          v23 = (v16 * v22);
          if (a4 >= v21)
          {
            v24 = a4 - v21;
          }

          else
          {
            v24 = 0;
          }

          if (a5 >= v23)
          {
            result = a5 - v23;
          }

          else
          {
            result = 0;
          }

          v25 = v20 - v24;
          if (v25 >= v43 - v21)
          {
            v25 = v43 - v21;
          }

          v26 = v25 - 1;
          v27 = v44 - v23;
          v28 = v22 - v24;
          if (v28 < v44 - v23)
          {
            v27 = v28;
          }

          v29 = result >> 2;
          v30 = v26 >> 3;
          v51 = (v27 - 1) >> 2;
          if (v29 <= v51 && v24 >> 3 <= v30)
          {
            v50 = a2 + v23 * a8 + *(a10 + 49) * v21;
            do
            {
              v52 = v29;
              v53 = v41 + v48 * v39 + (v49 * v29);
              v32 = v50 + 4 * v29 * a8;
              v33 = v24 >> 3;
              do
              {
                result = (v14)(v53 + (v18 * v33), v32 + 8 * v33 * *(a10 + 49), 8, 4, 8, 4);
              }

              while (v33++ < v30);
              v29 = v52 + 1;
            }

            while (v52 < v51);
          }

          v16 = v47;
          v19 = v48 + 1;
        }

        while (v48 + 1 <= v42);
        v16 = v47 + 1;
      }

      while (v47 + 1 <= v37);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressZ<AGXSConverterPassThru<false,8ul,1u,(TwiddleOrder)1>>(uint64_t result, void *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v13 = a7;
  v14 = result;
  v15 = a11;
  v16 = a12;
  v17 = a10;
  if (!a12)
  {
    v25 = 32 - __clz(a6 - 1);
    v26 = a6 > 1;
    if (a6 <= 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = v25;
    }

    v28 = 32 - __clz(a5 - 1);
    v29 = a5 > 1;
    if (a5 <= 1)
    {
      v30 = 0;
    }

    else
    {
      v30 = v28;
    }

    if (v27 | v30)
    {
      v31 = a2;
      v32 = 0;
      v33 = 0;
      v34 = a5 > 1;
      v35 = v26;
      v36 = 1;
      v37 = v30;
      v38 = v27;
      do
      {
        --v37;
        if (v34)
        {
          v33 |= (v36 & ~(-1 << v30)) << v32++;
        }

        else
        {
          v37 = 0;
        }

        --v38;
        if (!v35)
        {
          v38 = 0;
        }

        v36 *= 2;
        v32 = (__PAIR64__(v32, v35) - 1) >> 32;
        v35 = v38 != 0;
        v34 = v37 != 0;
      }

      while (v38 | v37);
      v39 = 0;
      v40 = 0;
      v41 = 1;
      v42 = a5 > 1;
      v43 = v26;
      v44 = v30;
      v45 = v27;
      do
      {
        --v44;
        v46 = v42;
        if (!v46)
        {
          v44 = 0;
        }

        v47 = v39 + v46;
        --v45;
        if (v43)
        {
          v40 |= (v41 & ~(-1 << v27)) << v47++;
        }

        else
        {
          v45 = 0;
        }

        v41 *= 2;
        v39 = v47 - 1;
        v43 = v45 != 0;
        v42 = v44 != 0;
      }

      while (v45 | v44);
      v48 = 0;
      v49 = 0;
      v50 = a5 > 1;
      v51 = v26;
      v52 = 1;
      v53 = v30;
      v54 = v27;
      do
      {
        --v53;
        if (v50)
        {
          v49 |= (v52 & a7) << v48++;
        }

        else
        {
          v53 = 0;
        }

        --v54;
        if (!v51)
        {
          v54 = 0;
        }

        v52 *= 2;
        v48 = (__PAIR64__(v48, v51) - 1) >> 32;
        v51 = v54 != 0;
        v50 = v53 != 0;
      }

      while (v54 | v53);
      v55 = 0;
      v56 = 0;
      v57 = 1;
      do
      {
        --v30;
        v58 = v29;
        if (!v58)
        {
          v30 = 0;
        }

        v59 = v55 + v58;
        --v27;
        if (v26)
        {
          v56 |= (v57 & a8) << v59;
          v60 = v59 + 1;
        }

        else
        {
          v27 = 0;
          v60 = v59;
        }

        v57 *= 2;
        v55 = v60 - 1;
        v26 = v27 != 0;
        v29 = v30 != 0;
        result = v27 | v30;
      }

      while (result);
      a2 = v31;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v49 = 0;
      v33 = 0;
      v40 = 0;
      v56 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      for (i = 0; i != a10; ++i)
      {
        v231 = a9;
        v232 = a2;
        v233 = v49;
        do
        {
          *v232++ = *(v14 + 8 * (v233 + v56));
          v233 = (v233 - v33) & v33;
          --v231;
        }

        while (v231);
        v56 = (v56 - v40) & v40;
        a2 = (a2 + a11);
      }
    }

    return result;
  }

  v266 = a8;
  if (*(a12 + 20))
  {
    v18 = a2;
    result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v302);
    v21 = *(a12 + 13);
    v22 = *(a12 + 12);
    if (1 << v21 >= a6 || a5 >> v22)
    {
      v146 = a6 >> v21;
      v147 = 1 << v22;
      v148 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
      if (a6 < 2)
      {
        v148 = 0;
      }

      v149 = v147 >= a5;
      if (v147 < a5)
      {
        v150 = v22 + v21 + v148;
      }

      else
      {
        v150 = *(a12 + 12);
      }

      if (v149)
      {
        LOBYTE(v151) = *(a12 + 13);
      }

      else
      {
        v151 = -v148;
      }

      if (!v146)
      {
        v22 = v150;
      }

      v260 = v22;
      if (v146)
      {
        v24 = *(a12 + 13);
      }

      else
      {
        v24 = v151;
      }
    }

    else
    {
      v23 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
      if (a5 < 2)
      {
        LOBYTE(v23) = 0;
      }

      v260 = v23;
      v24 = v22 + v21 - v23;
    }

    v153 = v266;
    v152 = a10;
    v259 = v308;
    if (v308)
    {
      v154 = 1 << v260;
      v155 = 1 << v24;
      if (1 << v24 >= a6)
      {
        v156 = a6;
      }

      else
      {
        v156 = 1 << v24;
      }

      v157 = 32 - __clz(v156 - 1);
      v158 = v156 > 1;
      if (v156 <= 1)
      {
        v159 = 0;
      }

      else
      {
        v159 = v157;
      }

      if (v154 >= a5)
      {
        v160 = a5;
      }

      else
      {
        v160 = 1 << v260;
      }

      v161 = 32 - __clz(v160 - 1);
      v162 = v309;
      v163 = v160 > 1;
      if (v160 <= 1)
      {
        v161 = 0;
      }

      v292 = v306;
      v293 = v161;
      v288 = v306 != 0;
      v290 = v307;
      v286 = v307 != 0;
      if (v309)
      {
        v164 = 0;
        v258 = a7 >> v260;
        v279 = v266 >> v24;
        v301 = v305;
        v299 = v307 | v306;
        v297 = v310;
        v257 = a9 + a7;
        v256 = (v154 - 1) & (a9 + a7);
        v254 = v303;
        v295 = v304;
        v255 = (v154 - 1) & a7;
        v253 = v154 - v255;
        v274 = (v155 - 1) & v266;
        v276 = (v155 - 1) & (a10 + v266);
        v273 = v155 - v274;
        v165 = ~(-1 << v161);
        v271 = v159 | v161;
        v284 = v160 > 1;
        v264 = 1 << v24;
        v265 = v24;
        v263 = v158;
        v281 = v309;
        do
        {
          v166 = 0;
          v167 = v164 + v254;
          v168 = (v164 + v258) << v260;
          v169 = a9;
          if (v257 >= (v164 + v258 + 1) << v260)
          {
            v169 = v253;
          }

          v170 = 1 << v260;
          if (v257 < (v164 + v258 + 1) << v260)
          {
            v170 = v256;
          }

          v262 = v164;
          if (v168 >= a7)
          {
            v171 = v170;
          }

          else
          {
            v171 = v169;
          }

          if (v168 >= a7)
          {
            v172 = 0;
          }

          else
          {
            v172 = v255;
          }

          v268 = &v18[v172 + (v164 << v260)];
          do
          {
            v173 = v166 + v295;
            if (v297)
            {
              v174 = v299;
              if (v299)
              {
                v175 = 0;
                v174 = 0;
                v176 = 1;
                v178 = v288;
                v177 = v290;
                v179 = v286;
                v180 = v292;
                do
                {
                  --v180;
                  if (v178)
                  {
                    v174 |= (v176 & v167) << v175;
                  }

                  else
                  {
                    v180 = 0;
                  }

                  if (v178)
                  {
                    ++v175;
                  }

                  --v177;
                  if (v179)
                  {
                    v174 |= (v176 & v173) << v175;
                  }

                  else
                  {
                    v177 = 0;
                  }

                  if (v179)
                  {
                    ++v175;
                  }

                  v176 *= 2;
                  --v175;
                  v179 = v177 != 0;
                  v178 = v180 != 0;
                }

                while (v177 | v180);
              }
            }

            else
            {
              v174 = v299;
              if (v299)
              {
                v181 = 0;
                v174 = 0;
                v182 = 1;
                v183 = v286;
                v185 = v288;
                v184 = v290;
                v186 = v292;
                do
                {
                  --v184;
                  if (v183)
                  {
                    v174 |= (v182 & v173) << v181;
                  }

                  else
                  {
                    v184 = 0;
                  }

                  if (v183)
                  {
                    ++v181;
                  }

                  --v186;
                  if (v185)
                  {
                    v174 |= (v182 & v167) << v181;
                  }

                  else
                  {
                    v186 = 0;
                  }

                  if (v185)
                  {
                    ++v181;
                  }

                  v182 *= 2;
                  --v181;
                  v185 = v186 != 0;
                  v183 = v184 != 0;
                }

                while (v186 | v184);
              }
            }

            v187 = *(v14 + 4 * ((v174 + v301) | ((v174 + v301) >> 8 << 9)));
            if (v187 < 0)
            {
              v188 = v14 - *(a13 + 3) + ((v187 & 0x1FFFFFFF) << 14);
              result = *a13;
              v189 = a13[2];
              if (result > v189)
              {
                result = get_level_offset_within_tail(result, v189, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
                v163 = v284;
                v158 = v263;
                v155 = v264;
                v24 = v265;
                v15 = a11;
                v153 = v266;
                v152 = a10;
                v188 += result;
              }

              v190 = (v166 + v279) << v24;
              v191 = v273;
              if (a10 + v266 >= (v166 + v279 + 1) << v24)
              {
                v192 = v155;
              }

              else
              {
                v191 = v152;
                v192 = v276;
              }

              if (v190 >= v153)
              {
                v193 = 0;
              }

              else
              {
                v193 = v274;
              }

              if (v190 >= v153)
              {
                v191 = v192;
              }

              if (!v271)
              {
                v211 = 0;
                v195 = 0;
                v202 = 0;
                v218 = 0;
                v162 = v281;
                if (!v191)
                {
                  goto LABEL_188;
                }

LABEL_260:
                if (v171)
                {
                  v225 = 0;
                  v226 = (v268 + (v193 + (v166 << v24)) * v15);
                  do
                  {
                    v227 = v171;
                    v228 = v226;
                    v229 = v211;
                    do
                    {
                      result = *(v188 + 8 * (v229 + v218));
                      *v228++ = result;
                      v229 = (v229 - v195) & v195;
                      --v227;
                    }

                    while (v227);
                    v218 = (v218 - v202) & v202;
                    v226 = (v226 + v15);
                    ++v225;
                  }

                  while (v225 != v191);
                }

                goto LABEL_188;
              }

              v194 = 0;
              v195 = 0;
              v196 = 1;
              v197 = v163;
              v198 = v158;
              v199 = v293;
              v200 = v159;
              do
              {
                --v199;
                if (v197)
                {
                  v195 |= (v196 & v165) << v194++;
                }

                else
                {
                  v199 = 0;
                }

                --v200;
                if (!v198)
                {
                  v200 = 0;
                }

                v196 *= 2;
                v194 = (__PAIR64__(v194, v198) - 1) >> 32;
                v198 = v200 != 0;
                v197 = v199 != 0;
              }

              while (v200 | v199);
              v201 = 0;
              v202 = 0;
              v203 = 1;
              v204 = v163;
              v205 = v158;
              v206 = v293;
              v207 = v159;
              do
              {
                --v206;
                v208 = v204;
                if (!v208)
                {
                  v206 = 0;
                }

                v209 = v201 + v208;
                --v207;
                if (v205)
                {
                  v202 |= (v203 & ~(-1 << v159)) << v209++;
                }

                else
                {
                  v207 = 0;
                }

                v203 *= 2;
                v201 = v209 - 1;
                v205 = v207 != 0;
                v204 = v206 != 0;
              }

              while (v207 | v206);
              v210 = 0;
              v211 = 0;
              v212 = 1;
              v213 = v163;
              v214 = v158;
              v215 = v293;
              v216 = v159;
              do
              {
                --v215;
                if (v213)
                {
                  v211 |= (v212 & v172) << v210++;
                }

                else
                {
                  v215 = 0;
                }

                --v216;
                if (!v214)
                {
                  v216 = 0;
                }

                v212 *= 2;
                v210 = (__PAIR64__(v210, v214) - 1) >> 32;
                v214 = v216 != 0;
                v213 = v215 != 0;
              }

              while (v216 | v215);
              v217 = 0;
              v218 = 0;
              v219 = 1;
              v220 = v163;
              LOBYTE(result) = v158;
              v221 = v293;
              v222 = v159;
              do
              {
                --v221;
                v223 = v220;
                if (!v223)
                {
                  v221 = 0;
                }

                v224 = v217 + v223;
                --v222;
                if (result)
                {
                  v218 |= (v219 & v193) << v224++;
                }

                else
                {
                  v222 = 0;
                }

                v219 *= 2;
                v217 = v224 - 1;
                result = v222 != 0;
                v220 = v221 != 0;
              }

              while (v222 | v221);
              v162 = v281;
              v163 = v284;
              if (v191)
              {
                goto LABEL_260;
              }
            }

LABEL_188:
            ++v166;
          }

          while (v162 > v166);
          v164 = v262 + 1;
        }

        while (v259 > (v262 + 1));
      }
    }
  }

  else
  {
    v61 = *(a12 + 13);
    v62 = *(a12 + 12);
    v63 = 1 << v61;
    v64 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v64 = 0;
    }

    v65 = v62 + v61;
    result = v62 + v61 + v64;
    if (a6 >> v61)
    {
      v66 = 1;
    }

    else
    {
      v66 = 1 << v62 >= a5;
    }

    if (v66)
    {
      v67 = *(a12 + 12);
    }

    else
    {
      v67 = v62 + v61 + v64;
    }

    if (v66)
    {
      LOBYTE(v68) = *(a12 + 13);
    }

    else
    {
      v68 = -v64;
    }

    v69 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v69) = 0;
    }

    if (v63 < a6 && a5 >> v62 == 0)
    {
      v71 = v65 - v69;
    }

    else
    {
      LOBYTE(v69) = v67;
      v71 = v68;
    }

    v72 = 1 << v71;
    v73 = *(a12 + 15);
    v74 = 1 << v73;
    if (v73)
    {
      v75 = v74 > a3;
    }

    else
    {
      v75 = 1;
    }

    v76 = v75 || v74 > a4;
    v77 = (~(-1 << v73) + a3) & (-1 << v73);
    if (v76)
    {
      v78 = a3;
    }

    else
    {
      v78 = v77;
    }

    v278 = a10 + a8;
    v280 = 1 << v71;
    v79 = v72 - 1;
    v272 = a8 >> v71;
    v277 = (v72 - 1 + a10 + a8) >> v71;
    if (a8 >> v71 < v277)
    {
      v80 = (1 << v69) - 1;
      v300 = a9 + v13;
      result = (v80 + a9 + v13) >> v69;
      if (v72 >= a6)
      {
        v72 = a6;
      }

      v81 = 32 - __clz(v72 - 1);
      v82 = v72 > 1;
      if (v72 <= 1)
      {
        v83 = 0;
      }

      else
      {
        v83 = v81;
      }

      v296 = (v80 + a9 + v13) >> v69;
      v298 = 1 << v69;
      if (1 << v69 >= a5)
      {
        v84 = a5;
      }

      else
      {
        v84 = 1 << v69;
      }

      v85 = 32 - __clz(v84 - 1);
      v86 = v84 > 1;
      if (v84 <= 1)
      {
        v87 = 0;
      }

      else
      {
        v87 = v85;
      }

      v291 = v13 >> v69;
      if (v13 >> v69 < result)
      {
        v270 = (v78 + ~(-1 << v69)) >> v69;
        v294 = v80 & v300;
        v289 = v80 & v13;
        v275 = v79 & v278;
        v283 = v79 & a8;
        if (v83 | v87)
        {
          v88 = a8 >> v71;
          v261 = a2;
          v267 = v71;
          do
          {
            v89 = v88 << v71;
            v90 = v88 - v272;
            v287 = v88 * v270;
            v282 = v88 + 1;
            v66 = v278 >= (v88 + 1) << v71;
            v91 = v280;
            v92 = v280 - v283;
            if (!v66)
            {
              v91 = v275;
              v92 = v17;
            }

            v93 = v90 << v71;
            if (v89 >= a8)
            {
              v94 = 0;
            }

            else
            {
              v94 = v283;
            }

            if (v89 >= a8)
            {
              result = v91;
            }

            else
            {
              result = v92;
            }

            v285 = a2 + (v94 + v93 - v283) * a11;
            v95 = v291;
            do
            {
              v96 = 0;
              v97 = 0;
              v98 = v95 << v69;
              v99 = v95 - v291;
              v100 = v95 + v287;
              v101 = ++v95 << v69;
              if (v98 >= v13)
              {
                v102 = 0;
              }

              else
              {
                v102 = v289;
              }

              v103 = v102 + (v99 << v69) - v289;
              v104 = v100 * v16[3] * *(v16 + 9);
              v105 = 1;
              v106 = v86;
              v107 = v82;
              v108 = v87;
              v109 = v83;
              do
              {
                --v108;
                if (v106)
                {
                  v97 |= (v105 & ~(-1 << v87)) << v96++;
                }

                else
                {
                  v108 = 0;
                }

                --v109;
                if (!v107)
                {
                  v109 = 0;
                }

                v105 *= 2;
                v96 = (__PAIR64__(v96, v107) - 1) >> 32;
                v107 = v109 != 0;
                v106 = v108 != 0;
              }

              while (v109 | v108);
              v110 = 0;
              v111 = 0;
              v112 = 8 * v103;
              v113 = 1 << v69;
              if (v300 < v101)
              {
                v113 = v294;
              }

              v114 = 1;
              v115 = v86;
              v116 = v82;
              v117 = v87;
              v118 = v83;
              do
              {
                --v117;
                v119 = v115;
                if (!v119)
                {
                  v117 = 0;
                }

                v120 = v110 + v119;
                --v118;
                if (v116)
                {
                  v111 |= (v114 & ~(-1 << v83)) << v120++;
                }

                else
                {
                  v118 = 0;
                }

                v114 *= 2;
                v110 = v120 - 1;
                v116 = v118 != 0;
                v115 = v117 != 0;
              }

              while (v118 | v117);
              v121 = 0;
              v122 = 0;
              v123 = v298 - v289;
              if (v300 < v101)
              {
                v123 = a9;
              }

              v124 = &v285[v112];
              v125 = 1;
              v126 = v86;
              v127 = v82;
              v128 = v87;
              v129 = v83;
              do
              {
                --v128;
                if (v126)
                {
                  v122 |= (v125 & v102) << v121;
                  v130 = v121 + 1;
                }

                else
                {
                  v128 = 0;
                  v130 = v121;
                }

                if (v127)
                {
                  --v129;
                }

                else
                {
                  v129 = 0;
                }

                v125 *= 2;
                v121 = (__PAIR64__(v130, v127) - 1) >> 32;
                v127 = v129 != 0;
                v126 = v128 != 0;
              }

              while (v129 | v128);
              v131 = 0;
              v132 = 0;
              v133 = 1;
              v134 = v86;
              v135 = v82;
              v136 = v87;
              v137 = v83;
              do
              {
                v138 = v134;
                if (v138)
                {
                  --v136;
                }

                else
                {
                  v136 = 0;
                }

                v139 = v131 + v138;
                v140 = ((v133 & v94) << (v131 + v138)) | v132;
                if (v135)
                {
                  --v137;
                }

                else
                {
                  v137 = 0;
                }

                if (v135)
                {
                  v132 = v140;
                  ++v139;
                }

                v133 *= 2;
                v131 = v139 - 1;
                v135 = v137 != 0;
                v134 = v136 != 0;
              }

              while (v137 | v136);
              v13 = a7;
              if (v98 < a7)
              {
                v113 = v123;
              }

              if (result && v113)
              {
                v141 = 0;
                v142 = v104 + v14;
                do
                {
                  v143 = v113;
                  v144 = v124;
                  v145 = v122;
                  do
                  {
                    *v144 = *(v142 + 8 * (v145 + v132));
                    v144 += 8;
                    v145 = (v145 - v97) & v97;
                    --v143;
                  }

                  while (v143);
                  v132 = (v132 - v111) & v111;
                  v124 += a11;
                  ++v141;
                }

                while (v141 != result);
              }

              v16 = a12;
            }

            while (v95 != v296);
            v88 = v282;
            a2 = v261;
            a8 = v266;
            v17 = a10;
            v71 = v267;
          }

          while (v282 != v277);
        }

        else
        {
          v234 = a8 >> v71;
          do
          {
            v235 = v234 << v71;
            v236 = v234 + 1;
            v237 = v275;
            if (v278 >= (v234 + 1) << v71)
            {
              v237 = 1 << v71;
            }

            if (v278 >= v236 << v71)
            {
              v238 = v280 - v283;
            }

            else
            {
              v238 = a10;
            }

            if (v235 >= a8)
            {
              v239 = 0;
            }

            else
            {
              v239 = v283;
            }

            if (v235 >= a8)
            {
              v240 = v237;
            }

            else
            {
              v240 = v238;
            }

            if (v240)
            {
              v241 = (v234 - v272) << v71;
              v242 = v234 * v270;
              v243 = a2 + ((v239 + v241) - v283) * a11;
              v244 = v13 >> v69;
              do
              {
                result = v244 << v69;
                v245 = v244 + 1;
                v246 = a9;
                if (v300 >= (v244 + 1) << v69)
                {
                  v246 = v298 - v289;
                }

                v247 = 1 << v69;
                if (v300 < v245 << v69)
                {
                  v247 = v294;
                }

                if (result >= v13)
                {
                  v246 = v247;
                }

                if (v246)
                {
                  v248 = 0;
                  v249 = (v244 + v242) * a12[3] * *(a12 + 9);
                  if (result >= v13)
                  {
                    v250 = 0;
                  }

                  else
                  {
                    v250 = v289;
                  }

                  result = &v243[8 * (v250 + ((v244 - v291) << v69) - v289)];
                  do
                  {
                    v251 = v246;
                    v252 = result;
                    do
                    {
                      *v252++ = *(v14 + v249);
                      --v251;
                    }

                    while (v251);
                    result += a11;
                    ++v248;
                  }

                  while (v248 != v240);
                }

                v244 = v245;
              }

              while (v245 != v296);
            }

            v234 = v236;
          }

          while (v236 != v277);
        }
      }
    }
  }

  return result;
}

BOOL agxCalcSparseInputs(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, int a10, unsigned int a11, char a12, unsigned int a13, unsigned int a14, unsigned int a15, unsigned int a16, uint64_t a17)
{
  v83 = *MEMORY[0x29EDCA608];
  v17 = a4 - 1;
  v18 = (a4 - 1 + a2) / a4;
  v19 = a5 - 1;
  v20 = 32 - __clz(a1 / a6 - 1);
  if (a1 / a6 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = (v21 + 1) >> 1;
  v23 = (a5 - 1 + a3) / a5;
  if (v18 < 2)
  {
    v24 = 0;
  }

  else
  {
    v24 = 32 - __clz(~(-1 << -__clz(v18 - 1)));
  }

  v26 = v21 - v22;
  if (v23 < 2)
  {
    v29 = 0;
  }

  else
  {
    v29 = 32 - __clz(~(-1 << -__clz(v23 - 1)));
  }

  v30 = 0;
  v31 = 0;
  v82[0] = 0;
  if (a8 + 1 > 1)
  {
    v32 = a8 + 1;
  }

  else
  {
    v32 = 1;
  }

  do
  {
    v33 = v24 - v31;
    if (v24 < v31)
    {
      v33 = 0;
    }

    v34 = v29 - v31;
    if (v29 < v31)
    {
      v34 = 0;
    }

    v35 = v33 + v34;
    v36 = v35 >= v21;
    v37 = v35 - v21;
    if (!v36)
    {
      v37 = 0;
    }

    v30 += 1 << v37;
    v82[++v31] = v30;
  }

  while (v32 != v31);
  v38 = 0;
  if (a7 >= 2)
  {
    v39 = a7 - a8;
    if (a7 > a8)
    {
      if (v39 >= 8)
      {
        v41 = v39 & 0xFFFFFFF8;
        v42 = vaddq_s32(vdupq_n_s32(a8), xmmword_29D2F17F0);
        v43 = vdupq_n_s32(v24);
        v44 = vdupq_n_s32(v29);
        v45 = vdupq_n_s64(a6);
        v46 = 0uLL;
        v47.i64[0] = 0x400000004;
        v47.i64[1] = 0x400000004;
        v48.i64[0] = 0x7F0000007FLL;
        v48.i64[1] = 0x7F0000007FLL;
        v49.i64[0] = 0x800000008;
        v49.i64[1] = 0x800000008;
        v50 = v39 & 0xFFFFFFF8;
        v51 = 0uLL;
        do
        {
          v52 = vaddq_s32(v42, v47);
          v53 = vaddq_s32(vqsubq_u32(v43, v42), vqsubq_u32(v44, v42));
          v54 = vaddq_s32(vqsubq_u32(v43, v52), vqsubq_u32(v44, v52));
          v55.i64[0] = v53.u32[0];
          v55.i64[1] = v53.u32[1];
          v56 = v55;
          v55.i64[0] = v53.u32[2];
          v55.i64[1] = v53.u32[3];
          v57 = v55;
          v55.i64[0] = v54.u32[0];
          v55.i64[1] = v54.u32[1];
          v58 = v55;
          v55.i64[0] = v54.u32[2];
          v55.i64[1] = v54.u32[3];
          v46 = vaddq_s32((*&vaddq_s32(vuzp1q_s32(vshlq_u64(v45, v56), vshlq_u64(v45, v57)), v48) & __PAIR128__(0xFFFFFF80FFFFFF80, 0xFFFFFF80FFFFFF80)), v46);
          v51 = vaddq_s32((*&vaddq_s32(vuzp1q_s32(vshlq_u64(v45, v58), vshlq_u64(v45, v55)), v48) & __PAIR128__(0xFFFFFF80FFFFFF80, 0xFFFFFF80FFFFFF80)), v51);
          v42 = vaddq_s32(v42, v49);
          v50 -= 8;
        }

        while (v50);
        v38 = vaddvq_s32(vaddq_s32(v51, v46));
        if (v39 == v41)
        {
          goto LABEL_31;
        }

        v40 = v41 + a8;
      }

      else
      {
        v38 = 0;
        v40 = a8;
      }

      do
      {
        v59 = v24 - v40;
        if (v24 < v40)
        {
          v59 = 0;
        }

        v60 = v29 - v40;
        if (v29 < v40)
        {
          v60 = 0;
        }

        v38 += ((a6 << (v59 + v60)) + 127) & 0xFFFFFF80;
        ++v40;
      }

      while (a7 != v40);
    }
  }

LABEL_31:
  if (a11 >= a8)
  {
    v61 = a8;
  }

  else
  {
    v61 = a11;
  }

  if (a7 <= 1)
  {
    v62 = 1;
  }

  else
  {
    v62 = a8 + 1;
  }

  v63 = (v82[v62] + 255) & 0xFFFFFF00;
  v82[v62] = v63;
  v64 = a2 >> v61;
  v65 = a3 >> v61;
  if ((a12 & 1) == 0)
  {
    if (v64 && (v68 = (v17 + v64) / a4, v68 >= 2))
    {
      v66 = 32 - __clz(~(-1 << -__clz(v68 - 1)));
      if (!v65)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v66 = 0;
      if (!v65)
      {
        goto LABEL_51;
      }
    }

    v69 = (v19 + v65) / a5;
    if (v69 >= 2)
    {
      v67 = 32 - __clz(~(-1 << -__clz(v69 - 1)));
      goto LABEL_52;
    }

LABEL_51:
    v67 = 0;
    goto LABEL_52;
  }

  if (v24 >= v61)
  {
    v66 = v24 - v61;
  }

  else
  {
    v66 = 0;
  }

  if (v29 >= v61)
  {
    v67 = v29 - v61;
  }

  else
  {
    v67 = 0;
  }

LABEL_52:
  v70 = 1 << v66;
  v71 = 1 << v67;
  if (1 << v26 >= (1 << v67) || v70 >> v22)
  {
    if (!(v71 >> v26) && 1 << v22 < v70)
    {
      if (v67)
      {
        v72 = __clz(~(-1 << -__clz(v71 - 1))) | 0xFFFFFFE0;
      }

      else
      {
        v72 = 0;
      }

      v22 = v72 + v21;
      v26 = -v72;
    }
  }

  else if (v66)
  {
    v22 = 32 - __clz(~(-1 << -__clz(v70 - 1)));
    v26 = v21 - v22;
  }

  else
  {
    v22 = 0;
    v26 = v21;
  }

  if (v66 >= v22)
  {
    v73 = v66 - v22;
  }

  else
  {
    v73 = 0;
  }

  v74 = v67 - v26;
  if (v67 < v26)
  {
    v74 = 0;
  }

  *(a17 + 28) = v73;
  *(a17 + 32) = v74;
  result = a8 <= a11 && v38 > a1;
  if (result)
  {
    *(a17 + 28) = v73 + 1;
  }

  *(a17 + 57) = v26 == v22;
  *(a17 + 36) = v22;
  *(a17 + 40) = v26;
  *(a17 + 24) = v82[v61] + v63 * a10;
  *(a17 + 53) = a6;
  if ((a12 & 1) == 0)
  {
    if (v64)
    {
      v70 = (v17 + v64) / a4;
      if (v65)
      {
LABEL_77:
        v71 = (v19 + v65) / a5;
        goto LABEL_80;
      }
    }

    else
    {
      v70 = 1;
      if (v65)
      {
        goto LABEL_77;
      }
    }

    v71 = 1;
  }

LABEL_80:
  if (v61 >= a9)
  {
    a14 = 0;
    a13 = 0;
    a16 = v71;
    a15 = v70;
  }

  v78 = v19 + a16 + a14;
  v79 = (a13 / a4) >> v22;
  v80 = (a14 / a5) >> v26;
  *(a17 + 16) = v79;
  *(a17 + 20) = v80;
  v81 = (((v17 + a15 + a13) / a4 + ~(-1 << v22)) >> v22) - v79;
  *(a17 + 44) = v81;
  *(a17 + 48) = ((v78 / a5 + ~(-1 << v26)) >> v26) - v80;
  if (result)
  {
    *(a17 + 44) = v81 + 1;
  }

  return result;
}

uint64_t agxsTwiddleAddressZ<AGXSConverterPassThru<false,4ul,1u,(TwiddleOrder)1>>(uint64_t result, _DWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v13 = a7;
  v14 = result;
  v15 = a11;
  v16 = a12;
  v17 = a10;
  if (!a12)
  {
    v25 = 32 - __clz(a6 - 1);
    v26 = a6 > 1;
    if (a6 <= 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = v25;
    }

    v28 = 32 - __clz(a5 - 1);
    v29 = a5 > 1;
    if (a5 <= 1)
    {
      v30 = 0;
    }

    else
    {
      v30 = v28;
    }

    if (v27 | v30)
    {
      v31 = a2;
      v32 = 0;
      v33 = 0;
      v34 = a5 > 1;
      v35 = v26;
      v36 = 1;
      v37 = v30;
      v38 = v27;
      do
      {
        --v37;
        if (v34)
        {
          v33 |= (v36 & ~(-1 << v30)) << v32++;
        }

        else
        {
          v37 = 0;
        }

        --v38;
        if (!v35)
        {
          v38 = 0;
        }

        v36 *= 2;
        v32 = (__PAIR64__(v32, v35) - 1) >> 32;
        v35 = v38 != 0;
        v34 = v37 != 0;
      }

      while (v38 | v37);
      v39 = 0;
      v40 = 0;
      v41 = 1;
      v42 = a5 > 1;
      v43 = v26;
      v44 = v30;
      v45 = v27;
      do
      {
        --v44;
        v46 = v42;
        if (!v46)
        {
          v44 = 0;
        }

        v47 = v39 + v46;
        --v45;
        if (v43)
        {
          v40 |= (v41 & ~(-1 << v27)) << v47++;
        }

        else
        {
          v45 = 0;
        }

        v41 *= 2;
        v39 = v47 - 1;
        v43 = v45 != 0;
        v42 = v44 != 0;
      }

      while (v45 | v44);
      v48 = 0;
      v49 = 0;
      v50 = a5 > 1;
      v51 = v26;
      v52 = 1;
      v53 = v30;
      v54 = v27;
      do
      {
        --v53;
        if (v50)
        {
          v49 |= (v52 & a7) << v48++;
        }

        else
        {
          v53 = 0;
        }

        --v54;
        if (!v51)
        {
          v54 = 0;
        }

        v52 *= 2;
        v48 = (__PAIR64__(v48, v51) - 1) >> 32;
        v51 = v54 != 0;
        v50 = v53 != 0;
      }

      while (v54 | v53);
      v55 = 0;
      v56 = 0;
      v57 = 1;
      do
      {
        --v30;
        v58 = v29;
        if (!v58)
        {
          v30 = 0;
        }

        v59 = v55 + v58;
        --v27;
        if (v26)
        {
          v56 |= (v57 & a8) << v59;
          v60 = v59 + 1;
        }

        else
        {
          v27 = 0;
          v60 = v59;
        }

        v57 *= 2;
        v55 = v60 - 1;
        v26 = v27 != 0;
        v29 = v30 != 0;
        result = v27 | v30;
      }

      while (result);
      a2 = v31;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v49 = 0;
      v33 = 0;
      v40 = 0;
      v56 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      for (i = 0; i != a10; ++i)
      {
        v231 = a9;
        v232 = a2;
        v233 = v49;
        do
        {
          *v232++ = *(v14 + 4 * (v233 + v56));
          v233 = (v233 - v33) & v33;
          --v231;
        }

        while (v231);
        v56 = (v56 - v40) & v40;
        a2 = (a2 + a11);
      }
    }

    return result;
  }

  v266 = a8;
  if (*(a12 + 20))
  {
    v18 = a2;
    result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v302);
    v21 = *(a12 + 13);
    v22 = *(a12 + 12);
    if (1 << v21 >= a6 || a5 >> v22)
    {
      v146 = a6 >> v21;
      v147 = 1 << v22;
      v148 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
      if (a6 < 2)
      {
        v148 = 0;
      }

      v149 = v147 >= a5;
      if (v147 < a5)
      {
        v150 = v22 + v21 + v148;
      }

      else
      {
        v150 = *(a12 + 12);
      }

      if (v149)
      {
        LOBYTE(v151) = *(a12 + 13);
      }

      else
      {
        v151 = -v148;
      }

      if (!v146)
      {
        v22 = v150;
      }

      v260 = v22;
      if (v146)
      {
        v24 = *(a12 + 13);
      }

      else
      {
        v24 = v151;
      }
    }

    else
    {
      v23 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
      if (a5 < 2)
      {
        LOBYTE(v23) = 0;
      }

      v260 = v23;
      v24 = v22 + v21 - v23;
    }

    v153 = v266;
    v152 = a10;
    v259 = v308;
    if (v308)
    {
      v154 = 1 << v260;
      v155 = 1 << v24;
      if (1 << v24 >= a6)
      {
        v156 = a6;
      }

      else
      {
        v156 = 1 << v24;
      }

      v157 = 32 - __clz(v156 - 1);
      v158 = v156 > 1;
      if (v156 <= 1)
      {
        v159 = 0;
      }

      else
      {
        v159 = v157;
      }

      if (v154 >= a5)
      {
        v160 = a5;
      }

      else
      {
        v160 = 1 << v260;
      }

      v161 = 32 - __clz(v160 - 1);
      v162 = v309;
      v163 = v160 > 1;
      if (v160 <= 1)
      {
        v161 = 0;
      }

      v292 = v306;
      v293 = v161;
      v288 = v306 != 0;
      v290 = v307;
      v286 = v307 != 0;
      if (v309)
      {
        v164 = 0;
        v258 = a7 >> v260;
        v279 = v266 >> v24;
        v301 = v305;
        v299 = v307 | v306;
        v297 = v310;
        v257 = a9 + a7;
        v256 = (v154 - 1) & (a9 + a7);
        v254 = v303;
        v295 = v304;
        v255 = (v154 - 1) & a7;
        v253 = v154 - v255;
        v274 = (v155 - 1) & v266;
        v276 = (v155 - 1) & (a10 + v266);
        v273 = v155 - v274;
        v165 = ~(-1 << v161);
        v271 = v159 | v161;
        v284 = v160 > 1;
        v264 = 1 << v24;
        v265 = v24;
        v263 = v158;
        v281 = v309;
        do
        {
          v166 = 0;
          v167 = v164 + v254;
          v168 = (v164 + v258) << v260;
          v169 = a9;
          if (v257 >= (v164 + v258 + 1) << v260)
          {
            v169 = v253;
          }

          v170 = 1 << v260;
          if (v257 < (v164 + v258 + 1) << v260)
          {
            v170 = v256;
          }

          v262 = v164;
          if (v168 >= a7)
          {
            v171 = v170;
          }

          else
          {
            v171 = v169;
          }

          if (v168 >= a7)
          {
            v172 = 0;
          }

          else
          {
            v172 = v255;
          }

          v268 = &v18[v172 + (v164 << v260)];
          do
          {
            v173 = v166 + v295;
            if (v297)
            {
              v174 = v299;
              if (v299)
              {
                v175 = 0;
                v174 = 0;
                v176 = 1;
                v178 = v288;
                v177 = v290;
                v179 = v286;
                v180 = v292;
                do
                {
                  --v180;
                  if (v178)
                  {
                    v174 |= (v176 & v167) << v175;
                  }

                  else
                  {
                    v180 = 0;
                  }

                  if (v178)
                  {
                    ++v175;
                  }

                  --v177;
                  if (v179)
                  {
                    v174 |= (v176 & v173) << v175;
                  }

                  else
                  {
                    v177 = 0;
                  }

                  if (v179)
                  {
                    ++v175;
                  }

                  v176 *= 2;
                  --v175;
                  v179 = v177 != 0;
                  v178 = v180 != 0;
                }

                while (v177 | v180);
              }
            }

            else
            {
              v174 = v299;
              if (v299)
              {
                v181 = 0;
                v174 = 0;
                v182 = 1;
                v183 = v286;
                v185 = v288;
                v184 = v290;
                v186 = v292;
                do
                {
                  --v184;
                  if (v183)
                  {
                    v174 |= (v182 & v173) << v181;
                  }

                  else
                  {
                    v184 = 0;
                  }

                  if (v183)
                  {
                    ++v181;
                  }

                  --v186;
                  if (v185)
                  {
                    v174 |= (v182 & v167) << v181;
                  }

                  else
                  {
                    v186 = 0;
                  }

                  if (v185)
                  {
                    ++v181;
                  }

                  v182 *= 2;
                  --v181;
                  v185 = v186 != 0;
                  v183 = v184 != 0;
                }

                while (v186 | v184);
              }
            }

            v187 = *(v14 + 4 * ((v174 + v301) | ((v174 + v301) >> 8 << 9)));
            if (v187 < 0)
            {
              v188 = v14 - *(a13 + 3) + ((v187 & 0x1FFFFFFF) << 14);
              result = *a13;
              v189 = a13[2];
              if (result > v189)
              {
                result = get_level_offset_within_tail(result, v189, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
                v163 = v284;
                v158 = v263;
                v155 = v264;
                v24 = v265;
                v15 = a11;
                v153 = v266;
                v152 = a10;
                v188 += result;
              }

              v190 = (v166 + v279) << v24;
              v191 = v273;
              if (a10 + v266 >= (v166 + v279 + 1) << v24)
              {
                v192 = v155;
              }

              else
              {
                v191 = v152;
                v192 = v276;
              }

              if (v190 >= v153)
              {
                v193 = 0;
              }

              else
              {
                v193 = v274;
              }

              if (v190 >= v153)
              {
                v191 = v192;
              }

              if (!v271)
              {
                v211 = 0;
                v195 = 0;
                v202 = 0;
                v218 = 0;
                v162 = v281;
                if (!v191)
                {
                  goto LABEL_188;
                }

LABEL_260:
                if (v171)
                {
                  v225 = 0;
                  v226 = (v268 + (v193 + (v166 << v24)) * v15);
                  do
                  {
                    v227 = v171;
                    v228 = v226;
                    v229 = v211;
                    do
                    {
                      result = *(v188 + 4 * (v229 + v218));
                      *v228++ = result;
                      v229 = (v229 - v195) & v195;
                      --v227;
                    }

                    while (v227);
                    v218 = (v218 - v202) & v202;
                    v226 = (v226 + v15);
                    ++v225;
                  }

                  while (v225 != v191);
                }

                goto LABEL_188;
              }

              v194 = 0;
              v195 = 0;
              v196 = 1;
              v197 = v163;
              v198 = v158;
              v199 = v293;
              v200 = v159;
              do
              {
                --v199;
                if (v197)
                {
                  v195 |= (v196 & v165) << v194++;
                }

                else
                {
                  v199 = 0;
                }

                --v200;
                if (!v198)
                {
                  v200 = 0;
                }

                v196 *= 2;
                v194 = (__PAIR64__(v194, v198) - 1) >> 32;
                v198 = v200 != 0;
                v197 = v199 != 0;
              }

              while (v200 | v199);
              v201 = 0;
              v202 = 0;
              v203 = 1;
              v204 = v163;
              v205 = v158;
              v206 = v293;
              v207 = v159;
              do
              {
                --v206;
                v208 = v204;
                if (!v208)
                {
                  v206 = 0;
                }

                v209 = v201 + v208;
                --v207;
                if (v205)
                {
                  v202 |= (v203 & ~(-1 << v159)) << v209++;
                }

                else
                {
                  v207 = 0;
                }

                v203 *= 2;
                v201 = v209 - 1;
                v205 = v207 != 0;
                v204 = v206 != 0;
              }

              while (v207 | v206);
              v210 = 0;
              v211 = 0;
              v212 = 1;
              v213 = v163;
              v214 = v158;
              v215 = v293;
              v216 = v159;
              do
              {
                --v215;
                if (v213)
                {
                  v211 |= (v212 & v172) << v210++;
                }

                else
                {
                  v215 = 0;
                }

                --v216;
                if (!v214)
                {
                  v216 = 0;
                }

                v212 *= 2;
                v210 = (__PAIR64__(v210, v214) - 1) >> 32;
                v214 = v216 != 0;
                v213 = v215 != 0;
              }

              while (v216 | v215);
              v217 = 0;
              v218 = 0;
              v219 = 1;
              v220 = v163;
              LOBYTE(result) = v158;
              v221 = v293;
              v222 = v159;
              do
              {
                --v221;
                v223 = v220;
                if (!v223)
                {
                  v221 = 0;
                }

                v224 = v217 + v223;
                --v222;
                if (result)
                {
                  v218 |= (v219 & v193) << v224++;
                }

                else
                {
                  v222 = 0;
                }

                v219 *= 2;
                v217 = v224 - 1;
                result = v222 != 0;
                v220 = v221 != 0;
              }

              while (v222 | v221);
              v162 = v281;
              v163 = v284;
              if (v191)
              {
                goto LABEL_260;
              }
            }

LABEL_188:
            ++v166;
          }

          while (v162 > v166);
          v164 = v262 + 1;
        }

        while (v259 > (v262 + 1));
      }
    }
  }

  else
  {
    v61 = *(a12 + 13);
    v62 = *(a12 + 12);
    v63 = 1 << v61;
    v64 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v64 = 0;
    }

    v65 = v62 + v61;
    result = v62 + v61 + v64;
    if (a6 >> v61)
    {
      v66 = 1;
    }

    else
    {
      v66 = 1 << v62 >= a5;
    }

    if (v66)
    {
      v67 = *(a12 + 12);
    }

    else
    {
      v67 = v62 + v61 + v64;
    }

    if (v66)
    {
      LOBYTE(v68) = *(a12 + 13);
    }

    else
    {
      v68 = -v64;
    }

    v69 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v69) = 0;
    }

    if (v63 < a6 && a5 >> v62 == 0)
    {
      v71 = v65 - v69;
    }

    else
    {
      LOBYTE(v69) = v67;
      v71 = v68;
    }

    v72 = 1 << v71;
    v73 = *(a12 + 15);
    v74 = 1 << v73;
    if (v73)
    {
      v75 = v74 > a3;
    }

    else
    {
      v75 = 1;
    }

    v76 = v75 || v74 > a4;
    v77 = (~(-1 << v73) + a3) & (-1 << v73);
    if (v76)
    {
      v78 = a3;
    }

    else
    {
      v78 = v77;
    }

    v278 = a10 + a8;
    v280 = 1 << v71;
    v79 = v72 - 1;
    v272 = a8 >> v71;
    v277 = (v72 - 1 + a10 + a8) >> v71;
    if (a8 >> v71 < v277)
    {
      v80 = (1 << v69) - 1;
      v300 = a9 + v13;
      result = (v80 + a9 + v13) >> v69;
      if (v72 >= a6)
      {
        v72 = a6;
      }

      v81 = 32 - __clz(v72 - 1);
      v82 = v72 > 1;
      if (v72 <= 1)
      {
        v83 = 0;
      }

      else
      {
        v83 = v81;
      }

      v296 = (v80 + a9 + v13) >> v69;
      v298 = 1 << v69;
      if (1 << v69 >= a5)
      {
        v84 = a5;
      }

      else
      {
        v84 = 1 << v69;
      }

      v85 = 32 - __clz(v84 - 1);
      v86 = v84 > 1;
      if (v84 <= 1)
      {
        v87 = 0;
      }

      else
      {
        v87 = v85;
      }

      v291 = v13 >> v69;
      if (v13 >> v69 < result)
      {
        v270 = (v78 + ~(-1 << v69)) >> v69;
        v294 = v80 & v300;
        v289 = v80 & v13;
        v275 = v79 & v278;
        v283 = v79 & a8;
        if (v83 | v87)
        {
          v88 = a8 >> v71;
          v261 = a2;
          v267 = v71;
          do
          {
            v89 = v88 << v71;
            v90 = v88 - v272;
            v287 = v88 * v270;
            v282 = v88 + 1;
            v66 = v278 >= (v88 + 1) << v71;
            v91 = v280;
            v92 = v280 - v283;
            if (!v66)
            {
              v91 = v275;
              v92 = v17;
            }

            v93 = v90 << v71;
            if (v89 >= a8)
            {
              v94 = 0;
            }

            else
            {
              v94 = v283;
            }

            if (v89 >= a8)
            {
              result = v91;
            }

            else
            {
              result = v92;
            }

            v285 = a2 + (v94 + v93 - v283) * a11;
            v95 = v291;
            do
            {
              v96 = 0;
              v97 = 0;
              v98 = v95 << v69;
              v99 = v95 - v291;
              v100 = v95 + v287;
              v101 = ++v95 << v69;
              if (v98 >= v13)
              {
                v102 = 0;
              }

              else
              {
                v102 = v289;
              }

              v103 = v102 + (v99 << v69) - v289;
              v104 = v100 * v16[3] * *(v16 + 9);
              v105 = 1;
              v106 = v86;
              v107 = v82;
              v108 = v87;
              v109 = v83;
              do
              {
                --v108;
                if (v106)
                {
                  v97 |= (v105 & ~(-1 << v87)) << v96++;
                }

                else
                {
                  v108 = 0;
                }

                --v109;
                if (!v107)
                {
                  v109 = 0;
                }

                v105 *= 2;
                v96 = (__PAIR64__(v96, v107) - 1) >> 32;
                v107 = v109 != 0;
                v106 = v108 != 0;
              }

              while (v109 | v108);
              v110 = 0;
              v111 = 0;
              v112 = 4 * v103;
              v113 = 1 << v69;
              if (v300 < v101)
              {
                v113 = v294;
              }

              v114 = 1;
              v115 = v86;
              v116 = v82;
              v117 = v87;
              v118 = v83;
              do
              {
                --v117;
                v119 = v115;
                if (!v119)
                {
                  v117 = 0;
                }

                v120 = v110 + v119;
                --v118;
                if (v116)
                {
                  v111 |= (v114 & ~(-1 << v83)) << v120++;
                }

                else
                {
                  v118 = 0;
                }

                v114 *= 2;
                v110 = v120 - 1;
                v116 = v118 != 0;
                v115 = v117 != 0;
              }

              while (v118 | v117);
              v121 = 0;
              v122 = 0;
              v123 = v298 - v289;
              if (v300 < v101)
              {
                v123 = a9;
              }

              v124 = &v285[v112];
              v125 = 1;
              v126 = v86;
              v127 = v82;
              v128 = v87;
              v129 = v83;
              do
              {
                --v128;
                if (v126)
                {
                  v122 |= (v125 & v102) << v121;
                  v130 = v121 + 1;
                }

                else
                {
                  v128 = 0;
                  v130 = v121;
                }

                if (v127)
                {
                  --v129;
                }

                else
                {
                  v129 = 0;
                }

                v125 *= 2;
                v121 = (__PAIR64__(v130, v127) - 1) >> 32;
                v127 = v129 != 0;
                v126 = v128 != 0;
              }

              while (v129 | v128);
              v131 = 0;
              v132 = 0;
              v133 = 1;
              v134 = v86;
              v135 = v82;
              v136 = v87;
              v137 = v83;
              do
              {
                v138 = v134;
                if (v138)
                {
                  --v136;
                }

                else
                {
                  v136 = 0;
                }

                v139 = v131 + v138;
                v140 = ((v133 & v94) << (v131 + v138)) | v132;
                if (v135)
                {
                  --v137;
                }

                else
                {
                  v137 = 0;
                }

                if (v135)
                {
                  v132 = v140;
                  ++v139;
                }

                v133 *= 2;
                v131 = v139 - 1;
                v135 = v137 != 0;
                v134 = v136 != 0;
              }

              while (v137 | v136);
              v13 = a7;
              if (v98 < a7)
              {
                v113 = v123;
              }

              if (result && v113)
              {
                v141 = 0;
                v142 = v104 + v14;
                do
                {
                  v143 = v113;
                  v144 = v124;
                  v145 = v122;
                  do
                  {
                    *v144 = *(v142 + 4 * (v145 + v132));
                    v144 += 4;
                    v145 = (v145 - v97) & v97;
                    --v143;
                  }

                  while (v143);
                  v132 = (v132 - v111) & v111;
                  v124 += a11;
                  ++v141;
                }

                while (v141 != result);
              }

              v16 = a12;
            }

            while (v95 != v296);
            v88 = v282;
            a2 = v261;
            a8 = v266;
            v17 = a10;
            v71 = v267;
          }

          while (v282 != v277);
        }

        else
        {
          v234 = a8 >> v71;
          do
          {
            v235 = v234 << v71;
            v236 = v234 + 1;
            v237 = v275;
            if (v278 >= (v234 + 1) << v71)
            {
              v237 = 1 << v71;
            }

            if (v278 >= v236 << v71)
            {
              v238 = v280 - v283;
            }

            else
            {
              v238 = a10;
            }

            if (v235 >= a8)
            {
              v239 = 0;
            }

            else
            {
              v239 = v283;
            }

            if (v235 >= a8)
            {
              v240 = v237;
            }

            else
            {
              v240 = v238;
            }

            if (v240)
            {
              v241 = (v234 - v272) << v71;
              v242 = v234 * v270;
              v243 = a2 + ((v239 + v241) - v283) * a11;
              v244 = v13 >> v69;
              do
              {
                result = v244 << v69;
                v245 = v244 + 1;
                v246 = a9;
                if (v300 >= (v244 + 1) << v69)
                {
                  v246 = v298 - v289;
                }

                v247 = 1 << v69;
                if (v300 < v245 << v69)
                {
                  v247 = v294;
                }

                if (result >= v13)
                {
                  v246 = v247;
                }

                if (v246)
                {
                  v248 = 0;
                  v249 = (v244 + v242) * a12[3] * *(a12 + 9);
                  if (result >= v13)
                  {
                    v250 = 0;
                  }

                  else
                  {
                    v250 = v289;
                  }

                  result = &v243[4 * (v250 + ((v244 - v291) << v69) - v289)];
                  do
                  {
                    v251 = v246;
                    v252 = result;
                    do
                    {
                      *v252++ = *(v14 + v249);
                      --v251;
                    }

                    while (v251);
                    result += a11;
                    ++v248;
                  }

                  while (v248 != v240);
                }

                v244 = v245;
              }

              while (v245 != v296);
            }

            v234 = v236;
          }

          while (v236 != v277);
        }
      }
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressZ<AGXSConverterPassThru<false,2ul,1u,(TwiddleOrder)1>>(uint64_t result, _WORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v13 = a7;
  v14 = result;
  v15 = a11;
  v16 = a12;
  v17 = a10;
  if (!a12)
  {
    v25 = 32 - __clz(a6 - 1);
    v26 = a6 > 1;
    if (a6 <= 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = v25;
    }

    v28 = 32 - __clz(a5 - 1);
    v29 = a5 > 1;
    if (a5 <= 1)
    {
      v30 = 0;
    }

    else
    {
      v30 = v28;
    }

    if (v27 | v30)
    {
      v31 = a2;
      v32 = 0;
      v33 = 0;
      v34 = a5 > 1;
      v35 = v26;
      v36 = 1;
      v37 = v30;
      v38 = v27;
      do
      {
        --v37;
        if (v34)
        {
          v33 |= (v36 & ~(-1 << v30)) << v32++;
        }

        else
        {
          v37 = 0;
        }

        --v38;
        if (!v35)
        {
          v38 = 0;
        }

        v36 *= 2;
        v32 = (__PAIR64__(v32, v35) - 1) >> 32;
        v35 = v38 != 0;
        v34 = v37 != 0;
      }

      while (v38 | v37);
      v39 = 0;
      v40 = 0;
      v41 = 1;
      v42 = a5 > 1;
      v43 = v26;
      v44 = v30;
      v45 = v27;
      do
      {
        --v44;
        v46 = v42;
        if (!v46)
        {
          v44 = 0;
        }

        v47 = v39 + v46;
        --v45;
        if (v43)
        {
          v40 |= (v41 & ~(-1 << v27)) << v47++;
        }

        else
        {
          v45 = 0;
        }

        v41 *= 2;
        v39 = v47 - 1;
        v43 = v45 != 0;
        v42 = v44 != 0;
      }

      while (v45 | v44);
      v48 = 0;
      v49 = 0;
      v50 = a5 > 1;
      v51 = v26;
      v52 = 1;
      v53 = v30;
      v54 = v27;
      do
      {
        --v53;
        if (v50)
        {
          v49 |= (v52 & a7) << v48++;
        }

        else
        {
          v53 = 0;
        }

        --v54;
        if (!v51)
        {
          v54 = 0;
        }

        v52 *= 2;
        v48 = (__PAIR64__(v48, v51) - 1) >> 32;
        v51 = v54 != 0;
        v50 = v53 != 0;
      }

      while (v54 | v53);
      v55 = 0;
      v56 = 0;
      v57 = 1;
      do
      {
        --v30;
        v58 = v29;
        if (!v58)
        {
          v30 = 0;
        }

        v59 = v55 + v58;
        --v27;
        if (v26)
        {
          v56 |= (v57 & a8) << v59;
          v60 = v59 + 1;
        }

        else
        {
          v27 = 0;
          v60 = v59;
        }

        v57 *= 2;
        v55 = v60 - 1;
        v26 = v27 != 0;
        v29 = v30 != 0;
        result = v27 | v30;
      }

      while (result);
      a2 = v31;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v49 = 0;
      v33 = 0;
      v40 = 0;
      v56 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      for (i = 0; i != a10; ++i)
      {
        v231 = a9;
        v232 = a2;
        v233 = v49;
        do
        {
          *v232++ = *(v14 + 2 * (v233 + v56));
          v233 = (v233 - v33) & v33;
          --v231;
        }

        while (v231);
        v56 = (v56 - v40) & v40;
        a2 = (a2 + a11);
      }
    }

    return result;
  }

  v266 = a8;
  if (*(a12 + 20))
  {
    v18 = a2;
    result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v302);
    v21 = *(a12 + 13);
    v22 = *(a12 + 12);
    if (1 << v21 >= a6 || a5 >> v22)
    {
      v146 = a6 >> v21;
      v147 = 1 << v22;
      v148 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
      if (a6 < 2)
      {
        v148 = 0;
      }

      v149 = v147 >= a5;
      if (v147 < a5)
      {
        v150 = v22 + v21 + v148;
      }

      else
      {
        v150 = *(a12 + 12);
      }

      if (v149)
      {
        LOBYTE(v151) = *(a12 + 13);
      }

      else
      {
        v151 = -v148;
      }

      if (!v146)
      {
        v22 = v150;
      }

      v260 = v22;
      if (v146)
      {
        v24 = *(a12 + 13);
      }

      else
      {
        v24 = v151;
      }
    }

    else
    {
      v23 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
      if (a5 < 2)
      {
        LOBYTE(v23) = 0;
      }

      v260 = v23;
      v24 = v22 + v21 - v23;
    }

    v153 = v266;
    v152 = a10;
    v259 = v308;
    if (v308)
    {
      v154 = 1 << v260;
      v155 = 1 << v24;
      if (1 << v24 >= a6)
      {
        v156 = a6;
      }

      else
      {
        v156 = 1 << v24;
      }

      v157 = 32 - __clz(v156 - 1);
      v158 = v156 > 1;
      if (v156 <= 1)
      {
        v159 = 0;
      }

      else
      {
        v159 = v157;
      }

      if (v154 >= a5)
      {
        v160 = a5;
      }

      else
      {
        v160 = 1 << v260;
      }

      v161 = 32 - __clz(v160 - 1);
      v162 = v309;
      v163 = v160 > 1;
      if (v160 <= 1)
      {
        v161 = 0;
      }

      v292 = v306;
      v293 = v161;
      v288 = v306 != 0;
      v290 = v307;
      v286 = v307 != 0;
      if (v309)
      {
        v164 = 0;
        v258 = a7 >> v260;
        v279 = v266 >> v24;
        v301 = v305;
        v299 = v307 | v306;
        v297 = v310;
        v257 = a9 + a7;
        v256 = (v154 - 1) & (a9 + a7);
        v254 = v303;
        v295 = v304;
        v255 = (v154 - 1) & a7;
        v253 = v154 - v255;
        v274 = (v155 - 1) & v266;
        v276 = (v155 - 1) & (a10 + v266);
        v273 = v155 - v274;
        v165 = ~(-1 << v161);
        v271 = v159 | v161;
        v284 = v160 > 1;
        v264 = 1 << v24;
        v265 = v24;
        v263 = v158;
        v281 = v309;
        do
        {
          v166 = 0;
          v167 = v164 + v254;
          v168 = (v164 + v258) << v260;
          v169 = a9;
          if (v257 >= (v164 + v258 + 1) << v260)
          {
            v169 = v253;
          }

          v170 = 1 << v260;
          if (v257 < (v164 + v258 + 1) << v260)
          {
            v170 = v256;
          }

          v262 = v164;
          if (v168 >= a7)
          {
            v171 = v170;
          }

          else
          {
            v171 = v169;
          }

          if (v168 >= a7)
          {
            v172 = 0;
          }

          else
          {
            v172 = v255;
          }

          v268 = &v18[v172 + (v164 << v260)];
          do
          {
            v173 = v166 + v295;
            if (v297)
            {
              v174 = v299;
              if (v299)
              {
                v175 = 0;
                v174 = 0;
                v176 = 1;
                v178 = v288;
                v177 = v290;
                v179 = v286;
                v180 = v292;
                do
                {
                  --v180;
                  if (v178)
                  {
                    v174 |= (v176 & v167) << v175;
                  }

                  else
                  {
                    v180 = 0;
                  }

                  if (v178)
                  {
                    ++v175;
                  }

                  --v177;
                  if (v179)
                  {
                    v174 |= (v176 & v173) << v175;
                  }

                  else
                  {
                    v177 = 0;
                  }

                  if (v179)
                  {
                    ++v175;
                  }

                  v176 *= 2;
                  --v175;
                  v179 = v177 != 0;
                  v178 = v180 != 0;
                }

                while (v177 | v180);
              }
            }

            else
            {
              v174 = v299;
              if (v299)
              {
                v181 = 0;
                v174 = 0;
                v182 = 1;
                v183 = v286;
                v185 = v288;
                v184 = v290;
                v186 = v292;
                do
                {
                  --v184;
                  if (v183)
                  {
                    v174 |= (v182 & v173) << v181;
                  }

                  else
                  {
                    v184 = 0;
                  }

                  if (v183)
                  {
                    ++v181;
                  }

                  --v186;
                  if (v185)
                  {
                    v174 |= (v182 & v167) << v181;
                  }

                  else
                  {
                    v186 = 0;
                  }

                  if (v185)
                  {
                    ++v181;
                  }

                  v182 *= 2;
                  --v181;
                  v185 = v186 != 0;
                  v183 = v184 != 0;
                }

                while (v186 | v184);
              }
            }

            v187 = *(v14 + 4 * ((v174 + v301) | ((v174 + v301) >> 8 << 9)));
            if (v187 < 0)
            {
              v188 = v14 - *(a13 + 3) + ((v187 & 0x1FFFFFFF) << 14);
              result = *a13;
              v189 = a13[2];
              if (result > v189)
              {
                result = get_level_offset_within_tail(result, v189, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
                v163 = v284;
                v158 = v263;
                v155 = v264;
                v24 = v265;
                v15 = a11;
                v153 = v266;
                v152 = a10;
                v188 += result;
              }

              v190 = (v166 + v279) << v24;
              v191 = v273;
              if (a10 + v266 >= (v166 + v279 + 1) << v24)
              {
                v192 = v155;
              }

              else
              {
                v191 = v152;
                v192 = v276;
              }

              if (v190 >= v153)
              {
                v193 = 0;
              }

              else
              {
                v193 = v274;
              }

              if (v190 >= v153)
              {
                v191 = v192;
              }

              if (!v271)
              {
                v211 = 0;
                v195 = 0;
                v202 = 0;
                v218 = 0;
                v162 = v281;
                if (!v191)
                {
                  goto LABEL_188;
                }

LABEL_260:
                if (v171)
                {
                  v225 = 0;
                  v226 = (v268 + (v193 + (v166 << v24)) * v15);
                  do
                  {
                    v227 = v171;
                    v228 = v226;
                    v229 = v211;
                    do
                    {
                      result = *(v188 + 2 * (v229 + v218));
                      *v228++ = result;
                      v229 = (v229 - v195) & v195;
                      --v227;
                    }

                    while (v227);
                    v218 = (v218 - v202) & v202;
                    v226 = (v226 + v15);
                    ++v225;
                  }

                  while (v225 != v191);
                }

                goto LABEL_188;
              }

              v194 = 0;
              v195 = 0;
              v196 = 1;
              v197 = v163;
              v198 = v158;
              v199 = v293;
              v200 = v159;
              do
              {
                --v199;
                if (v197)
                {
                  v195 |= (v196 & v165) << v194++;
                }

                else
                {
                  v199 = 0;
                }

                --v200;
                if (!v198)
                {
                  v200 = 0;
                }

                v196 *= 2;
                v194 = (__PAIR64__(v194, v198) - 1) >> 32;
                v198 = v200 != 0;
                v197 = v199 != 0;
              }

              while (v200 | v199);
              v201 = 0;
              v202 = 0;
              v203 = 1;
              v204 = v163;
              v205 = v158;
              v206 = v293;
              v207 = v159;
              do
              {
                --v206;
                v208 = v204;
                if (!v208)
                {
                  v206 = 0;
                }

                v209 = v201 + v208;
                --v207;
                if (v205)
                {
                  v202 |= (v203 & ~(-1 << v159)) << v209++;
                }

                else
                {
                  v207 = 0;
                }

                v203 *= 2;
                v201 = v209 - 1;
                v205 = v207 != 0;
                v204 = v206 != 0;
              }

              while (v207 | v206);
              v210 = 0;
              v211 = 0;
              v212 = 1;
              v213 = v163;
              v214 = v158;
              v215 = v293;
              v216 = v159;
              do
              {
                --v215;
                if (v213)
                {
                  v211 |= (v212 & v172) << v210++;
                }

                else
                {
                  v215 = 0;
                }

                --v216;
                if (!v214)
                {
                  v216 = 0;
                }

                v212 *= 2;
                v210 = (__PAIR64__(v210, v214) - 1) >> 32;
                v214 = v216 != 0;
                v213 = v215 != 0;
              }

              while (v216 | v215);
              v217 = 0;
              v218 = 0;
              v219 = 1;
              v220 = v163;
              LOBYTE(result) = v158;
              v221 = v293;
              v222 = v159;
              do
              {
                --v221;
                v223 = v220;
                if (!v223)
                {
                  v221 = 0;
                }

                v224 = v217 + v223;
                --v222;
                if (result)
                {
                  v218 |= (v219 & v193) << v224++;
                }

                else
                {
                  v222 = 0;
                }

                v219 *= 2;
                v217 = v224 - 1;
                result = v222 != 0;
                v220 = v221 != 0;
              }

              while (v222 | v221);
              v162 = v281;
              v163 = v284;
              if (v191)
              {
                goto LABEL_260;
              }
            }

LABEL_188:
            ++v166;
          }

          while (v162 > v166);
          v164 = v262 + 1;
        }

        while (v259 > (v262 + 1));
      }
    }
  }

  else
  {
    v61 = *(a12 + 13);
    v62 = *(a12 + 12);
    v63 = 1 << v61;
    v64 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v64 = 0;
    }

    v65 = v62 + v61;
    result = v62 + v61 + v64;
    if (a6 >> v61)
    {
      v66 = 1;
    }

    else
    {
      v66 = 1 << v62 >= a5;
    }

    if (v66)
    {
      v67 = *(a12 + 12);
    }

    else
    {
      v67 = v62 + v61 + v64;
    }

    if (v66)
    {
      LOBYTE(v68) = *(a12 + 13);
    }

    else
    {
      v68 = -v64;
    }

    v69 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v69) = 0;
    }

    if (v63 < a6 && a5 >> v62 == 0)
    {
      v71 = v65 - v69;
    }

    else
    {
      LOBYTE(v69) = v67;
      v71 = v68;
    }

    v72 = 1 << v71;
    v73 = *(a12 + 15);
    v74 = 1 << v73;
    if (v73)
    {
      v75 = v74 > a3;
    }

    else
    {
      v75 = 1;
    }

    v76 = v75 || v74 > a4;
    v77 = (~(-1 << v73) + a3) & (-1 << v73);
    if (v76)
    {
      v78 = a3;
    }

    else
    {
      v78 = v77;
    }

    v278 = a10 + a8;
    v280 = 1 << v71;
    v79 = v72 - 1;
    v272 = a8 >> v71;
    v277 = (v72 - 1 + a10 + a8) >> v71;
    if (a8 >> v71 < v277)
    {
      v80 = (1 << v69) - 1;
      v300 = a9 + v13;
      result = (v80 + a9 + v13) >> v69;
      if (v72 >= a6)
      {
        v72 = a6;
      }

      v81 = 32 - __clz(v72 - 1);
      v82 = v72 > 1;
      if (v72 <= 1)
      {
        v83 = 0;
      }

      else
      {
        v83 = v81;
      }

      v296 = (v80 + a9 + v13) >> v69;
      v298 = 1 << v69;
      if (1 << v69 >= a5)
      {
        v84 = a5;
      }

      else
      {
        v84 = 1 << v69;
      }

      v85 = 32 - __clz(v84 - 1);
      v86 = v84 > 1;
      if (v84 <= 1)
      {
        v87 = 0;
      }

      else
      {
        v87 = v85;
      }

      v291 = v13 >> v69;
      if (v13 >> v69 < result)
      {
        v270 = (v78 + ~(-1 << v69)) >> v69;
        v294 = v80 & v300;
        v289 = v80 & v13;
        v275 = v79 & v278;
        v283 = v79 & a8;
        if (v83 | v87)
        {
          v88 = a8 >> v71;
          v261 = a2;
          v267 = v71;
          do
          {
            v89 = v88 << v71;
            v90 = v88 - v272;
            v287 = v88 * v270;
            v282 = v88 + 1;
            v66 = v278 >= (v88 + 1) << v71;
            v91 = v280;
            v92 = v280 - v283;
            if (!v66)
            {
              v91 = v275;
              v92 = v17;
            }

            v93 = v90 << v71;
            if (v89 >= a8)
            {
              v94 = 0;
            }

            else
            {
              v94 = v283;
            }

            if (v89 >= a8)
            {
              result = v91;
            }

            else
            {
              result = v92;
            }

            v285 = a2 + (v94 + v93 - v283) * a11;
            v95 = v291;
            do
            {
              v96 = 0;
              v97 = 0;
              v98 = v95 << v69;
              v99 = v95 - v291;
              v100 = v95 + v287;
              v101 = ++v95 << v69;
              if (v98 >= v13)
              {
                v102 = 0;
              }

              else
              {
                v102 = v289;
              }

              v103 = v102 + (v99 << v69) - v289;
              v104 = v100 * v16[3] * *(v16 + 9);
              v105 = 1;
              v106 = v86;
              v107 = v82;
              v108 = v87;
              v109 = v83;
              do
              {
                --v108;
                if (v106)
                {
                  v97 |= (v105 & ~(-1 << v87)) << v96++;
                }

                else
                {
                  v108 = 0;
                }

                --v109;
                if (!v107)
                {
                  v109 = 0;
                }

                v105 *= 2;
                v96 = (__PAIR64__(v96, v107) - 1) >> 32;
                v107 = v109 != 0;
                v106 = v108 != 0;
              }

              while (v109 | v108);
              v110 = 0;
              v111 = 0;
              v112 = 2 * v103;
              v113 = 1 << v69;
              if (v300 < v101)
              {
                v113 = v294;
              }

              v114 = 1;
              v115 = v86;
              v116 = v82;
              v117 = v87;
              v118 = v83;
              do
              {
                --v117;
                v119 = v115;
                if (!v119)
                {
                  v117 = 0;
                }

                v120 = v110 + v119;
                --v118;
                if (v116)
                {
                  v111 |= (v114 & ~(-1 << v83)) << v120++;
                }

                else
                {
                  v118 = 0;
                }

                v114 *= 2;
                v110 = v120 - 1;
                v116 = v118 != 0;
                v115 = v117 != 0;
              }

              while (v118 | v117);
              v121 = 0;
              v122 = 0;
              v123 = v298 - v289;
              if (v300 < v101)
              {
                v123 = a9;
              }

              v124 = &v285[v112];
              v125 = 1;
              v126 = v86;
              v127 = v82;
              v128 = v87;
              v129 = v83;
              do
              {
                --v128;
                if (v126)
                {
                  v122 |= (v125 & v102) << v121;
                  v130 = v121 + 1;
                }

                else
                {
                  v128 = 0;
                  v130 = v121;
                }

                if (v127)
                {
                  --v129;
                }

                else
                {
                  v129 = 0;
                }

                v125 *= 2;
                v121 = (__PAIR64__(v130, v127) - 1) >> 32;
                v127 = v129 != 0;
                v126 = v128 != 0;
              }

              while (v129 | v128);
              v131 = 0;
              v132 = 0;
              v133 = 1;
              v134 = v86;
              v135 = v82;
              v136 = v87;
              v137 = v83;
              do
              {
                v138 = v134;
                if (v138)
                {
                  --v136;
                }

                else
                {
                  v136 = 0;
                }

                v139 = v131 + v138;
                v140 = ((v133 & v94) << (v131 + v138)) | v132;
                if (v135)
                {
                  --v137;
                }

                else
                {
                  v137 = 0;
                }

                if (v135)
                {
                  v132 = v140;
                  ++v139;
                }

                v133 *= 2;
                v131 = v139 - 1;
                v135 = v137 != 0;
                v134 = v136 != 0;
              }

              while (v137 | v136);
              v13 = a7;
              if (v98 < a7)
              {
                v113 = v123;
              }

              if (result && v113)
              {
                v141 = 0;
                v142 = v104 + v14;
                do
                {
                  v143 = v113;
                  v144 = v124;
                  v145 = v122;
                  do
                  {
                    *v144 = *(v142 + 2 * (v145 + v132));
                    v144 += 2;
                    v145 = (v145 - v97) & v97;
                    --v143;
                  }

                  while (v143);
                  v132 = (v132 - v111) & v111;
                  v124 += a11;
                  ++v141;
                }

                while (v141 != result);
              }

              v16 = a12;
            }

            while (v95 != v296);
            v88 = v282;
            a2 = v261;
            a8 = v266;
            v17 = a10;
            v71 = v267;
          }

          while (v282 != v277);
        }

        else
        {
          v234 = a8 >> v71;
          do
          {
            v235 = v234 << v71;
            v236 = v234 + 1;
            v237 = v275;
            if (v278 >= (v234 + 1) << v71)
            {
              v237 = 1 << v71;
            }

            if (v278 >= v236 << v71)
            {
              v238 = v280 - v283;
            }

            else
            {
              v238 = a10;
            }

            if (v235 >= a8)
            {
              v239 = 0;
            }

            else
            {
              v239 = v283;
            }

            if (v235 >= a8)
            {
              v240 = v237;
            }

            else
            {
              v240 = v238;
            }

            if (v240)
            {
              v241 = (v234 - v272) << v71;
              v242 = v234 * v270;
              v243 = a2 + ((v239 + v241) - v283) * a11;
              v244 = v13 >> v69;
              do
              {
                result = v244 << v69;
                v245 = v244 + 1;
                v246 = a9;
                if (v300 >= (v244 + 1) << v69)
                {
                  v246 = v298 - v289;
                }

                v247 = 1 << v69;
                if (v300 < v245 << v69)
                {
                  v247 = v294;
                }

                if (result >= v13)
                {
                  v246 = v247;
                }

                if (v246)
                {
                  v248 = 0;
                  v249 = (v244 + v242) * a12[3] * *(a12 + 9);
                  if (result >= v13)
                  {
                    v250 = 0;
                  }

                  else
                  {
                    v250 = v289;
                  }

                  result = &v243[2 * (v250 + ((v244 - v291) << v69) - v289)];
                  do
                  {
                    v251 = v246;
                    v252 = result;
                    do
                    {
                      *v252++ = *(v14 + v249);
                      --v251;
                    }

                    while (v251);
                    result += a11;
                    ++v248;
                  }

                  while (v248 != v240);
                }

                v244 = v245;
              }

              while (v245 != v296);
            }

            v234 = v236;
          }

          while (v236 != v277);
        }
      }
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressZ<AGXSConverterPassThru<false,1ul,1u,(TwiddleOrder)1>>(uint64_t result, _BYTE *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v13 = a8;
  v14 = a7;
  v15 = a11;
  v16 = a10;
  if (!a12)
  {
    v23 = 32 - __clz(a6 - 1);
    v24 = a6 > 1;
    if (a6 <= 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = v23;
    }

    v26 = 32 - __clz(a5 - 1);
    v27 = a5 > 1;
    if (a5 <= 1)
    {
      v28 = 0;
    }

    else
    {
      v28 = v26;
    }

    if (v25 | v28)
    {
      v29 = 0;
      v30 = 0;
      v31 = a5 > 1;
      v32 = a6 > 1;
      v33 = 1;
      v34 = v28;
      v35 = v25;
      do
      {
        --v34;
        if (v31)
        {
          v30 |= (v33 & ~(-1 << v28)) << v29++;
        }

        else
        {
          v34 = 0;
        }

        if (v32)
        {
          --v35;
        }

        else
        {
          v35 = 0;
        }

        v33 *= 2;
        v29 = (__PAIR64__(v29, v32) - 1) >> 32;
        v32 = v35 != 0;
        v31 = v34 != 0;
      }

      while (v35 | v34);
      v36 = 0;
      v37 = 0;
      v38 = 1;
      v39 = v27;
      v40 = v24;
      v41 = v28;
      v42 = v25;
      do
      {
        --v41;
        v43 = v39;
        if (!v43)
        {
          v41 = 0;
        }

        v44 = v36 + v43;
        if (v40)
        {
          --v42;
        }

        else
        {
          v42 = 0;
        }

        if (v40)
        {
          v37 |= (v38 & ~(-1 << v25)) << v44++;
        }

        v38 *= 2;
        v36 = v44 - 1;
        v40 = v42 != 0;
        v39 = v41 != 0;
      }

      while (v42 | v41);
      v45 = 0;
      v46 = 0;
      v47 = v27;
      v48 = v24;
      v49 = 1;
      v50 = v28;
      v51 = v25;
      do
      {
        --v50;
        if (v47)
        {
          v46 |= (v49 & v14) << v45++;
        }

        else
        {
          v50 = 0;
        }

        --v51;
        if (!v48)
        {
          v51 = 0;
        }

        v49 *= 2;
        v45 = (__PAIR64__(v45, v48) - 1) >> 32;
        v48 = v51 != 0;
        v47 = v50 != 0;
      }

      while (v51 | v50);
      v52 = 0;
      v53 = 0;
      v54 = 1;
      do
      {
        --v28;
        v55 = v27;
        if (!v55)
        {
          v28 = 0;
        }

        v56 = v52 + v55;
        --v25;
        if (v24)
        {
          v53 |= (v54 & a8) << v56;
          v57 = v56 + 1;
        }

        else
        {
          v25 = 0;
          v57 = v56;
        }

        v54 *= 2;
        v52 = v57 - 1;
        v24 = v25 != 0;
        v27 = v28 != 0;
      }

      while (v25 | v28);
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v46 = 0;
      v30 = 0;
      v37 = 0;
      v53 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      for (i = 0; i != a10; ++i)
      {
        v231 = a9;
        v232 = a2;
        v233 = v46;
        do
        {
          *v232++ = *(v53 + result + v233);
          v233 = (v233 - v30) & v30;
          --v231;
        }

        while (v231);
        v53 = (v53 - v37) & v37;
        a2 += a11;
      }
    }

    return result;
  }

  v292 = result;
  if (!*(a12 + 20))
  {
    v58 = *(a12 + 13);
    v59 = *(a12 + 12);
    v60 = 1 << v58;
    v61 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v61 = 0;
    }

    v62 = v59 + v58;
    if (a6 >> v58)
    {
      v63 = 1;
    }

    else
    {
      v63 = 1 << v59 >= a5;
    }

    if (v63)
    {
      v64 = *(a12 + 12);
    }

    else
    {
      v64 = v59 + v58 + v61;
    }

    if (v63)
    {
      LOBYTE(v65) = *(a12 + 13);
    }

    else
    {
      v65 = -v61;
    }

    v66 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v66) = 0;
    }

    if (v60 < a6 && a5 >> v59 == 0)
    {
      v68 = v62 - v66;
    }

    else
    {
      LOBYTE(v66) = v64;
      v68 = v65;
    }

    v69 = 1 << v68;
    v70 = *(a12 + 15);
    v71 = 1 << v70;
    if (v70)
    {
      v72 = v71 > a3;
    }

    else
    {
      v72 = 1;
    }

    v73 = v72 || v71 > a4;
    v74 = (~(-1 << v70) + a3) & (-1 << v70);
    if (v73)
    {
      v75 = a3;
    }

    else
    {
      v75 = v74;
    }

    v306 = 1 << v68;
    v76 = v69 - 1;
    v295 = a8 >> v68;
    v302 = (v69 - 1 + a10 + a8) >> v68;
    v304 = a10 + a8;
    if (a8 >> v68 >= v302)
    {
      return result;
    }

    v77 = 1 << v66;
    v78 = a9 + a7;
    v79 = (1 << v66) - 1;
    v80 = (v79 + a9 + a7) >> v66;
    if (v69 >= a6)
    {
      v69 = a6;
    }

    v81 = 32 - __clz(v69 - 1);
    v82 = v69 > 1;
    v83 = v69 <= 1 ? 0 : v81;
    v322 = (v79 + a9 + a7) >> v66;
    v84 = v77 >= a5 ? a5 : 1 << v66;
    v85 = 32 - __clz(v84 - 1);
    v86 = v84 > 1;
    v87 = v84 <= 1 ? 0 : v85;
    v316 = a7 >> v66;
    if (a7 >> v66 >= v80)
    {
      return result;
    }

    v293 = (v75 + ~(-1 << v66)) >> v66;
    v88 = v79 & a7;
    v89 = v76 & v13;
    v320 = v79 & v78;
    v318 = v77 - v88;
    v299 = v76 & v304;
    v297 = v306 - v89;
    v314 = v79 & a7;
    v290 = &a2[-v88];
    v301 = v89;
    if (v83 | v87)
    {
      v90 = v295;
      v288 = v68;
      do
      {
        v91 = v90 << v68;
        v92 = v90 - v295;
        v312 = v90 * v293;
        v308 = v90 + 1;
        v63 = v304 >= (v90 + 1) << v68;
        v93 = v306;
        v94 = v297;
        if (!v63)
        {
          v93 = v299;
          v94 = v16;
        }

        v95 = v92 << v68;
        if (v91 >= v13)
        {
          v96 = 0;
        }

        else
        {
          v96 = v301;
        }

        if (v91 >= v13)
        {
          result = v93;
        }

        else
        {
          result = v94;
        }

        v310 = &v290[(v96 + v95 - v301) * a11];
        v97 = v316;
        do
        {
          v98 = 0;
          v99 = 0;
          v100 = v97 << v66;
          v101 = v97 - v316;
          v102 = v97 + v312;
          v103 = ++v97 << v66;
          if (v100 >= v14)
          {
            v104 = 0;
          }

          else
          {
            v104 = v314;
          }

          v105 = v104 + (v101 << v66);
          v106 = v102 * a12[3] * *(a12 + 9);
          v107 = 1;
          v108 = v86;
          v109 = v82;
          v110 = v87;
          v111 = v83;
          do
          {
            --v110;
            if (v108)
            {
              v99 |= (v107 & ~(-1 << v87)) << v98++;
            }

            else
            {
              v110 = 0;
            }

            --v111;
            if (!v109)
            {
              v111 = 0;
            }

            v107 *= 2;
            v98 = (__PAIR64__(v98, v109) - 1) >> 32;
            v109 = v111 != 0;
            v108 = v110 != 0;
          }

          while (v111 | v110);
          v112 = 0;
          v113 = 0;
          if (v78 >= v103)
          {
            v114 = 1 << v66;
          }

          else
          {
            v114 = v320;
          }

          v115 = 1;
          v116 = v86;
          v117 = v82;
          v118 = v87;
          v119 = v83;
          do
          {
            --v118;
            v120 = v116;
            if (!v120)
            {
              v118 = 0;
            }

            v121 = v112 + v120;
            --v119;
            if (v117)
            {
              v113 |= (v115 & ~(-1 << v83)) << v121++;
            }

            else
            {
              v119 = 0;
            }

            v115 *= 2;
            v112 = v121 - 1;
            v117 = v119 != 0;
            v116 = v118 != 0;
          }

          while (v119 | v118);
          v122 = 0;
          v123 = 0;
          v124 = a9;
          if (v78 >= v103)
          {
            v124 = v318;
          }

          v125 = &v310[v105];
          v126 = 1;
          v127 = v86;
          v128 = v82;
          v129 = v87;
          v130 = v83;
          do
          {
            --v129;
            if (v127)
            {
              v123 |= (v126 & v104) << v122++;
            }

            else
            {
              v129 = 0;
            }

            if (v128)
            {
              --v130;
            }

            else
            {
              v130 = 0;
            }

            v126 *= 2;
            v122 = (__PAIR64__(v122, v128) - 1) >> 32;
            v128 = v130 != 0;
            v127 = v129 != 0;
          }

          while (v130 | v129);
          v131 = 0;
          v132 = 0;
          v133 = 1;
          v134 = v86;
          v135 = v82;
          v136 = v87;
          v137 = v83;
          do
          {
            v138 = v134;
            if (v138)
            {
              --v136;
            }

            else
            {
              v136 = 0;
            }

            v139 = v131 + v138;
            if (v135)
            {
              --v137;
            }

            else
            {
              v137 = 0;
            }

            if (v135)
            {
              v132 |= (v133 & v96) << v139++;
            }

            v133 *= 2;
            v131 = v139 - 1;
            v135 = v137 != 0;
            v134 = v136 != 0;
          }

          while (v137 | v136);
          v14 = a7;
          if (v100 >= a7)
          {
            v140 = v114;
          }

          else
          {
            v140 = v124;
          }

          if (result && v140)
          {
            v141 = 0;
            v142 = v106 + v292;
            do
            {
              v143 = v140;
              v144 = v125;
              v145 = v123;
              do
              {
                *v144++ = *(v142 + v132 + v145);
                v145 = (v145 - v99) & v99;
                --v143;
              }

              while (v143);
              v132 = (v132 - v113) & v113;
              v125 += a11;
              ++v141;
            }

            while (v141 != result);
          }
        }

        while (v97 != v322);
        v90 = v308;
        v13 = a8;
        v16 = a10;
        v68 = v288;
      }

      while (v308 != v302);
      return result;
    }

    v234 = 2 * a11;
    v235 = 1 - v89;
    v236 = v295;
    while (1)
    {
      v237 = v236 << v68;
      v238 = v236 + 1;
      v239 = 1 << v68;
      if (v304 < (v236 + 1) << v68)
      {
        v239 = v299;
      }

      v240 = v297;
      if (v304 < v238 << v68)
      {
        v240 = a10;
      }

      v241 = v237 >= v13;
      v242 = v237 >= v13 ? 0 : v301;
      v243 = v241 ? v239 : v240;
      if (v243)
      {
        break;
      }

LABEL_279:
      v236 = v238;
      if (v238 == v302)
      {
        return result;
      }
    }

    v244 = v236 * v293;
    v245 = v242 + ((v236 - v295) << v68);
    v246 = &v290[(v245 - v301) * a11];
    v247 = &v290[a11 * (v235 + v245)];
    v248 = v316;
    while (1)
    {
      v249 = v248 << v66;
      v250 = v248 + 1;
      v251 = a9;
      if (v78 >= (v248 + 1) << v66)
      {
        v251 = v318;
      }

      LODWORD(v252) = 1 << v66;
      if (v78 < v250 << v66)
      {
        LODWORD(v252) = v320;
      }

      if (v249 >= a7)
      {
        v252 = v252;
      }

      else
      {
        v252 = v251;
      }

      if (!v252)
      {
        goto LABEL_292;
      }

      v253 = (v248 + v244) * a12[3] * *(a12 + 9);
      if (v249 >= a7)
      {
        v254 = 0;
      }

      else
      {
        v254 = v314;
      }

      v255 = v254 + ((v248 - v316) << v66);
      v256 = &v246[v255];
      if (v252 != 1)
      {
        v259 = v252 & 0xFFFFFFFE;
        if (v259 == v252)
        {
          v260 = 0;
          do
          {
            v261 = *(result + v253);
            v262 = v256;
            v263 = v252;
            do
            {
              *v262 = v261;
              v262[1] = v261;
              v262 += 2;
              v263 -= 2;
            }

            while (v263);
            v256 += a11;
            ++v260;
          }

          while (v260 != v243);
        }

        else
        {
          v268 = 0;
          v269 = v252 - v259;
          do
          {
            v270 = *(result + v253);
            v271 = v256;
            v272 = v259;
            do
            {
              *v271 = v270;
              v271[1] = v270;
              v271 += 2;
              v272 -= 2;
            }

            while (v272);
            v273 = &v256[v259];
            v274 = v269;
            do
            {
              *v273++ = v270;
              --v274;
            }

            while (v274);
            v256 += a11;
            ++v268;
          }

          while (v268 != v243);
        }

        goto LABEL_292;
      }

      v257 = *(result + v253);
      if (v243 == 1)
      {
        v258 = 0;
      }

      else
      {
        v256 += (v243 & 0xFFFFFFFE) * a11;
        v264 = &v246[v255];
        v265 = &v247[v255];
        v266 = v243 & 0xFFFFFFFE;
        do
        {
          *v264 = v257;
          *v265 = v257;
          v264 += v234;
          v265 += v234;
          v266 -= 2;
        }

        while (v266);
        v258 = v243 & 0xFFFFFFFE;
        if ((v243 & 0xFFFFFFFE) == v243)
        {
          goto LABEL_292;
        }
      }

      v267 = v243 - v258;
      do
      {
        *v256 = v257;
        v256 += a11;
        --v267;
      }

      while (v267);
LABEL_292:
      v248 = v250;
      if (v250 == v80)
      {
        goto LABEL_279;
      }
    }
  }

  v282 = a2;
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v325);
  v19 = *(a12 + 13);
  v20 = *(a12 + 12);
  if (1 << v19 >= a6 || a5 >> v20)
  {
    v146 = a6 >> v19;
    v147 = 1 << v20;
    v148 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v148 = 0;
    }

    v149 = v147 >= a5;
    if (v147 < a5)
    {
      v150 = v20 + v19 + v148;
    }

    else
    {
      v150 = *(a12 + 12);
    }

    if (v149)
    {
      LOBYTE(v151) = *(a12 + 13);
    }

    else
    {
      v151 = -v148;
    }

    if (!v146)
    {
      v20 = v150;
    }

    v283 = v20;
    if (v146)
    {
      v22 = *(a12 + 13);
    }

    else
    {
      v22 = v151;
    }
  }

  else
  {
    v21 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v21) = 0;
    }

    v283 = v21;
    v22 = v20 + v19 - v21;
  }

  v152 = v292;
  v154 = a8;
  v153 = a10;
  v281 = v331;
  if (v331)
  {
    v155 = 1 << v283;
    v156 = (1 << v22);
    if (v156 >= a6)
    {
      v157 = a6;
    }

    else
    {
      v157 = 1 << v22;
    }

    v158 = 32 - __clz(v157 - 1);
    v159 = v157 > 1;
    if (v157 <= 1)
    {
      v160 = 0;
    }

    else
    {
      v160 = v158;
    }

    if (v155 >= a5)
    {
      v161 = a5;
    }

    else
    {
      v161 = 1 << v283;
    }

    v162 = 32 - __clz(v161 - 1);
    v163 = v332;
    v291 = v161 > 1;
    if (v161 <= 1)
    {
      v162 = 0;
    }

    v317 = v162;
    v315 = v329;
    v311 = v329 != 0;
    v313 = v330;
    v309 = v330 != 0;
    if (v332)
    {
      v164 = 0;
      v280 = a7 >> v283;
      v303 = a8 >> v22;
      v323 = v330 | v329;
      v324 = v328;
      v321 = v333;
      v279 = a9 + a7;
      v278 = (v155 - 1) & (a9 + a7);
      v276 = v326;
      v319 = v327;
      v277 = (v155 - 1) & a7;
      v275 = v155 - v277;
      v298 = (v156 - 1) & a8;
      v300 = (v156 - 1) & (a10 + a8);
      v296 = v156 - v298;
      v165 = ~(-1 << v162);
      v294 = v160 | v162;
      v307 = v332;
      v285 = v159;
      v286 = v22;
      do
      {
        v166 = 0;
        v167 = v164 + v276;
        v168 = (v164 + v280) << v283;
        v169 = a9;
        if (v279 >= (v164 + v280 + 1) << v283)
        {
          v169 = v275;
        }

        v170 = 1 << v283;
        if (v279 < (v164 + v280 + 1) << v283)
        {
          v170 = v278;
        }

        v284 = v164;
        if (v168 >= a7)
        {
          v171 = v170;
        }

        else
        {
          v171 = v169;
        }

        if (v168 >= a7)
        {
          v172 = 0;
        }

        else
        {
          v172 = v277;
        }

        v289 = &v282[v172 + (v164 << v283)];
        do
        {
          v173 = v166 + v319;
          if (v321)
          {
            v174 = v323;
            if (v323)
            {
              v175 = 0;
              v174 = 0;
              v176 = 1;
              v177 = v309;
              v178 = v311;
              v180 = v313;
              v179 = v315;
              do
              {
                --v179;
                if (v178)
                {
                  v174 |= (v176 & v167) << v175;
                }

                else
                {
                  v179 = 0;
                }

                if (v178)
                {
                  ++v175;
                }

                --v180;
                if (v177)
                {
                  v174 |= (v176 & v173) << v175;
                }

                else
                {
                  v180 = 0;
                }

                if (v177)
                {
                  ++v175;
                }

                v176 *= 2;
                --v175;
                v177 = v180 != 0;
                v178 = v179 != 0;
              }

              while (v180 | v179);
            }
          }

          else
          {
            v174 = v323;
            if (v323)
            {
              v181 = 0;
              v174 = 0;
              v182 = 1;
              v184 = v309;
              v183 = v311;
              v185 = v313;
              v186 = v315;
              do
              {
                --v185;
                if (v184)
                {
                  v174 |= (v182 & v173) << v181;
                }

                else
                {
                  v185 = 0;
                }

                if (v184)
                {
                  ++v181;
                }

                --v186;
                if (v183)
                {
                  v174 |= (v182 & v167) << v181;
                }

                else
                {
                  v186 = 0;
                }

                if (v183)
                {
                  ++v181;
                }

                v182 *= 2;
                --v181;
                v183 = v186 != 0;
                v184 = v185 != 0;
              }

              while (v186 | v185);
            }
          }

          v187 = *(v152 + 4 * ((v174 + v324) | ((v174 + v324) >> 8 << 9)));
          if (v187 < 0)
          {
            v188 = v152 - *(a13 + 3) + ((v187 & 0x1FFFFFFF) << 14);
            result = *a13;
            v189 = a13[2];
            if (result > v189)
            {
              v190 = v156;
              result = get_level_offset_within_tail(result, v189, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v163 = v307;
              v156 = v190;
              v15 = a11;
              v159 = v285;
              v22 = v286;
              v154 = a8;
              v153 = a10;
              v152 = v292;
              v188 += result;
            }

            v191 = (v166 + v303) << v22;
            v192 = v296;
            if (a10 + a8 >= (v166 + v303 + 1) << v22)
            {
              v193 = v156;
            }

            else
            {
              v192 = v153;
              v193 = v300;
            }

            if (v191 >= v154)
            {
              v194 = 0;
            }

            else
            {
              v194 = v298;
            }

            if (v191 >= v154)
            {
              v192 = v193;
            }

            if (!v294)
            {
              v212 = 0;
              v196 = 0;
              v203 = 0;
              v219 = 0;
              if (!v192)
              {
                goto LABEL_193;
              }

LABEL_265:
              if (v171)
              {
                v226 = 0;
                v227 = &v289[(v194 + (v166 << v22)) * v15];
                do
                {
                  v228 = v171;
                  v229 = v227;
                  result = v212;
                  do
                  {
                    *v229++ = *(v219 + v188 + result);
                    result = (result - v196) & v196;
                    --v228;
                  }

                  while (v228);
                  v219 = (v219 - v203) & v203;
                  v227 += v15;
                  ++v226;
                }

                while (v226 != v192);
              }

              goto LABEL_193;
            }

            v195 = 0;
            v196 = 0;
            v197 = 1;
            v198 = v291;
            v199 = v159;
            v200 = v317;
            v201 = v160;
            do
            {
              --v200;
              if (v198)
              {
                v196 |= (v197 & v165) << v195++;
              }

              else
              {
                v200 = 0;
              }

              --v201;
              if (!v199)
              {
                v201 = 0;
              }

              v197 *= 2;
              v195 = (__PAIR64__(v195, v199) - 1) >> 32;
              v199 = v201 != 0;
              v198 = v200 != 0;
            }

            while (v201 | v200);
            v202 = 0;
            v203 = 0;
            v204 = 1;
            v205 = v291;
            v206 = v159;
            v207 = v317;
            v208 = v160;
            do
            {
              --v207;
              v209 = v205;
              if (!v209)
              {
                v207 = 0;
              }

              v210 = v202 + v209;
              --v208;
              if (v206)
              {
                v203 |= (v204 & ~(-1 << v160)) << v210++;
              }

              else
              {
                v208 = 0;
              }

              v204 *= 2;
              v202 = v210 - 1;
              v206 = v208 != 0;
              v205 = v207 != 0;
            }

            while (v208 | v207);
            v211 = 0;
            v212 = 0;
            v213 = 1;
            v214 = v291;
            v215 = v159;
            v216 = v317;
            v217 = v160;
            do
            {
              --v216;
              if (v214)
              {
                v212 |= (v213 & v172) << v211++;
              }

              else
              {
                v216 = 0;
              }

              --v217;
              if (!v215)
              {
                v217 = 0;
              }

              v213 *= 2;
              v211 = (__PAIR64__(v211, v215) - 1) >> 32;
              v215 = v217 != 0;
              v214 = v216 != 0;
            }

            while (v217 | v216);
            v218 = 0;
            v219 = 0;
            v220 = 1;
            v221 = v291;
            LOBYTE(result) = v159;
            v222 = v317;
            v223 = v160;
            do
            {
              --v222;
              v224 = v221;
              if (!v224)
              {
                v222 = 0;
              }

              v225 = v218 + v224;
              --v223;
              if (result)
              {
                v219 |= (v220 & v194) << v225++;
              }

              else
              {
                v223 = 0;
              }

              v220 *= 2;
              v218 = v225 - 1;
              result = v223 != 0;
              v221 = v222 != 0;
            }

            while (v223 | v222);
            v163 = v307;
            if (v192)
            {
              goto LABEL_265;
            }
          }

LABEL_193:
          ++v166;
        }

        while (v163 > v166);
        v164 = v284 + 1;
      }

      while (v281 > (v284 + 1));
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressZ<AGXSConverterPassThru<true,8ul,1u,(TwiddleOrder)1>>(uint64_t result, void *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v13 = a7;
  v14 = result;
  v15 = a11;
  v16 = a12;
  v17 = a10;
  if (!a12)
  {
    v25 = 32 - __clz(a6 - 1);
    v26 = a6 > 1;
    if (a6 <= 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = v25;
    }

    v28 = 32 - __clz(a5 - 1);
    v29 = a5 > 1;
    if (a5 <= 1)
    {
      v30 = 0;
    }

    else
    {
      v30 = v28;
    }

    if (v27 | v30)
    {
      v31 = a2;
      v32 = 0;
      v33 = 0;
      v34 = a5 > 1;
      v35 = v26;
      v36 = 1;
      v37 = v30;
      v38 = v27;
      do
      {
        --v37;
        if (v34)
        {
          v33 |= (v36 & ~(-1 << v30)) << v32++;
        }

        else
        {
          v37 = 0;
        }

        --v38;
        if (!v35)
        {
          v38 = 0;
        }

        v36 *= 2;
        v32 = (__PAIR64__(v32, v35) - 1) >> 32;
        v35 = v38 != 0;
        v34 = v37 != 0;
      }

      while (v38 | v37);
      v39 = 0;
      v40 = 0;
      v41 = 1;
      v42 = a5 > 1;
      v43 = v26;
      v44 = v30;
      v45 = v27;
      do
      {
        --v44;
        v46 = v42;
        if (!v46)
        {
          v44 = 0;
        }

        v47 = v39 + v46;
        --v45;
        if (v43)
        {
          v40 |= (v41 & ~(-1 << v27)) << v47++;
        }

        else
        {
          v45 = 0;
        }

        v41 *= 2;
        v39 = v47 - 1;
        v43 = v45 != 0;
        v42 = v44 != 0;
      }

      while (v45 | v44);
      v48 = 0;
      v49 = 0;
      v50 = a5 > 1;
      v51 = v26;
      v52 = 1;
      v53 = v30;
      v54 = v27;
      do
      {
        --v53;
        if (v50)
        {
          v49 |= (v52 & a7) << v48++;
        }

        else
        {
          v53 = 0;
        }

        --v54;
        if (!v51)
        {
          v54 = 0;
        }

        v52 *= 2;
        v48 = (__PAIR64__(v48, v51) - 1) >> 32;
        v51 = v54 != 0;
        v50 = v53 != 0;
      }

      while (v54 | v53);
      v55 = 0;
      v56 = 0;
      v57 = 1;
      do
      {
        --v30;
        v58 = v29;
        if (!v58)
        {
          v30 = 0;
        }

        v59 = v55 + v58;
        --v27;
        if (v26)
        {
          v56 |= (v57 & a8) << v59;
          v60 = v59 + 1;
        }

        else
        {
          v27 = 0;
          v60 = v59;
        }

        v57 *= 2;
        v55 = v60 - 1;
        v26 = v27 != 0;
        v29 = v30 != 0;
        result = v27 | v30;
      }

      while (result);
      a2 = v31;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v49 = 0;
      v33 = 0;
      v40 = 0;
      v56 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      for (i = 0; i != a10; ++i)
      {
        v232 = a9;
        v233 = a2;
        v234 = v49;
        do
        {
          v235 = *v233++;
          *(v14 + 8 * (v234 + v56)) = v235;
          v234 = (v234 - v33) & v33;
          --v232;
        }

        while (v232);
        v56 = (v56 - v40) & v40;
        a2 = (a2 + a11);
      }
    }

    return result;
  }

  v269 = a8;
  if (*(a12 + 20))
  {
    v18 = a2;
    result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v305);
    v21 = *(a12 + 13);
    v22 = *(a12 + 12);
    if (1 << v21 >= a6 || a5 >> v22)
    {
      v147 = a6 >> v21;
      v148 = 1 << v22;
      v149 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
      if (a6 < 2)
      {
        v149 = 0;
      }

      v150 = v148 >= a5;
      if (v148 < a5)
      {
        v151 = v22 + v21 + v149;
      }

      else
      {
        v151 = *(a12 + 12);
      }

      if (v150)
      {
        LOBYTE(v152) = *(a12 + 13);
      }

      else
      {
        v152 = -v149;
      }

      if (!v147)
      {
        v22 = v151;
      }

      v263 = v22;
      if (v147)
      {
        v24 = *(a12 + 13);
      }

      else
      {
        v24 = v152;
      }
    }

    else
    {
      v23 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
      if (a5 < 2)
      {
        LOBYTE(v23) = 0;
      }

      v263 = v23;
      v24 = v22 + v21 - v23;
    }

    v154 = v269;
    v153 = a10;
    v262 = v311;
    if (v311)
    {
      v155 = 1 << v263;
      v156 = 1 << v24;
      if (1 << v24 >= a6)
      {
        v157 = a6;
      }

      else
      {
        v157 = 1 << v24;
      }

      v158 = 32 - __clz(v157 - 1);
      v159 = v157 > 1;
      if (v157 <= 1)
      {
        v160 = 0;
      }

      else
      {
        v160 = v158;
      }

      if (v155 >= a5)
      {
        v161 = a5;
      }

      else
      {
        v161 = 1 << v263;
      }

      v162 = 32 - __clz(v161 - 1);
      v163 = v312;
      v273 = v161 > 1;
      if (v161 <= 1)
      {
        v162 = 0;
      }

      v295 = v309;
      v296 = v162;
      v291 = v309 != 0;
      v293 = v310;
      v289 = v310 != 0;
      if (v312)
      {
        v164 = 0;
        v261 = a7 >> v263;
        v284 = v269 >> v24;
        v304 = v308;
        v302 = v310 | v309;
        v300 = v313;
        v260 = a9 + a7;
        v259 = (v155 - 1) & (a9 + a7);
        v257 = v306;
        v298 = v307;
        v258 = (v155 - 1) & a7;
        v256 = v155 - v258;
        v279 = (v156 - 1) & v269;
        v281 = (v156 - 1) & (a10 + v269);
        v277 = v156 - v279;
        v165 = ~(-1 << v162);
        v276 = v160 | v162;
        v287 = v312;
        v267 = 1 << v24;
        v268 = v24;
        v266 = v159;
        do
        {
          v166 = 0;
          v167 = v164 + v257;
          v168 = (v164 + v261) << v263;
          v169 = a9;
          if (v260 >= (v164 + v261 + 1) << v263)
          {
            v169 = v256;
          }

          v170 = 1 << v263;
          if (v260 < (v164 + v261 + 1) << v263)
          {
            v170 = v259;
          }

          v265 = v164;
          if (v168 >= a7)
          {
            v171 = v170;
          }

          else
          {
            v171 = v169;
          }

          if (v168 >= a7)
          {
            v172 = 0;
          }

          else
          {
            v172 = v258;
          }

          v271 = &v18[v172 + (v164 << v263)];
          do
          {
            v173 = v166 + v298;
            if (v300)
            {
              v174 = v302;
              if (v302)
              {
                v175 = 0;
                v174 = 0;
                v176 = 1;
                v178 = v291;
                v177 = v293;
                v179 = v289;
                v180 = v295;
                do
                {
                  --v180;
                  if (v178)
                  {
                    v174 |= (v176 & v167) << v175;
                  }

                  else
                  {
                    v180 = 0;
                  }

                  if (v178)
                  {
                    ++v175;
                  }

                  --v177;
                  if (v179)
                  {
                    v174 |= (v176 & v173) << v175;
                  }

                  else
                  {
                    v177 = 0;
                  }

                  if (v179)
                  {
                    ++v175;
                  }

                  v176 *= 2;
                  --v175;
                  v179 = v177 != 0;
                  v178 = v180 != 0;
                }

                while (v177 | v180);
              }
            }

            else
            {
              v174 = v302;
              if (v302)
              {
                v181 = 0;
                v174 = 0;
                v182 = 1;
                v183 = v289;
                v185 = v291;
                v184 = v293;
                v186 = v295;
                do
                {
                  --v184;
                  if (v183)
                  {
                    v174 |= (v182 & v173) << v181;
                  }

                  else
                  {
                    v184 = 0;
                  }

                  if (v183)
                  {
                    ++v181;
                  }

                  --v186;
                  if (v185)
                  {
                    v174 |= (v182 & v167) << v181;
                  }

                  else
                  {
                    v186 = 0;
                  }

                  if (v185)
                  {
                    ++v181;
                  }

                  v182 *= 2;
                  --v181;
                  v185 = v186 != 0;
                  v183 = v184 != 0;
                }

                while (v186 | v184);
              }
            }

            v187 = *(v14 + 4 * ((v174 + v304) | ((v174 + v304) >> 8 << 9)));
            if (v187 < 0)
            {
              v188 = v14 - *(a13 + 3) + ((v187 & 0x1FFFFFFF) << 14);
              result = *a13;
              v189 = a13[2];
              if (result > v189)
              {
                result = get_level_offset_within_tail(result, v189, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
                v163 = v287;
                v159 = v266;
                v156 = v267;
                v24 = v268;
                v15 = a11;
                v154 = v269;
                v153 = a10;
                v188 += result;
              }

              v190 = (v166 + v284) << v24;
              v191 = v277;
              if (a10 + v269 >= (v166 + v284 + 1) << v24)
              {
                v192 = v156;
              }

              else
              {
                v191 = v153;
                v192 = v281;
              }

              if (v190 >= v154)
              {
                v193 = 0;
              }

              else
              {
                v193 = v279;
              }

              if (v190 >= v154)
              {
                v191 = v192;
              }

              if (!v276)
              {
                v211 = 0;
                v195 = 0;
                v202 = 0;
                v218 = 0;
                if (!v191)
                {
                  goto LABEL_188;
                }

LABEL_260:
                if (v171)
                {
                  v225 = 0;
                  v226 = (v271 + (v193 + (v166 << v24)) * v15);
                  do
                  {
                    v227 = v171;
                    v228 = v226;
                    v229 = v211;
                    do
                    {
                      v230 = *v228++;
                      result = v230;
                      *(v188 + 8 * (v229 + v218)) = v230;
                      v229 = (v229 - v195) & v195;
                      --v227;
                    }

                    while (v227);
                    v218 = (v218 - v202) & v202;
                    v226 = (v226 + v15);
                    ++v225;
                  }

                  while (v225 != v191);
                }

                goto LABEL_188;
              }

              v194 = 0;
              v195 = 0;
              v196 = 1;
              v197 = v273;
              v198 = v159;
              v199 = v296;
              v200 = v160;
              do
              {
                --v199;
                if (v197)
                {
                  v195 |= (v196 & v165) << v194++;
                }

                else
                {
                  v199 = 0;
                }

                --v200;
                if (!v198)
                {
                  v200 = 0;
                }

                v196 *= 2;
                v194 = (__PAIR64__(v194, v198) - 1) >> 32;
                v198 = v200 != 0;
                v197 = v199 != 0;
              }

              while (v200 | v199);
              v201 = 0;
              v202 = 0;
              v203 = 1;
              v204 = v273;
              v205 = v159;
              v206 = v296;
              v207 = v160;
              do
              {
                --v206;
                v208 = v204;
                if (!v208)
                {
                  v206 = 0;
                }

                v209 = v201 + v208;
                --v207;
                if (v205)
                {
                  v202 |= (v203 & ~(-1 << v160)) << v209++;
                }

                else
                {
                  v207 = 0;
                }

                v203 *= 2;
                v201 = v209 - 1;
                v205 = v207 != 0;
                v204 = v206 != 0;
              }

              while (v207 | v206);
              v210 = 0;
              v211 = 0;
              v212 = 1;
              v213 = v273;
              v214 = v159;
              v215 = v296;
              v216 = v160;
              do
              {
                --v215;
                if (v213)
                {
                  v211 |= (v212 & v172) << v210++;
                }

                else
                {
                  v215 = 0;
                }

                --v216;
                if (!v214)
                {
                  v216 = 0;
                }

                v212 *= 2;
                v210 = (__PAIR64__(v210, v214) - 1) >> 32;
                v214 = v216 != 0;
                v213 = v215 != 0;
              }

              while (v216 | v215);
              v217 = 0;
              v218 = 0;
              v219 = 1;
              v220 = v273;
              LOBYTE(result) = v159;
              v221 = v296;
              v222 = v160;
              do
              {
                --v221;
                v223 = v220;
                if (!v223)
                {
                  v221 = 0;
                }

                v224 = v217 + v223;
                --v222;
                if (result)
                {
                  v218 |= (v219 & v193) << v224++;
                }

                else
                {
                  v222 = 0;
                }

                v219 *= 2;
                v217 = v224 - 1;
                result = v222 != 0;
                v220 = v221 != 0;
              }

              while (v222 | v221);
              v163 = v287;
              if (v191)
              {
                goto LABEL_260;
              }
            }

LABEL_188:
            ++v166;
          }

          while (v163 > v166);
          v164 = v265 + 1;
        }

        while (v262 > (v265 + 1));
      }
    }
  }

  else
  {
    v61 = *(a12 + 13);
    v62 = *(a12 + 12);
    v63 = 1 << v61;
    v64 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v64 = 0;
    }

    v65 = v62 + v61;
    result = v62 + v61 + v64;
    if (a6 >> v61)
    {
      v66 = 1;
    }

    else
    {
      v66 = 1 << v62 >= a5;
    }

    if (v66)
    {
      v67 = *(a12 + 12);
    }

    else
    {
      v67 = v62 + v61 + v64;
    }

    if (v66)
    {
      LOBYTE(v68) = *(a12 + 13);
    }

    else
    {
      v68 = -v64;
    }

    v69 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v69) = 0;
    }

    if (v63 < a6 && a5 >> v62 == 0)
    {
      v71 = v65 - v69;
    }

    else
    {
      LOBYTE(v69) = v67;
      v71 = v68;
    }

    v72 = 1 << v71;
    v73 = *(a12 + 15);
    v74 = 1 << v73;
    if (v73)
    {
      v75 = v74 > a3;
    }

    else
    {
      v75 = 1;
    }

    v76 = v75 || v74 > a4;
    v77 = (~(-1 << v73) + a3) & (-1 << v73);
    if (v76)
    {
      v78 = a3;
    }

    else
    {
      v78 = v77;
    }

    v282 = a10 + a8;
    v283 = 1 << v71;
    v79 = v72 - 1;
    v275 = a8 >> v71;
    v280 = (v72 - 1 + a10 + a8) >> v71;
    if (a8 >> v71 < v280)
    {
      v80 = (1 << v69) - 1;
      v303 = a9 + v13;
      result = (v80 + a9 + v13) >> v69;
      if (v72 >= a6)
      {
        v72 = a6;
      }

      v81 = 32 - __clz(v72 - 1);
      v82 = v72 > 1;
      if (v72 <= 1)
      {
        v83 = 0;
      }

      else
      {
        v83 = v81;
      }

      v299 = (v80 + a9 + v13) >> v69;
      v301 = 1 << v69;
      if (1 << v69 >= a5)
      {
        v84 = a5;
      }

      else
      {
        v84 = 1 << v69;
      }

      v85 = 32 - __clz(v84 - 1);
      v86 = v84 > 1;
      if (v84 <= 1)
      {
        v87 = 0;
      }

      else
      {
        v87 = v85;
      }

      v294 = v13 >> v69;
      if (v13 >> v69 < result)
      {
        v272 = (v78 + ~(-1 << v69)) >> v69;
        v297 = v80 & v303;
        v292 = v80 & v13;
        v278 = v79 & v282;
        v286 = v79 & a8;
        if (v83 | v87)
        {
          v88 = a8 >> v71;
          v264 = a2;
          v270 = v71;
          do
          {
            v89 = v88 << v71;
            v90 = v88 - v275;
            v290 = v88 * v272;
            v285 = v88 + 1;
            v66 = v282 >= (v88 + 1) << v71;
            v91 = v283;
            v92 = v283 - v286;
            if (!v66)
            {
              v91 = v278;
              v92 = v17;
            }

            v93 = v90 << v71;
            if (v89 >= a8)
            {
              v94 = 0;
            }

            else
            {
              v94 = v286;
            }

            if (v89 >= a8)
            {
              result = v91;
            }

            else
            {
              result = v92;
            }

            v288 = a2 + (v94 + v93 - v286) * a11;
            v95 = v294;
            do
            {
              v96 = 0;
              v97 = 0;
              v98 = v95 << v69;
              v99 = v95 - v294;
              v100 = v95 + v290;
              v101 = ++v95 << v69;
              if (v98 >= v13)
              {
                v102 = 0;
              }

              else
              {
                v102 = v292;
              }

              v103 = v102 + (v99 << v69) - v292;
              v104 = v100 * v16[3] * *(v16 + 9);
              v105 = 1;
              v106 = v86;
              v107 = v82;
              v108 = v87;
              v109 = v83;
              do
              {
                --v108;
                if (v106)
                {
                  v97 |= (v105 & ~(-1 << v87)) << v96++;
                }

                else
                {
                  v108 = 0;
                }

                --v109;
                if (!v107)
                {
                  v109 = 0;
                }

                v105 *= 2;
                v96 = (__PAIR64__(v96, v107) - 1) >> 32;
                v107 = v109 != 0;
                v106 = v108 != 0;
              }

              while (v109 | v108);
              v110 = 0;
              v111 = 0;
              v112 = 8 * v103;
              v113 = 1 << v69;
              if (v303 < v101)
              {
                v113 = v297;
              }

              v114 = 1;
              v115 = v86;
              v116 = v82;
              v117 = v87;
              v118 = v83;
              do
              {
                --v117;
                v119 = v115;
                if (!v119)
                {
                  v117 = 0;
                }

                v120 = v110 + v119;
                --v118;
                if (v116)
                {
                  v111 |= (v114 & ~(-1 << v83)) << v120++;
                }

                else
                {
                  v118 = 0;
                }

                v114 *= 2;
                v110 = v120 - 1;
                v116 = v118 != 0;
                v115 = v117 != 0;
              }

              while (v118 | v117);
              v121 = 0;
              v122 = 0;
              v123 = v301 - v292;
              if (v303 < v101)
              {
                v123 = a9;
              }

              v124 = &v288[v112];
              v125 = 1;
              v126 = v86;
              v127 = v82;
              v128 = v87;
              v129 = v83;
              do
              {
                --v128;
                if (v126)
                {
                  v122 |= (v125 & v102) << v121;
                  v130 = v121 + 1;
                }

                else
                {
                  v128 = 0;
                  v130 = v121;
                }

                if (v127)
                {
                  --v129;
                }

                else
                {
                  v129 = 0;
                }

                v125 *= 2;
                v121 = (__PAIR64__(v130, v127) - 1) >> 32;
                v127 = v129 != 0;
                v126 = v128 != 0;
              }

              while (v129 | v128);
              v131 = 0;
              v132 = 0;
              v133 = 1;
              v134 = v86;
              v135 = v82;
              v136 = v87;
              v137 = v83;
              do
              {
                v138 = v134;
                if (v138)
                {
                  --v136;
                }

                else
                {
                  v136 = 0;
                }

                v139 = v131 + v138;
                v140 = ((v133 & v94) << (v131 + v138)) | v132;
                if (v135)
                {
                  --v137;
                }

                else
                {
                  v137 = 0;
                }

                if (v135)
                {
                  v132 = v140;
                  ++v139;
                }

                v133 *= 2;
                v131 = v139 - 1;
                v135 = v137 != 0;
                v134 = v136 != 0;
              }

              while (v137 | v136);
              v13 = a7;
              if (v98 < a7)
              {
                v113 = v123;
              }

              if (result && v113)
              {
                v141 = 0;
                v142 = v104 + v14;
                do
                {
                  v143 = v113;
                  v144 = v124;
                  v145 = v122;
                  do
                  {
                    v146 = *v144++;
                    *(v142 + 8 * (v145 + v132)) = v146;
                    v145 = (v145 - v97) & v97;
                    --v143;
                  }

                  while (v143);
                  v132 = (v132 - v111) & v111;
                  v124 += a11;
                  ++v141;
                }

                while (v141 != result);
              }

              v16 = a12;
            }

            while (v95 != v299);
            v88 = v285;
            a2 = v264;
            a8 = v269;
            v17 = a10;
            v71 = v270;
          }

          while (v285 != v280);
        }

        else
        {
          v236 = a8 >> v71;
          do
          {
            v237 = v236 << v71;
            v238 = v236 + 1;
            v239 = v278;
            if (v282 >= (v236 + 1) << v71)
            {
              v239 = 1 << v71;
            }

            if (v282 >= v238 << v71)
            {
              v240 = v283 - v286;
            }

            else
            {
              v240 = a10;
            }

            if (v237 >= a8)
            {
              v241 = 0;
            }

            else
            {
              v241 = v286;
            }

            if (v237 >= a8)
            {
              v242 = v239;
            }

            else
            {
              v242 = v240;
            }

            if (v242)
            {
              v243 = (v236 - v275) << v71;
              v244 = v236 * v272;
              v245 = a2 + ((v241 + v243) - v286) * a11;
              v246 = v13 >> v69;
              do
              {
                result = v246 << v69;
                v247 = v246 + 1;
                v248 = a9;
                if (v303 >= (v246 + 1) << v69)
                {
                  v248 = v301 - v292;
                }

                v249 = 1 << v69;
                if (v303 < v247 << v69)
                {
                  v249 = v297;
                }

                if (result >= v13)
                {
                  v248 = v249;
                }

                if (v248)
                {
                  v250 = 0;
                  v251 = (v246 + v244) * a12[3] * *(a12 + 9);
                  if (result >= v13)
                  {
                    v252 = 0;
                  }

                  else
                  {
                    v252 = v292;
                  }

                  result = &v245[8 * (v252 + ((v246 - v294) << v69) - v292)];
                  do
                  {
                    v253 = v248;
                    v254 = result;
                    do
                    {
                      v255 = *v254++;
                      *(v14 + v251) = v255;
                      --v253;
                    }

                    while (v253);
                    result += a11;
                    ++v250;
                  }

                  while (v250 != v242);
                }

                v246 = v247;
              }

              while (v247 != v299);
            }

            v236 = v238;
          }

          while (v238 != v280);
        }
      }
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressZ<AGXSConverterPassThru<true,4ul,1u,(TwiddleOrder)1>>(uint64_t result, _DWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v13 = a7;
  v14 = result;
  v15 = a11;
  v16 = a12;
  v17 = a10;
  if (!a12)
  {
    v25 = 32 - __clz(a6 - 1);
    v26 = a6 > 1;
    if (a6 <= 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = v25;
    }

    v28 = 32 - __clz(a5 - 1);
    v29 = a5 > 1;
    if (a5 <= 1)
    {
      v30 = 0;
    }

    else
    {
      v30 = v28;
    }

    if (v27 | v30)
    {
      v31 = a2;
      v32 = 0;
      v33 = 0;
      v34 = a5 > 1;
      v35 = v26;
      v36 = 1;
      v37 = v30;
      v38 = v27;
      do
      {
        --v37;
        if (v34)
        {
          v33 |= (v36 & ~(-1 << v30)) << v32++;
        }

        else
        {
          v37 = 0;
        }

        --v38;
        if (!v35)
        {
          v38 = 0;
        }

        v36 *= 2;
        v32 = (__PAIR64__(v32, v35) - 1) >> 32;
        v35 = v38 != 0;
        v34 = v37 != 0;
      }

      while (v38 | v37);
      v39 = 0;
      v40 = 0;
      v41 = 1;
      v42 = a5 > 1;
      v43 = v26;
      v44 = v30;
      v45 = v27;
      do
      {
        --v44;
        v46 = v42;
        if (!v46)
        {
          v44 = 0;
        }

        v47 = v39 + v46;
        --v45;
        if (v43)
        {
          v40 |= (v41 & ~(-1 << v27)) << v47++;
        }

        else
        {
          v45 = 0;
        }

        v41 *= 2;
        v39 = v47 - 1;
        v43 = v45 != 0;
        v42 = v44 != 0;
      }

      while (v45 | v44);
      v48 = 0;
      v49 = 0;
      v50 = a5 > 1;
      v51 = v26;
      v52 = 1;
      v53 = v30;
      v54 = v27;
      do
      {
        --v53;
        if (v50)
        {
          v49 |= (v52 & a7) << v48++;
        }

        else
        {
          v53 = 0;
        }

        --v54;
        if (!v51)
        {
          v54 = 0;
        }

        v52 *= 2;
        v48 = (__PAIR64__(v48, v51) - 1) >> 32;
        v51 = v54 != 0;
        v50 = v53 != 0;
      }

      while (v54 | v53);
      v55 = 0;
      v56 = 0;
      v57 = 1;
      do
      {
        --v30;
        v58 = v29;
        if (!v58)
        {
          v30 = 0;
        }

        v59 = v55 + v58;
        --v27;
        if (v26)
        {
          v56 |= (v57 & a8) << v59;
          v60 = v59 + 1;
        }

        else
        {
          v27 = 0;
          v60 = v59;
        }

        v57 *= 2;
        v55 = v60 - 1;
        v26 = v27 != 0;
        v29 = v30 != 0;
        result = v27 | v30;
      }

      while (result);
      a2 = v31;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v49 = 0;
      v33 = 0;
      v40 = 0;
      v56 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      for (i = 0; i != a10; ++i)
      {
        v232 = a9;
        v233 = a2;
        v234 = v49;
        do
        {
          v235 = *v233++;
          *(v14 + 4 * (v234 + v56)) = v235;
          v234 = (v234 - v33) & v33;
          --v232;
        }

        while (v232);
        v56 = (v56 - v40) & v40;
        a2 = (a2 + a11);
      }
    }

    return result;
  }

  v269 = a8;
  if (*(a12 + 20))
  {
    v18 = a2;
    result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v305);
    v21 = *(a12 + 13);
    v22 = *(a12 + 12);
    if (1 << v21 >= a6 || a5 >> v22)
    {
      v147 = a6 >> v21;
      v148 = 1 << v22;
      v149 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
      if (a6 < 2)
      {
        v149 = 0;
      }

      v150 = v148 >= a5;
      if (v148 < a5)
      {
        v151 = v22 + v21 + v149;
      }

      else
      {
        v151 = *(a12 + 12);
      }

      if (v150)
      {
        LOBYTE(v152) = *(a12 + 13);
      }

      else
      {
        v152 = -v149;
      }

      if (!v147)
      {
        v22 = v151;
      }

      v263 = v22;
      if (v147)
      {
        v24 = *(a12 + 13);
      }

      else
      {
        v24 = v152;
      }
    }

    else
    {
      v23 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
      if (a5 < 2)
      {
        LOBYTE(v23) = 0;
      }

      v263 = v23;
      v24 = v22 + v21 - v23;
    }

    v154 = v269;
    v153 = a10;
    v262 = v311;
    if (v311)
    {
      v155 = 1 << v263;
      v156 = 1 << v24;
      if (1 << v24 >= a6)
      {
        v157 = a6;
      }

      else
      {
        v157 = 1 << v24;
      }

      v158 = 32 - __clz(v157 - 1);
      v159 = v157 > 1;
      if (v157 <= 1)
      {
        v160 = 0;
      }

      else
      {
        v160 = v158;
      }

      if (v155 >= a5)
      {
        v161 = a5;
      }

      else
      {
        v161 = 1 << v263;
      }

      v162 = 32 - __clz(v161 - 1);
      v163 = v312;
      v273 = v161 > 1;
      if (v161 <= 1)
      {
        v162 = 0;
      }

      v295 = v309;
      v296 = v162;
      v291 = v309 != 0;
      v293 = v310;
      v289 = v310 != 0;
      if (v312)
      {
        v164 = 0;
        v261 = a7 >> v263;
        v284 = v269 >> v24;
        v304 = v308;
        v302 = v310 | v309;
        v300 = v313;
        v260 = a9 + a7;
        v259 = (v155 - 1) & (a9 + a7);
        v257 = v306;
        v298 = v307;
        v258 = (v155 - 1) & a7;
        v256 = v155 - v258;
        v279 = (v156 - 1) & v269;
        v281 = (v156 - 1) & (a10 + v269);
        v277 = v156 - v279;
        v165 = ~(-1 << v162);
        v276 = v160 | v162;
        v287 = v312;
        v267 = 1 << v24;
        v268 = v24;
        v266 = v159;
        do
        {
          v166 = 0;
          v167 = v164 + v257;
          v168 = (v164 + v261) << v263;
          v169 = a9;
          if (v260 >= (v164 + v261 + 1) << v263)
          {
            v169 = v256;
          }

          v170 = 1 << v263;
          if (v260 < (v164 + v261 + 1) << v263)
          {
            v170 = v259;
          }

          v265 = v164;
          if (v168 >= a7)
          {
            v171 = v170;
          }

          else
          {
            v171 = v169;
          }

          if (v168 >= a7)
          {
            v172 = 0;
          }

          else
          {
            v172 = v258;
          }

          v271 = &v18[v172 + (v164 << v263)];
          do
          {
            v173 = v166 + v298;
            if (v300)
            {
              v174 = v302;
              if (v302)
              {
                v175 = 0;
                v174 = 0;
                v176 = 1;
                v178 = v291;
                v177 = v293;
                v179 = v289;
                v180 = v295;
                do
                {
                  --v180;
                  if (v178)
                  {
                    v174 |= (v176 & v167) << v175;
                  }

                  else
                  {
                    v180 = 0;
                  }

                  if (v178)
                  {
                    ++v175;
                  }

                  --v177;
                  if (v179)
                  {
                    v174 |= (v176 & v173) << v175;
                  }

                  else
                  {
                    v177 = 0;
                  }

                  if (v179)
                  {
                    ++v175;
                  }

                  v176 *= 2;
                  --v175;
                  v179 = v177 != 0;
                  v178 = v180 != 0;
                }

                while (v177 | v180);
              }
            }

            else
            {
              v174 = v302;
              if (v302)
              {
                v181 = 0;
                v174 = 0;
                v182 = 1;
                v183 = v289;
                v185 = v291;
                v184 = v293;
                v186 = v295;
                do
                {
                  --v184;
                  if (v183)
                  {
                    v174 |= (v182 & v173) << v181;
                  }

                  else
                  {
                    v184 = 0;
                  }

                  if (v183)
                  {
                    ++v181;
                  }

                  --v186;
                  if (v185)
                  {
                    v174 |= (v182 & v167) << v181;
                  }

                  else
                  {
                    v186 = 0;
                  }

                  if (v185)
                  {
                    ++v181;
                  }

                  v182 *= 2;
                  --v181;
                  v185 = v186 != 0;
                  v183 = v184 != 0;
                }

                while (v186 | v184);
              }
            }

            v187 = *(v14 + 4 * ((v174 + v304) | ((v174 + v304) >> 8 << 9)));
            if (v187 < 0)
            {
              v188 = v14 - *(a13 + 3) + ((v187 & 0x1FFFFFFF) << 14);
              result = *a13;
              v189 = a13[2];
              if (result > v189)
              {
                result = get_level_offset_within_tail(result, v189, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
                v163 = v287;
                v159 = v266;
                v156 = v267;
                v24 = v268;
                v15 = a11;
                v154 = v269;
                v153 = a10;
                v188 += result;
              }

              v190 = (v166 + v284) << v24;
              v191 = v277;
              if (a10 + v269 >= (v166 + v284 + 1) << v24)
              {
                v192 = v156;
              }

              else
              {
                v191 = v153;
                v192 = v281;
              }

              if (v190 >= v154)
              {
                v193 = 0;
              }

              else
              {
                v193 = v279;
              }

              if (v190 >= v154)
              {
                v191 = v192;
              }

              if (!v276)
              {
                v211 = 0;
                v195 = 0;
                v202 = 0;
                v218 = 0;
                if (!v191)
                {
                  goto LABEL_188;
                }

LABEL_260:
                if (v171)
                {
                  v225 = 0;
                  v226 = (v271 + (v193 + (v166 << v24)) * v15);
                  do
                  {
                    v227 = v171;
                    v228 = v226;
                    v229 = v211;
                    do
                    {
                      v230 = *v228++;
                      result = v230;
                      *(v188 + 4 * (v229 + v218)) = v230;
                      v229 = (v229 - v195) & v195;
                      --v227;
                    }

                    while (v227);
                    v218 = (v218 - v202) & v202;
                    v226 = (v226 + v15);
                    ++v225;
                  }

                  while (v225 != v191);
                }

                goto LABEL_188;
              }

              v194 = 0;
              v195 = 0;
              v196 = 1;
              v197 = v273;
              v198 = v159;
              v199 = v296;
              v200 = v160;
              do
              {
                --v199;
                if (v197)
                {
                  v195 |= (v196 & v165) << v194++;
                }

                else
                {
                  v199 = 0;
                }

                --v200;
                if (!v198)
                {
                  v200 = 0;
                }

                v196 *= 2;
                v194 = (__PAIR64__(v194, v198) - 1) >> 32;
                v198 = v200 != 0;
                v197 = v199 != 0;
              }

              while (v200 | v199);
              v201 = 0;
              v202 = 0;
              v203 = 1;
              v204 = v273;
              v205 = v159;
              v206 = v296;
              v207 = v160;
              do
              {
                --v206;
                v208 = v204;
                if (!v208)
                {
                  v206 = 0;
                }

                v209 = v201 + v208;
                --v207;
                if (v205)
                {
                  v202 |= (v203 & ~(-1 << v160)) << v209++;
                }

                else
                {
                  v207 = 0;
                }

                v203 *= 2;
                v201 = v209 - 1;
                v205 = v207 != 0;
                v204 = v206 != 0;
              }

              while (v207 | v206);
              v210 = 0;
              v211 = 0;
              v212 = 1;
              v213 = v273;
              v214 = v159;
              v215 = v296;
              v216 = v160;
              do
              {
                --v215;
                if (v213)
                {
                  v211 |= (v212 & v172) << v210++;
                }

                else
                {
                  v215 = 0;
                }

                --v216;
                if (!v214)
                {
                  v216 = 0;
                }

                v212 *= 2;
                v210 = (__PAIR64__(v210, v214) - 1) >> 32;
                v214 = v216 != 0;
                v213 = v215 != 0;
              }

              while (v216 | v215);
              v217 = 0;
              v218 = 0;
              v219 = 1;
              v220 = v273;
              LOBYTE(result) = v159;
              v221 = v296;
              v222 = v160;
              do
              {
                --v221;
                v223 = v220;
                if (!v223)
                {
                  v221 = 0;
                }

                v224 = v217 + v223;
                --v222;
                if (result)
                {
                  v218 |= (v219 & v193) << v224++;
                }

                else
                {
                  v222 = 0;
                }

                v219 *= 2;
                v217 = v224 - 1;
                result = v222 != 0;
                v220 = v221 != 0;
              }

              while (v222 | v221);
              v163 = v287;
              if (v191)
              {
                goto LABEL_260;
              }
            }

LABEL_188:
            ++v166;
          }

          while (v163 > v166);
          v164 = v265 + 1;
        }

        while (v262 > (v265 + 1));
      }
    }
  }

  else
  {
    v61 = *(a12 + 13);
    v62 = *(a12 + 12);
    v63 = 1 << v61;
    v64 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v64 = 0;
    }

    v65 = v62 + v61;
    result = v62 + v61 + v64;
    if (a6 >> v61)
    {
      v66 = 1;
    }

    else
    {
      v66 = 1 << v62 >= a5;
    }

    if (v66)
    {
      v67 = *(a12 + 12);
    }

    else
    {
      v67 = v62 + v61 + v64;
    }

    if (v66)
    {
      LOBYTE(v68) = *(a12 + 13);
    }

    else
    {
      v68 = -v64;
    }

    v69 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v69) = 0;
    }

    if (v63 < a6 && a5 >> v62 == 0)
    {
      v71 = v65 - v69;
    }

    else
    {
      LOBYTE(v69) = v67;
      v71 = v68;
    }

    v72 = 1 << v71;
    v73 = *(a12 + 15);
    v74 = 1 << v73;
    if (v73)
    {
      v75 = v74 > a3;
    }

    else
    {
      v75 = 1;
    }

    v76 = v75 || v74 > a4;
    v77 = (~(-1 << v73) + a3) & (-1 << v73);
    if (v76)
    {
      v78 = a3;
    }

    else
    {
      v78 = v77;
    }

    v282 = a10 + a8;
    v283 = 1 << v71;
    v79 = v72 - 1;
    v275 = a8 >> v71;
    v280 = (v72 - 1 + a10 + a8) >> v71;
    if (a8 >> v71 < v280)
    {
      v80 = (1 << v69) - 1;
      v303 = a9 + v13;
      result = (v80 + a9 + v13) >> v69;
      if (v72 >= a6)
      {
        v72 = a6;
      }

      v81 = 32 - __clz(v72 - 1);
      v82 = v72 > 1;
      if (v72 <= 1)
      {
        v83 = 0;
      }

      else
      {
        v83 = v81;
      }

      v299 = (v80 + a9 + v13) >> v69;
      v301 = 1 << v69;
      if (1 << v69 >= a5)
      {
        v84 = a5;
      }

      else
      {
        v84 = 1 << v69;
      }

      v85 = 32 - __clz(v84 - 1);
      v86 = v84 > 1;
      if (v84 <= 1)
      {
        v87 = 0;
      }

      else
      {
        v87 = v85;
      }

      v294 = v13 >> v69;
      if (v13 >> v69 < result)
      {
        v272 = (v78 + ~(-1 << v69)) >> v69;
        v297 = v80 & v303;
        v292 = v80 & v13;
        v278 = v79 & v282;
        v286 = v79 & a8;
        if (v83 | v87)
        {
          v88 = a8 >> v71;
          v264 = a2;
          v270 = v71;
          do
          {
            v89 = v88 << v71;
            v90 = v88 - v275;
            v290 = v88 * v272;
            v285 = v88 + 1;
            v66 = v282 >= (v88 + 1) << v71;
            v91 = v283;
            v92 = v283 - v286;
            if (!v66)
            {
              v91 = v278;
              v92 = v17;
            }

            v93 = v90 << v71;
            if (v89 >= a8)
            {
              v94 = 0;
            }

            else
            {
              v94 = v286;
            }

            if (v89 >= a8)
            {
              result = v91;
            }

            else
            {
              result = v92;
            }

            v288 = a2 + (v94 + v93 - v286) * a11;
            v95 = v294;
            do
            {
              v96 = 0;
              v97 = 0;
              v98 = v95 << v69;
              v99 = v95 - v294;
              v100 = v95 + v290;
              v101 = ++v95 << v69;
              if (v98 >= v13)
              {
                v102 = 0;
              }

              else
              {
                v102 = v292;
              }

              v103 = v102 + (v99 << v69) - v292;
              v104 = v100 * v16[3] * *(v16 + 9);
              v105 = 1;
              v106 = v86;
              v107 = v82;
              v108 = v87;
              v109 = v83;
              do
              {
                --v108;
                if (v106)
                {
                  v97 |= (v105 & ~(-1 << v87)) << v96++;
                }

                else
                {
                  v108 = 0;
                }

                --v109;
                if (!v107)
                {
                  v109 = 0;
                }

                v105 *= 2;
                v96 = (__PAIR64__(v96, v107) - 1) >> 32;
                v107 = v109 != 0;
                v106 = v108 != 0;
              }

              while (v109 | v108);
              v110 = 0;
              v111 = 0;
              v112 = 4 * v103;
              v113 = 1 << v69;
              if (v303 < v101)
              {
                v113 = v297;
              }

              v114 = 1;
              v115 = v86;
              v116 = v82;
              v117 = v87;
              v118 = v83;
              do
              {
                --v117;
                v119 = v115;
                if (!v119)
                {
                  v117 = 0;
                }

                v120 = v110 + v119;
                --v118;
                if (v116)
                {
                  v111 |= (v114 & ~(-1 << v83)) << v120++;
                }

                else
                {
                  v118 = 0;
                }

                v114 *= 2;
                v110 = v120 - 1;
                v116 = v118 != 0;
                v115 = v117 != 0;
              }

              while (v118 | v117);
              v121 = 0;
              v122 = 0;
              v123 = v301 - v292;
              if (v303 < v101)
              {
                v123 = a9;
              }

              v124 = &v288[v112];
              v125 = 1;
              v126 = v86;
              v127 = v82;
              v128 = v87;
              v129 = v83;
              do
              {
                --v128;
                if (v126)
                {
                  v122 |= (v125 & v102) << v121;
                  v130 = v121 + 1;
                }

                else
                {
                  v128 = 0;
                  v130 = v121;
                }

                if (v127)
                {
                  --v129;
                }

                else
                {
                  v129 = 0;
                }

                v125 *= 2;
                v121 = (__PAIR64__(v130, v127) - 1) >> 32;
                v127 = v129 != 0;
                v126 = v128 != 0;
              }

              while (v129 | v128);
              v131 = 0;
              v132 = 0;
              v133 = 1;
              v134 = v86;
              v135 = v82;
              v136 = v87;
              v137 = v83;
              do
              {
                v138 = v134;
                if (v138)
                {
                  --v136;
                }

                else
                {
                  v136 = 0;
                }

                v139 = v131 + v138;
                v140 = ((v133 & v94) << (v131 + v138)) | v132;
                if (v135)
                {
                  --v137;
                }

                else
                {
                  v137 = 0;
                }

                if (v135)
                {
                  v132 = v140;
                  ++v139;
                }

                v133 *= 2;
                v131 = v139 - 1;
                v135 = v137 != 0;
                v134 = v136 != 0;
              }

              while (v137 | v136);
              v13 = a7;
              if (v98 < a7)
              {
                v113 = v123;
              }

              if (result && v113)
              {
                v141 = 0;
                v142 = v104 + v14;
                do
                {
                  v143 = v113;
                  v144 = v124;
                  v145 = v122;
                  do
                  {
                    v146 = *v144++;
                    *(v142 + 4 * (v145 + v132)) = v146;
                    v145 = (v145 - v97) & v97;
                    --v143;
                  }

                  while (v143);
                  v132 = (v132 - v111) & v111;
                  v124 += a11;
                  ++v141;
                }

                while (v141 != result);
              }

              v16 = a12;
            }

            while (v95 != v299);
            v88 = v285;
            a2 = v264;
            a8 = v269;
            v17 = a10;
            v71 = v270;
          }

          while (v285 != v280);
        }

        else
        {
          v236 = a8 >> v71;
          do
          {
            v237 = v236 << v71;
            v238 = v236 + 1;
            v239 = v278;
            if (v282 >= (v236 + 1) << v71)
            {
              v239 = 1 << v71;
            }

            if (v282 >= v238 << v71)
            {
              v240 = v283 - v286;
            }

            else
            {
              v240 = a10;
            }

            if (v237 >= a8)
            {
              v241 = 0;
            }

            else
            {
              v241 = v286;
            }

            if (v237 >= a8)
            {
              v242 = v239;
            }

            else
            {
              v242 = v240;
            }

            if (v242)
            {
              v243 = (v236 - v275) << v71;
              v244 = v236 * v272;
              v245 = a2 + ((v241 + v243) - v286) * a11;
              v246 = v13 >> v69;
              do
              {
                result = v246 << v69;
                v247 = v246 + 1;
                v248 = a9;
                if (v303 >= (v246 + 1) << v69)
                {
                  v248 = v301 - v292;
                }

                v249 = 1 << v69;
                if (v303 < v247 << v69)
                {
                  v249 = v297;
                }

                if (result >= v13)
                {
                  v248 = v249;
                }

                if (v248)
                {
                  v250 = 0;
                  v251 = (v246 + v244) * a12[3] * *(a12 + 9);
                  if (result >= v13)
                  {
                    v252 = 0;
                  }

                  else
                  {
                    v252 = v292;
                  }

                  result = &v245[4 * (v252 + ((v246 - v294) << v69) - v292)];
                  do
                  {
                    v253 = v248;
                    v254 = result;
                    do
                    {
                      v255 = *v254++;
                      *(v14 + v251) = v255;
                      --v253;
                    }

                    while (v253);
                    result += a11;
                    ++v250;
                  }

                  while (v250 != v242);
                }

                v246 = v247;
              }

              while (v247 != v299);
            }

            v236 = v238;
          }

          while (v238 != v280);
        }
      }
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressZ<AGXSConverterPassThru<true,2ul,1u,(TwiddleOrder)1>>(uint64_t result, _WORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v13 = a7;
  v14 = result;
  v15 = a11;
  v16 = a12;
  v17 = a10;
  if (!a12)
  {
    v25 = 32 - __clz(a6 - 1);
    v26 = a6 > 1;
    if (a6 <= 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = v25;
    }

    v28 = 32 - __clz(a5 - 1);
    v29 = a5 > 1;
    if (a5 <= 1)
    {
      v30 = 0;
    }

    else
    {
      v30 = v28;
    }

    if (v27 | v30)
    {
      v31 = a2;
      v32 = 0;
      v33 = 0;
      v34 = a5 > 1;
      v35 = v26;
      v36 = 1;
      v37 = v30;
      v38 = v27;
      do
      {
        --v37;
        if (v34)
        {
          v33 |= (v36 & ~(-1 << v30)) << v32++;
        }

        else
        {
          v37 = 0;
        }

        --v38;
        if (!v35)
        {
          v38 = 0;
        }

        v36 *= 2;
        v32 = (__PAIR64__(v32, v35) - 1) >> 32;
        v35 = v38 != 0;
        v34 = v37 != 0;
      }

      while (v38 | v37);
      v39 = 0;
      v40 = 0;
      v41 = 1;
      v42 = a5 > 1;
      v43 = v26;
      v44 = v30;
      v45 = v27;
      do
      {
        --v44;
        v46 = v42;
        if (!v46)
        {
          v44 = 0;
        }

        v47 = v39 + v46;
        --v45;
        if (v43)
        {
          v40 |= (v41 & ~(-1 << v27)) << v47++;
        }

        else
        {
          v45 = 0;
        }

        v41 *= 2;
        v39 = v47 - 1;
        v43 = v45 != 0;
        v42 = v44 != 0;
      }

      while (v45 | v44);
      v48 = 0;
      v49 = 0;
      v50 = a5 > 1;
      v51 = v26;
      v52 = 1;
      v53 = v30;
      v54 = v27;
      do
      {
        --v53;
        if (v50)
        {
          v49 |= (v52 & a7) << v48++;
        }

        else
        {
          v53 = 0;
        }

        --v54;
        if (!v51)
        {
          v54 = 0;
        }

        v52 *= 2;
        v48 = (__PAIR64__(v48, v51) - 1) >> 32;
        v51 = v54 != 0;
        v50 = v53 != 0;
      }

      while (v54 | v53);
      v55 = 0;
      v56 = 0;
      v57 = 1;
      do
      {
        --v30;
        v58 = v29;
        if (!v58)
        {
          v30 = 0;
        }

        v59 = v55 + v58;
        --v27;
        if (v26)
        {
          v56 |= (v57 & a8) << v59;
          v60 = v59 + 1;
        }

        else
        {
          v27 = 0;
          v60 = v59;
        }

        v57 *= 2;
        v55 = v60 - 1;
        v26 = v27 != 0;
        v29 = v30 != 0;
        result = v27 | v30;
      }

      while (result);
      a2 = v31;
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v49 = 0;
      v33 = 0;
      v40 = 0;
      v56 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      for (i = 0; i != a10; ++i)
      {
        v232 = a9;
        v233 = a2;
        v234 = v49;
        do
        {
          v235 = *v233++;
          *(v14 + 2 * (v234 + v56)) = v235;
          v234 = (v234 - v33) & v33;
          --v232;
        }

        while (v232);
        v56 = (v56 - v40) & v40;
        a2 = (a2 + a11);
      }
    }

    return result;
  }

  v269 = a8;
  if (*(a12 + 20))
  {
    v18 = a2;
    result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v305);
    v21 = *(a12 + 13);
    v22 = *(a12 + 12);
    if (1 << v21 >= a6 || a5 >> v22)
    {
      v147 = a6 >> v21;
      v148 = 1 << v22;
      v149 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
      if (a6 < 2)
      {
        v149 = 0;
      }

      v150 = v148 >= a5;
      if (v148 < a5)
      {
        v151 = v22 + v21 + v149;
      }

      else
      {
        v151 = *(a12 + 12);
      }

      if (v150)
      {
        LOBYTE(v152) = *(a12 + 13);
      }

      else
      {
        v152 = -v149;
      }

      if (!v147)
      {
        v22 = v151;
      }

      v263 = v22;
      if (v147)
      {
        v24 = *(a12 + 13);
      }

      else
      {
        v24 = v152;
      }
    }

    else
    {
      v23 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
      if (a5 < 2)
      {
        LOBYTE(v23) = 0;
      }

      v263 = v23;
      v24 = v22 + v21 - v23;
    }

    v154 = v269;
    v153 = a10;
    v262 = v311;
    if (v311)
    {
      v155 = 1 << v263;
      v156 = 1 << v24;
      if (1 << v24 >= a6)
      {
        v157 = a6;
      }

      else
      {
        v157 = 1 << v24;
      }

      v158 = 32 - __clz(v157 - 1);
      v159 = v157 > 1;
      if (v157 <= 1)
      {
        v160 = 0;
      }

      else
      {
        v160 = v158;
      }

      if (v155 >= a5)
      {
        v161 = a5;
      }

      else
      {
        v161 = 1 << v263;
      }

      v162 = 32 - __clz(v161 - 1);
      v163 = v312;
      v273 = v161 > 1;
      if (v161 <= 1)
      {
        v162 = 0;
      }

      v295 = v309;
      v296 = v162;
      v291 = v309 != 0;
      v293 = v310;
      v289 = v310 != 0;
      if (v312)
      {
        v164 = 0;
        v261 = a7 >> v263;
        v284 = v269 >> v24;
        v304 = v308;
        v302 = v310 | v309;
        v300 = v313;
        v260 = a9 + a7;
        v259 = (v155 - 1) & (a9 + a7);
        v257 = v306;
        v298 = v307;
        v258 = (v155 - 1) & a7;
        v256 = v155 - v258;
        v279 = (v156 - 1) & v269;
        v281 = (v156 - 1) & (a10 + v269);
        v277 = v156 - v279;
        v165 = ~(-1 << v162);
        v276 = v160 | v162;
        v287 = v312;
        v267 = 1 << v24;
        v268 = v24;
        v266 = v159;
        do
        {
          v166 = 0;
          v167 = v164 + v257;
          v168 = (v164 + v261) << v263;
          v169 = a9;
          if (v260 >= (v164 + v261 + 1) << v263)
          {
            v169 = v256;
          }

          v170 = 1 << v263;
          if (v260 < (v164 + v261 + 1) << v263)
          {
            v170 = v259;
          }

          v265 = v164;
          if (v168 >= a7)
          {
            v171 = v170;
          }

          else
          {
            v171 = v169;
          }

          if (v168 >= a7)
          {
            v172 = 0;
          }

          else
          {
            v172 = v258;
          }

          v271 = &v18[v172 + (v164 << v263)];
          do
          {
            v173 = v166 + v298;
            if (v300)
            {
              v174 = v302;
              if (v302)
              {
                v175 = 0;
                v174 = 0;
                v176 = 1;
                v178 = v291;
                v177 = v293;
                v179 = v289;
                v180 = v295;
                do
                {
                  --v180;
                  if (v178)
                  {
                    v174 |= (v176 & v167) << v175;
                  }

                  else
                  {
                    v180 = 0;
                  }

                  if (v178)
                  {
                    ++v175;
                  }

                  --v177;
                  if (v179)
                  {
                    v174 |= (v176 & v173) << v175;
                  }

                  else
                  {
                    v177 = 0;
                  }

                  if (v179)
                  {
                    ++v175;
                  }

                  v176 *= 2;
                  --v175;
                  v179 = v177 != 0;
                  v178 = v180 != 0;
                }

                while (v177 | v180);
              }
            }

            else
            {
              v174 = v302;
              if (v302)
              {
                v181 = 0;
                v174 = 0;
                v182 = 1;
                v183 = v289;
                v185 = v291;
                v184 = v293;
                v186 = v295;
                do
                {
                  --v184;
                  if (v183)
                  {
                    v174 |= (v182 & v173) << v181;
                  }

                  else
                  {
                    v184 = 0;
                  }

                  if (v183)
                  {
                    ++v181;
                  }

                  --v186;
                  if (v185)
                  {
                    v174 |= (v182 & v167) << v181;
                  }

                  else
                  {
                    v186 = 0;
                  }

                  if (v185)
                  {
                    ++v181;
                  }

                  v182 *= 2;
                  --v181;
                  v185 = v186 != 0;
                  v183 = v184 != 0;
                }

                while (v186 | v184);
              }
            }

            v187 = *(v14 + 4 * ((v174 + v304) | ((v174 + v304) >> 8 << 9)));
            if (v187 < 0)
            {
              v188 = v14 - *(a13 + 3) + ((v187 & 0x1FFFFFFF) << 14);
              result = *a13;
              v189 = a13[2];
              if (result > v189)
              {
                result = get_level_offset_within_tail(result, v189, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
                v163 = v287;
                v159 = v266;
                v156 = v267;
                v24 = v268;
                v15 = a11;
                v154 = v269;
                v153 = a10;
                v188 += result;
              }

              v190 = (v166 + v284) << v24;
              v191 = v277;
              if (a10 + v269 >= (v166 + v284 + 1) << v24)
              {
                v192 = v156;
              }

              else
              {
                v191 = v153;
                v192 = v281;
              }

              if (v190 >= v154)
              {
                v193 = 0;
              }

              else
              {
                v193 = v279;
              }

              if (v190 >= v154)
              {
                v191 = v192;
              }

              if (!v276)
              {
                v211 = 0;
                v195 = 0;
                v202 = 0;
                v218 = 0;
                if (!v191)
                {
                  goto LABEL_188;
                }

LABEL_260:
                if (v171)
                {
                  v225 = 0;
                  v226 = (v271 + (v193 + (v166 << v24)) * v15);
                  do
                  {
                    v227 = v171;
                    v228 = v226;
                    v229 = v211;
                    do
                    {
                      v230 = *v228++;
                      result = v230;
                      *(v188 + 2 * (v229 + v218)) = v230;
                      v229 = (v229 - v195) & v195;
                      --v227;
                    }

                    while (v227);
                    v218 = (v218 - v202) & v202;
                    v226 = (v226 + v15);
                    ++v225;
                  }

                  while (v225 != v191);
                }

                goto LABEL_188;
              }

              v194 = 0;
              v195 = 0;
              v196 = 1;
              v197 = v273;
              v198 = v159;
              v199 = v296;
              v200 = v160;
              do
              {
                --v199;
                if (v197)
                {
                  v195 |= (v196 & v165) << v194++;
                }

                else
                {
                  v199 = 0;
                }

                --v200;
                if (!v198)
                {
                  v200 = 0;
                }

                v196 *= 2;
                v194 = (__PAIR64__(v194, v198) - 1) >> 32;
                v198 = v200 != 0;
                v197 = v199 != 0;
              }

              while (v200 | v199);
              v201 = 0;
              v202 = 0;
              v203 = 1;
              v204 = v273;
              v205 = v159;
              v206 = v296;
              v207 = v160;
              do
              {
                --v206;
                v208 = v204;
                if (!v208)
                {
                  v206 = 0;
                }

                v209 = v201 + v208;
                --v207;
                if (v205)
                {
                  v202 |= (v203 & ~(-1 << v160)) << v209++;
                }

                else
                {
                  v207 = 0;
                }

                v203 *= 2;
                v201 = v209 - 1;
                v205 = v207 != 0;
                v204 = v206 != 0;
              }

              while (v207 | v206);
              v210 = 0;
              v211 = 0;
              v212 = 1;
              v213 = v273;
              v214 = v159;
              v215 = v296;
              v216 = v160;
              do
              {
                --v215;
                if (v213)
                {
                  v211 |= (v212 & v172) << v210++;
                }

                else
                {
                  v215 = 0;
                }

                --v216;
                if (!v214)
                {
                  v216 = 0;
                }

                v212 *= 2;
                v210 = (__PAIR64__(v210, v214) - 1) >> 32;
                v214 = v216 != 0;
                v213 = v215 != 0;
              }

              while (v216 | v215);
              v217 = 0;
              v218 = 0;
              v219 = 1;
              v220 = v273;
              LOBYTE(result) = v159;
              v221 = v296;
              v222 = v160;
              do
              {
                --v221;
                v223 = v220;
                if (!v223)
                {
                  v221 = 0;
                }

                v224 = v217 + v223;
                --v222;
                if (result)
                {
                  v218 |= (v219 & v193) << v224++;
                }

                else
                {
                  v222 = 0;
                }

                v219 *= 2;
                v217 = v224 - 1;
                result = v222 != 0;
                v220 = v221 != 0;
              }

              while (v222 | v221);
              v163 = v287;
              if (v191)
              {
                goto LABEL_260;
              }
            }

LABEL_188:
            ++v166;
          }

          while (v163 > v166);
          v164 = v265 + 1;
        }

        while (v262 > (v265 + 1));
      }
    }
  }

  else
  {
    v61 = *(a12 + 13);
    v62 = *(a12 + 12);
    v63 = 1 << v61;
    v64 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v64 = 0;
    }

    v65 = v62 + v61;
    result = v62 + v61 + v64;
    if (a6 >> v61)
    {
      v66 = 1;
    }

    else
    {
      v66 = 1 << v62 >= a5;
    }

    if (v66)
    {
      v67 = *(a12 + 12);
    }

    else
    {
      v67 = v62 + v61 + v64;
    }

    if (v66)
    {
      LOBYTE(v68) = *(a12 + 13);
    }

    else
    {
      v68 = -v64;
    }

    v69 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v69) = 0;
    }

    if (v63 < a6 && a5 >> v62 == 0)
    {
      v71 = v65 - v69;
    }

    else
    {
      LOBYTE(v69) = v67;
      v71 = v68;
    }

    v72 = 1 << v71;
    v73 = *(a12 + 15);
    v74 = 1 << v73;
    if (v73)
    {
      v75 = v74 > a3;
    }

    else
    {
      v75 = 1;
    }

    v76 = v75 || v74 > a4;
    v77 = (~(-1 << v73) + a3) & (-1 << v73);
    if (v76)
    {
      v78 = a3;
    }

    else
    {
      v78 = v77;
    }

    v282 = a10 + a8;
    v283 = 1 << v71;
    v79 = v72 - 1;
    v275 = a8 >> v71;
    v280 = (v72 - 1 + a10 + a8) >> v71;
    if (a8 >> v71 < v280)
    {
      v80 = (1 << v69) - 1;
      v303 = a9 + v13;
      result = (v80 + a9 + v13) >> v69;
      if (v72 >= a6)
      {
        v72 = a6;
      }

      v81 = 32 - __clz(v72 - 1);
      v82 = v72 > 1;
      if (v72 <= 1)
      {
        v83 = 0;
      }

      else
      {
        v83 = v81;
      }

      v299 = (v80 + a9 + v13) >> v69;
      v301 = 1 << v69;
      if (1 << v69 >= a5)
      {
        v84 = a5;
      }

      else
      {
        v84 = 1 << v69;
      }

      v85 = 32 - __clz(v84 - 1);
      v86 = v84 > 1;
      if (v84 <= 1)
      {
        v87 = 0;
      }

      else
      {
        v87 = v85;
      }

      v294 = v13 >> v69;
      if (v13 >> v69 < result)
      {
        v272 = (v78 + ~(-1 << v69)) >> v69;
        v297 = v80 & v303;
        v292 = v80 & v13;
        v278 = v79 & v282;
        v286 = v79 & a8;
        if (v83 | v87)
        {
          v88 = a8 >> v71;
          v264 = a2;
          v270 = v71;
          do
          {
            v89 = v88 << v71;
            v90 = v88 - v275;
            v290 = v88 * v272;
            v285 = v88 + 1;
            v66 = v282 >= (v88 + 1) << v71;
            v91 = v283;
            v92 = v283 - v286;
            if (!v66)
            {
              v91 = v278;
              v92 = v17;
            }

            v93 = v90 << v71;
            if (v89 >= a8)
            {
              v94 = 0;
            }

            else
            {
              v94 = v286;
            }

            if (v89 >= a8)
            {
              result = v91;
            }

            else
            {
              result = v92;
            }

            v288 = a2 + (v94 + v93 - v286) * a11;
            v95 = v294;
            do
            {
              v96 = 0;
              v97 = 0;
              v98 = v95 << v69;
              v99 = v95 - v294;
              v100 = v95 + v290;
              v101 = ++v95 << v69;
              if (v98 >= v13)
              {
                v102 = 0;
              }

              else
              {
                v102 = v292;
              }

              v103 = v102 + (v99 << v69) - v292;
              v104 = v100 * v16[3] * *(v16 + 9);
              v105 = 1;
              v106 = v86;
              v107 = v82;
              v108 = v87;
              v109 = v83;
              do
              {
                --v108;
                if (v106)
                {
                  v97 |= (v105 & ~(-1 << v87)) << v96++;
                }

                else
                {
                  v108 = 0;
                }

                --v109;
                if (!v107)
                {
                  v109 = 0;
                }

                v105 *= 2;
                v96 = (__PAIR64__(v96, v107) - 1) >> 32;
                v107 = v109 != 0;
                v106 = v108 != 0;
              }

              while (v109 | v108);
              v110 = 0;
              v111 = 0;
              v112 = 2 * v103;
              v113 = 1 << v69;
              if (v303 < v101)
              {
                v113 = v297;
              }

              v114 = 1;
              v115 = v86;
              v116 = v82;
              v117 = v87;
              v118 = v83;
              do
              {
                --v117;
                v119 = v115;
                if (!v119)
                {
                  v117 = 0;
                }

                v120 = v110 + v119;
                --v118;
                if (v116)
                {
                  v111 |= (v114 & ~(-1 << v83)) << v120++;
                }

                else
                {
                  v118 = 0;
                }

                v114 *= 2;
                v110 = v120 - 1;
                v116 = v118 != 0;
                v115 = v117 != 0;
              }

              while (v118 | v117);
              v121 = 0;
              v122 = 0;
              v123 = v301 - v292;
              if (v303 < v101)
              {
                v123 = a9;
              }

              v124 = &v288[v112];
              v125 = 1;
              v126 = v86;
              v127 = v82;
              v128 = v87;
              v129 = v83;
              do
              {
                --v128;
                if (v126)
                {
                  v122 |= (v125 & v102) << v121;
                  v130 = v121 + 1;
                }

                else
                {
                  v128 = 0;
                  v130 = v121;
                }

                if (v127)
                {
                  --v129;
                }

                else
                {
                  v129 = 0;
                }

                v125 *= 2;
                v121 = (__PAIR64__(v130, v127) - 1) >> 32;
                v127 = v129 != 0;
                v126 = v128 != 0;
              }

              while (v129 | v128);
              v131 = 0;
              v132 = 0;
              v133 = 1;
              v134 = v86;
              v135 = v82;
              v136 = v87;
              v137 = v83;
              do
              {
                v138 = v134;
                if (v138)
                {
                  --v136;
                }

                else
                {
                  v136 = 0;
                }

                v139 = v131 + v138;
                v140 = ((v133 & v94) << (v131 + v138)) | v132;
                if (v135)
                {
                  --v137;
                }

                else
                {
                  v137 = 0;
                }

                if (v135)
                {
                  v132 = v140;
                  ++v139;
                }

                v133 *= 2;
                v131 = v139 - 1;
                v135 = v137 != 0;
                v134 = v136 != 0;
              }

              while (v137 | v136);
              v13 = a7;
              if (v98 < a7)
              {
                v113 = v123;
              }

              if (result && v113)
              {
                v141 = 0;
                v142 = v104 + v14;
                do
                {
                  v143 = v113;
                  v144 = v124;
                  v145 = v122;
                  do
                  {
                    v146 = *v144++;
                    *(v142 + 2 * (v145 + v132)) = v146;
                    v145 = (v145 - v97) & v97;
                    --v143;
                  }

                  while (v143);
                  v132 = (v132 - v111) & v111;
                  v124 += a11;
                  ++v141;
                }

                while (v141 != result);
              }

              v16 = a12;
            }

            while (v95 != v299);
            v88 = v285;
            a2 = v264;
            a8 = v269;
            v17 = a10;
            v71 = v270;
          }

          while (v285 != v280);
        }

        else
        {
          v236 = a8 >> v71;
          do
          {
            v237 = v236 << v71;
            v238 = v236 + 1;
            v239 = v278;
            if (v282 >= (v236 + 1) << v71)
            {
              v239 = 1 << v71;
            }

            if (v282 >= v238 << v71)
            {
              v240 = v283 - v286;
            }

            else
            {
              v240 = a10;
            }

            if (v237 >= a8)
            {
              v241 = 0;
            }

            else
            {
              v241 = v286;
            }

            if (v237 >= a8)
            {
              v242 = v239;
            }

            else
            {
              v242 = v240;
            }

            if (v242)
            {
              v243 = (v236 - v275) << v71;
              v244 = v236 * v272;
              v245 = a2 + ((v241 + v243) - v286) * a11;
              v246 = v13 >> v69;
              do
              {
                result = v246 << v69;
                v247 = v246 + 1;
                v248 = a9;
                if (v303 >= (v246 + 1) << v69)
                {
                  v248 = v301 - v292;
                }

                v249 = 1 << v69;
                if (v303 < v247 << v69)
                {
                  v249 = v297;
                }

                if (result >= v13)
                {
                  v248 = v249;
                }

                if (v248)
                {
                  v250 = 0;
                  v251 = (v246 + v244) * a12[3] * *(a12 + 9);
                  if (result >= v13)
                  {
                    v252 = 0;
                  }

                  else
                  {
                    v252 = v292;
                  }

                  result = &v245[2 * (v252 + ((v246 - v294) << v69) - v292)];
                  do
                  {
                    v253 = v248;
                    v254 = result;
                    do
                    {
                      v255 = *v254++;
                      *(v14 + v251) = v255;
                      --v253;
                    }

                    while (v253);
                    result += a11;
                    ++v250;
                  }

                  while (v250 != v242);
                }

                v246 = v247;
              }

              while (v247 != v299);
            }

            v236 = v238;
          }

          while (v238 != v280);
        }
      }
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressZ<AGXSConverterPassThru<true,1ul,1u,(TwiddleOrder)1>>(uint64_t result, char *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
{
  if (!result || !a2)
  {
    return result;
  }

  v14 = result;
  v15 = a11;
  v16 = a12;
  v17 = a10;
  if (!a12)
  {
    v24 = 32 - __clz(a6 - 1);
    v25 = a6 > 1;
    if (a6 <= 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = v24;
    }

    v27 = 32 - __clz(a5 - 1);
    v28 = a5 > 1;
    if (a5 <= 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = v27;
    }

    if (v26 | v29)
    {
      v30 = 0;
      v31 = 0;
      v32 = a5 > 1;
      v33 = a6 > 1;
      v34 = 1;
      v35 = v29;
      v36 = v26;
      do
      {
        --v35;
        if (v32)
        {
          v31 |= (v34 & ~(-1 << v29)) << v30++;
        }

        else
        {
          v35 = 0;
        }

        if (v33)
        {
          --v36;
        }

        else
        {
          v36 = 0;
        }

        v34 *= 2;
        v30 = (__PAIR64__(v30, v33) - 1) >> 32;
        v33 = v36 != 0;
        v32 = v35 != 0;
      }

      while (v36 | v35);
      v37 = 0;
      v38 = 0;
      v39 = 1;
      v40 = v28;
      v41 = a6 > 1;
      v42 = v29;
      v43 = v26;
      do
      {
        --v42;
        v44 = v40;
        if (!v44)
        {
          v42 = 0;
        }

        v45 = v37 + v44;
        --v43;
        if (v41)
        {
          v38 |= (v39 & ~(-1 << v26)) << v45++;
        }

        else
        {
          v43 = 0;
        }

        v39 *= 2;
        v37 = v45 - 1;
        v41 = v43 != 0;
        v40 = v42 != 0;
      }

      while (v43 | v42);
      v46 = 0;
      v47 = 0;
      v48 = v28;
      v49 = a6 > 1;
      v50 = 1;
      v51 = v29;
      v52 = v26;
      do
      {
        --v51;
        if (v48)
        {
          v47 |= (v50 & a7) << v46++;
        }

        else
        {
          v51 = 0;
        }

        --v52;
        if (!v49)
        {
          v52 = 0;
        }

        v50 *= 2;
        v46 = (__PAIR64__(v46, v49) - 1) >> 32;
        v49 = v52 != 0;
        v48 = v51 != 0;
      }

      while (v52 | v51);
      v53 = 0;
      v54 = 0;
      v55 = 1;
      do
      {
        --v29;
        v56 = v28;
        if (!v56)
        {
          v29 = 0;
        }

        v57 = v53 + v56;
        --v26;
        if (v25)
        {
          v54 |= (v55 & a8) << v57;
          v58 = v57 + 1;
        }

        else
        {
          v26 = 0;
          v58 = v57;
        }

        v55 *= 2;
        v53 = v58 - 1;
        v25 = v26 != 0;
        v28 = v29 != 0;
        result = v26 | v29;
      }

      while (result);
      if (!a10)
      {
        return result;
      }
    }

    else
    {
      v47 = 0;
      v31 = 0;
      v38 = 0;
      v54 = 0;
      if (!a10)
      {
        return result;
      }
    }

    if (a9)
    {
      for (i = 0; i != a10; ++i)
      {
        v229 = a9;
        v230 = a2;
        v231 = v47;
        do
        {
          v232 = *v230++;
          *(v54 + v14 + v231) = v232;
          v231 = (v231 - v31) & v31;
          --v229;
        }

        while (v229);
        v54 = (v54 - v38) & v38;
        a2 += a11;
      }
    }

    return result;
  }

  v268 = a8;
  v273 = a7;
  if (*(a12 + 20))
  {
    v260 = a2;
    result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v305);
    v20 = *(a12 + 13);
    v21 = *(a12 + 12);
    if (1 << v20 >= a6 || a5 >> v21)
    {
      v146 = a6 >> v20;
      v147 = 1 << v21;
      v148 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
      if (a6 < 2)
      {
        v148 = 0;
      }

      v149 = v147 >= a5;
      if (v147 < a5)
      {
        v150 = v21 + v20 + v148;
      }

      else
      {
        v150 = *(a12 + 12);
      }

      if (v149)
      {
        LOBYTE(v151) = *(a12 + 13);
      }

      else
      {
        v151 = -v148;
      }

      if (!v146)
      {
        v21 = v150;
      }

      v262 = v21;
      if (v146)
      {
        v23 = *(a12 + 13);
      }

      else
      {
        v23 = v151;
      }
    }

    else
    {
      v22 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
      if (a5 < 2)
      {
        LOBYTE(v22) = 0;
      }

      v262 = v22;
      v23 = v21 + v20 - v22;
    }

    v153 = v268;
    v152 = a10;
    v259 = v311;
    if (v311)
    {
      v154 = 1 << v23;
      if (1 << v23 >= a6)
      {
        v155 = a6;
      }

      else
      {
        v155 = 1 << v23;
      }

      v156 = 32 - __clz(v155 - 1);
      v157 = v155 > 1;
      if (v155 <= 1)
      {
        v158 = 0;
      }

      else
      {
        v158 = v156;
      }

      v261 = 1 << v262;
      if (1 << v262 >= a5)
      {
        v159 = a5;
      }

      else
      {
        v159 = 1 << v262;
      }

      v160 = 32 - __clz(v159 - 1);
      v161 = v312;
      v272 = v159 > 1;
      if (v159 <= 1)
      {
        v160 = 0;
      }

      v295 = v309;
      v297 = v160;
      v291 = v309 != 0;
      v293 = v310;
      v289 = v310 != 0;
      if (v312)
      {
        v162 = 0;
        v258 = a7 >> v262;
        v284 = v268 >> v23;
        v302 = v310 | v309;
        v304 = v308;
        v301 = v313;
        v257 = a9 + a7;
        v256 = (v261 - 1) & (a9 + a7);
        v254 = v306;
        v299 = v307;
        v255 = (v261 - 1) & a7;
        v279 = (v154 - 1) & v268;
        v281 = (v154 - 1) & (a10 + v268);
        v277 = v154 - v279;
        v163 = ~(-1 << v160);
        v275 = v158 | v160;
        v287 = v312;
        v265 = 1 << v23;
        v267 = v23;
        v264 = v157;
        do
        {
          v164 = 0;
          v165 = v162 + v254;
          v166 = (v162 + v258) << v262;
          v167 = a9;
          if (v257 >= (v162 + v258 + 1) << v262)
          {
            v167 = v261 - v255;
          }

          v168 = 1 << v262;
          if (v257 < (v162 + v258 + 1) << v262)
          {
            v168 = v256;
          }

          v263 = v162;
          if (v166 >= a7)
          {
            v169 = v168;
          }

          else
          {
            v169 = v167;
          }

          if (v166 >= a7)
          {
            v170 = 0;
          }

          else
          {
            v170 = v255;
          }

          v270 = &v260[v170 + (v162 << v262)];
          do
          {
            v171 = v164 + v299;
            if (v301)
            {
              v172 = v302;
              if (v302)
              {
                v173 = 0;
                v172 = 0;
                v174 = 1;
                v175 = v291;
                v176 = v289;
                v178 = v293;
                v177 = v295;
                do
                {
                  --v177;
                  if (v175)
                  {
                    v172 |= (v174 & v165) << v173;
                  }

                  else
                  {
                    v177 = 0;
                  }

                  if (v175)
                  {
                    ++v173;
                  }

                  --v178;
                  if (v176)
                  {
                    v172 |= (v174 & v171) << v173;
                  }

                  else
                  {
                    v178 = 0;
                  }

                  if (v176)
                  {
                    ++v173;
                  }

                  v174 *= 2;
                  --v173;
                  v176 = v178 != 0;
                  v175 = v177 != 0;
                }

                while (v178 | v177);
              }
            }

            else
            {
              v172 = v302;
              if (v302)
              {
                v179 = 0;
                v172 = 0;
                v180 = 1;
                v181 = v289;
                v182 = v291;
                v183 = v293;
                v184 = v295;
                do
                {
                  --v183;
                  if (v181)
                  {
                    v172 |= (v180 & v171) << v179;
                  }

                  else
                  {
                    v183 = 0;
                  }

                  if (v181)
                  {
                    ++v179;
                  }

                  --v184;
                  if (v182)
                  {
                    v172 |= (v180 & v165) << v179;
                  }

                  else
                  {
                    v184 = 0;
                  }

                  if (v182)
                  {
                    ++v179;
                  }

                  v180 *= 2;
                  --v179;
                  v182 = v184 != 0;
                  v181 = v183 != 0;
                }

                while (v184 | v183);
              }
            }

            v185 = *(v14 + 4 * ((v172 + v304) | ((v172 + v304) >> 8 << 9)));
            if (v185 < 0)
            {
              v186 = v14 - *(a13 + 3) + ((v185 & 0x1FFFFFFF) << 14);
              result = *a13;
              v187 = a13[2];
              if (result > v187)
              {
                result = get_level_offset_within_tail(result, v187, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
                v161 = v287;
                v157 = v264;
                v154 = v265;
                v23 = v267;
                v15 = a11;
                v153 = v268;
                v152 = a10;
                v186 += result;
              }

              v188 = (v164 + v284) << v23;
              v189 = v277;
              if (a10 + v268 >= (v164 + v284 + 1) << v23)
              {
                v190 = v154;
              }

              else
              {
                v189 = v152;
                v190 = v281;
              }

              if (v188 >= v153)
              {
                v191 = 0;
              }

              else
              {
                v191 = v279;
              }

              if (v188 >= v153)
              {
                v189 = v190;
              }

              if (!v275)
              {
                v209 = 0;
                v193 = 0;
                v200 = 0;
                v216 = 0;
                if (!v189)
                {
                  goto LABEL_188;
                }

LABEL_260:
                if (v169)
                {
                  v223 = 0;
                  v224 = &v270[(v191 + (v164 << v23)) * v15];
                  do
                  {
                    v225 = v169;
                    v226 = v224;
                    result = v209;
                    do
                    {
                      v227 = *v226++;
                      *(v216 + v186 + result) = v227;
                      result = (result - v193) & v193;
                      --v225;
                    }

                    while (v225);
                    v216 = (v216 - v200) & v200;
                    v224 += v15;
                    ++v223;
                  }

                  while (v223 != v189);
                }

                goto LABEL_188;
              }

              v192 = 0;
              v193 = 0;
              v194 = 1;
              v195 = v272;
              v196 = v157;
              v197 = v297;
              v198 = v158;
              do
              {
                --v197;
                if (v195)
                {
                  v193 |= (v194 & v163) << v192++;
                }

                else
                {
                  v197 = 0;
                }

                --v198;
                if (!v196)
                {
                  v198 = 0;
                }

                v194 *= 2;
                v192 = (__PAIR64__(v192, v196) - 1) >> 32;
                v196 = v198 != 0;
                v195 = v197 != 0;
              }

              while (v198 | v197);
              v199 = 0;
              v200 = 0;
              v201 = 1;
              v202 = v272;
              v203 = v157;
              v204 = v297;
              v205 = v158;
              do
              {
                --v204;
                v206 = v202;
                if (!v206)
                {
                  v204 = 0;
                }

                v207 = v199 + v206;
                --v205;
                if (v203)
                {
                  v200 |= (v201 & ~(-1 << v158)) << v207++;
                }

                else
                {
                  v205 = 0;
                }

                v201 *= 2;
                v199 = v207 - 1;
                v203 = v205 != 0;
                v202 = v204 != 0;
              }

              while (v205 | v204);
              v208 = 0;
              v209 = 0;
              v210 = 1;
              v211 = v272;
              v212 = v157;
              v213 = v297;
              v214 = v158;
              do
              {
                --v213;
                if (v211)
                {
                  v209 |= (v210 & v170) << v208++;
                }

                else
                {
                  v213 = 0;
                }

                --v214;
                if (!v212)
                {
                  v214 = 0;
                }

                v210 *= 2;
                v208 = (__PAIR64__(v208, v212) - 1) >> 32;
                v212 = v214 != 0;
                v211 = v213 != 0;
              }

              while (v214 | v213);
              v215 = 0;
              v216 = 0;
              v217 = 1;
              v218 = v272;
              LOBYTE(result) = v157;
              v219 = v297;
              v220 = v158;
              do
              {
                --v219;
                v221 = v218;
                if (!v221)
                {
                  v219 = 0;
                }

                v222 = v215 + v221;
                --v220;
                if (result)
                {
                  v216 |= (v217 & v191) << v222++;
                }

                else
                {
                  v220 = 0;
                }

                v217 *= 2;
                v215 = v222 - 1;
                result = v220 != 0;
                v218 = v219 != 0;
              }

              while (v220 | v219);
              v161 = v287;
              if (v189)
              {
                goto LABEL_260;
              }
            }

LABEL_188:
            ++v164;
          }

          while (v161 > v164);
          v162 = v263 + 1;
          a7 = v273;
        }

        while (v259 > (v263 + 1));
      }
    }
  }

  else
  {
    v59 = *(a12 + 13);
    v60 = *(a12 + 12);
    v61 = 1 << v59;
    v62 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v62 = 0;
    }

    v63 = v60 + v59;
    result = v60 + v59 + v62;
    if (a6 >> v59)
    {
      v64 = 1;
    }

    else
    {
      v64 = 1 << v60 >= a5;
    }

    if (v64)
    {
      v65 = *(a12 + 12);
    }

    else
    {
      v65 = v60 + v59 + v62;
    }

    if (v64)
    {
      LOBYTE(v66) = *(a12 + 13);
    }

    else
    {
      v66 = -v62;
    }

    v67 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v67) = 0;
    }

    v68 = v63 - v67;
    if (v61 >= a6 || a5 >> v60 != 0)
    {
      LOBYTE(v67) = v65;
      v68 = v66;
    }

    v70 = 1 << v68;
    v71 = *(a12 + 15);
    v72 = 1 << v71;
    if (v71)
    {
      v73 = v72 > a3;
    }

    else
    {
      v73 = 1;
    }

    v74 = v73 || v72 > a4;
    v75 = (~(-1 << v71) + a3) & (-1 << v71);
    if (v74)
    {
      v76 = a3;
    }

    else
    {
      v76 = v75;
    }

    v283 = a10 + a8;
    v285 = 1 << v68;
    v77 = v70 - 1;
    v276 = a8 >> v68;
    v282 = (v70 - 1 + a10 + a8) >> v68;
    if (a8 >> v68 < v282)
    {
      v78 = 1 << v67;
      result = a7 >> v67;
      v79 = (1 << v67) - 1;
      v303 = a9 + a7;
      if (v70 >= a6)
      {
        v70 = a6;
      }

      v80 = 32 - __clz(v70 - 1);
      v81 = v70 > 1;
      if (v70 <= 1)
      {
        v82 = 0;
      }

      else
      {
        v82 = v80;
      }

      v300 = (v79 + a9 + a7) >> v67;
      if (v78 >= a5)
      {
        v83 = a5;
      }

      else
      {
        v83 = 1 << v67;
      }

      v84 = 32 - __clz(v83 - 1);
      v85 = v83 > 1;
      if (v83 <= 1)
      {
        v86 = 0;
      }

      else
      {
        v86 = v84;
      }

      v294 = a7 >> v67;
      if (result < (v79 + a9 + a7) >> v67)
      {
        v274 = (v76 + ~(-1 << v67)) >> v67;
        v87 = v77 & a8;
        v298 = v79 & v303;
        v296 = v78 - (v79 & a7);
        v280 = v77 & v283;
        v278 = v285 - v87;
        v292 = v79 & a7;
        v271 = &a2[-(v79 & a7)];
        if (v82 | v86)
        {
          v88 = a8 >> v68;
          v269 = v68;
          v266 = v77 & a8;
          do
          {
            v89 = v88 << v68;
            v90 = v88 - v276;
            v290 = v88 * v274;
            v286 = v88 + 1;
            v64 = v283 >= (v88 + 1) << v68;
            v91 = v285;
            v92 = v278;
            if (!v64)
            {
              v91 = v280;
              v92 = v17;
            }

            v93 = v90 << v68;
            if (v89 >= a8)
            {
              result = 0;
            }

            else
            {
              result = v87;
            }

            if (v89 >= a8)
            {
              v94 = v91;
            }

            else
            {
              v94 = v92;
            }

            v288 = &v271[(result + v93 - v87) * a11];
            v95 = v294;
            do
            {
              v96 = 0;
              v97 = 0;
              v98 = v95 << v67;
              v99 = v95 - v294;
              v100 = v95 + v290;
              v101 = ++v95 << v67;
              if (v98 >= a7)
              {
                v102 = 0;
              }

              else
              {
                v102 = v292;
              }

              v103 = v102 + (v99 << v67);
              v104 = v100 * v16[3] * *(v16 + 9);
              v105 = 1;
              v106 = v85;
              v107 = v81;
              v108 = v86;
              v109 = v82;
              do
              {
                --v108;
                if (v106)
                {
                  v97 |= (v105 & ~(-1 << v86)) << v96++;
                }

                else
                {
                  v108 = 0;
                }

                --v109;
                if (!v107)
                {
                  v109 = 0;
                }

                v105 *= 2;
                v96 = (__PAIR64__(v96, v107) - 1) >> 32;
                v107 = v109 != 0;
                v106 = v108 != 0;
              }

              while (v109 | v108);
              v110 = 0;
              v111 = 0;
              v112 = 1 << v67;
              if (v303 < v101)
              {
                v112 = v298;
              }

              v113 = 1;
              v114 = v85;
              v115 = v81;
              v116 = v86;
              v117 = v82;
              do
              {
                --v116;
                v118 = v114;
                if (!v118)
                {
                  v116 = 0;
                }

                v119 = v110 + v118;
                --v117;
                if (v115)
                {
                  v111 |= (v113 & ~(-1 << v82)) << v119++;
                }

                else
                {
                  v117 = 0;
                }

                v113 *= 2;
                v110 = v119 - 1;
                v115 = v117 != 0;
                v114 = v116 != 0;
              }

              while (v117 | v116);
              v120 = 0;
              v121 = 0;
              v122 = v296;
              if (v303 < v101)
              {
                v122 = a9;
              }

              v123 = &v288[v103];
              v124 = 1;
              v125 = v85;
              v126 = v81;
              v127 = v86;
              v128 = v82;
              do
              {
                --v127;
                if (v125)
                {
                  v121 |= (v124 & v102) << v120;
                  v129 = v120 + 1;
                }

                else
                {
                  v127 = 0;
                  v129 = v120;
                }

                if (v126)
                {
                  --v128;
                }

                else
                {
                  v128 = 0;
                }

                v124 *= 2;
                v120 = (__PAIR64__(v129, v126) - 1) >> 32;
                v126 = v128 != 0;
                v125 = v127 != 0;
              }

              while (v128 | v127);
              v130 = 0;
              v131 = 0;
              v132 = 1;
              v133 = v85;
              v134 = v81;
              v135 = v86;
              v136 = v82;
              do
              {
                v137 = v133;
                if (v137)
                {
                  --v135;
                }

                else
                {
                  v135 = 0;
                }

                v138 = v130 + v137;
                v139 = ((v132 & result) << (v130 + v137)) | v131;
                if (v134)
                {
                  --v136;
                }

                else
                {
                  v136 = 0;
                }

                if (v134)
                {
                  v131 = v139;
                  ++v138;
                }

                v132 *= 2;
                v130 = v138 - 1;
                v134 = v136 != 0;
                v133 = v135 != 0;
              }

              while (v136 | v135);
              a7 = v273;
              if (v98 < v273)
              {
                v112 = v122;
              }

              v16 = a12;
              if (v94 && v112)
              {
                v140 = 0;
                v141 = v104 + v14;
                do
                {
                  v142 = v112;
                  v143 = v123;
                  v144 = v121;
                  do
                  {
                    v145 = *v143++;
                    *(v141 + v131 + v144) = v145;
                    v144 = (v144 - v97) & v97;
                    --v142;
                  }

                  while (v142);
                  v131 = (v131 - v111) & v111;
                  v123 += a11;
                  ++v140;
                }

                while (v140 != v94);
              }
            }

            while (v95 != v300);
            v88 = v286;
            a8 = v268;
            v17 = a10;
            v68 = v269;
            v87 = v266;
          }

          while (v286 != v282);
        }

        else
        {
          v233 = a8 >> v68;
          do
          {
            v234 = v233 << v68;
            v235 = v233 + 1;
            v236 = v280;
            if (v283 >= (v233 + 1) << v68)
            {
              v236 = 1 << v68;
            }

            if (v283 >= v235 << v68)
            {
              v237 = v285 - v87;
            }

            else
            {
              v237 = a10;
            }

            if (v234 >= a8)
            {
              v238 = 0;
            }

            else
            {
              v238 = v87;
            }

            if (v234 >= a8)
            {
              v239 = v236;
            }

            else
            {
              v239 = v237;
            }

            if (v239)
            {
              v240 = (v233 - v276) << v68;
              v241 = v233 * v274;
              v242 = &v271[((v238 + v240) - v87) * a11];
              LODWORD(result) = a7 >> v67;
              do
              {
                v243 = result << v67;
                v244 = (result + 1);
                v245 = a9;
                if (v303 >= v244 << v67)
                {
                  v245 = v296;
                }

                v246 = 1 << v67;
                if (v303 < v244 << v67)
                {
                  v246 = v298;
                }

                if (v243 >= a7)
                {
                  v245 = v246;
                }

                if (v245)
                {
                  v247 = 0;
                  v248 = (result + v241) * a12[3] * *(a12 + 9);
                  v64 = v243 >= a7;
                  v249 = v292;
                  if (v64)
                  {
                    v249 = 0;
                  }

                  v250 = &v242[v249 + ((result - v294) << v67)];
                  do
                  {
                    v251 = v245;
                    v252 = v250;
                    do
                    {
                      v253 = *v252++;
                      *(v14 + v248) = v253;
                      --v251;
                    }

                    while (v251);
                    v250 += a11;
                    ++v247;
                  }

                  while (v247 != v239);
                }

                result = v244;
              }

              while (v244 != v300);
            }

            v233 = v235;
          }

          while (v235 != v282);
        }
      }
    }
  }

  return result;
}

os_unfair_lock_s *AGX::PooledAllocator<8u>::~PooledAllocator(os_unfair_lock_s *a1)
{
  __dst[8] = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(a1 + 3);
  os_unfair_lock_opaque = a1[2]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque)
  {
    if (os_unfair_lock_opaque <= 7)
    {
      v3 = 64 - 8 * os_unfair_lock_opaque;
    }

    else
    {
      v3 = 0;
    }

    v4 = __dst;
    bzero(&__dst[os_unfair_lock_opaque], v3);
    memcpy(__dst, &a1[4], 8 * os_unfair_lock_opaque);
    a1[2]._os_unfair_lock_opaque = 0;
    os_unfair_lock_unlock(a1 + 3);
    do
    {
      v5 = *v4++;
      free(v5);
      --os_unfair_lock_opaque;
    }

    while (os_unfair_lock_opaque);
  }

  else
  {
    os_unfair_lock_unlock(a1 + 3);
  }

  return a1;
}

void AGX::PooledAllocator<8u>::shrink(os_unfair_lock_s *a1, float a2)
{
  v18 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(a1 + 3);
  os_unfair_lock_opaque = a1[2]._os_unfair_lock_opaque;
  if (a2 >= 0.0)
  {
    v5 = (os_unfair_lock_opaque * a2);
  }

  else
  {
    v5 = os_unfair_lock_opaque;
  }

  memset(v17, 0, sizeof(v17));
  if (v5)
  {
    memcpy(v17, &a1[4], 8 * v5);
  }

  if (os_unfair_lock_opaque > v5)
  {
    v6 = os_unfair_lock_opaque - v5;
    v7 = v5;
    if ((os_unfair_lock_opaque - v5) <= 3)
    {
      goto LABEL_12;
    }

    v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = 2 * v5;
    v10 = a1;
    v11 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v12 = *&v10[v9 + 4]._os_unfair_lock_opaque;
      *&v10[8]._os_unfair_lock_opaque = *&v10[v9 + 8]._os_unfair_lock_opaque;
      v10 += 8;
      *&v10[-4]._os_unfair_lock_opaque = v12;
      v11 -= 4;
    }

    while (v11);
    if (v6 != v8)
    {
      v7 = v8 + v5;
LABEL_12:
      v13 = os_unfair_lock_opaque - v7;
      v14 = &a1[2 * v7 + 4];
      do
      {
        *&v14[-2 * v5]._os_unfair_lock_opaque = *&v14->_os_unfair_lock_opaque;
        v14 += 2;
        --v13;
      }

      while (v13);
    }
  }

  a1[2]._os_unfair_lock_opaque = os_unfair_lock_opaque - v5;
  os_unfair_lock_unlock(a1 + 3);
  if (v5)
  {
    v15 = v17;
    do
    {
      v16 = *v15++;
      free(v16);
      --v5;
    }

    while (v5);
  }
}

os_unfair_lock_s *AGX::PooledAllocator<16u>::~PooledAllocator(os_unfair_lock_s *a1)
{
  __dst[16] = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(a1 + 3);
  os_unfair_lock_opaque = a1[2]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque)
  {
    if (os_unfair_lock_opaque <= 0xF)
    {
      v3 = 128 - 8 * os_unfair_lock_opaque;
    }

    else
    {
      v3 = 0;
    }

    v4 = __dst;
    bzero(&__dst[os_unfair_lock_opaque], v3);
    memcpy(__dst, &a1[4], 8 * os_unfair_lock_opaque);
    a1[2]._os_unfair_lock_opaque = 0;
    os_unfair_lock_unlock(a1 + 3);
    do
    {
      v5 = *v4++;
      free(v5);
      --os_unfair_lock_opaque;
    }

    while (os_unfair_lock_opaque);
  }

  else
  {
    os_unfair_lock_unlock(a1 + 3);
  }

  return a1;
}

void AGX::PooledAllocator<16u>::shrink(os_unfair_lock_s *a1, float a2)
{
  v18 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(a1 + 3);
  os_unfair_lock_opaque = a1[2]._os_unfair_lock_opaque;
  if (a2 >= 0.0)
  {
    v5 = (os_unfair_lock_opaque * a2);
  }

  else
  {
    v5 = os_unfair_lock_opaque;
  }

  memset(v17, 0, sizeof(v17));
  if (v5)
  {
    memcpy(v17, &a1[4], 8 * v5);
  }

  if (os_unfair_lock_opaque > v5)
  {
    v6 = os_unfair_lock_opaque - v5;
    v7 = v5;
    if ((os_unfair_lock_opaque - v5) <= 3)
    {
      goto LABEL_12;
    }

    v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = 2 * v5;
    v10 = a1;
    v11 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v12 = *&v10[v9 + 4]._os_unfair_lock_opaque;
      *&v10[8]._os_unfair_lock_opaque = *&v10[v9 + 8]._os_unfair_lock_opaque;
      v10 += 8;
      *&v10[-4]._os_unfair_lock_opaque = v12;
      v11 -= 4;
    }

    while (v11);
    if (v6 != v8)
    {
      v7 = v8 + v5;
LABEL_12:
      v13 = os_unfair_lock_opaque - v7;
      v14 = &a1[2 * v7 + 4];
      do
      {
        *&v14[-2 * v5]._os_unfair_lock_opaque = *&v14->_os_unfair_lock_opaque;
        v14 += 2;
        --v13;
      }

      while (v13);
    }
  }

  a1[2]._os_unfair_lock_opaque = os_unfair_lock_opaque - v5;
  os_unfair_lock_unlock(a1 + 3);
  if (v5)
  {
    v15 = v17;
    do
    {
      v16 = *v15++;
      free(v16);
      --v5;
    }

    while (v5);
  }
}

void **std::vector<AGX::InternalSparseQueue::DeferredMapInfo>::~vector[abi:nn200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v3 -= 40;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void AGX::InternalSparseQueue::~InternalSparseQueue(id *this)
{
  v2 = this[5];
  if (v2)
  {
    v3 = this[6];
    v4 = this[5];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v3 -= 40;
      }

      while (v3 != v2);
      v4 = this[5];
    }

    this[6] = v2;
    operator delete(v4);
  }
}

void sub_29D2D85D4(_Unwind_Exception *a1)
{
  std::vector<AGX::InternalSparseQueue::DeferredMapInfo>::~vector[abi:nn200100](v1 + 5);

  _Unwind_Resume(a1);
}

void AGX::InternalSparseQueue::updateMappings(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (atomic_load_explicit((a1 + 64), memory_order_acquire))
  {
    v8 = a4[1];
    if (v8 != *a4)
    {
      if (((v8 - *a4) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    [*(a1 + 8) updateBufferMappings:a2 heap:a3 operations:0 count:0];
    atomic_store(1u, a1);
  }

  else
  {
    os_unfair_lock_lock((a1 + 32));
    v9 = a4[1] - *a4;
    if (v9)
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = *(a1 + 48);
    v10 = *(a1 + 56);
    if (v11 >= v10)
    {
      v13 = *(a1 + 40);
      v14 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - v13) >> 3) + 1;
      if (v14 > 0x666666666666666)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v15 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - v13) >> 3);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x333333333333333)
      {
        v16 = 0x666666666666666;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        if (v16 <= 0x666666666666666)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v17 = 8 * ((v11 - v13) >> 3);
      *v17 = a2;
      *(v17 + 8) = a3;
      *(v17 + 16) = 0uLL;
      *(v17 + 32) = 0;
      v12 = (v17 + 40);
      v18 = v17 - (v11 - v13);
      if (v13 != v11)
      {
        v19 = v13;
        v20 = v17 - (v11 - v13);
        do
        {
          *v20 = *v19;
          *(v20 + 24) = 0;
          *(v20 + 32) = 0;
          *(v20 + 16) = *(v19 + 1);
          *(v20 + 32) = *(v19 + 4);
          *(v19 + 2) = 0;
          *(v19 + 3) = 0;
          *(v19 + 4) = 0;
          v19 += 40;
          v20 += 40;
        }

        while (v19 != v11);
        do
        {
          v21 = *(v13 + 2);
          if (v21)
          {
            *(v13 + 3) = v21;
            operator delete(v21);
          }

          v13 += 40;
        }

        while (v13 != v11);
        v13 = *(a1 + 40);
      }

      *(a1 + 40) = v18;
      *(a1 + 48) = v12;
      *(a1 + 56) = 0;
      if (v13)
      {
        operator delete(v13);
      }
    }

    else
    {
      *v11 = a2;
      *(v11 + 1) = a3;
      *(v11 + 2) = 0;
      *(v11 + 3) = 0;
      v12 = v11 + 40;
      *(v11 + 4) = 0;
    }

    *(a1 + 48) = v12;
    atomic_store(1u, a1);

    os_unfair_lock_unlock((a1 + 32));
  }
}

void sub_29D2D89E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13)
  {
    operator delete(a13);
  }

  os_unfair_lock_unlock(v13 + 8);
  _Unwind_Resume(a1);
}

void sub_29D2D8A14(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AGX::InternalSparseQueue::flushAndSubmitAllMappings(AGX::InternalSparseQueue *this)
{
  if (atomic_load_explicit(this, memory_order_acquire))
  {
    os_unfair_lock_lock(this + 8);
    if (*this)
    {
      os_unfair_lock_assert_owner(this + 8);
      v2 = *(this + 5);
      v3 = *(this + 6);
      if (v2 != v3)
      {
        do
        {
          v4 = *v2;
          v5 = v2[1];
          memset(v11, 0, sizeof(v11));
          v7 = v2[2];
          v6 = v2[3];
          if (v6 != v7)
          {
            if (((v6 - v7) & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          AGX::InternalSparseQueue::updateMappings(this, v4, v5, v11);
          v2 += 5;
        }

        while (v2 != v3);
        v2 = *(this + 5);
        v3 = *(this + 6);
      }

      while (v3 != v2)
      {
        v8 = *(v3 - 3);
        if (v8)
        {
          *(v3 - 2) = v8;
          operator delete(v8);
        }

        v3 -= 5;
      }

      *(this + 6) = v2;
      v9 = *(this + 1);
      v10 = *(this + 2);
      ++*(this + 3);
      [v9 signalEvent:v10 value:?];
      if ([*(this + 2) waitUntilSignaledValue:*(this + 3) timeoutMS:5000])
      {
        atomic_store(0, this);
      }
    }

    os_unfair_lock_unlock(this + 8);
  }
}

BOOL AGX::CounterSamplingContextGen1::setCounterSampleBuffer(AGX::CounterSamplingContextGen1 *this, AGXMTLCounterSampleBuffer *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(AGXMTLCounterSampleBuffer *)a2 buffer];
    if (v4)
    {
      *this = v4;
      return 1;
    }

    fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: *** Error, invalid counter sample storage\n", "agxa_mtl_counters.mm", 417, "setCounterSampleBuffer");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v9 = "agxa_mtl_counters.mm";
      v10 = 1024;
      v11 = 417;
      v12 = 2080;
      v13 = "setCounterSampleBuffer";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** Error, invalid counter sample storage\n", buf, 0x1Cu);
    }

    result = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO);
    if (result)
    {
      *buf = 136315650;
      v9 = "agxa_mtl_counters.mm";
      v10 = 1024;
      v11 = 417;
      v12 = 2080;
      v13 = "setCounterSampleBuffer";
      v6 = MEMORY[0x29EDCA988];
      v7 = "AGX: AGX: %s:%d:%s: *** Error, invalid counter sample storage\n";
      goto LABEL_12;
    }
  }

  else
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: *** Error, counter sample buffer is not of type AGXMTLCounterSampleBuffer\n", "agxa_mtl_counters.mm", 410, "setCounterSampleBuffer");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v9 = "agxa_mtl_counters.mm";
      v10 = 1024;
      v11 = 410;
      v12 = 2080;
      v13 = "setCounterSampleBuffer";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** Error, counter sample buffer is not of type AGXMTLCounterSampleBuffer\n", buf, 0x1Cu);
    }

    result = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO);
    if (result)
    {
      *buf = 136315650;
      v9 = "agxa_mtl_counters.mm";
      v10 = 1024;
      v11 = 410;
      v12 = 2080;
      v13 = "setCounterSampleBuffer";
      v6 = MEMORY[0x29EDCA988];
      v7 = "AGX: AGX: %s:%d:%s: *** Error, counter sample buffer is not of type AGXMTLCounterSampleBuffer\n";
LABEL_12:
      _os_log_impl(&dword_29CA13000, v6, OS_LOG_TYPE_INFO, v7, buf, 0x1Cu);
      return 0;
    }
  }

  return result;
}

uint64_t AGX::CounterSamplingContextGen1::validateSampleIndex(void *a1, unsigned int *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  if (*a2 == -1)
  {
    return 0;
  }

  v4 = [a1 sampleCount];
  if (v2 < v4)
  {
    return 1;
  }

  fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: *** Invalid sample index: %u > %u\n", "agxa_mtl_counters.mm", 497, "validateSampleIndex", v2, v4);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    v7 = "agxa_mtl_counters.mm";
    v8 = 1024;
    v9 = 497;
    v10 = 2080;
    v11 = "validateSampleIndex";
    v12 = 1024;
    v13 = v2;
    v14 = 1024;
    v15 = v4;
    _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** Invalid sample index: %u > %u\n", buf, 0x28u);
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v7 = "agxa_mtl_counters.mm";
    v8 = 1024;
    v9 = 497;
    v10 = 2080;
    v11 = "validateSampleIndex";
    v12 = 1024;
    v13 = v2;
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: %s:%d:%s: *** Invalid sample index: %u > %u\n", buf, 0x28u);
  }

  result = 0;
  *a2 = -1;
  return result;
}

unsigned int *AGX::RenderCounterSamplingContextGen1::RenderCounterSamplingContextGen1(unsigned int *a1, uint64_t a2)
{
  *a1 = 0;
  v3 = a1 + 5;
  *(a1 + 1) = -1;
  v4 = a1 + 2;
  *(a1 + 2) = -1;
  v5 = a1 + 4;
  v6 = *(a2 + 176);
  if (v6)
  {
    v7 = [*(a2 + 176) _descriptorAtIndex:0];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 sampleBuffer];
      v10 = [v8 startOfVertexSampleIndex];
      v11 = [v8 endOfVertexSampleIndex];
      v12 = [v8 startOfFragmentSampleIndex];
      v13 = [v8 endOfFragmentSampleIndex];
      if (v9)
      {
        *v4 = v10;
        a1[3] = v11;
        *v5 = v12;
        *v3 = v13;
        v14 = AGX::CounterSamplingContextGen1::validateSampleIndex(v9, v4);
        v15 = AGX::CounterSamplingContextGen1::validateSampleIndex(v9, a1 + 3);
        v16 = AGX::CounterSamplingContextGen1::validateSampleIndex(v9, v5);
        v17 = AGX::CounterSamplingContextGen1::validateSampleIndex(v9, v3);
        if ((v14 & 1) != 0 || (v15 & 1) != 0 || (v16 & 1) != 0 || v17)
        {
          AGX::CounterSamplingContextGen1::setCounterSampleBuffer(a1, v9);
        }
      }
    }

    v18 = [v6 _descriptorAtIndex:1];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 sampleBuffer];
      v21 = [v19 startOfVertexSampleIndex];
      v22 = [v19 endOfVertexSampleIndex];
      v23 = [v19 startOfFragmentSampleIndex];
      v24 = [v19 endOfFragmentSampleIndex];
      if (v20)
      {
        *v4 = v21;
        a1[3] = v22;
        *v5 = v23;
        *v3 = v24;
        v25 = AGX::CounterSamplingContextGen1::validateSampleIndex(v20, v4);
        v26 = AGX::CounterSamplingContextGen1::validateSampleIndex(v20, a1 + 3);
        v27 = AGX::CounterSamplingContextGen1::validateSampleIndex(v20, v5);
        v28 = AGX::CounterSamplingContextGen1::validateSampleIndex(v20, v3);
        if ((v25 & 1) != 0 || (v26 & 1) != 0 || (v27 & 1) != 0 || v28)
        {
          AGX::CounterSamplingContextGen1::setCounterSampleBuffer(a1, v20);
        }
      }
    }

    v29 = [v6 _descriptorAtIndex:2];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 sampleBuffer];
      v32 = [v30 startOfVertexSampleIndex];
      v33 = [v30 endOfVertexSampleIndex];
      v34 = [v30 startOfFragmentSampleIndex];
      v35 = [v30 endOfFragmentSampleIndex];
      if (v31)
      {
        *v4 = v32;
        a1[3] = v33;
        *v5 = v34;
        *v3 = v35;
        v36 = AGX::CounterSamplingContextGen1::validateSampleIndex(v31, v4);
        v37 = AGX::CounterSamplingContextGen1::validateSampleIndex(v31, a1 + 3);
        v38 = AGX::CounterSamplingContextGen1::validateSampleIndex(v31, v5);
        v39 = AGX::CounterSamplingContextGen1::validateSampleIndex(v31, v3);
        if ((v36 & 1) != 0 || (v37 & 1) != 0 || (v38 & 1) != 0 || v39)
        {
          AGX::CounterSamplingContextGen1::setCounterSampleBuffer(a1, v31);
        }
      }
    }

    v40 = [v6 _descriptorAtIndex:3];
    if (v40)
    {
      v41 = v40;
      v42 = [v40 sampleBuffer];
      v43 = [v41 startOfVertexSampleIndex];
      v44 = [v41 endOfVertexSampleIndex];
      v45 = [v41 startOfFragmentSampleIndex];
      v46 = [v41 endOfFragmentSampleIndex];
      if (v42)
      {
        *v4 = v43;
        a1[3] = v44;
        *v5 = v45;
        *v3 = v46;
        v47 = AGX::CounterSamplingContextGen1::validateSampleIndex(v42, v4);
        v48 = AGX::CounterSamplingContextGen1::validateSampleIndex(v42, a1 + 3);
        v49 = AGX::CounterSamplingContextGen1::validateSampleIndex(v42, v5);
        v50 = AGX::CounterSamplingContextGen1::validateSampleIndex(v42, v3);
        if ((v47 & 1) != 0 || (v48 & 1) != 0 || (v49 & 1) != 0 || v50)
        {
          AGX::CounterSamplingContextGen1::setCounterSampleBuffer(a1, v42);
        }
      }
    }
  }

  return a1;
}

AGX::ComputeCounterSamplingContextGen1 *AGX::ComputeCounterSamplingContextGen1::ComputeCounterSamplingContextGen1(AGX::ComputeCounterSamplingContextGen1 *this, MTLComputePassDescriptor *a2)
{
  *this = 0;
  v3 = (this + 12);
  *(this + 1) = -1;
  v4 = (this + 8);
  v5 = [(MTLComputePassDescriptor *)a2 sampleBufferAttachments];
  if (v5)
  {
    v6 = v5;
    v7 = [(MTLComputePassSampleBufferAttachmentDescriptorArray *)v5 _descriptorAtIndex:0];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 sampleBuffer];
      v10 = [v8 startOfEncoderSampleIndex];
      v11 = [v8 endOfEncoderSampleIndex];
      if (v9)
      {
        *v4 = v10;
        *v3 = v11;
        v12 = AGX::CounterSamplingContextGen1::validateSampleIndex(v9, v4);
        v13 = AGX::CounterSamplingContextGen1::validateSampleIndex(v9, v3);
        if ((v12 & 1) != 0 || v13)
        {
          AGX::CounterSamplingContextGen1::setCounterSampleBuffer(this, v9);
        }
      }
    }

    v14 = [(MTLComputePassSampleBufferAttachmentDescriptorArray *)v6 _descriptorAtIndex:1];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 sampleBuffer];
      v17 = [v15 startOfEncoderSampleIndex];
      v18 = [v15 endOfEncoderSampleIndex];
      if (v16)
      {
        *v4 = v17;
        *v3 = v18;
        v19 = AGX::CounterSamplingContextGen1::validateSampleIndex(v16, v4);
        v20 = AGX::CounterSamplingContextGen1::validateSampleIndex(v16, v3);
        if ((v19 & 1) != 0 || v20)
        {
          AGX::CounterSamplingContextGen1::setCounterSampleBuffer(this, v16);
        }
      }
    }

    v21 = [(MTLComputePassSampleBufferAttachmentDescriptorArray *)v6 _descriptorAtIndex:2];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 sampleBuffer];
      v24 = [v22 startOfEncoderSampleIndex];
      v25 = [v22 endOfEncoderSampleIndex];
      if (v23)
      {
        *v4 = v24;
        *v3 = v25;
        v26 = AGX::CounterSamplingContextGen1::validateSampleIndex(v23, v4);
        v27 = AGX::CounterSamplingContextGen1::validateSampleIndex(v23, v3);
        if ((v26 & 1) != 0 || v27)
        {
          AGX::CounterSamplingContextGen1::setCounterSampleBuffer(this, v23);
        }
      }
    }

    v28 = [(MTLComputePassSampleBufferAttachmentDescriptorArray *)v6 _descriptorAtIndex:3];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 sampleBuffer];
      v31 = [v29 startOfEncoderSampleIndex];
      v32 = [v29 endOfEncoderSampleIndex];
      if (v30)
      {
        *v4 = v31;
        *v3 = v32;
        v33 = AGX::CounterSamplingContextGen1::validateSampleIndex(v30, v4);
        v34 = AGX::CounterSamplingContextGen1::validateSampleIndex(v30, v3);
        if ((v33 & 1) != 0 || v34)
        {
          AGX::CounterSamplingContextGen1::setCounterSampleBuffer(this, v30);
        }
      }
    }
  }

  return this;
}

AGX::BlitCounterSamplingContextGen1 *AGX::BlitCounterSamplingContextGen1::BlitCounterSamplingContextGen1(AGX::BlitCounterSamplingContextGen1 *this, MTLBlitPassDescriptor *a2, MTLResourceStatePassDescriptor *a3)
{
  *this = 0;
  v5 = (this + 12);
  *(this + 1) = -1;
  v6 = (this + 8);
  if (a2)
  {
    v7 = [(MTLBlitPassDescriptor *)a2 sampleBufferAttachments];
    if (v7)
    {
      v8 = v7;
      v9 = [(MTLBlitPassSampleBufferAttachmentDescriptorArray *)v7 _descriptorAtIndex:0];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 sampleBuffer];
        v12 = [v10 startOfEncoderSampleIndex];
        v13 = [v10 endOfEncoderSampleIndex];
        if (v11)
        {
          *v6 = v12;
          *v5 = v13;
          v14 = AGX::CounterSamplingContextGen1::validateSampleIndex(v11, v6);
          v15 = AGX::CounterSamplingContextGen1::validateSampleIndex(v11, v5);
          if ((v14 & 1) != 0 || v15)
          {
            AGX::CounterSamplingContextGen1::setCounterSampleBuffer(this, v11);
          }
        }
      }

      v16 = [(MTLBlitPassSampleBufferAttachmentDescriptorArray *)v8 _descriptorAtIndex:1];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 sampleBuffer];
        v19 = [v17 startOfEncoderSampleIndex];
        v20 = [v17 endOfEncoderSampleIndex];
        if (v18)
        {
          *v6 = v19;
          *v5 = v20;
          v21 = AGX::CounterSamplingContextGen1::validateSampleIndex(v18, v6);
          v22 = AGX::CounterSamplingContextGen1::validateSampleIndex(v18, v5);
          if ((v21 & 1) != 0 || v22)
          {
            AGX::CounterSamplingContextGen1::setCounterSampleBuffer(this, v18);
          }
        }
      }

      v23 = [(MTLBlitPassSampleBufferAttachmentDescriptorArray *)v8 _descriptorAtIndex:2];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 sampleBuffer];
        v26 = [v24 startOfEncoderSampleIndex];
        v27 = [v24 endOfEncoderSampleIndex];
        if (v25)
        {
          *v6 = v26;
          *v5 = v27;
          v28 = AGX::CounterSamplingContextGen1::validateSampleIndex(v25, v6);
          v29 = AGX::CounterSamplingContextGen1::validateSampleIndex(v25, v5);
          if ((v28 & 1) != 0 || v29)
          {
            AGX::CounterSamplingContextGen1::setCounterSampleBuffer(this, v25);
          }
        }
      }

      v30 = [(MTLBlitPassSampleBufferAttachmentDescriptorArray *)v8 _descriptorAtIndex:3];
      if (v30)
      {
        v31 = v30;
        v32 = [v30 sampleBuffer];
        v33 = [v31 startOfEncoderSampleIndex];
        v34 = [v31 endOfEncoderSampleIndex];
        if (v32)
        {
          *v6 = v33;
          *v5 = v34;
          v35 = AGX::CounterSamplingContextGen1::validateSampleIndex(v32, v6);
          v36 = AGX::CounterSamplingContextGen1::validateSampleIndex(v32, v5);
          if ((v35 & 1) != 0 || v36)
          {
            AGX::CounterSamplingContextGen1::setCounterSampleBuffer(this, v32);
          }
        }
      }
    }
  }

  if (a3)
  {
    v37 = [(MTLResourceStatePassDescriptor *)a3 sampleBufferAttachments];
    if (v37)
    {
      v38 = v37;
      v39 = [(MTLResourceStatePassSampleBufferAttachmentDescriptorArray *)v37 _descriptorAtIndex:0];
      if (v39)
      {
        v40 = v39;
        v41 = [v39 sampleBuffer];
        v42 = [v40 startOfEncoderSampleIndex];
        v43 = [v40 endOfEncoderSampleIndex];
        if (v41)
        {
          *v6 = v42;
          *v5 = v43;
          v44 = AGX::CounterSamplingContextGen1::validateSampleIndex(v41, v6);
          v45 = AGX::CounterSamplingContextGen1::validateSampleIndex(v41, v5);
          if ((v44 & 1) != 0 || v45)
          {
            AGX::CounterSamplingContextGen1::setCounterSampleBuffer(this, v41);
          }
        }
      }

      v46 = [(MTLResourceStatePassSampleBufferAttachmentDescriptorArray *)v38 _descriptorAtIndex:1];
      if (v46)
      {
        v47 = v46;
        v48 = [v46 sampleBuffer];
        v49 = [v47 startOfEncoderSampleIndex];
        v50 = [v47 endOfEncoderSampleIndex];
        if (v48)
        {
          *v6 = v49;
          *v5 = v50;
          v51 = AGX::CounterSamplingContextGen1::validateSampleIndex(v48, v6);
          v52 = AGX::CounterSamplingContextGen1::validateSampleIndex(v48, v5);
          if ((v51 & 1) != 0 || v52)
          {
            AGX::CounterSamplingContextGen1::setCounterSampleBuffer(this, v48);
          }
        }
      }

      v53 = [(MTLResourceStatePassSampleBufferAttachmentDescriptorArray *)v38 _descriptorAtIndex:2];
      if (v53)
      {
        v54 = v53;
        v55 = [v53 sampleBuffer];
        v56 = [v54 startOfEncoderSampleIndex];
        v57 = [v54 endOfEncoderSampleIndex];
        if (v55)
        {
          *v6 = v56;
          *v5 = v57;
          v58 = AGX::CounterSamplingContextGen1::validateSampleIndex(v55, v6);
          v59 = AGX::CounterSamplingContextGen1::validateSampleIndex(v55, v5);
          if ((v58 & 1) != 0 || v59)
          {
            AGX::CounterSamplingContextGen1::setCounterSampleBuffer(this, v55);
          }
        }
      }

      v60 = [(MTLResourceStatePassSampleBufferAttachmentDescriptorArray *)v38 _descriptorAtIndex:3];
      if (v60)
      {
        v61 = v60;
        v62 = [v60 sampleBuffer];
        v63 = [v61 startOfEncoderSampleIndex];
        v64 = [v61 endOfEncoderSampleIndex];
        if (v62)
        {
          *v6 = v63;
          *v5 = v64;
          v65 = AGX::CounterSamplingContextGen1::validateSampleIndex(v62, v6);
          v66 = AGX::CounterSamplingContextGen1::validateSampleIndex(v62, v5);
          if ((v65 & 1) != 0 || v66)
          {
            AGX::CounterSamplingContextGen1::setCounterSampleBuffer(this, v62);
          }
        }
      }
    }
  }

  return this;
}

void AGX::Impl::VertexProgramKey::addToDigest(AGX::Impl::VertexProgramKey *this, CC_SHA256state_st *c)
{
  if (atomic_load_explicit(&AGX::defaultVertexDescriptor(void)::once, memory_order_acquire) != -1)
  {
    v40 = &v38;
    data = &v40;
    std::__call_once(&AGX::defaultVertexDescriptor(void)::once, &data, std::__call_once_proxy[abi:nn200100]<std::tuple<AGX::defaultVertexDescriptor(void)::$_0 &&>>);
  }

  v4 = AGX::defaultVertexDescriptor(void)::_desc;
  v5 = *(this + 7);
  v6 = (v5 >> 10) & 3;
  v7 = *AGX::defaultVertexDescriptor(void)::_desc;
  v8 = *(AGX::defaultVertexDescriptor(void)::_desc - v7);
  if (v8 < 0x15)
  {
    if (!v6)
    {
LABEL_7:
      v10 = -v7;
      goto LABEL_10;
    }
  }

  else
  {
    v9 = *(AGX::defaultVertexDescriptor(void)::_desc - v7 + 20);
    if (*(AGX::defaultVertexDescriptor(void)::_desc - v7 + 20))
    {
      LODWORD(v9) = *(AGX::defaultVertexDescriptor(void)::_desc + v9);
    }

    if (v6 == v9)
    {
      goto LABEL_7;
    }
  }

  v40 = ((v5 >> 10) & 3);
  LOWORD(data) = 20;
  CC_SHA256_Update(c, &data, 2u);
  CC_SHA256_Update(c, &v40, 8u);
  v5 = *(this + 7);
  v11 = *v4;
  v10 = -v11;
  v8 = *(v4 - v11);
LABEL_10:
  v12 = (v5 >> 8) & 3;
  if (v8 < 0x19)
  {
    if (v12)
    {
LABEL_14:
      v40 = ((v5 >> 8) & 3);
      LOWORD(data) = 24;
      CC_SHA256_Update(c, &data, 2u);
      CC_SHA256_Update(c, &v40, 8u);
    }
  }

  else
  {
    v13 = *(v4 + v10 + 24);
    if (*(v4 + v10 + 24))
    {
      LODWORD(v13) = *(v4 + v13);
    }

    if (v12 != v13)
    {
      goto LABEL_14;
    }
  }

  if (*(this + 5))
  {
    LOWORD(v40) = 30;
    CC_SHA256_Update(c, &v40, 2u);
    CC_SHA256_Update(c, this + 40, 8u);
  }

  v14 = *(this + 22) & 1;
  v15 = *v4;
  v16 = *(v4 - v15);
  if (v16 < 0x21)
  {
    if (!v14)
    {
LABEL_21:
      v18 = -v15;
      goto LABEL_26;
    }
  }

  else
  {
    v17 = *(v4 - v15 + 32);
    if (*(v4 - v15 + 32))
    {
      LODWORD(v17) = *(v4 + v17);
    }

    if (v14 == v17)
    {
      goto LABEL_21;
    }
  }

  LODWORD(v40) = *(this + 22) & 1;
  LOWORD(data) = 32;
  CC_SHA256_Update(c, &data, 2u);
  CC_SHA256_Update(c, &v40, 4u);
  v19 = *v4;
  v18 = -v19;
  v16 = *(v4 - v19);
LABEL_26:
  v20 = *(this + 7);
  v21 = (v20 >> 12) & 3;
  if (v16 < 0x1D)
  {
    if (!v21)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v22 = *(v4 + v18 + 28);
  if (*(v4 + v18 + 28))
  {
    LODWORD(v22) = *(v4 + v22);
  }

  if (v21 != v22)
  {
LABEL_30:
    v40 = ((v20 >> 12) & 3);
    LOWORD(data) = 28;
    CC_SHA256_Update(c, &data, 2u);
    CC_SHA256_Update(c, &v40, 8u);
    v20 = *(this + 7);
    v23 = *v4;
    v18 = -v23;
    v16 = *(v4 - v23);
  }

LABEL_31:
  v24 = (v20 >> 14) & 0xF;
  if (v16 >= 0x1B && *(v4 + v18 + 26))
  {
    if (v24 == *(v4 + *(v4 + v18 + 26)))
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (v24 != 1)
  {
LABEL_36:
    v40 = ((v20 >> 14) & 0xF);
    LOWORD(data) = 26;
    CC_SHA256_Update(c, &data, 2u);
    CC_SHA256_Update(c, &v40, 8u);
    v20 = *(this + 7);
    v25 = *v4;
    v18 = -v25;
    v16 = *(v4 - v25);
  }

LABEL_37:
  if (v16 >= 0x2B && *(v4 + v18 + 42))
  {
    if (((v20 & 0x80000) == 0) != (*(v4 + *(v4 + v18 + 42)) != 0))
    {
      v26 = (v20 >> 20) & 1;
      goto LABEL_44;
    }
  }

  else if ((v20 & 0x80000) == 0)
  {
    goto LABEL_43;
  }

  v40 = ((v20 >> 19) & 1);
  LOWORD(data) = 42;
  CC_SHA256_Update(c, &data, 2u);
  CC_SHA256_Update(c, &v40, 8u);
  v20 = *(this + 7);
  v27 = *v4;
  v18 = -v27;
  v16 = *(v4 - v27);
LABEL_43:
  v26 = (v20 >> 20) & 1;
  if (v16 < 9)
  {
    goto LABEL_53;
  }

LABEL_44:
  v28 = v4 + v18;
  if (*(v4 + v18 + 8))
  {
    LODWORD(v29) = 0;
    if (v16 < 0xB || !*(v4 + *(v4 + v18 + 8)))
    {
      goto LABEL_54;
    }

    goto LABEL_51;
  }

  if (v16 < 0xB)
  {
LABEL_53:
    LODWORD(v29) = 0;
    goto LABEL_54;
  }

LABEL_51:
  v29 = *(v28 + 5);
  if (*(v28 + 5))
  {
    LODWORD(v29) = *(v4 + v29) == 1;
  }

LABEL_54:
  if (v26 != v29)
  {
    v40 = ((v20 >> 20) & 1);
    LOWORD(data) = 8;
    CC_SHA256_Update(c, &data, 2u);
    CC_SHA256_Update(c, &v40, 8u);
    v20 = *(this + 7);
    v30 = *v4;
    v18 = -v30;
    v16 = *(v4 - v30);
  }

  v31 = (v20 >> 22) & 1;
  if (v16 < 0x11)
  {
    if (!v31)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  v32 = *(v4 + v18 + 16);
  if (*(v4 + v18 + 16))
  {
    LODWORD(v32) = *(v4 + v32);
  }

  if (v31 != v32)
  {
LABEL_60:
    v40 = ((v20 >> 22) & 1);
    LOWORD(data) = 16;
    CC_SHA256_Update(c, &data, 2u);
    CC_SHA256_Update(c, &v40, 8u);
    v20 = *(this + 7);
    v33 = *v4;
    v18 = -v33;
    v16 = *(v4 - v33);
  }

LABEL_61:
  if (v16 < 0x23 || !*(v4 + v18 + 34))
  {
    if ((v20 & 0x2000000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  if (((v20 & 0x2000000) == 0) == (*(v4 + *(v4 + v18 + 34)) != 0))
  {
LABEL_66:
    v40 = ((v20 >> 25) & 1);
    LOWORD(data) = 34;
    CC_SHA256_Update(c, &data, 2u);
    CC_SHA256_Update(c, &v40, 8u);
  }

LABEL_67:
  v34 = (this + 144);
  v35 = *(this + 167);
  if (v35 < 0)
  {
    v35 = *(this + 19);
    if (!v35)
    {
      goto LABEL_75;
    }

    v34 = *v34;
    goto LABEL_74;
  }

  if (*(this + 167))
  {
LABEL_74:
    CC_SHA256_Update(c, v34, v35);
  }

LABEL_75:
  v36 = (this + 168);
  v37 = *(this + 191);
  if (v37 < 0)
  {
    v37 = *(this + 22);
    if (!v37)
    {
      return;
    }

    v36 = *v36;
    goto LABEL_80;
  }

  if (*(this + 191))
  {
LABEL_80:
    CC_SHA256_Update(c, v36, v37);
  }
}

uint64_t flatbuffers::FlatBufferBuilder::Finish(uint64_t this, int a2, const char *a3)
{
  v4 = this;
  v6 = *(this + 40);
  v5 = *(this + 48);
  *(this + 56) = v6;
  v7 = *(this + 72);
  v8 = (-4 - (*(this + 32) + v6 - v5)) & (v7 - 1);
  if (v5 - v6 >= v8)
  {
    *(this + 48) = v5 - v8;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    this = flatbuffers::vector_downward::reallocate(this, v8);
    *(v4 + 48) -= v8;
  }

  v9 = 0;
  do
  {
    *(*(v4 + 48) + v9++) = 0;
  }

  while (v8 != v9);
  v7 = *(v4 + 72);
LABEL_7:
  if (v7 <= 3)
  {
    *(v4 + 72) = 4;
  }

  v10 = *(v4 + 32);
  v11 = *(v4 + 40);
  v12 = *(v4 + 48);
  v13 = (v12 - (v10 + v11)) & 3;
  if (v12 - *(v4 + 56) >= v13)
  {
    v14 = v12 - v13;
    *(v4 + 48) = v14;
    if (!v13)
    {
      v16 = v11 - v14 + v10;
      goto LABEL_17;
    }
  }

  else
  {
    this = flatbuffers::vector_downward::reallocate(v4, (v12 - (v10 + v11)) & 3);
    *(v4 + 48) -= v13;
  }

  v15 = 0;
  do
  {
    *(*(v4 + 48) + v15++) = 0;
  }

  while (v13 != v15);
  v11 = *(v4 + 40);
  v14 = *(v4 + 48);
  v10 = *(v4 + 32);
  v16 = v11 - v14 + v10;
  if (*(v4 + 72) <= 3uLL)
  {
    *(v4 + 72) = 4;
  }

LABEL_17:
  v17 = (v14 - (v10 + v11)) & 3;
  v18 = *(v4 + 56);
  if (v14 - v18 >= v17)
  {
    v19 = v14 - v17;
    *(v4 + 48) = v14 - v17;
    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
    this = flatbuffers::vector_downward::reallocate(v4, v17);
    *(v4 + 48) -= v17;
  }

  v20 = 0;
  do
  {
    *(*(v4 + 48) + v20++) = 0;
  }

  while (v17 != v20);
  v19 = *(v4 + 48);
  v18 = *(v4 + 56);
LABEL_23:
  if ((v19 - v18) <= 3)
  {
    this = flatbuffers::vector_downward::reallocate(v4, 4uLL);
    v19 = *(v4 + 48);
  }

  *(v19 - 4) = v16 - a2 + 4;
  *(v4 + 48) = v19 - 4;
  *(v4 + 71) = 1;
  return this;
}

uint64_t flatbuffers::vector_downward::reallocate(flatbuffers::vector_downward *this, unint64_t a2)
{
  v3 = *(this + 4);
  v4 = *(this + 5);
  v5 = v3 - *(this + 6) + v4;
  v6 = *(this + 7) - v4;
  if (v3)
  {
    v7 = v3 >> 1;
  }

  else
  {
    v7 = *(this + 2);
  }

  if (v7 <= a2)
  {
    v7 = a2;
  }

  v8 = (*(this + 3) + v3 + v7 - 1) & -*(this + 3);
  *(this + 4) = v8;
  v9 = *this;
  if (v4)
  {
    if (!v9)
    {
      v12 = &unk_2A23FA858;
      operator new[]();
    }

    result = (*(*v9 + 32))(v9, v4, v3);
  }

  else
  {
    if (!v9)
    {
      v12 = &unk_2A23FA858;
      operator new[]();
    }

    result = (*(*v9 + 16))(v9, v8);
  }

  v11 = result + *(this + 4) - v5;
  *(this + 5) = result;
  *(this + 6) = v11;
  *(this + 7) = result + v6;
  return result;
}

char *flatbuffers::Allocator::reallocate_downward(flatbuffers::Allocator *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, size_t a5, size_t a6)
{
  v12 = (*(*this + 16))(this, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*this + 24))(this, a2, a3);
  return v12;
}

void flatbuffers::DefaultAllocator::deallocate(flatbuffers::DefaultAllocator *this, unsigned __int8 *a2)
{
  if (a2)
  {
    JUMPOUT(0x29ED520A0);
  }
}

uint64_t flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = this;
  if (a3 == a4 && *(this + 80) != 1)
  {
    return this;
  }

  if (*(this + 72) <= 7uLL)
  {
    *(this + 72) = 8;
  }

  v8 = *(this + 48);
  v7 = *(this + 56);
  v9 = (v8 - (*(this + 32) + *(this + 40))) & 7;
  if (v8 - v7 < v9)
  {
    this = flatbuffers::vector_downward::reallocate(this, (v8 - (*(this + 32) + *(this + 40))) & 7);
    *(v6 + 48) -= v9;
    goto LABEL_8;
  }

  v10 = v8 - v9;
  *(this + 48) = v10;
  if (v9)
  {
LABEL_8:
    v11 = 0;
    do
    {
      *(*(v6 + 48) + v11++) = 0;
    }

    while (v9 != v11);
    v10 = *(v6 + 48);
    v7 = *(v6 + 56);
  }

  if ((v10 - v7) <= 7)
  {
    this = flatbuffers::vector_downward::reallocate(v6, 8uLL);
    v10 = *(v6 + 48);
    v7 = *(v6 + 56);
  }

  *(v10 - 8) = a3;
  v12 = v10 - 8;
  *(v6 + 48) = v12;
  v13 = *(v6 + 32) - v12 + *(v6 + 40);
  if ((v12 - v7) <= 7)
  {
    this = flatbuffers::vector_downward::reallocate(v6, 8uLL);
    v7 = *(v6 + 56);
  }

  *v7 = v13 | (a2 << 32);
  *(v6 + 56) += 8;
  ++*(v6 + 64);
  v14 = *(v6 + 68);
  if (v14 <= a2)
  {
    LOWORD(v14) = a2;
  }

  *(v6 + 68) = v14;
  return this;
}

uint64_t flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(uint64_t this, uint64_t a2)
{
  if (*(this + 80) != 1)
  {
    return this;
  }

  v3 = this;
  if (*(this + 72) <= 3uLL)
  {
    *(this + 72) = 4;
  }

  v5 = *(this + 48);
  v4 = *(this + 56);
  v6 = (v5 - (*(this + 32) + *(this + 40))) & 3;
  if (v5 - v4 < v6)
  {
    this = flatbuffers::vector_downward::reallocate(this, (v5 - (*(this + 32) + *(this + 40))) & 3);
    *(v3 + 48) -= v6;
    goto LABEL_7;
  }

  v7 = v5 - v6;
  *(this + 48) = v7;
  if (v6)
  {
LABEL_7:
    v8 = 0;
    do
    {
      *(*(v3 + 48) + v8++) = 0;
    }

    while (v6 != v8);
    v7 = *(v3 + 48);
    v4 = *(v3 + 56);
  }

  if ((v7 - v4) <= 3)
  {
    this = flatbuffers::vector_downward::reallocate(v3, 4uLL);
    v7 = *(v3 + 48);
    v4 = *(v3 + 56);
  }

  *(v7 - 4) = 0;
  v9 = v7 - 4;
  *(v3 + 48) = v9;
  v10 = *(v3 + 32) - v9 + *(v3 + 40);
  if ((v9 - v4) <= 7)
  {
    this = flatbuffers::vector_downward::reallocate(v3, 8uLL);
    v4 = *(v3 + 56);
  }

  *v4 = v10 | (a2 << 32);
  *(v3 + 56) += 8;
  ++*(v3 + 64);
  v11 = *(v3 + 68);
  if (v11 <= a2)
  {
    LOWORD(v11) = a2;
  }

  *(v3 + 68) = v11;
  return this;
}

uint64_t flatbuffers::FlatBufferBuilder::EndTable(flatbuffers::FlatBufferBuilder *this, __int16 a2)
{
  if (*(this + 9) <= 3uLL)
  {
    *(this + 9) = 4;
  }

  v4 = *(this + 6);
  v5 = *(this + 7);
  v6 = (v4 - (*(this + 8) + *(this + 10))) & 3;
  if (v4 - v5 >= v6)
  {
    v7 = v4 - v6;
    *(this + 6) = v7;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    flatbuffers::vector_downward::reallocate(this, (v4 - (*(this + 8) + *(this + 10))) & 3);
    *(this + 6) -= v6;
  }

  v8 = 0;
  do
  {
    *(*(this + 6) + v8++) = 0;
  }

  while (v6 != v8);
  v7 = *(this + 6);
  v5 = *(this + 7);
LABEL_9:
  if ((v7 - v5) <= 3)
  {
    flatbuffers::vector_downward::reallocate(this, 4uLL);
    v7 = *(this + 6);
    v5 = *(this + 7);
  }

  *(v7 - 4) = 0;
  v9 = v7 - 4;
  *(this + 6) = v9;
  v10 = *(this + 4) - v9 + *(this + 5);
  if ((*(this + 34) + 2) <= 4u)
  {
    v11 = 4;
  }

  else
  {
    v11 = (*(this + 34) + 2);
  }

  *(this + 34) = v11;
  if (v9 - v5 < v11)
  {
    flatbuffers::vector_downward::reallocate(this, v11);
    v9 = *(this + 6);
  }

  *(this + 6) = v9 - v11;
  bzero((v9 - v11), v11);
  v12 = v10 - a2;
  v14 = *(this + 6);
  v13 = *(this + 7);
  v14[1] = v12;
  *v14 = *(this + 34);
  v15 = *(this + 16);
  v16 = (v13 - 8 * v15);
  if (v15)
  {
    v17 = (v13 - 8 * v15);
    do
    {
      *(v14 + v17[2]) = v10 - *v17;
      v17 += 4;
    }

    while (v17 < v13);
  }

  *(this + 7) = v16;
  *(this + 16) = 0;
  *(this + 34) = 0;
  v19 = *(this + 4);
  v18 = *(this + 5);
  LODWORD(v20) = v19 - v14 + v18;
  if (*(this + 81) == 1 && v18 < v16)
  {
    v22 = *v14;
    v23 = v18 + v19;
    v24 = *(this + 5);
    do
    {
      v20 = *v24;
      if (v22 == *(v23 - v20) && !memcmp((v23 - v20), v14, v22))
      {
        v14 = (v14 + (v19 - v14 + v18 - v10));
        *(this + 6) = v14;
        goto LABEL_29;
      }

      ++v24;
    }

    while (v24 < v16);
    LODWORD(v20) = v19 - v14 + v18;
  }

LABEL_29:
  if (v20 == v19 + v18 - v14)
  {
    if ((v14 - v16) <= 3)
    {
      flatbuffers::vector_downward::reallocate(this, 4uLL);
      v16 = *(this + 7);
      v19 = *(this + 4);
      v18 = *(this + 5);
    }

    *v16 = v20;
    *(this + 7) = v16 + 4;
  }

  *(v18 + v19 - v10) = v20 - v10;
  *(this + 70) = 0;
  return v10;
}

uint64_t AGX::Impl::MeshProgramKey::addToDigest(AGX::Impl::MeshProgramKey *this, CC_SHA256state_st *a2)
{
  if (atomic_load_explicit(&AGX::defaultMeshDescriptor(void)::once, memory_order_acquire) != -1)
  {
    data = &v29;
    p_data = &data;
    std::__call_once(&AGX::defaultMeshDescriptor(void)::once, &p_data, std::__call_once_proxy[abi:nn200100]<std::tuple<AGX::defaultMeshDescriptor(void)::$_0 &&>>);
  }

  v4 = AGX::defaultMeshDescriptor(void)::_desc;
  result = (*(*this + 40))(this);
  v6 = *v4;
  v7 = *(v4 - v6);
  if (v7 >= 0x15)
  {
    v8 = *(v4 - v6 + 20);
    if (*(v4 - v6 + 20))
    {
      LODWORD(v8) = *(v4 + v8);
    }

    if (v8 == result)
    {
      goto LABEL_7;
    }

LABEL_9:
    LOBYTE(p_data) = (*(*this + 40))(this);
    LOWORD(data) = 20;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, &p_data, 1u);
    v10 = *v4;
    v9 = -v10;
    v7 = *(v4 - v10);
    goto LABEL_10;
  }

  if (result)
  {
    goto LABEL_9;
  }

LABEL_7:
  v9 = -v6;
LABEL_10:
  v11 = *(this + 13);
  if (v7 < 0x17 || !*(v4 + v9 + 22))
  {
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (((*(this + 13) & 0x200) == 0) == (*(v4 + *(v4 + v9 + 22)) != 0))
  {
LABEL_15:
    LODWORD(data) = (v11 >> 9) & 1;
    LOWORD(p_data) = 22;
    CC_SHA256_Update(a2, &p_data, 2u);
    result = CC_SHA256_Update(a2, &data, 4u);
  }

LABEL_16:
  if (*(this + 5))
  {
    LOWORD(data) = 18;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, this + 40, 8u);
  }

  v12 = *(this + 14);
  v13 = *v4;
  v14 = -v13;
  v15 = v4 - v13;
  v16 = *(v4 - v13);
  if (v16 >= 0x1D && (v17 = *(v15 + 14)) != 0)
  {
    if (((*(this + 14) & 0x20) == 0) != (*(v4 + v17) != 0))
    {
      v18 = v12 & 0xF;
      goto LABEL_25;
    }
  }

  else if ((v12 & 0x20) == 0)
  {
    goto LABEL_24;
  }

  LODWORD(data) = (v12 >> 5) & 1;
  LOWORD(p_data) = 28;
  CC_SHA256_Update(a2, &p_data, 2u);
  result = CC_SHA256_Update(a2, &data, 4u);
  v12 = *(this + 14);
  v19 = *v4;
  v14 = -v19;
  v16 = *(v4 - v19);
LABEL_24:
  v18 = v12 & 0xF;
  if (v16 < 0xF)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (!*(v4 + v14 + 14))
  {
LABEL_28:
    if (v18 == 1)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (*(v4 + *(v4 + v14 + 14)) != v18)
  {
LABEL_29:
    LODWORD(data) = v18;
    LOWORD(p_data) = 14;
    CC_SHA256_Update(a2, &p_data, 2u);
    result = CC_SHA256_Update(a2, &data, 4u);
    v20 = *v4;
    v14 = -v20;
    v16 = *(v4 - v20);
  }

LABEL_30:
  if (v16 < 7)
  {
    if (*(this + 15))
    {
LABEL_34:
      LOWORD(data) = 6;
      CC_SHA256_Update(a2, &data, 2u);
      result = CC_SHA256_Update(a2, this + 60, 4u);
      v22 = *v4;
      v14 = -v22;
      v16 = *(v4 - v22);
    }
  }

  else
  {
    v21 = *(v4 + v14 + 6);
    if (*(v4 + v14 + 6))
    {
      v21 = *(v4 + v21);
    }

    if (v21 != *(this + 15))
    {
      goto LABEL_34;
    }
  }

  if (v16 < 9)
  {
    if (!*(this + 16))
    {
      goto LABEL_39;
    }
  }

  else
  {
    v23 = *(v4 + v14 + 8);
    if (v23)
    {
      v23 = *(v4 + v23);
    }

    if (v23 == *(this + 16))
    {
LABEL_39:
      v24 = *(this + 14);
      if ((v24 & 0x80) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_49;
    }
  }

  LOWORD(data) = 8;
  CC_SHA256_Update(a2, &data, 2u);
  result = CC_SHA256_Update(a2, this + 64, 4u);
  v24 = *(this + 14);
  if ((v24 & 0x80) == 0)
  {
LABEL_40:
    if ((v24 & 0x100) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_49:
  LODWORD(data) = 1;
  LOWORD(p_data) = 0x8000;
  CC_SHA256_Update(a2, &p_data, 2u);
  result = CC_SHA256_Update(a2, &data, 4u);
  if ((*(this + 14) & 0x100) != 0)
  {
LABEL_41:
    LODWORD(data) = 1;
    LOWORD(p_data) = -32767;
    CC_SHA256_Update(a2, &p_data, 2u);
    result = CC_SHA256_Update(a2, &data, 4u);
  }

LABEL_42:
  v25 = (this + 152);
  v26 = *(this + 175);
  if (v26 < 0)
  {
    v26 = *(this + 20);
    if (!v26)
    {
      goto LABEL_54;
    }

    v25 = *v25;
    goto LABEL_53;
  }

  if (*(this + 175))
  {
LABEL_53:
    result = CC_SHA256_Update(a2, v25, v26);
  }

LABEL_54:
  v27 = (this + 176);
  v28 = *(this + 199);
  if (v28 < 0)
  {
    v28 = *(this + 23);
    if (!v28)
    {
      return result;
    }

    v27 = *v27;
    return CC_SHA256_Update(a2, v27, v28);
  }

  if (*(this + 199))
  {
    return CC_SHA256_Update(a2, v27, v28);
  }

  return result;
}

uint64_t AGX::Impl::ObjectProgramKey::addToDigest(AGX::Impl::ObjectProgramKey *this, CC_SHA256state_st *a2)
{
  if (atomic_load_explicit(&AGX::defaultObjectDescriptor(void)::once, memory_order_acquire) != -1)
  {
    data = &v25;
    p_data = &data;
    std::__call_once(&AGX::defaultObjectDescriptor(void)::once, &p_data, std::__call_once_proxy[abi:nn200100]<std::tuple<AGX::defaultObjectDescriptor(void)::$_0 &&>>);
  }

  v4 = AGX::defaultObjectDescriptor(void)::_desc;
  result = (*(*this + 40))(this);
  v6 = *v4;
  v7 = *(v4 - v6);
  if (v7 >= 0x15)
  {
    v8 = *(v4 - v6 + 20);
    if (*(v4 - v6 + 20))
    {
      LODWORD(v8) = *(v4 + v8);
    }

    if (v8 == result)
    {
      goto LABEL_7;
    }

LABEL_9:
    LOBYTE(p_data) = (*(*this + 40))(this);
    LOWORD(data) = 20;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, &p_data, 1u);
    v10 = *v4;
    v9 = -v10;
    v7 = *(v4 - v10);
    goto LABEL_10;
  }

  if (result)
  {
    goto LABEL_9;
  }

LABEL_7:
  v9 = -v6;
LABEL_10:
  v11 = *(this + 13);
  if (v7 < 0x17 || !*(v4 + v9 + 22))
  {
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (((*(this + 13) & 0x200) == 0) == (*(v4 + *(v4 + v9 + 22)) != 0))
  {
LABEL_15:
    LODWORD(data) = (v11 >> 9) & 1;
    LOWORD(p_data) = 22;
    CC_SHA256_Update(a2, &p_data, 2u);
    result = CC_SHA256_Update(a2, &data, 4u);
  }

LABEL_16:
  if (*(this + 5))
  {
    LOWORD(data) = 18;
    CC_SHA256_Update(a2, &data, 2u);
    result = CC_SHA256_Update(a2, this + 40, 8u);
  }

  v12 = *(this + 14);
  v13 = *v4;
  v14 = -v13;
  v15 = v4 - v13;
  v16 = *(v4 - v13);
  if (v16 >= 0x1B && (v17 = *(v15 + 13)) != 0)
  {
    if ((((*(v4 + v17) != 0) ^ v12) & 1) == 0)
    {
      v18 = (v12 >> 3) & 0xF;
      goto LABEL_25;
    }
  }

  else if ((v12 & 1) == 0)
  {
    goto LABEL_24;
  }

  LODWORD(data) = *(this + 14) & 1;
  LOWORD(p_data) = 26;
  CC_SHA256_Update(a2, &p_data, 2u);
  result = CC_SHA256_Update(a2, &data, 4u);
  LODWORD(v12) = *(this + 14);
  v19 = *v4;
  v14 = -v19;
  v16 = *(v4 - v19);
LABEL_24:
  v18 = (v12 >> 3) & 0xF;
  if (v16 < 0xF)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (!*(v4 + v14 + 14))
  {
LABEL_28:
    if (v18 == 1)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (*(v4 + *(v4 + v14 + 14)) != v18)
  {
LABEL_29:
    LODWORD(data) = v18;
    LOWORD(p_data) = 14;
    CC_SHA256_Update(a2, &p_data, 2u);
    result = CC_SHA256_Update(a2, &data, 4u);
    v20 = *v4;
    v14 = -v20;
    v16 = *(v4 - v20);
  }

LABEL_30:
  if (v16 < 7)
  {
    if (*(this + 15))
    {
LABEL_34:
      LOWORD(data) = 6;
      CC_SHA256_Update(a2, &data, 2u);
      result = CC_SHA256_Update(a2, this + 60, 4u);
      v22 = *v4;
      v14 = -v22;
      v16 = *(v4 - v22);
    }
  }

  else
  {
    v21 = *(v4 + v14 + 6);
    if (*(v4 + v14 + 6))
    {
      v21 = *(v4 + v21);
    }

    if (v21 != *(this + 15))
    {
      goto LABEL_34;
    }
  }

  if (v16 < 9)
  {
    if (*(this + 16))
    {
LABEL_39:
      LOWORD(data) = 8;
      CC_SHA256_Update(a2, &data, 2u);
      result = CC_SHA256_Update(a2, this + 64, 4u);
    }
  }

  else
  {
    v23 = *(v4 + v14 + 8);
    if (v23)
    {
      v23 = *(v4 + v23);
    }

    if (v23 != *(this + 16))
    {
      goto LABEL_39;
    }
  }

  v24 = *(this + 14);
  if ((v24 & 4) != 0)
  {
    LODWORD(data) = (v24 >> 1) & 1;
    LOWORD(p_data) = 0x8000;
    CC_SHA256_Update(a2, &p_data, 2u);
    result = CC_SHA256_Update(a2, &data, 4u);
    if ((*(this + 56) & 4) != 0)
    {
      LODWORD(data) = 1;
      LOWORD(p_data) = -32767;
      CC_SHA256_Update(a2, &p_data, 2u);
      return CC_SHA256_Update(a2, &data, 4u);
    }
  }

  return result;
}

void AGX::Impl::FragmentProgramKey::addToDigest(AGX::Impl::FragmentProgramKey *this, CC_SHA256state_st *c)
{
  if (atomic_load_explicit(&AGX::defaultFragmentDescriptor(void)::once, memory_order_acquire) != -1)
  {
    v43 = &v41;
    data = &v43;
    std::__call_once(&AGX::defaultFragmentDescriptor(void)::once, &data, std::__call_once_proxy[abi:nn200100]<std::tuple<AGX::defaultFragmentDescriptor(void)::$_0 &&>>);
  }

  v4 = 0;
  v5 = AGX::defaultFragmentDescriptor(void)::_desc;
  v6 = this + 64;
  LODWORD(v43) = 0;
  do
  {
    if (*&v6[4 * v4])
    {
      LOWORD(data) = 22;
      CC_SHA256_Update(c, &data, 2u);
      CC_SHA256_Update(c, &v43, 4u);
      v7 = &v6[4 * v43];
      LOWORD(data) = 22;
      CC_SHA256_Update(c, &data, 2u);
      CC_SHA256_Update(c, v7, 4u);
      v4 = v43;
    }

    LODWORD(v43) = ++v4;
  }

  while (v4 < 8);
  if (*(this + 6))
  {
    LOWORD(v43) = 22;
    CC_SHA256_Update(c, &v43, 2u);
    CC_SHA256_Update(c, this + 48, 8u);
  }

  v8 = *(this + 10);
  v9 = (v8 >> 6) & 0x1F;
  v10 = *v5;
  v11 = *(v5 - v10);
  if (v11 < 0x27 || !*(v5 - v10 + 38))
  {
    if (v9 != 1)
    {
      goto LABEL_13;
    }

LABEL_15:
    v14 = -v10;
    goto LABEL_16;
  }

  v12 = *(v5 + *(v5 - v10 + 38));
  if (v12 > 0xF)
  {
    if (v9)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (v9 == dword_29D2FEC28[v12])
  {
    goto LABEL_15;
  }

LABEL_13:
  LODWORD(v43) = (v8 >> 6) & 0x1F;
  LOWORD(data) = 38;
  CC_SHA256_Update(c, &data, 2u);
  CC_SHA256_Update(c, &v43, 4u);
  v8 = *(this + 10);
  v13 = *v5;
  v14 = -v13;
  v11 = *(v5 - v13);
LABEL_16:
  v15 = v8 >> 12;
  if (v11 < 0x2B || !*(v5 + v14 + 42))
  {
    if (v15 == 1)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v16 = *(v5 + *(v5 + v14 + 42));
  if (v16 <= 7)
  {
    if (v15 == dword_29D2FEC68[v16])
    {
      goto LABEL_23;
    }

LABEL_22:
    LODWORD(v43) = v8 >> 12;
    LOWORD(data) = 42;
    CC_SHA256_Update(c, &data, 2u);
    CC_SHA256_Update(c, &v43, 4u);
    v8 = *(this + 10);
    v17 = *v5;
    v14 = -v17;
    v11 = *(v5 - v17);
    goto LABEL_23;
  }

  if (v8 >> 12)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (v11 < 9)
  {
    if (v8)
    {
LABEL_27:
      LODWORD(v43) = v8 & 1;
      LOWORD(data) = 8;
      CC_SHA256_Update(c, &data, 2u);
      CC_SHA256_Update(c, &v43, 4u);
      v8 = *(this + 10);
      v19 = *v5;
      v14 = -v19;
      v11 = *(v5 - v19);
    }
  }

  else
  {
    v18 = *(v5 + v14 + 8);
    if (*(v5 + v14 + 8))
    {
      LODWORD(v18) = *(v5 + v18);
    }

    if ((v8 & 1) != v18)
    {
      goto LABEL_27;
    }
  }

  v20 = (v8 >> 1) & 1;
  if (v11 < 0xB)
  {
    if (v20)
    {
LABEL_32:
      LODWORD(v43) = (v8 >> 1) & 1;
      LOWORD(data) = 10;
      CC_SHA256_Update(c, &data, 2u);
      CC_SHA256_Update(c, &v43, 4u);
      v8 = *(this + 10);
      v22 = *v5;
      v14 = -v22;
      v11 = *(v5 - v22);
    }
  }

  else
  {
    v21 = *(v5 + v14 + 10);
    if (*(v5 + v14 + 10))
    {
      LODWORD(v21) = *(v5 + v21);
    }

    if (v20 != v21)
    {
      goto LABEL_32;
    }
  }

  v23 = (v8 >> 2) & 1;
  v24 = v5 + v14;
  if (v11 < 0x13)
  {
    if (v11 < 0x11)
    {
      goto LABEL_45;
    }
  }

  else if (*(v24 + 9) && *(v5 + *(v24 + 9)) != 1.0)
  {
LABEL_45:
    if (v23 == 1)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (!*(v24 + 8))
  {
    goto LABEL_45;
  }

  if (v23 == (*(v5 + *(v24 + 8)) != 0xFFFFFFFFLL))
  {
    goto LABEL_47;
  }

LABEL_46:
  LODWORD(v43) = v23;
  LOWORD(data) = 18;
  CC_SHA256_Update(c, &data, 2u);
  CC_SHA256_Update(c, &v43, 4u);
LABEL_47:
  if (*(this + 7))
  {
    LOWORD(v43) = 28;
    CC_SHA256_Update(c, &v43, 2u);
    CC_SHA256_Update(c, this + 56, 8u);
  }

  v25 = *v5;
  v26 = *(v5 - v25);
  if (v26 < 0x1F)
  {
    LODWORD(v27) = 0;
  }

  else
  {
    v27 = *(v5 - v25 + 30);
    if (*(v5 - v25 + 30))
    {
      LODWORD(v27) = *(v5 + v27);
    }
  }

  if (v27 == *(this + 224))
  {
    v28 = -v25;
  }

  else
  {
    LOWORD(v43) = 30;
    CC_SHA256_Update(c, &v43, 2u);
    CC_SHA256_Update(c, this + 224, 1u);
    v29 = *v5;
    v28 = -v29;
    v26 = *(v5 - v29);
  }

  v30 = *(this + 27);
  if (v26 >= 0x33 && *(v5 + v28 + 50))
  {
    if (((*(this + 27) & 4) == 0) != (*(v5 + *(v5 + v28 + 50)) != 0))
    {
      goto LABEL_63;
    }
  }

  else if ((v30 & 4) == 0)
  {
    goto LABEL_62;
  }

  LODWORD(v43) = (v30 >> 2) & 1;
  LOWORD(data) = 50;
  CC_SHA256_Update(c, &data, 2u);
  CC_SHA256_Update(c, &v43, 4u);
  v30 = *(this + 27);
  v31 = *v5;
  v28 = -v31;
  v26 = *(v5 - v31);
LABEL_62:
  if (v26 < 0x21)
  {
    goto LABEL_66;
  }

LABEL_63:
  if (!*(v5 + v28 + 32))
  {
LABEL_66:
    if ((v30 & 0x40) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  if (((v30 & 0x40) == 0) == (*(v5 + *(v5 + v28 + 32)) != 0))
  {
LABEL_67:
    LODWORD(v43) = (v30 >> 6) & 1;
    LOWORD(data) = 32;
    CC_SHA256_Update(c, &data, 2u);
    CC_SHA256_Update(c, &v43, 4u);
  }

LABEL_68:
  v32 = *(this + 36);
  if (v32)
  {
    LOWORD(v43) = 22;
    CC_SHA256_Update(c, &v43, 2u);
    CC_SHA256_Update(c, this + 112, 0x20u);
    LOBYTE(data) = *(this + 36);
    LOWORD(v43) = 22;
    CC_SHA256_Update(c, &v43, 2u);
    CC_SHA256_Update(c, &data, 1u);
    v32 = *(this + 36);
  }

  v33 = 1;
  v34 = (1 << (BYTE1(v32) & 3));
  v35 = *v5;
  v36 = v5 - v35;
  v37 = *(v5 - v35);
  if (v37 >= 0xD)
  {
    if (!*(v36 + 6))
    {
      if (v34 == 1)
      {
        goto LABEL_74;
      }

LABEL_76:
      LOBYTE(data) = 1 << (BYTE1(v32) & 3);
      LOWORD(v43) = 12;
      CC_SHA256_Update(c, &v43, 2u);
      CC_SHA256_Update(c, &data, 1u);
      v32 = *(this + 36);
      v39 = *v5;
      v38 = -v39;
      v37 = *(v5 - v39);
      goto LABEL_77;
    }

    v33 = *(v5 + *(v36 + 6));
  }

  if (v33 != v34)
  {
    goto LABEL_76;
  }

LABEL_74:
  v38 = -v35;
LABEL_77:
  v40 = (1 << ((v32 >> 10) & 3));
  if (v37 < 0xF || !*(v5 + v38 + 14) || *(v5 + *(v5 + v38 + 14)) != v40)
  {
    LOBYTE(data) = v40;
    LOWORD(v43) = 14;
    CC_SHA256_Update(c, &v43, 2u);
    CC_SHA256_Update(c, &data, 1u);
  }

  if (*(this + 109))
  {
    LODWORD(v43) = 1;
    LOWORD(data) = 0x8000;
    CC_SHA256_Update(c, &data, 2u);
    CC_SHA256_Update(c, &v43, 4u);
  }
}

uint64_t flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(uint64_t this, uint64_t a2)
{
  if (*(this + 80) != 1)
  {
    return this;
  }

  v3 = this;
  if (*(this + 72) <= 1uLL)
  {
    *(this + 72) = 2;
  }

  v5 = *(this + 48);
  v4 = *(this + 56);
  v6 = (v5 - (*(this + 32) + *(this + 40))) & 1;
  if (v5 - v4 < v6)
  {
    this = flatbuffers::vector_downward::reallocate(this, (v5 - (*(this + 32) + *(this + 40))) & 1);
    *(v3 + 48) -= v6;
    goto LABEL_7;
  }

  v7 = v5 - v6;
  *(this + 48) = v7;
  if (v6)
  {
LABEL_7:
    v8 = 0;
    do
    {
      *(*(v3 + 48) + v8++) = 0;
    }

    while (v6 != v8);
    v7 = *(v3 + 48);
    v4 = *(v3 + 56);
  }

  if ((v7 - v4) <= 1)
  {
    this = flatbuffers::vector_downward::reallocate(v3, 2uLL);
    v7 = *(v3 + 48);
    v4 = *(v3 + 56);
  }

  *(v7 - 2) = 0;
  v9 = v7 - 2;
  *(v3 + 48) = v9;
  v10 = *(v3 + 32) - v9 + *(v3 + 40);
  if ((v9 - v4) <= 7)
  {
    this = flatbuffers::vector_downward::reallocate(v3, 8uLL);
    v4 = *(v3 + 56);
  }

  *v4 = v10 | (a2 << 32);
  *(v3 + 56) += 8;
  ++*(v3 + 64);
  v11 = *(v3 + 68);
  if (v11 <= a2)
  {
    LOWORD(v11) = a2;
  }

  *(v3 + 68) = v11;
  return this;
}

void AGX::Impl::TileProgramKey::addToDigest(AGX::Impl::TileProgramKey *this, CC_SHA256state_st *c)
{
  if (atomic_load_explicit(&AGX::defaultTileDescriptor(void)::once, memory_order_acquire) != -1)
  {
    data = &v24;
    p_data = &data;
    std::__call_once(&AGX::defaultTileDescriptor(void)::once, &p_data, std::__call_once_proxy[abi:nn200100]<std::tuple<AGX::defaultTileDescriptor(void)::$_0 &&>>);
  }

  v4 = AGX::defaultTileDescriptor(void)::_desc;
  if (*(this + 6))
  {
    LOWORD(data) = 14;
    CC_SHA256_Update(c, &data, 2u);
    CC_SHA256_Update(c, this + 48, 8u);
  }

  v5 = *v4;
  v6 = -v5;
  v7 = v4 - v5;
  v8 = *(v4 - v5);
  if (v8 < 5 || (v9 = *(v7 + 2)) == 0)
  {
    if ((*(this + 39) & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((*(v4 + v9) != 0) != (*(this + 39) & 1))
  {
LABEL_10:
    LODWORD(data) = *(this + 39) & 1;
    LOWORD(p_data) = 4;
    CC_SHA256_Update(c, &p_data, 2u);
    CC_SHA256_Update(c, &data, 4u);
    v10 = *v4;
    v6 = -v10;
    v8 = *(v4 - v10);
  }

LABEL_11:
  if (v8 < 7)
  {
    if (*(this + 38))
    {
LABEL_15:
      LOWORD(data) = 6;
      CC_SHA256_Update(c, &data, 2u);
      CC_SHA256_Update(c, this + 152, 4u);
    }
  }

  else
  {
    v11 = *(v4 + v6 + 6);
    if (v11)
    {
      v11 = *(v4 + v11);
    }

    if (v11 != *(this + 38))
    {
      goto LABEL_15;
    }
  }

  if (*(this + 7))
  {
    LOWORD(data) = 16;
    CC_SHA256_Update(c, &data, 2u);
    CC_SHA256_Update(c, this + 56, 8u);
  }

  v12 = *(this + 27);
  v13 = (v4 - *v4);
  if (*v13 < 0x13u || (v14 = v13[9]) == 0)
  {
    if ((v12 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (((*(this + 27) & 0x40) == 0) == (*(v4 + v14) != 0))
  {
LABEL_23:
    LODWORD(data) = (v12 >> 6) & 1;
    LOWORD(p_data) = 18;
    CC_SHA256_Update(c, &p_data, 2u);
    CC_SHA256_Update(c, &data, 4u);
  }

LABEL_24:
  v15 = *(this + 36);
  if (v15)
  {
    LOWORD(data) = 14;
    CC_SHA256_Update(c, &data, 2u);
    CC_SHA256_Update(c, this + 112, 0x20u);
    LOBYTE(p_data) = *(this + 36);
    LOWORD(data) = 14;
    CC_SHA256_Update(c, &data, 2u);
    CC_SHA256_Update(c, &p_data, 1u);
    v15 = *(this + 36);
  }

  v16 = 1;
  v17 = (1 << (BYTE1(v15) & 3));
  v18 = *v4;
  v19 = v4 - v18;
  v20 = *(v4 - v18);
  if (v20 >= 0xB)
  {
    if (!*(v19 + 5))
    {
      if (v17 == 1)
      {
        goto LABEL_30;
      }

LABEL_34:
      LOBYTE(p_data) = 1 << (BYTE1(v15) & 3);
      LOWORD(data) = 10;
      CC_SHA256_Update(c, &data, 2u);
      CC_SHA256_Update(c, &p_data, 1u);
      v15 = *(this + 36);
      v22 = *v4;
      v21 = -v22;
      v20 = *(v4 - v22);
      goto LABEL_35;
    }

    v16 = *(v4 + *(v19 + 5));
  }

  if (v16 != v17)
  {
    goto LABEL_34;
  }

LABEL_30:
  v21 = -v18;
LABEL_35:
  v23 = (1 << ((v15 >> 10) & 3));
  if (v20 < 0xD || !*(v4 + v21 + 12) || *(v4 + *(v4 + v21 + 12)) != v23)
  {
    LOBYTE(p_data) = v23;
    LOWORD(data) = 12;
    CC_SHA256_Update(c, &data, 2u);
    CC_SHA256_Update(c, &p_data, 1u);
  }
}

void AGX::Impl::ComputeProgramKey::addToDigest(AGX::Impl::ComputeProgramKey *this, CC_SHA256state_st *c)
{
  if (atomic_load_explicit(&AGX::defaultComputeDescriptor(void)::once, memory_order_acquire) != -1)
  {
    data = &v18;
    p_data = &data;
    std::__call_once(&AGX::defaultComputeDescriptor(void)::once, &p_data, std::__call_once_proxy[abi:nn200100]<std::tuple<AGX::defaultComputeDescriptor(void)::$_0 &&>>);
  }

  v4 = AGX::defaultComputeDescriptor(void)::_desc;
  if (*(this + 5))
  {
    LOWORD(data) = 12;
    CC_SHA256_Update(c, &data, 2u);
    CC_SHA256_Update(c, this + 40, 8u);
  }

  v5 = *v4;
  v6 = *(v4 - v5);
  if (v6 >= 7)
  {
    v7 = *(v4 - v5 + 6);
    if (*(v4 - v5 + 6))
    {
      v7 = *(v4 + v7);
    }

    if (v7 == *(this + 12))
    {
      goto LABEL_9;
    }

LABEL_11:
    LOWORD(data) = 6;
    CC_SHA256_Update(c, &data, 2u);
    CC_SHA256_Update(c, this + 48, 4u);
    v9 = *v4;
    v8 = -v9;
    v6 = *(v4 - v9);
    goto LABEL_12;
  }

  if (*(this + 12))
  {
    goto LABEL_11;
  }

LABEL_9:
  v8 = -v5;
LABEL_12:
  v10 = *(this + 14);
  if (v6 >= 5 && *(v4 + v8 + 4))
  {
    if ((*(v4 + *(v4 + v8 + 4)) != 0) == (*(this + 14) & 1))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v10)
  {
LABEL_17:
    LODWORD(data) = *(this + 14) & 1;
    LOWORD(p_data) = 4;
    CC_SHA256_Update(c, &p_data, 2u);
    CC_SHA256_Update(c, &data, 4u);
    v10 = *(this + 14);
    v11 = *v4;
    v8 = -v11;
    v6 = *(v4 - v11);
  }

LABEL_18:
  if (v6 >= 0x15 && *(v4 + v8 + 20))
  {
    if (((v10 & 2) == 0) != (*(v4 + *(v4 + v8 + 20)) != 0))
    {
      v13 = this + 88;
      v12 = *(this + 88);
      goto LABEL_25;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_24;
  }

  LODWORD(data) = (v10 >> 1) & 1;
  LOWORD(p_data) = 20;
  CC_SHA256_Update(c, &p_data, 2u);
  CC_SHA256_Update(c, &data, 4u);
  v14 = *v4;
  v8 = -v14;
  v6 = *(v4 - v14);
LABEL_24:
  v13 = this + 88;
  v12 = *(this + 88);
  if (v6 < 0xF)
  {
    if (!*(this + 88))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_25:
  v15 = *(v4 + v8 + 14);
  if (*(v4 + v8 + 14))
  {
    LODWORD(v15) = *(v4 + v15);
  }

  if (v15 != v12)
  {
LABEL_28:
    LOWORD(data) = 14;
    CC_SHA256_Update(c, &data, 2u);
    CC_SHA256_Update(c, v13, 1u);
    v16 = *v4;
    v8 = -v16;
    v6 = *(v4 - v16);
  }

LABEL_29:
  v17 = *(this + 14);
  if (v6 >= 0x11 && *(v4 + v8 + 16))
  {
    if (((*(this + 14) & 0x20) == 0) != (*(v4 + *(v4 + v8 + 16)) != 0))
    {
      return;
    }
  }

  else if ((v17 & 0x20) == 0)
  {
    return;
  }

  LODWORD(data) = (v17 >> 5) & 1;
  LOWORD(p_data) = 16;
  CC_SHA256_Update(c, &p_data, 2u);
  CC_SHA256_Update(c, &data, 4u);
}

uint64_t AGX::GetSerializedVertexFormat(AGX *this, void *a2, char **a3, unint64_t *a4, char **a5)
{
  memset(&v92, 0, sizeof(v92));
  memset(&v91, 0, sizeof(v91));
  *a3 = 0;
  *a2 = 0;
  v5 = (this - *this);
  v6 = *v5;
  if (v6 < 9 || !v5[4] || (v7 = *(this + v5[4]), (v7 - 3) <= 0xFFFFFFFD))
  {
    v8 = "Error: pipeline must be render or compute";
LABEL_5:
    std::string::append(&v92, v8);
    goto LABEL_6;
  }

  if (v7 != 1)
  {
    if (v6 >= 0xB && v7 == 2)
    {
      v13 = v5[5];
      if (v13)
      {
        v13 = (v13 + this + *(v13 + this));
      }
    }

    else
    {
      v13 = 0;
    }

    v23 = (v13 - *v13);
    if (*v23 >= 7u && (v24 = v23[3]) != 0)
    {
      v25 = (v13 + v24 + *(v13 + v24));
    }

    else
    {
      v25 = 0;
    }

    v26 = (v25 - *v25);
    if (*v26 >= 0xBu)
    {
      v27 = v26[5];
      if (v27)
      {
        v28 = (v25 + v27 + *(v25 + v27));
        v29 = (v28 - *v28);
        v30 = *v29;
        if (v29[2])
        {
          v22 = (v28 + v29[2] + *(v28 + v29[2]));
        }

        else
        {
          v22 = 0;
        }

        if (v30 >= 7)
        {
          if (v29[3])
          {
            v31 = (v28 + v29[3] + *(v28 + v29[3]));
          }

          else
          {
            v31 = 0;
          }

          if (v30 < 0xB)
          {
            v35 = 0;
            if (v30 < 9)
            {
              v36 = 0;
              v34 = 0;
              goto LABEL_53;
            }
          }

          else if (v29[5])
          {
            v35 = *(v28 + v29[5]);
          }

          else
          {
            v35 = 0;
          }

          v89 = v29[4];
          v36 = 0;
          if (v89)
          {
            v34 = *(v28 + v89);
          }

          else
          {
            v34 = 0;
          }

          goto LABEL_53;
        }

        v31 = 0;
        goto LABEL_52;
      }
    }

LABEL_6:
    v9 = 0;
    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_136;
    }

    goto LABEL_7;
  }

  if (v6 < 0xB)
  {
    v11 = 0;
  }

  else
  {
    v11 = v5[5];
    if (v11)
    {
      v11 = (v11 + this + *(v11 + this));
    }
  }

  v14 = (v11 - *v11);
  if (*v14 >= 9u && (v15 = v14[4]) != 0)
  {
    v16 = (v11 + v15 + *(v11 + v15));
  }

  else
  {
    v16 = 0;
  }

  v17 = (v16 - *v16);
  v18 = *v17;
  if (v18 < 7 || !v17[3])
  {
    goto LABEL_6;
  }

  v19 = (v16 + v17[3] + *(v16 + v17[3]));
  v20 = (v19 - *v19);
  v21 = *v20;
  if (v21 < 5)
  {
    v22 = 0;
LABEL_48:
    v31 = 0;
    goto LABEL_49;
  }

  if (v20[2])
  {
    v22 = (v19 + v20[2] + *(v19 + v20[2]));
  }

  else
  {
    v22 = 0;
  }

  if (v21 < 7)
  {
    goto LABEL_48;
  }

  v32 = v20[3];
  if (!v32)
  {
    goto LABEL_48;
  }

  v31 = (v19 + v32 + *(v19 + v32));
LABEL_49:
  if (v18 < 0x13 || (v33 = v17[9]) == 0)
  {
LABEL_52:
    v36 = 0;
    v34 = 0;
    v35 = 0;
    goto LABEL_53;
  }

  v34 = 0;
  v35 = 0;
  v36 = *(v16 + v33);
LABEL_53:
  v37 = *v22;
  *v99 = v36;
  *v98 = v35;
  *v97 = v34;
  if (!v37)
  {
LABEL_105:
    v8 = "No active buffer found ";
    goto LABEL_5;
  }

  v38 = v22 + 1;
  v40 = v31 + 1;
  v39 = *v31;
  if (v39)
  {
    v41 = 0;
    v42 = 0;
    while (1)
    {
      v43 = (&v38[v41] + v38[v41]);
      v44 = (v43 - *v43);
      v45 = *v44;
      if (v45 > 4 && v44[2] && *(v43 + v44[2]))
      {
        if (v45 < 9 || (v46 = v44[4]) == 0)
        {
          LOBYTE(v47) = 0;
LABEL_65:
          v42 |= 1 << v47;
          goto LABEL_66;
        }

        v47 = *(v43 + v46);
        if (v47 <= 0x1E)
        {
          goto LABEL_65;
        }
      }

LABEL_66:
      for (i = 0; i != v39; ++i)
      {
        v49 = (&v40[i] + v40[i]);
        v50 = (v49 - *v49);
        if (*v50 >= 9u)
        {
          v51 = v50[4];
          if (v51)
          {
            if (*(v49 + v51))
            {
              continue;
            }
          }
        }

        if (i >= 0x1F)
        {
LABEL_148:
          abort();
        }

        v42 &= ~(1 << i);
      }

      if (++v41 == v37)
      {
        goto LABEL_84;
      }
    }
  }

  v52 = 0;
  v42 = 0;
  do
  {
    v54 = v22[v52 + 1];
    v55 = v54 - *(&v22[v52 + 1] + v54);
    v56 = &v22[v52] + v55;
    v57 = *(v56 + 2);
    if (v57 >= 5)
    {
      v58 = *(v56 + 4);
      if (v58)
      {
        if (*(&v22[v52 + 1] + v54 + v58))
        {
          if (v57 < 9 || (v59 = *(&v22[v52 + 3] + v55)) == 0)
          {
            LOBYTE(v53) = 0;
LABEL_75:
            v42 |= 1 << v53;
            goto LABEL_76;
          }

          v53 = *(&v22[v52 + 1] + v54 + v59);
          if (v53 <= 0x1E)
          {
            goto LABEL_75;
          }
        }
      }
    }

LABEL_76:
    ++v52;
  }

  while (v37 != v52);
LABEL_84:
  if ((v42 & 0x7FFFFFFF) == 0)
  {
    goto LABEL_105;
  }

  v60 = 0;
  *v93 = 0;
  v61 = a3;
  while (2)
  {
    v63 = (&v38[v60] + v38[v60]);
    v64 = (v63 - *v63);
    v65 = *v64;
    if (v65 >= 5)
    {
      if (v64[2])
      {
        v66 = *(v63 + v64[2]);
        if (*(v63 + v64[2]))
        {
          if (v65 < 9)
          {
            LOBYTE(v67) = 0;
LABEL_97:
            if ((v42 >> v67))
            {
              *v96 = v66;
              std::string::append(&v91, v93, 4uLL);
              std::string::append(&v91, v96, 4uLL);
              v68 = (v63 - *v63);
              if (*v68 < 9u)
              {
                LODWORD(v69) = 0;
              }

              else
              {
                v69 = v68[4];
                if (v69)
                {
                  LODWORD(v69) = *(v63 + v69);
                }
              }

              *v95 = v69;
              std::string::append(&v91, v95, 4uLL);
              v70 = (v63 - *v63);
              if (*v70 < 7u)
              {
                v62 = 0;
              }

              else
              {
                v62 = v70[3];
                if (v62)
                {
                  v62 = *(v63 + v62);
                }
              }

              *__s = v62;
              std::string::append(&v91, __s, 8uLL);
              v60 = *v93;
              LODWORD(v37) = *v22;
              a3 = v61;
            }
          }

          else
          {
            v67 = v64[4];
            if (!v67)
            {
              goto LABEL_97;
            }

            LODWORD(v67) = *(v63 + v67);
            if (v67 <= 0x1E)
            {
              goto LABEL_97;
            }
          }
        }
      }
    }

    *v93 = ++v60;
    if (v60 < v37)
    {
      continue;
    }

    break;
  }

  *v96 = 0;
  v71 = *v31;
  if (*v31)
  {
    v72 = 0;
    v73 = 0;
    do
    {
      v75 = (&v40[v73] + v40[v73]);
      v76 = (v75 - *v75);
      if (*v76 >= 9u)
      {
        v77 = v76[4];
        if (v77)
        {
          if (v73 <= 30)
          {
            v78 = *(v75 + v77);
            if (v78)
            {
              if (v73 >= 0x1F)
              {
                goto LABEL_148;
              }

              if ((v42 >> v73))
              {
                *__s = v78;
                std::string::append(&v91, v96, 4uLL);
                std::string::append(&v91, __s, 8uLL);
                v79 = (v75 - *v75);
                if (*v79 >= 5u && (v80 = v79[2]) != 0)
                {
                  v81 = *(v75 + v80);
                }

                else
                {
                  v81 = 1;
                }

                *v95 = v81;
                std::string::append(&v91, v95, 4uLL);
                v82 = (v75 - *v75);
                if (*v82 >= 7u && (v83 = v82[3]) != 0)
                {
                  v74 = *(v75 + v83);
                }

                else
                {
                  v74 = 1;
                }

                v72 |= *v95 == 4;
                *v93 = v74;
                std::string::append(&v91, v93, 8uLL);
                v73 = *v96;
                v71 = *v31;
              }

              a3 = v61;
            }
          }
        }
      }

      *v96 = ++v73;
    }

    while (v73 < v71);
    if (((v36 != 0) & v72) != 0)
    {
      std::string::append(&v91, v99, 2uLL);
      a3 = v61;
    }
  }

  if (v35 | v34)
  {
    std::string::append(&v91, v98, 2uLL);
    std::string::append(&v91, v97, 2uLL);
    a3 = v61;
  }

  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v91.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v91.__r_.__value_.__l.__size_;
  }

  *a3 = size;
  v85 = a3;
  v86 = malloc_type_malloc(size, 0x100004077774924uLL);
  v87 = v91.__r_.__value_.__r.__words[0];
  *a2 = v86;
  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v88 = &v91;
  }

  else
  {
    v88 = v87;
  }

  memcpy(v86, v88, *v85);
  v9 = 1;
  if ((SHIBYTE(v91.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_7:
    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_137;
    }

    return v9;
  }

LABEL_136:
  operator delete(v91.__r_.__value_.__l.__data_);
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_137:
    operator delete(v92.__r_.__value_.__l.__data_);
  }

  return v9;
}

void std::vector<MTLUINT256_t>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = v3 - *a1;
    v9 = v8 >> 5;
    v10 = (v8 >> 5) + 1;
    if (v10 >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 4 > v10)
    {
      v10 = v11 >> 4;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFE0)
    {
      v12 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = (32 * v9);
    v14 = a2[1];
    *v13 = *a2;
    v13[1] = v14;
    v6 = 32 * v9 + 32;
    memcpy(0, v7, v8);
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

void *ProgramKeyDynamicLibrariesImpl<true>::ProgramKeyDynamicLibrariesImpl(void *a1, void *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = [a2 count];
  v5 = v4;
  if (v4 > (a1[2] - *a1) >> 5)
  {
    if (!(v4 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v4)
  {
    v6 = 0;
    do
    {
      v7 = [objc_msgSend(a2 objectAtIndex:{v6), "libraryUUID"}];
      v8 = v7[1];
      v10[0] = *v7;
      v10[1] = v8;
      std::vector<MTLUINT256_t>::push_back[abi:nn200100](a1, v10);
      ++v6;
    }

    while (v5 != v6);
  }

  return a1;
}

void sub_29D2DFB84(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *ProgramKeyDynamicLibrariesImpl<false>::ProgramKeyDynamicLibrariesImpl(void *a1, void *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = [a2 count];
  v5 = v4;
  if (v4 > (a1[2] - *a1) >> 5)
  {
    if (!(v4 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (v4)
  {
    v6 = 0;
    do
    {
      v7 = [objc_msgSend(a2 objectAtIndex:{v6), "libraryUUID"}];
      v8 = v7[1];
      v10[0] = *v7;
      v10[1] = v8;
      std::vector<MTLUINT256_t>::push_back[abi:nn200100](a1, v10);
      ++v6;
    }

    while (v5 != v6);
  }

  return a1;
}

void sub_29D2DFCE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *ProgramKeyVisibleFunctionTableImpl<false>::ProgramKeyVisibleFunctionTableImpl(void *a1, void *a2)
{
  v24 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = [a2 functions];
  if ([v4 count])
  {
    v5 = [objc_msgSend(v4 objectAtIndexedSubscript:{0), "bitCodeHash"}];
    v6 = v5[1];
    v22 = *v5;
    v23 = v6;
    if ([v4 count] >= 2)
    {
      v16 = v22;
      v18 = v23;
      v7 = 1;
      do
      {
        v8 = [objc_msgSend(v4 objectAtIndexedSubscript:{v7), "bitCodeHash"}];
        v16 = veorq_s8(*v8, v16);
        v18 = veorq_s8(v8[1], v18);
        ++v7;
      }

      while (v7 < [v4 count]);
      v22 = v16;
      v23 = v18;
    }

    std::vector<MTLUINT256_t>::push_back[abi:nn200100](a1, &v22);
    v20 = 0u;
    v21 = 0u;
    std::vector<MTLUINT256_t>::push_back[abi:nn200100](a1, &v20);
  }

  v9 = [a2 privateFunctions];
  if ([v9 count])
  {
    v10 = [objc_msgSend(v9 objectAtIndexedSubscript:{0), "bitCodeHash"}];
    v11 = v10[1];
    v22 = *v10;
    v23 = v11;
    if ([v9 count] >= 2)
    {
      v17 = v22;
      v19 = v23;
      v12 = 1;
      do
      {
        v13 = [objc_msgSend(v9 objectAtIndexedSubscript:{v12), "bitCodeHash"}];
        v17 = veorq_s8(*v13, v17);
        v19 = veorq_s8(v13[1], v19);
        ++v12;
      }

      while (v12 < [v9 count]);
      v22 = v17;
      v23 = v19;
    }

    std::vector<MTLUINT256_t>::push_back[abi:nn200100](a1, &v22);
    *&v14 = 0x101010101010101;
    *(&v14 + 1) = 0x101010101010101;
    v20 = v14;
    v21 = v14;
    std::vector<MTLUINT256_t>::push_back[abi:nn200100](a1, &v20);
  }

  return a1;
}

void sub_29D2DFED8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::MeshProgramKey::initCommon<MTLRenderPipelineDescriptor>(uint64_t a1, void *a2)
{
  v4 = [a2 driverCompilerOptions];
  v5 = [objc_msgSend(objc_msgSend(a2 "meshLinkedFunctions")];
  v6 = [a2 supportAddingMeshBinaryFunctions];
  if ([objc_msgSend(v4 objectForKeyedSubscript:{@"disableTextureRWBoundsCheck", "BOOLValue"}])
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 52) = *(a1 + 52) & 0xFFFFFFFB | v7;
  *(a1 + 52) = *(a1 + 52) & 0xFC0003FF | ([objc_msgSend(v4 objectForKeyedSubscript:{@"maxNumRegisters", "unsignedIntValue"}] << 10);
  if ([objc_msgSend(v4 objectForKeyedSubscript:{@"agx_enable_stack_shadow", "BOOLValue"}])
  {
    v8 = 0x8000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 52) & 0xF7FFFDFF;
  if (v5)
  {
    v10 = 1;
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    v11 = 512;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 48) = 0;
  *(a1 + 52) = v8 | v9 | v11;
  v12 = [a2 meshBuffers];
  v13 = 0;
  for (i = 0; i != 31; ++i)
  {
    v15 = [objc_msgSend(v12 _descriptorAtIndex:{i), "mutability"}];
    v16 = 1 << i;
    if (v15 != 1)
    {
      v16 = 0;
    }

    v13 |= v16;
  }

  *(a1 + 40) = v13;
  *(a1 + 96) = *(a1 + 96) & 0xFFFFFFFE | [a2 supportIndirectCommandBuffers];
  *(a1 + 60) = [a2 maxTotalThreadsPerMeshThreadgroup];
  *(a1 + 64) = 0;
  *(a1 + 56) = *(a1 + 56) & 0xFFFFFFF0 | [a2 maxVertexAmplificationCount] & 0xF;
  result = [a2 needsCustomBorderColorSamplers];
  if (result)
  {
    v18 = 32;
  }

  else
  {
    v18 = 0;
  }

  *(a1 + 56) = *(a1 + 56) & 0xFFFFFFDF | v18;
  return result;
}

uint64_t AGX::MeshProgramKey::initCommon<MTLMeshRenderPipelineDescriptor>(uint64_t a1, void *a2)
{
  v4 = [a2 driverCompilerOptions];
  v5 = [objc_msgSend(objc_msgSend(a2 "meshLinkedFunctions")];
  v6 = [a2 supportAddingMeshBinaryFunctions];
  if ([objc_msgSend(v4 objectForKeyedSubscript:{@"disableTextureRWBoundsCheck", "BOOLValue"}])
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 52) = *(a1 + 52) & 0xFFFFFFFB | v7;
  *(a1 + 52) = *(a1 + 52) & 0xFC0003FF | ([objc_msgSend(v4 objectForKeyedSubscript:{@"maxNumRegisters", "unsignedIntValue"}] << 10);
  if ([objc_msgSend(v4 objectForKeyedSubscript:{@"agx_enable_stack_shadow", "BOOLValue"}])
  {
    v8 = 0x8000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 52) & 0xF7FFFDFF;
  if (v5)
  {
    v10 = 1;
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    v11 = 512;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 48) = 0;
  *(a1 + 52) = v8 | v9 | v11;
  v12 = [a2 meshBuffers];
  v13 = 0;
  for (i = 0; i != 31; ++i)
  {
    v15 = [objc_msgSend(v12 _descriptorAtIndex:{i), "mutability"}];
    v16 = 1 << i;
    if (v15 != 1)
    {
      v16 = 0;
    }

    v13 |= v16;
  }

  *(a1 + 40) = v13;
  *(a1 + 96) = *(a1 + 96) & 0xFFFFFFFE | [a2 supportIndirectCommandBuffers];
  v17 = [a2 maxTotalThreadsPerMeshThreadgroup];
  v18 = [a2 payloadMemoryLength];
  *(a1 + 60) = v17;
  *(a1 + 64) = v18;
  *(a1 + 56) = *(a1 + 56) & 0xFFFFFFF0 | [a2 maxVertexAmplificationCount] & 0xF;
  result = [a2 needsCustomBorderColorSamplers];
  if (result)
  {
    v20 = 32;
  }

  else
  {
    v20 = 0;
  }

  *(a1 + 56) = *(a1 + 56) & 0xFFFFFFDF | v20;
  return result;
}

NSUInteger AGX::VertexProgramKey::initCommon(AGX::VertexProgramKey *this, MTLRenderPipelineDescriptor *a2)
{
  v4 = [(MTLRenderPipelineDescriptor *)a2 driverCompilerOptions];
  v5 = [(NSArray *)[(MTLLinkedFunctions *)[(MTLRenderPipelineDescriptor *)a2 vertexLinkedFunctions] binaryFunctions] count];
  v6 = [(MTLRenderPipelineDescriptor *)a2 supportAddingVertexBinaryFunctions];
  if ([objc_msgSend(v4 objectForKeyedSubscript:{@"disableTextureRWBoundsCheck", "BOOLValue"}])
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  *(this + 13) = *(this + 13) & 0xFFFFFFFB | v7;
  *(this + 13) = *(this + 13) & 0xFC0003FF | ([objc_msgSend(v4 objectForKeyedSubscript:{@"maxNumRegisters", "unsignedIntValue"}] << 10);
  if ([objc_msgSend(v4 objectForKeyedSubscript:{@"agx_enable_stack_shadow", "BOOLValue"}])
  {
    v8 = 0x8000000;
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    v10 = 512;
  }

  else
  {
    v10 = 0;
  }

  *(this + 13) = v8 | *(this + 13) & 0xF7FFFDFF | v10;
  *(this + 56) = [(MTLRenderPipelineDescriptor *)a2 clipDistanceEnableMask];
  *(this + 12) = [(MTLRenderPipelineDescriptor *)a2 vertexDepthCompareClampMask];
  *(this + 7) = *(this + 7) & 0xFFFFFFFFFFFFF3FFLL | (([(MTLRenderPipelineDescriptor *)a2 tessellationFactorStepFunction]& 3) << 10);
  *(this + 7) = *(this + 7) & 0xFFFFFFFFFFFFFCFFLL | (([(MTLRenderPipelineDescriptor *)a2 tessellationPartitionMode]& 3) << 8);
  v11 = [(MTLRenderPipelineDescriptor *)a2 vertexBuffers];
  v12 = 0;
  for (i = 0; i != 31; ++i)
  {
    v14 = [-[MTLPipelineBufferDescriptorArray _descriptorAtIndex:](v11 _descriptorAtIndex:{i), "mutability"}];
    v15 = 1 << i;
    if (v14 != 1)
    {
      v15 = 0;
    }

    v12 |= v15;
  }

  *(this + 5) = v12;
  *(this + 22) = *(this + 22) & 0xFFFFFFFE | [(MTLRenderPipelineDescriptor *)a2 supportIndirectCommandBuffers];
  *(this + 7) = *(this + 7) & 0xFFFFFFFFFFFFCFFFLL | (([(MTLRenderPipelineDescriptor *)a2 vertexAmplificationMode]& 3) << 12);
  *(this + 7) = *(this + 7) & 0xFFFFFFFFFFFC3FFFLL | (([(MTLRenderPipelineDescriptor *)a2 maxVertexAmplificationCount]& 0xF) << 14);
  v16 = [(MTLRenderPipelineDescriptor *)a2 needsCustomBorderColorSamplers];
  v17 = 0x80000;
  if (!v16)
  {
    v17 = 0;
  }

  *(this + 7) = *(this + 7) & 0xFFFFFFFFFFF7FFFFLL | v17;
  v18 = [(MTLRenderPipelineDescriptor *)a2 isRasterizationEnabled];
  v19 = 0;
  if (v18)
  {
    v19 = ([(MTLRenderPipelineDescriptor *)a2 inputPrimitiveTopology]== MTLPrimitiveTopologyClassPoint) << 20;
  }

  *(this + 7) = *(this + 7) & 0xFFFFFFFFFFEFFFFFLL | v19;
  *(this + 7) = *(this + 7) & 0xFFFFFFFFFFBFFFFFLL | (([(MTLRenderPipelineDescriptor *)a2 tessellationFactorFormat]& 1) << 22);
  result = [(MTLRenderPipelineDescriptor *)a2 supportAddingVertexBinaryFunctions];
  if (result)
  {
    v21 = 0x2000000;
  }

  else
  {
    result = [(NSArray *)[(MTLLinkedFunctions *)[(MTLRenderPipelineDescriptor *)a2 vertexLinkedFunctions] binaryFunctions] count];
    v21 = (result != 0) << 25;
  }

  *(this + 7) = *(this + 7) & 0xFFFFFFFFFDFFFFFFLL | v21;
  return result;
}

void _AGCStatelessPSODynamicLibraryStateAGP::functionName(void)const::{lambda(std::string &,BOOL,BOOL,unsigned int)#1}::operator()(std::string *a1, int a2, int a3, int a4)
{
  if (a4)
  {
    *(&v19.__r_.__value_.__s + 23) = 2;
    strcpy(&v19, ".v");
    std::to_string(&__p, a4 + 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v19, p_p, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
  }

  else
  {
    *(&v20.__r_.__value_.__s + 23) = 1;
    LOWORD(v20.__r_.__value_.__l.__data_) = 46;
  }

  if (a2)
  {
    v12 = 102;
  }

  else
  {
    v12 = 105;
  }

  std::string::push_back(&v20, v12);
  v21 = v20;
  memset(&v20, 0, sizeof(v20));
  if (a3)
  {
    v13 = "32";
  }

  else
  {
    v13 = "16";
  }

  v14 = std::string::append(&v21, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v23 = v14->__r_.__value_.__r.__words[2];
  v22 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (v23 >= 0)
  {
    v16 = &v22;
  }

  else
  {
    v16 = v22;
  }

  if (v23 >= 0)
  {
    v17 = HIBYTE(v23);
  }

  else
  {
    v17 = *(&v22 + 1);
  }

  std::string::append(a1, v16, v17);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
    if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_24:
      if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_29;
    }
  }

  else if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v21.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_25:
    if (!a4)
    {
      return;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(v20.__r_.__value_.__l.__data_);
  if (!a4)
  {
    return;
  }

LABEL_30:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_34:
    operator delete(v19.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_34;
  }
}

void sub_29D2E0704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGX::SamplerDescriptor::SamplerDescriptor(uint64_t result, int *a2, float a3)
{
  v3 = (a2 - *a2);
  v4 = *v3;
  if (v4 < 0xD)
  {
    if (v4 < 0xB)
    {
      if (v4 <= 4)
      {
        v18 = 0;
        v19 = 0;
        *(result + 48) = 0;
        *(result + 56) = 0;
        v11 = 0;
        v15 = 0;
        v16 = 0;
        *(result + 64) = 0;
        goto LABEL_49;
      }

      LODWORD(v9) = 0;
      LODWORD(v7) = 0;
      LOBYTE(v5) = 0;
      v6 = 0;
      goto LABEL_18;
    }

    v6 = 0;
    LOBYTE(v5) = 0;
    v7 = v3[5];
    if (v3[5])
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = v3[6];
    if (v3[6])
    {
      LODWORD(v5) = *(a2 + v5);
    }

    v6 = v5;
    v7 = v3[5];
    if (v3[5])
    {
LABEL_5:
      LODWORD(v7) = *(a2 + v7);
    }
  }

  if (v4 < 0xF)
  {
    LODWORD(v9) = 0;
LABEL_18:
    v8 = 0;
    goto LABEL_19;
  }

  if (v3[7])
  {
    v8 = *(a2 + v3[7]);
    if (v4 >= 0x15)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0;
    if (v4 >= 0x15)
    {
LABEL_9:
      v9 = v3[10];
      if (v3[10])
      {
        LOBYTE(a3) = *(a2 + v9);
        LODWORD(v9) = (LODWORD(a3) + 0.5) & 0x1F;
        v10 = v3[2];
        if (!v3[2])
        {
          goto LABEL_21;
        }

LABEL_20:
        LODWORD(v10) = 32 * (*(a2 + v10) & 7);
        goto LABEL_21;
      }

LABEL_19:
      v10 = v3[2];
      if (!v3[2])
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  LODWORD(v9) = 0;
  v10 = v3[2];
  if (v3[2])
  {
    goto LABEL_20;
  }

LABEL_21:
  v11 = 0;
  if (v4 < 7)
  {
    LOBYTE(v17) = 0;
    LOBYTE(v13) = 0;
    LOBYTE(v12) = 0;
LABEL_43:
    LOBYTE(v14) = 0;
    goto LABEL_44;
  }

  v12 = v3[3];
  if (v3[3])
  {
    LOBYTE(v12) = *(a2 + v12);
  }

  if (v4 < 9)
  {
    LOBYTE(v17) = 0;
    LOBYTE(v13) = 0;
    goto LABEL_43;
  }

  v13 = v3[4];
  if (v3[4])
  {
    LOBYTE(v13) = *(a2 + v13);
  }

  if (v4 < 0x11)
  {
    LOBYTE(v17) = 0;
    goto LABEL_43;
  }

  v14 = v3[8];
  if (v3[8])
  {
    LOBYTE(v14) = *(a2 + v14) != 0;
  }

  if (v4 >= 0x17)
  {
    v15 = 0;
    if (v3[11])
    {
      v15 = *(a2 + v3[11]);
    }

    if (v4 >= 0x19)
    {
      if (v3[12])
      {
        v16 = *(a2 + v3[12]);
      }

      else
      {
        v16 = 0;
      }

      if (v4 >= 0x1F)
      {
        if (v3[15])
        {
          v11 = *(a2 + v3[15]);
        }

        goto LABEL_62;
      }

      if (v4 >= 0x1B)
      {
LABEL_62:
        v20 = v3[13];
        if (v3[13])
        {
          LOBYTE(v20) = *(a2 + v20);
        }

        if (v4 < 0x23)
        {
          LOBYTE(v17) = 0;
        }

        else
        {
          v17 = v3[17];
          if (v3[17])
          {
            LOBYTE(v17) = *(a2 + v17);
          }
        }

        goto LABEL_54;
      }

      LOBYTE(v17) = 0;
      LOBYTE(v20) = 0;
LABEL_54:
      v21 = v3[9];
      if (v21)
      {
        LOWORD(v21) = *(a2 + v21) & 0xF;
      }

      goto LABEL_45;
    }

    LOBYTE(v17) = 0;
    LOBYTE(v20) = 0;
LABEL_53:
    v16 = 0;
    goto LABEL_54;
  }

  if (v4 >= 0x13)
  {
    LOBYTE(v17) = 0;
    LOBYTE(v20) = 0;
    v15 = 0;
    goto LABEL_53;
  }

  LOBYTE(v17) = 0;
LABEL_44:
  LOBYTE(v20) = 0;
  LOWORD(v21) = 0;
  v15 = 0;
  v16 = 0;
LABEL_45:
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  v18 = v21 | ((v7 == 1) << 8) | ((v6 == 1) << 7) | ((v8 == 2) << 6) | (32 * (v8 != 0));
  if (v14)
  {
    v22 = 0x4000;
  }

  else
  {
    v22 = 0;
  }

  v19 = v22 & 0xFF90F8FF | ((v20 & 3) << 21) | ((v12 & 7) << 8) | ((v7 & 3) << 18) | v9 & 0xFFFCFFFF | ((v5 & 3) << 16) | v10 | ((v13 & 7) << 11) | ((v17 & 3) << 25);
LABEL_49:
  *result = v18;
  *(result + 8) = v15;
  *(result + 12) = v16;
  *(result + 16) = v11;
  *(result + 40) = 0;
  *(result + 28) = 0;
  *(result + 20) = 0;
  *(result + 4) = v19;
  return result;
}

BOOL AGX::SamplerDescriptor::operator<(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >= v3;
  if (v2 != v3)
  {
    return !v4;
  }

  v5 = *(a1 + 1);
  v6 = *(a2 + 1);
  v4 = v5 >= v6;
  if (v5 != v6)
  {
    return !v4;
  }

  v7 = *(a1 + 2);
  v8 = *(a2 + 2);
  v9 = v7 < v8;
  if (v7 == v8)
  {
    v10 = *(a1 + 3);
    v11 = *(a2 + 3);
    v9 = v10 < v11;
    if (v10 == v11)
    {
      v12 = *(a1 + 4);
      v13 = *(a2 + 4);
      v9 = v12 < v13;
      if (v12 == v13)
      {
        v14 = *(a1 + 5);
        v15 = *(a2 + 5);
        v4 = v14 >= v15;
        if (v14 == v15)
        {
          v16 = *(a1 + 6);
          v17 = *(a2 + 6);
          v4 = v16 >= v17;
          if (v16 == v17)
          {
            v18 = *(a1 + 7);
            v19 = *(a2 + 7);
            v4 = v18 >= v19;
            if (v18 == v19)
            {
              v20 = *(a1 + 8);
              v21 = *(a2 + 8);
              v4 = v20 >= v21;
              if (v20 == v21)
              {
                v22 = *(a1 + 5);
                v23 = *(a2 + 5);
                v4 = v22 >= v23;
                if (v22 == v23)
                {
                  return std::string::compare[abi:nn200100](a1 + 6, a2 + 48) >> 31;
                }
              }
            }
          }
        }

        return !v4;
      }
    }
  }

  return v9;
}

uint64_t std::string::compare[abi:nn200100](const void **a1, _BYTE *a2)
{
  v2 = a2[23];
  v3 = *(a1 + 23);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = a1;
    a1 = *a1;
    v3 = v4[1];
  }

  if (v2 >= 0)
  {
    v5 = a2[23];
  }

  else
  {
    v5 = *(a2 + 1);
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  LODWORD(result) = memcmp(a1, a2, v6);
  if (v3 < v5)
  {
    v8 = -1;
  }

  else
  {
    v8 = v5 < v3;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v8;
  }
}

uint64_t ___ZN13AGXATelemetry15collectAndResetEP19NSMutableDictionaryIP8NSStringP8NSObjectE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  program_sdk_version = dyld_get_program_sdk_version();
  v3 = [MEMORY[0x29EDB9F48] mainBundle];
  v4 = [v3 bundleIdentifier];
  if (!v4)
  {
    v4 = [objc_msgSend(MEMORY[0x29EDBA0B0] "processInfo")];
  }

  v5 = [v3 objectForInfoDictionaryKey:@"CFBundleVersion"];
  if (v5)
  {
    [*(v1 + 104) setObject:v5 forKey:@"BundleVersion"];
  }

  [*(v1 + 104) setObject:v4 forKey:@"BundleIdentifier"];
  [*(v1 + 104) setObject:objc_msgSend(objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", program_sdk_version), "stringValue"), @"SDK"}];
  v6 = *(v1 + 104);
  v7 = *(v1 + 80);

  return [v6 setObject:v7 forKey:@"SOC"];
}

void ___ZN13AGXATelemetry5setupEP8NSStringP13__IOGPUDevice_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  v3 = v1[14];
  v4 = objc_autoreleasePoolPush();
  v5 = *(v1 + 12);
  *(v1 + 13) = v5;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = ___ZN13AGXATelemetry15collectAndResetEP19NSMutableDictionaryIP8NSStringP8NSObjectE_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v1;
  if (AGXATelemetry::collectAndReset(NSMutableDictionary<NSString *,NSObject *> *)::sdkPred != -1)
  {
    dispatch_once(&AGXATelemetry::collectAndReset(NSMutableDictionary<NSString *,NSObject *> *)::sdkPred, block);
  }

  if (AGXATelemetry::collectAndReset(NSMutableDictionary<NSString *,NSObject *> *)::lastCommandQsInFlight != *(v1 + 16))
  {
    AGXATelemetry::collectAndReset(NSMutableDictionary<NSString *,NSObject *> *)::lastCommandQsInFlight = *(v1 + 16);
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedShort:"), @"CommandQueuesInFlight"}];
  }

  outputStruct = 0u;
  v137 = 0u;
  outputStructCnt = 32;
  if (!IOConnectCallStructMethod(*(v1[11] + 20), 0x10Fu, 0, 0, &outputStruct, &outputStructCnt))
  {
    v7 = outputStruct;
    v8 = v1[38];
    if (v8 < outputStruct)
    {
      v9 = v1[38];
      do
      {
        atomic_compare_exchange_strong_explicit(v1 + 38, &v9, v7, memory_order_relaxed, memory_order_relaxed);
        if (v9 == v8)
        {
          break;
        }

        v8 = v9;
      }

      while (v9 < v7);
    }

    v10 = *(&outputStruct + 1);
    v11 = v1[39];
    if (v11 < *(&outputStruct + 1))
    {
      v12 = v1[39];
      do
      {
        atomic_compare_exchange_strong_explicit(v1 + 39, &v12, v10, memory_order_relaxed, memory_order_relaxed);
        if (v12 == v11)
        {
          break;
        }

        v11 = v12;
      }

      while (v12 < v10);
    }

    v13 = v137;
    v14 = v1[36];
    if (v14 < v137)
    {
      v15 = v1[36];
      do
      {
        atomic_compare_exchange_strong_explicit(v1 + 36, &v15, v13, memory_order_relaxed, memory_order_relaxed);
        if (v15 == v14)
        {
          break;
        }

        v14 = v15;
      }

      while (v15 < v13);
    }

    v16 = *(&v137 + 1);
    v17 = v1[37];
    if (v17 < *(&v137 + 1))
    {
      v18 = v1[37];
      do
      {
        atomic_compare_exchange_strong_explicit(v1 + 37, &v18, v16, memory_order_relaxed, memory_order_relaxed);
        if (v18 == v17)
        {
          break;
        }

        v17 = v18;
      }

      while (v18 < v16);
    }

    v110 = 192;
    if (!IOConnectCallStructMethod(*(v1[11] + 20), 0x112u, 0, 0, &v111, &v110))
    {
      v19 = v111;
      v20 = v1[40];
      if (v20 < v111)
      {
        v21 = v1[40];
        do
        {
          atomic_compare_exchange_strong_explicit(v1 + 40, &v21, v19, memory_order_relaxed, memory_order_relaxed);
          if (v21 == v20)
          {
            break;
          }

          v20 = v21;
        }

        while (v21 < v19);
      }

      v22 = v112;
      v23 = v1[41];
      if (v23 < v112)
      {
        v24 = v1[41];
        do
        {
          atomic_compare_exchange_strong_explicit(v1 + 41, &v24, v22, memory_order_relaxed, memory_order_relaxed);
          if (v24 == v23)
          {
            break;
          }

          v23 = v24;
        }

        while (v24 < v22);
      }

      v25 = v113;
      v26 = v1[42];
      if (v26 < v113)
      {
        v27 = v1[42];
        do
        {
          atomic_compare_exchange_strong_explicit(v1 + 42, &v27, v25, memory_order_relaxed, memory_order_relaxed);
          if (v27 == v26)
          {
            break;
          }

          v26 = v27;
        }

        while (v27 < v25);
      }

      v28 = v114;
      v29 = v1[43];
      if (v29 < v114)
      {
        v30 = v1[43];
        do
        {
          atomic_compare_exchange_strong_explicit(v1 + 43, &v30, v28, memory_order_relaxed, memory_order_relaxed);
          if (v30 == v29)
          {
            break;
          }

          v29 = v30;
        }

        while (v30 < v28);
      }

      v31 = v115;
      v32 = v1[44];
      if (v32 < v115)
      {
        v33 = v1[44];
        do
        {
          atomic_compare_exchange_strong_explicit(v1 + 44, &v33, v31, memory_order_relaxed, memory_order_relaxed);
          if (v33 == v32)
          {
            break;
          }

          v32 = v33;
        }

        while (v33 < v31);
      }

      v34 = v116;
      v35 = v1[45];
      if (v35 < v116)
      {
        v36 = v1[45];
        do
        {
          atomic_compare_exchange_strong_explicit(v1 + 45, &v36, v34, memory_order_relaxed, memory_order_relaxed);
          if (v36 == v35)
          {
            break;
          }

          v35 = v36;
        }

        while (v36 < v34);
      }

      v37 = v117;
      v38 = v1[46];
      if (v38 < v117)
      {
        v39 = v1[46];
        do
        {
          atomic_compare_exchange_strong_explicit(v1 + 46, &v39, v37, memory_order_relaxed, memory_order_relaxed);
          if (v39 == v38)
          {
            break;
          }

          v38 = v39;
        }

        while (v39 < v37);
      }

      v40 = v118;
      v41 = v1[47];
      if (v41 < v118)
      {
        v42 = v1[47];
        do
        {
          atomic_compare_exchange_strong_explicit(v1 + 47, &v42, v40, memory_order_relaxed, memory_order_relaxed);
          if (v42 == v41)
          {
            break;
          }

          v41 = v42;
        }

        while (v42 < v40);
      }

      v43 = v119;
      v44 = v1[48];
      if (v44 < v119)
      {
        v45 = v1[48];
        do
        {
          atomic_compare_exchange_strong_explicit(v1 + 48, &v45, v43, memory_order_relaxed, memory_order_relaxed);
          if (v45 == v44)
          {
            break;
          }

          v44 = v45;
        }

        while (v45 < v43);
      }

      v46 = v120;
      v47 = v1[49];
      if (v47 < v120)
      {
        v48 = v1[49];
        do
        {
          atomic_compare_exchange_strong_explicit(v1 + 49, &v48, v46, memory_order_relaxed, memory_order_relaxed);
          if (v48 == v47)
          {
            break;
          }

          v47 = v48;
        }

        while (v48 < v46);
      }

      v49 = v121;
      v50 = v1[50];
      if (v50 < v121)
      {
        v51 = v1[50];
        do
        {
          atomic_compare_exchange_strong_explicit(v1 + 50, &v51, v49, memory_order_relaxed, memory_order_relaxed);
          if (v51 == v50)
          {
            break;
          }

          v50 = v51;
        }

        while (v51 < v49);
      }

      v52 = v122;
      v53 = v1[51];
      if (v53 < v122)
      {
        v54 = v1[51];
        do
        {
          atomic_compare_exchange_strong_explicit(v1 + 51, &v54, v52, memory_order_relaxed, memory_order_relaxed);
          if (v54 == v53)
          {
            break;
          }

          v53 = v54;
        }

        while (v54 < v52);
      }

      v55 = v123;
      v56 = v1[52];
      if (v56 < v123)
      {
        v57 = v1[52];
        do
        {
          atomic_compare_exchange_strong_explicit(v1 + 52, &v57, v55, memory_order_relaxed, memory_order_relaxed);
          if (v57 == v56)
          {
            break;
          }

          v56 = v57;
        }

        while (v57 < v55);
      }

      v58 = v124;
      v59 = v1[53];
      if (v59 < v124)
      {
        v60 = v1[53];
        do
        {
          atomic_compare_exchange_strong_explicit(v1 + 53, &v60, v58, memory_order_relaxed, memory_order_relaxed);
          if (v60 == v59)
          {
            break;
          }

          v59 = v60;
        }

        while (v60 < v58);
      }

      v61 = v125;
      v62 = v1[54];
      if (v62 < v125)
      {
        v63 = v1[54];
        do
        {
          atomic_compare_exchange_strong_explicit(v1 + 54, &v63, v61, memory_order_relaxed, memory_order_relaxed);
          if (v63 == v62)
          {
            break;
          }

          v62 = v63;
        }

        while (v63 < v61);
      }

      v64 = v126;
      v65 = v1[55];
      if (v65 < v126)
      {
        v66 = v1[55];
        do
        {
          atomic_compare_exchange_strong_explicit(v1 + 55, &v66, v64, memory_order_relaxed, memory_order_relaxed);
          if (v66 == v65)
          {
            break;
          }

          v65 = v66;
        }

        while (v66 < v64);
      }

      v67 = v127;
      v68 = v1[56];
      if (v68 < v127)
      {
        v69 = v1[56];
        do
        {
          atomic_compare_exchange_strong_explicit(v1 + 56, &v69, v67, memory_order_relaxed, memory_order_relaxed);
          if (v69 == v68)
          {
            break;
          }

          v68 = v69;
        }

        while (v69 < v67);
      }

      v70 = v128;
      v71 = v1[57];
      if (v71 < v128)
      {
        v72 = v1[57];
        do
        {
          atomic_compare_exchange_strong_explicit(v1 + 57, &v72, v70, memory_order_relaxed, memory_order_relaxed);
          if (v72 == v71)
          {
            break;
          }

          v71 = v72;
        }

        while (v72 < v70);
      }

      v73 = v129;
      v74 = v1[58];
      if (v74 < v129)
      {
        v75 = v1[58];
        do
        {
          atomic_compare_exchange_strong_explicit(v1 + 58, &v75, v73, memory_order_relaxed, memory_order_relaxed);
          if (v75 == v74)
          {
            break;
          }

          v74 = v75;
        }

        while (v75 < v73);
      }

      v76 = v130;
      v77 = v1[59];
      if (v77 < v130)
      {
        v78 = v1[59];
        do
        {
          atomic_compare_exchange_strong_explicit(v1 + 59, &v78, v76, memory_order_relaxed, memory_order_relaxed);
          if (v78 == v77)
          {
            break;
          }

          v77 = v78;
        }

        while (v78 < v76);
      }

      v79 = v131;
      v80 = v1[60];
      if (v80 < v131)
      {
        v81 = v1[60];
        do
        {
          atomic_compare_exchange_strong_explicit(v1 + 60, &v81, v79, memory_order_relaxed, memory_order_relaxed);
          if (v81 == v80)
          {
            break;
          }

          v80 = v81;
        }

        while (v81 < v79);
      }

      v82 = v132;
      v83 = v1[61];
      if (v83 < v132)
      {
        v84 = v1[61];
        do
        {
          atomic_compare_exchange_strong_explicit(v1 + 61, &v84, v82, memory_order_relaxed, memory_order_relaxed);
          if (v84 == v83)
          {
            break;
          }

          v83 = v84;
        }

        while (v84 < v82);
      }

      v85 = v133;
      v86 = v1[62];
      if (v86 < v133)
      {
        v87 = v1[62];
        do
        {
          atomic_compare_exchange_strong_explicit(v1 + 62, &v87, v85, memory_order_relaxed, memory_order_relaxed);
          if (v87 == v86)
          {
            break;
          }

          v86 = v87;
        }

        while (v87 < v85);
      }

      v88 = v134;
      v89 = v1[63];
      if (v89 < v134)
      {
        v90 = v1[63];
        do
        {
          atomic_compare_exchange_strong_explicit(v1 + 63, &v90, v88, memory_order_relaxed, memory_order_relaxed);
          if (v90 == v89)
          {
            break;
          }

          v89 = v90;
        }

        while (v90 < v88);
      }
    }
  }

  if (v5)
  {
    v108 = v2;
    v97 = *v1;
    for (i = (v1[2] ^ *v1) & 0xFFFFFFFFFFFFFFFELL; i; i &= ~(1 << v99))
    {
      v99 = __clz(__rbit64(i));
      v100 = &stru_2A23FAE10;
      if (v99 - 1 <= 0x3E)
      {
        v100 = off_29F343AA0[v99 - 1];
      }

      [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", 1), v100}];
    }

    v1[2] = v97;
    v101 = v1[1];
    v102 = v1[3];
    if (v102 != v101)
    {
      v105 = v102 ^ v101;
      do
      {
        v106 = __clz(__rbit64(v105));
        v107 = &stru_2A23FAE10;
        if (v106 <= 0x22)
        {
          v107 = off_29F343C98[v106];
        }

        [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", 1), v107}];
        v105 &= ~(1 << v106);
      }

      while (v105);
    }

    v103 = 0;
    v1[3] = v101;
    do
    {
      __swp(v6, &v1[v103 + 64]);
      if (v6)
      {
        [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:"), off_29F343DB0[v103]}];
      }

      ++v103;
    }

    while (v103 != 81);
    __swp(v6, v1 + 70);
    if (v6)
    {
      [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:"), @"MaxConcurrentComputeDispatchCount"}];
    }

    __swp(v6, v1 + 72);
    v2 = v108;
    if (v6)
    {
      [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:"), @"MaxComputeUMAPoolSize"}];
    }

    __swp(v6, v1 + 74);
    if (v6)
    {
      [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:"), @"MaxComputeUMAPoolRequest"}];
    }

    __swp(v6, v1 + 76);
    if (v6)
    {
      [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:"), @"MaxRenderUMAPoolSize"}];
    }

    __swp(v6, v1 + 78);
    if (v6)
    {
      [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:"), @"MaxRenderUMAPoolRequest"}];
    }

    for (j = 0; j != 24; ++j)
    {
      __swp(v6, &v1[j + 40]);
      if (v6)
      {
        [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:"), (*(off_29F344190 + ((2 * j) & 0xFFFFFFFFFFFFFFF8)))[j & 3]}];
      }
    }
  }

  for (k = 0; k != 19; ++k)
  {
    __swp(v6, &v1[k + 16]);
    if (v6)
    {
      [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:"), off_29F3440F8[k]}];
    }
  }

  objc_autoreleasePoolPop(v4);
  if ([v1[14] count])
  {
    [v1[14] addEntriesFromDictionary:v1[13]];
    v92 = v1[14];
    v111 = MEMORY[0x29EDCA5F8];
    v112 = 3221225472;
    v113 = ___ZN13AGXATelemetry9sendEventEP8NSStringP19NSMutableDictionaryIS1_P8NSObjectE_block_invoke;
    v114 = &unk_29F343A80;
    v115 = v92;
    AnalyticsSendEventLazy();
    [v1[14] removeAllObjects];
  }

  objc_autoreleasePoolPop(v2);
  v93 = *&AGXATelemetry::setup(NSString *,__IOGPUDevice *)::intervalSeconds;
  if (*&AGXATelemetry::setup(NSString *,__IOGPUDevice *)::intervalSeconds <= 3840.0)
  {
    v93 = *&AGXATelemetry::setup(NSString *,__IOGPUDevice *)::intervalSeconds + *&AGXATelemetry::setup(NSString *,__IOGPUDevice *)::intervalSeconds;
    *&AGXATelemetry::setup(NSString *,__IOGPUDevice *)::intervalSeconds = *&AGXATelemetry::setup(NSString *,__IOGPUDevice *)::intervalSeconds + *&AGXATelemetry::setup(NSString *,__IOGPUDevice *)::intervalSeconds;
  }

  v94 = v1[8];
  v95 = v93 * 1000000000.0;
  v96 = dispatch_time(0, (v93 * 1000000000.0));
  dispatch_source_set_timer(v94, v96, v95, 0x5F5E100uLL);
}

uint64_t ___ZN13AGXATelemetry26shouldCaptureTelemetryDataEv_block_invoke()
{
  result = [objc_msgSend(MEMORY[0x29EDB9F48] "mainBundle")];
  v1 = 0;
  if (result)
  {
    result = [result containsString:@"Application"];
    if (result)
    {
      v1 = 1;
    }
  }

  AGXATelemetry::shouldCaptureTelemetryData(void)::shouldCapture = v1;
  return result;
}

void ___ZN13AGXATelemetry16disableTelemetryEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_source_cancel(*(v1 + 64));
  *(v1 + 120) = 0;
}

dispatch_queue_t ___ZN13AGXATelemetry26telemetryEmitBacktraceInfoEPK26AGXATelemetryBacktraceInfo_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 96) = [MEMORY[0x29EDB8E00] dictionaryWithCapacity:3];
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  result = dispatch_queue_create("com.apple.metal.telemetryBacktraceQueue", v2);
  *(v1 + 72) = result;
  return result;
}

void ___ZN13AGXATelemetry26telemetryEmitBacktraceInfoEPK26AGXATelemetryBacktraceInfo_block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v41 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  atomic_fetch_add(AGXATelemetry::backtracesCaptured, 1u);
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x29EDB9F48] mainBundle];
  v5 = [v4 bundleIdentifier];
  v6 = [v4 objectForInfoDictionaryKey:@"CFBundleVersion"];
  if (v5)
  {
    v23 = v5;
    v25 = v6;
    v27 = v2;
    v28 = v3;
    v29 = v1;
    v7 = **(v1 + 40);
    v8 = getprogname();
    v30 = [MEMORY[0x29EDB8DE8] array];
    if (v7 >= 1)
    {
      v9 = 0;
      do
      {
        v10 = dyld_image_path_containing_address();
        if (v10)
        {
          v11 = basename_r(v10, v35);
        }

        else
        {
          v11 = "<Unknown>";
        }

        if (v11)
        {
          v12 = v11;
        }

        else
        {
          v12 = "<Unknown>";
        }

        if (!strcmp(v8, v12))
        {
          v13 = @"Direct";
        }

        else
        {
          v13 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v12];
        }

        if (isGLESOnMetalFramework(NSString *)::onceToken != -1)
        {
          dispatch_once(&isGLESOnMetalFramework(NSString *)::onceToken, &__block_literal_global_763);
        }

        if ([isGLESOnMetalFramework(NSString *)::glesFrameworksLists containsObject:{v13, v23, v25}])
        {
          goto LABEL_37;
        }

        if (isIgnoredFramework(NSString *)::onceToken != -1)
        {
          dispatch_once(&isIgnoredFramework(NSString *)::onceToken, &__block_literal_global_775);
        }

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v14 = isIgnoredFramework(NSString *)::ignoredFrameworksList;
        v15 = [isIgnoredFramework(NSString *)::ignoredFrameworksList countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v32;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v32 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v31 + 1) + 8 * i);
              if ([v19 characterAtIndex:{objc_msgSend(v19, "length") - 1}] == 42)
              {
                if (-[__CFString hasPrefix:](v13, "hasPrefix:", [v19 substringToIndex:{objc_msgSend(v19, "length") - 1}]))
                {
                  goto LABEL_4;
                }
              }

              else if ([v19 isEqualToString:v13])
              {
                goto LABEL_4;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v31 objects:v40 count:16];
          }

          while (v16);
        }

        if (([v30 containsObject:v13] & 1) == 0)
        {
          [v30 addObject:v13];
        }

LABEL_4:
        ;
      }

      while (++v9 != v7);
    }

    if (![v30 count])
    {
LABEL_37:
      v3 = v28;
      v1 = v29;
      goto LABEL_38;
    }

    v20 = [v30 componentsJoinedByString:{@", "}];
    v3 = v28;
    v1 = v29;
    if (v20)
    {
      v21 = v20;
      [*(v27 + 96) setObject:v24 forKey:@"BundleIdentifier"];
      if (v26)
      {
        [*(v27 + 96) setObject:v26 forKey:@"BundleVersion"];
      }

      [*(v27 + 96) setObject:v21 forKey:@"Frameworks"];
      v22 = *(v27 + 96);
      *v35 = MEMORY[0x29EDCA5F8];
      v36 = 3221225472;
      v37 = ___ZN13AGXATelemetry9sendEventEP8NSStringP19NSMutableDictionaryIS1_P8NSObjectE_block_invoke;
      v38 = &unk_29F343A80;
      v39 = v22;
      AnalyticsSendEventLazy();
      [*(v27 + 96) removeAllObjects];
    }
  }

LABEL_38:
  free(*(v1 + 40));
  objc_autoreleasePoolPop(v3);
}

uint64_t ___ZL18isIgnoredFrameworkP8NSString_block_invoke()
{
  result = [objc_alloc(MEMORY[0x29EDB8D80]) initWithObjects:{@"AGXMetal*", @"Metal", @"MetalTools", @"libMTLCapture.dylib", @"libMTLInterpose.dylib", @"UIKit", @"UIKitCore", @"Foundation", @"CoreFoundation", @"FrontBoardServices", @"GraphicsServices", @"FrontBoard", @"BaseBoard", @"libdispatch.dylib", @"libdyld.dylib", @"libsystem_pthread.dylib", @"libobjc.A.dylib", @"libswiftCore.dylib", @"libc++.1.dylib", @"libxpc.dylib", @"libswiftUIKit.dylib", @"libsystem_notify.dylib", 0}];
  isIgnoredFramework(NSString *)::ignoredFrameworksList = result;
  return result;
}

uint64_t ___ZL22isGLESOnMetalFrameworkP8NSString_block_invoke()
{
  result = [objc_alloc(MEMORY[0x29EDB8E50]) initWithArray:&unk_2A240CE18];
  isGLESOnMetalFramework(NSString *)::glesFrameworksLists = result;
  return result;
}

uint64_t TiledMemory<(TwiddleOrder)1>::convertTiles2D<false>(uint64_t result, uint64_t a2, int a3, char a4, unsigned int a5, unsigned int a6, int a7, int a8, uint64_t a9, unsigned int a10, unsigned int a11, uint64_t a12, uint64_t (*a13)(unint64_t, uint64_t), char a14)
{
  v14 = a2;
  v56 = result;
  v15 = 0;
  v16 = a12 & 0x1FFFFFFFFFFFFFFFLL;
  if ((a12 & 0x1FFFFFFFFFFFFFFFuLL) > 0xF)
  {
    if ((a12 & 0x1FFFFFFFFFFFFFFFuLL) > 0x3F)
    {
      if (v16 == 64)
      {
        v15 = 16;
        v17 = 16;
      }

      else
      {
        v17 = 0;
        if (v16 == 128)
        {
          v17 = 8;
          v15 = 16;
        }
      }
    }

    else if (v16 == 16)
    {
      v15 = 32;
      v17 = 32;
    }

    else
    {
      v17 = 0;
      if (v16 == 32)
      {
        v17 = 16;
        v15 = 32;
      }
    }
  }

  else if ((a12 & 0x1FFFFFFFFFFFFFFFuLL) > 3)
  {
    if (v16 == 4)
    {
      v15 = 64;
      v17 = 64;
    }

    else
    {
      v17 = 0;
      if (v16 == 8)
      {
        v17 = 32;
        v15 = 64;
      }
    }
  }

  else if (v16 == 1)
  {
    v15 = 128;
    v17 = 128;
  }

  else
  {
    v17 = 0;
    if (v16 == 2)
    {
      v17 = 64;
      v15 = 128;
    }
  }

  v57 = v15;
  if (a10 > 1)
  {
    v18 = ~(-1 << a4);
  }

  else
  {
    v18 = 0;
  }

  v19 = ((a10 - 1 + a3) / a10 + v18) >> a4;
  if (v19 <= 1)
  {
    v19 = 1;
  }

  v20 = (a8 + a11 - 1) / a11;
  v54 = v20 - 1 + a6 / a11;
  v55 = a6 / a11;
  v21 = a6 / a11 / v17;
  v53 = v54 / v17;
  if (v21 <= v54 / v17)
  {
    v22 = (a10 - 1 + a7) / a10;
    v23 = v22 - 1 + a5 / a10;
    v52 = a5 / a10;
    v24 = 32 - __clz(v22 - 1);
    v62 = v22 > 1;
    v25 = v22 <= 1 ? 0 : v24;
    v64 = v25;
    v26 = 32 - __clz(v20 - 1);
    v61 = v20 > 1;
    v27 = v20 <= 1 ? 0 : v26;
    v63 = v27;
    v51 = a5 / a10 / v15;
    if (v51 <= v23 / v15)
    {
      v28 = a9;
      v50 = (v15 + v19 - 1) / v15;
      v69 = v23 / v15;
      if (a14)
      {
        if (v27 | v64)
        {
          do
          {
            v29 = v21 * v17;
            v66 = v21 * v50;
            v58 = v21 + 1;
            v30 = v51;
            do
            {
              v31 = 0;
              v32 = 0;
              v33 = v30 + 1;
              v34 = 1;
              v36 = v61;
              v35 = v62;
              v37 = v63;
              v38 = v64;
              do
              {
                --v37;
                if (v36)
                {
                  v32 |= (v34 & v29) << v31++;
                }

                else
                {
                  v37 = 0;
                }

                --v38;
                if (v35)
                {
                  v32 |= (v34 & (v30 * v57)) << v31++;
                }

                else
                {
                  v38 = 0;
                }

                v34 *= 2;
                --v31;
                v35 = v38 != 0;
                v36 = v37 != 0;
              }

              while (v38 | v37);
              result = a13(v56 + ((v30 + v66) << 14), v14 + v32 * a12);
              v30 = v33;
            }

            while (v33 <= v69);
            v21 = v58;
          }

          while (v58 <= v53);
        }

        else
        {
          do
          {
            v68 = v21 * v50;
            v60 = v21 + 1;
            v46 = v51;
            v47 = v14;
            do
            {
              v48 = v46 + 1;
              result = a13(v56 + ((v46 + v68) << 14), v47);
              v46 = v48;
            }

            while (v48 <= v69);
            v21 = v60;
            v14 = v47;
          }

          while (v60 <= v53);
        }
      }

      else
      {
        v39 = 0xFFFFFFFFLL;
        do
        {
          v67 = v21 * v50;
          v59 = v21 + 1;
          if (v55 <= v21 * v17)
          {
            v40 = v21 * v17;
          }

          else
          {
            v40 = v55;
          }

          v65 = v14 + (v40 - v55) * v28;
          v41 = v51;
          v42 = v17;
          do
          {
            v43 = v41 + 1;
            if (v52 <= v41 * v57)
            {
              v44 = v41 * v57;
            }

            else
            {
              v44 = v52;
            }

            v45 = v39;
            result = a13(v56 + ((v41 + v67) << 14), v65 + (v44 - v52) * a12);
            v39 = v45;
            v28 = a9;
            v41 = v43;
          }

          while (v43 <= v69);
          v21 = v59;
          v14 = a2;
          v17 = v42;
        }

        while (v59 <= v53);
      }
    }
  }

  return result;
}

uint64_t TiledMemory<(TwiddleOrder)1>::convertTiles2D<true>(uint64_t result, uint64_t a2, int a3, char a4, unsigned int a5, unsigned int a6, int a7, int a8, uint64_t a9, unsigned int a10, unsigned int a11, uint64_t a12, uint64_t (*a13)(unint64_t, uint64_t), char a14)
{
  v15 = result;
  v16 = 0;
  v17 = a12 & 0x1FFFFFFFFFFFFFFFLL;
  if ((a12 & 0x1FFFFFFFFFFFFFFFuLL) > 0xF)
  {
    if ((a12 & 0x1FFFFFFFFFFFFFFFuLL) > 0x3F)
    {
      if (v17 == 64)
      {
        v16 = 16;
        v18 = 16;
      }

      else
      {
        v18 = 0;
        if (v17 == 128)
        {
          v18 = 8;
          v16 = 16;
        }
      }
    }

    else if (v17 == 16)
    {
      v16 = 32;
      v18 = 32;
    }

    else
    {
      v18 = 0;
      if (v17 == 32)
      {
        v18 = 16;
        v16 = 32;
      }
    }
  }

  else if ((a12 & 0x1FFFFFFFFFFFFFFFuLL) > 3)
  {
    if (v17 == 4)
    {
      v16 = 64;
      v18 = 64;
    }

    else
    {
      v18 = 0;
      if (v17 == 8)
      {
        v18 = 32;
        v16 = 64;
      }
    }
  }

  else if (v17 == 1)
  {
    v16 = 128;
    v18 = 128;
  }

  else
  {
    v18 = 0;
    if (v17 == 2)
    {
      v18 = 64;
      v16 = 128;
    }
  }

  v58 = v16;
  if (a10 > 1)
  {
    v19 = ~(-1 << a4);
  }

  else
  {
    v19 = 0;
  }

  v20 = ((a10 - 1 + a3) / a10 + v19) >> a4;
  if (v20 <= 1)
  {
    v20 = 1;
  }

  v21 = (a8 + a11 - 1) / a11;
  v56 = v21 - 1 + a6 / a11;
  v57 = a6 / a11;
  v22 = a6 / a11 / v18;
  v55 = v56 / v18;
  if (v22 <= v56 / v18)
  {
    v23 = (a10 - 1 + a7) / a10;
    v24 = v23 - 1 + a5 / a10;
    v54 = a5 / a10;
    v25 = 32 - __clz(v23 - 1);
    v63 = v23 > 1;
    v26 = v23 <= 1 ? 0 : v25;
    HIDWORD(v64) = v26;
    v27 = 32 - __clz(v21 - 1);
    v62 = v21 > 1;
    v28 = v21 <= 1 ? 0 : v27;
    LODWORD(v64) = v28;
    v53 = a5 / a10 / v16;
    if (v53 <= v24 / v16)
    {
      v29 = a9;
      v52 = (v16 + v20 - 1) / v16;
      v69 = v24 / v16;
      if (a14)
      {
        if (v64)
        {
          do
          {
            v30 = v22 * v18;
            v65 = v22 * v52;
            v59 = v22 + 1;
            v31 = v53;
            do
            {
              v32 = 0;
              v33 = 0;
              v34 = v31 + 1;
              v35 = 1;
              v37 = v62;
              v36 = v63;
              v38 = v64;
              v39 = HIDWORD(v64);
              do
              {
                --v38;
                if (v37)
                {
                  v33 |= (v35 & v30) << v32++;
                }

                else
                {
                  v38 = 0;
                }

                --v39;
                if (v36)
                {
                  v33 |= (v35 & (v31 * v58)) << v32++;
                }

                else
                {
                  v39 = 0;
                }

                v35 *= 2;
                --v32;
                v36 = v39 != 0;
                v37 = v38 != 0;
              }

              while (v39 | v38);
              result = a13(a2 + ((v31 + v65) << 14), v15 + v33 * a12);
              v31 = v34;
            }

            while (v34 <= v69);
            v22 = v59;
          }

          while (v59 <= v55);
        }

        else
        {
          do
          {
            v67 = v22 * v52;
            v61 = v22 + 1;
            v48 = v53;
            v49 = v15;
            do
            {
              v50 = v48 + 1;
              result = a13(a2 + ((v48 + v67) << 14), v49);
              v48 = v50;
            }

            while (v50 <= v69);
            v22 = v61;
            v15 = v49;
          }

          while (v61 <= v55);
        }
      }

      else
      {
        v40 = 0xFFFFFFFFLL;
        v51 = result;
        v68 = v18;
        do
        {
          v66 = v22 * v52;
          v60 = v22 + 1;
          if (v57 <= v22 * v18)
          {
            v41 = v22 * v18;
          }

          else
          {
            v41 = v57;
          }

          v42 = v15 + (v41 - v57) * v29;
          v43 = v53;
          v44 = a2;
          do
          {
            v45 = v43 + 1;
            if (v54 <= v43 * v58)
            {
              v46 = v43 * v58;
            }

            else
            {
              v46 = v54;
            }

            v47 = v40;
            result = a13(v44 + ((v43 + v66) << 14), v42 + (v46 - v54) * a12);
            v40 = v47;
            v29 = a9;
            v43 = v45;
          }

          while (v45 <= v69);
          v22 = v60;
          a2 = v44;
          v15 = v51;
          v18 = v68;
        }

        while (v60 <= v55);
      }
    }
  }

  return result;
}

void ___ZN3AGX22agxaSignpostInitializeEv_block_invoke()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  if (dispatch_queue_create("com.apple.Metal.AGXSignpostEnablementQueue", v0))
  {
    operator new();
  }

  fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: *** fail to allocate enablement notifications queue!\n", "agxa_trace_event.cpp", 46, "agxaSignpostInitialize_block_invoke");
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    state64[0] = 136315650;
    *&state64[1] = "agxa_trace_event.cpp";
    v2 = 1024;
    v3 = 46;
    v4 = 2080;
    v5 = "agxaSignpostInitialize_block_invoke";
    _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** fail to allocate enablement notifications queue!\n", state64, 0x1Cu);
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
  {
    state64[0] = 136315650;
    *&state64[1] = "agxa_trace_event.cpp";
    v2 = 1024;
    v3 = 46;
    v4 = 2080;
    v5 = "agxaSignpostInitialize_block_invoke";
    _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: %s:%d:%s: *** fail to allocate enablement notifications queue!\n", state64, 0x1Cu);
  }
}

uint64_t ___ZN3AGX22agxaSignpostInitializeEv_block_invoke_14(int a1, int token)
{
  state64 = 0;
  result = notify_get_state(token, &state64);
  if (!result)
  {
    {
      do
      {
        v5 = *v3++;
        result = (*(v5 + 16))();
      }

      while (v3 != v4);
    }
  }

  return result;
}

void AGX::agxaSignpostRegisterForEnablement(uint64_t a1)
{
  v8 = *MEMORY[0x29EDCA608];
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN3AGX33agxaSignpostRegisterForEnablementEU13block_pointerFvbE_block_invoke;
    block[3] = &unk_29F344208;
    block[4] = a1;
  }

  else
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: *** signpost enablement notifications queue is uninitialized\n", "agxa_trace_event.cpp", 91, "agxaSignpostRegisterForEnablement");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v3 = "agxa_trace_event.cpp";
      v4 = 1024;
      v5 = 91;
      v6 = 2080;
      v7 = "agxaSignpostRegisterForEnablement";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** signpost enablement notifications queue is uninitialized\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v3 = "agxa_trace_event.cpp";
      v4 = 1024;
      v5 = 91;
      v6 = 2080;
      v7 = "agxaSignpostRegisterForEnablement";
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: %s:%d:%s: *** signpost enablement notifications queue is uninitialized\n", buf, 0x1Cu);
    }
  }
}

void ___ZN3AGX33agxaSignpostRegisterForEnablementEU13block_pointerFvbE_block_invoke(uint64_t a1)
{
  if (v3 >= v2)
  {
    v7 = v6 >> 3;
    v8 = (v6 >> 3) + 1;
    if (v8 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v2 - v5;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    *(8 * v7) = *(a1 + 32);
    v4 = 8 * v7 + 8;
    memcpy(0, v5, v6);
    *v1 = 0;
    v1[1] = v4;
    v1[2] = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *v3 = *(a1 + 32);
    v4 = (v3 + 1);
  }

  v1[1] = v4;
}

void *___ZN3AGX35agxaSignpostDeregisterForEnablementEU13block_pointerFvbE_block_invoke(void *result)
{
  {
    while (*v3 != result[4])
    {
      v3 += 8;
      if (v3 == v2)
      {
        break;
      }
    }
  }

  if (v2 != v3)
  {
    v4 = v2 - (v3 + 8);
    if (v2 != v3 + 8)
    {
      result = memmove(v3, v3 + 8, v2 - (v3 + 8));
    }

    *(v1 + 8) = &v3[v4];
  }

  return result;
}

AGXBuffer *AGX::DeviceInternalBuffer<AGX::EMRTTileBufferResourceInfo>::grow(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  v16 = 0;
  v17 = 0;
  v11[0] = 0;
  v11[1] = 0x100010001;
  v12 = 16777473;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  v18 = a2;
  v19 = xmmword_29D2F1FE0;
  v20 = 0;
  LODWORD(v10) = 104;
  result = [(IOGPUMetalBuffer *)[AGXBuffer alloc] initWithDevice:v4 pointer:0 length:a2 options:0 sysMemSize:a2 vidMemSize:0 args:v11 argsSize:v10 deallocator:0];
  v6 = result;
  if (result)
  {
    v7 = (&result->super.super.super.super.super.super.isa + *MEMORY[0x29EDC5638]);
    v8 = [(IOGPUMetalResource *)result gpuAddress];
    result = [(IOGPUMetalResource *)v6 virtualAddress];
    v9 = v7[2] & 0x1F00000000000000 | a2 | 0x2000000000000000;
    v7[1] = v8;
    v7[2] = v9;
    v7[3] = result;
  }

  a1[1] = v6;
  a1[3] = v6;
  return result;
}

AGXBuffer *AGX::DeviceInternalBuffer<AGX::DepthBiasBitsBufferInfo>::grow(uint64_t *a1, unsigned int a2)
{
  v4 = *a1;
  v17 = 0;
  v18 = 0;
  v12[0] = 0;
  v12[1] = 0x100010001;
  v13 = 16777473;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  v19 = a2;
  v20 = xmmword_29D2F1FE0;
  v21 = 0;
  LODWORD(v11) = 104;
  result = [(IOGPUMetalBuffer *)[AGXBuffer alloc] initWithDevice:v4 pointer:0 length:a2 options:0 sysMemSize:a2 vidMemSize:0 args:v12 argsSize:v11 deallocator:0];
  v6 = result;
  v7 = MEMORY[0x29EDC5638];
  if (result)
  {
    v8 = (&result->super.super.super.super.super.super.isa + *MEMORY[0x29EDC5638]);
    v9 = [(IOGPUMetalResource *)result gpuAddress];
    result = [(IOGPUMetalResource *)v6 virtualAddress];
    v10 = v8[2] & 0x1F00000000000000 | a2 | 0x2000000000000000;
    v8[1] = v9;
    v8[2] = v10;
    v8[3] = result;
  }

  a1[1] = v6;
  a1[3] = v6;
  a1[5] = *(&v6->super.super._res.var0 + *v7);
  return result;
}

uint64_t findEnvVarNum<unsigned long long>(const char *a1, void *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v4 = getenv(a1);
  if (!v4 || (v5 = v4, !*v4))
  {
LABEL_9:
    result = 0;
    *a2 = 0;
    return result;
  }

  result = sscanf(v4, "0x%llx", a2);
  if (result != 1)
  {
    result = sscanf(v5, "%llu", a2);
    if (result != 1)
    {
      fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: *** Unsupported value for EV %s (%s)\n", "agxs_util.cpp", 331, "findEnvVarNum", a1, v5);
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v8 = "agxs_util.cpp";
        v9 = 1024;
        v10 = 331;
        v11 = 2080;
        v12 = "findEnvVarNum";
        v13 = 2080;
        v14 = a1;
        v15 = 2080;
        v16 = v5;
        _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** Unsupported value for EV %s (%s)\n", buf, 0x30u);
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
      {
        *buf = 136316162;
        v8 = "agxs_util.cpp";
        v9 = 1024;
        v10 = 331;
        v11 = 2080;
        v12 = "findEnvVarNum";
        v13 = 2080;
        v14 = a1;
        v15 = 2080;
        v16 = v5;
        _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: %s:%d:%s: *** Unsupported value for EV %s (%s)\n", buf, 0x30u);
      }

      goto LABEL_9;
    }
  }

  return result;
}

void findEnvVarNum<BOOL>(const char *a1, _BYTE *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v4 = getenv(a1);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = *v4;
  if (*v4)
  {
    if (v5 == 48)
    {
      LOBYTE(v5) = v4[1];
      if (!v5)
      {
        goto LABEL_13;
      }
    }

    else if (v5 == 49 && !v4[1])
    {
      LOBYTE(v5) = 1;
      goto LABEL_13;
    }

    v6 = v4;
    fprintf(*MEMORY[0x29EDCA610], "AGX: %s:%d:%s: *** Unsupported value for EV %s (%s)\n", "agxs_util.cpp", 331, "findEnvVarNum", a1, v4);
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v8 = "agxs_util.cpp";
      v9 = 1024;
      v10 = 331;
      v11 = 2080;
      v12 = "findEnvVarNum";
      v13 = 2080;
      v14 = a1;
      v15 = 2080;
      v16 = v6;
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: %s:%d:%s: *** Unsupported value for EV %s (%s)\n", buf, 0x30u);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      *buf = 136316162;
      v8 = "agxs_util.cpp";
      v9 = 1024;
      v10 = 331;
      v11 = 2080;
      v12 = "findEnvVarNum";
      v13 = 2080;
      v14 = a1;
      v15 = 2080;
      v16 = v6;
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: %s:%d:%s: *** Unsupported value for EV %s (%s)\n", buf, 0x30u);
    }

LABEL_12:
    LOBYTE(v5) = 0;
  }

LABEL_13:
  *a2 = v5;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE10]();
}

{
  return MEMORY[0x2A1C6FE18]();
}

{
  return MEMORY[0x2A1C6FE20]();
}

{
  return MEMORY[0x2A1C6FE38]();
}

{
  return MEMORY[0x2A1C6FE50]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}