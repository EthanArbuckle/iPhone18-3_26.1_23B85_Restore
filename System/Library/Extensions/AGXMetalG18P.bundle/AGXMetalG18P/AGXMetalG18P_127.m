unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(v40, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(v40, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(v40, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(v40, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v67 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v66, *(a1 + 40), *(a1 + 48));
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

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v39, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 7;
      v6 = 8 * *(a1 + 76);
      v7 = &v39[8 * v4].i8[v6];
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

      else if (v9 < &v39[8 * v2 - 8 + 8 * v4].u64[v10 / 8 + v6 / 8] && v7 < v9 + v8 * (v2 - 1) + v10 || v8 < 0)
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
        v23 = &v39[0].i8[v5 + v6];
        v24 = &v39[1].i8[v5 + v6];
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
            v29 += 32;
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
        v20 = (v39[1].i64 + v5 + v6);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(v39, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE5ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(v64, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(v64, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE5ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(v64, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(v64, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE5ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(v64, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(v64, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE5ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v84, *(a1 + 40), *(a1 + 48));
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

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE5ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v63, *(a1 + 40), *(a1 + 48));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(v63, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(v64, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(v64, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(v64, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(v64, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(v64, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(v64, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v84, *(a1 + 40), *(a1 + 48));
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

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v63, *(a1 + 40), *(a1 + 48));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(v63, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(v64, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
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
      v12 = &v64[4 * v3 - 4 + 4 * v5].i8[4 * v4 + 4 * (v7 / 4)];
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(v64, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(v64, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
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
      v12 = &v64[4 * v3 - 4 + 4 * v5].i8[4 * v4 + 4 * (v7 / 4)];
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(v64, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(v64, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
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
      v12 = &v64[4 * v3 - 4 + 4 * v5].i8[4 * v4 + 4 * (v7 / 4)];
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(v64, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v84, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 6;
      result = 4 * *(a1 + 76);
      v7 = &v84[64 * v5 + result];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 4 * v4;
      v11 = &v84[64 * v3 - 64 + 64 * v5 + 4 * v4 + result];
      v14 = v7 < v9 + 4 * v4 + v8 * (v3 - 1) && v9 < v11 || v8 < 0;
      if (v4 == 1)
      {
        for (i = 0; i != v3; ++i)
        {
          v16 = v9 + v8 * i;
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
            v7[v23] = *(v9 + v23);
            ++v23;
          }

          while (v10 > v23);
          v7 += 64;
          v9 = (v9 + v8);
        }
      }

      else if (v14)
      {
        for (k = 0; k != v3; ++k)
        {
          v21 = 0;
          do
          {
            v7[v21] = *(v9 + v21);
            ++v21;
          }

          while (v10 > v21);
          v7 += 64;
          v9 = (v9 + v8);
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
            v55 = &v84[v6 + 16 + result];
            v56 = (v9 + 2);
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
                v58 += 2;
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
            v71 = &v84[v6 + result];
            v72 = &v84[v6 + 16 + result];
            result = (v9 + 2);
            v73 = (v9 + v53);
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
                v76 += 2;
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
                *v80++ = v83;
                v82 -= 8;
              }

              while (v82);
              v79 = v10 & 0x1FFFFFFF8;
              if (v10 != v47)
              {
LABEL_71:
                do
                {
                  v7[v79] = *(v9 + v79);
                  ++v79;
                }

                while (v10 > v79);
              }

              ++v69;
              v72 += 64;
              result += v8;
              v73 = (v73 + v8);
              v74 += 8;
              v7 += 64;
              v9 = (v9 + v8);
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
              v52 = *v50++;
              *v49++ = v52;
              v51 -= 8;
            }

            while (v51);
            v9 = (v9 + v8);
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
              v67 = *v65++;
              *v64++ = v67;
              v66 -= 8;
            }

            while (v66);
            v68 = v10 & 0x1FFFFFFF8;
            do
            {
              result = *(v9 + v68);
              *v63++ = result;
              ++v68;
            }

            while (v10 > v68);
            ++v61;
            v9 = (v9 + v8);
            v62 += 8;
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
      v30 = &v84[256 * v44 + 32 * v45];
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

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(v63, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 6;
      v6 = 4 * *(a1 + 76);
      v7 = &v63[64 * v4 + v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 4 * v3;
      v11 = &v63[64 * v2 - 64 + 64 * v4 + 4 * v3 + v6];
      v14 = v7 < v9 + 4 * v3 + v8 * (v2 - 1) && v9 < v11 || v8 < 0;
      if (v3 == 1)
      {
        for (i = 0; i != v2; ++i)
        {
          v16 = v9 + v8 * i;
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
            v7[v23] = *(v9 + v23);
            ++v23;
          }

          while (v10 > v23);
          v7 += 64;
          v9 = (v9 + v8);
        }
      }

      else if (v14)
      {
        for (k = 0; k != v2; ++k)
        {
          v21 = 0;
          do
          {
            v7[v21] = *(v9 + v21);
            ++v21;
          }

          while (v10 > v21);
          v7 += 64;
          v9 = (v9 + v8);
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
            v33 = &v63[v5 + 16 + v6];
            v34 = (v9 + 2);
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
                v36 += 2;
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
            v49 = &v63[v5 + v6];
            v50 = &v63[v5 + 16 + v6];
            v51 = (v9 + 2);
            v52 = (v9 + v31);
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
                v55 += 2;
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
                *v59++ = v62;
                v61 -= 8;
              }

              while (v61);
              v58 = v10 & 0x1FFFFFFF8;
              if (v10 != v25)
              {
LABEL_63:
                do
                {
                  v7[v58] = *(v9 + v58);
                  ++v58;
                }

                while (v10 > v58);
              }

              ++v47;
              v50 += 64;
              v51 = (v51 + v8);
              v52 = (v52 + v8);
              v53 += 8;
              v7 += 64;
              v9 = (v9 + v8);
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
              v30 = *v28++;
              *v27++ = v30;
              v29 -= 8;
            }

            while (v29);
            v9 = (v9 + v8);
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
              v45 = *v43++;
              *v42++ = v45;
              v44 -= 8;
            }

            while (v44);
            v46 = v10 & 0x1FFFFFFF8;
            do
            {
              *v41++ = *(v9 + v46++);
            }

            while (v10 > v46);
            ++v39;
            v9 = (v9 + v8);
            v40 += 8;
          }

          while (v39 != v2);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(v63, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int8x8_t a2, double a3, int8x8_t a4)
{
  v61 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(v60, *(a1 + 40), *(a1 + 48), *(*(v5 + 208) + 52), a2, a3, a4);
  v6 = *(a1 + 80);
  if (v6)
  {
    v7 = *(a1 + 84);
    if (v7)
    {
      v8 = *(a1 + 72);
      v9 = 32 * v8;
      v10 = 2 * *(a1 + 76);
      v11 = &v60[32 * v8 + v10];
      v13 = *(a1 + 56);
      v12 = *(a1 + 64);
      v14 = 2 * v7;
      v15 = &v60[32 * v6 - 32 + 32 * v8 + 2 * v7 + v10];
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
              v31 = &v60[v9 + 16 + v10];
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
              v46 = &v60[v9 + v10];
              v47 = &v60[v9 + 16 + v10];
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
                  *v56++ = v59;
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
                v50 += 4;
                v11 += 32;
                v13 += v12;
              }

              while (v44 != v6);
            }
          }

          else if (v14 == v26)
          {
            v27 = (v13 + 16);
            v28 = &v60[v9 + 16 + v10];
            do
            {
              *(v28 - 2) = *(v27 - 2);
              if (v7 != 4)
              {
                *(v28 - 1) = *(v27 - 1);
                if (v7 != 8)
                {
                  *v28 = *v27;
                }
              }

              v27 = (v27 + v12);
              v28 += 4;
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
                v39[1] = v38[1];
                if (v26 != 16)
                {
                  v39[2] = v38[2];
                }
              }

              v40 = v39 + v26;
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(v60, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v5 + 208) + 52));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int8x8_t a2, double a3, int8x8_t a4)
{
  v61 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(v60, *(a1 + 40), *(a1 + 48), *(*(v5 + 208) + 52), a2, a3, a4);
  v6 = *(a1 + 80);
  if (v6)
  {
    v7 = *(a1 + 84);
    if (v7)
    {
      v8 = *(a1 + 72);
      v9 = 32 * v8;
      v10 = 2 * *(a1 + 76);
      v11 = &v60[32 * v8 + v10];
      v13 = *(a1 + 56);
      v12 = *(a1 + 64);
      v14 = 2 * v7;
      v15 = &v60[32 * v6 - 32 + 32 * v8 + 2 * v7 + v10];
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
              v31 = &v60[v9 + 16 + v10];
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
              v46 = &v60[v9 + v10];
              v47 = &v60[v9 + 16 + v10];
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
                  *v56++ = v59;
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
                v50 += 4;
                v11 += 32;
                v13 += v12;
              }

              while (v44 != v6);
            }
          }

          else if (v14 == v26)
          {
            v27 = (v13 + 16);
            v28 = &v60[v9 + 16 + v10];
            do
            {
              *(v28 - 2) = *(v27 - 2);
              if (v7 != 4)
              {
                *(v28 - 1) = *(v27 - 1);
                if (v7 != 8)
                {
                  *v28 = *v27;
                }
              }

              v27 = (v27 + v12);
              v28 += 4;
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
                v39[1] = v38[1];
                if (v26 != 16)
                {
                  v39[2] = v38[2];
                }
              }

              v40 = v39 + v26;
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(v60, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v5 + 208) + 52));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int8x8_t a2, double a3, int8x8_t a4)
{
  v61 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(v60, *(a1 + 40), *(a1 + 48), *(*(v5 + 208) + 52), a2, a3, a4);
  v6 = *(a1 + 80);
  if (v6)
  {
    v7 = *(a1 + 84);
    if (v7)
    {
      v8 = *(a1 + 72);
      v9 = 32 * v8;
      v10 = 2 * *(a1 + 76);
      v11 = &v60[32 * v8 + v10];
      v13 = *(a1 + 56);
      v12 = *(a1 + 64);
      v14 = 2 * v7;
      v15 = &v60[32 * v6 - 32 + 32 * v8 + 2 * v7 + v10];
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
              v31 = &v60[v9 + 16 + v10];
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
              v46 = &v60[v9 + v10];
              v47 = &v60[v9 + 16 + v10];
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
                  *v56++ = v59;
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
                v50 += 4;
                v11 += 32;
                v13 += v12;
              }

              while (v44 != v6);
            }
          }

          else if (v14 == v26)
          {
            v27 = (v13 + 16);
            v28 = &v60[v9 + 16 + v10];
            do
            {
              *(v28 - 2) = *(v27 - 2);
              if (v7 != 4)
              {
                *(v28 - 1) = *(v27 - 1);
                if (v7 != 8)
                {
                  *v28 = *v27;
                }
              }

              v27 = (v27 + v12);
              v28 += 4;
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
                v39[1] = v38[1];
                if (v26 != 16)
                {
                  v39[2] = v38[2];
                }
              }

              v40 = v39 + v26;
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(v60, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v5 + 208) + 52));
}

float32x2x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int32x4_t a3, int32x4_t a4)
{
  v69 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = &byte_29D2F30C1;
  v8 = 16;
  do
  {
    v10 = &v68[8 * *v7 + *(v7 - 1)];
    v11 = *v6;
    if (v11 == 63)
    {
      v12 = *v5;
      a3 = *(v5 + 16);
      a4 = *(v5 + 32);
      v13 = *(v5 + 48);
      *v10 = vuzp1q_s32(*v5, a4);
      v10[2] = vuzp2q_s32(v12, a4);
      v10[4] = vuzp1q_s32(a3, v13);
      a2 = vuzp2q_s32(a3, v13);
      v10[6] = a2;
      v9 = 64;
    }

    else if (v11 == 1)
    {
      a2 = vld1q_dup_s16(v5);
      *v10 = a2;
      v10[2] = a2;
      v10[4] = a2;
      v10[6] = a2;
      v9 = 2;
    }

    else if (*v6)
    {
      v9 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v10, 32, v5, v11, a2.n128_u64[0], *a3.i64, *a4.i8);
    }

    else
    {
      v9 = 0;
      v10->val[0] = 0;
      v10->val[1] = 0;
      v10[2].val[0] = 0;
      v10[2].val[1] = 0;
      v10[4].val[0] = 0;
      v10[4].val[1] = 0;
      v10[6].val[0] = 0;
      v10[6].val[1] = 0;
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

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int32x4_t a2, int32x4_t a3, int32x4_t a4)
{
  v69 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = &byte_29D2F30C1;
  v8 = 16;
  do
  {
    v10 = &v68[128 * *v7 + 16 * *(v7 - 1)];
    v11 = *v6;
    if (v11 == 63)
    {
      v12 = *v5;
      a3 = *(v5 + 16);
      a4 = *(v5 + 32);
      v13 = *(v5 + 48);
      *v10 = vuzp1q_s32(*v5, a4);
      v10[2] = vuzp2q_s32(v12, a4);
      v10[4] = vuzp1q_s32(a3, v13);
      a2 = vuzp2q_s32(a3, v13);
      v10[6] = a2;
      v9 = 64;
    }

    else if (v11 == 1)
    {
      a2 = vld1q_dup_s16(v5);
      *v10 = a2;
      v10[2] = a2;
      v10[4] = a2;
      v10[6] = a2;
      v9 = 2;
    }

    else if (*v6)
    {
      v9 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v10, 32, v5, v11, *a2.i8, *a3.i64, *a4.i8);
    }

    else
    {
      v9 = 0;
      v10->i64[0] = 0;
      v10->i64[1] = 0;
      v10[2].i64[0] = 0;
      v10[2].i64[1] = 0;
      v10[4].i64[0] = 0;
      v10[4].i64[1] = 0;
      v10[6].i64[0] = 0;
      v10[6].i64[1] = 0;
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(v68, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int8x8_t a3)
{
  v67[33] = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(v67, *(a1 + 40), *(a1 + 48), *(*(v4 + 208) + 52), a2, a3);
  v12 = *(a1 + 80);
  if (v12)
  {
    v13 = *(a1 + 84);
    if (v13)
    {
      v15 = *(a1 + 72);
      v14 = *(a1 + 76);
      v16 = 2 * v15;
      v18 = *(a1 + 56);
      v17 = *(a1 + 64);
      if (v13 > 7)
      {
        v21 = v67 + v14 + v16 * 8;
        v22 = (v13 - 1);
        v23 = v18 >= &v67[2 * v12 - 1 + 2 * v15 - 1] + v14 + v22 + 1 || v21 >= v18 + v17 * (v12 - 1) + v22 + 1;
        if (!v23 || v17 < 0)
        {
          for (i = 0; i != v12; ++i)
          {
            v28 = (v18 + v17 * i);
            v29 = &v21[16 * i];
            v30 = v13;
            do
            {
              v31 = *v28++;
              *v29++ = v31;
              --v30;
            }

            while (v30);
          }
        }

        else
        {
          v24 = v13 & 0xFFFFFFF8;
          if (v13 > 0x1F)
          {
            v33 = v13 & 0xFFFFFFE0;
            if (v33 == v13)
            {
              v34 = 0;
              v35 = &v67[v16 + 2] + v14;
              v36 = (v18 + 16);
              do
              {
                v37 = v36;
                v38 = v35;
                v39 = v13;
                do
                {
                  v5 = *(v37 - 1);
                  v6 = *v37;
                  *(v38 - 1) = v5;
                  *v38 = v6;
                  v38 += 2;
                  v37 += 2;
                  v39 -= 32;
                }

                while (v39);
                ++v34;
                v35 += 16;
                v36 = (v36 + v17);
              }

              while (v34 != v12);
            }

            else
            {
              v48 = 0;
              v49 = (v18 + 16);
              v50 = &v67[v16] + v14;
              v51 = &v67[v16 + 2] + v14;
              v52 = (v18 + v33);
              v53 = &v50[v33];
              do
              {
                v54 = v51;
                v55 = v49;
                v56 = v13 & 0xFFFFFFE0;
                do
                {
                  v5 = *(v55 - 1);
                  v6 = *v55;
                  *(v54 - 1) = v5;
                  *v54 = v6;
                  v55 += 2;
                  v54 += 2;
                  v56 -= 32;
                }

                while (v56);
                v57 = v13 & 0xFFFFFFE0;
                v58 = v13 & 0xFFFFFFE0;
                if ((v13 & 0x18) == 0)
                {
                  goto LABEL_53;
                }

                v59 = v53;
                v60 = v52;
                v61 = v24 - v33;
                do
                {
                  v62 = *v60++;
                  *&v5 = v62;
                  *v59 = v62;
                  v59 += 8;
                  v61 -= 8;
                }

                while (v61);
                v57 = v13 & 0xFFFFFFF8;
                v58 = v13 & 0xFFFFFFF8;
                if (v24 != v13)
                {
LABEL_53:
                  v63 = (v18 + v17 * v48 + v58);
                  v64 = &v21[16 * v48 + v58];
                  v65 = v13 - v57;
                  do
                  {
                    v66 = *v63++;
                    *v64++ = v66;
                    --v65;
                  }

                  while (v65);
                }

                ++v48;
                v49 = (v49 + v17);
                v51 += 16;
                v52 = (v52 + v17);
                v53 += 16;
              }

              while (v48 != v12);
            }
          }

          else if (v24 == v13)
          {
            v25 = (v18 + 16);
            v26 = (&v67[v16 + 2] + v14);
            do
            {
              *&v5 = *(v25 - 2);
              v26[-2] = v5;
              if (v13 != 8)
              {
                *&v5 = *(v25 - 1);
                v26[-1] = v5;
                if (v13 != 16)
                {
                  *&v5 = *v25;
                  *v26 = *v25;
                }
              }

              v25 = (v25 + v17);
              v26 += 2;
              --v12;
            }

            while (v12);
          }

          else
          {
            v40 = 0;
            v41 = v13 - v24;
            do
            {
              v42 = (v18 + v17 * v40);
              v43 = &v21[16 * v40];
              *&v5 = *v42;
              *v43 = *v42;
              if (v24 != 8)
              {
                *&v5 = v42[1];
                *(v43 + 1) = v5;
                if (v24 != 16)
                {
                  *&v5 = v42[2];
                  *(v43 + 2) = v5;
                }
              }

              v44 = &v43[v24];
              v45 = v42 + v24;
              v46 = v41;
              do
              {
                v47 = *v45++;
                *v44++ = v47;
                --v46;
              }

              while (v46);
              ++v40;
            }

            while (v40 != v12);
          }
        }
      }

      else
      {
        v19 = &v67[v16] + v14 + 3;
        v20 = (v18 + 3);
        do
        {
          *(v19 - 3) = *(v20 - 3);
          if (v13 != 1)
          {
            *(v19 - 2) = *(v20 - 2);
            if (v13 != 2)
            {
              *(v19 - 1) = *(v20 - 1);
              if (v13 != 3)
              {
                *v19 = *v20;
                if (v13 != 4)
                {
                  v19[1] = v20[1];
                  if (v13 != 5)
                  {
                    v19[2] = v20[2];
                    if (v13 != 6)
                    {
                      v19[3] = v20[3];
                    }
                  }
                }
              }
            }
          }

          v19 += 16;
          v20 += v17;
          --v12;
        }

        while (v12);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(v67, 16, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v4 + 208) + 52), *&v5, *&v6, v7, v8, v9, v10, v11);
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int8x8_t a3)
{
  v67[33] = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(v67, *(a1 + 40), *(a1 + 48), *(*(v4 + 208) + 52), a2, a3);
  v12 = *(a1 + 80);
  if (v12)
  {
    v13 = *(a1 + 84);
    if (v13)
    {
      v15 = *(a1 + 72);
      v14 = *(a1 + 76);
      v16 = 2 * v15;
      v18 = *(a1 + 56);
      v17 = *(a1 + 64);
      if (v13 > 7)
      {
        v21 = v67 + v14 + v16 * 8;
        v22 = (v13 - 1);
        v23 = v18 >= &v67[2 * v12 - 1 + 2 * v15 - 1] + v14 + v22 + 1 || v21 >= v18 + v17 * (v12 - 1) + v22 + 1;
        if (!v23 || v17 < 0)
        {
          for (i = 0; i != v12; ++i)
          {
            v28 = (v18 + v17 * i);
            v29 = &v21[16 * i];
            v30 = v13;
            do
            {
              v31 = *v28++;
              *v29++ = v31;
              --v30;
            }

            while (v30);
          }
        }

        else
        {
          v24 = v13 & 0xFFFFFFF8;
          if (v13 > 0x1F)
          {
            v33 = v13 & 0xFFFFFFE0;
            if (v33 == v13)
            {
              v34 = 0;
              v35 = &v67[v16 + 2] + v14;
              v36 = (v18 + 16);
              do
              {
                v37 = v36;
                v38 = v35;
                v39 = v13;
                do
                {
                  v5 = *(v37 - 1);
                  v6 = *v37;
                  *(v38 - 1) = v5;
                  *v38 = v6;
                  v38 += 2;
                  v37 += 2;
                  v39 -= 32;
                }

                while (v39);
                ++v34;
                v35 += 16;
                v36 = (v36 + v17);
              }

              while (v34 != v12);
            }

            else
            {
              v48 = 0;
              v49 = (v18 + 16);
              v50 = &v67[v16] + v14;
              v51 = &v67[v16 + 2] + v14;
              v52 = (v18 + v33);
              v53 = &v50[v33];
              do
              {
                v54 = v51;
                v55 = v49;
                v56 = v13 & 0xFFFFFFE0;
                do
                {
                  v5 = *(v55 - 1);
                  v6 = *v55;
                  *(v54 - 1) = v5;
                  *v54 = v6;
                  v55 += 2;
                  v54 += 2;
                  v56 -= 32;
                }

                while (v56);
                v57 = v13 & 0xFFFFFFE0;
                v58 = v13 & 0xFFFFFFE0;
                if ((v13 & 0x18) == 0)
                {
                  goto LABEL_53;
                }

                v59 = v53;
                v60 = v52;
                v61 = v24 - v33;
                do
                {
                  v62 = *v60++;
                  *&v5 = v62;
                  *v59 = v62;
                  v59 += 8;
                  v61 -= 8;
                }

                while (v61);
                v57 = v13 & 0xFFFFFFF8;
                v58 = v13 & 0xFFFFFFF8;
                if (v24 != v13)
                {
LABEL_53:
                  v63 = (v18 + v17 * v48 + v58);
                  v64 = &v21[16 * v48 + v58];
                  v65 = v13 - v57;
                  do
                  {
                    v66 = *v63++;
                    *v64++ = v66;
                    --v65;
                  }

                  while (v65);
                }

                ++v48;
                v49 = (v49 + v17);
                v51 += 16;
                v52 = (v52 + v17);
                v53 += 16;
              }

              while (v48 != v12);
            }
          }

          else if (v24 == v13)
          {
            v25 = (v18 + 16);
            v26 = (&v67[v16 + 2] + v14);
            do
            {
              *&v5 = *(v25 - 2);
              v26[-2] = v5;
              if (v13 != 8)
              {
                *&v5 = *(v25 - 1);
                v26[-1] = v5;
                if (v13 != 16)
                {
                  *&v5 = *v25;
                  *v26 = *v25;
                }
              }

              v25 = (v25 + v17);
              v26 += 2;
              --v12;
            }

            while (v12);
          }

          else
          {
            v40 = 0;
            v41 = v13 - v24;
            do
            {
              v42 = (v18 + v17 * v40);
              v43 = &v21[16 * v40];
              *&v5 = *v42;
              *v43 = *v42;
              if (v24 != 8)
              {
                *&v5 = v42[1];
                *(v43 + 1) = v5;
                if (v24 != 16)
                {
                  *&v5 = v42[2];
                  *(v43 + 2) = v5;
                }
              }

              v44 = &v43[v24];
              v45 = v42 + v24;
              v46 = v41;
              do
              {
                v47 = *v45++;
                *v44++ = v47;
                --v46;
              }

              while (v46);
              ++v40;
            }

            while (v40 != v12);
          }
        }
      }

      else
      {
        v19 = &v67[v16] + v14 + 3;
        v20 = (v18 + 3);
        do
        {
          *(v19 - 3) = *(v20 - 3);
          if (v13 != 1)
          {
            *(v19 - 2) = *(v20 - 2);
            if (v13 != 2)
            {
              *(v19 - 1) = *(v20 - 1);
              if (v13 != 3)
              {
                *v19 = *v20;
                if (v13 != 4)
                {
                  v19[1] = v20[1];
                  if (v13 != 5)
                  {
                    v19[2] = v20[2];
                    if (v13 != 6)
                    {
                      v19[3] = v20[3];
                    }
                  }
                }
              }
            }
          }

          v19 += 16;
          v20 += v17;
          --v12;
        }

        while (v12);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(v67, 16, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v4 + 208) + 52), *&v5, *&v6, v7, v8, v9, v10, v11);
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int8x8_t a3)
{
  v67[33] = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(v67, *(a1 + 40), *(a1 + 48), *(*(v4 + 208) + 52), a2, a3);
  v12 = *(a1 + 80);
  if (v12)
  {
    v13 = *(a1 + 84);
    if (v13)
    {
      v15 = *(a1 + 72);
      v14 = *(a1 + 76);
      v16 = 2 * v15;
      v18 = *(a1 + 56);
      v17 = *(a1 + 64);
      if (v13 > 7)
      {
        v21 = v67 + v14 + v16 * 8;
        v22 = (v13 - 1);
        v23 = v18 >= &v67[2 * v12 - 1 + 2 * v15 - 1] + v14 + v22 + 1 || v21 >= v18 + v17 * (v12 - 1) + v22 + 1;
        if (!v23 || v17 < 0)
        {
          for (i = 0; i != v12; ++i)
          {
            v28 = (v18 + v17 * i);
            v29 = &v21[16 * i];
            v30 = v13;
            do
            {
              v31 = *v28++;
              *v29++ = v31;
              --v30;
            }

            while (v30);
          }
        }

        else
        {
          v24 = v13 & 0xFFFFFFF8;
          if (v13 > 0x1F)
          {
            v33 = v13 & 0xFFFFFFE0;
            if (v33 == v13)
            {
              v34 = 0;
              v35 = &v67[v16 + 2] + v14;
              v36 = (v18 + 16);
              do
              {
                v37 = v36;
                v38 = v35;
                v39 = v13;
                do
                {
                  v5 = *(v37 - 1);
                  v6 = *v37;
                  *(v38 - 1) = v5;
                  *v38 = v6;
                  v38 += 2;
                  v37 += 2;
                  v39 -= 32;
                }

                while (v39);
                ++v34;
                v35 += 16;
                v36 = (v36 + v17);
              }

              while (v34 != v12);
            }

            else
            {
              v48 = 0;
              v49 = (v18 + 16);
              v50 = &v67[v16] + v14;
              v51 = &v67[v16 + 2] + v14;
              v52 = (v18 + v33);
              v53 = &v50[v33];
              do
              {
                v54 = v51;
                v55 = v49;
                v56 = v13 & 0xFFFFFFE0;
                do
                {
                  v5 = *(v55 - 1);
                  v6 = *v55;
                  *(v54 - 1) = v5;
                  *v54 = v6;
                  v55 += 2;
                  v54 += 2;
                  v56 -= 32;
                }

                while (v56);
                v57 = v13 & 0xFFFFFFE0;
                v58 = v13 & 0xFFFFFFE0;
                if ((v13 & 0x18) == 0)
                {
                  goto LABEL_53;
                }

                v59 = v53;
                v60 = v52;
                v61 = v24 - v33;
                do
                {
                  v62 = *v60++;
                  *&v5 = v62;
                  *v59 = v62;
                  v59 += 8;
                  v61 -= 8;
                }

                while (v61);
                v57 = v13 & 0xFFFFFFF8;
                v58 = v13 & 0xFFFFFFF8;
                if (v24 != v13)
                {
LABEL_53:
                  v63 = (v18 + v17 * v48 + v58);
                  v64 = &v21[16 * v48 + v58];
                  v65 = v13 - v57;
                  do
                  {
                    v66 = *v63++;
                    *v64++ = v66;
                    --v65;
                  }

                  while (v65);
                }

                ++v48;
                v49 = (v49 + v17);
                v51 += 16;
                v52 = (v52 + v17);
                v53 += 16;
              }

              while (v48 != v12);
            }
          }

          else if (v24 == v13)
          {
            v25 = (v18 + 16);
            v26 = (&v67[v16 + 2] + v14);
            do
            {
              *&v5 = *(v25 - 2);
              v26[-2] = v5;
              if (v13 != 8)
              {
                *&v5 = *(v25 - 1);
                v26[-1] = v5;
                if (v13 != 16)
                {
                  *&v5 = *v25;
                  *v26 = *v25;
                }
              }

              v25 = (v25 + v17);
              v26 += 2;
              --v12;
            }

            while (v12);
          }

          else
          {
            v40 = 0;
            v41 = v13 - v24;
            do
            {
              v42 = (v18 + v17 * v40);
              v43 = &v21[16 * v40];
              *&v5 = *v42;
              *v43 = *v42;
              if (v24 != 8)
              {
                *&v5 = v42[1];
                *(v43 + 1) = v5;
                if (v24 != 16)
                {
                  *&v5 = v42[2];
                  *(v43 + 2) = v5;
                }
              }

              v44 = &v43[v24];
              v45 = v42 + v24;
              v46 = v41;
              do
              {
                v47 = *v45++;
                *v44++ = v47;
                --v46;
              }

              while (v46);
              ++v40;
            }

            while (v40 != v12);
          }
        }
      }

      else
      {
        v19 = &v67[v16] + v14 + 3;
        v20 = (v18 + 3);
        do
        {
          *(v19 - 3) = *(v20 - 3);
          if (v13 != 1)
          {
            *(v19 - 2) = *(v20 - 2);
            if (v13 != 2)
            {
              *(v19 - 1) = *(v20 - 1);
              if (v13 != 3)
              {
                *v19 = *v20;
                if (v13 != 4)
                {
                  v19[1] = v20[1];
                  if (v13 != 5)
                  {
                    v19[2] = v20[2];
                    if (v13 != 6)
                    {
                      v19[3] = v20[3];
                    }
                  }
                }
              }
            }
          }

          v19 += 16;
          v20 += v17;
          --v12;
        }

        while (v12);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(v67, 16, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v4 + 208) + 52), *&v5, *&v6, v7, v8, v9, v10, v11);
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh1ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int16x4_t a3)
{
  v85 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = &byte_29D2F30C1;
  v7 = 16;
  do
  {
    result = &v84[64 * *v6 + 8 * *(v6 - 1)];
    v13 = *v5;
    if (v13 == 96)
    {
      a2 = COERCE_DOUBLE(vdup_lane_s8(*v4, 0));
      *result = a2;
      *(result + 16) = a2;
      *(result + 32) = a2;
      *(result + 48) = a2;
      v11 = 1;
    }

    else if (v13 == 31)
    {
      v8 = *v4;
      a3 = *(v4 + 8);
      v9 = *(v4 + 16);
      v10 = *(v4 + 24);
      *result = vuzp1_s16(*v4, v9);
      *(result + 16) = vuzp2_s16(v8, v9);
      *(result + 32) = vuzp1_s16(a3, v10);
      a2 = COERCE_DOUBLE(vuzp2_s16(a3, v10));
      *(result + 48) = a2;
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
      *result = 0;
      *(result + 16) = 0;
      *(result + 32) = 0;
      *(result + 48) = 0;
    }

    v4 += v11;
    ++v5;
    v6 += 2;
    v7 -= 2;
  }

  while (v7);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = *(a1 + 84);
    if (v15)
    {
      v17 = *(a1 + 72);
      v16 = *(a1 + 76);
      v18 = 16 * v17;
      v20 = *(a1 + 56);
      v19 = *(a1 + 64);
      if (v15 > 7)
      {
        v23 = &v84[v16 + v18];
        v24 = (v15 - 1);
        v25 = v20 >= &v84[16 * v14 - 15 + 16 * v17 + v16 + v24] || v23 >= v20 + v19 * (v14 - 1) + v24 + 1;
        if (!v25 || v19 < 0)
        {
          for (i = 0; i != v14; ++i)
          {
            v30 = (v20 + v19 * i);
            v31 = &v23[16 * i];
            v32 = v15;
            do
            {
              v33 = *v30++;
              result = v33;
              *v31++ = v33;
              --v32;
            }

            while (v32);
          }
        }

        else
        {
          v26 = v15 & 0xFFFFFFF8;
          if (v15 > 0x1F)
          {
            v50 = v15 & 0xFFFFFFE0;
            if (v50 == v15)
            {
              v51 = 0;
              v52 = &v84[v18 + 16 + v16];
              v53 = (v20 + 16);
              do
              {
                v54 = v53;
                v55 = v52;
                v56 = v15;
                do
                {
                  v57 = *v54;
                  *(v55 - 1) = *(v54 - 1);
                  *v55 = v57;
                  v55 += 2;
                  v54 += 2;
                  v56 -= 32;
                }

                while (v56);
                ++v51;
                v52 += 16;
                v53 = (v53 + v19);
              }

              while (v51 != v14);
            }

            else
            {
              v65 = 0;
              result = v20 + 16;
              v66 = &v84[v18 + v16];
              v67 = &v84[v18 + 16 + v16];
              v68 = (v20 + v50);
              v69 = &v66[v50];
              do
              {
                v70 = v67;
                v71 = result;
                v72 = v15 & 0xFFFFFFE0;
                do
                {
                  v73 = *v71;
                  *(v70 - 1) = *(v71 - 1);
                  *v70 = v73;
                  v71 += 2;
                  v70 += 2;
                  v72 -= 32;
                }

                while (v72);
                v74 = v15 & 0xFFFFFFE0;
                v75 = v15 & 0xFFFFFFE0;
                if ((v15 & 0x18) == 0)
                {
                  goto LABEL_70;
                }

                v76 = v69;
                v77 = v68;
                v78 = v26 - v50;
                do
                {
                  v79 = *v77++;
                  *v76++ = v79;
                  v78 -= 8;
                }

                while (v78);
                v74 = v15 & 0xFFFFFFF8;
                v75 = v15 & 0xFFFFFFF8;
                if (v26 != v15)
                {
LABEL_70:
                  v80 = (v20 + v19 * v65 + v75);
                  v81 = &v23[16 * v65 + v75];
                  v82 = v15 - v74;
                  do
                  {
                    v83 = *v80++;
                    *v81++ = v83;
                    --v82;
                  }

                  while (v82);
                }

                ++v65;
                result += v19;
                v67 += 16;
                v68 = (v68 + v19);
                v69 += 2;
              }

              while (v65 != v14);
            }
          }

          else if (v26 == v15)
          {
            v27 = (v20 + 16);
            v28 = &v84[v18 + 16 + v16];
            do
            {
              *(v28 - 2) = *(v27 - 2);
              if (v15 != 8)
              {
                *(v28 - 1) = *(v27 - 1);
                if (v15 != 16)
                {
                  *v28 = *v27;
                }
              }

              v27 = (v27 + v19);
              v28 += 2;
              --v14;
            }

            while (v14);
          }

          else
          {
            v58 = 0;
            v59 = v15 - v26;
            do
            {
              v60 = (v20 + v19 * v58);
              v61 = &v23[16 * v58];
              *v61 = *v60;
              if (v26 != 8)
              {
                v61[1] = v60[1];
                if (v26 != 16)
                {
                  v61[2] = v60[2];
                }
              }

              v62 = v61 + v26;
              v63 = v60 + v26;
              LODWORD(result) = v59;
              do
              {
                v64 = *v63++;
                *v62++ = v64;
                result = (result - 1);
              }

              while (result);
              ++v58;
            }

            while (v58 != v14);
          }
        }
      }

      else
      {
        v21 = &v84[v18 + 3 + v16];
        v22 = (v20 + 3);
        do
        {
          *(v21 - 3) = *(v22 - 3);
          if (v15 != 1)
          {
            *(v21 - 2) = *(v22 - 2);
            if (v15 != 2)
            {
              *(v21 - 1) = *(v22 - 1);
              if (v15 != 3)
              {
                *v21 = *v22;
                if (v15 != 4)
                {
                  v21[1] = v22[1];
                  if (v15 != 5)
                  {
                    v21[2] = v22[2];
                    if (v15 != 6)
                    {
                      v21[3] = v22[3];
                    }
                  }
                }
              }
            }
          }

          v21 += 16;
          v22 += v19;
          --v14;
        }

        while (v14);
      }
    }
  }

  v34 = *(a1 + 40);
  v35 = *(a1 + 48);
  v36 = *(a1 + 88);
  v37 = &byte_29D2F30C1;
  v38 = 16;
  v39 = *(a1 + 89);
  do
  {
    v47 = *v37;
    v48 = *(v37 - 1);
    if (v36 <= 8 * v48 || 4 * v47 >= v39)
    {
      v46 = 0;
    }

    else
    {
      v40 = &v84[64 * v47 + 8 * v48];
      v41 = v40[2];
      v42 = vzip1_s16(*v40, v41);
      v43 = vzip2_s16(*v40, v41);
      v44 = v40[4];
      v45 = v40[6];
      *v34 = v42;
      v34[1] = vzip1_s16(v44, v45);
      v34[2] = v43;
      v34[3] = vzip2_s16(v44, v45);
      v34 += 4;
      v46 = 31;
    }

    *v35++ = v46;
    v37 += 2;
    v38 -= 2;
  }

  while (v38);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE1EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, __n128 a3, double a4, double a5, double a6, double a7, int8x8_t a8)
{
  v73 = *MEMORY[0x29EDCA608];
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = &byte_29D2F30C1;
  v12 = 16;
  do
  {
    v15 = &v72[64 * *v11 + 8 * *(v11 - 1)];
    v16 = *v10;
    if (v16 == 96)
    {
      a2.n128_u64[0] = vdup_lane_s8(*v9, 0);
      *v15 = a2.n128_f64[0];
      v15[2] = a2.n128_f64[0];
      v15[4] = a2.n128_f64[0];
      v15[6] = a2.n128_f64[0];
      v14 = 1;
    }

    else if (v16 == 31)
    {
      v13 = *v9;
      a3.n128_u64[0] = *(v9 + 8);
      a4 = *(v9 + 16);
      a5 = *(v9 + 24);
      a6 = COERCE_DOUBLE(vuzp1_s16(*v9, *&a4));
      *v15 = a6;
      *(v15 + 2) = vuzp2_s16(v13, *&a4);
      *(v15 + 4) = vuzp1_s16(a3.n128_u64[0], *&a5);
      a2.n128_u64[0] = vuzp2_s16(a3.n128_u64[0], *&a5);
      v15[6] = a2.n128_f64[0];
      v14 = 32;
    }

    else if (*v10)
    {
      v14 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v15, 16, v9, v16, a2.n128_f64[0], a3.n128_u64[0]);
    }

    else
    {
      v14 = 0;
      *v15 = 0.0;
      v15[2] = 0.0;
      v15[4] = 0.0;
      v15[6] = 0.0;
    }

    v9 += v14;
    ++v10;
    v11 += 2;
    v12 -= 2;
  }

  while (v12);
  v17 = *(a1 + 80);
  if (v17)
  {
    v18 = *(a1 + 84);
    if (v18)
    {
      v20 = *(a1 + 72);
      v19 = *(a1 + 76);
      v21 = 16 * v20;
      v23 = *(a1 + 56);
      v22 = *(a1 + 64);
      if (v18 > 7)
      {
        v26 = &v72[v19 + v21];
        v27 = (v18 - 1);
        v28 = v23 >= &v72[16 * v17 - 15 + 16 * v20 + v19 + v27] || v26 >= &v23->n128_u8[v22 * (v17 - 1) + 1 + v27];
        if (!v28 || v22 < 0)
        {
          for (i = 0; i != v17; ++i)
          {
            v33 = v23 + v22 * i;
            v34 = &v26[16 * i];
            v35 = v18;
            do
            {
              v36 = *v33++;
              *v34++ = v36;
              --v35;
            }

            while (v35);
          }
        }

        else
        {
          v29 = v18 & 0xFFFFFFF8;
          if (v18 > 0x1F)
          {
            v38 = v18 & 0xFFFFFFE0;
            if (v38 == v18)
            {
              v39 = 0;
              v40 = &v72[v21 + 16 + v19];
              v41 = v23 + 1;
              do
              {
                v42 = v41;
                v43 = v40;
                v44 = v18;
                do
                {
                  a2 = v42[-1];
                  a3 = *v42;
                  v43[-1] = a2;
                  *v43 = a3;
                  v43 += 2;
                  v42 += 2;
                  v44 -= 32;
                }

                while (v44);
                ++v39;
                ++v40;
                v41 = (v41 + v22);
              }

              while (v39 != v17);
            }

            else
            {
              v53 = 0;
              v54 = v23 + 1;
              v55 = &v72[v21 + v19];
              v56 = &v72[v21 + 16 + v19];
              v57 = (v23->n128_u64 + v38);
              v58 = &v55[v38];
              do
              {
                v59 = v56;
                v60 = v54;
                v61 = v18 & 0xFFFFFFE0;
                do
                {
                  a2 = v60[-1];
                  a3 = *v60;
                  v59[-1] = a2;
                  *v59 = a3;
                  v60 += 2;
                  v59 += 2;
                  v61 -= 32;
                }

                while (v61);
                v62 = v18 & 0xFFFFFFE0;
                v63 = v18 & 0xFFFFFFE0;
                if ((v18 & 0x18) == 0)
                {
                  goto LABEL_62;
                }

                v64 = v58;
                v65 = v57;
                v66 = v29 - v38;
                do
                {
                  v67 = *v65++;
                  a2.n128_u64[0] = v67;
                  *v64++ = v67;
                  v66 -= 8;
                }

                while (v66);
                v62 = v18 & 0xFFFFFFF8;
                v63 = v18 & 0xFFFFFFF8;
                if (v29 != v18)
                {
LABEL_62:
                  v68 = v23 + v22 * v53 + v63;
                  v69 = &v26[16 * v53 + v63];
                  v70 = v18 - v62;
                  do
                  {
                    v71 = *v68++;
                    *v69++ = v71;
                    --v70;
                  }

                  while (v70);
                }

                ++v53;
                v54 = (v54 + v22);
                ++v56;
                v57 = (v57 + v22);
                v58 += 2;
              }

              while (v53 != v17);
            }
          }

          else if (v29 == v18)
          {
            n128_u64 = v23[1].n128_u64;
            v31 = &v72[v21 + 16 + v19];
            do
            {
              a2.n128_u64[0] = *(n128_u64 - 2);
              *(v31 - 2) = a2.n128_u64[0];
              if (v18 != 8)
              {
                a2.n128_u64[0] = *(n128_u64 - 1);
                *(v31 - 1) = a2.n128_u64[0];
                if (v18 != 16)
                {
                  a2.n128_u64[0] = *n128_u64;
                  *v31 = *n128_u64;
                }
              }

              n128_u64 = (n128_u64 + v22);
              v31 += 2;
              --v17;
            }

            while (v17);
          }

          else
          {
            v45 = 0;
            v46 = v18 - v29;
            do
            {
              v47 = (v23->n128_u64 + v22 * v45);
              v48 = &v26[16 * v45];
              a2.n128_u64[0] = *v47;
              *v48 = *v47;
              if (v29 != 8)
              {
                a2.n128_u64[0] = v47[1];
                v48[1] = a2.n128_u64[0];
                if (v29 != 16)
                {
                  a2.n128_u64[0] = v47[2];
                  v48[2] = a2.n128_u64[0];
                }
              }

              v49 = v48 + v29;
              v50 = v47 + v29;
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

            while (v45 != v17);
          }
        }
      }

      else
      {
        v24 = &v72[v21 + 3 + v19];
        v25 = &v23->n128_u8[3];
        do
        {
          *(v24 - 3) = *(v25 - 3);
          if (v18 != 1)
          {
            *(v24 - 2) = *(v25 - 2);
            if (v18 != 2)
            {
              *(v24 - 1) = *(v25 - 1);
              if (v18 != 3)
              {
                *v24 = *v25;
                if (v18 != 4)
                {
                  v24[1] = v25[1];
                  if (v18 != 5)
                  {
                    v24[2] = v25[2];
                    if (v18 != 6)
                    {
                      v24[3] = v25[3];
                    }
                  }
                }
              }
            }
          }

          v24 += 16;
          v25 += v22;
          --v17;
        }

        while (v17);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressMacroblock(v72, 16, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), a2.n128_f64[0], a3.n128_f64[0], a4, a5, a6, a7, a8);
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE2ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, __n128 a3, double a4, double a5)
{
  v62 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(*(v7 + 208) + 52);
  v10 = &byte_29D2F790B;
  v11 = 64;
  do
  {
    v12 = *v8++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressSubblock(&v61[256 * *v10 + 16 * *(v10 - 1)], 64, v6, v12, v9, a2.n128_f64[0], a3.n128_f64[0], a4, *&a5);
    v6 += result;
    v10 += 2;
    v11 -= 2;
  }

  while (v11);
  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = *(a1 + 84);
    if (v19)
    {
      v20 = *(a1 + 72);
      result = v20 << 6;
      v21 = 2 * *(a1 + 76);
      v22 = &v61[64 * v20 + v21];
      v23 = *(a1 + 56);
      v24 = *(a1 + 64);
      v25 = 2 * v19;
      v26 = &v61[64 * v18 - 64 + 64 * v20 + 2 * v19 + v21];
      v29 = v22 < v23 + v24 * (v18 - 1) + 2 * v19 && v23 < v26 || v24 < 0;
      if (v19 <= 3)
      {
        for (i = 0; i != v18; ++i)
        {
          v31 = 0;
          do
          {
            v22[v31] = *(v23 + v31);
            ++v31;
          }

          while (v31 < v25);
          v22 += 64;
          v23 += v24;
        }

        goto LABEL_32;
      }

      if (!v25 || (v25 - 1) >> 32)
      {
        for (j = 0; j != v18; ++j)
        {
          v35 = 0;
          do
          {
            v22[v35] = *(v23 + v35);
            ++v35;
          }

          while (v25 > v35);
          v22 += 64;
          v23 += v24;
        }

        goto LABEL_32;
      }

      if (v29)
      {
        for (k = 0; k != v18; ++k)
        {
          v33 = 0;
          do
          {
            v22[v33] = *(v23 + v33);
            ++v33;
          }

          while (v25 > v33);
          v22 += 64;
          v23 += v24;
        }

        goto LABEL_32;
      }

      v50 = 0;
      result += &v61[v21 + 16];
      v51 = (v23 + 16);
      while (v19 >= 0x10)
      {
        v53 = v51;
        v54 = result;
        v55 = v25 & 0x1FFFFFFE0;
        do
        {
          a2 = v53[-1];
          a3 = *v53;
          v54[-1] = a2;
          *v54 = a3;
          v54 += 2;
          v53 += 2;
          v55 -= 32;
        }

        while (v55);
        if (v25 == (v25 & 0x1FFFFFFE0))
        {
          goto LABEL_49;
        }

        v52 = v25 & 0x1FFFFFFE0;
        v56 = v25 & 0x1FFFFFFE0;
        if ((v19 & 0xC) != 0)
        {
          goto LABEL_56;
        }

        do
        {
LABEL_59:
          v22[v56] = *(v23 + v56);
          ++v56;
        }

        while (v25 > v56);
LABEL_49:
        ++v50;
        result += 64;
        v51 = (v51 + v24);
        v23 += v24;
        v22 += 64;
        if (v50 == v18)
        {
          goto LABEL_32;
        }
      }

      v52 = 0;
LABEL_56:
      v57 = v52 - (v25 & 0x1FFFFFFF8);
      v58 = (v23 + v52);
      v59 = &v22[v52];
      do
      {
        v60 = *v58++;
        a2.n128_u64[0] = v60;
        *v59++ = v60;
        v57 += 8;
      }

      while (v57);
      v56 = v25 & 0x1FFFFFFF8;
      if (v25 == (v25 & 0x1FFFFFFF8))
      {
        goto LABEL_49;
      }

      goto LABEL_59;
    }
  }

LABEL_32:
  v36 = *(a1 + 40);
  v37 = *(a1 + 48);
  v38 = *(a1 + 88);
  v39 = *(a1 + 89);
  v40 = *(*(v7 + 208) + 52);
  v41 = &byte_29D2F790B;
  v42 = 64;
  do
  {
    v45 = *v41;
    v46 = *(v41 - 1);
    v47 = v38 - 8 * v46;
    v48 = v39 - 4 * v45;
    if (v47 < 1 || v48 <= 0)
    {
      *v37 = 0;
    }

    else
    {
      if (v48 >= 4)
      {
        v43 = 4;
      }

      else
      {
        v43 = v39 - 4 * v45;
      }

      if (v47 >= 8)
      {
        v44 = 8;
      }

      else
      {
        v44 = v38 - 8 * v46;
      }

      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressSubblock(v36, v37, &v61[256 * v45 + 16 * v46], 64, v44, v43, v40, a2.n128_f64[0], a3.n128_f64[0], a4, a5, v14, v15, v16, v17);
      v36 += result;
    }

    v41 += 2;
    ++v37;
    v42 -= 2;
  }

  while (v42);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE2ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, __n128 a3, double a4, double a5)
{
  v62 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(*(v7 + 208) + 52);
  v10 = &byte_29D2F790B;
  v11 = 64;
  do
  {
    v12 = *v8++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressSubblock(&v61[256 * *v10 + 16 * *(v10 - 1)], 64, v6, v12, v9, a2.n128_f64[0], a3.n128_f64[0], a4, *&a5);
    v6 += result;
    v10 += 2;
    v11 -= 2;
  }

  while (v11);
  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = *(a1 + 84);
    if (v19)
    {
      v20 = *(a1 + 72);
      result = v20 << 6;
      v21 = 2 * *(a1 + 76);
      v22 = &v61[64 * v20 + v21];
      v23 = *(a1 + 56);
      v24 = *(a1 + 64);
      v25 = 2 * v19;
      v26 = &v61[64 * v18 - 64 + 64 * v20 + 2 * v19 + v21];
      v29 = v22 < v23 + v24 * (v18 - 1) + 2 * v19 && v23 < v26 || v24 < 0;
      if (v19 <= 3)
      {
        for (i = 0; i != v18; ++i)
        {
          v31 = 0;
          do
          {
            v22[v31] = *(v23 + v31);
            ++v31;
          }

          while (v31 < v25);
          v22 += 64;
          v23 += v24;
        }

        goto LABEL_32;
      }

      if (!v25 || (v25 - 1) >> 32)
      {
        for (j = 0; j != v18; ++j)
        {
          v35 = 0;
          do
          {
            v22[v35] = *(v23 + v35);
            ++v35;
          }

          while (v25 > v35);
          v22 += 64;
          v23 += v24;
        }

        goto LABEL_32;
      }

      if (v29)
      {
        for (k = 0; k != v18; ++k)
        {
          v33 = 0;
          do
          {
            v22[v33] = *(v23 + v33);
            ++v33;
          }

          while (v25 > v33);
          v22 += 64;
          v23 += v24;
        }

        goto LABEL_32;
      }

      v50 = 0;
      result += &v61[v21 + 16];
      v51 = (v23 + 16);
      while (v19 >= 0x10)
      {
        v53 = v51;
        v54 = result;
        v55 = v25 & 0x1FFFFFFE0;
        do
        {
          a2 = v53[-1];
          a3 = *v53;
          v54[-1] = a2;
          *v54 = a3;
          v54 += 2;
          v53 += 2;
          v55 -= 32;
        }

        while (v55);
        if (v25 == (v25 & 0x1FFFFFFE0))
        {
          goto LABEL_49;
        }

        v52 = v25 & 0x1FFFFFFE0;
        v56 = v25 & 0x1FFFFFFE0;
        if ((v19 & 0xC) != 0)
        {
          goto LABEL_56;
        }

        do
        {
LABEL_59:
          v22[v56] = *(v23 + v56);
          ++v56;
        }

        while (v25 > v56);
LABEL_49:
        ++v50;
        result += 64;
        v51 = (v51 + v24);
        v23 += v24;
        v22 += 64;
        if (v50 == v18)
        {
          goto LABEL_32;
        }
      }

      v52 = 0;
LABEL_56:
      v57 = v52 - (v25 & 0x1FFFFFFF8);
      v58 = (v23 + v52);
      v59 = &v22[v52];
      do
      {
        v60 = *v58++;
        a2.n128_u64[0] = v60;
        *v59++ = v60;
        v57 += 8;
      }

      while (v57);
      v56 = v25 & 0x1FFFFFFF8;
      if (v25 == (v25 & 0x1FFFFFFF8))
      {
        goto LABEL_49;
      }

      goto LABEL_59;
    }
  }

LABEL_32:
  v36 = *(a1 + 40);
  v37 = *(a1 + 48);
  v38 = *(a1 + 88);
  v39 = *(a1 + 89);
  v40 = *(*(v7 + 208) + 52);
  v41 = &byte_29D2F790B;
  v42 = 64;
  do
  {
    v45 = *v41;
    v46 = *(v41 - 1);
    v47 = v38 - 8 * v46;
    v48 = v39 - 4 * v45;
    if (v47 < 1 || v48 <= 0)
    {
      *v37 = 0;
    }

    else
    {
      if (v48 >= 4)
      {
        v43 = 4;
      }

      else
      {
        v43 = v39 - 4 * v45;
      }

      if (v47 >= 8)
      {
        v44 = 8;
      }

      else
      {
        v44 = v38 - 8 * v46;
      }

      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressSubblock(v36, v37, &v61[256 * v45 + 16 * v46], 64, v44, v43, v40, a2.n128_f64[0], a3.n128_f64[0], a4, a5, v14, v15, v16, v17);
      v36 += result;
    }

    v41 += 2;
    ++v37;
    v42 -= 2;
  }

  while (v42);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE2ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, __n128 a3, double a4, double a5)
{
  v62 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(*(v7 + 208) + 52);
  v10 = &byte_29D2F790B;
  v11 = 64;
  do
  {
    v12 = *v8++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressSubblock(&v61[256 * *v10 + 16 * *(v10 - 1)], 64, v6, v12, v9, a2.n128_f64[0], a3.n128_f64[0], a4, *&a5);
    v6 += result;
    v10 += 2;
    v11 -= 2;
  }

  while (v11);
  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = *(a1 + 84);
    if (v19)
    {
      v20 = *(a1 + 72);
      result = v20 << 6;
      v21 = 2 * *(a1 + 76);
      v22 = &v61[64 * v20 + v21];
      v23 = *(a1 + 56);
      v24 = *(a1 + 64);
      v25 = 2 * v19;
      v26 = &v61[64 * v18 - 64 + 64 * v20 + 2 * v19 + v21];
      v29 = v22 < v23 + v24 * (v18 - 1) + 2 * v19 && v23 < v26 || v24 < 0;
      if (v19 <= 3)
      {
        for (i = 0; i != v18; ++i)
        {
          v31 = 0;
          do
          {
            v22[v31] = *(v23 + v31);
            ++v31;
          }

          while (v31 < v25);
          v22 += 64;
          v23 += v24;
        }

        goto LABEL_32;
      }

      if (!v25 || (v25 - 1) >> 32)
      {
        for (j = 0; j != v18; ++j)
        {
          v35 = 0;
          do
          {
            v22[v35] = *(v23 + v35);
            ++v35;
          }

          while (v25 > v35);
          v22 += 64;
          v23 += v24;
        }

        goto LABEL_32;
      }

      if (v29)
      {
        for (k = 0; k != v18; ++k)
        {
          v33 = 0;
          do
          {
            v22[v33] = *(v23 + v33);
            ++v33;
          }

          while (v25 > v33);
          v22 += 64;
          v23 += v24;
        }

        goto LABEL_32;
      }

      v50 = 0;
      result += &v61[v21 + 16];
      v51 = (v23 + 16);
      while (v19 >= 0x10)
      {
        v53 = v51;
        v54 = result;
        v55 = v25 & 0x1FFFFFFE0;
        do
        {
          a2 = v53[-1];
          a3 = *v53;
          v54[-1] = a2;
          *v54 = a3;
          v54 += 2;
          v53 += 2;
          v55 -= 32;
        }

        while (v55);
        if (v25 == (v25 & 0x1FFFFFFE0))
        {
          goto LABEL_49;
        }

        v52 = v25 & 0x1FFFFFFE0;
        v56 = v25 & 0x1FFFFFFE0;
        if ((v19 & 0xC) != 0)
        {
          goto LABEL_56;
        }

        do
        {
LABEL_59:
          v22[v56] = *(v23 + v56);
          ++v56;
        }

        while (v25 > v56);
LABEL_49:
        ++v50;
        result += 64;
        v51 = (v51 + v24);
        v23 += v24;
        v22 += 64;
        if (v50 == v18)
        {
          goto LABEL_32;
        }
      }

      v52 = 0;
LABEL_56:
      v57 = v52 - (v25 & 0x1FFFFFFF8);
      v58 = (v23 + v52);
      v59 = &v22[v52];
      do
      {
        v60 = *v58++;
        a2.n128_u64[0] = v60;
        *v59++ = v60;
        v57 += 8;
      }

      while (v57);
      v56 = v25 & 0x1FFFFFFF8;
      if (v25 == (v25 & 0x1FFFFFFF8))
      {
        goto LABEL_49;
      }

      goto LABEL_59;
    }
  }

LABEL_32:
  v36 = *(a1 + 40);
  v37 = *(a1 + 48);
  v38 = *(a1 + 88);
  v39 = *(a1 + 89);
  v40 = *(*(v7 + 208) + 52);
  v41 = &byte_29D2F790B;
  v42 = 64;
  do
  {
    v45 = *v41;
    v46 = *(v41 - 1);
    v47 = v38 - 8 * v46;
    v48 = v39 - 4 * v45;
    if (v47 < 1 || v48 <= 0)
    {
      *v37 = 0;
    }

    else
    {
      if (v48 >= 4)
      {
        v43 = 4;
      }

      else
      {
        v43 = v39 - 4 * v45;
      }

      if (v47 >= 8)
      {
        v44 = 8;
      }

      else
      {
        v44 = v38 - 8 * v46;
      }

      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressSubblock(v36, v37, &v61[256 * v45 + 16 * v46], 64, v44, v43, v40, a2.n128_f64[0], a3.n128_f64[0], a4, a5, v14, v15, v16, v17);
      v36 += result;
    }

    v41 += 2;
    ++v37;
    v42 -= 2;
  }

  while (v42);
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE2ELj1ELh1ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, double a3, double a4, int8x8_t a5)
{
  v62 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = &byte_29D2F790B;
  v9 = 64;
  do
  {
    v10 = *v7++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&v61[256 * *v8 + 16 * *(v8 - 1)], 64, v6, v10, a2, a3, a4, a5);
    v6 = (v6 + result);
    v8 += 2;
    v9 -= 2;
  }

  while (v9);
  v12 = *(a1 + 80);
  if (v12)
  {
    v13 = *(a1 + 84);
    if (v13)
    {
      v14 = *(a1 + 72);
      v15 = v14 << 6;
      v16 = 2 * *(a1 + 76);
      v17 = &v61[64 * v14 + v16];
      v18 = *(a1 + 56);
      v19 = *(a1 + 64);
      v20 = 2 * v13;
      v21 = &v61[64 * v12 - 64 + 64 * v14 + 2 * v13 + v16];
      v24 = v17 < v18 + v19 * (v12 - 1) + 2 * v13 && v18 < v21 || v19 < 0;
      if (v13 <= 3)
      {
        for (i = 0; i != v12; ++i)
        {
          v26 = 0;
          do
          {
            v17[v26] = *(v18 + v26);
            ++v26;
          }

          while (v26 < v20);
          v17 += 64;
          v18 += v19;
        }

        goto LABEL_32;
      }

      if (!v20 || (v20 - 1) >> 32)
      {
        for (j = 0; j != v12; ++j)
        {
          v30 = 0;
          do
          {
            v17[v30] = *(v18 + v30);
            ++v30;
          }

          while (v20 > v30);
          v17 += 64;
          v18 += v19;
        }

        goto LABEL_32;
      }

      if (v24)
      {
        for (k = 0; k != v12; ++k)
        {
          v28 = 0;
          do
          {
            v17[v28] = *(v18 + v28);
            ++v28;
          }

          while (v20 > v28);
          v17 += 64;
          v18 += v19;
        }

        goto LABEL_32;
      }

      v48 = 0;
      result = v20 & 0x1FFFFFFF8;
      v49 = &v61[v15 + 16 + v16];
      v50 = (v18 + 16);
      while (v13 >= 0x10)
      {
        v52 = v50;
        v53 = v49;
        v54 = v20 & 0x1FFFFFFE0;
        do
        {
          v55 = *v52;
          *(v53 - 1) = *(v52 - 1);
          *v53 = v55;
          v53 += 2;
          v52 += 2;
          v54 -= 32;
        }

        while (v54);
        if (v20 == (v20 & 0x1FFFFFFE0))
        {
          goto LABEL_42;
        }

        v51 = v20 & 0x1FFFFFFE0;
        v56 = v20 & 0x1FFFFFFE0;
        if ((v13 & 0xC) != 0)
        {
          goto LABEL_49;
        }

        do
        {
LABEL_52:
          v17[v56] = *(v18 + v56);
          ++v56;
        }

        while (v20 > v56);
LABEL_42:
        ++v48;
        v49 += 64;
        v50 = (v50 + v19);
        v18 += v19;
        v17 += 64;
        if (v48 == v12)
        {
          goto LABEL_32;
        }
      }

      v51 = 0;
LABEL_49:
      v57 = v51 - (v20 & 0x1FFFFFFF8);
      v58 = (v18 + v51);
      v59 = &v17[v51];
      do
      {
        v60 = *v58++;
        *v59++ = v60;
        v57 += 8;
      }

      while (v57);
      v56 = v20 & 0x1FFFFFFF8;
      if (v20 == result)
      {
        goto LABEL_42;
      }

      goto LABEL_52;
    }
  }

LABEL_32:
  v31 = *(a1 + 40);
  v32 = *(a1 + 48);
  v33 = *(a1 + 88);
  v34 = &byte_29D2F790B;
  v35 = 64;
  v36 = *(a1 + 89);
  do
  {
    v45 = *v34;
    v46 = *(v34 - 1);
    if (v33 <= 8 * v46 || 4 * v45 >= v36)
    {
      v44 = 0;
    }

    else
    {
      v37 = &v61[256 * v45 + 16 * v46];
      v38 = *v37;
      v39 = v37[4];
      v40 = vzip2q_s32(*v37, v39);
      v41 = v37[8];
      v42 = v37[12];
      v43 = v31;
      vst2_f32(v43, v38);
      v43 += 4;
      vst2_f32(v43, v41);
      *(v31 + 32) = v40;
      *(v31 + 48) = vzip2q_s32(v41, v42);
      v31 += 64;
      v44 = 63;
    }

    v34 += 2;
    *v32++ = v44;
    v35 -= 2;
  }

  while (v35);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE2ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, __n128 a3, double a4, double a5)
{
  v59 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = &byte_29D2F790B;
  v9 = 64;
  do
  {
    v10 = *v7++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&v58[256 * *v8 + 16 * *(v8 - 1)], 64, v6, v10, a2.n128_f64[0], a3.n128_f64[0], a4, *&a5);
    v6 = (v6 + result);
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
      result = v18 << 6;
      v19 = 2 * *(a1 + 76);
      v20 = &v58[64 * v18 + v19];
      v21 = *(a1 + 56);
      v22 = *(a1 + 64);
      v23 = 2 * v17;
      v24 = &v58[64 * v16 - 64 + 64 * v18 + 2 * v17 + v19];
      v27 = v20 < v21 + v22 * (v16 - 1) + 2 * v17 && v21 < v24 || v22 < 0;
      if (v17 <= 3)
      {
        for (i = 0; i != v16; ++i)
        {
          v29 = 0;
          do
          {
            v20[v29] = *(v21 + v29);
            ++v29;
          }

          while (v29 < v23);
          v20 += 64;
          v21 += v22;
        }

        goto LABEL_32;
      }

      if (!v23 || (v23 - 1) >> 32)
      {
        for (j = 0; j != v16; ++j)
        {
          v33 = 0;
          do
          {
            v20[v33] = *(v21 + v33);
            ++v33;
          }

          while (v23 > v33);
          v20 += 64;
          v21 += v22;
        }

        goto LABEL_32;
      }

      if (v27)
      {
        for (k = 0; k != v16; ++k)
        {
          v31 = 0;
          do
          {
            v20[v31] = *(v21 + v31);
            ++v31;
          }

          while (v23 > v31);
          v20 += 64;
          v21 += v22;
        }

        goto LABEL_32;
      }

      v47 = 0;
      result += &v58[v19 + 16];
      v48 = (v21 + 16);
      while (v17 >= 0x10)
      {
        v50 = v48;
        v51 = result;
        v52 = v23 & 0x1FFFFFFE0;
        do
        {
          a2 = v50[-1];
          a3 = *v50;
          v51[-1] = a2;
          *v51 = a3;
          v51 += 2;
          v50 += 2;
          v52 -= 32;
        }

        while (v52);
        if (v23 == (v23 & 0x1FFFFFFE0))
        {
          goto LABEL_49;
        }

        v49 = v23 & 0x1FFFFFFE0;
        v53 = v23 & 0x1FFFFFFE0;
        if ((v17 & 0xC) != 0)
        {
          goto LABEL_56;
        }

        do
        {
LABEL_59:
          v20[v53] = *(v21 + v53);
          ++v53;
        }

        while (v23 > v53);
LABEL_49:
        ++v47;
        result += 64;
        v48 = (v48 + v22);
        v21 += v22;
        v20 += 64;
        if (v47 == v16)
        {
          goto LABEL_32;
        }
      }

      v49 = 0;
LABEL_56:
      v54 = v49 - (v23 & 0x1FFFFFFF8);
      v55 = (v21 + v49);
      v56 = &v20[v49];
      do
      {
        v57 = *v55++;
        a2.n128_u64[0] = v57;
        *v56++ = v57;
        v54 += 8;
      }

      while (v54);
      v53 = v23 & 0x1FFFFFFF8;
      if (v23 == (v23 & 0x1FFFFFFF8))
      {
        goto LABEL_49;
      }

      goto LABEL_59;
    }
  }

LABEL_32:
  v34 = &byte_29D2F790B;
  v35 = *(a1 + 40);
  v36 = *(a1 + 48);
  v37 = *(a1 + 88);
  v38 = 64;
  v39 = *(a1 + 89);
  do
  {
    v42 = *v34;
    v43 = *(v34 - 1);
    v44 = v37 - 8 * v43;
    v45 = v39 - 4 * v42;
    if (v44 < 1 || v45 <= 0)
    {
      *v36 = 0;
    }

    else
    {
      if (v45 >= 4)
      {
        v40 = 4;
      }

      else
      {
        v40 = v39 - 4 * v42;
      }

      if (v44 >= 8)
      {
        v41 = 8;
      }

      else
      {
        v41 = v37 - 8 * v43;
      }

      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::compressSubblock(v35, v36, &v58[256 * v42 + 16 * v43], 64, v41, v40, a2.n128_f64[0], a3.n128_f64[0], a4, a5, v12, v13, v14, v15);
      v35 += result;
    }

    v34 += 2;
    ++v36;
    v38 -= 2;
  }

  while (v38);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, __n128 a3, double a4, double a5)
{
  v62 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(*(v7 + 208) + 52);
  v10 = &byte_29D2F790B;
  v11 = 64;
  do
  {
    v12 = *v8++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v61[256 * *v10 + 16 * *(v10 - 1)], 64, v6, v12, v9, a2.n128_f64[0], a3.n128_f64[0], a4, *&a5);
    v6 += result;
    v10 += 2;
    v11 -= 2;
  }

  while (v11);
  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = *(a1 + 84);
    if (v19)
    {
      v20 = *(a1 + 72);
      result = v20 << 6;
      v21 = 2 * *(a1 + 76);
      v22 = &v61[64 * v20 + v21];
      v23 = *(a1 + 56);
      v24 = *(a1 + 64);
      v25 = 2 * v19;
      v26 = &v61[64 * v18 - 64 + 64 * v20 + 2 * v19 + v21];
      v29 = v22 < v23 + v24 * (v18 - 1) + 2 * v19 && v23 < v26 || v24 < 0;
      if (v19 <= 3)
      {
        for (i = 0; i != v18; ++i)
        {
          v31 = 0;
          do
          {
            v22[v31] = *(v23 + v31);
            ++v31;
          }

          while (v31 < v25);
          v22 += 64;
          v23 += v24;
        }

        goto LABEL_32;
      }

      if (!v25 || (v25 - 1) >> 32)
      {
        for (j = 0; j != v18; ++j)
        {
          v35 = 0;
          do
          {
            v22[v35] = *(v23 + v35);
            ++v35;
          }

          while (v25 > v35);
          v22 += 64;
          v23 += v24;
        }

        goto LABEL_32;
      }

      if (v29)
      {
        for (k = 0; k != v18; ++k)
        {
          v33 = 0;
          do
          {
            v22[v33] = *(v23 + v33);
            ++v33;
          }

          while (v25 > v33);
          v22 += 64;
          v23 += v24;
        }

        goto LABEL_32;
      }

      v50 = 0;
      result += &v61[v21 + 16];
      v51 = (v23 + 16);
      while (v19 >= 0x10)
      {
        v53 = v51;
        v54 = result;
        v55 = v25 & 0x1FFFFFFE0;
        do
        {
          a2 = v53[-1];
          a3 = *v53;
          v54[-1] = a2;
          *v54 = a3;
          v54 += 2;
          v53 += 2;
          v55 -= 32;
        }

        while (v55);
        if (v25 == (v25 & 0x1FFFFFFE0))
        {
          goto LABEL_49;
        }

        v52 = v25 & 0x1FFFFFFE0;
        v56 = v25 & 0x1FFFFFFE0;
        if ((v19 & 0xC) != 0)
        {
          goto LABEL_56;
        }

        do
        {
LABEL_59:
          v22[v56] = *(v23 + v56);
          ++v56;
        }

        while (v25 > v56);
LABEL_49:
        ++v50;
        result += 64;
        v51 = (v51 + v24);
        v23 += v24;
        v22 += 64;
        if (v50 == v18)
        {
          goto LABEL_32;
        }
      }

      v52 = 0;
LABEL_56:
      v57 = v52 - (v25 & 0x1FFFFFFF8);
      v58 = (v23 + v52);
      v59 = &v22[v52];
      do
      {
        v60 = *v58++;
        a2.n128_u64[0] = v60;
        *v59++ = v60;
        v57 += 8;
      }

      while (v57);
      v56 = v25 & 0x1FFFFFFF8;
      if (v25 == (v25 & 0x1FFFFFFF8))
      {
        goto LABEL_49;
      }

      goto LABEL_59;
    }
  }

LABEL_32:
  v36 = *(a1 + 40);
  v37 = *(a1 + 48);
  v38 = *(a1 + 88);
  v39 = *(a1 + 89);
  v40 = *(*(v7 + 208) + 52);
  v41 = &byte_29D2F790B;
  v42 = 64;
  do
  {
    v45 = *v41;
    v46 = *(v41 - 1);
    v47 = v38 - 8 * v46;
    v48 = v39 - 4 * v45;
    if (v47 < 1 || v48 <= 0)
    {
      *v37 = 0;
    }

    else
    {
      if (v48 >= 4)
      {
        v43 = 4;
      }

      else
      {
        v43 = v39 - 4 * v45;
      }

      if (v47 >= 8)
      {
        v44 = 8;
      }

      else
      {
        v44 = v38 - 8 * v46;
      }

      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressSubblock(v36, v37, &v61[256 * v45 + 16 * v46], 64, v44, v43, v40, a2.n128_f64[0], a3.n128_f64[0], a4, a5, v14, v15, v16, v17);
      v36 += result;
    }

    v41 += 2;
    ++v37;
    v42 -= 2;
  }

  while (v42);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, __n128 a3, double a4, double a5)
{
  v62 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(*(v7 + 208) + 52);
  v10 = &byte_29D2F790B;
  v11 = 64;
  do
  {
    v12 = *v8++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v61[256 * *v10 + 16 * *(v10 - 1)], 64, v6, v12, v9, a2.n128_f64[0], a3.n128_f64[0], a4, *&a5);
    v6 += result;
    v10 += 2;
    v11 -= 2;
  }

  while (v11);
  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = *(a1 + 84);
    if (v19)
    {
      v20 = *(a1 + 72);
      result = v20 << 6;
      v21 = 2 * *(a1 + 76);
      v22 = &v61[64 * v20 + v21];
      v23 = *(a1 + 56);
      v24 = *(a1 + 64);
      v25 = 2 * v19;
      v26 = &v61[64 * v18 - 64 + 64 * v20 + 2 * v19 + v21];
      v29 = v22 < v23 + v24 * (v18 - 1) + 2 * v19 && v23 < v26 || v24 < 0;
      if (v19 <= 3)
      {
        for (i = 0; i != v18; ++i)
        {
          v31 = 0;
          do
          {
            v22[v31] = *(v23 + v31);
            ++v31;
          }

          while (v31 < v25);
          v22 += 64;
          v23 += v24;
        }

        goto LABEL_32;
      }

      if (!v25 || (v25 - 1) >> 32)
      {
        for (j = 0; j != v18; ++j)
        {
          v35 = 0;
          do
          {
            v22[v35] = *(v23 + v35);
            ++v35;
          }

          while (v25 > v35);
          v22 += 64;
          v23 += v24;
        }

        goto LABEL_32;
      }

      if (v29)
      {
        for (k = 0; k != v18; ++k)
        {
          v33 = 0;
          do
          {
            v22[v33] = *(v23 + v33);
            ++v33;
          }

          while (v25 > v33);
          v22 += 64;
          v23 += v24;
        }

        goto LABEL_32;
      }

      v50 = 0;
      result += &v61[v21 + 16];
      v51 = (v23 + 16);
      while (v19 >= 0x10)
      {
        v53 = v51;
        v54 = result;
        v55 = v25 & 0x1FFFFFFE0;
        do
        {
          a2 = v53[-1];
          a3 = *v53;
          v54[-1] = a2;
          *v54 = a3;
          v54 += 2;
          v53 += 2;
          v55 -= 32;
        }

        while (v55);
        if (v25 == (v25 & 0x1FFFFFFE0))
        {
          goto LABEL_49;
        }

        v52 = v25 & 0x1FFFFFFE0;
        v56 = v25 & 0x1FFFFFFE0;
        if ((v19 & 0xC) != 0)
        {
          goto LABEL_56;
        }

        do
        {
LABEL_59:
          v22[v56] = *(v23 + v56);
          ++v56;
        }

        while (v25 > v56);
LABEL_49:
        ++v50;
        result += 64;
        v51 = (v51 + v24);
        v23 += v24;
        v22 += 64;
        if (v50 == v18)
        {
          goto LABEL_32;
        }
      }

      v52 = 0;
LABEL_56:
      v57 = v52 - (v25 & 0x1FFFFFFF8);
      v58 = (v23 + v52);
      v59 = &v22[v52];
      do
      {
        v60 = *v58++;
        a2.n128_u64[0] = v60;
        *v59++ = v60;
        v57 += 8;
      }

      while (v57);
      v56 = v25 & 0x1FFFFFFF8;
      if (v25 == (v25 & 0x1FFFFFFF8))
      {
        goto LABEL_49;
      }

      goto LABEL_59;
    }
  }

LABEL_32:
  v36 = *(a1 + 40);
  v37 = *(a1 + 48);
  v38 = *(a1 + 88);
  v39 = *(a1 + 89);
  v40 = *(*(v7 + 208) + 52);
  v41 = &byte_29D2F790B;
  v42 = 64;
  do
  {
    v45 = *v41;
    v46 = *(v41 - 1);
    v47 = v38 - 8 * v46;
    v48 = v39 - 4 * v45;
    if (v47 < 1 || v48 <= 0)
    {
      *v37 = 0;
    }

    else
    {
      if (v48 >= 4)
      {
        v43 = 4;
      }

      else
      {
        v43 = v39 - 4 * v45;
      }

      if (v47 >= 8)
      {
        v44 = 8;
      }

      else
      {
        v44 = v38 - 8 * v46;
      }

      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressSubblock(v36, v37, &v61[256 * v45 + 16 * v46], 64, v44, v43, v40, a2.n128_f64[0], a3.n128_f64[0], a4, a5, v14, v15, v16, v17);
      v36 += result;
    }

    v41 += 2;
    ++v37;
    v42 -= 2;
  }

  while (v42);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, __n128 a3, double a4, double a5)
{
  v62 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(*(v7 + 208) + 52);
  v10 = &byte_29D2F790B;
  v11 = 64;
  do
  {
    v12 = *v8++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v61[256 * *v10 + 16 * *(v10 - 1)], 64, v6, v12, v9, a2.n128_f64[0], a3.n128_f64[0], a4, *&a5);
    v6 += result;
    v10 += 2;
    v11 -= 2;
  }

  while (v11);
  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = *(a1 + 84);
    if (v19)
    {
      v20 = *(a1 + 72);
      result = v20 << 6;
      v21 = 2 * *(a1 + 76);
      v22 = &v61[64 * v20 + v21];
      v23 = *(a1 + 56);
      v24 = *(a1 + 64);
      v25 = 2 * v19;
      v26 = &v61[64 * v18 - 64 + 64 * v20 + 2 * v19 + v21];
      v29 = v22 < v23 + v24 * (v18 - 1) + 2 * v19 && v23 < v26 || v24 < 0;
      if (v19 <= 3)
      {
        for (i = 0; i != v18; ++i)
        {
          v31 = 0;
          do
          {
            v22[v31] = *(v23 + v31);
            ++v31;
          }

          while (v31 < v25);
          v22 += 64;
          v23 += v24;
        }

        goto LABEL_32;
      }

      if (!v25 || (v25 - 1) >> 32)
      {
        for (j = 0; j != v18; ++j)
        {
          v35 = 0;
          do
          {
            v22[v35] = *(v23 + v35);
            ++v35;
          }

          while (v25 > v35);
          v22 += 64;
          v23 += v24;
        }

        goto LABEL_32;
      }

      if (v29)
      {
        for (k = 0; k != v18; ++k)
        {
          v33 = 0;
          do
          {
            v22[v33] = *(v23 + v33);
            ++v33;
          }

          while (v25 > v33);
          v22 += 64;
          v23 += v24;
        }

        goto LABEL_32;
      }

      v50 = 0;
      result += &v61[v21 + 16];
      v51 = (v23 + 16);
      while (v19 >= 0x10)
      {
        v53 = v51;
        v54 = result;
        v55 = v25 & 0x1FFFFFFE0;
        do
        {
          a2 = v53[-1];
          a3 = *v53;
          v54[-1] = a2;
          *v54 = a3;
          v54 += 2;
          v53 += 2;
          v55 -= 32;
        }

        while (v55);
        if (v25 == (v25 & 0x1FFFFFFE0))
        {
          goto LABEL_49;
        }

        v52 = v25 & 0x1FFFFFFE0;
        v56 = v25 & 0x1FFFFFFE0;
        if ((v19 & 0xC) != 0)
        {
          goto LABEL_56;
        }

        do
        {
LABEL_59:
          v22[v56] = *(v23 + v56);
          ++v56;
        }

        while (v25 > v56);
LABEL_49:
        ++v50;
        result += 64;
        v51 = (v51 + v24);
        v23 += v24;
        v22 += 64;
        if (v50 == v18)
        {
          goto LABEL_32;
        }
      }

      v52 = 0;
LABEL_56:
      v57 = v52 - (v25 & 0x1FFFFFFF8);
      v58 = (v23 + v52);
      v59 = &v22[v52];
      do
      {
        v60 = *v58++;
        a2.n128_u64[0] = v60;
        *v59++ = v60;
        v57 += 8;
      }

      while (v57);
      v56 = v25 & 0x1FFFFFFF8;
      if (v25 == (v25 & 0x1FFFFFFF8))
      {
        goto LABEL_49;
      }

      goto LABEL_59;
    }
  }

LABEL_32:
  v36 = *(a1 + 40);
  v37 = *(a1 + 48);
  v38 = *(a1 + 88);
  v39 = *(a1 + 89);
  v40 = *(*(v7 + 208) + 52);
  v41 = &byte_29D2F790B;
  v42 = 64;
  do
  {
    v45 = *v41;
    v46 = *(v41 - 1);
    v47 = v38 - 8 * v46;
    v48 = v39 - 4 * v45;
    if (v47 < 1 || v48 <= 0)
    {
      *v37 = 0;
    }

    else
    {
      if (v48 >= 4)
      {
        v43 = 4;
      }

      else
      {
        v43 = v39 - 4 * v45;
      }

      if (v47 >= 8)
      {
        v44 = 8;
      }

      else
      {
        v44 = v38 - 8 * v46;
      }

      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressSubblock(v36, v37, &v61[256 * v45 + 16 * v46], 64, v44, v43, v40, a2.n128_f64[0], a3.n128_f64[0], a4, a5, v14, v15, v16, v17);
      v36 += result;
    }

    v41 += 2;
    ++v37;
    v42 -= 2;
  }

  while (v42);
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh1ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, double a3, double a4, int8x8_t a5)
{
  v62 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = &byte_29D2F790B;
  v9 = 64;
  do
  {
    v10 = *v7++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&v61[256 * *v8 + 16 * *(v8 - 1)], 64, v6, v10, a2, a3, a4, a5);
    v6 = (v6 + result);
    v8 += 2;
    v9 -= 2;
  }

  while (v9);
  v12 = *(a1 + 80);
  if (v12)
  {
    v13 = *(a1 + 84);
    if (v13)
    {
      v14 = *(a1 + 72);
      v15 = v14 << 6;
      v16 = 2 * *(a1 + 76);
      v17 = &v61[64 * v14 + v16];
      v18 = *(a1 + 56);
      v19 = *(a1 + 64);
      v20 = 2 * v13;
      v21 = &v61[64 * v12 - 64 + 64 * v14 + 2 * v13 + v16];
      v24 = v17 < v18 + v19 * (v12 - 1) + 2 * v13 && v18 < v21 || v19 < 0;
      if (v13 <= 3)
      {
        for (i = 0; i != v12; ++i)
        {
          v26 = 0;
          do
          {
            v17[v26] = *(v18 + v26);
            ++v26;
          }

          while (v26 < v20);
          v17 += 64;
          v18 += v19;
        }

        goto LABEL_32;
      }

      if (!v20 || (v20 - 1) >> 32)
      {
        for (j = 0; j != v12; ++j)
        {
          v30 = 0;
          do
          {
            v17[v30] = *(v18 + v30);
            ++v30;
          }

          while (v20 > v30);
          v17 += 64;
          v18 += v19;
        }

        goto LABEL_32;
      }

      if (v24)
      {
        for (k = 0; k != v12; ++k)
        {
          v28 = 0;
          do
          {
            v17[v28] = *(v18 + v28);
            ++v28;
          }

          while (v20 > v28);
          v17 += 64;
          v18 += v19;
        }

        goto LABEL_32;
      }

      v48 = 0;
      result = v20 & 0x1FFFFFFF8;
      v49 = &v61[v15 + 16 + v16];
      v50 = (v18 + 16);
      while (v13 >= 0x10)
      {
        v52 = v50;
        v53 = v49;
        v54 = v20 & 0x1FFFFFFE0;
        do
        {
          v55 = *v52;
          *(v53 - 1) = *(v52 - 1);
          *v53 = v55;
          v53 += 2;
          v52 += 2;
          v54 -= 32;
        }

        while (v54);
        if (v20 == (v20 & 0x1FFFFFFE0))
        {
          goto LABEL_42;
        }

        v51 = v20 & 0x1FFFFFFE0;
        v56 = v20 & 0x1FFFFFFE0;
        if ((v13 & 0xC) != 0)
        {
          goto LABEL_49;
        }

        do
        {
LABEL_52:
          v17[v56] = *(v18 + v56);
          ++v56;
        }

        while (v20 > v56);
LABEL_42:
        ++v48;
        v49 += 64;
        v50 = (v50 + v19);
        v18 += v19;
        v17 += 64;
        if (v48 == v12)
        {
          goto LABEL_32;
        }
      }

      v51 = 0;
LABEL_49:
      v57 = v51 - (v20 & 0x1FFFFFFF8);
      v58 = (v18 + v51);
      v59 = &v17[v51];
      do
      {
        v60 = *v58++;
        *v59++ = v60;
        v57 += 8;
      }

      while (v57);
      v56 = v20 & 0x1FFFFFFF8;
      if (v20 == result)
      {
        goto LABEL_42;
      }

      goto LABEL_52;
    }
  }

LABEL_32:
  v31 = *(a1 + 40);
  v32 = *(a1 + 48);
  v33 = *(a1 + 88);
  v34 = &byte_29D2F790B;
  v35 = 64;
  v36 = *(a1 + 89);
  do
  {
    v45 = *v34;
    v46 = *(v34 - 1);
    if (v33 <= 8 * v46 || 4 * v45 >= v36)
    {
      v44 = 0;
    }

    else
    {
      v37 = &v61[256 * v45 + 16 * v46];
      v38 = *v37;
      v39 = v37[4];
      v40 = vzip2q_s32(*v37, v39);
      v41 = v37[8];
      v42 = v37[12];
      v43 = v31;
      vst2_f32(v43, v38);
      v43 += 4;
      vst2_f32(v43, v41);
      *(v31 + 32) = v40;
      *(v31 + 48) = vzip2q_s32(v41, v42);
      v31 += 64;
      v44 = 63;
    }

    v34 += 2;
    *v32++ = v44;
    v35 -= 2;
  }

  while (v35);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, __n128 a3, double a4, double a5)
{
  v59 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = &byte_29D2F790B;
  v9 = 64;
  do
  {
    v10 = *v7++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&v58[256 * *v8 + 16 * *(v8 - 1)], 64, v6, v10, a2.n128_f64[0], a3.n128_f64[0], a4, *&a5);
    v6 = (v6 + result);
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
      result = v18 << 6;
      v19 = 2 * *(a1 + 76);
      v20 = &v58[64 * v18 + v19];
      v21 = *(a1 + 56);
      v22 = *(a1 + 64);
      v23 = 2 * v17;
      v24 = &v58[64 * v16 - 64 + 64 * v18 + 2 * v17 + v19];
      v27 = v20 < v21 + v22 * (v16 - 1) + 2 * v17 && v21 < v24 || v22 < 0;
      if (v17 <= 3)
      {
        for (i = 0; i != v16; ++i)
        {
          v29 = 0;
          do
          {
            v20[v29] = *(v21 + v29);
            ++v29;
          }

          while (v29 < v23);
          v20 += 64;
          v21 += v22;
        }

        goto LABEL_32;
      }

      if (!v23 || (v23 - 1) >> 32)
      {
        for (j = 0; j != v16; ++j)
        {
          v33 = 0;
          do
          {
            v20[v33] = *(v21 + v33);
            ++v33;
          }

          while (v23 > v33);
          v20 += 64;
          v21 += v22;
        }

        goto LABEL_32;
      }

      if (v27)
      {
        for (k = 0; k != v16; ++k)
        {
          v31 = 0;
          do
          {
            v20[v31] = *(v21 + v31);
            ++v31;
          }

          while (v23 > v31);
          v20 += 64;
          v21 += v22;
        }

        goto LABEL_32;
      }

      v47 = 0;
      result += &v58[v19 + 16];
      v48 = (v21 + 16);
      while (v17 >= 0x10)
      {
        v50 = v48;
        v51 = result;
        v52 = v23 & 0x1FFFFFFE0;
        do
        {
          a2 = v50[-1];
          a3 = *v50;
          v51[-1] = a2;
          *v51 = a3;
          v51 += 2;
          v50 += 2;
          v52 -= 32;
        }

        while (v52);
        if (v23 == (v23 & 0x1FFFFFFE0))
        {
          goto LABEL_49;
        }

        v49 = v23 & 0x1FFFFFFE0;
        v53 = v23 & 0x1FFFFFFE0;
        if ((v17 & 0xC) != 0)
        {
          goto LABEL_56;
        }

        do
        {
LABEL_59:
          v20[v53] = *(v21 + v53);
          ++v53;
        }

        while (v23 > v53);
LABEL_49:
        ++v47;
        result += 64;
        v48 = (v48 + v22);
        v21 += v22;
        v20 += 64;
        if (v47 == v16)
        {
          goto LABEL_32;
        }
      }

      v49 = 0;
LABEL_56:
      v54 = v49 - (v23 & 0x1FFFFFFF8);
      v55 = (v21 + v49);
      v56 = &v20[v49];
      do
      {
        v57 = *v55++;
        a2.n128_u64[0] = v57;
        *v56++ = v57;
        v54 += 8;
      }

      while (v54);
      v53 = v23 & 0x1FFFFFFF8;
      if (v23 == (v23 & 0x1FFFFFFF8))
      {
        goto LABEL_49;
      }

      goto LABEL_59;
    }
  }

LABEL_32:
  v34 = &byte_29D2F790B;
  v35 = *(a1 + 40);
  v36 = *(a1 + 48);
  v37 = *(a1 + 88);
  v38 = 64;
  v39 = *(a1 + 89);
  do
  {
    v42 = *v34;
    v43 = *(v34 - 1);
    v44 = v37 - 8 * v43;
    v45 = v39 - 4 * v42;
    if (v44 < 1 || v45 <= 0)
    {
      *v36 = 0;
    }

    else
    {
      if (v45 >= 4)
      {
        v40 = 4;
      }

      else
      {
        v40 = v39 - 4 * v42;
      }

      if (v44 >= 8)
      {
        v41 = 8;
      }

      else
      {
        v41 = v37 - 8 * v43;
      }

      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v35, v36, &v58[256 * v42 + 16 * v43], 64, v41, v40, a2.n128_f64[0], a3.n128_f64[0], a4, a5, v12, v13, v14, v15);
      v35 = (v35 + result);
    }

    v34 += 2;
    ++v36;
    v38 -= 2;
  }

  while (v38);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE1ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, __n128 a3, double a4, double a5)
{
  v62 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(*(v7 + 208) + 52);
  v10 = &byte_29D2F790B;
  v11 = 64;
  do
  {
    v12 = *v8++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressSubblock(&v61[256 * *v10 + 16 * *(v10 - 1)], 64, v6, v12, v9, a2.n128_f64[0], a3.n128_f64[0], a4, *&a5);
    v6 += result;
    v10 += 2;
    v11 -= 2;
  }

  while (v11);
  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = *(a1 + 84);
    if (v19)
    {
      v20 = *(a1 + 72);
      result = v20 << 6;
      v21 = 2 * *(a1 + 76);
      v22 = &v61[64 * v20 + v21];
      v23 = *(a1 + 56);
      v24 = *(a1 + 64);
      v25 = 2 * v19;
      v26 = &v61[64 * v18 - 64 + 64 * v20 + 2 * v19 + v21];
      v29 = v22 < v23 + v24 * (v18 - 1) + 2 * v19 && v23 < v26 || v24 < 0;
      if (v19 <= 3)
      {
        for (i = 0; i != v18; ++i)
        {
          v31 = 0;
          do
          {
            v22[v31] = *(v23 + v31);
            ++v31;
          }

          while (v31 < v25);
          v22 += 64;
          v23 += v24;
        }

        goto LABEL_32;
      }

      if (!v25 || (v25 - 1) >> 32)
      {
        for (j = 0; j != v18; ++j)
        {
          v35 = 0;
          do
          {
            v22[v35] = *(v23 + v35);
            ++v35;
          }

          while (v25 > v35);
          v22 += 64;
          v23 += v24;
        }

        goto LABEL_32;
      }

      if (v29)
      {
        for (k = 0; k != v18; ++k)
        {
          v33 = 0;
          do
          {
            v22[v33] = *(v23 + v33);
            ++v33;
          }

          while (v25 > v33);
          v22 += 64;
          v23 += v24;
        }

        goto LABEL_32;
      }

      v50 = 0;
      result += &v61[v21 + 16];
      v51 = (v23 + 16);
      while (v19 >= 0x10)
      {
        v53 = v51;
        v54 = result;
        v55 = v25 & 0x1FFFFFFE0;
        do
        {
          a2 = v53[-1];
          a3 = *v53;
          v54[-1] = a2;
          *v54 = a3;
          v54 += 2;
          v53 += 2;
          v55 -= 32;
        }

        while (v55);
        if (v25 == (v25 & 0x1FFFFFFE0))
        {
          goto LABEL_49;
        }

        v52 = v25 & 0x1FFFFFFE0;
        v56 = v25 & 0x1FFFFFFE0;
        if ((v19 & 0xC) != 0)
        {
          goto LABEL_56;
        }

        do
        {
LABEL_59:
          v22[v56] = *(v23 + v56);
          ++v56;
        }

        while (v25 > v56);
LABEL_49:
        ++v50;
        result += 64;
        v51 = (v51 + v24);
        v23 += v24;
        v22 += 64;
        if (v50 == v18)
        {
          goto LABEL_32;
        }
      }

      v52 = 0;
LABEL_56:
      v57 = v52 - (v25 & 0x1FFFFFFF8);
      v58 = (v23 + v52);
      v59 = &v22[v52];
      do
      {
        v60 = *v58++;
        a2.n128_u64[0] = v60;
        *v59++ = v60;
        v57 += 8;
      }

      while (v57);
      v56 = v25 & 0x1FFFFFFF8;
      if (v25 == (v25 & 0x1FFFFFFF8))
      {
        goto LABEL_49;
      }

      goto LABEL_59;
    }
  }

LABEL_32:
  v36 = *(a1 + 40);
  v37 = *(a1 + 48);
  v38 = *(a1 + 88);
  v39 = *(a1 + 89);
  v40 = *(*(v7 + 208) + 52);
  v41 = &byte_29D2F790B;
  v42 = 64;
  do
  {
    v45 = *v41;
    v46 = *(v41 - 1);
    v47 = v38 - 8 * v46;
    v48 = v39 - 4 * v45;
    if (v47 < 1 || v48 <= 0)
    {
      *v37 = 0;
    }

    else
    {
      if (v48 >= 4)
      {
        v43 = 4;
      }

      else
      {
        v43 = v39 - 4 * v45;
      }

      if (v47 >= 8)
      {
        v44 = 8;
      }

      else
      {
        v44 = v38 - 8 * v46;
      }

      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressSubblock(v36, v37, &v61[256 * v45 + 16 * v46], 64, v44, v43, v40, a2.n128_f64[0], a3.n128_f64[0], a4, a5, v14, v15, v16, v17);
      v36 += result;
    }

    v41 += 2;
    ++v37;
    v42 -= 2;
  }

  while (v42);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE1ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, __n128 a3, double a4, double a5)
{
  v62 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(*(v7 + 208) + 52);
  v10 = &byte_29D2F790B;
  v11 = 64;
  do
  {
    v12 = *v8++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressSubblock(&v61[256 * *v10 + 16 * *(v10 - 1)], 64, v6, v12, v9, a2.n128_f64[0], a3.n128_f64[0], a4, *&a5);
    v6 += result;
    v10 += 2;
    v11 -= 2;
  }

  while (v11);
  v18 = *(a1 + 80);
  if (v18)
  {
    v19 = *(a1 + 84);
    if (v19)
    {
      v20 = *(a1 + 72);
      result = v20 << 6;
      v21 = 2 * *(a1 + 76);
      v22 = &v61[64 * v20 + v21];
      v23 = *(a1 + 56);
      v24 = *(a1 + 64);
      v25 = 2 * v19;
      v26 = &v61[64 * v18 - 64 + 64 * v20 + 2 * v19 + v21];
      v29 = v22 < v23 + v24 * (v18 - 1) + 2 * v19 && v23 < v26 || v24 < 0;
      if (v19 <= 3)
      {
        for (i = 0; i != v18; ++i)
        {
          v31 = 0;
          do
          {
            v22[v31] = *(v23 + v31);
            ++v31;
          }

          while (v31 < v25);
          v22 += 64;
          v23 += v24;
        }

        goto LABEL_32;
      }

      if (!v25 || (v25 - 1) >> 32)
      {
        for (j = 0; j != v18; ++j)
        {
          v35 = 0;
          do
          {
            v22[v35] = *(v23 + v35);
            ++v35;
          }

          while (v25 > v35);
          v22 += 64;
          v23 += v24;
        }

        goto LABEL_32;
      }

      if (v29)
      {
        for (k = 0; k != v18; ++k)
        {
          v33 = 0;
          do
          {
            v22[v33] = *(v23 + v33);
            ++v33;
          }

          while (v25 > v33);
          v22 += 64;
          v23 += v24;
        }

        goto LABEL_32;
      }

      v50 = 0;
      result += &v61[v21 + 16];
      v51 = (v23 + 16);
      while (v19 >= 0x10)
      {
        v53 = v51;
        v54 = result;
        v55 = v25 & 0x1FFFFFFE0;
        do
        {
          a2 = v53[-1];
          a3 = *v53;
          v54[-1] = a2;
          *v54 = a3;
          v54 += 2;
          v53 += 2;
          v55 -= 32;
        }

        while (v55);
        if (v25 == (v25 & 0x1FFFFFFE0))
        {
          goto LABEL_49;
        }

        v52 = v25 & 0x1FFFFFFE0;
        v56 = v25 & 0x1FFFFFFE0;
        if ((v19 & 0xC) != 0)
        {
          goto LABEL_56;
        }

        do
        {
LABEL_59:
          v22[v56] = *(v23 + v56);
          ++v56;
        }

        while (v25 > v56);
LABEL_49:
        ++v50;
        result += 64;
        v51 = (v51 + v24);
        v23 += v24;
        v22 += 64;
        if (v50 == v18)
        {
          goto LABEL_32;
        }
      }

      v52 = 0;
LABEL_56:
      v57 = v52 - (v25 & 0x1FFFFFFF8);
      v58 = (v23 + v52);
      v59 = &v22[v52];
      do
      {
        v60 = *v58++;
        a2.n128_u64[0] = v60;
        *v59++ = v60;
        v57 += 8;
      }

      while (v57);
      v56 = v25 & 0x1FFFFFFF8;
      if (v25 == (v25 & 0x1FFFFFFF8))
      {
        goto LABEL_49;
      }

      goto LABEL_59;
    }
  }

LABEL_32:
  v36 = *(a1 + 40);
  v37 = *(a1 + 48);
  v38 = *(a1 + 88);
  v39 = *(a1 + 89);
  v40 = *(*(v7 + 208) + 52);
  v41 = &byte_29D2F790B;
  v42 = 64;
  do
  {
    v45 = *v41;
    v46 = *(v41 - 1);
    v47 = v38 - 8 * v46;
    v48 = v39 - 4 * v45;
    if (v47 < 1 || v48 <= 0)
    {
      *v37 = 0;
    }

    else
    {
      if (v48 >= 4)
      {
        v43 = 4;
      }

      else
      {
        v43 = v39 - 4 * v45;
      }

      if (v47 >= 8)
      {
        v44 = 8;
      }

      else
      {
        v44 = v38 - 8 * v46;
      }

      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressSubblock(v36, v37, &v61[256 * v45 + 16 * v46], 64, v44, v43, v40, a2.n128_f64[0], a3.n128_f64[0], a4, a5, v14, v15, v16, v17);
      v36 += result;
    }

    v41 += 2;
    ++v37;
    v42 -= 2;
  }

  while (v42);
  return result;
}