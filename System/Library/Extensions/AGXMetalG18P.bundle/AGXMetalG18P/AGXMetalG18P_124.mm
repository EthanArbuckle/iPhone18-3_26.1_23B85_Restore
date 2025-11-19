unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, __n128 a3, __n128 a4, __n128 a5)
{
  v51 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v50, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = *(a1 + 84);
    if (v15)
    {
      v16 = *(a1 + 72);
      v17 = v16 << 6;
      v18 = 8 * *(a1 + 76);
      v19 = &v50[64 * v16 + v18];
      v21 = *(a1 + 56);
      v20 = *(a1 + 64);
      v22 = 8 * *(a1 + 84);
      if ((v22 - 1) >> 32)
      {
        v23 = 1;
      }

      else
      {
        v23 = 8 * v15 == 0;
      }

      if (v23)
      {
        for (i = 0; i != v14; ++i)
        {
          v25 = 0;
          do
          {
            v19[v25] = *(v21 + v25);
            ++v25;
          }

          while (v22 > v25);
          v19 += 64;
          v21 += v20;
        }
      }

      else if (v21 < &v50[64 * v14 - 64 + 64 * v16 + v22 + v18] && v19 < v21 + v20 * (v14 - 1) + v22 || v20 < 0)
      {
        for (j = 0; j != v14; ++j)
        {
          v29 = 0;
          do
          {
            v19[v29] = *(v21 + v29);
            ++v29;
          }

          while (v22 > v29);
          v19 += 64;
          v21 += v20;
        }
      }

      else if (v15 >= 4)
      {
        v33 = 0;
        v34 = v15 & 3;
        v35 = &v50[v17 + v18];
        v36 = &v50[v17 + 16 + v18];
        v37 = (v21 + 16);
        v38 = (v21 + (v22 & 0x1FFFFFFE0));
        v39 = &v35[v22 & 0x1FFFFFFE0];
        do
        {
          v40 = v37;
          v41 = v36;
          v42 = v22 & 0x1FFFFFFE0;
          do
          {
            v6 = *(v40 - 1);
            v7 = *v40;
            *(v41 - 1) = v6;
            *v41 = v7;
            v41 += 2;
            v40 += 2;
            v42 -= 32;
          }

          while (v42);
          if (v22 != (v22 & 0x1FFFFFFE0))
          {
            v43 = v39;
            v44 = v38;
            v45 = v22 - (v22 & 0x1FFFFFFE0);
            if (v34)
            {
              do
              {
                v46 = *v44++;
                *&v6 = v46;
                *v43++ = v46;
                v45 -= 8;
              }

              while (v45);
            }

            else
            {
              v47 = 0;
              v48 = (v22 & 0xFFFFFFE0) + 1;
              do
              {
                *(v39 + v47) = *(v38 + v47);
                v49 = v22 > v48++;
                ++v47;
              }

              while (v49);
            }
          }

          ++v33;
          v36 += 64;
          v37 = (v37 + v20);
          v38 = (v38 + v20);
          v39 += 8;
        }

        while (v33 != v14);
      }

      else
      {
        v31 = (v21 + 16);
        v32 = &v50[v17 + 16 + v18];
        do
        {
          *&v6 = *(v31 - 2);
          *(v32 - 2) = v6;
          if (v15 != 1)
          {
            *&v6 = *(v31 - 1);
            *(v32 - 1) = v6;
            if (v15 != 2)
            {
              *&v6 = *v31;
              *v32 = *v31;
            }
          }

          v31 = (v31 + v20);
          v32 += 8;
          --v14;
        }

        while (v14);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v50, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *&v6, *&v7, v8, v9, v10, v11, v12, v13);
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, __n128 a3, __n128 a4, __n128 a5)
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

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE3ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, __n128 a3, __n128 a4, __n128 a5)
{
  v51 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v50, *(a1 + 40), *(a1 + 48), a2, a3, a4, a5);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = *(a1 + 84);
    if (v15)
    {
      v16 = *(a1 + 72);
      v17 = v16 << 6;
      v18 = 8 * *(a1 + 76);
      v19 = &v50[64 * v16 + v18];
      v21 = *(a1 + 56);
      v20 = *(a1 + 64);
      v22 = 8 * *(a1 + 84);
      if ((v22 - 1) >> 32)
      {
        v23 = 1;
      }

      else
      {
        v23 = 8 * v15 == 0;
      }

      if (v23)
      {
        for (i = 0; i != v14; ++i)
        {
          v25 = 0;
          do
          {
            v19[v25] = *(v21 + v25);
            ++v25;
          }

          while (v22 > v25);
          v19 += 64;
          v21 += v20;
        }
      }

      else if (v21 < &v50[64 * v14 - 64 + 64 * v16 + v22 + v18] && v19 < v21 + v20 * (v14 - 1) + v22 || v20 < 0)
      {
        for (j = 0; j != v14; ++j)
        {
          v29 = 0;
          do
          {
            v19[v29] = *(v21 + v29);
            ++v29;
          }

          while (v22 > v29);
          v19 += 64;
          v21 += v20;
        }
      }

      else if (v15 >= 4)
      {
        v33 = 0;
        v34 = v15 & 3;
        v35 = &v50[v17 + v18];
        v36 = &v50[v17 + 16 + v18];
        v37 = (v21 + 16);
        v38 = (v21 + (v22 & 0x1FFFFFFE0));
        v39 = &v35[v22 & 0x1FFFFFFE0];
        do
        {
          v40 = v37;
          v41 = v36;
          v42 = v22 & 0x1FFFFFFE0;
          do
          {
            v6 = *(v40 - 1);
            v7 = *v40;
            *(v41 - 1) = v6;
            *v41 = v7;
            v41 += 2;
            v40 += 2;
            v42 -= 32;
          }

          while (v42);
          if (v22 != (v22 & 0x1FFFFFFE0))
          {
            v43 = v39;
            v44 = v38;
            v45 = v22 - (v22 & 0x1FFFFFFE0);
            if (v34)
            {
              do
              {
                v46 = *v44++;
                *&v6 = v46;
                *v43++ = v46;
                v45 -= 8;
              }

              while (v45);
            }

            else
            {
              v47 = 0;
              v48 = (v22 & 0xFFFFFFE0) + 1;
              do
              {
                *(v39 + v47) = *(v38 + v47);
                v49 = v22 > v48++;
                ++v47;
              }

              while (v49);
            }
          }

          ++v33;
          v36 += 64;
          v37 = (v37 + v20);
          v38 = (v38 + v20);
          v39 += 8;
        }

        while (v33 != v14);
      }

      else
      {
        v31 = (v21 + 16);
        v32 = &v50[v17 + 16 + v18];
        do
        {
          *&v6 = *(v31 - 2);
          *(v32 - 2) = v6;
          if (v15 != 1)
          {
            *&v6 = *(v31 - 1);
            *(v32 - 1) = v6;
            if (v15 != 2)
            {
              *&v6 = *v31;
              *v32 = *v31;
            }
          }

          v31 = (v31 + v20);
          v32 += 8;
          --v14;
        }

        while (v14);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v50, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *&v6, *&v7, v8, v9, v10, v11, v12, v13);
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v36, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v36, *(a1 + 40), *(a1 + 48));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v36, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v36, *(a1 + 40), *(a1 + 48));
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

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE15ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v36, *(a1 + 40), *(a1 + 48));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v36, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v56, *(a1 + 40), *(a1 + 48));
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

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v36, *(a1 + 40), *(a1 + 48));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v36, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v56, *(a1 + 40), *(a1 + 48));
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

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE13ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v36, *(a1 + 40), *(a1 + 48));
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v36, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, double a3)
{
  v100[31] = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v99, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = *(a1 + 84);
    if (v6)
    {
      v7 = *(a1 + 72);
      v8 = 4 * v7;
      result = 4 * *(a1 + 76);
      v9 = &v99[4 * v7] + result;
      v11 = *(a1 + 56);
      v10 = *(a1 + 64);
      v12 = 4 * v6;
      v13 = &v99[4 * v5 - 4 + 4 * v7] + 4 * v6 + result;
      v16 = v9 < &v11[4 * v6 + v10 * (v5 - 1)] && v11 < v13 || v10 < 0;
      if (v6 == 1)
      {
        for (i = 0; i != v5; ++i)
        {
          v18 = &v11[v10 * i];
          v19 = &v9[32 * i];
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
        for (j = 0; j != v5; ++j)
        {
          v25 = 0;
          do
          {
            v9[v25] = v11[v25];
            ++v25;
          }

          while (v12 > v25);
          v9 += 32;
          v11 += v10;
        }
      }

      else if (v16)
      {
        for (k = 0; k != v5; ++k)
        {
          v23 = 0;
          do
          {
            v9[v23] = v11[v23];
            ++v23;
          }

          while (v12 > v23);
          v9 += 32;
          v11 += v10;
        }
      }

      else
      {
        v62 = v12 & 0x1FFFFFFF8;
        if (v6 > 7)
        {
          v68 = v12 & 0x1FFFFFFE0;
          if (v12 == (v12 & 0x1FFFFFFE0))
          {
            v69 = 0;
            v70 = &v100[v8] + result;
            v71 = (v11 + 16);
            do
            {
              v72 = v71;
              v73 = v70;
              v74 = v12;
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
              ++v69;
              v70 += 32;
              v71 = (v71 + v10);
            }

            while (v69 != v5);
          }

          else
          {
            v84 = 0;
            v85 = v6 & 6;
            v86 = &v99[v8] + result;
            v87 = &v100[v8] + result;
            result = (v11 + 16);
            v88 = &v11[v68];
            v89 = &v86[v68];
            do
            {
              v90 = result;
              v91 = v87;
              v92 = v12 & 0x1FFFFFFE0;
              do
              {
                v93 = *v90;
                *(v91 - 1) = *(v90 - 1);
                *v91 = v93;
                v91 += 2;
                v90 += 2;
                v92 -= 32;
              }

              while (v92);
              v94 = v12 & 0x1FFFFFFE0;
              if (!v85)
              {
                goto LABEL_87;
              }

              v95 = v89;
              v96 = v88;
              v97 = v62 - v68;
              do
              {
                v98 = *v96++;
                *v95 = v98;
                v95 += 8;
                v97 -= 8;
              }

              while (v97);
              v94 = v12 & 0x1FFFFFFF8;
              if (v12 != v62)
              {
LABEL_87:
                do
                {
                  v9[v94] = v11[v94];
                  ++v94;
                }

                while (v12 > v94);
              }

              ++v84;
              v87 += 32;
              result += v10;
              v88 += v10;
              v89 += 32;
              v9 += 32;
              v11 += v10;
            }

            while (v84 != v5);
          }
        }

        else if (v12 == v62)
        {
          for (m = 0; m != v5; ++m)
          {
            v64 = v9;
            v65 = v11;
            v66 = v12;
            do
            {
              v67 = *v65++;
              *v64 = v67;
              v64 += 8;
              v66 -= 8;
            }

            while (v66);
            v11 += v10;
            v9 += 32;
          }
        }

        else
        {
          v76 = 0;
          v77 = v9;
          do
          {
            v78 = &v9[32 * v76 + v62];
            v79 = v77;
            v80 = v11;
            v81 = v12 & 0x1FFFFFFF8;
            do
            {
              v82 = *v80++;
              *v79 = v82;
              v79 += 8;
              v81 -= 8;
            }

            while (v81);
            v83 = v12 & 0x1FFFFFFF8;
            do
            {
              result = v11[v83];
              *v78++ = result;
              ++v83;
            }

            while (v12 > v83);
            ++v76;
            v11 += v10;
            v77 += 32;
          }

          while (v76 != v5);
        }
      }
    }
  }

  v26 = 0;
  v28 = *(a1 + 40);
  v27 = *(a1 + 48);
  v29 = *(a1 + 88);
  v30 = *(a1 + 89);
  if (*(a1 + 88) && *(a1 + 89))
  {
    v31 = v99[1];
    v32 = v100[2];
    v33 = v100[3];
    *v28 = v99[0];
    v28[1] = v32;
    v28[2] = v31;
    v28[3] = v33;
    v28 += 4;
    v26 = 31;
  }

  v34 = 0;
  *v27 = v26;
  if (v29 && v30 >= 3)
  {
    v35 = v100[7];
    v36 = v100[10];
    v37 = v100[11];
    *v28 = v100[6];
    v28[1] = v36;
    v28[2] = v35;
    v28[3] = v37;
    v28 += 4;
    v34 = 31;
  }

  v38 = 0;
  v27[1] = v34;
  if (v29 >= 5 && v30)
  {
    v39 = v100[1];
    v40 = v100[4];
    v41 = v100[5];
    *v28 = v100[0];
    v28[1] = v40;
    v28[2] = v39;
    v28[3] = v41;
    v28 += 4;
    v38 = 31;
  }

  v42 = 0;
  v27[2] = v38;
  if (v29 >= 5 && v30 >= 3)
  {
    v43 = v100[9];
    v44 = v100[12];
    v45 = v100[13];
    *v28 = v100[8];
    v28[1] = v44;
    v28[2] = v43;
    v28[3] = v45;
    v28 += 4;
    v42 = 31;
  }

  v46 = 0;
  v27[3] = v42;
  if (v29 && v30 >= 5)
  {
    v47 = v100[15];
    v48 = v100[18];
    v49 = v100[19];
    *v28 = v100[14];
    v28[1] = v48;
    v28[2] = v47;
    v28[3] = v49;
    v28 += 4;
    v46 = 31;
  }

  v50 = 0;
  v27[4] = v46;
  if (v29 && v30 >= 7)
  {
    v51 = v100[23];
    v52 = v100[26];
    v53 = v100[27];
    *v28 = v100[22];
    v28[1] = v52;
    v28[2] = v51;
    v28[3] = v53;
    v28 += 4;
    v50 = 31;
  }

  v54 = 0;
  v27[5] = v50;
  if (v29 >= 5 && v30 >= 5)
  {
    v55 = v100[17];
    v56 = v100[20];
    v57 = v100[21];
    *v28 = v100[16];
    v28[1] = v56;
    v28[2] = v55;
    v28[3] = v57;
    v28 += 4;
    v54 = 31;
  }

  v58 = 0;
  v27[6] = v54;
  if (v29 >= 5 && v30 >= 7)
  {
    v59 = v100[25];
    v60 = v100[28];
    v61 = v100[29];
    *v28 = v100[24];
    v28[1] = v60;
    v28[2] = v59;
    v28[3] = v61;
    v58 = 31;
  }

  v27[7] = v58;
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, double a3)
{
  v67 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v66, *(a1 + 40), *(a1 + 48), a2, a3);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 84);
    if (v8)
    {
      v9 = *(a1 + 72);
      v10 = 32 * v9;
      v11 = 4 * *(a1 + 76);
      v12 = &v66[32 * v9 + v11];
      v14 = *(a1 + 56);
      v13 = *(a1 + 64);
      v15 = 4 * v8;
      v16 = &v66[32 * v7 - 32 + 32 * v9 + 4 * v8 + v11];
      v19 = v12 < v14 + 4 * v8 + v13 * (v7 - 1) && v14 < v16 || v13 < 0;
      if (v8 == 1)
      {
        for (i = 0; i != v7; ++i)
        {
          v21 = v14 + v13 * i;
          v22 = &v12[32 * i];
          v23 = -1;
          do
          {
            v24 = *v21++;
            *v22++ = v24;
            ++v23;
          }

          while (v23 < 3);
        }
      }

      else if (!v15 || (v15 - 1) >> 32)
      {
        for (j = 0; j != v7; ++j)
        {
          v28 = 0;
          do
          {
            v12[v28] = *(v14 + v28);
            ++v28;
          }

          while (v15 > v28);
          v12 += 32;
          v14 = (v14 + v13);
        }
      }

      else if (v19)
      {
        for (k = 0; k != v7; ++k)
        {
          v26 = 0;
          do
          {
            v12[v26] = *(v14 + v26);
            ++v26;
          }

          while (v15 > v26);
          v12 += 32;
          v14 = (v14 + v13);
        }
      }

      else
      {
        v30 = v15 & 0x1FFFFFFF8;
        if (v8 > 7)
        {
          v36 = v15 & 0x1FFFFFFE0;
          if (v15 == (v15 & 0x1FFFFFFE0))
          {
            v37 = 0;
            v38 = &v66[v10 + 16 + v11];
            v39 = (v14 + 2);
            do
            {
              v40 = v39;
              v41 = v38;
              v42 = v15;
              do
              {
                v4 = *(v40 - 1);
                v5 = *v40;
                *(v41 - 1) = v4;
                *v41 = v5;
                v41 += 2;
                v40 += 2;
                v42 -= 32;
              }

              while (v42);
              ++v37;
              v38 += 32;
              v39 = (v39 + v13);
            }

            while (v37 != v7);
          }

          else
          {
            v51 = 0;
            v52 = v8 & 6;
            v53 = &v66[v10 + v11];
            v54 = &v66[v10 + 16 + v11];
            v55 = (v14 + 2);
            v56 = (v14 + v36);
            v57 = &v53[v36];
            do
            {
              v58 = v55;
              v59 = v54;
              v60 = v15 & 0x1FFFFFFE0;
              do
              {
                v4 = *(v58 - 1);
                v5 = *v58;
                *(v59 - 1) = v4;
                *v59 = v5;
                v59 += 2;
                v58 += 2;
                v60 -= 32;
              }

              while (v60);
              v61 = v15 & 0x1FFFFFFE0;
              if (!v52)
              {
                goto LABEL_63;
              }

              v62 = v57;
              v63 = v56;
              v64 = v30 - v36;
              do
              {
                v65 = *v63++;
                *&v4 = v65;
                *v62++ = v65;
                v64 -= 8;
              }

              while (v64);
              v61 = v15 & 0x1FFFFFFF8;
              if (v15 != v30)
              {
LABEL_63:
                do
                {
                  v12[v61] = *(v14 + v61);
                  ++v61;
                }

                while (v15 > v61);
              }

              ++v51;
              v54 += 32;
              v55 = (v55 + v13);
              v56 = (v56 + v13);
              v57 += 4;
              v12 += 32;
              v14 = (v14 + v13);
            }

            while (v51 != v7);
          }
        }

        else if (v15 == v30)
        {
          for (m = 0; m != v7; ++m)
          {
            v32 = v12;
            v33 = v14;
            v34 = v15;
            do
            {
              v35 = *v33++;
              *&v4 = v35;
              *v32++ = v35;
              v34 -= 8;
            }

            while (v34);
            v14 = (v14 + v13);
            v12 += 32;
          }
        }

        else
        {
          v43 = 0;
          v44 = v12;
          do
          {
            v45 = &v12[32 * v43 + v30];
            v46 = v44;
            v47 = v14;
            v48 = v15 & 0x1FFFFFFF8;
            do
            {
              v49 = *v47++;
              *&v4 = v49;
              *v46++ = v49;
              v48 -= 8;
            }

            while (v48);
            v50 = v15 & 0x1FFFFFFF8;
            do
            {
              *v45++ = *(v14 + v50++);
            }

            while (v15 > v50);
            ++v43;
            v14 = (v14 + v13);
            v44 += 4;
          }

          while (v43 != v7);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v66, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *&v4, *&v5, v6);
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj4ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, double a3)
{
  v100[31] = *MEMORY[0x29EDCA608];
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v99, *(a1 + 40), *(a1 + 48), a2, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    v6 = *(a1 + 84);
    if (v6)
    {
      v7 = *(a1 + 72);
      v8 = 4 * v7;
      result = 4 * *(a1 + 76);
      v9 = &v99[4 * v7] + result;
      v11 = *(a1 + 56);
      v10 = *(a1 + 64);
      v12 = 4 * v6;
      v13 = &v99[4 * v5 - 4 + 4 * v7] + 4 * v6 + result;
      v16 = v9 < &v11[4 * v6 + v10 * (v5 - 1)] && v11 < v13 || v10 < 0;
      if (v6 == 1)
      {
        for (i = 0; i != v5; ++i)
        {
          v18 = &v11[v10 * i];
          v19 = &v9[32 * i];
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
        for (j = 0; j != v5; ++j)
        {
          v25 = 0;
          do
          {
            v9[v25] = v11[v25];
            ++v25;
          }

          while (v12 > v25);
          v9 += 32;
          v11 += v10;
        }
      }

      else if (v16)
      {
        for (k = 0; k != v5; ++k)
        {
          v23 = 0;
          do
          {
            v9[v23] = v11[v23];
            ++v23;
          }

          while (v12 > v23);
          v9 += 32;
          v11 += v10;
        }
      }

      else
      {
        v62 = v12 & 0x1FFFFFFF8;
        if (v6 > 7)
        {
          v68 = v12 & 0x1FFFFFFE0;
          if (v12 == (v12 & 0x1FFFFFFE0))
          {
            v69 = 0;
            v70 = &v100[v8] + result;
            v71 = (v11 + 16);
            do
            {
              v72 = v71;
              v73 = v70;
              v74 = v12;
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
              ++v69;
              v70 += 32;
              v71 = (v71 + v10);
            }

            while (v69 != v5);
          }

          else
          {
            v84 = 0;
            v85 = v6 & 6;
            v86 = &v99[v8] + result;
            v87 = &v100[v8] + result;
            result = (v11 + 16);
            v88 = &v11[v68];
            v89 = &v86[v68];
            do
            {
              v90 = result;
              v91 = v87;
              v92 = v12 & 0x1FFFFFFE0;
              do
              {
                v93 = *v90;
                *(v91 - 1) = *(v90 - 1);
                *v91 = v93;
                v91 += 2;
                v90 += 2;
                v92 -= 32;
              }

              while (v92);
              v94 = v12 & 0x1FFFFFFE0;
              if (!v85)
              {
                goto LABEL_87;
              }

              v95 = v89;
              v96 = v88;
              v97 = v62 - v68;
              do
              {
                v98 = *v96++;
                *v95 = v98;
                v95 += 8;
                v97 -= 8;
              }

              while (v97);
              v94 = v12 & 0x1FFFFFFF8;
              if (v12 != v62)
              {
LABEL_87:
                do
                {
                  v9[v94] = v11[v94];
                  ++v94;
                }

                while (v12 > v94);
              }

              ++v84;
              v87 += 32;
              result += v10;
              v88 += v10;
              v89 += 32;
              v9 += 32;
              v11 += v10;
            }

            while (v84 != v5);
          }
        }

        else if (v12 == v62)
        {
          for (m = 0; m != v5; ++m)
          {
            v64 = v9;
            v65 = v11;
            v66 = v12;
            do
            {
              v67 = *v65++;
              *v64 = v67;
              v64 += 8;
              v66 -= 8;
            }

            while (v66);
            v11 += v10;
            v9 += 32;
          }
        }

        else
        {
          v76 = 0;
          v77 = v9;
          do
          {
            v78 = &v9[32 * v76 + v62];
            v79 = v77;
            v80 = v11;
            v81 = v12 & 0x1FFFFFFF8;
            do
            {
              v82 = *v80++;
              *v79 = v82;
              v79 += 8;
              v81 -= 8;
            }

            while (v81);
            v83 = v12 & 0x1FFFFFFF8;
            do
            {
              result = v11[v83];
              *v78++ = result;
              ++v83;
            }

            while (v12 > v83);
            ++v76;
            v11 += v10;
            v77 += 32;
          }

          while (v76 != v5);
        }
      }
    }
  }

  v26 = 0;
  v28 = *(a1 + 40);
  v27 = *(a1 + 48);
  v29 = *(a1 + 88);
  v30 = *(a1 + 89);
  if (*(a1 + 88) && *(a1 + 89))
  {
    v31 = v99[1];
    v32 = v100[2];
    v33 = v100[3];
    *v28 = v99[0];
    v28[1] = v32;
    v28[2] = v31;
    v28[3] = v33;
    v28 += 4;
    v26 = 31;
  }

  v34 = 0;
  *v27 = v26;
  if (v29 && v30 >= 3)
  {
    v35 = v100[7];
    v36 = v100[10];
    v37 = v100[11];
    *v28 = v100[6];
    v28[1] = v36;
    v28[2] = v35;
    v28[3] = v37;
    v28 += 4;
    v34 = 31;
  }

  v38 = 0;
  v27[1] = v34;
  if (v29 >= 5 && v30)
  {
    v39 = v100[1];
    v40 = v100[4];
    v41 = v100[5];
    *v28 = v100[0];
    v28[1] = v40;
    v28[2] = v39;
    v28[3] = v41;
    v28 += 4;
    v38 = 31;
  }

  v42 = 0;
  v27[2] = v38;
  if (v29 >= 5 && v30 >= 3)
  {
    v43 = v100[9];
    v44 = v100[12];
    v45 = v100[13];
    *v28 = v100[8];
    v28[1] = v44;
    v28[2] = v43;
    v28[3] = v45;
    v28 += 4;
    v42 = 31;
  }

  v46 = 0;
  v27[3] = v42;
  if (v29 && v30 >= 5)
  {
    v47 = v100[15];
    v48 = v100[18];
    v49 = v100[19];
    *v28 = v100[14];
    v28[1] = v48;
    v28[2] = v47;
    v28[3] = v49;
    v28 += 4;
    v46 = 31;
  }

  v50 = 0;
  v27[4] = v46;
  if (v29 && v30 >= 7)
  {
    v51 = v100[23];
    v52 = v100[26];
    v53 = v100[27];
    *v28 = v100[22];
    v28[1] = v52;
    v28[2] = v51;
    v28[3] = v53;
    v28 += 4;
    v50 = 31;
  }

  v54 = 0;
  v27[5] = v50;
  if (v29 >= 5 && v30 >= 5)
  {
    v55 = v100[17];
    v56 = v100[20];
    v57 = v100[21];
    *v28 = v100[16];
    v28[1] = v56;
    v28[2] = v55;
    v28[3] = v57;
    v28 += 4;
    v54 = 31;
  }

  v58 = 0;
  v27[6] = v54;
  if (v29 >= 5 && v30 >= 7)
  {
    v59 = v100[25];
    v60 = v100[28];
    v61 = v100[29];
    *v28 = v100[24];
    v28[1] = v60;
    v28[2] = v59;
    v28[3] = v61;
    v58 = 31;
  }

  v27[7] = v58;
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj4ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, double a3)
{
  v67 = *MEMORY[0x29EDCA608];
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(v66, *(a1 + 40), *(a1 + 48), a2, a3);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 84);
    if (v8)
    {
      v9 = *(a1 + 72);
      v10 = 32 * v9;
      v11 = 4 * *(a1 + 76);
      v12 = &v66[32 * v9 + v11];
      v14 = *(a1 + 56);
      v13 = *(a1 + 64);
      v15 = 4 * v8;
      v16 = &v66[32 * v7 - 32 + 32 * v9 + 4 * v8 + v11];
      v19 = v12 < v14 + 4 * v8 + v13 * (v7 - 1) && v14 < v16 || v13 < 0;
      if (v8 == 1)
      {
        for (i = 0; i != v7; ++i)
        {
          v21 = v14 + v13 * i;
          v22 = &v12[32 * i];
          v23 = -1;
          do
          {
            v24 = *v21++;
            *v22++ = v24;
            ++v23;
          }

          while (v23 < 3);
        }
      }

      else if (!v15 || (v15 - 1) >> 32)
      {
        for (j = 0; j != v7; ++j)
        {
          v28 = 0;
          do
          {
            v12[v28] = *(v14 + v28);
            ++v28;
          }

          while (v15 > v28);
          v12 += 32;
          v14 = (v14 + v13);
        }
      }

      else if (v19)
      {
        for (k = 0; k != v7; ++k)
        {
          v26 = 0;
          do
          {
            v12[v26] = *(v14 + v26);
            ++v26;
          }

          while (v15 > v26);
          v12 += 32;
          v14 = (v14 + v13);
        }
      }

      else
      {
        v30 = v15 & 0x1FFFFFFF8;
        if (v8 > 7)
        {
          v36 = v15 & 0x1FFFFFFE0;
          if (v15 == (v15 & 0x1FFFFFFE0))
          {
            v37 = 0;
            v38 = &v66[v10 + 16 + v11];
            v39 = (v14 + 2);
            do
            {
              v40 = v39;
              v41 = v38;
              v42 = v15;
              do
              {
                v4 = *(v40 - 1);
                v5 = *v40;
                *(v41 - 1) = v4;
                *v41 = v5;
                v41 += 2;
                v40 += 2;
                v42 -= 32;
              }

              while (v42);
              ++v37;
              v38 += 32;
              v39 = (v39 + v13);
            }

            while (v37 != v7);
          }

          else
          {
            v51 = 0;
            v52 = v8 & 6;
            v53 = &v66[v10 + v11];
            v54 = &v66[v10 + 16 + v11];
            v55 = (v14 + 2);
            v56 = (v14 + v36);
            v57 = &v53[v36];
            do
            {
              v58 = v55;
              v59 = v54;
              v60 = v15 & 0x1FFFFFFE0;
              do
              {
                v4 = *(v58 - 1);
                v5 = *v58;
                *(v59 - 1) = v4;
                *v59 = v5;
                v59 += 2;
                v58 += 2;
                v60 -= 32;
              }

              while (v60);
              v61 = v15 & 0x1FFFFFFE0;
              if (!v52)
              {
                goto LABEL_63;
              }

              v62 = v57;
              v63 = v56;
              v64 = v30 - v36;
              do
              {
                v65 = *v63++;
                *&v4 = v65;
                *v62++ = v65;
                v64 -= 8;
              }

              while (v64);
              v61 = v15 & 0x1FFFFFFF8;
              if (v15 != v30)
              {
LABEL_63:
                do
                {
                  v12[v61] = *(v14 + v61);
                  ++v61;
                }

                while (v15 > v61);
              }

              ++v51;
              v54 += 32;
              v55 = (v55 + v13);
              v56 = (v56 + v13);
              v57 += 4;
              v12 += 32;
              v14 = (v14 + v13);
            }

            while (v51 != v7);
          }
        }

        else if (v15 == v30)
        {
          for (m = 0; m != v7; ++m)
          {
            v32 = v12;
            v33 = v14;
            v34 = v15;
            do
            {
              v35 = *v33++;
              *&v4 = v35;
              *v32++ = v35;
              v34 -= 8;
            }

            while (v34);
            v14 = (v14 + v13);
            v12 += 32;
          }
        }

        else
        {
          v43 = 0;
          v44 = v12;
          do
          {
            v45 = &v12[32 * v43 + v30];
            v46 = v44;
            v47 = v14;
            v48 = v15 & 0x1FFFFFFF8;
            do
            {
              v49 = *v47++;
              *&v4 = v49;
              *v46++ = v49;
              v48 -= 8;
            }

            while (v48);
            v50 = v15 & 0x1FFFFFFF8;
            do
            {
              *v45++ = *(v14 + v50++);
            }

            while (v15 > v50);
            ++v43;
            v14 = (v14 + v13);
            v44 += 4;
          }

          while (v43 != v7);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v66, 32, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89), *&v4, *&v5, v6);
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj2ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v33[113] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v30, 256, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v31, 256, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v32, 256, v5, v3[2]);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v33, 256, v5 + v6, v3[3]);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 84);
    if (v8)
    {
      v9 = *(a1 + 72);
      v10 = 2 * *(a1 + 76);
      v11 = &v30[16 * v9 + v10];
      v13 = *(a1 + 56);
      v12 = *(a1 + 64);
      v14 = 32 * v8;
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
            *(v11 + v17) = *(v13 + v17);
            ++v17;
          }

          while (v14 > v17);
          v11 += 16;
          v13 += v12;
        }
      }

      else if (v13 < &v30[16 * v7 - 16 + 16 * v9 + v14 / 0x10 + v10] && v11 < v13 + v12 * (v7 - 1) + v14 || v12 < 0)
      {
        for (j = 0; j != v7; ++j)
        {
          v21 = 0;
          do
          {
            *(v11 + v21) = *(v13 + v21);
            ++v21;
          }

          while (v14 > v21);
          v11 += 16;
          v13 += v12;
        }
      }

      else
      {
        v22 = 0;
        v23 = &v30[16 * v9 + 1 + v10];
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
          v23 += 16;
          v24 = (v24 + v12);
        }

        while (v22 != v7);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressMacroblock(v30, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj2ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v33[113] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v30, 256, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v31, 256, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v32, 256, v5, v3[2]);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v33, 256, v5 + v6, v3[3]);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 84);
    if (v8)
    {
      v9 = *(a1 + 72);
      v10 = 32 * *(a1 + 76);
      v11 = &v30[256 * v9 + v10];
      v13 = *(a1 + 56);
      v12 = *(a1 + 64);
      v14 = 32 * v8;
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
          v11 += 256;
          v13 += v12;
        }
      }

      else if (v13 < &v30[256 * v7 - 256 + 256 * v9 + v14 + v10] && v11 < v13 + v12 * (v7 - 1) + v14 || v12 < 0)
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
          v11 += 256;
          v13 += v12;
        }
      }

      else
      {
        v22 = 0;
        v23 = &v30[256 * v9 + 16 + v10];
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
          v23 += 256;
          v24 = (v24 + v12);
        }

        while (v22 != v7);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressMacroblock(v30, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj2ELh1ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v33[113] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v30, 256, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v31, 256, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v32, 256, v5, v3[2]);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v33, 256, v5 + v6, v3[3]);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 84);
    if (v8)
    {
      v9 = *(a1 + 72);
      v10 = 2 * *(a1 + 76);
      v11 = &v30[16 * v9 + v10];
      v13 = *(a1 + 56);
      v12 = *(a1 + 64);
      v14 = 32 * v8;
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
            *(v11 + v17) = *(v13 + v17);
            ++v17;
          }

          while (v14 > v17);
          v11 += 16;
          v13 += v12;
        }
      }

      else if (v13 < &v30[16 * v7 - 16 + 16 * v9 + v14 / 0x10 + v10] && v11 < v13 + v12 * (v7 - 1) + v14 || v12 < 0)
      {
        for (j = 0; j != v7; ++j)
        {
          v21 = 0;
          do
          {
            *(v11 + v21) = *(v13 + v21);
            ++v21;
          }

          while (v14 > v21);
          v11 += 16;
          v13 += v12;
        }
      }

      else
      {
        v22 = 0;
        v23 = &v30[16 * v9 + 1 + v10];
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
          v23 += 16;
          v24 = (v24 + v12);
        }

        while (v22 != v7);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressMacroblock(v30, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE20ELj2ELh0ELNS7_13SubblockOrderE3EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v33[113] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v30, 256, v2, *v3);
  v5 = v4 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v31, 256, v4, v3[1]);
  v6 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(&v32, 256, v5, v3[2]);
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::decompressSubblock(v33, 256, v5 + v6, v3[3]);
  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = *(a1 + 84);
    if (v8)
    {
      v9 = *(a1 + 72);
      v10 = 32 * *(a1 + 76);
      v11 = &v30[256 * v9 + v10];
      v13 = *(a1 + 56);
      v12 = *(a1 + 64);
      v14 = 32 * v8;
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
          v11 += 256;
          v13 += v12;
        }
      }

      else if (v13 < &v30[256 * v7 - 256 + 256 * v9 + v14 + v10] && v11 < v13 + v12 * (v7 - 1) + v14 || v12 < 0)
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
          v11 += 256;
          v13 += v12;
        }
      }

      else
      {
        v22 = 0;
        v23 = &v30[256 * v9 + 16 + v10];
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
          v23 += 256;
          v24 = (v24 + v12);
        }

        while (v22 != v7);
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>::compressMacroblock(v30, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
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
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 128, v2, v9);
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

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
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
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 128, v2, v9);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v53, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
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
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 128, v2, v9);
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

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE14ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
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
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 128, v2, v9);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v53, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
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
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 128, v2, v9);
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

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
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
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 128, v2, v9);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v53, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

_OWORD *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
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
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 128, v2, v9);
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

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE12ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
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
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 128, v2, v9);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v53, 128, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v74[16 * *v4 + *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v76 = vld2q_f64(v12);
      *v8 = vzip1q_s64(*v2, v11);
      v8[4] = vzip2q_s64(v10, v11);
      v8[8] = v76.val[0];
      v8[12] = v76.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[4] = v6;
      v8[8] = v6;
      v8[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 64, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[8].i64[0] = 0;
      v8[8].i64[1] = 0;
      v8[12].i64[0] = 0;
      v8[12].i64[1] = 0;
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
    v14 = *(a1 + 84);
    if (v14)
    {
      v15 = *(a1 + 72);
      v16 = v15 << 6;
      v17 = 4 * *(a1 + 76);
      v18 = &v74[4 * v15].i8[v17];
      v20 = *(a1 + 56);
      v19 = *(a1 + 64);
      v21 = 4 * v14;
      v22 = &v74[4 * v13 - 4 + 4 * v15].i8[4 * v14 + v17];
      v25 = v18 < &v20[4 * v14 + v19 * (v13 - 1)] && v20 < v22 || v19 < 0;
      if (v14 == 1)
      {
        for (i = 0; i != v13; ++i)
        {
          v27 = &v20[v19 * i];
          v28 = &v18[64 * i];
          v29 = -1;
          do
          {
            v30 = *v27++;
            *v28++ = v30;
            ++v29;
          }

          while (v29 < 3);
        }
      }

      else if (!v21 || (v21 - 1) >> 32)
      {
        for (j = 0; j != v13; ++j)
        {
          v34 = 0;
          do
          {
            v18[v34] = v20[v34];
            ++v34;
          }

          while (v21 > v34);
          v18 += 64;
          v20 += v19;
        }
      }

      else if (v25)
      {
        for (k = 0; k != v13; ++k)
        {
          v32 = 0;
          do
          {
            v18[v32] = v20[v32];
            ++v32;
          }

          while (v21 > v32);
          v18 += 64;
          v20 += v19;
        }
      }

      else
      {
        v36 = v21 & 0x1FFFFFFF8;
        if (v14 > 7)
        {
          v42 = v21 & 0x1FFFFFFE0;
          if (v21 == (v21 & 0x1FFFFFFE0))
          {
            v43 = 0;
            v44 = &v74[1].i8[v16 + v17];
            v45 = (v20 + 16);
            do
            {
              v46 = v45;
              v47 = v44;
              v48 = v21;
              do
              {
                v49 = *v46;
                *(v47 - 1) = *(v46 - 1);
                *v47 = v49;
                v47 += 32;
                v46 += 2;
                v48 -= 32;
              }

              while (v48);
              ++v43;
              v44 += 64;
              v45 = (v45 + v19);
            }

            while (v43 != v13);
          }

          else
          {
            v58 = 0;
            v59 = v14 & 6;
            v60 = &v74[0].i8[v16 + v17];
            v61 = &v74[1].i8[v16 + v17];
            v62 = (v20 + 16);
            v63 = &v20[v42];
            v64 = &v60[v42];
            do
            {
              v65 = v62;
              v66 = v61;
              v67 = v21 & 0x1FFFFFFE0;
              do
              {
                v68 = *v65;
                *(v66 - 1) = *(v65 - 1);
                *v66 = v68;
                v66 += 32;
                v65 += 2;
                v67 -= 32;
              }

              while (v67);
              v69 = v21 & 0x1FFFFFFE0;
              if (!v59)
              {
                goto LABEL_72;
              }

              v70 = v64;
              v71 = v63;
              v72 = v36 - v42;
              do
              {
                v73 = *v71++;
                *v70 = v73;
                v70 += 8;
                v72 -= 8;
              }

              while (v72);
              v69 = v21 & 0x1FFFFFFF8;
              if (v21 != v36)
              {
LABEL_72:
                do
                {
                  v18[v69] = v20[v69];
                  ++v69;
                }

                while (v21 > v69);
              }

              ++v58;
              v61 += 64;
              v62 = (v62 + v19);
              v63 += v19;
              v64 += 64;
              v18 += 64;
              v20 += v19;
            }

            while (v58 != v13);
          }
        }

        else if (v21 == v36)
        {
          for (m = 0; m != v13; ++m)
          {
            v38 = v18;
            v39 = v20;
            v40 = v21;
            do
            {
              v41 = *v39;
              v39 += 8;
              *v38 = v41;
              v38 += 8;
              v40 -= 8;
            }

            while (v40);
            v20 += v19;
            v18 += 64;
          }
        }

        else
        {
          v50 = 0;
          v51 = v18;
          do
          {
            v52 = &v18[64 * v50 + v36];
            v53 = v51;
            v54 = v20;
            v55 = v21 & 0x1FFFFFFF8;
            do
            {
              v56 = *v54;
              v54 += 8;
              *v53 = v56;
              v53 += 8;
              v55 -= 8;
            }

            while (v55);
            v57 = v21 & 0x1FFFFFFF8;
            do
            {
              *v52++ = v20[v57++];
            }

            while (v21 > v57);
            ++v50;
            v20 += v19;
            v51 += 64;
          }

          while (v50 != v13);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v74, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v74[256 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v76 = vld2q_f64(v12);
      *v8 = vzip1q_s64(*v2, v11);
      v8[4] = vzip2q_s64(v10, v11);
      v8[8] = v76.val[0];
      v8[12] = v76.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[4] = v6;
      v8[8] = v6;
      v8[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 64, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[8].i64[0] = 0;
      v8[8].i64[1] = 0;
      v8[12].i64[0] = 0;
      v8[12].i64[1] = 0;
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
    v14 = *(a1 + 84);
    if (v14)
    {
      v15 = *(a1 + 72);
      v16 = v15 << 6;
      v17 = 4 * *(a1 + 76);
      v18 = &v74[64 * v15 + v17];
      v20 = *(a1 + 56);
      v19 = *(a1 + 64);
      v21 = 4 * v14;
      v22 = &v74[64 * v13 - 64 + 64 * v15 + 4 * v14 + v17];
      v25 = v18 < v20 + 4 * v14 + v19 * (v13 - 1) && v20 < v22 || v19 < 0;
      if (v14 == 1)
      {
        for (i = 0; i != v13; ++i)
        {
          v27 = v20 + v19 * i;
          v28 = &v18[64 * i];
          v29 = -1;
          do
          {
            v30 = *v27++;
            *v28++ = v30;
            ++v29;
          }

          while (v29 < 3);
        }
      }

      else if (!v21 || (v21 - 1) >> 32)
      {
        for (j = 0; j != v13; ++j)
        {
          v34 = 0;
          do
          {
            v18[v34] = *(v20 + v34);
            ++v34;
          }

          while (v21 > v34);
          v18 += 64;
          v20 = (v20 + v19);
        }
      }

      else if (v25)
      {
        for (k = 0; k != v13; ++k)
        {
          v32 = 0;
          do
          {
            v18[v32] = *(v20 + v32);
            ++v32;
          }

          while (v21 > v32);
          v18 += 64;
          v20 = (v20 + v19);
        }
      }

      else
      {
        v36 = v21 & 0x1FFFFFFF8;
        if (v14 > 7)
        {
          v42 = v21 & 0x1FFFFFFE0;
          if (v21 == (v21 & 0x1FFFFFFE0))
          {
            v43 = 0;
            v44 = &v74[v16 + 16 + v17];
            v45 = (v20 + 2);
            do
            {
              v46 = v45;
              v47 = v44;
              v48 = v21;
              do
              {
                v49 = *v46;
                *(v47 - 1) = *(v46 - 1);
                *v47 = v49;
                v47 += 2;
                v46 += 2;
                v48 -= 32;
              }

              while (v48);
              ++v43;
              v44 += 64;
              v45 = (v45 + v19);
            }

            while (v43 != v13);
          }

          else
          {
            v58 = 0;
            v59 = v14 & 6;
            v60 = &v74[v16 + v17];
            v61 = &v74[v16 + 16 + v17];
            v62 = (v20 + 2);
            v63 = (v20 + v42);
            v64 = &v60[v42];
            do
            {
              v65 = v62;
              v66 = v61;
              v67 = v21 & 0x1FFFFFFE0;
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
              v69 = v21 & 0x1FFFFFFE0;
              if (!v59)
              {
                goto LABEL_72;
              }

              v70 = v64;
              v71 = v63;
              v72 = v36 - v42;
              do
              {
                v73 = *v71++;
                *v70++ = v73;
                v72 -= 8;
              }

              while (v72);
              v69 = v21 & 0x1FFFFFFF8;
              if (v21 != v36)
              {
LABEL_72:
                do
                {
                  v18[v69] = *(v20 + v69);
                  ++v69;
                }

                while (v21 > v69);
              }

              ++v58;
              v61 += 64;
              v62 = (v62 + v19);
              v63 = (v63 + v19);
              v64 += 8;
              v18 += 64;
              v20 = (v20 + v19);
            }

            while (v58 != v13);
          }
        }

        else if (v21 == v36)
        {
          for (m = 0; m != v13; ++m)
          {
            v38 = v18;
            v39 = v20;
            v40 = v21;
            do
            {
              v41 = *v39++;
              *v38++ = v41;
              v40 -= 8;
            }

            while (v40);
            v20 = (v20 + v19);
            v18 += 64;
          }
        }

        else
        {
          v50 = 0;
          v51 = v18;
          do
          {
            v52 = &v18[64 * v50 + v36];
            v53 = v51;
            v54 = v20;
            v55 = v21 & 0x1FFFFFFF8;
            do
            {
              v56 = *v54++;
              *v53++ = v56;
              v55 -= 8;
            }

            while (v55);
            v57 = v21 & 0x1FFFFFFF8;
            do
            {
              *v52++ = *(v20 + v57++);
            }

            while (v21 > v57);
            ++v50;
            v20 = (v20 + v19);
            v51 += 8;
          }

          while (v50 != v13);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v74, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v74[16 * *v4 + *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v76 = vld2q_f64(v12);
      *v8 = vzip1q_s64(*v2, v11);
      v8[4] = vzip2q_s64(v10, v11);
      v8[8] = v76.val[0];
      v8[12] = v76.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[4] = v6;
      v8[8] = v6;
      v8[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 64, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[8].i64[0] = 0;
      v8[8].i64[1] = 0;
      v8[12].i64[0] = 0;
      v8[12].i64[1] = 0;
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
    v14 = *(a1 + 84);
    if (v14)
    {
      v15 = *(a1 + 72);
      v16 = v15 << 6;
      v17 = 4 * *(a1 + 76);
      v18 = &v74[4 * v15].i8[v17];
      v20 = *(a1 + 56);
      v19 = *(a1 + 64);
      v21 = 4 * v14;
      v22 = &v74[4 * v13 - 4 + 4 * v15].i8[4 * v14 + v17];
      v25 = v18 < &v20[4 * v14 + v19 * (v13 - 1)] && v20 < v22 || v19 < 0;
      if (v14 == 1)
      {
        for (i = 0; i != v13; ++i)
        {
          v27 = &v20[v19 * i];
          v28 = &v18[64 * i];
          v29 = -1;
          do
          {
            v30 = *v27++;
            *v28++ = v30;
            ++v29;
          }

          while (v29 < 3);
        }
      }

      else if (!v21 || (v21 - 1) >> 32)
      {
        for (j = 0; j != v13; ++j)
        {
          v34 = 0;
          do
          {
            v18[v34] = v20[v34];
            ++v34;
          }

          while (v21 > v34);
          v18 += 64;
          v20 += v19;
        }
      }

      else if (v25)
      {
        for (k = 0; k != v13; ++k)
        {
          v32 = 0;
          do
          {
            v18[v32] = v20[v32];
            ++v32;
          }

          while (v21 > v32);
          v18 += 64;
          v20 += v19;
        }
      }

      else
      {
        v36 = v21 & 0x1FFFFFFF8;
        if (v14 > 7)
        {
          v42 = v21 & 0x1FFFFFFE0;
          if (v21 == (v21 & 0x1FFFFFFE0))
          {
            v43 = 0;
            v44 = &v74[1].i8[v16 + v17];
            v45 = (v20 + 16);
            do
            {
              v46 = v45;
              v47 = v44;
              v48 = v21;
              do
              {
                v49 = *v46;
                *(v47 - 1) = *(v46 - 1);
                *v47 = v49;
                v47 += 32;
                v46 += 2;
                v48 -= 32;
              }

              while (v48);
              ++v43;
              v44 += 64;
              v45 = (v45 + v19);
            }

            while (v43 != v13);
          }

          else
          {
            v58 = 0;
            v59 = v14 & 6;
            v60 = &v74[0].i8[v16 + v17];
            v61 = &v74[1].i8[v16 + v17];
            v62 = (v20 + 16);
            v63 = &v20[v42];
            v64 = &v60[v42];
            do
            {
              v65 = v62;
              v66 = v61;
              v67 = v21 & 0x1FFFFFFE0;
              do
              {
                v68 = *v65;
                *(v66 - 1) = *(v65 - 1);
                *v66 = v68;
                v66 += 32;
                v65 += 2;
                v67 -= 32;
              }

              while (v67);
              v69 = v21 & 0x1FFFFFFE0;
              if (!v59)
              {
                goto LABEL_72;
              }

              v70 = v64;
              v71 = v63;
              v72 = v36 - v42;
              do
              {
                v73 = *v71++;
                *v70 = v73;
                v70 += 8;
                v72 -= 8;
              }

              while (v72);
              v69 = v21 & 0x1FFFFFFF8;
              if (v21 != v36)
              {
LABEL_72:
                do
                {
                  v18[v69] = v20[v69];
                  ++v69;
                }

                while (v21 > v69);
              }

              ++v58;
              v61 += 64;
              v62 = (v62 + v19);
              v63 += v19;
              v64 += 64;
              v18 += 64;
              v20 += v19;
            }

            while (v58 != v13);
          }
        }

        else if (v21 == v36)
        {
          for (m = 0; m != v13; ++m)
          {
            v38 = v18;
            v39 = v20;
            v40 = v21;
            do
            {
              v41 = *v39;
              v39 += 8;
              *v38 = v41;
              v38 += 8;
              v40 -= 8;
            }

            while (v40);
            v20 += v19;
            v18 += 64;
          }
        }

        else
        {
          v50 = 0;
          v51 = v18;
          do
          {
            v52 = &v18[64 * v50 + v36];
            v53 = v51;
            v54 = v20;
            v55 = v21 & 0x1FFFFFFF8;
            do
            {
              v56 = *v54;
              v54 += 8;
              *v53 = v56;
              v53 += 8;
              v55 -= 8;
            }

            while (v55);
            v57 = v21 & 0x1FFFFFFF8;
            do
            {
              *v52++ = v20[v57++];
            }

            while (v21 > v57);
            ++v50;
            v20 += v19;
            v51 += 64;
          }

          while (v50 != v13);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v74, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE9ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v74[256 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v76 = vld2q_f64(v12);
      *v8 = vzip1q_s64(*v2, v11);
      v8[4] = vzip2q_s64(v10, v11);
      v8[8] = v76.val[0];
      v8[12] = v76.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[4] = v6;
      v8[8] = v6;
      v8[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 64, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[8].i64[0] = 0;
      v8[8].i64[1] = 0;
      v8[12].i64[0] = 0;
      v8[12].i64[1] = 0;
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
    v14 = *(a1 + 84);
    if (v14)
    {
      v15 = *(a1 + 72);
      v16 = v15 << 6;
      v17 = 4 * *(a1 + 76);
      v18 = &v74[64 * v15 + v17];
      v20 = *(a1 + 56);
      v19 = *(a1 + 64);
      v21 = 4 * v14;
      v22 = &v74[64 * v13 - 64 + 64 * v15 + 4 * v14 + v17];
      v25 = v18 < v20 + 4 * v14 + v19 * (v13 - 1) && v20 < v22 || v19 < 0;
      if (v14 == 1)
      {
        for (i = 0; i != v13; ++i)
        {
          v27 = v20 + v19 * i;
          v28 = &v18[64 * i];
          v29 = -1;
          do
          {
            v30 = *v27++;
            *v28++ = v30;
            ++v29;
          }

          while (v29 < 3);
        }
      }

      else if (!v21 || (v21 - 1) >> 32)
      {
        for (j = 0; j != v13; ++j)
        {
          v34 = 0;
          do
          {
            v18[v34] = *(v20 + v34);
            ++v34;
          }

          while (v21 > v34);
          v18 += 64;
          v20 = (v20 + v19);
        }
      }

      else if (v25)
      {
        for (k = 0; k != v13; ++k)
        {
          v32 = 0;
          do
          {
            v18[v32] = *(v20 + v32);
            ++v32;
          }

          while (v21 > v32);
          v18 += 64;
          v20 = (v20 + v19);
        }
      }

      else
      {
        v36 = v21 & 0x1FFFFFFF8;
        if (v14 > 7)
        {
          v42 = v21 & 0x1FFFFFFE0;
          if (v21 == (v21 & 0x1FFFFFFE0))
          {
            v43 = 0;
            v44 = &v74[v16 + 16 + v17];
            v45 = (v20 + 2);
            do
            {
              v46 = v45;
              v47 = v44;
              v48 = v21;
              do
              {
                v49 = *v46;
                *(v47 - 1) = *(v46 - 1);
                *v47 = v49;
                v47 += 2;
                v46 += 2;
                v48 -= 32;
              }

              while (v48);
              ++v43;
              v44 += 64;
              v45 = (v45 + v19);
            }

            while (v43 != v13);
          }

          else
          {
            v58 = 0;
            v59 = v14 & 6;
            v60 = &v74[v16 + v17];
            v61 = &v74[v16 + 16 + v17];
            v62 = (v20 + 2);
            v63 = (v20 + v42);
            v64 = &v60[v42];
            do
            {
              v65 = v62;
              v66 = v61;
              v67 = v21 & 0x1FFFFFFE0;
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
              v69 = v21 & 0x1FFFFFFE0;
              if (!v59)
              {
                goto LABEL_72;
              }

              v70 = v64;
              v71 = v63;
              v72 = v36 - v42;
              do
              {
                v73 = *v71++;
                *v70++ = v73;
                v72 -= 8;
              }

              while (v72);
              v69 = v21 & 0x1FFFFFFF8;
              if (v21 != v36)
              {
LABEL_72:
                do
                {
                  v18[v69] = *(v20 + v69);
                  ++v69;
                }

                while (v21 > v69);
              }

              ++v58;
              v61 += 64;
              v62 = (v62 + v19);
              v63 = (v63 + v19);
              v64 += 8;
              v18 += 64;
              v20 = (v20 + v19);
            }

            while (v58 != v13);
          }
        }

        else if (v21 == v36)
        {
          for (m = 0; m != v13; ++m)
          {
            v38 = v18;
            v39 = v20;
            v40 = v21;
            do
            {
              v41 = *v39++;
              *v38++ = v41;
              v40 -= 8;
            }

            while (v40);
            v20 = (v20 + v19);
            v18 += 64;
          }
        }

        else
        {
          v50 = 0;
          v51 = v18;
          do
          {
            v52 = &v18[64 * v50 + v36];
            v53 = v51;
            v54 = v20;
            v55 = v21 & 0x1FFFFFFF8;
            do
            {
              v56 = *v54++;
              *v53++ = v56;
              v55 -= 8;
            }

            while (v55);
            v57 = v21 & 0x1FFFFFFF8;
            do
            {
              *v52++ = *(v20 + v57++);
            }

            while (v21 > v57);
            ++v50;
            v20 = (v20 + v19);
            v51 += 8;
          }

          while (v50 != v13);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v74, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v74[16 * *v4 + *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v76 = vld2q_f64(v12);
      *v8 = vzip1q_s64(*v2, v11);
      v8[4] = vzip2q_s64(v10, v11);
      v8[8] = v76.val[0];
      v8[12] = v76.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[4] = v6;
      v8[8] = v6;
      v8[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 64, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[8].i64[0] = 0;
      v8[8].i64[1] = 0;
      v8[12].i64[0] = 0;
      v8[12].i64[1] = 0;
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
    v14 = *(a1 + 84);
    if (v14)
    {
      v15 = *(a1 + 72);
      v16 = v15 << 6;
      v17 = 4 * *(a1 + 76);
      v18 = &v74[4 * v15].i8[v17];
      v20 = *(a1 + 56);
      v19 = *(a1 + 64);
      v21 = 4 * v14;
      v22 = &v74[4 * v13 - 4 + 4 * v15].i8[4 * v14 + v17];
      v25 = v18 < &v20[4 * v14 + v19 * (v13 - 1)] && v20 < v22 || v19 < 0;
      if (v14 == 1)
      {
        for (i = 0; i != v13; ++i)
        {
          v27 = &v20[v19 * i];
          v28 = &v18[64 * i];
          v29 = -1;
          do
          {
            v30 = *v27++;
            *v28++ = v30;
            ++v29;
          }

          while (v29 < 3);
        }
      }

      else if (!v21 || (v21 - 1) >> 32)
      {
        for (j = 0; j != v13; ++j)
        {
          v34 = 0;
          do
          {
            v18[v34] = v20[v34];
            ++v34;
          }

          while (v21 > v34);
          v18 += 64;
          v20 += v19;
        }
      }

      else if (v25)
      {
        for (k = 0; k != v13; ++k)
        {
          v32 = 0;
          do
          {
            v18[v32] = v20[v32];
            ++v32;
          }

          while (v21 > v32);
          v18 += 64;
          v20 += v19;
        }
      }

      else
      {
        v36 = v21 & 0x1FFFFFFF8;
        if (v14 > 7)
        {
          v42 = v21 & 0x1FFFFFFE0;
          if (v21 == (v21 & 0x1FFFFFFE0))
          {
            v43 = 0;
            v44 = &v74[1].i8[v16 + v17];
            v45 = (v20 + 16);
            do
            {
              v46 = v45;
              v47 = v44;
              v48 = v21;
              do
              {
                v49 = *v46;
                *(v47 - 1) = *(v46 - 1);
                *v47 = v49;
                v47 += 32;
                v46 += 2;
                v48 -= 32;
              }

              while (v48);
              ++v43;
              v44 += 64;
              v45 = (v45 + v19);
            }

            while (v43 != v13);
          }

          else
          {
            v58 = 0;
            v59 = v14 & 6;
            v60 = &v74[0].i8[v16 + v17];
            v61 = &v74[1].i8[v16 + v17];
            v62 = (v20 + 16);
            v63 = &v20[v42];
            v64 = &v60[v42];
            do
            {
              v65 = v62;
              v66 = v61;
              v67 = v21 & 0x1FFFFFFE0;
              do
              {
                v68 = *v65;
                *(v66 - 1) = *(v65 - 1);
                *v66 = v68;
                v66 += 32;
                v65 += 2;
                v67 -= 32;
              }

              while (v67);
              v69 = v21 & 0x1FFFFFFE0;
              if (!v59)
              {
                goto LABEL_72;
              }

              v70 = v64;
              v71 = v63;
              v72 = v36 - v42;
              do
              {
                v73 = *v71++;
                *v70 = v73;
                v70 += 8;
                v72 -= 8;
              }

              while (v72);
              v69 = v21 & 0x1FFFFFFF8;
              if (v21 != v36)
              {
LABEL_72:
                do
                {
                  v18[v69] = v20[v69];
                  ++v69;
                }

                while (v21 > v69);
              }

              ++v58;
              v61 += 64;
              v62 = (v62 + v19);
              v63 += v19;
              v64 += 64;
              v18 += 64;
              v20 += v19;
            }

            while (v58 != v13);
          }
        }

        else if (v21 == v36)
        {
          for (m = 0; m != v13; ++m)
          {
            v38 = v18;
            v39 = v20;
            v40 = v21;
            do
            {
              v41 = *v39;
              v39 += 8;
              *v38 = v41;
              v38 += 8;
              v40 -= 8;
            }

            while (v40);
            v20 += v19;
            v18 += 64;
          }
        }

        else
        {
          v50 = 0;
          v51 = v18;
          do
          {
            v52 = &v18[64 * v50 + v36];
            v53 = v51;
            v54 = v20;
            v55 = v21 & 0x1FFFFFFF8;
            do
            {
              v56 = *v54;
              v54 += 8;
              *v53 = v56;
              v53 += 8;
              v55 -= 8;
            }

            while (v55);
            v57 = v21 & 0x1FFFFFFF8;
            do
            {
              *v52++ = v20[v57++];
            }

            while (v21 > v57);
            ++v50;
            v20 += v19;
            v51 += 64;
          }

          while (v50 != v13);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v74, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v74[256 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v76 = vld2q_f64(v12);
      *v8 = vzip1q_s64(*v2, v11);
      v8[4] = vzip2q_s64(v10, v11);
      v8[8] = v76.val[0];
      v8[12] = v76.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[4] = v6;
      v8[8] = v6;
      v8[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 64, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[8].i64[0] = 0;
      v8[8].i64[1] = 0;
      v8[12].i64[0] = 0;
      v8[12].i64[1] = 0;
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
    v14 = *(a1 + 84);
    if (v14)
    {
      v15 = *(a1 + 72);
      v16 = v15 << 6;
      v17 = 4 * *(a1 + 76);
      v18 = &v74[64 * v15 + v17];
      v20 = *(a1 + 56);
      v19 = *(a1 + 64);
      v21 = 4 * v14;
      v22 = &v74[64 * v13 - 64 + 64 * v15 + 4 * v14 + v17];
      v25 = v18 < v20 + 4 * v14 + v19 * (v13 - 1) && v20 < v22 || v19 < 0;
      if (v14 == 1)
      {
        for (i = 0; i != v13; ++i)
        {
          v27 = v20 + v19 * i;
          v28 = &v18[64 * i];
          v29 = -1;
          do
          {
            v30 = *v27++;
            *v28++ = v30;
            ++v29;
          }

          while (v29 < 3);
        }
      }

      else if (!v21 || (v21 - 1) >> 32)
      {
        for (j = 0; j != v13; ++j)
        {
          v34 = 0;
          do
          {
            v18[v34] = *(v20 + v34);
            ++v34;
          }

          while (v21 > v34);
          v18 += 64;
          v20 = (v20 + v19);
        }
      }

      else if (v25)
      {
        for (k = 0; k != v13; ++k)
        {
          v32 = 0;
          do
          {
            v18[v32] = *(v20 + v32);
            ++v32;
          }

          while (v21 > v32);
          v18 += 64;
          v20 = (v20 + v19);
        }
      }

      else
      {
        v36 = v21 & 0x1FFFFFFF8;
        if (v14 > 7)
        {
          v42 = v21 & 0x1FFFFFFE0;
          if (v21 == (v21 & 0x1FFFFFFE0))
          {
            v43 = 0;
            v44 = &v74[v16 + 16 + v17];
            v45 = (v20 + 2);
            do
            {
              v46 = v45;
              v47 = v44;
              v48 = v21;
              do
              {
                v49 = *v46;
                *(v47 - 1) = *(v46 - 1);
                *v47 = v49;
                v47 += 2;
                v46 += 2;
                v48 -= 32;
              }

              while (v48);
              ++v43;
              v44 += 64;
              v45 = (v45 + v19);
            }

            while (v43 != v13);
          }

          else
          {
            v58 = 0;
            v59 = v14 & 6;
            v60 = &v74[v16 + v17];
            v61 = &v74[v16 + 16 + v17];
            v62 = (v20 + 2);
            v63 = (v20 + v42);
            v64 = &v60[v42];
            do
            {
              v65 = v62;
              v66 = v61;
              v67 = v21 & 0x1FFFFFFE0;
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
              v69 = v21 & 0x1FFFFFFE0;
              if (!v59)
              {
                goto LABEL_72;
              }

              v70 = v64;
              v71 = v63;
              v72 = v36 - v42;
              do
              {
                v73 = *v71++;
                *v70++ = v73;
                v72 -= 8;
              }

              while (v72);
              v69 = v21 & 0x1FFFFFFF8;
              if (v21 != v36)
              {
LABEL_72:
                do
                {
                  v18[v69] = *(v20 + v69);
                  ++v69;
                }

                while (v21 > v69);
              }

              ++v58;
              v61 += 64;
              v62 = (v62 + v19);
              v63 = (v63 + v19);
              v64 += 8;
              v18 += 64;
              v20 = (v20 + v19);
            }

            while (v58 != v13);
          }
        }

        else if (v21 == v36)
        {
          for (m = 0; m != v13; ++m)
          {
            v38 = v18;
            v39 = v20;
            v40 = v21;
            do
            {
              v41 = *v39++;
              *v38++ = v41;
              v40 -= 8;
            }

            while (v40);
            v20 = (v20 + v19);
            v18 += 64;
          }
        }

        else
        {
          v50 = 0;
          v51 = v18;
          do
          {
            v52 = &v18[64 * v50 + v36];
            v53 = v51;
            v54 = v20;
            v55 = v21 & 0x1FFFFFFF8;
            do
            {
              v56 = *v54++;
              *v53++ = v56;
              v55 -= 8;
            }

            while (v55);
            v57 = v21 & 0x1FFFFFFF8;
            do
            {
              *v52++ = *(v20 + v57++);
            }

            while (v21 > v57);
            ++v50;
            v20 = (v20 + v19);
            v51 += 8;
          }

          while (v50 != v13);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v74, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v74[16 * *v4 + *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v76 = vld2q_f64(v12);
      *v8 = vzip1q_s64(*v2, v11);
      v8[4] = vzip2q_s64(v10, v11);
      v8[8] = v76.val[0];
      v8[12] = v76.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[4] = v6;
      v8[8] = v6;
      v8[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 64, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[8].i64[0] = 0;
      v8[8].i64[1] = 0;
      v8[12].i64[0] = 0;
      v8[12].i64[1] = 0;
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
    v14 = *(a1 + 84);
    if (v14)
    {
      v15 = *(a1 + 72);
      v16 = v15 << 6;
      v17 = 4 * *(a1 + 76);
      v18 = &v74[4 * v15].i8[v17];
      v20 = *(a1 + 56);
      v19 = *(a1 + 64);
      v21 = 4 * v14;
      v22 = &v74[4 * v13 - 4 + 4 * v15].i8[4 * v14 + v17];
      v25 = v18 < &v20[4 * v14 + v19 * (v13 - 1)] && v20 < v22 || v19 < 0;
      if (v14 == 1)
      {
        for (i = 0; i != v13; ++i)
        {
          v27 = &v20[v19 * i];
          v28 = &v18[64 * i];
          v29 = -1;
          do
          {
            v30 = *v27++;
            *v28++ = v30;
            ++v29;
          }

          while (v29 < 3);
        }
      }

      else if (!v21 || (v21 - 1) >> 32)
      {
        for (j = 0; j != v13; ++j)
        {
          v34 = 0;
          do
          {
            v18[v34] = v20[v34];
            ++v34;
          }

          while (v21 > v34);
          v18 += 64;
          v20 += v19;
        }
      }

      else if (v25)
      {
        for (k = 0; k != v13; ++k)
        {
          v32 = 0;
          do
          {
            v18[v32] = v20[v32];
            ++v32;
          }

          while (v21 > v32);
          v18 += 64;
          v20 += v19;
        }
      }

      else
      {
        v36 = v21 & 0x1FFFFFFF8;
        if (v14 > 7)
        {
          v42 = v21 & 0x1FFFFFFE0;
          if (v21 == (v21 & 0x1FFFFFFE0))
          {
            v43 = 0;
            v44 = &v74[1].i8[v16 + v17];
            v45 = (v20 + 16);
            do
            {
              v46 = v45;
              v47 = v44;
              v48 = v21;
              do
              {
                v49 = *v46;
                *(v47 - 1) = *(v46 - 1);
                *v47 = v49;
                v47 += 32;
                v46 += 2;
                v48 -= 32;
              }

              while (v48);
              ++v43;
              v44 += 64;
              v45 = (v45 + v19);
            }

            while (v43 != v13);
          }

          else
          {
            v58 = 0;
            v59 = v14 & 6;
            v60 = &v74[0].i8[v16 + v17];
            v61 = &v74[1].i8[v16 + v17];
            v62 = (v20 + 16);
            v63 = &v20[v42];
            v64 = &v60[v42];
            do
            {
              v65 = v62;
              v66 = v61;
              v67 = v21 & 0x1FFFFFFE0;
              do
              {
                v68 = *v65;
                *(v66 - 1) = *(v65 - 1);
                *v66 = v68;
                v66 += 32;
                v65 += 2;
                v67 -= 32;
              }

              while (v67);
              v69 = v21 & 0x1FFFFFFE0;
              if (!v59)
              {
                goto LABEL_72;
              }

              v70 = v64;
              v71 = v63;
              v72 = v36 - v42;
              do
              {
                v73 = *v71++;
                *v70 = v73;
                v70 += 8;
                v72 -= 8;
              }

              while (v72);
              v69 = v21 & 0x1FFFFFFF8;
              if (v21 != v36)
              {
LABEL_72:
                do
                {
                  v18[v69] = v20[v69];
                  ++v69;
                }

                while (v21 > v69);
              }

              ++v58;
              v61 += 64;
              v62 = (v62 + v19);
              v63 += v19;
              v64 += 64;
              v18 += 64;
              v20 += v19;
            }

            while (v58 != v13);
          }
        }

        else if (v21 == v36)
        {
          for (m = 0; m != v13; ++m)
          {
            v38 = v18;
            v39 = v20;
            v40 = v21;
            do
            {
              v41 = *v39;
              v39 += 8;
              *v38 = v41;
              v38 += 8;
              v40 -= 8;
            }

            while (v40);
            v20 += v19;
            v18 += 64;
          }
        }

        else
        {
          v50 = 0;
          v51 = v18;
          do
          {
            v52 = &v18[64 * v50 + v36];
            v53 = v51;
            v54 = v20;
            v55 = v21 & 0x1FFFFFFF8;
            do
            {
              v56 = *v54;
              v54 += 8;
              *v53 = v56;
              v53 += 8;
              v55 -= 8;
            }

            while (v55);
            v57 = v21 & 0x1FFFFFFF8;
            do
            {
              *v52++ = v20[v57++];
            }

            while (v21 > v57);
            ++v50;
            v20 += v19;
            v51 += 64;
          }

          while (v50 != v13);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v74, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE7ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v74[256 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v76 = vld2q_f64(v12);
      *v8 = vzip1q_s64(*v2, v11);
      v8[4] = vzip2q_s64(v10, v11);
      v8[8] = v76.val[0];
      v8[12] = v76.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[4] = v6;
      v8[8] = v6;
      v8[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 64, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[8].i64[0] = 0;
      v8[8].i64[1] = 0;
      v8[12].i64[0] = 0;
      v8[12].i64[1] = 0;
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
    v14 = *(a1 + 84);
    if (v14)
    {
      v15 = *(a1 + 72);
      v16 = v15 << 6;
      v17 = 4 * *(a1 + 76);
      v18 = &v74[64 * v15 + v17];
      v20 = *(a1 + 56);
      v19 = *(a1 + 64);
      v21 = 4 * v14;
      v22 = &v74[64 * v13 - 64 + 64 * v15 + 4 * v14 + v17];
      v25 = v18 < v20 + 4 * v14 + v19 * (v13 - 1) && v20 < v22 || v19 < 0;
      if (v14 == 1)
      {
        for (i = 0; i != v13; ++i)
        {
          v27 = v20 + v19 * i;
          v28 = &v18[64 * i];
          v29 = -1;
          do
          {
            v30 = *v27++;
            *v28++ = v30;
            ++v29;
          }

          while (v29 < 3);
        }
      }

      else if (!v21 || (v21 - 1) >> 32)
      {
        for (j = 0; j != v13; ++j)
        {
          v34 = 0;
          do
          {
            v18[v34] = *(v20 + v34);
            ++v34;
          }

          while (v21 > v34);
          v18 += 64;
          v20 = (v20 + v19);
        }
      }

      else if (v25)
      {
        for (k = 0; k != v13; ++k)
        {
          v32 = 0;
          do
          {
            v18[v32] = *(v20 + v32);
            ++v32;
          }

          while (v21 > v32);
          v18 += 64;
          v20 = (v20 + v19);
        }
      }

      else
      {
        v36 = v21 & 0x1FFFFFFF8;
        if (v14 > 7)
        {
          v42 = v21 & 0x1FFFFFFE0;
          if (v21 == (v21 & 0x1FFFFFFE0))
          {
            v43 = 0;
            v44 = &v74[v16 + 16 + v17];
            v45 = (v20 + 2);
            do
            {
              v46 = v45;
              v47 = v44;
              v48 = v21;
              do
              {
                v49 = *v46;
                *(v47 - 1) = *(v46 - 1);
                *v47 = v49;
                v47 += 2;
                v46 += 2;
                v48 -= 32;
              }

              while (v48);
              ++v43;
              v44 += 64;
              v45 = (v45 + v19);
            }

            while (v43 != v13);
          }

          else
          {
            v58 = 0;
            v59 = v14 & 6;
            v60 = &v74[v16 + v17];
            v61 = &v74[v16 + 16 + v17];
            v62 = (v20 + 2);
            v63 = (v20 + v42);
            v64 = &v60[v42];
            do
            {
              v65 = v62;
              v66 = v61;
              v67 = v21 & 0x1FFFFFFE0;
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
              v69 = v21 & 0x1FFFFFFE0;
              if (!v59)
              {
                goto LABEL_72;
              }

              v70 = v64;
              v71 = v63;
              v72 = v36 - v42;
              do
              {
                v73 = *v71++;
                *v70++ = v73;
                v72 -= 8;
              }

              while (v72);
              v69 = v21 & 0x1FFFFFFF8;
              if (v21 != v36)
              {
LABEL_72:
                do
                {
                  v18[v69] = *(v20 + v69);
                  ++v69;
                }

                while (v21 > v69);
              }

              ++v58;
              v61 += 64;
              v62 = (v62 + v19);
              v63 = (v63 + v19);
              v64 += 8;
              v18 += 64;
              v20 = (v20 + v19);
            }

            while (v58 != v13);
          }
        }

        else if (v21 == v36)
        {
          for (m = 0; m != v13; ++m)
          {
            v38 = v18;
            v39 = v20;
            v40 = v21;
            do
            {
              v41 = *v39++;
              *v38++ = v41;
              v40 -= 8;
            }

            while (v40);
            v20 = (v20 + v19);
            v18 += 64;
          }
        }

        else
        {
          v50 = 0;
          v51 = v18;
          do
          {
            v52 = &v18[64 * v50 + v36];
            v53 = v51;
            v54 = v20;
            v55 = v21 & 0x1FFFFFFF8;
            do
            {
              v56 = *v54++;
              *v53++ = v56;
              v55 -= 8;
            }

            while (v55);
            v57 = v21 & 0x1FFFFFFF8;
            do
            {
              *v52++ = *(v20 + v57++);
            }

            while (v21 > v57);
            ++v50;
            v20 = (v20 + v19);
            v51 += 8;
          }

          while (v50 != v13);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v74, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v74[16 * *v4 + *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v76 = vld2q_f64(v12);
      *v8 = vzip1q_s64(*v2, v11);
      v8[4] = vzip2q_s64(v10, v11);
      v8[8] = v76.val[0];
      v8[12] = v76.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[4] = v6;
      v8[8] = v6;
      v8[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 64, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[8].i64[0] = 0;
      v8[8].i64[1] = 0;
      v8[12].i64[0] = 0;
      v8[12].i64[1] = 0;
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
    v14 = *(a1 + 84);
    if (v14)
    {
      v15 = *(a1 + 72);
      v16 = v15 << 6;
      v17 = 4 * *(a1 + 76);
      v18 = &v74[4 * v15].i8[v17];
      v20 = *(a1 + 56);
      v19 = *(a1 + 64);
      v21 = 4 * v14;
      v22 = &v74[4 * v13 - 4 + 4 * v15].i8[4 * v14 + v17];
      v25 = v18 < &v20[4 * v14 + v19 * (v13 - 1)] && v20 < v22 || v19 < 0;
      if (v14 == 1)
      {
        for (i = 0; i != v13; ++i)
        {
          v27 = &v20[v19 * i];
          v28 = &v18[64 * i];
          v29 = -1;
          do
          {
            v30 = *v27++;
            *v28++ = v30;
            ++v29;
          }

          while (v29 < 3);
        }
      }

      else if (!v21 || (v21 - 1) >> 32)
      {
        for (j = 0; j != v13; ++j)
        {
          v34 = 0;
          do
          {
            v18[v34] = v20[v34];
            ++v34;
          }

          while (v21 > v34);
          v18 += 64;
          v20 += v19;
        }
      }

      else if (v25)
      {
        for (k = 0; k != v13; ++k)
        {
          v32 = 0;
          do
          {
            v18[v32] = v20[v32];
            ++v32;
          }

          while (v21 > v32);
          v18 += 64;
          v20 += v19;
        }
      }

      else
      {
        v36 = v21 & 0x1FFFFFFF8;
        if (v14 > 7)
        {
          v42 = v21 & 0x1FFFFFFE0;
          if (v21 == (v21 & 0x1FFFFFFE0))
          {
            v43 = 0;
            v44 = &v74[1].i8[v16 + v17];
            v45 = (v20 + 16);
            do
            {
              v46 = v45;
              v47 = v44;
              v48 = v21;
              do
              {
                v49 = *v46;
                *(v47 - 1) = *(v46 - 1);
                *v47 = v49;
                v47 += 32;
                v46 += 2;
                v48 -= 32;
              }

              while (v48);
              ++v43;
              v44 += 64;
              v45 = (v45 + v19);
            }

            while (v43 != v13);
          }

          else
          {
            v58 = 0;
            v59 = v14 & 6;
            v60 = &v74[0].i8[v16 + v17];
            v61 = &v74[1].i8[v16 + v17];
            v62 = (v20 + 16);
            v63 = &v20[v42];
            v64 = &v60[v42];
            do
            {
              v65 = v62;
              v66 = v61;
              v67 = v21 & 0x1FFFFFFE0;
              do
              {
                v68 = *v65;
                *(v66 - 1) = *(v65 - 1);
                *v66 = v68;
                v66 += 32;
                v65 += 2;
                v67 -= 32;
              }

              while (v67);
              v69 = v21 & 0x1FFFFFFE0;
              if (!v59)
              {
                goto LABEL_72;
              }

              v70 = v64;
              v71 = v63;
              v72 = v36 - v42;
              do
              {
                v73 = *v71++;
                *v70 = v73;
                v70 += 8;
                v72 -= 8;
              }

              while (v72);
              v69 = v21 & 0x1FFFFFFF8;
              if (v21 != v36)
              {
LABEL_72:
                do
                {
                  v18[v69] = v20[v69];
                  ++v69;
                }

                while (v21 > v69);
              }

              ++v58;
              v61 += 64;
              v62 = (v62 + v19);
              v63 += v19;
              v64 += 64;
              v18 += 64;
              v20 += v19;
            }

            while (v58 != v13);
          }
        }

        else if (v21 == v36)
        {
          for (m = 0; m != v13; ++m)
          {
            v38 = v18;
            v39 = v20;
            v40 = v21;
            do
            {
              v41 = *v39;
              v39 += 8;
              *v38 = v41;
              v38 += 8;
              v40 -= 8;
            }

            while (v40);
            v20 += v19;
            v18 += 64;
          }
        }

        else
        {
          v50 = 0;
          v51 = v18;
          do
          {
            v52 = &v18[64 * v50 + v36];
            v53 = v51;
            v54 = v20;
            v55 = v21 & 0x1FFFFFFF8;
            do
            {
              v56 = *v54;
              v54 += 8;
              *v53 = v56;
              v53 += 8;
              v55 -= 8;
            }

            while (v55);
            v57 = v21 & 0x1FFFFFFF8;
            do
            {
              *v52++ = v20[v57++];
            }

            while (v21 > v57);
            ++v50;
            v20 += v19;
            v51 += 64;
          }

          while (v50 != v13);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v74, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v74[256 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v76 = vld2q_f64(v12);
      *v8 = vzip1q_s64(*v2, v11);
      v8[4] = vzip2q_s64(v10, v11);
      v8[8] = v76.val[0];
      v8[12] = v76.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[4] = v6;
      v8[8] = v6;
      v8[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 64, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[8].i64[0] = 0;
      v8[8].i64[1] = 0;
      v8[12].i64[0] = 0;
      v8[12].i64[1] = 0;
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
    v14 = *(a1 + 84);
    if (v14)
    {
      v15 = *(a1 + 72);
      v16 = v15 << 6;
      v17 = 4 * *(a1 + 76);
      v18 = &v74[64 * v15 + v17];
      v20 = *(a1 + 56);
      v19 = *(a1 + 64);
      v21 = 4 * v14;
      v22 = &v74[64 * v13 - 64 + 64 * v15 + 4 * v14 + v17];
      v25 = v18 < v20 + 4 * v14 + v19 * (v13 - 1) && v20 < v22 || v19 < 0;
      if (v14 == 1)
      {
        for (i = 0; i != v13; ++i)
        {
          v27 = v20 + v19 * i;
          v28 = &v18[64 * i];
          v29 = -1;
          do
          {
            v30 = *v27++;
            *v28++ = v30;
            ++v29;
          }

          while (v29 < 3);
        }
      }

      else if (!v21 || (v21 - 1) >> 32)
      {
        for (j = 0; j != v13; ++j)
        {
          v34 = 0;
          do
          {
            v18[v34] = *(v20 + v34);
            ++v34;
          }

          while (v21 > v34);
          v18 += 64;
          v20 = (v20 + v19);
        }
      }

      else if (v25)
      {
        for (k = 0; k != v13; ++k)
        {
          v32 = 0;
          do
          {
            v18[v32] = *(v20 + v32);
            ++v32;
          }

          while (v21 > v32);
          v18 += 64;
          v20 = (v20 + v19);
        }
      }

      else
      {
        v36 = v21 & 0x1FFFFFFF8;
        if (v14 > 7)
        {
          v42 = v21 & 0x1FFFFFFE0;
          if (v21 == (v21 & 0x1FFFFFFE0))
          {
            v43 = 0;
            v44 = &v74[v16 + 16 + v17];
            v45 = (v20 + 2);
            do
            {
              v46 = v45;
              v47 = v44;
              v48 = v21;
              do
              {
                v49 = *v46;
                *(v47 - 1) = *(v46 - 1);
                *v47 = v49;
                v47 += 2;
                v46 += 2;
                v48 -= 32;
              }

              while (v48);
              ++v43;
              v44 += 64;
              v45 = (v45 + v19);
            }

            while (v43 != v13);
          }

          else
          {
            v58 = 0;
            v59 = v14 & 6;
            v60 = &v74[v16 + v17];
            v61 = &v74[v16 + 16 + v17];
            v62 = (v20 + 2);
            v63 = (v20 + v42);
            v64 = &v60[v42];
            do
            {
              v65 = v62;
              v66 = v61;
              v67 = v21 & 0x1FFFFFFE0;
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
              v69 = v21 & 0x1FFFFFFE0;
              if (!v59)
              {
                goto LABEL_72;
              }

              v70 = v64;
              v71 = v63;
              v72 = v36 - v42;
              do
              {
                v73 = *v71++;
                *v70++ = v73;
                v72 -= 8;
              }

              while (v72);
              v69 = v21 & 0x1FFFFFFF8;
              if (v21 != v36)
              {
LABEL_72:
                do
                {
                  v18[v69] = *(v20 + v69);
                  ++v69;
                }

                while (v21 > v69);
              }

              ++v58;
              v61 += 64;
              v62 = (v62 + v19);
              v63 = (v63 + v19);
              v64 += 8;
              v18 += 64;
              v20 = (v20 + v19);
            }

            while (v58 != v13);
          }
        }

        else if (v21 == v36)
        {
          for (m = 0; m != v13; ++m)
          {
            v38 = v18;
            v39 = v20;
            v40 = v21;
            do
            {
              v41 = *v39++;
              *v38++ = v41;
              v40 -= 8;
            }

            while (v40);
            v20 = (v20 + v19);
            v18 += 64;
          }
        }

        else
        {
          v50 = 0;
          v51 = v18;
          do
          {
            v52 = &v18[64 * v50 + v36];
            v53 = v51;
            v54 = v20;
            v55 = v21 & 0x1FFFFFFF8;
            do
            {
              v56 = *v54++;
              *v53++ = v56;
              v55 -= 8;
            }

            while (v55);
            v57 = v21 & 0x1FFFFFFF8;
            do
            {
              *v52++ = *(v20 + v57++);
            }

            while (v21 > v57);
            ++v50;
            v20 = (v20 + v19);
            v51 += 8;
          }

          while (v50 != v13);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v74, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v74[16 * *v4 + *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v76 = vld2q_f64(v12);
      *v8 = vzip1q_s64(*v2, v11);
      v8[4] = vzip2q_s64(v10, v11);
      v8[8] = v76.val[0];
      v8[12] = v76.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[4] = v6;
      v8[8] = v6;
      v8[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 64, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[8].i64[0] = 0;
      v8[8].i64[1] = 0;
      v8[12].i64[0] = 0;
      v8[12].i64[1] = 0;
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
    v14 = *(a1 + 84);
    if (v14)
    {
      v15 = *(a1 + 72);
      v16 = v15 << 6;
      v17 = 4 * *(a1 + 76);
      v18 = &v74[4 * v15].i8[v17];
      v20 = *(a1 + 56);
      v19 = *(a1 + 64);
      v21 = 4 * v14;
      v22 = &v74[4 * v13 - 4 + 4 * v15].i8[4 * v14 + v17];
      v25 = v18 < &v20[4 * v14 + v19 * (v13 - 1)] && v20 < v22 || v19 < 0;
      if (v14 == 1)
      {
        for (i = 0; i != v13; ++i)
        {
          v27 = &v20[v19 * i];
          v28 = &v18[64 * i];
          v29 = -1;
          do
          {
            v30 = *v27++;
            *v28++ = v30;
            ++v29;
          }

          while (v29 < 3);
        }
      }

      else if (!v21 || (v21 - 1) >> 32)
      {
        for (j = 0; j != v13; ++j)
        {
          v34 = 0;
          do
          {
            v18[v34] = v20[v34];
            ++v34;
          }

          while (v21 > v34);
          v18 += 64;
          v20 += v19;
        }
      }

      else if (v25)
      {
        for (k = 0; k != v13; ++k)
        {
          v32 = 0;
          do
          {
            v18[v32] = v20[v32];
            ++v32;
          }

          while (v21 > v32);
          v18 += 64;
          v20 += v19;
        }
      }

      else
      {
        v36 = v21 & 0x1FFFFFFF8;
        if (v14 > 7)
        {
          v42 = v21 & 0x1FFFFFFE0;
          if (v21 == (v21 & 0x1FFFFFFE0))
          {
            v43 = 0;
            v44 = &v74[1].i8[v16 + v17];
            v45 = (v20 + 16);
            do
            {
              v46 = v45;
              v47 = v44;
              v48 = v21;
              do
              {
                v49 = *v46;
                *(v47 - 1) = *(v46 - 1);
                *v47 = v49;
                v47 += 32;
                v46 += 2;
                v48 -= 32;
              }

              while (v48);
              ++v43;
              v44 += 64;
              v45 = (v45 + v19);
            }

            while (v43 != v13);
          }

          else
          {
            v58 = 0;
            v59 = v14 & 6;
            v60 = &v74[0].i8[v16 + v17];
            v61 = &v74[1].i8[v16 + v17];
            v62 = (v20 + 16);
            v63 = &v20[v42];
            v64 = &v60[v42];
            do
            {
              v65 = v62;
              v66 = v61;
              v67 = v21 & 0x1FFFFFFE0;
              do
              {
                v68 = *v65;
                *(v66 - 1) = *(v65 - 1);
                *v66 = v68;
                v66 += 32;
                v65 += 2;
                v67 -= 32;
              }

              while (v67);
              v69 = v21 & 0x1FFFFFFE0;
              if (!v59)
              {
                goto LABEL_72;
              }

              v70 = v64;
              v71 = v63;
              v72 = v36 - v42;
              do
              {
                v73 = *v71++;
                *v70 = v73;
                v70 += 8;
                v72 -= 8;
              }

              while (v72);
              v69 = v21 & 0x1FFFFFFF8;
              if (v21 != v36)
              {
LABEL_72:
                do
                {
                  v18[v69] = v20[v69];
                  ++v69;
                }

                while (v21 > v69);
              }

              ++v58;
              v61 += 64;
              v62 = (v62 + v19);
              v63 += v19;
              v64 += 64;
              v18 += 64;
              v20 += v19;
            }

            while (v58 != v13);
          }
        }

        else if (v21 == v36)
        {
          for (m = 0; m != v13; ++m)
          {
            v38 = v18;
            v39 = v20;
            v40 = v21;
            do
            {
              v41 = *v39;
              v39 += 8;
              *v38 = v41;
              v38 += 8;
              v40 -= 8;
            }

            while (v40);
            v20 += v19;
            v18 += 64;
          }
        }

        else
        {
          v50 = 0;
          v51 = v18;
          do
          {
            v52 = &v18[64 * v50 + v36];
            v53 = v51;
            v54 = v20;
            v55 = v21 & 0x1FFFFFFF8;
            do
            {
              v56 = *v54;
              v54 += 8;
              *v53 = v56;
              v53 += 8;
              v55 -= 8;
            }

            while (v55);
            v57 = v21 & 0x1FFFFFFF8;
            do
            {
              *v52++ = v20[v57++];
            }

            while (v21 > v57);
            ++v50;
            v20 += v19;
            v51 += 64;
          }

          while (v50 != v13);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v74, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE8ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v74[256 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v76 = vld2q_f64(v12);
      *v8 = vzip1q_s64(*v2, v11);
      v8[4] = vzip2q_s64(v10, v11);
      v8[8] = v76.val[0];
      v8[12] = v76.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[4] = v6;
      v8[8] = v6;
      v8[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 64, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[8].i64[0] = 0;
      v8[8].i64[1] = 0;
      v8[12].i64[0] = 0;
      v8[12].i64[1] = 0;
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
    v14 = *(a1 + 84);
    if (v14)
    {
      v15 = *(a1 + 72);
      v16 = v15 << 6;
      v17 = 4 * *(a1 + 76);
      v18 = &v74[64 * v15 + v17];
      v20 = *(a1 + 56);
      v19 = *(a1 + 64);
      v21 = 4 * v14;
      v22 = &v74[64 * v13 - 64 + 64 * v15 + 4 * v14 + v17];
      v25 = v18 < v20 + 4 * v14 + v19 * (v13 - 1) && v20 < v22 || v19 < 0;
      if (v14 == 1)
      {
        for (i = 0; i != v13; ++i)
        {
          v27 = v20 + v19 * i;
          v28 = &v18[64 * i];
          v29 = -1;
          do
          {
            v30 = *v27++;
            *v28++ = v30;
            ++v29;
          }

          while (v29 < 3);
        }
      }

      else if (!v21 || (v21 - 1) >> 32)
      {
        for (j = 0; j != v13; ++j)
        {
          v34 = 0;
          do
          {
            v18[v34] = *(v20 + v34);
            ++v34;
          }

          while (v21 > v34);
          v18 += 64;
          v20 = (v20 + v19);
        }
      }

      else if (v25)
      {
        for (k = 0; k != v13; ++k)
        {
          v32 = 0;
          do
          {
            v18[v32] = *(v20 + v32);
            ++v32;
          }

          while (v21 > v32);
          v18 += 64;
          v20 = (v20 + v19);
        }
      }

      else
      {
        v36 = v21 & 0x1FFFFFFF8;
        if (v14 > 7)
        {
          v42 = v21 & 0x1FFFFFFE0;
          if (v21 == (v21 & 0x1FFFFFFE0))
          {
            v43 = 0;
            v44 = &v74[v16 + 16 + v17];
            v45 = (v20 + 2);
            do
            {
              v46 = v45;
              v47 = v44;
              v48 = v21;
              do
              {
                v49 = *v46;
                *(v47 - 1) = *(v46 - 1);
                *v47 = v49;
                v47 += 2;
                v46 += 2;
                v48 -= 32;
              }

              while (v48);
              ++v43;
              v44 += 64;
              v45 = (v45 + v19);
            }

            while (v43 != v13);
          }

          else
          {
            v58 = 0;
            v59 = v14 & 6;
            v60 = &v74[v16 + v17];
            v61 = &v74[v16 + 16 + v17];
            v62 = (v20 + 2);
            v63 = (v20 + v42);
            v64 = &v60[v42];
            do
            {
              v65 = v62;
              v66 = v61;
              v67 = v21 & 0x1FFFFFFE0;
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
              v69 = v21 & 0x1FFFFFFE0;
              if (!v59)
              {
                goto LABEL_72;
              }

              v70 = v64;
              v71 = v63;
              v72 = v36 - v42;
              do
              {
                v73 = *v71++;
                *v70++ = v73;
                v72 -= 8;
              }

              while (v72);
              v69 = v21 & 0x1FFFFFFF8;
              if (v21 != v36)
              {
LABEL_72:
                do
                {
                  v18[v69] = *(v20 + v69);
                  ++v69;
                }

                while (v21 > v69);
              }

              ++v58;
              v61 += 64;
              v62 = (v62 + v19);
              v63 = (v63 + v19);
              v64 += 8;
              v18 += 64;
              v20 = (v20 + v19);
            }

            while (v58 != v13);
          }
        }

        else if (v21 == v36)
        {
          for (m = 0; m != v13; ++m)
          {
            v38 = v18;
            v39 = v20;
            v40 = v21;
            do
            {
              v41 = *v39++;
              *v38++ = v41;
              v40 -= 8;
            }

            while (v40);
            v20 = (v20 + v19);
            v18 += 64;
          }
        }

        else
        {
          v50 = 0;
          v51 = v18;
          do
          {
            v52 = &v18[64 * v50 + v36];
            v53 = v51;
            v54 = v20;
            v55 = v21 & 0x1FFFFFFF8;
            do
            {
              v56 = *v54++;
              *v53++ = v56;
              v55 -= 8;
            }

            while (v55);
            v57 = v21 & 0x1FFFFFFF8;
            do
            {
              *v52++ = *(v20 + v57++);
            }

            while (v21 > v57);
            ++v50;
            v20 = (v20 + v19);
            v51 += 8;
          }

          while (v50 != v13);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v74, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v74[16 * *v4 + *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v76 = vld2q_f64(v12);
      *v8 = vzip1q_s64(*v2, v11);
      v8[4] = vzip2q_s64(v10, v11);
      v8[8] = v76.val[0];
      v8[12] = v76.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[4] = v6;
      v8[8] = v6;
      v8[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 64, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[8].i64[0] = 0;
      v8[8].i64[1] = 0;
      v8[12].i64[0] = 0;
      v8[12].i64[1] = 0;
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
    v14 = *(a1 + 84);
    if (v14)
    {
      v15 = *(a1 + 72);
      v16 = v15 << 6;
      v17 = 4 * *(a1 + 76);
      v18 = &v74[4 * v15].i8[v17];
      v20 = *(a1 + 56);
      v19 = *(a1 + 64);
      v21 = 4 * v14;
      v22 = &v74[4 * v13 - 4 + 4 * v15].i8[4 * v14 + v17];
      v25 = v18 < &v20[4 * v14 + v19 * (v13 - 1)] && v20 < v22 || v19 < 0;
      if (v14 == 1)
      {
        for (i = 0; i != v13; ++i)
        {
          v27 = &v20[v19 * i];
          v28 = &v18[64 * i];
          v29 = -1;
          do
          {
            v30 = *v27++;
            *v28++ = v30;
            ++v29;
          }

          while (v29 < 3);
        }
      }

      else if (!v21 || (v21 - 1) >> 32)
      {
        for (j = 0; j != v13; ++j)
        {
          v34 = 0;
          do
          {
            v18[v34] = v20[v34];
            ++v34;
          }

          while (v21 > v34);
          v18 += 64;
          v20 += v19;
        }
      }

      else if (v25)
      {
        for (k = 0; k != v13; ++k)
        {
          v32 = 0;
          do
          {
            v18[v32] = v20[v32];
            ++v32;
          }

          while (v21 > v32);
          v18 += 64;
          v20 += v19;
        }
      }

      else
      {
        v36 = v21 & 0x1FFFFFFF8;
        if (v14 > 7)
        {
          v42 = v21 & 0x1FFFFFFE0;
          if (v21 == (v21 & 0x1FFFFFFE0))
          {
            v43 = 0;
            v44 = &v74[1].i8[v16 + v17];
            v45 = (v20 + 16);
            do
            {
              v46 = v45;
              v47 = v44;
              v48 = v21;
              do
              {
                v49 = *v46;
                *(v47 - 1) = *(v46 - 1);
                *v47 = v49;
                v47 += 32;
                v46 += 2;
                v48 -= 32;
              }

              while (v48);
              ++v43;
              v44 += 64;
              v45 = (v45 + v19);
            }

            while (v43 != v13);
          }

          else
          {
            v58 = 0;
            v59 = v14 & 6;
            v60 = &v74[0].i8[v16 + v17];
            v61 = &v74[1].i8[v16 + v17];
            v62 = (v20 + 16);
            v63 = &v20[v42];
            v64 = &v60[v42];
            do
            {
              v65 = v62;
              v66 = v61;
              v67 = v21 & 0x1FFFFFFE0;
              do
              {
                v68 = *v65;
                *(v66 - 1) = *(v65 - 1);
                *v66 = v68;
                v66 += 32;
                v65 += 2;
                v67 -= 32;
              }

              while (v67);
              v69 = v21 & 0x1FFFFFFE0;
              if (!v59)
              {
                goto LABEL_72;
              }

              v70 = v64;
              v71 = v63;
              v72 = v36 - v42;
              do
              {
                v73 = *v71++;
                *v70 = v73;
                v70 += 8;
                v72 -= 8;
              }

              while (v72);
              v69 = v21 & 0x1FFFFFFF8;
              if (v21 != v36)
              {
LABEL_72:
                do
                {
                  v18[v69] = v20[v69];
                  ++v69;
                }

                while (v21 > v69);
              }

              ++v58;
              v61 += 64;
              v62 = (v62 + v19);
              v63 += v19;
              v64 += 64;
              v18 += 64;
              v20 += v19;
            }

            while (v58 != v13);
          }
        }

        else if (v21 == v36)
        {
          for (m = 0; m != v13; ++m)
          {
            v38 = v18;
            v39 = v20;
            v40 = v21;
            do
            {
              v41 = *v39;
              v39 += 8;
              *v38 = v41;
              v38 += 8;
              v40 -= 8;
            }

            while (v40);
            v20 += v19;
            v18 += 64;
          }
        }

        else
        {
          v50 = 0;
          v51 = v18;
          do
          {
            v52 = &v18[64 * v50 + v36];
            v53 = v51;
            v54 = v20;
            v55 = v21 & 0x1FFFFFFF8;
            do
            {
              v56 = *v54;
              v54 += 8;
              *v53 = v56;
              v53 += 8;
              v55 -= 8;
            }

            while (v55);
            v57 = v21 & 0x1FFFFFFF8;
            do
            {
              *v52++ = v20[v57++];
            }

            while (v21 > v57);
            ++v50;
            v20 += v19;
            v51 += 64;
          }

          while (v50 != v13);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v74, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder2EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v74[256 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v76 = vld2q_f64(v12);
      *v8 = vzip1q_s64(*v2, v11);
      v8[4] = vzip2q_s64(v10, v11);
      v8[8] = v76.val[0];
      v8[12] = v76.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[4] = v6;
      v8[8] = v6;
      v8[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 64, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[8].i64[0] = 0;
      v8[8].i64[1] = 0;
      v8[12].i64[0] = 0;
      v8[12].i64[1] = 0;
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
    v14 = *(a1 + 84);
    if (v14)
    {
      v15 = *(a1 + 72);
      v16 = v15 << 6;
      v17 = 4 * *(a1 + 76);
      v18 = &v74[64 * v15 + v17];
      v20 = *(a1 + 56);
      v19 = *(a1 + 64);
      v21 = 4 * v14;
      v22 = &v74[64 * v13 - 64 + 64 * v15 + 4 * v14 + v17];
      v25 = v18 < v20 + 4 * v14 + v19 * (v13 - 1) && v20 < v22 || v19 < 0;
      if (v14 == 1)
      {
        for (i = 0; i != v13; ++i)
        {
          v27 = v20 + v19 * i;
          v28 = &v18[64 * i];
          v29 = -1;
          do
          {
            v30 = *v27++;
            *v28++ = v30;
            ++v29;
          }

          while (v29 < 3);
        }
      }

      else if (!v21 || (v21 - 1) >> 32)
      {
        for (j = 0; j != v13; ++j)
        {
          v34 = 0;
          do
          {
            v18[v34] = *(v20 + v34);
            ++v34;
          }

          while (v21 > v34);
          v18 += 64;
          v20 = (v20 + v19);
        }
      }

      else if (v25)
      {
        for (k = 0; k != v13; ++k)
        {
          v32 = 0;
          do
          {
            v18[v32] = *(v20 + v32);
            ++v32;
          }

          while (v21 > v32);
          v18 += 64;
          v20 = (v20 + v19);
        }
      }

      else
      {
        v36 = v21 & 0x1FFFFFFF8;
        if (v14 > 7)
        {
          v42 = v21 & 0x1FFFFFFE0;
          if (v21 == (v21 & 0x1FFFFFFE0))
          {
            v43 = 0;
            v44 = &v74[v16 + 16 + v17];
            v45 = (v20 + 2);
            do
            {
              v46 = v45;
              v47 = v44;
              v48 = v21;
              do
              {
                v49 = *v46;
                *(v47 - 1) = *(v46 - 1);
                *v47 = v49;
                v47 += 2;
                v46 += 2;
                v48 -= 32;
              }

              while (v48);
              ++v43;
              v44 += 64;
              v45 = (v45 + v19);
            }

            while (v43 != v13);
          }

          else
          {
            v58 = 0;
            v59 = v14 & 6;
            v60 = &v74[v16 + v17];
            v61 = &v74[v16 + 16 + v17];
            v62 = (v20 + 2);
            v63 = (v20 + v42);
            v64 = &v60[v42];
            do
            {
              v65 = v62;
              v66 = v61;
              v67 = v21 & 0x1FFFFFFE0;
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
              v69 = v21 & 0x1FFFFFFE0;
              if (!v59)
              {
                goto LABEL_72;
              }

              v70 = v64;
              v71 = v63;
              v72 = v36 - v42;
              do
              {
                v73 = *v71++;
                *v70++ = v73;
                v72 -= 8;
              }

              while (v72);
              v69 = v21 & 0x1FFFFFFF8;
              if (v21 != v36)
              {
LABEL_72:
                do
                {
                  v18[v69] = *(v20 + v69);
                  ++v69;
                }

                while (v21 > v69);
              }

              ++v58;
              v61 += 64;
              v62 = (v62 + v19);
              v63 = (v63 + v19);
              v64 += 8;
              v18 += 64;
              v20 = (v20 + v19);
            }

            while (v58 != v13);
          }
        }

        else if (v21 == v36)
        {
          for (m = 0; m != v13; ++m)
          {
            v38 = v18;
            v39 = v20;
            v40 = v21;
            do
            {
              v41 = *v39++;
              *v38++ = v41;
              v40 -= 8;
            }

            while (v40);
            v20 = (v20 + v19);
            v18 += 64;
          }
        }

        else
        {
          v50 = 0;
          v51 = v18;
          do
          {
            v52 = &v18[64 * v50 + v36];
            v53 = v51;
            v54 = v20;
            v55 = v21 & 0x1FFFFFFF8;
            do
            {
              v56 = *v54++;
              *v53++ = v56;
              v55 -= 8;
            }

            while (v55);
            v57 = v21 & 0x1FFFFFFF8;
            do
            {
              *v52++ = *(v20 + v57++);
            }

            while (v21 > v57);
            ++v50;
            v20 = (v20 + v19);
            v51 += 8;
          }

          while (v50 != v13);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v74, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

int64x2_t *___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj2ELh1ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v74[16 * *v4 + *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v76 = vld2q_f64(v12);
      *v8 = vzip1q_s64(*v2, v11);
      v8[4] = vzip2q_s64(v10, v11);
      v8[8] = v76.val[0];
      v8[12] = v76.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[4] = v6;
      v8[8] = v6;
      v8[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 64, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[8].i64[0] = 0;
      v8[8].i64[1] = 0;
      v8[12].i64[0] = 0;
      v8[12].i64[1] = 0;
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
    v14 = *(a1 + 84);
    if (v14)
    {
      v15 = *(a1 + 72);
      v16 = v15 << 6;
      v17 = 4 * *(a1 + 76);
      v18 = &v74[4 * v15].i8[v17];
      v20 = *(a1 + 56);
      v19 = *(a1 + 64);
      v21 = 4 * v14;
      v22 = &v74[4 * v13 - 4 + 4 * v15].i8[4 * v14 + v17];
      v25 = v18 < &v20[4 * v14 + v19 * (v13 - 1)] && v20 < v22 || v19 < 0;
      if (v14 == 1)
      {
        for (i = 0; i != v13; ++i)
        {
          v27 = &v20[v19 * i];
          v28 = &v18[64 * i];
          v29 = -1;
          do
          {
            v30 = *v27++;
            *v28++ = v30;
            ++v29;
          }

          while (v29 < 3);
        }
      }

      else if (!v21 || (v21 - 1) >> 32)
      {
        for (j = 0; j != v13; ++j)
        {
          v34 = 0;
          do
          {
            v18[v34] = v20[v34];
            ++v34;
          }

          while (v21 > v34);
          v18 += 64;
          v20 += v19;
        }
      }

      else if (v25)
      {
        for (k = 0; k != v13; ++k)
        {
          v32 = 0;
          do
          {
            v18[v32] = v20[v32];
            ++v32;
          }

          while (v21 > v32);
          v18 += 64;
          v20 += v19;
        }
      }

      else
      {
        v36 = v21 & 0x1FFFFFFF8;
        if (v14 > 7)
        {
          v42 = v21 & 0x1FFFFFFE0;
          if (v21 == (v21 & 0x1FFFFFFE0))
          {
            v43 = 0;
            v44 = &v74[1].i8[v16 + v17];
            v45 = (v20 + 16);
            do
            {
              v46 = v45;
              v47 = v44;
              v48 = v21;
              do
              {
                v49 = *v46;
                *(v47 - 1) = *(v46 - 1);
                *v47 = v49;
                v47 += 32;
                v46 += 2;
                v48 -= 32;
              }

              while (v48);
              ++v43;
              v44 += 64;
              v45 = (v45 + v19);
            }

            while (v43 != v13);
          }

          else
          {
            v58 = 0;
            v59 = v14 & 6;
            v60 = &v74[0].i8[v16 + v17];
            v61 = &v74[1].i8[v16 + v17];
            v62 = (v20 + 16);
            v63 = &v20[v42];
            v64 = &v60[v42];
            do
            {
              v65 = v62;
              v66 = v61;
              v67 = v21 & 0x1FFFFFFE0;
              do
              {
                v68 = *v65;
                *(v66 - 1) = *(v65 - 1);
                *v66 = v68;
                v66 += 32;
                v65 += 2;
                v67 -= 32;
              }

              while (v67);
              v69 = v21 & 0x1FFFFFFE0;
              if (!v59)
              {
                goto LABEL_72;
              }

              v70 = v64;
              v71 = v63;
              v72 = v36 - v42;
              do
              {
                v73 = *v71++;
                *v70 = v73;
                v70 += 8;
                v72 -= 8;
              }

              while (v72);
              v69 = v21 & 0x1FFFFFFF8;
              if (v21 != v36)
              {
LABEL_72:
                do
                {
                  v18[v69] = v20[v69];
                  ++v69;
                }

                while (v21 > v69);
              }

              ++v58;
              v61 += 64;
              v62 = (v62 + v19);
              v63 += v19;
              v64 += 64;
              v18 += 64;
              v20 += v19;
            }

            while (v58 != v13);
          }
        }

        else if (v21 == v36)
        {
          for (m = 0; m != v13; ++m)
          {
            v38 = v18;
            v39 = v20;
            v40 = v21;
            do
            {
              v41 = *v39;
              v39 += 8;
              *v38 = v41;
              v38 += 8;
              v40 -= 8;
            }

            while (v40);
            v20 += v19;
            v18 += 64;
          }
        }

        else
        {
          v50 = 0;
          v51 = v18;
          do
          {
            v52 = &v18[64 * v50 + v36];
            v53 = v51;
            v54 = v20;
            v55 = v21 & 0x1FFFFFFF8;
            do
            {
              v56 = *v54;
              v54 += 8;
              *v53 = v56;
              v53 += 8;
              v55 -= 8;
            }

            while (v55);
            v57 = v21 & 0x1FFFFFFF8;
            do
            {
              *v52++ = v20[v57++];
            }

            while (v21 > v57);
            ++v50;
            v20 += v19;
            v51 += 64;
          }

          while (v50 != v13);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v74, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE10ELj2ELh0ELNS7_13SubblockOrderE0EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder1EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1)
{
  v75 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = &byte_29D2F30D1;
  v5 = 16;
  do
  {
    v8 = &v74[256 * *v4 + 16 * *(v4 - 1)];
    v9 = *v3;
    if (v9 == 63)
    {
      v10 = *v2;
      v11 = *(v2 + 16);
      v12 = (v2 + 32);
      v76 = vld2q_f64(v12);
      *v8 = vzip1q_s64(*v2, v11);
      v8[4] = vzip2q_s64(v10, v11);
      v8[8] = v76.val[0];
      v8[12] = v76.val[1];
      v7 = 64;
    }

    else if (v9 == 1)
    {
      v6 = vld1q_dup_s16(v2);
      *v8 = v6;
      v8[4] = v6;
      v8[8] = v6;
      v8[12] = v6;
      v7 = 2;
    }

    else if (*v3)
    {
      v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v8, 64, v2, v9);
    }

    else
    {
      v7 = 0;
      v8->i64[0] = 0;
      v8->i64[1] = 0;
      v8[4].i64[0] = 0;
      v8[4].i64[1] = 0;
      v8[8].i64[0] = 0;
      v8[8].i64[1] = 0;
      v8[12].i64[0] = 0;
      v8[12].i64[1] = 0;
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
    v14 = *(a1 + 84);
    if (v14)
    {
      v15 = *(a1 + 72);
      v16 = v15 << 6;
      v17 = 4 * *(a1 + 76);
      v18 = &v74[64 * v15 + v17];
      v20 = *(a1 + 56);
      v19 = *(a1 + 64);
      v21 = 4 * v14;
      v22 = &v74[64 * v13 - 64 + 64 * v15 + 4 * v14 + v17];
      v25 = v18 < v20 + 4 * v14 + v19 * (v13 - 1) && v20 < v22 || v19 < 0;
      if (v14 == 1)
      {
        for (i = 0; i != v13; ++i)
        {
          v27 = v20 + v19 * i;
          v28 = &v18[64 * i];
          v29 = -1;
          do
          {
            v30 = *v27++;
            *v28++ = v30;
            ++v29;
          }

          while (v29 < 3);
        }
      }

      else if (!v21 || (v21 - 1) >> 32)
      {
        for (j = 0; j != v13; ++j)
        {
          v34 = 0;
          do
          {
            v18[v34] = *(v20 + v34);
            ++v34;
          }

          while (v21 > v34);
          v18 += 64;
          v20 = (v20 + v19);
        }
      }

      else if (v25)
      {
        for (k = 0; k != v13; ++k)
        {
          v32 = 0;
          do
          {
            v18[v32] = *(v20 + v32);
            ++v32;
          }

          while (v21 > v32);
          v18 += 64;
          v20 = (v20 + v19);
        }
      }

      else
      {
        v36 = v21 & 0x1FFFFFFF8;
        if (v14 > 7)
        {
          v42 = v21 & 0x1FFFFFFE0;
          if (v21 == (v21 & 0x1FFFFFFE0))
          {
            v43 = 0;
            v44 = &v74[v16 + 16 + v17];
            v45 = (v20 + 2);
            do
            {
              v46 = v45;
              v47 = v44;
              v48 = v21;
              do
              {
                v49 = *v46;
                *(v47 - 1) = *(v46 - 1);
                *v47 = v49;
                v47 += 2;
                v46 += 2;
                v48 -= 32;
              }

              while (v48);
              ++v43;
              v44 += 64;
              v45 = (v45 + v19);
            }

            while (v43 != v13);
          }

          else
          {
            v58 = 0;
            v59 = v14 & 6;
            v60 = &v74[v16 + v17];
            v61 = &v74[v16 + 16 + v17];
            v62 = (v20 + 2);
            v63 = (v20 + v42);
            v64 = &v60[v42];
            do
            {
              v65 = v62;
              v66 = v61;
              v67 = v21 & 0x1FFFFFFE0;
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
              v69 = v21 & 0x1FFFFFFE0;
              if (!v59)
              {
                goto LABEL_72;
              }

              v70 = v64;
              v71 = v63;
              v72 = v36 - v42;
              do
              {
                v73 = *v71++;
                *v70++ = v73;
                v72 -= 8;
              }

              while (v72);
              v69 = v21 & 0x1FFFFFFF8;
              if (v21 != v36)
              {
LABEL_72:
                do
                {
                  v18[v69] = *(v20 + v69);
                  ++v69;
                }

                while (v21 > v69);
              }

              ++v58;
              v61 += 64;
              v62 = (v62 + v19);
              v63 = (v63 + v19);
              v64 += 8;
              v18 += 64;
              v20 = (v20 + v19);
            }

            while (v58 != v13);
          }
        }

        else if (v21 == v36)
        {
          for (m = 0; m != v13; ++m)
          {
            v38 = v18;
            v39 = v20;
            v40 = v21;
            do
            {
              v41 = *v39++;
              *v38++ = v41;
              v40 -= 8;
            }

            while (v40);
            v20 = (v20 + v19);
            v18 += 64;
          }
        }

        else
        {
          v50 = 0;
          v51 = v18;
          do
          {
            v52 = &v18[64 * v50 + v36];
            v53 = v51;
            v54 = v20;
            v55 = v21 & 0x1FFFFFFF8;
            do
            {
              v56 = *v54++;
              *v53++ = v56;
              v55 -= 8;
            }

            while (v55);
            v57 = v21 & 0x1FFFFFFF8;
            do
            {
              *v52++ = *(v20 + v57++);
            }

            while (v21 > v57);
            ++v50;
            v20 = (v20 + v19);
            v51 += 8;
          }

          while (v50 != v13);
        }
      }
    }
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(v74, 64, *(a1 + 40), *(a1 + 48), *(a1 + 88), *(a1 + 89));
}