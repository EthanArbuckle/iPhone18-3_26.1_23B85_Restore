int8x8_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(void *a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  v37 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v33, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v33, a5);
  }

  v30 = v33;
  v26 = v34;
  v29 = v35;
  v25 = v36;
  v10 = a3 + 4;
  if ((a4 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v10, &v33, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v10, &v33, a5);
  }

  v28 = v33;
  v32 = v34;
  v27 = v35;
  v31 = v36;
  v11 = a3 + 8;
  if ((a4 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v11, &v33, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v11, &v33, a5);
  }

  v24 = v33;
  v22 = v34;
  v23 = v35;
  v21 = v36;
  v12 = a3 + 12;
  if ((a4 & 8) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v12, &v33, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v12, &v33, a5);
  }

  v13.i64[0] = v22;
  v13.i64[1] = v21;
  v14.i64[0] = v26;
  v14.i64[1] = v25;
  *v14.i8 = vmovn_s16(vuzp1q_s16(v14, v13));
  v15.i64[0] = v24;
  v15.i64[1] = v23;
  v16.i64[0] = v30;
  v16.i64[1] = v29;
  *v16.i8 = vmovn_s16(vuzp1q_s16(v16, v15));
  v13.i64[0] = v33;
  v15.i64[0] = v34;
  v17 = v35;
  v18 = v36;
  *a1 = v16.i64[0];
  *(a1 + a2) = v14.i64[0];
  v19 = (a1 + a2 + a2);
  v13.i64[1] = v17;
  v14.i64[0] = v28;
  v14.i64[1] = v27;
  *v19 = vmovn_s16(vuzp1q_s16(v14, v13));
  v15.i64[1] = v18;
  v14.i64[0] = v32;
  v14.i64[1] = v31;
  result = vmovn_s16(vuzp1q_s16(v14, v15));
  *(v19 + a2) = result;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(unint64_t result, _DWORD *a2, int a3)
{
  v3 = (result & 0xFFFFFFFFFFFFFFF8);
  v4 = 8 * (result & 7);
  if (a3 == 4)
  {
    v5 = (v4 | 4) - v4;
    v6 = __CFADD__(v5 - 29, 33);
    if ((v5 - 29) >= 0xFFFFFFFFFFFFFFDFLL)
    {
      v7 = ((v4 + 8) & 0x38) - v4;
    }

    else
    {
      v7 = (v4 | 4) - v4;
    }

    if ((v5 - 29) >= 0xFFFFFFFFFFFFFFDFLL)
    {
      v8 = (v4 + 8) & 0x38;
    }

    else
    {
      v8 = v4 | 4;
    }

    if (v6)
    {
      v9 = (v4 + 8) >> 6;
    }

    else
    {
      v9 = 0;
    }

    if (v6)
    {
      v10 = 16 * ((*v3 >> (v4 | 4u)) & 0xF);
    }

    else
    {
      v10 = 0;
    }

    *a2 = 16 * ((*v3 >> v4) & 0xF);
    a2[1] = v10;
    if (v7 + (v9 << 6) - 29 >= 0xFFFFFFFFFFFFFFDFLL)
    {
      v24 = 0;
      v25 = 0;
      v26 = 4;
      do
      {
        v27 = 64 - v8;
        if (64 - v8 >= v26)
        {
          v27 = v26;
        }

        result = ((v3[v9] >> v8) & ~(-1 << v27)) << v25;
        v24 |= result;
        v25 += v27;
        v28 = v27 + v8;
        v9 += v28 >> 6;
        v8 = v28 & 0x3F;
        v26 -= v27;
      }

      while (v26);
      a2[2] = 16 * (v24 & 0xF);
      if (v8 - v4 + (v9 << 6) - 29 >= 0xFFFFFFFFFFFFFFDFLL)
      {
        v31 = 0;
        v32 = 0;
        v33 = 4;
        do
        {
          v34 = 64 - v8;
          if (64 - v8 >= v33)
          {
            v34 = v33;
          }

          result = ((v3[v9] >> v8) & ~(-1 << v34)) << v32;
          v31 |= result;
          v32 += v34;
          v35 = v34 + v8;
          v9 += v35 >> 6;
          v8 = v35 & 0x3F;
          v33 -= v34;
        }

        while (v33);
        a2[3] = 16 * (v31 & 0xF);
        if (v8 - v4 + (v9 << 6) - 29 >= 0xFFFFFFFFFFFFFFDFLL)
        {
          v36 = 0;
          v37 = 0;
          v38 = 4;
          do
          {
            v39 = 64 - v8;
            if (64 - v8 >= v38)
            {
              v39 = v38;
            }

            result = ((v3[v9] >> v8) & ~(-1 << v39)) << v37;
            v36 |= result;
            v37 += v39;
            v40 = v39 + v8;
            v9 += v40 >> 6;
            v8 = v40 & 0x3F;
            v38 -= v39;
          }

          while (v38);
          a2[4] = 16 * (v36 & 0xF);
          if (v8 - v4 + (v9 << 6) - 29 >= 0xFFFFFFFFFFFFFFDFLL)
          {
            v41 = 0;
            v42 = 0;
            v43 = 4;
            do
            {
              v44 = 64 - v8;
              if (64 - v8 >= v43)
              {
                v44 = v43;
              }

              result = ((v3[v9] >> v8) & ~(-1 << v44)) << v42;
              v41 |= result;
              v42 += v44;
              v45 = v44 + v8;
              v9 += v45 >> 6;
              v8 = v45 & 0x3F;
              v43 -= v44;
            }

            while (v43);
            a2[5] = 16 * (v41 & 0xF);
            if (v8 - v4 + (v9 << 6) - 29 >= 0xFFFFFFFFFFFFFFDFLL)
            {
              v46 = 0;
              v47 = 0;
              v48 = 4;
              do
              {
                v49 = 64 - v8;
                if (64 - v8 >= v48)
                {
                  v49 = v48;
                }

                result = ((v3[v9] >> v8) & ~(-1 << v49)) << v47;
                v46 |= result;
                v47 += v49;
                v50 = v49 + v8;
                v9 += v50 >> 6;
                v8 = v50 & 0x3F;
                v48 -= v49;
              }

              while (v48);
              v51 = v8 - v4 + (v9 << 6) - 29;
              a2[6] = 16 * (v46 & 0xF);
              v30 = a2 + 7;
              if (v51 >= 0xFFFFFFFFFFFFFFDFLL)
              {
                v52 = 0;
                v53 = 0;
                v54 = 4;
                do
                {
                  v55 = 64 - v8;
                  if (64 - v8 >= v54)
                  {
                    v55 = v54;
                  }

                  result = ((v3[v9] >> v8) & ~(-1 << v55)) << v53;
                  v52 |= result;
                  v53 += v55;
                  v56 = v55 + v8;
                  v9 += v56 >> 6;
                  v8 = v56 & 0x3F;
                  v54 -= v55;
                }

                while (v54);
                v29 = 16 * (v52 & 0xF);
              }

              else
              {
                v29 = 0;
              }

              goto LABEL_42;
            }

LABEL_41:
            v29 = 0;
            a2[6] = 0;
            v30 = a2 + 7;
LABEL_42:
            *v30 = v29;
            return result;
          }

LABEL_40:
          a2[5] = 0;
          goto LABEL_41;
        }

LABEL_39:
        a2[4] = 0;
        goto LABEL_40;
      }
    }

    else
    {
      a2[2] = 0;
    }

    a2[3] = 0;
    goto LABEL_39;
  }

  v11 = 0;
  v12 = 0;
  v13 = a3 & 0xFFFFFFFD;
  v14 = ((a3 & 0xFFFFFFFD) == 1) << 7;
  v15 = 8 * (result & 7);
  do
  {
    if ((v15 - v4 + (v12 << 6) - 29) >= 0xFFFFFFFFFFFFFFDFLL)
    {
      v16 = 0;
      v17 = 0;
      v18 = 4;
      do
      {
        v19 = 64 - v15;
        if (64 - v15 >= v18)
        {
          v19 = v18;
        }

        v16 |= ((v3[v12] >> v15) & ~(-1 << v19)) << v17;
        v17 += v19;
        v20 = v19 + v15;
        v12 += v20 >> 6;
        v15 = v20 & 0x3F;
        v18 -= v19;
      }

      while (v18);
    }

    else
    {
      v16 = 0;
    }

    v21 = 16 * (v16 & 0xF);
    if (v21 != 128 || v13 != 1)
    {
      v23 = v21 - (v16 & 1) + 8;
      if (v21 == 240)
      {
        v23 = 255;
      }

      if (v21)
      {
        v21 = v23;
      }

      else
      {
        v21 = 0;
      }
    }

    result = v21 ^ v14;
    a2[v11++] = result;
  }

  while (v11 != 8);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(uint64_t a1, int *a2, int a3)
{
  v165 = *MEMORY[0x29EDCA608];
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = 3;
  v6 = v4 | 3;
  v7 = (*(a1 & 0xFFFFFFFFFFFFFFF8) >> v4) & 7;
  if (((*(a1 & 0xFFFFFFFFFFFFFFF8) >> v4) & 7) != 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = v7 + 2;
    goto LABEL_18;
  }

  if ((v6 - v4) > 0x1E)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v8 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 2;
  do
  {
    v14 = 64 - v6;
    if (64 - v6 >= v13)
    {
      v14 = v13;
    }

    v11 |= ((*(v3 + 8 * v8) >> v6) & ~(-1 << v14)) << v12;
    v12 += v14;
    v8 += (v14 + v6) >> 6;
    v6 = (v14 + v6) & 0x3F;
    v13 -= v14;
  }

  while (v13);
  v15 = v11 & 3;
  if (v15 <= 1)
  {
    if (v15)
    {
      v10 = 0;
      v9 = 255;
      goto LABEL_6;
    }

LABEL_5:
    v9 = 0;
    v10 = 0;
LABEL_6:
    v5 = 5;
    goto LABEL_18;
  }

  v5 = 5;
  if (v15 == 2)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  v9 = 0;
LABEL_18:
  v16 = v10;
  v17 = &kDQuadParamTable[10 * v10];
  v18 = v17[4];
  v19 = v17[5];
  if (v18 >= 8)
  {
    v20 = 8;
  }

  else
  {
    v20 = v18;
  }

  if (v19 >= 8)
  {
    v21 = 8;
  }

  else
  {
    v21 = v19;
  }

  v22 = 8 - v20;
  if (v10)
  {
    if (v18)
    {
      if ((v20 - v4 + v6 + (v8 << 6)) <= 0x20)
      {
        v23 = 0;
        v91 = 0;
        v92 = v20;
        do
        {
          v93 = 64 - v6;
          if (64 - v6 >= v92)
          {
            v93 = v92;
          }

          v23 |= ((*(v3 + 8 * v8) >> v6) & ~(-1 << v93)) << v91;
          v91 += v93;
          v94 = v93 + v6;
          v8 += v94 >> 6;
          v6 = v94 & 0x3F;
          v92 -= v93;
        }

        while (v92);
      }

      else
      {
        v23 = 0;
      }

      v5 += v20;
      v9 = v23 << v22;
      if (!v19)
      {
        goto LABEL_84;
      }

      goto LABEL_30;
    }

    v9 = 0;
  }

  if (!v19)
  {
LABEL_84:
    v24 = 0;
    v36 = 0;
    v161 = 0;
    v162 = 0;
    v164 = 0;
    v163 = 0;
    goto LABEL_85;
  }

LABEL_30:
  if ((v6 - v4 + (v8 << 6) + 3) <= 0x20)
  {
    LODWORD(v24) = 0;
    v25 = 0;
    v26 = 3;
    do
    {
      v27 = 64 - v6;
      if (64 - v6 >= v26)
      {
        v27 = v26;
      }

      v24 = v24 | (((*(v3 + 8 * v8) >> v6) & ~(-1 << v27)) << v25);
      v25 += v27;
      v28 = v27 + v6;
      v8 += v28 >> 6;
      v6 = v28 & 0x3F;
      v26 -= v27;
    }

    while (v26);
  }

  else
  {
    v24 = 0;
  }

  v29 = 29 - v5;
  v30 = (37 * (29 - v5)) >> 8;
  v31 = v21 - v4;
  v32 = (v6 | (v8 << 6)) + -7 * v30 + v29;
  v33 = v32 & 0x3F;
  v34 = v31 + v33 + (v32 & 0xFFFFFFFFFFFFFFC0);
  v161 = 0;
  v162 = 0;
  v164 = 0;
  v163 = 0;
  v35 = v32 >> 6;
  if (v34 <= 0x20)
  {
    v36 = 0;
    v37 = 0;
    v38 = v21;
    do
    {
      v39 = 64 - v33;
      if (64 - v33 >= v38)
      {
        v39 = v38;
      }

      v36 |= ((*(v3 + 8 * v35) >> v33) & ~(-1 << v39)) << v37;
      v37 += v39;
      v40 = v39 + v33;
      v35 += v40 >> 6;
      v33 = v40 & 0x3F;
      v38 -= v39;
    }

    while (v38);
  }

  else
  {
    v36 = 0;
  }

  LODWORD(v161) = v36;
  v41 = v33 | (v35 << 6);
  v42 = v30 - v21;
  v43 = v41 + v42;
  v44 = (v41 + v42) & 0x3F;
  v45 = (v41 + v42) >> 6;
  if (v31 + v44 + (v43 & 0xFFFFFFFFFFFFFFC0) <= 0x20)
  {
    v46 = 0;
    v47 = 0;
    v48 = v21;
    do
    {
      v49 = 64 - v44;
      if (64 - v44 >= v48)
      {
        v49 = v48;
      }

      v46 |= ((*(v3 + 8 * v45) >> v44) & ~(-1 << v49)) << v47;
      v47 += v49;
      v50 = v49 + v44;
      v45 += v50 >> 6;
      v44 = v50 & 0x3F;
      v48 -= v49;
    }

    while (v48);
  }

  else
  {
    v46 = 0;
  }

  HIDWORD(v161) = v46;
  v51 = (v44 | (v45 << 6)) + v42;
  v52 = v51 & 0x3F;
  v53 = v51 >> 6;
  if (v31 + v52 + (v51 & 0xFFFFFFFFFFFFFFC0) <= 0x20)
  {
    v54 = 0;
    v55 = 0;
    v56 = v21;
    do
    {
      v57 = 64 - v52;
      if (64 - v52 >= v56)
      {
        v57 = v56;
      }

      v54 |= ((*(v3 + 8 * v53) >> v52) & ~(-1 << v57)) << v55;
      v55 += v57;
      v58 = v57 + v52;
      v53 += v58 >> 6;
      v52 = v58 & 0x3F;
      v56 -= v57;
    }

    while (v56);
  }

  else
  {
    v54 = 0;
  }

  LODWORD(v162) = v54;
  v59 = (v52 | (v53 << 6)) + v42;
  v60 = v59 & 0x3F;
  v61 = v59 >> 6;
  if (v31 + v60 + (v59 & 0xFFFFFFFFFFFFFFC0) <= 0x20)
  {
    v62 = 0;
    v63 = 0;
    v64 = v21;
    do
    {
      v65 = 64 - v60;
      if (64 - v60 >= v64)
      {
        v65 = v64;
      }

      v62 |= ((*(v3 + 8 * v61) >> v60) & ~(-1 << v65)) << v63;
      v63 += v65;
      v66 = v65 + v60;
      v61 += v66 >> 6;
      v60 = v66 & 0x3F;
      v64 -= v65;
    }

    while (v64);
  }

  else
  {
    v62 = 0;
  }

  HIDWORD(v162) = v62;
  v67 = (v60 | (v61 << 6)) + v42;
  v68 = v67 & 0x3F;
  v69 = v67 >> 6;
  if (v31 + v68 + (v67 & 0xFFFFFFFFFFFFFFC0) <= 0x20)
  {
    v70 = 0;
    v71 = 0;
    v72 = v21;
    do
    {
      v73 = 64 - v68;
      if (64 - v68 >= v72)
      {
        v73 = v72;
      }

      v70 |= ((*(v3 + 8 * v69) >> v68) & ~(-1 << v73)) << v71;
      v71 += v73;
      v74 = v73 + v68;
      v69 += v74 >> 6;
      v68 = v74 & 0x3F;
      v72 -= v73;
    }

    while (v72);
  }

  else
  {
    v70 = 0;
  }

  LODWORD(v163) = v70;
  v75 = (v68 | (v69 << 6)) + v42;
  v76 = v75 & 0x3F;
  v77 = v75 >> 6;
  if (v31 + v76 + (v75 & 0xFFFFFFFFFFFFFFC0) <= 0x20)
  {
    v78 = 0;
    v79 = 0;
    v80 = v21;
    do
    {
      v81 = 64 - v76;
      if (64 - v76 >= v80)
      {
        v81 = v80;
      }

      v78 |= ((*(v3 + 8 * v77) >> v76) & ~(-1 << v81)) << v79;
      v79 += v81;
      v82 = v81 + v76;
      v77 += v82 >> 6;
      v76 = v82 & 0x3F;
      v80 -= v81;
    }

    while (v80);
  }

  else
  {
    v78 = 0;
  }

  HIDWORD(v163) = v78;
  v83 = (v76 | (v77 << 6)) + v42;
  v84 = v83 & 0x3F;
  if (v31 + v84 + (v83 & 0xFFFFFFFFFFFFFFC0) <= 0x20)
  {
    v85 = 0;
    v86 = 0;
    v87 = v83 >> 6;
    v88 = v21;
    do
    {
      v89 = 64 - v84;
      if (64 - v84 >= v88)
      {
        v89 = v88;
      }

      v85 |= ((*(v3 + 8 * v87) >> v84) & ~(-1 << v89)) << v86;
      v86 += v89;
      v90 = v89 + v84;
      v87 += v90 >> 6;
      v84 = v90 & 0x3F;
      v88 -= v89;
    }

    while (v88);
  }

  else
  {
    v85 = 0;
  }

  v164 = v85;
LABEL_85:
  v95 = *&kDQuadParamTable[10 * v16 + 2];
  if (v95 >> v21 <= 1)
  {
    v96 = 1;
  }

  else
  {
    v96 = v95 >> v21;
  }

  v97 = v96 >> 1;
  if (v96 >> 1 >= (1 << v22) >> 1)
  {
    v98 = (1 << v22) >> 1;
  }

  else
  {
    v98 = v96 >> 1;
  }

  v99 = v9;
  v100 = 128 - v9;
  result = v100 / v96;
  v102 = v95 + v9;
  v103 = -1 << v21;
  if (!v9)
  {
    v98 = 0;
  }

  v104 = v9 == 128;
  v105 = v96 > v100;
  if (v19)
  {
    if (v24)
    {
      v106 = result == v36;
      if (!(v9 | v36))
      {
        v107 = 0;
LABEL_103:
        v108 = 1;
        goto LABEL_104;
      }

      if (v102 < 0x100 || (v103 ^ v36) != 0xFFFFFFFFFFFFFFFFLL)
      {
        v107 = v97 + v96 * v36;
        goto LABEL_103;
      }

      v108 = 1;
      v107 = 255;
    }

    else
    {
      v108 = 0;
      v107 = v98;
      v106 = v9 == 128;
    }
  }

  else
  {
    v108 = 0;
    v107 = 0;
    v106 = v105;
  }

LABEL_104:
  v109 = a3 & 0xFFFFFFFD;
  v110 = v107 + v9;
  v111 = v110;
  if (a3 == 4)
  {
    v111 = 2139095039;
    if ((v110 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v110 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v111 = 4286578687;
      }

      else
      {
        v111 = v110;
      }
    }
  }

  v112 = 255;
  if (v111 < 0xFF)
  {
    v112 = v111;
  }

  if (v106)
  {
    v113 = 0;
  }

  else
  {
    v113 = v112 ^ 0x80;
  }

  if (v109 != 1)
  {
    v113 = v112;
  }

  *a2 = v113;
  if (v19)
  {
    if (v24 == 1)
    {
      v114 = v98;
      v115 = v9 == 128;
    }

    else
    {
      v116 = *(&v161 | (4 * v108));
      v115 = result == v116;
      if (v9 | v116)
      {
        if (v102 >= 0x100 && (v103 ^ v116) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v114 = 255;
        }

        else
        {
          v114 = v97 + v96 * v116;
        }
      }

      else
      {
        v114 = 0;
      }

      ++v108;
    }
  }

  else
  {
    v114 = 0;
    v115 = v105;
  }

  v117 = v114 + v9;
  v118 = v117;
  if (a3 == 4)
  {
    v118 = 2139095039;
    if ((v117 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v117 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v118 = 4286578687;
      }

      else
      {
        v118 = v117;
      }
    }
  }

  v119 = 255;
  if (v118 < 0xFF)
  {
    v119 = v118;
  }

  if (v115)
  {
    v120 = 0;
  }

  else
  {
    v120 = v119 ^ 0x80;
  }

  if (v109 != 1)
  {
    v120 = v119;
  }

  a2[1] = v120;
  if (v19)
  {
    if (v24 == 2)
    {
      v121 = v98;
      v122 = v9 == 128;
    }

    else
    {
      v123 = *(&v161 + v108);
      v122 = result == v123;
      if (v9 | v123)
      {
        if (v102 >= 0x100 && (v103 ^ v123) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v121 = 255;
        }

        else
        {
          v121 = v97 + v96 * v123;
        }
      }

      else
      {
        v121 = 0;
      }

      ++v108;
    }
  }

  else
  {
    v121 = 0;
    v122 = v105;
  }

  v124 = v121 + v9;
  v125 = v124;
  if (a3 == 4)
  {
    v125 = 2139095039;
    if ((v124 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v124 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v125 = 4286578687;
      }

      else
      {
        v125 = v124;
      }
    }
  }

  v126 = 255;
  if (v125 < 0xFF)
  {
    v126 = v125;
  }

  if (v122)
  {
    v127 = 0;
  }

  else
  {
    v127 = v126 ^ 0x80;
  }

  if (v109 != 1)
  {
    v127 = v126;
  }

  a2[2] = v127;
  if (v19)
  {
    if (v24 == 3)
    {
      v128 = v98;
      v129 = v9 == 128;
    }

    else
    {
      v130 = *(&v161 + v108);
      v129 = result == v130;
      if (v9 | v130)
      {
        if (v102 >= 0x100 && (v103 ^ v130) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v128 = 255;
        }

        else
        {
          v128 = v97 + v96 * v130;
        }
      }

      else
      {
        v128 = 0;
      }

      ++v108;
    }
  }

  else
  {
    v128 = 0;
    v129 = v105;
  }

  v131 = v128 + v9;
  v132 = v131;
  if (a3 == 4)
  {
    v132 = 2139095039;
    if ((v131 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v131 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v132 = 4286578687;
      }

      else
      {
        v132 = v131;
      }
    }
  }

  v133 = 255;
  if (v132 < 0xFF)
  {
    v133 = v132;
  }

  if (v129)
  {
    v134 = 0;
  }

  else
  {
    v134 = v133 ^ 0x80;
  }

  if (v109 != 1)
  {
    v134 = v133;
  }

  a2[3] = v134;
  if (v19)
  {
    if (v24 == 4)
    {
      v135 = v98;
      v136 = v9 == 128;
    }

    else
    {
      v137 = *(&v161 + v108);
      v136 = result == v137;
      if (v9 | v137)
      {
        if (v102 >= 0x100 && (v103 ^ v137) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v135 = 255;
        }

        else
        {
          v135 = v97 + v96 * v137;
        }
      }

      else
      {
        v135 = 0;
      }

      ++v108;
    }
  }

  else
  {
    v135 = 0;
    v136 = v105;
  }

  v138 = v135 + v9;
  v139 = v138;
  if (a3 == 4)
  {
    v139 = 2139095039;
    if ((v138 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v138 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v139 = 4286578687;
      }

      else
      {
        v139 = v138;
      }
    }
  }

  v140 = 255;
  if (v139 < 0xFF)
  {
    v140 = v139;
  }

  if (v136)
  {
    v141 = 0;
  }

  else
  {
    v141 = v140 ^ 0x80;
  }

  if (v109 != 1)
  {
    v141 = v140;
  }

  a2[4] = v141;
  if (v19)
  {
    if (v24 == 5)
    {
      v142 = v98;
      v143 = v9 == 128;
    }

    else
    {
      v144 = *(&v161 + v108);
      v143 = result == v144;
      if (v9 | v144)
      {
        if (v102 >= 0x100 && (v103 ^ v144) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v142 = 255;
        }

        else
        {
          v142 = v97 + v96 * v144;
        }
      }

      else
      {
        v142 = 0;
      }

      ++v108;
    }
  }

  else
  {
    v142 = 0;
    v143 = v105;
  }

  v145 = v142 + v9;
  v146 = v145;
  if (a3 == 4)
  {
    v146 = 2139095039;
    if ((v145 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v145 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v146 = 4286578687;
      }

      else
      {
        v146 = v145;
      }
    }
  }

  v147 = 255;
  if (v146 < 0xFF)
  {
    v147 = v146;
  }

  if (v143)
  {
    v148 = 0;
  }

  else
  {
    v148 = v147 ^ 0x80;
  }

  if (v109 != 1)
  {
    v148 = v147;
  }

  a2[5] = v148;
  if (v19)
  {
    if (v24 == 6)
    {
      v149 = v98;
      v150 = v9 == 128;
    }

    else
    {
      v151 = *(&v161 + v108);
      v150 = result == v151;
      if (v9 | v151)
      {
        if (v102 >= 0x100 && (v103 ^ v151) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v149 = 255;
        }

        else
        {
          v149 = v97 + v96 * v151;
        }
      }

      else
      {
        v149 = 0;
      }

      ++v108;
    }
  }

  else
  {
    v149 = 0;
    v150 = v105;
  }

  v152 = v149 + v9;
  v153 = v152;
  if (a3 == 4)
  {
    v153 = 2139095039;
    if ((v152 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v152 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v153 = 4286578687;
      }

      else
      {
        v153 = v152;
      }
    }
  }

  v154 = 255;
  if (v153 < 0xFF)
  {
    v154 = v153;
  }

  if (v150)
  {
    v155 = 0;
  }

  else
  {
    v155 = v154 ^ 0x80;
  }

  if (v109 != 1)
  {
    v155 = v154;
  }

  a2[6] = v155;
  if (v19)
  {
    if (v24 != 7)
    {
      v156 = *(&v161 + v108);
      v104 = result == v156;
      if (v9 | v156)
      {
        if (v102 >= 0x100 && (v103 ^ v156) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v98 = 255;
        }

        else
        {
          v98 = v97 + v96 * v156;
        }
      }

      else
      {
        v98 = 0;
      }
    }
  }

  else
  {
    v98 = 0;
    v104 = v105;
  }

  v157 = v98 + v9;
  v158 = v157;
  if (a3 == 4)
  {
    v158 = 2139095039;
    if ((v157 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v157 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v158 = 4286578687;
      }

      else
      {
        v158 = v98 + v99;
      }
    }
  }

  v159 = 255;
  if (v158 < 0xFF)
  {
    v159 = v158;
  }

  v160 = v159 ^ 0x80;
  if (v104)
  {
    v160 = 0;
  }

  if (v109 == 1)
  {
    v159 = v160;
  }

  a2[7] = v159;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = a6;
  v9 = a5;
  v11 = a3;
  v13 = result;
  if (a5 && a6)
  {
    if (a6 >= 4)
    {
      a6 = 4;
    }

    if (a5 >= 8)
    {
      a5 = 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
    v11 += result;
  }

  else
  {
    *a4 = 0;
  }

  v14 = 4 * a2;
  v15 = v8 - 4;
  if (v9 && v8 >= 5)
  {
    if (v15 >= 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = v8 - 4;
    }

    if (v9 >= 8)
    {
      v17 = 8;
    }

    else
    {
      v17 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, (v13 + v14), a2, v17, v16, a7);
    v11 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v18 = v9 - 8;
  if (v9 >= 9 && v8)
  {
    if (v8 >= 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = v8;
    }

    if (v18 >= 8)
    {
      v20 = 8;
    }

    else
    {
      v20 = v9 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + 1, a2, v20, v19, a7);
    v11 += result;
  }

  else
  {
    a4[2] = 0;
    if (v9 < 9)
    {
      goto LABEL_37;
    }
  }

  if (v8 >= 5)
  {
    if (v15 >= 4)
    {
      v21 = 4;
    }

    else
    {
      v21 = v8 - 4;
    }

    if (v18 >= 8)
    {
      v22 = 8;
    }

    else
    {
      v22 = v9 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, (v13 + v14 + 8), a2, v22, v21, a7);
    v11 += result;
    v23 = v8 - 8;
    goto LABEL_38;
  }

LABEL_37:
  a4[3] = 0;
  v23 = v8 - 8;
  if (!v9)
  {
    goto LABEL_46;
  }

LABEL_38:
  if (v8 < 9)
  {
LABEL_46:
    a4[4] = 0;
    v26 = v8 - 12;
    if (!v9)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

  if (v23 >= 4)
  {
    v24 = 4;
  }

  else
  {
    v24 = v23;
  }

  if (v9 >= 8)
  {
    v25 = 8;
  }

  else
  {
    v25 = v9;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, &v13[a2], a2, v25, v24, a7);
  v11 += result;
  v26 = v8 - 12;
LABEL_47:
  if (v8 >= 0xD)
  {
    if (v26 >= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = v26;
    }

    if (v9 >= 8)
    {
      v28 = 8;
    }

    else
    {
      v28 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, (v13 + 12 * a2), a2, v28, v27, a7);
    v11 += result;
    if (v9 < 9)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

LABEL_56:
  a4[5] = 0;
  if (v9 < 9)
  {
    goto LABEL_65;
  }

LABEL_57:
  if (v8 >= 9)
  {
    if (v23 >= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = v23;
    }

    if (v18 >= 8)
    {
      v30 = 8;
    }

    else
    {
      v30 = v9 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, &v13[a2 + 1], a2, v30, v29, a7);
    v11 += result;
    goto LABEL_66;
  }

LABEL_65:
  a4[6] = 0;
  if (v9 < 9)
  {
LABEL_76:
    a4[7] = 0;
    return result;
  }

LABEL_66:
  if (v8 < 0xD)
  {
    goto LABEL_76;
  }

  if (v26 >= 4)
  {
    v31 = 4;
  }

  else
  {
    v31 = v26;
  }

  if (v18 >= 8)
  {
    v32 = 8;
  }

  else
  {
    v32 = v9 - 8;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, (v13 + 12 * a2 + 8), a2, v32, v31, a7);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, int32x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v11 = *(a3 + a4);
  v12 = vzip1_s32(*a3, v11);
  *v17.i8 = vzip2_s32(*a3, v11);
  v13 = (a3 + 2 * a4);
  v14 = *(v13 + a4);
  v15 = *v13;
  *v18.i8 = vzip1_s32(*v13, v14);
  *v19.i8 = vzip2_s32(*v13, v14);
  *v16.i8 = v12;
  v16.u64[1] = v12;
  v17.i64[1] = v17.i64[0];
  v18.i64[1] = v18.i64[0];
  v19.i64[1] = v19.i64[0];
  v20 = vdupq_lane_s8(*a3, 0);
  v21 = vsubq_s8(v16, v20);
  v22 = vsubq_s8(v17, v20);
  v23 = vsubq_s8(v18, v20);
  v14.i8[0] = vmaxvq_s8(v21);
  v15.i8[0] = vminvq_s8(v21);
  v24 = vdupq_lane_s8(v14, 0);
  v25 = vdupq_lane_s8(v15, 0);
  v26 = vsubq_s8(v19, v20);
  v27 = vzip1q_s8(v24, v25);
  v28.i64[0] = 0x808080808080808;
  v28.i64[1] = 0x808080808080808;
  v29 = vbicq_s8(vsubq_s8(v28, vclsq_s8(v27)), vceqzq_s8(v27));
  v30 = vpmaxq_s8(v29, v29);
  v29.i8[0] = vmaxvq_s8(v22);
  v7.i8[0] = vminvq_s8(v22);
  v31 = vdupq_lane_s8(*v29.i8, 0);
  v32 = vdupq_lane_s8(v7, 0);
  v33 = vmaxq_s8(v24, v31);
  v34 = vminq_s8(v25, v32);
  v35 = vzip1q_s8(v31, v32);
  v36 = vbicq_s8(vsubq_s8(v28, vclsq_s8(v35)), vceqzq_s8(v35));
  v37 = vpmaxq_s8(v36, v36);
  v36.i8[0] = vmaxvq_s8(v23);
  v8.i8[0] = vminvq_s8(v23);
  v38 = vdupq_lane_s8(*v36.i8, 0);
  v39 = vdupq_lane_s8(v8, 0);
  v40 = vmaxq_s8(v33, v38);
  v41 = vminq_s8(v34, v39);
  v42 = vzip1q_s8(v38, v39);
  v43 = vbicq_s8(vsubq_s8(v28, vclsq_s8(v42)), vceqzq_s8(v42));
  v44 = vpmaxq_s8(v43, v43);
  v43.i8[0] = vmaxvq_s8(v26);
  v9.i8[0] = vminvq_s8(v26);
  v45 = vdupq_lane_s8(*v43.i8, 0);
  v46 = vdupq_lane_s8(v9, 0);
  v47 = vmaxq_s8(v40, v45);
  v48 = vminq_s8(v41, v46);
  v49 = vzip1q_s8(v45, v46);
  v50 = vbicq_s8(vsubq_s8(v28, vclsq_s8(v49)), vceqzq_s8(v49));
  v51 = vpmaxq_s8(v50, v50);
  v52 = vmaxq_s8(vmaxq_s8(v30, v37), vmaxq_s8(v44, v51));
  v53 = vclzq_s8(vsubq_s8(v47, v48));
  v54 = vsubq_s8(v28, v53);
  v55 = vminq_s8(v54, v52);
  if (vmaxvq_s8(v55))
  {
    v56 = 0;
    v57 = 0;
    v58.i64[0] = -1;
    v58.i64[1] = -1;
    v59.i64[0] = 0x707070707070707;
    v59.i64[1] = 0x707070707070707;
    v60 = vcgtq_s8(v52, v54);
    v61 = vandq_s8(vsubq_s8(vshlq_s8(v58, vsubq_s8(v59, v53)), v48), v60);
    v62.i64[0] = 0x303030303030303;
    v62.i64[1] = 0x303030303030303;
    v63 = vmaxq_s8(vminq_s8(vsubq_s8(v55, v30), v62), 0);
    v64 = vmaxq_s8(vminq_s8(vsubq_s8(v55, v37), v62), 0);
    v65 = vmaxq_s8(vminq_s8(vsubq_s8(v55, v44), v62), 0);
    v66 = vmaxq_s8(vminq_s8(vsubq_s8(v55, v51), v62), 0);
    v67 = vsubq_s8(v55, v63);
    v68 = vsubq_s8(v55, v64);
    v69 = vsubq_s8(v55, v65);
    v70 = vsubq_s8(v55, v66);
    v71 = vceqq_s8(vaddq_s8(v66, v65), vnegq_s8(vaddq_s8(v63, v64)));
    v66.i64[0] = 0x404040404040404;
    v66.i64[1] = 0x404040404040404;
    v72 = vorrq_s8(vbicq_s8(v66, v71), vorrq_s8(vandq_s8(vceqzq_s8(v55), v62), vandq_s8(v60, v28)));
    if (a5 >= 2 && a6 >= 2)
    {
      v366 = v61;
      v73 = v12.u8[1] - v12.u8[0];
      v74 = v73 << 28 >> 28;
      v75 = v12.u8[2] - v12.u8[0];
      v76.i64[0] = 0xFFFF0000FFFF0000;
      v76.i64[1] = 0xFFFF0000FFFF0000;
      v77 = vmlaq_s8(vandq_s8(vdupq_n_s8(v75 << 28 >> 28), v76), vdupq_n_s8(v74), xmmword_29D2F0D60);
      v78 = vsubq_s8(v21, v77);
      v79 = v75 << 28 >> 27;
      v80 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v79), v22), v77);
      v81 = v73 << 28 >> 26;
      v361 = v26;
      v362 = v23;
      v82 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v81), v23), v77);
      v83 = vaddq_s8(vdupq_n_s8(-(v79 + v81)), v26);
      v84 = vsubq_s8(v83, v77);
      v83.i8[0] = vmaxvq_s8(v78);
      v77.i8[0] = vminvq_s8(v78);
      v85 = vdupq_lane_s8(*v83.i8, 0);
      v86 = vdupq_lane_s8(*v77.i8, 0);
      v87 = vzip1q_s8(v85, v86);
      v88.i64[0] = 0x808080808080808;
      v88.i64[1] = 0x808080808080808;
      v89 = v22;
      v90 = v68;
      v91 = v69;
      v92 = vceqzq_s8(v87);
      v93 = vbicq_s8(vsubq_s8(v88, vclsq_s8(v87)), v92);
      v94 = vpmaxq_s8(v93, v93);
      v92.i8[0] = vmaxvq_s8(v80);
      v65.i8[0] = vminvq_s8(v80);
      v95 = vdupq_lane_s8(*v92.i8, 0);
      v96 = vdupq_lane_s8(*v65.i8, 0);
      v97 = vmaxq_s8(v85, v95);
      v98 = vminq_s8(v86, v96);
      v99 = vzip1q_s8(v95, v96);
      v100 = vsubq_s8(v88, vclsq_s8(v99));
      v101 = vbicq_s8(v100, vceqzq_s8(v99));
      v102 = vpmaxq_s8(v101, v101);
      v100.i8[0] = vmaxvq_s8(v82);
      v59.i8[0] = vminvq_s8(v82);
      v103 = vdupq_lane_s8(*v100.i8, 0);
      v104 = vdupq_lane_s8(*v59.i8, 0);
      v105 = vmaxq_s8(v97, v103);
      v106 = vminq_s8(v98, v104);
      v107 = vzip1q_s8(v103, v104);
      v108 = vbicq_s8(vsubq_s8(v88, vclsq_s8(v107)), vceqzq_s8(v107));
      v109 = vpmaxq_s8(v108, v108);
      v108.i8[0] = vmaxvq_s8(v84);
      v10.i8[0] = vminvq_s8(v84);
      v110 = vdupq_lane_s8(*v108.i8, 0);
      v111 = vdupq_lane_s8(v10, 0);
      v112 = vminq_s8(v106, v111);
      v113 = vzip1q_s8(v110, v111);
      v114 = vbicq_s8(vsubq_s8(v88, vclsq_s8(v113)), vceqzq_s8(v113));
      v115 = vpmaxq_s8(v114, v114);
      v116 = vmaxq_s8(vmaxq_s8(v94, v102), vmaxq_s8(v109, v115));
      v117 = vclzq_s8(vsubq_s8(vmaxq_s8(v105, v110), v112));
      v118 = vsubq_s8(v88, v117);
      v119 = vcgtq_s8(v116, v118);
      v120 = vminq_s8(v118, v116);
      v88.i64[0] = 0x202020202020202;
      v88.i64[1] = 0x202020202020202;
      v116.i64[0] = 0xA0A0A0A0A0A0A0ALL;
      v116.i64[1] = 0xA0A0A0A0A0A0A0ALL;
      v121 = vbslq_s8(v119, v116, v88);
      v116.i64[0] = 0x101010101010101;
      v116.i64[1] = 0x101010101010101;
      v122 = v70;
      v123 = vmaxq_s8(v120, v116);
      v124 = vsubq_s8(v123, v94);
      v94.i64[0] = 0x303030303030303;
      v94.i64[1] = 0x303030303030303;
      v125 = vmaxq_s8(vminq_s8(v124, v94), 0);
      v126 = vmaxq_s8(vminq_s8(vsubq_s8(v123, v102), v94), 0);
      v127 = vmaxq_s8(vminq_s8(vsubq_s8(v123, v109), v94), 0);
      v128 = vmaxq_s8(vminq_s8(vsubq_s8(v123, v115), v94), 0);
      v129 = vsubq_s8(v123, v125);
      v130 = vsubq_s8(v123, v126);
      v131 = vsubq_s8(v123, v127);
      v132 = vsubq_s8(v123, v128);
      v133 = vceqq_s8(vaddq_s8(v128, v127), vnegq_s8(vaddq_s8(v125, v126)));
      v127.i64[0] = 0x404040404040404;
      v127.i64[1] = 0x404040404040404;
      v134 = vorrq_s8(vbicq_s8(v127, v133), v121);
      v135.i64[0] = 0x8000800080008;
      v135.i64[1] = 0x8000800080008;
      v367 = vshll_n_s8(vadd_s8(vadd_s8(*v91.i8, *v90.i8), *v122.i8), 3uLL);
      v94.i64[0] = 0x2000200020002;
      v94.i64[1] = 0x2000200020002;
      v136 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddw_s8(vmlal_s8(v367, *v67.i8, 0x707070707070707), vbic_s8(*v55.i8, vcgt_u8(0x808080808080808, *v72.i8))), (*&vshll_n_u8(*v72.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9))), vandq_s8(vceqq_s16((*&vmovl_u8(*v72.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v94), v135)), vaddq_s16(vaddw_u8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v131.i8, *v130.i8), *v132.i8), 3uLL), *v129.i8, 0x707070707070707), vand_s8(vadd_s8(*v134.i8, *v134.i8), 0x808080808080808)), vbic_s8(*v123.i8, vcgt_u8(0x808080808080808, *v134.i8))), v135))), 0);
      v127.i16[0] = vaddlvq_s8(v136);
      v137 = v74 & 0xF | (16 * v75);
      v138 = v127.u16[0];
      if (v127.i16[0])
      {
        v139.i64[0] = 0x707070707070707;
        v139.i64[1] = 0x707070707070707;
        v140.i64[0] = -1;
        v140.i64[1] = -1;
        v363 = vbslq_s8(v136, v78, v21);
        v364 = vbslq_s8(v136, v80, v89);
        v23 = vbslq_s8(v136, v82, v362);
        v26 = vbslq_s8(v136, v84, v361);
        v67 = vbslq_s8(v136, v129, v67);
        v90 = vbslq_s8(v136, v130, v90);
        v122 = vbslq_s8(v136, v132, v122);
        v61 = vbslq_s8(v136, vandq_s8(vsubq_s8(vshlq_s8(v140, vsubq_s8(v139, v117)), v112), v119), v366);
        v55 = vbslq_s8(v136, v123, v55);
        v72 = vbslq_s8(v136, v134, v72);
        v141 = vmull_s8(*v67.i8, 0x707070707070707);
        v365 = vbslq_s8(v136, v131, v91);
        v367 = vshll_n_s8(vadd_s8(vadd_s8(*v365.i8, *v90.i8), *v122.i8), 3uLL);
      }

      else
      {
        v363 = v21;
        v364 = v89;
        v365 = v91;
        v141 = vmull_s8(*v67.i8, 0x707070707070707);
        v26 = v361;
        v23 = v362;
        v61 = v366;
      }

      v70 = v122;
      v68 = v90;
      v57 = v137;
      v143 = vsubq_s8(v16, vqtbl1q_s8(v16, xmmword_29D2F0DF0));
      v144 = v17;
      v144.i8[7] = v16.i8[7];
      v145 = vsubq_s8(v17, vqtbl1q_s8(v144, xmmword_29D2F0E00));
      v146 = v18;
      v146.i8[7] = v16.i8[7];
      v147 = vsubq_s8(v18, vqtbl1q_s8(v146, xmmword_29D2F0E10));
      v148 = v19;
      v148.i8[7] = v16.i8[7];
      v149 = vqtbl1q_s8(v148, xmmword_29D2F0E20);
      v150 = vsubq_s8(v19, v149);
      v151 = v143;
      v151.i8[0] = v143.i8[7];
      v151.i8[7] = v143.i8[0];
      v143.i8[0] = vmaxvq_s8(v151);
      v149.i8[0] = vminvq_s8(v151);
      v152 = vdupq_lane_s8(*v143.i8, 0);
      v153 = vdupq_lane_s8(*v149.i8, 0);
      v154 = vzip1q_s8(v152, v153);
      v155.i64[0] = 0x808080808080808;
      v155.i64[1] = 0x808080808080808;
      v156 = vbicq_s8(vsubq_s8(v155, vclsq_s8(v154)), vceqzq_s8(v154));
      v157 = vpmaxq_s8(v156, v156);
      v156.i8[0] = vmaxvq_s8(v145);
      v131.i8[0] = vminvq_s8(v145);
      v158 = vdupq_lane_s8(*v156.i8, 0);
      v159 = vdupq_lane_s8(*v131.i8, 0);
      v160 = vmaxq_s8(v152, v158);
      v161 = vminq_s8(v153, v159);
      v162 = vzip1q_s8(v158, v159);
      v163 = vsubq_s8(v155, vclsq_s8(v162));
      v164 = vbicq_s8(v163, vceqzq_s8(v162));
      v165 = vpmaxq_s8(v164, v164);
      v164.i8[0] = vmaxvq_s8(v147);
      v163.i8[0] = vminvq_s8(v147);
      v166 = vdupq_lane_s8(*v164.i8, 0);
      v167 = vdupq_lane_s8(*v163.i8, 0);
      v168 = vmaxq_s8(v160, v166);
      v169 = vminq_s8(v161, v167);
      v170 = vzip1q_s8(v166, v167);
      v171 = vsubq_s8(v155, vclsq_s8(v170));
      v172 = vbicq_s8(v171, vceqzq_s8(v170));
      v173 = vpmaxq_s8(v172, v172);
      v172.i8[0] = vmaxvq_s8(v150);
      v171.i8[0] = vminvq_s8(v150);
      v174 = vdupq_lane_s8(*v172.i8, 0);
      v175 = vdupq_lane_s8(*v171.i8, 0);
      v176 = vminq_s8(v169, v175);
      v177 = vzip1q_s8(v174, v175);
      v178 = vbicq_s8(vsubq_s8(v155, vclsq_s8(v177)), vceqzq_s8(v177));
      v179 = vpmaxq_s8(v178, v178);
      v180 = vmaxq_s8(vmaxq_s8(v157, v165), vmaxq_s8(v173, v179));
      v181 = vclzq_s8(vsubq_s8(vmaxq_s8(v168, v174), v176));
      v182 = vsubq_s8(v155, v181);
      v183 = vcgtq_s8(v180, v182);
      v184 = vminq_s8(v182, v180);
      v182.i64[0] = 0x909090909090909;
      v182.i64[1] = 0x909090909090909;
      v185.i64[0] = 0x202020202020202;
      v185.i64[1] = 0x202020202020202;
      v186 = vorrq_s8(vandq_s8(vceqzq_s8(v184), v185), vsubq_s8(vandq_s8(v183, v182), vmvnq_s8(v183)));
      v185.i64[0] = 0x303030303030303;
      v185.i64[1] = 0x303030303030303;
      v187 = vmaxq_s8(vminq_s8(vsubq_s8(v184, v157), v185), 0);
      v188 = vmaxq_s8(vminq_s8(vsubq_s8(v184, v165), v185), 0);
      v189 = vmaxq_s8(vminq_s8(vsubq_s8(v184, v173), v185), 0);
      v190 = vmaxq_s8(vminq_s8(vsubq_s8(v184, v179), v185), 0);
      v191 = vsubq_s8(v184, v187);
      v192 = vsubq_s8(v184, v188);
      v193 = vsubq_s8(v184, v189);
      v194 = vsubq_s8(v184, v190);
      v185.i64[0] = 0x404040404040404;
      v185.i64[1] = 0x404040404040404;
      v195 = vorrq_s8(v186, vbicq_s8(v185, vceqq_s8(vaddq_s8(v190, v189), vnegq_s8(vaddq_s8(v187, v188)))));
      v189.i64[0] = 0x3000300030003;
      v189.i64[1] = 0x3000300030003;
      v196 = vmovl_s8(*v72.i8);
      v185.i64[0] = 0x8000800080008;
      v185.i64[1] = 0x8000800080008;
      v155.i64[0] = 0x2000200020002;
      v155.i64[1] = 0x2000200020002;
      v197 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v55.i8), vceqzq_s16(vandq_s8(v196, v185))), vandq_s8(vshll_n_s8(*v72.i8, 1uLL), v185)), vaddq_s16(vandq_s8(vceqq_s16(vandq_s8(v196, v189), v155), v185), v141)), v367), vaddw_s8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v193.i8, *v192.i8), *v194.i8), 3uLL), *v191.i8, 0x707070707070707), vand_s8(vadd_s8(*v195.i8, *v195.i8), 0x808080808080808)), vbic_s8(*v184.i8, vcgt_u8(0x808080808080808, *v195.i8))))), 0);
      v186.i16[0] = vaddlvq_s8(v197);
      v198 = v186.u16[0];
      if (v186.i16[0])
      {
        v199.i64[0] = 0x707070707070707;
        v199.i64[1] = 0x707070707070707;
        v200.i64[0] = -1;
        v200.i64[1] = -1;
        v201 = vandq_s8(vsubq_s8(vshlq_s8(v200, vsubq_s8(v199, v181)), v176), v183);
        v20.i8[0] = vbslq_s8(v197, vextq_s8(v16, v16, 0xFuLL), v20).u8[0];
        v21 = vbslq_s8(v197, v151, v363);
        v22 = vbslq_s8(v197, v145, v364);
        v23 = vbslq_s8(v197, v147, v23);
        v26 = vbslq_s8(v197, v150, v26);
        v67 = vbslq_s8(v197, v191, v67);
        v68 = vbslq_s8(v197, v192, v68);
        v69 = vbslq_s8(v197, v193, v365);
        v70 = vbslq_s8(v197, v194, v70);
        v61 = vbslq_s8(v197, v201, v61);
        v55 = vbslq_s8(v197, v184, v55);
        v72 = vbslq_s8(v197, v195, v72);
      }

      else
      {
        v22 = v364;
        v69 = v365;
        v21 = v363;
      }

      if (v138)
      {
        v202 = v198 == 0;
      }

      else
      {
        v202 = 0;
      }

      v56 = v202;
    }

    v203 = vmovl_s8(*v72.i8);
    v204.i64[0] = 0x8000800080008;
    v204.i64[1] = 0x8000800080008;
    v205.i64[0] = 0x3000300030003;
    v205.i64[1] = 0x3000300030003;
    v206.i64[0] = 0x2000200020002;
    v206.i64[1] = 0x2000200020002;
    if (((7 * v67.i8[0] + 8 * vaddq_s8(vaddq_s8(v69, v68), v70).i8[0] + ((2 * v203.i16[0]) & 8) + vbicq_s8(vmovl_s8(*v55.i8), vceqzq_s16(vandq_s8(v203, v204))).u16[0] + vandq_s8(vceqq_s16(vandq_s8(v203, v205), v206), v204).u16[0]) - 117) <= 0xFFFFFFFFFFFFFF77)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 16;
    }

    else
    {
      v207 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v208 = 8 * (a1 & 7);
      if (v208)
      {
        v209 = *v207 & ~(-1 << v208);
      }

      else
      {
        v209 = 0;
      }

      v210 = vextq_s8(v67, 0, 8uLL);
      v211 = vextq_s8(v68, 0, 8uLL);
      v212 = vextq_s8(v69, 0, 8uLL);
      v213 = vextq_s8(v70, 0, 8uLL);
      if (v55.i8[0])
      {
        v214 = (16 * v55.i8[0] + 112) & 0x70;
      }

      else
      {
        v214 = 0;
      }

      *a2 = 32 * v72.i8[0];
      v215 = (v72.i8[0] & 8 | v214 & 0xFFFF807F | (v20.u8[0] << 7)) >> 3;
      v216 = (v215 << v208) | v209;
      if (v208 >= 0x34)
      {
        *v207 = v216;
        v216 = v215 >> (-8 * (a1 & 7u));
      }

      v217 = v208 + 12;
      v218.i64[0] = 0x202020202020202;
      v218.i64[1] = 0x202020202020202;
      v219 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*&vmovl_u8(*v72.i8), 0x4000400040004)))), v218);
      v218.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v218.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v220.i64[0] = -1;
      v220.i64[1] = -1;
      v221 = vandq_s8(vshlq_u8(v220, vorrq_s8(v219, v218)), vzip1q_s16(vzip1q_s8(vsubq_s8(v55, v210), vsubq_s8(v55, v211)), vzip1q_s8(vsubq_s8(v55, v212), vsubq_s8(v55, v213))).u32[0]);
      v222 = vmovl_u8(*v219.i8);
      v223 = vpaddq_s16(vshlq_u16(vmovl_u8(*v221.i8), vtrn1q_s16(0, v222)), vmovl_high_u8(v221));
      v224 = vpaddq_s16(v222, vmovl_high_u8(v219));
      v225 = vmovl_u16(*v224.i8);
      v226 = vmovl_high_u16(v224);
      v227 = vpaddq_s32(vshlq_u32(vmovl_u16(*v223.i8), vtrn1q_s32(0, v225)), vshlq_u32(vmovl_high_u16(v223), vtrn1q_s32(0, v226)));
      v228 = vpaddq_s32(v225, v226);
      v229.i64[0] = v227.u32[0];
      v229.i64[1] = v227.u32[1];
      v230 = v229;
      v229.i64[0] = v227.u32[2];
      v229.i64[1] = v227.u32[3];
      v231 = v229;
      v229.i64[0] = v228.u32[0];
      v229.i64[1] = v228.u32[1];
      v232 = v229;
      v229.i64[0] = v228.u32[2];
      v229.i64[1] = v228.u32[3];
      v233 = vpaddq_s64(vshlq_u64(v230, vzip1q_s64(0, v232)), vshlq_u64(v231, vzip1q_s64(0, v229)));
      v234 = vpaddq_s64(v232, v229);
      v235 = (v208 + 12) & 0x3C;
      v236 = (v233.i64[0] << v235) | v216;
      if ((v234.i64[0] + v235) >= 0x40)
      {
        *(v207 + ((v217 >> 3) & 8)) = v236;
        v236 = v233.i64[0] >> -v235;
      }

      v237 = v234.i64[0] + v217;
      v238 = (v234.i64[0] + v217) & 0x3F;
      v239 = v236 | (v233.i64[1] << (v234.i8[0] + v217));
      if ((v238 + v234.i64[1]) >= 0x40)
      {
        *(v207 + ((v237 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v239;
        v239 = v233.i64[1] >> -v238;
        if (!v238)
        {
          v239 = 0;
        }
      }

      v240 = vceqq_s8(v55, v67);
      v241 = v237 + v234.i64[1];
      v242.i64[0] = 0x808080808080808;
      v242.i64[1] = 0x808080808080808;
      v243.i64[0] = -1;
      v243.i64[1] = -1;
      v244 = vandq_s8(vextq_s8(vtstq_s8(v72, v242), 0, 0xFuLL), v55);
      v245.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v245.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v246 = vandq_s8(vshlq_u8(v243, vaddq_s8(v244, v245)), v61);
      v247 = vmovl_u8(*v244.i8);
      v248 = vpaddq_s16(vshlq_u16(vmovl_u8(*v246.i8), vtrn1q_s16(0, v247)), vmovl_high_u8(v246));
      v249 = vpaddq_s16(v247, vmovl_high_u8(v244));
      v250 = vmovl_u16(*v249.i8);
      v251 = vmovl_high_u16(v249);
      v252 = vpaddq_s32(vshlq_u32(vmovl_u16(*v248.i8), vtrn1q_s32(0, v250)), vshlq_u32(vmovl_high_u16(v248), vtrn1q_s32(0, v251)));
      v253 = vpaddq_s32(v250, v251);
      v254.i64[0] = v252.u32[0];
      v254.i64[1] = v252.u32[1];
      v255 = v254;
      v254.i64[0] = v252.u32[2];
      v254.i64[1] = v252.u32[3];
      v256 = v254;
      v254.i64[0] = v253.u32[0];
      v254.i64[1] = v253.u32[1];
      v257 = v254;
      v254.i64[0] = v253.u32[2];
      v254.i64[1] = v253.u32[3];
      v258 = vpaddq_s64(vshlq_u64(v255, vzip1q_s64(0, v257)), vshlq_u64(v256, vzip1q_s64(0, v254)));
      v259 = vpaddq_s64(v257, v254);
      v260 = (v237 + v234.i64[1]) & 0x3F;
      v261 = (v258.i64[0] << (v237 + v234.i8[8])) | v239;
      if ((v259.i64[0] + v260) >= 0x40)
      {
        *(v207 + ((v241 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v261;
        v261 = v258.i64[0] >> -v260;
        if (!v260)
        {
          v261 = 0;
        }
      }

      v262 = vandq_s8(v61, v240);
      v263 = v259.i64[0] + v241;
      v264 = v261 | (v258.i64[1] << v263);
      if ((v263 & 0x3F) + v259.i64[1] >= 0x40)
      {
        *(v207 + ((v263 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v264;
        v264 = v258.i64[1] >> -(v263 & 0x3F);
        if ((v263 & 0x3F) == 0)
        {
          v264 = 0;
        }
      }

      v265 = vceqq_s8(v55, v68);
      v266 = vaddq_s8(v262, v21);
      v267 = v263 + v259.i64[1];
      if (v56)
      {
        v264 |= v57 << v267;
        if ((v267 & 0x3F) >= 0x38)
        {
          *(v207 + ((v267 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v264;
          v264 = v57 >> -(v267 & 0x3F);
        }

        v267 += 8;
      }

      v268 = vandq_s8(v61, v265);
      v269 = vmovl_high_u8(v210);
      v210.i8[0] = 0;
      v270.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v270.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v271.i64[0] = -1;
      v271.i64[1] = -1;
      v272 = vandq_s8(vshlq_u8(v271, vaddq_s8(v210, v270)), v266);
      v273 = vmovl_u8(*v210.i8);
      v274 = vpaddq_s16(vshlq_u16(vmovl_u8(*v272.i8), vtrn1q_s16(0, v273)), vshlq_u16(vmovl_high_u8(v272), vtrn1q_s16(0, v269)));
      v275 = vpaddq_s16(v273, v269);
      v276 = vmovl_u16(*v275.i8);
      v277 = vmovl_high_u16(v275);
      v278 = vpaddq_s32(vshlq_u32(vmovl_u16(*v274.i8), vtrn1q_s32(0, v276)), vshlq_u32(vmovl_high_u16(v274), vtrn1q_s32(0, v277)));
      v279 = vpaddq_s32(v276, v277);
      v280.i64[0] = v278.u32[0];
      v280.i64[1] = v278.u32[1];
      v281 = v280;
      v280.i64[0] = v278.u32[2];
      v280.i64[1] = v278.u32[3];
      v282 = v280;
      v280.i64[0] = v279.u32[0];
      v280.i64[1] = v279.u32[1];
      v283 = v280;
      v280.i64[0] = v279.u32[2];
      v280.i64[1] = v279.u32[3];
      v284 = vpaddq_s64(vshlq_u64(v281, vzip1q_s64(0, v283)), vshlq_u64(v282, vzip1q_s64(0, v280)));
      v285 = vpaddq_s64(v283, v280);
      v286 = (v284.i64[0] << v267) | v264;
      if (v285.i64[0] + (v267 & 0x3F) >= 0x40)
      {
        *(v207 + ((v267 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v286;
        v286 = v284.i64[0] >> -(v267 & 0x3F);
        if ((v267 & 0x3F) == 0)
        {
          v286 = 0;
        }
      }

      v287 = vceqq_s8(v55, v69);
      v288 = vaddq_s8(v22, v268);
      v289 = v285.i64[0] + v267;
      v290 = (v285.i64[0] + v267) & 0x3F;
      v291 = v286 | (v284.i64[1] << v289);
      if ((v289 & 0x3F) + v285.i64[1] >= 0x40)
      {
        *(v207 + ((v289 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v291;
        v291 = v284.i64[1] >> -v290;
        if (!v290)
        {
          v291 = 0;
        }
      }

      v292 = vandq_s8(v61, v287);
      v293 = v289 + v285.i64[1];
      v294.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v294.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v295.i64[0] = -1;
      v295.i64[1] = -1;
      v296 = vandq_s8(vshlq_u8(v295, vaddq_s8(v211, v294)), v288);
      v297 = vmovl_u8(*v211.i8);
      v298 = vmovl_high_u8(v211);
      v299 = vpaddq_s16(vshlq_u16(vmovl_u8(*v296.i8), vtrn1q_s16(0, v297)), vshlq_u16(vmovl_high_u8(v296), vtrn1q_s16(0, v298)));
      v300 = vpaddq_s16(v297, v298);
      v301 = vmovl_u16(*v300.i8);
      v302 = vmovl_high_u16(v300);
      v303 = vpaddq_s32(vshlq_u32(vmovl_u16(*v299.i8), vtrn1q_s32(0, v301)), vshlq_u32(vmovl_high_u16(v299), vtrn1q_s32(0, v302)));
      v304 = vpaddq_s32(v301, v302);
      v305.i64[0] = v303.u32[0];
      v305.i64[1] = v303.u32[1];
      v306 = v305;
      v305.i64[0] = v303.u32[2];
      v305.i64[1] = v303.u32[3];
      v307 = v305;
      v305.i64[0] = v304.u32[0];
      v305.i64[1] = v304.u32[1];
      v308 = v305;
      v305.i64[0] = v304.u32[2];
      v305.i64[1] = v304.u32[3];
      v309 = vpaddq_s64(vshlq_u64(v306, vzip1q_s64(0, v308)), vshlq_u64(v307, vzip1q_s64(0, v305)));
      v310 = vpaddq_s64(v308, v305);
      v311 = (v309.i64[0] << v293) | v291;
      if (v310.i64[0] + (v293 & 0x3F) >= 0x40)
      {
        *(v207 + ((v293 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v311;
        v311 = v309.i64[0] >> -(v293 & 0x3F);
        if ((v293 & 0x3F) == 0)
        {
          v311 = 0;
        }
      }

      v312 = vceqq_s8(v55, v70);
      v313 = vaddq_s8(v23, v292);
      v314 = v310.i64[0] + v293;
      v315 = v311 | (v309.i64[1] << v314);
      if ((v314 & 0x3F) + v310.i64[1] >= 0x40)
      {
        *(v207 + ((v314 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v315;
        v315 = v309.i64[1] >> -(v314 & 0x3F);
        if ((v314 & 0x3F) == 0)
        {
          v315 = 0;
        }
      }

      v316 = vandq_s8(v61, v312);
      v317 = v314 + v310.i64[1];
      v318.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v318.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v319.i64[0] = -1;
      v319.i64[1] = -1;
      v320 = vandq_s8(vshlq_u8(v319, vaddq_s8(v212, v318)), v313);
      v321 = vmovl_u8(*v212.i8);
      v322 = vmovl_high_u8(v212);
      v323 = vpaddq_s16(vshlq_u16(vmovl_u8(*v320.i8), vtrn1q_s16(0, v321)), vshlq_u16(vmovl_high_u8(v320), vtrn1q_s16(0, v322)));
      v324 = vpaddq_s16(v321, v322);
      v325 = vmovl_u16(*v324.i8);
      v326 = vmovl_high_u16(v324);
      v327 = vpaddq_s32(vshlq_u32(vmovl_u16(*v323.i8), vtrn1q_s32(0, v325)), vshlq_u32(vmovl_high_u16(v323), vtrn1q_s32(0, v326)));
      v328 = vpaddq_s32(v325, v326);
      v329.i64[0] = v327.u32[0];
      v329.i64[1] = v327.u32[1];
      v330 = v329;
      v329.i64[0] = v327.u32[2];
      v329.i64[1] = v327.u32[3];
      v331 = v329;
      v329.i64[0] = v328.u32[0];
      v329.i64[1] = v328.u32[1];
      v332 = v329;
      v329.i64[0] = v328.u32[2];
      v329.i64[1] = v328.u32[3];
      v333 = vpaddq_s64(vshlq_u64(v330, vzip1q_s64(0, v332)), vshlq_u64(v331, vzip1q_s64(0, v329)));
      v334 = vpaddq_s64(v332, v329);
      v335 = (v333.i64[0] << v317) | v315;
      if (v334.i64[0] + (v317 & 0x3F) >= 0x40)
      {
        *(v207 + ((v317 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v335;
        v335 = v333.i64[0] >> -(v317 & 0x3F);
        if ((v317 & 0x3F) == 0)
        {
          v335 = 0;
        }
      }

      v336 = vaddq_s8(v26, v316);
      v337 = v334.i64[0] + v317;
      v338 = v335 | (v333.i64[1] << v337);
      if ((v337 & 0x3F) + v334.i64[1] >= 0x40)
      {
        *(v207 + ((v337 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v338;
        v338 = v333.i64[1] >> -(v337 & 0x3F);
        if ((v337 & 0x3F) == 0)
        {
          v338 = 0;
        }
      }

      v339 = v337 + v334.i64[1];
      v340.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v340.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v341.i64[0] = -1;
      v341.i64[1] = -1;
      v342 = vandq_s8(vshlq_u8(v341, vaddq_s8(v213, v340)), v336);
      v343 = vmovl_u8(*v213.i8);
      v344 = vmovl_high_u8(v213);
      v345 = vpaddq_s16(vshlq_u16(vmovl_u8(*v342.i8), vtrn1q_s16(0, v343)), vshlq_u16(vmovl_high_u8(v342), vtrn1q_s16(0, v344)));
      v346 = vpaddq_s16(v343, v344);
      v347 = vmovl_u16(*v346.i8);
      v348 = vmovl_high_u16(v346);
      v349 = vpaddq_s32(vshlq_u32(vmovl_u16(*v345.i8), vtrn1q_s32(0, v347)), vshlq_u32(vmovl_high_u16(v345), vtrn1q_s32(0, v348)));
      v350 = vpaddq_s32(v347, v348);
      v351.i64[0] = v349.u32[0];
      v351.i64[1] = v349.u32[1];
      v352 = v351;
      v351.i64[0] = v349.u32[2];
      v351.i64[1] = v349.u32[3];
      v353 = v351;
      v351.i64[0] = v350.u32[0];
      v351.i64[1] = v350.u32[1];
      v354 = v351;
      v351.i64[0] = v350.u32[2];
      v351.i64[1] = v350.u32[3];
      v355 = vpaddq_s64(vshlq_u64(v352, vzip1q_s64(0, v354)), vshlq_u64(v353, vzip1q_s64(0, v351)));
      v356 = vpaddq_s64(v354, v351);
      v357 = (v355.i64[0] << v339) | v338;
      if (v356.i64[0] + (v339 & 0x3F) > 0x3F)
      {
        *(v207 + ((v339 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v357;
        if ((v339 & 0x3F) != 0)
        {
          v357 = v355.i64[0] >> -(v339 & 0x3F);
        }

        else
        {
          v357 = 0;
        }
      }

      v358 = v356.i64[0] + v339;
      v359 = v357 | (v355.i64[1] << v358);
      if ((v358 & 0x3F) + v356.i64[1] >= 0x40)
      {
        *(v207 + ((v358 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v359;
        v359 = v355.i64[1] >> -(v358 & 0x3F);
        if ((v358 & 0x3F) == 0)
        {
          v359 = 0;
        }
      }

      v360 = v358 + v356.i64[1];
      if ((v360 & 0x3F) != 0)
      {
        *(v207 + ((v360 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v359;
      }

      result = (v360 - v208 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = a3->i8[0];
    *a2 = 96;
    return 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v58 = *MEMORY[0x29EDCA608];
  v10.i64[1] = 0;
  v56 = 0u;
  v57 = 0u;
  if (a6 && a5)
  {
    if (a5 > 3)
    {
      v16 = a5 & 0x7C;
      if (v16 == a5)
      {
        for (i = 0; i != a6; ++i)
        {
          v18 = &v56 + 8 * (i & 0x7F) + 4;
          v19 = a3;
          v20 = a5;
          do
          {
            v21 = *v19++;
            v10.i64[0] = v21;
            LODWORD(v22) = vmovn_s16(v10).u32[0];
            v10 = vrev16q_s8(v10);
            HIDWORD(v22) = vmovn_s16(v10).u32[0];
            *(v18 - 4) = v22;
            v18 += 4;
            v20 -= 4;
          }

          while (v20);
          a3 += a4;
        }
      }

      else
      {
        v23 = 0;
        v24 = a5 - 4;
        v25 = a3;
        do
        {
          v26 = 8 * (v23 & 0x7F);
          v27 = &v56 + v26 + 8;
          v28 = &v56 + v26 + 4;
          v29 = v25;
          v30 = a5 & 0x7C;
          do
          {
            v31 = *v29++;
            v10.i64[0] = v31;
            LODWORD(v32) = vmovn_s16(v10).u32[0];
            v10 = vrev16q_s8(v10);
            HIDWORD(v32) = vmovn_s16(v10).u32[0];
            *(v28 - 4) = v32;
            v28 += 4;
            v30 -= 4;
          }

          while (v30);
          v33 = (a3 + v23 * a4 + 2 * v16);
          v34 = v24;
          do
          {
            *(v27 - 4) = *v33;
            *v27++ = v33[1];
            v33 += 2;
            --v34;
          }

          while (v34);
          ++v23;
          v25 = (v25 + a4);
        }

        while (v23 != a6);
      }
    }

    else
    {
      v11 = 0;
      v12 = (a3 + 2);
      do
      {
        *(&v56 + 4 * (v11 & 0xFE)) = *(v12 - 2);
        v13 = v11 & 0xFE | 1;
        *(&v56 + 4 * v13) = *(v12 - 1);
        if (a5 != 1)
        {
          v14 = &v56 + 4 * (v11 & 0xFE);
          v14[1] = *v12;
          v15 = &v56 + 4 * v13;
          v15[1] = v12[1];
          if (a5 != 2)
          {
            v14[2] = v12[2];
            v15[2] = v12[3];
          }
        }

        v11 += 2;
        v12 += a4;
      }

      while (2 * a6 != v11);
    }
  }

  v35 = 2 * (a5 & 0x7F);
  v51.i32[0] = v56;
  v51.i32[1] = BYTE4(v56);
  v51.i32[2] = BYTE1(v56);
  v51.i32[3] = BYTE5(v56);
  v52 = BYTE8(v56);
  v53 = BYTE12(v56);
  if (v35 >= 4)
  {
    v36 = 4;
  }

  else
  {
    v36 = 2 * (a5 & 0x7F);
  }

  if (v35 >= 4)
  {
    v37 = v35 - 4;
  }

  else
  {
    v37 = 0;
  }

  v54 = BYTE9(v56);
  v55 = BYTE13(v56);
  if (a6 >= 2)
  {
    v38 = 2;
  }

  else
  {
    v38 = a6;
  }

  if (a6 >= 2)
  {
    v39 = a6 - 2;
  }

  else
  {
    v39 = 0;
  }

  v41 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v51, a7, v36, v38);
  v51.i32[0] = BYTE2(v56);
  v51.i32[1] = BYTE6(v56);
  v51.i32[2] = BYTE3(v56);
  v51.i32[3] = BYTE7(v56);
  v52 = BYTE10(v56);
  v53 = BYTE14(v56);
  v54 = BYTE11(v56);
  v55 = HIBYTE(v56);
  if (a6 >= 4)
  {
    v42 = 2;
  }

  else
  {
    v42 = v39;
  }

  v43 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 4, &v51, a7, v36, v42);
  v51.i32[0] = v57;
  v51.i32[1] = BYTE4(v57);
  v51.i32[2] = BYTE1(v57);
  v51.i32[3] = BYTE5(v57);
  v52 = BYTE8(v57);
  v53 = BYTE12(v57);
  if (a5 >= 4)
  {
    v44 = 4;
  }

  else
  {
    v44 = v37;
  }

  v54 = BYTE9(v57);
  v55 = BYTE13(v57);
  v45 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 8, &v51, a7, v44, v38);
  v51.i32[0] = BYTE2(v57);
  v51.i32[1] = BYTE6(v57);
  v51.i32[2] = BYTE3(v57);
  v51.i32[3] = BYTE7(v57);
  v52 = BYTE10(v57);
  v53 = BYTE14(v57);
  v54 = BYTE11(v57);
  v55 = HIBYTE(v57);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 12, &v51, a7, v44, v42);
  if (v45)
  {
    v47 = 4;
  }

  else
  {
    v47 = 0;
  }

  if (v43)
  {
    v48 = 2;
  }

  else
  {
    v48 = 0;
  }

  if (result)
  {
    v49 = -8;
  }

  else
  {
    v49 = -16;
  }

  *a2 = v49 | v47 | v41 | v48;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(int32x2_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, double a5, int8x8_t a6)
{
  v10 = 8 * (a3 & 7);
  v11 = a3 & 0xFFFFFFFFFFFFFFF8;
  v12 = v10 + 12;
  v13 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v10;
  if (v10 >= 0x35)
  {
    v13 |= *(v11 + 8) << (-8 * (a3 & 7u));
  }

  v14 = (8 * (a3 & 7)) | 0x80;
  v15 = (a4 >> 5) | (8 * v13);
  v16 = vdupq_n_s8(v15 & 0xF);
  v17.i64[0] = 0x303030303030303;
  v17.i64[1] = 0x303030303030303;
  a6.i32[0] = v15 & 0xF;
  v18 = vand_s8(a6, 0x4000400040004);
  v19 = vandq_s8(v16, v17);
  v20 = vbicq_s8(vdupq_n_s8(((v13 >> 1) & 7) + 1), vceqq_s8(v19, v17));
  v17.i64[0] = 0x202020202020202;
  v17.i64[1] = 0x202020202020202;
  v21 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(v18, 0)))), v17);
  if (vmaxvq_s8(v21) < 1)
  {
    v29 = 0;
    v52.i64[0] = -1;
    v52.i64[1] = -1;
    v48 = v20;
    v47 = v20;
    v46 = v20;
    v51.i64[0] = -1;
    v51.i64[1] = -1;
    v45 = v20;
    v50.i64[0] = -1;
    v50.i64[1] = -1;
    v49.i64[0] = -1;
    v49.i64[1] = -1;
  }

  else
  {
    v22 = vmovl_u8(*&vpaddq_s8(v21, v21));
    v23 = vmovl_u16(*&vpaddq_s16(v22, v22));
    v24 = vpaddq_s32(v23, v23).u64[0];
    v25.i64[0] = v24;
    v25.i64[1] = HIDWORD(v24);
    v26 = v25;
    v27 = vaddvq_s64(v25);
    v28 = v27 <= 0x80 && v14 >= v27 + v12;
    v29 = !v28;
    v30 = 0uLL;
    if (v28)
    {
      v31 = vaddq_s64(vzip1q_s64(0, v26), vdupq_n_s64(v12 & 0x3C));
      v32 = (v11 + ((v12 >> 3) & 8));
      v30 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v32, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v31)), vshlq_u64(vdupq_lane_s64(v32->i64[0], 0), vnegq_s64(v31)));
      if (v27 + (v12 & 0x3C) >= 0x81)
      {
        v30 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v32[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v31)), vshlq_u64(vdupq_laneq_s64(v32[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v31))), v30);
      }

      v12 += v27;
    }

    v33 = vzip1_s32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
    v34.i64[0] = v33.u32[0];
    v34.i64[1] = v33.u32[1];
    v35 = vshlq_u64(v30, vnegq_s64(v34));
    v36 = vuzp1q_s32(vzip1q_s64(v30, v35), vzip2q_s64(v30, v35));
    v37 = vshlq_u32(v36, vnegq_s32((*&v22 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v38 = vuzp1q_s16(vzip1q_s32(v36, v37), vzip2q_s32(v36, v37));
    v39 = vzip1q_s16(v38, vshlq_u16(v38, vnegq_s16(vmovl_u8(vuzp1_s8(*v21.i8, *v16.i8)))));
    *v39.i8 = vmovn_s16(v39);
    v36.i64[0] = 0x101010101010101;
    v36.i64[1] = 0x101010101010101;
    v40 = vshlq_s8(v36, v21);
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    v40.i64[0] = vandq_s8(vaddq_s8(v40, v36), v39).u64[0];
    v41 = vdupq_lane_s8(*v40.i8, 0);
    v42 = vdupq_lane_s8(*v40.i8, 1);
    v43 = vdupq_lane_s8(*v40.i8, 2);
    v44 = vdupq_lane_s8(*v40.i8, 3);
    v45 = vsubq_s8(v20, v41);
    v46 = vsubq_s8(v20, v42);
    v47 = vsubq_s8(v20, v43);
    v48 = vsubq_s8(v20, v44);
    v49 = vceqzq_s8(v41);
    v50 = vceqzq_s8(v42);
    v51 = vceqzq_s8(v43);
    v52 = vceqzq_s8(v44);
  }

  v53.i64[0] = 0x707070707070707;
  v53.i64[1] = 0x707070707070707;
  v54 = 0uLL;
  v55 = vandq_s8(vextq_s8(vcgtq_u8(v16, v53), 0, 0xFuLL), v20);
  v56 = vmovl_u8(*&vpaddq_s8(v55, v55));
  v57 = vmovl_u16(*&vpaddq_s16(v56, v56));
  v58 = vpaddq_s32(v57, v57).u64[0];
  v59.i64[0] = v58;
  v59.i64[1] = HIDWORD(v58);
  v60 = v59;
  v61 = vaddvq_s64(v59);
  v62 = v61 + v12;
  if (v61 <= 0x80 && v14 >= v62)
  {
    v64 = v12 & 0x3F;
    v65 = vaddq_s64(vzip1q_s64(0, v60), vdupq_n_s64(v64));
    v66 = (v11 + 8 * (v12 >> 6));
    v54 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v66, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v65)), vshlq_u64(vdupq_lane_s64(v66->i64[0], 0), vnegq_s64(v65)));
    if (v61 + v64 >= 0x81)
    {
      v54 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v66[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v65)), vshlq_u64(vdupq_laneq_s64(v66[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v65))), v54);
    }

    v12 = v62;
  }

  else
  {
    v29 = 1;
  }

  v67 = vandq_s8(v45, xmmword_29D2F0D40);
  v68 = (a4 >> 5) & 3;
  if (v68 != 2)
  {
    v73 = 0;
    v70 = 0;
    v74 = v12;
    goto LABEL_36;
  }

  v69 = v12 + 4;
  if (v14 < v12 + 4)
  {
    v70 = 0;
    v69 = v12;
LABEL_35:
    v73 = 0;
    v29 = 1;
    v74 = v69;
    goto LABEL_36;
  }

  v75 = (v11 + 8 * (v12 >> 6));
  v76 = *v75 >> v12;
  if ((v12 & 0x3F) >= 0x3D)
  {
    v76 |= v75[1] << -(v12 & 0x3F);
  }

  v70 = (v76 << 28) >> 28;
  v74 = v12 + 8;
  if (v14 < v12 + 8)
  {
    goto LABEL_35;
  }

  v71 = (v11 + 8 * (v69 >> 6));
  v72 = *v71 >> v69;
  if ((v69 & 0x3F) >= 0x3D)
  {
    v72 |= v71[1] << -(v69 & 0x3F);
  }

  v73 = (v72 << 28) >> 28;
LABEL_36:
  v77 = vandq_s8(v46, xmmword_29D2F0D50);
  v67.i8[0] = 0;
  v78 = vmovl_u8(*&vpaddq_s8(v67, v67));
  v79 = vmovl_u16(*&vpaddq_s16(v78, v78));
  v80 = vpaddq_s32(v79, v79).u64[0];
  v81.i64[0] = v80;
  v81.i64[1] = HIDWORD(v80);
  v82 = v81;
  v83 = vaddvq_s64(v81);
  v84 = v83 + v74;
  v85 = 0uLL;
  if (v83 <= 0x80 && v14 >= v84)
  {
    v88 = v74 & 0x3F;
    v89 = vaddq_s64(vzip1q_s64(0, v82), vdupq_n_s64(v88));
    v90 = (v11 + 8 * (v74 >> 6));
    v87 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v90, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v89)), vshlq_u64(vdupq_lane_s64(v90->i64[0], 0), vnegq_s64(v89)));
    if (v83 + v88 >= 0x81)
    {
      v87 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v90[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v89)), vshlq_u64(vdupq_laneq_s64(v90[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v89))), v87);
    }

    v74 = v84;
  }

  else
  {
    v29 = 1;
    v87 = 0uLL;
  }

  v204[1] = v9;
  v204[2] = v8;
  v204[3] = v7;
  v204[4] = v6;
  v91 = vandq_s8(v47, xmmword_29D2F0D50);
  v92 = vmovl_u8(*&vpaddq_s8(v77, v77));
  v93 = vmovl_u16(*&vpaddq_s16(v92, v92));
  v94 = vpaddq_s32(v93, v93).u64[0];
  v95.i64[0] = v94;
  v95.i64[1] = HIDWORD(v94);
  v96 = v95;
  v97 = vaddvq_s64(v95);
  if (v97 >= 0x81)
  {
    v29 = 1;
  }

  else
  {
    v98 = vzip1_s32(*v93.i8, *&vextq_s8(v93, v93, 8uLL));
    v99.i64[0] = v98.u32[0];
    v99.i64[1] = v98.u32[1];
    v100 = v99;
    v101 = *&v92 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v102 = v97 + v74;
    if (v14 >= v97 + v74)
    {
      v104 = v74 & 0x3F;
      v105 = vaddq_s64(vzip1q_s64(0, v96), vdupq_n_s64(v104));
      v106 = (v11 + 8 * (v74 >> 6));
      v103 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v106, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v105)), vshlq_u64(vdupq_lane_s64(v106->i64[0], 0), vnegq_s64(v105)));
      if (v97 + v104 >= 0x81)
      {
        v103 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v106[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v105)), vshlq_u64(vdupq_laneq_s64(v106[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v105))), v103);
      }

      v74 = v102;
    }

    else
    {
      v103 = 0uLL;
      v29 = 1;
    }

    v107 = vshlq_u64(v103, vnegq_s64(v100));
    v108 = vuzp1q_s32(vzip1q_s64(v103, v107), vzip2q_s64(v103, v107));
    v109 = vshlq_u32(v108, vnegq_s32(v101));
    v110 = vuzp1q_s16(vzip1q_s32(v108, v109), vzip2q_s32(v108, v109));
    v111 = vshlq_u16(v110, vnegq_s16((*&v77 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v85 = vuzp1q_s8(vzip1q_s16(v110, v111), vzip2q_s16(v110, v111));
  }

  v112 = vandq_s8(v48, xmmword_29D2F0D50);
  v113 = vmovl_u8(*&vpaddq_s8(v91, v91));
  v114 = vmovl_u16(*&vpaddq_s16(v113, v113));
  v115 = vpaddq_s32(v114, v114).u64[0];
  v116.i64[0] = v115;
  v116.i64[1] = HIDWORD(v115);
  v117 = v116;
  v118 = vaddvq_s64(v116);
  if (v118 >= 0x81)
  {
    v29 = 1;
    v125 = 0uLL;
  }

  else
  {
    v119 = vzip1_s32(*v114.i8, *&vextq_s8(v114, v114, 8uLL));
    v120.i64[0] = v119.u32[0];
    v120.i64[1] = v119.u32[1];
    v121 = v120;
    v122 = *&v113 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v123 = v118 + v74;
    if (v14 >= v118 + v74)
    {
      v126 = v74 & 0x3F;
      v127 = vaddq_s64(vzip1q_s64(0, v117), vdupq_n_s64(v126));
      v128 = (v11 + 8 * (v74 >> 6));
      v124 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v128, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v127)), vshlq_u64(vdupq_lane_s64(v128->i64[0], 0), vnegq_s64(v127)));
      if (v118 + v126 >= 0x81)
      {
        v124 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v128[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v127)), vshlq_u64(vdupq_laneq_s64(v128[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v127))), v124);
      }

      v74 = v123;
    }

    else
    {
      v124 = 0uLL;
      v29 = 1;
    }

    v129 = vshlq_u64(v124, vnegq_s64(v121));
    v130 = vuzp1q_s32(vzip1q_s64(v124, v129), vzip2q_s64(v124, v129));
    v131 = vshlq_u32(v130, vnegq_s32(v122));
    v132 = vuzp1q_s16(vzip1q_s32(v130, v131), vzip2q_s32(v130, v131));
    v133 = vshlq_u16(v132, vnegq_s16((*&v91 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v125 = vuzp1q_s8(vzip1q_s16(v132, v133), vzip2q_s16(v132, v133));
  }

  v134 = vmovl_u8(*&vpaddq_s8(v112, v112));
  v135 = vmovl_u16(*&vpaddq_s16(v134, v134));
  v136 = vpaddq_s32(v135, v135).u64[0];
  v137.i64[0] = v136;
  v137.i64[1] = HIDWORD(v136);
  v138 = v137;
  v139 = vaddvq_s64(v137);
  if (v139 >= 0x81 || v14 < v139 + v74)
  {
    goto LABEL_66;
  }

  v140 = vaddq_s64(vzip1q_s64(0, v138), vdupq_n_s64(v74 & 0x3F));
  v141 = (v11 + 8 * (v74 >> 6));
  v142 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
  if (v139 + (v74 & 0x3F) >= 0x81)
  {
    v142 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v142);
  }

  if ((v29 & 1) != 0 || (v143 = (a4 & 0x1F) + 1, 8 * ((a3 & 7) + v143) - (v139 + v74) >= 9))
  {
LABEL_66:
    v143 = 0;
    v204[0] |= 255 << (8 * ((v204 + 7) & 7u));
    a1->i32[0] = 0;
    *(a1->i32 + a2) = 0;
    *(a1->i32 + 2 * a2) = 0;
    *(a1->i32 + 3 * a2) = 0;
  }

  else
  {
    v145 = vzip1_s32(*v57.i8, *&vextq_s8(v57, v57, 8uLL));
    v146 = vzip1_s32(*v79.i8, *&vextq_s8(v79, v79, 8uLL));
    v147.i64[0] = v145.u32[0];
    v147.i64[1] = v145.u32[1];
    v148 = v147;
    v147.i64[0] = v146.u32[0];
    v147.i64[1] = v146.u32[1];
    v149 = vshlq_u64(v54, vnegq_s64(v148));
    v150 = vshlq_u64(v87, vnegq_s64(v147));
    v151 = vuzp1q_s32(vzip1q_s64(v54, v149), vzip2q_s64(v54, v149));
    v152 = vuzp1q_s32(vzip1q_s64(v87, v150), vzip2q_s64(v87, v150));
    v153 = vshlq_u32(v151, vnegq_s32((*&v56 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v154 = vshlq_u32(v152, vnegq_s32((*&v78 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v155 = vuzp1q_s16(vzip1q_s32(v151, v153), vzip2q_s32(v151, v153));
    v156 = vuzp1q_s16(vzip1q_s32(v152, v154), vzip2q_s32(v152, v154));
    v157 = vshlq_u16(v155, vnegq_s16((*&v55 & __PAIR128__(0xF0FFF0FFF0FFF0FFLL, 0xF0FFF0FFF0FFF0FFLL))));
    v158 = vshlq_u16(v156, vnegq_s16((*&v67 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF0000))));
    v159 = vzip2q_s16(v155, v157);
    v160 = vzip1q_s16(v155, v157);
    v157.i64[0] = 0x808080808080808;
    v157.i64[1] = 0x808080808080808;
    v161 = vzip2q_s16(v156, v158);
    v162 = vzip1q_s16(v156, v158);
    v158.i64[0] = 0x808080808080808;
    v158.i64[1] = 0x808080808080808;
    v163 = v13 >> 4;
    v164 = vuzp1q_s8(v160, v159);
    v159.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v159.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v165 = vuzp1q_s8(v162, v161);
    v161.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v161.i64[1] = 0xF8F8F8F8F8F8F8F8;
    *v150.i8 = vzip1_s32(*v135.i8, *&vextq_s8(v135, v135, 8uLL));
    v166.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v166.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v167.i64[0] = 0x808080808080808;
    v167.i64[1] = 0x808080808080808;
    v168 = vshlq_s8(v164, vsubq_s8(v157, v55));
    v169 = vaddq_s8(v67, v161);
    v170 = vshlq_s8(v165, vsubq_s8(v158, v67));
    v147.i64[0] = v150.u32[0];
    v147.i64[1] = v150.u32[1];
    v171 = vshlq_s8(v168, vaddq_s8(v55, v159));
    v172 = vshlq_s8(v170, v169);
    v173 = vshlq_s8(vshlq_s8(v85, vsubq_s8(v158, v77)), vaddq_s8(v77, v161));
    v174 = vshlq_s8(vshlq_s8(v125, vsubq_s8(v158, v91)), vaddq_s8(v91, v161));
    v175 = vshlq_u64(v142, vnegq_s64(v147));
    v176 = vuzp1q_s32(vzip1q_s64(v142, v175), vzip2q_s64(v142, v175));
    v177 = vshlq_u32(v176, vnegq_s32((*&v134 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v178 = vuzp1q_s16(vzip1q_s32(v176, v177), vzip2q_s32(v176, v177));
    v179 = vshlq_u16(v178, vnegq_s16((*&v112 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v180 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v178, v179), vzip2q_s16(v178, v179)), vsubq_s8(v167, v112)), vaddq_s8(v112, v166));
    if (v68 == 2)
    {
      v181.i64[0] = 0xFFFF0000FFFF0000;
      v181.i64[1] = 0xFFFF0000FFFF0000;
      v182 = vmlaq_s8(vandq_s8(vdupq_n_s8(v73), v181), vdupq_n_s8(v70), xmmword_29D2F0D60);
      v172 = vaddq_s8(v172, v182);
      v173 = vaddq_s8(vaddq_s8(vdupq_n_s8(2 * v73), v182), v173);
      v174 = vaddq_s8(vaddq_s8(vdupq_n_s8(4 * v70), v182), v174);
      v180 = vaddq_s8(vaddq_s8(vdupq_n_s8(4 * v70 + 2 * v73), v182), v180);
    }

    v183 = vdupq_n_s8(v163).u64[0];
    v184 = vaddq_s8(vandq_s8(v171, v49), v172);
    v185 = vdupq_lane_s8(*v171.i8, 0);
    v186 = vsubq_s8(v184, vandq_s8(v185, v49));
    v187 = vsubq_s8(v173, vandq_s8(v185, v50));
    v188 = vsubq_s8(v174, vandq_s8(v185, v51));
    v189 = vsubq_s8(v180, vandq_s8(v185, v52));
    v190.i64[0] = 0x101010101010101;
    v190.i64[1] = 0x101010101010101;
    if (vaddlvq_s8(vceqq_s8(v19, v190)))
    {
      v191 = vandq_s8(v16, v190);
      v192 = vnegq_s8(v191);
      v193 = v186;
      v193.i8[0] = v186.i8[7];
      v193.i8[7] = v186.i8[0];
      v194 = vorrq_s8(vandq_s8(v193, v192), vandq_s8(v186, vceqzq_s8(v191)));
      v195 = vaddq_s8(vandq_s8(vqtbl1q_s8(v194, xmmword_29D2F0D70), v192), v194);
      v186.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v195, xmmword_29D2F0D80), v192), v195).u64[0];
      v196 = vaddq_s8(vandq_s8(vqtbl1q_s8(v187, xmmword_29D2F0D90), v192), v187);
      v187.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v196, xmmword_29D2F0DA0), v192), v196).u64[0];
      v197 = vaddq_s8(vandq_s8(vqtbl1q_s8(v188, xmmword_29D2F0DB0), v192), v188);
      v188.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v197, xmmword_29D2F0DC0), v192), v197).u64[0];
      v198 = vaddq_s8(vandq_s8(vqtbl1q_s8(v189, xmmword_29D2F0DD0), v192), v189);
      v189.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v198, xmmword_29D2F0DE0), v192), v198).u64[0];
    }

    v199 = vadd_s8(v183, *v186.i8);
    v200 = vadd_s8(*v187.i8, v183);
    *a1 = vzip1_s32(v199, v200);
    *(a1 + a2) = vzip2_s32(v199, v200);
    v201 = (a1 + 2 * a2);
    v202 = vadd_s8(*v188.i8, v183);
    v203 = vadd_s8(*v189.i8, v183);
    *v201 = vzip1_s32(v202, v203);
    *(v201 + a2) = vzip2_s32(v202, v203);
  }

  return v143;
}

__n64 AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(void *a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  v50 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v42, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v42, a5);
  }

  v28 = v42;
  v29 = v43;
  v30 = v44;
  v31 = v45;
  v36 = v46;
  v37 = v47;
  v38 = v48;
  v39 = v49;
  v8 = a3 + 4;
  if ((a4 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v8, &v42, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v8, &v42, a5);
  }

  v24 = v42;
  v25 = v43;
  v26 = v44;
  v27 = v45;
  v32 = v46;
  v33 = v47;
  v34 = v48;
  v35 = v49;
  v9 = a3 + 8;
  if ((a4 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v9, &v42, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v9, &v42, a5);
  }

  v11 = v42;
  v10 = v43;
  v12 = v44;
  v13 = v45;
  v14 = v46;
  v15 = v47;
  v16 = v48;
  v23 = v49;
  v17 = a3 + 12;
  if ((a4 & 8) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v17, &v42, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v17, &v42, a5);
  }

  result.n64_u8[0] = v11;
  result.n64_u8[1] = v10;
  result.n64_u8[2] = v12;
  result.n64_u8[3] = v13;
  result.n64_u8[4] = v42;
  result.n64_u8[5] = v43;
  result.n64_u8[6] = v44;
  result.n64_u8[7] = v45;
  LOBYTE(v19) = v14;
  BYTE1(v19) = v15;
  BYTE2(v19) = v16;
  BYTE3(v19) = v23;
  BYTE4(v19) = v46;
  BYTE5(v19) = v47;
  BYTE6(v19) = v48;
  HIBYTE(v19) = v49;
  LOBYTE(v20) = v28;
  BYTE1(v20) = v29;
  BYTE2(v20) = v30;
  BYTE3(v20) = v31;
  BYTE4(v20) = v24;
  BYTE5(v20) = v25;
  BYTE6(v20) = v26;
  HIBYTE(v20) = v27;
  LOBYTE(v21) = v36;
  BYTE1(v21) = v37;
  BYTE2(v21) = v38;
  BYTE3(v21) = v39;
  BYTE4(v21) = v32;
  BYTE5(v21) = v33;
  BYTE6(v21) = v34;
  HIBYTE(v21) = v35;
  *a1 = v20;
  *(a1 + a2) = v21;
  v22 = (a1 + a2 + a2);
  v22->n64_u64[0] = result.n64_u64[0];
  *(v22->n64_u64 + a2) = v19;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = a6;
  v9 = a5;
  v11 = a3;
  v13 = result;
  if (a5 && a6)
  {
    if (a6 >= 4)
    {
      a6 = 4;
    }

    if (a5 >= 4)
    {
      a5 = 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
    v11 += result;
  }

  else
  {
    *a4 = 0;
  }

  v14 = v9 - 4;
  if (v9 >= 5 && v8)
  {
    if (v8 >= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = v8;
    }

    if (v14 >= 4)
    {
      v16 = 4;
    }

    else
    {
      v16 = v9 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + 1, a2, v16, v15, a7);
    v11 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v17 = 4 * a2;
  v18 = v8 - 4;
  if (v9 && v8 >= 5)
  {
    if (v18 >= 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = v8 - 4;
    }

    if (v9 >= 4)
    {
      v20 = 4;
    }

    else
    {
      v20 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, (v13 + v17), a2, v20, v19, a7);
    v11 += result;
  }

  else
  {
    a4[2] = 0;
  }

  if (v9 < 5 || v8 < 5)
  {
    a4[3] = 0;
  }

  else
  {
    if (v18 >= 4)
    {
      v21 = 4;
    }

    else
    {
      v21 = v8 - 4;
    }

    if (v14 >= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = v9 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, (v13 + v17 + 8), a2, v22, v21, a7);
    v11 += result;
  }

  v23 = v9 - 8;
  if (v9 >= 9 && v8)
  {
    if (v8 >= 4)
    {
      v24 = 4;
    }

    else
    {
      v24 = v8;
    }

    if (v23 >= 4)
    {
      v25 = 4;
    }

    else
    {
      v25 = v9 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 2, a2, v25, v24, a7);
    v11 += result;
  }

  else
  {
    a4[4] = 0;
  }

  v26 = v9 - 12;
  if (v9 >= 0xD && v8)
  {
    if (v8 >= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = v8;
    }

    if (v26 >= 4)
    {
      v28 = 4;
    }

    else
    {
      v28 = v9 - 12;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 3, a2, v28, v27, a7);
    v11 += result;
  }

  else
  {
    a4[5] = 0;
    if (v9 < 9)
    {
      goto LABEL_68;
    }
  }

  if (v8 >= 5)
  {
    if (v18 >= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = v8 - 4;
    }

    if (v23 >= 4)
    {
      v30 = 4;
    }

    else
    {
      v30 = v9 - 8;
    }

    v31 = 4 * a2;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, (v13 + 4 * a2 + 16), a2, v30, v29, a7);
    v11 += result;
    if (v9 < 0xD)
    {
      goto LABEL_79;
    }

    goto LABEL_69;
  }

LABEL_68:
  a4[6] = 0;
  v31 = 4 * a2;
  if (v9 < 0xD)
  {
LABEL_79:
    a4[7] = 0;
    return result;
  }

LABEL_69:
  if (v8 < 5)
  {
    goto LABEL_79;
  }

  if (v18 >= 4)
  {
    v32 = 4;
  }

  else
  {
    v32 = v8 - 4;
  }

  if (v26 >= 4)
  {
    v33 = 4;
  }

  else
  {
    v33 = v9 - 12;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, (v13 + v31 + 24), a2, v33, v32, a7);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, int8x8_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, int8x8_t a8, double a9, int8x8_t a10)
{
  v14 = *a3;
  *v17.i8 = a3[1];
  *v16.i8 = *(a3 + a4);
  *v18.i8 = *(&a3[1] + a4);
  *v15.i8 = *a3;
  v15.u64[1] = *a3;
  v16.i64[1] = v16.i64[0];
  v17.i64[1] = v17.i64[0];
  v18.i64[1] = v18.i64[0];
  v19 = vdupq_lane_s8(*a3, 0);
  v20 = vsubq_s8(v15, v19);
  v21 = vsubq_s8(v16, v19);
  v22 = vsubq_s8(v17, v19);
  a8.i8[0] = vmaxvq_s8(v20);
  a10.i8[0] = vminvq_s8(v20);
  v23 = vdupq_lane_s8(a8, 0);
  v24 = vdupq_lane_s8(a10, 0);
  v25 = vsubq_s8(v18, v19);
  v26 = vzip1q_s8(v23, v24);
  v27.i64[0] = 0x808080808080808;
  v27.i64[1] = 0x808080808080808;
  v28 = vbicq_s8(vsubq_s8(v27, vclsq_s8(v26)), vceqzq_s8(v26));
  v29 = vpmaxq_s8(v28, v28);
  v28.i8[0] = vmaxvq_s8(v21);
  v10.i8[0] = vminvq_s8(v21);
  v30 = vdupq_lane_s8(*v28.i8, 0);
  v31 = vdupq_lane_s8(v10, 0);
  v32 = vmaxq_s8(v23, v30);
  v33 = vminq_s8(v24, v31);
  v34 = vzip1q_s8(v30, v31);
  v35 = vbicq_s8(vsubq_s8(v27, vclsq_s8(v34)), vceqzq_s8(v34));
  v36 = vpmaxq_s8(v35, v35);
  v35.i8[0] = vmaxvq_s8(v22);
  v11.i8[0] = vminvq_s8(v22);
  v37 = vdupq_lane_s8(*v35.i8, 0);
  v38 = vdupq_lane_s8(v11, 0);
  v39 = vmaxq_s8(v32, v37);
  v40 = vminq_s8(v33, v38);
  v41 = vzip1q_s8(v37, v38);
  v42 = vbicq_s8(vsubq_s8(v27, vclsq_s8(v41)), vceqzq_s8(v41));
  v43 = vpmaxq_s8(v42, v42);
  v42.i8[0] = vmaxvq_s8(v25);
  v12.i8[0] = vminvq_s8(v25);
  v44 = vdupq_lane_s8(*v42.i8, 0);
  v45 = vdupq_lane_s8(v12, 0);
  v46 = vmaxq_s8(v39, v44);
  v47 = vminq_s8(v40, v45);
  v48 = vzip1q_s8(v44, v45);
  v49 = vbicq_s8(vsubq_s8(v27, vclsq_s8(v48)), vceqzq_s8(v48));
  v50 = vpmaxq_s8(v49, v49);
  v51 = vmaxq_s8(vmaxq_s8(v29, v36), vmaxq_s8(v43, v50));
  v52 = vclzq_s8(vsubq_s8(v46, v47));
  v53 = vsubq_s8(v27, v52);
  v54 = vminq_s8(v53, v51);
  if (vmaxvq_s8(v54))
  {
    v55 = 0;
    v56 = 0;
    v57.i64[0] = -1;
    v57.i64[1] = -1;
    v58.i64[0] = 0x707070707070707;
    v58.i64[1] = 0x707070707070707;
    v59 = vcgtq_s8(v51, v53);
    v60 = vandq_s8(vsubq_s8(vshlq_s8(v57, vsubq_s8(v58, v52)), v47), v59);
    v61.i64[0] = 0x303030303030303;
    v61.i64[1] = 0x303030303030303;
    v62 = vmaxq_s8(vminq_s8(vsubq_s8(v54, v29), v61), 0);
    v63 = vmaxq_s8(vminq_s8(vsubq_s8(v54, v36), v61), 0);
    v64 = vmaxq_s8(vminq_s8(vsubq_s8(v54, v43), v61), 0);
    v65 = vmaxq_s8(vminq_s8(vsubq_s8(v54, v50), v61), 0);
    v66 = vsubq_s8(v54, v62);
    v67 = vsubq_s8(v54, v63);
    v68 = vsubq_s8(v54, v64);
    v69 = vsubq_s8(v54, v65);
    v70 = vceqq_s8(vaddq_s8(v65, v64), vnegq_s8(vaddq_s8(v62, v63)));
    v65.i64[0] = 0x404040404040404;
    v65.i64[1] = 0x404040404040404;
    v71 = vorrq_s8(vbicq_s8(v65, v70), vorrq_s8(vandq_s8(vceqzq_s8(v54), v61), vandq_s8(v59, v27)));
    if (a5 >= 2 && a6)
    {
      v365 = v60;
      v72 = v14.u8[1] - v14.u8[0];
      v73 = v72 << 28 >> 28;
      v74 = v14.u8[2] - v14.u8[0];
      v75.i64[0] = 0xFFFF0000FFFF0000;
      v75.i64[1] = 0xFFFF0000FFFF0000;
      v76 = vmlaq_s8(vandq_s8(vdupq_n_s8(v74 << 28 >> 28), v75), vdupq_n_s8(v73), xmmword_29D2F0D60);
      v77 = vsubq_s8(v20, v76);
      v78 = v74 << 28 >> 27;
      v79 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v78), v21), v76);
      v80 = v72 << 28 >> 26;
      v360 = v25;
      v361 = v22;
      v81 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v80), v22), v76);
      v82 = vaddq_s8(vdupq_n_s8(-(v78 + v80)), v25);
      v83 = vsubq_s8(v82, v76);
      v82.i8[0] = vmaxvq_s8(v77);
      v76.i8[0] = vminvq_s8(v77);
      v84 = vdupq_lane_s8(*v82.i8, 0);
      v85 = vdupq_lane_s8(*v76.i8, 0);
      v86 = vzip1q_s8(v84, v85);
      v87.i64[0] = 0x808080808080808;
      v87.i64[1] = 0x808080808080808;
      v88 = v21;
      v89 = v67;
      v90 = v68;
      v91 = vceqzq_s8(v86);
      v92 = vbicq_s8(vsubq_s8(v87, vclsq_s8(v86)), v91);
      v93 = vpmaxq_s8(v92, v92);
      v91.i8[0] = vmaxvq_s8(v79);
      v64.i8[0] = vminvq_s8(v79);
      v94 = vdupq_lane_s8(*v91.i8, 0);
      v95 = vdupq_lane_s8(*v64.i8, 0);
      v96 = vmaxq_s8(v84, v94);
      v97 = vminq_s8(v85, v95);
      v98 = vzip1q_s8(v94, v95);
      v99 = vsubq_s8(v87, vclsq_s8(v98));
      v100 = vbicq_s8(v99, vceqzq_s8(v98));
      v101 = vpmaxq_s8(v100, v100);
      v99.i8[0] = vmaxvq_s8(v81);
      v58.i8[0] = vminvq_s8(v81);
      v102 = vdupq_lane_s8(*v99.i8, 0);
      v103 = vdupq_lane_s8(*v58.i8, 0);
      v104 = vmaxq_s8(v96, v102);
      v105 = vminq_s8(v97, v103);
      v106 = vzip1q_s8(v102, v103);
      v107 = vbicq_s8(vsubq_s8(v87, vclsq_s8(v106)), vceqzq_s8(v106));
      v108 = vpmaxq_s8(v107, v107);
      v107.i8[0] = vmaxvq_s8(v83);
      v13.i8[0] = vminvq_s8(v83);
      v109 = vdupq_lane_s8(*v107.i8, 0);
      v110 = vdupq_lane_s8(v13, 0);
      v111 = vminq_s8(v105, v110);
      v112 = vzip1q_s8(v109, v110);
      v113 = vbicq_s8(vsubq_s8(v87, vclsq_s8(v112)), vceqzq_s8(v112));
      v114 = vpmaxq_s8(v113, v113);
      v115 = vmaxq_s8(vmaxq_s8(v93, v101), vmaxq_s8(v108, v114));
      v116 = vclzq_s8(vsubq_s8(vmaxq_s8(v104, v109), v111));
      v117 = vsubq_s8(v87, v116);
      v118 = vcgtq_s8(v115, v117);
      v119 = vminq_s8(v117, v115);
      v87.i64[0] = 0x202020202020202;
      v87.i64[1] = 0x202020202020202;
      v115.i64[0] = 0xA0A0A0A0A0A0A0ALL;
      v115.i64[1] = 0xA0A0A0A0A0A0A0ALL;
      v120 = vbslq_s8(v118, v115, v87);
      v115.i64[0] = 0x101010101010101;
      v115.i64[1] = 0x101010101010101;
      v121 = v69;
      v122 = vmaxq_s8(v119, v115);
      v123 = vsubq_s8(v122, v93);
      v93.i64[0] = 0x303030303030303;
      v93.i64[1] = 0x303030303030303;
      v124 = vmaxq_s8(vminq_s8(v123, v93), 0);
      v125 = vmaxq_s8(vminq_s8(vsubq_s8(v122, v101), v93), 0);
      v126 = vmaxq_s8(vminq_s8(vsubq_s8(v122, v108), v93), 0);
      v127 = vmaxq_s8(vminq_s8(vsubq_s8(v122, v114), v93), 0);
      v128 = vsubq_s8(v122, v124);
      v129 = vsubq_s8(v122, v125);
      v130 = vsubq_s8(v122, v126);
      v131 = vsubq_s8(v122, v127);
      v132 = vceqq_s8(vaddq_s8(v127, v126), vnegq_s8(vaddq_s8(v124, v125)));
      v126.i64[0] = 0x404040404040404;
      v126.i64[1] = 0x404040404040404;
      v133 = vorrq_s8(vbicq_s8(v126, v132), v120);
      v134.i64[0] = 0x8000800080008;
      v134.i64[1] = 0x8000800080008;
      v366 = vshll_n_s8(vadd_s8(vadd_s8(*v90.i8, *v89.i8), *v121.i8), 3uLL);
      v93.i64[0] = 0x2000200020002;
      v93.i64[1] = 0x2000200020002;
      v135 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddw_s8(vmlal_s8(v366, *v66.i8, 0x707070707070707), vbic_s8(*v54.i8, vcgt_u8(0x808080808080808, *v71.i8))), (*&vshll_n_u8(*v71.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9))), vandq_s8(vceqq_s16((*&vmovl_u8(*v71.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v93), v134)), vaddq_s16(vaddw_u8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v130.i8, *v129.i8), *v131.i8), 3uLL), *v128.i8, 0x707070707070707), vand_s8(vadd_s8(*v133.i8, *v133.i8), 0x808080808080808)), vbic_s8(*v122.i8, vcgt_u8(0x808080808080808, *v133.i8))), v134))), 0);
      v126.i16[0] = vaddlvq_s8(v135);
      v136 = v73 & 0xF | (16 * v74);
      v137 = v126.u16[0];
      if (v126.i16[0])
      {
        v138.i64[0] = 0x707070707070707;
        v138.i64[1] = 0x707070707070707;
        v139.i64[0] = -1;
        v139.i64[1] = -1;
        v362 = vbslq_s8(v135, v77, v20);
        v363 = vbslq_s8(v135, v79, v88);
        v22 = vbslq_s8(v135, v81, v361);
        v25 = vbslq_s8(v135, v83, v360);
        v66 = vbslq_s8(v135, v128, v66);
        v89 = vbslq_s8(v135, v129, v89);
        v121 = vbslq_s8(v135, v131, v121);
        v60 = vbslq_s8(v135, vandq_s8(vsubq_s8(vshlq_s8(v139, vsubq_s8(v138, v116)), v111), v118), v365);
        v54 = vbslq_s8(v135, v122, v54);
        v71 = vbslq_s8(v135, v133, v71);
        v140 = vmull_s8(*v66.i8, 0x707070707070707);
        v364 = vbslq_s8(v135, v130, v90);
        v366 = vshll_n_s8(vadd_s8(vadd_s8(*v364.i8, *v89.i8), *v121.i8), 3uLL);
      }

      else
      {
        v362 = v20;
        v363 = v88;
        v364 = v90;
        v140 = vmull_s8(*v66.i8, 0x707070707070707);
        v25 = v360;
        v22 = v361;
        v60 = v365;
      }

      v69 = v121;
      v67 = v89;
      v56 = v136;
      v142 = vsubq_s8(v15, vqtbl1q_s8(v15, xmmword_29D2F0DF0));
      v143 = v16;
      v143.i8[7] = v15.i8[7];
      v144 = vsubq_s8(v16, vqtbl1q_s8(v143, xmmword_29D2F0E00));
      v145 = v17;
      v145.i8[7] = v15.i8[7];
      v146 = vsubq_s8(v17, vqtbl1q_s8(v145, xmmword_29D2F0E10));
      v147 = v18;
      v147.i8[7] = v15.i8[7];
      v148 = vqtbl1q_s8(v147, xmmword_29D2F0E20);
      v149 = vsubq_s8(v18, v148);
      v150 = v142;
      v150.i8[0] = v142.i8[7];
      v150.i8[7] = v142.i8[0];
      v142.i8[0] = vmaxvq_s8(v150);
      v148.i8[0] = vminvq_s8(v150);
      v151 = vdupq_lane_s8(*v142.i8, 0);
      v152 = vdupq_lane_s8(*v148.i8, 0);
      v153 = vzip1q_s8(v151, v152);
      v154.i64[0] = 0x808080808080808;
      v154.i64[1] = 0x808080808080808;
      v155 = vbicq_s8(vsubq_s8(v154, vclsq_s8(v153)), vceqzq_s8(v153));
      v156 = vpmaxq_s8(v155, v155);
      v155.i8[0] = vmaxvq_s8(v144);
      v130.i8[0] = vminvq_s8(v144);
      v157 = vdupq_lane_s8(*v155.i8, 0);
      v158 = vdupq_lane_s8(*v130.i8, 0);
      v159 = vmaxq_s8(v151, v157);
      v160 = vminq_s8(v152, v158);
      v161 = vzip1q_s8(v157, v158);
      v162 = vsubq_s8(v154, vclsq_s8(v161));
      v163 = vbicq_s8(v162, vceqzq_s8(v161));
      v164 = vpmaxq_s8(v163, v163);
      v163.i8[0] = vmaxvq_s8(v146);
      v162.i8[0] = vminvq_s8(v146);
      v165 = vdupq_lane_s8(*v163.i8, 0);
      v166 = vdupq_lane_s8(*v162.i8, 0);
      v167 = vmaxq_s8(v159, v165);
      v168 = vminq_s8(v160, v166);
      v169 = vzip1q_s8(v165, v166);
      v170 = vsubq_s8(v154, vclsq_s8(v169));
      v171 = vbicq_s8(v170, vceqzq_s8(v169));
      v172 = vpmaxq_s8(v171, v171);
      v171.i8[0] = vmaxvq_s8(v149);
      v170.i8[0] = vminvq_s8(v149);
      v173 = vdupq_lane_s8(*v171.i8, 0);
      v174 = vdupq_lane_s8(*v170.i8, 0);
      v175 = vminq_s8(v168, v174);
      v176 = vzip1q_s8(v173, v174);
      v177 = vbicq_s8(vsubq_s8(v154, vclsq_s8(v176)), vceqzq_s8(v176));
      v178 = vpmaxq_s8(v177, v177);
      v179 = vmaxq_s8(vmaxq_s8(v156, v164), vmaxq_s8(v172, v178));
      v180 = vclzq_s8(vsubq_s8(vmaxq_s8(v167, v173), v175));
      v181 = vsubq_s8(v154, v180);
      v182 = vcgtq_s8(v179, v181);
      v183 = vminq_s8(v181, v179);
      v181.i64[0] = 0x909090909090909;
      v181.i64[1] = 0x909090909090909;
      v184.i64[0] = 0x202020202020202;
      v184.i64[1] = 0x202020202020202;
      v185 = vorrq_s8(vandq_s8(vceqzq_s8(v183), v184), vsubq_s8(vandq_s8(v182, v181), vmvnq_s8(v182)));
      v184.i64[0] = 0x303030303030303;
      v184.i64[1] = 0x303030303030303;
      v186 = vmaxq_s8(vminq_s8(vsubq_s8(v183, v156), v184), 0);
      v187 = vmaxq_s8(vminq_s8(vsubq_s8(v183, v164), v184), 0);
      v188 = vmaxq_s8(vminq_s8(vsubq_s8(v183, v172), v184), 0);
      v189 = vmaxq_s8(vminq_s8(vsubq_s8(v183, v178), v184), 0);
      v190 = vsubq_s8(v183, v186);
      v191 = vsubq_s8(v183, v187);
      v192 = vsubq_s8(v183, v188);
      v193 = vsubq_s8(v183, v189);
      v184.i64[0] = 0x404040404040404;
      v184.i64[1] = 0x404040404040404;
      v194 = vorrq_s8(v185, vbicq_s8(v184, vceqq_s8(vaddq_s8(v189, v188), vnegq_s8(vaddq_s8(v186, v187)))));
      v188.i64[0] = 0x3000300030003;
      v188.i64[1] = 0x3000300030003;
      v195 = vmovl_s8(*v71.i8);
      v184.i64[0] = 0x8000800080008;
      v184.i64[1] = 0x8000800080008;
      v154.i64[0] = 0x2000200020002;
      v154.i64[1] = 0x2000200020002;
      v196 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v54.i8), vceqzq_s16(vandq_s8(v195, v184))), vandq_s8(vshll_n_s8(*v71.i8, 1uLL), v184)), vaddq_s16(vandq_s8(vceqq_s16(vandq_s8(v195, v188), v154), v184), v140)), v366), vaddw_s8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v192.i8, *v191.i8), *v193.i8), 3uLL), *v190.i8, 0x707070707070707), vand_s8(vadd_s8(*v194.i8, *v194.i8), 0x808080808080808)), vbic_s8(*v183.i8, vcgt_u8(0x808080808080808, *v194.i8))))), 0);
      v185.i16[0] = vaddlvq_s8(v196);
      v197 = v185.u16[0];
      if (v185.i16[0])
      {
        v198.i64[0] = 0x707070707070707;
        v198.i64[1] = 0x707070707070707;
        v199.i64[0] = -1;
        v199.i64[1] = -1;
        v200 = vandq_s8(vsubq_s8(vshlq_s8(v199, vsubq_s8(v198, v180)), v175), v182);
        v19.i8[0] = vbslq_s8(v196, vextq_s8(v15, v15, 0xFuLL), v19).u8[0];
        v20 = vbslq_s8(v196, v150, v362);
        v21 = vbslq_s8(v196, v144, v363);
        v22 = vbslq_s8(v196, v146, v22);
        v25 = vbslq_s8(v196, v149, v25);
        v66 = vbslq_s8(v196, v190, v66);
        v67 = vbslq_s8(v196, v191, v67);
        v68 = vbslq_s8(v196, v192, v364);
        v69 = vbslq_s8(v196, v193, v69);
        v60 = vbslq_s8(v196, v200, v60);
        v54 = vbslq_s8(v196, v183, v54);
        v71 = vbslq_s8(v196, v194, v71);
      }

      else
      {
        v21 = v363;
        v68 = v364;
        v20 = v362;
      }

      if (v137)
      {
        v201 = v197 == 0;
      }

      else
      {
        v201 = 0;
      }

      v55 = v201;
    }

    v202 = vmovl_s8(*v71.i8);
    v203.i64[0] = 0x8000800080008;
    v203.i64[1] = 0x8000800080008;
    v204.i64[0] = 0x3000300030003;
    v204.i64[1] = 0x3000300030003;
    v205.i64[0] = 0x2000200020002;
    v205.i64[1] = 0x2000200020002;
    if (((7 * v66.i8[0] + 8 * vaddq_s8(vaddq_s8(v68, v67), v69).i8[0] + ((2 * v202.i16[0]) & 8) + vbicq_s8(vmovl_s8(*v54.i8), vceqzq_s16(vandq_s8(v202, v203))).u16[0] + vandq_s8(vceqq_s16(vandq_s8(v202, v204), v205), v203).u16[0]) - 117) <= 0xFFFFFFFFFFFFFF77)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 16;
    }

    else
    {
      v206 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v207 = 8 * (a1 & 7);
      if (v207)
      {
        v208 = *v206 & ~(-1 << v207);
      }

      else
      {
        v208 = 0;
      }

      v209 = vextq_s8(v66, 0, 8uLL);
      v210 = vextq_s8(v67, 0, 8uLL);
      v211 = vextq_s8(v68, 0, 8uLL);
      v212 = vextq_s8(v69, 0, 8uLL);
      if (v54.i8[0])
      {
        v213 = (16 * v54.i8[0] + 112) & 0x70;
      }

      else
      {
        v213 = 0;
      }

      *a2 = 32 * v71.i8[0];
      v214 = (v71.i8[0] & 8 | v213 & 0xFFFF807F | (v19.u8[0] << 7)) >> 3;
      v215 = (v214 << v207) | v208;
      if (v207 >= 0x34)
      {
        *v206 = v215;
        v215 = v214 >> (-8 * (a1 & 7u));
      }

      v216 = v207 + 12;
      v217.i64[0] = 0x202020202020202;
      v217.i64[1] = 0x202020202020202;
      v218 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*&vmovl_u8(*v71.i8), 0x4000400040004)))), v217);
      v217.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v217.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v219.i64[0] = -1;
      v219.i64[1] = -1;
      v220 = vandq_s8(vshlq_u8(v219, vorrq_s8(v218, v217)), vzip1q_s16(vzip1q_s8(vsubq_s8(v54, v209), vsubq_s8(v54, v210)), vzip1q_s8(vsubq_s8(v54, v211), vsubq_s8(v54, v212))).u32[0]);
      v221 = vmovl_u8(*v218.i8);
      v222 = vpaddq_s16(vshlq_u16(vmovl_u8(*v220.i8), vtrn1q_s16(0, v221)), vmovl_high_u8(v220));
      v223 = vpaddq_s16(v221, vmovl_high_u8(v218));
      v224 = vmovl_u16(*v223.i8);
      v225 = vmovl_high_u16(v223);
      v226 = vpaddq_s32(vshlq_u32(vmovl_u16(*v222.i8), vtrn1q_s32(0, v224)), vshlq_u32(vmovl_high_u16(v222), vtrn1q_s32(0, v225)));
      v227 = vpaddq_s32(v224, v225);
      v228.i64[0] = v226.u32[0];
      v228.i64[1] = v226.u32[1];
      v229 = v228;
      v228.i64[0] = v226.u32[2];
      v228.i64[1] = v226.u32[3];
      v230 = v228;
      v228.i64[0] = v227.u32[0];
      v228.i64[1] = v227.u32[1];
      v231 = v228;
      v228.i64[0] = v227.u32[2];
      v228.i64[1] = v227.u32[3];
      v232 = vpaddq_s64(vshlq_u64(v229, vzip1q_s64(0, v231)), vshlq_u64(v230, vzip1q_s64(0, v228)));
      v233 = vpaddq_s64(v231, v228);
      v234 = (v207 + 12) & 0x3C;
      v235 = (v232.i64[0] << v234) | v215;
      if ((v233.i64[0] + v234) >= 0x40)
      {
        *(v206 + ((v216 >> 3) & 8)) = v235;
        v235 = v232.i64[0] >> -v234;
      }

      v236 = v233.i64[0] + v216;
      v237 = (v233.i64[0] + v216) & 0x3F;
      v238 = v235 | (v232.i64[1] << (v233.i8[0] + v216));
      if ((v237 + v233.i64[1]) >= 0x40)
      {
        *(v206 + ((v236 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v238;
        v238 = v232.i64[1] >> -v237;
        if (!v237)
        {
          v238 = 0;
        }
      }

      v239 = vceqq_s8(v54, v66);
      v240 = v236 + v233.i64[1];
      v241.i64[0] = 0x808080808080808;
      v241.i64[1] = 0x808080808080808;
      v242.i64[0] = -1;
      v242.i64[1] = -1;
      v243 = vandq_s8(vextq_s8(vtstq_s8(v71, v241), 0, 0xFuLL), v54);
      v244.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v244.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v245 = vandq_s8(vshlq_u8(v242, vaddq_s8(v243, v244)), v60);
      v246 = vmovl_u8(*v243.i8);
      v247 = vpaddq_s16(vshlq_u16(vmovl_u8(*v245.i8), vtrn1q_s16(0, v246)), vmovl_high_u8(v245));
      v248 = vpaddq_s16(v246, vmovl_high_u8(v243));
      v249 = vmovl_u16(*v248.i8);
      v250 = vmovl_high_u16(v248);
      v251 = vpaddq_s32(vshlq_u32(vmovl_u16(*v247.i8), vtrn1q_s32(0, v249)), vshlq_u32(vmovl_high_u16(v247), vtrn1q_s32(0, v250)));
      v252 = vpaddq_s32(v249, v250);
      v253.i64[0] = v251.u32[0];
      v253.i64[1] = v251.u32[1];
      v254 = v253;
      v253.i64[0] = v251.u32[2];
      v253.i64[1] = v251.u32[3];
      v255 = v253;
      v253.i64[0] = v252.u32[0];
      v253.i64[1] = v252.u32[1];
      v256 = v253;
      v253.i64[0] = v252.u32[2];
      v253.i64[1] = v252.u32[3];
      v257 = vpaddq_s64(vshlq_u64(v254, vzip1q_s64(0, v256)), vshlq_u64(v255, vzip1q_s64(0, v253)));
      v258 = vpaddq_s64(v256, v253);
      v259 = (v236 + v233.i64[1]) & 0x3F;
      v260 = (v257.i64[0] << (v236 + v233.i8[8])) | v238;
      if ((v258.i64[0] + v259) >= 0x40)
      {
        *(v206 + ((v240 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v260;
        v260 = v257.i64[0] >> -v259;
        if (!v259)
        {
          v260 = 0;
        }
      }

      v261 = vandq_s8(v60, v239);
      v262 = v258.i64[0] + v240;
      v263 = v260 | (v257.i64[1] << v262);
      if ((v262 & 0x3F) + v258.i64[1] >= 0x40)
      {
        *(v206 + ((v262 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v263;
        v263 = v257.i64[1] >> -(v262 & 0x3F);
        if ((v262 & 0x3F) == 0)
        {
          v263 = 0;
        }
      }

      v264 = vceqq_s8(v54, v67);
      v265 = vaddq_s8(v261, v20);
      v266 = v262 + v258.i64[1];
      if (v55)
      {
        v263 |= v56 << v266;
        if ((v266 & 0x3F) >= 0x38)
        {
          *(v206 + ((v266 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v263;
          v263 = v56 >> -(v266 & 0x3F);
        }

        v266 += 8;
      }

      v267 = vandq_s8(v60, v264);
      v268 = vmovl_high_u8(v209);
      v209.i8[0] = 0;
      v269.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v269.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v270.i64[0] = -1;
      v270.i64[1] = -1;
      v271 = vandq_s8(vshlq_u8(v270, vaddq_s8(v209, v269)), v265);
      v272 = vmovl_u8(*v209.i8);
      v273 = vpaddq_s16(vshlq_u16(vmovl_u8(*v271.i8), vtrn1q_s16(0, v272)), vshlq_u16(vmovl_high_u8(v271), vtrn1q_s16(0, v268)));
      v274 = vpaddq_s16(v272, v268);
      v275 = vmovl_u16(*v274.i8);
      v276 = vmovl_high_u16(v274);
      v277 = vpaddq_s32(vshlq_u32(vmovl_u16(*v273.i8), vtrn1q_s32(0, v275)), vshlq_u32(vmovl_high_u16(v273), vtrn1q_s32(0, v276)));
      v278 = vpaddq_s32(v275, v276);
      v279.i64[0] = v277.u32[0];
      v279.i64[1] = v277.u32[1];
      v280 = v279;
      v279.i64[0] = v277.u32[2];
      v279.i64[1] = v277.u32[3];
      v281 = v279;
      v279.i64[0] = v278.u32[0];
      v279.i64[1] = v278.u32[1];
      v282 = v279;
      v279.i64[0] = v278.u32[2];
      v279.i64[1] = v278.u32[3];
      v283 = vpaddq_s64(vshlq_u64(v280, vzip1q_s64(0, v282)), vshlq_u64(v281, vzip1q_s64(0, v279)));
      v284 = vpaddq_s64(v282, v279);
      v285 = (v283.i64[0] << v266) | v263;
      if (v284.i64[0] + (v266 & 0x3F) >= 0x40)
      {
        *(v206 + ((v266 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v285;
        v285 = v283.i64[0] >> -(v266 & 0x3F);
        if ((v266 & 0x3F) == 0)
        {
          v285 = 0;
        }
      }

      v286 = vceqq_s8(v54, v68);
      v287 = vaddq_s8(v21, v267);
      v288 = v284.i64[0] + v266;
      v289 = (v284.i64[0] + v266) & 0x3F;
      v290 = v285 | (v283.i64[1] << v288);
      if ((v288 & 0x3F) + v284.i64[1] >= 0x40)
      {
        *(v206 + ((v288 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v290;
        v290 = v283.i64[1] >> -v289;
        if (!v289)
        {
          v290 = 0;
        }
      }

      v291 = vandq_s8(v60, v286);
      v292 = v288 + v284.i64[1];
      v293.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v293.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v294.i64[0] = -1;
      v294.i64[1] = -1;
      v295 = vandq_s8(vshlq_u8(v294, vaddq_s8(v210, v293)), v287);
      v296 = vmovl_u8(*v210.i8);
      v297 = vmovl_high_u8(v210);
      v298 = vpaddq_s16(vshlq_u16(vmovl_u8(*v295.i8), vtrn1q_s16(0, v296)), vshlq_u16(vmovl_high_u8(v295), vtrn1q_s16(0, v297)));
      v299 = vpaddq_s16(v296, v297);
      v300 = vmovl_u16(*v299.i8);
      v301 = vmovl_high_u16(v299);
      v302 = vpaddq_s32(vshlq_u32(vmovl_u16(*v298.i8), vtrn1q_s32(0, v300)), vshlq_u32(vmovl_high_u16(v298), vtrn1q_s32(0, v301)));
      v303 = vpaddq_s32(v300, v301);
      v304.i64[0] = v302.u32[0];
      v304.i64[1] = v302.u32[1];
      v305 = v304;
      v304.i64[0] = v302.u32[2];
      v304.i64[1] = v302.u32[3];
      v306 = v304;
      v304.i64[0] = v303.u32[0];
      v304.i64[1] = v303.u32[1];
      v307 = v304;
      v304.i64[0] = v303.u32[2];
      v304.i64[1] = v303.u32[3];
      v308 = vpaddq_s64(vshlq_u64(v305, vzip1q_s64(0, v307)), vshlq_u64(v306, vzip1q_s64(0, v304)));
      v309 = vpaddq_s64(v307, v304);
      v310 = (v308.i64[0] << v292) | v290;
      if (v309.i64[0] + (v292 & 0x3F) >= 0x40)
      {
        *(v206 + ((v292 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v310;
        v310 = v308.i64[0] >> -(v292 & 0x3F);
        if ((v292 & 0x3F) == 0)
        {
          v310 = 0;
        }
      }

      v311 = vceqq_s8(v54, v69);
      v312 = vaddq_s8(v22, v291);
      v313 = v309.i64[0] + v292;
      v314 = v310 | (v308.i64[1] << v313);
      if ((v313 & 0x3F) + v309.i64[1] >= 0x40)
      {
        *(v206 + ((v313 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v314;
        v314 = v308.i64[1] >> -(v313 & 0x3F);
        if ((v313 & 0x3F) == 0)
        {
          v314 = 0;
        }
      }

      v315 = vandq_s8(v60, v311);
      v316 = v313 + v309.i64[1];
      v317.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v317.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v318.i64[0] = -1;
      v318.i64[1] = -1;
      v319 = vandq_s8(vshlq_u8(v318, vaddq_s8(v211, v317)), v312);
      v320 = vmovl_u8(*v211.i8);
      v321 = vmovl_high_u8(v211);
      v322 = vpaddq_s16(vshlq_u16(vmovl_u8(*v319.i8), vtrn1q_s16(0, v320)), vshlq_u16(vmovl_high_u8(v319), vtrn1q_s16(0, v321)));
      v323 = vpaddq_s16(v320, v321);
      v324 = vmovl_u16(*v323.i8);
      v325 = vmovl_high_u16(v323);
      v326 = vpaddq_s32(vshlq_u32(vmovl_u16(*v322.i8), vtrn1q_s32(0, v324)), vshlq_u32(vmovl_high_u16(v322), vtrn1q_s32(0, v325)));
      v327 = vpaddq_s32(v324, v325);
      v328.i64[0] = v326.u32[0];
      v328.i64[1] = v326.u32[1];
      v329 = v328;
      v328.i64[0] = v326.u32[2];
      v328.i64[1] = v326.u32[3];
      v330 = v328;
      v328.i64[0] = v327.u32[0];
      v328.i64[1] = v327.u32[1];
      v331 = v328;
      v328.i64[0] = v327.u32[2];
      v328.i64[1] = v327.u32[3];
      v332 = vpaddq_s64(vshlq_u64(v329, vzip1q_s64(0, v331)), vshlq_u64(v330, vzip1q_s64(0, v328)));
      v333 = vpaddq_s64(v331, v328);
      v334 = (v332.i64[0] << v316) | v314;
      if (v333.i64[0] + (v316 & 0x3F) >= 0x40)
      {
        *(v206 + ((v316 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v334;
        v334 = v332.i64[0] >> -(v316 & 0x3F);
        if ((v316 & 0x3F) == 0)
        {
          v334 = 0;
        }
      }

      v335 = vaddq_s8(v25, v315);
      v336 = v333.i64[0] + v316;
      v337 = v334 | (v332.i64[1] << v336);
      if ((v336 & 0x3F) + v333.i64[1] >= 0x40)
      {
        *(v206 + ((v336 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v337;
        v337 = v332.i64[1] >> -(v336 & 0x3F);
        if ((v336 & 0x3F) == 0)
        {
          v337 = 0;
        }
      }

      v338 = v336 + v333.i64[1];
      v339.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v339.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v340.i64[0] = -1;
      v340.i64[1] = -1;
      v341 = vandq_s8(vshlq_u8(v340, vaddq_s8(v212, v339)), v335);
      v342 = vmovl_u8(*v212.i8);
      v343 = vmovl_high_u8(v212);
      v344 = vpaddq_s16(vshlq_u16(vmovl_u8(*v341.i8), vtrn1q_s16(0, v342)), vshlq_u16(vmovl_high_u8(v341), vtrn1q_s16(0, v343)));
      v345 = vpaddq_s16(v342, v343);
      v346 = vmovl_u16(*v345.i8);
      v347 = vmovl_high_u16(v345);
      v348 = vpaddq_s32(vshlq_u32(vmovl_u16(*v344.i8), vtrn1q_s32(0, v346)), vshlq_u32(vmovl_high_u16(v344), vtrn1q_s32(0, v347)));
      v349 = vpaddq_s32(v346, v347);
      v350.i64[0] = v348.u32[0];
      v350.i64[1] = v348.u32[1];
      v351 = v350;
      v350.i64[0] = v348.u32[2];
      v350.i64[1] = v348.u32[3];
      v352 = v350;
      v350.i64[0] = v349.u32[0];
      v350.i64[1] = v349.u32[1];
      v353 = v350;
      v350.i64[0] = v349.u32[2];
      v350.i64[1] = v349.u32[3];
      v354 = vpaddq_s64(vshlq_u64(v351, vzip1q_s64(0, v353)), vshlq_u64(v352, vzip1q_s64(0, v350)));
      v355 = vpaddq_s64(v353, v350);
      v356 = (v354.i64[0] << v338) | v337;
      if (v355.i64[0] + (v338 & 0x3F) > 0x3F)
      {
        *(v206 + ((v338 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v356;
        if ((v338 & 0x3F) != 0)
        {
          v356 = v354.i64[0] >> -(v338 & 0x3F);
        }

        else
        {
          v356 = 0;
        }
      }

      v357 = v355.i64[0] + v338;
      v358 = v356 | (v354.i64[1] << v357);
      if ((v357 & 0x3F) + v355.i64[1] >= 0x40)
      {
        *(v206 + ((v357 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v358;
        v358 = v354.i64[1] >> -(v357 & 0x3F);
        if ((v357 & 0x3F) == 0)
        {
          v358 = 0;
        }
      }

      v359 = v357 + v355.i64[1];
      if ((v359 & 0x3F) != 0)
      {
        *(v206 + ((v359 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v358;
      }

      result = (v359 - v207 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = a3->i8[0];
    *a2 = 96;
    return 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = 0;
  v67 = *MEMORY[0x29EDCA608];
  v65 = 0u;
  v66 = 0u;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  if (a6 && a5)
  {
    for (i = 0; i != a6; ++i)
    {
      v29 = 0;
      v30 = (a3 + i * a4);
      v31 = (2 * i) | 1u;
      do
      {
        v32 = &v65 + 8 * (v29 & 0x7F);
        v32[2 * (i & 0x7F)] = *v30;
        v33 = &v65 + 4 * ((2 * v29) | 1u);
        v33[2 * (i & 0x7F)] = v30[1];
        v32[v31] = v30[2];
        LOBYTE(v32) = v30[3];
        v30 += 4;
        ++v29;
        v33[v31] = v32;
      }

      while (a5 != v29);
    }

    v27 = v65;
    v26 = BYTE4(v65);
    v25 = BYTE1(v65);
    v24 = BYTE5(v65);
    v23 = BYTE8(v65);
    v22 = BYTE12(v65);
    v21 = BYTE9(v65);
    v20 = BYTE13(v65);
    v19 = BYTE2(v65);
    v18 = BYTE6(v65);
    v17 = BYTE3(v65);
    v16 = BYTE7(v65);
    v15 = BYTE10(v65);
    v14 = BYTE14(v65);
    v13 = BYTE11(v65);
    v12 = HIBYTE(v65);
    v11 = v66;
    v10 = BYTE4(v66);
    v9 = BYTE1(v66);
    v8 = BYTE5(v66);
  }

  v48 = v12;
  v51 = v10;
  v52 = v11;
  v57 = v9;
  v34 = a6 != 0;
  v53 = 2 * (a6 & 0x7F);
  v60.i64[0] = __PAIR64__(v26, v27);
  v35 = 2 * (a5 & 0x7F);
  v60.i64[1] = __PAIR64__(v24, v25);
  v61 = v23;
  v62 = v22;
  if (v35 >= 4)
  {
    v36 = 4;
  }

  else
  {
    v36 = 2 * (a5 & 0x7F);
  }

  v63 = v21;
  v64 = v20;
  if (v35 >= 4)
  {
    v37 = v35 - 4;
  }

  else
  {
    v37 = 0;
  }

  v55 = 2 * v34;
  v56 = v37;
  v54 = a5;
  v58 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v60, a7, v36, 2 * v34);
  v60.i64[0] = __PAIR64__(v18, v19);
  v60.i64[1] = __PAIR64__(v16, v17);
  v61 = v15;
  v62 = v14;
  v39 = v53 - 2;
  if (v53 < 2)
  {
    v39 = 0;
  }

  v63 = v13;
  v64 = v48;
  if (a6 >= 2)
  {
    v40 = 2;
  }

  else
  {
    v40 = v39;
  }

  v41 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 4, &v60, a7, v36, v40);
  v60.i64[0] = __PAIR64__(v51, v52);
  v60.i64[1] = __PAIR64__(v8, v57);
  v61 = BYTE8(v66);
  v62 = BYTE12(v66);
  if (v54 >= 4)
  {
    v42 = 4;
  }

  else
  {
    v42 = v56;
  }

  v63 = BYTE9(v66);
  v64 = BYTE13(v66);
  v43 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 8, &v60, a7, v42, v55);
  v60.i32[0] = BYTE2(v66);
  v60.i32[1] = BYTE6(v66);
  v60.i32[2] = BYTE3(v66);
  v60.i32[3] = BYTE7(v66);
  v61 = BYTE10(v66);
  v62 = BYTE14(v66);
  v63 = BYTE11(v66);
  v64 = HIBYTE(v66);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 12, &v60, a7, v42, v40);
  if (v43)
  {
    v45 = 4;
  }

  else
  {
    v45 = 0;
  }

  if (v41)
  {
    v46 = 2;
  }

  else
  {
    v46 = 0;
  }

  if (result)
  {
    v47 = -8;
  }

  else
  {
    v47 = -16;
  }

  *a2 = v47 | v45 | v58 | v46;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(int8x16_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, double a5, int8x8_t a6)
{
  v10 = 8 * (a3 & 7);
  v11 = a3 & 0xFFFFFFFFFFFFFFF8;
  v12 = v10 + 12;
  v13 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v10;
  if (v10 >= 0x35)
  {
    v13 |= *(v11 + 8) << (-8 * (a3 & 7u));
  }

  v14 = (8 * (a3 & 7)) | 0x80;
  v15 = (a4 >> 5) | (8 * v13);
  v16 = vdupq_n_s8(v15 & 0xF);
  v17.i64[0] = 0x303030303030303;
  v17.i64[1] = 0x303030303030303;
  a6.i32[0] = v15 & 0xF;
  v18 = vand_s8(a6, 0x4000400040004);
  v19 = vandq_s8(v16, v17);
  v20 = vbicq_s8(vdupq_n_s8(((v13 >> 1) & 7) + 1), vceqq_s8(v19, v17));
  v17.i64[0] = 0x202020202020202;
  v17.i64[1] = 0x202020202020202;
  v21 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(v18, 0)))), v17);
  if (vmaxvq_s8(v21) < 1)
  {
    v29 = 0;
    v52.i64[0] = -1;
    v52.i64[1] = -1;
    v48 = v20;
    v47 = v20;
    v46 = v20;
    v51.i64[0] = -1;
    v51.i64[1] = -1;
    v45 = v20;
    v50.i64[0] = -1;
    v50.i64[1] = -1;
    v49.i64[0] = -1;
    v49.i64[1] = -1;
  }

  else
  {
    v22 = vmovl_u8(*&vpaddq_s8(v21, v21));
    v23 = vmovl_u16(*&vpaddq_s16(v22, v22));
    v24 = vpaddq_s32(v23, v23).u64[0];
    v25.i64[0] = v24;
    v25.i64[1] = HIDWORD(v24);
    v26 = v25;
    v27 = vaddvq_s64(v25);
    v28 = v27 <= 0x80 && v14 >= v27 + v12;
    v29 = !v28;
    v30 = 0uLL;
    if (v28)
    {
      v31 = vaddq_s64(vzip1q_s64(0, v26), vdupq_n_s64(v12 & 0x3C));
      v32 = (v11 + ((v12 >> 3) & 8));
      v30 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v32, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v31)), vshlq_u64(vdupq_lane_s64(v32->i64[0], 0), vnegq_s64(v31)));
      if (v27 + (v12 & 0x3C) >= 0x81)
      {
        v30 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v32[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v31)), vshlq_u64(vdupq_laneq_s64(v32[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v31))), v30);
      }

      v12 += v27;
    }

    v33 = vzip1_s32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
    v34.i64[0] = v33.u32[0];
    v34.i64[1] = v33.u32[1];
    v35 = vshlq_u64(v30, vnegq_s64(v34));
    v36 = vuzp1q_s32(vzip1q_s64(v30, v35), vzip2q_s64(v30, v35));
    v37 = vshlq_u32(v36, vnegq_s32((*&v22 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v38 = vuzp1q_s16(vzip1q_s32(v36, v37), vzip2q_s32(v36, v37));
    v39 = vzip1q_s16(v38, vshlq_u16(v38, vnegq_s16(vmovl_u8(vuzp1_s8(*v21.i8, *v16.i8)))));
    *v39.i8 = vmovn_s16(v39);
    v36.i64[0] = 0x101010101010101;
    v36.i64[1] = 0x101010101010101;
    v40 = vshlq_s8(v36, v21);
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    v40.i64[0] = vandq_s8(vaddq_s8(v40, v36), v39).u64[0];
    v41 = vdupq_lane_s8(*v40.i8, 0);
    v42 = vdupq_lane_s8(*v40.i8, 1);
    v43 = vdupq_lane_s8(*v40.i8, 2);
    v44 = vdupq_lane_s8(*v40.i8, 3);
    v45 = vsubq_s8(v20, v41);
    v46 = vsubq_s8(v20, v42);
    v47 = vsubq_s8(v20, v43);
    v48 = vsubq_s8(v20, v44);
    v49 = vceqzq_s8(v41);
    v50 = vceqzq_s8(v42);
    v51 = vceqzq_s8(v43);
    v52 = vceqzq_s8(v44);
  }

  v53.i64[0] = 0x707070707070707;
  v53.i64[1] = 0x707070707070707;
  v54 = 0uLL;
  v55 = vandq_s8(vextq_s8(vcgtq_u8(v16, v53), 0, 0xFuLL), v20);
  v56 = vmovl_u8(*&vpaddq_s8(v55, v55));
  v57 = vmovl_u16(*&vpaddq_s16(v56, v56));
  v58 = vpaddq_s32(v57, v57).u64[0];
  v59.i64[0] = v58;
  v59.i64[1] = HIDWORD(v58);
  v60 = v59;
  v61 = vaddvq_s64(v59);
  v62 = v61 + v12;
  if (v61 <= 0x80 && v14 >= v62)
  {
    v64 = v12 & 0x3F;
    v65 = vaddq_s64(vzip1q_s64(0, v60), vdupq_n_s64(v64));
    v66 = (v11 + 8 * (v12 >> 6));
    v54 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v66, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v65)), vshlq_u64(vdupq_lane_s64(v66->i64[0], 0), vnegq_s64(v65)));
    if (v61 + v64 >= 0x81)
    {
      v54 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v66[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v65)), vshlq_u64(vdupq_laneq_s64(v66[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v65))), v54);
    }

    v12 = v62;
  }

  else
  {
    v29 = 1;
  }

  v67 = vandq_s8(v45, xmmword_29D2F0D40);
  v68 = (a4 >> 5) & 3;
  if (v68 != 2)
  {
    v73 = 0;
    v70 = 0;
    v74 = v12;
    goto LABEL_36;
  }

  v69 = v12 + 4;
  if (v14 < v12 + 4)
  {
    v70 = 0;
    v69 = v12;
LABEL_35:
    v73 = 0;
    v29 = 1;
    v74 = v69;
    goto LABEL_36;
  }

  v75 = (v11 + 8 * (v12 >> 6));
  v76 = *v75 >> v12;
  if ((v12 & 0x3F) >= 0x3D)
  {
    v76 |= v75[1] << -(v12 & 0x3F);
  }

  v70 = (v76 << 28) >> 28;
  v74 = v12 + 8;
  if (v14 < v12 + 8)
  {
    goto LABEL_35;
  }

  v71 = (v11 + 8 * (v69 >> 6));
  v72 = *v71 >> v69;
  if ((v69 & 0x3F) >= 0x3D)
  {
    v72 |= v71[1] << -(v69 & 0x3F);
  }

  v73 = (v72 << 28) >> 28;
LABEL_36:
  v77 = vandq_s8(v46, xmmword_29D2F0D50);
  v67.i8[0] = 0;
  v78 = vmovl_u8(*&vpaddq_s8(v67, v67));
  v79 = vmovl_u16(*&vpaddq_s16(v78, v78));
  v80 = vpaddq_s32(v79, v79).u64[0];
  v81.i64[0] = v80;
  v81.i64[1] = HIDWORD(v80);
  v82 = v81;
  v83 = vaddvq_s64(v81);
  v84 = v83 + v74;
  v85 = 0uLL;
  if (v83 <= 0x80 && v14 >= v84)
  {
    v88 = v74 & 0x3F;
    v89 = vaddq_s64(vzip1q_s64(0, v82), vdupq_n_s64(v88));
    v90 = (v11 + 8 * (v74 >> 6));
    v87 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v90, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v89)), vshlq_u64(vdupq_lane_s64(v90->i64[0], 0), vnegq_s64(v89)));
    if (v83 + v88 >= 0x81)
    {
      v87 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v90[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v89)), vshlq_u64(vdupq_laneq_s64(v90[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v89))), v87);
    }

    v74 = v84;
  }

  else
  {
    v29 = 1;
    v87 = 0uLL;
  }

  v200[1] = v9;
  v200[2] = v8;
  v200[3] = v7;
  v200[4] = v6;
  v91 = vandq_s8(v47, xmmword_29D2F0D50);
  v92 = vmovl_u8(*&vpaddq_s8(v77, v77));
  v93 = vmovl_u16(*&vpaddq_s16(v92, v92));
  v94 = vpaddq_s32(v93, v93).u64[0];
  v95.i64[0] = v94;
  v95.i64[1] = HIDWORD(v94);
  v96 = v95;
  v97 = vaddvq_s64(v95);
  if (v97 >= 0x81)
  {
    v29 = 1;
  }

  else
  {
    v98 = vzip1_s32(*v93.i8, *&vextq_s8(v93, v93, 8uLL));
    v99.i64[0] = v98.u32[0];
    v99.i64[1] = v98.u32[1];
    v100 = v99;
    v101 = *&v92 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v102 = v97 + v74;
    if (v14 >= v97 + v74)
    {
      v104 = v74 & 0x3F;
      v105 = vaddq_s64(vzip1q_s64(0, v96), vdupq_n_s64(v104));
      v106 = (v11 + 8 * (v74 >> 6));
      v103 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v106, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v105)), vshlq_u64(vdupq_lane_s64(v106->i64[0], 0), vnegq_s64(v105)));
      if (v97 + v104 >= 0x81)
      {
        v103 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v106[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v105)), vshlq_u64(vdupq_laneq_s64(v106[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v105))), v103);
      }

      v74 = v102;
    }

    else
    {
      v103 = 0uLL;
      v29 = 1;
    }

    v107 = vshlq_u64(v103, vnegq_s64(v100));
    v108 = vuzp1q_s32(vzip1q_s64(v103, v107), vzip2q_s64(v103, v107));
    v109 = vshlq_u32(v108, vnegq_s32(v101));
    v110 = vuzp1q_s16(vzip1q_s32(v108, v109), vzip2q_s32(v108, v109));
    v111 = vshlq_u16(v110, vnegq_s16((*&v77 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v85 = vuzp1q_s8(vzip1q_s16(v110, v111), vzip2q_s16(v110, v111));
  }

  v112 = vandq_s8(v48, xmmword_29D2F0D50);
  v113 = vmovl_u8(*&vpaddq_s8(v91, v91));
  v114 = vmovl_u16(*&vpaddq_s16(v113, v113));
  v115 = vpaddq_s32(v114, v114).u64[0];
  v116.i64[0] = v115;
  v116.i64[1] = HIDWORD(v115);
  v117 = v116;
  v118 = vaddvq_s64(v116);
  if (v118 >= 0x81)
  {
    v29 = 1;
    v125 = 0uLL;
  }

  else
  {
    v119 = vzip1_s32(*v114.i8, *&vextq_s8(v114, v114, 8uLL));
    v120.i64[0] = v119.u32[0];
    v120.i64[1] = v119.u32[1];
    v121 = v120;
    v122 = *&v113 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v123 = v118 + v74;
    if (v14 >= v118 + v74)
    {
      v126 = v74 & 0x3F;
      v127 = vaddq_s64(vzip1q_s64(0, v117), vdupq_n_s64(v126));
      v128 = (v11 + 8 * (v74 >> 6));
      v124 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v128, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v127)), vshlq_u64(vdupq_lane_s64(v128->i64[0], 0), vnegq_s64(v127)));
      if (v118 + v126 >= 0x81)
      {
        v124 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v128[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v127)), vshlq_u64(vdupq_laneq_s64(v128[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v127))), v124);
      }

      v74 = v123;
    }

    else
    {
      v124 = 0uLL;
      v29 = 1;
    }

    v129 = vshlq_u64(v124, vnegq_s64(v121));
    v130 = vuzp1q_s32(vzip1q_s64(v124, v129), vzip2q_s64(v124, v129));
    v131 = vshlq_u32(v130, vnegq_s32(v122));
    v132 = vuzp1q_s16(vzip1q_s32(v130, v131), vzip2q_s32(v130, v131));
    v133 = vshlq_u16(v132, vnegq_s16((*&v91 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v125 = vuzp1q_s8(vzip1q_s16(v132, v133), vzip2q_s16(v132, v133));
  }

  v134 = vmovl_u8(*&vpaddq_s8(v112, v112));
  v135 = vmovl_u16(*&vpaddq_s16(v134, v134));
  v136 = vpaddq_s32(v135, v135).u64[0];
  v137.i64[0] = v136;
  v137.i64[1] = HIDWORD(v136);
  v138 = v137;
  v139 = vaddvq_s64(v137);
  if (v139 >= 0x81 || v14 < v139 + v74)
  {
    goto LABEL_66;
  }

  v140 = vaddq_s64(vzip1q_s64(0, v138), vdupq_n_s64(v74 & 0x3F));
  v141 = (v11 + 8 * (v74 >> 6));
  v142 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
  if (v139 + (v74 & 0x3F) >= 0x81)
  {
    v142 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v142);
  }

  if ((v29 & 1) != 0 || (v143 = (a4 & 0x1F) + 1, 8 * ((a3 & 7) + v143) - (v139 + v74) >= 9))
  {
LABEL_66:
    v143 = 0;
    v200[0] |= 255 << (8 * ((v200 + 7) & 7u));
    a1->i32[0] = 0;
    *(a1->i32 + a2) = 0;
  }

  else
  {
    v145 = vzip1_s32(*v57.i8, *&vextq_s8(v57, v57, 8uLL));
    v146 = vzip1_s32(*v79.i8, *&vextq_s8(v79, v79, 8uLL));
    v147.i64[0] = v145.u32[0];
    v147.i64[1] = v145.u32[1];
    v148 = v147;
    v147.i64[0] = v146.u32[0];
    v147.i64[1] = v146.u32[1];
    v149 = vshlq_u64(v54, vnegq_s64(v148));
    v150 = vshlq_u64(v87, vnegq_s64(v147));
    v151 = vuzp1q_s32(vzip1q_s64(v54, v149), vzip2q_s64(v54, v149));
    v152 = vuzp1q_s32(vzip1q_s64(v87, v150), vzip2q_s64(v87, v150));
    v153 = vshlq_u32(v151, vnegq_s32((*&v56 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v154 = vshlq_u32(v152, vnegq_s32((*&v78 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v155 = vuzp1q_s16(vzip1q_s32(v151, v153), vzip2q_s32(v151, v153));
    v156 = vuzp1q_s16(vzip1q_s32(v152, v154), vzip2q_s32(v152, v154));
    v157 = vshlq_u16(v155, vnegq_s16((*&v55 & __PAIR128__(0xF0FFF0FFF0FFF0FFLL, 0xF0FFF0FFF0FFF0FFLL))));
    v158 = vshlq_u16(v156, vnegq_s16((*&v67 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF0000))));
    v159 = vzip2q_s16(v155, v157);
    v160 = vzip1q_s16(v155, v157);
    v157.i64[0] = 0x808080808080808;
    v157.i64[1] = 0x808080808080808;
    v161 = vzip2q_s16(v156, v158);
    v162 = vzip1q_s16(v156, v158);
    v158.i64[0] = 0x808080808080808;
    v158.i64[1] = 0x808080808080808;
    v163 = v13 >> 4;
    v164 = vuzp1q_s8(v160, v159);
    v159.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v159.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v165 = vuzp1q_s8(v162, v161);
    v161.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v161.i64[1] = 0xF8F8F8F8F8F8F8F8;
    *v150.i8 = vzip1_s32(*v135.i8, *&vextq_s8(v135, v135, 8uLL));
    v166.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v166.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v167.i64[0] = 0x808080808080808;
    v167.i64[1] = 0x808080808080808;
    v168 = vshlq_s8(v164, vsubq_s8(v157, v55));
    v169 = vaddq_s8(v67, v161);
    v170 = vshlq_s8(v165, vsubq_s8(v158, v67));
    v147.i64[0] = v150.u32[0];
    v147.i64[1] = v150.u32[1];
    v171 = vshlq_s8(v168, vaddq_s8(v55, v159));
    v172 = vshlq_s8(v170, v169);
    v173 = vshlq_s8(vshlq_s8(v85, vsubq_s8(v158, v77)), vaddq_s8(v77, v161));
    v174 = vshlq_s8(vshlq_s8(v125, vsubq_s8(v158, v91)), vaddq_s8(v91, v161));
    v175 = vshlq_u64(v142, vnegq_s64(v147));
    v176 = vuzp1q_s32(vzip1q_s64(v142, v175), vzip2q_s64(v142, v175));
    v177 = vshlq_u32(v176, vnegq_s32((*&v134 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v178 = vuzp1q_s16(vzip1q_s32(v176, v177), vzip2q_s32(v176, v177));
    v179 = vshlq_u16(v178, vnegq_s16((*&v112 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v180 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v178, v179), vzip2q_s16(v178, v179)), vsubq_s8(v167, v112)), vaddq_s8(v112, v166));
    if (v68 == 2)
    {
      v181.i64[0] = 0xFFFF0000FFFF0000;
      v181.i64[1] = 0xFFFF0000FFFF0000;
      v182 = vmlaq_s8(vandq_s8(vdupq_n_s8(v73), v181), vdupq_n_s8(v70), xmmword_29D2F0D60);
      v172 = vaddq_s8(v172, v182);
      v173 = vaddq_s8(vaddq_s8(vdupq_n_s8(2 * v73), v182), v173);
      v174 = vaddq_s8(vaddq_s8(vdupq_n_s8(4 * v70), v182), v174);
      v180 = vaddq_s8(vaddq_s8(vdupq_n_s8(4 * v70 + 2 * v73), v182), v180);
    }

    v183.i64[0] = vdupq_n_s8(v163).u64[0];
    v184 = vaddq_s8(vandq_s8(v171, v49), v172);
    v185 = vdupq_lane_s8(*v171.i8, 0);
    v186 = vsubq_s8(v184, vandq_s8(v185, v49));
    v187 = vsubq_s8(v173, vandq_s8(v185, v50));
    v188 = vsubq_s8(v174, vandq_s8(v185, v51));
    v189 = vsubq_s8(v180, vandq_s8(v185, v52));
    v190.i64[0] = 0x101010101010101;
    v190.i64[1] = 0x101010101010101;
    if (vaddlvq_s8(vceqq_s8(v19, v190)))
    {
      v191 = vandq_s8(v16, v190);
      v192 = vnegq_s8(v191);
      v193 = v186;
      v193.i8[0] = v186.i8[7];
      v193.i8[7] = v186.i8[0];
      v194 = vorrq_s8(vandq_s8(v193, v192), vandq_s8(v186, vceqzq_s8(v191)));
      v195 = vaddq_s8(vandq_s8(vqtbl1q_s8(v194, xmmword_29D2F0D70), v192), v194);
      v186.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v195, xmmword_29D2F0D80), v192), v195).u64[0];
      v196 = vaddq_s8(vandq_s8(vqtbl1q_s8(v187, xmmword_29D2F0D90), v192), v187);
      v187.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v196, xmmword_29D2F0DA0), v192), v196).u64[0];
      v197 = vaddq_s8(vandq_s8(vqtbl1q_s8(v188, xmmword_29D2F0DB0), v192), v188);
      v188.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v197, xmmword_29D2F0DC0), v192), v197).u64[0];
      v198 = vaddq_s8(vandq_s8(vqtbl1q_s8(v189, xmmword_29D2F0DD0), v192), v189);
      v189.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v198, xmmword_29D2F0DE0), v192), v198).u64[0];
    }

    v186.i64[1] = v183.i64[0];
    v199.i64[0] = v183.i64[0];
    v199.i64[1] = v188.i64[0];
    v187.i64[1] = v189.i64[0];
    *a1 = vaddq_s8(v199, v186);
    v183.i64[1] = v183.i64[0];
    *(a1 + a2) = vaddq_s8(v187, v183);
  }

  return v143;
}

int8x16_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(int8x16_t *a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  v24 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v22, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, v22.i32, a5);
  }

  v20 = v22;
  v21 = v23;
  v10 = a3 + 4;
  if ((a4 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v10, &v22, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v10, v22.i32, a5);
  }

  v18 = v22;
  v19 = v23;
  v11 = a3 + 8;
  if ((a4 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v11, &v22, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v11, v22.i32, a5);
  }

  v16 = v22;
  v17 = v23;
  v12 = a3 + 12;
  if ((a4 & 8) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v12, &v22, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v12, v22.i32, a5);
  }

  v13 = v23;
  v14 = v22;
  *a1 = vuzp1q_s8(vuzp1q_s16(v20, v21), vuzp1q_s16(v16, v17));
  result = vuzp1q_s8(vuzp1q_s16(v18, v19), vuzp1q_s16(v14, v13));
  *(a1 + a2) = result;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7, int8x8_t a8, double a9, int8x8_t a10)
{
  v11 = a6;
  v12 = a5;
  v14 = a3;
  v16 = result;
  if (a5 && a6)
  {
    if (a6 >= 2)
    {
      a6 = 2;
    }

    if (a5 >= 4)
    {
      a5 = 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7, a8, a9, a10);
    v14 += result;
  }

  else
  {
    *a4 = 0;
  }

  v17 = 2 * a2;
  v18 = v11 - 2;
  if (v12 && v11 >= 3)
  {
    if (v18 >= 2)
    {
      v19 = 2;
    }

    else
    {
      v19 = v11 - 2;
    }

    if (v12 >= 4)
    {
      v20 = 4;
    }

    else
    {
      v20 = v12;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v14, a4 + 1, (v16 + v17), a2, v20, v19, a7, a8, a9, a10);
    v14 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v21 = v12 - 4;
  if (v12 >= 5 && v11)
  {
    if (v11 >= 2)
    {
      v22 = 2;
    }

    else
    {
      v22 = v11;
    }

    if (v21 >= 4)
    {
      v23 = 4;
    }

    else
    {
      v23 = v12 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v14, a4 + 2, v16 + 2, a2, v23, v22, a7, a8, a9, a10);
    v14 += result;
  }

  else
  {
    a4[2] = 0;
    if (v12 < 5)
    {
      goto LABEL_37;
    }
  }

  if (v11 >= 3)
  {
    if (v18 >= 2)
    {
      v24 = 2;
    }

    else
    {
      v24 = v11 - 2;
    }

    if (v21 >= 4)
    {
      v25 = 4;
    }

    else
    {
      v25 = v12 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v14, a4 + 3, (v16 + v17 + 16), a2, v25, v24, a7, a8, a9, a10);
    v14 += result;
    v26 = v11 - 4;
    goto LABEL_38;
  }

LABEL_37:
  a4[3] = 0;
  v26 = v11 - 4;
  if (!v12)
  {
    goto LABEL_46;
  }

LABEL_38:
  if (v11 < 5)
  {
LABEL_46:
    a4[4] = 0;
    v29 = v11 - 6;
    if (!v12)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

  if (v26 >= 2)
  {
    v27 = 2;
  }

  else
  {
    v27 = v26;
  }

  if (v12 >= 4)
  {
    v28 = 4;
  }

  else
  {
    v28 = v12;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v14, a4 + 4, (v16 + 4 * a2), a2, v28, v27, a7, a8, a9, a10);
  v14 += result;
  v29 = v11 - 6;
LABEL_47:
  if (v11 >= 7)
  {
    if (v29 >= 2)
    {
      v30 = 2;
    }

    else
    {
      v30 = v29;
    }

    if (v12 >= 4)
    {
      v31 = 4;
    }

    else
    {
      v31 = v12;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v14, a4 + 5, (v16 + 6 * a2), a2, v31, v30, a7, a8, a9, a10);
    v14 += result;
    if (v12 < 5)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

LABEL_56:
  a4[5] = 0;
  if (v12 < 5)
  {
    goto LABEL_65;
  }

LABEL_57:
  if (v11 >= 5)
  {
    if (v26 >= 2)
    {
      v32 = 2;
    }

    else
    {
      v32 = v26;
    }

    if (v21 >= 4)
    {
      v33 = 4;
    }

    else
    {
      v33 = v12 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v14, a4 + 6, (v16 + 4 * a2 + 16), a2, v33, v32, a7, a8, a9, a10);
    v14 += result;
    goto LABEL_66;
  }

LABEL_65:
  a4[6] = 0;
  if (v12 < 5)
  {
LABEL_76:
    a4[7] = 0;
    return result;
  }

LABEL_66:
  if (v11 < 7)
  {
    goto LABEL_76;
  }

  if (v29 >= 2)
  {
    v34 = 2;
  }

  else
  {
    v34 = v29;
  }

  if (v21 >= 4)
  {
    v35 = 4;
  }

  else
  {
    v35 = v12 - 4;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v14, a4 + 7, (v16 + 6 * a2 + 16), a2, v35, v34, a7, a8, a9, a10);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, int8x8_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, int8x8_t a8, double a9, int8x8_t a10)
{
  v14 = *a3;
  *v16.i8 = a3[1];
  *v17.i8 = *(a3 + a4);
  *v18.i8 = *(&a3[1] + a4);
  *v15.i8 = *a3;
  v15.u64[1] = *a3;
  v16.i64[1] = v16.i64[0];
  v17.i64[1] = v17.i64[0];
  v18.i64[1] = v18.i64[0];
  v19 = vdupq_lane_s8(*a3, 0);
  v20 = vsubq_s8(v15, v19);
  v21 = vsubq_s8(v16, v19);
  v22 = vsubq_s8(v17, v19);
  a8.i8[0] = vmaxvq_s8(v20);
  a10.i8[0] = vminvq_s8(v20);
  v23 = vdupq_lane_s8(a8, 0);
  v24 = vdupq_lane_s8(a10, 0);
  v25 = vsubq_s8(v18, v19);
  v26 = vzip1q_s8(v23, v24);
  v27.i64[0] = 0x808080808080808;
  v27.i64[1] = 0x808080808080808;
  v28 = vbicq_s8(vsubq_s8(v27, vclsq_s8(v26)), vceqzq_s8(v26));
  v29 = vpmaxq_s8(v28, v28);
  v28.i8[0] = vmaxvq_s8(v21);
  v10.i8[0] = vminvq_s8(v21);
  v30 = vdupq_lane_s8(*v28.i8, 0);
  v31 = vdupq_lane_s8(v10, 0);
  v32 = vmaxq_s8(v23, v30);
  v33 = vminq_s8(v24, v31);
  v34 = vzip1q_s8(v30, v31);
  v35 = vbicq_s8(vsubq_s8(v27, vclsq_s8(v34)), vceqzq_s8(v34));
  v36 = vpmaxq_s8(v35, v35);
  v35.i8[0] = vmaxvq_s8(v22);
  v11.i8[0] = vminvq_s8(v22);
  v37 = vdupq_lane_s8(*v35.i8, 0);
  v38 = vdupq_lane_s8(v11, 0);
  v39 = vmaxq_s8(v32, v37);
  v40 = vminq_s8(v33, v38);
  v41 = vzip1q_s8(v37, v38);
  v42 = vbicq_s8(vsubq_s8(v27, vclsq_s8(v41)), vceqzq_s8(v41));
  v43 = vpmaxq_s8(v42, v42);
  v42.i8[0] = vmaxvq_s8(v25);
  v12.i8[0] = vminvq_s8(v25);
  v44 = vdupq_lane_s8(*v42.i8, 0);
  v45 = vdupq_lane_s8(v12, 0);
  v46 = vmaxq_s8(v39, v44);
  v47 = vminq_s8(v40, v45);
  v48 = vzip1q_s8(v44, v45);
  v49 = vbicq_s8(vsubq_s8(v27, vclsq_s8(v48)), vceqzq_s8(v48));
  v50 = vpmaxq_s8(v49, v49);
  v51 = vmaxq_s8(vmaxq_s8(v29, v36), vmaxq_s8(v43, v50));
  v52 = vclzq_s8(vsubq_s8(v46, v47));
  v53 = vsubq_s8(v27, v52);
  v54 = vminq_s8(v53, v51);
  if (vmaxvq_s8(v54))
  {
    v55 = 0;
    v56 = 0;
    v57.i64[0] = -1;
    v57.i64[1] = -1;
    v58.i64[0] = 0x707070707070707;
    v58.i64[1] = 0x707070707070707;
    v59 = vcgtq_s8(v51, v53);
    v60 = vandq_s8(vsubq_s8(vshlq_s8(v57, vsubq_s8(v58, v52)), v47), v59);
    v61.i64[0] = 0x303030303030303;
    v61.i64[1] = 0x303030303030303;
    v62 = vmaxq_s8(vminq_s8(vsubq_s8(v54, v29), v61), 0);
    v63 = vmaxq_s8(vminq_s8(vsubq_s8(v54, v36), v61), 0);
    v64 = vmaxq_s8(vminq_s8(vsubq_s8(v54, v43), v61), 0);
    v65 = vmaxq_s8(vminq_s8(vsubq_s8(v54, v50), v61), 0);
    v66 = vsubq_s8(v54, v62);
    v67 = vsubq_s8(v54, v63);
    v68 = vsubq_s8(v54, v64);
    v69 = vsubq_s8(v54, v65);
    v70 = vceqq_s8(vaddq_s8(v65, v64), vnegq_s8(vaddq_s8(v62, v63)));
    v65.i64[0] = 0x404040404040404;
    v65.i64[1] = 0x404040404040404;
    v71 = vorrq_s8(vbicq_s8(v65, v70), vorrq_s8(vandq_s8(vceqzq_s8(v54), v61), vandq_s8(v59, v27)));
    if (a5 && a6)
    {
      v365 = v60;
      v72 = v14.u8[1] - v14.u8[0];
      v73 = v72 << 28 >> 28;
      v74 = v14.u8[2] - v14.u8[0];
      v75.i64[0] = 0xFFFF0000FFFF0000;
      v75.i64[1] = 0xFFFF0000FFFF0000;
      v76 = vmlaq_s8(vandq_s8(vdupq_n_s8(v74 << 28 >> 28), v75), vdupq_n_s8(v73), xmmword_29D2F0D60);
      v77 = vsubq_s8(v20, v76);
      v78 = v74 << 28 >> 27;
      v79 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v78), v21), v76);
      v80 = v72 << 28 >> 26;
      v360 = v25;
      v361 = v22;
      v81 = vsubq_s8(vaddq_s8(vdupq_n_s8(-v80), v22), v76);
      v82 = vaddq_s8(vdupq_n_s8(-(v78 + v80)), v25);
      v83 = vsubq_s8(v82, v76);
      v82.i8[0] = vmaxvq_s8(v77);
      v76.i8[0] = vminvq_s8(v77);
      v84 = vdupq_lane_s8(*v82.i8, 0);
      v85 = vdupq_lane_s8(*v76.i8, 0);
      v86 = vzip1q_s8(v84, v85);
      v87.i64[0] = 0x808080808080808;
      v87.i64[1] = 0x808080808080808;
      v88 = v21;
      v89 = v67;
      v90 = v68;
      v91 = vceqzq_s8(v86);
      v92 = vbicq_s8(vsubq_s8(v87, vclsq_s8(v86)), v91);
      v93 = vpmaxq_s8(v92, v92);
      v91.i8[0] = vmaxvq_s8(v79);
      v64.i8[0] = vminvq_s8(v79);
      v94 = vdupq_lane_s8(*v91.i8, 0);
      v95 = vdupq_lane_s8(*v64.i8, 0);
      v96 = vmaxq_s8(v84, v94);
      v97 = vminq_s8(v85, v95);
      v98 = vzip1q_s8(v94, v95);
      v99 = vsubq_s8(v87, vclsq_s8(v98));
      v100 = vbicq_s8(v99, vceqzq_s8(v98));
      v101 = vpmaxq_s8(v100, v100);
      v99.i8[0] = vmaxvq_s8(v81);
      v58.i8[0] = vminvq_s8(v81);
      v102 = vdupq_lane_s8(*v99.i8, 0);
      v103 = vdupq_lane_s8(*v58.i8, 0);
      v104 = vmaxq_s8(v96, v102);
      v105 = vminq_s8(v97, v103);
      v106 = vzip1q_s8(v102, v103);
      v107 = vbicq_s8(vsubq_s8(v87, vclsq_s8(v106)), vceqzq_s8(v106));
      v108 = vpmaxq_s8(v107, v107);
      v107.i8[0] = vmaxvq_s8(v83);
      v13.i8[0] = vminvq_s8(v83);
      v109 = vdupq_lane_s8(*v107.i8, 0);
      v110 = vdupq_lane_s8(v13, 0);
      v111 = vminq_s8(v105, v110);
      v112 = vzip1q_s8(v109, v110);
      v113 = vbicq_s8(vsubq_s8(v87, vclsq_s8(v112)), vceqzq_s8(v112));
      v114 = vpmaxq_s8(v113, v113);
      v115 = vmaxq_s8(vmaxq_s8(v93, v101), vmaxq_s8(v108, v114));
      v116 = vclzq_s8(vsubq_s8(vmaxq_s8(v104, v109), v111));
      v117 = vsubq_s8(v87, v116);
      v118 = vcgtq_s8(v115, v117);
      v119 = vminq_s8(v117, v115);
      v87.i64[0] = 0x202020202020202;
      v87.i64[1] = 0x202020202020202;
      v115.i64[0] = 0xA0A0A0A0A0A0A0ALL;
      v115.i64[1] = 0xA0A0A0A0A0A0A0ALL;
      v120 = vbslq_s8(v118, v115, v87);
      v115.i64[0] = 0x101010101010101;
      v115.i64[1] = 0x101010101010101;
      v121 = v69;
      v122 = vmaxq_s8(v119, v115);
      v123 = vsubq_s8(v122, v93);
      v93.i64[0] = 0x303030303030303;
      v93.i64[1] = 0x303030303030303;
      v124 = vmaxq_s8(vminq_s8(v123, v93), 0);
      v125 = vmaxq_s8(vminq_s8(vsubq_s8(v122, v101), v93), 0);
      v126 = vmaxq_s8(vminq_s8(vsubq_s8(v122, v108), v93), 0);
      v127 = vmaxq_s8(vminq_s8(vsubq_s8(v122, v114), v93), 0);
      v128 = vsubq_s8(v122, v124);
      v129 = vsubq_s8(v122, v125);
      v130 = vsubq_s8(v122, v126);
      v131 = vsubq_s8(v122, v127);
      v132 = vceqq_s8(vaddq_s8(v127, v126), vnegq_s8(vaddq_s8(v124, v125)));
      v126.i64[0] = 0x404040404040404;
      v126.i64[1] = 0x404040404040404;
      v133 = vorrq_s8(vbicq_s8(v126, v132), v120);
      v134.i64[0] = 0x8000800080008;
      v134.i64[1] = 0x8000800080008;
      v366 = vshll_n_s8(vadd_s8(vadd_s8(*v90.i8, *v89.i8), *v121.i8), 3uLL);
      v93.i64[0] = 0x2000200020002;
      v93.i64[1] = 0x2000200020002;
      v135 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddw_s8(vmlal_s8(v366, *v66.i8, 0x707070707070707), vbic_s8(*v54.i8, vcgt_u8(0x808080808080808, *v71.i8))), (*&vshll_n_u8(*v71.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9))), vandq_s8(vceqq_s16((*&vmovl_u8(*v71.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v93), v134)), vaddq_s16(vaddw_u8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v130.i8, *v129.i8), *v131.i8), 3uLL), *v128.i8, 0x707070707070707), vand_s8(vadd_s8(*v133.i8, *v133.i8), 0x808080808080808)), vbic_s8(*v122.i8, vcgt_u8(0x808080808080808, *v133.i8))), v134))), 0);
      v126.i16[0] = vaddlvq_s8(v135);
      v136 = v73 & 0xF | (16 * v74);
      v137 = v126.u16[0];
      if (v126.i16[0])
      {
        v138.i64[0] = 0x707070707070707;
        v138.i64[1] = 0x707070707070707;
        v139.i64[0] = -1;
        v139.i64[1] = -1;
        v362 = vbslq_s8(v135, v77, v20);
        v363 = vbslq_s8(v135, v79, v88);
        v22 = vbslq_s8(v135, v81, v361);
        v25 = vbslq_s8(v135, v83, v360);
        v66 = vbslq_s8(v135, v128, v66);
        v89 = vbslq_s8(v135, v129, v89);
        v121 = vbslq_s8(v135, v131, v121);
        v60 = vbslq_s8(v135, vandq_s8(vsubq_s8(vshlq_s8(v139, vsubq_s8(v138, v116)), v111), v118), v365);
        v54 = vbslq_s8(v135, v122, v54);
        v71 = vbslq_s8(v135, v133, v71);
        v140 = vmull_s8(*v66.i8, 0x707070707070707);
        v364 = vbslq_s8(v135, v130, v90);
        v366 = vshll_n_s8(vadd_s8(vadd_s8(*v364.i8, *v89.i8), *v121.i8), 3uLL);
      }

      else
      {
        v362 = v20;
        v363 = v88;
        v364 = v90;
        v140 = vmull_s8(*v66.i8, 0x707070707070707);
        v25 = v360;
        v22 = v361;
        v60 = v365;
      }

      v69 = v121;
      v67 = v89;
      v56 = v136;
      v142 = vsubq_s8(v15, vqtbl1q_s8(v15, xmmword_29D2F0DF0));
      v143 = v16;
      v143.i8[7] = v15.i8[7];
      v144 = vsubq_s8(v16, vqtbl1q_s8(v143, xmmword_29D2F0E00));
      v145 = v17;
      v145.i8[7] = v15.i8[7];
      v146 = vsubq_s8(v17, vqtbl1q_s8(v145, xmmword_29D2F0E10));
      v147 = v18;
      v147.i8[7] = v15.i8[7];
      v148 = vqtbl1q_s8(v147, xmmword_29D2F0E20);
      v149 = vsubq_s8(v18, v148);
      v150 = v142;
      v150.i8[0] = v142.i8[7];
      v150.i8[7] = v142.i8[0];
      v142.i8[0] = vmaxvq_s8(v150);
      v148.i8[0] = vminvq_s8(v150);
      v151 = vdupq_lane_s8(*v142.i8, 0);
      v152 = vdupq_lane_s8(*v148.i8, 0);
      v153 = vzip1q_s8(v151, v152);
      v154.i64[0] = 0x808080808080808;
      v154.i64[1] = 0x808080808080808;
      v155 = vbicq_s8(vsubq_s8(v154, vclsq_s8(v153)), vceqzq_s8(v153));
      v156 = vpmaxq_s8(v155, v155);
      v155.i8[0] = vmaxvq_s8(v144);
      v130.i8[0] = vminvq_s8(v144);
      v157 = vdupq_lane_s8(*v155.i8, 0);
      v158 = vdupq_lane_s8(*v130.i8, 0);
      v159 = vmaxq_s8(v151, v157);
      v160 = vminq_s8(v152, v158);
      v161 = vzip1q_s8(v157, v158);
      v162 = vsubq_s8(v154, vclsq_s8(v161));
      v163 = vbicq_s8(v162, vceqzq_s8(v161));
      v164 = vpmaxq_s8(v163, v163);
      v163.i8[0] = vmaxvq_s8(v146);
      v162.i8[0] = vminvq_s8(v146);
      v165 = vdupq_lane_s8(*v163.i8, 0);
      v166 = vdupq_lane_s8(*v162.i8, 0);
      v167 = vmaxq_s8(v159, v165);
      v168 = vminq_s8(v160, v166);
      v169 = vzip1q_s8(v165, v166);
      v170 = vsubq_s8(v154, vclsq_s8(v169));
      v171 = vbicq_s8(v170, vceqzq_s8(v169));
      v172 = vpmaxq_s8(v171, v171);
      v171.i8[0] = vmaxvq_s8(v149);
      v170.i8[0] = vminvq_s8(v149);
      v173 = vdupq_lane_s8(*v171.i8, 0);
      v174 = vdupq_lane_s8(*v170.i8, 0);
      v175 = vminq_s8(v168, v174);
      v176 = vzip1q_s8(v173, v174);
      v177 = vbicq_s8(vsubq_s8(v154, vclsq_s8(v176)), vceqzq_s8(v176));
      v178 = vpmaxq_s8(v177, v177);
      v179 = vmaxq_s8(vmaxq_s8(v156, v164), vmaxq_s8(v172, v178));
      v180 = vclzq_s8(vsubq_s8(vmaxq_s8(v167, v173), v175));
      v181 = vsubq_s8(v154, v180);
      v182 = vcgtq_s8(v179, v181);
      v183 = vminq_s8(v181, v179);
      v181.i64[0] = 0x909090909090909;
      v181.i64[1] = 0x909090909090909;
      v184.i64[0] = 0x202020202020202;
      v184.i64[1] = 0x202020202020202;
      v185 = vorrq_s8(vandq_s8(vceqzq_s8(v183), v184), vsubq_s8(vandq_s8(v182, v181), vmvnq_s8(v182)));
      v184.i64[0] = 0x303030303030303;
      v184.i64[1] = 0x303030303030303;
      v186 = vmaxq_s8(vminq_s8(vsubq_s8(v183, v156), v184), 0);
      v187 = vmaxq_s8(vminq_s8(vsubq_s8(v183, v164), v184), 0);
      v188 = vmaxq_s8(vminq_s8(vsubq_s8(v183, v172), v184), 0);
      v189 = vmaxq_s8(vminq_s8(vsubq_s8(v183, v178), v184), 0);
      v190 = vsubq_s8(v183, v186);
      v191 = vsubq_s8(v183, v187);
      v192 = vsubq_s8(v183, v188);
      v193 = vsubq_s8(v183, v189);
      v184.i64[0] = 0x404040404040404;
      v184.i64[1] = 0x404040404040404;
      v194 = vorrq_s8(v185, vbicq_s8(v184, vceqq_s8(vaddq_s8(v189, v188), vnegq_s8(vaddq_s8(v186, v187)))));
      v188.i64[0] = 0x3000300030003;
      v188.i64[1] = 0x3000300030003;
      v195 = vmovl_s8(*v71.i8);
      v184.i64[0] = 0x8000800080008;
      v184.i64[1] = 0x8000800080008;
      v154.i64[0] = 0x2000200020002;
      v154.i64[1] = 0x2000200020002;
      v196 = vdupq_lane_s8(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(vbicq_s8(vmovl_s8(*v54.i8), vceqzq_s16(vandq_s8(v195, v184))), vandq_s8(vshll_n_s8(*v71.i8, 1uLL), v184)), vaddq_s16(vandq_s8(vceqq_s16(vandq_s8(v195, v188), v154), v184), v140)), v366), vaddw_s8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v192.i8, *v191.i8), *v193.i8), 3uLL), *v190.i8, 0x707070707070707), vand_s8(vadd_s8(*v194.i8, *v194.i8), 0x808080808080808)), vbic_s8(*v183.i8, vcgt_u8(0x808080808080808, *v194.i8))))), 0);
      v185.i16[0] = vaddlvq_s8(v196);
      v197 = v185.u16[0];
      if (v185.i16[0])
      {
        v198.i64[0] = 0x707070707070707;
        v198.i64[1] = 0x707070707070707;
        v199.i64[0] = -1;
        v199.i64[1] = -1;
        v200 = vandq_s8(vsubq_s8(vshlq_s8(v199, vsubq_s8(v198, v180)), v175), v182);
        v19.i8[0] = vbslq_s8(v196, vextq_s8(v15, v15, 0xFuLL), v19).u8[0];
        v20 = vbslq_s8(v196, v150, v362);
        v21 = vbslq_s8(v196, v144, v363);
        v22 = vbslq_s8(v196, v146, v22);
        v25 = vbslq_s8(v196, v149, v25);
        v66 = vbslq_s8(v196, v190, v66);
        v67 = vbslq_s8(v196, v191, v67);
        v68 = vbslq_s8(v196, v192, v364);
        v69 = vbslq_s8(v196, v193, v69);
        v60 = vbslq_s8(v196, v200, v60);
        v54 = vbslq_s8(v196, v183, v54);
        v71 = vbslq_s8(v196, v194, v71);
      }

      else
      {
        v21 = v363;
        v68 = v364;
        v20 = v362;
      }

      if (v137)
      {
        v201 = v197 == 0;
      }

      else
      {
        v201 = 0;
      }

      v55 = v201;
    }

    v202 = vmovl_s8(*v71.i8);
    v203.i64[0] = 0x8000800080008;
    v203.i64[1] = 0x8000800080008;
    v204.i64[0] = 0x3000300030003;
    v204.i64[1] = 0x3000300030003;
    v205.i64[0] = 0x2000200020002;
    v205.i64[1] = 0x2000200020002;
    if (((7 * v66.i8[0] + 8 * vaddq_s8(vaddq_s8(v68, v67), v69).i8[0] + ((2 * v202.i16[0]) & 8) + vbicq_s8(vmovl_s8(*v54.i8), vceqzq_s16(vandq_s8(v202, v203))).u16[0] + vandq_s8(vceqq_s16(vandq_s8(v202, v204), v205), v203).u16[0]) - 117) <= 0xFFFFFFFFFFFFFF77)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 16;
    }

    else
    {
      v206 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v207 = 8 * (a1 & 7);
      if (v207)
      {
        v208 = *v206 & ~(-1 << v207);
      }

      else
      {
        v208 = 0;
      }

      v209 = vextq_s8(v66, 0, 8uLL);
      v210 = vextq_s8(v67, 0, 8uLL);
      v211 = vextq_s8(v68, 0, 8uLL);
      v212 = vextq_s8(v69, 0, 8uLL);
      if (v54.i8[0])
      {
        v213 = (16 * v54.i8[0] + 112) & 0x70;
      }

      else
      {
        v213 = 0;
      }

      *a2 = 32 * v71.i8[0];
      v214 = (v71.i8[0] & 8 | v213 & 0xFFFF807F | (v19.u8[0] << 7)) >> 3;
      v215 = (v214 << v207) | v208;
      if (v207 >= 0x34)
      {
        *v206 = v215;
        v215 = v214 >> (-8 * (a1 & 7u));
      }

      v216 = v207 + 12;
      v217.i64[0] = 0x202020202020202;
      v217.i64[1] = 0x202020202020202;
      v218 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*&vmovl_u8(*v71.i8), 0x4000400040004)))), v217);
      v217.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v217.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v219.i64[0] = -1;
      v219.i64[1] = -1;
      v220 = vandq_s8(vshlq_u8(v219, vorrq_s8(v218, v217)), vzip1q_s16(vzip1q_s8(vsubq_s8(v54, v209), vsubq_s8(v54, v210)), vzip1q_s8(vsubq_s8(v54, v211), vsubq_s8(v54, v212))).u32[0]);
      v221 = vmovl_u8(*v218.i8);
      v222 = vpaddq_s16(vshlq_u16(vmovl_u8(*v220.i8), vtrn1q_s16(0, v221)), vmovl_high_u8(v220));
      v223 = vpaddq_s16(v221, vmovl_high_u8(v218));
      v224 = vmovl_u16(*v223.i8);
      v225 = vmovl_high_u16(v223);
      v226 = vpaddq_s32(vshlq_u32(vmovl_u16(*v222.i8), vtrn1q_s32(0, v224)), vshlq_u32(vmovl_high_u16(v222), vtrn1q_s32(0, v225)));
      v227 = vpaddq_s32(v224, v225);
      v228.i64[0] = v226.u32[0];
      v228.i64[1] = v226.u32[1];
      v229 = v228;
      v228.i64[0] = v226.u32[2];
      v228.i64[1] = v226.u32[3];
      v230 = v228;
      v228.i64[0] = v227.u32[0];
      v228.i64[1] = v227.u32[1];
      v231 = v228;
      v228.i64[0] = v227.u32[2];
      v228.i64[1] = v227.u32[3];
      v232 = vpaddq_s64(vshlq_u64(v229, vzip1q_s64(0, v231)), vshlq_u64(v230, vzip1q_s64(0, v228)));
      v233 = vpaddq_s64(v231, v228);
      v234 = (v207 + 12) & 0x3C;
      v235 = (v232.i64[0] << v234) | v215;
      if ((v233.i64[0] + v234) >= 0x40)
      {
        *(v206 + ((v216 >> 3) & 8)) = v235;
        v235 = v232.i64[0] >> -v234;
      }

      v236 = v233.i64[0] + v216;
      v237 = (v233.i64[0] + v216) & 0x3F;
      v238 = v235 | (v232.i64[1] << (v233.i8[0] + v216));
      if ((v237 + v233.i64[1]) >= 0x40)
      {
        *(v206 + ((v236 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v238;
        v238 = v232.i64[1] >> -v237;
        if (!v237)
        {
          v238 = 0;
        }
      }

      v239 = vceqq_s8(v54, v66);
      v240 = v236 + v233.i64[1];
      v241.i64[0] = 0x808080808080808;
      v241.i64[1] = 0x808080808080808;
      v242.i64[0] = -1;
      v242.i64[1] = -1;
      v243 = vandq_s8(vextq_s8(vtstq_s8(v71, v241), 0, 0xFuLL), v54);
      v244.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v244.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v245 = vandq_s8(vshlq_u8(v242, vaddq_s8(v243, v244)), v60);
      v246 = vmovl_u8(*v243.i8);
      v247 = vpaddq_s16(vshlq_u16(vmovl_u8(*v245.i8), vtrn1q_s16(0, v246)), vmovl_high_u8(v245));
      v248 = vpaddq_s16(v246, vmovl_high_u8(v243));
      v249 = vmovl_u16(*v248.i8);
      v250 = vmovl_high_u16(v248);
      v251 = vpaddq_s32(vshlq_u32(vmovl_u16(*v247.i8), vtrn1q_s32(0, v249)), vshlq_u32(vmovl_high_u16(v247), vtrn1q_s32(0, v250)));
      v252 = vpaddq_s32(v249, v250);
      v253.i64[0] = v251.u32[0];
      v253.i64[1] = v251.u32[1];
      v254 = v253;
      v253.i64[0] = v251.u32[2];
      v253.i64[1] = v251.u32[3];
      v255 = v253;
      v253.i64[0] = v252.u32[0];
      v253.i64[1] = v252.u32[1];
      v256 = v253;
      v253.i64[0] = v252.u32[2];
      v253.i64[1] = v252.u32[3];
      v257 = vpaddq_s64(vshlq_u64(v254, vzip1q_s64(0, v256)), vshlq_u64(v255, vzip1q_s64(0, v253)));
      v258 = vpaddq_s64(v256, v253);
      v259 = (v236 + v233.i64[1]) & 0x3F;
      v260 = (v257.i64[0] << (v236 + v233.i8[8])) | v238;
      if ((v258.i64[0] + v259) >= 0x40)
      {
        *(v206 + ((v240 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v260;
        v260 = v257.i64[0] >> -v259;
        if (!v259)
        {
          v260 = 0;
        }
      }

      v261 = vandq_s8(v60, v239);
      v262 = v258.i64[0] + v240;
      v263 = v260 | (v257.i64[1] << v262);
      if ((v262 & 0x3F) + v258.i64[1] >= 0x40)
      {
        *(v206 + ((v262 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v263;
        v263 = v257.i64[1] >> -(v262 & 0x3F);
        if ((v262 & 0x3F) == 0)
        {
          v263 = 0;
        }
      }

      v264 = vceqq_s8(v54, v67);
      v265 = vaddq_s8(v261, v20);
      v266 = v262 + v258.i64[1];
      if (v55)
      {
        v263 |= v56 << v266;
        if ((v266 & 0x3F) >= 0x38)
        {
          *(v206 + ((v266 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v263;
          v263 = v56 >> -(v266 & 0x3F);
        }

        v266 += 8;
      }

      v267 = vandq_s8(v60, v264);
      v268 = vmovl_high_u8(v209);
      v209.i8[0] = 0;
      v269.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v269.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v270.i64[0] = -1;
      v270.i64[1] = -1;
      v271 = vandq_s8(vshlq_u8(v270, vaddq_s8(v209, v269)), v265);
      v272 = vmovl_u8(*v209.i8);
      v273 = vpaddq_s16(vshlq_u16(vmovl_u8(*v271.i8), vtrn1q_s16(0, v272)), vshlq_u16(vmovl_high_u8(v271), vtrn1q_s16(0, v268)));
      v274 = vpaddq_s16(v272, v268);
      v275 = vmovl_u16(*v274.i8);
      v276 = vmovl_high_u16(v274);
      v277 = vpaddq_s32(vshlq_u32(vmovl_u16(*v273.i8), vtrn1q_s32(0, v275)), vshlq_u32(vmovl_high_u16(v273), vtrn1q_s32(0, v276)));
      v278 = vpaddq_s32(v275, v276);
      v279.i64[0] = v277.u32[0];
      v279.i64[1] = v277.u32[1];
      v280 = v279;
      v279.i64[0] = v277.u32[2];
      v279.i64[1] = v277.u32[3];
      v281 = v279;
      v279.i64[0] = v278.u32[0];
      v279.i64[1] = v278.u32[1];
      v282 = v279;
      v279.i64[0] = v278.u32[2];
      v279.i64[1] = v278.u32[3];
      v283 = vpaddq_s64(vshlq_u64(v280, vzip1q_s64(0, v282)), vshlq_u64(v281, vzip1q_s64(0, v279)));
      v284 = vpaddq_s64(v282, v279);
      v285 = (v283.i64[0] << v266) | v263;
      if (v284.i64[0] + (v266 & 0x3F) >= 0x40)
      {
        *(v206 + ((v266 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v285;
        v285 = v283.i64[0] >> -(v266 & 0x3F);
        if ((v266 & 0x3F) == 0)
        {
          v285 = 0;
        }
      }

      v286 = vceqq_s8(v54, v68);
      v287 = vaddq_s8(v21, v267);
      v288 = v284.i64[0] + v266;
      v289 = (v284.i64[0] + v266) & 0x3F;
      v290 = v285 | (v283.i64[1] << v288);
      if ((v288 & 0x3F) + v284.i64[1] >= 0x40)
      {
        *(v206 + ((v288 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v290;
        v290 = v283.i64[1] >> -v289;
        if (!v289)
        {
          v290 = 0;
        }
      }

      v291 = vandq_s8(v60, v286);
      v292 = v288 + v284.i64[1];
      v293.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v293.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v294.i64[0] = -1;
      v294.i64[1] = -1;
      v295 = vandq_s8(vshlq_u8(v294, vaddq_s8(v210, v293)), v287);
      v296 = vmovl_u8(*v210.i8);
      v297 = vmovl_high_u8(v210);
      v298 = vpaddq_s16(vshlq_u16(vmovl_u8(*v295.i8), vtrn1q_s16(0, v296)), vshlq_u16(vmovl_high_u8(v295), vtrn1q_s16(0, v297)));
      v299 = vpaddq_s16(v296, v297);
      v300 = vmovl_u16(*v299.i8);
      v301 = vmovl_high_u16(v299);
      v302 = vpaddq_s32(vshlq_u32(vmovl_u16(*v298.i8), vtrn1q_s32(0, v300)), vshlq_u32(vmovl_high_u16(v298), vtrn1q_s32(0, v301)));
      v303 = vpaddq_s32(v300, v301);
      v304.i64[0] = v302.u32[0];
      v304.i64[1] = v302.u32[1];
      v305 = v304;
      v304.i64[0] = v302.u32[2];
      v304.i64[1] = v302.u32[3];
      v306 = v304;
      v304.i64[0] = v303.u32[0];
      v304.i64[1] = v303.u32[1];
      v307 = v304;
      v304.i64[0] = v303.u32[2];
      v304.i64[1] = v303.u32[3];
      v308 = vpaddq_s64(vshlq_u64(v305, vzip1q_s64(0, v307)), vshlq_u64(v306, vzip1q_s64(0, v304)));
      v309 = vpaddq_s64(v307, v304);
      v310 = (v308.i64[0] << v292) | v290;
      if (v309.i64[0] + (v292 & 0x3F) >= 0x40)
      {
        *(v206 + ((v292 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v310;
        v310 = v308.i64[0] >> -(v292 & 0x3F);
        if ((v292 & 0x3F) == 0)
        {
          v310 = 0;
        }
      }

      v311 = vceqq_s8(v54, v69);
      v312 = vaddq_s8(v22, v291);
      v313 = v309.i64[0] + v292;
      v314 = v310 | (v308.i64[1] << v313);
      if ((v313 & 0x3F) + v309.i64[1] >= 0x40)
      {
        *(v206 + ((v313 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v314;
        v314 = v308.i64[1] >> -(v313 & 0x3F);
        if ((v313 & 0x3F) == 0)
        {
          v314 = 0;
        }
      }

      v315 = vandq_s8(v60, v311);
      v316 = v313 + v309.i64[1];
      v317.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v317.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v318.i64[0] = -1;
      v318.i64[1] = -1;
      v319 = vandq_s8(vshlq_u8(v318, vaddq_s8(v211, v317)), v312);
      v320 = vmovl_u8(*v211.i8);
      v321 = vmovl_high_u8(v211);
      v322 = vpaddq_s16(vshlq_u16(vmovl_u8(*v319.i8), vtrn1q_s16(0, v320)), vshlq_u16(vmovl_high_u8(v319), vtrn1q_s16(0, v321)));
      v323 = vpaddq_s16(v320, v321);
      v324 = vmovl_u16(*v323.i8);
      v325 = vmovl_high_u16(v323);
      v326 = vpaddq_s32(vshlq_u32(vmovl_u16(*v322.i8), vtrn1q_s32(0, v324)), vshlq_u32(vmovl_high_u16(v322), vtrn1q_s32(0, v325)));
      v327 = vpaddq_s32(v324, v325);
      v328.i64[0] = v326.u32[0];
      v328.i64[1] = v326.u32[1];
      v329 = v328;
      v328.i64[0] = v326.u32[2];
      v328.i64[1] = v326.u32[3];
      v330 = v328;
      v328.i64[0] = v327.u32[0];
      v328.i64[1] = v327.u32[1];
      v331 = v328;
      v328.i64[0] = v327.u32[2];
      v328.i64[1] = v327.u32[3];
      v332 = vpaddq_s64(vshlq_u64(v329, vzip1q_s64(0, v331)), vshlq_u64(v330, vzip1q_s64(0, v328)));
      v333 = vpaddq_s64(v331, v328);
      v334 = (v332.i64[0] << v316) | v314;
      if (v333.i64[0] + (v316 & 0x3F) >= 0x40)
      {
        *(v206 + ((v316 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v334;
        v334 = v332.i64[0] >> -(v316 & 0x3F);
        if ((v316 & 0x3F) == 0)
        {
          v334 = 0;
        }
      }

      v335 = vaddq_s8(v25, v315);
      v336 = v333.i64[0] + v316;
      v337 = v334 | (v332.i64[1] << v336);
      if ((v336 & 0x3F) + v333.i64[1] >= 0x40)
      {
        *(v206 + ((v336 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v337;
        v337 = v332.i64[1] >> -(v336 & 0x3F);
        if ((v336 & 0x3F) == 0)
        {
          v337 = 0;
        }
      }

      v338 = v336 + v333.i64[1];
      v339.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v339.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v340.i64[0] = -1;
      v340.i64[1] = -1;
      v341 = vandq_s8(vshlq_u8(v340, vaddq_s8(v212, v339)), v335);
      v342 = vmovl_u8(*v212.i8);
      v343 = vmovl_high_u8(v212);
      v344 = vpaddq_s16(vshlq_u16(vmovl_u8(*v341.i8), vtrn1q_s16(0, v342)), vshlq_u16(vmovl_high_u8(v341), vtrn1q_s16(0, v343)));
      v345 = vpaddq_s16(v342, v343);
      v346 = vmovl_u16(*v345.i8);
      v347 = vmovl_high_u16(v345);
      v348 = vpaddq_s32(vshlq_u32(vmovl_u16(*v344.i8), vtrn1q_s32(0, v346)), vshlq_u32(vmovl_high_u16(v344), vtrn1q_s32(0, v347)));
      v349 = vpaddq_s32(v346, v347);
      v350.i64[0] = v348.u32[0];
      v350.i64[1] = v348.u32[1];
      v351 = v350;
      v350.i64[0] = v348.u32[2];
      v350.i64[1] = v348.u32[3];
      v352 = v350;
      v350.i64[0] = v349.u32[0];
      v350.i64[1] = v349.u32[1];
      v353 = v350;
      v350.i64[0] = v349.u32[2];
      v350.i64[1] = v349.u32[3];
      v354 = vpaddq_s64(vshlq_u64(v351, vzip1q_s64(0, v353)), vshlq_u64(v352, vzip1q_s64(0, v350)));
      v355 = vpaddq_s64(v353, v350);
      v356 = (v354.i64[0] << v338) | v337;
      if (v355.i64[0] + (v338 & 0x3F) > 0x3F)
      {
        *(v206 + ((v338 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v356;
        if ((v338 & 0x3F) != 0)
        {
          v356 = v354.i64[0] >> -(v338 & 0x3F);
        }

        else
        {
          v356 = 0;
        }
      }

      v357 = v355.i64[0] + v338;
      v358 = v356 | (v354.i64[1] << v357);
      if ((v357 & 0x3F) + v355.i64[1] >= 0x40)
      {
        *(v206 + ((v357 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v358;
        v358 = v354.i64[1] >> -(v357 & 0x3F);
        if ((v357 & 0x3F) == 0)
        {
          v358 = 0;
        }
      }

      v359 = v357 + v355.i64[1];
      if ((v359 & 0x3F) != 0)
      {
        *(v206 + ((v359 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v358;
      }

      result = (v359 - v207 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = a3->i8[0];
    *a2 = 96;
    return 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v9 = 0;
  v71 = *MEMORY[0x29EDCA608];
  v69 = 0u;
  v70 = 0u;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (a6)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    if (a5)
    {
      v29 = 0;
      do
      {
        v30 = 0;
        v31 = (a3 + v29 * a4);
        v32 = &v69 + (v29 & 0x3F);
        v33 = &v69 + 4 * ((4 * v29) | 1u);
        v34 = &v69 + 4 * ((4 * v29) | 2u);
        v35 = &v69 + 4 * ((4 * v29) | 3u);
        do
        {
          v36 = 2 * (v30 & 0x7F);
          *(v32 + v36) = *v31;
          v33[v36] = v31[1];
          v37 = (2 * v30) | 1u;
          *(v32 + v37) = v31[2];
          v33[v37] = v31[3];
          v34[v36] = v31[4];
          v35[v36] = v31[5];
          LOBYTE(v36) = v31[6];
          v38 = v31[7];
          v31 += 8;
          ++v30;
          v34[v37] = v36;
          v35[v37] = v38;
        }

        while (a5 != v30);
        ++v29;
      }

      while (v29 != a6);
      v28 = v69;
      v27 = BYTE4(v69);
      v26 = BYTE1(v69);
      v25 = BYTE5(v69);
      v24 = BYTE8(v69);
      v23 = BYTE12(v69);
      v22 = BYTE9(v69);
      v21 = BYTE13(v69);
      v20 = BYTE2(v69);
      v19 = BYTE6(v69);
      v18 = BYTE3(v69);
      v17 = BYTE7(v69);
      v16 = BYTE10(v69);
      v15 = BYTE14(v69);
      v14 = BYTE11(v69);
      v13 = HIBYTE(v69);
      v12 = v70;
      v11 = BYTE4(v70);
      v10 = BYTE1(v70);
      v9 = BYTE5(v70);
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  v53 = v17;
  v54 = v11;
  v56 = a6;
  v57 = v12;
  v59 = v10;
  v64.i64[0] = __PAIR64__(v27, v28);
  v55 = 2 * (a6 & 0x7F);
  v60 = 4 * (a5 & 0x3F);
  v64.i64[1] = __PAIR64__(v25, v26);
  v65 = v24;
  v66 = v23;
  v67 = v22;
  v68 = v21;
  v39 = 4 * (a5 != 0);
  v58 = 2 * (a6 != 0);
  v52 = a7;
  v41 = v13;
  v62 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v64, a7, v39, v58);
  v64.i64[0] = __PAIR64__(v19, v20);
  v64.i64[1] = __PAIR64__(v53, v18);
  v65 = v16;
  v66 = v15;
  v42 = v55 - 2;
  if (v55 < 2)
  {
    v42 = 0;
  }

  if (v56 >= 2)
  {
    v43 = 2;
  }

  else
  {
    v43 = v42;
  }

  v67 = v14;
  v68 = v41;
  v44 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 4, &v64, v52, v39, v43);
  v64.i64[0] = __PAIR64__(v54, v57);
  v64.i64[1] = __PAIR64__(v9, v59);
  v65 = BYTE8(v70);
  v66 = BYTE12(v70);
  v45 = v60 - 4;
  if (v60 < 4)
  {
    v45 = 0;
  }

  if (a5 >= 2)
  {
    v46 = 4;
  }

  else
  {
    v46 = v45;
  }

  v67 = BYTE9(v70);
  v68 = BYTE13(v70);
  v47 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 8, &v64, v52, v46, v58);
  v64.i32[0] = BYTE2(v70);
  v64.i32[1] = BYTE6(v70);
  v64.i32[2] = BYTE3(v70);
  v64.i32[3] = BYTE7(v70);
  v65 = BYTE10(v70);
  v66 = BYTE14(v70);
  v67 = BYTE11(v70);
  v68 = HIBYTE(v70);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 12, &v64, v52, v46, v43);
  if (v47)
  {
    v49 = 4;
  }

  else
  {
    v49 = 0;
  }

  if (v44)
  {
    v50 = 2;
  }

  else
  {
    v50 = 0;
  }

  if (result)
  {
    v51 = -8;
  }

  else
  {
    v51 = -16;
  }

  *a2 = v51 | v49 | v62 | v50;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(int8x16_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, double a5, int8x8_t a6)
{
  v10 = 8 * (a3 & 7);
  v11 = a3 & 0xFFFFFFFFFFFFFFF8;
  v12 = v10 + 12;
  v13 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v10;
  if (v10 >= 0x35)
  {
    v13 |= *(v11 + 8) << (-8 * (a3 & 7u));
  }

  v14 = (8 * (a3 & 7)) | 0x80;
  v15 = (a4 >> 5) | (8 * v13);
  v16 = vdupq_n_s8(v15 & 0xF);
  v17.i64[0] = 0x303030303030303;
  v17.i64[1] = 0x303030303030303;
  a6.i32[0] = v15 & 0xF;
  v18 = vand_s8(a6, 0x4000400040004);
  v19 = vandq_s8(v16, v17);
  v20 = vbicq_s8(vdupq_n_s8(((v13 >> 1) & 7) + 1), vceqq_s8(v19, v17));
  v17.i64[0] = 0x202020202020202;
  v17.i64[1] = 0x202020202020202;
  v21 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(v18, 0)))), v17);
  if (vmaxvq_s8(v21) < 1)
  {
    v29 = 0;
    v52.i64[0] = -1;
    v52.i64[1] = -1;
    v48 = v20;
    v47 = v20;
    v46 = v20;
    v51.i64[0] = -1;
    v51.i64[1] = -1;
    v45 = v20;
    v50.i64[0] = -1;
    v50.i64[1] = -1;
    v49.i64[0] = -1;
    v49.i64[1] = -1;
  }

  else
  {
    v22 = vmovl_u8(*&vpaddq_s8(v21, v21));
    v23 = vmovl_u16(*&vpaddq_s16(v22, v22));
    v24 = vpaddq_s32(v23, v23).u64[0];
    v25.i64[0] = v24;
    v25.i64[1] = HIDWORD(v24);
    v26 = v25;
    v27 = vaddvq_s64(v25);
    v28 = v27 <= 0x80 && v14 >= v27 + v12;
    v29 = !v28;
    v30 = 0uLL;
    if (v28)
    {
      v31 = vaddq_s64(vzip1q_s64(0, v26), vdupq_n_s64(v12 & 0x3C));
      v32 = (v11 + ((v12 >> 3) & 8));
      v30 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v32, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v31)), vshlq_u64(vdupq_lane_s64(v32->i64[0], 0), vnegq_s64(v31)));
      if (v27 + (v12 & 0x3C) >= 0x81)
      {
        v30 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v32[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v31)), vshlq_u64(vdupq_laneq_s64(v32[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v31))), v30);
      }

      v12 += v27;
    }

    v33 = vzip1_s32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
    v34.i64[0] = v33.u32[0];
    v34.i64[1] = v33.u32[1];
    v35 = vshlq_u64(v30, vnegq_s64(v34));
    v36 = vuzp1q_s32(vzip1q_s64(v30, v35), vzip2q_s64(v30, v35));
    v37 = vshlq_u32(v36, vnegq_s32((*&v22 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v38 = vuzp1q_s16(vzip1q_s32(v36, v37), vzip2q_s32(v36, v37));
    v39 = vzip1q_s16(v38, vshlq_u16(v38, vnegq_s16(vmovl_u8(vuzp1_s8(*v21.i8, *v16.i8)))));
    *v39.i8 = vmovn_s16(v39);
    v36.i64[0] = 0x101010101010101;
    v36.i64[1] = 0x101010101010101;
    v40 = vshlq_s8(v36, v21);
    v36.i64[0] = -1;
    v36.i64[1] = -1;
    v40.i64[0] = vandq_s8(vaddq_s8(v40, v36), v39).u64[0];
    v41 = vdupq_lane_s8(*v40.i8, 0);
    v42 = vdupq_lane_s8(*v40.i8, 1);
    v43 = vdupq_lane_s8(*v40.i8, 2);
    v44 = vdupq_lane_s8(*v40.i8, 3);
    v45 = vsubq_s8(v20, v41);
    v46 = vsubq_s8(v20, v42);
    v47 = vsubq_s8(v20, v43);
    v48 = vsubq_s8(v20, v44);
    v49 = vceqzq_s8(v41);
    v50 = vceqzq_s8(v42);
    v51 = vceqzq_s8(v43);
    v52 = vceqzq_s8(v44);
  }

  v53.i64[0] = 0x707070707070707;
  v53.i64[1] = 0x707070707070707;
  v54 = 0uLL;
  v55 = vandq_s8(vextq_s8(vcgtq_u8(v16, v53), 0, 0xFuLL), v20);
  v56 = vmovl_u8(*&vpaddq_s8(v55, v55));
  v57 = vmovl_u16(*&vpaddq_s16(v56, v56));
  v58 = vpaddq_s32(v57, v57).u64[0];
  v59.i64[0] = v58;
  v59.i64[1] = HIDWORD(v58);
  v60 = v59;
  v61 = vaddvq_s64(v59);
  v62 = v61 + v12;
  if (v61 <= 0x80 && v14 >= v62)
  {
    v64 = v12 & 0x3F;
    v65 = vaddq_s64(vzip1q_s64(0, v60), vdupq_n_s64(v64));
    v66 = (v11 + 8 * (v12 >> 6));
    v54 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v66, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v65)), vshlq_u64(vdupq_lane_s64(v66->i64[0], 0), vnegq_s64(v65)));
    if (v61 + v64 >= 0x81)
    {
      v54 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v66[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v65)), vshlq_u64(vdupq_laneq_s64(v66[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v65))), v54);
    }

    v12 = v62;
  }

  else
  {
    v29 = 1;
  }

  v67 = vandq_s8(v45, xmmword_29D2F0D40);
  v68 = (a4 >> 5) & 3;
  if (v68 != 2)
  {
    v73 = 0;
    v70 = 0;
    v74 = v12;
    goto LABEL_36;
  }

  v69 = v12 + 4;
  if (v14 < v12 + 4)
  {
    v70 = 0;
    v69 = v12;
LABEL_35:
    v73 = 0;
    v29 = 1;
    v74 = v69;
    goto LABEL_36;
  }

  v75 = (v11 + 8 * (v12 >> 6));
  v76 = *v75 >> v12;
  if ((v12 & 0x3F) >= 0x3D)
  {
    v76 |= v75[1] << -(v12 & 0x3F);
  }

  v70 = (v76 << 28) >> 28;
  v74 = v12 + 8;
  if (v14 < v12 + 8)
  {
    goto LABEL_35;
  }

  v71 = (v11 + 8 * (v69 >> 6));
  v72 = *v71 >> v69;
  if ((v69 & 0x3F) >= 0x3D)
  {
    v72 |= v71[1] << -(v69 & 0x3F);
  }

  v73 = (v72 << 28) >> 28;
LABEL_36:
  v77 = vandq_s8(v46, xmmword_29D2F0D50);
  v67.i8[0] = 0;
  v78 = vmovl_u8(*&vpaddq_s8(v67, v67));
  v79 = vmovl_u16(*&vpaddq_s16(v78, v78));
  v80 = vpaddq_s32(v79, v79).u64[0];
  v81.i64[0] = v80;
  v81.i64[1] = HIDWORD(v80);
  v82 = v81;
  v83 = vaddvq_s64(v81);
  v84 = v83 + v74;
  v85 = 0uLL;
  if (v83 <= 0x80 && v14 >= v84)
  {
    v88 = v74 & 0x3F;
    v89 = vaddq_s64(vzip1q_s64(0, v82), vdupq_n_s64(v88));
    v90 = (v11 + 8 * (v74 >> 6));
    v87 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v90, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v89)), vshlq_u64(vdupq_lane_s64(v90->i64[0], 0), vnegq_s64(v89)));
    if (v83 + v88 >= 0x81)
    {
      v87 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v90[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v89)), vshlq_u64(vdupq_laneq_s64(v90[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v89))), v87);
    }

    v74 = v84;
  }

  else
  {
    v29 = 1;
    v87 = 0uLL;
  }

  v200[1] = v9;
  v200[2] = v8;
  v200[3] = v7;
  v200[4] = v6;
  v91 = vandq_s8(v47, xmmword_29D2F0D50);
  v92 = vmovl_u8(*&vpaddq_s8(v77, v77));
  v93 = vmovl_u16(*&vpaddq_s16(v92, v92));
  v94 = vpaddq_s32(v93, v93).u64[0];
  v95.i64[0] = v94;
  v95.i64[1] = HIDWORD(v94);
  v96 = v95;
  v97 = vaddvq_s64(v95);
  if (v97 >= 0x81)
  {
    v29 = 1;
  }

  else
  {
    v98 = vzip1_s32(*v93.i8, *&vextq_s8(v93, v93, 8uLL));
    v99.i64[0] = v98.u32[0];
    v99.i64[1] = v98.u32[1];
    v100 = v99;
    v101 = *&v92 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v102 = v97 + v74;
    if (v14 >= v97 + v74)
    {
      v104 = v74 & 0x3F;
      v105 = vaddq_s64(vzip1q_s64(0, v96), vdupq_n_s64(v104));
      v106 = (v11 + 8 * (v74 >> 6));
      v103 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v106, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v105)), vshlq_u64(vdupq_lane_s64(v106->i64[0], 0), vnegq_s64(v105)));
      if (v97 + v104 >= 0x81)
      {
        v103 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v106[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v105)), vshlq_u64(vdupq_laneq_s64(v106[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v105))), v103);
      }

      v74 = v102;
    }

    else
    {
      v103 = 0uLL;
      v29 = 1;
    }

    v107 = vshlq_u64(v103, vnegq_s64(v100));
    v108 = vuzp1q_s32(vzip1q_s64(v103, v107), vzip2q_s64(v103, v107));
    v109 = vshlq_u32(v108, vnegq_s32(v101));
    v110 = vuzp1q_s16(vzip1q_s32(v108, v109), vzip2q_s32(v108, v109));
    v111 = vshlq_u16(v110, vnegq_s16((*&v77 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v85 = vuzp1q_s8(vzip1q_s16(v110, v111), vzip2q_s16(v110, v111));
  }

  v112 = vandq_s8(v48, xmmword_29D2F0D50);
  v113 = vmovl_u8(*&vpaddq_s8(v91, v91));
  v114 = vmovl_u16(*&vpaddq_s16(v113, v113));
  v115 = vpaddq_s32(v114, v114).u64[0];
  v116.i64[0] = v115;
  v116.i64[1] = HIDWORD(v115);
  v117 = v116;
  v118 = vaddvq_s64(v116);
  if (v118 >= 0x81)
  {
    v29 = 1;
    v125 = 0uLL;
  }

  else
  {
    v119 = vzip1_s32(*v114.i8, *&vextq_s8(v114, v114, 8uLL));
    v120.i64[0] = v119.u32[0];
    v120.i64[1] = v119.u32[1];
    v121 = v120;
    v122 = *&v113 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v123 = v118 + v74;
    if (v14 >= v118 + v74)
    {
      v126 = v74 & 0x3F;
      v127 = vaddq_s64(vzip1q_s64(0, v117), vdupq_n_s64(v126));
      v128 = (v11 + 8 * (v74 >> 6));
      v124 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v128, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v127)), vshlq_u64(vdupq_lane_s64(v128->i64[0], 0), vnegq_s64(v127)));
      if (v118 + v126 >= 0x81)
      {
        v124 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v128[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v127)), vshlq_u64(vdupq_laneq_s64(v128[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v127))), v124);
      }

      v74 = v123;
    }

    else
    {
      v124 = 0uLL;
      v29 = 1;
    }

    v129 = vshlq_u64(v124, vnegq_s64(v121));
    v130 = vuzp1q_s32(vzip1q_s64(v124, v129), vzip2q_s64(v124, v129));
    v131 = vshlq_u32(v130, vnegq_s32(v122));
    v132 = vuzp1q_s16(vzip1q_s32(v130, v131), vzip2q_s32(v130, v131));
    v133 = vshlq_u16(v132, vnegq_s16((*&v91 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v125 = vuzp1q_s8(vzip1q_s16(v132, v133), vzip2q_s16(v132, v133));
  }

  v134 = vmovl_u8(*&vpaddq_s8(v112, v112));
  v135 = vmovl_u16(*&vpaddq_s16(v134, v134));
  v136 = vpaddq_s32(v135, v135).u64[0];
  v137.i64[0] = v136;
  v137.i64[1] = HIDWORD(v136);
  v138 = v137;
  v139 = vaddvq_s64(v137);
  if (v139 >= 0x81 || v14 < v139 + v74)
  {
    goto LABEL_66;
  }

  v140 = vaddq_s64(vzip1q_s64(0, v138), vdupq_n_s64(v74 & 0x3F));
  v141 = (v11 + 8 * (v74 >> 6));
  v142 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
  if (v139 + (v74 & 0x3F) >= 0x81)
  {
    v142 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v142);
  }

  if ((v29 & 1) != 0 || (v143 = (a4 & 0x1F) + 1, 8 * ((a3 & 7) + v143) - (v139 + v74) >= 9))
  {
LABEL_66:
    v143 = 0;
    v200[0] |= 255 << (8 * ((v200 + 7) & 7u));
    a1->i16[0] = 0;
    *(a1->i16 + a2) = 0;
  }

  else
  {
    v145 = vzip1_s32(*v57.i8, *&vextq_s8(v57, v57, 8uLL));
    v146 = vzip1_s32(*v79.i8, *&vextq_s8(v79, v79, 8uLL));
    v147.i64[0] = v145.u32[0];
    v147.i64[1] = v145.u32[1];
    v148 = v147;
    v147.i64[0] = v146.u32[0];
    v147.i64[1] = v146.u32[1];
    v149 = vshlq_u64(v54, vnegq_s64(v148));
    v150 = vshlq_u64(v87, vnegq_s64(v147));
    v151 = vuzp1q_s32(vzip1q_s64(v54, v149), vzip2q_s64(v54, v149));
    v152 = vuzp1q_s32(vzip1q_s64(v87, v150), vzip2q_s64(v87, v150));
    v153 = vshlq_u32(v151, vnegq_s32((*&v56 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v154 = vshlq_u32(v152, vnegq_s32((*&v78 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v155 = vuzp1q_s16(vzip1q_s32(v151, v153), vzip2q_s32(v151, v153));
    v156 = vuzp1q_s16(vzip1q_s32(v152, v154), vzip2q_s32(v152, v154));
    v157 = vshlq_u16(v155, vnegq_s16((*&v55 & __PAIR128__(0xF0FFF0FFF0FFF0FFLL, 0xF0FFF0FFF0FFF0FFLL))));
    v158 = vshlq_u16(v156, vnegq_s16((*&v67 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF0000))));
    v159 = vzip2q_s16(v155, v157);
    v160 = vzip1q_s16(v155, v157);
    v157.i64[0] = 0x808080808080808;
    v157.i64[1] = 0x808080808080808;
    v161 = vzip2q_s16(v156, v158);
    v162 = vzip1q_s16(v156, v158);
    v158.i64[0] = 0x808080808080808;
    v158.i64[1] = 0x808080808080808;
    v163 = v13 >> 4;
    v164 = vuzp1q_s8(v160, v159);
    v159.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v159.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v165 = vuzp1q_s8(v162, v161);
    v161.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v161.i64[1] = 0xF8F8F8F8F8F8F8F8;
    *v150.i8 = vzip1_s32(*v135.i8, *&vextq_s8(v135, v135, 8uLL));
    v166.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v166.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v167.i64[0] = 0x808080808080808;
    v167.i64[1] = 0x808080808080808;
    v168 = vshlq_s8(v164, vsubq_s8(v157, v55));
    v169 = vaddq_s8(v67, v161);
    v170 = vshlq_s8(v165, vsubq_s8(v158, v67));
    v147.i64[0] = v150.u32[0];
    v147.i64[1] = v150.u32[1];
    v171 = vshlq_s8(v168, vaddq_s8(v55, v159));
    v172 = vshlq_s8(v170, v169);
    v173 = vshlq_s8(vshlq_s8(v85, vsubq_s8(v158, v77)), vaddq_s8(v77, v161));
    v174 = vshlq_s8(vshlq_s8(v125, vsubq_s8(v158, v91)), vaddq_s8(v91, v161));
    v175 = vshlq_u64(v142, vnegq_s64(v147));
    v176 = vuzp1q_s32(vzip1q_s64(v142, v175), vzip2q_s64(v142, v175));
    v177 = vshlq_u32(v176, vnegq_s32((*&v134 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v178 = vuzp1q_s16(vzip1q_s32(v176, v177), vzip2q_s32(v176, v177));
    v179 = vshlq_u16(v178, vnegq_s16((*&v112 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v180 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v178, v179), vzip2q_s16(v178, v179)), vsubq_s8(v167, v112)), vaddq_s8(v112, v166));
    if (v68 == 2)
    {
      v181.i64[0] = 0xFFFF0000FFFF0000;
      v181.i64[1] = 0xFFFF0000FFFF0000;
      v182 = vmlaq_s8(vandq_s8(vdupq_n_s8(v73), v181), vdupq_n_s8(v70), xmmword_29D2F0D60);
      v172 = vaddq_s8(v172, v182);
      v173 = vaddq_s8(vaddq_s8(vdupq_n_s8(2 * v73), v182), v173);
      v174 = vaddq_s8(vaddq_s8(vdupq_n_s8(4 * v70), v182), v174);
      v180 = vaddq_s8(vaddq_s8(vdupq_n_s8(4 * v70 + 2 * v73), v182), v180);
    }

    v183.i64[0] = vdupq_n_s8(v163).u64[0];
    v184 = vaddq_s8(vandq_s8(v171, v49), v172);
    v185 = vdupq_lane_s8(*v171.i8, 0);
    v186 = vsubq_s8(v184, vandq_s8(v185, v49));
    v187 = vsubq_s8(v173, vandq_s8(v185, v50));
    v188 = vsubq_s8(v174, vandq_s8(v185, v51));
    v189 = vsubq_s8(v180, vandq_s8(v185, v52));
    v190.i64[0] = 0x101010101010101;
    v190.i64[1] = 0x101010101010101;
    if (vaddlvq_s8(vceqq_s8(v19, v190)))
    {
      v191 = vandq_s8(v16, v190);
      v192 = vnegq_s8(v191);
      v193 = v186;
      v193.i8[0] = v186.i8[7];
      v193.i8[7] = v186.i8[0];
      v194 = vorrq_s8(vandq_s8(v193, v192), vandq_s8(v186, vceqzq_s8(v191)));
      v195 = vaddq_s8(vandq_s8(vqtbl1q_s8(v194, xmmword_29D2F0D70), v192), v194);
      v186.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v195, xmmword_29D2F0D80), v192), v195).u64[0];
      v196 = vaddq_s8(vandq_s8(vqtbl1q_s8(v187, xmmword_29D2F0D90), v192), v187);
      v187.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v196, xmmword_29D2F0DA0), v192), v196).u64[0];
      v197 = vaddq_s8(vandq_s8(vqtbl1q_s8(v188, xmmword_29D2F0DB0), v192), v188);
      v188.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v197, xmmword_29D2F0DC0), v192), v197).u64[0];
      v198 = vaddq_s8(vandq_s8(vqtbl1q_s8(v189, xmmword_29D2F0DD0), v192), v189);
      v189.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v198, xmmword_29D2F0DE0), v192), v198).u64[0];
    }

    v186.i64[1] = v183.i64[0];
    v199.i64[0] = v183.i64[0];
    v199.i64[1] = v187.i64[0];
    v188.i64[1] = v189.i64[0];
    *a1 = vaddq_s8(v199, v186);
    v183.i64[1] = v183.i64[0];
    *(a1 + a2) = vaddq_s8(v188, v183);
  }

  return v143;
}

__n128 AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(_OWORD *a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  v47 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v39, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v39, a5);
  }

  v29 = v39;
  v30 = v40;
  v31 = v41;
  v32 = v42;
  v33 = v43;
  v34 = v44;
  v35 = v45;
  v36 = v46;
  v8 = a3 + 4;
  if ((a4 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v8, &v39, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v8, &v39, a5);
  }

  v21 = v39;
  v22 = v40;
  v23 = v41;
  v24 = v42;
  v25 = v43;
  v26 = v44;
  v27 = v45;
  v28 = v46;
  v9 = a3 + 8;
  if ((a4 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v9, &v39, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v9, &v39, a5);
  }

  v11 = v39;
  v10 = v40;
  v13 = v41;
  v12 = v42;
  v15 = v43;
  v14 = v44;
  v16 = v45;
  v20 = v46;
  v17 = a3 + 12;
  if ((a4 & 8) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v17, &v39, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v17, &v39, a5);
  }

  result.n128_u8[0] = v11;
  result.n128_u8[1] = v10;
  result.n128_u8[2] = v13;
  result.n128_u8[3] = v12;
  result.n128_u8[4] = v15;
  result.n128_u8[5] = v14;
  result.n128_u8[6] = v16;
  result.n128_u8[7] = v20;
  result.n128_u8[8] = v39;
  result.n128_u8[9] = v40;
  result.n128_u8[10] = v41;
  result.n128_u8[11] = v42;
  result.n128_u8[12] = v43;
  result.n128_u8[13] = v44;
  result.n128_u8[14] = v45;
  result.n128_u8[15] = v46;
  LOBYTE(v19) = v29;
  BYTE1(v19) = v30;
  BYTE2(v19) = v31;
  BYTE3(v19) = v32;
  BYTE4(v19) = v33;
  BYTE5(v19) = v34;
  BYTE6(v19) = v35;
  BYTE7(v19) = v36;
  BYTE8(v19) = v21;
  BYTE9(v19) = v22;
  BYTE10(v19) = v23;
  BYTE11(v19) = v24;
  BYTE12(v19) = v25;
  BYTE13(v19) = v26;
  BYTE14(v19) = v27;
  HIBYTE(v19) = v28;
  *a1 = v19;
  *(a1 + a2) = result;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7, int8x8_t a8, double a9, int8x8_t a10)
{
  v11 = a6;
  v12 = a5;
  v14 = a3;
  v16 = result;
  if (a5 && a6)
  {
    if (a6 >= 2)
    {
      a6 = 2;
    }

    if (a5 >= 2)
    {
      a5 = 2;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7, a8, a9, a10);
    v14 += result;
  }

  else
  {
    *a4 = 0;
  }

  v17 = v12 - 2;
  if (v12 >= 3 && v11)
  {
    if (v11 >= 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = v11;
    }

    if (v17 >= 2)
    {
      v19 = 2;
    }

    else
    {
      v19 = v12 - 2;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v14, a4 + 1, v16 + 2, a2, v19, v18, a7, a8, a9, a10);
    v14 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v20 = 2 * a2;
  v21 = v11 - 2;
  if (v12 && v11 >= 3)
  {
    if (v21 >= 2)
    {
      v22 = 2;
    }

    else
    {
      v22 = v11 - 2;
    }

    if (v12 >= 2)
    {
      v23 = 2;
    }

    else
    {
      v23 = v12;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v14, a4 + 2, (v16 + v20), a2, v23, v22, a7, a8, a9, a10);
    v14 += result;
  }

  else
  {
    a4[2] = 0;
  }

  if (v12 < 3 || v11 < 3)
  {
    a4[3] = 0;
  }

  else
  {
    if (v21 >= 2)
    {
      v24 = 2;
    }

    else
    {
      v24 = v11 - 2;
    }

    if (v17 >= 2)
    {
      v25 = 2;
    }

    else
    {
      v25 = v12 - 2;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v14, a4 + 3, (v16 + v20 + 16), a2, v25, v24, a7, a8, a9, a10);
    v14 += result;
  }

  v26 = v12 - 4;
  if (v12 >= 5 && v11)
  {
    if (v11 >= 2)
    {
      v27 = 2;
    }

    else
    {
      v27 = v11;
    }

    if (v26 >= 2)
    {
      v28 = 2;
    }

    else
    {
      v28 = v12 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v14, a4 + 4, v16 + 4, a2, v28, v27, a7, a8, a9, a10);
    v14 += result;
  }

  else
  {
    a4[4] = 0;
  }

  v29 = v12 - 6;
  if (v12 >= 7 && v11)
  {
    if (v11 >= 2)
    {
      v30 = 2;
    }

    else
    {
      v30 = v11;
    }

    if (v29 >= 2)
    {
      v31 = 2;
    }

    else
    {
      v31 = v12 - 6;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v14, a4 + 5, v16 + 6, a2, v31, v30, a7, a8, a9, a10);
    v14 += result;
  }

  else
  {
    a4[5] = 0;
    if (v12 < 5)
    {
      goto LABEL_68;
    }
  }

  if (v11 >= 3)
  {
    if (v21 >= 2)
    {
      v32 = 2;
    }

    else
    {
      v32 = v11 - 2;
    }

    if (v26 >= 2)
    {
      v33 = 2;
    }

    else
    {
      v33 = v12 - 4;
    }

    v34 = 2 * a2;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v14, a4 + 6, (v16 + 2 * a2 + 32), a2, v33, v32, a7, a8, a9, a10);
    v14 += result;
    if (v12 < 7)
    {
      goto LABEL_79;
    }

    goto LABEL_69;
  }

LABEL_68:
  a4[6] = 0;
  v34 = 2 * a2;
  if (v12 < 7)
  {
LABEL_79:
    a4[7] = 0;
    return result;
  }

LABEL_69:
  if (v11 < 3)
  {
    goto LABEL_79;
  }

  if (v21 >= 2)
  {
    v35 = 2;
  }

  else
  {
    v35 = v11 - 2;
  }

  if (v29 >= 2)
  {
    v36 = 2;
  }

  else
  {
    v36 = v12 - 6;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v14, a4 + 7, (v16 + v34 + 48), a2, v36, v35, a7, a8, a9, a10);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int32x4_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int8x8_t a5, int8x8_t a6)
{
  v12 = 8 * (a3 & 7);
  v13 = a3 & 0xFFFFFFFFFFFFFFF8;
  v14 = v12 + 14;
  v15 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v12;
  if (v12 >= 0x33)
  {
    v15 |= *(v13 + 8) << (-8 * (a3 & 7u));
  }

  a6.i32[0] = 4 * v15;
  a5.i32[0] = a4 >> 6;
  v16.i32[0] = vorr_s8(a6, a5).u32[0];
  v16.i32[1] = vshr_n_u32(vdup_n_s32(4 * v15), 5uLL).i32[1];
  v17 = v12 + 30;
  v18 = v14 & 0x3E;
  v19 = (v13 + ((v14 >> 3) & 8));
  v20 = *v19 >> v18;
  if (v18 >= 0x31)
  {
    v20 |= v19[1] << -v18;
  }

  v21 = (8 * (a3 & 7)) | 0x200;
  v22 = vand_s8(v16, 0x1F0000001FLL);
  v231.val[1] = vdupq_lane_s8(v22, 4);
  v231.val[0] = vdupq_lane_s8(v22, 0);
  v23 = vqtbl2q_s8(v231, xmmword_29D2F0E30);
  v24 = vshlq_u32(vdupq_lane_s32(a6, 0), xmmword_29D2F0E40);
  v25 = vuzp1q_s16(v24, v24);
  v231.val[0].i64[0] = 0x707070707070707;
  v231.val[0].i64[1] = 0x707070707070707;
  v26 = vandq_s8(vuzp1q_s8(v25, v25), v231.val[0]);
  v231.val[0].i64[0] = 0x101010101010101;
  v231.val[0].i64[1] = 0x101010101010101;
  v231.val[0] = vaddq_s8(v26, v231.val[0]);
  v231.val[1].i64[0] = 0x303030303030303;
  v231.val[1].i64[1] = 0x303030303030303;
  v27 = vandq_s8(v23, v231.val[1]);
  v28 = vbicq_s8(v231.val[0], vceqq_s8(v27, v231.val[1]));
  v231.val[1].i64[0] = 0x202020202020202;
  v231.val[1].i64[1] = 0x202020202020202;
  v29 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16((*&vuzp1_s16(v22, v22) & 0xFFE4FFE4FFE4FFE4)))), v231.val[1]);
  if (vmaxvq_s8(v29) < 1)
  {
    v38 = 0;
    v62.i64[0] = -1;
    v62.i64[1] = -1;
    v56 = v28;
    v57 = v28;
    v58 = v28;
    v61.i64[0] = -1;
    v61.i64[1] = -1;
    v55 = v28;
    v60.i64[0] = -1;
    v60.i64[1] = -1;
    v59.i64[0] = -1;
    v59.i64[1] = -1;
  }

  else
  {
    v30 = vmovl_u8(*&vpaddq_s8(v29, v29));
    v31 = vmovl_u16(*&vpaddq_s16(v30, v30));
    v32 = vpaddq_s32(v31, v31).u64[0];
    v33.i64[0] = v32;
    v33.i64[1] = HIDWORD(v32);
    v34 = v33;
    v35 = vaddvq_s64(v33);
    v36 = v35 + v17;
    v37 = v35 <= 0x80 && v21 >= v36;
    v38 = !v37;
    v39 = 0uLL;
    if (v37)
    {
      v40 = v17 & 0x3E;
      v41 = vaddq_s64(vzip1q_s64(0, v34), vdupq_n_s64(v40));
      v42 = (v13 + ((v17 >> 3) & 8));
      v39 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v42, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v41)), vshlq_u64(vdupq_lane_s64(v42->i64[0], 0), vnegq_s64(v41)));
      if (v35 + v40 >= 0x81)
      {
        v39 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v42[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v41)), vshlq_u64(vdupq_laneq_s64(v42[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v41))), v39);
      }

      v17 = v36;
    }

    v43 = vzip1_s32(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
    v44.i64[0] = v43.u32[0];
    v44.i64[1] = v43.u32[1];
    v45 = vshlq_u64(v39, vnegq_s64(v44));
    v46 = vuzp1q_s32(vzip1q_s64(v39, v45), vzip2q_s64(v39, v45));
    v47 = vshlq_u32(v46, vnegq_s32((*&v30 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v48 = vuzp1q_s16(vzip1q_s32(v46, v47), vzip2q_s32(v46, v47));
    v49 = vzip1q_s16(v48, vshlq_u16(v48, vnegq_s16(vmovl_u8(vuzp1_s8(*v29.i8, *v23.i8)))));
    *v49.i8 = vmovn_s16(v49);
    v46.i64[0] = 0x101010101010101;
    v46.i64[1] = 0x101010101010101;
    v50 = vshlq_s8(v46, v29);
    v46.i64[0] = -1;
    v46.i64[1] = -1;
    v50.i64[0] = vqtbl1q_s8(vandq_s8(vaddq_s8(v50, v46), v49), xmmword_29D2F0E50).u64[0];
    v51 = vdupq_lane_s16(*v50.i8, 0);
    v52 = vdupq_lane_s16(*v50.i8, 1);
    v53 = vdupq_lane_s16(*v50.i8, 2);
    v54 = vdupq_lane_s16(*v50.i8, 3);
    v55 = vsubq_s8(v28, v51);
    v56 = vsubq_s8(v28, v52);
    v57 = vsubq_s8(v28, v53);
    v58 = vsubq_s8(v28, v54);
    v59 = vceqzq_s8(v51);
    v60 = vceqzq_s8(v52);
    v61 = vceqzq_s8(v53);
    v62 = vceqzq_s8(v54);
  }

  v63.i64[0] = 0x808080808080808;
  v63.i64[1] = 0x808080808080808;
  v64 = 0uLL;
  v65 = vandq_s8(vextq_s8(vtstq_s8(v23, v63), 0, 0xEuLL), v28);
  v66 = vmovl_u8(*&vpaddq_s8(v65, v65));
  v67 = vmovl_u16(*&vpaddq_s16(v66, v66));
  v68 = vpaddq_s32(v67, v67).u64[0];
  v69.i64[0] = v68;
  v69.i64[1] = HIDWORD(v68);
  v70 = v69;
  v71 = vaddvq_s64(v69);
  v72 = v71 + v17;
  if (v71 <= 0x80 && v21 >= v72)
  {
    v74 = v17 & 0x3F;
    v75 = vaddq_s64(vzip1q_s64(0, v70), vdupq_n_s64(v74));
    v76 = (v13 + 8 * (v17 >> 6));
    v64 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v76, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v75)), vshlq_u64(vdupq_lane_s64(v76->i64[0], 0), vnegq_s64(v75)));
    if (v71 + v74 >= 0x81)
    {
      v64 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v76[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v75)), vshlq_u64(vdupq_laneq_s64(v76[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v75))), v64);
    }

    v17 = v72;
  }

  else
  {
    v38 = 1;
  }

  v77 = v22.i8[0] & 3;
  if (v77 == 2)
  {
    if (v21 < v17 + 4)
    {
      v38 = 1;
    }

    else
    {
      v17 += 4;
    }

    v78 = v21 < v17 + 4;
    if (v21 >= v17 + 4)
    {
      v17 += 4;
    }

    v38 |= v78;
  }

  v79 = 0uLL;
  v80 = vextq_s8(0, v55, 0xEuLL);
  v81 = vmovl_u8(*&vpaddq_s8(v80, v80));
  v82 = vmovl_u16(*&vpaddq_s16(v81, v81));
  v83 = vpaddq_s32(v82, v82).u64[0];
  v84.i64[0] = v83;
  v84.i64[1] = HIDWORD(v83);
  v85 = v84;
  v86 = vaddvq_s64(v84);
  v87 = v86 + v17;
  if (v86 <= 0x80 && v21 >= v87)
  {
    v90 = v17 & 0x3F;
    v91 = vaddq_s64(vzip1q_s64(0, v85), vdupq_n_s64(v90));
    v92 = (v13 + 8 * (v17 >> 6));
    v89 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v92, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v91)), vshlq_u64(vdupq_lane_s64(v92->i64[0], 0), vnegq_s64(v91)));
    if (v86 + v90 >= 0x81)
    {
      v89 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v92[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v91)), vshlq_u64(vdupq_laneq_s64(v92[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v91))), v89);
    }

    v17 = v87;
  }

  else
  {
    v38 = 1;
    v89 = 0uLL;
  }

  v225 = v11;
  v226 = v10;
  v227 = v9;
  v228 = v8;
  v229 = v7;
  v230 = v6;
  v93 = vmovl_u8(*&vpaddq_s8(v56, v56));
  v94 = vmovl_u16(*&vpaddq_s16(v93, v93));
  v95 = vpaddq_s32(v94, v94).u64[0];
  v96.i64[0] = v95;
  v96.i64[1] = HIDWORD(v95);
  v97 = v96;
  v98 = vaddvq_s64(v96);
  if (v98 >= 0x81)
  {
    v38 = 1;
  }

  else
  {
    v99 = vzip1_s32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
    v100.i64[0] = v99.u32[0];
    v100.i64[1] = v99.u32[1];
    v101 = v100;
    v102 = *&v93 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v103 = v98 + v17;
    if (v21 >= v98 + v17)
    {
      v105 = v17 & 0x3F;
      v106 = vaddq_s64(vzip1q_s64(0, v97), vdupq_n_s64(v105));
      v107 = (v13 + 8 * (v17 >> 6));
      v104 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v107, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v106)), vshlq_u64(vdupq_lane_s64(v107->i64[0], 0), vnegq_s64(v106)));
      if (v98 + v105 >= 0x81)
      {
        v104 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v107[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v106)), vshlq_u64(vdupq_laneq_s64(v107[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v106))), v104);
      }

      v17 = v103;
    }

    else
    {
      v104 = 0uLL;
      v38 = 1;
    }

    v108 = vshlq_u64(v104, vnegq_s64(v101));
    v109 = vuzp1q_s32(vzip1q_s64(v104, v108), vzip2q_s64(v104, v108));
    v110 = vshlq_u32(v109, vnegq_s32(v102));
    v111 = vuzp1q_s16(vzip1q_s32(v109, v110), vzip2q_s32(v109, v110));
    v112 = vshlq_u16(v111, vnegq_s16((*&v56 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v79 = vuzp1q_s8(vzip1q_s16(v111, v112), vzip2q_s16(v111, v112));
  }

  v113 = vmovl_u8(*&vpaddq_s8(v57, v57));
  v114 = vmovl_u16(*&vpaddq_s16(v113, v113));
  v115 = vpaddq_s32(v114, v114).u64[0];
  v116.i64[0] = v115;
  v116.i64[1] = HIDWORD(v115);
  v117 = v116;
  v118 = vaddvq_s64(v116);
  v119 = v118 + v17;
  if (v118 <= 0x80 && v21 >= v119)
  {
    v122 = v17 & 0x3F;
    v123 = vaddq_s64(vzip1q_s64(0, v117), vdupq_n_s64(v122));
    v124 = (v13 + 8 * (v17 >> 6));
    v121 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v124, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v124->i64[0], 0), vnegq_s64(v123)));
    if (v118 + v122 >= 0x81)
    {
      v121 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v124[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v124[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v121);
    }

    v17 = v119;
  }

  else
  {
    v38 = 1;
    v121 = 0uLL;
  }

  v125 = vmovl_u8(*&vpaddq_s8(v58, v58));
  v126 = vmovl_u16(*&vpaddq_s16(v125, v125));
  v127 = vpaddq_s32(v126, v126).u64[0];
  v128.i64[0] = v127;
  v128.i64[1] = HIDWORD(v127);
  v129 = v128;
  v130 = vaddvq_s64(v128);
  if (v130 > 0x80 || v21 < v130 + v17)
  {
    goto LABEL_66;
  }

  v131 = vaddq_s64(vzip1q_s64(0, v129), vdupq_n_s64(v17 & 0x3F));
  v132 = (v13 + 8 * (v17 >> 6));
  v133 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v132, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v131)), vshlq_u64(vdupq_lane_s64(v132->i64[0], 0), vnegq_s64(v131)));
  if (v130 + (v17 & 0x3F) >= 0x81)
  {
    v133 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v132[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v131)), vshlq_u64(vdupq_laneq_s64(v132[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v131))), v133);
  }

  if ((v38 & 1) != 0 || (v134 = (a4 & 0x3F) + 1, 8 * ((a3 & 7) + v134) - (v130 + v17) >= 9))
  {
LABEL_66:
    v134 = 0;
    v135 = &v223;
LABEL_67:
    *(v135 & 0xFFFFFFFFFFFFFFF8) |= 255 << (8 * (v135 & 7u));
    a1->i64[0] = 0;
    a1->i64[1] = 0;
    v136 = (a1->i64 + a2);
    v137 = (a1->i64 + 2 * a2);
    *v136 = 0;
    v136[1] = 0;
    v138 = (a1->i64 + 2 * a2 + a2);
    *v137 = 0;
    v137[1] = 0;
    *v138 = 0;
    v138[1] = 0;
    return v134;
  }

  if (v77 == 2)
  {
    v134 = 0;
    v135 = &v224;
    goto LABEL_67;
  }

  v140 = vzip1_s32(*v67.i8, *&vextq_s8(v67, v67, 8uLL));
  v141 = vzip1_s32(*v82.i8, *&vextq_s8(v82, v82, 8uLL));
  v142 = vzip1_s32(*v114.i8, *&vextq_s8(v114, v114, 8uLL));
  v143.i64[0] = v140.u32[0];
  v143.i64[1] = v140.u32[1];
  v144 = v143;
  v143.i64[0] = v141.u32[0];
  v143.i64[1] = v141.u32[1];
  v145 = v143;
  v143.i64[0] = v142.u32[0];
  v143.i64[1] = v142.u32[1];
  v146 = vshlq_u64(v64, vnegq_s64(v144));
  v147 = vshlq_u64(v89, vnegq_s64(v145));
  v148 = vshlq_u64(v121, vnegq_s64(v143));
  v149 = vuzp1q_s32(vzip1q_s64(v64, v146), vzip2q_s64(v64, v146));
  v150 = vuzp1q_s32(vzip1q_s64(v89, v147), vzip2q_s64(v89, v147));
  v151 = vuzp1q_s32(vzip1q_s64(v121, v148), vzip2q_s64(v121, v148));
  v152 = vshlq_u32(v149, vnegq_s32((*&v66 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v153 = vshlq_u32(v150, vnegq_s32((*&v81 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v154 = vshlq_u32(v151, vnegq_s32((*&v113 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v155 = vzip2q_s32(v150, v153);
  v156 = vuzp1q_s16(vzip1q_s32(v149, v152), vzip2q_s32(v149, v152));
  v157 = vuzp1q_s16(vzip1q_s32(v150, v153), v155);
  v158 = vuzp1q_s16(vzip1q_s32(v151, v154), vzip2q_s32(v151, v154));
  v159 = vshlq_u16(v156, vnegq_s16((*&v65 & __PAIR128__(0xF0FFF0FFF0FFF0FFLL, 0xF0FFF0FFF0FFF0FFLL))));
  v160 = vshlq_u16(v157, vnegq_s16((*&v80 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v161 = vshlq_u16(v158, vnegq_s16((*&v57 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v155.i32[0] = v20;
  v162 = vzip2q_s16(v156, v159);
  v163 = vzip1q_s16(v156, v159);
  v164 = vzip2q_s16(v157, v160);
  v165 = vzip1q_s16(v157, v160);
  v160.i64[0] = 0x808080808080808;
  v160.i64[1] = 0x808080808080808;
  v166 = vzip2q_s16(v158, v161);
  v167 = vzip1q_s16(v158, v161);
  v168 = vuzp1q_s8(v163, v162);
  v161.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v161.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v169 = vsubq_s8(v63, v65);
  v170 = vuzp1q_s8(v165, v164);
  v165.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v165.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v171 = vsubq_s8(v160, v80);
  v172 = vsubq_s8(v160, v56);
  v173 = vsubq_s8(v160, v57);
  v174 = vuzp1q_s8(v167, v166);
  v175 = vzip1_s32(*v126.i8, *&vextq_s8(v126, v126, 8uLL));
  v176.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v176.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v166.i64[0] = 0x808080808080808;
  v166.i64[1] = 0x808080808080808;
  v155.i8[1] = BYTE1(v20);
  v177 = vaddq_s8(v65, v161);
  v178 = vshlq_s8(v168, v169);
  v179 = vaddq_s8(v80, v165);
  v180 = vaddq_s8(v56, v165);
  v181 = vshlq_s8(v79, v172);
  v182 = vaddq_s8(v57, v165);
  v183 = vshlq_s8(v174, v173);
  v143.i64[0] = v175.u32[0];
  v143.i64[1] = v175.u32[1];
  v184 = *&v58 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
  v185 = vaddq_s8(v58, v176);
  v186 = vsubq_s8(v166, v58);
  v187 = vdupq_lane_s16(*v155.i8, 0);
  v188 = vshlq_s8(v178, v177);
  v189 = vshlq_s8(vshlq_s8(v170, v171), v179);
  v190 = vshlq_u64(v133, vnegq_s64(v143));
  v191 = vuzp1q_s32(vzip1q_s64(v133, v190), vzip2q_s64(v133, v190));
  v192 = vshlq_u32(v191, vnegq_s32((*&v125 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v193 = vuzp1q_s16(vzip1q_s32(v191, v192), vzip2q_s32(v191, v192));
  v194 = vshlq_u16(v193, vnegq_s16(v184));
  v195 = vaddq_s8(vandq_s8(v188, v59), v189);
  v196 = vdupq_lane_s16(*v188.i8, 0);
  v197 = vsubq_s8(v195, vandq_s8(v59, v196));
  v198 = vsubq_s8(vshlq_s8(v181, v180), vandq_s8(v60, v196));
  v199 = vsubq_s8(vshlq_s8(v183, v182), vandq_s8(v61, v196));
  v200 = vandq_s8(v62, v196);
  v201.i64[0] = 0x101010101010101;
  v201.i64[1] = 0x101010101010101;
  v202 = vaddlvq_s8(vceqq_s8(v27, v201));
  v203 = vsubq_s8(vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v193, v194), vzip2q_s16(v193, v194)), v186), v185), v200);
  if (v202)
  {
    v204 = vandq_s8(v23, v201);
    v205 = vnegq_s8(v204);
    v206 = v197;
    v206.i16[0] = v197.i16[7];
    v206.i16[7] = v197.i16[0];
    v207 = vorrq_s8(vandq_s8(v206, v205), vandq_s8(v197, vceqzq_s8(v204)));
    v208 = vaddq_s8(v207, vandq_s8(vqtbl1q_s8(v207, xmmword_29D2F0E60), v205));
    v197 = vaddq_s8(v208, vandq_s8(vqtbl1q_s8(v208, xmmword_29D2F0E70), v205));
    v209 = vaddq_s8(vandq_s8(vqtbl1q_s8(v198, xmmword_29D2F0E80), v205), v198);
    v198 = vaddq_s8(vandq_s8(vqtbl1q_s8(v209, xmmword_29D2F0E90), v205), v209);
    v210 = vaddq_s8(vandq_s8(vqtbl1q_s8(v199, xmmword_29D2F0EA0), v205), v199);
    v199 = vaddq_s8(vandq_s8(vqtbl1q_s8(v210, xmmword_29D2F0EB0), v205), v210);
    v211 = vaddq_s8(vandq_s8(vqtbl1q_s8(v203, xmmword_29D2F0EC0), v205), v203);
    v203 = vaddq_s8(vandq_s8(vqtbl1q_s8(v211, xmmword_29D2F0ED0), v205), v211);
  }

  v212 = vaddq_s8(v197, v187);
  v213 = vaddq_s8(v198, v187);
  v214 = vaddq_s8(v199, v187);
  v215 = vaddq_s8(v203, v187);
  v216.i64[0] = 0x1010101010101010;
  v216.i64[1] = 0x1010101010101010;
  v217 = vcgtq_u8(v216, v23);
  v218 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v212, xmmword_29D2F0EE0), v217), v212);
  v219 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v213, xmmword_29D2F0EE0), v217), v213);
  v220 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v214, xmmword_29D2F0EE0), v217), v214);
  v221 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v215, xmmword_29D2F0EE0), v217), v215);
  *a1 = vuzp1q_s32(v218, v220);
  *(a1 + a2) = vuzp2q_s32(v218, v220);
  v222 = (a1 + 2 * a2);
  *v222 = vuzp1q_s32(v219, v221);
  *(v222 + a2) = vuzp2q_s32(v219, v221);
  return v134;
}

float32x2x2_t *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(float32x2x2_t *result, uint64_t a2, uint64_t a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = 0;
  v7 = 2 * a2;
  if (a5 && a6)
  {
    v8 = *result;
    v9 = *(result + a2);
    v10 = *(result + 2 * a2);
    v11 = *(result + v7 + a2);
    v12 = vzip2q_s32(*result, v9);
    v13 = a3;
    vst2_f32(v13, v8);
    v13 += 4;
    vst2_f32(v13, v10);
    *(a3 + 32) = v12;
    *(a3 + 48) = vzip2q_s32(v10, v11);
    a3 += 64;
    v6 = 63;
  }

  v14 = 0;
  v15 = 4 * a2;
  *a4 = v6;
  if (a5 && a6 >= 5)
  {
    v16 = *(result + 4 * a2);
    v17 = *(result + v15 + a2);
    v18 = (result + v15 + v7);
    v19 = *v18;
    v20 = *(v18 + a2);
    v21 = vzip2q_s32(*v18, v20);
    v22 = a3;
    vst2_f32(v22, v16);
    v22 += 4;
    vst2_f32(v22, v19);
    *(a3 + 32) = vzip2q_s32(v16, v17);
    *(a3 + 48) = v21;
    a3 += 64;
    v14 = 63;
  }

  v23 = 0;
  a4[1] = v14;
  if (a5 >= 9 && a6)
  {
    v24 = result[1];
    v25 = *(&result[1] + a2);
    v26 = (&result[1] + v7);
    v27 = *v26;
    v28 = *(v26 + a2);
    v29 = vzip2q_s32(*v26, v28);
    v30 = a3;
    vst2_f32(v30, v24);
    v30 += 4;
    vst2_f32(v30, v27);
    *(a3 + 32) = vzip2q_s32(v24, v25);
    *(a3 + 48) = v29;
    a3 += 64;
    v23 = 63;
  }

  v31 = 0;
  a4[2] = v23;
  if (a5 >= 9 && a6 >= 5)
  {
    v32 = (result + v15);
    v33 = v32[1];
    ++v32;
    v34 = v33.i64[0];
    v35 = *(v32 + a2);
    v36 = (v32 + v7);
    v37 = *v36;
    v38 = *(v36 + a2);
    v39 = vzip2q_s32(*v36, v38);
    v40 = a3;
    vst2_f32(v40, *&v34);
    v40 += 4;
    vst2_f32(v40, v37);
    *(a3 + 32) = vzip2q_s32(v33, v35);
    *(a3 + 48) = v39;
    a3 += 64;
    v31 = 63;
  }

  v41 = 0;
  a4[3] = v31;
  if (a5 && a6 >= 9)
  {
    v42 = (result + 8 * a2);
    v43 = *v42;
    v44 = *(v42 + a2);
    v45 = (v42 + v7);
    v46 = *v45;
    v47 = *(v45 + a2);
    v48 = vzip2q_s32(*v45, v47);
    v49 = a3;
    vst2_f32(v49, v43);
    v49 += 4;
    vst2_f32(v49, v46);
    *(a3 + 32) = vzip2q_s32(v43, v44);
    *(a3 + 48) = v48;
    a3 += 64;
    v41 = 63;
  }

  v50 = 0;
  a4[4] = v41;
  if (a5 && a6 >= 0xD)
  {
    v51 = (result + 12 * a2);
    v52 = *v51;
    v53 = *(v51 + a2);
    v54 = (v51 + v7);
    v55 = *v54;
    v56 = *(v54 + a2);
    v57 = vzip2q_s32(*v54, v56);
    v58 = a3;
    vst2_f32(v58, v52);
    v58 += 4;
    vst2_f32(v58, v55);
    *(a3 + 32) = vzip2q_s32(v52, v53);
    *(a3 + 48) = v57;
    a3 += 64;
    v50 = 63;
  }

  v59 = 0;
  a4[5] = v50;
  if (a5 >= 9 && a6 >= 9)
  {
    v60 = &result->val[a2];
    v61 = v60[1];
    ++v60;
    v62 = v61.i64[0];
    v63 = *(v60 + a2);
    v64 = (v60 + v7);
    v65 = *v64;
    v66 = *(v64 + a2);
    v67 = vzip2q_s32(*v64, v66);
    v68 = a3;
    vst2_f32(v68, *&v62);
    v68 += 4;
    vst2_f32(v68, v65);
    *(a3 + 32) = vzip2q_s32(v61, v63);
    *(a3 + 48) = v67;
    a3 += 64;
    v59 = 63;
  }

  v69 = 0;
  a4[6] = v59;
  if (a5 >= 9 && a6 >= 0xD)
  {
    v70 = (result + 12 * a2);
    v71 = v70[1];
    ++v70;
    v72 = v71.i64[0];
    v73 = *(v70 + a2);
    v74 = &v70->i8[v7];
    v75 = *v74;
    v76 = *(v74 + a2);
    v77 = a3;
    vst2_f32(v77, *&v72);
    v77 += 4;
    vst2_f32(v77, v75);
    *(a3 + 32) = vzip2q_s32(v71, v73);
    *(a3 + 48) = vzip2q_s32(v75, v76);
    v69 = 63;
  }

  a4[7] = v69;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, __n128 a4, int32x4_t a5)
{
  v8 = *a3;
  if (v8 == 63)
  {
    v10 = *a2;
    a5 = *(a2 + 16);
    v11 = *(a2 + 32);
    v12 = *(a2 + 48);
    *a1 = vuzp1q_s32(*a2, v11);
    *(a1 + 32) = vuzp2q_s32(v10, v11);
    *(a1 + 64) = vuzp1q_s32(a5, v12);
    a4 = vuzp2q_s32(a5, v12);
    *(a1 + 96) = a4;
    v9 = 64;
  }

  else if (v8 == 1)
  {
    a4 = vld1q_dup_s16(a2);
    *a1 = a4;
    *(a1 + 32) = a4;
    *(a1 + 64) = a4;
    *(a1 + 96) = a4;
    v9 = 2;
  }

  else if (*a3)
  {
    v9 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(a1, 32, a2, v8, a4.n128_u64[0], *a5.i8);
  }

  else
  {
    v9 = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
  }

  v13 = a2 + v9;
  v14 = a3[1];
  if (a3[1])
  {
    if (v14 == 1)
    {
      a4 = vld1q_dup_s16(v13);
      *(a1 + 128) = a4;
      *(a1 + 160) = a4;
      *(a1 + 192) = a4;
      *(a1 + 224) = a4;
      v18 = 2;
    }

    else if (v14 == 63)
    {
      v15 = *v13;
      a5 = *(v13 + 16);
      v16 = *(v13 + 32);
      v17 = *(v13 + 48);
      *(a1 + 128) = vuzp1q_s32(*v13, v16);
      *(a1 + 160) = vuzp2q_s32(v15, v16);
      *(a1 + 192) = vuzp1q_s32(a5, v17);
      a4 = vuzp2q_s32(a5, v17);
      *(a1 + 224) = a4;
      v18 = 64;
    }

    else
    {
      v18 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 128), 32, v13, v14, a4.n128_u64[0], *a5.i8);
    }
  }

  else
  {
    v18 = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
  }

  v19 = v13 + v18;
  v20 = a3[2];
  if (a3[2])
  {
    if (v20 == 1)
    {
      a4 = vld1q_dup_s16(v19);
      *(a1 + 16) = a4;
      *(a1 + 48) = a4;
      *(a1 + 80) = a4;
      *(a1 + 112) = a4;
      v24 = 2;
    }

    else if (v20 == 63)
    {
      v21 = *v19;
      a5 = *(v19 + 16);
      v22 = *(v19 + 32);
      v23 = *(v19 + 48);
      *(a1 + 16) = vuzp1q_s32(*v19, v22);
      *(a1 + 48) = vuzp2q_s32(v21, v22);
      *(a1 + 80) = vuzp1q_s32(a5, v23);
      a4 = vuzp2q_s32(a5, v23);
      *(a1 + 112) = a4;
      v24 = 64;
    }

    else
    {
      v24 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 16), 32, v19, v20, a4.n128_u64[0], *a5.i8);
    }
  }

  else
  {
    v24 = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  v25 = v19 + v24;
  v26 = a3[3];
  if (a3[3])
  {
    if (v26 == 1)
    {
      a4 = vld1q_dup_s16(v25);
      *(a1 + 144) = a4;
      *(a1 + 176) = a4;
      *(a1 + 208) = a4;
      *(a1 + 240) = a4;
      v30 = 2;
    }

    else if (v26 == 63)
    {
      v27 = *v25;
      a5 = *(v25 + 16);
      v28 = *(v25 + 32);
      v29 = *(v25 + 48);
      *(a1 + 144) = vuzp1q_s32(*v25, v28);
      *(a1 + 176) = vuzp2q_s32(v27, v28);
      *(a1 + 208) = vuzp1q_s32(a5, v29);
      a4 = vuzp2q_s32(a5, v29);
      *(a1 + 240) = a4;
      v30 = 64;
    }

    else
    {
      v30 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 144), 32, v25, v26, a4.n128_u64[0], *a5.i8);
    }
  }

  else
  {
    v30 = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
  }

  v31 = v25 + v30;
  v32 = a3[4];
  if (a3[4])
  {
    if (v32 == 1)
    {
      a4 = vld1q_dup_s16(v31);
      *(a1 + 256) = a4;
      *(a1 + 288) = a4;
      *(a1 + 320) = a4;
      *(a1 + 352) = a4;
      v36 = 2;
    }

    else if (v32 == 63)
    {
      v33 = *v31;
      a5 = *(v31 + 16);
      v34 = *(v31 + 32);
      v35 = *(v31 + 48);
      *(a1 + 256) = vuzp1q_s32(*v31, v34);
      *(a1 + 288) = vuzp2q_s32(v33, v34);
      *(a1 + 320) = vuzp1q_s32(a5, v35);
      a4 = vuzp2q_s32(a5, v35);
      *(a1 + 352) = a4;
      v36 = 64;
    }

    else
    {
      v36 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 256), 32, v31, v32, a4.n128_u64[0], *a5.i8);
    }
  }

  else
  {
    v36 = 0;
    *(a1 + 256) = 0;
    *(a1 + 264) = 0;
    *(a1 + 288) = 0;
    *(a1 + 296) = 0;
    *(a1 + 320) = 0;
    *(a1 + 328) = 0;
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
  }

  v37 = v31 + v36;
  v38 = a3[5];
  if (a3[5])
  {
    if (v38 == 1)
    {
      a4 = vld1q_dup_s16(v37);
      *(a1 + 384) = a4;
      *(a1 + 416) = a4;
      *(a1 + 448) = a4;
      *(a1 + 480) = a4;
      v42 = 2;
    }

    else if (v38 == 63)
    {
      v39 = *v37;
      a5 = *(v37 + 16);
      v40 = *(v37 + 32);
      v41 = *(v37 + 48);
      *(a1 + 384) = vuzp1q_s32(*v37, v40);
      *(a1 + 416) = vuzp2q_s32(v39, v40);
      *(a1 + 448) = vuzp1q_s32(a5, v41);
      a4 = vuzp2q_s32(a5, v41);
      *(a1 + 480) = a4;
      v42 = 64;
    }

    else
    {
      v42 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 384), 32, v37, v38, a4.n128_u64[0], *a5.i8);
    }
  }

  else
  {
    v42 = 0;
    *(a1 + 384) = 0;
    *(a1 + 392) = 0;
    *(a1 + 416) = 0;
    *(a1 + 424) = 0;
    *(a1 + 448) = 0;
    *(a1 + 456) = 0;
    *(a1 + 480) = 0;
    *(a1 + 488) = 0;
  }

  v43 = v37 + v42;
  v44 = a3[6];
  if (!a3[6])
  {
    result = 0;
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
    *(a1 + 336) = 0;
    *(a1 + 344) = 0;
    *(a1 + 368) = 0;
    *(a1 + 376) = 0;
    v49 = a3[7];
    if (a3[7])
    {
      goto LABEL_51;
    }

    goto LABEL_57;
  }

  if (v44 == 1)
  {
    a4 = vld1q_dup_s16(v43);
    *(a1 + 272) = a4;
    *(a1 + 304) = a4;
    *(a1 + 336) = a4;
    *(a1 + 368) = a4;
    result = 2;
    v49 = a3[7];
    if (!a3[7])
    {
      goto LABEL_57;
    }

    goto LABEL_51;
  }

  if (v44 != 63)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 272), 32, v43, v44, a4.n128_u64[0], *a5.i8);
    v49 = a3[7];
    if (a3[7])
    {
      goto LABEL_51;
    }

LABEL_57:
    *(a1 + 400) = 0;
    *(a1 + 408) = 0;
    *(a1 + 432) = 0;
    *(a1 + 440) = 0;
    *(a1 + 464) = 0;
    *(a1 + 472) = 0;
    *(a1 + 496) = 0;
    *(a1 + 504) = 0;
    return result;
  }

  v45 = *v43;
  a5 = *(v43 + 16);
  v46 = *(v43 + 32);
  v47 = *(v43 + 48);
  *(a1 + 272) = vuzp1q_s32(*v43, v46);
  *(a1 + 304) = vuzp2q_s32(v45, v46);
  *(a1 + 336) = vuzp1q_s32(a5, v47);
  a4 = vuzp2q_s32(a5, v47);
  *(a1 + 368) = a4;
  result = 64;
  v49 = a3[7];
  if (!a3[7])
  {
    goto LABEL_57;
  }

LABEL_51:
  v50 = v43 + result;
  if (v49 == 1)
  {
    v55 = vld1q_dup_s16(v50);
    *(a1 + 400) = v55;
    *(a1 + 432) = v55;
    *(a1 + 464) = v55;
    goto LABEL_55;
  }

  if (v49 == 63)
  {
    v51 = *v50;
    v52 = *(v50 + 16);
    v53 = *(v50 + 32);
    v54 = *(v50 + 48);
    *(a1 + 400) = vuzp1q_s32(*v50, v53);
    *(a1 + 432) = vuzp2q_s32(v51, v53);
    *(a1 + 464) = vuzp1q_s32(v52, v54);
    v55 = vuzp2q_s32(v52, v54);
LABEL_55:
    *(a1 + 496) = v55;
    return result;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 400), 32, v50, v49, a4.n128_u64[0], *a5.i8);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(int8x16_t *a1, char *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v7 = a5 < 4 || a6 < 2;
  v8 = *(a3 + a4);
  v9 = vzip1q_s32(*a3, v8);
  v10 = vzip2q_s32(*a3, v8);
  v11 = (a3 + 2 * a4);
  v12 = *(v11 + a4);
  v13 = vzip1q_s32(*v11, v12);
  v14 = vzip2q_s32(*v11, v12);
  v15 = vdupq_lane_s16(*v9.i8, 0);
  v16 = vsubq_s8(v9, v15);
  v17 = vsubq_s8(v13, v15);
  v18 = vsubq_s8(v10, v15);
  v19 = vsubq_s8(v14, v15);
  v20 = vqtbl1q_s8(v16, xmmword_29D2F0EF0);
  v21 = vpmaxq_s8(v20, v20);
  v22 = vpminq_s8(v20, v20);
  v23 = vpmaxq_s8(v21, v21);
  v24 = vpminq_s8(v22, v22);
  v25 = vpmaxq_s8(v23, v23);
  v26 = vpminq_s8(v24, v24);
  v27 = vzip1q_s8(v25, v26);
  v28.i64[0] = 0x808080808080808;
  v28.i64[1] = 0x808080808080808;
  v29 = vbicq_s8(vsubq_s8(v28, vclsq_s8(v27)), vceqzq_s8(v27));
  v30 = vpmaxq_s8(v29, v29);
  v31 = vqtbl1q_s8(v17, xmmword_29D2F0EF0);
  v32 = vpmaxq_s8(v31, v31);
  v33 = vpminq_s8(v31, v31);
  v34 = vpmaxq_s8(v32, v32);
  v35 = vpminq_s8(v33, v33);
  v36 = vpmaxq_s8(v34, v34);
  v37 = vpminq_s8(v35, v35);
  v38 = vmaxq_s8(v25, v36);
  v39 = vminq_s8(v26, v37);
  v40 = vzip1q_s8(v36, v37);
  v41 = vbicq_s8(vsubq_s8(v28, vclsq_s8(v40)), vceqzq_s8(v40));
  v42 = vpmaxq_s8(v41, v41);
  v43 = vqtbl1q_s8(v18, xmmword_29D2F0EF0);
  v44 = vpmaxq_s8(v43, v43);
  v45 = vpminq_s8(v43, v43);
  v46 = vpmaxq_s8(v44, v44);
  v47 = vpminq_s8(v45, v45);
  v48 = vpmaxq_s8(v46, v46);
  v49 = vpminq_s8(v47, v47);
  v50 = vmaxq_s8(v38, v48);
  v51 = vminq_s8(v39, v49);
  v52 = vzip1q_s8(v48, v49);
  v53 = vbicq_s8(vsubq_s8(v28, vclsq_s8(v52)), vceqzq_s8(v52));
  v54 = vpmaxq_s8(v53, v53);
  v55 = vqtbl1q_s8(v19, xmmword_29D2F0EF0);
  v56 = vpmaxq_s8(v55, v55);
  v57 = vpminq_s8(v55, v55);
  v58 = vpmaxq_s8(v56, v56);
  v59 = vpminq_s8(v57, v57);
  v60 = vpmaxq_s8(v58, v58);
  v61 = vpminq_s8(v59, v59);
  v62 = vmaxq_s8(v50, v60);
  v63 = vminq_s8(v51, v61);
  v64 = vzip1q_s8(v60, v61);
  v65 = vbicq_s8(vsubq_s8(v28, vclsq_s8(v64)), vceqzq_s8(v64));
  v66 = vpmaxq_s8(v65, v65);
  v67 = vmaxq_s8(vmaxq_s8(v30, v42), vmaxq_s8(v54, v66));
  v68 = vclzq_s8(vsubq_s8(v62, v63));
  v69 = vsubq_s8(v28, v68);
  v70 = vminq_s8(v69, v67);
  if (vmaxvq_s8(v70))
  {
    v399 = v13;
    v400 = v9;
    v401 = v14;
    v402 = v10;
    v71.i64[0] = -1;
    v71.i64[1] = -1;
    v72.i64[0] = 0x707070707070707;
    v72.i64[1] = 0x707070707070707;
    v73 = vcgtq_s8(v67, v69);
    v403 = vandq_s8(vsubq_s8(vshlq_s8(v71, vsubq_s8(v72, v68)), v63), v73);
    v74.i64[0] = 0x303030303030303;
    v74.i64[1] = 0x303030303030303;
    v75 = vmaxq_s8(vminq_s8(vsubq_s8(v70, v30), v74), 0);
    v76 = vmaxq_s8(vminq_s8(vsubq_s8(v70, v42), v74), 0);
    v77 = vmaxq_s8(vminq_s8(vsubq_s8(v70, v54), v74), 0);
    v78 = vmaxq_s8(vminq_s8(vsubq_s8(v70, v66), v74), 0);
    v79.i64[0] = 0x404040404040404;
    v79.i64[1] = 0x404040404040404;
    v80 = vorrq_s8(vbicq_s8(v79, vceqq_s8(vaddq_s8(v78, v77), vnegq_s8(vaddq_s8(v75, v76)))), vorrq_s8(vandq_s8(vceqzq_s8(v70), v74), vandq_s8(v73, v28)));
    v81 = vsubq_s8(v16, vqtbl1q_s8(v16, xmmword_29D2F0EE0));
    v82 = vsubq_s8(v17, vqtbl1q_s8(v17, xmmword_29D2F0EE0));
    v83 = vsubq_s8(v18, vqtbl1q_s8(v18, xmmword_29D2F0EE0));
    v84 = vsubq_s8(v19, vqtbl1q_s8(v19, xmmword_29D2F0EE0));
    v85 = vqtbl1q_s8(v81, xmmword_29D2F0EF0);
    v86 = vpmaxq_s8(v85, v85);
    v87 = vpminq_s8(v85, v85);
    v88 = vpmaxq_s8(v86, v86);
    v89 = vpminq_s8(v87, v87);
    v90 = vpmaxq_s8(v88, v88);
    v91 = vpminq_s8(v89, v89);
    v92 = vzip1q_s8(v90, v91);
    v93 = vbicq_s8(vsubq_s8(v28, vclsq_s8(v92)), vceqzq_s8(v92));
    v94 = v19;
    v95 = vpmaxq_s8(v93, v93);
    v96 = vqtbl1q_s8(v82, xmmword_29D2F0EF0);
    v97 = vpmaxq_s8(v96, v96);
    v98 = vpminq_s8(v96, v96);
    v99 = vpmaxq_s8(v97, v97);
    v100 = vpminq_s8(v98, v98);
    v101 = vpmaxq_s8(v99, v99);
    v102 = vpminq_s8(v100, v100);
    v103 = vmaxq_s8(v90, v101);
    v104 = vminq_s8(v91, v102);
    v105 = vzip1q_s8(v101, v102);
    v106 = vbicq_s8(vsubq_s8(v28, vclsq_s8(v105)), vceqzq_s8(v105));
    v107 = vpmaxq_s8(v106, v106);
    v108 = vqtbl1q_s8(v83, xmmword_29D2F0EF0);
    v109 = vpmaxq_s8(v108, v108);
    v110 = vpminq_s8(v108, v108);
    v111 = vpmaxq_s8(v109, v109);
    v112 = vpminq_s8(v110, v110);
    v113 = vpmaxq_s8(v111, v111);
    v114 = vpminq_s8(v112, v112);
    v115 = vmaxq_s8(v103, v113);
    v116 = vminq_s8(v104, v114);
    v117 = vzip1q_s8(v113, v114);
    v118 = vbicq_s8(vsubq_s8(v28, vclsq_s8(v117)), vceqzq_s8(v117));
    v119 = vpmaxq_s8(v118, v118);
    v120 = vqtbl1q_s8(v84, xmmword_29D2F0EF0);
    v121 = vpmaxq_s8(v120, v120);
    v122 = vpminq_s8(v120, v120);
    v123 = vpmaxq_s8(v121, v121);
    v124 = vpminq_s8(v122, v122);
    v125 = vpmaxq_s8(v123, v123);
    v126 = vpminq_s8(v124, v124);
    v127 = vmaxq_s8(v115, v125);
    v128 = vminq_s8(v116, v126);
    v129 = vzip1q_s8(v125, v126);
    v130 = vbicq_s8(vsubq_s8(v28, vclsq_s8(v129)), vceqzq_s8(v129));
    v131 = vpmaxq_s8(v130, v130);
    v132 = vmaxq_s8(vmaxq_s8(v95, v107), vmaxq_s8(v119, v131));
    v133 = vclzq_s8(vsubq_s8(v127, v128));
    v134 = vsubq_s8(v28, v133);
    v135 = vcgtq_s8(v132, v134);
    v136 = vminq_s8(v134, v132);
    v134.i64[0] = 0x1010101010101010;
    v134.i64[1] = 0x1010101010101010;
    v137.i64[0] = 0x1818181818181818;
    v137.i64[1] = 0x1818181818181818;
    v138 = vorrq_s8(vandq_s8(vceqzq_s8(v136), v74), vbslq_s8(v135, v137, v134));
    v139 = vmaxq_s8(vminq_s8(vsubq_s8(v136, v95), v74), 0);
    v140 = vmaxq_s8(vminq_s8(vsubq_s8(v136, v107), v74), 0);
    v141 = vmaxq_s8(vminq_s8(vsubq_s8(v136, v119), v74), 0);
    v142 = vmaxq_s8(vminq_s8(vsubq_s8(v136, v131), v74), 0);
    v143 = vsubq_s8(v136, v139);
    v144 = vsubq_s8(v136, v140);
    v145 = vsubq_s8(v136, v141);
    v146 = vsubq_s8(v136, v142);
    v147 = vorrq_s8(v138, vbicq_s8(v79, vceqq_s8(vaddq_s8(v142, v141), vnegq_s8(vaddq_s8(v139, v140)))));
    v148 = vmovl_u8(*v147.i8);
    v140.i64[0] = 0x8000800080008;
    v140.i64[1] = 0x8000800080008;
    v139.i64[0] = 0x2000200020002;
    v139.i64[1] = 0x2000200020002;
    v149 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v145.i8, *v144.i8), *v146.i8), 3uLL), *v143.i8, 0x707070707070707), vandq_s8(vshll_n_u8(*v147.i8, 1uLL), v140)), vbicq_s8(vmovl_s8(*v136.i8), vceqzq_s16((*&v148 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8))))), vandq_s8(vceqq_s16((*&v148 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v139), v140));
    v150 = vceqq_s16((*&vmovl_u8(*v80.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v139);
    v151 = vsubq_s8(v70, v75);
    v152 = vsubq_s8(v70, v76);
    v153 = vsubq_s8(v70, v77);
    v154 = vsubq_s8(v70, v78);
    v155 = vdupq_lane_s16(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddw_s8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v153.i8, *v152.i8), *v154.i8), 3uLL), *v151.i8, 0x707070707070707), vbic_s8(*v70.i8, vcgt_u8(0x808080808080808, *v80.i8))), (*&vshll_n_u8(*v80.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9))), vandq_s8(v150, v140)), v149)), 0);
    if (vaddlvq_s8(v155))
    {
      v156.i64[0] = 0x707070707070707;
      v156.i64[1] = 0x707070707070707;
      v157.i64[0] = -1;
      v157.i64[1] = -1;
      v15 = vbslq_s8(v155, vsubq_s8(v15, vqtbl1q_s8(v15, xmmword_29D2F0EE0)), v15);
      v16 = vbslq_s8(v155, v81, v16);
      v17 = vbslq_s8(v155, v82, v17);
      v18 = vbslq_s8(v155, v83, v18);
      v94 = vbslq_s8(v155, v84, v94);
      v151 = vbslq_s8(v155, v143, v151);
      v152 = vbslq_s8(v155, v144, v152);
      v153 = vbslq_s8(v155, v145, v153);
      v154 = vbslq_s8(v155, v146, v154);
      v158 = vbslq_s8(v155, vandq_s8(vsubq_s8(vshlq_s8(v157, vsubq_s8(v156, v133)), v128), v135), v403);
      v70 = vbslq_s8(v155, v136, v70);
      v80 = vbslq_s8(v155, v147, v80);
    }

    else
    {
      v158 = v403;
    }

    if (!v7)
    {
      v404 = v158;
      v161 = vsubq_s8(v9, vqtbl1q_s8(v9, xmmword_29D2F0F00));
      v162 = v399;
      v162.i16[7] = v9.i16[7];
      v163 = vsubq_s8(v399, vqtbl1q_s8(v162, xmmword_29D2F0F10));
      v164 = v402;
      v164.i16[7] = v9.i16[7];
      v165 = v401;
      v165.i16[7] = v9.i16[7];
      v166 = vsubq_s8(v402, vqtbl1q_s8(v164, xmmword_29D2F0F20));
      v167 = vsubq_s8(v401, vqtbl1q_s8(v165, xmmword_29D2F0F30));
      v168 = v161;
      v168.i16[0] = v161.i16[7];
      v168.i16[7] = v161.i16[0];
      v169 = vqtbl1q_s8(v168, xmmword_29D2F0EF0);
      v170 = vpmaxq_s8(v169, v169);
      v171 = vpminq_s8(v169, v169);
      v172 = vpmaxq_s8(v170, v170);
      v173 = vpminq_s8(v171, v171);
      v174 = vpmaxq_s8(v172, v172);
      v175 = vpminq_s8(v173, v173);
      v176 = vzip1q_s8(v174, v175);
      v177.i64[0] = 0x808080808080808;
      v177.i64[1] = 0x808080808080808;
      v178 = vbicq_s8(vsubq_s8(v177, vclsq_s8(v176)), vceqzq_s8(v176));
      v179 = vpmaxq_s8(v178, v178);
      v398 = v163;
      v180 = vqtbl1q_s8(v163, xmmword_29D2F0EF0);
      v181 = vpmaxq_s8(v180, v180);
      v182 = vpminq_s8(v180, v180);
      v183 = vpmaxq_s8(v181, v181);
      v184 = vpminq_s8(v182, v182);
      v185 = vpmaxq_s8(v183, v183);
      v186 = vpminq_s8(v184, v184);
      v187 = vmaxq_s8(v174, v185);
      v188 = vminq_s8(v175, v186);
      v189 = vzip1q_s8(v185, v186);
      v190 = vbicq_s8(vsubq_s8(v177, vclsq_s8(v189)), vceqzq_s8(v189));
      v191 = vpmaxq_s8(v190, v190);
      v192 = vqtbl1q_s8(v166, xmmword_29D2F0EF0);
      v193 = vpmaxq_s8(v192, v192);
      v194 = vpminq_s8(v192, v192);
      v195 = vpmaxq_s8(v193, v193);
      v196 = vpminq_s8(v194, v194);
      v197 = vpmaxq_s8(v195, v195);
      v198 = vpminq_s8(v196, v196);
      v199 = vmaxq_s8(v187, v197);
      v200 = vminq_s8(v188, v198);
      v201 = vzip1q_s8(v197, v198);
      v202 = vbicq_s8(vsubq_s8(v177, vclsq_s8(v201)), vceqzq_s8(v201));
      v203 = vpmaxq_s8(v202, v202);
      v204 = vqtbl1q_s8(v167, xmmword_29D2F0EF0);
      v205 = vpmaxq_s8(v204, v204);
      v206 = vpminq_s8(v204, v204);
      v207 = vpmaxq_s8(v205, v205);
      v208 = vpminq_s8(v206, v206);
      v209 = vpmaxq_s8(v207, v207);
      v210 = vpminq_s8(v208, v208);
      v211 = vmaxq_s8(v199, v209);
      v212 = vminq_s8(v200, v210);
      v213 = vzip1q_s8(v209, v210);
      v214 = vbicq_s8(vsubq_s8(v177, vclsq_s8(v213)), vceqzq_s8(v213));
      v215 = vpmaxq_s8(v214, v214);
      v216 = vmaxq_s8(vmaxq_s8(v179, v191), vmaxq_s8(v203, v215));
      v217 = vclzq_s8(vsubq_s8(v211, v212));
      v218 = vsubq_s8(v177, v217);
      v219 = vcgtq_s8(v216, v218);
      v220 = vminq_s8(v218, v216);
      v218.i64[0] = 0x909090909090909;
      v218.i64[1] = 0x909090909090909;
      v221.i64[0] = 0x202020202020202;
      v221.i64[1] = 0x202020202020202;
      v222 = vorrq_s8(vandq_s8(vceqzq_s8(v220), v221), vsubq_s8(vandq_s8(v219, v218), vmvnq_s8(v219)));
      v177.i64[0] = 0x303030303030303;
      v177.i64[1] = 0x303030303030303;
      v223 = vmaxq_s8(vminq_s8(vsubq_s8(v220, v179), v177), 0);
      v224 = vmaxq_s8(vminq_s8(vsubq_s8(v220, v191), v177), 0);
      v225 = vmaxq_s8(vminq_s8(vsubq_s8(v220, v203), v177), 0);
      v226 = vmaxq_s8(vminq_s8(vsubq_s8(v220, v215), v177), 0);
      v227 = vsubq_s8(v220, v223);
      v228 = vsubq_s8(v220, v224);
      v229 = vsubq_s8(v220, v225);
      v230 = vsubq_s8(v220, v226);
      v231 = vceqq_s8(vaddq_s8(v226, v225), vnegq_s8(vaddq_s8(v223, v224)));
      v223.i64[0] = 0x404040404040404;
      v223.i64[1] = 0x404040404040404;
      v232 = vorrq_s8(v222, vbicq_s8(v223, v231));
      v225.i64[0] = 0x3000300030003;
      v225.i64[1] = 0x3000300030003;
      v233 = vmovl_s8(*v80.i8);
      v177.i64[0] = 0x8000800080008;
      v177.i64[1] = 0x8000800080008;
      v234 = vbicq_s8(vmovl_s8(*v70.i8), vceqzq_s16(vandq_s8(v233, v177)));
      v235 = vandq_s8(v233, v225);
      v225.i64[0] = 0x2000200020002;
      v225.i64[1] = 0x2000200020002;
      v236 = vdupq_lane_s16(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v234, vandq_s8(vshll_n_s8(*v80.i8, 1uLL), v177)), vandq_s8(vceqq_s16(v235, v225), v177)), *v151.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v153.i8, *v152.i8), *v154.i8), 3uLL)), vaddw_s8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v229.i8, *v228.i8), *v230.i8), 3uLL), *v227.i8, 0x707070707070707), vand_s8(vadd_s8(*v232.i8, *v232.i8), 0x808080808080808)), vbic_s8(*v220.i8, vcgt_u8(0x808080808080808, *v232.i8))))), 0);
      if (vaddlvq_s8(v236))
      {
        v237.i64[0] = 0x707070707070707;
        v237.i64[1] = 0x707070707070707;
        v238.i64[0] = -1;
        v238.i64[1] = -1;
        v15.i16[0] = vbslq_s8(v236, vextq_s8(v400, v400, 0xEuLL), v15).u16[0];
        v16 = vbslq_s8(v236, v168, v16);
        v17 = vbslq_s8(v236, v398, v17);
        v18 = vbslq_s8(v236, v166, v18);
        v94 = vbslq_s8(v236, v167, v94);
        v151 = vbslq_s8(v236, v227, v151);
        v152 = vbslq_s8(v236, v228, v152);
        v153 = vbslq_s8(v236, v229, v153);
        v154 = vbslq_s8(v236, v230, v154);
        v158 = vbslq_s8(v236, vandq_s8(vsubq_s8(vshlq_s8(v238, vsubq_s8(v237, v217)), v212), v219), v404);
        v70 = vbslq_s8(v236, v220, v70);
        v80 = vbslq_s8(v236, v232, v80);
      }

      else
      {
        v158 = v404;
      }
    }

    v239 = vmovl_s8(*v80.i8);
    v240.i64[0] = 0x8000800080008;
    v240.i64[1] = 0x8000800080008;
    v241 = vbicq_s8(vmovl_s8(*v70.i8), vceqzq_s16(vandq_s8(v239, v240)));
    v242.i64[0] = 0x3000300030003;
    v242.i64[1] = 0x3000300030003;
    v243 = vandq_s8(v239, v242);
    v242.i64[0] = 0x2000200020002;
    v242.i64[1] = 0x2000200020002;
    v244 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v153.i8, *v152.i8), *v154.i8), 3uLL), *v151.i8, 0x707070707070707), vandq_s8(vshll_n_s8(*v80.i8, 1uLL), v240)), v241), vandq_s8(vceqq_s16(v243, v242), v240));
    if ((vpaddq_s16(v244, v244).i16[0] + 37) >= 0x200)
    {
      *a1 = v400;
      a1[1] = v399;
      v159 = 63;
      a1[2] = v402;
      a1[3] = v401;
      result = 64;
    }

    else
    {
      v245 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v246 = 8 * (a1 & 7);
      if (v246)
      {
        v247 = *v245 & ~(-1 << v246);
      }

      else
      {
        v247 = 0;
      }

      v248 = ((v70.i8[0] - 1) & 7) << 10;
      if (!v70.i8[0])
      {
        v248 = 0;
      }

      if (v70.i8[1])
      {
        v249 = ((v70.u8[1] << 13) - 0x2000) & 0xE000;
      }

      else
      {
        v249 = 0;
      }

      *a2 = v80.i8[0] << 6;
      v250 = ((v248 | v249) & 0xFFFFFFFFFFFFFC1FLL | v80.i8[0] & 0x1C | (32 * (v80.i8[1] & 0x1F))) >> 2;
      v251 = v247 | (v250 << v246);
      if (v246 >= 0x32)
      {
        *v245 = v251;
        v251 = v250 >> (-8 * (a1 & 7u));
      }

      v252 = (v246 + 14) & 0x3E;
      v253 = v251 | (v15.u16[0] << v252);
      if (v252 >= 0x30)
      {
        *(v245 + (((v246 + 14) >> 3) & 8)) = v253;
        v253 = v15.u16[0] >> -v252;
      }

      v254 = v246 + 30;
      v255 = vsubq_s8(v70, v151);
      v256 = vsubq_s8(v70, v152);
      v257 = vsubq_s8(v70, v153);
      v258 = vsubq_s8(v70, v154);
      v255.i64[0] = vzip1q_s32(vzip1q_s16(vzip1q_s8(v255, v256), vzip1q_s8(v257, v258)), vzip1q_s16(vtrn2q_s8(v255, v256), vtrn2q_s8(v257, v258))).u64[0];
      v257.i64[0] = 0x202020202020202;
      v257.i64[1] = 0x202020202020202;
      v259 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16(vand_s8(*&vmovl_u8(*v80.i8), 0x4000400040004)))), v257);
      v257.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v257.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v258.i64[0] = -1;
      v258.i64[1] = -1;
      v260 = vandq_s8(vshlq_u8(v258, vorrq_s8(v259, v257)), v255.u64[0]);
      v261 = vmovl_u8(*v259.i8);
      v262 = vpaddq_s16(vshlq_u16(vmovl_u8(*v260.i8), vtrn1q_s16(0, v261)), vmovl_high_u8(v260));
      v263 = vpaddq_s16(v261, vmovl_high_u8(v259));
      v264 = vmovl_u16(*v263.i8);
      v265 = vmovl_high_u16(v263);
      v266 = vpaddq_s32(vshlq_u32(vmovl_u16(*v262.i8), vtrn1q_s32(0, v264)), vshlq_u32(vmovl_high_u16(v262), vtrn1q_s32(0, v265)));
      v267 = vpaddq_s32(v264, v265);
      v268.i64[0] = v266.u32[0];
      v268.i64[1] = v266.u32[1];
      v269 = v268;
      v268.i64[0] = v266.u32[2];
      v268.i64[1] = v266.u32[3];
      v270 = v268;
      v268.i64[0] = v267.u32[0];
      v268.i64[1] = v267.u32[1];
      v271 = v268;
      v268.i64[0] = v267.u32[2];
      v268.i64[1] = v267.u32[3];
      v272 = vpaddq_s64(vshlq_u64(v269, vzip1q_s64(0, v271)), vshlq_u64(v270, vzip1q_s64(0, v268)));
      v273 = vpaddq_s64(v271, v268);
      v274 = (v246 + 30) & 0x3E;
      v275 = (v272.i64[0] << v274) | v253;
      if ((v273.i64[0] + v274) >= 0x40)
      {
        *(v245 + ((v254 >> 3) & 8)) = v275;
        v275 = v272.i64[0] >> -v274;
      }

      v276 = vceqq_s8(v70, v151);
      v277 = v273.i64[0] + v254;
      v278 = v275 | (v272.i64[1] << v277);
      if ((v277 & 0x3F) + v273.i64[1] >= 0x40)
      {
        *(v245 + ((v277 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v278;
        v278 = v272.i64[1] >> -(v277 & 0x3F);
        if ((v277 & 0x3F) == 0)
        {
          v278 = 0;
        }
      }

      v279 = vandq_s8(v158, v276);
      v280 = v277 + v273.i64[1];
      v281.i64[0] = 0x808080808080808;
      v281.i64[1] = 0x808080808080808;
      v282.i64[0] = -1;
      v282.i64[1] = -1;
      v283 = vandq_s8(vextq_s8(vtstq_s8(v80, v281), 0, 0xEuLL), v70);
      v284.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v284.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v285 = vandq_s8(vshlq_u8(v282, vaddq_s8(v283, v284)), v158);
      v286 = vmovl_u8(*v283.i8);
      v287 = vpaddq_s16(vshlq_u16(vmovl_u8(*v285.i8), vtrn1q_s16(0, v286)), vmovl_high_u8(v285));
      v288 = vpaddq_s16(v286, vmovl_high_u8(v283));
      v289 = vmovl_u16(*v288.i8);
      v290 = vmovl_high_u16(v288);
      v291 = vpaddq_s32(vshlq_u32(vmovl_u16(*v287.i8), vtrn1q_s32(0, v289)), vshlq_u32(vmovl_high_u16(v287), vtrn1q_s32(0, v290)));
      v292 = vpaddq_s32(v289, v290);
      v293.i64[0] = v291.u32[0];
      v293.i64[1] = v291.u32[1];
      v294 = v293;
      v293.i64[0] = v291.u32[2];
      v293.i64[1] = v291.u32[3];
      v295 = v293;
      v293.i64[0] = v292.u32[0];
      v293.i64[1] = v292.u32[1];
      v296 = v293;
      v293.i64[0] = v292.u32[2];
      v293.i64[1] = v292.u32[3];
      v297 = vpaddq_s64(vshlq_u64(v294, vzip1q_s64(0, v296)), vshlq_u64(v295, vzip1q_s64(0, v293)));
      v298 = vpaddq_s64(v296, v293);
      v299 = (v297.i64[0] << v280) | v278;
      if (v298.i64[0] + (v280 & 0x3F) >= 0x40)
      {
        *(v245 + ((v280 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v299;
        v299 = v297.i64[0] >> -(v280 & 0x3F);
        if ((v280 & 0x3F) == 0)
        {
          v299 = 0;
        }
      }

      v300 = vceqq_s8(v70, v152);
      v301 = vaddq_s8(v279, v16);
      v302 = v298.i64[0] + v280;
      v303 = v299 | (v297.i64[1] << v302);
      if ((v302 & 0x3F) + v298.i64[1] >= 0x40)
      {
        *(v245 + ((v302 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v303;
        v303 = v297.i64[1] >> -(v302 & 0x3F);
        if ((v302 & 0x3F) == 0)
        {
          v303 = 0;
        }
      }

      v304 = vandq_s8(v158, v300);
      v305 = v302 + v298.i64[1];
      v306 = vextq_s8(0, v151, 0xEuLL);
      v307.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v307.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v308.i64[0] = -1;
      v308.i64[1] = -1;
      v309 = vandq_s8(vshlq_u8(v308, vaddq_s8(v306, v307)), v301);
      v310 = vmovl_u8(*v306.i8);
      v311 = vmovl_high_u8(v306);
      v312 = vpaddq_s16(vshlq_u16(vmovl_u8(*v309.i8), vtrn1q_s16(0, v310)), vshlq_u16(vmovl_high_u8(v309), vtrn1q_s16(0, v311)));
      v313 = vpaddq_s16(v310, v311);
      v314 = vmovl_u16(*v313.i8);
      v315 = vmovl_high_u16(v313);
      v316 = vpaddq_s32(vshlq_u32(vmovl_u16(*v312.i8), vtrn1q_s32(0, v314)), vshlq_u32(vmovl_high_u16(v312), vtrn1q_s32(0, v315)));
      v317 = vpaddq_s32(v314, v315);
      v318.i64[0] = v316.u32[0];
      v318.i64[1] = v316.u32[1];
      v319 = v318;
      v318.i64[0] = v316.u32[2];
      v318.i64[1] = v316.u32[3];
      v320 = v318;
      v318.i64[0] = v317.u32[0];
      v318.i64[1] = v317.u32[1];
      v321 = v318;
      v318.i64[0] = v317.u32[2];
      v318.i64[1] = v317.u32[3];
      v322 = vpaddq_s64(vshlq_u64(v319, vzip1q_s64(0, v321)), vshlq_u64(v320, vzip1q_s64(0, v318)));
      v323 = vpaddq_s64(v321, v318);
      v324 = (v322.i64[0] << v305) | v303;
      if (v323.i64[0] + (v305 & 0x3F) >= 0x40)
      {
        *(v245 + ((v305 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v324;
        v324 = v322.i64[0] >> -(v305 & 0x3F);
        if ((v305 & 0x3F) == 0)
        {
          v324 = 0;
        }
      }

      v325 = vceqq_s8(v70, v153);
      v326 = vaddq_s8(v17, v304);
      v327 = v323.i64[0] + v305;
      v328 = v324 | (v322.i64[1] << v327);
      if ((v327 & 0x3F) + v323.i64[1] >= 0x40)
      {
        *(v245 + ((v327 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v328;
        v328 = v322.i64[1] >> -(v327 & 0x3F);
        if ((v327 & 0x3F) == 0)
        {
          v328 = 0;
        }
      }

      v329 = vandq_s8(v158, v325);
      v330 = v327 + v323.i64[1];
      v331.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v331.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v332.i64[0] = -1;
      v332.i64[1] = -1;
      v333 = vandq_s8(vshlq_u8(v332, vaddq_s8(v152, v331)), v326);
      v334 = vmovl_u8(*v152.i8);
      v335 = vmovl_high_u8(v152);
      v336 = vpaddq_s16(vshlq_u16(vmovl_u8(*v333.i8), vtrn1q_s16(0, v334)), vshlq_u16(vmovl_high_u8(v333), vtrn1q_s16(0, v335)));
      v337 = vpaddq_s16(v334, v335);
      v338 = vmovl_u16(*v337.i8);
      v339 = vmovl_high_u16(v337);
      v340 = vpaddq_s32(vshlq_u32(vmovl_u16(*v336.i8), vtrn1q_s32(0, v338)), vshlq_u32(vmovl_high_u16(v336), vtrn1q_s32(0, v339)));
      v341 = vpaddq_s32(v338, v339);
      v342.i64[0] = v340.u32[0];
      v342.i64[1] = v340.u32[1];
      v343 = v342;
      v342.i64[0] = v340.u32[2];
      v342.i64[1] = v340.u32[3];
      v344 = v342;
      v342.i64[0] = v341.u32[0];
      v342.i64[1] = v341.u32[1];
      v345 = v342;
      v342.i64[0] = v341.u32[2];
      v342.i64[1] = v341.u32[3];
      v346 = vpaddq_s64(vshlq_u64(v343, vzip1q_s64(0, v345)), vshlq_u64(v344, vzip1q_s64(0, v342)));
      v347 = vpaddq_s64(v345, v342);
      v348 = (v346.i64[0] << v330) | v328;
      if (v347.i64[0] + (v330 & 0x3F) >= 0x40)
      {
        *(v245 + ((v330 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v348;
        v348 = v346.i64[0] >> -(v330 & 0x3F);
        if ((v330 & 0x3F) == 0)
        {
          v348 = 0;
        }
      }

      v349 = vceqq_s8(v70, v154);
      v350 = vaddq_s8(v18, v329);
      v351 = v347.i64[0] + v330;
      v352 = v348 | (v346.i64[1] << v351);
      if ((v351 & 0x3F) + v347.i64[1] >= 0x40)
      {
        *(v245 + ((v351 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v352;
        v352 = v346.i64[1] >> -(v351 & 0x3F);
        if ((v351 & 0x3F) == 0)
        {
          v352 = 0;
        }
      }

      v353 = vandq_s8(v158, v349);
      v354 = v351 + v347.i64[1];
      v355.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v355.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v356.i64[0] = -1;
      v356.i64[1] = -1;
      v357 = vandq_s8(vshlq_u8(v356, vaddq_s8(v153, v355)), v350);
      v358 = vmovl_u8(*v153.i8);
      v359 = vmovl_high_u8(v153);
      v360 = vpaddq_s16(vshlq_u16(vmovl_u8(*v357.i8), vtrn1q_s16(0, v358)), vshlq_u16(vmovl_high_u8(v357), vtrn1q_s16(0, v359)));
      v361 = vpaddq_s16(v358, v359);
      v362 = vmovl_u16(*v361.i8);
      v363 = vmovl_high_u16(v361);
      v364 = vpaddq_s32(vshlq_u32(vmovl_u16(*v360.i8), vtrn1q_s32(0, v362)), vshlq_u32(vmovl_high_u16(v360), vtrn1q_s32(0, v363)));
      v365 = vpaddq_s32(v362, v363);
      v366.i64[0] = v364.u32[0];
      v366.i64[1] = v364.u32[1];
      v367 = v366;
      v366.i64[0] = v364.u32[2];
      v366.i64[1] = v364.u32[3];
      v368 = v366;
      v366.i64[0] = v365.u32[0];
      v366.i64[1] = v365.u32[1];
      v369 = v366;
      v366.i64[0] = v365.u32[2];
      v366.i64[1] = v365.u32[3];
      v370 = vpaddq_s64(vshlq_u64(v367, vzip1q_s64(0, v369)), vshlq_u64(v368, vzip1q_s64(0, v366)));
      v371 = vpaddq_s64(v369, v366);
      v372 = (v370.i64[0] << v354) | v352;
      if (v371.i64[0] + (v354 & 0x3F) >= 0x40)
      {
        *(v245 + ((v354 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v372;
        v372 = v370.i64[0] >> -(v354 & 0x3F);
        if ((v354 & 0x3F) == 0)
        {
          v372 = 0;
        }
      }

      v373 = vaddq_s8(v94, v353);
      v374 = v371.i64[0] + v354;
      v375 = v372 | (v370.i64[1] << v374);
      if ((v374 & 0x3F) + v371.i64[1] >= 0x40)
      {
        *(v245 + ((v374 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v375;
        v375 = v370.i64[1] >> -(v374 & 0x3F);
        if ((v374 & 0x3F) == 0)
        {
          v375 = 0;
        }
      }

      v376 = v374 + v371.i64[1];
      v377.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v377.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v378.i64[0] = -1;
      v378.i64[1] = -1;
      v379 = vandq_s8(vshlq_u8(v378, vaddq_s8(v154, v377)), v373);
      v380 = vmovl_u8(*v154.i8);
      v381 = vmovl_high_u8(v154);
      v382 = vpaddq_s16(vshlq_u16(vmovl_u8(*v379.i8), vtrn1q_s16(0, v380)), vshlq_u16(vmovl_high_u8(v379), vtrn1q_s16(0, v381)));
      v383 = vpaddq_s16(v380, v381);
      v384 = vmovl_u16(*v383.i8);
      v385 = vmovl_high_u16(v383);
      v386 = vpaddq_s32(vshlq_u32(vmovl_u16(*v382.i8), vtrn1q_s32(0, v384)), vshlq_u32(vmovl_high_u16(v382), vtrn1q_s32(0, v385)));
      v387 = vpaddq_s32(v384, v385);
      v388.i64[0] = v386.u32[0];
      v388.i64[1] = v386.u32[1];
      v389 = v388;
      v388.i64[0] = v386.u32[2];
      v388.i64[1] = v386.u32[3];
      v390 = v388;
      v388.i64[0] = v387.u32[0];
      v388.i64[1] = v387.u32[1];
      v391 = v388;
      v388.i64[0] = v387.u32[2];
      v388.i64[1] = v387.u32[3];
      v392 = vpaddq_s64(vshlq_u64(v389, vzip1q_s64(0, v391)), vshlq_u64(v390, vzip1q_s64(0, v388)));
      v393 = vpaddq_s64(v391, v388);
      v394 = (v392.i64[0] << v376) | v375;
      if (v393.i64[0] + (v376 & 0x3F) > 0x3F)
      {
        *(v245 + ((v376 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v394;
        if ((v376 & 0x3F) != 0)
        {
          v394 = v392.i64[0] >> -(v376 & 0x3F);
        }

        else
        {
          v394 = 0;
        }
      }

      v395 = v393.i64[0] + v376;
      v396 = v394 | (v392.i64[1] << v395);
      if ((v395 & 0x3F) + v393.i64[1] >= 0x40)
      {
        *(v245 + ((v395 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v396;
        v396 = v392.i64[1] >> -(v395 & 0x3F);
        if ((v395 & 0x3F) == 0)
        {
          v396 = 0;
        }
      }

      v397 = v395 + v393.i64[1];
      if ((v397 & 0x3F) != 0)
      {
        *(v245 + ((v397 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v396;
      }

      result = (v397 - v246 + 7) >> 3;
      v159 = *a2 | (result - 1);
    }
  }

  else
  {
    a1->i16[0] = a3->i16[0];
    v159 = 1;
    result = 2;
  }

  *a2 = v159;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(unint64_t result, uint64_t a2, int8x16_t *a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = a6;
  v7 = a5;
  v9 = a3;
  v11 = result;
  if (a5 && a6)
  {
    if (a6 >= 4)
    {
      a6 = 4;
    }

    if (a5 >= 8)
    {
      a5 = 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
    v9 = (v9 + result);
  }

  else
  {
    *a4 = 0;
  }

  v12 = 4 * a2;
  v13 = v6 - 4;
  if (v7 && v6 >= 5)
  {
    if (v13 >= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = v6 - 4;
    }

    if (v7 >= 8)
    {
      v15 = 8;
    }

    else
    {
      v15 = v7;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, (v11 + v12), a2, v15, v14);
    v9 = (v9 + result);
  }

  else
  {
    a4[1] = 0;
  }

  v16 = v7 - 8;
  if (v7 >= 9 && v6)
  {
    if (v6 >= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = v6;
    }

    if (v16 >= 8)
    {
      v18 = 8;
    }

    else
    {
      v18 = v7 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 1, a2, v18, v17);
    v9 = (v9 + result);
  }

  else
  {
    a4[2] = 0;
    if (v7 < 9)
    {
      goto LABEL_37;
    }
  }

  if (v6 >= 5)
  {
    if (v13 >= 4)
    {
      v19 = 4;
    }

    else
    {
      v19 = v6 - 4;
    }

    if (v16 >= 8)
    {
      v20 = 8;
    }

    else
    {
      v20 = v7 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, (v11 + v12 + 16), a2, v20, v19);
    v9 = (v9 + result);
    v21 = v6 - 8;
    goto LABEL_38;
  }

LABEL_37:
  a4[3] = 0;
  v21 = v6 - 8;
  if (!v7)
  {
    goto LABEL_46;
  }

LABEL_38:
  if (v6 < 9)
  {
LABEL_46:
    a4[4] = 0;
    v24 = v6 - 12;
    if (!v7)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

  if (v21 >= 4)
  {
    v22 = 4;
  }

  else
  {
    v22 = v21;
  }

  if (v7 >= 8)
  {
    v23 = 8;
  }

  else
  {
    v23 = v7;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, (v11 + 8 * a2), a2, v23, v22);
  v9 = (v9 + result);
  v24 = v6 - 12;
LABEL_47:
  if (v6 >= 0xD)
  {
    if (v24 >= 4)
    {
      v25 = 4;
    }

    else
    {
      v25 = v24;
    }

    if (v7 >= 8)
    {
      v26 = 8;
    }

    else
    {
      v26 = v7;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, (v11 + 12 * a2), a2, v26, v25);
    v9 = (v9 + result);
    if (v7 < 9)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

LABEL_56:
  a4[5] = 0;
  if (v7 < 9)
  {
    goto LABEL_65;
  }

LABEL_57:
  if (v6 >= 9)
  {
    if (v21 >= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = v21;
    }

    if (v16 >= 8)
    {
      v28 = 8;
    }

    else
    {
      v28 = v7 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, (v11 + 8 * a2 + 16), a2, v28, v27);
    v9 = (v9 + result);
    goto LABEL_66;
  }

LABEL_65:
  a4[6] = 0;
  if (v7 < 9)
  {
LABEL_76:
    a4[7] = 0;
    return result;
  }

LABEL_66:
  if (v6 < 0xD)
  {
    goto LABEL_76;
  }

  if (v24 >= 4)
  {
    v29 = 4;
  }

  else
  {
    v29 = v24;
  }

  if (v16 >= 8)
  {
    v30 = 8;
  }

  else
  {
    v30 = v7 - 8;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, (v11 + 12 * a2 + 16), a2, v30, v29);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int64x2_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int8x8_t a5, int8x8_t a6)
{
  v12 = 8 * (a3 & 7);
  v13 = a3 & 0xFFFFFFFFFFFFFFF8;
  v14 = v12 + 14;
  v15 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v12;
  if (v12 >= 0x33)
  {
    v15 |= *(v13 + 8) << (-8 * (a3 & 7u));
  }

  a6.i32[0] = 4 * v15;
  a5.i32[0] = a4 >> 6;
  v16.i32[0] = vorr_s8(a6, a5).u32[0];
  v16.i32[1] = vshr_n_u32(vdup_n_s32(4 * v15), 5uLL).i32[1];
  v17 = v12 + 30;
  v18 = v14 & 0x3E;
  v19 = (v13 + ((v14 >> 3) & 8));
  v20 = *v19 >> v18;
  if (v18 >= 0x31)
  {
    v20 |= v19[1] << -v18;
  }

  v21 = (8 * (a3 & 7)) | 0x200;
  v22 = vand_s8(v16, 0x1F0000001FLL);
  v230.val[1] = vdupq_lane_s8(v22, 4);
  v230.val[0] = vdupq_lane_s8(v22, 0);
  v23 = vqtbl2q_s8(v230, xmmword_29D2F0E30);
  v24 = vshlq_u32(vdupq_lane_s32(a6, 0), xmmword_29D2F0E40);
  v25 = vuzp1q_s16(v24, v24);
  v230.val[0].i64[0] = 0x707070707070707;
  v230.val[0].i64[1] = 0x707070707070707;
  v26 = vandq_s8(vuzp1q_s8(v25, v25), v230.val[0]);
  v230.val[0].i64[0] = 0x101010101010101;
  v230.val[0].i64[1] = 0x101010101010101;
  v230.val[0] = vaddq_s8(v26, v230.val[0]);
  v230.val[1].i64[0] = 0x303030303030303;
  v230.val[1].i64[1] = 0x303030303030303;
  v27 = vandq_s8(v23, v230.val[1]);
  v28 = vbicq_s8(v230.val[0], vceqq_s8(v27, v230.val[1]));
  v230.val[1].i64[0] = 0x202020202020202;
  v230.val[1].i64[1] = 0x202020202020202;
  v29 = vandq_s8(vbicq_s8(xmmword_29D2F0D50, vmovl_s16(vceqz_s16((*&vuzp1_s16(v22, v22) & 0xFFE4FFE4FFE4FFE4)))), v230.val[1]);
  if (vmaxvq_s8(v29) < 1)
  {
    v38 = 0;
    v62.i64[0] = -1;
    v62.i64[1] = -1;
    v56 = v28;
    v57 = v28;
    v58 = v28;
    v61.i64[0] = -1;
    v61.i64[1] = -1;
    v55 = v28;
    v60.i64[0] = -1;
    v60.i64[1] = -1;
    v59.i64[0] = -1;
    v59.i64[1] = -1;
  }

  else
  {
    v30 = vmovl_u8(*&vpaddq_s8(v29, v29));
    v31 = vmovl_u16(*&vpaddq_s16(v30, v30));
    v32 = vpaddq_s32(v31, v31).u64[0];
    v33.i64[0] = v32;
    v33.i64[1] = HIDWORD(v32);
    v34 = v33;
    v35 = vaddvq_s64(v33);
    v36 = v35 + v17;
    v37 = v35 <= 0x80 && v21 >= v36;
    v38 = !v37;
    v39 = 0uLL;
    if (v37)
    {
      v40 = v17 & 0x3E;
      v41 = vaddq_s64(vzip1q_s64(0, v34), vdupq_n_s64(v40));
      v42 = (v13 + ((v17 >> 3) & 8));
      v39 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v42, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v41)), vshlq_u64(vdupq_lane_s64(v42->i64[0], 0), vnegq_s64(v41)));
      if (v35 + v40 >= 0x81)
      {
        v39 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v42[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v41)), vshlq_u64(vdupq_laneq_s64(v42[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v41))), v39);
      }

      v17 = v36;
    }

    v43 = vzip1_s32(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
    v44.i64[0] = v43.u32[0];
    v44.i64[1] = v43.u32[1];
    v45 = vshlq_u64(v39, vnegq_s64(v44));
    v46 = vuzp1q_s32(vzip1q_s64(v39, v45), vzip2q_s64(v39, v45));
    v47 = vshlq_u32(v46, vnegq_s32((*&v30 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v48 = vuzp1q_s16(vzip1q_s32(v46, v47), vzip2q_s32(v46, v47));
    v49 = vzip1q_s16(v48, vshlq_u16(v48, vnegq_s16(vmovl_u8(vuzp1_s8(*v29.i8, *v23.i8)))));
    *v49.i8 = vmovn_s16(v49);
    v46.i64[0] = 0x101010101010101;
    v46.i64[1] = 0x101010101010101;
    v50 = vshlq_s8(v46, v29);
    v46.i64[0] = -1;
    v46.i64[1] = -1;
    v50.i64[0] = vqtbl1q_s8(vandq_s8(vaddq_s8(v50, v46), v49), xmmword_29D2F0E50).u64[0];
    v51 = vdupq_lane_s16(*v50.i8, 0);
    v52 = vdupq_lane_s16(*v50.i8, 1);
    v53 = vdupq_lane_s16(*v50.i8, 2);
    v54 = vdupq_lane_s16(*v50.i8, 3);
    v55 = vsubq_s8(v28, v51);
    v56 = vsubq_s8(v28, v52);
    v57 = vsubq_s8(v28, v53);
    v58 = vsubq_s8(v28, v54);
    v59 = vceqzq_s8(v51);
    v60 = vceqzq_s8(v52);
    v61 = vceqzq_s8(v53);
    v62 = vceqzq_s8(v54);
  }

  v63.i64[0] = 0x808080808080808;
  v63.i64[1] = 0x808080808080808;
  v64 = 0uLL;
  v65 = vandq_s8(vextq_s8(vtstq_s8(v23, v63), 0, 0xEuLL), v28);
  v66 = vmovl_u8(*&vpaddq_s8(v65, v65));
  v67 = vmovl_u16(*&vpaddq_s16(v66, v66));
  v68 = vpaddq_s32(v67, v67).u64[0];
  v69.i64[0] = v68;
  v69.i64[1] = HIDWORD(v68);
  v70 = v69;
  v71 = vaddvq_s64(v69);
  v72 = v71 + v17;
  if (v71 <= 0x80 && v21 >= v72)
  {
    v74 = v17 & 0x3F;
    v75 = vaddq_s64(vzip1q_s64(0, v70), vdupq_n_s64(v74));
    v76 = (v13 + 8 * (v17 >> 6));
    v64 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v76, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v75)), vshlq_u64(vdupq_lane_s64(v76->i64[0], 0), vnegq_s64(v75)));
    if (v71 + v74 >= 0x81)
    {
      v64 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v76[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v75)), vshlq_u64(vdupq_laneq_s64(v76[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v75))), v64);
    }

    v17 = v72;
  }

  else
  {
    v38 = 1;
  }

  v77 = v22.i8[0] & 3;
  if (v77 == 2)
  {
    if (v21 < v17 + 4)
    {
      v38 = 1;
    }

    else
    {
      v17 += 4;
    }

    v78 = v21 < v17 + 4;
    if (v21 >= v17 + 4)
    {
      v17 += 4;
    }

    v38 |= v78;
  }

  v79 = 0uLL;
  v80 = vextq_s8(0, v55, 0xEuLL);
  v81 = vmovl_u8(*&vpaddq_s8(v80, v80));
  v82 = vmovl_u16(*&vpaddq_s16(v81, v81));
  v83 = vpaddq_s32(v82, v82).u64[0];
  v84.i64[0] = v83;
  v84.i64[1] = HIDWORD(v83);
  v85 = v84;
  v86 = vaddvq_s64(v84);
  v87 = v86 + v17;
  if (v86 <= 0x80 && v21 >= v87)
  {
    v90 = v17 & 0x3F;
    v91 = vaddq_s64(vzip1q_s64(0, v85), vdupq_n_s64(v90));
    v92 = (v13 + 8 * (v17 >> 6));
    v89 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v92, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v91)), vshlq_u64(vdupq_lane_s64(v92->i64[0], 0), vnegq_s64(v91)));
    if (v86 + v90 >= 0x81)
    {
      v89 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v92[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v91)), vshlq_u64(vdupq_laneq_s64(v92[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v91))), v89);
    }

    v17 = v87;
  }

  else
  {
    v38 = 1;
    v89 = 0uLL;
  }

  v224 = v11;
  v225 = v10;
  v226 = v9;
  v227 = v8;
  v228 = v7;
  v229 = v6;
  v93 = vmovl_u8(*&vpaddq_s8(v56, v56));
  v94 = vmovl_u16(*&vpaddq_s16(v93, v93));
  v95 = vpaddq_s32(v94, v94).u64[0];
  v96.i64[0] = v95;
  v96.i64[1] = HIDWORD(v95);
  v97 = v96;
  v98 = vaddvq_s64(v96);
  if (v98 >= 0x81)
  {
    v38 = 1;
  }

  else
  {
    v99 = vzip1_s32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
    v100.i64[0] = v99.u32[0];
    v100.i64[1] = v99.u32[1];
    v101 = v100;
    v102 = *&v93 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL);
    v103 = v98 + v17;
    if (v21 >= v98 + v17)
    {
      v105 = v17 & 0x3F;
      v106 = vaddq_s64(vzip1q_s64(0, v97), vdupq_n_s64(v105));
      v107 = (v13 + 8 * (v17 >> 6));
      v104 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v107, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v106)), vshlq_u64(vdupq_lane_s64(v107->i64[0], 0), vnegq_s64(v106)));
      if (v98 + v105 >= 0x81)
      {
        v104 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v107[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v106)), vshlq_u64(vdupq_laneq_s64(v107[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v106))), v104);
      }

      v17 = v103;
    }

    else
    {
      v104 = 0uLL;
      v38 = 1;
    }

    v108 = vshlq_u64(v104, vnegq_s64(v101));
    v109 = vuzp1q_s32(vzip1q_s64(v104, v108), vzip2q_s64(v104, v108));
    v110 = vshlq_u32(v109, vnegq_s32(v102));
    v111 = vuzp1q_s16(vzip1q_s32(v109, v110), vzip2q_s32(v109, v110));
    v112 = vshlq_u16(v111, vnegq_s16((*&v56 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v79 = vuzp1q_s8(vzip1q_s16(v111, v112), vzip2q_s16(v111, v112));
  }

  v113 = vmovl_u8(*&vpaddq_s8(v57, v57));
  v114 = vmovl_u16(*&vpaddq_s16(v113, v113));
  v115 = vpaddq_s32(v114, v114).u64[0];
  v116.i64[0] = v115;
  v116.i64[1] = HIDWORD(v115);
  v117 = v116;
  v118 = vaddvq_s64(v116);
  v119 = v118 + v17;
  if (v118 <= 0x80 && v21 >= v119)
  {
    v122 = v17 & 0x3F;
    v123 = vaddq_s64(vzip1q_s64(0, v117), vdupq_n_s64(v122));
    v124 = (v13 + 8 * (v17 >> 6));
    v121 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v124, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v124->i64[0], 0), vnegq_s64(v123)));
    if (v118 + v122 >= 0x81)
    {
      v121 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v124[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v124[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v121);
    }

    v17 = v119;
  }

  else
  {
    v38 = 1;
    v121 = 0uLL;
  }

  v125 = vmovl_u8(*&vpaddq_s8(v58, v58));
  v126 = vmovl_u16(*&vpaddq_s16(v125, v125));
  v127 = vpaddq_s32(v126, v126).u64[0];
  v128.i64[0] = v127;
  v128.i64[1] = HIDWORD(v127);
  v129 = v128;
  v130 = vaddvq_s64(v128);
  if (v130 > 0x80 || v21 < v130 + v17)
  {
    goto LABEL_66;
  }

  v131 = vaddq_s64(vzip1q_s64(0, v129), vdupq_n_s64(v17 & 0x3F));
  v132 = (v13 + 8 * (v17 >> 6));
  v133 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v132, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v131)), vshlq_u64(vdupq_lane_s64(v132->i64[0], 0), vnegq_s64(v131)));
  if (v130 + (v17 & 0x3F) >= 0x81)
  {
    v133 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v132[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v131)), vshlq_u64(vdupq_laneq_s64(v132[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v131))), v133);
  }

  if ((v38 & 1) != 0 || (v134 = (a4 & 0x3F) + 1, 8 * ((a3 & 7) + v134) - (v130 + v17) >= 9))
  {
LABEL_66:
    v134 = 0;
    v135 = &v222;
LABEL_67:
    *(v135 & 0xFFFFFFFFFFFFFFF8) |= 255 << (8 * (v135 & 7u));
    a1->i64[0] = 0;
    *(a1->i64 + a2) = 0;
    *(a1->i64 + 2 * a2) = 0;
    *(a1->i64 + 3 * a2) = 0;
    return v134;
  }

  if (v77 == 2)
  {
    v134 = 0;
    v135 = &v223;
    goto LABEL_67;
  }

  v137 = vzip1_s32(*v67.i8, *&vextq_s8(v67, v67, 8uLL));
  v138 = vzip1_s32(*v82.i8, *&vextq_s8(v82, v82, 8uLL));
  v139 = vzip1_s32(*v114.i8, *&vextq_s8(v114, v114, 8uLL));
  v140.i64[0] = v137.u32[0];
  v140.i64[1] = v137.u32[1];
  v141 = v140;
  v140.i64[0] = v138.u32[0];
  v140.i64[1] = v138.u32[1];
  v142 = v140;
  v140.i64[0] = v139.u32[0];
  v140.i64[1] = v139.u32[1];
  v143 = vshlq_u64(v64, vnegq_s64(v141));
  v144 = vshlq_u64(v89, vnegq_s64(v142));
  v145 = vshlq_u64(v121, vnegq_s64(v140));
  v146 = vuzp1q_s32(vzip1q_s64(v64, v143), vzip2q_s64(v64, v143));
  v147 = vuzp1q_s32(vzip1q_s64(v89, v144), vzip2q_s64(v89, v144));
  v148 = vuzp1q_s32(vzip1q_s64(v121, v145), vzip2q_s64(v121, v145));
  v149 = vshlq_u32(v146, vnegq_s32((*&v66 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v150 = vshlq_u32(v147, vnegq_s32((*&v81 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v151 = vshlq_u32(v148, vnegq_s32((*&v113 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v152 = vzip2q_s32(v147, v150);
  v153 = vuzp1q_s16(vzip1q_s32(v146, v149), vzip2q_s32(v146, v149));
  v154 = vuzp1q_s16(vzip1q_s32(v147, v150), v152);
  v155 = vuzp1q_s16(vzip1q_s32(v148, v151), vzip2q_s32(v148, v151));
  v156 = vshlq_u16(v153, vnegq_s16((*&v65 & __PAIR128__(0xF0FFF0FFF0FFF0FFLL, 0xF0FFF0FFF0FFF0FFLL))));
  v157 = vshlq_u16(v154, vnegq_s16((*&v80 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v158 = vshlq_u16(v155, vnegq_s16((*&v57 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
  v152.i32[0] = v20;
  v159 = vzip2q_s16(v153, v156);
  v160 = vzip1q_s16(v153, v156);
  v161 = vzip2q_s16(v154, v157);
  v162 = vzip1q_s16(v154, v157);
  v157.i64[0] = 0x808080808080808;
  v157.i64[1] = 0x808080808080808;
  v163 = vzip2q_s16(v155, v158);
  v164 = vzip1q_s16(v155, v158);
  v165 = vuzp1q_s8(v160, v159);
  v158.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v158.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v166 = vsubq_s8(v63, v65);
  v167 = vuzp1q_s8(v162, v161);
  v162.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v162.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v168 = vsubq_s8(v157, v80);
  v169 = vsubq_s8(v157, v56);
  v170 = vsubq_s8(v157, v57);
  v171 = vuzp1q_s8(v164, v163);
  v172 = vzip1_s32(*v126.i8, *&vextq_s8(v126, v126, 8uLL));
  v173.i64[0] = 0xF8F8F8F8F8F8F8F8;
  v173.i64[1] = 0xF8F8F8F8F8F8F8F8;
  v163.i64[0] = 0x808080808080808;
  v163.i64[1] = 0x808080808080808;
  v152.i8[1] = BYTE1(v20);
  v174 = vaddq_s8(v65, v158);
  v175 = vshlq_s8(v165, v166);
  v176 = vaddq_s8(v80, v162);
  v177 = vaddq_s8(v56, v162);
  v178 = vshlq_s8(v79, v169);
  v179 = vaddq_s8(v57, v162);
  v180 = vshlq_s8(v171, v170);
  v140.i64[0] = v172.u32[0];
  v140.i64[1] = v172.u32[1];
  v181 = *&v58 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
  v182 = vaddq_s8(v58, v173);
  v183 = vsubq_s8(v163, v58);
  v184 = vdupq_lane_s16(*v152.i8, 0);
  v185 = vshlq_s8(v175, v174);
  v186 = vshlq_s8(vshlq_s8(v167, v168), v176);
  v187 = vshlq_u64(v133, vnegq_s64(v140));
  v188 = vuzp1q_s32(vzip1q_s64(v133, v187), vzip2q_s64(v133, v187));
  v189 = vshlq_u32(v188, vnegq_s32((*&v125 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
  v190 = vuzp1q_s16(vzip1q_s32(v188, v189), vzip2q_s32(v188, v189));
  v191 = vshlq_u16(v190, vnegq_s16(v181));
  v192 = vaddq_s8(vandq_s8(v185, v59), v186);
  v193 = vdupq_lane_s16(*v185.i8, 0);
  v194 = vsubq_s8(v192, vandq_s8(v59, v193));
  v195 = vsubq_s8(vshlq_s8(v178, v177), vandq_s8(v60, v193));
  v196 = vsubq_s8(vshlq_s8(v180, v179), vandq_s8(v61, v193));
  v197 = vandq_s8(v62, v193);
  v198.i64[0] = 0x101010101010101;
  v198.i64[1] = 0x101010101010101;
  v199 = vaddlvq_s8(vceqq_s8(v27, v198));
  v200 = vsubq_s8(vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v190, v191), vzip2q_s16(v190, v191)), v183), v182), v197);
  if (v199)
  {
    v201 = vandq_s8(v23, v198);
    v202 = vnegq_s8(v201);
    v203 = v194;
    v203.i16[0] = v194.i16[7];
    v203.i16[7] = v194.i16[0];
    v204 = vorrq_s8(vandq_s8(v203, v202), vandq_s8(v194, vceqzq_s8(v201)));
    v205 = vaddq_s8(v204, vandq_s8(vqtbl1q_s8(v204, xmmword_29D2F0E60), v202));
    v194 = vaddq_s8(v205, vandq_s8(vqtbl1q_s8(v205, xmmword_29D2F0E70), v202));
    v206 = vaddq_s8(vandq_s8(vqtbl1q_s8(v195, xmmword_29D2F0E80), v202), v195);
    v195 = vaddq_s8(vandq_s8(vqtbl1q_s8(v206, xmmword_29D2F0E90), v202), v206);
    v207 = vaddq_s8(vandq_s8(vqtbl1q_s8(v196, xmmword_29D2F0EA0), v202), v196);
    v196 = vaddq_s8(vandq_s8(vqtbl1q_s8(v207, xmmword_29D2F0EB0), v202), v207);
    v208 = vaddq_s8(vandq_s8(vqtbl1q_s8(v200, xmmword_29D2F0EC0), v202), v200);
    v200 = vaddq_s8(vandq_s8(vqtbl1q_s8(v208, xmmword_29D2F0ED0), v202), v208);
  }

  v209 = vaddq_s8(v194, v184);
  v210 = vaddq_s8(v195, v184);
  v211 = vaddq_s8(v196, v184);
  v212 = vaddq_s8(v200, v184);
  v213.i64[0] = 0x1010101010101010;
  v213.i64[1] = 0x1010101010101010;
  v214 = vcgtq_u8(v213, v23);
  v215 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v209, xmmword_29D2F0EE0), v214), v209);
  v216 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v210, xmmword_29D2F0EE0), v214), v210);
  v217 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v211, xmmword_29D2F0EE0), v214), v211);
  v218 = vzip2q_s64(v215, v216);
  v215.i64[1] = v216.i64[0];
  v219 = vaddq_s8(vbicq_s8(vqtbl1q_s8(v212, xmmword_29D2F0EE0), v214), v212);
  *a1 = v215;
  *(a1 + a2) = v218;
  v220 = vzip2q_s64(v217, v219);
  v217.i64[1] = v219.i64[0];
  v221 = (a1 + 2 * a2);
  *v221 = v217;
  *(v221 + a2) = v220;
  return v134;
}

int64x2_t *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(int64x2_t *result, uint64_t a2, int64x2_t *a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = 0;
  v7 = 2 * a2;
  if (a5 && a6)
  {
    v8 = *(result + a2);
    v9 = vzip1q_s64(*result, v8);
    v10 = vzip2q_s64(*result, v8);
    v11 = *(result + 2 * a2);
    v12 = *(result + v7 + a2);
    *a3 = v9;
    a3[1] = v10;
    a3[2] = vzip1q_s64(v11, v12);
    a3[3] = vzip2q_s64(v11, v12);
    a3 += 4;
    v6 = 63;
  }

  v13 = 0;
  *a4 = v6;
  if (a5 >= 5 && a6)
  {
    v14 = result[1];
    v15 = *(result + a2 + 16);
    v16 = vzip1q_s64(v14, v15);
    v17 = vzip2q_s64(v14, v15);
    v18 = (result + v7 + 16);
    v19 = *(v18 + a2);
    v20 = vzip1q_s64(*v18, v19);
    v21 = vzip2q_s64(*v18, v19);
    *a3 = v16;
    a3[1] = v17;
    a3[2] = v20;
    a3[3] = v21;
    a3 += 4;
    v13 = 63;
  }

  v22 = 0;
  v23 = 4 * a2;
  a4[1] = v13;
  if (a5 && a6 >= 5)
  {
    v24 = *(result + 4 * a2);
    v25 = *(result + v23 + a2);
    v26 = vzip1q_s64(v24, v25);
    v27 = vzip2q_s64(v24, v25);
    v28 = (result + v23 + v7);
    v29 = *(v28 + a2);
    v30 = vzip1q_s64(*v28, v29);
    v31 = vzip2q_s64(*v28, v29);
    *a3 = v26;
    a3[1] = v27;
    a3[2] = v30;
    a3[3] = v31;
    a3 += 4;
    v22 = 63;
  }

  v32 = 0;
  a4[2] = v22;
  if (a5 >= 5 && a6 >= 5)
  {
    v33 = (result + v23 + 16);
    v34 = *(v33 + a2);
    v35 = vzip1q_s64(*v33, v34);
    v36 = vzip2q_s64(*v33, v34);
    v37 = (v33 + v7);
    v38 = *(v37 + a2);
    v39 = vzip1q_s64(*v37, v38);
    v40 = vzip2q_s64(*v37, v38);
    *a3 = v35;
    a3[1] = v36;
    a3[2] = v39;
    a3[3] = v40;
    a3 += 4;
    v32 = 63;
  }

  v41 = 0;
  a4[3] = v32;
  if (a5 >= 9 && a6)
  {
    v42 = result[2];
    v43 = *(result + a2 + 32);
    v44 = vzip1q_s64(v42, v43);
    v45 = vzip2q_s64(v42, v43);
    v46 = (result + v7 + 32);
    v47 = *(v46 + a2);
    v48 = vzip1q_s64(*v46, v47);
    v49 = vzip2q_s64(*v46, v47);
    *a3 = v44;
    a3[1] = v45;
    a3[2] = v48;
    a3[3] = v49;
    a3 += 4;
    v41 = 63;
  }

  v50 = 0;
  a4[4] = v41;
  if (a5 >= 0xD && a6)
  {
    v51 = result[3];
    v52 = *(result + a2 + 48);
    v53 = vzip1q_s64(v51, v52);
    v54 = vzip2q_s64(v51, v52);
    v55 = (result + v7 + 48);
    v56 = *(v55 + a2);
    v57 = vzip1q_s64(*v55, v56);
    v58 = vzip2q_s64(*v55, v56);
    *a3 = v53;
    a3[1] = v54;
    a3[2] = v57;
    a3[3] = v58;
    a3 += 4;
    v50 = 63;
  }

  v59 = 0;
  a4[5] = v50;
  if (a5 >= 9 && a6 >= 5)
  {
    v60 = (result + v23 + 32);
    v61 = *(v60 + a2);
    v62 = vzip1q_s64(*v60, v61);
    v63 = vzip2q_s64(*v60, v61);
    v64 = (v60 + v7);
    v65 = *(v64 + a2);
    v66 = vzip1q_s64(*v64, v65);
    v67 = vzip2q_s64(*v64, v65);
    *a3 = v62;
    a3[1] = v63;
    a3[2] = v66;
    a3[3] = v67;
    a3 += 4;
    v59 = 63;
  }

  v68 = 0;
  a4[6] = v59;
  if (a5 >= 0xD && a6 >= 5)
  {
    v69 = (result + v23);
    v70 = v69[3];
    v69 += 3;
    v71 = *(v69 + a2);
    v72 = vzip1q_s64(v70, v71);
    v73 = vzip2q_s64(v70, v71);
    v74 = (v69 + v7);
    v75 = *(v74 + a2);
    v76 = vzip1q_s64(*v74, v75);
    v77 = vzip2q_s64(*v74, v75);
    *a3 = v72;
    a3[1] = v73;
    a3[2] = v76;
    a3[3] = v77;
    v68 = 63;
  }

  a4[7] = v68;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, __n128 a4, int64x2_t a5)
{
  v8 = *a3;
  if (v8 == 63)
  {
    v10 = *a2;
    a5 = *(a2 + 16);
    v11 = (a2 + 32);
    v49 = vld2q_f64(v11);
    *a1 = vzip1q_s64(*a2, a5);
    a4 = vzip2q_s64(v10, a5);
    *(a1 + 64) = a4;
    *(a1 + 128) = v49.val[0];
    *(a1 + 192) = v49.val[1];
    v9 = 64;
  }

  else if (v8 == 1)
  {
    a4 = vld1q_dup_s16(a2);
    *a1 = a4;
    *(a1 + 64) = a4;
    *(a1 + 128) = a4;
    *(a1 + 192) = a4;
    v9 = 2;
  }

  else if (*a3)
  {
    v9 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(a1, 64, a2, v8, a4.n128_u64[0], *a5.i8);
  }

  else
  {
    v9 = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
  }

  v12 = a2 + v9;
  v13 = a3[1];
  if (a3[1])
  {
    if (v13 == 1)
    {
      a4 = vld1q_dup_s16(v12);
      *(a1 + 16) = a4;
      *(a1 + 80) = a4;
      *(a1 + 144) = a4;
      *(a1 + 208) = a4;
      v16 = 2;
    }

    else if (v13 == 63)
    {
      v14 = *v12;
      a5 = *(v12 + 16);
      v15 = (v12 + 32);
      v50 = vld2q_f64(v15);
      *(a1 + 16) = vzip1q_s64(*v12, a5);
      a4 = vzip2q_s64(v14, a5);
      *(a1 + 80) = a4;
      *(a1 + 144) = v50.val[0];
      *(a1 + 208) = v50.val[1];
      v16 = 64;
    }

    else
    {
      v16 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 16), 64, v12, v13, a4.n128_u64[0], *a5.i8);
    }
  }

  else
  {
    v16 = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
  }

  v17 = v12 + v16;
  v18 = a3[2];
  if (a3[2])
  {
    if (v18 == 1)
    {
      a4 = vld1q_dup_s16(v17);
      *(a1 + 256) = a4;
      *(a1 + 320) = a4;
      *(a1 + 384) = a4;
      *(a1 + 448) = a4;
      v21 = 2;
    }

    else if (v18 == 63)
    {
      v19 = *v17;
      a5 = *(v17 + 16);
      v20 = (v17 + 32);
      v51 = vld2q_f64(v20);
      *(a1 + 256) = vzip1q_s64(*v17, a5);
      a4 = vzip2q_s64(v19, a5);
      *(a1 + 320) = a4;
      *(a1 + 384) = v51.val[0];
      *(a1 + 448) = v51.val[1];
      v21 = 64;
    }

    else
    {
      v21 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 256), 64, v17, v18, a4.n128_u64[0], *a5.i8);
    }
  }

  else
  {
    v21 = 0;
    *(a1 + 256) = 0;
    *(a1 + 264) = 0;
    *(a1 + 320) = 0;
    *(a1 + 328) = 0;
    *(a1 + 384) = 0;
    *(a1 + 392) = 0;
    *(a1 + 448) = 0;
    *(a1 + 456) = 0;
  }

  v22 = v17 + v21;
  v23 = a3[3];
  if (a3[3])
  {
    if (v23 == 1)
    {
      a4 = vld1q_dup_s16(v22);
      *(a1 + 272) = a4;
      *(a1 + 336) = a4;
      *(a1 + 400) = a4;
      *(a1 + 464) = a4;
      v26 = 2;
    }

    else if (v23 == 63)
    {
      v24 = *v22;
      a5 = *(v22 + 16);
      v25 = (v22 + 32);
      v52 = vld2q_f64(v25);
      *(a1 + 272) = vzip1q_s64(*v22, a5);
      a4 = vzip2q_s64(v24, a5);
      *(a1 + 336) = a4;
      *(a1 + 400) = v52.val[0];
      *(a1 + 464) = v52.val[1];
      v26 = 64;
    }

    else
    {
      v26 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 272), 64, v22, v23, a4.n128_u64[0], *a5.i8);
    }
  }

  else
  {
    v26 = 0;
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
    *(a1 + 336) = 0;
    *(a1 + 344) = 0;
    *(a1 + 400) = 0;
    *(a1 + 408) = 0;
    *(a1 + 464) = 0;
    *(a1 + 472) = 0;
  }

  v27 = v22 + v26;
  v28 = a3[4];
  if (a3[4])
  {
    if (v28 == 1)
    {
      a4 = vld1q_dup_s16(v27);
      *(a1 + 32) = a4;
      *(a1 + 96) = a4;
      *(a1 + 160) = a4;
      *(a1 + 224) = a4;
      v31 = 2;
    }

    else if (v28 == 63)
    {
      v29 = *v27;
      a5 = *(v27 + 16);
      v30 = (v27 + 32);
      v53 = vld2q_f64(v30);
      *(a1 + 32) = vzip1q_s64(*v27, a5);
      a4 = vzip2q_s64(v29, a5);
      *(a1 + 96) = a4;
      *(a1 + 160) = v53.val[0];
      *(a1 + 224) = v53.val[1];
      v31 = 64;
    }

    else
    {
      v31 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 32), 64, v27, v28, a4.n128_u64[0], *a5.i8);
    }
  }

  else
  {
    v31 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
  }

  v32 = v27 + v31;
  v33 = a3[5];
  if (a3[5])
  {
    if (v33 == 1)
    {
      a4 = vld1q_dup_s16(v32);
      *(a1 + 48) = a4;
      *(a1 + 112) = a4;
      *(a1 + 176) = a4;
      *(a1 + 240) = a4;
      v36 = 2;
    }

    else if (v33 == 63)
    {
      v34 = *v32;
      a5 = *(v32 + 16);
      v35 = (v32 + 32);
      v54 = vld2q_f64(v35);
      *(a1 + 48) = vzip1q_s64(*v32, a5);
      a4 = vzip2q_s64(v34, a5);
      *(a1 + 112) = a4;
      *(a1 + 176) = v54.val[0];
      *(a1 + 240) = v54.val[1];
      v36 = 64;
    }

    else
    {
      v36 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 48), 64, v32, v33, a4.n128_u64[0], *a5.i8);
    }
  }

  else
  {
    v36 = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
  }

  v37 = v32 + v36;
  v38 = a3[6];
  if (!a3[6])
  {
    result = 0;
    *(a1 + 288) = 0;
    *(a1 + 296) = 0;
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 416) = 0;
    *(a1 + 424) = 0;
    *(a1 + 480) = 0;
    *(a1 + 488) = 0;
    v42 = a3[7];
    if (a3[7])
    {
      goto LABEL_51;
    }

    goto LABEL_56;
  }

  if (v38 == 1)
  {
    a4 = vld1q_dup_s16(v37);
    *(a1 + 288) = a4;
    *(a1 + 352) = a4;
    *(a1 + 416) = a4;
    *(a1 + 480) = a4;
    result = 2;
    v42 = a3[7];
    if (!a3[7])
    {
      goto LABEL_56;
    }

    goto LABEL_51;
  }

  if (v38 != 63)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 288), 64, v37, v38, a4.n128_u64[0], *a5.i8);
    v42 = a3[7];
    if (a3[7])
    {
      goto LABEL_51;
    }

LABEL_56:
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
    *(a1 + 368) = 0;
    *(a1 + 376) = 0;
    *(a1 + 432) = 0;
    *(a1 + 440) = 0;
    *(a1 + 496) = 0;
    *(a1 + 504) = 0;
    return result;
  }

  v39 = *v37;
  a5 = *(v37 + 16);
  v40 = (v37 + 32);
  v55 = vld2q_f64(v40);
  *(a1 + 288) = vzip1q_s64(*v37, a5);
  a4 = vzip2q_s64(v39, a5);
  *(a1 + 352) = a4;
  *(a1 + 416) = v55.val[0];
  *(a1 + 480) = v55.val[1];
  result = 64;
  v42 = a3[7];
  if (!a3[7])
  {
    goto LABEL_56;
  }

LABEL_51:
  v43 = v37 + result;
  if (v42 == 1)
  {
    v47 = vld1q_dup_s16(v43);
    *(a1 + 304) = v47;
    *(a1 + 368) = v47;
    *(a1 + 432) = v47;
    *(a1 + 496) = v47;
  }

  else if (v42 == 63)
  {
    v44 = *v43;
    v45 = *(v43 + 16);
    v46 = (v43 + 32);
    v56 = vld2q_f64(v46);
    *(a1 + 304) = vzip1q_s64(*v43, v45);
    *(a1 + 368) = vzip2q_s64(v44, v45);
    *(a1 + 432) = v56.val[0];
    *(a1 + 496) = v56.val[1];
  }

  else
  {

    return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock((a1 + 304), 64, v43, v42, a4.n128_u64[0], *a5.i8);
  }

  return result;
}