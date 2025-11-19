uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj8ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v14, 512, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v15, 512, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v16, 512, v5, v3[2]);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v17, 512, v5 + v6, v3[3]);
  v8 = *(a1 + 80);
  if (v8)
  {
    v9 = 0;
    v10 = &v14[32 * *(a1 + 72) + 8 * *(a1 + 76)];
    LODWORD(v11) = *(a1 + 84);
    do
    {
      if (v11)
      {
        v12 = 0;
        v13 = *(a1 + 56) + *(a1 + 64) * v9;
        do
        {
          *(v13 + v12) = *(v10 + v12);
          ++v12;
          v11 = *(a1 + 84);
        }

        while (v11 << 7 > v12);
        v8 = *(a1 + 80);
      }

      ++v9;
      v10 += 32;
    }

    while (v9 < v8);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj8ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v14, 512, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v15, 512, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v16, 512, v5, v3[2]);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v17, 512, v5 + v6, v3[3]);
  v8 = *(a1 + 80);
  if (v8)
  {
    v9 = 0;
    v10 = &v14[32 * *(a1 + 72) + 8 * *(a1 + 76)];
    LODWORD(v11) = *(a1 + 84);
    do
    {
      if (v11)
      {
        v12 = 0;
        v13 = *(a1 + 56) + *(a1 + 64) * v9;
        do
        {
          *(v13 + v12) = *(v10 + v12);
          ++v12;
          v11 = *(a1 + 84);
        }

        while (v11 << 7 > v12);
        v8 = *(a1 + 80);
      }

      ++v9;
      v10 += 32;
    }

    while (v9 < v8);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj8ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v14, 512, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v15, 512, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v16, 512, v5, v3[2]);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v17, 512, v5 + v6, v3[3]);
  v8 = *(a1 + 80);
  if (v8)
  {
    v9 = 0;
    v10 = &v14[32 * *(a1 + 72) + 8 * *(a1 + 76)];
    LODWORD(v11) = *(a1 + 84);
    do
    {
      if (v11)
      {
        v12 = 0;
        v13 = *(a1 + 56) + *(a1 + 64) * v9;
        do
        {
          *(v13 + v12) = *(v10 + v12);
          ++v12;
          v11 = *(a1 + 84);
        }

        while (v11 << 7 > v12);
        v8 = *(a1 + 80);
      }

      ++v9;
      v10 += 32;
    }

    while (v9 < v8);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj8ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v14, 512, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v15, 512, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v16, 512, v5, v3[2]);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v17, 512, v5 + v6, v3[3]);
  v8 = *(a1 + 80);
  if (v8)
  {
    v9 = 0;
    v10 = &v14[32 * *(a1 + 72) + 8 * *(a1 + 76)];
    LODWORD(v11) = *(a1 + 84);
    do
    {
      if (v11)
      {
        v12 = 0;
        v13 = *(a1 + 56) + *(a1 + 64) * v9;
        do
        {
          *(v13 + v12) = *(v10 + v12);
          ++v12;
          v11 = *(a1 + 84);
        }

        while (v11 << 7 > v12);
        v8 = *(a1 + 80);
      }

      ++v9;
      v10 += 32;
    }

    while (v9 < v8);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72) + *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72) + *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72) + *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72) + *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72) + *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72) + *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72) + *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72) + *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72) + *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72) + *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72) + *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72) + *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72) + *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72) + *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72) + *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72) + *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30E1;
  v5 = 16;
  do
  {
    result = &v31[1024 * *v4 + 128 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 255)
    {
      v10 = *(v2 + 16);
      v11 = *(v2 + 32);
      v12 = *(v2 + 48);
      v13 = *(v2 + 64);
      v14 = *(v2 + 80);
      v15 = *(v2 + 96);
      v16 = *(v2 + 112);
      v17 = *(v2 + 128);
      v18 = *(v2 + 144);
      v19 = *(v2 + 160);
      v20 = *(v2 + 176);
      v21 = *(v2 + 192);
      v22 = *(v2 + 208);
      v23 = *(v2 + 224);
      v24 = *(v2 + 240);
      *result = *v2;
      result[1] = v10;
      result[2] = v11;
      result[3] = v12;
      result[4] = v13;
      result[5] = v14;
      result[6] = v15;
      result[7] = v16;
      result[32] = v17;
      result[33] = v18;
      result[34] = v19;
      result[35] = v20;
      v7 = 256;
      result[36] = v21;
      result[37] = v22;
      result[38] = v23;
      result[39] = v24;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *result = v6;
      result[1] = v6;
      result[2] = v6;
      result[3] = v6;
      result[4] = v6;
      result[5] = v6;
      result[6] = v6;
      result[7] = v6;
      result[32] = v6;
      result[33] = v6;
      result[34] = v6;
      result[35] = v6;
      result[36] = v6;
      result[37] = v6;
      result[38] = v6;
      result[39] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 512, v2, v9);
      v7 = result;
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
    v27 = &v31[512 * *(a1 + 72) + 64 * *(a1 + 76)];
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

        while (v28 << 6 > v29);
        v25 = *(a1 + 80);
      }

      ++v26;
      v27 += 512;
    }

    while (v26 < v25);
  }

  return result;
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30E1;
  v5 = 16;
  do
  {
    result = &v31[1024 * *v4 + 128 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 255)
    {
      v10 = *(v2 + 16);
      v11 = *(v2 + 32);
      v12 = *(v2 + 48);
      v13 = *(v2 + 64);
      v14 = *(v2 + 80);
      v15 = *(v2 + 96);
      v16 = *(v2 + 112);
      v17 = *(v2 + 128);
      v18 = *(v2 + 144);
      v19 = *(v2 + 160);
      v20 = *(v2 + 176);
      v21 = *(v2 + 192);
      v22 = *(v2 + 208);
      v23 = *(v2 + 224);
      v24 = *(v2 + 240);
      *result = *v2;
      result[1] = v10;
      result[2] = v11;
      result[3] = v12;
      result[4] = v13;
      result[5] = v14;
      result[6] = v15;
      result[7] = v16;
      result[32] = v17;
      result[33] = v18;
      result[34] = v19;
      result[35] = v20;
      v7 = 256;
      result[36] = v21;
      result[37] = v22;
      result[38] = v23;
      result[39] = v24;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *result = v6;
      result[1] = v6;
      result[2] = v6;
      result[3] = v6;
      result[4] = v6;
      result[5] = v6;
      result[6] = v6;
      result[7] = v6;
      result[32] = v6;
      result[33] = v6;
      result[34] = v6;
      result[35] = v6;
      result[36] = v6;
      result[37] = v6;
      result[38] = v6;
      result[39] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 512, v2, v9);
      v7 = result;
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
    v27 = &v31[512 * *(a1 + 72) + 64 * *(a1 + 76)];
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

        while (v28 << 6 > v29);
        v25 = *(a1 + 80);
      }

      ++v26;
      v27 += 512;
    }

    while (v26 < v25);
  }

  return result;
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30E1;
  v5 = 16;
  do
  {
    result = &v31[1024 * *v4 + 128 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 255)
    {
      v10 = *(v2 + 16);
      v11 = *(v2 + 32);
      v12 = *(v2 + 48);
      v13 = *(v2 + 64);
      v14 = *(v2 + 80);
      v15 = *(v2 + 96);
      v16 = *(v2 + 112);
      v17 = *(v2 + 128);
      v18 = *(v2 + 144);
      v19 = *(v2 + 160);
      v20 = *(v2 + 176);
      v21 = *(v2 + 192);
      v22 = *(v2 + 208);
      v23 = *(v2 + 224);
      v24 = *(v2 + 240);
      *result = *v2;
      result[1] = v10;
      result[2] = v11;
      result[3] = v12;
      result[4] = v13;
      result[5] = v14;
      result[6] = v15;
      result[7] = v16;
      result[32] = v17;
      result[33] = v18;
      result[34] = v19;
      result[35] = v20;
      v7 = 256;
      result[36] = v21;
      result[37] = v22;
      result[38] = v23;
      result[39] = v24;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *result = v6;
      result[1] = v6;
      result[2] = v6;
      result[3] = v6;
      result[4] = v6;
      result[5] = v6;
      result[6] = v6;
      result[7] = v6;
      result[32] = v6;
      result[33] = v6;
      result[34] = v6;
      result[35] = v6;
      result[36] = v6;
      result[37] = v6;
      result[38] = v6;
      result[39] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 512, v2, v9);
      v7 = result;
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
    v27 = &v31[512 * *(a1 + 72) + 64 * *(a1 + 76)];
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

        while (v28 << 6 > v29);
        v25 = *(a1 + 80);
      }

      ++v26;
      v27 += 512;
    }

    while (v26 < v25);
  }

  return result;
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30E1;
  v5 = 16;
  do
  {
    result = &v31[1024 * *v4 + 128 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 255)
    {
      v10 = *(v2 + 16);
      v11 = *(v2 + 32);
      v12 = *(v2 + 48);
      v13 = *(v2 + 64);
      v14 = *(v2 + 80);
      v15 = *(v2 + 96);
      v16 = *(v2 + 112);
      v17 = *(v2 + 128);
      v18 = *(v2 + 144);
      v19 = *(v2 + 160);
      v20 = *(v2 + 176);
      v21 = *(v2 + 192);
      v22 = *(v2 + 208);
      v23 = *(v2 + 224);
      v24 = *(v2 + 240);
      *result = *v2;
      result[1] = v10;
      result[2] = v11;
      result[3] = v12;
      result[4] = v13;
      result[5] = v14;
      result[6] = v15;
      result[7] = v16;
      result[32] = v17;
      result[33] = v18;
      result[34] = v19;
      result[35] = v20;
      v7 = 256;
      result[36] = v21;
      result[37] = v22;
      result[38] = v23;
      result[39] = v24;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *result = v6;
      result[1] = v6;
      result[2] = v6;
      result[3] = v6;
      result[4] = v6;
      result[5] = v6;
      result[6] = v6;
      result[7] = v6;
      result[32] = v6;
      result[33] = v6;
      result[34] = v6;
      result[35] = v6;
      result[36] = v6;
      result[37] = v6;
      result[38] = v6;
      result[39] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 512, v2, v9);
      v7 = result;
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
    v27 = &v31[512 * *(a1 + 72) + 64 * *(a1 + 76)];
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

        while (v28 << 6 > v29);
        v25 = *(a1 + 80);
      }

      ++v26;
      v27 += 512;
    }

    while (v26 < v25);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int8x8_t a2, __n128 a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = 0;
    v7 = &v11[128 * *(a1 + 72) + 16 * *(a1 + 76)];
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

        while (16 * v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 128;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int8x8_t a2, __n128 a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = 0;
    v7 = &v11[128 * *(a1 + 72) + 16 * *(a1 + 76)];
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

        while (16 * v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 128;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int8x8_t a2, __n128 a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = 0;
    v7 = &v11[128 * *(a1 + 72) + 16 * *(a1 + 76)];
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

        while (16 * v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 128;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int8x8_t a2, __n128 a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = 0;
    v7 = &v11[128 * *(a1 + 72) + 16 * *(a1 + 76)];
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

        while (16 * v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 128;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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
          *(v8 + v7) = *(v5->f64 + v7);
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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
          *(v8 + v7) = *(v5->f64 + v7);
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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
          *(v8 + v7) = *(v5->f64 + v7);
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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
          *(v8 + v7) = *(v5->f64 + v7);
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

int16x8_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

int16x8_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

int16x8_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

int16x8_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, __n128 a3, __n128 a4, __n128 a5)
{
  v14 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v13, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = 0;
    v9 = &v13[128 * *(a1 + 72) + 16 * *(a1 + 76)];
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

        while (16 * v10 > v11);
        v7 = *(a1 + 80);
      }

      ++v8;
      v9 += 128;
    }

    while (v8 < v7);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, __n128 a3, __n128 a4, __n128 a5)
{
  v14 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v13, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = 0;
    v9 = &v13[128 * *(a1 + 72) + 16 * *(a1 + 76)];
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

        while (16 * v10 > v11);
        v7 = *(a1 + 80);
      }

      ++v8;
      v9 += 128;
    }

    while (v8 < v7);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, __n128 a3, __n128 a4, __n128 a5)
{
  v14 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v13, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = 0;
    v9 = &v13[128 * *(a1 + 72) + 16 * *(a1 + 76)];
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

        while (16 * v10 > v11);
        v7 = *(a1 + 80);
      }

      ++v8;
      v9 += 128;
    }

    while (v8 < v7);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, __n128 a3, __n128 a4, __n128 a5)
{
  v14 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v13, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = 0;
    v9 = &v13[128 * *(a1 + 72) + 16 * *(a1 + 76)];
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

        while (16 * v10 > v11);
        v7 = *(a1 + 80);
      }

      ++v8;
      v9 += 128;
    }

    while (v8 < v7);
  }

  return result;
}

int8x16_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

int8x16_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

int8x16_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

int8x16_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, double a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = 0;
    v7 = &v11[64 * *(a1 + 72) + 8 * *(a1 + 76)];
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

        while (8 * v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 64;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, double a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = 0;
    v7 = &v11[64 * *(a1 + 72) + 8 * *(a1 + 76)];
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

        while (8 * v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 64;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, double a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = 0;
    v7 = &v11[64 * *(a1 + 72) + 8 * *(a1 + 76)];
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

        while (8 * v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 64;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, double a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = 0;
    v7 = &v11[64 * *(a1 + 72) + 8 * *(a1 + 76)];
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

        while (8 * v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 64;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj4ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v14, 512, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v16, 512, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v15, 512, v5, v3[2]);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v17, 512, v5 + v6, v3[3]);
  v8 = *(a1 + 80);
  if (v8)
  {
    v9 = 0;
    v10 = &v14[32 * *(a1 + 72) + 4 * *(a1 + 76)];
    LODWORD(v11) = *(a1 + 84);
    do
    {
      if (v11)
      {
        v12 = 0;
        v13 = *(a1 + 56) + *(a1 + 64) * v9;
        do
        {
          *(v13 + v12) = *(v10 + v12);
          ++v12;
          v11 = *(a1 + 84);
        }

        while (v11 << 6 > v12);
        v8 = *(a1 + 80);
      }

      ++v9;
      v10 += 32;
    }

    while (v9 < v8);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj4ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v14, 512, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v16, 512, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v15, 512, v5, v3[2]);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v17, 512, v5 + v6, v3[3]);
  v8 = *(a1 + 80);
  if (v8)
  {
    v9 = 0;
    v10 = &v14[32 * *(a1 + 72) + 4 * *(a1 + 76)];
    LODWORD(v11) = *(a1 + 84);
    do
    {
      if (v11)
      {
        v12 = 0;
        v13 = *(a1 + 56) + *(a1 + 64) * v9;
        do
        {
          *(v13 + v12) = *(v10 + v12);
          ++v12;
          v11 = *(a1 + 84);
        }

        while (v11 << 6 > v12);
        v8 = *(a1 + 80);
      }

      ++v9;
      v10 += 32;
    }

    while (v9 < v8);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj4ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v14, 512, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v16, 512, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v15, 512, v5, v3[2]);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v17, 512, v5 + v6, v3[3]);
  v8 = *(a1 + 80);
  if (v8)
  {
    v9 = 0;
    v10 = &v14[32 * *(a1 + 72) + 4 * *(a1 + 76)];
    LODWORD(v11) = *(a1 + 84);
    do
    {
      if (v11)
      {
        v12 = 0;
        v13 = *(a1 + 56) + *(a1 + 64) * v9;
        do
        {
          *(v13 + v12) = *(v10 + v12);
          ++v12;
          v11 = *(a1 + 84);
        }

        while (v11 << 6 > v12);
        v8 = *(a1 + 80);
      }

      ++v9;
      v10 += 32;
    }

    while (v9 < v8);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj4ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v14, 512, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v16, 512, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v15, 512, v5, v3[2]);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v17, 512, v5 + v6, v3[3]);
  v8 = *(a1 + 80);
  if (v8)
  {
    v9 = 0;
    v10 = &v14[32 * *(a1 + 72) + 4 * *(a1 + 76)];
    LODWORD(v11) = *(a1 + 84);
    do
    {
      if (v11)
      {
        v12 = 0;
        v13 = *(a1 + 56) + *(a1 + 64) * v9;
        do
        {
          *(v13 + v12) = *(v10 + v12);
          ++v12;
          v11 = *(a1 + 84);
        }

        while (v11 << 6 > v12);
        v8 = *(a1 + 80);
      }

      ++v9;
      v10 += 32;
    }

    while (v9 < v8);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72) + *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72) + *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72) + *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72) + *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[8 * *(a1 + 76)];
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
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[8 * *(a1 + 76)];
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
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[8 * *(a1 + 76)];
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
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[8 * *(a1 + 76)];
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
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[8 * *(a1 + 76)];
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
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[8 * *(a1 + 76)];
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
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[8 * *(a1 + 76)];
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
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[8 * *(a1 + 76)];
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
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[8 * *(a1 + 76)];
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
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[8 * *(a1 + 76)];
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
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[8 * *(a1 + 76)];
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
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[8 * *(a1 + 76)];
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
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[8 * *(a1 + 76)];
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
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[8 * *(a1 + 76)];
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
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[8 * *(a1 + 76)];
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
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[4 * *(a1 + 72)].i8[8 * *(a1 + 76)];
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
      v5 += 64;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FE5;
  v5 = 16;
  do
  {
    result = &v31[512 * *v4 + 128 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 255)
    {
      v10 = *(v2 + 16);
      v11 = *(v2 + 32);
      v12 = *(v2 + 48);
      v13 = *(v2 + 64);
      v14 = *(v2 + 80);
      v15 = *(v2 + 96);
      v16 = *(v2 + 112);
      v17 = *(v2 + 128);
      v18 = *(v2 + 144);
      v19 = *(v2 + 160);
      v20 = *(v2 + 176);
      v21 = *(v2 + 192);
      v22 = *(v2 + 208);
      v23 = *(v2 + 224);
      v24 = *(v2 + 240);
      *result = *v2;
      result[1] = v10;
      result[2] = v11;
      result[3] = v12;
      result[4] = v17;
      result[5] = v18;
      result[6] = v19;
      result[7] = v20;
      result[16] = v13;
      result[17] = v14;
      result[18] = v15;
      result[19] = v16;
      v7 = 256;
      result[20] = v21;
      result[21] = v22;
      result[22] = v23;
      result[23] = v24;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *result = v6;
      result[1] = v6;
      result[2] = v6;
      result[3] = v6;
      result[4] = v6;
      result[5] = v6;
      result[6] = v6;
      result[7] = v6;
      result[16] = v6;
      result[17] = v6;
      result[18] = v6;
      result[19] = v6;
      result[20] = v6;
      result[21] = v6;
      result[22] = v6;
      result[23] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 256, v2, v9);
      v7 = result;
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
    v27 = &v31[256 * *(a1 + 72) + 32 * *(a1 + 76)];
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

        while (32 * v28 > v29);
        v25 = *(a1 + 80);
      }

      ++v26;
      v27 += 256;
    }

    while (v26 < v25);
  }

  return result;
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FE5;
  v5 = 16;
  do
  {
    result = &v31[512 * *v4 + 128 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 255)
    {
      v10 = *(v2 + 16);
      v11 = *(v2 + 32);
      v12 = *(v2 + 48);
      v13 = *(v2 + 64);
      v14 = *(v2 + 80);
      v15 = *(v2 + 96);
      v16 = *(v2 + 112);
      v17 = *(v2 + 128);
      v18 = *(v2 + 144);
      v19 = *(v2 + 160);
      v20 = *(v2 + 176);
      v21 = *(v2 + 192);
      v22 = *(v2 + 208);
      v23 = *(v2 + 224);
      v24 = *(v2 + 240);
      *result = *v2;
      result[1] = v10;
      result[2] = v11;
      result[3] = v12;
      result[4] = v17;
      result[5] = v18;
      result[6] = v19;
      result[7] = v20;
      result[16] = v13;
      result[17] = v14;
      result[18] = v15;
      result[19] = v16;
      v7 = 256;
      result[20] = v21;
      result[21] = v22;
      result[22] = v23;
      result[23] = v24;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *result = v6;
      result[1] = v6;
      result[2] = v6;
      result[3] = v6;
      result[4] = v6;
      result[5] = v6;
      result[6] = v6;
      result[7] = v6;
      result[16] = v6;
      result[17] = v6;
      result[18] = v6;
      result[19] = v6;
      result[20] = v6;
      result[21] = v6;
      result[22] = v6;
      result[23] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 256, v2, v9);
      v7 = result;
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
    v27 = &v31[256 * *(a1 + 72) + 32 * *(a1 + 76)];
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

        while (32 * v28 > v29);
        v25 = *(a1 + 80);
      }

      ++v26;
      v27 += 256;
    }

    while (v26 < v25);
  }

  return result;
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FE5;
  v5 = 16;
  do
  {
    result = &v31[512 * *v4 + 128 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 255)
    {
      v10 = *(v2 + 16);
      v11 = *(v2 + 32);
      v12 = *(v2 + 48);
      v13 = *(v2 + 64);
      v14 = *(v2 + 80);
      v15 = *(v2 + 96);
      v16 = *(v2 + 112);
      v17 = *(v2 + 128);
      v18 = *(v2 + 144);
      v19 = *(v2 + 160);
      v20 = *(v2 + 176);
      v21 = *(v2 + 192);
      v22 = *(v2 + 208);
      v23 = *(v2 + 224);
      v24 = *(v2 + 240);
      *result = *v2;
      result[1] = v10;
      result[2] = v11;
      result[3] = v12;
      result[4] = v17;
      result[5] = v18;
      result[6] = v19;
      result[7] = v20;
      result[16] = v13;
      result[17] = v14;
      result[18] = v15;
      result[19] = v16;
      v7 = 256;
      result[20] = v21;
      result[21] = v22;
      result[22] = v23;
      result[23] = v24;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *result = v6;
      result[1] = v6;
      result[2] = v6;
      result[3] = v6;
      result[4] = v6;
      result[5] = v6;
      result[6] = v6;
      result[7] = v6;
      result[16] = v6;
      result[17] = v6;
      result[18] = v6;
      result[19] = v6;
      result[20] = v6;
      result[21] = v6;
      result[22] = v6;
      result[23] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 256, v2, v9);
      v7 = result;
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
    v27 = &v31[256 * *(a1 + 72) + 32 * *(a1 + 76)];
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

        while (32 * v28 > v29);
        v25 = *(a1 + 80);
      }

      ++v26;
      v27 += 256;
    }

    while (v26 < v25);
  }

  return result;
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FE5;
  v5 = 16;
  do
  {
    result = &v31[512 * *v4 + 128 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 255)
    {
      v10 = *(v2 + 16);
      v11 = *(v2 + 32);
      v12 = *(v2 + 48);
      v13 = *(v2 + 64);
      v14 = *(v2 + 80);
      v15 = *(v2 + 96);
      v16 = *(v2 + 112);
      v17 = *(v2 + 128);
      v18 = *(v2 + 144);
      v19 = *(v2 + 160);
      v20 = *(v2 + 176);
      v21 = *(v2 + 192);
      v22 = *(v2 + 208);
      v23 = *(v2 + 224);
      v24 = *(v2 + 240);
      *result = *v2;
      result[1] = v10;
      result[2] = v11;
      result[3] = v12;
      result[4] = v17;
      result[5] = v18;
      result[6] = v19;
      result[7] = v20;
      result[16] = v13;
      result[17] = v14;
      result[18] = v15;
      result[19] = v16;
      v7 = 256;
      result[20] = v21;
      result[21] = v22;
      result[22] = v23;
      result[23] = v24;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *result = v6;
      result[1] = v6;
      result[2] = v6;
      result[3] = v6;
      result[4] = v6;
      result[5] = v6;
      result[6] = v6;
      result[7] = v6;
      result[16] = v6;
      result[17] = v6;
      result[18] = v6;
      result[19] = v6;
      result[20] = v6;
      result[21] = v6;
      result[22] = v6;
      result[23] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 256, v2, v9);
      v7 = result;
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
    v27 = &v31[256 * *(a1 + 72) + 32 * *(a1 + 76)];
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

        while (32 * v28 > v29);
        v25 = *(a1 + 80);
      }

      ++v26;
      v27 += 256;
    }

    while (v26 < v25);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int8x8_t a2, __n128 a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = 0;
    v7 = &v11[64 * *(a1 + 72) + 8 * *(a1 + 76)];
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

        while (8 * v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 64;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int8x8_t a2, __n128 a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = 0;
    v7 = &v11[64 * *(a1 + 72) + 8 * *(a1 + 76)];
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

        while (8 * v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 64;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int8x8_t a2, __n128 a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = 0;
    v7 = &v11[64 * *(a1 + 72) + 8 * *(a1 + 76)];
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

        while (8 * v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 64;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int8x8_t a2, __n128 a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = 0;
    v7 = &v11[64 * *(a1 + 72) + 8 * *(a1 + 76)];
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

        while (8 * v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 64;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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
          *(v8 + v7) = *(v5->f64 + v7);
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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
          *(v8 + v7) = *(v5->f64 + v7);
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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
          *(v8 + v7) = *(v5->f64 + v7);
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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
          *(v8 + v7) = *(v5->f64 + v7);
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

int16x8_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

int16x8_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

int16x8_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

int16x8_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, __n128 a3, __n128 a4, __n128 a5)
{
  v14 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v13, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = 0;
    v9 = &v13[64 * *(a1 + 72) + 8 * *(a1 + 76)];
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

        while (8 * v10 > v11);
        v7 = *(a1 + 80);
      }

      ++v8;
      v9 += 64;
    }

    while (v8 < v7);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, __n128 a3, __n128 a4, __n128 a5)
{
  v14 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v13, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = 0;
    v9 = &v13[64 * *(a1 + 72) + 8 * *(a1 + 76)];
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

        while (8 * v10 > v11);
        v7 = *(a1 + 80);
      }

      ++v8;
      v9 += 64;
    }

    while (v8 < v7);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, __n128 a3, __n128 a4, __n128 a5)
{
  v14 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v13, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = 0;
    v9 = &v13[64 * *(a1 + 72) + 8 * *(a1 + 76)];
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

        while (8 * v10 > v11);
        v7 = *(a1 + 80);
      }

      ++v8;
      v9 += 64;
    }

    while (v8 < v7);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, __n128 a3, __n128 a4, __n128 a5)
{
  v14 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v13, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = 0;
    v9 = &v13[64 * *(a1 + 72) + 8 * *(a1 + 76)];
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

        while (8 * v10 > v11);
        v7 = *(a1 + 80);
      }

      ++v8;
      v9 += 64;
    }

    while (v8 < v7);
  }

  return result;
}

int8x16_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

int8x16_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

int8x16_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

int8x16_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72) + *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72) + *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72) + *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = &v9[8 * *(a1 + 72) + *(a1 + 76)];
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

        while (16 * v6 > v7);
        v3 = *(a1 + 80);
      }

      ++v4;
      v5 += 8;
    }

    while (v4 < v3);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, double a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = 0;
    v7 = &v11[2 * *(a1 + 72)] + 4 * *(a1 + 76);
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

        while (4 * v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 32;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, double a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = 0;
    v7 = &v11[2 * *(a1 + 72)] + 4 * *(a1 + 76);
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

        while (4 * v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 32;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, double a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = 0;
    v7 = &v11[2 * *(a1 + 72)] + 4 * *(a1 + 76);
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

        while (4 * v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 32;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, double a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = 0;
    v7 = &v11[2 * *(a1 + 72)] + 4 * *(a1 + 76);
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

        while (4 * v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 32;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj2ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v17[113] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v14, 256, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v15, 256, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v16, 256, v5, v3[2]);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v17, 256, v5 + v6, v3[3]);
  v8 = *(a1 + 80);
  if (v8)
  {
    v9 = 0;
    v10 = &v14[256 * *(a1 + 72) + 32 * *(a1 + 76)];
    LODWORD(v11) = *(a1 + 84);
    do
    {
      if (v11)
      {
        v12 = 0;
        v13 = *(a1 + 56) + *(a1 + 64) * v9;
        do
        {
          *(v13 + v12) = v10[v12];
          ++v12;
          v11 = *(a1 + 84);
        }

        while (32 * v11 > v12);
        v8 = *(a1 + 80);
      }

      ++v9;
      v10 += 256;
    }

    while (v9 < v8);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj2ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v17[113] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v14, 256, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v15, 256, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v16, 256, v5, v3[2]);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v17, 256, v5 + v6, v3[3]);
  v8 = *(a1 + 80);
  if (v8)
  {
    v9 = 0;
    v10 = &v14[256 * *(a1 + 72) + 32 * *(a1 + 76)];
    LODWORD(v11) = *(a1 + 84);
    do
    {
      if (v11)
      {
        v12 = 0;
        v13 = *(a1 + 56) + *(a1 + 64) * v9;
        do
        {
          *(v13 + v12) = v10[v12];
          ++v12;
          v11 = *(a1 + 84);
        }

        while (32 * v11 > v12);
        v8 = *(a1 + 80);
      }

      ++v9;
      v10 += 256;
    }

    while (v9 < v8);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj2ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v17[113] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v14, 256, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v15, 256, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v16, 256, v5, v3[2]);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v17, 256, v5 + v6, v3[3]);
  v8 = *(a1 + 80);
  if (v8)
  {
    v9 = 0;
    v10 = &v14[256 * *(a1 + 72) + 32 * *(a1 + 76)];
    LODWORD(v11) = *(a1 + 84);
    do
    {
      if (v11)
      {
        v12 = 0;
        v13 = *(a1 + 56) + *(a1 + 64) * v9;
        do
        {
          *(v13 + v12) = v10[v12];
          ++v12;
          v11 = *(a1 + 84);
        }

        while (32 * v11 > v12);
        v8 = *(a1 + 80);
      }

      ++v9;
      v10 += 256;
    }

    while (v9 < v8);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj2ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v17[113] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v14, 256, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v15, 256, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v16, 256, v5, v3[2]);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v17, 256, v5 + v6, v3[3]);
  v8 = *(a1 + 80);
  if (v8)
  {
    v9 = 0;
    v10 = &v14[256 * *(a1 + 72) + 32 * *(a1 + 76)];
    LODWORD(v11) = *(a1 + 84);
    do
    {
      if (v11)
      {
        v12 = 0;
        v13 = *(a1 + 56) + *(a1 + 64) * v9;
        do
        {
          *(v13 + v12) = v10[v12];
          ++v12;
          v11 = *(a1 + 84);
        }

        while (32 * v11 > v12);
        v8 = *(a1 + 80);
      }

      ++v9;
      v10 += 256;
    }

    while (v9 < v8);
  }

  return result;
}

_BYTE *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
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
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 128, v2, v9);
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

_BYTE *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
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
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 128, v2, v9);
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

_BYTE *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
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
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 128, v2, v9);
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

_BYTE *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
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
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 128, v2, v9);
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

_BYTE *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
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
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 128, v2, v9);
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

_BYTE *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
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
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 128, v2, v9);
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

_BYTE *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
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
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 128, v2, v9);
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

_BYTE *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
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
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 128, v2, v9);
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

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    result = &v19[256 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v21 = vld2q_f64(v12);
      *result = vzip1q_s64(*v2, v11);
      result[4] = vzip2q_s64(v10, v11);
      result[8] = v21.val[0];
      result[12] = v21.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[4] = v6;
      result[8] = v6;
      result[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 64, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[8].i64[0] = 0;
      result[8].i64[1] = 0;
      result[12].i64[0] = 0;
      result[12].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    v15 = &v19[64 * *(a1 + 72) + 4 * *(a1 + 76)];
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

        while (4 * v16 > v17);
        v13 = *(a1 + 80);
      }

      ++v14;
      v15 += 64;
    }

    while (v14 < v13);
  }

  return result;
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    result = &v19[256 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v21 = vld2q_f64(v12);
      *result = vzip1q_s64(*v2, v11);
      result[4] = vzip2q_s64(v10, v11);
      result[8] = v21.val[0];
      result[12] = v21.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[4] = v6;
      result[8] = v6;
      result[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 64, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[8].i64[0] = 0;
      result[8].i64[1] = 0;
      result[12].i64[0] = 0;
      result[12].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    v15 = &v19[64 * *(a1 + 72) + 4 * *(a1 + 76)];
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

        while (4 * v16 > v17);
        v13 = *(a1 + 80);
      }

      ++v14;
      v15 += 64;
    }

    while (v14 < v13);
  }

  return result;
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    result = &v19[256 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v21 = vld2q_f64(v12);
      *result = vzip1q_s64(*v2, v11);
      result[4] = vzip2q_s64(v10, v11);
      result[8] = v21.val[0];
      result[12] = v21.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[4] = v6;
      result[8] = v6;
      result[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 64, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[8].i64[0] = 0;
      result[8].i64[1] = 0;
      result[12].i64[0] = 0;
      result[12].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    v15 = &v19[64 * *(a1 + 72) + 4 * *(a1 + 76)];
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

        while (4 * v16 > v17);
        v13 = *(a1 + 80);
      }

      ++v14;
      v15 += 64;
    }

    while (v14 < v13);
  }

  return result;
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    result = &v19[256 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v21 = vld2q_f64(v12);
      *result = vzip1q_s64(*v2, v11);
      result[4] = vzip2q_s64(v10, v11);
      result[8] = v21.val[0];
      result[12] = v21.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[4] = v6;
      result[8] = v6;
      result[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 64, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[8].i64[0] = 0;
      result[8].i64[1] = 0;
      result[12].i64[0] = 0;
      result[12].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    v15 = &v19[64 * *(a1 + 72) + 4 * *(a1 + 76)];
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

        while (4 * v16 > v17);
        v13 = *(a1 + 80);
      }

      ++v14;
      v15 += 64;
    }

    while (v14 < v13);
  }

  return result;
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    result = &v19[256 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v21 = vld2q_f64(v12);
      *result = vzip1q_s64(*v2, v11);
      result[4] = vzip2q_s64(v10, v11);
      result[8] = v21.val[0];
      result[12] = v21.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[4] = v6;
      result[8] = v6;
      result[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 64, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[8].i64[0] = 0;
      result[8].i64[1] = 0;
      result[12].i64[0] = 0;
      result[12].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    v15 = &v19[64 * *(a1 + 72) + 4 * *(a1 + 76)];
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

        while (4 * v16 > v17);
        v13 = *(a1 + 80);
      }

      ++v14;
      v15 += 64;
    }

    while (v14 < v13);
  }

  return result;
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    result = &v19[256 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v21 = vld2q_f64(v12);
      *result = vzip1q_s64(*v2, v11);
      result[4] = vzip2q_s64(v10, v11);
      result[8] = v21.val[0];
      result[12] = v21.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[4] = v6;
      result[8] = v6;
      result[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 64, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[8].i64[0] = 0;
      result[8].i64[1] = 0;
      result[12].i64[0] = 0;
      result[12].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    v15 = &v19[64 * *(a1 + 72) + 4 * *(a1 + 76)];
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

        while (4 * v16 > v17);
        v13 = *(a1 + 80);
      }

      ++v14;
      v15 += 64;
    }

    while (v14 < v13);
  }

  return result;
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    result = &v19[256 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v21 = vld2q_f64(v12);
      *result = vzip1q_s64(*v2, v11);
      result[4] = vzip2q_s64(v10, v11);
      result[8] = v21.val[0];
      result[12] = v21.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[4] = v6;
      result[8] = v6;
      result[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 64, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[8].i64[0] = 0;
      result[8].i64[1] = 0;
      result[12].i64[0] = 0;
      result[12].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    v15 = &v19[64 * *(a1 + 72) + 4 * *(a1 + 76)];
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

        while (4 * v16 > v17);
        v13 = *(a1 + 80);
      }

      ++v14;
      v15 += 64;
    }

    while (v14 < v13);
  }

  return result;
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    result = &v19[256 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v21 = vld2q_f64(v12);
      *result = vzip1q_s64(*v2, v11);
      result[4] = vzip2q_s64(v10, v11);
      result[8] = v21.val[0];
      result[12] = v21.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[4] = v6;
      result[8] = v6;
      result[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 64, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[8].i64[0] = 0;
      result[8].i64[1] = 0;
      result[12].i64[0] = 0;
      result[12].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    v15 = &v19[64 * *(a1 + 72) + 4 * *(a1 + 76)];
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

        while (4 * v16 > v17);
        v13 = *(a1 + 80);
      }

      ++v14;
      v15 += 64;
    }

    while (v14 < v13);
  }

  return result;
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    result = &v19[256 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v21 = vld2q_f64(v12);
      *result = vzip1q_s64(*v2, v11);
      result[4] = vzip2q_s64(v10, v11);
      result[8] = v21.val[0];
      result[12] = v21.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[4] = v6;
      result[8] = v6;
      result[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 64, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[8].i64[0] = 0;
      result[8].i64[1] = 0;
      result[12].i64[0] = 0;
      result[12].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    v15 = &v19[64 * *(a1 + 72) + 4 * *(a1 + 76)];
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

        while (4 * v16 > v17);
        v13 = *(a1 + 80);
      }

      ++v14;
      v15 += 64;
    }

    while (v14 < v13);
  }

  return result;
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    result = &v19[256 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v21 = vld2q_f64(v12);
      *result = vzip1q_s64(*v2, v11);
      result[4] = vzip2q_s64(v10, v11);
      result[8] = v21.val[0];
      result[12] = v21.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[4] = v6;
      result[8] = v6;
      result[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 64, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[8].i64[0] = 0;
      result[8].i64[1] = 0;
      result[12].i64[0] = 0;
      result[12].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    v15 = &v19[64 * *(a1 + 72) + 4 * *(a1 + 76)];
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

        while (4 * v16 > v17);
        v13 = *(a1 + 80);
      }

      ++v14;
      v15 += 64;
    }

    while (v14 < v13);
  }

  return result;
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    result = &v19[256 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v21 = vld2q_f64(v12);
      *result = vzip1q_s64(*v2, v11);
      result[4] = vzip2q_s64(v10, v11);
      result[8] = v21.val[0];
      result[12] = v21.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[4] = v6;
      result[8] = v6;
      result[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 64, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[8].i64[0] = 0;
      result[8].i64[1] = 0;
      result[12].i64[0] = 0;
      result[12].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    v15 = &v19[64 * *(a1 + 72) + 4 * *(a1 + 76)];
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

        while (4 * v16 > v17);
        v13 = *(a1 + 80);
      }

      ++v14;
      v15 += 64;
    }

    while (v14 < v13);
  }

  return result;
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    result = &v19[256 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v21 = vld2q_f64(v12);
      *result = vzip1q_s64(*v2, v11);
      result[4] = vzip2q_s64(v10, v11);
      result[8] = v21.val[0];
      result[12] = v21.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[4] = v6;
      result[8] = v6;
      result[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 64, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[8].i64[0] = 0;
      result[8].i64[1] = 0;
      result[12].i64[0] = 0;
      result[12].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    v15 = &v19[64 * *(a1 + 72) + 4 * *(a1 + 76)];
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

        while (4 * v16 > v17);
        v13 = *(a1 + 80);
      }

      ++v14;
      v15 += 64;
    }

    while (v14 < v13);
  }

  return result;
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    result = &v19[256 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v21 = vld2q_f64(v12);
      *result = vzip1q_s64(*v2, v11);
      result[4] = vzip2q_s64(v10, v11);
      result[8] = v21.val[0];
      result[12] = v21.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[4] = v6;
      result[8] = v6;
      result[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 64, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[8].i64[0] = 0;
      result[8].i64[1] = 0;
      result[12].i64[0] = 0;
      result[12].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    v15 = &v19[64 * *(a1 + 72) + 4 * *(a1 + 76)];
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

        while (4 * v16 > v17);
        v13 = *(a1 + 80);
      }

      ++v14;
      v15 += 64;
    }

    while (v14 < v13);
  }

  return result;
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    result = &v19[256 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v21 = vld2q_f64(v12);
      *result = vzip1q_s64(*v2, v11);
      result[4] = vzip2q_s64(v10, v11);
      result[8] = v21.val[0];
      result[12] = v21.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[4] = v6;
      result[8] = v6;
      result[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 64, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[8].i64[0] = 0;
      result[8].i64[1] = 0;
      result[12].i64[0] = 0;
      result[12].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    v15 = &v19[64 * *(a1 + 72) + 4 * *(a1 + 76)];
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

        while (4 * v16 > v17);
        v13 = *(a1 + 80);
      }

      ++v14;
      v15 += 64;
    }

    while (v14 < v13);
  }

  return result;
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    result = &v19[256 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v21 = vld2q_f64(v12);
      *result = vzip1q_s64(*v2, v11);
      result[4] = vzip2q_s64(v10, v11);
      result[8] = v21.val[0];
      result[12] = v21.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[4] = v6;
      result[8] = v6;
      result[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 64, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[8].i64[0] = 0;
      result[8].i64[1] = 0;
      result[12].i64[0] = 0;
      result[12].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    v15 = &v19[64 * *(a1 + 72) + 4 * *(a1 + 76)];
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

        while (4 * v16 > v17);
        v13 = *(a1 + 80);
      }

      ++v14;
      v15 += 64;
    }

    while (v14 < v13);
  }

  return result;
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    result = &v19[256 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v21 = vld2q_f64(v12);
      *result = vzip1q_s64(*v2, v11);
      result[4] = vzip2q_s64(v10, v11);
      result[8] = v21.val[0];
      result[12] = v21.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *result = v6;
      result[4] = v6;
      result[8] = v6;
      result[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 64, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result->i64[0] = 0;
      result->i64[1] = 0;
      result[4].i64[0] = 0;
      result[4].i64[1] = 0;
      result[8].i64[0] = 0;
      result[8].i64[1] = 0;
      result[12].i64[0] = 0;
      result[12].i64[1] = 0;
    }

    v2 += v7;
    ++v3;
    v4 += 2;
    v5 -= 2;
  }

  while (v5);
  v13 = *(a1 + 80);
  if (v13)
  {
    v14 = 0;
    v15 = &v19[64 * *(a1 + 72) + 4 * *(a1 + 76)];
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

        while (4 * v16 > v17);
        v13 = *(a1 + 80);
      }

      ++v14;
      v15 += 64;
    }

    while (v14 < v13);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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
          *(v8 + v7) = v5->i8[v7];
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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
          *(v8 + v7) = v5->i8[v7];
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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
          *(v8 + v7) = v5->i8[v7];
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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
          *(v8 + v7) = v5->i8[v7];
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

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    result = &v31[1024 * *v4 + 64 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 255)
    {
      v10 = *(v2 + 16);
      v11 = *(v2 + 32);
      v12 = *(v2 + 48);
      v13 = *(v2 + 96);
      v14 = *(v2 + 112);
      v15 = *(v2 + 64);
      v16 = *(v2 + 80);
      v17 = *(v2 + 128);
      v18 = *(v2 + 144);
      v19 = *(v2 + 192);
      v20 = *(v2 + 208);
      v21 = *(v2 + 160);
      v22 = *(v2 + 176);
      v23 = *(v2 + 224);
      v24 = *(v2 + 240);
      *result = *v2;
      result[1] = v10;
      result[2] = v15;
      result[3] = v16;
      result[16] = v11;
      result[17] = v12;
      result[18] = v13;
      result[19] = v14;
      result[32] = v17;
      result[33] = v18;
      result[34] = v19;
      result[35] = v20;
      v7 = 256;
      result[48] = v21;
      result[49] = v22;
      result[50] = v23;
      result[51] = v24;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *result = v6;
      result[1] = v6;
      result[2] = v6;
      result[3] = v6;
      result[16] = v6;
      result[17] = v6;
      result[18] = v6;
      result[19] = v6;
      result[32] = v6;
      result[33] = v6;
      result[34] = v6;
      result[35] = v6;
      result[48] = v6;
      result[49] = v6;
      result[50] = v6;
      result[51] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 256, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result[2] = 0u;
      result[3] = 0u;
      *result = 0u;
      result[1] = 0u;
      result[16] = 0u;
      result[17] = 0u;
      result[18] = 0u;
      result[19] = 0u;
      result[32] = 0u;
      result[33] = 0u;
      result[34] = 0u;
      result[35] = 0u;
      result[48] = 0u;
      result[49] = 0u;
      result[50] = 0u;
      result[51] = 0u;
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
    v27 = &v31[256 * *(a1 + 72) + 16 * *(a1 + 76)];
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

        while (16 * v28 > v29);
        v25 = *(a1 + 80);
      }

      ++v26;
      v27 += 256;
    }

    while (v26 < v25);
  }

  return result;
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    result = &v31[1024 * *v4 + 64 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 255)
    {
      v10 = *(v2 + 16);
      v11 = *(v2 + 32);
      v12 = *(v2 + 48);
      v13 = *(v2 + 96);
      v14 = *(v2 + 112);
      v15 = *(v2 + 64);
      v16 = *(v2 + 80);
      v17 = *(v2 + 128);
      v18 = *(v2 + 144);
      v19 = *(v2 + 192);
      v20 = *(v2 + 208);
      v21 = *(v2 + 160);
      v22 = *(v2 + 176);
      v23 = *(v2 + 224);
      v24 = *(v2 + 240);
      *result = *v2;
      result[1] = v10;
      result[2] = v15;
      result[3] = v16;
      result[16] = v11;
      result[17] = v12;
      result[18] = v13;
      result[19] = v14;
      result[32] = v17;
      result[33] = v18;
      result[34] = v19;
      result[35] = v20;
      v7 = 256;
      result[48] = v21;
      result[49] = v22;
      result[50] = v23;
      result[51] = v24;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *result = v6;
      result[1] = v6;
      result[2] = v6;
      result[3] = v6;
      result[16] = v6;
      result[17] = v6;
      result[18] = v6;
      result[19] = v6;
      result[32] = v6;
      result[33] = v6;
      result[34] = v6;
      result[35] = v6;
      result[48] = v6;
      result[49] = v6;
      result[50] = v6;
      result[51] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 256, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result[2] = 0u;
      result[3] = 0u;
      *result = 0u;
      result[1] = 0u;
      result[16] = 0u;
      result[17] = 0u;
      result[18] = 0u;
      result[19] = 0u;
      result[32] = 0u;
      result[33] = 0u;
      result[34] = 0u;
      result[35] = 0u;
      result[48] = 0u;
      result[49] = 0u;
      result[50] = 0u;
      result[51] = 0u;
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
    v27 = &v31[256 * *(a1 + 72) + 16 * *(a1 + 76)];
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

        while (16 * v28 > v29);
        v25 = *(a1 + 80);
      }

      ++v26;
      v27 += 256;
    }

    while (v26 < v25);
  }

  return result;
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    result = &v31[1024 * *v4 + 64 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 255)
    {
      v10 = *(v2 + 16);
      v11 = *(v2 + 32);
      v12 = *(v2 + 48);
      v13 = *(v2 + 96);
      v14 = *(v2 + 112);
      v15 = *(v2 + 64);
      v16 = *(v2 + 80);
      v17 = *(v2 + 128);
      v18 = *(v2 + 144);
      v19 = *(v2 + 192);
      v20 = *(v2 + 208);
      v21 = *(v2 + 160);
      v22 = *(v2 + 176);
      v23 = *(v2 + 224);
      v24 = *(v2 + 240);
      *result = *v2;
      result[1] = v10;
      result[2] = v15;
      result[3] = v16;
      result[16] = v11;
      result[17] = v12;
      result[18] = v13;
      result[19] = v14;
      result[32] = v17;
      result[33] = v18;
      result[34] = v19;
      result[35] = v20;
      v7 = 256;
      result[48] = v21;
      result[49] = v22;
      result[50] = v23;
      result[51] = v24;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *result = v6;
      result[1] = v6;
      result[2] = v6;
      result[3] = v6;
      result[16] = v6;
      result[17] = v6;
      result[18] = v6;
      result[19] = v6;
      result[32] = v6;
      result[33] = v6;
      result[34] = v6;
      result[35] = v6;
      result[48] = v6;
      result[49] = v6;
      result[50] = v6;
      result[51] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 256, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result[2] = 0u;
      result[3] = 0u;
      *result = 0u;
      result[1] = 0u;
      result[16] = 0u;
      result[17] = 0u;
      result[18] = 0u;
      result[19] = 0u;
      result[32] = 0u;
      result[33] = 0u;
      result[34] = 0u;
      result[35] = 0u;
      result[48] = 0u;
      result[49] = 0u;
      result[50] = 0u;
      result[51] = 0u;
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
    v27 = &v31[256 * *(a1 + 72) + 16 * *(a1 + 76)];
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

        while (16 * v28 > v29);
        v25 = *(a1 + 80);
      }

      ++v26;
      v27 += 256;
    }

    while (v26 < v25);
  }

  return result;
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    result = &v31[1024 * *v4 + 64 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 255)
    {
      v10 = *(v2 + 16);
      v11 = *(v2 + 32);
      v12 = *(v2 + 48);
      v13 = *(v2 + 96);
      v14 = *(v2 + 112);
      v15 = *(v2 + 64);
      v16 = *(v2 + 80);
      v17 = *(v2 + 128);
      v18 = *(v2 + 144);
      v19 = *(v2 + 192);
      v20 = *(v2 + 208);
      v21 = *(v2 + 160);
      v22 = *(v2 + 176);
      v23 = *(v2 + 224);
      v24 = *(v2 + 240);
      *result = *v2;
      result[1] = v10;
      result[2] = v15;
      result[3] = v16;
      result[16] = v11;
      result[17] = v12;
      result[18] = v13;
      result[19] = v14;
      result[32] = v17;
      result[33] = v18;
      result[34] = v19;
      result[35] = v20;
      v7 = 256;
      result[48] = v21;
      result[49] = v22;
      result[50] = v23;
      result[51] = v24;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *result = v6;
      result[1] = v6;
      result[2] = v6;
      result[3] = v6;
      result[16] = v6;
      result[17] = v6;
      result[18] = v6;
      result[19] = v6;
      result[32] = v6;
      result[33] = v6;
      result[34] = v6;
      result[35] = v6;
      result[48] = v6;
      result[49] = v6;
      result[50] = v6;
      result[51] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 256, v2, v9);
      v7 = result;
    }

    else
    {
      v7 = 0;
      result[2] = 0u;
      result[3] = 0u;
      *result = 0u;
      result[1] = 0u;
      result[16] = 0u;
      result[17] = 0u;
      result[18] = 0u;
      result[19] = 0u;
      result[32] = 0u;
      result[33] = 0u;
      result[34] = 0u;
      result[35] = 0u;
      result[48] = 0u;
      result[49] = 0u;
      result[50] = 0u;
      result[51] = 0u;
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
    v27 = &v31[256 * *(a1 + 72) + 16 * *(a1 + 76)];
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

        while (16 * v28 > v29);
        v25 = *(a1 + 80);
      }

      ++v26;
      v27 += 256;
    }

    while (v26 < v25);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int64x2_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = 0;
    v7 = &v11[64 * *(a1 + 72) + 4 * *(a1 + 76)];
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

        while (4 * v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 64;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int64x2_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = 0;
    v7 = &v11[64 * *(a1 + 72) + 4 * *(a1 + 76)];
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

        while (4 * v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 64;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int64x2_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = 0;
    v7 = &v11[64 * *(a1 + 72) + 4 * *(a1 + 76)];
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

        while (4 * v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 64;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int64x2_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v11, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = 0;
    v7 = &v11[64 * *(a1 + 72) + 4 * *(a1 + 76)];
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

        while (4 * v8 > v9);
        v5 = *(a1 + 80);
      }

      ++v6;
      v7 += 64;
    }

    while (v6 < v5);
  }

  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

int16x8_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

int16x8_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

int16x8_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

int16x8_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v9, *(a1 + 40), *(a1 + 48));
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

_BYTE *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
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
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 128, v2, v9);
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

_BYTE *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
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
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 128, v2, v9);
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

_BYTE *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
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
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 128, v2, v9);
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

_BYTE *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
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
      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 128, v2, v9);
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int64x2_t a3, __n128 a4, __n128 a5)
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int64x2_t a3, __n128 a4, __n128 a5)
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb1EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int64x2_t a3, __n128 a4, __n128 a5)
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