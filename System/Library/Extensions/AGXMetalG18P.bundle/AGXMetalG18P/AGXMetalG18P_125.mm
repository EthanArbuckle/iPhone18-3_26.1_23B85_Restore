unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v63, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 8;
      v7 = 16 * *(a1 + 76);
      v8 = &v63[16 * v5 + v7 / 0x10];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 16 * *(a1 + 84);
      result = (v11 - 1) >> 32;
      if (result)
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
            v8->i8[v14] = v10->i8[v14];
            ++v14;
          }

          while (v11 > v14);
          v8 += 16;
          v10 = (v10 + v9);
        }
      }

      else
      {
        result = v11 + v7;
        if (v10 < &v63[16 * v3 - 16 + 16 * v5 + v11 / 0x10 + v7 / 0x10] && v8 < &v10->i8[v9 * (v3 - 1) + v11] || v9 < 0)
        {
          for (j = 0; j != v3; ++j)
          {
            v18 = 0;
            do
            {
              v8->i8[v18] = v10->i8[v18];
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
          v47 = 0;
          v48 = &v63[0].i8[v6 + v7];
          v49 = &v63[1].i8[v6 + v7];
          v50 = v10 + 1;
          v51 = &v10->i8[v11 & 0x1FFFFFFE0];
          result = &v48[v11 & 0x1FFFFFFE0];
          do
          {
            v52 = v50;
            v53 = v49;
            v54 = v11 & 0x1FFFFFFE0;
            do
            {
              v55 = *v52;
              *(v53 - 1) = v52[-1];
              *v53 = v55;
              v53 += 32;
              v52 += 2;
              v54 -= 32;
            }

            while (v54);
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v56 = result;
              v57 = v51;
              v58 = v11 - (v11 & 0x1FFFFFFE0);
              if (v4)
              {
                do
                {
                  v62 = *v57;
                  v57 += 16;
                  *v56++ = v62;
                  v58 -= 16;
                }

                while (v58);
              }

              else
              {
                v59 = 0;
                v60 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v59) = v51[v59];
                  v61 = v11 > v60++;
                  ++v59;
                }

                while (v61);
              }
            }

            ++v47;
            v49 += 256;
            v50 = (v50 + v9);
            v51 += v9;
            result += 256;
          }

          while (v47 != v3);
        }
      }
    }
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 88);
  v22 = &byte_29D2F30D1;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v44 = *v22;
    v45 = *(v22 - 1);
    if (v21 <= 4 * v45 || 4 * v44 >= v24)
    {
      v43 = 0;
    }

    else
    {
      v25 = &v63[64 * v44 + 4 * v45];
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[16];
      v29 = v25[17];
      v30 = v25[2];
      v31 = v25[3];
      v32 = v25[18];
      v33 = v25[32];
      v34 = v25[33];
      v35 = v25[34];
      v36 = v25[35];
      v37 = v25[19];
      v25 += 48;
      v38 = *v25;
      v39 = v25[1];
      v40 = v25[2];
      v41 = v25[3];
      *v19 = v26;
      v19[1] = v27;
      v19[2] = v28;
      v19[3] = v29;
      v19[4] = v30;
      v19[5] = v31;
      v19[6] = v32;
      v19[7] = v37;
      v19[8] = v33;
      v19[9] = v34;
      v19[10] = v38;
      v19[11] = v39;
      v42 = v19 + 12;
      v19 += 16;
      v43 = -1;
      *v42 = v35;
      v42[1] = v36;
      v42[2] = v40;
      v42[3] = v41;
    }

    *v20++ = v43;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v38, *(a1 + 40), *(a1 + 48));
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 84);
    if (v5)
    {
      v6 = *(a1 + 72);
      v7 = v6 << 8;
      v8 = *(a1 + 76);
      v9 = &v38[16 * v6 + v8];
      v11 = *(a1 + 56);
      v10 = *(a1 + 64);
      v12 = 16 * *(a1 + 84);
      if ((v12 - 1) >> 32)
      {
        v13 = 1;
      }

      else
      {
        v13 = 16 * v5 == 0;
      }

      if (v13)
      {
        for (i = 0; i != v4; ++i)
        {
          v15 = 0;
          do
          {
            v9->i8[v15] = v11->i8[v15];
            ++v15;
          }

          while (v12 > v15);
          v9 += 16;
          v11 = (v11 + v10);
        }
      }

      else if (v11 < &v38[16 * v4 - 16 + 16 * v6 + v12 / 0x10 + v8] && v9 < &v11->i8[v10 * (v4 - 1) + v12] || v10 < 0)
      {
        for (j = 0; j != v4; ++j)
        {
          v19 = 0;
          do
          {
            v9->i8[v19] = v11->i8[v19];
            ++v19;
          }

          while (v12 > v19);
          v9 += 16;
          v11 = (v11 + v10);
        }
      }

      else if (v5 == 1)
      {
        do
        {
          *v9 = *v11;
          v11 = (v11 + v10);
          v9 += 16;
          --v4;
        }

        while (v4);
      }

      else
      {
        v21 = 0;
        v22 = &v38[0].i8[v7 + v8 * 16];
        v23 = &v38[1].i8[v7 + v8 * 16];
        v24 = v11 + 1;
        v25 = &v11->i8[v12 & 0x1FFFFFFE0];
        v26 = &v22[v12 & 0x1FFFFFFE0];
        do
        {
          v27 = v24;
          v28 = v23;
          v29 = v12 & 0x1FFFFFFE0;
          do
          {
            v30 = *v27;
            *(v28 - 1) = v27[-1];
            *v28 = v30;
            v28 += 32;
            v27 += 2;
            v29 -= 32;
          }

          while (v29);
          if (v12 != (v12 & 0x1FFFFFFE0))
          {
            v31 = v26;
            v32 = v25;
            v33 = v12 - (v12 & 0x1FFFFFFE0);
            if (v5)
            {
              do
              {
                v37 = *v32;
                v32 += 16;
                *v31 = v37;
                v31 += 16;
                v33 -= 16;
              }

              while (v33);
            }

            else
            {
              v34 = 0;
              v35 = (v12 & 0xFFFFFFE0) + 1;
              do
              {
                v26[v34] = v25[v34];
                v36 = v12 > v35++;
                ++v34;
              }

              while (v36);
            }
          }

          ++v21;
          v23 += 256;
          v24 = (v24 + v10);
          v25 += v10;
          v26 += 256;
        }

        while (v21 != v4);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v38, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), v2, v3);
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v63, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 8;
      v7 = 16 * *(a1 + 76);
      v8 = &v63[16 * v5 + v7 / 0x10];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 16 * *(a1 + 84);
      result = (v11 - 1) >> 32;
      if (result)
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
            v8->i8[v14] = v10->i8[v14];
            ++v14;
          }

          while (v11 > v14);
          v8 += 16;
          v10 = (v10 + v9);
        }
      }

      else
      {
        result = v11 + v7;
        if (v10 < &v63[16 * v3 - 16 + 16 * v5 + v11 / 0x10 + v7 / 0x10] && v8 < &v10->i8[v9 * (v3 - 1) + v11] || v9 < 0)
        {
          for (j = 0; j != v3; ++j)
          {
            v18 = 0;
            do
            {
              v8->i8[v18] = v10->i8[v18];
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
          v47 = 0;
          v48 = &v63[0].i8[v6 + v7];
          v49 = &v63[1].i8[v6 + v7];
          v50 = v10 + 1;
          v51 = &v10->i8[v11 & 0x1FFFFFFE0];
          result = &v48[v11 & 0x1FFFFFFE0];
          do
          {
            v52 = v50;
            v53 = v49;
            v54 = v11 & 0x1FFFFFFE0;
            do
            {
              v55 = *v52;
              *(v53 - 1) = v52[-1];
              *v53 = v55;
              v53 += 32;
              v52 += 2;
              v54 -= 32;
            }

            while (v54);
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v56 = result;
              v57 = v51;
              v58 = v11 - (v11 & 0x1FFFFFFE0);
              if (v4)
              {
                do
                {
                  v62 = *v57;
                  v57 += 16;
                  *v56++ = v62;
                  v58 -= 16;
                }

                while (v58);
              }

              else
              {
                v59 = 0;
                v60 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v59) = v51[v59];
                  v61 = v11 > v60++;
                  ++v59;
                }

                while (v61);
              }
            }

            ++v47;
            v49 += 256;
            v50 = (v50 + v9);
            v51 += v9;
            result += 256;
          }

          while (v47 != v3);
        }
      }
    }
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 88);
  v22 = &byte_29D2F30D1;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v44 = *v22;
    v45 = *(v22 - 1);
    if (v21 <= 4 * v45 || 4 * v44 >= v24)
    {
      v43 = 0;
    }

    else
    {
      v25 = &v63[64 * v44 + 4 * v45];
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[16];
      v29 = v25[17];
      v30 = v25[2];
      v31 = v25[3];
      v32 = v25[18];
      v33 = v25[32];
      v34 = v25[33];
      v35 = v25[34];
      v36 = v25[35];
      v37 = v25[19];
      v25 += 48;
      v38 = *v25;
      v39 = v25[1];
      v40 = v25[2];
      v41 = v25[3];
      *v19 = v26;
      v19[1] = v27;
      v19[2] = v28;
      v19[3] = v29;
      v19[4] = v30;
      v19[5] = v31;
      v19[6] = v32;
      v19[7] = v37;
      v19[8] = v33;
      v19[9] = v34;
      v19[10] = v38;
      v19[11] = v39;
      v42 = v19 + 12;
      v19 += 16;
      v43 = -1;
      *v42 = v35;
      v42[1] = v36;
      v42[2] = v40;
      v42[3] = v41;
    }

    *v20++ = v43;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v38, *(a1 + 40), *(a1 + 48));
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 84);
    if (v5)
    {
      v6 = *(a1 + 72);
      v7 = v6 << 8;
      v8 = *(a1 + 76);
      v9 = &v38[16 * v6 + v8];
      v11 = *(a1 + 56);
      v10 = *(a1 + 64);
      v12 = 16 * *(a1 + 84);
      if ((v12 - 1) >> 32)
      {
        v13 = 1;
      }

      else
      {
        v13 = 16 * v5 == 0;
      }

      if (v13)
      {
        for (i = 0; i != v4; ++i)
        {
          v15 = 0;
          do
          {
            v9->i8[v15] = v11->i8[v15];
            ++v15;
          }

          while (v12 > v15);
          v9 += 16;
          v11 = (v11 + v10);
        }
      }

      else if (v11 < &v38[16 * v4 - 16 + 16 * v6 + v12 / 0x10 + v8] && v9 < &v11->i8[v10 * (v4 - 1) + v12] || v10 < 0)
      {
        for (j = 0; j != v4; ++j)
        {
          v19 = 0;
          do
          {
            v9->i8[v19] = v11->i8[v19];
            ++v19;
          }

          while (v12 > v19);
          v9 += 16;
          v11 = (v11 + v10);
        }
      }

      else if (v5 == 1)
      {
        do
        {
          *v9 = *v11;
          v11 = (v11 + v10);
          v9 += 16;
          --v4;
        }

        while (v4);
      }

      else
      {
        v21 = 0;
        v22 = &v38[0].i8[v7 + v8 * 16];
        v23 = &v38[1].i8[v7 + v8 * 16];
        v24 = v11 + 1;
        v25 = &v11->i8[v12 & 0x1FFFFFFE0];
        v26 = &v22[v12 & 0x1FFFFFFE0];
        do
        {
          v27 = v24;
          v28 = v23;
          v29 = v12 & 0x1FFFFFFE0;
          do
          {
            v30 = *v27;
            *(v28 - 1) = v27[-1];
            *v28 = v30;
            v28 += 32;
            v27 += 2;
            v29 -= 32;
          }

          while (v29);
          if (v12 != (v12 & 0x1FFFFFFE0))
          {
            v31 = v26;
            v32 = v25;
            v33 = v12 - (v12 & 0x1FFFFFFE0);
            if (v5)
            {
              do
              {
                v37 = *v32;
                v32 += 16;
                *v31 = v37;
                v31 += 16;
                v33 -= 16;
              }

              while (v33);
            }

            else
            {
              v34 = 0;
              v35 = (v12 & 0xFFFFFFE0) + 1;
              do
              {
                v26[v34] = v25[v34];
                v36 = v12 > v35++;
                ++v34;
              }

              while (v36);
            }
          }

          ++v21;
          v23 += 256;
          v24 = (v24 + v10);
          v25 += v10;
          v26 += 256;
        }

        while (v21 != v4);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v38, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), v2, v3);
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v58[64 * *v4 + 4 * *(v4 - 1)];
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
      *v8 = *v2;
      v8[1] = v10;
      v8[2] = v15;
      v8[3] = v16;
      v8[16] = v11;
      v8[17] = v12;
      v8[18] = v13;
      v8[19] = v14;
      v8[32] = v17;
      v8[33] = v18;
      v8[34] = v19;
      v8[35] = v20;
      v7 = 256;
      v8[48] = v21;
      v8[49] = v22;
      v8[50] = v23;
      v8[51] = v24;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *v8 = v6;
      v8[1] = v6;
      v8[2] = v6;
      v8[3] = v6;
      v8[16] = v6;
      v8[17] = v6;
      v8[18] = v6;
      v8[19] = v6;
      v8[32] = v6;
      v8[33] = v6;
      v8[34] = v6;
      v8[35] = v6;
      v8[48] = v6;
      v8[49] = v6;
      v8[50] = v6;
      v8[51] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 256, v2, v9);
    }

    else
    {
      v7 = 0;
      v8[2] = 0u;
      v8[3] = 0u;
      *v8 = 0u;
      v8[1] = 0u;
      v8[16] = 0u;
      v8[17] = 0u;
      v8[18] = 0u;
      v8[19] = 0u;
      v8[32] = 0u;
      v8[33] = 0u;
      v8[34] = 0u;
      v8[35] = 0u;
      v8[48] = 0u;
      v8[49] = 0u;
      v8[50] = 0u;
      v8[51] = 0u;
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
      v28 = v27 << 8;
      v29 = *(a1 + 76);
      v30 = &v58[16 * v27 + v29];
      v32 = *(a1 + 56);
      v31 = *(a1 + 64);
      v33 = 16 * *(a1 + 84);
      if ((v33 - 1) >> 32)
      {
        v34 = 1;
      }

      else
      {
        v34 = 16 * v26 == 0;
      }

      if (v34)
      {
        for (i = 0; i != v25; ++i)
        {
          v36 = 0;
          do
          {
            *(v30 + v36) = *(v32 + v36);
            ++v36;
          }

          while (v33 > v36);
          v30 += 16;
          v32 = (v32 + v31);
        }
      }

      else
      {
        v38 = v32 < &v58[16 * v25 - 16 + 16 * v27 + v33 / 0x10 + v29] && v30 < (v32 + v31 * (v25 - 1) + v33) || v31 < 0;
        if (v38)
        {
          for (j = 0; j != v25; ++j)
          {
            v40 = 0;
            do
            {
              *(v30 + v40) = *(v32 + v40);
              ++v40;
            }

            while (v33 > v40);
            v30 += 16;
            v32 = (v32 + v31);
          }
        }

        else if (v26 == 1)
        {
          do
          {
            *v30 = *v32;
            v32 = (v32 + v31);
            v30 += 16;
            --v25;
          }

          while (v25);
        }

        else
        {
          v42 = 0;
          v43 = v58 + v28 + v29 * 16;
          v44 = &v58[1] + v28 + v29 * 16;
          v45 = v32 + 1;
          v46 = (v32 + (v33 & 0x1FFFFFFE0));
          v47 = &v43[v33 & 0x1FFFFFFE0];
          do
          {
            v48 = v45;
            v49 = v44;
            v50 = v33 & 0x1FFFFFFE0;
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
            if (v33 != (v33 & 0x1FFFFFFE0))
            {
              v52 = v47;
              v53 = v46;
              v54 = v33 - (v33 & 0x1FFFFFFE0);
              if (v26)
              {
                do
                {
                  v57 = *v53++;
                  *v52 = v57;
                  v52 += 16;
                  v54 -= 16;
                }

                while (v54);
              }

              else
              {
                v55 = 0;
                v56 = (v33 & 0xFFFFFFE0) + 1;
                do
                {
                  v47[v55] = *(v46 + v55);
                  v38 = v33 > v56++;
                  ++v55;
                }

                while (v38);
              }
            }

            ++v42;
            v44 += 256;
            v45 = (v45 + v31);
            v46 = (v46 + v31);
            v47 += 256;
          }

          while (v42 != v25);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v58, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v58[1024 * *v4 + 64 * *(v4 - 1)];
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
      *v8 = *v2;
      v8[1] = v10;
      v8[2] = v15;
      v8[3] = v16;
      v8[16] = v11;
      v8[17] = v12;
      v8[18] = v13;
      v8[19] = v14;
      v8[32] = v17;
      v8[33] = v18;
      v8[34] = v19;
      v8[35] = v20;
      v7 = 256;
      v8[48] = v21;
      v8[49] = v22;
      v8[50] = v23;
      v8[51] = v24;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *v8 = v6;
      v8[1] = v6;
      v8[2] = v6;
      v8[3] = v6;
      v8[16] = v6;
      v8[17] = v6;
      v8[18] = v6;
      v8[19] = v6;
      v8[32] = v6;
      v8[33] = v6;
      v8[34] = v6;
      v8[35] = v6;
      v8[48] = v6;
      v8[49] = v6;
      v8[50] = v6;
      v8[51] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 256, v2, v9);
    }

    else
    {
      v7 = 0;
      v8[2] = 0u;
      v8[3] = 0u;
      *v8 = 0u;
      v8[1] = 0u;
      v8[16] = 0u;
      v8[17] = 0u;
      v8[18] = 0u;
      v8[19] = 0u;
      v8[32] = 0u;
      v8[33] = 0u;
      v8[34] = 0u;
      v8[35] = 0u;
      v8[48] = 0u;
      v8[49] = 0u;
      v8[50] = 0u;
      v8[51] = 0u;
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
      v28 = v27 << 8;
      v29 = 16 * *(a1 + 76);
      v30 = &v58[256 * v27 + v29];
      v32 = *(a1 + 56);
      v31 = *(a1 + 64);
      v33 = 16 * *(a1 + 84);
      if ((v33 - 1) >> 32)
      {
        v34 = 1;
      }

      else
      {
        v34 = 16 * v26 == 0;
      }

      if (v34)
      {
        for (i = 0; i != v25; ++i)
        {
          v36 = 0;
          do
          {
            *(v30 + v36) = *(v32 + v36);
            ++v36;
          }

          while (v33 > v36);
          v30 += 16;
          v32 = (v32 + v31);
        }
      }

      else
      {
        v38 = v32 < &v58[256 * v25 - 256 + 256 * v27 + v33 + v29] && v30 < (v32 + v31 * (v25 - 1) + v33) || v31 < 0;
        if (v38)
        {
          for (j = 0; j != v25; ++j)
          {
            v40 = 0;
            do
            {
              *(v30 + v40) = *(v32 + v40);
              ++v40;
            }

            while (v33 > v40);
            v30 += 16;
            v32 = (v32 + v31);
          }
        }

        else if (v26 == 1)
        {
          do
          {
            *v30 = *v32;
            v32 = (v32 + v31);
            v30 += 16;
            --v25;
          }

          while (v25);
        }

        else
        {
          v42 = 0;
          v43 = &v58[v28 + v29];
          v44 = &v58[v28 + 16 + v29];
          v45 = v32 + 1;
          v46 = (v32 + (v33 & 0x1FFFFFFE0));
          v47 = &v43[v33 & 0x1FFFFFFE0];
          do
          {
            v48 = v45;
            v49 = v44;
            v50 = v33 & 0x1FFFFFFE0;
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
            if (v33 != (v33 & 0x1FFFFFFE0))
            {
              v52 = v47;
              v53 = v46;
              v54 = v33 - (v33 & 0x1FFFFFFE0);
              if (v26)
              {
                do
                {
                  v57 = *v53++;
                  *v52++ = v57;
                  v54 -= 16;
                }

                while (v54);
              }

              else
              {
                v55 = 0;
                v56 = (v33 & 0xFFFFFFE0) + 1;
                do
                {
                  *(v47 + v55) = *(v46 + v55);
                  v38 = v33 > v56++;
                  ++v55;
                }

                while (v38);
              }
            }

            ++v42;
            v44 += 256;
            v45 = (v45 + v31);
            v46 = (v46 + v31);
            v47 += 16;
          }

          while (v42 != v25);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v58, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v58[64 * *v4 + 4 * *(v4 - 1)];
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
      *v8 = *v2;
      v8[1] = v10;
      v8[2] = v15;
      v8[3] = v16;
      v8[16] = v11;
      v8[17] = v12;
      v8[18] = v13;
      v8[19] = v14;
      v8[32] = v17;
      v8[33] = v18;
      v8[34] = v19;
      v8[35] = v20;
      v7 = 256;
      v8[48] = v21;
      v8[49] = v22;
      v8[50] = v23;
      v8[51] = v24;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *v8 = v6;
      v8[1] = v6;
      v8[2] = v6;
      v8[3] = v6;
      v8[16] = v6;
      v8[17] = v6;
      v8[18] = v6;
      v8[19] = v6;
      v8[32] = v6;
      v8[33] = v6;
      v8[34] = v6;
      v8[35] = v6;
      v8[48] = v6;
      v8[49] = v6;
      v8[50] = v6;
      v8[51] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 256, v2, v9);
    }

    else
    {
      v7 = 0;
      v8[2] = 0u;
      v8[3] = 0u;
      *v8 = 0u;
      v8[1] = 0u;
      v8[16] = 0u;
      v8[17] = 0u;
      v8[18] = 0u;
      v8[19] = 0u;
      v8[32] = 0u;
      v8[33] = 0u;
      v8[34] = 0u;
      v8[35] = 0u;
      v8[48] = 0u;
      v8[49] = 0u;
      v8[50] = 0u;
      v8[51] = 0u;
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
      v28 = v27 << 8;
      v29 = *(a1 + 76);
      v30 = &v58[16 * v27 + v29];
      v32 = *(a1 + 56);
      v31 = *(a1 + 64);
      v33 = 16 * *(a1 + 84);
      if ((v33 - 1) >> 32)
      {
        v34 = 1;
      }

      else
      {
        v34 = 16 * v26 == 0;
      }

      if (v34)
      {
        for (i = 0; i != v25; ++i)
        {
          v36 = 0;
          do
          {
            *(v30 + v36) = *(v32 + v36);
            ++v36;
          }

          while (v33 > v36);
          v30 += 16;
          v32 = (v32 + v31);
        }
      }

      else
      {
        v38 = v32 < &v58[16 * v25 - 16 + 16 * v27 + v33 / 0x10 + v29] && v30 < (v32 + v31 * (v25 - 1) + v33) || v31 < 0;
        if (v38)
        {
          for (j = 0; j != v25; ++j)
          {
            v40 = 0;
            do
            {
              *(v30 + v40) = *(v32 + v40);
              ++v40;
            }

            while (v33 > v40);
            v30 += 16;
            v32 = (v32 + v31);
          }
        }

        else if (v26 == 1)
        {
          do
          {
            *v30 = *v32;
            v32 = (v32 + v31);
            v30 += 16;
            --v25;
          }

          while (v25);
        }

        else
        {
          v42 = 0;
          v43 = v58 + v28 + v29 * 16;
          v44 = &v58[1] + v28 + v29 * 16;
          v45 = v32 + 1;
          v46 = (v32 + (v33 & 0x1FFFFFFE0));
          v47 = &v43[v33 & 0x1FFFFFFE0];
          do
          {
            v48 = v45;
            v49 = v44;
            v50 = v33 & 0x1FFFFFFE0;
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
            if (v33 != (v33 & 0x1FFFFFFE0))
            {
              v52 = v47;
              v53 = v46;
              v54 = v33 - (v33 & 0x1FFFFFFE0);
              if (v26)
              {
                do
                {
                  v57 = *v53++;
                  *v52 = v57;
                  v52 += 16;
                  v54 -= 16;
                }

                while (v54);
              }

              else
              {
                v55 = 0;
                v56 = (v33 & 0xFFFFFFE0) + 1;
                do
                {
                  v47[v55] = *(v46 + v55);
                  v38 = v33 > v56++;
                  ++v55;
                }

                while (v38);
              }
            }

            ++v42;
            v44 += 256;
            v45 = (v45 + v31);
            v46 = (v46 + v31);
            v47 += 256;
          }

          while (v42 != v25);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v58, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v59 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v58[1024 * *v4 + 64 * *(v4 - 1)];
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
      *v8 = *v2;
      v8[1] = v10;
      v8[2] = v15;
      v8[3] = v16;
      v8[16] = v11;
      v8[17] = v12;
      v8[18] = v13;
      v8[19] = v14;
      v8[32] = v17;
      v8[33] = v18;
      v8[34] = v19;
      v8[35] = v20;
      v7 = 256;
      v8[48] = v21;
      v8[49] = v22;
      v8[50] = v23;
      v8[51] = v24;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *v8 = v6;
      v8[1] = v6;
      v8[2] = v6;
      v8[3] = v6;
      v8[16] = v6;
      v8[17] = v6;
      v8[18] = v6;
      v8[19] = v6;
      v8[32] = v6;
      v8[33] = v6;
      v8[34] = v6;
      v8[35] = v6;
      v8[48] = v6;
      v8[49] = v6;
      v8[50] = v6;
      v8[51] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 256, v2, v9);
    }

    else
    {
      v7 = 0;
      v8[2] = 0u;
      v8[3] = 0u;
      *v8 = 0u;
      v8[1] = 0u;
      v8[16] = 0u;
      v8[17] = 0u;
      v8[18] = 0u;
      v8[19] = 0u;
      v8[32] = 0u;
      v8[33] = 0u;
      v8[34] = 0u;
      v8[35] = 0u;
      v8[48] = 0u;
      v8[49] = 0u;
      v8[50] = 0u;
      v8[51] = 0u;
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
      v28 = v27 << 8;
      v29 = 16 * *(a1 + 76);
      v30 = &v58[256 * v27 + v29];
      v32 = *(a1 + 56);
      v31 = *(a1 + 64);
      v33 = 16 * *(a1 + 84);
      if ((v33 - 1) >> 32)
      {
        v34 = 1;
      }

      else
      {
        v34 = 16 * v26 == 0;
      }

      if (v34)
      {
        for (i = 0; i != v25; ++i)
        {
          v36 = 0;
          do
          {
            *(v30 + v36) = *(v32 + v36);
            ++v36;
          }

          while (v33 > v36);
          v30 += 16;
          v32 = (v32 + v31);
        }
      }

      else
      {
        v38 = v32 < &v58[256 * v25 - 256 + 256 * v27 + v33 + v29] && v30 < (v32 + v31 * (v25 - 1) + v33) || v31 < 0;
        if (v38)
        {
          for (j = 0; j != v25; ++j)
          {
            v40 = 0;
            do
            {
              *(v30 + v40) = *(v32 + v40);
              ++v40;
            }

            while (v33 > v40);
            v30 += 16;
            v32 = (v32 + v31);
          }
        }

        else if (v26 == 1)
        {
          do
          {
            *v30 = *v32;
            v32 = (v32 + v31);
            v30 += 16;
            --v25;
          }

          while (v25);
        }

        else
        {
          v42 = 0;
          v43 = &v58[v28 + v29];
          v44 = &v58[v28 + 16 + v29];
          v45 = v32 + 1;
          v46 = (v32 + (v33 & 0x1FFFFFFE0));
          v47 = &v43[v33 & 0x1FFFFFFE0];
          do
          {
            v48 = v45;
            v49 = v44;
            v50 = v33 & 0x1FFFFFFE0;
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
            if (v33 != (v33 & 0x1FFFFFFE0))
            {
              v52 = v47;
              v53 = v46;
              v54 = v33 - (v33 & 0x1FFFFFFE0);
              if (v26)
              {
                do
                {
                  v57 = *v53++;
                  *v52++ = v57;
                  v54 -= 16;
                }

                while (v54);
              }

              else
              {
                v55 = 0;
                v56 = (v33 & 0xFFFFFFE0) + 1;
                do
                {
                  *(v47 + v55) = *(v46 + v55);
                  v38 = v33 > v56++;
                  ++v55;
                }

                while (v38);
              }
            }

            ++v42;
            v44 += 256;
            v45 = (v45 + v31);
            v46 = (v46 + v31);
            v47 += 16;
          }

          while (v42 != v25);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v58, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int64x2_t a3)
{
  v66 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v65, *(a1 + 40), *(a1 + 48), a2, a3);
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 84);
    if (v5)
    {
      v6 = *(a1 + 72);
      v7 = v6 << 6;
      v8 = 4 * *(a1 + 76);
      v9 = &v65[4 * v6].i8[v8];
      v11 = *(a1 + 56);
      v10 = *(a1 + 64);
      v12 = 4 * v5;
      v13 = &v65[4 * v4 - 4 + 4 * v6].i8[4 * v5 + v8];
      v16 = v9 < &v11[4 * v5 + v10 * (v4 - 1)] && v11 < v13 || v10 < 0;
      if (v5 == 1)
      {
        for (i = 0; i != v4; ++i)
        {
          v18 = &v11[v10 * i];
          v19 = &v9[64 * i];
          v20 = -1;
          do
          {
            v21 = *v18++;
            *v19++ = v21;
            ++v20;
          }

          while (v20 < 3);
        }
      }

      else if (!v12 || (v12 - 1) >> 32)
      {
        for (j = 0; j != v4; ++j)
        {
          v25 = 0;
          do
          {
            v9[v25] = v11[v25];
            ++v25;
          }

          while (v12 > v25);
          v9 += 64;
          v11 += v10;
        }
      }

      else if (v16)
      {
        for (k = 0; k != v4; ++k)
        {
          v23 = 0;
          do
          {
            v9[v23] = v11[v23];
            ++v23;
          }

          while (v12 > v23);
          v9 += 64;
          v11 += v10;
        }
      }

      else
      {
        v27 = v12 & 0x1FFFFFFF8;
        if (v5 > 7)
        {
          v33 = v12 & 0x1FFFFFFE0;
          if (v12 == (v12 & 0x1FFFFFFE0))
          {
            v34 = 0;
            v35 = &v65[1].i8[v7 + v8];
            v36 = (v11 + 16);
            do
            {
              v37 = v36;
              v38 = v35;
              v39 = v12;
              do
              {
                v40 = *v37;
                *(v38 - 1) = *(v37 - 1);
                *v38 = v40;
                v38 += 32;
                v37 += 2;
                v39 -= 32;
              }

              while (v39);
              ++v34;
              v35 += 64;
              v36 = (v36 + v10);
            }

            while (v34 != v4);
          }

          else
          {
            v49 = 0;
            v50 = v5 & 6;
            v51 = &v65[0].i8[v7 + v8];
            v52 = &v65[1].i8[v7 + v8];
            v53 = (v11 + 16);
            v54 = &v11[v33];
            v55 = &v51[v33];
            do
            {
              v56 = v53;
              v57 = v52;
              v58 = v12 & 0x1FFFFFFE0;
              do
              {
                v59 = *v56;
                *(v57 - 1) = *(v56 - 1);
                *v57 = v59;
                v57 += 32;
                v56 += 2;
                v58 -= 32;
              }

              while (v58);
              v60 = v12 & 0x1FFFFFFE0;
              if (!v50)
              {
                goto LABEL_63;
              }

              v61 = v55;
              v62 = v54;
              v63 = v27 - v33;
              do
              {
                v64 = *v62++;
                *v61 = v64;
                v61 += 8;
                v63 -= 8;
              }

              while (v63);
              v60 = v12 & 0x1FFFFFFF8;
              if (v12 != v27)
              {
LABEL_63:
                do
                {
                  v9[v60] = v11[v60];
                  ++v60;
                }

                while (v12 > v60);
              }

              ++v49;
              v52 += 64;
              v53 = (v53 + v10);
              v54 += v10;
              v55 += 64;
              v9 += 64;
              v11 += v10;
            }

            while (v49 != v4);
          }
        }

        else if (v12 == v27)
        {
          for (m = 0; m != v4; ++m)
          {
            v29 = v9;
            v30 = v11;
            v31 = v12;
            do
            {
              v32 = *v30;
              v30 += 8;
              *v29 = v32;
              v29 += 8;
              v31 -= 8;
            }

            while (v31);
            v11 += v10;
            v9 += 64;
          }
        }

        else
        {
          v41 = 0;
          v42 = v9;
          do
          {
            v43 = &v9[64 * v41 + v27];
            v44 = v42;
            v45 = v11;
            v46 = v12 & 0x1FFFFFFF8;
            do
            {
              v47 = *v45;
              v45 += 8;
              *v44 = v47;
              v44 += 8;
              v46 -= 8;
            }

            while (v46);
            v48 = v12 & 0x1FFFFFFF8;
            do
            {
              *v43++ = v11[v48++];
            }

            while (v12 > v48);
            ++v41;
            v11 += v10;
            v42 += 64;
          }

          while (v41 != v4);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v65, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int64x2_t a3)
{
  v66 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v65, *(a1 + 40), *(a1 + 48), a2, a3);
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 84);
    if (v5)
    {
      v6 = *(a1 + 72);
      v7 = v6 << 6;
      v8 = 4 * *(a1 + 76);
      v9 = &v65[64 * v6 + v8];
      v11 = *(a1 + 56);
      v10 = *(a1 + 64);
      v12 = 4 * v5;
      v13 = &v65[64 * v4 - 64 + 64 * v6 + 4 * v5 + v8];
      v16 = v9 < v11 + 4 * v5 + v10 * (v4 - 1) && v11 < v13 || v10 < 0;
      if (v5 == 1)
      {
        for (i = 0; i != v4; ++i)
        {
          v18 = v11 + v10 * i;
          v19 = &v9[64 * i];
          v20 = -1;
          do
          {
            v21 = *v18++;
            *v19++ = v21;
            ++v20;
          }

          while (v20 < 3);
        }
      }

      else if (!v12 || (v12 - 1) >> 32)
      {
        for (j = 0; j != v4; ++j)
        {
          v25 = 0;
          do
          {
            v9[v25] = *(v11 + v25);
            ++v25;
          }

          while (v12 > v25);
          v9 += 64;
          v11 = (v11 + v10);
        }
      }

      else if (v16)
      {
        for (k = 0; k != v4; ++k)
        {
          v23 = 0;
          do
          {
            v9[v23] = *(v11 + v23);
            ++v23;
          }

          while (v12 > v23);
          v9 += 64;
          v11 = (v11 + v10);
        }
      }

      else
      {
        v27 = v12 & 0x1FFFFFFF8;
        if (v5 > 7)
        {
          v33 = v12 & 0x1FFFFFFE0;
          if (v12 == (v12 & 0x1FFFFFFE0))
          {
            v34 = 0;
            v35 = &v65[v7 + 16 + v8];
            v36 = (v11 + 2);
            do
            {
              v37 = v36;
              v38 = v35;
              v39 = v12;
              do
              {
                v40 = *v37;
                *(v38 - 1) = *(v37 - 1);
                *v38 = v40;
                v38 += 2;
                v37 += 2;
                v39 -= 32;
              }

              while (v39);
              ++v34;
              v35 += 64;
              v36 = (v36 + v10);
            }

            while (v34 != v4);
          }

          else
          {
            v49 = 0;
            v50 = v5 & 6;
            v51 = &v65[v7 + v8];
            v52 = &v65[v7 + 16 + v8];
            v53 = (v11 + 2);
            v54 = (v11 + v33);
            v55 = &v51[v33];
            do
            {
              v56 = v53;
              v57 = v52;
              v58 = v12 & 0x1FFFFFFE0;
              do
              {
                v59 = *v56;
                *(v57 - 1) = *(v56 - 1);
                *v57 = v59;
                v57 += 2;
                v56 += 2;
                v58 -= 32;
              }

              while (v58);
              v60 = v12 & 0x1FFFFFFE0;
              if (!v50)
              {
                goto LABEL_63;
              }

              v61 = v55;
              v62 = v54;
              v63 = v27 - v33;
              do
              {
                v64 = *v62++;
                *v61++ = v64;
                v63 -= 8;
              }

              while (v63);
              v60 = v12 & 0x1FFFFFFF8;
              if (v12 != v27)
              {
LABEL_63:
                do
                {
                  v9[v60] = *(v11 + v60);
                  ++v60;
                }

                while (v12 > v60);
              }

              ++v49;
              v52 += 64;
              v53 = (v53 + v10);
              v54 = (v54 + v10);
              v55 += 8;
              v9 += 64;
              v11 = (v11 + v10);
            }

            while (v49 != v4);
          }
        }

        else if (v12 == v27)
        {
          for (m = 0; m != v4; ++m)
          {
            v29 = v9;
            v30 = v11;
            v31 = v12;
            do
            {
              v32 = *v30++;
              *v29++ = v32;
              v31 -= 8;
            }

            while (v31);
            v11 = (v11 + v10);
            v9 += 64;
          }
        }

        else
        {
          v41 = 0;
          v42 = v9;
          do
          {
            v43 = &v9[64 * v41 + v27];
            v44 = v42;
            v45 = v11;
            v46 = v12 & 0x1FFFFFFF8;
            do
            {
              v47 = *v45++;
              *v44++ = v47;
              v46 -= 8;
            }

            while (v46);
            v48 = v12 & 0x1FFFFFFF8;
            do
            {
              *v43++ = *(v11 + v48++);
            }

            while (v12 > v48);
            ++v41;
            v11 = (v11 + v10);
            v42 += 8;
          }

          while (v41 != v4);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v65, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int64x2_t a3)
{
  v66 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v65, *(a1 + 40), *(a1 + 48), a2, a3);
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 84);
    if (v5)
    {
      v6 = *(a1 + 72);
      v7 = v6 << 6;
      v8 = 4 * *(a1 + 76);
      v9 = &v65[4 * v6].i8[v8];
      v11 = *(a1 + 56);
      v10 = *(a1 + 64);
      v12 = 4 * v5;
      v13 = &v65[4 * v4 - 4 + 4 * v6].i8[4 * v5 + v8];
      v16 = v9 < &v11[4 * v5 + v10 * (v4 - 1)] && v11 < v13 || v10 < 0;
      if (v5 == 1)
      {
        for (i = 0; i != v4; ++i)
        {
          v18 = &v11[v10 * i];
          v19 = &v9[64 * i];
          v20 = -1;
          do
          {
            v21 = *v18++;
            *v19++ = v21;
            ++v20;
          }

          while (v20 < 3);
        }
      }

      else if (!v12 || (v12 - 1) >> 32)
      {
        for (j = 0; j != v4; ++j)
        {
          v25 = 0;
          do
          {
            v9[v25] = v11[v25];
            ++v25;
          }

          while (v12 > v25);
          v9 += 64;
          v11 += v10;
        }
      }

      else if (v16)
      {
        for (k = 0; k != v4; ++k)
        {
          v23 = 0;
          do
          {
            v9[v23] = v11[v23];
            ++v23;
          }

          while (v12 > v23);
          v9 += 64;
          v11 += v10;
        }
      }

      else
      {
        v27 = v12 & 0x1FFFFFFF8;
        if (v5 > 7)
        {
          v33 = v12 & 0x1FFFFFFE0;
          if (v12 == (v12 & 0x1FFFFFFE0))
          {
            v34 = 0;
            v35 = &v65[1].i8[v7 + v8];
            v36 = (v11 + 16);
            do
            {
              v37 = v36;
              v38 = v35;
              v39 = v12;
              do
              {
                v40 = *v37;
                *(v38 - 1) = *(v37 - 1);
                *v38 = v40;
                v38 += 32;
                v37 += 2;
                v39 -= 32;
              }

              while (v39);
              ++v34;
              v35 += 64;
              v36 = (v36 + v10);
            }

            while (v34 != v4);
          }

          else
          {
            v49 = 0;
            v50 = v5 & 6;
            v51 = &v65[0].i8[v7 + v8];
            v52 = &v65[1].i8[v7 + v8];
            v53 = (v11 + 16);
            v54 = &v11[v33];
            v55 = &v51[v33];
            do
            {
              v56 = v53;
              v57 = v52;
              v58 = v12 & 0x1FFFFFFE0;
              do
              {
                v59 = *v56;
                *(v57 - 1) = *(v56 - 1);
                *v57 = v59;
                v57 += 32;
                v56 += 2;
                v58 -= 32;
              }

              while (v58);
              v60 = v12 & 0x1FFFFFFE0;
              if (!v50)
              {
                goto LABEL_63;
              }

              v61 = v55;
              v62 = v54;
              v63 = v27 - v33;
              do
              {
                v64 = *v62++;
                *v61 = v64;
                v61 += 8;
                v63 -= 8;
              }

              while (v63);
              v60 = v12 & 0x1FFFFFFF8;
              if (v12 != v27)
              {
LABEL_63:
                do
                {
                  v9[v60] = v11[v60];
                  ++v60;
                }

                while (v12 > v60);
              }

              ++v49;
              v52 += 64;
              v53 = (v53 + v10);
              v54 += v10;
              v55 += 64;
              v9 += 64;
              v11 += v10;
            }

            while (v49 != v4);
          }
        }

        else if (v12 == v27)
        {
          for (m = 0; m != v4; ++m)
          {
            v29 = v9;
            v30 = v11;
            v31 = v12;
            do
            {
              v32 = *v30;
              v30 += 8;
              *v29 = v32;
              v29 += 8;
              v31 -= 8;
            }

            while (v31);
            v11 += v10;
            v9 += 64;
          }
        }

        else
        {
          v41 = 0;
          v42 = v9;
          do
          {
            v43 = &v9[64 * v41 + v27];
            v44 = v42;
            v45 = v11;
            v46 = v12 & 0x1FFFFFFF8;
            do
            {
              v47 = *v45;
              v45 += 8;
              *v44 = v47;
              v44 += 8;
              v46 -= 8;
            }

            while (v46);
            v48 = v12 & 0x1FFFFFFF8;
            do
            {
              *v43++ = v11[v48++];
            }

            while (v12 > v48);
            ++v41;
            v11 += v10;
            v42 += 64;
          }

          while (v41 != v4);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v65, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int64x2_t a3)
{
  v66 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v65, *(a1 + 40), *(a1 + 48), a2, a3);
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 84);
    if (v5)
    {
      v6 = *(a1 + 72);
      v7 = v6 << 6;
      v8 = 4 * *(a1 + 76);
      v9 = &v65[64 * v6 + v8];
      v11 = *(a1 + 56);
      v10 = *(a1 + 64);
      v12 = 4 * v5;
      v13 = &v65[64 * v4 - 64 + 64 * v6 + 4 * v5 + v8];
      v16 = v9 < v11 + 4 * v5 + v10 * (v4 - 1) && v11 < v13 || v10 < 0;
      if (v5 == 1)
      {
        for (i = 0; i != v4; ++i)
        {
          v18 = v11 + v10 * i;
          v19 = &v9[64 * i];
          v20 = -1;
          do
          {
            v21 = *v18++;
            *v19++ = v21;
            ++v20;
          }

          while (v20 < 3);
        }
      }

      else if (!v12 || (v12 - 1) >> 32)
      {
        for (j = 0; j != v4; ++j)
        {
          v25 = 0;
          do
          {
            v9[v25] = *(v11 + v25);
            ++v25;
          }

          while (v12 > v25);
          v9 += 64;
          v11 = (v11 + v10);
        }
      }

      else if (v16)
      {
        for (k = 0; k != v4; ++k)
        {
          v23 = 0;
          do
          {
            v9[v23] = *(v11 + v23);
            ++v23;
          }

          while (v12 > v23);
          v9 += 64;
          v11 = (v11 + v10);
        }
      }

      else
      {
        v27 = v12 & 0x1FFFFFFF8;
        if (v5 > 7)
        {
          v33 = v12 & 0x1FFFFFFE0;
          if (v12 == (v12 & 0x1FFFFFFE0))
          {
            v34 = 0;
            v35 = &v65[v7 + 16 + v8];
            v36 = (v11 + 2);
            do
            {
              v37 = v36;
              v38 = v35;
              v39 = v12;
              do
              {
                v40 = *v37;
                *(v38 - 1) = *(v37 - 1);
                *v38 = v40;
                v38 += 2;
                v37 += 2;
                v39 -= 32;
              }

              while (v39);
              ++v34;
              v35 += 64;
              v36 = (v36 + v10);
            }

            while (v34 != v4);
          }

          else
          {
            v49 = 0;
            v50 = v5 & 6;
            v51 = &v65[v7 + v8];
            v52 = &v65[v7 + 16 + v8];
            v53 = (v11 + 2);
            v54 = (v11 + v33);
            v55 = &v51[v33];
            do
            {
              v56 = v53;
              v57 = v52;
              v58 = v12 & 0x1FFFFFFE0;
              do
              {
                v59 = *v56;
                *(v57 - 1) = *(v56 - 1);
                *v57 = v59;
                v57 += 2;
                v56 += 2;
                v58 -= 32;
              }

              while (v58);
              v60 = v12 & 0x1FFFFFFE0;
              if (!v50)
              {
                goto LABEL_63;
              }

              v61 = v55;
              v62 = v54;
              v63 = v27 - v33;
              do
              {
                v64 = *v62++;
                *v61++ = v64;
                v63 -= 8;
              }

              while (v63);
              v60 = v12 & 0x1FFFFFFF8;
              if (v12 != v27)
              {
LABEL_63:
                do
                {
                  v9[v60] = *(v11 + v60);
                  ++v60;
                }

                while (v12 > v60);
              }

              ++v49;
              v52 += 64;
              v53 = (v53 + v10);
              v54 = (v54 + v10);
              v55 += 8;
              v9 += 64;
              v11 = (v11 + v10);
            }

            while (v49 != v4);
          }
        }

        else if (v12 == v27)
        {
          for (m = 0; m != v4; ++m)
          {
            v29 = v9;
            v30 = v11;
            v31 = v12;
            do
            {
              v32 = *v30++;
              *v29++ = v32;
              v31 -= 8;
            }

            while (v31);
            v11 = (v11 + v10);
            v9 += 64;
          }
        }

        else
        {
          v41 = 0;
          v42 = v9;
          do
          {
            v43 = &v9[64 * v41 + v27];
            v44 = v42;
            v45 = v11;
            v46 = v12 & 0x1FFFFFFF8;
            do
            {
              v47 = *v45++;
              *v44++ = v47;
              v46 -= 8;
            }

            while (v46);
            v48 = v12 & 0x1FFFFFFF8;
            do
            {
              *v43++ = *(v11 + v48++);
            }

            while (v12 > v48);
            ++v41;
            v11 = (v11 + v10);
            v42 += 8;
          }

          while (v41 != v4);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v65, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v63, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 8;
      v7 = 16 * *(a1 + 76);
      v8 = &v63[16 * v5 + v7 / 0x10];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 16 * *(a1 + 84);
      result = (v11 - 1) >> 32;
      if (result)
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

      else
      {
        result = v11 + v7;
        if (v10 < &v63[16 * v3 - 16 + 16 * v5 + v11 / 0x10 + v7 / 0x10] && v8 < (v10 + v9 * (v3 - 1) + v11) || v9 < 0)
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
          v47 = 0;
          v48 = v63 + v6 + v7;
          v49 = &v63[1] + v6 + v7;
          v50 = &v10[1];
          v51 = (v10 + (v11 & 0x1FFFFFFE0));
          result = &v48[v11 & 0x1FFFFFFE0];
          do
          {
            v52 = v50;
            v53 = v49;
            v54 = v11 & 0x1FFFFFFE0;
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
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v56 = result;
              v57 = v51;
              v58 = v11 - (v11 & 0x1FFFFFFE0);
              if (v4)
              {
                do
                {
                  v62 = *v57++;
                  *v56++ = v62;
                  v58 -= 16;
                }

                while (v58);
              }

              else
              {
                v59 = 0;
                v60 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v59) = *(v51 + v59);
                  v61 = v11 > v60++;
                  ++v59;
                }

                while (v61);
              }
            }

            ++v47;
            v49 += 256;
            v50 = (v50 + v9);
            v51 = (v51 + v9);
            result += 256;
          }

          while (v47 != v3);
        }
      }
    }
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 88);
  v22 = &byte_29D2F30D1;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v44 = *v22;
    v45 = *(v22 - 1);
    if (v21 <= 4 * v45 || 4 * v44 >= v24)
    {
      v43 = 0;
    }

    else
    {
      v25 = &v63[64 * v44 + 4 * v45];
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[16];
      v29 = v25[17];
      v30 = v25[2];
      v31 = v25[3];
      v32 = v25[18];
      v33 = v25[32];
      v34 = v25[33];
      v35 = v25[34];
      v36 = v25[35];
      v37 = v25[19];
      v25 += 48;
      v38 = *v25;
      v39 = v25[1];
      v40 = v25[2];
      v41 = v25[3];
      *v19 = v26;
      v19[1] = v27;
      v19[2] = v28;
      v19[3] = v29;
      v19[4] = v30;
      v19[5] = v31;
      v19[6] = v32;
      v19[7] = v37;
      v19[8] = v33;
      v19[9] = v34;
      v19[10] = v38;
      v19[11] = v39;
      v42 = v19 + 12;
      v19 += 16;
      v43 = -1;
      *v42 = v35;
      v42[1] = v36;
      v42[2] = v40;
      v42[3] = v41;
    }

    *v20++ = v43;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v36, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 8;
      v6 = *(a1 + 76);
      v7 = &v36[16 * v4 + v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 16 * *(a1 + 84);
      if ((v10 - 1) >> 32)
      {
        v11 = 1;
      }

      else
      {
        v11 = 16 * v3 == 0;
      }

      if (v11)
      {
        for (i = 0; i != v2; ++i)
        {
          v13 = 0;
          do
          {
            *(v7->f64 + v13) = *(v9->f64 + v13);
            ++v13;
          }

          while (v10 > v13);
          v7 += 16;
          v9 = (v9 + v8);
        }
      }

      else if (v9 < &v36[16 * v2 - 16 + 16 * v4 + v10 / 0x10 + v6] && v7 < (v9 + v8 * (v2 - 1) + v10) || v8 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v17 = 0;
          do
          {
            *(v7->f64 + v17) = *(v9->f64 + v17);
            ++v17;
          }

          while (v10 > v17);
          v7 += 16;
          v9 = (v9 + v8);
        }
      }

      else if (v3 == 1)
      {
        do
        {
          *v7 = *v9;
          v9 = (v9 + v8);
          v7 += 16;
          --v2;
        }

        while (v2);
      }

      else
      {
        v19 = 0;
        v20 = v36 + v5 + v6 * 16;
        v21 = &v36[1] + v5 + v6 * 16;
        v22 = &v9[1];
        v23 = (v9 + (v10 & 0x1FFFFFFE0));
        v24 = &v20[v10 & 0x1FFFFFFE0];
        do
        {
          v25 = v22;
          v26 = v21;
          v27 = v10 & 0x1FFFFFFE0;
          do
          {
            v28 = *v25;
            *(v26 - 1) = *(v25 - 1);
            *v26 = v28;
            v26 += 2;
            v25 += 2;
            v27 -= 32;
          }

          while (v27);
          if (v10 != (v10 & 0x1FFFFFFE0))
          {
            v29 = v24;
            v30 = v23;
            v31 = v10 - (v10 & 0x1FFFFFFE0);
            if (v3)
            {
              do
              {
                v35 = *v30++;
                *v29 = v35;
                v29 += 16;
                v31 -= 16;
              }

              while (v31);
            }

            else
            {
              v32 = 0;
              v33 = (v10 & 0xFFFFFFE0) + 1;
              do
              {
                v24[v32] = *(v23 + v32);
                v34 = v10 > v33++;
                ++v32;
              }

              while (v34);
            }
          }

          ++v19;
          v21 += 256;
          v22 = (v22 + v8);
          v23 = (v23 + v8);
          v24 += 256;
        }

        while (v19 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v36, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v63, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 8;
      v7 = 16 * *(a1 + 76);
      v8 = &v63[16 * v5 + v7 / 0x10];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 16 * *(a1 + 84);
      result = (v11 - 1) >> 32;
      if (result)
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

      else
      {
        result = v11 + v7;
        if (v10 < &v63[16 * v3 - 16 + 16 * v5 + v11 / 0x10 + v7 / 0x10] && v8 < (v10 + v9 * (v3 - 1) + v11) || v9 < 0)
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
          v47 = 0;
          v48 = v63 + v6 + v7;
          v49 = &v63[1] + v6 + v7;
          v50 = &v10[1];
          v51 = (v10 + (v11 & 0x1FFFFFFE0));
          result = &v48[v11 & 0x1FFFFFFE0];
          do
          {
            v52 = v50;
            v53 = v49;
            v54 = v11 & 0x1FFFFFFE0;
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
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v56 = result;
              v57 = v51;
              v58 = v11 - (v11 & 0x1FFFFFFE0);
              if (v4)
              {
                do
                {
                  v62 = *v57++;
                  *v56++ = v62;
                  v58 -= 16;
                }

                while (v58);
              }

              else
              {
                v59 = 0;
                v60 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v59) = *(v51 + v59);
                  v61 = v11 > v60++;
                  ++v59;
                }

                while (v61);
              }
            }

            ++v47;
            v49 += 256;
            v50 = (v50 + v9);
            v51 = (v51 + v9);
            result += 256;
          }

          while (v47 != v3);
        }
      }
    }
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 88);
  v22 = &byte_29D2F30D1;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v44 = *v22;
    v45 = *(v22 - 1);
    if (v21 <= 4 * v45 || 4 * v44 >= v24)
    {
      v43 = 0;
    }

    else
    {
      v25 = &v63[64 * v44 + 4 * v45];
      v26 = *v25;
      v27 = v25[1];
      v28 = v25[16];
      v29 = v25[17];
      v30 = v25[2];
      v31 = v25[3];
      v32 = v25[18];
      v33 = v25[32];
      v34 = v25[33];
      v35 = v25[34];
      v36 = v25[35];
      v37 = v25[19];
      v25 += 48;
      v38 = *v25;
      v39 = v25[1];
      v40 = v25[2];
      v41 = v25[3];
      *v19 = v26;
      v19[1] = v27;
      v19[2] = v28;
      v19[3] = v29;
      v19[4] = v30;
      v19[5] = v31;
      v19[6] = v32;
      v19[7] = v37;
      v19[8] = v33;
      v19[9] = v34;
      v19[10] = v38;
      v19[11] = v39;
      v42 = v19 + 12;
      v19 += 16;
      v43 = -1;
      *v42 = v35;
      v42[1] = v36;
      v42[2] = v40;
      v42[3] = v41;
    }

    *v20++ = v43;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v36, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 8;
      v6 = *(a1 + 76);
      v7 = &v36[16 * v4 + v6];
      v9 = *(a1 + 56);
      v8 = *(a1 + 64);
      v10 = 16 * *(a1 + 84);
      if ((v10 - 1) >> 32)
      {
        v11 = 1;
      }

      else
      {
        v11 = 16 * v3 == 0;
      }

      if (v11)
      {
        for (i = 0; i != v2; ++i)
        {
          v13 = 0;
          do
          {
            *(v7->f64 + v13) = *(v9->f64 + v13);
            ++v13;
          }

          while (v10 > v13);
          v7 += 16;
          v9 = (v9 + v8);
        }
      }

      else if (v9 < &v36[16 * v2 - 16 + 16 * v4 + v10 / 0x10 + v6] && v7 < (v9 + v8 * (v2 - 1) + v10) || v8 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v17 = 0;
          do
          {
            *(v7->f64 + v17) = *(v9->f64 + v17);
            ++v17;
          }

          while (v10 > v17);
          v7 += 16;
          v9 = (v9 + v8);
        }
      }

      else if (v3 == 1)
      {
        do
        {
          *v7 = *v9;
          v9 = (v9 + v8);
          v7 += 16;
          --v2;
        }

        while (v2);
      }

      else
      {
        v19 = 0;
        v20 = v36 + v5 + v6 * 16;
        v21 = &v36[1] + v5 + v6 * 16;
        v22 = &v9[1];
        v23 = (v9 + (v10 & 0x1FFFFFFE0));
        v24 = &v20[v10 & 0x1FFFFFFE0];
        do
        {
          v25 = v22;
          v26 = v21;
          v27 = v10 & 0x1FFFFFFE0;
          do
          {
            v28 = *v25;
            *(v26 - 1) = *(v25 - 1);
            *v26 = v28;
            v26 += 2;
            v25 += 2;
            v27 -= 32;
          }

          while (v27);
          if (v10 != (v10 & 0x1FFFFFFE0))
          {
            v29 = v24;
            v30 = v23;
            v31 = v10 - (v10 & 0x1FFFFFFE0);
            if (v3)
            {
              do
              {
                v35 = *v30++;
                *v29 = v35;
                v29 += 16;
                v31 -= 16;
              }

              while (v31);
            }

            else
            {
              v32 = 0;
              v33 = (v10 & 0xFFFFFFE0) + 1;
              do
              {
                v24[v32] = *(v23 + v32);
                v34 = v10 > v33++;
                ++v32;
              }

              while (v34);
            }
          }

          ++v19;
          v21 += 256;
          v22 = (v22 + v8);
          v23 = (v23 + v8);
          v24 += 256;
        }

        while (v19 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v36, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v39, *(a1 + 40), *(a1 + 48));
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
        v20 = (&v39[1] + v5 + v6);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v39, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v39, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 7;
      v6 = 8 * *(a1 + 76);
      v7 = &v39[128 * v4 + v6];
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

      else if (v9 < &v39[128 * v2 - 128 + 128 * v4 + v10 + v6] && v7 < v9 + v8 * (v2 - 1) + v10 || v8 < 0)
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
        v23 = &v39[v5 + v6];
        v24 = &v39[v5 + 16 + v6];
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
                *v32++ = v35;
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
                *(v27 + v36) = *(v26 + v36);
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
          v27 += 16;
        }

        while (v21 != v2);
      }

      else
      {
        v19 = (v9 + 16);
        v20 = &v39[v5 + 16 + v6];
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v39, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v39, *(a1 + 40), *(a1 + 48));
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
        v20 = (&v39[1] + v5 + v6);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v39, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v39, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 7;
      v6 = 8 * *(a1 + 76);
      v7 = &v39[128 * v4 + v6];
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

      else if (v9 < &v39[128 * v2 - 128 + 128 * v4 + v10 + v6] && v7 < v9 + v8 * (v2 - 1) + v10 || v8 < 0)
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
        v23 = &v39[v5 + v6];
        v24 = &v39[v5 + 16 + v6];
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
                *v32++ = v35;
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
                *(v27 + v36) = *(v26 + v36);
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
          v27 += 16;
        }

        while (v21 != v2);
      }

      else
      {
        v19 = (v9 + 16);
        v20 = &v39[v5 + 16 + v6];
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v39, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v53[32 * *v4 + 2 * *(v4 - 1)];
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
      *v8 = *v2;
      v8[1] = v11;
      v8[8] = v10;
      v8[9] = v12;
      v8[16] = v16;
      v8[17] = v14;
      v8[24] = v13;
      v8[25] = v15;
      v7 = 128;
    }

    else if (v9 == 3)
    {
      v6 = vld1q_dup_f32(v2);
      *v8 = v6;
      v8[1] = v6;
      v8[8] = v6;
      v8[9] = v6;
      v8[16] = v6;
      v8[17] = v6;
      v8[24] = v6;
      v8[25] = v6;
      v7 = 4;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 128, v2, v9);
    }

    else
    {
      v7 = 0;
      *v8 = 0u;
      v8[1] = 0u;
      v8[8] = 0u;
      v8[9] = 0u;
      v8[16] = 0u;
      v8[17] = 0u;
      v8[24] = 0u;
      v8[25] = 0u;
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
    v18 = *(a1 + 84);
    if (v18)
    {
      v19 = *(a1 + 72);
      v20 = v19 << 7;
      v21 = 8 * *(a1 + 76);
      v22 = &v53[8 * v19] + v21;
      v24 = *(a1 + 56);
      v23 = *(a1 + 64);
      v25 = 8 * *(a1 + 84);
      if ((v25 - 1) >> 32)
      {
        v26 = 1;
      }

      else
      {
        v26 = 8 * v18 == 0;
      }

      if (v26)
      {
        for (i = 0; i != v17; ++i)
        {
          v28 = 0;
          do
          {
            v22[v28] = *(v24 + v28);
            ++v28;
          }

          while (v25 > v28);
          v22 += 128;
          v24 += v23;
        }
      }

      else
      {
        v30 = v24 < &v53[8 * v17 - 8 + 8 * v19] + v25 + v21 && v22 < v24 + v23 * (v17 - 1) + v25 || v23 < 0;
        if (v30)
        {
          for (j = 0; j != v17; ++j)
          {
            v32 = 0;
            do
            {
              v22[v32] = *(v24 + v32);
              ++v32;
            }

            while (v25 > v32);
            v22 += 128;
            v24 += v23;
          }
        }

        else if (v18 >= 4)
        {
          v36 = 0;
          v37 = v18 & 3;
          v38 = v53 + v20 + v21;
          v39 = &v53[1] + v20 + v21;
          v40 = (v24 + 16);
          v41 = (v24 + (v25 & 0x1FFFFFFE0));
          v42 = &v38[v25 & 0x1FFFFFFE0];
          do
          {
            v43 = v40;
            v44 = v39;
            v45 = v25 & 0x1FFFFFFE0;
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
            if (v25 != (v25 & 0x1FFFFFFE0))
            {
              v47 = v42;
              v48 = v41;
              v49 = v25 - (v25 & 0x1FFFFFFE0);
              if (v37)
              {
                do
                {
                  v50 = *v48++;
                  *v47 = v50;
                  v47 += 8;
                  v49 -= 8;
                }

                while (v49);
              }

              else
              {
                v51 = 0;
                v52 = (v25 & 0xFFFFFFE0) + 1;
                do
                {
                  v42[v51] = *(v41 + v51);
                  v30 = v25 > v52++;
                  ++v51;
                }

                while (v30);
              }
            }

            ++v36;
            v39 += 128;
            v40 = (v40 + v23);
            v41 = (v41 + v23);
            v42 += 128;
          }

          while (v36 != v17);
        }

        else
        {
          v34 = (v24 + 16);
          v35 = (&v53[1] + v20 + v21);
          do
          {
            *(v35 - 2) = *(v34 - 2);
            if (v18 != 1)
            {
              *(v35 - 1) = *(v34 - 1);
              if (v18 != 2)
              {
                *v35 = *v34;
              }
            }

            v34 = (v34 + v23);
            v35 += 16;
            --v17;
          }

          while (v17);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v53, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v53[512 * *v4 + 32 * *(v4 - 1)];
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
      *v8 = *v2;
      *(v8 + 1) = v11;
      *(v8 + 8) = v10;
      *(v8 + 9) = v12;
      *(v8 + 16) = v16;
      *(v8 + 17) = v14;
      *(v8 + 24) = v13;
      *(v8 + 25) = v15;
      v7 = 128;
    }

    else if (v9 == 3)
    {
      v6 = vld1q_dup_f32(v2);
      *v8 = v6;
      *(v8 + 1) = v6;
      *(v8 + 8) = v6;
      *(v8 + 9) = v6;
      *(v8 + 16) = v6;
      *(v8 + 17) = v6;
      *(v8 + 24) = v6;
      *(v8 + 25) = v6;
      v7 = 4;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 128, v2, v9);
    }

    else
    {
      v7 = 0;
      *v8 = 0u;
      *(v8 + 1) = 0u;
      *(v8 + 8) = 0u;
      *(v8 + 9) = 0u;
      *(v8 + 16) = 0u;
      *(v8 + 17) = 0u;
      *(v8 + 24) = 0u;
      *(v8 + 25) = 0u;
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
    v18 = *(a1 + 84);
    if (v18)
    {
      v19 = *(a1 + 72);
      v20 = v19 << 7;
      v21 = 8 * *(a1 + 76);
      v22 = &v53[128 * v19 + v21];
      v24 = *(a1 + 56);
      v23 = *(a1 + 64);
      v25 = 8 * *(a1 + 84);
      if ((v25 - 1) >> 32)
      {
        v26 = 1;
      }

      else
      {
        v26 = 8 * v18 == 0;
      }

      if (v26)
      {
        for (i = 0; i != v17; ++i)
        {
          v28 = 0;
          do
          {
            v22[v28] = *(v24 + v28);
            ++v28;
          }

          while (v25 > v28);
          v22 += 128;
          v24 += v23;
        }
      }

      else
      {
        v30 = v24 < &v53[128 * v17 - 128 + 128 * v19 + v25 + v21] && v22 < v24 + v23 * (v17 - 1) + v25 || v23 < 0;
        if (v30)
        {
          for (j = 0; j != v17; ++j)
          {
            v32 = 0;
            do
            {
              v22[v32] = *(v24 + v32);
              ++v32;
            }

            while (v25 > v32);
            v22 += 128;
            v24 += v23;
          }
        }

        else if (v18 >= 4)
        {
          v36 = 0;
          v37 = v18 & 3;
          v38 = &v53[v20 + v21];
          v39 = &v53[v20 + 16 + v21];
          v40 = (v24 + 16);
          v41 = (v24 + (v25 & 0x1FFFFFFE0));
          v42 = &v38[v25 & 0x1FFFFFFE0];
          do
          {
            v43 = v40;
            v44 = v39;
            v45 = v25 & 0x1FFFFFFE0;
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
            if (v25 != (v25 & 0x1FFFFFFE0))
            {
              v47 = v42;
              v48 = v41;
              v49 = v25 - (v25 & 0x1FFFFFFE0);
              if (v37)
              {
                do
                {
                  v50 = *v48++;
                  *v47++ = v50;
                  v49 -= 8;
                }

                while (v49);
              }

              else
              {
                v51 = 0;
                v52 = (v25 & 0xFFFFFFE0) + 1;
                do
                {
                  *(v42 + v51) = *(v41 + v51);
                  v30 = v25 > v52++;
                  ++v51;
                }

                while (v30);
              }
            }

            ++v36;
            v39 += 128;
            v40 = (v40 + v23);
            v41 = (v41 + v23);
            v42 += 16;
          }

          while (v36 != v17);
        }

        else
        {
          v34 = (v24 + 16);
          v35 = &v53[v20 + 16 + v21];
          do
          {
            *(v35 - 2) = *(v34 - 2);
            if (v18 != 1)
            {
              *(v35 - 1) = *(v34 - 1);
              if (v18 != 2)
              {
                *v35 = *v34;
              }
            }

            v34 = (v34 + v23);
            v35 += 16;
            --v17;
          }

          while (v17);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v53, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v53[32 * *v4 + 2 * *(v4 - 1)];
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
      *v8 = *v2;
      v8[1] = v11;
      v8[8] = v10;
      v8[9] = v12;
      v8[16] = v16;
      v8[17] = v14;
      v8[24] = v13;
      v8[25] = v15;
      v7 = 128;
    }

    else if (v9 == 3)
    {
      v6 = vld1q_dup_f32(v2);
      *v8 = v6;
      v8[1] = v6;
      v8[8] = v6;
      v8[9] = v6;
      v8[16] = v6;
      v8[17] = v6;
      v8[24] = v6;
      v8[25] = v6;
      v7 = 4;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 128, v2, v9);
    }

    else
    {
      v7 = 0;
      *v8 = 0u;
      v8[1] = 0u;
      v8[8] = 0u;
      v8[9] = 0u;
      v8[16] = 0u;
      v8[17] = 0u;
      v8[24] = 0u;
      v8[25] = 0u;
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
    v18 = *(a1 + 84);
    if (v18)
    {
      v19 = *(a1 + 72);
      v20 = v19 << 7;
      v21 = 8 * *(a1 + 76);
      v22 = &v53[8 * v19] + v21;
      v24 = *(a1 + 56);
      v23 = *(a1 + 64);
      v25 = 8 * *(a1 + 84);
      if ((v25 - 1) >> 32)
      {
        v26 = 1;
      }

      else
      {
        v26 = 8 * v18 == 0;
      }

      if (v26)
      {
        for (i = 0; i != v17; ++i)
        {
          v28 = 0;
          do
          {
            v22[v28] = *(v24 + v28);
            ++v28;
          }

          while (v25 > v28);
          v22 += 128;
          v24 += v23;
        }
      }

      else
      {
        v30 = v24 < &v53[8 * v17 - 8 + 8 * v19] + v25 + v21 && v22 < v24 + v23 * (v17 - 1) + v25 || v23 < 0;
        if (v30)
        {
          for (j = 0; j != v17; ++j)
          {
            v32 = 0;
            do
            {
              v22[v32] = *(v24 + v32);
              ++v32;
            }

            while (v25 > v32);
            v22 += 128;
            v24 += v23;
          }
        }

        else if (v18 >= 4)
        {
          v36 = 0;
          v37 = v18 & 3;
          v38 = v53 + v20 + v21;
          v39 = &v53[1] + v20 + v21;
          v40 = (v24 + 16);
          v41 = (v24 + (v25 & 0x1FFFFFFE0));
          v42 = &v38[v25 & 0x1FFFFFFE0];
          do
          {
            v43 = v40;
            v44 = v39;
            v45 = v25 & 0x1FFFFFFE0;
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
            if (v25 != (v25 & 0x1FFFFFFE0))
            {
              v47 = v42;
              v48 = v41;
              v49 = v25 - (v25 & 0x1FFFFFFE0);
              if (v37)
              {
                do
                {
                  v50 = *v48++;
                  *v47 = v50;
                  v47 += 8;
                  v49 -= 8;
                }

                while (v49);
              }

              else
              {
                v51 = 0;
                v52 = (v25 & 0xFFFFFFE0) + 1;
                do
                {
                  v42[v51] = *(v41 + v51);
                  v30 = v25 > v52++;
                  ++v51;
                }

                while (v30);
              }
            }

            ++v36;
            v39 += 128;
            v40 = (v40 + v23);
            v41 = (v41 + v23);
            v42 += 128;
          }

          while (v36 != v17);
        }

        else
        {
          v34 = (v24 + 16);
          v35 = (&v53[1] + v20 + v21);
          do
          {
            *(v35 - 2) = *(v34 - 2);
            if (v18 != 1)
            {
              *(v35 - 1) = *(v34 - 1);
              if (v18 != 2)
              {
                *v35 = *v34;
              }
            }

            v34 = (v34 + v23);
            v35 += 16;
            --v17;
          }

          while (v17);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v53, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v53[512 * *v4 + 32 * *(v4 - 1)];
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
      *v8 = *v2;
      *(v8 + 1) = v11;
      *(v8 + 8) = v10;
      *(v8 + 9) = v12;
      *(v8 + 16) = v16;
      *(v8 + 17) = v14;
      *(v8 + 24) = v13;
      *(v8 + 25) = v15;
      v7 = 128;
    }

    else if (v9 == 3)
    {
      v6 = vld1q_dup_f32(v2);
      *v8 = v6;
      *(v8 + 1) = v6;
      *(v8 + 8) = v6;
      *(v8 + 9) = v6;
      *(v8 + 16) = v6;
      *(v8 + 17) = v6;
      *(v8 + 24) = v6;
      *(v8 + 25) = v6;
      v7 = 4;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 128, v2, v9);
    }

    else
    {
      v7 = 0;
      *v8 = 0u;
      *(v8 + 1) = 0u;
      *(v8 + 8) = 0u;
      *(v8 + 9) = 0u;
      *(v8 + 16) = 0u;
      *(v8 + 17) = 0u;
      *(v8 + 24) = 0u;
      *(v8 + 25) = 0u;
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
    v18 = *(a1 + 84);
    if (v18)
    {
      v19 = *(a1 + 72);
      v20 = v19 << 7;
      v21 = 8 * *(a1 + 76);
      v22 = &v53[128 * v19 + v21];
      v24 = *(a1 + 56);
      v23 = *(a1 + 64);
      v25 = 8 * *(a1 + 84);
      if ((v25 - 1) >> 32)
      {
        v26 = 1;
      }

      else
      {
        v26 = 8 * v18 == 0;
      }

      if (v26)
      {
        for (i = 0; i != v17; ++i)
        {
          v28 = 0;
          do
          {
            v22[v28] = *(v24 + v28);
            ++v28;
          }

          while (v25 > v28);
          v22 += 128;
          v24 += v23;
        }
      }

      else
      {
        v30 = v24 < &v53[128 * v17 - 128 + 128 * v19 + v25 + v21] && v22 < v24 + v23 * (v17 - 1) + v25 || v23 < 0;
        if (v30)
        {
          for (j = 0; j != v17; ++j)
          {
            v32 = 0;
            do
            {
              v22[v32] = *(v24 + v32);
              ++v32;
            }

            while (v25 > v32);
            v22 += 128;
            v24 += v23;
          }
        }

        else if (v18 >= 4)
        {
          v36 = 0;
          v37 = v18 & 3;
          v38 = &v53[v20 + v21];
          v39 = &v53[v20 + 16 + v21];
          v40 = (v24 + 16);
          v41 = (v24 + (v25 & 0x1FFFFFFE0));
          v42 = &v38[v25 & 0x1FFFFFFE0];
          do
          {
            v43 = v40;
            v44 = v39;
            v45 = v25 & 0x1FFFFFFE0;
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
            if (v25 != (v25 & 0x1FFFFFFE0))
            {
              v47 = v42;
              v48 = v41;
              v49 = v25 - (v25 & 0x1FFFFFFE0);
              if (v37)
              {
                do
                {
                  v50 = *v48++;
                  *v47++ = v50;
                  v49 -= 8;
                }

                while (v49);
              }

              else
              {
                v51 = 0;
                v52 = (v25 & 0xFFFFFFE0) + 1;
                do
                {
                  *(v42 + v51) = *(v41 + v51);
                  v30 = v25 > v52++;
                  ++v51;
                }

                while (v30);
              }
            }

            ++v36;
            v39 += 128;
            v40 = (v40 + v23);
            v41 = (v41 + v23);
            v42 += 16;
          }

          while (v36 != v17);
        }

        else
        {
          v34 = (v24 + 16);
          v35 = &v53[v20 + 16 + v21];
          do
          {
            *(v35 - 2) = *(v34 - 2);
            if (v18 != 1)
            {
              *(v35 - 1) = *(v34 - 1);
              if (v18 != 2)
              {
                *v35 = *v34;
              }
            }

            v34 = (v34 + v23);
            v35 += 16;
            --v17;
          }

          while (v17);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v53, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int64x2_t a3, __n128 a4, __n128 a5)
{
  v68 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v67, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v6 = *(a1 + 80);
  if (v6)
  {
    v7 = *(a1 + 84);
    if (v7)
    {
      v8 = *(a1 + 72);
      v9 = v8 << 6;
      v10 = 4 * *(a1 + 76);
      v11 = &v67[4 * v8].i8[v10];
      v13 = *(a1 + 56);
      v12 = *(a1 + 64);
      v14 = 4 * v7;
      v15 = &v67[4 * v6 - 4 + 4 * v8].i8[4 * v7 + v10];
      v18 = v11 < &v13[4 * v7 + v12 * (v6 - 1)] && v13 < v15 || v12 < 0;
      if (v7 == 1)
      {
        for (i = 0; i != v6; ++i)
        {
          v20 = &v13[v12 * i];
          v21 = &v11[64 * i];
          v22 = -1;
          do
          {
            v23 = *v20++;
            *v21++ = v23;
            ++v22;
          }

          while (v22 < 3);
        }
      }

      else if (!v14 || (v14 - 1) >> 32)
      {
        for (j = 0; j != v6; ++j)
        {
          v27 = 0;
          do
          {
            v11[v27] = v13[v27];
            ++v27;
          }

          while (v14 > v27);
          v11 += 64;
          v13 += v12;
        }
      }

      else if (v18)
      {
        for (k = 0; k != v6; ++k)
        {
          v25 = 0;
          do
          {
            v11[v25] = v13[v25];
            ++v25;
          }

          while (v14 > v25);
          v11 += 64;
          v13 += v12;
        }
      }

      else
      {
        v29 = v14 & 0x1FFFFFFF8;
        if (v7 > 7)
        {
          v35 = v14 & 0x1FFFFFFE0;
          if (v14 == (v14 & 0x1FFFFFFE0))
          {
            v36 = 0;
            v37 = &v67[1].i8[v9 + v10];
            v38 = (v13 + 16);
            do
            {
              v39 = v38;
              v40 = v37;
              v41 = v14;
              do
              {
                v42 = *v39;
                *(v40 - 1) = *(v39 - 1);
                *v40 = v42;
                v40 += 32;
                v39 += 2;
                v41 -= 32;
              }

              while (v41);
              ++v36;
              v37 += 64;
              v38 = (v38 + v12);
            }

            while (v36 != v6);
          }

          else
          {
            v51 = 0;
            v52 = v7 & 6;
            v53 = &v67[0].i8[v9 + v10];
            v54 = &v67[1].i8[v9 + v10];
            v55 = (v13 + 16);
            v56 = &v13[v35];
            v57 = &v53[v35];
            do
            {
              v58 = v55;
              v59 = v54;
              v60 = v14 & 0x1FFFFFFE0;
              do
              {
                v61 = *v58;
                *(v59 - 1) = *(v58 - 1);
                *v59 = v61;
                v59 += 32;
                v58 += 2;
                v60 -= 32;
              }

              while (v60);
              v62 = v14 & 0x1FFFFFFE0;
              if (!v52)
              {
                goto LABEL_63;
              }

              v63 = v57;
              v64 = v56;
              v65 = v29 - v35;
              do
              {
                v66 = *v64++;
                *v63 = v66;
                v63 += 8;
                v65 -= 8;
              }

              while (v65);
              v62 = v14 & 0x1FFFFFFF8;
              if (v14 != v29)
              {
LABEL_63:
                do
                {
                  v11[v62] = v13[v62];
                  ++v62;
                }

                while (v14 > v62);
              }

              ++v51;
              v54 += 64;
              v55 = (v55 + v12);
              v56 += v12;
              v57 += 64;
              v11 += 64;
              v13 += v12;
            }

            while (v51 != v6);
          }
        }

        else if (v14 == v29)
        {
          for (m = 0; m != v6; ++m)
          {
            v31 = v11;
            v32 = v13;
            v33 = v14;
            do
            {
              v34 = *v32;
              v32 += 8;
              *v31 = v34;
              v31 += 8;
              v33 -= 8;
            }

            while (v33);
            v13 += v12;
            v11 += 64;
          }
        }

        else
        {
          v43 = 0;
          v44 = v11;
          do
          {
            v45 = &v11[64 * v43 + v29];
            v46 = v44;
            v47 = v13;
            v48 = v14 & 0x1FFFFFFF8;
            do
            {
              v49 = *v47;
              v47 += 8;
              *v46 = v49;
              v46 += 8;
              v48 -= 8;
            }

            while (v48);
            v50 = v14 & 0x1FFFFFFF8;
            do
            {
              *v45++ = v13[v50++];
            }

            while (v14 > v50);
            ++v43;
            v13 += v12;
            v44 += 64;
          }

          while (v43 != v6);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v67, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int64x2_t a3, __n128 a4, __n128 a5)
{
  v74 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v73, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = *(a1 + 84);
    if (v15)
    {
      v16 = *(a1 + 72);
      v17 = v16 << 6;
      v18 = 4 * *(a1 + 76);
      v19 = &v73[64 * v16 + v18];
      v21 = *(a1 + 56);
      v20 = *(a1 + 64);
      v22 = 4 * v15;
      v23 = &v73[64 * v14 - 64 + 64 * v16 + 4 * v15 + v18];
      v26 = v19 < v21 + 4 * v15 + v20 * (v14 - 1) && v21 < v23 || v20 < 0;
      if (v15 == 1)
      {
        for (i = 0; i != v14; ++i)
        {
          v28 = v21 + v20 * i;
          v29 = &v19[64 * i];
          v30 = -1;
          do
          {
            v31 = *v28++;
            *v29++ = v31;
            ++v30;
          }

          while (v30 < 3);
        }
      }

      else if (!v22 || (v22 - 1) >> 32)
      {
        for (j = 0; j != v14; ++j)
        {
          v35 = 0;
          do
          {
            v19[v35] = *(v21 + v35);
            ++v35;
          }

          while (v22 > v35);
          v19 += 64;
          v21 = (v21 + v20);
        }
      }

      else if (v26)
      {
        for (k = 0; k != v14; ++k)
        {
          v33 = 0;
          do
          {
            v19[v33] = *(v21 + v33);
            ++v33;
          }

          while (v22 > v33);
          v19 += 64;
          v21 = (v21 + v20);
        }
      }

      else
      {
        v37 = v22 & 0x1FFFFFFF8;
        if (v15 > 7)
        {
          v43 = v22 & 0x1FFFFFFE0;
          if (v22 == (v22 & 0x1FFFFFFE0))
          {
            v44 = 0;
            v45 = &v73[v17 + 16 + v18];
            v46 = (v21 + 2);
            do
            {
              v47 = v46;
              v48 = v45;
              v49 = v22;
              do
              {
                v6 = *(v47 - 1);
                v7 = *v47;
                *(v48 - 1) = v6;
                *v48 = v7;
                v48 += 2;
                v47 += 2;
                v49 -= 32;
              }

              while (v49);
              ++v44;
              v45 += 64;
              v46 = (v46 + v20);
            }

            while (v44 != v14);
          }

          else
          {
            v58 = 0;
            v59 = v15 & 6;
            v60 = &v73[v17 + v18];
            v61 = &v73[v17 + 16 + v18];
            v62 = (v21 + 2);
            v63 = (v21 + v43);
            v64 = &v60[v43];
            do
            {
              v65 = v62;
              v66 = v61;
              v67 = v22 & 0x1FFFFFFE0;
              do
              {
                v6 = *(v65 - 1);
                v7 = *v65;
                *(v66 - 1) = v6;
                *v66 = v7;
                v66 += 2;
                v65 += 2;
                v67 -= 32;
              }

              while (v67);
              v68 = v22 & 0x1FFFFFFE0;
              if (!v59)
              {
                goto LABEL_63;
              }

              v69 = v64;
              v70 = v63;
              v71 = v37 - v43;
              do
              {
                v72 = *v70++;
                *&v6 = v72;
                *v69++ = v72;
                v71 -= 8;
              }

              while (v71);
              v68 = v22 & 0x1FFFFFFF8;
              if (v22 != v37)
              {
LABEL_63:
                do
                {
                  v19[v68] = *(v21 + v68);
                  ++v68;
                }

                while (v22 > v68);
              }

              ++v58;
              v61 += 64;
              v62 = (v62 + v20);
              v63 = (v63 + v20);
              v64 += 8;
              v19 += 64;
              v21 = (v21 + v20);
            }

            while (v58 != v14);
          }
        }

        else if (v22 == v37)
        {
          for (m = 0; m != v14; ++m)
          {
            v39 = v19;
            v40 = v21;
            v41 = v22;
            do
            {
              v42 = *v40++;
              *&v6 = v42;
              *v39++ = v42;
              v41 -= 8;
            }

            while (v41);
            v21 = (v21 + v20);
            v19 += 64;
          }
        }

        else
        {
          v50 = 0;
          v51 = v19;
          do
          {
            v52 = &v19[64 * v50 + v37];
            v53 = v51;
            v54 = v21;
            v55 = v22 & 0x1FFFFFFF8;
            do
            {
              v56 = *v54++;
              *&v6 = v56;
              *v53++ = v56;
              v55 -= 8;
            }

            while (v55);
            v57 = v22 & 0x1FFFFFFF8;
            do
            {
              *v52++ = *(v21 + v57++);
            }

            while (v22 > v57);
            ++v50;
            v21 = (v21 + v20);
            v51 += 8;
          }

          while (v50 != v14);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v73, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *&v6, *&v7, v8, v9, v10, v11, v12, v13);
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int64x2_t a3, __n128 a4, __n128 a5)
{
  v68 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v67, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v6 = *(a1 + 80);
  if (v6)
  {
    v7 = *(a1 + 84);
    if (v7)
    {
      v8 = *(a1 + 72);
      v9 = v8 << 6;
      v10 = 4 * *(a1 + 76);
      v11 = &v67[4 * v8].i8[v10];
      v13 = *(a1 + 56);
      v12 = *(a1 + 64);
      v14 = 4 * v7;
      v15 = &v67[4 * v6 - 4 + 4 * v8].i8[4 * v7 + v10];
      v18 = v11 < &v13[4 * v7 + v12 * (v6 - 1)] && v13 < v15 || v12 < 0;
      if (v7 == 1)
      {
        for (i = 0; i != v6; ++i)
        {
          v20 = &v13[v12 * i];
          v21 = &v11[64 * i];
          v22 = -1;
          do
          {
            v23 = *v20++;
            *v21++ = v23;
            ++v22;
          }

          while (v22 < 3);
        }
      }

      else if (!v14 || (v14 - 1) >> 32)
      {
        for (j = 0; j != v6; ++j)
        {
          v27 = 0;
          do
          {
            v11[v27] = v13[v27];
            ++v27;
          }

          while (v14 > v27);
          v11 += 64;
          v13 += v12;
        }
      }

      else if (v18)
      {
        for (k = 0; k != v6; ++k)
        {
          v25 = 0;
          do
          {
            v11[v25] = v13[v25];
            ++v25;
          }

          while (v14 > v25);
          v11 += 64;
          v13 += v12;
        }
      }

      else
      {
        v29 = v14 & 0x1FFFFFFF8;
        if (v7 > 7)
        {
          v35 = v14 & 0x1FFFFFFE0;
          if (v14 == (v14 & 0x1FFFFFFE0))
          {
            v36 = 0;
            v37 = &v67[1].i8[v9 + v10];
            v38 = (v13 + 16);
            do
            {
              v39 = v38;
              v40 = v37;
              v41 = v14;
              do
              {
                v42 = *v39;
                *(v40 - 1) = *(v39 - 1);
                *v40 = v42;
                v40 += 32;
                v39 += 2;
                v41 -= 32;
              }

              while (v41);
              ++v36;
              v37 += 64;
              v38 = (v38 + v12);
            }

            while (v36 != v6);
          }

          else
          {
            v51 = 0;
            v52 = v7 & 6;
            v53 = &v67[0].i8[v9 + v10];
            v54 = &v67[1].i8[v9 + v10];
            v55 = (v13 + 16);
            v56 = &v13[v35];
            v57 = &v53[v35];
            do
            {
              v58 = v55;
              v59 = v54;
              v60 = v14 & 0x1FFFFFFE0;
              do
              {
                v61 = *v58;
                *(v59 - 1) = *(v58 - 1);
                *v59 = v61;
                v59 += 32;
                v58 += 2;
                v60 -= 32;
              }

              while (v60);
              v62 = v14 & 0x1FFFFFFE0;
              if (!v52)
              {
                goto LABEL_63;
              }

              v63 = v57;
              v64 = v56;
              v65 = v29 - v35;
              do
              {
                v66 = *v64++;
                *v63 = v66;
                v63 += 8;
                v65 -= 8;
              }

              while (v65);
              v62 = v14 & 0x1FFFFFFF8;
              if (v14 != v29)
              {
LABEL_63:
                do
                {
                  v11[v62] = v13[v62];
                  ++v62;
                }

                while (v14 > v62);
              }

              ++v51;
              v54 += 64;
              v55 = (v55 + v12);
              v56 += v12;
              v57 += 64;
              v11 += 64;
              v13 += v12;
            }

            while (v51 != v6);
          }
        }

        else if (v14 == v29)
        {
          for (m = 0; m != v6; ++m)
          {
            v31 = v11;
            v32 = v13;
            v33 = v14;
            do
            {
              v34 = *v32;
              v32 += 8;
              *v31 = v34;
              v31 += 8;
              v33 -= 8;
            }

            while (v33);
            v13 += v12;
            v11 += 64;
          }
        }

        else
        {
          v43 = 0;
          v44 = v11;
          do
          {
            v45 = &v11[64 * v43 + v29];
            v46 = v44;
            v47 = v13;
            v48 = v14 & 0x1FFFFFFF8;
            do
            {
              v49 = *v47;
              v47 += 8;
              *v46 = v49;
              v46 += 8;
              v48 -= 8;
            }

            while (v48);
            v50 = v14 & 0x1FFFFFFF8;
            do
            {
              *v45++ = v13[v50++];
            }

            while (v14 > v50);
            ++v43;
            v13 += v12;
            v44 += 64;
          }

          while (v43 != v6);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v67, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, int64x2_t a3, __n128 a4, __n128 a5)
{
  v74 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v73, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = *(a1 + 84);
    if (v15)
    {
      v16 = *(a1 + 72);
      v17 = v16 << 6;
      v18 = 4 * *(a1 + 76);
      v19 = &v73[64 * v16 + v18];
      v21 = *(a1 + 56);
      v20 = *(a1 + 64);
      v22 = 4 * v15;
      v23 = &v73[64 * v14 - 64 + 64 * v16 + 4 * v15 + v18];
      v26 = v19 < v21 + 4 * v15 + v20 * (v14 - 1) && v21 < v23 || v20 < 0;
      if (v15 == 1)
      {
        for (i = 0; i != v14; ++i)
        {
          v28 = v21 + v20 * i;
          v29 = &v19[64 * i];
          v30 = -1;
          do
          {
            v31 = *v28++;
            *v29++ = v31;
            ++v30;
          }

          while (v30 < 3);
        }
      }

      else if (!v22 || (v22 - 1) >> 32)
      {
        for (j = 0; j != v14; ++j)
        {
          v35 = 0;
          do
          {
            v19[v35] = *(v21 + v35);
            ++v35;
          }

          while (v22 > v35);
          v19 += 64;
          v21 = (v21 + v20);
        }
      }

      else if (v26)
      {
        for (k = 0; k != v14; ++k)
        {
          v33 = 0;
          do
          {
            v19[v33] = *(v21 + v33);
            ++v33;
          }

          while (v22 > v33);
          v19 += 64;
          v21 = (v21 + v20);
        }
      }

      else
      {
        v37 = v22 & 0x1FFFFFFF8;
        if (v15 > 7)
        {
          v43 = v22 & 0x1FFFFFFE0;
          if (v22 == (v22 & 0x1FFFFFFE0))
          {
            v44 = 0;
            v45 = &v73[v17 + 16 + v18];
            v46 = (v21 + 2);
            do
            {
              v47 = v46;
              v48 = v45;
              v49 = v22;
              do
              {
                v6 = *(v47 - 1);
                v7 = *v47;
                *(v48 - 1) = v6;
                *v48 = v7;
                v48 += 2;
                v47 += 2;
                v49 -= 32;
              }

              while (v49);
              ++v44;
              v45 += 64;
              v46 = (v46 + v20);
            }

            while (v44 != v14);
          }

          else
          {
            v58 = 0;
            v59 = v15 & 6;
            v60 = &v73[v17 + v18];
            v61 = &v73[v17 + 16 + v18];
            v62 = (v21 + 2);
            v63 = (v21 + v43);
            v64 = &v60[v43];
            do
            {
              v65 = v62;
              v66 = v61;
              v67 = v22 & 0x1FFFFFFE0;
              do
              {
                v6 = *(v65 - 1);
                v7 = *v65;
                *(v66 - 1) = v6;
                *v66 = v7;
                v66 += 2;
                v65 += 2;
                v67 -= 32;
              }

              while (v67);
              v68 = v22 & 0x1FFFFFFE0;
              if (!v59)
              {
                goto LABEL_63;
              }

              v69 = v64;
              v70 = v63;
              v71 = v37 - v43;
              do
              {
                v72 = *v70++;
                *&v6 = v72;
                *v69++ = v72;
                v71 -= 8;
              }

              while (v71);
              v68 = v22 & 0x1FFFFFFF8;
              if (v22 != v37)
              {
LABEL_63:
                do
                {
                  v19[v68] = *(v21 + v68);
                  ++v68;
                }

                while (v22 > v68);
              }

              ++v58;
              v61 += 64;
              v62 = (v62 + v20);
              v63 = (v63 + v20);
              v64 += 8;
              v19 += 64;
              v21 = (v21 + v20);
            }

            while (v58 != v14);
          }
        }

        else if (v22 == v37)
        {
          for (m = 0; m != v14; ++m)
          {
            v39 = v19;
            v40 = v21;
            v41 = v22;
            do
            {
              v42 = *v40++;
              *&v6 = v42;
              *v39++ = v42;
              v41 -= 8;
            }

            while (v41);
            v21 = (v21 + v20);
            v19 += 64;
          }
        }

        else
        {
          v50 = 0;
          v51 = v19;
          do
          {
            v52 = &v19[64 * v50 + v37];
            v53 = v51;
            v54 = v21;
            v55 = v22 & 0x1FFFFFFF8;
            do
            {
              v56 = *v54++;
              *&v6 = v56;
              *v53++ = v56;
              v55 -= 8;
            }

            while (v55);
            v57 = v22 & 0x1FFFFFFF8;
            do
            {
              *v52++ = *(v21 + v57++);
            }

            while (v22 > v57);
            ++v50;
            v21 = (v21 + v20);
            v51 += 8;
          }

          while (v50 != v14);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v73, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *&v6, *&v7, v8, v9, v10, v11, v12, v13);
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v39, *(a1 + 40), *(a1 + 48));
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
        v20 = (&v39[1] + v5 + v6);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v39, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v39, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 7;
      v6 = 8 * *(a1 + 76);
      v7 = &v39[128 * v4 + v6];
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

      else if (v9 < &v39[128 * v2 - 128 + 128 * v4 + v10 + v6] && v7 < v9 + v8 * (v2 - 1) + v10 || v8 < 0)
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
        v23 = &v39[v5 + v6];
        v24 = &v39[v5 + 16 + v6];
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
                *v32++ = v35;
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
                *(v27 + v36) = *(v26 + v36);
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
          v27 += 16;
        }

        while (v21 != v2);
      }

      else
      {
        v19 = (v9 + 16);
        v20 = &v39[v5 + 16 + v6];
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v39, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v39, *(a1 + 40), *(a1 + 48));
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
        v20 = (&v39[1] + v5 + v6);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v39, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v39, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 7;
      v6 = 8 * *(a1 + 76);
      v7 = &v39[128 * v4 + v6];
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

      else if (v9 < &v39[128 * v2 - 128 + 128 * v4 + v10 + v6] && v7 < v9 + v8 * (v2 - 1) + v10 || v8 < 0)
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
        v23 = &v39[v5 + v6];
        v24 = &v39[v5 + 16 + v6];
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
                *v32++ = v35;
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
                *(v27 + v36) = *(v26 + v36);
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
          v27 += 16;
        }

        while (v21 != v2);
      }

      else
      {
        v19 = (v9 + 16);
        v20 = &v39[v5 + 16 + v6];
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v39, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v53[32 * *v4 + 2 * *(v4 - 1)];
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
      *v8 = *v2;
      v8[1] = v11;
      v8[8] = v10;
      v8[9] = v12;
      v8[16] = v16;
      v8[17] = v14;
      v8[24] = v13;
      v8[25] = v15;
      v7 = 128;
    }

    else if (v9 == 3)
    {
      v6 = vld1q_dup_f32(v2);
      *v8 = v6;
      v8[1] = v6;
      v8[8] = v6;
      v8[9] = v6;
      v8[16] = v6;
      v8[17] = v6;
      v8[24] = v6;
      v8[25] = v6;
      v7 = 4;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 128, v2, v9);
    }

    else
    {
      v7 = 0;
      *v8 = 0u;
      v8[1] = 0u;
      v8[8] = 0u;
      v8[9] = 0u;
      v8[16] = 0u;
      v8[17] = 0u;
      v8[24] = 0u;
      v8[25] = 0u;
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
    v18 = *(a1 + 84);
    if (v18)
    {
      v19 = *(a1 + 72);
      v20 = v19 << 7;
      v21 = 8 * *(a1 + 76);
      v22 = &v53[8 * v19] + v21;
      v24 = *(a1 + 56);
      v23 = *(a1 + 64);
      v25 = 8 * *(a1 + 84);
      if ((v25 - 1) >> 32)
      {
        v26 = 1;
      }

      else
      {
        v26 = 8 * v18 == 0;
      }

      if (v26)
      {
        for (i = 0; i != v17; ++i)
        {
          v28 = 0;
          do
          {
            v22[v28] = *(v24 + v28);
            ++v28;
          }

          while (v25 > v28);
          v22 += 128;
          v24 += v23;
        }
      }

      else
      {
        v30 = v24 < &v53[8 * v17 - 8 + 8 * v19] + v25 + v21 && v22 < v24 + v23 * (v17 - 1) + v25 || v23 < 0;
        if (v30)
        {
          for (j = 0; j != v17; ++j)
          {
            v32 = 0;
            do
            {
              v22[v32] = *(v24 + v32);
              ++v32;
            }

            while (v25 > v32);
            v22 += 128;
            v24 += v23;
          }
        }

        else if (v18 >= 4)
        {
          v36 = 0;
          v37 = v18 & 3;
          v38 = v53 + v20 + v21;
          v39 = &v53[1] + v20 + v21;
          v40 = (v24 + 16);
          v41 = (v24 + (v25 & 0x1FFFFFFE0));
          v42 = &v38[v25 & 0x1FFFFFFE0];
          do
          {
            v43 = v40;
            v44 = v39;
            v45 = v25 & 0x1FFFFFFE0;
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
            if (v25 != (v25 & 0x1FFFFFFE0))
            {
              v47 = v42;
              v48 = v41;
              v49 = v25 - (v25 & 0x1FFFFFFE0);
              if (v37)
              {
                do
                {
                  v50 = *v48++;
                  *v47 = v50;
                  v47 += 8;
                  v49 -= 8;
                }

                while (v49);
              }

              else
              {
                v51 = 0;
                v52 = (v25 & 0xFFFFFFE0) + 1;
                do
                {
                  v42[v51] = *(v41 + v51);
                  v30 = v25 > v52++;
                  ++v51;
                }

                while (v30);
              }
            }

            ++v36;
            v39 += 128;
            v40 = (v40 + v23);
            v41 = (v41 + v23);
            v42 += 128;
          }

          while (v36 != v17);
        }

        else
        {
          v34 = (v24 + 16);
          v35 = (&v53[1] + v20 + v21);
          do
          {
            *(v35 - 2) = *(v34 - 2);
            if (v18 != 1)
            {
              *(v35 - 1) = *(v34 - 1);
              if (v18 != 2)
              {
                *v35 = *v34;
              }
            }

            v34 = (v34 + v23);
            v35 += 16;
            --v17;
          }

          while (v17);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v53, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v53[512 * *v4 + 32 * *(v4 - 1)];
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
      *v8 = *v2;
      *(v8 + 1) = v11;
      *(v8 + 8) = v10;
      *(v8 + 9) = v12;
      *(v8 + 16) = v16;
      *(v8 + 17) = v14;
      *(v8 + 24) = v13;
      *(v8 + 25) = v15;
      v7 = 128;
    }

    else if (v9 == 3)
    {
      v6 = vld1q_dup_f32(v2);
      *v8 = v6;
      *(v8 + 1) = v6;
      *(v8 + 8) = v6;
      *(v8 + 9) = v6;
      *(v8 + 16) = v6;
      *(v8 + 17) = v6;
      *(v8 + 24) = v6;
      *(v8 + 25) = v6;
      v7 = 4;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 128, v2, v9);
    }

    else
    {
      v7 = 0;
      *v8 = 0u;
      *(v8 + 1) = 0u;
      *(v8 + 8) = 0u;
      *(v8 + 9) = 0u;
      *(v8 + 16) = 0u;
      *(v8 + 17) = 0u;
      *(v8 + 24) = 0u;
      *(v8 + 25) = 0u;
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
    v18 = *(a1 + 84);
    if (v18)
    {
      v19 = *(a1 + 72);
      v20 = v19 << 7;
      v21 = 8 * *(a1 + 76);
      v22 = &v53[128 * v19 + v21];
      v24 = *(a1 + 56);
      v23 = *(a1 + 64);
      v25 = 8 * *(a1 + 84);
      if ((v25 - 1) >> 32)
      {
        v26 = 1;
      }

      else
      {
        v26 = 8 * v18 == 0;
      }

      if (v26)
      {
        for (i = 0; i != v17; ++i)
        {
          v28 = 0;
          do
          {
            v22[v28] = *(v24 + v28);
            ++v28;
          }

          while (v25 > v28);
          v22 += 128;
          v24 += v23;
        }
      }

      else
      {
        v30 = v24 < &v53[128 * v17 - 128 + 128 * v19 + v25 + v21] && v22 < v24 + v23 * (v17 - 1) + v25 || v23 < 0;
        if (v30)
        {
          for (j = 0; j != v17; ++j)
          {
            v32 = 0;
            do
            {
              v22[v32] = *(v24 + v32);
              ++v32;
            }

            while (v25 > v32);
            v22 += 128;
            v24 += v23;
          }
        }

        else if (v18 >= 4)
        {
          v36 = 0;
          v37 = v18 & 3;
          v38 = &v53[v20 + v21];
          v39 = &v53[v20 + 16 + v21];
          v40 = (v24 + 16);
          v41 = (v24 + (v25 & 0x1FFFFFFE0));
          v42 = &v38[v25 & 0x1FFFFFFE0];
          do
          {
            v43 = v40;
            v44 = v39;
            v45 = v25 & 0x1FFFFFFE0;
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
            if (v25 != (v25 & 0x1FFFFFFE0))
            {
              v47 = v42;
              v48 = v41;
              v49 = v25 - (v25 & 0x1FFFFFFE0);
              if (v37)
              {
                do
                {
                  v50 = *v48++;
                  *v47++ = v50;
                  v49 -= 8;
                }

                while (v49);
              }

              else
              {
                v51 = 0;
                v52 = (v25 & 0xFFFFFFE0) + 1;
                do
                {
                  *(v42 + v51) = *(v41 + v51);
                  v30 = v25 > v52++;
                  ++v51;
                }

                while (v30);
              }
            }

            ++v36;
            v39 += 128;
            v40 = (v40 + v23);
            v41 = (v41 + v23);
            v42 += 16;
          }

          while (v36 != v17);
        }

        else
        {
          v34 = (v24 + 16);
          v35 = &v53[v20 + 16 + v21];
          do
          {
            *(v35 - 2) = *(v34 - 2);
            if (v18 != 1)
            {
              *(v35 - 1) = *(v34 - 1);
              if (v18 != 2)
              {
                *v35 = *v34;
              }
            }

            v34 = (v34 + v23);
            v35 += 16;
            --v17;
          }

          while (v17);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v53, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v53[32 * *v4 + 2 * *(v4 - 1)];
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
      *v8 = *v2;
      v8[1] = v11;
      v8[8] = v10;
      v8[9] = v12;
      v8[16] = v16;
      v8[17] = v14;
      v8[24] = v13;
      v8[25] = v15;
      v7 = 128;
    }

    else if (v9 == 3)
    {
      v6 = vld1q_dup_f32(v2);
      *v8 = v6;
      v8[1] = v6;
      v8[8] = v6;
      v8[9] = v6;
      v8[16] = v6;
      v8[17] = v6;
      v8[24] = v6;
      v8[25] = v6;
      v7 = 4;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 128, v2, v9);
    }

    else
    {
      v7 = 0;
      *v8 = 0u;
      v8[1] = 0u;
      v8[8] = 0u;
      v8[9] = 0u;
      v8[16] = 0u;
      v8[17] = 0u;
      v8[24] = 0u;
      v8[25] = 0u;
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
    v18 = *(a1 + 84);
    if (v18)
    {
      v19 = *(a1 + 72);
      v20 = v19 << 7;
      v21 = 8 * *(a1 + 76);
      v22 = &v53[8 * v19] + v21;
      v24 = *(a1 + 56);
      v23 = *(a1 + 64);
      v25 = 8 * *(a1 + 84);
      if ((v25 - 1) >> 32)
      {
        v26 = 1;
      }

      else
      {
        v26 = 8 * v18 == 0;
      }

      if (v26)
      {
        for (i = 0; i != v17; ++i)
        {
          v28 = 0;
          do
          {
            v22[v28] = *(v24 + v28);
            ++v28;
          }

          while (v25 > v28);
          v22 += 128;
          v24 += v23;
        }
      }

      else
      {
        v30 = v24 < &v53[8 * v17 - 8 + 8 * v19] + v25 + v21 && v22 < v24 + v23 * (v17 - 1) + v25 || v23 < 0;
        if (v30)
        {
          for (j = 0; j != v17; ++j)
          {
            v32 = 0;
            do
            {
              v22[v32] = *(v24 + v32);
              ++v32;
            }

            while (v25 > v32);
            v22 += 128;
            v24 += v23;
          }
        }

        else if (v18 >= 4)
        {
          v36 = 0;
          v37 = v18 & 3;
          v38 = v53 + v20 + v21;
          v39 = &v53[1] + v20 + v21;
          v40 = (v24 + 16);
          v41 = (v24 + (v25 & 0x1FFFFFFE0));
          v42 = &v38[v25 & 0x1FFFFFFE0];
          do
          {
            v43 = v40;
            v44 = v39;
            v45 = v25 & 0x1FFFFFFE0;
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
            if (v25 != (v25 & 0x1FFFFFFE0))
            {
              v47 = v42;
              v48 = v41;
              v49 = v25 - (v25 & 0x1FFFFFFE0);
              if (v37)
              {
                do
                {
                  v50 = *v48++;
                  *v47 = v50;
                  v47 += 8;
                  v49 -= 8;
                }

                while (v49);
              }

              else
              {
                v51 = 0;
                v52 = (v25 & 0xFFFFFFE0) + 1;
                do
                {
                  v42[v51] = *(v41 + v51);
                  v30 = v25 > v52++;
                  ++v51;
                }

                while (v30);
              }
            }

            ++v36;
            v39 += 128;
            v40 = (v40 + v23);
            v41 = (v41 + v23);
            v42 += 128;
          }

          while (v36 != v17);
        }

        else
        {
          v34 = (v24 + 16);
          v35 = (&v53[1] + v20 + v21);
          do
          {
            *(v35 - 2) = *(v34 - 2);
            if (v18 != 1)
            {
              *(v35 - 1) = *(v34 - 1);
              if (v18 != 2)
              {
                *v35 = *v34;
              }
            }

            v34 = (v34 + v23);
            v35 += 16;
            --v17;
          }

          while (v17);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v53, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v53[512 * *v4 + 32 * *(v4 - 1)];
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
      *v8 = *v2;
      *(v8 + 1) = v11;
      *(v8 + 8) = v10;
      *(v8 + 9) = v12;
      *(v8 + 16) = v16;
      *(v8 + 17) = v14;
      *(v8 + 24) = v13;
      *(v8 + 25) = v15;
      v7 = 128;
    }

    else if (v9 == 3)
    {
      v6 = vld1q_dup_f32(v2);
      *v8 = v6;
      *(v8 + 1) = v6;
      *(v8 + 8) = v6;
      *(v8 + 9) = v6;
      *(v8 + 16) = v6;
      *(v8 + 17) = v6;
      *(v8 + 24) = v6;
      *(v8 + 25) = v6;
      v7 = 4;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 128, v2, v9);
    }

    else
    {
      v7 = 0;
      *v8 = 0u;
      *(v8 + 1) = 0u;
      *(v8 + 8) = 0u;
      *(v8 + 9) = 0u;
      *(v8 + 16) = 0u;
      *(v8 + 17) = 0u;
      *(v8 + 24) = 0u;
      *(v8 + 25) = 0u;
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
    v18 = *(a1 + 84);
    if (v18)
    {
      v19 = *(a1 + 72);
      v20 = v19 << 7;
      v21 = 8 * *(a1 + 76);
      v22 = &v53[128 * v19 + v21];
      v24 = *(a1 + 56);
      v23 = *(a1 + 64);
      v25 = 8 * *(a1 + 84);
      if ((v25 - 1) >> 32)
      {
        v26 = 1;
      }

      else
      {
        v26 = 8 * v18 == 0;
      }

      if (v26)
      {
        for (i = 0; i != v17; ++i)
        {
          v28 = 0;
          do
          {
            v22[v28] = *(v24 + v28);
            ++v28;
          }

          while (v25 > v28);
          v22 += 128;
          v24 += v23;
        }
      }

      else
      {
        v30 = v24 < &v53[128 * v17 - 128 + 128 * v19 + v25 + v21] && v22 < v24 + v23 * (v17 - 1) + v25 || v23 < 0;
        if (v30)
        {
          for (j = 0; j != v17; ++j)
          {
            v32 = 0;
            do
            {
              v22[v32] = *(v24 + v32);
              ++v32;
            }

            while (v25 > v32);
            v22 += 128;
            v24 += v23;
          }
        }

        else if (v18 >= 4)
        {
          v36 = 0;
          v37 = v18 & 3;
          v38 = &v53[v20 + v21];
          v39 = &v53[v20 + 16 + v21];
          v40 = (v24 + 16);
          v41 = (v24 + (v25 & 0x1FFFFFFE0));
          v42 = &v38[v25 & 0x1FFFFFFE0];
          do
          {
            v43 = v40;
            v44 = v39;
            v45 = v25 & 0x1FFFFFFE0;
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
            if (v25 != (v25 & 0x1FFFFFFE0))
            {
              v47 = v42;
              v48 = v41;
              v49 = v25 - (v25 & 0x1FFFFFFE0);
              if (v37)
              {
                do
                {
                  v50 = *v48++;
                  *v47++ = v50;
                  v49 -= 8;
                }

                while (v49);
              }

              else
              {
                v51 = 0;
                v52 = (v25 & 0xFFFFFFE0) + 1;
                do
                {
                  *(v42 + v51) = *(v41 + v51);
                  v30 = v25 > v52++;
                  ++v51;
                }

                while (v30);
              }
            }

            ++v36;
            v39 += 128;
            v40 = (v40 + v23);
            v41 = (v41 + v23);
            v42 += 16;
          }

          while (v36 != v17);
        }

        else
        {
          v34 = (v24 + 16);
          v35 = &v53[v20 + 16 + v21];
          do
          {
            *(v35 - 2) = *(v34 - 2);
            if (v18 != 1)
            {
              *(v35 - 1) = *(v34 - 1);
              if (v18 != 2)
              {
                *v35 = *v34;
              }
            }

            v34 = (v34 + v23);
            v35 += 16;
            --v17;
          }

          while (v17);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v53, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

int32x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int32x2_t a3)
{
  v58[33] = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v58, *(a1 + 40), *(a1 + 48), a2, a3);
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 84);
    if (v5)
    {
      v6 = *(a1 + 72);
      v7 = 4 * v6;
      v8 = 2 * *(a1 + 76);
      v9 = &v58[4 * v6] + v8;
      v11 = *(a1 + 56);
      v10 = *(a1 + 64);
      v12 = 2 * v5;
      v13 = &v58[4 * v4 - 4 + 4 * v6] + 2 * v5 + v8;
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
              v29 = &v58[v7 + 2] + v8;
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
              v45 = &v58[v7 + 2] + v8;
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
            v26 = (&v58[v7 + 2] + v8);
            do
            {
              v26[-2] = v25[-2];
              if (v5 != 4)
              {
                v26[-1] = v25[-1];
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v58, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int32x2_t a3)
{
  v60 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v59, *(a1 + 40), *(a1 + 48), a2, a3);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 84);
    if (v8)
    {
      v9 = *(a1 + 72);
      v10 = 32 * v9;
      v11 = 2 * *(a1 + 76);
      v12 = &v59[32 * v9 + v11];
      v14 = *(a1 + 56);
      v13 = *(a1 + 64);
      v15 = 2 * v8;
      v16 = &v59[32 * v7 - 32 + 32 * v9 + 2 * v8 + v11];
      v19 = v12 < v14 + v13 * (v7 - 1) + 2 * v8 && v14 < v16 || v13 < 0;
      if (v8 > 3)
      {
        if (!v15 || (v15 - 1) >> 32)
        {
          for (i = 0; i != v7; ++i)
          {
            v25 = 0;
            do
            {
              v12[v25] = *(v14 + v25);
              ++v25;
            }

            while (v15 > v25);
            v12 += 32;
            v14 += v13;
          }
        }

        else if (v19)
        {
          for (j = 0; j != v7; ++j)
          {
            v23 = 0;
            do
            {
              v12[v23] = *(v14 + v23);
              ++v23;
            }

            while (v15 > v23);
            v12 += 32;
            v14 += v13;
          }
        }

        else
        {
          v27 = v15 & 0x1FFFFFFF8;
          if (v8 > 0xF)
          {
            v30 = v15 & 0x1FFFFFFE0;
            if (v15 == (v15 & 0x1FFFFFFE0))
            {
              v31 = 0;
              v32 = &v59[v10 + 16 + v11];
              v33 = (v14 + 16);
              do
              {
                v34 = v33;
                v35 = v32;
                v36 = v15;
                do
                {
                  v4 = *(v34 - 1);
                  v5 = *v34;
                  *(v35 - 1) = v4;
                  *v35 = v5;
                  v35 += 2;
                  v34 += 2;
                  v36 -= 32;
                }

                while (v36);
                ++v31;
                v32 += 32;
                v33 = (v33 + v13);
              }

              while (v31 != v7);
            }

            else
            {
              v44 = 0;
              v45 = v8 & 0xC;
              v46 = &v59[v10 + v11];
              v47 = &v59[v10 + 16 + v11];
              v48 = (v14 + 16);
              v49 = (v14 + v30);
              v50 = &v46[v30];
              do
              {
                v51 = v48;
                v52 = v47;
                v53 = v15 & 0x1FFFFFFE0;
                do
                {
                  v4 = *(v51 - 1);
                  v5 = *v51;
                  *(v52 - 1) = v4;
                  *v52 = v5;
                  v52 += 2;
                  v51 += 2;
                  v53 -= 32;
                }

                while (v53);
                v54 = v15 & 0x1FFFFFFE0;
                if (!v45)
                {
                  goto LABEL_64;
                }

                v55 = v50;
                v56 = v49;
                v57 = v27 - v30;
                do
                {
                  v58 = *v56++;
                  *&v4 = v58;
                  *v55++ = v58;
                  v57 -= 8;
                }

                while (v57);
                v54 = v15 & 0x1FFFFFFF8;
                if (v15 != v27)
                {
LABEL_64:
                  do
                  {
                    v12[v54] = *(v14 + v54);
                    ++v54;
                  }

                  while (v15 > v54);
                }

                ++v44;
                v47 += 32;
                v48 = (v48 + v13);
                v49 = (v49 + v13);
                v50 += 4;
                v12 += 32;
                v14 += v13;
              }

              while (v44 != v7);
            }
          }

          else if (v15 == v27)
          {
            v28 = (v14 + 16);
            v29 = &v59[v10 + 16 + v11];
            do
            {
              *&v4 = *(v28 - 2);
              *(v29 - 2) = v4;
              if (v8 != 4)
              {
                *&v4 = *(v28 - 1);
                *(v29 - 1) = v4;
                if (v8 != 8)
                {
                  *&v4 = *v28;
                  *v29 = *v28;
                }
              }

              v28 = (v28 + v13);
              v29 += 4;
              --v7;
            }

            while (v7);
          }

          else
          {
            for (k = 0; k != v7; ++k)
            {
              v38 = (v14 + v13 * k);
              v39 = &v12[32 * k];
              *&v4 = *v38;
              *v39 = *v38;
              if (v27 != 8)
              {
                *&v4 = v38[1];
                v39[1] = v4;
                if (v27 != 16)
                {
                  *&v4 = v38[2];
                  v39[2] = v4;
                }
              }

              v40 = v39 + v27;
              v41 = v38 + v27;
              v42 = v15 & 0x18;
              do
              {
                v43 = *v41++;
                *v40++ = v43;
                ++v42;
              }

              while (v15 > v42);
            }
          }
        }
      }

      else
      {
        for (m = 0; m != v7; ++m)
        {
          v21 = 0;
          do
          {
            v12[v21] = *(v14 + v21);
            ++v21;
          }

          while (v21 < v15);
          v12 += 32;
          v14 += v13;
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v59, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *&v4, *&v5, v6);
}

int32x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int32x2_t a3)
{
  v58[33] = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v58, *(a1 + 40), *(a1 + 48), a2, a3);
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 84);
    if (v5)
    {
      v6 = *(a1 + 72);
      v7 = 4 * v6;
      v8 = 2 * *(a1 + 76);
      v9 = &v58[4 * v6] + v8;
      v11 = *(a1 + 56);
      v10 = *(a1 + 64);
      v12 = 2 * v5;
      v13 = &v58[4 * v4 - 4 + 4 * v6] + 2 * v5 + v8;
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
              v29 = &v58[v7 + 2] + v8;
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
              v45 = &v58[v7 + 2] + v8;
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
            v26 = (&v58[v7 + 2] + v8);
            do
            {
              v26[-2] = v25[-2];
              if (v5 != 4)
              {
                v26[-1] = v25[-1];
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v58, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int32x2_t a3)
{
  v60 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v59, *(a1 + 40), *(a1 + 48), a2, a3);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 84);
    if (v8)
    {
      v9 = *(a1 + 72);
      v10 = 32 * v9;
      v11 = 2 * *(a1 + 76);
      v12 = &v59[32 * v9 + v11];
      v14 = *(a1 + 56);
      v13 = *(a1 + 64);
      v15 = 2 * v8;
      v16 = &v59[32 * v7 - 32 + 32 * v9 + 2 * v8 + v11];
      v19 = v12 < v14 + v13 * (v7 - 1) + 2 * v8 && v14 < v16 || v13 < 0;
      if (v8 > 3)
      {
        if (!v15 || (v15 - 1) >> 32)
        {
          for (i = 0; i != v7; ++i)
          {
            v25 = 0;
            do
            {
              v12[v25] = *(v14 + v25);
              ++v25;
            }

            while (v15 > v25);
            v12 += 32;
            v14 += v13;
          }
        }

        else if (v19)
        {
          for (j = 0; j != v7; ++j)
          {
            v23 = 0;
            do
            {
              v12[v23] = *(v14 + v23);
              ++v23;
            }

            while (v15 > v23);
            v12 += 32;
            v14 += v13;
          }
        }

        else
        {
          v27 = v15 & 0x1FFFFFFF8;
          if (v8 > 0xF)
          {
            v30 = v15 & 0x1FFFFFFE0;
            if (v15 == (v15 & 0x1FFFFFFE0))
            {
              v31 = 0;
              v32 = &v59[v10 + 16 + v11];
              v33 = (v14 + 16);
              do
              {
                v34 = v33;
                v35 = v32;
                v36 = v15;
                do
                {
                  v4 = *(v34 - 1);
                  v5 = *v34;
                  *(v35 - 1) = v4;
                  *v35 = v5;
                  v35 += 2;
                  v34 += 2;
                  v36 -= 32;
                }

                while (v36);
                ++v31;
                v32 += 32;
                v33 = (v33 + v13);
              }

              while (v31 != v7);
            }

            else
            {
              v44 = 0;
              v45 = v8 & 0xC;
              v46 = &v59[v10 + v11];
              v47 = &v59[v10 + 16 + v11];
              v48 = (v14 + 16);
              v49 = (v14 + v30);
              v50 = &v46[v30];
              do
              {
                v51 = v48;
                v52 = v47;
                v53 = v15 & 0x1FFFFFFE0;
                do
                {
                  v4 = *(v51 - 1);
                  v5 = *v51;
                  *(v52 - 1) = v4;
                  *v52 = v5;
                  v52 += 2;
                  v51 += 2;
                  v53 -= 32;
                }

                while (v53);
                v54 = v15 & 0x1FFFFFFE0;
                if (!v45)
                {
                  goto LABEL_64;
                }

                v55 = v50;
                v56 = v49;
                v57 = v27 - v30;
                do
                {
                  v58 = *v56++;
                  *&v4 = v58;
                  *v55++ = v58;
                  v57 -= 8;
                }

                while (v57);
                v54 = v15 & 0x1FFFFFFF8;
                if (v15 != v27)
                {
LABEL_64:
                  do
                  {
                    v12[v54] = *(v14 + v54);
                    ++v54;
                  }

                  while (v15 > v54);
                }

                ++v44;
                v47 += 32;
                v48 = (v48 + v13);
                v49 = (v49 + v13);
                v50 += 4;
                v12 += 32;
                v14 += v13;
              }

              while (v44 != v7);
            }
          }

          else if (v15 == v27)
          {
            v28 = (v14 + 16);
            v29 = &v59[v10 + 16 + v11];
            do
            {
              *&v4 = *(v28 - 2);
              *(v29 - 2) = v4;
              if (v8 != 4)
              {
                *&v4 = *(v28 - 1);
                *(v29 - 1) = v4;
                if (v8 != 8)
                {
                  *&v4 = *v28;
                  *v29 = *v28;
                }
              }

              v28 = (v28 + v13);
              v29 += 4;
              --v7;
            }

            while (v7);
          }

          else
          {
            for (k = 0; k != v7; ++k)
            {
              v38 = (v14 + v13 * k);
              v39 = &v12[32 * k];
              *&v4 = *v38;
              *v39 = *v38;
              if (v27 != 8)
              {
                *&v4 = v38[1];
                v39[1] = v4;
                if (v27 != 16)
                {
                  *&v4 = v38[2];
                  v39[2] = v4;
                }
              }

              v40 = v39 + v27;
              v41 = v38 + v27;
              v42 = v15 & 0x18;
              do
              {
                v43 = *v41++;
                *v40++ = v43;
                ++v42;
              }

              while (v15 > v42);
            }
          }
        }
      }

      else
      {
        for (m = 0; m != v7; ++m)
        {
          v21 = 0;
          do
          {
            v12[v21] = *(v14 + v21);
            ++v21;
          }

          while (v21 < v15);
          v12 += 32;
          v14 += v13;
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v59, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *&v4, *&v5, v6);
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj8ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v50[97] = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(v3 + 208) + 52);
  v6 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v47, 512, v2, *v4, v5);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v48, 512, v6, v4[1], v5);
  v8 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v49, 512, v7, v4[2], v5);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::decompressSubblock(v50, 512, v7 + v8, v4[3], v5);
  v10 = *(a1 + 80);
  if (v10)
  {
    v11 = *(a1 + 84);
    if (v11)
    {
      v12 = *(a1 + 72);
      v13 = *(a1 + 76) << 7;
      v14 = &v47[512 * v12 + v13];
      v16 = *(a1 + 56);
      v15 = *(a1 + 64);
      v17 = v11 << 7;
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

    if (v34 >= 2)
    {
      v38 = 2;
    }

    else
    {
      v38 = v34;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v32, v33, v47, 512, v38, v37, v36);
    v32 += result;
  }

  else
  {
    *v33 = 0;
  }

  v39 = v34 - 2;
  if (v34 >= 3 && v35)
  {
    if (v35 >= 2)
    {
      v40 = 2;
    }

    else
    {
      v40 = v35;
    }

    if (v39 >= 2)
    {
      v41 = 2;
    }

    else
    {
      v41 = v34 - 2;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v32, v33 + 1, v48, 512, v41, v40, v36);
    v32 += result;
    v42 = v35 - 2;
  }

  else
  {
    v33[1] = 0;
    v42 = v35 - 2;
    if (!v34)
    {
      goto LABEL_58;
    }
  }

  if (v35 >= 3)
  {
    if (v42 >= 2)
    {
      v43 = 2;
    }

    else
    {
      v43 = v42;
    }

    if (v34 >= 2)
    {
      v44 = 2;
    }

    else
    {
      v44 = v34;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v32, v33 + 2, v49, 512, v44, v43, v36);
    v32 += result;
    if (v34 < 3)
    {
      goto LABEL_67;
    }

    goto LABEL_59;
  }

LABEL_58:
  v33[2] = 0;
  if (v34 < 3)
  {
LABEL_67:
    v33[3] = 0;
    return result;
  }

LABEL_59:
  if (v35 < 3)
  {
    goto LABEL_67;
  }

  if (v42 >= 2)
  {
    v45 = 2;
  }

  else
  {
    v45 = v42;
  }

  if (v39 >= 2)
  {
    v46 = 2;
  }

  else
  {
    v46 = v34 - 2;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>::compressSubblock(v32, v33 + 3, v50, 512, v46, v45, v36);
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(v3 + 208) + 52);
  v6 = &byte_29D2F30E1;
  v7 = 16;
  do
  {
    v9 = &v35[1024 * *v6 + 128 * *(v6 - 1)];
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
          v9[32] = v11;
          v9[33] = v11;
          v9[34] = v11;
          v9[35] = v11;
          v9[36] = v11;
          v9[37] = v11;
          v9[38] = v11;
          v9[39] = v11;
          v8 = 8;
        }

        else
        {
          v8 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v9, 512, v2, v10);
        }
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v9, 512, v2, v10, v5);
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
      v9[32] = 0u;
      v9[33] = 0u;
      v9[34] = 0u;
      v9[35] = 0u;
      v9[36] = 0u;
      v9[37] = 0u;
      v9[38] = 0u;
      v9[39] = 0u;
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
      v15 = *(a1 + 76) << 6;
      v16 = &v35[512 * v14 + v15];
      v18 = *(a1 + 56);
      v17 = *(a1 + 64);
      v19 = v13 << 6;
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
          v16 += 512;
          v18 += v17;
        }
      }

      else if (v18 < &v35[512 * v12 - 512 + 512 * v14 + v19 + v15] && v16 < v18 + v17 * (v12 - 1) + v19 || v17 < 0)
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
          v16 += 512;
          v18 += v17;
        }
      }

      else
      {
        v27 = 0;
        v28 = &v35[512 * v14 + 16 + v15];
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
          v28 += 512;
          v29 = (v29 + v17);
        }

        while (v27 != v12);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v35, 512, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v3 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int16x8_t a2, __n128 a3)
{
  v50 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(*(v5 + 208) + 52);
  v8 = &byte_29D2F30E1;
  v9 = 16;
  do
  {
    v11 = &v49[256 * *v8 + 32 * *(v8 - 1)];
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
          v11[1] = a3;
          v11[8] = v13;
          v11[9] = v14;
          v10 = 64;
        }

        else if (v12 == 1)
        {
          a2 = vld1q_dup_s16(v4);
          *v11 = a2;
          v11[1] = a2;
          v11[8] = a2;
          v11[9] = a2;
          v10 = 2;
        }

        else
        {
          v10 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v11, 128, v4, v12, *a2.i8, a3.n128_u64[0]);
        }
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v11, 128, v4, v12, v7);
        v10 = 32;
      }
    }

    else
    {
      v10 = 0;
      a2.i64[0] = 0;
      *v11 = 0u;
      v11[1] = 0u;
      v11[8] = 0u;
      v11[9] = 0u;
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
      v18 = v17 << 7;
      v19 = 16 * *(a1 + 76);
      v20 = &v49[128 * v17 + v19];
      v22 = *(a1 + 56);
      v21 = *(a1 + 64);
      v23 = 16 * *(a1 + 84);
      if ((v23 - 1) >> 32)
      {
        v24 = 1;
      }

      else
      {
        v24 = 16 * v16 == 0;
      }

      if (v24)
      {
        for (i = 0; i != v15; ++i)
        {
          v26 = 0;
          do
          {
            *(v20 + v26) = *(v22 + v26);
            ++v26;
          }

          while (v23 > v26);
          v20 += 8;
          v22 = (v22 + v21);
        }
      }

      else if (v22 < &v49[128 * v15 - 128 + 128 * v17 + v23 + v19] && v20 < (v22 + v21 * (v15 - 1) + v23) || v21 < 0)
      {
        for (j = 0; j != v15; ++j)
        {
          v30 = 0;
          do
          {
            *(v20 + v30) = *(v22 + v30);
            ++v30;
          }

          while (v23 > v30);
          v20 += 8;
          v22 = (v22 + v21);
        }
      }

      else if (v16 == 1)
      {
        do
        {
          *v20 = *v22;
          v20 += 8;
          v22 = (v22 + v21);
          --v15;
        }

        while (v15);
      }

      else
      {
        v32 = 0;
        v33 = &v49[v18 + v19];
        v34 = &v49[v18 + 16 + v19];
        v35 = v22 + 1;
        v36 = (v22 + (v23 & 0x1FFFFFFE0));
        v37 = &v33[v23 & 0x1FFFFFFE0];
        do
        {
          v38 = v35;
          v39 = v34;
          v40 = v23 & 0x1FFFFFFE0;
          do
          {
            v41 = *v38;
            *(v39 - 1) = *(v38 - 1);
            *v39 = v41;
            v39 += 2;
            v38 += 2;
            v40 -= 32;
          }

          while (v40);
          if (v23 != (v23 & 0x1FFFFFFE0))
          {
            v42 = v37;
            v43 = v36;
            v44 = v23 - (v23 & 0x1FFFFFFE0);
            if (v16)
            {
              do
              {
                v48 = *v43++;
                *v42++ = v48;
                v44 -= 16;
              }

              while (v44);
            }

            else
            {
              v45 = 0;
              v46 = (v23 & 0xFFFFFFE0) + 1;
              do
              {
                *(v37 + v45) = *(v36 + v45);
                v47 = v23 > v46++;
                ++v45;
              }

              while (v47);
            }
          }

          ++v32;
          v34 += 128;
          v35 = (v35 + v21);
          v36 = (v36 + v21);
          v37 += 8;
        }

        while (v32 != v15);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v49, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v5 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v26, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = *(a1 + 76) << 6;
      v7 = &v26[512 * v5 + v6];
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

      else if (v9 < &v26[512 * v3 - 512 + 512 * v5 + v10 + v6] && v7 < v9 + v8 * (v3 - 1) + v10 || v8 < 0)
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
        v19 = &v26[512 * v5 + 16 + v6];
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
          v19 += 512;
          v20 = (v20 + v8);
        }

        while (v18 != v3);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v26, 512, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(v3 + 208) + 52);
  v6 = &byte_29D2F30E1;
  v7 = 16;
  do
  {
    v9 = &v42[512 * *v6 + 64 * *(v6 - 1)];
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
          *(v9 + 2) = v13;
          *(v9 + 3) = v14;
          *(v9 + 16) = v15;
          *(v9 + 17) = v16;
          *(v9 + 18) = v17;
          *(v9 + 19) = v18;
          v8 = 128;
        }

        else if (v10 == 3)
        {
          v11 = vld1q_dup_f32(v2);
          *v9 = v11;
          *(v9 + 1) = v11;
          *(v9 + 2) = v11;
          *(v9 + 3) = v11;
          *(v9 + 16) = v11;
          *(v9 + 17) = v11;
          *(v9 + 18) = v11;
          *(v9 + 19) = v11;
          v8 = 4;
        }

        else
        {
          v8 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v9, 256, v2, v10);
        }
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v9, 256, v2, v10, v5);
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
      *(v9 + 16) = 0u;
      *(v9 + 17) = 0u;
      *(v9 + 18) = 0u;
      *(v9 + 19) = 0u;
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
      v22 = 32 * *(a1 + 76);
      v23 = &v42[256 * v21 + v22];
      v25 = *(a1 + 56);
      v24 = *(a1 + 64);
      v26 = 32 * v20;
      if ((v26 - 1) >> 32)
      {
        v27 = 1;
      }

      else
      {
        v27 = v26 == 0;
      }

      if (v27)
      {
        for (i = 0; i != v19; ++i)
        {
          v29 = 0;
          do
          {
            v23[v29] = *(v25 + v29);
            ++v29;
          }

          while (v26 > v29);
          v23 += 256;
          v25 += v24;
        }
      }

      else if (v25 < &v42[256 * v19 - 256 + 256 * v21 + v26 + v22] && v23 < v25 + v24 * (v19 - 1) + v26 || v24 < 0)
      {
        for (j = 0; j != v19; ++j)
        {
          v33 = 0;
          do
          {
            v23[v33] = *(v25 + v33);
            ++v33;
          }

          while (v26 > v33);
          v23 += 256;
          v25 += v24;
        }
      }

      else
      {
        v34 = 0;
        v35 = &v42[256 * v21 + 16 + v22];
        v36 = (v25 + 16);
        do
        {
          v37 = v36;
          v38 = v35;
          v39 = v26;
          do
          {
            v40 = *v37;
            *(v38 - 1) = *(v37 - 1);
            *v38 = v40;
            v38 += 2;
            v37 += 2;
            v39 -= 32;
          }

          while (v39);
          ++v34;
          v35 += 256;
          v36 = (v36 + v24);
        }

        while (v34 != v19);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v42, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v3 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(v26, *(a1 + 40), *(a1 + 48), *(*(v2 + 208) + 52));
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

      else if (v9 < &v26[16 * v3 - 16 + 16 * v5 + v10 / 0x10 + v6] && v7 < (v9 + v8 * (v3 - 1) + v10) || v8 < 0)
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v26, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v2 + 208) + 52));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int16x8_t a2, __n128 a3, __n128 a4, __n128 a5, int16x4_t a6, double a7, double a8, int16x4_t a9)
{
  v53 = *MEMORY[0x29EDCA608];
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(*(v11 + 208) + 52);
  v14 = &byte_29D2F30E1;
  v15 = 16;
  do
  {
    v17 = &v52[256 * *v14 + 32 * *(v14 - 1)];
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
          v17[1] = a3;
          v17[8] = a4;
          v17[9] = a5;
          v16 = 64;
        }

        else if (v18 == 1)
        {
          a2 = vld1q_dup_s16(v10);
          *v17 = a2;
          v17[1] = a2;
          v17[8] = a2;
          v17[9] = a2;
          v16 = 2;
        }

        else
        {
          v16 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v17, 128, v10, v18, *a2.i64, a3.n128_f64[0], a4.n128_f64[0], a5.n128_u64[0]);
        }
      }

      else
      {
        a2.i64[0] = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v17, 128, v10, v18, v13).u64[0];
        v16 = 32;
      }
    }

    else
    {
      v16 = 0;
      a2.i64[0] = 0;
      *v17 = 0u;
      v17[1] = 0u;
      v17[8] = 0u;
      v17[9] = 0u;
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
      v22 = v21 << 7;
      v23 = 16 * *(a1 + 76);
      v24 = &v52[128 * v21 + v23];
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
            v24->n128_u8[v30] = v26->n128_u8[v30];
            ++v30;
          }

          while (v27 > v30);
          v24 += 8;
          v26 = (v26 + v25);
        }
      }

      else if (v26 < &v52[128 * v19 - 128 + 128 * v21 + v27 + v23] && v24 < (v26 + v25 * (v19 - 1) + v27) || v25 < 0)
      {
        for (j = 0; j != v19; ++j)
        {
          v34 = 0;
          do
          {
            v24->n128_u8[v34] = v26->n128_u8[v34];
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
          a2 = *v26;
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
        v37 = &v52[v22 + v23];
        v38 = &v52[v22 + 16 + v23];
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
            a2 = v42[-1];
            a3 = *v42;
            v43[-1] = a2;
            *v43 = a3;
            v43 += 2;
            v42 += 2;
            v44 -= 32;
          }

          while (v44);
          if (v27 != (v27 & 0x1FFFFFFE0))
          {
            v45 = v41;
            v46 = v40;
            v47 = v27 - (v27 & 0x1FFFFFFE0);
            if (v20)
            {
              do
              {
                v51 = *v46++;
                a2.i64[0] = v51;
                *v45++ = v51;
                v47 -= 16;
              }

              while (v47);
            }

            else
            {
              v48 = 0;
              v49 = (v27 & 0xFFFFFFE0) + 1;
              do
              {
                *(v41 + v48) = *(v40 + v48);
                v50 = v27 > v49++;
                ++v48;
              }

              while (v50);
            }
          }

          ++v36;
          v38 += 8;
          v39 = (v39 + v25);
          v40 = (v40 + v25);
          v41 += 8;
        }

        while (v36 != v19);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v52, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v11 + 208) + 52), *a2.i8, a3.n128_u64[0], a4.n128_f64[0], a5.n128_f64[0], a6, a7, a8, a9);
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(v3 + 208) + 52);
  v6 = &byte_29D2F30E1;
  v7 = 16;
  do
  {
    v9 = &v42[512 * *v6 + 64 * *(v6 - 1)];
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
          *(v9 + 2) = v13;
          *(v9 + 3) = v14;
          *(v9 + 16) = v15;
          *(v9 + 17) = v16;
          *(v9 + 18) = v17;
          *(v9 + 19) = v18;
          v8 = 128;
        }

        else if (v10 == 3)
        {
          v11 = vld1q_dup_f32(v2);
          *v9 = v11;
          *(v9 + 1) = v11;
          *(v9 + 2) = v11;
          *(v9 + 3) = v11;
          *(v9 + 16) = v11;
          *(v9 + 17) = v11;
          *(v9 + 18) = v11;
          *(v9 + 19) = v11;
          v8 = 4;
        }

        else
        {
          v8 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(v9, 256, v2, v10);
        }
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(v9, 256, v2, v10, v5);
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
      *(v9 + 16) = 0u;
      *(v9 + 17) = 0u;
      *(v9 + 18) = 0u;
      *(v9 + 19) = 0u;
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
      v22 = 32 * *(a1 + 76);
      v23 = &v42[256 * v21 + v22];
      v25 = *(a1 + 56);
      v24 = *(a1 + 64);
      v26 = 32 * v20;
      if ((v26 - 1) >> 32)
      {
        v27 = 1;
      }

      else
      {
        v27 = v26 == 0;
      }

      if (v27)
      {
        for (i = 0; i != v19; ++i)
        {
          v29 = 0;
          do
          {
            v23[v29] = *(v25 + v29);
            ++v29;
          }

          while (v26 > v29);
          v23 += 256;
          v25 += v24;
        }
      }

      else if (v25 < &v42[256 * v19 - 256 + 256 * v21 + v26 + v22] && v23 < v25 + v24 * (v19 - 1) + v26 || v24 < 0)
      {
        for (j = 0; j != v19; ++j)
        {
          v33 = 0;
          do
          {
            v23[v33] = *(v25 + v33);
            ++v33;
          }

          while (v26 > v33);
          v23 += 256;
          v25 += v24;
        }
      }

      else
      {
        v34 = 0;
        v35 = &v42[256 * v21 + 16 + v22];
        v36 = (v25 + 16);
        do
        {
          v37 = v36;
          v38 = v35;
          v39 = v26;
          do
          {
            v40 = *v37;
            *(v38 - 1) = *(v37 - 1);
            *v38 = v40;
            v38 += 2;
            v37 += 2;
            v39 -= 32;
          }

          while (v39);
          ++v34;
          v35 += 256;
          v36 = (v36 + v24);
        }

        while (v34 != v19);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(v42, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *(*(v3 + 208) + 52));
}