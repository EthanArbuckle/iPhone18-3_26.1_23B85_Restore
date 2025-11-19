unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = 2 * *(a1 + 76);
      v6 = &v25[16 * v4 + v5];
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = 32 * v3;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            v6->i8[v12] = v8->i8[v12];
            ++v12;
          }

          while (v9 > v12);
          v6 += 16;
          v8 = (v8 + v7);
        }
      }

      else if (v8 < &v25[16 * v2 - 16 + 16 * v4 + v9 / 0x10 + v5] && v6 < (v8 + v7 * (v2 - 1) + v9) || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            v6->i8[v16] = v8->i8[v16];
            ++v16;
          }

          while (v9 > v16);
          v6 += 16;
          v8 = (v8 + v7);
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[16 * v4 + 1 + v5];
        v19 = v8 + 1;
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            v21[-1] = v20[-1];
            *v21 = v23;
            v21 += 2;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 16;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v46, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = 2 * *(a1 + 76);
      v7 = &v46[16 * v5 + v6];
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

      else
      {
        result = v10 + v6 * 16;
        if (v9 < &v46[16 * v3 - 16 + 16 * v5 + v10 / 0x10 + v6] && v7 < (v9 + v8 * (v3 - 1) + v10) || v8 < 0)
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
          v19 = &v46[16 * v5 + 1 + v6];
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
  }

  v25 = *(a1 + 40);
  v26 = *(a1 + 48);
  v27 = *(a1 + 88);
  v28 = &byte_29D2F30E1;
  v29 = 16;
  v30 = *(a1 + 89);
  do
  {
    v43 = *v28;
    v44 = *(v28 - 1);
    if (v27 <= 2 * v44 || 2 * v43 >= v30)
    {
      v42 = 0;
    }

    else
    {
      v31 = &v46[32 * v43 + 4 * v44];
      v33 = *v31;
      v34 = v31[1];
      v32 = v31 + 2;
      v35 = v31 + 16;
      v31 += 18;
      v36 = *v32;
      v37 = v32[1];
      v38 = *v35;
      v39 = v35[1];
      v40 = *v31;
      v41 = v31[1];
      *v25 = v33;
      v25[1] = v34;
      v25[2] = v36;
      v25[3] = v37;
      v25[4] = v38;
      v25[5] = v39;
      v25[6] = v40;
      v25[7] = v41;
      v25 += 8;
      v42 = 127;
    }

    *v26++ = v42;
    v28 += 2;
    v29 -= 2;
  }

  while (v29);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = 2 * *(a1 + 76);
      v6 = &v25[16 * v4 + v5];
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = 32 * v3;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            v6->i8[v12] = v8->i8[v12];
            ++v12;
          }

          while (v9 > v12);
          v6 += 16;
          v8 = (v8 + v7);
        }
      }

      else if (v8 < &v25[16 * v2 - 16 + 16 * v4 + v9 / 0x10 + v5] && v6 < (v8 + v7 * (v2 - 1) + v9) || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            v6->i8[v16] = v8->i8[v16];
            ++v16;
          }

          while (v9 > v16);
          v6 += 16;
          v8 = (v8 + v7);
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[16 * v4 + 1 + v5];
        v19 = v8 + 1;
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            v21[-1] = v20[-1];
            *v21 = v23;
            v21 += 2;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 16;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, double a3)
{
  v90 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(&v68, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = *(a1 + 84);
    if (v6)
    {
      v7 = *(a1 + 72);
      v8 = v7 << 6;
      v9 = 8 * *(a1 + 76);
      v10 = &v69[4 * v7 - 1] + v9;
      v12 = *(a1 + 56);
      v11 = *(a1 + 64);
      v13 = 8 * *(a1 + 84);
      result = (v13 - 1) >> 32;
      if (result)
      {
        v14 = 1;
      }

      else
      {
        v14 = 8 * v6 == 0;
      }

      if (v14)
      {
        for (i = 0; i != v5; ++i)
        {
          v16 = 0;
          do
          {
            v10[v16] = *(v12 + v16);
            ++v16;
          }

          while (v13 > v16);
          v10 += 64;
          v12 += v11;
        }
      }

      else
      {
        result = v13 + v9;
        if (v12 < &v69[4 * v5 - 5 + 4 * v7] + v13 + v9 && v10 < v12 + v11 * (v5 - 1) + v13 || v11 < 0)
        {
          for (j = 0; j != v5; ++j)
          {
            v20 = 0;
            do
            {
              v10[v20] = *(v12 + v20);
              ++v20;
            }

            while (v13 > v20);
            v10 += 64;
            v12 += v11;
          }
        }

        else if (v6 >= 4)
        {
          v51 = 0;
          v52 = v6 & 3;
          v53 = &v69[-1] + v8 + v9;
          v54 = v69 + v8 + v9;
          v55 = (v12 + 16);
          v56 = (v12 + (v13 & 0x1FFFFFFE0));
          result = &v53[v13 & 0x1FFFFFFE0];
          do
          {
            v57 = v55;
            v58 = v54;
            v59 = v13 & 0x1FFFFFFE0;
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
            if (v13 != (v13 & 0x1FFFFFFE0))
            {
              v61 = result;
              v62 = v56;
              v63 = v13 - (v13 & 0x1FFFFFFE0);
              if (v52)
              {
                do
                {
                  v64 = *v62++;
                  *v61++ = v64;
                  v63 -= 8;
                }

                while (v63);
              }

              else
              {
                v65 = 0;
                v66 = (v13 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v65) = *(v56 + v65);
                  v67 = v13 > v66++;
                  ++v65;
                }

                while (v67);
              }
            }

            ++v51;
            v54 += 64;
            v55 = (v55 + v11);
            v56 = (v56 + v11);
            result += 64;
          }

          while (v51 != v5);
        }

        else
        {
          v49 = (v12 + 16);
          v50 = (v69 + v8 + v9);
          do
          {
            *(v50 - 2) = *(v49 - 2);
            if (v6 != 1)
            {
              *(v50 - 1) = *(v49 - 1);
              if (v6 != 2)
              {
                *v50 = *v49;
              }
            }

            v49 = (v49 + v11);
            v50 += 8;
            --v5;
          }

          while (v5);
        }
      }
    }
  }

  v21 = 0;
  v23 = *(a1 + 40);
  v22 = *(a1 + 48);
  v24 = *(a1 + 88);
  v25 = *(a1 + 89);
  if (*(a1 + 88) && *(a1 + 89))
  {
    v26 = v70;
    v27 = v71;
    *v23 = v68;
    *(v23 + 16) = v26;
    *(v23 + 24) = v27;
    v23 += 32;
    v21 = 31;
  }

  v28 = 0;
  *v22 = v21;
  if (v24 >= 3 && v25)
  {
    v29 = v72;
    v30 = v73;
    *v23 = v69[0];
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;
    v23 += 32;
    v28 = 31;
  }

  v31 = 0;
  v22[1] = v28;
  if (v24 && v25 >= 3)
  {
    v32 = v82;
    v33 = v83;
    *v23 = v78;
    *(v23 + 16) = v32;
    *(v23 + 24) = v33;
    v23 += 32;
    v31 = 31;
  }

  v34 = 0;
  v22[2] = v31;
  if (v24 >= 3 && v25 >= 3)
  {
    v35 = v84;
    v36 = v85;
    *v23 = v79;
    *(v23 + 16) = v35;
    *(v23 + 24) = v36;
    v23 += 32;
    v34 = 31;
  }

  v37 = 0;
  v22[3] = v34;
  if (v24 >= 5 && v25)
  {
    v38 = v74;
    v39 = v75;
    *v23 = v69[1];
    *(v23 + 16) = v38;
    *(v23 + 24) = v39;
    v23 += 32;
    v37 = 31;
  }

  v40 = 0;
  v22[4] = v37;
  if (v24 >= 7 && v25)
  {
    v41 = v76;
    v42 = v77;
    *v23 = v69[2];
    *(v23 + 16) = v41;
    *(v23 + 24) = v42;
    v23 += 32;
    v40 = 31;
  }

  v43 = 0;
  v22[5] = v40;
  if (v24 >= 5 && v25 >= 3)
  {
    v44 = v86;
    v45 = v87;
    *v23 = v80;
    *(v23 + 16) = v44;
    *(v23 + 24) = v45;
    v23 += 32;
    v43 = 31;
  }

  v46 = 0;
  v22[6] = v43;
  if (v24 >= 7 && v25 >= 3)
  {
    v47 = v88;
    v48 = v89;
    *v23 = v81;
    *(v23 + 16) = v47;
    *(v23 + 24) = v48;
    v46 = 31;
  }

  v22[7] = v46;
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, double a3)
{
  v44 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v43, *(a1 + 40), *(a1 + 48), a2, a3);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 84);
    if (v8)
    {
      v9 = *(a1 + 72);
      v10 = v9 << 6;
      v11 = 8 * *(a1 + 76);
      v12 = &v43[64 * v9 + v11];
      v14 = *(a1 + 56);
      v13 = *(a1 + 64);
      v15 = 8 * *(a1 + 84);
      if ((v15 - 1) >> 32)
      {
        v16 = 1;
      }

      else
      {
        v16 = 8 * v8 == 0;
      }

      if (v16)
      {
        for (i = 0; i != v7; ++i)
        {
          v18 = 0;
          do
          {
            v12[v18] = *(v14 + v18);
            ++v18;
          }

          while (v15 > v18);
          v12 += 64;
          v14 += v13;
        }
      }

      else if (v14 < &v43[64 * v7 - 64 + 64 * v9 + v15 + v11] && v12 < v14 + v13 * (v7 - 1) + v15 || v13 < 0)
      {
        for (j = 0; j != v7; ++j)
        {
          v22 = 0;
          do
          {
            v12[v22] = *(v14 + v22);
            ++v22;
          }

          while (v15 > v22);
          v12 += 64;
          v14 += v13;
        }
      }

      else if (v8 >= 4)
      {
        v26 = 0;
        v27 = v8 & 3;
        v28 = &v43[v10 + v11];
        v29 = &v43[v10 + 16 + v11];
        v30 = (v14 + 16);
        v31 = (v14 + (v15 & 0x1FFFFFFE0));
        v32 = &v28[v15 & 0x1FFFFFFE0];
        do
        {
          v33 = v30;
          v34 = v29;
          v35 = v15 & 0x1FFFFFFE0;
          do
          {
            v4 = *(v33 - 1);
            v5 = *v33;
            *(v34 - 1) = v4;
            *v34 = v5;
            v34 += 2;
            v33 += 2;
            v35 -= 32;
          }

          while (v35);
          if (v15 != (v15 & 0x1FFFFFFE0))
          {
            v36 = v32;
            v37 = v31;
            v38 = v15 - (v15 & 0x1FFFFFFE0);
            if (v27)
            {
              do
              {
                v39 = *v37++;
                *&v4 = v39;
                *v36++ = v39;
                v38 -= 8;
              }

              while (v38);
            }

            else
            {
              v40 = 0;
              v41 = (v15 & 0xFFFFFFE0) + 1;
              do
              {
                *(v32 + v40) = *(v31 + v40);
                v42 = v15 > v41++;
                ++v40;
              }

              while (v42);
            }
          }

          ++v26;
          v29 += 64;
          v30 = (v30 + v13);
          v31 = (v31 + v13);
          v32 += 8;
        }

        while (v26 != v7);
      }

      else
      {
        v24 = (v14 + 16);
        v25 = &v43[v10 + 16 + v11];
        do
        {
          *&v4 = *(v24 - 2);
          *(v25 - 2) = v4;
          if (v8 != 1)
          {
            *&v4 = *(v24 - 1);
            *(v25 - 1) = v4;
            if (v8 != 2)
            {
              *&v4 = *v24;
              *v25 = *v24;
            }
          }

          v24 = (v24 + v13);
          v25 += 8;
          --v7;
        }

        while (v7);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v43, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *&v4, *&v5, v6);
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj8ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, double a3)
{
  v90 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(&v68, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = *(a1 + 84);
    if (v6)
    {
      v7 = *(a1 + 72);
      v8 = v7 << 6;
      v9 = 8 * *(a1 + 76);
      v10 = &v69[4 * v7 - 1] + v9;
      v12 = *(a1 + 56);
      v11 = *(a1 + 64);
      v13 = 8 * *(a1 + 84);
      result = (v13 - 1) >> 32;
      if (result)
      {
        v14 = 1;
      }

      else
      {
        v14 = 8 * v6 == 0;
      }

      if (v14)
      {
        for (i = 0; i != v5; ++i)
        {
          v16 = 0;
          do
          {
            v10[v16] = *(v12 + v16);
            ++v16;
          }

          while (v13 > v16);
          v10 += 64;
          v12 += v11;
        }
      }

      else
      {
        result = v13 + v9;
        if (v12 < &v69[4 * v5 - 5 + 4 * v7] + v13 + v9 && v10 < v12 + v11 * (v5 - 1) + v13 || v11 < 0)
        {
          for (j = 0; j != v5; ++j)
          {
            v20 = 0;
            do
            {
              v10[v20] = *(v12 + v20);
              ++v20;
            }

            while (v13 > v20);
            v10 += 64;
            v12 += v11;
          }
        }

        else if (v6 >= 4)
        {
          v51 = 0;
          v52 = v6 & 3;
          v53 = &v69[-1] + v8 + v9;
          v54 = v69 + v8 + v9;
          v55 = (v12 + 16);
          v56 = (v12 + (v13 & 0x1FFFFFFE0));
          result = &v53[v13 & 0x1FFFFFFE0];
          do
          {
            v57 = v55;
            v58 = v54;
            v59 = v13 & 0x1FFFFFFE0;
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
            if (v13 != (v13 & 0x1FFFFFFE0))
            {
              v61 = result;
              v62 = v56;
              v63 = v13 - (v13 & 0x1FFFFFFE0);
              if (v52)
              {
                do
                {
                  v64 = *v62++;
                  *v61++ = v64;
                  v63 -= 8;
                }

                while (v63);
              }

              else
              {
                v65 = 0;
                v66 = (v13 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v65) = *(v56 + v65);
                  v67 = v13 > v66++;
                  ++v65;
                }

                while (v67);
              }
            }

            ++v51;
            v54 += 64;
            v55 = (v55 + v11);
            v56 = (v56 + v11);
            result += 64;
          }

          while (v51 != v5);
        }

        else
        {
          v49 = (v12 + 16);
          v50 = (v69 + v8 + v9);
          do
          {
            *(v50 - 2) = *(v49 - 2);
            if (v6 != 1)
            {
              *(v50 - 1) = *(v49 - 1);
              if (v6 != 2)
              {
                *v50 = *v49;
              }
            }

            v49 = (v49 + v11);
            v50 += 8;
            --v5;
          }

          while (v5);
        }
      }
    }
  }

  v21 = 0;
  v23 = *(a1 + 40);
  v22 = *(a1 + 48);
  v24 = *(a1 + 88);
  v25 = *(a1 + 89);
  if (*(a1 + 88) && *(a1 + 89))
  {
    v26 = v70;
    v27 = v71;
    *v23 = v68;
    *(v23 + 16) = v26;
    *(v23 + 24) = v27;
    v23 += 32;
    v21 = 31;
  }

  v28 = 0;
  *v22 = v21;
  if (v24 >= 3 && v25)
  {
    v29 = v72;
    v30 = v73;
    *v23 = v69[0];
    *(v23 + 16) = v29;
    *(v23 + 24) = v30;
    v23 += 32;
    v28 = 31;
  }

  v31 = 0;
  v22[1] = v28;
  if (v24 && v25 >= 3)
  {
    v32 = v82;
    v33 = v83;
    *v23 = v78;
    *(v23 + 16) = v32;
    *(v23 + 24) = v33;
    v23 += 32;
    v31 = 31;
  }

  v34 = 0;
  v22[2] = v31;
  if (v24 >= 3 && v25 >= 3)
  {
    v35 = v84;
    v36 = v85;
    *v23 = v79;
    *(v23 + 16) = v35;
    *(v23 + 24) = v36;
    v23 += 32;
    v34 = 31;
  }

  v37 = 0;
  v22[3] = v34;
  if (v24 >= 5 && v25)
  {
    v38 = v74;
    v39 = v75;
    *v23 = v69[1];
    *(v23 + 16) = v38;
    *(v23 + 24) = v39;
    v23 += 32;
    v37 = 31;
  }

  v40 = 0;
  v22[4] = v37;
  if (v24 >= 7 && v25)
  {
    v41 = v76;
    v42 = v77;
    *v23 = v69[2];
    *(v23 + 16) = v41;
    *(v23 + 24) = v42;
    v23 += 32;
    v40 = 31;
  }

  v43 = 0;
  v22[5] = v40;
  if (v24 >= 5 && v25 >= 3)
  {
    v44 = v86;
    v45 = v87;
    *v23 = v80;
    *(v23 + 16) = v44;
    *(v23 + 24) = v45;
    v23 += 32;
    v43 = 31;
  }

  v46 = 0;
  v22[6] = v43;
  if (v24 >= 7 && v25 >= 3)
  {
    v47 = v88;
    v48 = v89;
    *v23 = v81;
    *(v23 + 16) = v47;
    *(v23 + 24) = v48;
    v46 = 31;
  }

  v22[7] = v46;
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj8ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, double a3)
{
  v44 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v43, *(a1 + 40), *(a1 + 48), a2, a3);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 84);
    if (v8)
    {
      v9 = *(a1 + 72);
      v10 = v9 << 6;
      v11 = 8 * *(a1 + 76);
      v12 = &v43[64 * v9 + v11];
      v14 = *(a1 + 56);
      v13 = *(a1 + 64);
      v15 = 8 * *(a1 + 84);
      if ((v15 - 1) >> 32)
      {
        v16 = 1;
      }

      else
      {
        v16 = 8 * v8 == 0;
      }

      if (v16)
      {
        for (i = 0; i != v7; ++i)
        {
          v18 = 0;
          do
          {
            v12[v18] = *(v14 + v18);
            ++v18;
          }

          while (v15 > v18);
          v12 += 64;
          v14 += v13;
        }
      }

      else if (v14 < &v43[64 * v7 - 64 + 64 * v9 + v15 + v11] && v12 < v14 + v13 * (v7 - 1) + v15 || v13 < 0)
      {
        for (j = 0; j != v7; ++j)
        {
          v22 = 0;
          do
          {
            v12[v22] = *(v14 + v22);
            ++v22;
          }

          while (v15 > v22);
          v12 += 64;
          v14 += v13;
        }
      }

      else if (v8 >= 4)
      {
        v26 = 0;
        v27 = v8 & 3;
        v28 = &v43[v10 + v11];
        v29 = &v43[v10 + 16 + v11];
        v30 = (v14 + 16);
        v31 = (v14 + (v15 & 0x1FFFFFFE0));
        v32 = &v28[v15 & 0x1FFFFFFE0];
        do
        {
          v33 = v30;
          v34 = v29;
          v35 = v15 & 0x1FFFFFFE0;
          do
          {
            v4 = *(v33 - 1);
            v5 = *v33;
            *(v34 - 1) = v4;
            *v34 = v5;
            v34 += 2;
            v33 += 2;
            v35 -= 32;
          }

          while (v35);
          if (v15 != (v15 & 0x1FFFFFFE0))
          {
            v36 = v32;
            v37 = v31;
            v38 = v15 - (v15 & 0x1FFFFFFE0);
            if (v27)
            {
              do
              {
                v39 = *v37++;
                *&v4 = v39;
                *v36++ = v39;
                v38 -= 8;
              }

              while (v38);
            }

            else
            {
              v40 = 0;
              v41 = (v15 & 0xFFFFFFE0) + 1;
              do
              {
                *(v32 + v40) = *(v31 + v40);
                v42 = v15 > v41++;
                ++v40;
              }

              while (v42);
            }
          }

          ++v26;
          v29 += 64;
          v30 = (v30 + v13);
          v31 = (v31 + v13);
          v32 += 8;
        }

        while (v26 != v7);
      }

      else
      {
        v24 = (v14 + 16);
        v25 = &v43[v10 + 16 + v11];
        do
        {
          *&v4 = *(v24 - 2);
          *(v25 - 2) = v4;
          if (v8 != 1)
          {
            *&v4 = *(v24 - 1);
            *(v25 - 1) = v4;
            if (v8 != 2)
            {
              *&v4 = *v24;
              *v25 = *v24;
            }
          }

          v24 = (v24 + v13);
          v25 += 8;
          --v7;
        }

        while (v7);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v43, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *&v4, *&v5, v6);
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj4ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v30, 512, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v32, 512, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v31, 512, v5, v3[2]);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v33, 512, v5 + v6, v3[3]);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 84);
    if (v8)
    {
      v9 = *(a1 + 72);
      v10 = *(a1 + 76) << 6;
      v11 = &v30[32 * v9] + v10;
      v13 = *(a1 + 56);
      v12 = *(a1 + 64);
      v14 = v8 << 6;
      if ((v14 - 1) >> 32)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14 == 0;
      }

      if (v15)
      {
        for (i = 0; i != v7; ++i)
        {
          v17 = 0;
          do
          {
            v11[v17] = *(v13 + v17);
            ++v17;
          }

          while (v14 > v17);
          v11 += 512;
          v13 += v12;
        }
      }

      else if (v13 < &v30[32 * v7 - 32 + 32 * v9] + v14 + v10 && v11 < v13 + v12 * (v7 - 1) + v14 || v12 < 0)
      {
        for (j = 0; j != v7; ++j)
        {
          v21 = 0;
          do
          {
            v11[v21] = *(v13 + v21);
            ++v21;
          }

          while (v14 > v21);
          v11 += 512;
          v13 += v12;
        }
      }

      else
      {
        v22 = 0;
        v23 = &v30[32 * v9 + 1] + v10;
        v24 = (v13 + 16);
        do
        {
          v25 = v24;
          v26 = v23;
          v27 = v14;
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
          ++v22;
          v23 += 512;
          v24 = (v24 + v12);
        }

        while (v22 != v7);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressMacroblock(v30, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj4ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v30, 512, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v32, 512, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v31, 512, v5, v3[2]);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v33, 512, v5 + v6, v3[3]);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 84);
    if (v8)
    {
      v9 = *(a1 + 72);
      v10 = *(a1 + 76) << 6;
      v11 = &v30[32 * v9] + v10;
      v13 = *(a1 + 56);
      v12 = *(a1 + 64);
      v14 = v8 << 6;
      if ((v14 - 1) >> 32)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14 == 0;
      }

      if (v15)
      {
        for (i = 0; i != v7; ++i)
        {
          v17 = 0;
          do
          {
            v11[v17] = *(v13 + v17);
            ++v17;
          }

          while (v14 > v17);
          v11 += 512;
          v13 += v12;
        }
      }

      else if (v13 < &v30[32 * v7 - 32 + 32 * v9] + v14 + v10 && v11 < v13 + v12 * (v7 - 1) + v14 || v12 < 0)
      {
        for (j = 0; j != v7; ++j)
        {
          v21 = 0;
          do
          {
            v11[v21] = *(v13 + v21);
            ++v21;
          }

          while (v14 > v21);
          v11 += 512;
          v13 += v12;
        }
      }

      else
      {
        v22 = 0;
        v23 = &v30[32 * v9 + 1] + v10;
        v24 = (v13 + 16);
        do
        {
          v25 = v24;
          v26 = v23;
          v27 = v14;
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
          ++v22;
          v23 += 512;
          v24 = (v24 + v12);
        }

        while (v22 != v7);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressMacroblock(v30, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj4ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v30, 512, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v32, 512, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v31, 512, v5, v3[2]);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v33, 512, v5 + v6, v3[3]);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 84);
    if (v8)
    {
      v9 = *(a1 + 72);
      v10 = *(a1 + 76) << 6;
      v11 = &v30[32 * v9] + v10;
      v13 = *(a1 + 56);
      v12 = *(a1 + 64);
      v14 = v8 << 6;
      if ((v14 - 1) >> 32)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14 == 0;
      }

      if (v15)
      {
        for (i = 0; i != v7; ++i)
        {
          v17 = 0;
          do
          {
            v11[v17] = *(v13 + v17);
            ++v17;
          }

          while (v14 > v17);
          v11 += 512;
          v13 += v12;
        }
      }

      else if (v13 < &v30[32 * v7 - 32 + 32 * v9] + v14 + v10 && v11 < v13 + v12 * (v7 - 1) + v14 || v12 < 0)
      {
        for (j = 0; j != v7; ++j)
        {
          v21 = 0;
          do
          {
            v11[v21] = *(v13 + v21);
            ++v21;
          }

          while (v14 > v21);
          v11 += 512;
          v13 += v12;
        }
      }

      else
      {
        v22 = 0;
        v23 = &v30[32 * v9 + 1] + v10;
        v24 = (v13 + 16);
        do
        {
          v25 = v24;
          v26 = v23;
          v27 = v14;
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
          ++v22;
          v23 += 512;
          v24 = (v24 + v12);
        }

        while (v22 != v7);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressMacroblock(v30, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj4ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v30, 512, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v32, 512, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v31, 512, v5, v3[2]);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v33, 512, v5 + v6, v3[3]);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 84);
    if (v8)
    {
      v9 = *(a1 + 72);
      v10 = *(a1 + 76) << 6;
      v11 = &v30[32 * v9] + v10;
      v13 = *(a1 + 56);
      v12 = *(a1 + 64);
      v14 = v8 << 6;
      if ((v14 - 1) >> 32)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14 == 0;
      }

      if (v15)
      {
        for (i = 0; i != v7; ++i)
        {
          v17 = 0;
          do
          {
            v11[v17] = *(v13 + v17);
            ++v17;
          }

          while (v14 > v17);
          v11 += 512;
          v13 += v12;
        }
      }

      else if (v13 < &v30[32 * v7 - 32 + 32 * v9] + v14 + v10 && v11 < v13 + v12 * (v7 - 1) + v14 || v12 < 0)
      {
        for (j = 0; j != v7; ++j)
        {
          v21 = 0;
          do
          {
            v11[v21] = *(v13 + v21);
            ++v21;
          }

          while (v14 > v21);
          v11 += 512;
          v13 += v12;
        }
      }

      else
      {
        v22 = 0;
        v23 = &v30[32 * v9 + 1] + v10;
        v24 = (v13 + 16);
        do
        {
          v25 = v24;
          v26 = v23;
          v27 = v14;
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
          ++v22;
          v23 += 512;
          v24 = (v24 + v12);
        }

        while (v22 != v7);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressMacroblock(v30, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v56, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 7;
      v7 = 16 * *(a1 + 76);
      v8 = &v56[8 * v5 + v7 / 0x10];
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
          v8 += 8;
          v10 = (v10 + v9);
        }
      }

      else
      {
        result = v11 + v7;
        if (v10 < &v56[8 * v3 - 8 + 8 * v5 + v11 / 0x10 + v7 / 0x10] && v8 < (v10 + v9 * (v3 - 1) + v11) || v9 < 0)
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
          v40 = 0;
          v41 = v56 + v6 + v7;
          v42 = &v56[1] + v6 + v7;
          v43 = &v10[1];
          v44 = (v10 + (v11 & 0x1FFFFFFE0));
          result = &v41[v11 & 0x1FFFFFFE0];
          do
          {
            v45 = v43;
            v46 = v42;
            v47 = v11 & 0x1FFFFFFE0;
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
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v49 = result;
              v50 = v44;
              v51 = v11 - (v11 & 0x1FFFFFFE0);
              if (v4)
              {
                do
                {
                  v55 = *v50++;
                  *v49++ = v55;
                  v51 -= 16;
                }

                while (v51);
              }

              else
              {
                v52 = 0;
                v53 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v52) = *(v44 + v52);
                  v54 = v11 > v53++;
                  ++v52;
                }

                while (v54);
              }
            }

            ++v40;
            v42 += 128;
            v43 = (v43 + v9);
            v44 = (v44 + v9);
            result += 128;
          }

          while (v40 != v3);
        }
      }
    }
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 88);
  v22 = &byte_29D2F2FE5;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v37 = *v22;
    v38 = *(v22 - 1);
    if (v21 <= 4 * v38 || 2 * v37 >= v24)
    {
      v36 = 0;
    }

    else
    {
      v25 = &v56[16 * v37 + 4 * v38];
      v27 = *v25;
      v28 = v25[1];
      v26 = v25 + 2;
      v29 = v25 + 8;
      v25 += 10;
      v30 = *v26;
      v31 = v26[1];
      v32 = *v29;
      v33 = v29[1];
      v34 = *v25;
      v35 = v25[1];
      *v19 = v27;
      v19[1] = v28;
      v19[2] = v32;
      v19[3] = v33;
      v19[4] = v30;
      v19[5] = v31;
      v19[6] = v34;
      v19[7] = v35;
      v19 += 8;
      v36 = 127;
    }

    *v20++ = v36;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v36, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 7;
      v6 = *(a1 + 76);
      v7 = &v36[8 * v4 + v6];
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
            v7->i8[v13] = v9->i8[v13];
            ++v13;
          }

          while (v10 > v13);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v9 < &v36[8 * v2 - 8 + 8 * v4 + v10 / 0x10 + v6] && v7 < (v9 + v8 * (v2 - 1) + v10) || v8 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v17 = 0;
          do
          {
            v7->i8[v17] = v9->i8[v17];
            ++v17;
          }

          while (v10 > v17);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v3 == 1)
      {
        do
        {
          *v7 = *v9;
          v7 += 8;
          v9 = (v9 + v8);
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
          v21 += 128;
          v22 = (v22 + v8);
          v23 = (v23 + v8);
          v24 += 128;
        }

        while (v19 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v36, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v56, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 7;
      v7 = 16 * *(a1 + 76);
      v8 = &v56[8 * v5 + v7 / 0x10];
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
          v8 += 8;
          v10 = (v10 + v9);
        }
      }

      else
      {
        result = v11 + v7;
        if (v10 < &v56[8 * v3 - 8 + 8 * v5 + v11 / 0x10 + v7 / 0x10] && v8 < (v10 + v9 * (v3 - 1) + v11) || v9 < 0)
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
          v40 = 0;
          v41 = v56 + v6 + v7;
          v42 = &v56[1] + v6 + v7;
          v43 = &v10[1];
          v44 = (v10 + (v11 & 0x1FFFFFFE0));
          result = &v41[v11 & 0x1FFFFFFE0];
          do
          {
            v45 = v43;
            v46 = v42;
            v47 = v11 & 0x1FFFFFFE0;
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
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v49 = result;
              v50 = v44;
              v51 = v11 - (v11 & 0x1FFFFFFE0);
              if (v4)
              {
                do
                {
                  v55 = *v50++;
                  *v49++ = v55;
                  v51 -= 16;
                }

                while (v51);
              }

              else
              {
                v52 = 0;
                v53 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v52) = *(v44 + v52);
                  v54 = v11 > v53++;
                  ++v52;
                }

                while (v54);
              }
            }

            ++v40;
            v42 += 128;
            v43 = (v43 + v9);
            v44 = (v44 + v9);
            result += 128;
          }

          while (v40 != v3);
        }
      }
    }
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 88);
  v22 = &byte_29D2F2FE5;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v37 = *v22;
    v38 = *(v22 - 1);
    if (v21 <= 4 * v38 || 2 * v37 >= v24)
    {
      v36 = 0;
    }

    else
    {
      v25 = &v56[16 * v37 + 4 * v38];
      v27 = *v25;
      v28 = v25[1];
      v26 = v25 + 2;
      v29 = v25 + 8;
      v25 += 10;
      v30 = *v26;
      v31 = v26[1];
      v32 = *v29;
      v33 = v29[1];
      v34 = *v25;
      v35 = v25[1];
      *v19 = v27;
      v19[1] = v28;
      v19[2] = v32;
      v19[3] = v33;
      v19[4] = v30;
      v19[5] = v31;
      v19[6] = v34;
      v19[7] = v35;
      v19 += 8;
      v36 = 127;
    }

    *v20++ = v36;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v36, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 7;
      v6 = *(a1 + 76);
      v7 = &v36[8 * v4 + v6];
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
            v7->i8[v13] = v9->i8[v13];
            ++v13;
          }

          while (v10 > v13);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v9 < &v36[8 * v2 - 8 + 8 * v4 + v10 / 0x10 + v6] && v7 < (v9 + v8 * (v2 - 1) + v10) || v8 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v17 = 0;
          do
          {
            v7->i8[v17] = v9->i8[v17];
            ++v17;
          }

          while (v10 > v17);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v3 == 1)
      {
        do
        {
          *v7 = *v9;
          v7 += 8;
          v9 = (v9 + v8);
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
          v21 += 128;
          v22 = (v22 + v8);
          v23 = (v23 + v8);
          v24 += 128;
        }

        while (v19 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v36, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v56, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 7;
      v7 = 16 * *(a1 + 76);
      v8 = &v56[128 * v5 + v7];
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
            *(v8 + v14) = *(v10 + v14);
            ++v14;
          }

          while (v11 > v14);
          v8 += 8;
          v10 = (v10 + v9);
        }
      }

      else
      {
        result = v11 + v7;
        if (v10 < &v56[128 * v3 - 128 + 128 * v5 + v11 + v7] && v8 < (v10 + v9 * (v3 - 1) + v11) || v9 < 0)
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
          v40 = 0;
          v41 = &v56[v6 + v7];
          v42 = &v56[v6 + 16 + v7];
          v43 = v10 + 1;
          v44 = (v10 + (v11 & 0x1FFFFFFE0));
          result = &v41[v11 & 0x1FFFFFFE0];
          do
          {
            v45 = v43;
            v46 = v42;
            v47 = v11 & 0x1FFFFFFE0;
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
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v49 = result;
              v50 = v44;
              v51 = v11 - (v11 & 0x1FFFFFFE0);
              if (v4)
              {
                do
                {
                  v55 = *v50++;
                  *v49++ = v55;
                  v51 -= 16;
                }

                while (v51);
              }

              else
              {
                v52 = 0;
                v53 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v52) = *(v44 + v52);
                  v54 = v11 > v53++;
                  ++v52;
                }

                while (v54);
              }
            }

            ++v40;
            v42 += 128;
            v43 = (v43 + v9);
            v44 = (v44 + v9);
            result += 128;
          }

          while (v40 != v3);
        }
      }
    }
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 88);
  v22 = &byte_29D2F2FE5;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v37 = *v22;
    v38 = *(v22 - 1);
    if (v21 <= 4 * v38 || 2 * v37 >= v24)
    {
      v36 = 0;
    }

    else
    {
      v25 = &v56[256 * v37 + 64 * v38];
      v27 = *v25;
      v28 = v25[1];
      v26 = v25 + 2;
      v29 = v25 + 8;
      v25 += 10;
      v30 = *v26;
      v31 = v26[1];
      v32 = *v29;
      v33 = v29[1];
      v34 = *v25;
      v35 = v25[1];
      *v19 = v27;
      v19[1] = v28;
      v19[2] = v32;
      v19[3] = v33;
      v19[4] = v30;
      v19[5] = v31;
      v19[6] = v34;
      v19[7] = v35;
      v19 += 8;
      v36 = 127;
    }

    *v20++ = v36;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v36, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 7;
      v6 = 16 * *(a1 + 76);
      v7 = &v36[128 * v4 + v6];
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
            *(v7 + v13) = *(v9 + v13);
            ++v13;
          }

          while (v10 > v13);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v9 < &v36[128 * v2 - 128 + 128 * v4 + v10 + v6] && v7 < (v9 + v8 * (v2 - 1) + v10) || v8 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v17 = 0;
          do
          {
            *(v7 + v17) = *(v9 + v17);
            ++v17;
          }

          while (v10 > v17);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v3 == 1)
      {
        do
        {
          *v7 = *v9;
          v7 += 8;
          v9 = (v9 + v8);
          --v2;
        }

        while (v2);
      }

      else
      {
        v19 = 0;
        v20 = &v36[v5 + v6];
        v21 = &v36[v5 + 16 + v6];
        v22 = v9 + 1;
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
                *v29++ = v35;
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
                *(v24 + v32) = *(v23 + v32);
                v34 = v10 > v33++;
                ++v32;
              }

              while (v34);
            }
          }

          ++v19;
          v21 += 128;
          v22 = (v22 + v8);
          v23 = (v23 + v8);
          v24 += 8;
        }

        while (v19 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v36, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v56, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 7;
      v7 = 16 * *(a1 + 76);
      v8 = &v56[128 * v5 + v7];
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
            *(v8 + v14) = *(v10 + v14);
            ++v14;
          }

          while (v11 > v14);
          v8 += 8;
          v10 = (v10 + v9);
        }
      }

      else
      {
        result = v11 + v7;
        if (v10 < &v56[128 * v3 - 128 + 128 * v5 + v11 + v7] && v8 < (v10 + v9 * (v3 - 1) + v11) || v9 < 0)
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
          v40 = 0;
          v41 = &v56[v6 + v7];
          v42 = &v56[v6 + 16 + v7];
          v43 = v10 + 1;
          v44 = (v10 + (v11 & 0x1FFFFFFE0));
          result = &v41[v11 & 0x1FFFFFFE0];
          do
          {
            v45 = v43;
            v46 = v42;
            v47 = v11 & 0x1FFFFFFE0;
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
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v49 = result;
              v50 = v44;
              v51 = v11 - (v11 & 0x1FFFFFFE0);
              if (v4)
              {
                do
                {
                  v55 = *v50++;
                  *v49++ = v55;
                  v51 -= 16;
                }

                while (v51);
              }

              else
              {
                v52 = 0;
                v53 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v52) = *(v44 + v52);
                  v54 = v11 > v53++;
                  ++v52;
                }

                while (v54);
              }
            }

            ++v40;
            v42 += 128;
            v43 = (v43 + v9);
            v44 = (v44 + v9);
            result += 128;
          }

          while (v40 != v3);
        }
      }
    }
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 88);
  v22 = &byte_29D2F2FE5;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v37 = *v22;
    v38 = *(v22 - 1);
    if (v21 <= 4 * v38 || 2 * v37 >= v24)
    {
      v36 = 0;
    }

    else
    {
      v25 = &v56[256 * v37 + 64 * v38];
      v27 = *v25;
      v28 = v25[1];
      v26 = v25 + 2;
      v29 = v25 + 8;
      v25 += 10;
      v30 = *v26;
      v31 = v26[1];
      v32 = *v29;
      v33 = v29[1];
      v34 = *v25;
      v35 = v25[1];
      *v19 = v27;
      v19[1] = v28;
      v19[2] = v32;
      v19[3] = v33;
      v19[4] = v30;
      v19[5] = v31;
      v19[6] = v34;
      v19[7] = v35;
      v19 += 8;
      v36 = 127;
    }

    *v20++ = v36;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v36, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 7;
      v6 = 16 * *(a1 + 76);
      v7 = &v36[128 * v4 + v6];
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
            *(v7 + v13) = *(v9 + v13);
            ++v13;
          }

          while (v10 > v13);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v9 < &v36[128 * v2 - 128 + 128 * v4 + v10 + v6] && v7 < (v9 + v8 * (v2 - 1) + v10) || v8 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v17 = 0;
          do
          {
            *(v7 + v17) = *(v9 + v17);
            ++v17;
          }

          while (v10 > v17);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v3 == 1)
      {
        do
        {
          *v7 = *v9;
          v7 += 8;
          v9 = (v9 + v8);
          --v2;
        }

        while (v2);
      }

      else
      {
        v19 = 0;
        v20 = &v36[v5 + v6];
        v21 = &v36[v5 + 16 + v6];
        v22 = v9 + 1;
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
                *v29++ = v35;
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
                *(v24 + v32) = *(v23 + v32);
                v34 = v10 > v33++;
                ++v32;
              }

              while (v34);
            }
          }

          ++v19;
          v21 += 128;
          v22 = (v22 + v8);
          v23 = (v23 + v8);
          v24 += 8;
        }

        while (v19 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v36, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v52, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 6;
      v7 = 8 * *(a1 + 76);
      v8 = &v52[4 * v5].i8[v7];
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
          v8 += 64;
          v10 += v9;
        }
      }

      else
      {
        result = v11 + v7;
        if (v10 < &v52[4 * v3 - 4 + 4 * v5].u64[v11 / 8 + v7 / 8] && v8 < v10 + v9 * (v3 - 1) + v11 || v9 < 0)
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
            v8 += 64;
            v10 += v9;
          }
        }

        else if (v4 >= 4)
        {
          v35 = 0;
          v36 = v4 & 3;
          v37 = &v52[0].i8[v6 + v7];
          v38 = &v52[1].i8[v6 + v7];
          v39 = (v10 + 16);
          v40 = (v10 + (v11 & 0x1FFFFFFE0));
          result = &v37[v11 & 0x1FFFFFFE0];
          do
          {
            v41 = v39;
            v42 = v38;
            v43 = v11 & 0x1FFFFFFE0;
            do
            {
              v44 = *v41;
              *(v42 - 1) = *(v41 - 1);
              *v42 = v44;
              v42 += 32;
              v41 += 2;
              v43 -= 32;
            }

            while (v43);
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v45 = result;
              v46 = v40;
              v47 = v11 - (v11 & 0x1FFFFFFE0);
              if (v36)
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
                v50 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v49) = *(v40 + v49);
                  v51 = v11 > v50++;
                  ++v49;
                }

                while (v51);
              }
            }

            ++v35;
            v38 += 64;
            v39 = (v39 + v9);
            v40 = (v40 + v9);
            result += 64;
          }

          while (v35 != v3);
        }

        else
        {
          v33 = (v10 + 16);
          v34 = (v52[1].i64 + v6 + v7);
          do
          {
            *(v34 - 2) = *(v33 - 2);
            if (v4 != 1)
            {
              *(v34 - 1) = *(v33 - 1);
              if (v4 != 2)
              {
                *v34 = *v33;
              }
            }

            v33 = (v33 + v9);
            v34 += 8;
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
  v22 = &byte_29D2F2FE5;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v30 = *v22;
    v31 = *(v22 - 1);
    if (v21 <= 4 * v31 || 2 * v30 >= v24)
    {
      v29 = 0;
    }

    else
    {
      v25 = &v52[8 * v30 + 2 * v31];
      v26 = v25[1];
      v27 = v25[4];
      v28 = v25[5];
      *v19 = *v25;
      v19[1] = v27;
      v19[2] = v26;
      v19[3] = v28;
      v19 += 4;
      v29 = 63;
    }

    *v20++ = v29;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v39, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 6;
      v6 = 8 * *(a1 + 76);
      v7 = &v39[4 * v4].i8[v6];
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
          v7 += 64;
          v9 += v8;
        }
      }

      else if (v9 < &v39[4 * v2 - 4 + 4 * v4].u64[v10 / 8 + v6 / 8] && v7 < v9 + v8 * (v2 - 1) + v10 || v8 < 0)
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
          v7 += 64;
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
          v24 += 64;
          v25 = (v25 + v8);
          v26 = (v26 + v8);
          v27 += 64;
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
          v20 += 8;
          --v2;
        }

        while (v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v39, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v52, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 6;
      v7 = 8 * *(a1 + 76);
      v8 = &v52[4 * v5].i8[v7];
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
          v8 += 64;
          v10 += v9;
        }
      }

      else
      {
        result = v11 + v7;
        if (v10 < &v52[4 * v3 - 4 + 4 * v5].u64[v11 / 8 + v7 / 8] && v8 < v10 + v9 * (v3 - 1) + v11 || v9 < 0)
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
            v8 += 64;
            v10 += v9;
          }
        }

        else if (v4 >= 4)
        {
          v35 = 0;
          v36 = v4 & 3;
          v37 = &v52[0].i8[v6 + v7];
          v38 = &v52[1].i8[v6 + v7];
          v39 = (v10 + 16);
          v40 = (v10 + (v11 & 0x1FFFFFFE0));
          result = &v37[v11 & 0x1FFFFFFE0];
          do
          {
            v41 = v39;
            v42 = v38;
            v43 = v11 & 0x1FFFFFFE0;
            do
            {
              v44 = *v41;
              *(v42 - 1) = *(v41 - 1);
              *v42 = v44;
              v42 += 32;
              v41 += 2;
              v43 -= 32;
            }

            while (v43);
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v45 = result;
              v46 = v40;
              v47 = v11 - (v11 & 0x1FFFFFFE0);
              if (v36)
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
                v50 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v49) = *(v40 + v49);
                  v51 = v11 > v50++;
                  ++v49;
                }

                while (v51);
              }
            }

            ++v35;
            v38 += 64;
            v39 = (v39 + v9);
            v40 = (v40 + v9);
            result += 64;
          }

          while (v35 != v3);
        }

        else
        {
          v33 = (v10 + 16);
          v34 = (v52[1].i64 + v6 + v7);
          do
          {
            *(v34 - 2) = *(v33 - 2);
            if (v4 != 1)
            {
              *(v34 - 1) = *(v33 - 1);
              if (v4 != 2)
              {
                *v34 = *v33;
              }
            }

            v33 = (v33 + v9);
            v34 += 8;
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
  v22 = &byte_29D2F2FE5;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v30 = *v22;
    v31 = *(v22 - 1);
    if (v21 <= 4 * v31 || 2 * v30 >= v24)
    {
      v29 = 0;
    }

    else
    {
      v25 = &v52[8 * v30 + 2 * v31];
      v26 = v25[1];
      v27 = v25[4];
      v28 = v25[5];
      *v19 = *v25;
      v19[1] = v27;
      v19[2] = v26;
      v19[3] = v28;
      v19 += 4;
      v29 = 63;
    }

    *v20++ = v29;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v39, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 6;
      v6 = 8 * *(a1 + 76);
      v7 = &v39[4 * v4].i8[v6];
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
          v7 += 64;
          v9 += v8;
        }
      }

      else if (v9 < &v39[4 * v2 - 4 + 4 * v4].u64[v10 / 8 + v6 / 8] && v7 < v9 + v8 * (v2 - 1) + v10 || v8 < 0)
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
          v7 += 64;
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
          v24 += 64;
          v25 = (v25 + v8);
          v26 = (v26 + v8);
          v27 += 64;
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
          v20 += 8;
          --v2;
        }

        while (v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v39, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v52, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 6;
      v7 = 8 * *(a1 + 76);
      v8 = &v52[4 * v5].i8[v7];
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
          v8 += 64;
          v10 += v9;
        }
      }

      else
      {
        result = v11 + v7;
        if (v10 < &v52[4 * v3 - 4 + 4 * v5].u64[v11 / 8 + v7 / 8] && v8 < v10 + v9 * (v3 - 1) + v11 || v9 < 0)
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
            v8 += 64;
            v10 += v9;
          }
        }

        else if (v4 >= 4)
        {
          v35 = 0;
          v36 = v4 & 3;
          v37 = &v52[0].i8[v6 + v7];
          v38 = &v52[1].i8[v6 + v7];
          v39 = (v10 + 16);
          v40 = (v10 + (v11 & 0x1FFFFFFE0));
          result = &v37[v11 & 0x1FFFFFFE0];
          do
          {
            v41 = v39;
            v42 = v38;
            v43 = v11 & 0x1FFFFFFE0;
            do
            {
              v44 = *v41;
              *(v42 - 1) = *(v41 - 1);
              *v42 = v44;
              v42 += 32;
              v41 += 2;
              v43 -= 32;
            }

            while (v43);
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v45 = result;
              v46 = v40;
              v47 = v11 - (v11 & 0x1FFFFFFE0);
              if (v36)
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
                v50 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v49) = *(v40 + v49);
                  v51 = v11 > v50++;
                  ++v49;
                }

                while (v51);
              }
            }

            ++v35;
            v38 += 64;
            v39 = (v39 + v9);
            v40 = (v40 + v9);
            result += 64;
          }

          while (v35 != v3);
        }

        else
        {
          v33 = (v10 + 16);
          v34 = (v52[1].i64 + v6 + v7);
          do
          {
            *(v34 - 2) = *(v33 - 2);
            if (v4 != 1)
            {
              *(v34 - 1) = *(v33 - 1);
              if (v4 != 2)
              {
                *v34 = *v33;
              }
            }

            v33 = (v33 + v9);
            v34 += 8;
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
  v22 = &byte_29D2F2FE5;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v30 = *v22;
    v31 = *(v22 - 1);
    if (v21 <= 4 * v31 || 2 * v30 >= v24)
    {
      v29 = 0;
    }

    else
    {
      v25 = &v52[8 * v30 + 2 * v31];
      v26 = v25[1];
      v27 = v25[4];
      v28 = v25[5];
      *v19 = *v25;
      v19[1] = v27;
      v19[2] = v26;
      v19[3] = v28;
      v19 += 4;
      v29 = 63;
    }

    *v20++ = v29;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v39, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 6;
      v6 = 8 * *(a1 + 76);
      v7 = &v39[4 * v4].i8[v6];
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
          v7 += 64;
          v9 += v8;
        }
      }

      else if (v9 < &v39[4 * v2 - 4 + 4 * v4].u64[v10 / 8 + v6 / 8] && v7 < v9 + v8 * (v2 - 1) + v10 || v8 < 0)
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
          v7 += 64;
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
          v24 += 64;
          v25 = (v25 + v8);
          v26 = (v26 + v8);
          v27 += 64;
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
          v20 += 8;
          --v2;
        }

        while (v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v39, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v52, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 6;
      v7 = 8 * *(a1 + 76);
      v8 = &v52[4 * v5].i8[v7];
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
          v8 += 64;
          v10 += v9;
        }
      }

      else
      {
        result = v11 + v7;
        if (v10 < &v52[4 * v3 - 4 + 4 * v5].u64[v11 / 8 + v7 / 8] && v8 < v10 + v9 * (v3 - 1) + v11 || v9 < 0)
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
            v8 += 64;
            v10 += v9;
          }
        }

        else if (v4 >= 4)
        {
          v35 = 0;
          v36 = v4 & 3;
          v37 = &v52[0].i8[v6 + v7];
          v38 = &v52[1].i8[v6 + v7];
          v39 = (v10 + 16);
          v40 = (v10 + (v11 & 0x1FFFFFFE0));
          result = &v37[v11 & 0x1FFFFFFE0];
          do
          {
            v41 = v39;
            v42 = v38;
            v43 = v11 & 0x1FFFFFFE0;
            do
            {
              v44 = *v41;
              *(v42 - 1) = *(v41 - 1);
              *v42 = v44;
              v42 += 32;
              v41 += 2;
              v43 -= 32;
            }

            while (v43);
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v45 = result;
              v46 = v40;
              v47 = v11 - (v11 & 0x1FFFFFFE0);
              if (v36)
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
                v50 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v49) = *(v40 + v49);
                  v51 = v11 > v50++;
                  ++v49;
                }

                while (v51);
              }
            }

            ++v35;
            v38 += 64;
            v39 = (v39 + v9);
            v40 = (v40 + v9);
            result += 64;
          }

          while (v35 != v3);
        }

        else
        {
          v33 = (v10 + 16);
          v34 = (v52[1].i64 + v6 + v7);
          do
          {
            *(v34 - 2) = *(v33 - 2);
            if (v4 != 1)
            {
              *(v34 - 1) = *(v33 - 1);
              if (v4 != 2)
              {
                *v34 = *v33;
              }
            }

            v33 = (v33 + v9);
            v34 += 8;
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
  v22 = &byte_29D2F2FE5;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v30 = *v22;
    v31 = *(v22 - 1);
    if (v21 <= 4 * v31 || 2 * v30 >= v24)
    {
      v29 = 0;
    }

    else
    {
      v25 = &v52[8 * v30 + 2 * v31];
      v26 = v25[1];
      v27 = v25[4];
      v28 = v25[5];
      *v19 = *v25;
      v19[1] = v27;
      v19[2] = v26;
      v19[3] = v28;
      v19 += 4;
      v29 = 63;
    }

    *v20++ = v29;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v39, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 6;
      v6 = 8 * *(a1 + 76);
      v7 = &v39[4 * v4].i8[v6];
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
          v7 += 64;
          v9 += v8;
        }
      }

      else if (v9 < &v39[4 * v2 - 4 + 4 * v4].u64[v10 / 8 + v6 / 8] && v7 < v9 + v8 * (v2 - 1) + v10 || v8 < 0)
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
          v7 += 64;
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
          v24 += 64;
          v25 = (v25 + v8);
          v26 = (v26 + v8);
          v27 += 64;
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
          v20 += 8;
          --v2;
        }

        while (v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v39, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v52, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 6;
      v7 = 8 * *(a1 + 76);
      v8 = &v52[4 * v5].i8[v7];
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
          v8 += 64;
          v10 += v9;
        }
      }

      else
      {
        result = v11 + v7;
        if (v10 < &v52[4 * v3 - 4 + 4 * v5].u64[v11 / 8 + v7 / 8] && v8 < v10 + v9 * (v3 - 1) + v11 || v9 < 0)
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
            v8 += 64;
            v10 += v9;
          }
        }

        else if (v4 >= 4)
        {
          v35 = 0;
          v36 = v4 & 3;
          v37 = &v52[0].i8[v6 + v7];
          v38 = &v52[1].i8[v6 + v7];
          v39 = (v10 + 16);
          v40 = (v10 + (v11 & 0x1FFFFFFE0));
          result = &v37[v11 & 0x1FFFFFFE0];
          do
          {
            v41 = v39;
            v42 = v38;
            v43 = v11 & 0x1FFFFFFE0;
            do
            {
              v44 = *v41;
              *(v42 - 1) = *(v41 - 1);
              *v42 = v44;
              v42 += 32;
              v41 += 2;
              v43 -= 32;
            }

            while (v43);
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v45 = result;
              v46 = v40;
              v47 = v11 - (v11 & 0x1FFFFFFE0);
              if (v36)
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
                v50 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v49) = *(v40 + v49);
                  v51 = v11 > v50++;
                  ++v49;
                }

                while (v51);
              }
            }

            ++v35;
            v38 += 64;
            v39 = (v39 + v9);
            v40 = (v40 + v9);
            result += 64;
          }

          while (v35 != v3);
        }

        else
        {
          v33 = (v10 + 16);
          v34 = (v52[1].i64 + v6 + v7);
          do
          {
            *(v34 - 2) = *(v33 - 2);
            if (v4 != 1)
            {
              *(v34 - 1) = *(v33 - 1);
              if (v4 != 2)
              {
                *v34 = *v33;
              }
            }

            v33 = (v33 + v9);
            v34 += 8;
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
  v22 = &byte_29D2F2FE5;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v30 = *v22;
    v31 = *(v22 - 1);
    if (v21 <= 4 * v31 || 2 * v30 >= v24)
    {
      v29 = 0;
    }

    else
    {
      v25 = &v52[8 * v30 + 2 * v31];
      v26 = v25[1];
      v27 = v25[4];
      v28 = v25[5];
      *v19 = *v25;
      v19[1] = v27;
      v19[2] = v26;
      v19[3] = v28;
      v19 += 4;
      v29 = 63;
    }

    *v20++ = v29;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v39, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 6;
      v6 = 8 * *(a1 + 76);
      v7 = &v39[4 * v4].i8[v6];
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
          v7 += 64;
          v9 += v8;
        }
      }

      else if (v9 < &v39[4 * v2 - 4 + 4 * v4].u64[v10 / 8 + v6 / 8] && v7 < v9 + v8 * (v2 - 1) + v10 || v8 < 0)
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
          v7 += 64;
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
          v24 += 64;
          v25 = (v25 + v8);
          v26 = (v26 + v8);
          v27 += 64;
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
          v20 += 8;
          --v2;
        }

        while (v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v39, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v52, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 6;
      v7 = 8 * *(a1 + 76);
      v8 = &v52[4 * v5].i8[v7];
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
          v8 += 64;
          v10 += v9;
        }
      }

      else
      {
        result = v11 + v7;
        if (v10 < &v52[4 * v3 - 4 + 4 * v5].u64[v11 / 8 + v7 / 8] && v8 < v10 + v9 * (v3 - 1) + v11 || v9 < 0)
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
            v8 += 64;
            v10 += v9;
          }
        }

        else if (v4 >= 4)
        {
          v35 = 0;
          v36 = v4 & 3;
          v37 = &v52[0].i8[v6 + v7];
          v38 = &v52[1].i8[v6 + v7];
          v39 = (v10 + 16);
          v40 = (v10 + (v11 & 0x1FFFFFFE0));
          result = &v37[v11 & 0x1FFFFFFE0];
          do
          {
            v41 = v39;
            v42 = v38;
            v43 = v11 & 0x1FFFFFFE0;
            do
            {
              v44 = *v41;
              *(v42 - 1) = *(v41 - 1);
              *v42 = v44;
              v42 += 32;
              v41 += 2;
              v43 -= 32;
            }

            while (v43);
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v45 = result;
              v46 = v40;
              v47 = v11 - (v11 & 0x1FFFFFFE0);
              if (v36)
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
                v50 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v49) = *(v40 + v49);
                  v51 = v11 > v50++;
                  ++v49;
                }

                while (v51);
              }
            }

            ++v35;
            v38 += 64;
            v39 = (v39 + v9);
            v40 = (v40 + v9);
            result += 64;
          }

          while (v35 != v3);
        }

        else
        {
          v33 = (v10 + 16);
          v34 = (v52[1].i64 + v6 + v7);
          do
          {
            *(v34 - 2) = *(v33 - 2);
            if (v4 != 1)
            {
              *(v34 - 1) = *(v33 - 1);
              if (v4 != 2)
              {
                *v34 = *v33;
              }
            }

            v33 = (v33 + v9);
            v34 += 8;
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
  v22 = &byte_29D2F2FE5;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v30 = *v22;
    v31 = *(v22 - 1);
    if (v21 <= 4 * v31 || 2 * v30 >= v24)
    {
      v29 = 0;
    }

    else
    {
      v25 = &v52[8 * v30 + 2 * v31];
      v26 = v25[1];
      v27 = v25[4];
      v28 = v25[5];
      *v19 = *v25;
      v19[1] = v27;
      v19[2] = v26;
      v19[3] = v28;
      v19 += 4;
      v29 = 63;
    }

    *v20++ = v29;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v39, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 6;
      v6 = 8 * *(a1 + 76);
      v7 = &v39[4 * v4].i8[v6];
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
          v7 += 64;
          v9 += v8;
        }
      }

      else if (v9 < &v39[4 * v2 - 4 + 4 * v4].u64[v10 / 8 + v6 / 8] && v7 < v9 + v8 * (v2 - 1) + v10 || v8 < 0)
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
          v7 += 64;
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
          v24 += 64;
          v25 = (v25 + v8);
          v26 = (v26 + v8);
          v27 += 64;
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
          v20 += 8;
          --v2;
        }

        while (v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v39, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v52, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 6;
      v7 = 8 * *(a1 + 76);
      v8 = &v52[4 * v5].i8[v7];
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
          v8 += 64;
          v10 += v9;
        }
      }

      else
      {
        result = v11 + v7;
        if (v10 < &v52[4 * v3 - 4 + 4 * v5].u64[v11 / 8 + v7 / 8] && v8 < v10 + v9 * (v3 - 1) + v11 || v9 < 0)
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
            v8 += 64;
            v10 += v9;
          }
        }

        else if (v4 >= 4)
        {
          v35 = 0;
          v36 = v4 & 3;
          v37 = &v52[0].i8[v6 + v7];
          v38 = &v52[1].i8[v6 + v7];
          v39 = (v10 + 16);
          v40 = (v10 + (v11 & 0x1FFFFFFE0));
          result = &v37[v11 & 0x1FFFFFFE0];
          do
          {
            v41 = v39;
            v42 = v38;
            v43 = v11 & 0x1FFFFFFE0;
            do
            {
              v44 = *v41;
              *(v42 - 1) = *(v41 - 1);
              *v42 = v44;
              v42 += 32;
              v41 += 2;
              v43 -= 32;
            }

            while (v43);
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v45 = result;
              v46 = v40;
              v47 = v11 - (v11 & 0x1FFFFFFE0);
              if (v36)
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
                v50 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v49) = *(v40 + v49);
                  v51 = v11 > v50++;
                  ++v49;
                }

                while (v51);
              }
            }

            ++v35;
            v38 += 64;
            v39 = (v39 + v9);
            v40 = (v40 + v9);
            result += 64;
          }

          while (v35 != v3);
        }

        else
        {
          v33 = (v10 + 16);
          v34 = (v52[1].i64 + v6 + v7);
          do
          {
            *(v34 - 2) = *(v33 - 2);
            if (v4 != 1)
            {
              *(v34 - 1) = *(v33 - 1);
              if (v4 != 2)
              {
                *v34 = *v33;
              }
            }

            v33 = (v33 + v9);
            v34 += 8;
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
  v22 = &byte_29D2F2FE5;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v30 = *v22;
    v31 = *(v22 - 1);
    if (v21 <= 4 * v31 || 2 * v30 >= v24)
    {
      v29 = 0;
    }

    else
    {
      v25 = &v52[8 * v30 + 2 * v31];
      v26 = v25[1];
      v27 = v25[4];
      v28 = v25[5];
      *v19 = *v25;
      v19[1] = v27;
      v19[2] = v26;
      v19[3] = v28;
      v19 += 4;
      v29 = 63;
    }

    *v20++ = v29;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v39, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 6;
      v6 = 8 * *(a1 + 76);
      v7 = &v39[4 * v4].i8[v6];
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
          v7 += 64;
          v9 += v8;
        }
      }

      else if (v9 < &v39[4 * v2 - 4 + 4 * v4].u64[v10 / 8 + v6 / 8] && v7 < v9 + v8 * (v2 - 1) + v10 || v8 < 0)
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
          v7 += 64;
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
          v24 += 64;
          v25 = (v25 + v8);
          v26 = (v26 + v8);
          v27 += 64;
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
          v20 += 8;
          --v2;
        }

        while (v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v39, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v52, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 6;
      v7 = 8 * *(a1 + 76);
      v8 = &v52[4 * v5].i8[v7];
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
          v8 += 64;
          v10 += v9;
        }
      }

      else
      {
        result = v11 + v7;
        if (v10 < &v52[4 * v3 - 4 + 4 * v5].u64[v11 / 8 + v7 / 8] && v8 < v10 + v9 * (v3 - 1) + v11 || v9 < 0)
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
            v8 += 64;
            v10 += v9;
          }
        }

        else if (v4 >= 4)
        {
          v35 = 0;
          v36 = v4 & 3;
          v37 = &v52[0].i8[v6 + v7];
          v38 = &v52[1].i8[v6 + v7];
          v39 = (v10 + 16);
          v40 = (v10 + (v11 & 0x1FFFFFFE0));
          result = &v37[v11 & 0x1FFFFFFE0];
          do
          {
            v41 = v39;
            v42 = v38;
            v43 = v11 & 0x1FFFFFFE0;
            do
            {
              v44 = *v41;
              *(v42 - 1) = *(v41 - 1);
              *v42 = v44;
              v42 += 32;
              v41 += 2;
              v43 -= 32;
            }

            while (v43);
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v45 = result;
              v46 = v40;
              v47 = v11 - (v11 & 0x1FFFFFFE0);
              if (v36)
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
                v50 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v49) = *(v40 + v49);
                  v51 = v11 > v50++;
                  ++v49;
                }

                while (v51);
              }
            }

            ++v35;
            v38 += 64;
            v39 = (v39 + v9);
            v40 = (v40 + v9);
            result += 64;
          }

          while (v35 != v3);
        }

        else
        {
          v33 = (v10 + 16);
          v34 = (v52[1].i64 + v6 + v7);
          do
          {
            *(v34 - 2) = *(v33 - 2);
            if (v4 != 1)
            {
              *(v34 - 1) = *(v33 - 1);
              if (v4 != 2)
              {
                *v34 = *v33;
              }
            }

            v33 = (v33 + v9);
            v34 += 8;
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
  v22 = &byte_29D2F2FE5;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v30 = *v22;
    v31 = *(v22 - 1);
    if (v21 <= 4 * v31 || 2 * v30 >= v24)
    {
      v29 = 0;
    }

    else
    {
      v25 = &v52[8 * v30 + 2 * v31];
      v26 = v25[1];
      v27 = v25[4];
      v28 = v25[5];
      *v19 = *v25;
      v19[1] = v27;
      v19[2] = v26;
      v19[3] = v28;
      v19 += 4;
      v29 = 63;
    }

    *v20++ = v29;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v39, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 6;
      v6 = 8 * *(a1 + 76);
      v7 = &v39[4 * v4].i8[v6];
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
          v7 += 64;
          v9 += v8;
        }
      }

      else if (v9 < &v39[4 * v2 - 4 + 4 * v4].u64[v10 / 8 + v6 / 8] && v7 < v9 + v8 * (v2 - 1) + v10 || v8 < 0)
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
          v7 += 64;
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
          v24 += 64;
          v25 = (v25 + v8);
          v26 = (v26 + v8);
          v27 += 64;
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
          v20 += 8;
          --v2;
        }

        while (v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v39, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = 2 * *(a1 + 76);
      v6 = &v25[16 * v4 + v5];
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = 32 * v3;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            v6->i8[v12] = v8->i8[v12];
            ++v12;
          }

          while (v9 > v12);
          v6 += 16;
          v8 = (v8 + v7);
        }
      }

      else if (v8 < &v25[16 * v2 - 16 + 16 * v4 + v9 / 0x10 + v5] && v6 < &v8->i8[v7 * (v2 - 1) + v9] || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            v6->i8[v16] = v8->i8[v16];
            ++v16;
          }

          while (v9 > v16);
          v6 += 16;
          v8 = (v8 + v7);
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[16 * v4 + 1 + v5];
        v19 = v8 + 1;
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            v21[-1] = v20[-1];
            *v21 = v23;
            v21 += 2;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 16;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v27, *(a1 + 40), *(a1 + 48));
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 84);
    if (v5)
    {
      v6 = *(a1 + 72);
      v7 = 2 * *(a1 + 76);
      v8 = &v27[16 * v6 + v7];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 32 * v5;
      if ((v11 - 1) >> 32)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 == 0;
      }

      if (v12)
      {
        for (i = 0; i != v4; ++i)
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

      else if (v10 < &v27[16 * v4 - 16 + 16 * v6 + v11 / 0x10 + v7] && v8 < &v10->i8[v9 * (v4 - 1) + v11] || v9 < 0)
      {
        for (j = 0; j != v4; ++j)
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

      else
      {
        v19 = 0;
        v20 = &v27[16 * v6 + 1 + v7];
        v21 = v10 + 1;
        do
        {
          v22 = v21;
          v23 = v20;
          v24 = v11;
          do
          {
            v25 = *v22;
            v23[-1] = v22[-1];
            *v23 = v25;
            v23 += 2;
            v22 += 2;
            v24 -= 32;
          }

          while (v24);
          ++v19;
          v20 += 16;
          v21 = (v21 + v9);
        }

        while (v19 != v4);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v27, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), v2, v3);
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = 2 * *(a1 + 76);
      v6 = &v25[16 * v4 + v5];
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = 32 * v3;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            v6->i8[v12] = v8->i8[v12];
            ++v12;
          }

          while (v9 > v12);
          v6 += 16;
          v8 = (v8 + v7);
        }
      }

      else if (v8 < &v25[16 * v2 - 16 + 16 * v4 + v9 / 0x10 + v5] && v6 < &v8->i8[v7 * (v2 - 1) + v9] || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            v6->i8[v16] = v8->i8[v16];
            ++v16;
          }

          while (v9 > v16);
          v6 += 16;
          v8 = (v8 + v7);
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[16 * v4 + 1 + v5];
        v19 = v8 + 1;
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            v21[-1] = v20[-1];
            *v21 = v23;
            v21 += 2;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 16;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE19ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v27, *(a1 + 40), *(a1 + 48));
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 84);
    if (v5)
    {
      v6 = *(a1 + 72);
      v7 = 2 * *(a1 + 76);
      v8 = &v27[16 * v6 + v7];
      v10 = *(a1 + 56);
      v9 = *(a1 + 64);
      v11 = 32 * v5;
      if ((v11 - 1) >> 32)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 == 0;
      }

      if (v12)
      {
        for (i = 0; i != v4; ++i)
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

      else if (v10 < &v27[16 * v4 - 16 + 16 * v6 + v11 / 0x10 + v7] && v8 < &v10->i8[v9 * (v4 - 1) + v11] || v9 < 0)
      {
        for (j = 0; j != v4; ++j)
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

      else
      {
        v19 = 0;
        v20 = &v27[16 * v6 + 1 + v7];
        v21 = v10 + 1;
        do
        {
          v22 = v21;
          v23 = v20;
          v24 = v11;
          do
          {
            v25 = *v22;
            v23[-1] = v22[-1];
            *v23 = v25;
            v23 += 2;
            v22 += 2;
            v24 -= 32;
          }

          while (v24);
          ++v19;
          v20 += 16;
          v21 = (v21 + v9);
        }

        while (v19 != v4);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v27, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), v2, v3);
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FE5;
  v5 = 16;
  do
  {
    v8 = &v48[32 * *v4 + 8 * *(v4 - 1)];
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
      *v8 = *v2;
      v8[1] = v10;
      v8[2] = v11;
      v8[3] = v12;
      v8[4] = v17;
      v8[5] = v18;
      v8[6] = v19;
      v8[7] = v20;
      v8[16] = v13;
      v8[17] = v14;
      v8[18] = v15;
      v8[19] = v16;
      v7 = 256;
      v8[20] = v21;
      v8[21] = v22;
      v8[22] = v23;
      v8[23] = v24;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *v8 = v6;
      v8[1] = v6;
      v8[2] = v6;
      v8[3] = v6;
      v8[4] = v6;
      v8[5] = v6;
      v8[6] = v6;
      v8[7] = v6;
      v8[16] = v6;
      v8[17] = v6;
      v8[18] = v6;
      v8[19] = v6;
      v8[20] = v6;
      v8[21] = v6;
      v8[22] = v6;
      v8[23] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 256, v2, v9);
    }

    else
    {
      v7 = 0;
      v8[6] = 0u;
      v8[7] = 0u;
      v8[4] = 0u;
      v8[5] = 0u;
      v8[2] = 0u;
      v8[3] = 0u;
      *v8 = 0u;
      v8[1] = 0u;
      v8[16] = 0u;
      v8[17] = 0u;
      v8[18] = 0u;
      v8[19] = 0u;
      v8[20] = 0u;
      v8[21] = 0u;
      v8[22] = 0u;
      v8[23] = 0u;
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
      v28 = 2 * *(a1 + 76);
      v29 = &v48[16 * v27 + v28];
      v31 = *(a1 + 56);
      v30 = *(a1 + 64);
      v32 = 32 * v26;
      if ((v32 - 1) >> 32)
      {
        v33 = 1;
      }

      else
      {
        v33 = v32 == 0;
      }

      if (v33)
      {
        for (i = 0; i != v25; ++i)
        {
          v35 = 0;
          do
          {
            *(v29 + v35) = *(v31 + v35);
            ++v35;
          }

          while (v32 > v35);
          v29 += 16;
          v31 += v30;
        }
      }

      else if (v31 < &v48[16 * v25 - 16 + 16 * v27 + v32 / 0x10 + v28] && v29 < v31 + v30 * (v25 - 1) + v32 || v30 < 0)
      {
        for (j = 0; j != v25; ++j)
        {
          v39 = 0;
          do
          {
            *(v29 + v39) = *(v31 + v39);
            ++v39;
          }

          while (v32 > v39);
          v29 += 16;
          v31 += v30;
        }
      }

      else
      {
        v40 = 0;
        v41 = &v48[16 * v27 + 1 + v28];
        v42 = (v31 + 16);
        do
        {
          v43 = v42;
          v44 = v41;
          v45 = v32;
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
          v41 += 16;
          v42 = (v42 + v30);
        }

        while (v40 != v25);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v48, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FE5;
  v5 = 16;
  do
  {
    v8 = &v48[512 * *v4 + 128 * *(v4 - 1)];
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
      *v8 = *v2;
      v8[1] = v10;
      v8[2] = v11;
      v8[3] = v12;
      v8[4] = v17;
      v8[5] = v18;
      v8[6] = v19;
      v8[7] = v20;
      v8[16] = v13;
      v8[17] = v14;
      v8[18] = v15;
      v8[19] = v16;
      v7 = 256;
      v8[20] = v21;
      v8[21] = v22;
      v8[22] = v23;
      v8[23] = v24;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *v8 = v6;
      v8[1] = v6;
      v8[2] = v6;
      v8[3] = v6;
      v8[4] = v6;
      v8[5] = v6;
      v8[6] = v6;
      v8[7] = v6;
      v8[16] = v6;
      v8[17] = v6;
      v8[18] = v6;
      v8[19] = v6;
      v8[20] = v6;
      v8[21] = v6;
      v8[22] = v6;
      v8[23] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 256, v2, v9);
    }

    else
    {
      v7 = 0;
      v8[6] = 0u;
      v8[7] = 0u;
      v8[4] = 0u;
      v8[5] = 0u;
      v8[2] = 0u;
      v8[3] = 0u;
      *v8 = 0u;
      v8[1] = 0u;
      v8[16] = 0u;
      v8[17] = 0u;
      v8[18] = 0u;
      v8[19] = 0u;
      v8[20] = 0u;
      v8[21] = 0u;
      v8[22] = 0u;
      v8[23] = 0u;
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
      v28 = 32 * *(a1 + 76);
      v29 = &v48[256 * v27 + v28];
      v31 = *(a1 + 56);
      v30 = *(a1 + 64);
      v32 = 32 * v26;
      if ((v32 - 1) >> 32)
      {
        v33 = 1;
      }

      else
      {
        v33 = v32 == 0;
      }

      if (v33)
      {
        for (i = 0; i != v25; ++i)
        {
          v35 = 0;
          do
          {
            v29[v35] = *(v31 + v35);
            ++v35;
          }

          while (v32 > v35);
          v29 += 256;
          v31 += v30;
        }
      }

      else if (v31 < &v48[256 * v25 - 256 + 256 * v27 + v32 + v28] && v29 < v31 + v30 * (v25 - 1) + v32 || v30 < 0)
      {
        for (j = 0; j != v25; ++j)
        {
          v39 = 0;
          do
          {
            v29[v39] = *(v31 + v39);
            ++v39;
          }

          while (v32 > v39);
          v29 += 256;
          v31 += v30;
        }
      }

      else
      {
        v40 = 0;
        v41 = &v48[256 * v27 + 16 + v28];
        v42 = (v31 + 16);
        do
        {
          v43 = v42;
          v44 = v41;
          v45 = v32;
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
          v41 += 256;
          v42 = (v42 + v30);
        }

        while (v40 != v25);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v48, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FE5;
  v5 = 16;
  do
  {
    v8 = &v48[32 * *v4 + 8 * *(v4 - 1)];
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
      *v8 = *v2;
      v8[1] = v10;
      v8[2] = v11;
      v8[3] = v12;
      v8[4] = v17;
      v8[5] = v18;
      v8[6] = v19;
      v8[7] = v20;
      v8[16] = v13;
      v8[17] = v14;
      v8[18] = v15;
      v8[19] = v16;
      v7 = 256;
      v8[20] = v21;
      v8[21] = v22;
      v8[22] = v23;
      v8[23] = v24;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *v8 = v6;
      v8[1] = v6;
      v8[2] = v6;
      v8[3] = v6;
      v8[4] = v6;
      v8[5] = v6;
      v8[6] = v6;
      v8[7] = v6;
      v8[16] = v6;
      v8[17] = v6;
      v8[18] = v6;
      v8[19] = v6;
      v8[20] = v6;
      v8[21] = v6;
      v8[22] = v6;
      v8[23] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 256, v2, v9);
    }

    else
    {
      v7 = 0;
      v8[6] = 0u;
      v8[7] = 0u;
      v8[4] = 0u;
      v8[5] = 0u;
      v8[2] = 0u;
      v8[3] = 0u;
      *v8 = 0u;
      v8[1] = 0u;
      v8[16] = 0u;
      v8[17] = 0u;
      v8[18] = 0u;
      v8[19] = 0u;
      v8[20] = 0u;
      v8[21] = 0u;
      v8[22] = 0u;
      v8[23] = 0u;
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
      v28 = 2 * *(a1 + 76);
      v29 = &v48[16 * v27 + v28];
      v31 = *(a1 + 56);
      v30 = *(a1 + 64);
      v32 = 32 * v26;
      if ((v32 - 1) >> 32)
      {
        v33 = 1;
      }

      else
      {
        v33 = v32 == 0;
      }

      if (v33)
      {
        for (i = 0; i != v25; ++i)
        {
          v35 = 0;
          do
          {
            *(v29 + v35) = *(v31 + v35);
            ++v35;
          }

          while (v32 > v35);
          v29 += 16;
          v31 += v30;
        }
      }

      else if (v31 < &v48[16 * v25 - 16 + 16 * v27 + v32 / 0x10 + v28] && v29 < v31 + v30 * (v25 - 1) + v32 || v30 < 0)
      {
        for (j = 0; j != v25; ++j)
        {
          v39 = 0;
          do
          {
            *(v29 + v39) = *(v31 + v39);
            ++v39;
          }

          while (v32 > v39);
          v29 += 16;
          v31 += v30;
        }
      }

      else
      {
        v40 = 0;
        v41 = &v48[16 * v27 + 1 + v28];
        v42 = (v31 + 16);
        do
        {
          v43 = v42;
          v44 = v41;
          v45 = v32;
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
          v41 += 16;
          v42 = (v42 + v30);
        }

        while (v40 != v25);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v48, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE18ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F2FE5;
  v5 = 16;
  do
  {
    v8 = &v48[512 * *v4 + 128 * *(v4 - 1)];
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
      *v8 = *v2;
      v8[1] = v10;
      v8[2] = v11;
      v8[3] = v12;
      v8[4] = v17;
      v8[5] = v18;
      v8[6] = v19;
      v8[7] = v20;
      v8[16] = v13;
      v8[17] = v14;
      v8[18] = v15;
      v8[19] = v16;
      v7 = 256;
      v8[20] = v21;
      v8[21] = v22;
      v8[22] = v23;
      v8[23] = v24;
    }

    else if (v9 == 7)
    {
      v6 = vld1q_dup_f64(v2);
      *v8 = v6;
      v8[1] = v6;
      v8[2] = v6;
      v8[3] = v6;
      v8[4] = v6;
      v8[5] = v6;
      v8[6] = v6;
      v8[7] = v6;
      v8[16] = v6;
      v8[17] = v6;
      v8[18] = v6;
      v8[19] = v6;
      v8[20] = v6;
      v8[21] = v6;
      v8[22] = v6;
      v8[23] = v6;
      v7 = 8;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 256, v2, v9);
    }

    else
    {
      v7 = 0;
      v8[6] = 0u;
      v8[7] = 0u;
      v8[4] = 0u;
      v8[5] = 0u;
      v8[2] = 0u;
      v8[3] = 0u;
      *v8 = 0u;
      v8[1] = 0u;
      v8[16] = 0u;
      v8[17] = 0u;
      v8[18] = 0u;
      v8[19] = 0u;
      v8[20] = 0u;
      v8[21] = 0u;
      v8[22] = 0u;
      v8[23] = 0u;
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
      v28 = 32 * *(a1 + 76);
      v29 = &v48[256 * v27 + v28];
      v31 = *(a1 + 56);
      v30 = *(a1 + 64);
      v32 = 32 * v26;
      if ((v32 - 1) >> 32)
      {
        v33 = 1;
      }

      else
      {
        v33 = v32 == 0;
      }

      if (v33)
      {
        for (i = 0; i != v25; ++i)
        {
          v35 = 0;
          do
          {
            v29[v35] = *(v31 + v35);
            ++v35;
          }

          while (v32 > v35);
          v29 += 256;
          v31 += v30;
        }
      }

      else if (v31 < &v48[256 * v25 - 256 + 256 * v27 + v32 + v28] && v29 < v31 + v30 * (v25 - 1) + v32 || v30 < 0)
      {
        for (j = 0; j != v25; ++j)
        {
          v39 = 0;
          do
          {
            v29[v39] = *(v31 + v39);
            ++v39;
          }

          while (v32 > v39);
          v29 += 256;
          v31 += v30;
        }
      }

      else
      {
        v40 = 0;
        v41 = &v48[256 * v27 + 16 + v28];
        v42 = (v31 + 16);
        do
        {
          v43 = v42;
          v44 = v41;
          v45 = v32;
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
          v41 += 256;
          v42 = (v42 + v30);
        }

        while (v40 != v25);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v48, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int8x8_t a2, __n128 a3)
{
  v78 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(&v76, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = *(a1 + 84);
    if (v6)
    {
      v7 = *(a1 + 72);
      v8 = v7 << 6;
      v9 = 8 * *(a1 + 76);
      v10 = &v77[4 * v7 - 1] + v9;
      v12 = *(a1 + 56);
      v11 = *(a1 + 64);
      v13 = 8 * *(a1 + 84);
      result = (v13 - 1) >> 32;
      if (result)
      {
        v14 = 1;
      }

      else
      {
        v14 = 8 * v6 == 0;
      }

      if (v14)
      {
        for (i = 0; i != v5; ++i)
        {
          v16 = 0;
          do
          {
            v10[v16] = *(v12 + v16);
            ++v16;
          }

          while (v13 > v16);
          v10 += 64;
          v12 += v11;
        }
      }

      else
      {
        result = v13 + v9;
        if (v12 < &v77[4 * v5 - 5 + 4 * v7] + v13 + v9 && v10 < v12 + v11 * (v5 - 1) + v13 || v11 < 0)
        {
          for (j = 0; j != v5; ++j)
          {
            v20 = 0;
            do
            {
              v10[v20] = *(v12 + v20);
              ++v20;
            }

            while (v13 > v20);
            v10 += 64;
            v12 += v11;
          }
        }

        else if (v6 >= 4)
        {
          v59 = 0;
          v60 = v6 & 3;
          v61 = &v77[-1] + v8 + v9;
          v62 = v77 + v8 + v9;
          v63 = (v12 + 16);
          v64 = (v12 + (v13 & 0x1FFFFFFE0));
          result = &v61[v13 & 0x1FFFFFFE0];
          do
          {
            v65 = v63;
            v66 = v62;
            v67 = v13 & 0x1FFFFFFE0;
            do
            {
              v68 = *v65;
              *(v66 - 1) = *(v65 - 1);
              *v66 = v68;
              v66 += 2;
              v65 += 2;
              v67 -= 32;
            }

            while (v67);
            if (v13 != (v13 & 0x1FFFFFFE0))
            {
              v69 = result;
              v70 = v64;
              v71 = v13 - (v13 & 0x1FFFFFFE0);
              if (v60)
              {
                do
                {
                  v72 = *v70++;
                  *v69++ = v72;
                  v71 -= 8;
                }

                while (v71);
              }

              else
              {
                v73 = 0;
                v74 = (v13 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v73) = *(v64 + v73);
                  v75 = v13 > v74++;
                  ++v73;
                }

                while (v75);
              }
            }

            ++v59;
            v62 += 64;
            v63 = (v63 + v11);
            v64 = (v64 + v11);
            result += 64;
          }

          while (v59 != v5);
        }

        else
        {
          v57 = (v12 + 16);
          v58 = (v77 + v8 + v9);
          do
          {
            *(v58 - 2) = *(v57 - 2);
            if (v6 != 1)
            {
              *(v58 - 1) = *(v57 - 1);
              if (v6 != 2)
              {
                *v58 = *v57;
              }
            }

            v57 = (v57 + v11);
            v58 += 8;
            --v5;
          }

          while (v5);
        }
      }
    }
  }

  v21 = 0;
  v23 = *(a1 + 40);
  v22 = *(a1 + 48);
  v24 = *(a1 + 88);
  v25 = *(a1 + 89);
  if (*(a1 + 88) && *(a1 + 89))
  {
    v26 = v77[0];
    v27 = v77[3];
    v28 = v77[4];
    *v23 = v76;
    v23[1] = v27;
    v23[2] = v26;
    v23[3] = v28;
    v23 += 4;
    v21 = 63;
  }

  v29 = 0;
  *v22 = v21;
  if (v24 && v25 >= 3)
  {
    v30 = v77[8];
    v31 = v77[11];
    v32 = v77[12];
    *v23 = v77[7];
    v23[1] = v31;
    v23[2] = v30;
    v23[3] = v32;
    v23 += 4;
    v29 = 63;
  }

  v33 = 0;
  v22[1] = v29;
  if (v24 >= 5 && v25)
  {
    v34 = v77[2];
    v35 = v77[5];
    v36 = v77[6];
    *v23 = v77[1];
    v23[1] = v35;
    v23[2] = v34;
    v23[3] = v36;
    v23 += 4;
    v33 = 63;
  }

  v37 = 0;
  v22[2] = v33;
  if (v24 >= 5 && v25 >= 3)
  {
    v38 = v77[10];
    v39 = v77[13];
    v40 = v77[14];
    *v23 = v77[9];
    v23[1] = v39;
    v23[2] = v38;
    v23[3] = v40;
    v23 += 4;
    v37 = 63;
  }

  v41 = 0;
  v22[3] = v37;
  if (v24 && v25 >= 5)
  {
    v42 = v77[16];
    v43 = v77[19];
    v44 = v77[20];
    *v23 = v77[15];
    v23[1] = v43;
    v23[2] = v42;
    v23[3] = v44;
    v23 += 4;
    v41 = 63;
  }

  v45 = 0;
  v22[4] = v41;
  if (v24 && v25 >= 7)
  {
    v46 = v77[24];
    v47 = v77[27];
    v48 = v77[28];
    *v23 = v77[23];
    v23[1] = v47;
    v23[2] = v46;
    v23[3] = v48;
    v23 += 4;
    v45 = 63;
  }

  v49 = 0;
  v22[5] = v45;
  if (v24 >= 5 && v25 >= 5)
  {
    v50 = v77[18];
    v51 = v77[21];
    v52 = v77[22];
    *v23 = v77[17];
    v23[1] = v51;
    v23[2] = v50;
    v23[3] = v52;
    v23 += 4;
    v49 = 63;
  }

  v53 = 0;
  v22[6] = v49;
  if (v24 >= 5 && v25 >= 7)
  {
    v54 = v77[26];
    v55 = v77[29];
    v56 = v77[30];
    *v23 = v77[25];
    v23[1] = v55;
    v23[2] = v54;
    v23[3] = v56;
    v53 = 63;
  }

  v22[7] = v53;
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int8x8_t a2, __n128 a3)
{
  v42 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v41, *(a1 + 40), *(a1 + 48), a2, a3);
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 84);
    if (v5)
    {
      v6 = *(a1 + 72);
      v7 = v6 << 6;
      v8 = 8 * *(a1 + 76);
      v9 = &v41[64 * v6 + v8];
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
          v9 += 64;
          v11 += v10;
        }
      }

      else if (v11 < &v41[64 * v4 - 64 + 64 * v6 + v12 + v8] && v9 < v11 + v10 * (v4 - 1) + v12 || v10 < 0)
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
          v9 += 64;
          v11 += v10;
        }
      }

      else if (v5 >= 4)
      {
        v23 = 0;
        v24 = v5 & 3;
        v25 = &v41[v7 + v8];
        v26 = &v41[v7 + 16 + v8];
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
            v31 += 2;
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
                *v34++ = v37;
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
                *(v29 + v38) = *(v28 + v38);
                v40 = v12 > v39++;
                ++v38;
              }

              while (v40);
            }
          }

          ++v23;
          v26 += 64;
          v27 = (v27 + v10);
          v28 = (v28 + v10);
          v29 += 8;
        }

        while (v23 != v4);
      }

      else
      {
        v21 = (v11 + 16);
        v22 = &v41[v7 + 16 + v8];
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
          v22 += 8;
          --v4;
        }

        while (v4);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v41, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int8x8_t a2, __n128 a3)
{
  v78 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(&v76, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = *(a1 + 84);
    if (v6)
    {
      v7 = *(a1 + 72);
      v8 = v7 << 6;
      v9 = 8 * *(a1 + 76);
      v10 = &v77[4 * v7 - 1] + v9;
      v12 = *(a1 + 56);
      v11 = *(a1 + 64);
      v13 = 8 * *(a1 + 84);
      result = (v13 - 1) >> 32;
      if (result)
      {
        v14 = 1;
      }

      else
      {
        v14 = 8 * v6 == 0;
      }

      if (v14)
      {
        for (i = 0; i != v5; ++i)
        {
          v16 = 0;
          do
          {
            v10[v16] = *(v12 + v16);
            ++v16;
          }

          while (v13 > v16);
          v10 += 64;
          v12 += v11;
        }
      }

      else
      {
        result = v13 + v9;
        if (v12 < &v77[4 * v5 - 5 + 4 * v7] + v13 + v9 && v10 < v12 + v11 * (v5 - 1) + v13 || v11 < 0)
        {
          for (j = 0; j != v5; ++j)
          {
            v20 = 0;
            do
            {
              v10[v20] = *(v12 + v20);
              ++v20;
            }

            while (v13 > v20);
            v10 += 64;
            v12 += v11;
          }
        }

        else if (v6 >= 4)
        {
          v59 = 0;
          v60 = v6 & 3;
          v61 = &v77[-1] + v8 + v9;
          v62 = v77 + v8 + v9;
          v63 = (v12 + 16);
          v64 = (v12 + (v13 & 0x1FFFFFFE0));
          result = &v61[v13 & 0x1FFFFFFE0];
          do
          {
            v65 = v63;
            v66 = v62;
            v67 = v13 & 0x1FFFFFFE0;
            do
            {
              v68 = *v65;
              *(v66 - 1) = *(v65 - 1);
              *v66 = v68;
              v66 += 2;
              v65 += 2;
              v67 -= 32;
            }

            while (v67);
            if (v13 != (v13 & 0x1FFFFFFE0))
            {
              v69 = result;
              v70 = v64;
              v71 = v13 - (v13 & 0x1FFFFFFE0);
              if (v60)
              {
                do
                {
                  v72 = *v70++;
                  *v69++ = v72;
                  v71 -= 8;
                }

                while (v71);
              }

              else
              {
                v73 = 0;
                v74 = (v13 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v73) = *(v64 + v73);
                  v75 = v13 > v74++;
                  ++v73;
                }

                while (v75);
              }
            }

            ++v59;
            v62 += 64;
            v63 = (v63 + v11);
            v64 = (v64 + v11);
            result += 64;
          }

          while (v59 != v5);
        }

        else
        {
          v57 = (v12 + 16);
          v58 = (v77 + v8 + v9);
          do
          {
            *(v58 - 2) = *(v57 - 2);
            if (v6 != 1)
            {
              *(v58 - 1) = *(v57 - 1);
              if (v6 != 2)
              {
                *v58 = *v57;
              }
            }

            v57 = (v57 + v11);
            v58 += 8;
            --v5;
          }

          while (v5);
        }
      }
    }
  }

  v21 = 0;
  v23 = *(a1 + 40);
  v22 = *(a1 + 48);
  v24 = *(a1 + 88);
  v25 = *(a1 + 89);
  if (*(a1 + 88) && *(a1 + 89))
  {
    v26 = v77[0];
    v27 = v77[3];
    v28 = v77[4];
    *v23 = v76;
    v23[1] = v27;
    v23[2] = v26;
    v23[3] = v28;
    v23 += 4;
    v21 = 63;
  }

  v29 = 0;
  *v22 = v21;
  if (v24 && v25 >= 3)
  {
    v30 = v77[8];
    v31 = v77[11];
    v32 = v77[12];
    *v23 = v77[7];
    v23[1] = v31;
    v23[2] = v30;
    v23[3] = v32;
    v23 += 4;
    v29 = 63;
  }

  v33 = 0;
  v22[1] = v29;
  if (v24 >= 5 && v25)
  {
    v34 = v77[2];
    v35 = v77[5];
    v36 = v77[6];
    *v23 = v77[1];
    v23[1] = v35;
    v23[2] = v34;
    v23[3] = v36;
    v23 += 4;
    v33 = 63;
  }

  v37 = 0;
  v22[2] = v33;
  if (v24 >= 5 && v25 >= 3)
  {
    v38 = v77[10];
    v39 = v77[13];
    v40 = v77[14];
    *v23 = v77[9];
    v23[1] = v39;
    v23[2] = v38;
    v23[3] = v40;
    v23 += 4;
    v37 = 63;
  }

  v41 = 0;
  v22[3] = v37;
  if (v24 && v25 >= 5)
  {
    v42 = v77[16];
    v43 = v77[19];
    v44 = v77[20];
    *v23 = v77[15];
    v23[1] = v43;
    v23[2] = v42;
    v23[3] = v44;
    v23 += 4;
    v41 = 63;
  }

  v45 = 0;
  v22[4] = v41;
  if (v24 && v25 >= 7)
  {
    v46 = v77[24];
    v47 = v77[27];
    v48 = v77[28];
    *v23 = v77[23];
    v23[1] = v47;
    v23[2] = v46;
    v23[3] = v48;
    v23 += 4;
    v45 = 63;
  }

  v49 = 0;
  v22[5] = v45;
  if (v24 >= 5 && v25 >= 5)
  {
    v50 = v77[18];
    v51 = v77[21];
    v52 = v77[22];
    *v23 = v77[17];
    v23[1] = v51;
    v23[2] = v50;
    v23[3] = v52;
    v23 += 4;
    v49 = 63;
  }

  v53 = 0;
  v22[6] = v49;
  if (v24 >= 5 && v25 >= 7)
  {
    v54 = v77[26];
    v55 = v77[29];
    v56 = v77[30];
    *v23 = v77[25];
    v23[1] = v55;
    v23[2] = v54;
    v23[3] = v56;
    v53 = 63;
  }

  v22[7] = v53;
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE4ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, int8x8_t a2, __n128 a3)
{
  v42 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v41, *(a1 + 40), *(a1 + 48), a2, a3);
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 84);
    if (v5)
    {
      v6 = *(a1 + 72);
      v7 = v6 << 6;
      v8 = 8 * *(a1 + 76);
      v9 = &v41[64 * v6 + v8];
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
          v9 += 64;
          v11 += v10;
        }
      }

      else if (v11 < &v41[64 * v4 - 64 + 64 * v6 + v12 + v8] && v9 < v11 + v10 * (v4 - 1) + v12 || v10 < 0)
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
          v9 += 64;
          v11 += v10;
        }
      }

      else if (v5 >= 4)
      {
        v23 = 0;
        v24 = v5 & 3;
        v25 = &v41[v7 + v8];
        v26 = &v41[v7 + 16 + v8];
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
            v31 += 2;
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
                *v34++ = v37;
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
                *(v29 + v38) = *(v28 + v38);
                v40 = v12 > v39++;
                ++v38;
              }

              while (v40);
            }
          }

          ++v23;
          v26 += 64;
          v27 = (v27 + v10);
          v28 = (v28 + v10);
          v29 += 8;
        }

        while (v23 != v4);
      }

      else
      {
        v21 = (v11 + 16);
        v22 = &v41[v7 + 16 + v8];
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
          v22 += 8;
          --v4;
        }

        while (v4);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v41, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = 2 * *(a1 + 76);
      v6 = &v25[16 * v4 + v5];
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = 32 * v3;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            *(v6->f64 + v12) = *(v8->f64 + v12);
            ++v12;
          }

          while (v9 > v12);
          v6 += 16;
          v8 = (v8 + v7);
        }
      }

      else if (v8 < &v25[16 * v2 - 16 + 16 * v4 + v9 / 0x10 + v5] && v6 < (v8 + v7 * (v2 - 1) + v9) || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            *(v6->f64 + v16) = *(v8->f64 + v16);
            ++v16;
          }

          while (v9 > v16);
          v6 += 16;
          v8 = (v8 + v7);
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[16 * v4 + 1 + v5];
        v19 = v8 + 1;
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            v21[-1] = v20[-1];
            *v21 = v23;
            v21 += 2;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 16;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = 2 * *(a1 + 76);
      v6 = &v25[16 * v4 + v5];
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = 32 * v3;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            *(v6->f64 + v12) = *(v8->f64 + v12);
            ++v12;
          }

          while (v9 > v12);
          v6 += 16;
          v8 = (v8 + v7);
        }
      }

      else if (v8 < &v25[16 * v2 - 16 + 16 * v4 + v9 / 0x10 + v5] && v6 < (v8 + v7 * (v2 - 1) + v9) || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            *(v6->f64 + v16) = *(v8->f64 + v16);
            ++v16;
          }

          while (v9 > v16);
          v6 += 16;
          v8 = (v8 + v7);
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[16 * v4 + 1 + v5];
        v19 = v8 + 1;
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            v21[-1] = v20[-1];
            *v21 = v23;
            v21 += 2;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 16;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = 2 * *(a1 + 76);
      v6 = &v25[16 * v4 + v5];
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = 32 * v3;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            *(v6->f64 + v12) = *(v8->f64 + v12);
            ++v12;
          }

          while (v9 > v12);
          v6 += 16;
          v8 = (v8 + v7);
        }
      }

      else if (v8 < &v25[16 * v2 - 16 + 16 * v4 + v9 / 0x10 + v5] && v6 < (v8 + v7 * (v2 - 1) + v9) || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            *(v6->f64 + v16) = *(v8->f64 + v16);
            ++v16;
          }

          while (v9 > v16);
          v6 += 16;
          v8 = (v8 + v7);
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[16 * v4 + 1 + v5];
        v19 = v8 + 1;
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            v21[-1] = v20[-1];
            *v21 = v23;
            v21 += 2;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 16;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE17ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v25, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = 2 * *(a1 + 76);
      v6 = &v25[16 * v4 + v5];
      v8 = *(a1 + 56);
      v7 = *(a1 + 64);
      v9 = 32 * v3;
      if ((v9 - 1) >> 32)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9 == 0;
      }

      if (v10)
      {
        for (i = 0; i != v2; ++i)
        {
          v12 = 0;
          do
          {
            *(v6->f64 + v12) = *(v8->f64 + v12);
            ++v12;
          }

          while (v9 > v12);
          v6 += 16;
          v8 = (v8 + v7);
        }
      }

      else if (v8 < &v25[16 * v2 - 16 + 16 * v4 + v9 / 0x10 + v5] && v6 < (v8 + v7 * (v2 - 1) + v9) || v7 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v16 = 0;
          do
          {
            *(v6->f64 + v16) = *(v8->f64 + v16);
            ++v16;
          }

          while (v9 > v16);
          v6 += 16;
          v8 = (v8 + v7);
        }
      }

      else
      {
        v17 = 0;
        v18 = &v25[16 * v4 + 1 + v5];
        v19 = v8 + 1;
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v9;
          do
          {
            v23 = *v20;
            v21[-1] = v20[-1];
            *v21 = v23;
            v21 += 2;
            v20 += 2;
            v22 -= 32;
          }

          while (v22);
          ++v17;
          v18 += 16;
          v19 = (v19 + v7);
        }

        while (v17 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v25, 256, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v36, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 7;
      v6 = *(a1 + 76);
      v7 = &v36[8 * v4 + v6];
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
            *(v7 + v13) = *(v9 + v13);
            ++v13;
          }

          while (v10 > v13);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v9 < &v36[8 * v2 - 8 + 8 * v4 + v10 / 0x10 + v6] && v7 < (v9 + v8 * (v2 - 1) + v10) || v8 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v17 = 0;
          do
          {
            *(v7 + v17) = *(v9 + v17);
            ++v17;
          }

          while (v10 > v17);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v3 == 1)
      {
        do
        {
          *v7 = *v9;
          v7 += 8;
          v9 = (v9 + v8);
          --v2;
        }

        while (v2);
      }

      else
      {
        v19 = 0;
        v20 = v36 + v5 + v6 * 16;
        v21 = &v36[1] + v5 + v6 * 16;
        v22 = v9 + 1;
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
          v21 += 128;
          v22 = (v22 + v8);
          v23 = (v23 + v8);
          v24 += 128;
        }

        while (v19 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v36, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v36, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 7;
      v6 = 16 * *(a1 + 76);
      v7 = &v36[128 * v4 + v6];
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
            *(v7 + v13) = *(v9 + v13);
            ++v13;
          }

          while (v10 > v13);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v9 < &v36[128 * v2 - 128 + 128 * v4 + v10 + v6] && v7 < (v9 + v8 * (v2 - 1) + v10) || v8 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v17 = 0;
          do
          {
            *(v7 + v17) = *(v9 + v17);
            ++v17;
          }

          while (v10 > v17);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v3 == 1)
      {
        do
        {
          *v7 = *v9;
          v7 += 8;
          v9 = (v9 + v8);
          --v2;
        }

        while (v2);
      }

      else
      {
        v19 = 0;
        v20 = &v36[v5 + v6];
        v21 = &v36[v5 + 16 + v6];
        v22 = v9 + 1;
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
                *v29++ = v35;
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
                *(v24 + v32) = *(v23 + v32);
                v34 = v10 > v33++;
                ++v32;
              }

              while (v34);
            }
          }

          ++v19;
          v21 += 128;
          v22 = (v22 + v8);
          v23 = (v23 + v8);
          v24 += 8;
        }

        while (v19 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v36, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v36, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 7;
      v6 = *(a1 + 76);
      v7 = &v36[8 * v4 + v6];
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
            *(v7 + v13) = *(v9 + v13);
            ++v13;
          }

          while (v10 > v13);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v9 < &v36[8 * v2 - 8 + 8 * v4 + v10 / 0x10 + v6] && v7 < (v9 + v8 * (v2 - 1) + v10) || v8 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v17 = 0;
          do
          {
            *(v7 + v17) = *(v9 + v17);
            ++v17;
          }

          while (v10 > v17);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v3 == 1)
      {
        do
        {
          *v7 = *v9;
          v7 += 8;
          v9 = (v9 + v8);
          --v2;
        }

        while (v2);
      }

      else
      {
        v19 = 0;
        v20 = v36 + v5 + v6 * 16;
        v21 = &v36[1] + v5 + v6 * 16;
        v22 = v9 + 1;
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
          v21 += 128;
          v22 = (v22 + v8);
          v23 = (v23 + v8);
          v24 += 128;
        }

        while (v19 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v36, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE11ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v36, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 7;
      v6 = 16 * *(a1 + 76);
      v7 = &v36[128 * v4 + v6];
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
            *(v7 + v13) = *(v9 + v13);
            ++v13;
          }

          while (v10 > v13);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v9 < &v36[128 * v2 - 128 + 128 * v4 + v10 + v6] && v7 < (v9 + v8 * (v2 - 1) + v10) || v8 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v17 = 0;
          do
          {
            *(v7 + v17) = *(v9 + v17);
            ++v17;
          }

          while (v10 > v17);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v3 == 1)
      {
        do
        {
          *v7 = *v9;
          v7 += 8;
          v9 = (v9 + v8);
          --v2;
        }

        while (v2);
      }

      else
      {
        v19 = 0;
        v20 = &v36[v5 + v6];
        v21 = &v36[v5 + 16 + v6];
        v22 = v9 + 1;
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
                *v29++ = v35;
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
                *(v24 + v32) = *(v23 + v32);
                v34 = v10 > v33++;
                ++v32;
              }

              while (v34);
            }
          }

          ++v19;
          v21 += 128;
          v22 = (v22 + v8);
          v23 = (v23 + v8);
          v24 += 8;
        }

        while (v19 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v36, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v56, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 7;
      v7 = 16 * *(a1 + 76);
      v8 = &v56[128 * v5 + v7];
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
            *(v8 + v14) = *(v10 + v14);
            ++v14;
          }

          while (v11 > v14);
          v8 += 8;
          v10 = (v10 + v9);
        }
      }

      else
      {
        result = v11 + v7;
        if (v10 < &v56[128 * v3 - 128 + 128 * v5 + v11 + v7] && v8 < (v10 + v9 * (v3 - 1) + v11) || v9 < 0)
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
          v40 = 0;
          v41 = &v56[v6 + v7];
          v42 = &v56[v6 + 16 + v7];
          v43 = v10 + 1;
          v44 = (v10 + (v11 & 0x1FFFFFFE0));
          result = &v41[v11 & 0x1FFFFFFE0];
          do
          {
            v45 = v43;
            v46 = v42;
            v47 = v11 & 0x1FFFFFFE0;
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
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v49 = result;
              v50 = v44;
              v51 = v11 - (v11 & 0x1FFFFFFE0);
              if (v4)
              {
                do
                {
                  v55 = *v50++;
                  *v49++ = v55;
                  v51 -= 16;
                }

                while (v51);
              }

              else
              {
                v52 = 0;
                v53 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v52) = *(v44 + v52);
                  v54 = v11 > v53++;
                  ++v52;
                }

                while (v54);
              }
            }

            ++v40;
            v42 += 128;
            v43 = (v43 + v9);
            v44 = (v44 + v9);
            result += 128;
          }

          while (v40 != v3);
        }
      }
    }
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 88);
  v22 = &byte_29D2F2FE5;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v37 = *v22;
    v38 = *(v22 - 1);
    if (v21 <= 4 * v38 || 2 * v37 >= v24)
    {
      v36 = 0;
    }

    else
    {
      v25 = &v56[256 * v37 + 64 * v38];
      v27 = *v25;
      v28 = v25[1];
      v26 = v25 + 2;
      v29 = v25 + 8;
      v25 += 10;
      v30 = *v26;
      v31 = v26[1];
      v32 = *v29;
      v33 = v29[1];
      v34 = *v25;
      v35 = v25[1];
      *v19 = v27;
      v19[1] = v28;
      v19[2] = v32;
      v19[3] = v33;
      v19[4] = v30;
      v19[5] = v31;
      v19[6] = v34;
      v19[7] = v35;
      v19 += 8;
      v36 = 127;
    }

    *v20++ = v36;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v36, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 7;
      v6 = 16 * *(a1 + 76);
      v7 = &v36[128 * v4 + v6];
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
            *(v7 + v13) = *(v9 + v13);
            ++v13;
          }

          while (v10 > v13);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v9 < &v36[128 * v2 - 128 + 128 * v4 + v10 + v6] && v7 < (v9 + v8 * (v2 - 1) + v10) || v8 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v17 = 0;
          do
          {
            *(v7 + v17) = *(v9 + v17);
            ++v17;
          }

          while (v10 > v17);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v3 == 1)
      {
        do
        {
          *v7 = *v9;
          v7 += 8;
          v9 = (v9 + v8);
          --v2;
        }

        while (v2);
      }

      else
      {
        v19 = 0;
        v20 = &v36[v5 + v6];
        v21 = &v36[v5 + 16 + v6];
        v22 = v9 + 1;
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
                *v29++ = v35;
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
                *(v24 + v32) = *(v23 + v32);
                v34 = v10 > v33++;
                ++v32;
              }

              while (v34);
            }
          }

          ++v19;
          v21 += 128;
          v22 = (v22 + v8);
          v23 = (v23 + v8);
          v24 += 8;
        }

        while (v19 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v36, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v56, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 84);
    if (v4)
    {
      v5 = *(a1 + 72);
      v6 = v5 << 7;
      v7 = 16 * *(a1 + 76);
      v8 = &v56[128 * v5 + v7];
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
            *(v8 + v14) = *(v10 + v14);
            ++v14;
          }

          while (v11 > v14);
          v8 += 8;
          v10 = (v10 + v9);
        }
      }

      else
      {
        result = v11 + v7;
        if (v10 < &v56[128 * v3 - 128 + 128 * v5 + v11 + v7] && v8 < (v10 + v9 * (v3 - 1) + v11) || v9 < 0)
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
          v40 = 0;
          v41 = &v56[v6 + v7];
          v42 = &v56[v6 + 16 + v7];
          v43 = v10 + 1;
          v44 = (v10 + (v11 & 0x1FFFFFFE0));
          result = &v41[v11 & 0x1FFFFFFE0];
          do
          {
            v45 = v43;
            v46 = v42;
            v47 = v11 & 0x1FFFFFFE0;
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
            if (v11 != (v11 & 0x1FFFFFFE0))
            {
              v49 = result;
              v50 = v44;
              v51 = v11 - (v11 & 0x1FFFFFFE0);
              if (v4)
              {
                do
                {
                  v55 = *v50++;
                  *v49++ = v55;
                  v51 -= 16;
                }

                while (v51);
              }

              else
              {
                v52 = 0;
                v53 = (v11 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v52) = *(v44 + v52);
                  v54 = v11 > v53++;
                  ++v52;
                }

                while (v54);
              }
            }

            ++v40;
            v42 += 128;
            v43 = (v43 + v9);
            v44 = (v44 + v9);
            result += 128;
          }

          while (v40 != v3);
        }
      }
    }
  }

  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *(a1 + 88);
  v22 = &byte_29D2F2FE5;
  v23 = 16;
  v24 = *(a1 + 89);
  do
  {
    v37 = *v22;
    v38 = *(v22 - 1);
    if (v21 <= 4 * v38 || 2 * v37 >= v24)
    {
      v36 = 0;
    }

    else
    {
      v25 = &v56[256 * v37 + 64 * v38];
      v27 = *v25;
      v28 = v25[1];
      v26 = v25 + 2;
      v29 = v25 + 8;
      v25 += 10;
      v30 = *v26;
      v31 = v26[1];
      v32 = *v29;
      v33 = v29[1];
      v34 = *v25;
      v35 = v25[1];
      *v19 = v27;
      v19[1] = v28;
      v19[2] = v32;
      v19[3] = v33;
      v19[4] = v30;
      v19[5] = v31;
      v19[6] = v34;
      v19[7] = v35;
      v19 += 8;
      v36 = 127;
    }

    *v20++ = v36;
    v22 += 2;
    v23 -= 2;
  }

  while (v23);
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE16ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v36, *(a1 + 40), *(a1 + 48));
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 84);
    if (v3)
    {
      v4 = *(a1 + 72);
      v5 = v4 << 7;
      v6 = 16 * *(a1 + 76);
      v7 = &v36[128 * v4 + v6];
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
            *(v7 + v13) = *(v9 + v13);
            ++v13;
          }

          while (v10 > v13);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v9 < &v36[128 * v2 - 128 + 128 * v4 + v10 + v6] && v7 < (v9 + v8 * (v2 - 1) + v10) || v8 < 0)
      {
        for (j = 0; j != v2; ++j)
        {
          v17 = 0;
          do
          {
            *(v7 + v17) = *(v9 + v17);
            ++v17;
          }

          while (v10 > v17);
          v7 += 8;
          v9 = (v9 + v8);
        }
      }

      else if (v3 == 1)
      {
        do
        {
          *v7 = *v9;
          v7 += 8;
          v9 = (v9 + v8);
          --v2;
        }

        while (v2);
      }

      else
      {
        v19 = 0;
        v20 = &v36[v5 + v6];
        v21 = &v36[v5 + 16 + v6];
        v22 = v9 + 1;
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
                *v29++ = v35;
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
                *(v24 + v32) = *(v23 + v32);
                v34 = v10 > v33++;
                ++v32;
              }

              while (v34);
            }
          }

          ++v19;
          v21 += 128;
          v22 = (v22 + v8);
          v23 = (v23 + v8);
          v24 += 8;
        }

        while (v19 != v2);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v36, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, __n128 a3, __n128 a4, __n128 a5)
{
  v80 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(&v78, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 84);
    if (v8)
    {
      v9 = *(a1 + 72);
      v10 = v9 << 6;
      v11 = 8 * *(a1 + 76);
      v12 = &v79[4 * v9 - 1] + v11;
      v14 = *(a1 + 56);
      v13 = *(a1 + 64);
      v15 = 8 * *(a1 + 84);
      result = (v15 - 1) >> 32;
      if (result)
      {
        v16 = 1;
      }

      else
      {
        v16 = 8 * v8 == 0;
      }

      if (v16)
      {
        for (i = 0; i != v7; ++i)
        {
          v18 = 0;
          do
          {
            v12[v18] = *(v14 + v18);
            ++v18;
          }

          while (v15 > v18);
          v12 += 64;
          v14 += v13;
        }
      }

      else
      {
        result = v15 + v11;
        if (v14 < &v79[4 * v7 - 5 + 4 * v9] + v15 + v11 && v12 < v14 + v13 * (v7 - 1) + v15 || v13 < 0)
        {
          for (j = 0; j != v7; ++j)
          {
            v22 = 0;
            do
            {
              v12[v22] = *(v14 + v22);
              ++v22;
            }

            while (v15 > v22);
            v12 += 64;
            v14 += v13;
          }
        }

        else if (v8 >= 4)
        {
          v61 = 0;
          v62 = v8 & 3;
          v63 = &v79[-1] + v10 + v11;
          v64 = v79 + v10 + v11;
          v65 = (v14 + 16);
          v66 = (v14 + (v15 & 0x1FFFFFFE0));
          result = &v63[v15 & 0x1FFFFFFE0];
          do
          {
            v67 = v65;
            v68 = v64;
            v69 = v15 & 0x1FFFFFFE0;
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
            if (v15 != (v15 & 0x1FFFFFFE0))
            {
              v71 = result;
              v72 = v66;
              v73 = v15 - (v15 & 0x1FFFFFFE0);
              if (v62)
              {
                do
                {
                  v74 = *v72++;
                  *v71++ = v74;
                  v73 -= 8;
                }

                while (v73);
              }

              else
              {
                v75 = 0;
                v76 = (v15 & 0xFFFFFFE0) + 1;
                do
                {
                  *(result + v75) = *(v66 + v75);
                  v77 = v15 > v76++;
                  ++v75;
                }

                while (v77);
              }
            }

            ++v61;
            v64 += 64;
            v65 = (v65 + v13);
            v66 = (v66 + v13);
            result += 64;
          }

          while (v61 != v7);
        }

        else
        {
          v59 = (v14 + 16);
          v60 = (v79 + v10 + v11);
          do
          {
            *(v60 - 2) = *(v59 - 2);
            if (v8 != 1)
            {
              *(v60 - 1) = *(v59 - 1);
              if (v8 != 2)
              {
                *v60 = *v59;
              }
            }

            v59 = (v59 + v13);
            v60 += 8;
            --v7;
          }

          while (v7);
        }
      }
    }
  }

  v23 = 0;
  v25 = *(a1 + 40);
  v24 = *(a1 + 48);
  v26 = *(a1 + 88);
  v27 = *(a1 + 89);
  if (*(a1 + 88) && *(a1 + 89))
  {
    v28 = v79[0];
    v29 = v79[3];
    v30 = v79[4];
    *v25 = v78;
    v25[1] = v29;
    v25[2] = v28;
    v25[3] = v30;
    v25 += 4;
    v23 = 63;
  }

  v31 = 0;
  *v24 = v23;
  if (v26 && v27 >= 3)
  {
    v32 = v79[8];
    v33 = v79[11];
    v34 = v79[12];
    *v25 = v79[7];
    v25[1] = v33;
    v25[2] = v32;
    v25[3] = v34;
    v25 += 4;
    v31 = 63;
  }

  v35 = 0;
  v24[1] = v31;
  if (v26 >= 5 && v27)
  {
    v36 = v79[2];
    v37 = v79[5];
    v38 = v79[6];
    *v25 = v79[1];
    v25[1] = v37;
    v25[2] = v36;
    v25[3] = v38;
    v25 += 4;
    v35 = 63;
  }

  v39 = 0;
  v24[2] = v35;
  if (v26 >= 5 && v27 >= 3)
  {
    v40 = v79[10];
    v41 = v79[13];
    v42 = v79[14];
    *v25 = v79[9];
    v25[1] = v41;
    v25[2] = v40;
    v25[3] = v42;
    v25 += 4;
    v39 = 63;
  }

  v43 = 0;
  v24[3] = v39;
  if (v26 && v27 >= 5)
  {
    v44 = v79[16];
    v45 = v79[19];
    v46 = v79[20];
    *v25 = v79[15];
    v25[1] = v45;
    v25[2] = v44;
    v25[3] = v46;
    v25 += 4;
    v43 = 63;
  }

  v47 = 0;
  v24[4] = v43;
  if (v26 && v27 >= 7)
  {
    v48 = v79[24];
    v49 = v79[27];
    v50 = v79[28];
    *v25 = v79[23];
    v25[1] = v49;
    v25[2] = v48;
    v25[3] = v50;
    v25 += 4;
    v47 = 63;
  }

  v51 = 0;
  v24[5] = v47;
  if (v26 >= 5 && v27 >= 5)
  {
    v52 = v79[18];
    v53 = v79[21];
    v54 = v79[22];
    *v25 = v79[17];
    v25[1] = v53;
    v25[2] = v52;
    v25[3] = v54;
    v25 += 4;
    v51 = 63;
  }

  v55 = 0;
  v24[6] = v51;
  if (v26 >= 5 && v27 >= 7)
  {
    v56 = v79[26];
    v57 = v79[29];
    v58 = v79[30];
    *v25 = v79[25];
    v25[1] = v57;
    v25[2] = v56;
    v25[3] = v58;
    v55 = 63;
  }

  v24[7] = v55;
  return result;
}