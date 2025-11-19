unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE1ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, __n128 a3, double a4, double a5)
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
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressSubblock(&v61[256 * *v10 + 16 * *(v10 - 1)], 64, v6, v12, v9, a2.n128_f64[0], a3.n128_f64[0], a4, *&a5);
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

      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressSubblock(v36, v37, &v61[256 * v45 + 16 * v46], 64, v44, v43, v40, a2.n128_f64[0], a3.n128_f64[0], a4, a5, v14, v15, v16, v17);
      v36 += result;
    }

    v41 += 2;
    ++v37;
    v42 -= 2;
  }

  while (v42);
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE1ELj1ELh1ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, double a3, double a4, int8x8_t a5)
{
  v62 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = &byte_29D2F790B;
  v9 = 64;
  do
  {
    v10 = *v7++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&v61[256 * *v8 + 16 * *(v8 - 1)], 64, v6, v10, a2, a3, a4, a5);
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

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE1ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, __n128 a3, double a4, double a5)
{
  v59 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = &byte_29D2F790B;
  v9 = 64;
  do
  {
    v10 = *v7++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&v58[256 * *v8 + 16 * *(v8 - 1)], 64, v6, v10, a2.n128_f64[0], a3.n128_f64[0], a4, *&a5);
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

      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::compressSubblock(v35, v36, &v58[256 * v42 + 16 * v43], 64, v41, v40, a2.n128_f64[0], a3.n128_f64[0], a4, a5, v12, v13, v14, v15);
      v35 += result;
    }

    v34 += 2;
    ++v36;
    v38 -= 2;
  }

  while (v38);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint3EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, __n128 a3)
{
  v77 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(*(v5 + 208) + 52);
  v8 = &byte_29D2F790B;
  v9 = 64;
  do
  {
    v10 = *v6++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(&v76[128 * *v8 + 8 * *(v8 - 1)], 32, v4, v10, v7, a2.n128_f64[0], a3.n128_u64[0]);
    v4 += result;
    v8 += 2;
    v9 -= 2;
  }

  while (v9);
  v17 = *(a1 + 80);
  if (v17)
  {
    v18 = *(a1 + 84);
    if (v18)
    {
      v19 = *(a1 + 72);
      result = *(a1 + 76);
      v20 = 32 * v19;
      v22 = *(a1 + 56);
      v21 = *(a1 + 64);
      if (v18 > 7)
      {
        v25 = &v76[result + v20];
        v26 = (v18 - 1);
        v27 = v22 >= &v76[32 * v17 - 31 + 32 * v19 + result + v26] || v25 >= &v22->n128_u8[v21 * (v17 - 1) + 1 + v26];
        if (!v27 || v21 < 0)
        {
          for (i = 0; i != v17; ++i)
          {
            v32 = v22 + v21 * i;
            v33 = &v25[32 * i];
            v34 = v18;
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
          v28 = v18 & 0xFFFFFFF8;
          if (v18 >= 0x20)
          {
            v50 = 0;
            v51 = v22 + 1;
            v52 = &v76[v20 + result];
            result += &v76[v20 + 16];
            v53 = (v22->n128_u64 + (v18 & 0xFFFFFFE0));
            v54 = &v52[v18 & 0xFFFFFFE0];
            do
            {
              v55 = result;
              v56 = v51;
              v57 = v18 & 0xFFFFFFE0;
              do
              {
                a2 = v56[-1];
                a3 = *v56;
                v55[-1] = a2;
                *v55 = a3;
                v56 += 2;
                v55 += 2;
                v57 -= 32;
              }

              while (v57);
              if ((v18 & 0xFFFFFFE0) != v18)
              {
                v58 = v18 & 0xFFFFFFE0;
                v59 = v18 & 0xFFFFFFE0;
                if ((v18 & 0x18) == 0)
                {
                  goto LABEL_57;
                }

                v60 = v54;
                v61 = v53;
                v62 = v28 - (v18 & 0xFFFFFFE0);
                do
                {
                  v63 = *v61++;
                  a2.n128_u64[0] = v63;
                  *v60++ = v63;
                  v62 -= 8;
                }

                while (v62);
                v58 = v18 & 0xFFFFFFF8;
                v59 = v18 & 0xFFFFFFF8;
                if (v28 != v18)
                {
LABEL_57:
                  v64 = v22 + v21 * v50 + v59;
                  v65 = &v25[32 * v50 + v59];
                  v66 = v18 - v58;
                  do
                  {
                    v67 = *v64++;
                    *v65++ = v67;
                    --v66;
                  }

                  while (v66);
                }
              }

              ++v50;
              v51 = (v51 + v21);
              result += 32;
              v53 = (v53 + v21);
              v54 += 4;
            }

            while (v50 != v17);
          }

          else if (v28 == v18)
          {
            n128_u64 = v22[1].n128_u64;
            v30 = &v76[v20 + 16 + result];
            do
            {
              a2.n128_u64[0] = *(n128_u64 - 2);
              *(v30 - 2) = a2.n128_u64[0];
              if (v18 != 8)
              {
                a2.n128_u64[0] = *(n128_u64 - 1);
                *(v30 - 1) = a2.n128_u64[0];
                if (v18 != 16)
                {
                  a2.n128_u64[0] = *n128_u64;
                  *v30 = *n128_u64;
                }
              }

              n128_u64 = (n128_u64 + v21);
              v30 += 4;
              --v17;
            }

            while (v17);
          }

          else
          {
            v68 = 0;
            v69 = v18 - v28;
            do
            {
              v70 = (v22->n128_u64 + v21 * v68);
              v71 = &v25[32 * v68];
              a2.n128_u64[0] = *v70;
              *v71 = *v70;
              if (v28 != 8)
              {
                a2.n128_u64[0] = v70[1];
                v71[1] = a2.n128_u64[0];
                if (v28 != 16)
                {
                  a2.n128_u64[0] = v70[2];
                  v71[2] = a2.n128_u64[0];
                }
              }

              v72 = v71 + v28;
              v73 = v70 + v28;
              v74 = v69;
              do
              {
                v75 = *v73++;
                result = v75;
                *v72++ = v75;
                --v74;
              }

              while (v74);
              ++v68;
            }

            while (v68 != v17);
          }
        }
      }

      else
      {
        v23 = &v76[v20 + 3 + result];
        v24 = &v22->n128_u8[3];
        do
        {
          *(v23 - 3) = *(v24 - 3);
          if (v18 != 1)
          {
            *(v23 - 2) = *(v24 - 2);
            if (v18 != 2)
            {
              *(v23 - 1) = *(v24 - 1);
              if (v18 != 3)
              {
                *v23 = *v24;
                if (v18 != 4)
                {
                  v23[1] = v24[1];
                  if (v18 != 5)
                  {
                    v23[2] = v24[2];
                    if (v18 != 6)
                    {
                      v23[3] = v24[3];
                    }
                  }
                }
              }
            }
          }

          v23 += 32;
          v24 += v21;
          --v17;
        }

        while (v17);
      }
    }
  }

  v36 = *(a1 + 40);
  v37 = *(a1 + 48);
  v38 = *(a1 + 88);
  v39 = *(a1 + 89);
  v40 = *(*(v5 + 208) + 52);
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

      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressSubblock(v36, v37, &v76[128 * v45 + 8 * v46], 32, v44, v43, v40, a2.n128_f64[0], a3.n128_f64[0], v12, v13, v14, v15, v16);
      v36 += result;
    }

    v41 += 2;
    ++v37;
    v42 -= 2;
  }

  while (v42);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint2EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, __n128 a3)
{
  v77 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(*(v5 + 208) + 52);
  v8 = &byte_29D2F790B;
  v9 = 64;
  do
  {
    v10 = *v6++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(&v76[128 * *v8 + 8 * *(v8 - 1)], 32, v4, v10, v7, a2.n128_f64[0], a3.n128_u64[0]);
    v4 += result;
    v8 += 2;
    v9 -= 2;
  }

  while (v9);
  v17 = *(a1 + 80);
  if (v17)
  {
    v18 = *(a1 + 84);
    if (v18)
    {
      v19 = *(a1 + 72);
      result = *(a1 + 76);
      v20 = 32 * v19;
      v22 = *(a1 + 56);
      v21 = *(a1 + 64);
      if (v18 > 7)
      {
        v25 = &v76[result + v20];
        v26 = (v18 - 1);
        v27 = v22 >= &v76[32 * v17 - 31 + 32 * v19 + result + v26] || v25 >= &v22->n128_u8[v21 * (v17 - 1) + 1 + v26];
        if (!v27 || v21 < 0)
        {
          for (i = 0; i != v17; ++i)
          {
            v32 = v22 + v21 * i;
            v33 = &v25[32 * i];
            v34 = v18;
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
          v28 = v18 & 0xFFFFFFF8;
          if (v18 >= 0x20)
          {
            v50 = 0;
            v51 = v22 + 1;
            v52 = &v76[v20 + result];
            result += &v76[v20 + 16];
            v53 = (v22->n128_u64 + (v18 & 0xFFFFFFE0));
            v54 = &v52[v18 & 0xFFFFFFE0];
            do
            {
              v55 = result;
              v56 = v51;
              v57 = v18 & 0xFFFFFFE0;
              do
              {
                a2 = v56[-1];
                a3 = *v56;
                v55[-1] = a2;
                *v55 = a3;
                v56 += 2;
                v55 += 2;
                v57 -= 32;
              }

              while (v57);
              if ((v18 & 0xFFFFFFE0) != v18)
              {
                v58 = v18 & 0xFFFFFFE0;
                v59 = v18 & 0xFFFFFFE0;
                if ((v18 & 0x18) == 0)
                {
                  goto LABEL_57;
                }

                v60 = v54;
                v61 = v53;
                v62 = v28 - (v18 & 0xFFFFFFE0);
                do
                {
                  v63 = *v61++;
                  a2.n128_u64[0] = v63;
                  *v60++ = v63;
                  v62 -= 8;
                }

                while (v62);
                v58 = v18 & 0xFFFFFFF8;
                v59 = v18 & 0xFFFFFFF8;
                if (v28 != v18)
                {
LABEL_57:
                  v64 = v22 + v21 * v50 + v59;
                  v65 = &v25[32 * v50 + v59];
                  v66 = v18 - v58;
                  do
                  {
                    v67 = *v64++;
                    *v65++ = v67;
                    --v66;
                  }

                  while (v66);
                }
              }

              ++v50;
              v51 = (v51 + v21);
              result += 32;
              v53 = (v53 + v21);
              v54 += 4;
            }

            while (v50 != v17);
          }

          else if (v28 == v18)
          {
            n128_u64 = v22[1].n128_u64;
            v30 = &v76[v20 + 16 + result];
            do
            {
              a2.n128_u64[0] = *(n128_u64 - 2);
              *(v30 - 2) = a2.n128_u64[0];
              if (v18 != 8)
              {
                a2.n128_u64[0] = *(n128_u64 - 1);
                *(v30 - 1) = a2.n128_u64[0];
                if (v18 != 16)
                {
                  a2.n128_u64[0] = *n128_u64;
                  *v30 = *n128_u64;
                }
              }

              n128_u64 = (n128_u64 + v21);
              v30 += 4;
              --v17;
            }

            while (v17);
          }

          else
          {
            v68 = 0;
            v69 = v18 - v28;
            do
            {
              v70 = (v22->n128_u64 + v21 * v68);
              v71 = &v25[32 * v68];
              a2.n128_u64[0] = *v70;
              *v71 = *v70;
              if (v28 != 8)
              {
                a2.n128_u64[0] = v70[1];
                v71[1] = a2.n128_u64[0];
                if (v28 != 16)
                {
                  a2.n128_u64[0] = v70[2];
                  v71[2] = a2.n128_u64[0];
                }
              }

              v72 = v71 + v28;
              v73 = v70 + v28;
              v74 = v69;
              do
              {
                v75 = *v73++;
                result = v75;
                *v72++ = v75;
                --v74;
              }

              while (v74);
              ++v68;
            }

            while (v68 != v17);
          }
        }
      }

      else
      {
        v23 = &v76[v20 + 3 + result];
        v24 = &v22->n128_u8[3];
        do
        {
          *(v23 - 3) = *(v24 - 3);
          if (v18 != 1)
          {
            *(v23 - 2) = *(v24 - 2);
            if (v18 != 2)
            {
              *(v23 - 1) = *(v24 - 1);
              if (v18 != 3)
              {
                *v23 = *v24;
                if (v18 != 4)
                {
                  v23[1] = v24[1];
                  if (v18 != 5)
                  {
                    v23[2] = v24[2];
                    if (v18 != 6)
                    {
                      v23[3] = v24[3];
                    }
                  }
                }
              }
            }
          }

          v23 += 32;
          v24 += v21;
          --v17;
        }

        while (v17);
      }
    }
  }

  v36 = *(a1 + 40);
  v37 = *(a1 + 48);
  v38 = *(a1 + 88);
  v39 = *(a1 + 89);
  v40 = *(*(v5 + 208) + 52);
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

      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressSubblock(v36, v37, &v76[128 * v45 + 8 * v46], 32, v44, v43, v40, a2.n128_f64[0], a3.n128_f64[0], v12, v13, v14, v15, v16);
      v36 += result;
    }

    v41 += 2;
    ++v37;
    v42 -= 2;
  }

  while (v42);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint1EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, __n128 a3)
{
  v77 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(*(v5 + 208) + 52);
  v8 = &byte_29D2F790B;
  v9 = 64;
  do
  {
    v10 = *v6++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(&v76[128 * *v8 + 8 * *(v8 - 1)], 32, v4, v10, v7, a2.n128_f64[0], a3.n128_u64[0]);
    v4 += result;
    v8 += 2;
    v9 -= 2;
  }

  while (v9);
  v17 = *(a1 + 80);
  if (v17)
  {
    v18 = *(a1 + 84);
    if (v18)
    {
      v19 = *(a1 + 72);
      result = *(a1 + 76);
      v20 = 32 * v19;
      v22 = *(a1 + 56);
      v21 = *(a1 + 64);
      if (v18 > 7)
      {
        v25 = &v76[result + v20];
        v26 = (v18 - 1);
        v27 = v22 >= &v76[32 * v17 - 31 + 32 * v19 + result + v26] || v25 >= &v22->n128_u8[v21 * (v17 - 1) + 1 + v26];
        if (!v27 || v21 < 0)
        {
          for (i = 0; i != v17; ++i)
          {
            v32 = v22 + v21 * i;
            v33 = &v25[32 * i];
            v34 = v18;
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
          v28 = v18 & 0xFFFFFFF8;
          if (v18 >= 0x20)
          {
            v50 = 0;
            v51 = v22 + 1;
            v52 = &v76[v20 + result];
            result += &v76[v20 + 16];
            v53 = (v22->n128_u64 + (v18 & 0xFFFFFFE0));
            v54 = &v52[v18 & 0xFFFFFFE0];
            do
            {
              v55 = result;
              v56 = v51;
              v57 = v18 & 0xFFFFFFE0;
              do
              {
                a2 = v56[-1];
                a3 = *v56;
                v55[-1] = a2;
                *v55 = a3;
                v56 += 2;
                v55 += 2;
                v57 -= 32;
              }

              while (v57);
              if ((v18 & 0xFFFFFFE0) != v18)
              {
                v58 = v18 & 0xFFFFFFE0;
                v59 = v18 & 0xFFFFFFE0;
                if ((v18 & 0x18) == 0)
                {
                  goto LABEL_57;
                }

                v60 = v54;
                v61 = v53;
                v62 = v28 - (v18 & 0xFFFFFFE0);
                do
                {
                  v63 = *v61++;
                  a2.n128_u64[0] = v63;
                  *v60++ = v63;
                  v62 -= 8;
                }

                while (v62);
                v58 = v18 & 0xFFFFFFF8;
                v59 = v18 & 0xFFFFFFF8;
                if (v28 != v18)
                {
LABEL_57:
                  v64 = v22 + v21 * v50 + v59;
                  v65 = &v25[32 * v50 + v59];
                  v66 = v18 - v58;
                  do
                  {
                    v67 = *v64++;
                    *v65++ = v67;
                    --v66;
                  }

                  while (v66);
                }
              }

              ++v50;
              v51 = (v51 + v21);
              result += 32;
              v53 = (v53 + v21);
              v54 += 4;
            }

            while (v50 != v17);
          }

          else if (v28 == v18)
          {
            n128_u64 = v22[1].n128_u64;
            v30 = &v76[v20 + 16 + result];
            do
            {
              a2.n128_u64[0] = *(n128_u64 - 2);
              *(v30 - 2) = a2.n128_u64[0];
              if (v18 != 8)
              {
                a2.n128_u64[0] = *(n128_u64 - 1);
                *(v30 - 1) = a2.n128_u64[0];
                if (v18 != 16)
                {
                  a2.n128_u64[0] = *n128_u64;
                  *v30 = *n128_u64;
                }
              }

              n128_u64 = (n128_u64 + v21);
              v30 += 4;
              --v17;
            }

            while (v17);
          }

          else
          {
            v68 = 0;
            v69 = v18 - v28;
            do
            {
              v70 = (v22->n128_u64 + v21 * v68);
              v71 = &v25[32 * v68];
              a2.n128_u64[0] = *v70;
              *v71 = *v70;
              if (v28 != 8)
              {
                a2.n128_u64[0] = v70[1];
                v71[1] = a2.n128_u64[0];
                if (v28 != 16)
                {
                  a2.n128_u64[0] = v70[2];
                  v71[2] = a2.n128_u64[0];
                }
              }

              v72 = v71 + v28;
              v73 = v70 + v28;
              v74 = v69;
              do
              {
                v75 = *v73++;
                result = v75;
                *v72++ = v75;
                --v74;
              }

              while (v74);
              ++v68;
            }

            while (v68 != v17);
          }
        }
      }

      else
      {
        v23 = &v76[v20 + 3 + result];
        v24 = &v22->n128_u8[3];
        do
        {
          *(v23 - 3) = *(v24 - 3);
          if (v18 != 1)
          {
            *(v23 - 2) = *(v24 - 2);
            if (v18 != 2)
            {
              *(v23 - 1) = *(v24 - 1);
              if (v18 != 3)
              {
                *v23 = *v24;
                if (v18 != 4)
                {
                  v23[1] = v24[1];
                  if (v18 != 5)
                  {
                    v23[2] = v24[2];
                    if (v18 != 6)
                    {
                      v23[3] = v24[3];
                    }
                  }
                }
              }
            }
          }

          v23 += 32;
          v24 += v21;
          --v17;
        }

        while (v17);
      }
    }
  }

  v36 = *(a1 + 40);
  v37 = *(a1 + 48);
  v38 = *(a1 + 88);
  v39 = *(a1 + 89);
  v40 = *(*(v5 + 208) + 52);
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

      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressSubblock(v36, v37, &v76[128 * v45 + 8 * v46], 32, v44, v43, v40, a2.n128_f64[0], a3.n128_f64[0], v12, v13, v14, v15, v16);
      v36 += result;
    }

    v41 += 2;
    ++v37;
    v42 -= 2;
  }

  while (v42);
  return result;
}

uint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh1ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, double a2, int8x8_t a3)
{
  v73 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = &byte_29D2F790B;
  v7 = 64;
  do
  {
    v8 = *v5++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&v72[128 * *v6 + 8 * *(v6 - 1)], 32, v4, v8, a2, a3);
    v4 = (v4 + result);
    v6 += 2;
    v7 -= 2;
  }

  while (v7);
  v10 = *(a1 + 80);
  if (v10)
  {
    v11 = *(a1 + 84);
    if (v11)
    {
      v13 = *(a1 + 72);
      v12 = *(a1 + 76);
      v14 = 32 * v13;
      v16 = *(a1 + 56);
      v15 = *(a1 + 64);
      if (v11 > 7)
      {
        v19 = &v72[v12 + v14];
        v20 = (v11 - 1);
        v21 = v16 >= &v72[32 * v10 - 31 + 32 * v13 + v12 + v20] || v19 >= v16 + v15 * (v10 - 1) + v20 + 1;
        if (!v21 || v15 < 0)
        {
          for (i = 0; i != v10; ++i)
          {
            v26 = (v16 + v15 * i);
            v27 = &v19[32 * i];
            v28 = v11;
            do
            {
              v29 = *v26++;
              result = v29;
              *v27++ = v29;
              --v28;
            }

            while (v28);
          }
        }

        else
        {
          v22 = v11 & 0xFFFFFFF8;
          if (v11 >= 0x20)
          {
            v46 = 0;
            result = v16 + 16;
            v47 = &v72[v14 + v12];
            v48 = &v72[v14 + 16 + v12];
            v49 = (v16 + (v11 & 0xFFFFFFE0));
            v50 = &v47[v11 & 0xFFFFFFE0];
            do
            {
              v51 = v48;
              v52 = result;
              v53 = v11 & 0xFFFFFFE0;
              do
              {
                v54 = *v52;
                *(v51 - 1) = *(v52 - 1);
                *v51 = v54;
                v52 += 2;
                v51 += 2;
                v53 -= 32;
              }

              while (v53);
              if ((v11 & 0xFFFFFFE0) != v11)
              {
                v55 = v11 & 0xFFFFFFE0;
                v56 = v11 & 0xFFFFFFE0;
                if ((v11 & 0x18) == 0)
                {
                  goto LABEL_50;
                }

                v57 = v50;
                v58 = v49;
                v59 = v22 - (v11 & 0xFFFFFFE0);
                do
                {
                  v60 = *v58++;
                  *v57++ = v60;
                  v59 -= 8;
                }

                while (v59);
                v55 = v11 & 0xFFFFFFF8;
                v56 = v11 & 0xFFFFFFF8;
                if (v22 != v11)
                {
LABEL_50:
                  v61 = (v16 + v15 * v46 + v56);
                  v62 = &v19[32 * v46 + v56];
                  v63 = v11 - v55;
                  do
                  {
                    v64 = *v61++;
                    *v62++ = v64;
                    --v63;
                  }

                  while (v63);
                }
              }

              ++v46;
              result += v15;
              v48 += 32;
              v49 = (v49 + v15);
              v50 += 4;
            }

            while (v46 != v10);
          }

          else if (v22 == v11)
          {
            v23 = (v16 + 16);
            v24 = &v72[v14 + 16 + v12];
            do
            {
              *(v24 - 2) = *(v23 - 2);
              if (v11 != 8)
              {
                *(v24 - 1) = *(v23 - 1);
                if (v11 != 16)
                {
                  *v24 = *v23;
                }
              }

              v23 = (v23 + v15);
              v24 += 4;
              --v10;
            }

            while (v10);
          }

          else
          {
            v65 = 0;
            v66 = v11 - v22;
            do
            {
              v67 = (v16 + v15 * v65);
              v68 = &v19[32 * v65];
              *v68 = *v67;
              if (v22 != 8)
              {
                v68[1] = v67[1];
                if (v22 != 16)
                {
                  v68[2] = v67[2];
                }
              }

              v69 = v68 + v22;
              v70 = v67 + v22;
              LODWORD(result) = v66;
              do
              {
                v71 = *v70++;
                *v69++ = v71;
                result = (result - 1);
              }

              while (result);
              ++v65;
            }

            while (v65 != v10);
          }
        }
      }

      else
      {
        v17 = &v72[v14 + 3 + v12];
        v18 = (v16 + 3);
        do
        {
          *(v17 - 3) = *(v18 - 3);
          if (v11 != 1)
          {
            *(v17 - 2) = *(v18 - 2);
            if (v11 != 2)
            {
              *(v17 - 1) = *(v18 - 1);
              if (v11 != 3)
              {
                *v17 = *v18;
                if (v11 != 4)
                {
                  v17[1] = v18[1];
                  if (v11 != 5)
                  {
                    v17[2] = v18[2];
                    if (v11 != 6)
                    {
                      v17[3] = v18[3];
                    }
                  }
                }
              }
            }
          }

          v17 += 32;
          v18 += v15;
          --v10;
        }

        while (v10);
      }
    }
  }

  v30 = *(a1 + 40);
  v31 = *(a1 + 48);
  v32 = *(a1 + 88);
  v33 = &byte_29D2F790B;
  v34 = 64;
  v35 = *(a1 + 89);
  do
  {
    v43 = *v33;
    v44 = *(v33 - 1);
    if (v32 <= 8 * v44 || 4 * v43 >= v35)
    {
      v42 = 0;
    }

    else
    {
      v36 = &v72[128 * v43 + 8 * v44];
      v37 = v36[4];
      v38 = vzip1_s16(*v36, v37);
      v39 = vzip2_s16(*v36, v37);
      v40 = v36[8];
      v41 = v36[12];
      *v30 = v38;
      v30[1] = vzip1_s16(v40, v41);
      v30[2] = v39;
      v30[3] = vzip2_s16(v40, v41);
      v30 += 4;
      v42 = 31;
    }

    v33 += 2;
    *v31++ = v42;
    v34 -= 2;
  }

  while (v34);
  return result;
}

unint64_t ___ZNK3AGX7TextureIL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE25processCompressedRegion2DINS_20AppleCompressionGen210CompressorILNS7_11PixelFormatE0ELj1ELh0ELNS7_13SubblockOrderE2EL19AGXTextureFootprint0EEELb0EL29AGXHardwareTextureMemoryOrder3EEEvPvPKvSE_14MTLPixelFormatjjjjjjmjj_block_invoke(uint64_t a1, __n128 a2, __n128 a3)
{
  v74 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = &byte_29D2F790B;
  v7 = 64;
  do
  {
    v8 = *v5++;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(&v73[128 * *v6 + 8 * *(v6 - 1)], 32, v4, v8, a2.n128_f64[0], a3.n128_u64[0]);
    v4 = (v4 + result);
    v6 += 2;
    v7 -= 2;
  }

  while (v7);
  v15 = *(a1 + 80);
  if (v15)
  {
    v16 = *(a1 + 84);
    if (v16)
    {
      v17 = *(a1 + 72);
      result = *(a1 + 76);
      v18 = 32 * v17;
      v20 = *(a1 + 56);
      v19 = *(a1 + 64);
      if (v16 > 7)
      {
        v23 = &v73[result + v18];
        v24 = (v16 - 1);
        v25 = v20 >= &v73[32 * v15 - 31 + 32 * v17 + result + v24] || v23 >= &v20->n128_u8[v19 * (v15 - 1) + 1 + v24];
        if (!v25 || v19 < 0)
        {
          for (i = 0; i != v15; ++i)
          {
            v30 = v20 + v19 * i;
            v31 = &v23[32 * i];
            v32 = v16;
            do
            {
              v33 = *v30++;
              *v31++ = v33;
              --v32;
            }

            while (v32);
          }
        }

        else
        {
          v26 = v16 & 0xFFFFFFF8;
          if (v16 >= 0x20)
          {
            v47 = 0;
            v48 = v20 + 1;
            v49 = &v73[v18 + result];
            result += &v73[v18 + 16];
            v50 = (v20->n128_u64 + (v16 & 0xFFFFFFE0));
            v51 = &v49[v16 & 0xFFFFFFE0];
            do
            {
              v52 = result;
              v53 = v48;
              v54 = v16 & 0xFFFFFFE0;
              do
              {
                a2 = v53[-1];
                a3 = *v53;
                v52[-1] = a2;
                *v52 = a3;
                v53 += 2;
                v52 += 2;
                v54 -= 32;
              }

              while (v54);
              if ((v16 & 0xFFFFFFE0) != v16)
              {
                v55 = v16 & 0xFFFFFFE0;
                v56 = v16 & 0xFFFFFFE0;
                if ((v16 & 0x18) == 0)
                {
                  goto LABEL_57;
                }

                v57 = v51;
                v58 = v50;
                v59 = v26 - (v16 & 0xFFFFFFE0);
                do
                {
                  v60 = *v58++;
                  a2.n128_u64[0] = v60;
                  *v57++ = v60;
                  v59 -= 8;
                }

                while (v59);
                v55 = v16 & 0xFFFFFFF8;
                v56 = v16 & 0xFFFFFFF8;
                if (v26 != v16)
                {
LABEL_57:
                  v61 = v20 + v19 * v47 + v56;
                  v62 = &v23[32 * v47 + v56];
                  v63 = v16 - v55;
                  do
                  {
                    v64 = *v61++;
                    *v62++ = v64;
                    --v63;
                  }

                  while (v63);
                }
              }

              ++v47;
              v48 = (v48 + v19);
              result += 32;
              v50 = (v50 + v19);
              v51 += 4;
            }

            while (v47 != v15);
          }

          else if (v26 == v16)
          {
            n128_u64 = v20[1].n128_u64;
            v28 = &v73[v18 + 16 + result];
            do
            {
              a2.n128_u64[0] = *(n128_u64 - 2);
              *(v28 - 2) = a2.n128_u64[0];
              if (v16 != 8)
              {
                a2.n128_u64[0] = *(n128_u64 - 1);
                *(v28 - 1) = a2.n128_u64[0];
                if (v16 != 16)
                {
                  a2.n128_u64[0] = *n128_u64;
                  *v28 = *n128_u64;
                }
              }

              n128_u64 = (n128_u64 + v19);
              v28 += 4;
              --v15;
            }

            while (v15);
          }

          else
          {
            v65 = 0;
            v66 = v16 - v26;
            do
            {
              v67 = (v20->n128_u64 + v19 * v65);
              v68 = &v23[32 * v65];
              a2.n128_u64[0] = *v67;
              *v68 = *v67;
              if (v26 != 8)
              {
                a2.n128_u64[0] = v67[1];
                v68[1] = a2.n128_u64[0];
                if (v26 != 16)
                {
                  a2.n128_u64[0] = v67[2];
                  v68[2] = a2.n128_u64[0];
                }
              }

              v69 = v68 + v26;
              v70 = v67 + v26;
              v71 = v66;
              do
              {
                v72 = *v70++;
                result = v72;
                *v69++ = v72;
                --v71;
              }

              while (v71);
              ++v65;
            }

            while (v65 != v15);
          }
        }
      }

      else
      {
        v21 = &v73[v18 + 3 + result];
        v22 = &v20->n128_u8[3];
        do
        {
          *(v21 - 3) = *(v22 - 3);
          if (v16 != 1)
          {
            *(v21 - 2) = *(v22 - 2);
            if (v16 != 2)
            {
              *(v21 - 1) = *(v22 - 1);
              if (v16 != 3)
              {
                *v21 = *v22;
                if (v16 != 4)
                {
                  v21[1] = v22[1];
                  if (v16 != 5)
                  {
                    v21[2] = v22[2];
                    if (v16 != 6)
                    {
                      v21[3] = v22[3];
                    }
                  }
                }
              }
            }
          }

          v21 += 32;
          v22 += v19;
          --v15;
        }

        while (v15);
      }
    }
  }

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

      result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(v35, v36, &v73[128 * v42 + 8 * v43], 32, v41, v40, a2.n128_f64[0], a3.n128_f64[0], v10, v11, v12, v13, v14);
      v35 = (v35 + result);
    }

    v34 += 2;
    ++v36;
    v38 -= 2;
  }

  while (v38);
  return result;
}

uint64_t agxsTwiddleAddressPVRTC2<true,(TwiddleOrder)1>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  if (result && a2)
  {
    v10 = (a9 + 7) >> 3;
    v11 = (a10 + 3) >> 2;
    v12 = ((a9 + 7) >> 4) * v11;
    v13 = 8 * v12;
    v14 = 16 * v12;
    if (v10 > v11)
    {
      v15 = v10 >> 1;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = (a9 + 7) >> 3;
    }

    v16 = 32 - __clz(v15 - 1);
    if (v15 < 2)
    {
      v16 = 0;
    }

    v17 = 32 - __clz(v11 - 1);
    if ((a10 + 3) >= 8)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v18 < v16)
    {
      LOBYTE(v16) = v18;
    }

    v19 = 8 * v15 * v11;
    if (v19)
    {
      v20 = 0;
      v21 = 8 * ~(-1 << (2 * v16));
      v22 = v21 & 0x2AAAAAAAAAAAAAA8;
      v23 = v21 & 0x5555555555555555;
      v24 = ~v21;
      do
      {
        *(result + (v20 & v24 | (2 * (v22 & v20)) | ((v23 & v20) >> 1))) = *(a2 + v20);
        v20 += 8;
      }

      while (v20 < v19);
      if (v10 > v11)
      {
        v25 = 0;
        v26 = a2 + v14;
        do
        {
          *(result + v13 + (v25 & v24 | (2 * (v22 & v25)) | ((v23 & v25) >> 1))) = *(v26 + v25);
          v25 += 8;
        }

        while (v25 < v19);
      }
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,16ul,8u,(TwiddleOrder)1>>(uint64_t result, _OWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, unsigned int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
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
          v246 = *v243;
          v247 = v243[1];
          v248 = v243[3];
          v245[2] = v243[2];
          v245[3] = v248;
          *v245 = v246;
          v245[1] = v247;
          v249 = v243[4];
          v250 = v243[5];
          v251 = v243[7];
          v245[6] = v243[6];
          v245[7] = v251;
          v245[4] = v249;
          v245[5] = v250;
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
          v139 = *v136;
          v140 = v136[1];
          v141 = v136[3];
          v138[2] = v136[2];
          v138[3] = v141;
          *v138 = v139;
          v138[1] = v140;
          v142 = v136[4];
          v143 = v136[5];
          v144 = v136[7];
          v138[6] = v136[6];
          v138[7] = v144;
          v138[4] = v142;
          v138[5] = v143;
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
                    v235 = *v233;
                    v236 = v233[1];
                    v237 = v233[3];
                    *(result + 32) = v233[2];
                    *(result + 48) = v237;
                    *result = v235;
                    *(result + 16) = v236;
                    v238 = v233[4];
                    v239 = v233[5];
                    v240 = v233[7];
                    *(result + 96) = v233[6];
                    *(result + 112) = v240;
                    *(result + 64) = v238;
                    *(result + 80) = v239;
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

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,16ul,4u,(TwiddleOrder)1>>(uint64_t result, _OWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, unsigned int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
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
          v239 = *v236;
          v240 = v236[1];
          v241 = v236[3];
          v238[2] = v236[2];
          v238[3] = v241;
          *v238 = v239;
          v238[1] = v240;
          v237 = (v237 - v31) & v31;
          v236 += 4;
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
          v138 = *v135;
          v139 = v135[1];
          v140 = v135[3];
          v137[2] = v135[2];
          v137[3] = v140;
          *v137 = v138;
          v137[1] = v139;
          v136 = (v136 - v101) & v101;
          v135 += 4;
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
                    v231 = *v229;
                    v232 = v229[1];
                    v233 = v229[3];
                    *(result + 32) = v229[2];
                    *(result + 48) = v233;
                    *result = v231;
                    *(result + 16) = v232;
                    v230 = (v230 - v196) & v196;
                    v229 += 4;
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

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,16ul,2u,(TwiddleOrder)1>>(uint64_t result, _OWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, unsigned int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
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
      v232 = 0;
      do
      {
        v233 = a9;
        v234 = a2;
        v235 = v47;
        do
        {
          v236 = (result + 32 * (v235 + v54));
          v237 = *v234;
          v238 = v234[1];
          v234 += 2;
          *v236 = v237;
          v236[1] = v238;
          v235 = (v235 - v31) & v31;
          --v233;
        }

        while (v233);
        v54 = (v54 - v38) & v38;
        a2 = (a2 + a11);
        ++v232;
      }

      while (v232 != v15);
    }

    return result;
  }

  v265 = result;
  v266 = a7;
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

    v271 = 1 << v66;
    v76 = v69 - 1;
    v267 = a10 + a8;
    v269 = a8 >> v66;
    v262 = (v69 - 1 + a10 + a8) >> v66;
    v264 = v66;
    if (a8 >> v66 >= v262)
    {
      return result;
    }

    result = a7 >> v67;
    v77 = (1 << v67) - 1;
    v285 = a9 + a7;
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
    v279 = a7 >> v67;
    v283 = (v77 + a9 + a7) >> v67;
    if (result >= v283)
    {
      return result;
    }

    v260 = (v75 + ~(-1 << v67)) >> v67;
    v85 = v77 & a7;
    v281 = v77 & v285;
    v257 = v76 & v267;
    v259 = v76 & a8;
    v86 = v269;
    v253 = a2;
LABEL_92:
    v87 = v86 << v264;
    v88 = v86 - v269;
    v277 = v86 * v260;
    v273 = v86 + 1;
    v64 = v267 >= (v86 + 1) << v264;
    v89 = v271;
    v90 = v271 - v259;
    if (!v64)
    {
      v89 = v257;
      v90 = v15;
    }

    v91 = v88 << v264;
    if (v87 >= a8)
    {
      v92 = 0;
    }

    else
    {
      v92 = v259;
    }

    if (v87 >= a8)
    {
      v93 = v89;
    }

    else
    {
      v93 = v90;
    }

    v275 = (v92 + v91 - v259) * a11;
    v94 = v279;
    while (1)
    {
      v95 = v94 << v67;
      v96 = v94 + 1;
      if (v285 >= (v94 + 1) << v67)
      {
        v97 = (1 << v67) - v85;
      }

      else
      {
        v97 = a9;
      }

      v98 = v281;
      if (v285 >= v96 << v67)
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
      a7 = v266;
      if (v96 == v283)
      {
        v86 = v273;
        v15 = a10;
        if (v273 == v262)
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
      v132 = (&v253[2 * (v99 + ((v94 - v279) << v67) - v85)] + v275);
      v133 = (v94 + v277) * a12[3] * *(a12 + 9) + v265;
      do
      {
        v134 = v98;
        v135 = v132;
        v136 = v116;
        do
        {
          v137 = (v133 + 32 * (v136 + v123));
          v138 = *v135;
          v139 = v135[1];
          v135 += 2;
          *v137 = v138;
          v137[1] = v139;
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
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v288);
  v19 = *(a12 + 13);
  v20 = *(a12 + 12);
  v252 = v16;
  if (1 << v19 >= a6 || a5 >> v20)
  {
    v140 = a6 >> v19;
    v141 = 1 << v20;
    v142 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v142 = 0;
    }

    v143 = v141 >= a5;
    if (v141 < a5)
    {
      v144 = v20 + v19 + v142;
    }

    else
    {
      v144 = *(a12 + 12);
    }

    if (v143)
    {
      LOBYTE(v145) = *(a12 + 13);
    }

    else
    {
      v145 = -v142;
    }

    if (!v140)
    {
      v20 = v144;
    }

    v246 = v20;
    if (v140)
    {
      v22 = *(a12 + 13);
    }

    else
    {
      v22 = v145;
    }
  }

  else
  {
    v21 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v21) = 0;
    }

    v246 = v21;
    v22 = v20 + v19 - v21;
  }

  v146 = v265;
  v147 = a10;
  v148 = a8;
  v244 = v294;
  if (v294)
  {
    v149 = 1 << v22;
    if (1 << v22 >= a6)
    {
      v150 = a6;
    }

    else
    {
      v150 = 1 << v22;
    }

    v151 = 32 - __clz(v150 - 1);
    v152 = v150 > 1;
    if (v150 <= 1)
    {
      v153 = 0;
    }

    else
    {
      v153 = v151;
    }

    v245 = 1 << v246;
    if (1 << v246 >= a5)
    {
      v154 = a5;
    }

    else
    {
      v154 = 1 << v246;
    }

    v155 = 32 - __clz(v154 - 1);
    v156 = v295;
    v157 = v154 > 1;
    if (v154 <= 1)
    {
      v155 = 0;
    }

    v278 = v292;
    v280 = v155;
    v274 = v292 != 0;
    v276 = v293;
    v272 = v293 != 0;
    if (v295)
    {
      v158 = 0;
      v159 = 0;
      v243 = a7 >> v246;
      v261 = a8 >> v22;
      v286 = v296;
      v287 = v291;
      v284 = v293 | v292;
      v242 = a9 + a7;
      v241 = (v245 - 1) & (a9 + a7);
      v240 = v289;
      v282 = v290;
      v239 = (v245 - 1) & a7;
      v256 = (v149 - 1) & a8;
      v258 = (v149 - 1) & (a10 + a8);
      v255 = v149 - v256;
      v160 = ~(-1 << v155);
      v254 = v153 | v155;
      v268 = v157;
      v248 = 1 << v22;
      v249 = v22;
      v263 = v295;
      do
      {
        v247 = v159;
        v161 = 0;
        v162 = 0;
        v163 = (v158 + v243) << v246;
        v164 = a9;
        if (v242 >= (v158 + v243 + 1) << v246)
        {
          v164 = v245 - v239;
        }

        v165 = 1 << v246;
        if (v242 < (v158 + v243 + 1) << v246)
        {
          v165 = v241;
        }

        v166 = v240 + v158;
        v167 = v158 << v246;
        if (v163 >= a7)
        {
          v168 = v165;
        }

        else
        {
          v168 = v164;
        }

        if (v163 >= a7)
        {
          v169 = 0;
        }

        else
        {
          v169 = v239;
        }

        v250 = &v252[2 * (v169 + v167)];
        v170 = v147;
        v270 = v168;
        do
        {
          v171 = v282 + v161;
          if (v286)
          {
            v172 = v284;
            if (v284)
            {
              v173 = 0;
              v172 = 0;
              v174 = 1;
              v175 = v272;
              v176 = v274;
              v177 = v278;
              v178 = v276;
              do
              {
                --v177;
                if (v176)
                {
                  v172 |= (v174 & v166) << v173;
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
                  v172 |= (v174 & v171) << v173;
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

          else
          {
            v172 = v284;
            if (v284)
            {
              v179 = 0;
              v172 = 0;
              v180 = 1;
              v182 = v272;
              v181 = v274;
              v183 = v276;
              v184 = v278;
              do
              {
                --v183;
                if (v182)
                {
                  v172 |= (v180 & v171) << v179;
                }

                else
                {
                  v183 = 0;
                }

                if (v182)
                {
                  ++v179;
                }

                --v184;
                if (v181)
                {
                  v172 |= (v180 & v166) << v179;
                }

                else
                {
                  v184 = 0;
                }

                if (v181)
                {
                  ++v179;
                }

                v180 *= 2;
                --v179;
                v181 = v184 != 0;
                v182 = v183 != 0;
              }

              while (v184 | v183);
            }
          }

          v185 = *(v146 + 4 * ((v172 + v287) | ((v172 + v287) >> 8 << 9)));
          if (v185 < 0)
          {
            v186 = v146 - *(a13 + 3) + ((v185 & 0x1FFFFFFF) << 14);
            result = *a13;
            v187 = a13[2];
            if (result > v187)
            {
              v188 = v161;
              result = get_level_offset_within_tail(result, v187, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v157 = v268;
              v168 = v270;
              v161 = v188;
              v149 = v248;
              v22 = v249;
              v14 = a11;
              v148 = a8;
              v170 = a10;
              v146 = v265;
              v186 += result;
            }

            v189 = (v161 + v261) << v22;
            v190 = v255;
            if (a10 + a8 >= (v161 + v261 + 1) << v22)
            {
              v191 = v149;
            }

            else
            {
              v190 = v170;
              v191 = v258;
            }

            if (v189 >= v148)
            {
              v192 = 0;
            }

            else
            {
              v192 = v256;
            }

            if (v189 >= v148)
            {
              v190 = v191;
            }

            if (!v254)
            {
              v211 = 0;
              v195 = 0;
              v202 = 0;
              v218 = 0;
              v156 = v263;
              if (!v190)
              {
                goto LABEL_192;
              }

LABEL_264:
              if (v168)
              {
                v225 = 0;
                v226 = (v250 + (v192 + (v161 << v22)) * v14);
                do
                {
                  v227 = v168;
                  v228 = v226;
                  v229 = v211;
                  do
                  {
                    result = v186 + 32 * (v229 + v218);
                    v230 = *v228;
                    v231 = v228[1];
                    v228 += 2;
                    *result = v230;
                    *(result + 16) = v231;
                    v229 = (v229 - v195) & v195;
                    --v227;
                  }

                  while (v227);
                  v218 = (v218 - v202) & v202;
                  v226 = (v226 + v14);
                  ++v225;
                }

                while (v225 != v190);
              }

              goto LABEL_192;
            }

            v193 = v161;
            v194 = 0;
            v195 = 0;
            v196 = 1;
            v197 = v157;
            v198 = v152;
            v199 = v280;
            v200 = v153;
            do
            {
              --v199;
              if (v197)
              {
                v195 |= (v196 & v160) << v194++;
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
            v204 = v157;
            v205 = v152;
            v206 = v280;
            v207 = v153;
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
                v202 |= (v203 & ~(-1 << v153)) << v209++;
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
            v213 = v157;
            v214 = v152;
            v215 = v280;
            v216 = v153;
            do
            {
              --v215;
              if (v213)
              {
                v211 |= (v212 & v169) << v210++;
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
            v220 = v157;
            LOBYTE(result) = v152;
            v221 = v280;
            v222 = v153;
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
                v218 |= (v219 & v192) << v224++;
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
            v156 = v263;
            v161 = v193;
            v157 = v268;
            v168 = v270;
            if (v190)
            {
              goto LABEL_264;
            }
          }

LABEL_192:
          v161 = ++v162;
        }

        while (v156 > v162);
        v147 = v170;
        v159 = v247 + 1;
        v158 = (v247 + 1);
        a7 = v266;
      }

      while (v244 > v158);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,8ul,8u,(TwiddleOrder)1>>(uint64_t result, _OWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, unsigned int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
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
          v239 = *v236;
          v240 = v236[1];
          v241 = v236[3];
          v238[2] = v236[2];
          v238[3] = v241;
          *v238 = v239;
          v238[1] = v240;
          v237 = (v237 - v31) & v31;
          v236 += 4;
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
          v138 = *v135;
          v139 = v135[1];
          v140 = v135[3];
          v137[2] = v135[2];
          v137[3] = v140;
          *v137 = v138;
          v137[1] = v139;
          v136 = (v136 - v101) & v101;
          v135 += 4;
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
                    v231 = *v229;
                    v232 = v229[1];
                    v233 = v229[3];
                    *(result + 32) = v229[2];
                    *(result + 48) = v233;
                    *result = v231;
                    *(result + 16) = v232;
                    v230 = (v230 - v196) & v196;
                    v229 += 4;
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

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,8ul,4u,(TwiddleOrder)1>>(uint64_t result, _OWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, unsigned int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
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
      v232 = 0;
      do
      {
        v233 = a9;
        v234 = a2;
        v235 = v47;
        do
        {
          v236 = (result + 32 * (v235 + v54));
          v237 = *v234;
          v238 = v234[1];
          v234 += 2;
          *v236 = v237;
          v236[1] = v238;
          v235 = (v235 - v31) & v31;
          --v233;
        }

        while (v233);
        v54 = (v54 - v38) & v38;
        a2 = (a2 + a11);
        ++v232;
      }

      while (v232 != v15);
    }

    return result;
  }

  v265 = result;
  v266 = a7;
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

    v271 = 1 << v66;
    v76 = v69 - 1;
    v267 = a10 + a8;
    v269 = a8 >> v66;
    v262 = (v69 - 1 + a10 + a8) >> v66;
    v264 = v66;
    if (a8 >> v66 >= v262)
    {
      return result;
    }

    result = a7 >> v67;
    v77 = (1 << v67) - 1;
    v285 = a9 + a7;
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
    v279 = a7 >> v67;
    v283 = (v77 + a9 + a7) >> v67;
    if (result >= v283)
    {
      return result;
    }

    v260 = (v75 + ~(-1 << v67)) >> v67;
    v85 = v77 & a7;
    v281 = v77 & v285;
    v257 = v76 & v267;
    v259 = v76 & a8;
    v86 = v269;
    v253 = a2;
LABEL_92:
    v87 = v86 << v264;
    v88 = v86 - v269;
    v277 = v86 * v260;
    v273 = v86 + 1;
    v64 = v267 >= (v86 + 1) << v264;
    v89 = v271;
    v90 = v271 - v259;
    if (!v64)
    {
      v89 = v257;
      v90 = v15;
    }

    v91 = v88 << v264;
    if (v87 >= a8)
    {
      v92 = 0;
    }

    else
    {
      v92 = v259;
    }

    if (v87 >= a8)
    {
      v93 = v89;
    }

    else
    {
      v93 = v90;
    }

    v275 = (v92 + v91 - v259) * a11;
    v94 = v279;
    while (1)
    {
      v95 = v94 << v67;
      v96 = v94 + 1;
      if (v285 >= (v94 + 1) << v67)
      {
        v97 = (1 << v67) - v85;
      }

      else
      {
        v97 = a9;
      }

      v98 = v281;
      if (v285 >= v96 << v67)
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
      a7 = v266;
      if (v96 == v283)
      {
        v86 = v273;
        v15 = a10;
        if (v273 == v262)
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
      v132 = (&v253[2 * (v99 + ((v94 - v279) << v67) - v85)] + v275);
      v133 = (v94 + v277) * a12[3] * *(a12 + 9) + v265;
      do
      {
        v134 = v98;
        v135 = v132;
        v136 = v116;
        do
        {
          v137 = (v133 + 32 * (v136 + v123));
          v138 = *v135;
          v139 = v135[1];
          v135 += 2;
          *v137 = v138;
          v137[1] = v139;
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
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v288);
  v19 = *(a12 + 13);
  v20 = *(a12 + 12);
  v252 = v16;
  if (1 << v19 >= a6 || a5 >> v20)
  {
    v140 = a6 >> v19;
    v141 = 1 << v20;
    v142 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v142 = 0;
    }

    v143 = v141 >= a5;
    if (v141 < a5)
    {
      v144 = v20 + v19 + v142;
    }

    else
    {
      v144 = *(a12 + 12);
    }

    if (v143)
    {
      LOBYTE(v145) = *(a12 + 13);
    }

    else
    {
      v145 = -v142;
    }

    if (!v140)
    {
      v20 = v144;
    }

    v246 = v20;
    if (v140)
    {
      v22 = *(a12 + 13);
    }

    else
    {
      v22 = v145;
    }
  }

  else
  {
    v21 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v21) = 0;
    }

    v246 = v21;
    v22 = v20 + v19 - v21;
  }

  v146 = v265;
  v147 = a10;
  v148 = a8;
  v244 = v294;
  if (v294)
  {
    v149 = 1 << v22;
    if (1 << v22 >= a6)
    {
      v150 = a6;
    }

    else
    {
      v150 = 1 << v22;
    }

    v151 = 32 - __clz(v150 - 1);
    v152 = v150 > 1;
    if (v150 <= 1)
    {
      v153 = 0;
    }

    else
    {
      v153 = v151;
    }

    v245 = 1 << v246;
    if (1 << v246 >= a5)
    {
      v154 = a5;
    }

    else
    {
      v154 = 1 << v246;
    }

    v155 = 32 - __clz(v154 - 1);
    v156 = v295;
    v157 = v154 > 1;
    if (v154 <= 1)
    {
      v155 = 0;
    }

    v278 = v292;
    v280 = v155;
    v274 = v292 != 0;
    v276 = v293;
    v272 = v293 != 0;
    if (v295)
    {
      v158 = 0;
      v159 = 0;
      v243 = a7 >> v246;
      v261 = a8 >> v22;
      v286 = v296;
      v287 = v291;
      v284 = v293 | v292;
      v242 = a9 + a7;
      v241 = (v245 - 1) & (a9 + a7);
      v240 = v289;
      v282 = v290;
      v239 = (v245 - 1) & a7;
      v256 = (v149 - 1) & a8;
      v258 = (v149 - 1) & (a10 + a8);
      v255 = v149 - v256;
      v160 = ~(-1 << v155);
      v254 = v153 | v155;
      v268 = v157;
      v248 = 1 << v22;
      v249 = v22;
      v263 = v295;
      do
      {
        v247 = v159;
        v161 = 0;
        v162 = 0;
        v163 = (v158 + v243) << v246;
        v164 = a9;
        if (v242 >= (v158 + v243 + 1) << v246)
        {
          v164 = v245 - v239;
        }

        v165 = 1 << v246;
        if (v242 < (v158 + v243 + 1) << v246)
        {
          v165 = v241;
        }

        v166 = v240 + v158;
        v167 = v158 << v246;
        if (v163 >= a7)
        {
          v168 = v165;
        }

        else
        {
          v168 = v164;
        }

        if (v163 >= a7)
        {
          v169 = 0;
        }

        else
        {
          v169 = v239;
        }

        v250 = &v252[2 * (v169 + v167)];
        v170 = v147;
        v270 = v168;
        do
        {
          v171 = v282 + v161;
          if (v286)
          {
            v172 = v284;
            if (v284)
            {
              v173 = 0;
              v172 = 0;
              v174 = 1;
              v175 = v272;
              v176 = v274;
              v177 = v278;
              v178 = v276;
              do
              {
                --v177;
                if (v176)
                {
                  v172 |= (v174 & v166) << v173;
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
                  v172 |= (v174 & v171) << v173;
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

          else
          {
            v172 = v284;
            if (v284)
            {
              v179 = 0;
              v172 = 0;
              v180 = 1;
              v182 = v272;
              v181 = v274;
              v183 = v276;
              v184 = v278;
              do
              {
                --v183;
                if (v182)
                {
                  v172 |= (v180 & v171) << v179;
                }

                else
                {
                  v183 = 0;
                }

                if (v182)
                {
                  ++v179;
                }

                --v184;
                if (v181)
                {
                  v172 |= (v180 & v166) << v179;
                }

                else
                {
                  v184 = 0;
                }

                if (v181)
                {
                  ++v179;
                }

                v180 *= 2;
                --v179;
                v181 = v184 != 0;
                v182 = v183 != 0;
              }

              while (v184 | v183);
            }
          }

          v185 = *(v146 + 4 * ((v172 + v287) | ((v172 + v287) >> 8 << 9)));
          if (v185 < 0)
          {
            v186 = v146 - *(a13 + 3) + ((v185 & 0x1FFFFFFF) << 14);
            result = *a13;
            v187 = a13[2];
            if (result > v187)
            {
              v188 = v161;
              result = get_level_offset_within_tail(result, v187, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v157 = v268;
              v168 = v270;
              v161 = v188;
              v149 = v248;
              v22 = v249;
              v14 = a11;
              v148 = a8;
              v170 = a10;
              v146 = v265;
              v186 += result;
            }

            v189 = (v161 + v261) << v22;
            v190 = v255;
            if (a10 + a8 >= (v161 + v261 + 1) << v22)
            {
              v191 = v149;
            }

            else
            {
              v190 = v170;
              v191 = v258;
            }

            if (v189 >= v148)
            {
              v192 = 0;
            }

            else
            {
              v192 = v256;
            }

            if (v189 >= v148)
            {
              v190 = v191;
            }

            if (!v254)
            {
              v211 = 0;
              v195 = 0;
              v202 = 0;
              v218 = 0;
              v156 = v263;
              if (!v190)
              {
                goto LABEL_192;
              }

LABEL_264:
              if (v168)
              {
                v225 = 0;
                v226 = (v250 + (v192 + (v161 << v22)) * v14);
                do
                {
                  v227 = v168;
                  v228 = v226;
                  v229 = v211;
                  do
                  {
                    result = v186 + 32 * (v229 + v218);
                    v230 = *v228;
                    v231 = v228[1];
                    v228 += 2;
                    *result = v230;
                    *(result + 16) = v231;
                    v229 = (v229 - v195) & v195;
                    --v227;
                  }

                  while (v227);
                  v218 = (v218 - v202) & v202;
                  v226 = (v226 + v14);
                  ++v225;
                }

                while (v225 != v190);
              }

              goto LABEL_192;
            }

            v193 = v161;
            v194 = 0;
            v195 = 0;
            v196 = 1;
            v197 = v157;
            v198 = v152;
            v199 = v280;
            v200 = v153;
            do
            {
              --v199;
              if (v197)
              {
                v195 |= (v196 & v160) << v194++;
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
            v204 = v157;
            v205 = v152;
            v206 = v280;
            v207 = v153;
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
                v202 |= (v203 & ~(-1 << v153)) << v209++;
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
            v213 = v157;
            v214 = v152;
            v215 = v280;
            v216 = v153;
            do
            {
              --v215;
              if (v213)
              {
                v211 |= (v212 & v169) << v210++;
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
            v220 = v157;
            LOBYTE(result) = v152;
            v221 = v280;
            v222 = v153;
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
                v218 |= (v219 & v192) << v224++;
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
            v156 = v263;
            v161 = v193;
            v157 = v268;
            v168 = v270;
            if (v190)
            {
              goto LABEL_264;
            }
          }

LABEL_192:
          v161 = ++v162;
        }

        while (v156 > v162);
        v147 = v170;
        v159 = v247 + 1;
        v158 = (v247 + 1);
        a7 = v266;
      }

      while (v244 > v158);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,8ul,2u,(TwiddleOrder)1>>(uint64_t result, _OWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, unsigned int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
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
      v229 = 0;
      do
      {
        v230 = a9;
        v231 = a2;
        v232 = v47;
        do
        {
          v233 = *v231++;
          *(result + 16 * (v232 + v54)) = v233;
          v232 = (v232 - v31) & v31;
          --v230;
        }

        while (v230);
        v54 = (v54 - v38) & v38;
        a2 = (a2 + a11);
        ++v229;
      }

      while (v229 != v15);
    }

    return result;
  }

  v260 = result;
  v261 = a7;
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

    v266 = 1 << v66;
    v76 = v69 - 1;
    v262 = a10 + a8;
    v264 = a8 >> v66;
    v257 = (v69 - 1 + a10 + a8) >> v66;
    v259 = v66;
    if (a8 >> v66 >= v257)
    {
      return result;
    }

    result = a7 >> v67;
    v77 = (1 << v67) - 1;
    v280 = a9 + a7;
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
    v274 = a7 >> v67;
    v278 = (v77 + a9 + a7) >> v67;
    if (result >= v278)
    {
      return result;
    }

    v255 = (v75 + ~(-1 << v67)) >> v67;
    v85 = v77 & a7;
    v276 = v77 & v280;
    v252 = v76 & v262;
    v254 = v76 & a8;
    v86 = v264;
    v248 = a2;
LABEL_92:
    v87 = v86 << v259;
    v88 = v86 - v264;
    v272 = v86 * v255;
    v268 = v86 + 1;
    v64 = v262 >= (v86 + 1) << v259;
    v89 = v266;
    v90 = v266 - v254;
    if (!v64)
    {
      v89 = v252;
      v90 = v15;
    }

    v91 = v88 << v259;
    if (v87 >= a8)
    {
      v92 = 0;
    }

    else
    {
      v92 = v254;
    }

    if (v87 >= a8)
    {
      v93 = v89;
    }

    else
    {
      v93 = v90;
    }

    v270 = (v92 + v91 - v254) * a11;
    v94 = v274;
    while (1)
    {
      v95 = v94 << v67;
      v96 = v94 + 1;
      if (v280 >= (v94 + 1) << v67)
      {
        v97 = (1 << v67) - v85;
      }

      else
      {
        v97 = a9;
      }

      v98 = v276;
      if (v280 >= v96 << v67)
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
      a7 = v261;
      if (v96 == v278)
      {
        v86 = v268;
        v15 = a10;
        if (v268 == v257)
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
      v132 = (&v248[v99 + ((v94 - v274) << v67) - v85] + v270);
      v133 = (v94 + v272) * a12[3] * *(a12 + 9) + v260;
      do
      {
        v134 = v98;
        v135 = v132;
        v136 = v116;
        do
        {
          v137 = *v135++;
          *(v133 + 16 * (v136 + v123)) = v137;
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
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v283);
  v19 = *(a12 + 13);
  v20 = *(a12 + 12);
  v247 = v16;
  if (1 << v19 >= a6 || a5 >> v20)
  {
    v138 = a6 >> v19;
    v139 = 1 << v20;
    v140 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v140 = 0;
    }

    v141 = v139 >= a5;
    if (v139 < a5)
    {
      v142 = v20 + v19 + v140;
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
      v20 = v142;
    }

    v241 = v20;
    if (v138)
    {
      v22 = *(a12 + 13);
    }

    else
    {
      v22 = v143;
    }
  }

  else
  {
    v21 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v21) = 0;
    }

    v241 = v21;
    v22 = v20 + v19 - v21;
  }

  v144 = v260;
  v145 = a10;
  v146 = a8;
  v239 = v289;
  if (v289)
  {
    v147 = 1 << v22;
    if (1 << v22 >= a6)
    {
      v148 = a6;
    }

    else
    {
      v148 = 1 << v22;
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

    v240 = 1 << v241;
    if (1 << v241 >= a5)
    {
      v152 = a5;
    }

    else
    {
      v152 = 1 << v241;
    }

    v153 = 32 - __clz(v152 - 1);
    v154 = v290;
    v155 = v152 > 1;
    if (v152 <= 1)
    {
      v153 = 0;
    }

    v273 = v287;
    v275 = v153;
    v269 = v287 != 0;
    v271 = v288;
    v267 = v288 != 0;
    if (v290)
    {
      v156 = 0;
      v157 = 0;
      v238 = a7 >> v241;
      v256 = a8 >> v22;
      v281 = v291;
      v282 = v286;
      v279 = v288 | v287;
      v237 = a9 + a7;
      v236 = (v240 - 1) & (a9 + a7);
      v235 = v284;
      v277 = v285;
      v234 = (v240 - 1) & a7;
      v251 = (v147 - 1) & a8;
      v253 = (v147 - 1) & (a10 + a8);
      v250 = v147 - v251;
      v158 = ~(-1 << v153);
      v249 = v151 | v153;
      v263 = v155;
      v243 = 1 << v22;
      v244 = v22;
      v258 = v290;
      do
      {
        v242 = v157;
        v159 = 0;
        v160 = 0;
        v161 = (v156 + v238) << v241;
        v162 = a9;
        if (v237 >= (v156 + v238 + 1) << v241)
        {
          v162 = v240 - v234;
        }

        v163 = 1 << v241;
        if (v237 < (v156 + v238 + 1) << v241)
        {
          v163 = v236;
        }

        v164 = v235 + v156;
        v165 = v156 << v241;
        if (v161 >= a7)
        {
          v166 = v163;
        }

        else
        {
          v166 = v162;
        }

        if (v161 >= a7)
        {
          v167 = 0;
        }

        else
        {
          v167 = v234;
        }

        v245 = &v247[v167 + v165];
        v168 = v145;
        v265 = v166;
        do
        {
          v169 = v277 + v159;
          if (v281)
          {
            v170 = v279;
            if (v279)
            {
              v171 = 0;
              v170 = 0;
              v172 = 1;
              v173 = v267;
              v174 = v269;
              v175 = v273;
              v176 = v271;
              do
              {
                --v175;
                if (v174)
                {
                  v170 |= (v172 & v164) << v171;
                }

                else
                {
                  v175 = 0;
                }

                if (v174)
                {
                  ++v171;
                }

                --v176;
                if (v173)
                {
                  v170 |= (v172 & v169) << v171;
                }

                else
                {
                  v176 = 0;
                }

                if (v173)
                {
                  ++v171;
                }

                v172 *= 2;
                --v171;
                v173 = v176 != 0;
                v174 = v175 != 0;
              }

              while (v176 | v175);
            }
          }

          else
          {
            v170 = v279;
            if (v279)
            {
              v177 = 0;
              v170 = 0;
              v178 = 1;
              v180 = v267;
              v179 = v269;
              v181 = v271;
              v182 = v273;
              do
              {
                --v181;
                if (v180)
                {
                  v170 |= (v178 & v169) << v177;
                }

                else
                {
                  v181 = 0;
                }

                if (v180)
                {
                  ++v177;
                }

                --v182;
                if (v179)
                {
                  v170 |= (v178 & v164) << v177;
                }

                else
                {
                  v182 = 0;
                }

                if (v179)
                {
                  ++v177;
                }

                v178 *= 2;
                --v177;
                v179 = v182 != 0;
                v180 = v181 != 0;
              }

              while (v182 | v181);
            }
          }

          v183 = *(v144 + 4 * ((v170 + v282) | ((v170 + v282) >> 8 << 9)));
          if (v183 < 0)
          {
            v184 = v144 - *(a13 + 3) + ((v183 & 0x1FFFFFFF) << 14);
            result = *a13;
            v185 = a13[2];
            if (result > v185)
            {
              v186 = v159;
              result = get_level_offset_within_tail(result, v185, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v155 = v263;
              v166 = v265;
              v159 = v186;
              v147 = v243;
              v22 = v244;
              v14 = a11;
              v146 = a8;
              v168 = a10;
              v144 = v260;
              v184 += result;
            }

            v187 = (v159 + v256) << v22;
            v188 = v250;
            if (a10 + a8 >= (v159 + v256 + 1) << v22)
            {
              v189 = v147;
            }

            else
            {
              v188 = v168;
              v189 = v253;
            }

            if (v187 >= v146)
            {
              v190 = 0;
            }

            else
            {
              v190 = v251;
            }

            if (v187 >= v146)
            {
              v188 = v189;
            }

            if (!v249)
            {
              v209 = 0;
              v193 = 0;
              v200 = 0;
              v216 = 0;
              v154 = v258;
              if (!v188)
              {
                goto LABEL_192;
              }

LABEL_264:
              if (v166)
              {
                v223 = 0;
                v224 = (v245 + (v190 + (v159 << v22)) * v14);
                do
                {
                  v225 = v166;
                  v226 = v224;
                  v227 = v209;
                  do
                  {
                    result = v227 + v216;
                    v228 = *v226++;
                    *(v184 + 16 * (v227 + v216)) = v228;
                    v227 = (v227 - v193) & v193;
                    --v225;
                  }

                  while (v225);
                  v216 = (v216 - v200) & v200;
                  v224 = (v224 + v14);
                  ++v223;
                }

                while (v223 != v188);
              }

              goto LABEL_192;
            }

            v191 = v159;
            v192 = 0;
            v193 = 0;
            v194 = 1;
            v195 = v155;
            v196 = v150;
            v197 = v275;
            v198 = v151;
            do
            {
              --v197;
              if (v195)
              {
                v193 |= (v194 & v158) << v192++;
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
            v202 = v155;
            v203 = v150;
            v204 = v275;
            v205 = v151;
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
                v200 |= (v201 & ~(-1 << v151)) << v207++;
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
            v211 = v155;
            v212 = v150;
            v213 = v275;
            v214 = v151;
            do
            {
              --v213;
              if (v211)
              {
                v209 |= (v210 & v167) << v208++;
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
            v218 = v155;
            LOBYTE(result) = v150;
            v219 = v275;
            v220 = v151;
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
                v216 |= (v217 & v190) << v222++;
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
            v154 = v258;
            v159 = v191;
            v155 = v263;
            v166 = v265;
            if (v188)
            {
              goto LABEL_264;
            }
          }

LABEL_192:
          v159 = ++v160;
        }

        while (v154 > v160);
        v145 = v168;
        v157 = v242 + 1;
        v156 = (v242 + 1);
        a7 = v261;
      }

      while (v239 > v156);
    }
  }

  return result;
}

uint64_t agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,4ul,8u,(TwiddleOrder)1>>(uint64_t result, _OWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, unsigned int a10, uint64_t a11, unsigned __int16 *a12, unsigned int *a13)
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
      v232 = 0;
      do
      {
        v233 = a9;
        v234 = a2;
        v235 = v47;
        do
        {
          v236 = (result + 32 * (v235 + v54));
          v237 = *v234;
          v238 = v234[1];
          v234 += 2;
          *v236 = v237;
          v236[1] = v238;
          v235 = (v235 - v31) & v31;
          --v233;
        }

        while (v233);
        v54 = (v54 - v38) & v38;
        a2 = (a2 + a11);
        ++v232;
      }

      while (v232 != v15);
    }

    return result;
  }

  v265 = result;
  v266 = a7;
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

    v271 = 1 << v66;
    v76 = v69 - 1;
    v267 = a10 + a8;
    v269 = a8 >> v66;
    v262 = (v69 - 1 + a10 + a8) >> v66;
    v264 = v66;
    if (a8 >> v66 >= v262)
    {
      return result;
    }

    result = a7 >> v67;
    v77 = (1 << v67) - 1;
    v285 = a9 + a7;
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
    v279 = a7 >> v67;
    v283 = (v77 + a9 + a7) >> v67;
    if (result >= v283)
    {
      return result;
    }

    v260 = (v75 + ~(-1 << v67)) >> v67;
    v85 = v77 & a7;
    v281 = v77 & v285;
    v257 = v76 & v267;
    v259 = v76 & a8;
    v86 = v269;
    v253 = a2;
LABEL_92:
    v87 = v86 << v264;
    v88 = v86 - v269;
    v277 = v86 * v260;
    v273 = v86 + 1;
    v64 = v267 >= (v86 + 1) << v264;
    v89 = v271;
    v90 = v271 - v259;
    if (!v64)
    {
      v89 = v257;
      v90 = v15;
    }

    v91 = v88 << v264;
    if (v87 >= a8)
    {
      v92 = 0;
    }

    else
    {
      v92 = v259;
    }

    if (v87 >= a8)
    {
      v93 = v89;
    }

    else
    {
      v93 = v90;
    }

    v275 = (v92 + v91 - v259) * a11;
    v94 = v279;
    while (1)
    {
      v95 = v94 << v67;
      v96 = v94 + 1;
      if (v285 >= (v94 + 1) << v67)
      {
        v97 = (1 << v67) - v85;
      }

      else
      {
        v97 = a9;
      }

      v98 = v281;
      if (v285 >= v96 << v67)
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
      a7 = v266;
      if (v96 == v283)
      {
        v86 = v273;
        v15 = a10;
        if (v273 == v262)
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
      v132 = (&v253[2 * (v99 + ((v94 - v279) << v67) - v85)] + v275);
      v133 = (v94 + v277) * a12[3] * *(a12 + 9) + v265;
      do
      {
        v134 = v98;
        v135 = v132;
        v136 = v116;
        do
        {
          v137 = (v133 + 32 * (v136 + v123));
          v138 = *v135;
          v139 = v135[1];
          v135 += 2;
          *v137 = v138;
          v137[1] = v139;
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
  result = agxCalcSparseInputs(a12[3], *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 8), a13[2], a13[3], a13[1], *a13, *(a12 + 16) - 1 < 2, a7, a8, a9, a10, v288);
  v19 = *(a12 + 13);
  v20 = *(a12 + 12);
  v252 = v16;
  if (1 << v19 >= a6 || a5 >> v20)
  {
    v140 = a6 >> v19;
    v141 = 1 << v20;
    v142 = __clz(~(-1 << -__clz(a6 - 1))) | 0xFFFFFFE0;
    if (a6 < 2)
    {
      v142 = 0;
    }

    v143 = v141 >= a5;
    if (v141 < a5)
    {
      v144 = v20 + v19 + v142;
    }

    else
    {
      v144 = *(a12 + 12);
    }

    if (v143)
    {
      LOBYTE(v145) = *(a12 + 13);
    }

    else
    {
      v145 = -v142;
    }

    if (!v140)
    {
      v20 = v144;
    }

    v246 = v20;
    if (v140)
    {
      v22 = *(a12 + 13);
    }

    else
    {
      v22 = v145;
    }
  }

  else
  {
    v21 = 32 - __clz(~(-1 << -__clz(a5 - 1)));
    if (a5 < 2)
    {
      LOBYTE(v21) = 0;
    }

    v246 = v21;
    v22 = v20 + v19 - v21;
  }

  v146 = v265;
  v147 = a10;
  v148 = a8;
  v244 = v294;
  if (v294)
  {
    v149 = 1 << v22;
    if (1 << v22 >= a6)
    {
      v150 = a6;
    }

    else
    {
      v150 = 1 << v22;
    }

    v151 = 32 - __clz(v150 - 1);
    v152 = v150 > 1;
    if (v150 <= 1)
    {
      v153 = 0;
    }

    else
    {
      v153 = v151;
    }

    v245 = 1 << v246;
    if (1 << v246 >= a5)
    {
      v154 = a5;
    }

    else
    {
      v154 = 1 << v246;
    }

    v155 = 32 - __clz(v154 - 1);
    v156 = v295;
    v157 = v154 > 1;
    if (v154 <= 1)
    {
      v155 = 0;
    }

    v278 = v292;
    v280 = v155;
    v274 = v292 != 0;
    v276 = v293;
    v272 = v293 != 0;
    if (v295)
    {
      v158 = 0;
      v159 = 0;
      v243 = a7 >> v246;
      v261 = a8 >> v22;
      v286 = v296;
      v287 = v291;
      v284 = v293 | v292;
      v242 = a9 + a7;
      v241 = (v245 - 1) & (a9 + a7);
      v240 = v289;
      v282 = v290;
      v239 = (v245 - 1) & a7;
      v256 = (v149 - 1) & a8;
      v258 = (v149 - 1) & (a10 + a8);
      v255 = v149 - v256;
      v160 = ~(-1 << v155);
      v254 = v153 | v155;
      v268 = v157;
      v248 = 1 << v22;
      v249 = v22;
      v263 = v295;
      do
      {
        v247 = v159;
        v161 = 0;
        v162 = 0;
        v163 = (v158 + v243) << v246;
        v164 = a9;
        if (v242 >= (v158 + v243 + 1) << v246)
        {
          v164 = v245 - v239;
        }

        v165 = 1 << v246;
        if (v242 < (v158 + v243 + 1) << v246)
        {
          v165 = v241;
        }

        v166 = v240 + v158;
        v167 = v158 << v246;
        if (v163 >= a7)
        {
          v168 = v165;
        }

        else
        {
          v168 = v164;
        }

        if (v163 >= a7)
        {
          v169 = 0;
        }

        else
        {
          v169 = v239;
        }

        v250 = &v252[2 * (v169 + v167)];
        v170 = v147;
        v270 = v168;
        do
        {
          v171 = v282 + v161;
          if (v286)
          {
            v172 = v284;
            if (v284)
            {
              v173 = 0;
              v172 = 0;
              v174 = 1;
              v175 = v272;
              v176 = v274;
              v177 = v278;
              v178 = v276;
              do
              {
                --v177;
                if (v176)
                {
                  v172 |= (v174 & v166) << v173;
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
                  v172 |= (v174 & v171) << v173;
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

          else
          {
            v172 = v284;
            if (v284)
            {
              v179 = 0;
              v172 = 0;
              v180 = 1;
              v182 = v272;
              v181 = v274;
              v183 = v276;
              v184 = v278;
              do
              {
                --v183;
                if (v182)
                {
                  v172 |= (v180 & v171) << v179;
                }

                else
                {
                  v183 = 0;
                }

                if (v182)
                {
                  ++v179;
                }

                --v184;
                if (v181)
                {
                  v172 |= (v180 & v166) << v179;
                }

                else
                {
                  v184 = 0;
                }

                if (v181)
                {
                  ++v179;
                }

                v180 *= 2;
                --v179;
                v181 = v184 != 0;
                v182 = v183 != 0;
              }

              while (v184 | v183);
            }
          }

          v185 = *(v146 + 4 * ((v172 + v287) | ((v172 + v287) >> 8 << 9)));
          if (v185 < 0)
          {
            v186 = v146 - *(a13 + 3) + ((v185 & 0x1FFFFFFF) << 14);
            result = *a13;
            v187 = a13[2];
            if (result > v187)
            {
              v188 = v161;
              result = get_level_offset_within_tail(result, v187, *a12, a12[1], *(a12 + 18), *(a12 + 19), *(a12 + 14), *(a12 + 16) - 1 < 2);
              v157 = v268;
              v168 = v270;
              v161 = v188;
              v149 = v248;
              v22 = v249;
              v14 = a11;
              v148 = a8;
              v170 = a10;
              v146 = v265;
              v186 += result;
            }

            v189 = (v161 + v261) << v22;
            v190 = v255;
            if (a10 + a8 >= (v161 + v261 + 1) << v22)
            {
              v191 = v149;
            }

            else
            {
              v190 = v170;
              v191 = v258;
            }

            if (v189 >= v148)
            {
              v192 = 0;
            }

            else
            {
              v192 = v256;
            }

            if (v189 >= v148)
            {
              v190 = v191;
            }

            if (!v254)
            {
              v211 = 0;
              v195 = 0;
              v202 = 0;
              v218 = 0;
              v156 = v263;
              if (!v190)
              {
                goto LABEL_192;
              }

LABEL_264:
              if (v168)
              {
                v225 = 0;
                v226 = (v250 + (v192 + (v161 << v22)) * v14);
                do
                {
                  v227 = v168;
                  v228 = v226;
                  v229 = v211;
                  do
                  {
                    result = v186 + 32 * (v229 + v218);
                    v230 = *v228;
                    v231 = v228[1];
                    v228 += 2;
                    *result = v230;
                    *(result + 16) = v231;
                    v229 = (v229 - v195) & v195;
                    --v227;
                  }

                  while (v227);
                  v218 = (v218 - v202) & v202;
                  v226 = (v226 + v14);
                  ++v225;
                }

                while (v225 != v190);
              }

              goto LABEL_192;
            }

            v193 = v161;
            v194 = 0;
            v195 = 0;
            v196 = 1;
            v197 = v157;
            v198 = v152;
            v199 = v280;
            v200 = v153;
            do
            {
              --v199;
              if (v197)
              {
                v195 |= (v196 & v160) << v194++;
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
            v204 = v157;
            v205 = v152;
            v206 = v280;
            v207 = v153;
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
                v202 |= (v203 & ~(-1 << v153)) << v209++;
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
            v213 = v157;
            v214 = v152;
            v215 = v280;
            v216 = v153;
            do
            {
              --v215;
              if (v213)
              {
                v211 |= (v212 & v169) << v210++;
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
            v220 = v157;
            LOBYTE(result) = v152;
            v221 = v280;
            v222 = v153;
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
                v218 |= (v219 & v192) << v224++;
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
            v156 = v263;
            v161 = v193;
            v157 = v268;
            v168 = v270;
            if (v190)
            {
              goto LABEL_264;
            }
          }

LABEL_192:
          v161 = ++v162;
        }

        while (v156 > v162);
        v147 = v170;
        v159 = v247 + 1;
        v158 = (v247 + 1);
        a7 = v266;
      }

      while (v244 > v158);
    }
  }

  return result;
}