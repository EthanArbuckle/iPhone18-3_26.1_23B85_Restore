uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(uint64_t a1, _BYTE *a2, uint16x8_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v51[1] = *MEMORY[0x29EDCA608];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v11 = a6;
  if (a5 >= 8)
  {
    v14 = 0;
    v15 = a5 & 0x78;
    v16 = &v49;
    v17 = v51;
    v18 = a3;
    do
    {
      v19 = v18;
      v20 = v16;
      v21 = a5 & 0x78;
      do
      {
        v22 = *v19++;
        v23 = vshrq_n_u16(v22, 4uLL);
        *(v20 - 16) = v23.i16[0];
        *(v20 - 12) = v23.i16[1];
        *(v20 - 8) = v23.i16[2];
        *(v20 - 4) = v23.i16[3];
        *v20 = v23.i16[4];
        *(v20 + 4) = v23.i16[5];
        *(v20 + 8) = v23.i16[6];
        *(v20 + 12) = v23.i16[7];
        v20 += 4;
        v21 -= 8;
      }

      while (v21);
      if (v15 != a5)
      {
        v24 = (a3 + 2 * v15 + v14 * a4);
        v25 = v17;
        v26 = a5 - 8;
        do
        {
          v27 = v24->u16[0];
          v24 = (v24 + 2);
          *v25 = v27 >> 4;
          v25 += 4;
          --v26;
        }

        while (v26);
      }

      ++v14;
      v16 = (v16 + 2);
      v18 = (v18 + a4);
      v17 = (v17 + 2);
    }

    while (v14 != a6);
  }

  else
  {
    v12 = &a3->i16[3];
    v13 = &v48 + 4;
    do
    {
      *(v13 - 12) = *(v12 - 3) >> 4;
      if (a5 != 1)
      {
        *(v13 - 8) = *(v12 - 2) >> 4;
        if (a5 != 2)
        {
          *(v13 - 4) = *(v12 - 1) >> 4;
          if (a5 != 3)
          {
            *v13 = *v12 >> 4;
            if (a5 != 4)
            {
              v13[4] = v12[1] >> 4;
              if (a5 != 5)
              {
                v13[8] = v12[2] >> 4;
                if (a5 != 6)
                {
                  v13[12] = v12[3] >> 4;
                }
              }
            }
          }
        }
      }

      v12 = (v12 + a4);
      ++v13;
      --v11;
    }

    while (v11);
  }

  v42.i32[0] = v47;
  v42.i32[1] = WORD4(v47);
  v42.i32[2] = WORD1(v47);
  v42.i32[3] = WORD5(v47);
  v43 = v48;
  v44 = WORD4(v48);
  if (a5 >= 4)
  {
    v28 = 4;
  }

  else
  {
    v28 = a5;
  }

  if (a5 >= 4)
  {
    v29 = a5 - 4;
  }

  else
  {
    v29 = 0;
  }

  v45 = WORD1(v48);
  v46 = WORD5(v48);
  if (a6 >= 2)
  {
    v30 = 2;
  }

  else
  {
    v30 = a6;
  }

  if (a6 >= 2)
  {
    v31 = a6 - 2;
  }

  else
  {
    v31 = 0;
  }

  v32 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1, &v42, a7, v28, v30);
  v42.i32[0] = WORD2(v47);
  v42.i32[1] = WORD6(v47);
  v42.i32[2] = WORD3(v47);
  v42.i32[3] = HIWORD(v47);
  v43 = WORD2(v48);
  v44 = WORD6(v48);
  v45 = WORD3(v48);
  v46 = HIWORD(v48);
  if (a6 >= 4)
  {
    v33 = 2;
  }

  else
  {
    v33 = v31;
  }

  v34 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 9, &v42, a7, v28, v33);
  v42.i32[0] = v49;
  v42.i32[1] = WORD4(v49);
  v42.i32[2] = WORD1(v49);
  v42.i32[3] = WORD5(v49);
  v43 = v50;
  v44 = WORD4(v50);
  if (a5 >= 8)
  {
    v35 = 4;
  }

  else
  {
    v35 = v29;
  }

  v45 = WORD1(v50);
  v46 = WORD5(v50);
  v36 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 18, &v42, a7, v35, v30);
  v42.i32[0] = WORD2(v49);
  v42.i32[1] = WORD6(v49);
  v42.i32[2] = WORD3(v49);
  v42.i32[3] = HIWORD(v49);
  v43 = WORD2(v50);
  v44 = WORD6(v50);
  v45 = WORD3(v50);
  v46 = HIWORD(v50);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 27, &v42, a7, v35, v33);
  if (v36)
  {
    v38 = 4;
  }

  else
  {
    v38 = 0;
  }

  if (v34)
  {
    v39 = 2;
  }

  else
  {
    v39 = 0;
  }

  if (result)
  {
    v40 = -8;
  }

  else
  {
    v40 = -16;
  }

  *a2 = v40 | v38 | v32 | v39;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(uint64_t a1, int8x16_t *a2, int a3, unsigned int a4, unsigned int a5)
{
  v121 = *MEMORY[0x29EDCA608];
  if (a3 == 1)
  {
    v9.i64[0] = 0x80000000800;
    v9.i64[1] = 0x80000000800;
    v10 = vdupq_n_s32(0x801u);
    v7 = vbicq_s8(veorq_s8(*a2, v9), vceqq_s32(*a2, v10));
    v8 = vbicq_s8(veorq_s8(a2[1], v9), vceqq_s32(a2[1], v10));
    goto LABEL_5;
  }

  if (a3 == 3)
  {
    v6.i64[0] = 0x80000000800;
    v6.i64[1] = 0x80000000800;
    v7 = veorq_s8(*a2, v6);
    v8 = veorq_s8(a2[1], v6);
LABEL_5:
    v119 = v7;
    v120 = v8;
    v11 = v7.i32[0];
    goto LABEL_7;
  }

  v12 = a2[1];
  v119 = *a2;
  v120 = v12;
  v11 = v119.i32[0];
LABEL_7:
  if (a4)
  {
    v13 = a5 != 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = a4 > 1 && a5 != 0;
  if (v14)
  {
    v15 = v119.u32[1];
    v16 = v119.i32[1] < v11;
    if (v119.i32[1] >= v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = v119.u32[1];
    }

    if (v11 > v119.i32[1])
    {
      v15 = v11;
    }
  }

  else
  {
    v16 = 0;
    v15 = v11;
    v17 = v11;
  }

  v18 = a5 <= 1 || a4 == 0;
  v19 = !v18;
  if (!v18)
  {
    if (v119.i32[2] < v17)
    {
      v16 = 2;
      v17 = v119.u32[2];
    }

    if (v15 <= v119.i32[2])
    {
      v15 = v119.u32[2];
    }
  }

  v21 = a5 > 1 && a4 > 1;
  if (v21)
  {
    if (v119.i32[3] < v17)
    {
      v16 = 3;
      v17 = v119.u32[3];
    }

    if (v15 <= v119.i32[3])
    {
      v15 = v119.u32[3];
    }
  }

  if (a5)
  {
    v22 = a4 > 2;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  if (v23 == 1)
  {
    if (v120.i32[0] < v17)
    {
      v16 = 4;
      v17 = v120.i32[0];
    }

    if (v15 <= v120.i32[0])
    {
      v15 = v120.i32[0];
    }
  }

  if (a5)
  {
    v24 = a4 > 3;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  if (v25 == 1)
  {
    if (v120.i32[1] < v17)
    {
      v16 = 5;
      v17 = v120.u32[1];
    }

    if (v15 <= v120.i32[1])
    {
      v15 = v120.u32[1];
    }
  }

  v27 = a5 > 1 && a4 > 2;
  if (v27)
  {
    if (v120.i32[2] < v17)
    {
      v16 = 6;
      v17 = v120.u32[2];
    }

    if (v15 <= v120.i32[2])
    {
      v15 = v120.u32[2];
    }
  }

  v29 = a5 > 1 && a4 > 3;
  if (v29)
  {
    if (v120.i32[3] < v17)
    {
      v16 = 7;
      v17 = v120.u32[3];
    }

    if (v15 <= v120.i32[3])
    {
      v15 = v120.u32[3];
    }
  }

  v30 = v15 - v17;
  v31 = __clz(v15 - v17);
  if ((v31 & 0x3C) == 0x1C)
  {
    v32 = 2;
  }

  else
  {
    v32 = 30 - v31;
  }

  v33 = v32 & ~(v32 >> 31);
  if (v32 < 3 && v15 == v17)
  {
    v33 = v15 != 0;
  }

  if ((a3 | 2) == 3)
  {
    v35 = 0;
    if (v17 <= 0x7FF && v15 >= 0x800)
    {
      v35 = kDQuadParamTable[10 * v33 + 328] == 0;
    }
  }

  else
  {
    v35 = 0;
  }

  if (v33 > 6 || v35)
  {
    v37 = kDQuadParamTable[10 * v33 + 324];
    v38 = v37 + 3;
    if (v35)
    {
      v39 = 0;
    }

    else
    {
      v39 = -2;
    }

    v40 = v17 & ~(-1 << (9 - v37));
    if (v38 >= 0xC)
    {
      v40 = 0;
    }

    v41 = v40 + v39;
    if (v41 >= 1 && __clz(v41 + v30) < v31)
    {
      ++v33;
    }
  }

  v42 = 0;
  v43 = 0;
  v44 = v33;
  v45 = &kDQuadParamTable[10 * v33];
  v46 = *(v45 + 161);
  v47 = v45[325];
  v48 = v47 + 3;
  if (a4)
  {
    v49 = a5 == 0;
  }

  else
  {
    v49 = 1;
  }

  LODWORD(result) = v49 || v46 >> v48 > 8;
  if (a3 == 4)
  {
    result = 1;
  }

  else
  {
    result = result;
  }

  v52 = kDQuadParamTable[10 * v33 + 324] + 3;
  if (v52 >= 0xC)
  {
    v53 = 12;
  }

  else
  {
    v53 = v52;
  }

  if (v47)
  {
    LODWORD(v54) = 12;
  }

  else
  {
    LODWORD(v54) = 0;
  }

  if (v54 >= v48)
  {
    v54 = v48;
  }

  else
  {
    v54 = v54;
  }

  v55 = (-1 << (12 - v53)) & v17;
  memset(v116, 0, sizeof(v116));
  v117 = 0;
  v56 = v46 >> v54;
  v57 = v11 - v55;
  if (!v13)
  {
    v57 = 0;
  }

  v18 = !v14;
  v58 = v119.i32[1] - v55;
  if (v18)
  {
    v58 = 0;
  }

  v118[0] = v57;
  v118[1] = v58;
  v59 = v119.i32[2] - v55;
  if (!v19)
  {
    v59 = 0;
  }

  v60 = v119.i32[3] - v55;
  if (!v21)
  {
    v60 = 0;
  }

  v118[2] = v59;
  v118[3] = v60;
  v61 = v120.i32[0] - v55;
  if (!v23)
  {
    v61 = 0;
  }

  v62 = v120.i32[1] - v55;
  if (!v25)
  {
    v62 = 0;
  }

  v118[4] = v61;
  v118[5] = v62;
  v63 = v120.i32[2] - v55;
  if (!v27)
  {
    v63 = 0;
  }

  v64 = v120.i32[3] - v55;
  if (!v29)
  {
    v64 = 0;
  }

  v118[6] = v63;
  v118[7] = v64;
  if (v56 <= 1)
  {
    v65 = 1;
  }

  else
  {
    v65 = v56;
  }

  v66 = v16;
  v67 = 4 * v16;
  v68 = &byte_29D2F3081;
  do
  {
    if (v67 != v42)
    {
      if (v54)
      {
        v69 = v118[v42 / 4] / v65;
      }

      else
      {
        LODWORD(v69) = 0;
      }

      *(v116 + v43) = v69;
      if (v56 >= 2)
      {
        v70 = v118[v42 / 4];
        if (v70)
        {
          if (v70 / v65 * v65 == v70 && ((v70 / v65) & 1) != 0)
          {
            if (v55 || v69 != 1)
            {
              if ((a3 | 2) != 3 || (v72 = v119.u32[v42 / 4], v72 != 2048) && ((a3 | 2) != 3 || v65 + 2048 != v72))
              {
                LODWORD(v69) = v69 - 1;
                *(v116 + v43) = v69;
              }
            }

            else
            {
              LODWORD(v69) = 1;
            }
          }
        }
      }

      if (v69 >> v54 || v119.i32[v42 / 4] == 4095)
      {
        *(v116 + v43) = ~(-1 << v54);
      }

      if (*v68 >= a5 || *(v68 - 1) >= a4)
      {
        *(v116 + v43) = 0;
      }

      ++v43;
    }

    v42 += 4;
    v68 += 2;
  }

  while (v42 != 32);
  v73 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v74 = 8 * (a1 & 7);
  *(a1 + 8) = 0;
  *a1 = 0;
  if (result)
  {
    v75 = 0;
    v76 = 0;
    v77 = v74;
    do
    {
      v78 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v75;
      if (v78[1] >= a5 || *v78 >= a4)
      {
        v80 = 0;
      }

      else
      {
        v80 = v119.u32[v75] >> 3;
      }

      if ((v77 - v74 + (v76 << 6) - 64) >= 0xFFFFFFFFFFFFFFB7)
      {
        v81 = 0;
        v82 = 9;
        do
        {
          v83 = 64 - v77;
          if (64 - v77 >= v82)
          {
            v83 = v82;
          }

          v73[v76] |= ((v80 >> v81) & ~(-1 << v83)) << v77;
          v81 += v83;
          v84 = v83 + v77;
          v76 += v84 >> 6;
          v77 = v84 & 0x3F;
          v82 -= v83;
        }

        while (v82);
      }

      ++v75;
    }

    while (v75 != 8);
    return result;
  }

  if (v44 < 4)
  {
    v86 = v74 | 3;
    if ((v74 | 3uLL) - v74 <= 0x46)
    {
      v85 = 0;
      v88 = 0;
      v89 = 2;
      do
      {
        v90 = 64 - v86;
        if (64 - v86 >= v89)
        {
          v90 = v89;
        }

        v73[v85] |= ((v44 >> v88) & ~(-1 << v90)) << v86;
        v88 += v90;
        v91 = v90 + v86;
        v85 += v91 >> 6;
        v86 = v91 & 0x3F;
        v89 -= v90;
      }

      while (v89);
    }

    else
    {
      v85 = 0;
    }

    v87 = 5;
    if (!v44)
    {
      goto LABEL_212;
    }
  }

  else
  {
    v85 = 0;
    *v73 |= ((v44 + 5) & 7) << v74;
    v86 = v74 | 3;
    v87 = 3;
  }

  if (v52 && (v53 - v74 + v86 + (v85 << 6)) <= 0x48)
  {
    v92 = 0;
    v93 = v53;
    do
    {
      v94 = 64 - v86;
      if (64 - v86 >= v93)
      {
        v94 = v93;
      }

      v73[v85] |= (((v55 >> (12 - v53)) >> v92) & ~(-1 << v94)) << v86;
      v92 += v94;
      v95 = v94 + v86;
      v85 += v95 >> 6;
      v86 = v95 & 0x3F;
      v93 -= v94;
    }

    while (v93);
  }

  v87 += v53;
LABEL_212:
  if (v54)
  {
    if ((v86 - v74 + (v85 << 6) + 3) <= 0x48)
    {
      v96 = 0;
      v97 = 3;
      do
      {
        v98 = 64 - v86;
        if (64 - v86 >= v97)
        {
          v98 = v97;
        }

        v73[v85] |= ((v66 >> v96) & ~(-1 << v98)) << v86;
        v96 += v98;
        v99 = v98 + v86;
        v85 += v99 >> 6;
        v86 = v99 & 0x3F;
        v97 -= v98;
      }

      while (v97);
    }

    v87 += 3;
  }

  v100 = (147 * (72 - v87)) >> 10;
  v101 = -7 * v100 + 72 - v87;
  if ((v101 - 257) >= 0xFFFFFF00 && v86 - v74 + (v85 << 6) + v101 <= 0x48)
  {
    do
    {
      v102 = 64 - v86;
      if (64 - v86 >= v101)
      {
        v102 = v101;
      }

      v103 = v102 + v86;
      v85 += v103 >> 6;
      v86 = v103 & 0x3F;
      v101 -= v102;
    }

    while (v101);
  }

  v104 = 0;
  v105 = v100 - v54;
  if (v105)
  {
    v106 = v105 > 0x100;
  }

  else
  {
    v106 = 1;
  }

  v107 = v106;
  do
  {
    if (v54 && v54 - v74 + v86 + (v85 << 6) <= 0x48)
    {
      v108 = 0;
      v109 = *(v116 + v104);
      v110 = v54;
      do
      {
        v111 = 64 - v86;
        if (64 - v86 >= v110)
        {
          v111 = v110;
        }

        v73[v85] |= ((v109 >> v108) & ~(-1 << v111)) << v86;
        v108 += v111;
        v112 = v111 + v86;
        v85 += v112 >> 6;
        v86 = v112 & 0x3F;
        v110 -= v111;
      }

      while (v110);
    }

    if ((v107 & 1) == 0 && v86 - v74 + (v85 << 6) + v105 <= 0x48)
    {
      v113 = v105;
      do
      {
        v114 = 64 - v86;
        if (64 - v86 >= v113)
        {
          v114 = v113;
        }

        v115 = v114 + v86;
        v85 += v115 >> 6;
        v86 = v115 & 0x3F;
        v113 -= v114;
      }

      while (v113);
    }

    ++v104;
  }

  while (v104 != 7);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(uint64_t a1, _DWORD *a2, int a3)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  if (a3 == 4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 9;
    v9 = 8 * (a1 & 7);
    do
    {
      v10 = 64 - v9;
      if (64 - v9 >= v8)
      {
        v10 = v8;
      }

      result = ((*(v3 + 8 * v6) >> v9) & ~(-1 << v10)) << v7;
      v5 |= result;
      v7 += v10;
      v12 = v10 + v9;
      v6 += v12 >> 6;
      v9 = v12 & 0x3F;
      v8 -= v10;
    }

    while (v8);
    *a2 = 8 * (v5 & 0x1FF);
    if ((v9 - v4 + (v6 << 6) - 64) >= 0xFFFFFFFFFFFFFFB7)
    {
      v26 = 0;
      v27 = 0;
      v28 = 9;
      do
      {
        v29 = 64 - v9;
        if (64 - v9 >= v28)
        {
          v29 = v28;
        }

        result = ((*(v3 + 8 * v6) >> v9) & ~(-1 << v29)) << v27;
        v26 |= result;
        v27 += v29;
        v30 = v29 + v9;
        v6 += v30 >> 6;
        v9 = v30 & 0x3F;
        v28 -= v29;
      }

      while (v28);
      a2[1] = 8 * (v26 & 0x1FF);
      if ((v9 - v4 + (v6 << 6) - 64) >= 0xFFFFFFFFFFFFFFB7)
      {
        v33 = 0;
        v34 = 0;
        v35 = 9;
        do
        {
          v36 = 64 - v9;
          if (64 - v9 >= v35)
          {
            v36 = v35;
          }

          result = ((*(v3 + 8 * v6) >> v9) & ~(-1 << v36)) << v34;
          v33 |= result;
          v34 += v36;
          v37 = v36 + v9;
          v6 += v37 >> 6;
          v9 = v37 & 0x3F;
          v35 -= v36;
        }

        while (v35);
        a2[2] = 8 * (v33 & 0x1FF);
        if ((v9 - v4 + (v6 << 6) - 64) >= 0xFFFFFFFFFFFFFFB7)
        {
          v38 = 0;
          v39 = 0;
          v40 = 9;
          do
          {
            v41 = 64 - v9;
            if (64 - v9 >= v40)
            {
              v41 = v40;
            }

            result = ((*(v3 + 8 * v6) >> v9) & ~(-1 << v41)) << v39;
            v38 |= result;
            v39 += v41;
            v42 = v41 + v9;
            v6 += v42 >> 6;
            v9 = v42 & 0x3F;
            v40 -= v41;
          }

          while (v40);
          a2[3] = 8 * (v38 & 0x1FF);
          if ((v9 - v4 + (v6 << 6) - 64) >= 0xFFFFFFFFFFFFFFB7)
          {
            v43 = 0;
            v44 = 0;
            v45 = 9;
            do
            {
              v46 = 64 - v9;
              if (64 - v9 >= v45)
              {
                v46 = v45;
              }

              result = ((*(v3 + 8 * v6) >> v9) & ~(-1 << v46)) << v44;
              v43 |= result;
              v44 += v46;
              v47 = v46 + v9;
              v6 += v47 >> 6;
              v9 = v47 & 0x3F;
              v45 -= v46;
            }

            while (v45);
            a2[4] = 8 * (v43 & 0x1FF);
            if ((v9 - v4 + (v6 << 6) - 64) >= 0xFFFFFFFFFFFFFFB7)
            {
              v48 = 0;
              v49 = 0;
              v50 = 9;
              do
              {
                v51 = 64 - v9;
                if (64 - v9 >= v50)
                {
                  v51 = v50;
                }

                result = ((*(v3 + 8 * v6) >> v9) & ~(-1 << v51)) << v49;
                v48 |= result;
                v49 += v51;
                v52 = v51 + v9;
                v6 += v52 >> 6;
                v9 = v52 & 0x3F;
                v50 -= v51;
              }

              while (v50);
              a2[5] = 8 * (v48 & 0x1FF);
              if ((v9 - v4 + (v6 << 6) - 64) >= 0xFFFFFFFFFFFFFFB7)
              {
                v53 = 0;
                v54 = 0;
                v55 = 9;
                do
                {
                  v56 = 64 - v9;
                  if (64 - v9 >= v55)
                  {
                    v56 = v55;
                  }

                  result = ((*(v3 + 8 * v6) >> v9) & ~(-1 << v56)) << v54;
                  v53 |= result;
                  v54 += v56;
                  v57 = v56 + v9;
                  v6 += v57 >> 6;
                  v9 = v57 & 0x3F;
                  v55 -= v56;
                }

                while (v55);
                v58 = v9 - v4 + (v6 << 6) - 64;
                a2[6] = 8 * (v53 & 0x1FF);
                v32 = a2 + 7;
                if (v58 >= 0xFFFFFFFFFFFFFFB7)
                {
                  v59 = 0;
                  v60 = 0;
                  v61 = 9;
                  do
                  {
                    v62 = 64 - v9;
                    if (64 - v9 >= v61)
                    {
                      v62 = v61;
                    }

                    result = ((*(v3 + 8 * v6) >> v9) & ~(-1 << v62)) << v60;
                    v59 |= result;
                    v60 += v62;
                    v63 = v62 + v9;
                    v6 += v63 >> 6;
                    v9 = v63 & 0x3F;
                    v61 -= v62;
                  }

                  while (v61);
                  v31 = 8 * (v59 & 0x1FF);
                }

                else
                {
                  v31 = 0;
                }

                goto LABEL_35;
              }

LABEL_34:
              v31 = 0;
              a2[6] = 0;
              v32 = a2 + 7;
LABEL_35:
              *v32 = v31;
              return result;
            }

LABEL_33:
            a2[5] = 0;
            goto LABEL_34;
          }

LABEL_32:
          a2[4] = 0;
          goto LABEL_33;
        }

LABEL_31:
        a2[3] = 0;
        goto LABEL_32;
      }
    }

    else
    {
      a2[1] = 0;
    }

    a2[2] = 0;
    goto LABEL_31;
  }

  v13 = 0;
  v14 = 0;
  v15 = a3 & 0xFFFFFFFD;
  v16 = ((a3 & 0xFFFFFFFD) == 1) << 11;
  v17 = 8 * (a1 & 7);
  do
  {
    if ((v17 - v4 + (v14 << 6) - 64) >= 0xFFFFFFFFFFFFFFB7)
    {
      v18 = 0;
      v19 = 0;
      v20 = 9;
      do
      {
        v21 = 64 - v17;
        if (64 - v17 >= v20)
        {
          v21 = v20;
        }

        v18 |= ((*(v3 + 8 * v14) >> v17) & ~(-1 << v21)) << v19;
        v19 += v21;
        v22 = v21 + v17;
        v14 += v22 >> 6;
        v17 = v22 & 0x3F;
        v20 -= v21;
      }

      while (v20);
    }

    else
    {
      v18 = 0;
    }

    v23 = 8 * (v18 & 0x1FF);
    if (v23 != 2048 || v15 != 1)
    {
      v25 = v23 - (v18 & 1) + 4;
      if (v23 == 4088)
      {
        v25 = 4095;
      }

      if (v23)
      {
        v23 = v25;
      }

      else
      {
        v23 = 0;
      }
    }

    result = v23 ^ v16;
    a2[v13++] = result;
  }

  while (v13 != 8);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(uint64_t a1, int *a2, int a3)
{
  v165 = *MEMORY[0x29EDCA608];
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = 3;
  v6 = v4 | 3;
  if (((*(a1 & 0xFFFFFFFFFFFFFFF8) >> v4) & 7) != 0)
  {
    v7 = 0;
    v8 = ((*(a1 & 0xFFFFFFFFFFFFFFF8) >> v4) & 7) + 3;
  }

  else
  {
    if ((v6 - v4) <= 0x46)
    {
      v7 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 2;
      do
      {
        v12 = 64 - v6;
        if (64 - v6 >= v11)
        {
          v12 = v11;
        }

        v9 |= ((*(v3 + 8 * v7) >> v6) & ~(-1 << v12)) << v10;
        v10 += v12;
        v13 = v12 + v6;
        v7 += v13 >> 6;
        v6 = v13 & 0x3F;
        v11 -= v12;
      }

      while (v11);
      v8 = v9 & 3;
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    v5 = 5;
  }

  v14 = v8;
  v15 = &kDQuadParamTable[10 * v8];
  v16 = v15[324] + 3;
  v17 = v15[325];
  v18 = v17 + 3;
  if (v16 >= 0xC)
  {
    v19 = 12;
  }

  else
  {
    v19 = v16;
  }

  if (v17)
  {
    LODWORD(v20) = 12;
  }

  else
  {
    LODWORD(v20) = 0;
  }

  if (v20 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v20;
  }

  v21 = 12 - v19;
  if (v8)
  {
    if (v16)
    {
      if ((v19 - v4 + v6 + (v7 << 6)) <= 0x48)
      {
        v22 = 0;
        v27 = 0;
        v28 = v19;
        do
        {
          v29 = 64 - v6;
          if (64 - v6 >= v28)
          {
            v29 = v28;
          }

          v22 |= ((*(v3 + 8 * v7) >> v6) & ~(-1 << v29)) << v27;
          v27 += v29;
          v30 = v29 + v6;
          v7 += v30 >> 6;
          v6 = v30 & 0x3F;
          v28 -= v29;
        }

        while (v28);
      }

      else
      {
        v22 = 0;
      }

      v5 += v19;
      v23 = v22 << v21;
      if (v20)
      {
        goto LABEL_33;
      }

LABEL_27:
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v161 = 0;
      v162 = 0;
      v164 = 0;
      v163 = 0;
      goto LABEL_82;
    }

    v23 = 0;
    if (!v20)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v23 = 0;
    if (!v20)
    {
      goto LABEL_27;
    }
  }

LABEL_33:
  if ((v6 - v4 + (v7 << 6) + 3) <= 0x48)
  {
    LODWORD(v25) = 0;
    v31 = 0;
    v32 = 3;
    do
    {
      v33 = 64 - v6;
      if (64 - v6 >= v32)
      {
        v33 = v32;
      }

      v25 = v25 | (((*(v3 + 8 * v7) >> v6) & ~(-1 << v33)) << v31);
      v31 += v33;
      v34 = v33 + v6;
      v7 += v34 >> 6;
      v6 = v34 & 0x3F;
      v32 -= v33;
    }

    while (v32);
  }

  else
  {
    v25 = 0;
  }

  v35 = 69 - v5;
  v36 = (147 * v35) >> 10;
  v37 = v20 - v4;
  v38 = (v6 | (v7 << 6)) + -7 * v36 + v35;
  v39 = v38 & 0x3F;
  v40 = v37 + v39 + (v38 & 0xFFFFFFFFFFFFFFC0);
  v161 = 0;
  v162 = 0;
  v164 = 0;
  v163 = 0;
  v41 = v38 >> 6;
  if (v40 <= 0x48)
  {
    v26 = 0;
    v42 = 0;
    v43 = v20;
    do
    {
      v44 = 64 - v39;
      if (64 - v39 >= v43)
      {
        v44 = v43;
      }

      v26 |= ((*(v3 + 8 * v41) >> v39) & ~(-1 << v44)) << v42;
      v42 += v44;
      v45 = v44 + v39;
      v41 += v45 >> 6;
      v39 = v45 & 0x3F;
      v43 -= v44;
    }

    while (v43);
  }

  else
  {
    v26 = 0;
  }

  LODWORD(v161) = v26;
  v46 = v39 | (v41 << 6);
  v47 = v36 - v20;
  v48 = v46 + v47;
  v49 = (v46 + v47) & 0x3F;
  v50 = (v46 + v47) >> 6;
  if (v37 + v49 + (v48 & 0xFFFFFFFFFFFFFFC0) <= 0x48)
  {
    v51 = 0;
    v52 = 0;
    v53 = v20;
    do
    {
      v54 = 64 - v49;
      if (64 - v49 >= v53)
      {
        v54 = v53;
      }

      v51 |= ((*(v3 + 8 * v50) >> v49) & ~(-1 << v54)) << v52;
      v52 += v54;
      v55 = v54 + v49;
      v50 += v55 >> 6;
      v49 = v55 & 0x3F;
      v53 -= v54;
    }

    while (v53);
  }

  else
  {
    v51 = 0;
  }

  HIDWORD(v161) = v51;
  v56 = (v49 | (v50 << 6)) + v47;
  v57 = v56 & 0x3F;
  v58 = v56 >> 6;
  if (v37 + v57 + (v56 & 0xFFFFFFFFFFFFFFC0) <= 0x48)
  {
    v59 = 0;
    v60 = 0;
    v61 = v20;
    do
    {
      v62 = 64 - v57;
      if (64 - v57 >= v61)
      {
        v62 = v61;
      }

      v59 |= ((*(v3 + 8 * v58) >> v57) & ~(-1 << v62)) << v60;
      v60 += v62;
      v63 = v62 + v57;
      v58 += v63 >> 6;
      v57 = v63 & 0x3F;
      v61 -= v62;
    }

    while (v61);
  }

  else
  {
    v59 = 0;
  }

  LODWORD(v162) = v59;
  v64 = (v57 | (v58 << 6)) + v47;
  v65 = v64 & 0x3F;
  v66 = v64 >> 6;
  if (v37 + v65 + (v64 & 0xFFFFFFFFFFFFFFC0) <= 0x48)
  {
    v67 = 0;
    v68 = 0;
    v69 = v20;
    do
    {
      v70 = 64 - v65;
      if (64 - v65 >= v69)
      {
        v70 = v69;
      }

      v67 |= ((*(v3 + 8 * v66) >> v65) & ~(-1 << v70)) << v68;
      v68 += v70;
      v71 = v70 + v65;
      v66 += v71 >> 6;
      v65 = v71 & 0x3F;
      v69 -= v70;
    }

    while (v69);
  }

  else
  {
    v67 = 0;
  }

  HIDWORD(v162) = v67;
  v72 = (v65 | (v66 << 6)) + v47;
  v73 = v72 & 0x3F;
  v74 = v72 >> 6;
  if (v37 + v73 + (v72 & 0xFFFFFFFFFFFFFFC0) <= 0x48)
  {
    v75 = 0;
    v76 = 0;
    v77 = v20;
    do
    {
      v78 = 64 - v73;
      if (64 - v73 >= v77)
      {
        v78 = v77;
      }

      v75 |= ((*(v3 + 8 * v74) >> v73) & ~(-1 << v78)) << v76;
      v76 += v78;
      v79 = v78 + v73;
      v74 += v79 >> 6;
      v73 = v79 & 0x3F;
      v77 -= v78;
    }

    while (v77);
  }

  else
  {
    v75 = 0;
  }

  LODWORD(v163) = v75;
  v80 = (v73 | (v74 << 6)) + v47;
  v81 = v80 & 0x3F;
  v82 = v80 >> 6;
  if (v37 + v81 + (v80 & 0xFFFFFFFFFFFFFFC0) <= 0x48)
  {
    v83 = 0;
    v84 = 0;
    v85 = v20;
    do
    {
      v86 = 64 - v81;
      if (64 - v81 >= v85)
      {
        v86 = v85;
      }

      v83 |= ((*(v3 + 8 * v82) >> v81) & ~(-1 << v86)) << v84;
      v84 += v86;
      v87 = v86 + v81;
      v82 += v87 >> 6;
      v81 = v87 & 0x3F;
      v85 -= v86;
    }

    while (v85);
  }

  else
  {
    v83 = 0;
  }

  HIDWORD(v163) = v83;
  v88 = (v81 | (v82 << 6)) + v47;
  v89 = v88 & 0x3F;
  if (v37 + v89 + (v88 & 0xFFFFFFFFFFFFFFC0) <= 0x48)
  {
    v90 = 0;
    v91 = 0;
    v92 = v88 >> 6;
    v93 = v20;
    do
    {
      v94 = 64 - v89;
      if (64 - v89 >= v93)
      {
        v94 = v93;
      }

      v90 |= ((*(v3 + 8 * v92) >> v89) & ~(-1 << v94)) << v91;
      v91 += v94;
      v95 = v94 + v89;
      v92 += v95 >> 6;
      v89 = v95 & 0x3F;
      v93 -= v94;
    }

    while (v93);
  }

  else
  {
    v90 = 0;
  }

  v164 = v90;
  v24 = v20;
LABEL_82:
  v96 = *&kDQuadParamTable[10 * v14 + 322];
  if (v96 >> v24 <= 1)
  {
    v97 = 1;
  }

  else
  {
    v97 = v96 >> v24;
  }

  v98 = v97 >> 1;
  if (v97 >> 1 >= (1 << v21) >> 1)
  {
    v99 = (1 << v21) >> 1;
  }

  else
  {
    v99 = v97 >> 1;
  }

  v100 = 2048 - v23;
  result = v100 / v97;
  v102 = v96 + v23;
  v103 = -1 << v24;
  if (v23)
  {
    v104 = v99;
  }

  else
  {
    v104 = 0;
  }

  v105 = v23 == 2048;
  if (v20)
  {
    if (v25)
    {
      v106 = result == v26;
      if (!(v23 | v26))
      {
        v107 = 0;
LABEL_101:
        v108 = 1;
        goto LABEL_102;
      }

      if (v102 < 0x1000 || (v103 ^ v26) != 0xFFFFFFFFFFFFFFFFLL)
      {
        v107 = v98 + v97 * v26;
        goto LABEL_101;
      }

      v108 = 1;
      v107 = 4095;
    }

    else
    {
      v108 = 0;
      v107 = v104;
      v106 = v23 == 2048;
    }
  }

  else
  {
    v108 = 0;
    v107 = 0;
    v106 = v97 > v100;
  }

LABEL_102:
  v109 = a3 & 0xFFFFFFFD;
  v110 = v107 + v23;
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

  v112 = 4095;
  if (v111 < 0xFFF)
  {
    v112 = v111;
  }

  if (v106)
  {
    v113 = 0;
  }

  else
  {
    v113 = v112 ^ 0x800;
  }

  if (v109 != 1)
  {
    v113 = v112;
  }

  *a2 = v113;
  if (v20)
  {
    if (v25 == 1)
    {
      v114 = v104;
      v115 = v23 == 2048;
    }

    else
    {
      v116 = *(&v161 | (4 * v108));
      v115 = result == v116;
      if (v23 | v116)
      {
        if (v102 >= 0x1000 && (v103 ^ v116) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v114 = 4095;
        }

        else
        {
          v114 = v98 + v97 * v116;
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
    v115 = v97 > v100;
  }

  v117 = v114 + v23;
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

  v119 = 4095;
  if (v118 < 0xFFF)
  {
    v119 = v118;
  }

  if (v115)
  {
    v120 = 0;
  }

  else
  {
    v120 = v119 ^ 0x800;
  }

  if (v109 != 1)
  {
    v120 = v119;
  }

  a2[1] = v120;
  if (v20)
  {
    if (v25 == 2)
    {
      v121 = v104;
      v122 = v23 == 2048;
    }

    else
    {
      v123 = *(&v161 + v108);
      v122 = result == v123;
      if (v23 | v123)
      {
        if (v102 >= 0x1000 && (v103 ^ v123) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v121 = 4095;
        }

        else
        {
          v121 = v98 + v97 * v123;
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
    v122 = v97 > v100;
  }

  v124 = v121 + v23;
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

  v126 = 4095;
  if (v125 < 0xFFF)
  {
    v126 = v125;
  }

  if (v122)
  {
    v127 = 0;
  }

  else
  {
    v127 = v126 ^ 0x800;
  }

  if (v109 != 1)
  {
    v127 = v126;
  }

  a2[2] = v127;
  if (v20)
  {
    if (v25 == 3)
    {
      v128 = v104;
      v129 = v23 == 2048;
    }

    else
    {
      v130 = *(&v161 + v108);
      v129 = result == v130;
      if (v23 | v130)
      {
        if (v102 >= 0x1000 && (v103 ^ v130) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v128 = 4095;
        }

        else
        {
          v128 = v98 + v97 * v130;
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
    v129 = v97 > v100;
  }

  v131 = v128 + v23;
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

  v133 = 4095;
  if (v132 < 0xFFF)
  {
    v133 = v132;
  }

  if (v129)
  {
    v134 = 0;
  }

  else
  {
    v134 = v133 ^ 0x800;
  }

  if (v109 != 1)
  {
    v134 = v133;
  }

  a2[3] = v134;
  if (v20)
  {
    if (v25 == 4)
    {
      v135 = v104;
      v136 = v23 == 2048;
    }

    else
    {
      v137 = *(&v161 + v108);
      v136 = result == v137;
      if (v23 | v137)
      {
        if (v102 >= 0x1000 && (v103 ^ v137) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v135 = 4095;
        }

        else
        {
          v135 = v98 + v97 * v137;
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
    v136 = v97 > v100;
  }

  v138 = v135 + v23;
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

  v140 = 4095;
  if (v139 < 0xFFF)
  {
    v140 = v139;
  }

  if (v136)
  {
    v141 = 0;
  }

  else
  {
    v141 = v140 ^ 0x800;
  }

  if (v109 != 1)
  {
    v141 = v140;
  }

  a2[4] = v141;
  if (v20)
  {
    if (v25 == 5)
    {
      v142 = v104;
      v143 = v23 == 2048;
    }

    else
    {
      v144 = *(&v161 + v108);
      v143 = result == v144;
      if (v23 | v144)
      {
        if (v102 >= 0x1000 && (v103 ^ v144) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v142 = 4095;
        }

        else
        {
          v142 = v98 + v97 * v144;
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
    v143 = v97 > v100;
  }

  v145 = v142 + v23;
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

  v147 = 4095;
  if (v146 < 0xFFF)
  {
    v147 = v146;
  }

  if (v143)
  {
    v148 = 0;
  }

  else
  {
    v148 = v147 ^ 0x800;
  }

  if (v109 != 1)
  {
    v148 = v147;
  }

  a2[5] = v148;
  if (v20)
  {
    if (v25 == 6)
    {
      v149 = v104;
      v150 = v23 == 2048;
    }

    else
    {
      v151 = *(&v161 + v108);
      v150 = result == v151;
      if (v23 | v151)
      {
        if (v102 >= 0x1000 && (v103 ^ v151) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v149 = 4095;
        }

        else
        {
          v149 = v98 + v97 * v151;
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
    v150 = v97 > v100;
  }

  v152 = v149 + v23;
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

  v154 = 4095;
  if (v153 < 0xFFF)
  {
    v154 = v153;
  }

  if (v150)
  {
    v155 = 0;
  }

  else
  {
    v155 = v154 ^ 0x800;
  }

  if (v109 != 1)
  {
    v155 = v154;
  }

  a2[6] = v155;
  if (v20)
  {
    if (v25 != 7)
    {
      v156 = *(&v161 + v108);
      v105 = result == v156;
      if (v23 | v156)
      {
        if (v102 >= 0x1000 && (v103 ^ v156) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v104 = 4095;
        }

        else
        {
          v104 = v98 + v97 * v156;
        }
      }

      else
      {
        v104 = 0;
      }
    }
  }

  else
  {
    v104 = 0;
    v105 = v97 > v100;
  }

  v157 = v104 + v23;
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
        v158 = v157;
      }
    }
  }

  v159 = 4095;
  if (v158 < 0xFFF)
  {
    v159 = v158;
  }

  v160 = v159 ^ 0x800;
  if (v105)
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressSubblock(int16x8_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, double a6, double a7, double a8, int8x8_t a9)
{
  v285 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    v14 = 0;
    a1->i64[0] = 0;
    a1->i64[1] = 0;
    v15 = (a1->i64 + a2);
    *v15 = 0;
    v15[1] = 0;
    v16 = (a1->i64 + 2 * a2);
    *v16 = 0;
    v16[1] = 0;
    v17 = (a1->i64 + 2 * a2 + a2);
LABEL_6:
    *v17 = 0;
    v17[1] = 0;
    return v14;
  }

  v9 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(a3, &v281, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(a3, &v281, a5);
    }

    v278 = v281;
    v275 = v282;
    v277 = v283;
    v273 = v284;
    v19 = a3 + 9;
    if ((v9 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v19, &v281, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v19, &v281, a5);
    }

    v276 = v281;
    v280 = v282;
    v274 = v283;
    v279 = v284;
    v20 = a3 + 18;
    if ((v9 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v20, &v281, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v20, &v281, a5);
    }

    v272 = v281;
    v271 = v282;
    v270 = v283;
    v269 = v284;
    v21 = a3 + 27;
    if ((v9 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v21, &v281, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v21, &v281, a5);
    }

    v22.i64[0] = v271;
    v23.i64[0] = v272;
    v22.i64[1] = v269;
    v24.i64[0] = v275;
    v24.i64[1] = v273;
    v23.i64[1] = v270;
    v25 = vuzp1q_s16(v24, v22);
    v26.i64[0] = v278;
    v26.i64[1] = v277;
    v27 = vuzp1q_s16(v26, v23);
    v22.i64[0] = v281;
    v23.i64[0] = v282;
    v28 = v283;
    v29 = v284;
    *a1 = vshlq_n_s16(v27, 4uLL);
    *(a1 + a2) = vshlq_n_s16(v25, 4uLL);
    v30 = (a1 + a2 + a2);
    v22.i64[1] = v28;
    v25.i64[0] = v276;
    v25.i64[1] = v274;
    v23.i64[1] = v29;
    v27.i64[0] = v280;
    v27.i64[1] = v279;
    *v30 = vshlq_n_s16(vuzp1q_s16(v25, v22), 4uLL);
    *(v30 + a2) = vshlq_n_s16(vuzp1q_s16(v27, v23), 4uLL);
    return 36;
  }

  switch(a4)
  {
    case 0x3Fu:
      v80 = *a3;
      v81 = *(a3 + 16);
      v82 = *(a3 + 32);
      v83 = *(a3 + 48);
      *a1 = vuzp1q_s32(*a3, v82);
      *(a1 + a2) = vuzp2q_s32(v80, v82);
      v84 = (a1 + 2 * a2);
      *v84 = vuzp1q_s32(v81, v83);
      *(v84 + a2) = vuzp2q_s32(v81, v83);
      return 64;
    case 0x2Fu:
      v32.i64[0] = 0xC000C000C000CLL;
      v32.i64[1] = 0xC000C000C000CLL;
      v33 = vmovl_u16(*&vpaddq_s16(v32, v32));
      v34 = vpaddq_s32(v33, v33).u64[0];
      v35.i64[0] = v34;
      v35.i64[1] = HIDWORD(v34);
      v36 = v35;
      v37 = vaddvq_s64(v35);
      v38 = 0uLL;
      v39 = 0uLL;
      v40 = 0uLL;
      v41 = 0uLL;
      if (v37 <= 0x80)
      {
        v42 = (a3 & 0xFFFFFFFFFFFFFFF8);
        v43 = 8 * (a3 & 7);
        v44 = vzip1q_s64(0, v36);
        v45 = v37 + v43;
        v46 = vaddq_s64(v44, vdupq_n_s64(v43));
        v39 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v46)), vshlq_u64(vdupq_lane_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 0), vnegq_s64(v46)));
        if (v37 + v43 >= 0x81)
        {
          v39 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v42[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v46)), vshlq_u64(vdupq_laneq_s64(v42[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v46))), v39);
        }

        v47 = v45 & 0x3F;
        v48 = (v42 + 8 * (v45 >> 6));
        v49 = vaddq_s64(v44, vdupq_n_s64(v47));
        v50 = v37 + v45;
        v40 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v48, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v49)), vshlq_u64(vdupq_lane_s64(v48->i64[0], 0), vnegq_s64(v49)));
        if (v37 + v47 >= 0x81)
        {
          v40 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v48[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v49)), vshlq_u64(vdupq_laneq_s64(v48[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v49))), v40);
        }

        v51 = v50 & 0x3F;
        v52 = (v42 + 8 * (v50 >> 6));
        v53 = vaddq_s64(v44, vdupq_n_s64(v51));
        v54 = v37 + v50;
        v38 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v52, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v53)), vshlq_u64(vdupq_lane_s64(v52->i64[0], 0), vnegq_s64(v53)));
        if (v37 + v51 >= 0x81)
        {
          v38 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v52[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v53)), vshlq_u64(vdupq_laneq_s64(v52[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v53))), v38);
        }

        v55 = vaddq_s64(v44, vdupq_n_s64(v54 & 0x3F));
        v56 = (v42 + 8 * (v54 >> 6));
        v41 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v56, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v55)), vshlq_u64(vdupq_lane_s64(v56->i64[0], 0), vnegq_s64(v55)));
        if (v37 + (v54 & 0x3F) >= 0x81)
        {
          v41 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v56[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v55)), vshlq_u64(vdupq_laneq_s64(v56[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v55))), v41);
        }
      }

      v57 = vzip1_s32(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
      v58.i64[0] = v57.u32[0];
      v58.i64[1] = v57.u32[1];
      v59 = vnegq_s64(v58);
      v60 = vshlq_u64(v38, v59);
      v61 = vuzp1q_s32(vzip1q_s64(v38, v60), vzip2q_s64(v38, v60));
      v62 = vshrq_n_u32(v61, 0xCuLL);
      v63 = vuzp1q_s16(vzip1q_s32(v61, v62), vzip2q_s32(v61, v62));
      v64 = vshlq_u64(v40, v59);
      v65 = vuzp1q_s32(vzip1q_s64(v40, v64), vzip2q_s64(v40, v64));
      v66 = vshrq_n_u32(v65, 0xCuLL);
      v67 = vuzp1q_s16(vzip1q_s32(v65, v66), vzip2q_s32(v65, v66));
      v68 = vshlq_u64(v39, v59);
      v69 = vuzp1q_s32(vzip1q_s64(v39, v68), vzip2q_s64(v39, v68));
      v70 = vshrq_n_u32(v69, 0xCuLL);
      v71 = vshlq_u64(v41, v59);
      v72 = vuzp1q_s32(vzip1q_s64(v41, v71), vzip2q_s64(v41, v71));
      v73 = vshrq_n_u32(v72, 0xCuLL);
      v74 = vuzp1q_s16(vzip1q_s32(v72, v73), vzip2q_s32(v72, v73));
      v75 = vshlq_n_s16(vuzp1q_s16(vzip1q_s32(v69, v70), vzip2q_s32(v69, v70)), 4uLL);
      v76 = vshlq_n_s16(v67, 4uLL);
      v77 = vshlq_n_s16(v63, 4uLL);
      v78 = vshlq_n_s16(v74, 4uLL);
      *a1 = vuzp1q_s32(v75, v77);
      *(a1 + a2) = vuzp2q_s32(v75, v77);
      v79 = (a1 + 2 * a2);
      *v79 = vuzp1q_s32(v76, v78);
      *(v79 + a2) = vuzp2q_s32(v76, v78);
      return 48;
    case 1u:
      v18 = vdupq_n_s16(16 * *a3);
      *a1 = v18;
      *(a1 + a2) = v18;
      *(a1 + 2 * a2) = v18;
      *(a1 + 3 * a2) = v18;
      return 2;
    default:
      v85 = 8 * (a3 & 7);
      v86 = a3 & 0xFFFFFFFFFFFFFFF8;
      v87 = v85 + 18;
      v88 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v85;
      if (v85 >= 0x2F)
      {
        v88 |= *(v86 + 8) << (-8 * (a3 & 7u));
      }

      v89 = v85 + 288;
      v90 = ((a4 >> 6) | (4 * v88)) & 0xF;
      v91 = vdupq_n_s16(v90);
      a9.i32[0] = v90;
      v92.i64[0] = 0x3000300030003;
      v92.i64[1] = 0x3000300030003;
      v93 = vbicq_s8(vdupq_n_s16(((v88 >> 2) & 0xF) + 1), vceqq_s16((*&v91 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v92));
      v94 = vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(vand_s8(a9, 0x4000400040004), 0))));
      v95.i64[0] = 0x202020202020202;
      v95.i64[1] = 0x202020202020202;
      v96 = vandq_s8(v94, v95);
      if (vmaxvq_s8(v96) < 1)
      {
        v105 = 0;
        v129.i64[0] = -1;
        v129.i64[1] = -1;
        v125 = v93;
        v124 = v93;
        v123 = v93;
        v128.i64[0] = -1;
        v128.i64[1] = -1;
        v122 = v93;
        v127.i64[0] = -1;
        v127.i64[1] = -1;
        v126.i64[0] = -1;
        v126.i64[1] = -1;
      }

      else
      {
        v97 = vmovl_u8(*&vpaddq_s8(v96, v96));
        v98 = vmovl_u16(*&vpaddq_s16(v97, v97));
        v99 = vpaddq_s32(v98, v98).u64[0];
        v100.i64[0] = v99;
        v100.i64[1] = HIDWORD(v99);
        v101 = v100;
        v102 = vaddvq_s64(v100);
        v103 = v102 + v87;
        v104 = v102 <= 0x80 && v89 >= v103;
        v105 = !v104;
        v106 = 0uLL;
        if (v104)
        {
          v107 = v87 & 0x3A;
          v108 = vaddq_s64(vzip1q_s64(0, v101), vdupq_n_s64(v107));
          v109 = (v86 + ((v87 >> 3) & 8));
          v106 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v109, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v108)), vshlq_u64(vdupq_lane_s64(v109->i64[0], 0), vnegq_s64(v108)));
          if (v102 + v107 >= 0x81)
          {
            v106 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v109[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v108)), vshlq_u64(vdupq_laneq_s64(v109[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v108))), v106);
          }

          v87 = v103;
        }

        v110 = vzip1_s32(*v98.i8, *&vextq_s8(v98, v98, 8uLL));
        v111.i64[0] = v110.u32[0];
        v111.i64[1] = v110.u32[1];
        v112 = vshlq_u64(v106, vnegq_s64(v111));
        v113 = vuzp1q_s32(vzip1q_s64(v106, v112), vzip2q_s64(v106, v112));
        v114 = vshlq_u32(v113, vnegq_s32((*&v97 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
        v115 = vuzp1q_s16(vzip1q_s32(v113, v114), vzip2q_s32(v113, v114));
        v116 = vzip1q_s16(v115, vshlq_u16(v115, vnegq_s16(vmovl_u8(vuzp1_s8(*v96.i8, *v91.i8)))));
        *v116.i8 = vmovn_s16(v116);
        v113.i64[0] = 0x101010101010101;
        v113.i64[1] = 0x101010101010101;
        v117 = vshlq_s8(v113, v96);
        v113.i64[0] = -1;
        v113.i64[1] = -1;
        v117.i32[0] = vandq_s8(vaddq_s8(v117, v113), v116).u32[0];
        v118 = vdupq_n_s16(v117.i8[0]);
        v119 = vdupq_n_s16(v117.i8[1]);
        v120 = vdupq_n_s16(v117.i8[2]);
        v121 = vdupq_n_s16(v117.i8[3]);
        v122 = vsubq_s16(v93, v118);
        v123 = vsubq_s16(v93, v119);
        v124 = vsubq_s16(v93, v120);
        v125 = vsubq_s16(v93, v121);
        v126 = vceqzq_s16(v118);
        v127 = vceqzq_s16(v119);
        v128 = vceqzq_s16(v120);
        v129 = vceqzq_s16(v121);
      }

      v130.i64[0] = 0x7000700070007;
      v130.i64[1] = 0x7000700070007;
      v131 = 0uLL;
      v132 = vandq_s8(vextq_s8(vcgtq_u16(v91, v130), 0, 0xEuLL), v93);
      v133 = vmovl_u16(*&vpaddq_s16(v132, v132));
      v134 = vpaddq_s32(v133, v133).u64[0];
      v135.i64[0] = v134;
      v135.i64[1] = HIDWORD(v134);
      v136 = v135;
      v137 = vaddvq_s64(v135);
      v138 = v137 + v87;
      if (v137 <= 0x80 && v89 >= v138)
      {
        v140 = v87 & 0x3F;
        v141 = vaddq_s64(vzip1q_s64(0, v136), vdupq_n_s64(v140));
        v142 = (v86 + 8 * (v87 >> 6));
        v131 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v142, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v141)), vshlq_u64(vdupq_lane_s64(v142->i64[0], 0), vnegq_s64(v141)));
        if (v137 + v140 >= 0x81)
        {
          v131 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v142[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v141)), vshlq_u64(vdupq_laneq_s64(v142[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v141))), v131);
        }

        v87 = v138;
      }

      else
      {
        v105 = 1;
      }

      v143 = v90 & 3;
      if (v143 == 2)
      {
        if (v89 < v87 + 8)
        {
          v105 = 1;
        }

        else
        {
          v87 += 8;
        }

        v144 = v89 < v87 + 8;
        if (v89 >= v87 + 8)
        {
          v87 += 8;
        }

        v105 |= v144;
      }

      v145 = 0uLL;
      v146 = vextq_s8(0, v122, 0xEuLL);
      v147 = vmovl_u16(*&vpaddq_s16(v146, v146));
      v148 = vpaddq_s32(v147, v147).u64[0];
      v149.i64[0] = v148;
      v149.i64[1] = HIDWORD(v148);
      v150 = v149;
      v151 = vaddvq_s64(v149);
      v152 = v151 + v87;
      if (v151 <= 0x80 && v89 >= v152)
      {
        v155 = v87 & 0x3F;
        v156 = vaddq_s64(vzip1q_s64(0, v150), vdupq_n_s64(v155));
        v157 = (v86 + 8 * (v87 >> 6));
        v154 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v157, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v156)), vshlq_u64(vdupq_lane_s64(v157->i64[0], 0), vnegq_s64(v156)));
        if (v151 + v155 >= 0x81)
        {
          v154 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v157[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v156)), vshlq_u64(vdupq_laneq_s64(v157[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v156))), v154);
        }

        v87 = v152;
      }

      else
      {
        v105 = 1;
        v154 = 0uLL;
      }

      v158.i64[0] = 0xFFFF0000FFFFLL;
      v158.i64[1] = 0xFFFF0000FFFFLL;
      v159 = vmovl_u16(*&vpaddq_s16(v123, v123));
      v160 = vpaddq_s32(v159, v159).u64[0];
      v161.i64[0] = v160;
      v161.i64[1] = HIDWORD(v160);
      v162 = v161;
      v163 = vaddvq_s64(v161);
      if (v163 >= 0x81)
      {
        v105 = 1;
      }

      else
      {
        v164 = vzip1_s32(*v159.i8, *&vextq_s8(v159, v159, 8uLL));
        v165.i64[0] = v164.u32[0];
        v165.i64[1] = v164.u32[1];
        v166 = v165;
        v167 = vandq_s8(v123, v158);
        v168 = v163 + v87;
        if (v89 >= v163 + v87)
        {
          v169 = v87 & 0x3F;
          v170 = vaddq_s64(vzip1q_s64(0, v162), vdupq_n_s64(v169));
          v171 = (v86 + 8 * (v87 >> 6));
          v145 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v171, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v170)), vshlq_u64(vdupq_lane_s64(v171->i64[0], 0), vnegq_s64(v170)));
          if (v163 + v169 >= 0x81)
          {
            v145 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v171[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v170)), vshlq_u64(vdupq_laneq_s64(v171[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v170))), v145);
          }

          v87 = v168;
        }

        else
        {
          v105 = 1;
        }

        v172 = vshlq_u64(v145, vnegq_s64(v166));
        v173 = vuzp1q_s32(vzip1q_s64(v145, v172), vzip2q_s64(v145, v172));
        v174 = vshlq_u32(v173, vnegq_s32(v167));
        v145 = vuzp1q_s16(vzip1q_s32(v173, v174), vzip2q_s32(v173, v174));
      }

      v175 = vmovl_u16(*&vpaddq_s16(v124, v124));
      v176 = vpaddq_s32(v175, v175).u64[0];
      v177.i64[0] = v176;
      v177.i64[1] = HIDWORD(v176);
      v178 = v177;
      v179 = vaddvq_s64(v177);
      v180 = 0uLL;
      if (v179 >= 0x81)
      {
        v105 = 1;
        v187 = 0uLL;
      }

      else
      {
        v181 = vzip1_s32(*v175.i8, *&vextq_s8(v175, v175, 8uLL));
        v182.i64[0] = v181.u32[0];
        v182.i64[1] = v181.u32[1];
        v183 = v182;
        v184 = vandq_s8(v124, v158);
        v185 = v179 + v87;
        if (v89 >= v179 + v87)
        {
          v188 = v87 & 0x3F;
          v189 = vaddq_s64(vzip1q_s64(0, v178), vdupq_n_s64(v188));
          v190 = (v86 + 8 * (v87 >> 6));
          v186 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v190, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v189)), vshlq_u64(vdupq_lane_s64(v190->i64[0], 0), vnegq_s64(v189)));
          if (v179 + v188 >= 0x81)
          {
            v186 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v190[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v189)), vshlq_u64(vdupq_laneq_s64(v190[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v189))), v186);
          }

          v87 = v185;
        }

        else
        {
          v186 = 0uLL;
          v105 = 1;
        }

        v191 = vshlq_u64(v186, vnegq_s64(v183));
        v192 = vuzp1q_s32(vzip1q_s64(v186, v191), vzip2q_s64(v186, v191));
        v193 = vshlq_u32(v192, vnegq_s32(v184));
        v187 = vuzp1q_s16(vzip1q_s32(v192, v193), vzip2q_s32(v192, v193));
      }

      v194 = vmovl_u16(*&vpaddq_s16(v125, v125));
      v195 = vpaddq_s32(v194, v194).u64[0];
      v196.i64[0] = v195;
      v196.i64[1] = HIDWORD(v195);
      v197 = v196;
      v198 = vaddvq_s64(v196);
      if (v198 >= 0x81)
      {
        goto LABEL_97;
      }

      if (v89 >= v198 + v87)
      {
        v199 = vaddq_s64(vzip1q_s64(0, v197), vdupq_n_s64(v87 & 0x3F));
        v200 = (v86 + 8 * (v87 >> 6));
        v180 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v200, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v199)), vshlq_u64(vdupq_lane_s64(v200->i64[0], 0), vnegq_s64(v199)));
        if (v198 + (v87 & 0x3F) >= 0x81)
        {
          v180 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v200[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v199)), vshlq_u64(vdupq_laneq_s64(v200[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v199))), v180);
        }

        v87 += v198;
      }

      else
      {
        v105 = 1;
      }

      if ((v105 & 1) != 0 || (v14 = (a4 & 0x3F) + 1, 8 * ((a3 & 7) + v14) - v87 >= 9))
      {
LABEL_97:
        v201 = 0;
        v202 = 0;
        v203 = 8 * (&v281 & 7);
        v204 = 12;
        do
        {
          v205 = 64 - v203;
          if (64 - v203 >= v204)
          {
            v205 = v204;
          }

          *(&v281 + v201) |= ((0xFFFFFFFFFFFFFFFFLL >> v202) & ~(-1 << v205)) << v203;
          v202 += v205;
          v206 = v205 + v203;
          v201 += v206 >> 6;
          v203 = v206 & 0x3F;
          v204 -= v205;
        }

        while (v204);
LABEL_101:
        v14 = 0;
        v207 = (a1->i64 + a2);
        a1->i64[0] = 0;
        a1->i64[1] = 0;
        v208 = (a1->i64 + 2 * a2);
        *v207 = 0;
        v207[1] = 0;
        v17 = (a1->i64 + 2 * a2 + a2);
        *v208 = 0;
        v208[1] = 0;
        goto LABEL_6;
      }

      if (v143 == 2)
      {
        v209 = 0;
        v210 = 0;
        v211 = 8 * (&v281 & 7);
        v212 = 12;
        do
        {
          v213 = 64 - v211;
          if (64 - v211 >= v212)
          {
            v213 = v212;
          }

          *(&v281 + v209) |= ((0xFFFFFFFFFFFFFFFFLL >> v210) & ~(-1 << v213)) << v211;
          v210 += v213;
          v214 = v213 + v211;
          v209 += v214 >> 6;
          v211 = v214 & 0x3F;
          v212 -= v213;
        }

        while (v212);
        goto LABEL_101;
      }

      v215 = vzip1_s32(*v133.i8, *&vextq_s8(v133, v133, 8uLL));
      v216 = vzip1_s32(*v147.i8, *&vextq_s8(v147, v147, 8uLL));
      v217.i64[0] = v215.u32[0];
      v217.i64[1] = v215.u32[1];
      v218 = v217;
      v217.i64[0] = v216.u32[0];
      v217.i64[1] = v216.u32[1];
      v219 = vshlq_u64(v131, vnegq_s64(v218));
      v220 = vshlq_u64(v154, vnegq_s64(v217));
      v221 = vuzp1q_s32(vzip1q_s64(v131, v219), vzip2q_s64(v131, v219));
      v222 = vuzp1q_s32(vzip1q_s64(v154, v220), vzip2q_s64(v154, v220));
      v223 = vshlq_u32(v221, vnegq_s32((*&v132 & __PAIR128__(0xFFE0FFFFFFE0FFFFLL, 0xFFE0FFFFFFE0FFFFLL))));
      v224 = vshlq_u32(v222, vnegq_s32(vandq_s8(v146, v158)));
      v225 = vzip2q_s32(v221, v223);
      v226 = vzip1q_s32(v221, v223);
      v223.i64[0] = 0x10001000100010;
      v223.i64[1] = 0x10001000100010;
      v227 = vzip2q_s32(v222, v224);
      v228 = vzip1q_s32(v222, v224);
      v224.i64[0] = 0x10001000100010;
      v224.i64[1] = 0x10001000100010;
      v229 = vuzp1q_s16(v226, v225);
      v225.i64[0] = 0xF000F000F000FLL;
      v225.i64[1] = 0xF000F000F000FLL;
      v230 = vuzp1q_s16(v228, v227);
      v227.i64[0] = 0xF000F000F000FLL;
      v227.i64[1] = 0xF000F000F000FLL;
      v231 = vzip1_s32(*v194.i8, *&vextq_s8(v194, v194, 8uLL));
      v232.i64[0] = 0xFFFF0000FFFFLL;
      v232.i64[1] = 0xFFFF0000FFFFLL;
      v233.i64[0] = 0xF000F000F000FLL;
      v233.i64[1] = 0xF000F000F000FLL;
      v234.i64[0] = 0x10001000100010;
      v234.i64[1] = 0x10001000100010;
      v235 = vshlq_s16(v229, vsubq_s16(v223, v132));
      v236 = vaddq_s16(v146, v227);
      v237 = vshlq_s16(v230, vsubq_s16(v224, v146));
      v238 = vshlq_s16(v145, vsubq_s16(v224, v123));
      v239 = vshlq_s16(v187, vsubq_s16(v224, v124));
      v217.i64[0] = v231.u32[0];
      v217.i64[1] = v231.u32[1];
      v240 = vandq_s8(v125, v232);
      v241 = vaddq_s16(v125, v233);
      v242 = vsubq_s16(v234, v125);
      v243 = vdupq_n_s16(v88 >> 6);
      v244 = vshlq_s16(v235, vaddq_s16(v132, v225));
      v245 = vshlq_s16(v237, v236);
      v246 = vshlq_u64(v180, vnegq_s64(v217));
      v247 = vuzp1q_s32(vzip1q_s64(v180, v246), vzip2q_s64(v180, v246));
      v248 = vshlq_u32(v247, vnegq_s32(v240));
      v249 = vaddq_s16(vandq_s8(v244, v126), v245);
      v250 = vdupq_lane_s16(*v244.i8, 0);
      v251 = vsubq_s16(v249, vandq_s8(v250, v126));
      v252 = vsubq_s16(vshlq_s16(v238, vaddq_s16(v123, v227)), vandq_s8(v250, v127));
      v253 = vsubq_s16(vshlq_s16(v239, vaddq_s16(v124, v227)), vandq_s8(v250, v128));
      v254 = vsubq_s16(vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v247, v248), vzip2q_s32(v247, v248)), v242), v241), vandq_s8(v250, v129));
      v255.i64[0] = 0x1000100010001;
      v255.i64[1] = 0x1000100010001;
      if (vaddvq_s16(vceqq_s16((*&v91 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v255)))
      {
        v256 = *&v91 & __PAIR128__(0xFFF1FFF1FFF1FFF1, 0xFFF1FFF1FFF1FFF1);
        v257 = vnegq_s16(v256);
        v258 = v251;
        v258.i16[0] = v251.i16[7];
        v258.i16[7] = v251.i16[0];
        v259 = vorrq_s8(vandq_s8(v258, v257), vandq_s8(v251, vceqzq_s16(v256)));
        v260 = vaddq_s16(v259, vandq_s8(vqtbl1q_s8(v259, xmmword_29D2F0E60), v257));
        v251 = vaddq_s16(v260, vandq_s8(vqtbl1q_s8(v260, xmmword_29D2F0E70), v257));
        v261 = vaddq_s16(vandq_s8(vqtbl1q_s8(v252, xmmword_29D2F0E80), v257), v252);
        v252 = vaddq_s16(vandq_s8(vqtbl1q_s8(v261, xmmword_29D2F0E90), v257), v261);
        v262 = vaddq_s16(vandq_s8(vqtbl1q_s8(v253, xmmword_29D2F0EA0), v257), v253);
        v253 = vaddq_s16(vandq_s8(vqtbl1q_s8(v262, xmmword_29D2F0EB0), v257), v262);
        v263 = vaddq_s16(vandq_s8(vqtbl1q_s8(v254, xmmword_29D2F0EC0), v257), v254);
        v254 = vaddq_s16(vandq_s8(vqtbl1q_s8(v263, xmmword_29D2F0ED0), v257), v263);
      }

      v264 = vshlq_n_s16(vaddq_s16(v243, v251), 4uLL);
      v265 = vshlq_n_s16(vaddq_s16(v252, v243), 4uLL);
      v266 = vshlq_n_s16(vaddq_s16(v253, v243), 4uLL);
      v267 = vshlq_n_s16(vaddq_s16(v254, v243), 4uLL);
      *a1 = vuzp1q_s32(v264, v266);
      *(a1 + a2) = vuzp2q_s32(v264, v266);
      v268 = (a1 + 2 * a2);
      *v268 = vuzp1q_s32(v265, v267);
      *(v268 + a2) = vuzp2q_s32(v265, v267);
      break;
  }

  return v14;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressSubblock(unint64_t a1, _BYTE *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, int16x4_t a15)
{
  v17 = *(a3 + a4);
  v18 = (a3 + 2 * a4);
  v19 = *(v18 + a4);
  v20 = vshrq_n_s16(vzip1q_s32(*a3, v17), 4uLL);
  v21 = vshrq_n_s16(vzip1q_s32(*v18, v19), 4uLL);
  v22 = vshrq_n_s16(vzip2q_s32(*a3, v17), 4uLL);
  v23 = vshrq_n_s16(vzip2q_s32(*v18, v19), 4uLL);
  v24 = vdupq_lane_s16(*v20.i8, 0);
  v25 = vshlq_n_s16(vsubq_s16(v21, v24), 4uLL);
  v26 = vshlq_n_s16(vsubq_s16(v23, v24), 4uLL);
  v27 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v20, v24), 4uLL), 4uLL);
  v28 = vshrq_n_s16(v25, 4uLL);
  v29 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v22, v24), 4uLL), 4uLL);
  v30 = vshrq_n_s16(v26, 4uLL);
  v25.i16[0] = vmaxvq_s16(v27);
  v31 = vdupq_lane_s16(*v25.i8, 0);
  v26.i16[0] = vminvq_s16(v27);
  v32 = vdupq_lane_s16(*v26.i8, 0);
  v33.i64[0] = 0x8000800080008000;
  v33.i64[1] = 0x8000800080008000;
  v34 = vmaxq_s16(v31, v33);
  v35.i64[0] = 0x8000800080008000;
  v35.i64[1] = 0x8000800080008000;
  v36 = vminq_s16(v32, v35);
  v37 = vzip1q_s16(v31, v32);
  v38.i64[0] = 0x10001000100010;
  v38.i64[1] = 0x10001000100010;
  v39 = vsubq_s16(v38, vclsq_s16(v37));
  v40 = vbicq_s8(v39, vceqzq_s16(v37));
  v41 = vpmaxq_s16(v40, v40);
  v39.i16[0] = vmaxvq_s16(v28);
  a15.i16[0] = vminvq_s16(v28);
  v42 = vdupq_lane_s16(*v39.i8, 0);
  v43 = vdupq_lane_s16(a15, 0);
  v44 = vmaxq_s16(v34, v42);
  v45 = vminq_s16(v36, v43);
  v46 = vzip1q_s16(v42, v43);
  v47 = vbicq_s8(vsubq_s16(v38, vclsq_s16(v46)), vceqzq_s16(v46));
  v48 = vpmaxq_s16(v47, v47);
  v47.i16[0] = vmaxvq_s16(v29);
  v43.i16[0] = vminvq_s16(v29);
  v49 = vdupq_lane_s16(*v47.i8, 0);
  v50 = vdupq_lane_s16(*v43.i8, 0);
  v51 = vmaxq_s16(v44, v49);
  v52 = vminq_s16(v45, v50);
  v53 = vzip1q_s16(v49, v50);
  v54 = vbicq_s8(vsubq_s16(v38, vclsq_s16(v53)), vceqzq_s16(v53));
  v55 = vpmaxq_s16(v54, v54);
  v54.i16[0] = vmaxvq_s16(v30);
  v16.i16[0] = vminvq_s16(v30);
  v56 = vdupq_lane_s16(*v54.i8, 0);
  v57 = vdupq_lane_s16(v16, 0);
  v58 = vmaxq_s16(v51, v56);
  v59 = vminq_s16(v52, v57);
  v60 = vzip1q_s16(v56, v57);
  v61 = vbicq_s8(vsubq_s16(v38, vclsq_s16(v60)), vceqzq_s16(v60));
  v62 = vpmaxq_s16(v61, v61);
  v63 = vmaxq_s16(vmaxq_s16(v41, v48), vmaxq_s16(v55, v62));
  v64 = vclzq_s16(vsubq_s16(v58, v59));
  v65 = vsubq_s16(v38, v64);
  v66 = vminq_s16(v65, v63);
  if (vmaxvq_s16(v66))
  {
    v67.i64[0] = 0x4000400040004;
    v67.i64[1] = 0x4000400040004;
    v68.i64[0] = -1;
    v68.i64[1] = -1;
    v69.i64[0] = 0xF000F000F000FLL;
    v69.i64[1] = 0xF000F000F000FLL;
    v70 = vcgtq_s16(v63, v65);
    v71 = vandq_s8(vsubq_s16(vshlq_s16(v68, vsubq_s16(v69, v64)), v59), v70);
    v72.i64[0] = 0x8000800080008;
    v72.i64[1] = 0x8000800080008;
    v68.i64[0] = 0x3000300030003;
    v68.i64[1] = 0x3000300030003;
    v73 = vmaxq_s16(vminq_s16(vsubq_s16(v66, v41), v68), 0);
    v74 = vmaxq_s16(vminq_s16(vsubq_s16(v66, v48), v68), 0);
    v75 = vmaxq_s16(vminq_s16(vsubq_s16(v66, v55), v68), 0);
    v76 = vmaxq_s16(vminq_s16(vsubq_s16(v66, v62), v68), 0);
    v77 = vsubq_s16(v66, v73);
    v78 = vsubq_s16(v66, v74);
    v79 = vsubq_s16(v66, v75);
    v80 = vsubq_s16(v66, v76);
    v81 = vbicq_s8(v67, vceqq_s16(vaddq_s16(v76, v75), vnegq_s16(vaddq_s16(v73, v74))));
    v82 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v66), v68), vandq_s8(v70, v72)), v81);
    if (a5 >= 4 && a6 >= 2)
    {
      v83 = vsubq_s16(v20, vqtbl1q_s8(v20, xmmword_29D2F0F00));
      v84 = v21;
      v84.i16[7] = v20.i16[7];
      v85 = vsubq_s16(v21, vqtbl1q_s8(v84, xmmword_29D2F0F10));
      v86 = v22;
      v86.i16[7] = v20.i16[7];
      v87 = v23;
      v87.i16[7] = v20.i16[7];
      v88 = vsubq_s16(v22, vqtbl1q_s8(v86, xmmword_29D2F0F20));
      v89 = vsubq_s16(v23, vqtbl1q_s8(v87, xmmword_29D2F0F30));
      v90 = v83;
      v90.i16[0] = v83.i16[7];
      v90.i16[7] = v83.i16[0];
      v91 = vshlq_n_s16(v90, 4uLL);
      v90.i64[0] = 0x4000400040004;
      v90.i64[1] = 0x4000400040004;
      v92 = vshlq_n_s16(v88, 4uLL);
      v93 = vshlq_n_s16(v89, 4uLL);
      v94 = vshrq_n_s16(v91, 4uLL);
      v95 = vshrq_n_s16(vshlq_n_s16(v85, 4uLL), 4uLL);
      v96 = vshrq_n_s16(v92, 4uLL);
      v91.i16[0] = vmaxvq_s16(v94);
      v92.i16[0] = vminvq_s16(v94);
      v97 = vdupq_lane_s16(*v91.i8, 0);
      v98 = vdupq_lane_s16(*v92.i8, 0);
      v99 = vshrq_n_s16(v93, 4uLL);
      v93.i64[0] = 0x8000800080008000;
      v93.i64[1] = 0x8000800080008000;
      v100.i64[0] = 0x8000800080008000;
      v100.i64[1] = 0x8000800080008000;
      v101 = vminq_s16(v98, v100);
      v102 = vzip1q_s16(v97, v98);
      v103.i64[0] = 0x10001000100010;
      v103.i64[1] = 0x10001000100010;
      v104 = vsubq_s16(v103, vclsq_s16(v102));
      v105 = vbicq_s8(v104, vceqzq_s16(v102));
      v104.i16[0] = vmaxvq_s16(v95);
      v15.i16[0] = vminvq_s16(v95);
      v106 = vdupq_lane_s16(*v104.i8, 0);
      v107 = vdupq_lane_s16(v15, 0);
      v108 = vpmaxq_s16(v105, v105);
      v109 = vmaxq_s16(vmaxq_s16(v97, v93), v106);
      v110 = vminq_s16(v101, v107);
      v111 = vzip1q_s16(v106, v107);
      v112 = vsubq_s16(v103, vclsq_s16(v111));
      v113 = vbicq_s8(v112, vceqzq_s16(v111));
      v114 = vpmaxq_s16(v113, v113);
      v113.i16[0] = vmaxvq_s16(v96);
      v115 = vdupq_lane_s16(*v113.i8, 0);
      v112.i16[0] = vminvq_s16(v96);
      v116 = vdupq_lane_s16(*v112.i8, 0);
      v117 = vmaxq_s16(v109, v115);
      v118 = vminq_s16(v110, v116);
      v119 = vzip1q_s16(v115, v116);
      v120 = vsubq_s16(v103, vclsq_s16(v119));
      v121 = vbicq_s8(v120, vceqzq_s16(v119));
      v122 = vpmaxq_s16(v121, v121);
      v121.i16[0] = vmaxvq_s16(v99);
      v120.i16[0] = vminvq_s16(v99);
      v123 = vdupq_lane_s16(*v121.i8, 0);
      v124 = vdupq_lane_s16(*v120.i8, 0);
      v125 = vmaxq_s16(v117, v123);
      v126 = vminq_s16(v118, v124);
      v127 = vzip1q_s16(v123, v124);
      v128 = vbicq_s8(vsubq_s16(v103, vclsq_s16(v127)), vceqzq_s16(v127));
      v129 = vpmaxq_s16(v128, v128);
      v130 = vmaxq_s16(vmaxq_s16(v108, v114), vmaxq_s16(v122, v129));
      v131 = vclzq_s16(vsubq_s16(v125, v126));
      v132 = vsubq_s16(v103, v131);
      v133 = vcgtq_s16(v130, v132);
      v134 = vminq_s16(v132, v130);
      v135 = vsubq_s16(v134, v108);
      v108.i64[0] = 0x3000300030003;
      v108.i64[1] = 0x3000300030003;
      v136 = vmaxq_s16(vminq_s16(v135, v108), 0);
      v137 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v114), v108), 0);
      v138 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v122), v108), 0);
      v139 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v129), v108), 0);
      v140 = vsubq_s16(v134, v136);
      v141 = vsubq_s16(v134, v137);
      v142 = vsubq_s16(v134, v138);
      v143 = vsubq_s16(v134, v139);
      v144 = vbicq_s8(v90, vceqq_s16(vaddq_s16(v139, v138), vnegq_s16(vaddq_s16(v136, v137))));
      v136.i64[0] = 0x7000700070007;
      v136.i64[1] = 0x7000700070007;
      v145 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v66, v70), vaddq_s16(v81, v81)), v77, v136), vshlq_n_s16(vaddq_s16(vaddq_s16(v79, v78), v80), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v134, v133), vaddq_s16(v144, v144)), v140, v136), vshlq_n_s16(vaddq_s16(vaddq_s16(v142, v141), v143), 3uLL))), 0);
      if (vaddvq_s16(v145))
      {
        v146.i64[0] = 0x2000200020002;
        v146.i64[1] = 0x2000200020002;
        v147 = vandq_s8(vceqzq_s16(v134), v146);
        v146.i64[0] = 0x9000900090009;
        v146.i64[1] = 0x9000900090009;
        v148.i64[0] = -1;
        v148.i64[1] = -1;
        v149 = vorrq_s8(vorrq_s8(v147, vsubq_s16(vandq_s8(v133, v146), vmvnq_s8(v133))), v144);
        v150.i64[0] = 0xF000F000F000FLL;
        v150.i64[1] = 0xF000F000F000FLL;
        v151 = vcltzq_s16(vshlq_n_s16(v145, 0xFuLL));
        v24.i16[0] = vbslq_s8(v151, vextq_s8(v20, v20, 0xEuLL), v24).u16[0];
        v27 = vbslq_s8(v151, v94, v27);
        v28 = vbslq_s8(v151, v95, v28);
        v29 = vbslq_s8(v151, v96, v29);
        v30 = vbslq_s8(v151, v99, v30);
        v77 = vbslq_s8(v151, v140, v77);
        v78 = vbslq_s8(v151, v141, v78);
        v79 = vbslq_s8(v151, v142, v79);
        v80 = vbslq_s8(v151, v143, v80);
        v71 = vbslq_s8(v151, vandq_s8(vsubq_s16(vshlq_s16(v148, vsubq_s16(v150, v131)), v126), v133), v71);
        v66 = vbslq_s8(v151, v134, v66);
        v82 = vbslq_s8(v151, v149, v82);
      }
    }

    v152.i64[0] = 0x8000800080008;
    v152.i64[1] = 0x8000800080008;
    v153 = vandq_s8(v82, v152);
    v154.i64[0] = 0x3000300030003;
    v154.i64[1] = 0x3000300030003;
    v155.i64[0] = 0x2000200020002;
    v155.i64[1] = 0x2000200020002;
    v156 = vceqq_s16(vandq_s8(v82, v154), v155);
    v155.i64[0] = 0x10001000100010;
    v155.i64[1] = 0x10001000100010;
    if (((vbicq_s8(v66, vceqzq_s16(v153)).u16[0] + ((2 * v82.i16[0]) & 8) + vandq_s8(v156, v155).u16[0] - v77.i16[0] + 8 * v77.i16[0] + 8 * vaddq_s16(vaddq_s16(v79, v78), v80).u16[0]) - 239) <= 0xFFFFFFFFFFFFFEF7)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 32;
    }

    else
    {
      v157 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v158 = 8 * (a1 & 7);
      if (v158)
      {
        v159 = *v157 & ~(-1 << v158);
      }

      else
      {
        v159 = 0;
      }

      if (v66.i16[0])
      {
        v161 = (16 * v66.i8[0] - 16) & 0xF0;
      }

      else
      {
        v161 = 0;
      }

      *a2 = v82.i8[0] << 6;
      v162 = (v161 & 0xFFFFFFFFFFFFFFF0 | ((v24.i16[0] & 0xFFF) << 8) | v82.i8[0] & 0xF) >> 2;
      v163 = (v162 << v158) | v159;
      if (v158 >= 0x2E)
      {
        *v157 = v163;
        v163 = v162 >> (-8 * (a1 & 7u));
      }

      v164 = vsubq_s16(v66, v77);
      v165 = vsubq_s16(v66, v78);
      v166 = vsubq_s16(v66, v79);
      v167 = vsubq_s16(v66, v80);
      *v164.i8 = vqmovn_u16(v164);
      *v165.i8 = vqmovn_u16(v165);
      *v166.i8 = vqmovn_u16(v166);
      *v167.i8 = vqmovn_u16(v167);
      v164.i32[0] = vzip1q_s16(vzip1q_s8(v164, v165), vzip1q_s8(v166, v167)).u32[0];
      v168 = v158 + 18;
      v165.i64[0] = 0x202020202020202;
      v165.i64[1] = 0x202020202020202;
      v169 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v82.i8, 0x4000400040004)))), v165);
      v165.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v165.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v166.i64[0] = -1;
      v166.i64[1] = -1;
      v170 = vandq_s8(vshlq_u8(v166, vorrq_s8(v169, v165)), v164.u32[0]);
      v171 = vmovl_u8(*v169.i8);
      v172 = vpaddq_s16(vshlq_u16(vmovl_u8(*v170.i8), vtrn1q_s16(0, v171)), vmovl_high_u8(v170));
      v173 = vpaddq_s16(v171, vmovl_high_u8(v169));
      v174 = vmovl_u16(*v173.i8);
      v175 = vmovl_high_u16(v173);
      v176 = vpaddq_s32(vshlq_u32(vmovl_u16(*v172.i8), vtrn1q_s32(0, v174)), vshlq_u32(vmovl_high_u16(v172), vtrn1q_s32(0, v175)));
      v177 = vpaddq_s32(v174, v175);
      v178.i64[0] = v176.u32[0];
      v178.i64[1] = v176.u32[1];
      v179 = v178;
      v178.i64[0] = v176.u32[2];
      v178.i64[1] = v176.u32[3];
      v180 = v178;
      v178.i64[0] = v177.u32[0];
      v178.i64[1] = v177.u32[1];
      v181 = v178;
      v178.i64[0] = v177.u32[2];
      v178.i64[1] = v177.u32[3];
      v182 = vpaddq_s64(vshlq_u64(v179, vzip1q_s64(0, v181)), vshlq_u64(v180, vzip1q_s64(0, v178)));
      v183 = vpaddq_s64(v181, v178);
      v184 = (v158 + 18) & 0x3A;
      v185 = (v182.i64[0] << v184) | v163;
      if ((v183.i64[0] + v184) >= 0x40)
      {
        *(v157 + ((v168 >> 3) & 8)) = v185;
        v185 = v182.i64[0] >> -v184;
      }

      v186 = vceqq_s16(v66, v77);
      v187 = v183.i64[0] + v168;
      v188 = (v183.i64[0] + v168) & 0x3F;
      v189 = v185 | (v182.i64[1] << (v183.i8[0] + v168));
      if ((v188 + v183.i64[1]) >= 0x40)
      {
        *(v157 + ((v187 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v189;
        v189 = v182.i64[1] >> -v188;
        if (!v188)
        {
          v189 = 0;
        }
      }

      v190 = vandq_s8(v71, v186);
      v191 = v187 + v183.i64[1];
      v192 = vtstq_s16(v153, v153);
      v193.i64[0] = -1;
      v193.i64[1] = -1;
      v194 = vandq_s8(vextq_s8(v192, 0, 0xEuLL), v66);
      v195.i64[0] = 0xF000F000F000FLL;
      v195.i64[1] = 0xF000F000F000FLL;
      v196 = vandq_s8(vshlq_u16(v193, vaddq_s16(v194, v195)), v71);
      v197 = vmovl_u16(*v194.i8);
      v198 = vpaddq_s32(vshlq_u32(vmovl_u16(*v196.i8), vtrn1q_s32(0, v197)), vmovl_high_u16(v196));
      v199 = vpaddq_s32(v197, vmovl_high_u16(v194));
      v200.i64[0] = v198.u32[0];
      v200.i64[1] = v198.u32[1];
      v201 = v200;
      v200.i64[0] = v198.u32[2];
      v200.i64[1] = v198.u32[3];
      v202 = v200;
      v200.i64[0] = v199.u32[0];
      v200.i64[1] = v199.u32[1];
      v203 = v200;
      v200.i64[0] = v199.u32[2];
      v200.i64[1] = v199.u32[3];
      v204 = vpaddq_s64(vshlq_u64(v201, vzip1q_s64(0, v203)), vshlq_u64(v202, vzip1q_s64(0, v200)));
      v205 = vpaddq_s64(v203, v200);
      v206 = (v204.i64[0] << v191) | v189;
      if (v205.i64[0] + (v191 & 0x3F) >= 0x40)
      {
        *(v157 + ((v191 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v206;
        v206 = v204.i64[0] >> -(v191 & 0x3F);
        if ((v191 & 0x3F) == 0)
        {
          v206 = 0;
        }
      }

      v207 = vceqq_s16(v66, v78);
      v208 = vaddq_s16(v190, v27);
      v209 = v205.i64[0] + v191;
      v210 = v206 | (v204.i64[1] << v209);
      if ((v209 & 0x3F) + v205.i64[1] >= 0x40)
      {
        *(v157 + ((v209 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v210;
        v210 = v204.i64[1] >> -(v209 & 0x3F);
        if ((v209 & 0x3F) == 0)
        {
          v210 = 0;
        }
      }

      v211 = vandq_s8(v71, v207);
      v212 = v209 + v205.i64[1];
      v213 = vextq_s8(0, v77, 0xEuLL);
      v214.i64[0] = 0xF000F000F000FLL;
      v214.i64[1] = 0xF000F000F000FLL;
      v215.i64[0] = -1;
      v215.i64[1] = -1;
      v216 = vandq_s8(vshlq_u16(v215, vaddq_s16(v213, v214)), v208);
      v217 = vmovl_u16(*v213.i8);
      v218 = vmovl_high_u16(v213);
      v219 = vpaddq_s32(vshlq_u32(vmovl_u16(*v216.i8), vtrn1q_s32(0, v217)), vshlq_u32(vmovl_high_u16(v216), vtrn1q_s32(0, v218)));
      v220 = vpaddq_s32(v217, v218);
      v221.i64[0] = v219.u32[0];
      v221.i64[1] = v219.u32[1];
      v222 = v221;
      v221.i64[0] = v219.u32[2];
      v221.i64[1] = v219.u32[3];
      v223 = v221;
      v221.i64[0] = v220.u32[0];
      v221.i64[1] = v220.u32[1];
      v224 = v221;
      v221.i64[0] = v220.u32[2];
      v221.i64[1] = v220.u32[3];
      v225 = vpaddq_s64(vshlq_u64(v222, vzip1q_s64(0, v224)), vshlq_u64(v223, vzip1q_s64(0, v221)));
      v226 = vpaddq_s64(v224, v221);
      v227 = (v225.i64[0] << v212) | v210;
      if (v226.i64[0] + (v212 & 0x3F) >= 0x40)
      {
        *(v157 + ((v212 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v227;
        v227 = v225.i64[0] >> -(v212 & 0x3F);
        if ((v212 & 0x3F) == 0)
        {
          v227 = 0;
        }
      }

      v228 = vceqq_s16(v66, v79);
      v229 = vaddq_s16(v28, v211);
      v230 = v226.i64[0] + v212;
      v231 = v227 | (v225.i64[1] << v230);
      if ((v230 & 0x3F) + v226.i64[1] >= 0x40)
      {
        *(v157 + ((v230 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v231;
        v231 = v225.i64[1] >> -(v230 & 0x3F);
        if ((v230 & 0x3F) == 0)
        {
          v231 = 0;
        }
      }

      v232 = vandq_s8(v71, v228);
      v233 = v230 + v226.i64[1];
      v234.i64[0] = 0xF000F000F000FLL;
      v234.i64[1] = 0xF000F000F000FLL;
      v235.i64[0] = -1;
      v235.i64[1] = -1;
      v236 = vandq_s8(vshlq_u16(v235, vaddq_s16(v78, v234)), v229);
      v237 = vmovl_u16(*v78.i8);
      v238 = vmovl_high_u16(v78);
      v239 = vpaddq_s32(vshlq_u32(vmovl_u16(*v236.i8), vtrn1q_s32(0, v237)), vshlq_u32(vmovl_high_u16(v236), vtrn1q_s32(0, v238)));
      v240 = vpaddq_s32(v237, v238);
      v241.i64[0] = v239.u32[0];
      v241.i64[1] = v239.u32[1];
      v242 = v241;
      v241.i64[0] = v239.u32[2];
      v241.i64[1] = v239.u32[3];
      v243 = v241;
      v241.i64[0] = v240.u32[0];
      v241.i64[1] = v240.u32[1];
      v244 = v241;
      v241.i64[0] = v240.u32[2];
      v241.i64[1] = v240.u32[3];
      v245 = vpaddq_s64(vshlq_u64(v242, vzip1q_s64(0, v244)), vshlq_u64(v243, vzip1q_s64(0, v241)));
      v246 = vpaddq_s64(v244, v241);
      v247 = (v245.i64[0] << v233) | v231;
      if (v246.i64[0] + (v233 & 0x3F) >= 0x40)
      {
        *(v157 + ((v233 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v247;
        v247 = v245.i64[0] >> -(v233 & 0x3F);
        if ((v233 & 0x3F) == 0)
        {
          v247 = 0;
        }
      }

      v248 = vceqq_s16(v66, v80);
      v249 = vaddq_s16(v29, v232);
      v250 = v246.i64[0] + v233;
      v251 = v247 | (v245.i64[1] << v250);
      if ((v250 & 0x3F) + v246.i64[1] >= 0x40)
      {
        *(v157 + ((v250 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v251;
        v251 = v245.i64[1] >> -(v250 & 0x3F);
        if ((v250 & 0x3F) == 0)
        {
          v251 = 0;
        }
      }

      v252 = vandq_s8(v71, v248);
      v253 = v250 + v246.i64[1];
      v254.i64[0] = 0xF000F000F000FLL;
      v254.i64[1] = 0xF000F000F000FLL;
      v255.i64[0] = -1;
      v255.i64[1] = -1;
      v256 = vandq_s8(vshlq_u16(v255, vaddq_s16(v79, v254)), v249);
      v257 = vmovl_u16(*v79.i8);
      v258 = vmovl_high_u16(v79);
      v259 = vpaddq_s32(vshlq_u32(vmovl_u16(*v256.i8), vtrn1q_s32(0, v257)), vshlq_u32(vmovl_high_u16(v256), vtrn1q_s32(0, v258)));
      v260 = vpaddq_s32(v257, v258);
      v261.i64[0] = v259.u32[0];
      v261.i64[1] = v259.u32[1];
      v262 = v261;
      v261.i64[0] = v259.u32[2];
      v261.i64[1] = v259.u32[3];
      v263 = v261;
      v261.i64[0] = v260.u32[0];
      v261.i64[1] = v260.u32[1];
      v264 = v261;
      v261.i64[0] = v260.u32[2];
      v261.i64[1] = v260.u32[3];
      v265 = vpaddq_s64(vshlq_u64(v262, vzip1q_s64(0, v264)), vshlq_u64(v263, vzip1q_s64(0, v261)));
      v266 = vpaddq_s64(v264, v261);
      v267 = (v265.i64[0] << v253) | v251;
      if (v266.i64[0] + (v253 & 0x3F) >= 0x40)
      {
        *(v157 + ((v253 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v267;
        v267 = v265.i64[0] >> -(v253 & 0x3F);
        if ((v253 & 0x3F) == 0)
        {
          v267 = 0;
        }
      }

      v268 = vaddq_s16(v30, v252);
      v269 = v266.i64[0] + v253;
      v270 = v267 | (v265.i64[1] << v269);
      if ((v269 & 0x3F) + v266.i64[1] >= 0x40)
      {
        *(v157 + ((v269 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v270;
        v270 = v265.i64[1] >> -(v269 & 0x3F);
        if ((v269 & 0x3F) == 0)
        {
          v270 = 0;
        }
      }

      v271 = v269 + v266.i64[1];
      v272.i64[0] = 0xF000F000F000FLL;
      v272.i64[1] = 0xF000F000F000FLL;
      v273.i64[0] = -1;
      v273.i64[1] = -1;
      v274 = vandq_s8(vshlq_u16(v273, vaddq_s16(v80, v272)), v268);
      v275 = vmovl_u16(*v80.i8);
      v276 = vmovl_high_u16(v80);
      v277 = vpaddq_s32(vshlq_u32(vmovl_u16(*v274.i8), vtrn1q_s32(0, v275)), vshlq_u32(vmovl_high_u16(v274), vtrn1q_s32(0, v276)));
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
      v285 = (v283.i64[0] << v271) | v270;
      if (v284.i64[0] + (v271 & 0x3F) > 0x3F)
      {
        *(v157 + ((v271 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v285;
        if ((v271 & 0x3F) != 0)
        {
          v285 = v283.i64[0] >> -(v271 & 0x3F);
        }

        else
        {
          v285 = 0;
        }
      }

      v286 = v284.i64[0] + v271;
      v287 = v285 | (v283.i64[1] << v286);
      if ((v286 & 0x3F) + v284.i64[1] >= 0x40)
      {
        *(v157 + ((v286 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v287;
        v287 = v283.i64[1] >> -(v286 & 0x3F);
        if ((v286 & 0x3F) == 0)
        {
          v287 = 0;
        }
      }

      v288 = v286 + v284.i64[1];
      if ((v288 & 0x3F) != 0)
      {
        *(v157 + ((v288 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v287;
      }

      result = (v288 - v158 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = a3->i16[0] >> 4;
    *a2 = 1;
    return 2;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint16x8_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v51[1] = *MEMORY[0x29EDCA608];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v11 = a6;
  if (a5 >= 8)
  {
    v14 = 0;
    v15 = a5 & 0x78;
    v16 = &v49;
    v17 = v51;
    v18 = a3;
    do
    {
      v19 = v18;
      v20 = v16;
      v21 = a5 & 0x78;
      do
      {
        v22 = *v19++;
        v23 = vshrq_n_u16(v22, 4uLL);
        *(v20 - 16) = v23.i16[0];
        *(v20 - 12) = v23.i16[1];
        *(v20 - 8) = v23.i16[2];
        *(v20 - 4) = v23.i16[3];
        *v20 = v23.i16[4];
        *(v20 + 4) = v23.i16[5];
        *(v20 + 8) = v23.i16[6];
        *(v20 + 12) = v23.i16[7];
        v20 += 4;
        v21 -= 8;
      }

      while (v21);
      if (v15 != a5)
      {
        v24 = (a3 + 2 * v15 + v14 * a4);
        v25 = v17;
        v26 = a5 - 8;
        do
        {
          v27 = v24->u16[0];
          v24 = (v24 + 2);
          *v25 = v27 >> 4;
          v25 += 4;
          --v26;
        }

        while (v26);
      }

      ++v14;
      v16 = (v16 + 2);
      v18 = (v18 + a4);
      v17 = (v17 + 2);
    }

    while (v14 != a6);
  }

  else
  {
    v12 = &a3->i16[3];
    v13 = &v48 + 4;
    do
    {
      *(v13 - 12) = *(v12 - 3) >> 4;
      if (a5 != 1)
      {
        *(v13 - 8) = *(v12 - 2) >> 4;
        if (a5 != 2)
        {
          *(v13 - 4) = *(v12 - 1) >> 4;
          if (a5 != 3)
          {
            *v13 = *v12 >> 4;
            if (a5 != 4)
            {
              v13[4] = v12[1] >> 4;
              if (a5 != 5)
              {
                v13[8] = v12[2] >> 4;
                if (a5 != 6)
                {
                  v13[12] = v12[3] >> 4;
                }
              }
            }
          }
        }
      }

      v12 = (v12 + a4);
      ++v13;
      --v11;
    }

    while (v11);
  }

  v42.i32[0] = v47;
  v42.i32[1] = WORD4(v47);
  v42.i32[2] = WORD1(v47);
  v42.i32[3] = WORD5(v47);
  v43 = v48;
  v44 = WORD4(v48);
  if (a5 >= 4)
  {
    v28 = 4;
  }

  else
  {
    v28 = a5;
  }

  if (a5 >= 4)
  {
    v29 = a5 - 4;
  }

  else
  {
    v29 = 0;
  }

  v45 = WORD1(v48);
  v46 = WORD5(v48);
  if (a6 >= 2)
  {
    v30 = 2;
  }

  else
  {
    v30 = a6;
  }

  if (a6 >= 2)
  {
    v31 = a6 - 2;
  }

  else
  {
    v31 = 0;
  }

  v32 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1, &v42, a7, v28, v30);
  v42.i32[0] = WORD2(v47);
  v42.i32[1] = WORD6(v47);
  v42.i32[2] = WORD3(v47);
  v42.i32[3] = HIWORD(v47);
  v43 = WORD2(v48);
  v44 = WORD6(v48);
  v45 = WORD3(v48);
  v46 = HIWORD(v48);
  if (a6 >= 4)
  {
    v33 = 2;
  }

  else
  {
    v33 = v31;
  }

  v34 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 8, &v42, a7, v28, v33);
  v42.i32[0] = v49;
  v42.i32[1] = WORD4(v49);
  v42.i32[2] = WORD1(v49);
  v42.i32[3] = WORD5(v49);
  v43 = v50;
  v44 = WORD4(v50);
  if (a5 >= 8)
  {
    v35 = 4;
  }

  else
  {
    v35 = v29;
  }

  v45 = WORD1(v50);
  v46 = WORD5(v50);
  v36 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 16, &v42, a7, v35, v30);
  v42.i32[0] = WORD2(v49);
  v42.i32[1] = WORD6(v49);
  v42.i32[2] = WORD3(v49);
  v42.i32[3] = HIWORD(v49);
  v43 = WORD2(v50);
  v44 = WORD6(v50);
  v45 = WORD3(v50);
  v46 = HIWORD(v50);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 24, &v42, a7, v35, v33);
  if (v36)
  {
    v38 = 4;
  }

  else
  {
    v38 = 0;
  }

  if (v34)
  {
    v39 = 2;
  }

  else
  {
    v39 = 0;
  }

  if (result)
  {
    v40 = -8;
  }

  else
  {
    v40 = -16;
  }

  *a2 = v40 | v38 | v32 | v39;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(unint64_t a1, int8x16_t *a2, int a3, unsigned int a4, unsigned int a5)
{
  v121 = *MEMORY[0x29EDCA608];
  if (a3 == 1)
  {
    v9.i64[0] = 0x80000000800;
    v9.i64[1] = 0x80000000800;
    v10 = vdupq_n_s32(0x801u);
    v7 = vbicq_s8(veorq_s8(*a2, v9), vceqq_s32(*a2, v10));
    v8 = vbicq_s8(veorq_s8(a2[1], v9), vceqq_s32(a2[1], v10));
    goto LABEL_5;
  }

  if (a3 == 3)
  {
    v6.i64[0] = 0x80000000800;
    v6.i64[1] = 0x80000000800;
    v7 = veorq_s8(*a2, v6);
    v8 = veorq_s8(a2[1], v6);
LABEL_5:
    v119 = v7;
    v120 = v8;
    v11 = v7.i32[0];
    goto LABEL_7;
  }

  v12 = a2[1];
  v119 = *a2;
  v120 = v12;
  v11 = v119.i32[0];
LABEL_7:
  if (a4)
  {
    v13 = a5 != 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = a4 > 1 && a5 != 0;
  if (v14)
  {
    v15 = v119.u32[1];
    v16 = v119.i32[1] < v11;
    if (v119.i32[1] >= v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = v119.u32[1];
    }

    if (v11 > v119.i32[1])
    {
      v15 = v11;
    }
  }

  else
  {
    v16 = 0;
    v15 = v11;
    v17 = v11;
  }

  v18 = a5 <= 1 || a4 == 0;
  v19 = !v18;
  if (!v18)
  {
    if (v119.i32[2] < v17)
    {
      v16 = 2;
      v17 = v119.u32[2];
    }

    if (v15 <= v119.i32[2])
    {
      v15 = v119.u32[2];
    }
  }

  v21 = a5 > 1 && a4 > 1;
  if (v21)
  {
    if (v119.i32[3] < v17)
    {
      v16 = 3;
      v17 = v119.u32[3];
    }

    if (v15 <= v119.i32[3])
    {
      v15 = v119.u32[3];
    }
  }

  if (a5)
  {
    v22 = a4 > 2;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  if (v23 == 1)
  {
    if (v120.i32[0] < v17)
    {
      v16 = 4;
      v17 = v120.i32[0];
    }

    if (v15 <= v120.i32[0])
    {
      v15 = v120.i32[0];
    }
  }

  if (a5)
  {
    v24 = a4 > 3;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  if (v25 == 1)
  {
    if (v120.i32[1] < v17)
    {
      v16 = 5;
      v17 = v120.u32[1];
    }

    if (v15 <= v120.i32[1])
    {
      v15 = v120.u32[1];
    }
  }

  v27 = a5 > 1 && a4 > 2;
  if (v27)
  {
    if (v120.i32[2] < v17)
    {
      v16 = 6;
      v17 = v120.u32[2];
    }

    if (v15 <= v120.i32[2])
    {
      v15 = v120.u32[2];
    }
  }

  v29 = a5 > 1 && a4 > 3;
  if (v29)
  {
    if (v120.i32[3] < v17)
    {
      v16 = 7;
      v17 = v120.u32[3];
    }

    if (v15 <= v120.i32[3])
    {
      v15 = v120.u32[3];
    }
  }

  v30 = v15 - v17;
  v31 = __clz(v15 - v17);
  if ((v31 & 0x3C) == 0x1C)
  {
    v32 = 2;
  }

  else
  {
    v32 = 30 - v31;
  }

  v33 = v32 & ~(v32 >> 31);
  if (v32 < 3 && v15 == v17)
  {
    v33 = v15 != 0;
  }

  if ((a3 | 2) == 3)
  {
    v35 = 0;
    if (v17 <= 0x7FF && v15 >= 0x800)
    {
      v35 = kDQuadParamTable[10 * v33 + 328] == 0;
    }
  }

  else
  {
    v35 = 0;
  }

  if (v33 > 6 || v35)
  {
    v37 = kDQuadParamTable[10 * v33 + 324];
    v38 = v37 + 2;
    if (v35)
    {
      v39 = 0;
    }

    else
    {
      v39 = -2;
    }

    v40 = v17 & ~(-1 << (10 - v37));
    if (v38 >= 0xC)
    {
      v40 = 0;
    }

    v41 = v40 + v39;
    if (v41 >= 1 && __clz(v41 + v30) < v31)
    {
      ++v33;
    }
  }

  v42 = 0;
  v43 = 0;
  v44 = v33;
  v45 = &kDQuadParamTable[10 * v33];
  v46 = *(v45 + 161);
  v47 = v45[325];
  v48 = v47 + 2;
  if (a4)
  {
    v49 = a5 == 0;
  }

  else
  {
    v49 = 1;
  }

  LODWORD(result) = v49 || v46 >> v48 > 0x10;
  if (a3 == 4)
  {
    result = 1;
  }

  else
  {
    result = result;
  }

  v52 = kDQuadParamTable[10 * v33 + 324] + 2;
  if (v52 >= 0xC)
  {
    v53 = 12;
  }

  else
  {
    v53 = v52;
  }

  if (v47)
  {
    LODWORD(v54) = 12;
  }

  else
  {
    LODWORD(v54) = 0;
  }

  if (v54 >= v48)
  {
    v54 = v48;
  }

  else
  {
    v54 = v54;
  }

  v55 = (-1 << (12 - v53)) & v17;
  memset(v116, 0, sizeof(v116));
  v117 = 0;
  v56 = v46 >> v54;
  v57 = v11 - v55;
  if (!v13)
  {
    v57 = 0;
  }

  v18 = !v14;
  v58 = v119.i32[1] - v55;
  if (v18)
  {
    v58 = 0;
  }

  v118[0] = v57;
  v118[1] = v58;
  v59 = v119.i32[2] - v55;
  if (!v19)
  {
    v59 = 0;
  }

  v60 = v119.i32[3] - v55;
  if (!v21)
  {
    v60 = 0;
  }

  v118[2] = v59;
  v118[3] = v60;
  v61 = v120.i32[0] - v55;
  if (!v23)
  {
    v61 = 0;
  }

  v62 = v120.i32[1] - v55;
  if (!v25)
  {
    v62 = 0;
  }

  v118[4] = v61;
  v118[5] = v62;
  v63 = v120.i32[2] - v55;
  if (!v27)
  {
    v63 = 0;
  }

  v64 = v120.i32[3] - v55;
  if (!v29)
  {
    v64 = 0;
  }

  v118[6] = v63;
  v118[7] = v64;
  if (v56 <= 1)
  {
    v65 = 1;
  }

  else
  {
    v65 = v56;
  }

  v66 = v16;
  v67 = 4 * v16;
  v68 = &byte_29D2F3081;
  do
  {
    if (v67 != v42)
    {
      if (v54)
      {
        v69 = v118[v42 / 4] / v65;
      }

      else
      {
        LODWORD(v69) = 0;
      }

      *(v116 + v43) = v69;
      if (v56 >= 2)
      {
        v70 = v118[v42 / 4];
        if (v70)
        {
          if (v70 / v65 * v65 == v70 && ((v70 / v65) & 1) != 0)
          {
            if (v55 || v69 != 1)
            {
              if ((a3 | 2) != 3 || (v72 = v119.u32[v42 / 4], v72 != 2048) && ((a3 | 2) != 3 || v65 + 2048 != v72))
              {
                LODWORD(v69) = v69 - 1;
                *(v116 + v43) = v69;
              }
            }

            else
            {
              LODWORD(v69) = 1;
            }
          }
        }
      }

      if (v69 >> v54 || v119.i32[v42 / 4] == 4095)
      {
        *(v116 + v43) = ~(-1 << v54);
      }

      if (*v68 >= a5 || *(v68 - 1) >= a4)
      {
        *(v116 + v43) = 0;
      }

      ++v43;
    }

    v42 += 4;
    v68 += 2;
  }

  while (v42 != 32);
  v73 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v74 = 8 * (a1 & 7);
  *a1 = 0;
  if (result)
  {
    v75 = 0;
    v76 = 0;
    v77 = v74;
    do
    {
      v78 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v75;
      if (v78[1] >= a5 || *v78 >= a4)
      {
        v80 = 0;
      }

      else
      {
        v80 = v119.u32[v75] >> 4;
      }

      if ((v77 - v74 + (v76 << 6) - 57) >= 0xFFFFFFFFFFFFFFBFLL)
      {
        v81 = 0;
        v82 = 8;
        do
        {
          v83 = 64 - v77;
          if (64 - v77 >= v82)
          {
            v83 = v82;
          }

          v73[v76] |= ((v80 >> v81) & ~(-1 << v83)) << v77;
          v81 += v83;
          v84 = v83 + v77;
          v76 += v84 >> 6;
          v77 = v84 & 0x3F;
          v82 -= v83;
        }

        while (v82);
      }

      ++v75;
    }

    while (v75 != 8);
    return result;
  }

  if (v44 < 4)
  {
    v86 = v74 | 3;
    if ((v74 | 3uLL) - v74 <= 0x3E)
    {
      v85 = 0;
      v88 = 0;
      v89 = 2;
      do
      {
        v90 = 64 - v86;
        if (64 - v86 >= v89)
        {
          v90 = v89;
        }

        v73[v85] |= ((v44 >> v88) & ~(-1 << v90)) << v86;
        v88 += v90;
        v91 = v90 + v86;
        v85 += v91 >> 6;
        v86 = v91 & 0x3F;
        v89 -= v90;
      }

      while (v89);
    }

    else
    {
      v85 = 0;
    }

    v87 = 5;
    if (!v44)
    {
      goto LABEL_212;
    }
  }

  else
  {
    v85 = 0;
    *v73 |= ((v44 + 5) & 7) << v74;
    v86 = v74 | 3;
    v87 = 3;
  }

  if (v52 && (v53 - v74 + v86 + (v85 << 6)) <= 0x40)
  {
    v92 = 0;
    v93 = v53;
    do
    {
      v94 = 64 - v86;
      if (64 - v86 >= v93)
      {
        v94 = v93;
      }

      v73[v85] |= (((v55 >> (12 - v53)) >> v92) & ~(-1 << v94)) << v86;
      v92 += v94;
      v95 = v94 + v86;
      v85 += v95 >> 6;
      v86 = v95 & 0x3F;
      v93 -= v94;
    }

    while (v93);
  }

  v87 += v53;
LABEL_212:
  if (v54)
  {
    if ((v86 - v74 + (v85 << 6) + 3) <= 0x40)
    {
      v96 = 0;
      v97 = 3;
      do
      {
        v98 = 64 - v86;
        if (64 - v86 >= v97)
        {
          v98 = v97;
        }

        v73[v85] |= ((v66 >> v96) & ~(-1 << v98)) << v86;
        v96 += v98;
        v99 = v98 + v86;
        v85 += v99 >> 6;
        v86 = v99 & 0x3F;
        v97 -= v98;
      }

      while (v97);
    }

    v87 += 3;
  }

  v100 = (147 * (64 - v87)) >> 10;
  v101 = -7 * v100 + 64 - v87;
  if ((v101 - 257) >= 0xFFFFFF00 && v86 - v74 + (v85 << 6) + v101 <= 0x40)
  {
    do
    {
      v102 = 64 - v86;
      if (64 - v86 >= v101)
      {
        v102 = v101;
      }

      v103 = v102 + v86;
      v85 += v103 >> 6;
      v86 = v103 & 0x3F;
      v101 -= v102;
    }

    while (v101);
  }

  v104 = 0;
  v105 = v100 - v54;
  if (v105)
  {
    v106 = v105 > 0x100;
  }

  else
  {
    v106 = 1;
  }

  v107 = v106;
  do
  {
    if (v54 && v54 - v74 + v86 + (v85 << 6) <= 0x40)
    {
      v108 = 0;
      v109 = *(v116 + v104);
      v110 = v54;
      do
      {
        v111 = 64 - v86;
        if (64 - v86 >= v110)
        {
          v111 = v110;
        }

        v73[v85] |= ((v109 >> v108) & ~(-1 << v111)) << v86;
        v108 += v111;
        v112 = v111 + v86;
        v85 += v112 >> 6;
        v86 = v112 & 0x3F;
        v110 -= v111;
      }

      while (v110);
    }

    if ((v107 & 1) == 0 && v86 - v74 + (v85 << 6) + v105 <= 0x40)
    {
      v113 = v105;
      do
      {
        v114 = 64 - v86;
        if (64 - v86 >= v113)
        {
          v114 = v113;
        }

        v115 = v114 + v86;
        v85 += v115 >> 6;
        v86 = v115 & 0x3F;
        v113 -= v114;
      }

      while (v113);
    }

    ++v104;
  }

  while (v104 != 7);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(unint64_t result, _DWORD *a2, int a3)
{
  v3 = (result & 0xFFFFFFFFFFFFFFF8);
  v4 = 8 * (result & 7);
  if (a3 == 4)
  {
    v5 = (v4 + 8) >> 6;
    v6 = (v4 + 8) & 0x38;
    *a2 = 16 * (*v3 >> v4);
    v7 = v6 - v4;
    if (v6 - v4 + ((v4 + 8) & 0x40uLL) - 57 >= 0xFFFFFFFFFFFFFFBFLL)
    {
      v22 = v3[v5];
      v5 += (v6 + 8) >> 6;
      v23 = v22 >> v6;
      v6 = (v6 + 8) & 0x38;
      v8 = 16 * v23;
      v7 = v6 - v4;
    }

    else
    {
      v8 = 0;
    }

    a2[1] = v8;
    if (v7 + (v5 << 6) - 57 > 0xFFFFFFFFFFFFFFBELL)
    {
      v24 = (v6 + 8) & 0x38;
      v25 = v5 + ((v6 + 8) >> 6);
      a2[2] = 16 * (v3[v5] >> v6);
      if (v24 - v4 + (v25 << 6) - 57 >= 0xFFFFFFFFFFFFFFBFLL)
      {
        v28 = 0;
        v29 = 0;
        v30 = 8;
        do
        {
          v31 = 64 - v24;
          if (64 - v24 >= v30)
          {
            v31 = v30;
          }

          result = ((v3[v25] >> v24) & ~(-1 << v31)) << v29;
          v28 |= result;
          v29 += v31;
          v32 = v31 + v24;
          v25 += v32 >> 6;
          v24 = v32 & 0x3F;
          v30 -= v31;
        }

        while (v30);
        a2[3] = 16 * v28;
        if (v24 - v4 + (v25 << 6) - 57 >= 0xFFFFFFFFFFFFFFBFLL)
        {
          v33 = 0;
          v34 = 0;
          v35 = 8;
          do
          {
            v36 = 64 - v24;
            if (64 - v24 >= v35)
            {
              v36 = v35;
            }

            result = ((v3[v25] >> v24) & ~(-1 << v36)) << v34;
            v33 |= result;
            v34 += v36;
            v37 = v36 + v24;
            v25 += v37 >> 6;
            v24 = v37 & 0x3F;
            v35 -= v36;
          }

          while (v35);
          a2[4] = 16 * v33;
          if (v24 - v4 + (v25 << 6) - 57 >= 0xFFFFFFFFFFFFFFBFLL)
          {
            v38 = 0;
            v39 = 0;
            v40 = 8;
            do
            {
              v41 = 64 - v24;
              if (64 - v24 >= v40)
              {
                v41 = v40;
              }

              result = ((v3[v25] >> v24) & ~(-1 << v41)) << v39;
              v38 |= result;
              v39 += v41;
              v42 = v41 + v24;
              v25 += v42 >> 6;
              v24 = v42 & 0x3F;
              v40 -= v41;
            }

            while (v40);
            a2[5] = 16 * v38;
            if (v24 - v4 + (v25 << 6) - 57 >= 0xFFFFFFFFFFFFFFBFLL)
            {
              v43 = 0;
              v44 = 0;
              v45 = 8;
              do
              {
                v46 = 64 - v24;
                if (64 - v24 >= v45)
                {
                  v46 = v45;
                }

                result = ((v3[v25] >> v24) & ~(-1 << v46)) << v44;
                v43 |= result;
                v44 += v46;
                v47 = v46 + v24;
                v25 += v47 >> 6;
                v24 = v47 & 0x3F;
                v45 -= v46;
              }

              while (v45);
              v48 = v24 - v4 + (v25 << 6) - 57;
              a2[6] = 16 * v43;
              v27 = a2 + 7;
              if (v48 >= 0xFFFFFFFFFFFFFFBFLL)
              {
                v49 = 0;
                v50 = 0;
                v51 = 8;
                do
                {
                  v52 = 64 - v24;
                  if (64 - v24 >= v51)
                  {
                    v52 = v51;
                  }

                  result = ((v3[v25] >> v24) & ~(-1 << v52)) << v50;
                  v49 |= result;
                  v50 += v52;
                  v53 = v52 + v24;
                  v25 += v53 >> 6;
                  v24 = v53 & 0x3F;
                  v51 -= v52;
                }

                while (v51);
                v26 = 16 * v49;
              }

              else
              {
                v26 = 0;
              }

              goto LABEL_29;
            }

LABEL_28:
            v26 = 0;
            a2[6] = 0;
            v27 = a2 + 7;
LABEL_29:
            *v27 = v26;
            return result;
          }

LABEL_27:
          a2[5] = 0;
          goto LABEL_28;
        }

LABEL_26:
        a2[4] = 0;
        goto LABEL_27;
      }
    }

    else
    {
      a2[2] = 0;
    }

    a2[3] = 0;
    goto LABEL_26;
  }

  v9 = 0;
  v10 = 0;
  v11 = a3 & 0xFFFFFFFD;
  v12 = ((a3 & 0xFFFFFFFD) == 1) << 11;
  v13 = 8 * (result & 7);
  do
  {
    if ((v13 - v4 + (v10 << 6) - 57) >= 0xFFFFFFFFFFFFFFBFLL)
    {
      v14 = 0;
      v15 = 0;
      v16 = 8;
      do
      {
        v17 = 64 - v13;
        if (64 - v13 >= v16)
        {
          v17 = v16;
        }

        v14 |= ((v3[v10] >> v13) & ~(-1 << v17)) << v15;
        v15 += v17;
        v18 = v17 + v13;
        v10 += v18 >> 6;
        v13 = v18 & 0x3F;
        v16 -= v17;
      }

      while (v16);
    }

    else
    {
      v14 = 0;
    }

    v19 = 16 * v14;
    if (v19 != 2048 || v11 != 1)
    {
      v21 = v19 - (v14 & 1) + 8;
      if (v19 == 4080)
      {
        v21 = 4095;
      }

      if (v19)
      {
        v19 = v21;
      }

      else
      {
        v19 = 0;
      }
    }

    result = v19 ^ v12;
    a2[v9++] = result;
  }

  while (v9 != 8);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(uint64_t a1, int *a2, int a3)
{
  v165 = *MEMORY[0x29EDCA608];
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = 3;
  v6 = v4 | 3;
  if (((*(a1 & 0xFFFFFFFFFFFFFFF8) >> v4) & 7) != 0)
  {
    v7 = 0;
    v8 = ((*(a1 & 0xFFFFFFFFFFFFFFF8) >> v4) & 7) + 3;
  }

  else
  {
    if ((v6 - v4) <= 0x3E)
    {
      v7 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 2;
      do
      {
        v12 = 64 - v6;
        if (64 - v6 >= v11)
        {
          v12 = v11;
        }

        v9 |= ((*(v3 + 8 * v7) >> v6) & ~(-1 << v12)) << v10;
        v10 += v12;
        v13 = v12 + v6;
        v7 += v13 >> 6;
        v6 = v13 & 0x3F;
        v11 -= v12;
      }

      while (v11);
      v8 = v9 & 3;
    }

    else
    {
      v8 = 0;
      v7 = 0;
    }

    v5 = 5;
  }

  v14 = v8;
  v15 = &kDQuadParamTable[10 * v8];
  v16 = v15[324] + 2;
  v17 = v15[325];
  v18 = v17 + 2;
  if (v16 >= 0xC)
  {
    v19 = 12;
  }

  else
  {
    v19 = v16;
  }

  if (v17)
  {
    LODWORD(v20) = 12;
  }

  else
  {
    LODWORD(v20) = 0;
  }

  if (v20 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v20;
  }

  v21 = 12 - v19;
  if (v8)
  {
    if (v16)
    {
      if ((v19 - v4 + v6 + (v7 << 6)) <= 0x40)
      {
        v22 = 0;
        v27 = 0;
        v28 = v19;
        do
        {
          v29 = 64 - v6;
          if (64 - v6 >= v28)
          {
            v29 = v28;
          }

          v22 |= ((*(v3 + 8 * v7) >> v6) & ~(-1 << v29)) << v27;
          v27 += v29;
          v30 = v29 + v6;
          v7 += v30 >> 6;
          v6 = v30 & 0x3F;
          v28 -= v29;
        }

        while (v28);
      }

      else
      {
        v22 = 0;
      }

      v5 += v19;
      v23 = v22 << v21;
      if (v20)
      {
        goto LABEL_33;
      }

LABEL_27:
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v161 = 0;
      v162 = 0;
      v164 = 0;
      v163 = 0;
      goto LABEL_82;
    }

    v23 = 0;
    if (!v20)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v23 = 0;
    if (!v20)
    {
      goto LABEL_27;
    }
  }

LABEL_33:
  if ((v6 - v4 + (v7 << 6) + 3) <= 0x40)
  {
    LODWORD(v25) = 0;
    v31 = 0;
    v32 = 3;
    do
    {
      v33 = 64 - v6;
      if (64 - v6 >= v32)
      {
        v33 = v32;
      }

      v25 = v25 | (((*(v3 + 8 * v7) >> v6) & ~(-1 << v33)) << v31);
      v31 += v33;
      v34 = v33 + v6;
      v7 += v34 >> 6;
      v6 = v34 & 0x3F;
      v32 -= v33;
    }

    while (v32);
  }

  else
  {
    v25 = 0;
  }

  v35 = 61 - v5;
  v36 = (37 * v35) >> 8;
  v37 = v20 - v4;
  v38 = (v6 | (v7 << 6)) + -7 * v36 + v35;
  v39 = v38 & 0x3F;
  v40 = v37 + v39 + (v38 & 0xFFFFFFFFFFFFFFC0);
  v161 = 0;
  v162 = 0;
  v164 = 0;
  v163 = 0;
  v41 = v38 >> 6;
  if (v40 <= 0x40)
  {
    v26 = 0;
    v42 = 0;
    v43 = v20;
    do
    {
      v44 = 64 - v39;
      if (64 - v39 >= v43)
      {
        v44 = v43;
      }

      v26 |= ((*(v3 + 8 * v41) >> v39) & ~(-1 << v44)) << v42;
      v42 += v44;
      v45 = v44 + v39;
      v41 += v45 >> 6;
      v39 = v45 & 0x3F;
      v43 -= v44;
    }

    while (v43);
  }

  else
  {
    v26 = 0;
  }

  LODWORD(v161) = v26;
  v46 = v39 | (v41 << 6);
  v47 = v36 - v20;
  v48 = v46 + v47;
  v49 = (v46 + v47) & 0x3F;
  v50 = (v46 + v47) >> 6;
  if (v37 + v49 + (v48 & 0xFFFFFFFFFFFFFFC0) <= 0x40)
  {
    v51 = 0;
    v52 = 0;
    v53 = v20;
    do
    {
      v54 = 64 - v49;
      if (64 - v49 >= v53)
      {
        v54 = v53;
      }

      v51 |= ((*(v3 + 8 * v50) >> v49) & ~(-1 << v54)) << v52;
      v52 += v54;
      v55 = v54 + v49;
      v50 += v55 >> 6;
      v49 = v55 & 0x3F;
      v53 -= v54;
    }

    while (v53);
  }

  else
  {
    v51 = 0;
  }

  HIDWORD(v161) = v51;
  v56 = (v49 | (v50 << 6)) + v47;
  v57 = v56 & 0x3F;
  v58 = v56 >> 6;
  if (v37 + v57 + (v56 & 0xFFFFFFFFFFFFFFC0) <= 0x40)
  {
    v59 = 0;
    v60 = 0;
    v61 = v20;
    do
    {
      v62 = 64 - v57;
      if (64 - v57 >= v61)
      {
        v62 = v61;
      }

      v59 |= ((*(v3 + 8 * v58) >> v57) & ~(-1 << v62)) << v60;
      v60 += v62;
      v63 = v62 + v57;
      v58 += v63 >> 6;
      v57 = v63 & 0x3F;
      v61 -= v62;
    }

    while (v61);
  }

  else
  {
    v59 = 0;
  }

  LODWORD(v162) = v59;
  v64 = (v57 | (v58 << 6)) + v47;
  v65 = v64 & 0x3F;
  v66 = v64 >> 6;
  if (v37 + v65 + (v64 & 0xFFFFFFFFFFFFFFC0) <= 0x40)
  {
    v67 = 0;
    v68 = 0;
    v69 = v20;
    do
    {
      v70 = 64 - v65;
      if (64 - v65 >= v69)
      {
        v70 = v69;
      }

      v67 |= ((*(v3 + 8 * v66) >> v65) & ~(-1 << v70)) << v68;
      v68 += v70;
      v71 = v70 + v65;
      v66 += v71 >> 6;
      v65 = v71 & 0x3F;
      v69 -= v70;
    }

    while (v69);
  }

  else
  {
    v67 = 0;
  }

  HIDWORD(v162) = v67;
  v72 = (v65 | (v66 << 6)) + v47;
  v73 = v72 & 0x3F;
  v74 = v72 >> 6;
  if (v37 + v73 + (v72 & 0xFFFFFFFFFFFFFFC0) <= 0x40)
  {
    v75 = 0;
    v76 = 0;
    v77 = v20;
    do
    {
      v78 = 64 - v73;
      if (64 - v73 >= v77)
      {
        v78 = v77;
      }

      v75 |= ((*(v3 + 8 * v74) >> v73) & ~(-1 << v78)) << v76;
      v76 += v78;
      v79 = v78 + v73;
      v74 += v79 >> 6;
      v73 = v79 & 0x3F;
      v77 -= v78;
    }

    while (v77);
  }

  else
  {
    v75 = 0;
  }

  LODWORD(v163) = v75;
  v80 = (v73 | (v74 << 6)) + v47;
  v81 = v80 & 0x3F;
  v82 = v80 >> 6;
  if (v37 + v81 + (v80 & 0xFFFFFFFFFFFFFFC0) <= 0x40)
  {
    v83 = 0;
    v84 = 0;
    v85 = v20;
    do
    {
      v86 = 64 - v81;
      if (64 - v81 >= v85)
      {
        v86 = v85;
      }

      v83 |= ((*(v3 + 8 * v82) >> v81) & ~(-1 << v86)) << v84;
      v84 += v86;
      v87 = v86 + v81;
      v82 += v87 >> 6;
      v81 = v87 & 0x3F;
      v85 -= v86;
    }

    while (v85);
  }

  else
  {
    v83 = 0;
  }

  HIDWORD(v163) = v83;
  v88 = (v81 | (v82 << 6)) + v47;
  v89 = v88 & 0x3F;
  if (v37 + v89 + (v88 & 0xFFFFFFFFFFFFFFC0) <= 0x40)
  {
    v90 = 0;
    v91 = 0;
    v92 = v88 >> 6;
    v93 = v20;
    do
    {
      v94 = 64 - v89;
      if (64 - v89 >= v93)
      {
        v94 = v93;
      }

      v90 |= ((*(v3 + 8 * v92) >> v89) & ~(-1 << v94)) << v91;
      v91 += v94;
      v95 = v94 + v89;
      v92 += v95 >> 6;
      v89 = v95 & 0x3F;
      v93 -= v94;
    }

    while (v93);
  }

  else
  {
    v90 = 0;
  }

  v164 = v90;
  v24 = v20;
LABEL_82:
  v96 = *&kDQuadParamTable[10 * v14 + 322];
  if (v96 >> v24 <= 1)
  {
    v97 = 1;
  }

  else
  {
    v97 = v96 >> v24;
  }

  v98 = v97 >> 1;
  if (v97 >> 1 >= (1 << v21) >> 1)
  {
    v99 = (1 << v21) >> 1;
  }

  else
  {
    v99 = v97 >> 1;
  }

  v100 = 2048 - v23;
  result = v100 / v97;
  v102 = v96 + v23;
  v103 = -1 << v24;
  if (v23)
  {
    v104 = v99;
  }

  else
  {
    v104 = 0;
  }

  v105 = v23 == 2048;
  if (v20)
  {
    if (v25)
    {
      v106 = result == v26;
      if (!(v23 | v26))
      {
        v107 = 0;
LABEL_101:
        v108 = 1;
        goto LABEL_102;
      }

      if (v102 < 0x1000 || (v103 ^ v26) != 0xFFFFFFFFFFFFFFFFLL)
      {
        v107 = v98 + v97 * v26;
        goto LABEL_101;
      }

      v108 = 1;
      v107 = 4095;
    }

    else
    {
      v108 = 0;
      v107 = v104;
      v106 = v23 == 2048;
    }
  }

  else
  {
    v108 = 0;
    v107 = 0;
    v106 = v97 > v100;
  }

LABEL_102:
  v109 = a3 & 0xFFFFFFFD;
  v110 = v107 + v23;
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

  v112 = 4095;
  if (v111 < 0xFFF)
  {
    v112 = v111;
  }

  if (v106)
  {
    v113 = 0;
  }

  else
  {
    v113 = v112 ^ 0x800;
  }

  if (v109 != 1)
  {
    v113 = v112;
  }

  *a2 = v113;
  if (v20)
  {
    if (v25 == 1)
    {
      v114 = v104;
      v115 = v23 == 2048;
    }

    else
    {
      v116 = *(&v161 | (4 * v108));
      v115 = result == v116;
      if (v23 | v116)
      {
        if (v102 >= 0x1000 && (v103 ^ v116) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v114 = 4095;
        }

        else
        {
          v114 = v98 + v97 * v116;
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
    v115 = v97 > v100;
  }

  v117 = v114 + v23;
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

  v119 = 4095;
  if (v118 < 0xFFF)
  {
    v119 = v118;
  }

  if (v115)
  {
    v120 = 0;
  }

  else
  {
    v120 = v119 ^ 0x800;
  }

  if (v109 != 1)
  {
    v120 = v119;
  }

  a2[1] = v120;
  if (v20)
  {
    if (v25 == 2)
    {
      v121 = v104;
      v122 = v23 == 2048;
    }

    else
    {
      v123 = *(&v161 + v108);
      v122 = result == v123;
      if (v23 | v123)
      {
        if (v102 >= 0x1000 && (v103 ^ v123) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v121 = 4095;
        }

        else
        {
          v121 = v98 + v97 * v123;
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
    v122 = v97 > v100;
  }

  v124 = v121 + v23;
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

  v126 = 4095;
  if (v125 < 0xFFF)
  {
    v126 = v125;
  }

  if (v122)
  {
    v127 = 0;
  }

  else
  {
    v127 = v126 ^ 0x800;
  }

  if (v109 != 1)
  {
    v127 = v126;
  }

  a2[2] = v127;
  if (v20)
  {
    if (v25 == 3)
    {
      v128 = v104;
      v129 = v23 == 2048;
    }

    else
    {
      v130 = *(&v161 + v108);
      v129 = result == v130;
      if (v23 | v130)
      {
        if (v102 >= 0x1000 && (v103 ^ v130) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v128 = 4095;
        }

        else
        {
          v128 = v98 + v97 * v130;
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
    v129 = v97 > v100;
  }

  v131 = v128 + v23;
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

  v133 = 4095;
  if (v132 < 0xFFF)
  {
    v133 = v132;
  }

  if (v129)
  {
    v134 = 0;
  }

  else
  {
    v134 = v133 ^ 0x800;
  }

  if (v109 != 1)
  {
    v134 = v133;
  }

  a2[3] = v134;
  if (v20)
  {
    if (v25 == 4)
    {
      v135 = v104;
      v136 = v23 == 2048;
    }

    else
    {
      v137 = *(&v161 + v108);
      v136 = result == v137;
      if (v23 | v137)
      {
        if (v102 >= 0x1000 && (v103 ^ v137) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v135 = 4095;
        }

        else
        {
          v135 = v98 + v97 * v137;
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
    v136 = v97 > v100;
  }

  v138 = v135 + v23;
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

  v140 = 4095;
  if (v139 < 0xFFF)
  {
    v140 = v139;
  }

  if (v136)
  {
    v141 = 0;
  }

  else
  {
    v141 = v140 ^ 0x800;
  }

  if (v109 != 1)
  {
    v141 = v140;
  }

  a2[4] = v141;
  if (v20)
  {
    if (v25 == 5)
    {
      v142 = v104;
      v143 = v23 == 2048;
    }

    else
    {
      v144 = *(&v161 + v108);
      v143 = result == v144;
      if (v23 | v144)
      {
        if (v102 >= 0x1000 && (v103 ^ v144) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v142 = 4095;
        }

        else
        {
          v142 = v98 + v97 * v144;
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
    v143 = v97 > v100;
  }

  v145 = v142 + v23;
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

  v147 = 4095;
  if (v146 < 0xFFF)
  {
    v147 = v146;
  }

  if (v143)
  {
    v148 = 0;
  }

  else
  {
    v148 = v147 ^ 0x800;
  }

  if (v109 != 1)
  {
    v148 = v147;
  }

  a2[5] = v148;
  if (v20)
  {
    if (v25 == 6)
    {
      v149 = v104;
      v150 = v23 == 2048;
    }

    else
    {
      v151 = *(&v161 + v108);
      v150 = result == v151;
      if (v23 | v151)
      {
        if (v102 >= 0x1000 && (v103 ^ v151) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v149 = 4095;
        }

        else
        {
          v149 = v98 + v97 * v151;
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
    v150 = v97 > v100;
  }

  v152 = v149 + v23;
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

  v154 = 4095;
  if (v153 < 0xFFF)
  {
    v154 = v153;
  }

  if (v150)
  {
    v155 = 0;
  }

  else
  {
    v155 = v154 ^ 0x800;
  }

  if (v109 != 1)
  {
    v155 = v154;
  }

  a2[6] = v155;
  if (v20)
  {
    if (v25 != 7)
    {
      v156 = *(&v161 + v108);
      v105 = result == v156;
      if (v23 | v156)
      {
        if (v102 >= 0x1000 && (v103 ^ v156) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v104 = 4095;
        }

        else
        {
          v104 = v98 + v97 * v156;
        }
      }

      else
      {
        v104 = 0;
      }
    }
  }

  else
  {
    v104 = 0;
    v105 = v97 > v100;
  }

  v157 = v104 + v23;
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
        v158 = v157;
      }
    }
  }

  v159 = 4095;
  if (v158 < 0xFFF)
  {
    v159 = v158;
  }

  v160 = v159 ^ 0x800;
  if (v105)
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressSubblock(int16x8_t *a1, uint64_t a2, unint64_t a3, unsigned int a4, int a5, double a6, double a7, double a8, int8x8_t a9)
{
  v285 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    v14 = 0;
    a1->i64[0] = 0;
    a1->i64[1] = 0;
    v15 = (a1->i64 + a2);
    *v15 = 0;
    v15[1] = 0;
    v16 = (a1->i64 + 2 * a2);
    *v16 = 0;
    v16[1] = 0;
    v17 = (a1->i64 + 2 * a2 + a2);
LABEL_6:
    *v17 = 0;
    v17[1] = 0;
    return v14;
  }

  v9 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(a3, &v281, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(a3, &v281, a5);
    }

    v278 = v281;
    v275 = v282;
    v277 = v283;
    v273 = v284;
    v19 = a3 + 8;
    if ((v9 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v19, &v281, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v19, &v281, a5);
    }

    v276 = v281;
    v280 = v282;
    v274 = v283;
    v279 = v284;
    v20 = a3 + 16;
    if ((v9 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v20, &v281, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v20, &v281, a5);
    }

    v272 = v281;
    v271 = v282;
    v270 = v283;
    v269 = v284;
    v21 = a3 + 24;
    if ((v9 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v21, &v281, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v21, &v281, a5);
    }

    v22.i64[0] = v271;
    v23.i64[0] = v272;
    v22.i64[1] = v269;
    v24.i64[0] = v275;
    v24.i64[1] = v273;
    v23.i64[1] = v270;
    v25 = vuzp1q_s16(v24, v22);
    v26.i64[0] = v278;
    v26.i64[1] = v277;
    v27 = vuzp1q_s16(v26, v23);
    v22.i64[0] = v281;
    v23.i64[0] = v282;
    v28 = v283;
    v29 = v284;
    *a1 = vshlq_n_s16(v27, 4uLL);
    *(a1 + a2) = vshlq_n_s16(v25, 4uLL);
    v30 = (a1 + a2 + a2);
    v22.i64[1] = v28;
    v25.i64[0] = v276;
    v25.i64[1] = v274;
    v23.i64[1] = v29;
    v27.i64[0] = v280;
    v27.i64[1] = v279;
    *v30 = vshlq_n_s16(vuzp1q_s16(v25, v22), 4uLL);
    *(v30 + a2) = vshlq_n_s16(vuzp1q_s16(v27, v23), 4uLL);
    return 32;
  }

  switch(a4)
  {
    case 0x3Fu:
      v80 = *a3;
      v81 = *(a3 + 16);
      v82 = *(a3 + 32);
      v83 = *(a3 + 48);
      *a1 = vuzp1q_s32(*a3, v82);
      *(a1 + a2) = vuzp2q_s32(v80, v82);
      v84 = (a1 + 2 * a2);
      *v84 = vuzp1q_s32(v81, v83);
      *(v84 + a2) = vuzp2q_s32(v81, v83);
      return 64;
    case 0x2Fu:
      v32.i64[0] = 0xC000C000C000CLL;
      v32.i64[1] = 0xC000C000C000CLL;
      v33 = vmovl_u16(*&vpaddq_s16(v32, v32));
      v34 = vpaddq_s32(v33, v33).u64[0];
      v35.i64[0] = v34;
      v35.i64[1] = HIDWORD(v34);
      v36 = v35;
      v37 = vaddvq_s64(v35);
      v38 = 0uLL;
      v39 = 0uLL;
      v40 = 0uLL;
      v41 = 0uLL;
      if (v37 <= 0x80)
      {
        v42 = (a3 & 0xFFFFFFFFFFFFFFF8);
        v43 = 8 * (a3 & 7);
        v44 = vzip1q_s64(0, v36);
        v45 = v37 + v43;
        v46 = vaddq_s64(v44, vdupq_n_s64(v43));
        v39 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v46)), vshlq_u64(vdupq_lane_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 0), vnegq_s64(v46)));
        if (v37 + v43 >= 0x81)
        {
          v39 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v42[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v46)), vshlq_u64(vdupq_laneq_s64(v42[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v46))), v39);
        }

        v47 = v45 & 0x3F;
        v48 = (v42 + 8 * (v45 >> 6));
        v49 = vaddq_s64(v44, vdupq_n_s64(v47));
        v50 = v37 + v45;
        v40 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v48, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v49)), vshlq_u64(vdupq_lane_s64(v48->i64[0], 0), vnegq_s64(v49)));
        if (v37 + v47 >= 0x81)
        {
          v40 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v48[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v49)), vshlq_u64(vdupq_laneq_s64(v48[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v49))), v40);
        }

        v51 = v50 & 0x3F;
        v52 = (v42 + 8 * (v50 >> 6));
        v53 = vaddq_s64(v44, vdupq_n_s64(v51));
        v54 = v37 + v50;
        v38 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v52, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v53)), vshlq_u64(vdupq_lane_s64(v52->i64[0], 0), vnegq_s64(v53)));
        if (v37 + v51 >= 0x81)
        {
          v38 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v52[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v53)), vshlq_u64(vdupq_laneq_s64(v52[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v53))), v38);
        }

        v55 = vaddq_s64(v44, vdupq_n_s64(v54 & 0x3F));
        v56 = (v42 + 8 * (v54 >> 6));
        v41 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v56, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v55)), vshlq_u64(vdupq_lane_s64(v56->i64[0], 0), vnegq_s64(v55)));
        if (v37 + (v54 & 0x3F) >= 0x81)
        {
          v41 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v56[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v55)), vshlq_u64(vdupq_laneq_s64(v56[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v55))), v41);
        }
      }

      v57 = vzip1_s32(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
      v58.i64[0] = v57.u32[0];
      v58.i64[1] = v57.u32[1];
      v59 = vnegq_s64(v58);
      v60 = vshlq_u64(v38, v59);
      v61 = vuzp1q_s32(vzip1q_s64(v38, v60), vzip2q_s64(v38, v60));
      v62 = vshrq_n_u32(v61, 0xCuLL);
      v63 = vuzp1q_s16(vzip1q_s32(v61, v62), vzip2q_s32(v61, v62));
      v64 = vshlq_u64(v40, v59);
      v65 = vuzp1q_s32(vzip1q_s64(v40, v64), vzip2q_s64(v40, v64));
      v66 = vshrq_n_u32(v65, 0xCuLL);
      v67 = vuzp1q_s16(vzip1q_s32(v65, v66), vzip2q_s32(v65, v66));
      v68 = vshlq_u64(v39, v59);
      v69 = vuzp1q_s32(vzip1q_s64(v39, v68), vzip2q_s64(v39, v68));
      v70 = vshrq_n_u32(v69, 0xCuLL);
      v71 = vshlq_u64(v41, v59);
      v72 = vuzp1q_s32(vzip1q_s64(v41, v71), vzip2q_s64(v41, v71));
      v73 = vshrq_n_u32(v72, 0xCuLL);
      v74 = vuzp1q_s16(vzip1q_s32(v72, v73), vzip2q_s32(v72, v73));
      v75 = vshlq_n_s16(vuzp1q_s16(vzip1q_s32(v69, v70), vzip2q_s32(v69, v70)), 4uLL);
      v76 = vshlq_n_s16(v67, 4uLL);
      v77 = vshlq_n_s16(v63, 4uLL);
      v78 = vshlq_n_s16(v74, 4uLL);
      *a1 = vuzp1q_s32(v75, v77);
      *(a1 + a2) = vuzp2q_s32(v75, v77);
      v79 = (a1 + 2 * a2);
      *v79 = vuzp1q_s32(v76, v78);
      *(v79 + a2) = vuzp2q_s32(v76, v78);
      return 48;
    case 1u:
      v18 = vdupq_n_s16(16 * *a3);
      *a1 = v18;
      *(a1 + a2) = v18;
      *(a1 + 2 * a2) = v18;
      *(a1 + 3 * a2) = v18;
      return 2;
    default:
      v85 = 8 * (a3 & 7);
      v86 = a3 & 0xFFFFFFFFFFFFFFF8;
      v87 = v85 + 18;
      v88 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v85;
      if (v85 >= 0x2F)
      {
        v88 |= *(v86 + 8) << (-8 * (a3 & 7u));
      }

      v89 = (8 * (a3 & 7)) | 0x100;
      v90 = ((a4 >> 6) | (4 * v88)) & 0xF;
      v91 = vdupq_n_s16(v90);
      a9.i32[0] = v90;
      v92.i64[0] = 0x3000300030003;
      v92.i64[1] = 0x3000300030003;
      v93 = vbicq_s8(vdupq_n_s16(((v88 >> 2) & 0xF) + 1), vceqq_s16((*&v91 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v92));
      v94 = vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(vand_s8(a9, 0x4000400040004), 0))));
      v95.i64[0] = 0x202020202020202;
      v95.i64[1] = 0x202020202020202;
      v96 = vandq_s8(v94, v95);
      if (vmaxvq_s8(v96) < 1)
      {
        v105 = 0;
        v129.i64[0] = -1;
        v129.i64[1] = -1;
        v125 = v93;
        v124 = v93;
        v123 = v93;
        v128.i64[0] = -1;
        v128.i64[1] = -1;
        v122 = v93;
        v127.i64[0] = -1;
        v127.i64[1] = -1;
        v126.i64[0] = -1;
        v126.i64[1] = -1;
      }

      else
      {
        v97 = vmovl_u8(*&vpaddq_s8(v96, v96));
        v98 = vmovl_u16(*&vpaddq_s16(v97, v97));
        v99 = vpaddq_s32(v98, v98).u64[0];
        v100.i64[0] = v99;
        v100.i64[1] = HIDWORD(v99);
        v101 = v100;
        v102 = vaddvq_s64(v100);
        v103 = v102 + v87;
        v104 = v102 <= 0x80 && v89 >= v103;
        v105 = !v104;
        v106 = 0uLL;
        if (v104)
        {
          v107 = v87 & 0x3A;
          v108 = vaddq_s64(vzip1q_s64(0, v101), vdupq_n_s64(v107));
          v109 = (v86 + ((v87 >> 3) & 8));
          v106 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v109, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v108)), vshlq_u64(vdupq_lane_s64(v109->i64[0], 0), vnegq_s64(v108)));
          if (v102 + v107 >= 0x81)
          {
            v106 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v109[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v108)), vshlq_u64(vdupq_laneq_s64(v109[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v108))), v106);
          }

          v87 = v103;
        }

        v110 = vzip1_s32(*v98.i8, *&vextq_s8(v98, v98, 8uLL));
        v111.i64[0] = v110.u32[0];
        v111.i64[1] = v110.u32[1];
        v112 = vshlq_u64(v106, vnegq_s64(v111));
        v113 = vuzp1q_s32(vzip1q_s64(v106, v112), vzip2q_s64(v106, v112));
        v114 = vshlq_u32(v113, vnegq_s32((*&v97 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
        v115 = vuzp1q_s16(vzip1q_s32(v113, v114), vzip2q_s32(v113, v114));
        v116 = vzip1q_s16(v115, vshlq_u16(v115, vnegq_s16(vmovl_u8(vuzp1_s8(*v96.i8, *v91.i8)))));
        *v116.i8 = vmovn_s16(v116);
        v113.i64[0] = 0x101010101010101;
        v113.i64[1] = 0x101010101010101;
        v117 = vshlq_s8(v113, v96);
        v113.i64[0] = -1;
        v113.i64[1] = -1;
        v117.i32[0] = vandq_s8(vaddq_s8(v117, v113), v116).u32[0];
        v118 = vdupq_n_s16(v117.i8[0]);
        v119 = vdupq_n_s16(v117.i8[1]);
        v120 = vdupq_n_s16(v117.i8[2]);
        v121 = vdupq_n_s16(v117.i8[3]);
        v122 = vsubq_s16(v93, v118);
        v123 = vsubq_s16(v93, v119);
        v124 = vsubq_s16(v93, v120);
        v125 = vsubq_s16(v93, v121);
        v126 = vceqzq_s16(v118);
        v127 = vceqzq_s16(v119);
        v128 = vceqzq_s16(v120);
        v129 = vceqzq_s16(v121);
      }

      v130.i64[0] = 0x7000700070007;
      v130.i64[1] = 0x7000700070007;
      v131 = 0uLL;
      v132 = vandq_s8(vextq_s8(vcgtq_u16(v91, v130), 0, 0xEuLL), v93);
      v133 = vmovl_u16(*&vpaddq_s16(v132, v132));
      v134 = vpaddq_s32(v133, v133).u64[0];
      v135.i64[0] = v134;
      v135.i64[1] = HIDWORD(v134);
      v136 = v135;
      v137 = vaddvq_s64(v135);
      v138 = v137 + v87;
      if (v137 <= 0x80 && v89 >= v138)
      {
        v140 = v87 & 0x3F;
        v141 = vaddq_s64(vzip1q_s64(0, v136), vdupq_n_s64(v140));
        v142 = (v86 + 8 * (v87 >> 6));
        v131 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v142, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v141)), vshlq_u64(vdupq_lane_s64(v142->i64[0], 0), vnegq_s64(v141)));
        if (v137 + v140 >= 0x81)
        {
          v131 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v142[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v141)), vshlq_u64(vdupq_laneq_s64(v142[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v141))), v131);
        }

        v87 = v138;
      }

      else
      {
        v105 = 1;
      }

      v143 = v90 & 3;
      if (v143 == 2)
      {
        if (v89 < v87 + 8)
        {
          v105 = 1;
        }

        else
        {
          v87 += 8;
        }

        v144 = v89 < v87 + 8;
        if (v89 >= v87 + 8)
        {
          v87 += 8;
        }

        v105 |= v144;
      }

      v145 = 0uLL;
      v146 = vextq_s8(0, v122, 0xEuLL);
      v147 = vmovl_u16(*&vpaddq_s16(v146, v146));
      v148 = vpaddq_s32(v147, v147).u64[0];
      v149.i64[0] = v148;
      v149.i64[1] = HIDWORD(v148);
      v150 = v149;
      v151 = vaddvq_s64(v149);
      v152 = v151 + v87;
      if (v151 <= 0x80 && v89 >= v152)
      {
        v155 = v87 & 0x3F;
        v156 = vaddq_s64(vzip1q_s64(0, v150), vdupq_n_s64(v155));
        v157 = (v86 + 8 * (v87 >> 6));
        v154 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v157, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v156)), vshlq_u64(vdupq_lane_s64(v157->i64[0], 0), vnegq_s64(v156)));
        if (v151 + v155 >= 0x81)
        {
          v154 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v157[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v156)), vshlq_u64(vdupq_laneq_s64(v157[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v156))), v154);
        }

        v87 = v152;
      }

      else
      {
        v105 = 1;
        v154 = 0uLL;
      }

      v158.i64[0] = 0xFFFF0000FFFFLL;
      v158.i64[1] = 0xFFFF0000FFFFLL;
      v159 = vmovl_u16(*&vpaddq_s16(v123, v123));
      v160 = vpaddq_s32(v159, v159).u64[0];
      v161.i64[0] = v160;
      v161.i64[1] = HIDWORD(v160);
      v162 = v161;
      v163 = vaddvq_s64(v161);
      if (v163 >= 0x81)
      {
        v105 = 1;
      }

      else
      {
        v164 = vzip1_s32(*v159.i8, *&vextq_s8(v159, v159, 8uLL));
        v165.i64[0] = v164.u32[0];
        v165.i64[1] = v164.u32[1];
        v166 = v165;
        v167 = vandq_s8(v123, v158);
        v168 = v163 + v87;
        if (v89 >= v163 + v87)
        {
          v169 = v87 & 0x3F;
          v170 = vaddq_s64(vzip1q_s64(0, v162), vdupq_n_s64(v169));
          v171 = (v86 + 8 * (v87 >> 6));
          v145 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v171, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v170)), vshlq_u64(vdupq_lane_s64(v171->i64[0], 0), vnegq_s64(v170)));
          if (v163 + v169 >= 0x81)
          {
            v145 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v171[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v170)), vshlq_u64(vdupq_laneq_s64(v171[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v170))), v145);
          }

          v87 = v168;
        }

        else
        {
          v105 = 1;
        }

        v172 = vshlq_u64(v145, vnegq_s64(v166));
        v173 = vuzp1q_s32(vzip1q_s64(v145, v172), vzip2q_s64(v145, v172));
        v174 = vshlq_u32(v173, vnegq_s32(v167));
        v145 = vuzp1q_s16(vzip1q_s32(v173, v174), vzip2q_s32(v173, v174));
      }

      v175 = vmovl_u16(*&vpaddq_s16(v124, v124));
      v176 = vpaddq_s32(v175, v175).u64[0];
      v177.i64[0] = v176;
      v177.i64[1] = HIDWORD(v176);
      v178 = v177;
      v179 = vaddvq_s64(v177);
      v180 = 0uLL;
      if (v179 >= 0x81)
      {
        v105 = 1;
        v187 = 0uLL;
      }

      else
      {
        v181 = vzip1_s32(*v175.i8, *&vextq_s8(v175, v175, 8uLL));
        v182.i64[0] = v181.u32[0];
        v182.i64[1] = v181.u32[1];
        v183 = v182;
        v184 = vandq_s8(v124, v158);
        v185 = v179 + v87;
        if (v89 >= v179 + v87)
        {
          v188 = v87 & 0x3F;
          v189 = vaddq_s64(vzip1q_s64(0, v178), vdupq_n_s64(v188));
          v190 = (v86 + 8 * (v87 >> 6));
          v186 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v190, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v189)), vshlq_u64(vdupq_lane_s64(v190->i64[0], 0), vnegq_s64(v189)));
          if (v179 + v188 >= 0x81)
          {
            v186 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v190[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v189)), vshlq_u64(vdupq_laneq_s64(v190[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v189))), v186);
          }

          v87 = v185;
        }

        else
        {
          v186 = 0uLL;
          v105 = 1;
        }

        v191 = vshlq_u64(v186, vnegq_s64(v183));
        v192 = vuzp1q_s32(vzip1q_s64(v186, v191), vzip2q_s64(v186, v191));
        v193 = vshlq_u32(v192, vnegq_s32(v184));
        v187 = vuzp1q_s16(vzip1q_s32(v192, v193), vzip2q_s32(v192, v193));
      }

      v194 = vmovl_u16(*&vpaddq_s16(v125, v125));
      v195 = vpaddq_s32(v194, v194).u64[0];
      v196.i64[0] = v195;
      v196.i64[1] = HIDWORD(v195);
      v197 = v196;
      v198 = vaddvq_s64(v196);
      if (v198 >= 0x81)
      {
        goto LABEL_97;
      }

      if (v89 >= v198 + v87)
      {
        v199 = vaddq_s64(vzip1q_s64(0, v197), vdupq_n_s64(v87 & 0x3F));
        v200 = (v86 + 8 * (v87 >> 6));
        v180 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v200, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v199)), vshlq_u64(vdupq_lane_s64(v200->i64[0], 0), vnegq_s64(v199)));
        if (v198 + (v87 & 0x3F) >= 0x81)
        {
          v180 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v200[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v199)), vshlq_u64(vdupq_laneq_s64(v200[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v199))), v180);
        }

        v87 += v198;
      }

      else
      {
        v105 = 1;
      }

      if ((v105 & 1) != 0 || (v14 = (a4 & 0x3F) + 1, 8 * ((a3 & 7) + v14) - v87 >= 9))
      {
LABEL_97:
        v201 = 0;
        v202 = 0;
        v203 = 8 * (&v281 & 7);
        v204 = 12;
        do
        {
          v205 = 64 - v203;
          if (64 - v203 >= v204)
          {
            v205 = v204;
          }

          *(&v281 + v201) |= ((0xFFFFFFFFFFFFFFFFLL >> v202) & ~(-1 << v205)) << v203;
          v202 += v205;
          v206 = v205 + v203;
          v201 += v206 >> 6;
          v203 = v206 & 0x3F;
          v204 -= v205;
        }

        while (v204);
LABEL_101:
        v14 = 0;
        v207 = (a1->i64 + a2);
        a1->i64[0] = 0;
        a1->i64[1] = 0;
        v208 = (a1->i64 + 2 * a2);
        *v207 = 0;
        v207[1] = 0;
        v17 = (a1->i64 + 2 * a2 + a2);
        *v208 = 0;
        v208[1] = 0;
        goto LABEL_6;
      }

      if (v143 == 2)
      {
        v209 = 0;
        v210 = 0;
        v211 = 8 * (&v281 & 7);
        v212 = 12;
        do
        {
          v213 = 64 - v211;
          if (64 - v211 >= v212)
          {
            v213 = v212;
          }

          *(&v281 + v209) |= ((0xFFFFFFFFFFFFFFFFLL >> v210) & ~(-1 << v213)) << v211;
          v210 += v213;
          v214 = v213 + v211;
          v209 += v214 >> 6;
          v211 = v214 & 0x3F;
          v212 -= v213;
        }

        while (v212);
        goto LABEL_101;
      }

      v215 = vzip1_s32(*v133.i8, *&vextq_s8(v133, v133, 8uLL));
      v216 = vzip1_s32(*v147.i8, *&vextq_s8(v147, v147, 8uLL));
      v217.i64[0] = v215.u32[0];
      v217.i64[1] = v215.u32[1];
      v218 = v217;
      v217.i64[0] = v216.u32[0];
      v217.i64[1] = v216.u32[1];
      v219 = vshlq_u64(v131, vnegq_s64(v218));
      v220 = vshlq_u64(v154, vnegq_s64(v217));
      v221 = vuzp1q_s32(vzip1q_s64(v131, v219), vzip2q_s64(v131, v219));
      v222 = vuzp1q_s32(vzip1q_s64(v154, v220), vzip2q_s64(v154, v220));
      v223 = vshlq_u32(v221, vnegq_s32((*&v132 & __PAIR128__(0xFFE0FFFFFFE0FFFFLL, 0xFFE0FFFFFFE0FFFFLL))));
      v224 = vshlq_u32(v222, vnegq_s32(vandq_s8(v146, v158)));
      v225 = vzip2q_s32(v221, v223);
      v226 = vzip1q_s32(v221, v223);
      v223.i64[0] = 0x10001000100010;
      v223.i64[1] = 0x10001000100010;
      v227 = vzip2q_s32(v222, v224);
      v228 = vzip1q_s32(v222, v224);
      v224.i64[0] = 0x10001000100010;
      v224.i64[1] = 0x10001000100010;
      v229 = vuzp1q_s16(v226, v225);
      v225.i64[0] = 0xF000F000F000FLL;
      v225.i64[1] = 0xF000F000F000FLL;
      v230 = vuzp1q_s16(v228, v227);
      v227.i64[0] = 0xF000F000F000FLL;
      v227.i64[1] = 0xF000F000F000FLL;
      v231 = vzip1_s32(*v194.i8, *&vextq_s8(v194, v194, 8uLL));
      v232.i64[0] = 0xFFFF0000FFFFLL;
      v232.i64[1] = 0xFFFF0000FFFFLL;
      v233.i64[0] = 0xF000F000F000FLL;
      v233.i64[1] = 0xF000F000F000FLL;
      v234.i64[0] = 0x10001000100010;
      v234.i64[1] = 0x10001000100010;
      v235 = vshlq_s16(v229, vsubq_s16(v223, v132));
      v236 = vaddq_s16(v146, v227);
      v237 = vshlq_s16(v230, vsubq_s16(v224, v146));
      v238 = vshlq_s16(v145, vsubq_s16(v224, v123));
      v239 = vshlq_s16(v187, vsubq_s16(v224, v124));
      v217.i64[0] = v231.u32[0];
      v217.i64[1] = v231.u32[1];
      v240 = vandq_s8(v125, v232);
      v241 = vaddq_s16(v125, v233);
      v242 = vsubq_s16(v234, v125);
      v243 = vdupq_n_s16(v88 >> 6);
      v244 = vshlq_s16(v235, vaddq_s16(v132, v225));
      v245 = vshlq_s16(v237, v236);
      v246 = vshlq_u64(v180, vnegq_s64(v217));
      v247 = vuzp1q_s32(vzip1q_s64(v180, v246), vzip2q_s64(v180, v246));
      v248 = vshlq_u32(v247, vnegq_s32(v240));
      v249 = vaddq_s16(vandq_s8(v244, v126), v245);
      v250 = vdupq_lane_s16(*v244.i8, 0);
      v251 = vsubq_s16(v249, vandq_s8(v250, v126));
      v252 = vsubq_s16(vshlq_s16(v238, vaddq_s16(v123, v227)), vandq_s8(v250, v127));
      v253 = vsubq_s16(vshlq_s16(v239, vaddq_s16(v124, v227)), vandq_s8(v250, v128));
      v254 = vsubq_s16(vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v247, v248), vzip2q_s32(v247, v248)), v242), v241), vandq_s8(v250, v129));
      v255.i64[0] = 0x1000100010001;
      v255.i64[1] = 0x1000100010001;
      if (vaddvq_s16(vceqq_s16((*&v91 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v255)))
      {
        v256 = *&v91 & __PAIR128__(0xFFF1FFF1FFF1FFF1, 0xFFF1FFF1FFF1FFF1);
        v257 = vnegq_s16(v256);
        v258 = v251;
        v258.i16[0] = v251.i16[7];
        v258.i16[7] = v251.i16[0];
        v259 = vorrq_s8(vandq_s8(v258, v257), vandq_s8(v251, vceqzq_s16(v256)));
        v260 = vaddq_s16(v259, vandq_s8(vqtbl1q_s8(v259, xmmword_29D2F0E60), v257));
        v251 = vaddq_s16(v260, vandq_s8(vqtbl1q_s8(v260, xmmword_29D2F0E70), v257));
        v261 = vaddq_s16(vandq_s8(vqtbl1q_s8(v252, xmmword_29D2F0E80), v257), v252);
        v252 = vaddq_s16(vandq_s8(vqtbl1q_s8(v261, xmmword_29D2F0E90), v257), v261);
        v262 = vaddq_s16(vandq_s8(vqtbl1q_s8(v253, xmmword_29D2F0EA0), v257), v253);
        v253 = vaddq_s16(vandq_s8(vqtbl1q_s8(v262, xmmword_29D2F0EB0), v257), v262);
        v263 = vaddq_s16(vandq_s8(vqtbl1q_s8(v254, xmmword_29D2F0EC0), v257), v254);
        v254 = vaddq_s16(vandq_s8(vqtbl1q_s8(v263, xmmword_29D2F0ED0), v257), v263);
      }

      v264 = vshlq_n_s16(vaddq_s16(v243, v251), 4uLL);
      v265 = vshlq_n_s16(vaddq_s16(v252, v243), 4uLL);
      v266 = vshlq_n_s16(vaddq_s16(v253, v243), 4uLL);
      v267 = vshlq_n_s16(vaddq_s16(v254, v243), 4uLL);
      *a1 = vuzp1q_s32(v264, v266);
      *(a1 + a2) = vuzp2q_s32(v264, v266);
      v268 = (a1 + 2 * a2);
      *v268 = vuzp1q_s32(v265, v267);
      *(v268 + a2) = vuzp2q_s32(v265, v267);
      break;
  }

  return v14;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressSubblock(uint64_t a1, _BYTE *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, int16x4_t a15)
{
  v17 = *(a3 + a4);
  v18 = (a3 + 2 * a4);
  v19 = *(v18 + a4);
  v20 = vshrq_n_s16(vzip1q_s32(*a3, v17), 4uLL);
  v21 = vshrq_n_s16(vzip1q_s32(*v18, v19), 4uLL);
  v22 = vshrq_n_s16(vzip2q_s32(*a3, v17), 4uLL);
  v23 = vshrq_n_s16(vzip2q_s32(*v18, v19), 4uLL);
  v24 = vdupq_lane_s16(*v20.i8, 0);
  v25 = vshlq_n_s16(vsubq_s16(v21, v24), 4uLL);
  v26 = vshlq_n_s16(vsubq_s16(v23, v24), 4uLL);
  v27 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v20, v24), 4uLL), 4uLL);
  v28 = vshrq_n_s16(v25, 4uLL);
  v29 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v22, v24), 4uLL), 4uLL);
  v30 = vshrq_n_s16(v26, 4uLL);
  v25.i16[0] = vmaxvq_s16(v27);
  v31 = vdupq_lane_s16(*v25.i8, 0);
  v26.i16[0] = vminvq_s16(v27);
  v32 = vdupq_lane_s16(*v26.i8, 0);
  v33.i64[0] = 0x8000800080008000;
  v33.i64[1] = 0x8000800080008000;
  v34 = vmaxq_s16(v31, v33);
  v35.i64[0] = 0x8000800080008000;
  v35.i64[1] = 0x8000800080008000;
  v36 = vminq_s16(v32, v35);
  v37 = vzip1q_s16(v31, v32);
  v38.i64[0] = 0x10001000100010;
  v38.i64[1] = 0x10001000100010;
  v39 = vsubq_s16(v38, vclsq_s16(v37));
  v40 = vbicq_s8(v39, vceqzq_s16(v37));
  v41 = vpmaxq_s16(v40, v40);
  v39.i16[0] = vmaxvq_s16(v28);
  a15.i16[0] = vminvq_s16(v28);
  v42 = vdupq_lane_s16(*v39.i8, 0);
  v43 = vdupq_lane_s16(a15, 0);
  v44 = vmaxq_s16(v34, v42);
  v45 = vminq_s16(v36, v43);
  v46 = vzip1q_s16(v42, v43);
  v47 = vbicq_s8(vsubq_s16(v38, vclsq_s16(v46)), vceqzq_s16(v46));
  v48 = vpmaxq_s16(v47, v47);
  v47.i16[0] = vmaxvq_s16(v29);
  v43.i16[0] = vminvq_s16(v29);
  v49 = vdupq_lane_s16(*v47.i8, 0);
  v50 = vdupq_lane_s16(*v43.i8, 0);
  v51 = vmaxq_s16(v44, v49);
  v52 = vminq_s16(v45, v50);
  v53 = vzip1q_s16(v49, v50);
  v54 = vbicq_s8(vsubq_s16(v38, vclsq_s16(v53)), vceqzq_s16(v53));
  v55 = vpmaxq_s16(v54, v54);
  v54.i16[0] = vmaxvq_s16(v30);
  v16.i16[0] = vminvq_s16(v30);
  v56 = vdupq_lane_s16(*v54.i8, 0);
  v57 = vdupq_lane_s16(v16, 0);
  v58 = vmaxq_s16(v51, v56);
  v59 = vminq_s16(v52, v57);
  v60 = vzip1q_s16(v56, v57);
  v61 = vbicq_s8(vsubq_s16(v38, vclsq_s16(v60)), vceqzq_s16(v60));
  v62 = vpmaxq_s16(v61, v61);
  v63 = vmaxq_s16(vmaxq_s16(v41, v48), vmaxq_s16(v55, v62));
  v64 = vclzq_s16(vsubq_s16(v58, v59));
  v65 = vsubq_s16(v38, v64);
  v66 = vminq_s16(v65, v63);
  if (vmaxvq_s16(v66))
  {
    v67.i64[0] = 0x4000400040004;
    v67.i64[1] = 0x4000400040004;
    v68.i64[0] = -1;
    v68.i64[1] = -1;
    v69.i64[0] = 0xF000F000F000FLL;
    v69.i64[1] = 0xF000F000F000FLL;
    v70 = vcgtq_s16(v63, v65);
    v71 = vandq_s8(vsubq_s16(vshlq_s16(v68, vsubq_s16(v69, v64)), v59), v70);
    v72.i64[0] = 0x8000800080008;
    v72.i64[1] = 0x8000800080008;
    v68.i64[0] = 0x3000300030003;
    v68.i64[1] = 0x3000300030003;
    v73 = vmaxq_s16(vminq_s16(vsubq_s16(v66, v41), v68), 0);
    v74 = vmaxq_s16(vminq_s16(vsubq_s16(v66, v48), v68), 0);
    v75 = vmaxq_s16(vminq_s16(vsubq_s16(v66, v55), v68), 0);
    v76 = vmaxq_s16(vminq_s16(vsubq_s16(v66, v62), v68), 0);
    v77 = vsubq_s16(v66, v73);
    v78 = vsubq_s16(v66, v74);
    v79 = vsubq_s16(v66, v75);
    v80 = vsubq_s16(v66, v76);
    v81 = vbicq_s8(v67, vceqq_s16(vaddq_s16(v76, v75), vnegq_s16(vaddq_s16(v73, v74))));
    v82 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v66), v68), vandq_s8(v70, v72)), v81);
    if (a5 >= 4 && a6 >= 2)
    {
      v83 = vsubq_s16(v20, vqtbl1q_s8(v20, xmmword_29D2F0F00));
      v84 = v21;
      v84.i16[7] = v20.i16[7];
      v85 = vsubq_s16(v21, vqtbl1q_s8(v84, xmmword_29D2F0F10));
      v86 = v22;
      v86.i16[7] = v20.i16[7];
      v87 = v23;
      v87.i16[7] = v20.i16[7];
      v88 = vsubq_s16(v22, vqtbl1q_s8(v86, xmmword_29D2F0F20));
      v89 = vsubq_s16(v23, vqtbl1q_s8(v87, xmmword_29D2F0F30));
      v90 = v83;
      v90.i16[0] = v83.i16[7];
      v90.i16[7] = v83.i16[0];
      v91 = vshlq_n_s16(v90, 4uLL);
      v90.i64[0] = 0x4000400040004;
      v90.i64[1] = 0x4000400040004;
      v92 = vshlq_n_s16(v88, 4uLL);
      v93 = vshlq_n_s16(v89, 4uLL);
      v94 = vshrq_n_s16(v91, 4uLL);
      v95 = vshrq_n_s16(vshlq_n_s16(v85, 4uLL), 4uLL);
      v96 = vshrq_n_s16(v92, 4uLL);
      v91.i16[0] = vmaxvq_s16(v94);
      v92.i16[0] = vminvq_s16(v94);
      v97 = vdupq_lane_s16(*v91.i8, 0);
      v98 = vdupq_lane_s16(*v92.i8, 0);
      v99 = vshrq_n_s16(v93, 4uLL);
      v93.i64[0] = 0x8000800080008000;
      v93.i64[1] = 0x8000800080008000;
      v100.i64[0] = 0x8000800080008000;
      v100.i64[1] = 0x8000800080008000;
      v101 = vminq_s16(v98, v100);
      v102 = vzip1q_s16(v97, v98);
      v103.i64[0] = 0x10001000100010;
      v103.i64[1] = 0x10001000100010;
      v104 = vsubq_s16(v103, vclsq_s16(v102));
      v105 = vbicq_s8(v104, vceqzq_s16(v102));
      v104.i16[0] = vmaxvq_s16(v95);
      v15.i16[0] = vminvq_s16(v95);
      v106 = vdupq_lane_s16(*v104.i8, 0);
      v107 = vdupq_lane_s16(v15, 0);
      v108 = vpmaxq_s16(v105, v105);
      v109 = vmaxq_s16(vmaxq_s16(v97, v93), v106);
      v110 = vminq_s16(v101, v107);
      v111 = vzip1q_s16(v106, v107);
      v112 = vsubq_s16(v103, vclsq_s16(v111));
      v113 = vbicq_s8(v112, vceqzq_s16(v111));
      v114 = vpmaxq_s16(v113, v113);
      v113.i16[0] = vmaxvq_s16(v96);
      v115 = vdupq_lane_s16(*v113.i8, 0);
      v112.i16[0] = vminvq_s16(v96);
      v116 = vdupq_lane_s16(*v112.i8, 0);
      v117 = vmaxq_s16(v109, v115);
      v118 = vminq_s16(v110, v116);
      v119 = vzip1q_s16(v115, v116);
      v120 = vsubq_s16(v103, vclsq_s16(v119));
      v121 = vbicq_s8(v120, vceqzq_s16(v119));
      v122 = vpmaxq_s16(v121, v121);
      v121.i16[0] = vmaxvq_s16(v99);
      v120.i16[0] = vminvq_s16(v99);
      v123 = vdupq_lane_s16(*v121.i8, 0);
      v124 = vdupq_lane_s16(*v120.i8, 0);
      v125 = vmaxq_s16(v117, v123);
      v126 = vminq_s16(v118, v124);
      v127 = vzip1q_s16(v123, v124);
      v128 = vbicq_s8(vsubq_s16(v103, vclsq_s16(v127)), vceqzq_s16(v127));
      v129 = vpmaxq_s16(v128, v128);
      v130 = vmaxq_s16(vmaxq_s16(v108, v114), vmaxq_s16(v122, v129));
      v131 = vclzq_s16(vsubq_s16(v125, v126));
      v132 = vsubq_s16(v103, v131);
      v133 = vcgtq_s16(v130, v132);
      v134 = vminq_s16(v132, v130);
      v135 = vsubq_s16(v134, v108);
      v108.i64[0] = 0x3000300030003;
      v108.i64[1] = 0x3000300030003;
      v136 = vmaxq_s16(vminq_s16(v135, v108), 0);
      v137 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v114), v108), 0);
      v138 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v122), v108), 0);
      v139 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v129), v108), 0);
      v140 = vsubq_s16(v134, v136);
      v141 = vsubq_s16(v134, v137);
      v142 = vsubq_s16(v134, v138);
      v143 = vsubq_s16(v134, v139);
      v144 = vbicq_s8(v90, vceqq_s16(vaddq_s16(v139, v138), vnegq_s16(vaddq_s16(v136, v137))));
      v136.i64[0] = 0x7000700070007;
      v136.i64[1] = 0x7000700070007;
      v145 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v66, v70), vaddq_s16(v81, v81)), v77, v136), vshlq_n_s16(vaddq_s16(vaddq_s16(v79, v78), v80), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v134, v133), vaddq_s16(v144, v144)), v140, v136), vshlq_n_s16(vaddq_s16(vaddq_s16(v142, v141), v143), 3uLL))), 0);
      if (vaddvq_s16(v145))
      {
        v146.i64[0] = 0x2000200020002;
        v146.i64[1] = 0x2000200020002;
        v147 = vandq_s8(vceqzq_s16(v134), v146);
        v146.i64[0] = 0x9000900090009;
        v146.i64[1] = 0x9000900090009;
        v148.i64[0] = -1;
        v148.i64[1] = -1;
        v149 = vorrq_s8(vorrq_s8(v147, vsubq_s16(vandq_s8(v133, v146), vmvnq_s8(v133))), v144);
        v150.i64[0] = 0xF000F000F000FLL;
        v150.i64[1] = 0xF000F000F000FLL;
        v151 = vcltzq_s16(vshlq_n_s16(v145, 0xFuLL));
        v24.i16[0] = vbslq_s8(v151, vextq_s8(v20, v20, 0xEuLL), v24).u16[0];
        v27 = vbslq_s8(v151, v94, v27);
        v28 = vbslq_s8(v151, v95, v28);
        v29 = vbslq_s8(v151, v96, v29);
        v30 = vbslq_s8(v151, v99, v30);
        v77 = vbslq_s8(v151, v140, v77);
        v78 = vbslq_s8(v151, v141, v78);
        v79 = vbslq_s8(v151, v142, v79);
        v80 = vbslq_s8(v151, v143, v80);
        v71 = vbslq_s8(v151, vandq_s8(vsubq_s16(vshlq_s16(v148, vsubq_s16(v150, v131)), v126), v133), v71);
        v66 = vbslq_s8(v151, v134, v66);
        v82 = vbslq_s8(v151, v149, v82);
      }
    }

    v152.i64[0] = 0x8000800080008;
    v152.i64[1] = 0x8000800080008;
    v153 = vandq_s8(v82, v152);
    v154.i64[0] = 0x3000300030003;
    v154.i64[1] = 0x3000300030003;
    v155.i64[0] = 0x2000200020002;
    v155.i64[1] = 0x2000200020002;
    v156 = vceqq_s16(vandq_s8(v82, v154), v155);
    v155.i64[0] = 0x10001000100010;
    v155.i64[1] = 0x10001000100010;
    if (((vbicq_s8(v66, vceqzq_s16(v153)).u16[0] + ((2 * v82.i16[0]) & 8) + vandq_s8(v156, v155).u16[0] - v77.i16[0] + 8 * v77.i16[0] + 8 * vaddq_s16(vaddq_s16(v79, v78), v80).u16[0]) - 175) <= 0xFFFFFFFFFFFFFF37)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 24;
    }

    else
    {
      v157 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v158 = 8 * (a1 & 7);
      if (v158)
      {
        v159 = *v157 & ~(-1 << v158);
      }

      else
      {
        v159 = 0;
      }

      if (v66.i16[0])
      {
        v161 = (16 * v66.i8[0] - 16) & 0xF0;
      }

      else
      {
        v161 = 0;
      }

      *a2 = v82.i8[0] << 6;
      v162 = (v161 & 0xFFFFFFFFFFFFFFF0 | ((v24.i16[0] & 0xFFF) << 8) | v82.i8[0] & 0xF) >> 2;
      v163 = (v162 << v158) | v159;
      if (v158 >= 0x2E)
      {
        *v157 = v163;
        v163 = v162 >> (-8 * (a1 & 7u));
      }

      v164 = vsubq_s16(v66, v77);
      v165 = vsubq_s16(v66, v78);
      v166 = vsubq_s16(v66, v79);
      v167 = vsubq_s16(v66, v80);
      *v164.i8 = vqmovn_u16(v164);
      *v165.i8 = vqmovn_u16(v165);
      *v166.i8 = vqmovn_u16(v166);
      *v167.i8 = vqmovn_u16(v167);
      v164.i32[0] = vzip1q_s16(vzip1q_s8(v164, v165), vzip1q_s8(v166, v167)).u32[0];
      v168 = v158 + 18;
      v165.i64[0] = 0x202020202020202;
      v165.i64[1] = 0x202020202020202;
      v169 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v82.i8, 0x4000400040004)))), v165);
      v165.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v165.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v166.i64[0] = -1;
      v166.i64[1] = -1;
      v170 = vandq_s8(vshlq_u8(v166, vorrq_s8(v169, v165)), v164.u32[0]);
      v171 = vmovl_u8(*v169.i8);
      v172 = vpaddq_s16(vshlq_u16(vmovl_u8(*v170.i8), vtrn1q_s16(0, v171)), vmovl_high_u8(v170));
      v173 = vpaddq_s16(v171, vmovl_high_u8(v169));
      v174 = vmovl_u16(*v173.i8);
      v175 = vmovl_high_u16(v173);
      v176 = vpaddq_s32(vshlq_u32(vmovl_u16(*v172.i8), vtrn1q_s32(0, v174)), vshlq_u32(vmovl_high_u16(v172), vtrn1q_s32(0, v175)));
      v177 = vpaddq_s32(v174, v175);
      v178.i64[0] = v176.u32[0];
      v178.i64[1] = v176.u32[1];
      v179 = v178;
      v178.i64[0] = v176.u32[2];
      v178.i64[1] = v176.u32[3];
      v180 = v178;
      v178.i64[0] = v177.u32[0];
      v178.i64[1] = v177.u32[1];
      v181 = v178;
      v178.i64[0] = v177.u32[2];
      v178.i64[1] = v177.u32[3];
      v182 = vpaddq_s64(vshlq_u64(v179, vzip1q_s64(0, v181)), vshlq_u64(v180, vzip1q_s64(0, v178)));
      v183 = vpaddq_s64(v181, v178);
      v184 = (v158 + 18) & 0x3A;
      v185 = (v182.i64[0] << v184) | v163;
      if ((v183.i64[0] + v184) >= 0x40)
      {
        *(v157 + ((v168 >> 3) & 8)) = v185;
        v185 = v182.i64[0] >> -v184;
      }

      v186 = vceqq_s16(v66, v77);
      v187 = v183.i64[0] + v168;
      v188 = (v183.i64[0] + v168) & 0x3F;
      v189 = v185 | (v182.i64[1] << (v183.i8[0] + v168));
      if ((v188 + v183.i64[1]) >= 0x40)
      {
        *(v157 + ((v187 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v189;
        v189 = v182.i64[1] >> -v188;
        if (!v188)
        {
          v189 = 0;
        }
      }

      v190 = vandq_s8(v71, v186);
      v191 = v187 + v183.i64[1];
      v192 = vtstq_s16(v153, v153);
      v193.i64[0] = -1;
      v193.i64[1] = -1;
      v194 = vandq_s8(vextq_s8(v192, 0, 0xEuLL), v66);
      v195.i64[0] = 0xF000F000F000FLL;
      v195.i64[1] = 0xF000F000F000FLL;
      v196 = vandq_s8(vshlq_u16(v193, vaddq_s16(v194, v195)), v71);
      v197 = vmovl_u16(*v194.i8);
      v198 = vpaddq_s32(vshlq_u32(vmovl_u16(*v196.i8), vtrn1q_s32(0, v197)), vmovl_high_u16(v196));
      v199 = vpaddq_s32(v197, vmovl_high_u16(v194));
      v200.i64[0] = v198.u32[0];
      v200.i64[1] = v198.u32[1];
      v201 = v200;
      v200.i64[0] = v198.u32[2];
      v200.i64[1] = v198.u32[3];
      v202 = v200;
      v200.i64[0] = v199.u32[0];
      v200.i64[1] = v199.u32[1];
      v203 = v200;
      v200.i64[0] = v199.u32[2];
      v200.i64[1] = v199.u32[3];
      v204 = vpaddq_s64(vshlq_u64(v201, vzip1q_s64(0, v203)), vshlq_u64(v202, vzip1q_s64(0, v200)));
      v205 = vpaddq_s64(v203, v200);
      v206 = (v204.i64[0] << v191) | v189;
      if (v205.i64[0] + (v191 & 0x3F) >= 0x40)
      {
        *(v157 + ((v191 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v206;
        v206 = v204.i64[0] >> -(v191 & 0x3F);
        if ((v191 & 0x3F) == 0)
        {
          v206 = 0;
        }
      }

      v207 = vceqq_s16(v66, v78);
      v208 = vaddq_s16(v190, v27);
      v209 = v205.i64[0] + v191;
      v210 = v206 | (v204.i64[1] << v209);
      if ((v209 & 0x3F) + v205.i64[1] >= 0x40)
      {
        *(v157 + ((v209 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v210;
        v210 = v204.i64[1] >> -(v209 & 0x3F);
        if ((v209 & 0x3F) == 0)
        {
          v210 = 0;
        }
      }

      v211 = vandq_s8(v71, v207);
      v212 = v209 + v205.i64[1];
      v213 = vextq_s8(0, v77, 0xEuLL);
      v214.i64[0] = 0xF000F000F000FLL;
      v214.i64[1] = 0xF000F000F000FLL;
      v215.i64[0] = -1;
      v215.i64[1] = -1;
      v216 = vandq_s8(vshlq_u16(v215, vaddq_s16(v213, v214)), v208);
      v217 = vmovl_u16(*v213.i8);
      v218 = vmovl_high_u16(v213);
      v219 = vpaddq_s32(vshlq_u32(vmovl_u16(*v216.i8), vtrn1q_s32(0, v217)), vshlq_u32(vmovl_high_u16(v216), vtrn1q_s32(0, v218)));
      v220 = vpaddq_s32(v217, v218);
      v221.i64[0] = v219.u32[0];
      v221.i64[1] = v219.u32[1];
      v222 = v221;
      v221.i64[0] = v219.u32[2];
      v221.i64[1] = v219.u32[3];
      v223 = v221;
      v221.i64[0] = v220.u32[0];
      v221.i64[1] = v220.u32[1];
      v224 = v221;
      v221.i64[0] = v220.u32[2];
      v221.i64[1] = v220.u32[3];
      v225 = vpaddq_s64(vshlq_u64(v222, vzip1q_s64(0, v224)), vshlq_u64(v223, vzip1q_s64(0, v221)));
      v226 = vpaddq_s64(v224, v221);
      v227 = (v225.i64[0] << v212) | v210;
      if (v226.i64[0] + (v212 & 0x3F) >= 0x40)
      {
        *(v157 + ((v212 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v227;
        v227 = v225.i64[0] >> -(v212 & 0x3F);
        if ((v212 & 0x3F) == 0)
        {
          v227 = 0;
        }
      }

      v228 = vceqq_s16(v66, v79);
      v229 = vaddq_s16(v28, v211);
      v230 = v226.i64[0] + v212;
      v231 = v227 | (v225.i64[1] << v230);
      if ((v230 & 0x3F) + v226.i64[1] >= 0x40)
      {
        *(v157 + ((v230 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v231;
        v231 = v225.i64[1] >> -(v230 & 0x3F);
        if ((v230 & 0x3F) == 0)
        {
          v231 = 0;
        }
      }

      v232 = vandq_s8(v71, v228);
      v233 = v230 + v226.i64[1];
      v234.i64[0] = 0xF000F000F000FLL;
      v234.i64[1] = 0xF000F000F000FLL;
      v235.i64[0] = -1;
      v235.i64[1] = -1;
      v236 = vandq_s8(vshlq_u16(v235, vaddq_s16(v78, v234)), v229);
      v237 = vmovl_u16(*v78.i8);
      v238 = vmovl_high_u16(v78);
      v239 = vpaddq_s32(vshlq_u32(vmovl_u16(*v236.i8), vtrn1q_s32(0, v237)), vshlq_u32(vmovl_high_u16(v236), vtrn1q_s32(0, v238)));
      v240 = vpaddq_s32(v237, v238);
      v241.i64[0] = v239.u32[0];
      v241.i64[1] = v239.u32[1];
      v242 = v241;
      v241.i64[0] = v239.u32[2];
      v241.i64[1] = v239.u32[3];
      v243 = v241;
      v241.i64[0] = v240.u32[0];
      v241.i64[1] = v240.u32[1];
      v244 = v241;
      v241.i64[0] = v240.u32[2];
      v241.i64[1] = v240.u32[3];
      v245 = vpaddq_s64(vshlq_u64(v242, vzip1q_s64(0, v244)), vshlq_u64(v243, vzip1q_s64(0, v241)));
      v246 = vpaddq_s64(v244, v241);
      v247 = (v245.i64[0] << v233) | v231;
      if (v246.i64[0] + (v233 & 0x3F) >= 0x40)
      {
        *(v157 + ((v233 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v247;
        v247 = v245.i64[0] >> -(v233 & 0x3F);
        if ((v233 & 0x3F) == 0)
        {
          v247 = 0;
        }
      }

      v248 = vceqq_s16(v66, v80);
      v249 = vaddq_s16(v29, v232);
      v250 = v246.i64[0] + v233;
      v251 = v247 | (v245.i64[1] << v250);
      if ((v250 & 0x3F) + v246.i64[1] >= 0x40)
      {
        *(v157 + ((v250 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v251;
        v251 = v245.i64[1] >> -(v250 & 0x3F);
        if ((v250 & 0x3F) == 0)
        {
          v251 = 0;
        }
      }

      v252 = vandq_s8(v71, v248);
      v253 = v250 + v246.i64[1];
      v254.i64[0] = 0xF000F000F000FLL;
      v254.i64[1] = 0xF000F000F000FLL;
      v255.i64[0] = -1;
      v255.i64[1] = -1;
      v256 = vandq_s8(vshlq_u16(v255, vaddq_s16(v79, v254)), v249);
      v257 = vmovl_u16(*v79.i8);
      v258 = vmovl_high_u16(v79);
      v259 = vpaddq_s32(vshlq_u32(vmovl_u16(*v256.i8), vtrn1q_s32(0, v257)), vshlq_u32(vmovl_high_u16(v256), vtrn1q_s32(0, v258)));
      v260 = vpaddq_s32(v257, v258);
      v261.i64[0] = v259.u32[0];
      v261.i64[1] = v259.u32[1];
      v262 = v261;
      v261.i64[0] = v259.u32[2];
      v261.i64[1] = v259.u32[3];
      v263 = v261;
      v261.i64[0] = v260.u32[0];
      v261.i64[1] = v260.u32[1];
      v264 = v261;
      v261.i64[0] = v260.u32[2];
      v261.i64[1] = v260.u32[3];
      v265 = vpaddq_s64(vshlq_u64(v262, vzip1q_s64(0, v264)), vshlq_u64(v263, vzip1q_s64(0, v261)));
      v266 = vpaddq_s64(v264, v261);
      v267 = (v265.i64[0] << v253) | v251;
      if (v266.i64[0] + (v253 & 0x3F) >= 0x40)
      {
        *(v157 + ((v253 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v267;
        v267 = v265.i64[0] >> -(v253 & 0x3F);
        if ((v253 & 0x3F) == 0)
        {
          v267 = 0;
        }
      }

      v268 = vaddq_s16(v30, v252);
      v269 = v266.i64[0] + v253;
      v270 = v267 | (v265.i64[1] << v269);
      if ((v269 & 0x3F) + v266.i64[1] >= 0x40)
      {
        *(v157 + ((v269 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v270;
        v270 = v265.i64[1] >> -(v269 & 0x3F);
        if ((v269 & 0x3F) == 0)
        {
          v270 = 0;
        }
      }

      v271 = v269 + v266.i64[1];
      v272.i64[0] = 0xF000F000F000FLL;
      v272.i64[1] = 0xF000F000F000FLL;
      v273.i64[0] = -1;
      v273.i64[1] = -1;
      v274 = vandq_s8(vshlq_u16(v273, vaddq_s16(v80, v272)), v268);
      v275 = vmovl_u16(*v80.i8);
      v276 = vmovl_high_u16(v80);
      v277 = vpaddq_s32(vshlq_u32(vmovl_u16(*v274.i8), vtrn1q_s32(0, v275)), vshlq_u32(vmovl_high_u16(v274), vtrn1q_s32(0, v276)));
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
      v285 = (v283.i64[0] << v271) | v270;
      if (v284.i64[0] + (v271 & 0x3F) > 0x3F)
      {
        *(v157 + ((v271 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v285;
        if ((v271 & 0x3F) != 0)
        {
          v285 = v283.i64[0] >> -(v271 & 0x3F);
        }

        else
        {
          v285 = 0;
        }
      }

      v286 = v284.i64[0] + v271;
      v287 = v285 | (v283.i64[1] << v286);
      if ((v286 & 0x3F) + v284.i64[1] >= 0x40)
      {
        *(v157 + ((v286 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v287;
        v287 = v283.i64[1] >> -(v286 & 0x3F);
        if ((v286 & 0x3F) == 0)
        {
          v287 = 0;
        }
      }

      v288 = v286 + v284.i64[1];
      if ((v288 & 0x3F) != 0)
      {
        *(v157 + ((v288 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v287;
      }

      result = (v288 - v158 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = a3->i16[0] >> 4;
    *a2 = 1;
    return 2;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(uint64_t a1, _BYTE *a2, uint16x8_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v51[1] = *MEMORY[0x29EDCA608];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v11 = a6;
  if (a5 >= 8)
  {
    v14 = 0;
    v15 = a5 & 0x78;
    v16 = &v49;
    v17 = v51;
    v18 = a3;
    do
    {
      v19 = v18;
      v20 = v16;
      v21 = a5 & 0x78;
      do
      {
        v22 = *v19++;
        v23 = vshrq_n_u16(v22, 4uLL);
        *(v20 - 16) = v23.i16[0];
        *(v20 - 12) = v23.i16[1];
        *(v20 - 8) = v23.i16[2];
        *(v20 - 4) = v23.i16[3];
        *v20 = v23.i16[4];
        *(v20 + 4) = v23.i16[5];
        *(v20 + 8) = v23.i16[6];
        *(v20 + 12) = v23.i16[7];
        v20 += 4;
        v21 -= 8;
      }

      while (v21);
      if (v15 != a5)
      {
        v24 = (a3 + 2 * v15 + v14 * a4);
        v25 = v17;
        v26 = a5 - 8;
        do
        {
          v27 = v24->u16[0];
          v24 = (v24 + 2);
          *v25 = v27 >> 4;
          v25 += 4;
          --v26;
        }

        while (v26);
      }

      ++v14;
      v16 = (v16 + 2);
      v18 = (v18 + a4);
      v17 = (v17 + 2);
    }

    while (v14 != a6);
  }

  else
  {
    v12 = &a3->i16[3];
    v13 = &v48 + 4;
    do
    {
      *(v13 - 12) = *(v12 - 3) >> 4;
      if (a5 != 1)
      {
        *(v13 - 8) = *(v12 - 2) >> 4;
        if (a5 != 2)
        {
          *(v13 - 4) = *(v12 - 1) >> 4;
          if (a5 != 3)
          {
            *v13 = *v12 >> 4;
            if (a5 != 4)
            {
              v13[4] = v12[1] >> 4;
              if (a5 != 5)
              {
                v13[8] = v12[2] >> 4;
                if (a5 != 6)
                {
                  v13[12] = v12[3] >> 4;
                }
              }
            }
          }
        }
      }

      v12 = (v12 + a4);
      ++v13;
      --v11;
    }

    while (v11);
  }

  v42.i32[0] = v47;
  v42.i32[1] = WORD4(v47);
  v42.i32[2] = WORD1(v47);
  v42.i32[3] = WORD5(v47);
  v43 = v48;
  v44 = WORD4(v48);
  if (a5 >= 4)
  {
    v28 = 4;
  }

  else
  {
    v28 = a5;
  }

  if (a5 >= 4)
  {
    v29 = a5 - 4;
  }

  else
  {
    v29 = 0;
  }

  v45 = WORD1(v48);
  v46 = WORD5(v48);
  if (a6 >= 2)
  {
    v30 = 2;
  }

  else
  {
    v30 = a6;
  }

  if (a6 >= 2)
  {
    v31 = a6 - 2;
  }

  else
  {
    v31 = 0;
  }

  v32 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v42, a7, v28, v30);
  v42.i32[0] = WORD2(v47);
  v42.i32[1] = WORD6(v47);
  v42.i32[2] = WORD3(v47);
  v42.i32[3] = HIWORD(v47);
  v43 = WORD2(v48);
  v44 = WORD6(v48);
  v45 = WORD3(v48);
  v46 = HIWORD(v48);
  if (a6 >= 4)
  {
    v33 = 2;
  }

  else
  {
    v33 = v31;
  }

  v34 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 6, &v42, a7, v28, v33);
  v42.i32[0] = v49;
  v42.i32[1] = WORD4(v49);
  v42.i32[2] = WORD1(v49);
  v42.i32[3] = WORD5(v49);
  v43 = v50;
  v44 = WORD4(v50);
  if (a5 >= 8)
  {
    v35 = 4;
  }

  else
  {
    v35 = v29;
  }

  v45 = WORD1(v50);
  v46 = WORD5(v50);
  v36 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 12, &v42, a7, v35, v30);
  v42.i32[0] = WORD2(v49);
  v42.i32[1] = WORD6(v49);
  v42.i32[2] = WORD3(v49);
  v42.i32[3] = HIWORD(v49);
  v43 = WORD2(v50);
  v44 = WORD6(v50);
  v45 = WORD3(v50);
  v46 = HIWORD(v50);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 18, &v42, a7, v35, v33);
  if (v36)
  {
    v38 = 4;
  }

  else
  {
    v38 = 0;
  }

  if (v34)
  {
    v39 = 2;
  }

  else
  {
    v39 = 0;
  }

  if (result)
  {
    v40 = -8;
  }

  else
  {
    v40 = -16;
  }

  *a2 = v40 | v38 | v32 | v39;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(uint64_t a1, int8x16_t *a2, int a3, unsigned int a4, unsigned int a5)
{
  v117 = *MEMORY[0x29EDCA608];
  if (a3 == 1)
  {
    v9.i64[0] = 0x80000000800;
    v9.i64[1] = 0x80000000800;
    v10 = vdupq_n_s32(0x801u);
    v7 = vbicq_s8(veorq_s8(*a2, v9), vceqq_s32(*a2, v10));
    v8 = vbicq_s8(veorq_s8(a2[1], v9), vceqq_s32(a2[1], v10));
    goto LABEL_5;
  }

  if (a3 == 3)
  {
    v6.i64[0] = 0x80000000800;
    v6.i64[1] = 0x80000000800;
    v7 = veorq_s8(*a2, v6);
    v8 = veorq_s8(a2[1], v6);
LABEL_5:
    v115 = v7;
    v116 = v8;
    v11 = v7.i32[0];
    goto LABEL_7;
  }

  v12 = a2[1];
  v115 = *a2;
  v116 = v12;
  v11 = v115.i32[0];
LABEL_7:
  if (a4)
  {
    v13 = a5 != 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = a4 > 1 && a5 != 0;
  if (v14)
  {
    v15 = v115.u32[1];
    v16 = v115.i32[1] < v11;
    if (v115.i32[1] >= v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = v115.u32[1];
    }

    if (v11 > v115.i32[1])
    {
      v15 = v11;
    }
  }

  else
  {
    v16 = 0;
    v15 = v11;
    v17 = v11;
  }

  v18 = a5 <= 1 || a4 == 0;
  v19 = !v18;
  if (!v18)
  {
    if (v115.i32[2] < v17)
    {
      v16 = 2;
      v17 = v115.u32[2];
    }

    if (v15 <= v115.i32[2])
    {
      v15 = v115.u32[2];
    }
  }

  v21 = a5 > 1 && a4 > 1;
  if (v21)
  {
    if (v115.i32[3] < v17)
    {
      v16 = 3;
      v17 = v115.u32[3];
    }

    if (v15 <= v115.i32[3])
    {
      v15 = v115.u32[3];
    }
  }

  if (a5)
  {
    v22 = a4 > 2;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  if (v23 == 1)
  {
    if (v116.i32[0] < v17)
    {
      v16 = 4;
      v17 = v116.i32[0];
    }

    if (v15 <= v116.i32[0])
    {
      v15 = v116.i32[0];
    }
  }

  if (a5)
  {
    v24 = a4 > 3;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  if (v25 == 1)
  {
    if (v116.i32[1] < v17)
    {
      v16 = 5;
      v17 = v116.u32[1];
    }

    if (v15 <= v116.i32[1])
    {
      v15 = v116.u32[1];
    }
  }

  v27 = a5 > 1 && a4 > 2;
  if (v27)
  {
    if (v116.i32[2] < v17)
    {
      v16 = 6;
      v17 = v116.u32[2];
    }

    if (v15 <= v116.i32[2])
    {
      v15 = v116.u32[2];
    }
  }

  v29 = a5 > 1 && a4 > 3;
  if (v29)
  {
    if (v116.i32[3] < v17)
    {
      v16 = 7;
      v17 = v116.u32[3];
    }

    if (v15 <= v116.i32[3])
    {
      v15 = v116.u32[3];
    }
  }

  v30 = v15 - v17;
  v31 = __clz(v15 - v17);
  if ((v31 & 0x3C) == 0x1C)
  {
    v32 = 2;
  }

  else
  {
    v32 = 30 - v31;
  }

  v33 = v32 & ~(v32 >> 31);
  if (v32 < 3 && v15 == v17)
  {
    v33 = v15 != 0;
  }

  if ((a3 | 2) == 3)
  {
    v35 = 0;
    if (v17 <= 0x7FF && v15 >= 0x800)
    {
      v35 = kDQuadParamTable[10 * v33 + 328] == 0;
    }
  }

  else
  {
    v35 = 0;
  }

  if (v33 > 6 || v35)
  {
    v37 = kDQuadParamTable[10 * v33 + 324];
    v38 = v35 ? 0 : -2;
    v39 = v37 >= 0xC ? 0 : v17 & ~(-1 << (12 - v37));
    v40 = v39 + v38;
    if (v40 >= 1 && __clz(v40 + v30) < v31)
    {
      ++v33;
    }
  }

  v41 = 0;
  v42 = 0;
  v43 = v33;
  v44 = &kDQuadParamTable[10 * v33];
  v45 = *(v44 + 161);
  v46 = v44[325];
  if (a4)
  {
    v47 = a5 == 0;
  }

  else
  {
    v47 = 1;
  }

  LODWORD(result) = v47 || v45 >> v46 > 0x40;
  if (a3 == 4)
  {
    result = 1;
  }

  else
  {
    result = result;
  }

  v50 = kDQuadParamTable[10 * v33 + 324];
  if (v50 >= 0xC)
  {
    v51 = 12;
  }

  else
  {
    v51 = v50;
  }

  v52 = (-1 << (12 - v51)) & v17;
  memset(v112, 0, sizeof(v112));
  v113 = 0;
  if (v46 >= 0xC)
  {
    v53 = 12;
  }

  else
  {
    v53 = v46;
  }

  v54 = v45 >> v53;
  v55 = v11 - v52;
  if (!v13)
  {
    v55 = 0;
  }

  v18 = !v14;
  v56 = v115.i32[1] - v52;
  if (v18)
  {
    v56 = 0;
  }

  v114[0] = v55;
  v114[1] = v56;
  v57 = v115.i32[2] - v52;
  if (!v19)
  {
    v57 = 0;
  }

  v58 = v115.i32[3] - v52;
  if (!v21)
  {
    v58 = 0;
  }

  v114[2] = v57;
  v114[3] = v58;
  v59 = v116.i32[0] - v52;
  if (!v23)
  {
    v59 = 0;
  }

  v60 = v116.i32[1] - v52;
  if (!v25)
  {
    v60 = 0;
  }

  v114[4] = v59;
  v114[5] = v60;
  v61 = v116.i32[2] - v52;
  if (!v27)
  {
    v61 = 0;
  }

  v62 = v116.i32[3] - v52;
  if (!v29)
  {
    v62 = 0;
  }

  v114[6] = v61;
  v114[7] = v62;
  if (v54 <= 1)
  {
    v63 = 1;
  }

  else
  {
    v63 = v54;
  }

  v64 = v16;
  v65 = 4 * v16;
  v66 = &byte_29D2F3081;
  do
  {
    if (v65 != v41)
    {
      if (v46)
      {
        v67 = v114[v41 / 4] / v63;
      }

      else
      {
        LODWORD(v67) = 0;
      }

      *(v112 + v42) = v67;
      if (v54 >= 2)
      {
        v68 = v114[v41 / 4];
        if (v68)
        {
          if (v68 / v63 * v63 == v68 && ((v68 / v63) & 1) != 0)
          {
            if (v52 || v67 != 1)
            {
              if ((a3 | 2) != 3 || (v70 = v115.u32[v41 / 4], v70 != 2048) && ((a3 | 2) != 3 || v63 + 2048 != v70))
              {
                LODWORD(v67) = v67 - 1;
                *(v112 + v42) = v67;
              }
            }

            else
            {
              LODWORD(v67) = 1;
            }
          }
        }
      }

      if (v67 >> v53 || v115.i32[v41 / 4] == 4095)
      {
        *(v112 + v42) = ~(-1 << v53);
      }

      if (*v66 >= a5 || *(v66 - 1) >= a4)
      {
        *(v112 + v42) = 0;
      }

      ++v42;
    }

    v41 += 4;
    v66 += 2;
  }

  while (v41 != 32);
  v71 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v72 = 8 * (a1 & 7);
  *(a1 + 4) = 0;
  *a1 = 0;
  if (!result)
  {
    if (v43 < 4)
    {
      v84 = v72 | 3;
      if ((v72 | 3uLL) - v72 <= 0x2E)
      {
        v83 = 0;
        v86 = 0;
        v87 = 2;
        do
        {
          v88 = 64 - v84;
          if (64 - v84 >= v87)
          {
            v88 = v87;
          }

          v71[v83] |= ((v43 >> v86) & ~(-1 << v88)) << v84;
          v86 += v88;
          v89 = v88 + v84;
          v83 += v89 >> 6;
          v84 = v89 & 0x3F;
          v87 -= v88;
        }

        while (v87);
      }

      else
      {
        v83 = 0;
      }

      v85 = 5;
      if (!v43)
      {
        goto LABEL_210;
      }
    }

    else
    {
      v83 = 0;
      *v71 |= ((v43 + 5) & 7) << v72;
      v84 = v72 | 3;
      v85 = 3;
    }

    if (v50 && (v51 - v72 + v84 + (v83 << 6)) <= 0x30)
    {
      v90 = 0;
      v91 = v52 >> (12 - v51);
      v92 = v51;
      do
      {
        v93 = 64 - v84;
        if (64 - v84 >= v92)
        {
          v93 = v92;
        }

        v71[v83] |= ((v91 >> v90) & ~(-1 << v93)) << v84;
        v90 += v93;
        v94 = v93 + v84;
        v83 += v94 >> 6;
        v84 = v94 & 0x3F;
        v92 -= v93;
      }

      while (v92);
    }

    v85 += v51;
LABEL_210:
    if (v46)
    {
      if ((v84 - v72 + (v83 << 6) + 3) <= 0x30)
      {
        v95 = 0;
        v96 = 3;
        do
        {
          v97 = 64 - v84;
          if (64 - v84 >= v96)
          {
            v97 = v96;
          }

          v71[v83] |= ((v64 >> v95) & ~(-1 << v97)) << v84;
          v95 += v97;
          v98 = v97 + v84;
          v83 += v98 >> 6;
          v84 = v98 & 0x3F;
          v96 -= v97;
        }

        while (v96);
      }

      v85 += 3;
    }

    v99 = (37 * (48 - v85)) >> 8;
    v100 = -7 * v99 + 48 - v85;
    if ((v100 - 257) >= 0xFFFFFF00 && v84 - v72 + (v83 << 6) + v100 <= 0x30)
    {
      do
      {
        v101 = 64 - v84;
        if (64 - v84 >= v100)
        {
          v101 = v100;
        }

        v102 = v101 + v84;
        v83 += v102 >> 6;
        v84 = v102 & 0x3F;
        v100 -= v101;
      }

      while (v100);
    }

    v103 = 0;
    while (!v46)
    {
      v109 = v99;
      if (v99)
      {
        goto LABEL_233;
      }

LABEL_223:
      if (++v103 == 7)
      {
        return result;
      }
    }

    if ((v53 - v72 + v84 + (v83 << 6)) <= 0x30)
    {
      v104 = 0;
      v105 = *(v112 + v103);
      v106 = v53;
      do
      {
        v107 = 64 - v84;
        if (64 - v84 >= v106)
        {
          v107 = v106;
        }

        v71[v83] |= ((v105 >> v104) & ~(-1 << v107)) << v84;
        v104 += v107;
        v108 = v107 + v84;
        v83 += v108 >> 6;
        v84 = v108 & 0x3F;
        v106 -= v107;
      }

      while (v106);
    }

    v109 = v99 - v53;
    if (v99 == v53)
    {
      goto LABEL_223;
    }

LABEL_233:
    if (v109 <= 0x100 && v84 - v72 + (v83 << 6) + v109 <= 0x30)
    {
      do
      {
        v110 = 64 - v84;
        if (64 - v84 >= v109)
        {
          v110 = v109;
        }

        v111 = v110 + v84;
        v83 += v111 >> 6;
        v84 = v111 & 0x3F;
        v109 -= v110;
      }

      while (v109);
    }

    goto LABEL_223;
  }

  v73 = 0;
  v74 = 0;
  v75 = v72;
  do
  {
    v76 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v73;
    if (v76[1] >= a5 || *v76 >= a4)
    {
      v78 = 0;
    }

    else
    {
      v78 = v115.u32[v73] >> 6;
    }

    if ((v75 - v72 + (v74 << 6) - 43) >= 0xFFFFFFFFFFFFFFCFLL)
    {
      v79 = 0;
      v80 = 6;
      do
      {
        v81 = 64 - v75;
        if (64 - v75 >= v80)
        {
          v81 = v80;
        }

        v71[v74] |= ((v78 >> v79) & ~(-1 << v81)) << v75;
        v79 += v81;
        v82 = v81 + v75;
        v74 += v82 >> 6;
        v75 = v82 & 0x3F;
        v80 -= v81;
      }

      while (v80);
    }

    ++v73;
  }

  while (v73 != 8);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(unint64_t result, _DWORD *a2, int a3)
{
  v3 = (result & 0xFFFFFFFFFFFFFFF8);
  v4 = 8 * (result & 7);
  if (a3 == 4)
  {
    v5 = v4 | 6;
    *a2 = ((*v3 >> v4) & 0x3F) << 6;
    v6 = (v4 | 6) - v4;
    if ((v6 - 43) >= 0xFFFFFFFFFFFFFFCFLL)
    {
      v22 = 0;
      v7 = 0;
      v23 = 0;
      v24 = 6;
      do
      {
        v25 = 64 - v5;
        if (64 - v5 >= v24)
        {
          v25 = v24;
        }

        result = ((v3[v7] >> v5) & ~(-1 << v25)) << v23;
        v22 |= result;
        v23 += v25;
        v26 = v25 + v5;
        v7 += v26 >> 6;
        v5 = v26 & 0x3F;
        v24 -= v25;
      }

      while (v24);
      v8 = (v22 & 0x3F) << 6;
      v6 = v5 - v4;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    a2[1] = v8;
    if ((v6 + (v7 << 6) - 43) >= 0xFFFFFFFFFFFFFFCFLL)
    {
      v27 = 0;
      v28 = 0;
      v29 = 6;
      do
      {
        v30 = 64 - v5;
        if (64 - v5 >= v29)
        {
          v30 = v29;
        }

        result = ((v3[v7] >> v5) & ~(-1 << v30)) << v28;
        v27 |= result;
        v28 += v30;
        v31 = v30 + v5;
        v7 += v31 >> 6;
        v5 = v31 & 0x3F;
        v29 -= v30;
      }

      while (v29);
      a2[2] = (v27 & 0x3F) << 6;
      if ((v5 - v4 + (v7 << 6) - 43) >= 0xFFFFFFFFFFFFFFCFLL)
      {
        v34 = 0;
        v35 = 0;
        v36 = 6;
        do
        {
          v37 = 64 - v5;
          if (64 - v5 >= v36)
          {
            v37 = v36;
          }

          result = ((v3[v7] >> v5) & ~(-1 << v37)) << v35;
          v34 |= result;
          v35 += v37;
          v38 = v37 + v5;
          v7 += v38 >> 6;
          v5 = v38 & 0x3F;
          v36 -= v37;
        }

        while (v36);
        a2[3] = (v34 & 0x3F) << 6;
        if ((v5 - v4 + (v7 << 6) - 43) >= 0xFFFFFFFFFFFFFFCFLL)
        {
          v39 = 0;
          v40 = 0;
          v41 = 6;
          do
          {
            v42 = 64 - v5;
            if (64 - v5 >= v41)
            {
              v42 = v41;
            }

            result = ((v3[v7] >> v5) & ~(-1 << v42)) << v40;
            v39 |= result;
            v40 += v42;
            v43 = v42 + v5;
            v7 += v43 >> 6;
            v5 = v43 & 0x3F;
            v41 -= v42;
          }

          while (v41);
          a2[4] = (v39 & 0x3F) << 6;
          if ((v5 - v4 + (v7 << 6) - 43) >= 0xFFFFFFFFFFFFFFCFLL)
          {
            v44 = 0;
            v45 = 0;
            v46 = 6;
            do
            {
              v47 = 64 - v5;
              if (64 - v5 >= v46)
              {
                v47 = v46;
              }

              result = ((v3[v7] >> v5) & ~(-1 << v47)) << v45;
              v44 |= result;
              v45 += v47;
              v48 = v47 + v5;
              v7 += v48 >> 6;
              v5 = v48 & 0x3F;
              v46 -= v47;
            }

            while (v46);
            a2[5] = (v44 & 0x3F) << 6;
            if ((v5 - v4 + (v7 << 6) - 43) >= 0xFFFFFFFFFFFFFFCFLL)
            {
              v49 = 0;
              v50 = 0;
              v51 = 6;
              do
              {
                v52 = 64 - v5;
                if (64 - v5 >= v51)
                {
                  v52 = v51;
                }

                result = ((v3[v7] >> v5) & ~(-1 << v52)) << v50;
                v49 |= result;
                v50 += v52;
                v53 = v52 + v5;
                v7 += v53 >> 6;
                v5 = v53 & 0x3F;
                v51 -= v52;
              }

              while (v51);
              v54 = v5 - v4 + (v7 << 6) - 43;
              a2[6] = (v49 & 0x3F) << 6;
              v33 = a2 + 7;
              if (v54 >= 0xFFFFFFFFFFFFFFCFLL)
              {
                v55 = 0;
                v56 = 0;
                v57 = 6;
                do
                {
                  v58 = 64 - v5;
                  if (64 - v5 >= v57)
                  {
                    v58 = v57;
                  }

                  result = ((v3[v7] >> v5) & ~(-1 << v58)) << v56;
                  v55 |= result;
                  v56 += v58;
                  v59 = v58 + v5;
                  v7 += v59 >> 6;
                  v5 = v59 & 0x3F;
                  v57 -= v58;
                }

                while (v57);
                v32 = (v55 & 0x3F) << 6;
              }

              else
              {
                v32 = 0;
              }

              goto LABEL_37;
            }

LABEL_36:
            v32 = 0;
            a2[6] = 0;
            v33 = a2 + 7;
LABEL_37:
            *v33 = v32;
            return result;
          }

LABEL_35:
          a2[5] = 0;
          goto LABEL_36;
        }

LABEL_34:
        a2[4] = 0;
        goto LABEL_35;
      }
    }

    else
    {
      a2[2] = 0;
    }

    a2[3] = 0;
    goto LABEL_34;
  }

  v9 = 0;
  v10 = 0;
  v11 = a3 & 0xFFFFFFFD;
  v12 = ((a3 & 0xFFFFFFFD) == 1) << 11;
  v13 = 8 * (result & 7);
  do
  {
    if ((v13 - v4 + (v10 << 6) - 43) >= 0xFFFFFFFFFFFFFFCFLL)
    {
      v14 = 0;
      v15 = 0;
      v16 = 6;
      do
      {
        v17 = 64 - v13;
        if (64 - v13 >= v16)
        {
          v17 = v16;
        }

        v14 |= ((v3[v10] >> v13) & ~(-1 << v17)) << v15;
        v15 += v17;
        v18 = v17 + v13;
        v10 += v18 >> 6;
        v13 = v18 & 0x3F;
        v16 -= v17;
      }

      while (v16);
    }

    else
    {
      v14 = 0;
    }

    v19 = (v14 & 0x3F) << 6;
    if (v19 != 2048 || v11 != 1)
    {
      v21 = v19 - (v14 & 1) + 32;
      if (v19 == 4032)
      {
        v21 = 4095;
      }

      if (v19)
      {
        v19 = v21;
      }

      else
      {
        v19 = 0;
      }
    }

    result = v19 ^ v12;
    a2[v9++] = result;
  }

  while (v9 != 8);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(uint64_t a1, int *a2, int a3)
{
  v164 = *MEMORY[0x29EDCA608];
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = 3;
  v6 = v4 | 3;
  v7 = (*(a1 & 0xFFFFFFFFFFFFFFF8) >> v4) & 7;
  if (((*(a1 & 0xFFFFFFFFFFFFFFF8) >> v4) & 7) != 0)
  {
    v8 = 0;
    v9 = v7 + 3;
  }

  else
  {
    if ((v6 - v4) <= 0x2E)
    {
      v8 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 2;
      do
      {
        v13 = 64 - v6;
        if (64 - v6 >= v12)
        {
          v13 = v12;
        }

        v10 |= ((*(v3 + 8 * v8) >> v6) & ~(-1 << v13)) << v11;
        v11 += v13;
        v8 += (v13 + v6) >> 6;
        v6 = (v13 + v6) & 0x3F;
        v12 -= v13;
      }

      while (v12);
      v9 = v10 & 3;
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    v5 = 5;
  }

  v14 = v9;
  v15 = &kDQuadParamTable[10 * v9];
  v16 = v15[324];
  v17 = v15[325];
  if (v16 >= 0xC)
  {
    v18 = 12;
  }

  else
  {
    v18 = v16;
  }

  if (v17 >= 0xC)
  {
    v19 = 12;
  }

  else
  {
    v19 = v17;
  }

  v20 = 12 - v18;
  if (v9)
  {
    if (v16)
    {
      if ((v18 - v4 + v6 + (v8 << 6)) <= 0x30)
      {
        v21 = 0;
        v25 = 0;
        v26 = v18;
        do
        {
          v27 = 64 - v6;
          if (64 - v6 >= v26)
          {
            v27 = v26;
          }

          v21 |= ((*(v3 + 8 * v8) >> v6) & ~(-1 << v27)) << v25;
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
        v21 = 0;
      }

      v5 += v18;
      v22 = v21 << v20;
      if (v17)
      {
        goto LABEL_30;
      }

LABEL_24:
      v23 = 0;
      v24 = 0;
      v160 = 0;
      v161 = 0;
      v163 = 0;
      v162 = 0;
      goto LABEL_79;
    }

    v22 = 0;
    if (!v17)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v22 = 0;
    if (!v17)
    {
      goto LABEL_24;
    }
  }

LABEL_30:
  if ((v6 - v4 + (v8 << 6) + 3) <= 0x30)
  {
    LODWORD(v23) = 0;
    v29 = 0;
    v30 = 3;
    do
    {
      v31 = 64 - v6;
      if (64 - v6 >= v30)
      {
        v31 = v30;
      }

      v23 = v23 | (((*(v3 + 8 * v8) >> v6) & ~(-1 << v31)) << v29);
      v29 += v31;
      v32 = v31 + v6;
      v8 += v32 >> 6;
      v6 = v32 & 0x3F;
      v30 -= v31;
    }

    while (v30);
  }

  else
  {
    v23 = 0;
  }

  v33 = 45 - v5;
  v34 = (37 * (45 - v5)) >> 8;
  v35 = v19 - v4;
  v36 = (v6 | (v8 << 6)) + -7 * v34 + v33;
  v37 = v36 & 0x3F;
  v38 = v35 + v37 + (v36 & 0xFFFFFFFFFFFFFFC0);
  v160 = 0;
  v161 = 0;
  v163 = 0;
  v162 = 0;
  v39 = v36 >> 6;
  if (v38 <= 0x30)
  {
    v24 = 0;
    v40 = 0;
    v41 = v19;
    do
    {
      v42 = 64 - v37;
      if (64 - v37 >= v41)
      {
        v42 = v41;
      }

      v24 |= ((*(v3 + 8 * v39) >> v37) & ~(-1 << v42)) << v40;
      v40 += v42;
      v43 = v42 + v37;
      v39 += v43 >> 6;
      v37 = v43 & 0x3F;
      v41 -= v42;
    }

    while (v41);
  }

  else
  {
    v24 = 0;
  }

  LODWORD(v160) = v24;
  v44 = v37 | (v39 << 6);
  v45 = v34 - v19;
  v46 = v44 + v45;
  v47 = (v44 + v45) & 0x3F;
  v48 = (v44 + v45) >> 6;
  if (v35 + v47 + (v46 & 0xFFFFFFFFFFFFFFC0) <= 0x30)
  {
    v49 = 0;
    v50 = 0;
    v51 = v19;
    do
    {
      v52 = 64 - v47;
      if (64 - v47 >= v51)
      {
        v52 = v51;
      }

      v49 |= ((*(v3 + 8 * v48) >> v47) & ~(-1 << v52)) << v50;
      v50 += v52;
      v53 = v52 + v47;
      v48 += v53 >> 6;
      v47 = v53 & 0x3F;
      v51 -= v52;
    }

    while (v51);
  }

  else
  {
    v49 = 0;
  }

  HIDWORD(v160) = v49;
  v54 = (v47 | (v48 << 6)) + v45;
  v55 = v54 & 0x3F;
  v56 = v54 >> 6;
  if (v35 + v55 + (v54 & 0xFFFFFFFFFFFFFFC0) <= 0x30)
  {
    v57 = 0;
    v58 = 0;
    v59 = v19;
    do
    {
      v60 = 64 - v55;
      if (64 - v55 >= v59)
      {
        v60 = v59;
      }

      v57 |= ((*(v3 + 8 * v56) >> v55) & ~(-1 << v60)) << v58;
      v58 += v60;
      v61 = v60 + v55;
      v56 += v61 >> 6;
      v55 = v61 & 0x3F;
      v59 -= v60;
    }

    while (v59);
  }

  else
  {
    v57 = 0;
  }

  LODWORD(v161) = v57;
  v62 = (v55 | (v56 << 6)) + v45;
  v63 = v62 & 0x3F;
  v64 = v62 >> 6;
  if (v35 + v63 + (v62 & 0xFFFFFFFFFFFFFFC0) <= 0x30)
  {
    v65 = 0;
    v66 = 0;
    v67 = v19;
    do
    {
      v68 = 64 - v63;
      if (64 - v63 >= v67)
      {
        v68 = v67;
      }

      v65 |= ((*(v3 + 8 * v64) >> v63) & ~(-1 << v68)) << v66;
      v66 += v68;
      v69 = v68 + v63;
      v64 += v69 >> 6;
      v63 = v69 & 0x3F;
      v67 -= v68;
    }

    while (v67);
  }

  else
  {
    v65 = 0;
  }

  HIDWORD(v161) = v65;
  v70 = (v63 | (v64 << 6)) + v45;
  v71 = v70 & 0x3F;
  v72 = v70 >> 6;
  if (v35 + v71 + (v70 & 0xFFFFFFFFFFFFFFC0) <= 0x30)
  {
    v73 = 0;
    v74 = 0;
    v75 = v19;
    do
    {
      v76 = 64 - v71;
      if (64 - v71 >= v75)
      {
        v76 = v75;
      }

      v73 |= ((*(v3 + 8 * v72) >> v71) & ~(-1 << v76)) << v74;
      v74 += v76;
      v77 = v76 + v71;
      v72 += v77 >> 6;
      v71 = v77 & 0x3F;
      v75 -= v76;
    }

    while (v75);
  }

  else
  {
    v73 = 0;
  }

  LODWORD(v162) = v73;
  v78 = (v71 | (v72 << 6)) + v45;
  v79 = v78 & 0x3F;
  v80 = v78 >> 6;
  if (v35 + v79 + (v78 & 0xFFFFFFFFFFFFFFC0) <= 0x30)
  {
    v81 = 0;
    v82 = 0;
    v83 = v19;
    do
    {
      v84 = 64 - v79;
      if (64 - v79 >= v83)
      {
        v84 = v83;
      }

      v81 |= ((*(v3 + 8 * v80) >> v79) & ~(-1 << v84)) << v82;
      v82 += v84;
      v85 = v84 + v79;
      v80 += v85 >> 6;
      v79 = v85 & 0x3F;
      v83 -= v84;
    }

    while (v83);
  }

  else
  {
    v81 = 0;
  }

  HIDWORD(v162) = v81;
  v86 = (v79 | (v80 << 6)) + v45;
  v87 = v86 & 0x3F;
  if (v35 + v87 + (v86 & 0xFFFFFFFFFFFFFFC0) <= 0x30)
  {
    v88 = 0;
    v89 = 0;
    v90 = v86 >> 6;
    v91 = v19;
    do
    {
      v92 = 64 - v87;
      if (64 - v87 >= v91)
      {
        v92 = v91;
      }

      v88 |= ((*(v3 + 8 * v90) >> v87) & ~(-1 << v92)) << v89;
      v89 += v92;
      v93 = v92 + v87;
      v90 += v93 >> 6;
      v87 = v93 & 0x3F;
      v91 -= v92;
    }

    while (v91);
  }

  else
  {
    v88 = 0;
  }

  v163 = v88;
LABEL_79:
  v94 = *&kDQuadParamTable[10 * v14 + 322];
  if (v94 >> v19 <= 1)
  {
    v95 = 1;
  }

  else
  {
    v95 = v94 >> v19;
  }

  v96 = v95 >> 1;
  if (v95 >> 1 >= (1 << v20) >> 1)
  {
    v97 = (1 << v20) >> 1;
  }

  else
  {
    v97 = v95 >> 1;
  }

  v98 = v22;
  v99 = 2048 - v22;
  result = v99 / v95;
  v101 = v94 + v22;
  v102 = -1 << v19;
  if (!v22)
  {
    v97 = 0;
  }

  v103 = v22 == 2048;
  v104 = v95 > v99;
  if (v17)
  {
    if (v23)
    {
      v105 = result == v24;
      if (!(v22 | v24))
      {
        v106 = 0;
LABEL_97:
        v107 = 1;
        goto LABEL_98;
      }

      if (v101 < 0x1000 || (v102 ^ v24) != 0xFFFFFFFFFFFFFFFFLL)
      {
        v106 = v96 + v95 * v24;
        goto LABEL_97;
      }

      v107 = 1;
      v106 = 4095;
    }

    else
    {
      v107 = 0;
      v106 = v97;
      v105 = v22 == 2048;
    }
  }

  else
  {
    v107 = 0;
    v106 = 0;
    v105 = v104;
  }

LABEL_98:
  v108 = a3 & 0xFFFFFFFD;
  v109 = v106 + v22;
  v110 = v109;
  if (a3 == 4)
  {
    v110 = 2139095039;
    if ((v109 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v109 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v110 = 4286578687;
      }

      else
      {
        v110 = v109;
      }
    }
  }

  v111 = 4095;
  if (v110 < 0xFFF)
  {
    v111 = v110;
  }

  if (v105)
  {
    v112 = 0;
  }

  else
  {
    v112 = v111 ^ 0x800;
  }

  if (v108 != 1)
  {
    v112 = v111;
  }

  *a2 = v112;
  if (v17)
  {
    if (v23 == 1)
    {
      v113 = v97;
      v114 = v22 == 2048;
    }

    else
    {
      v115 = *(&v160 | (4 * v107));
      v114 = result == v115;
      if (v22 | v115)
      {
        if (v101 >= 0x1000 && (v102 ^ v115) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v113 = 4095;
        }

        else
        {
          v113 = v96 + v95 * v115;
        }
      }

      else
      {
        v113 = 0;
      }

      ++v107;
    }
  }

  else
  {
    v113 = 0;
    v114 = v104;
  }

  v116 = v113 + v22;
  v117 = v116;
  if (a3 == 4)
  {
    v117 = 2139095039;
    if ((v116 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v116 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v117 = 4286578687;
      }

      else
      {
        v117 = v116;
      }
    }
  }

  v118 = 4095;
  if (v117 < 0xFFF)
  {
    v118 = v117;
  }

  if (v114)
  {
    v119 = 0;
  }

  else
  {
    v119 = v118 ^ 0x800;
  }

  if (v108 != 1)
  {
    v119 = v118;
  }

  a2[1] = v119;
  if (v17)
  {
    if (v23 == 2)
    {
      v120 = v97;
      v121 = v22 == 2048;
    }

    else
    {
      v122 = *(&v160 + v107);
      v121 = result == v122;
      if (v22 | v122)
      {
        if (v101 >= 0x1000 && (v102 ^ v122) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v120 = 4095;
        }

        else
        {
          v120 = v96 + v95 * v122;
        }
      }

      else
      {
        v120 = 0;
      }

      ++v107;
    }
  }

  else
  {
    v120 = 0;
    v121 = v104;
  }

  v123 = v120 + v22;
  v124 = v123;
  if (a3 == 4)
  {
    v124 = 2139095039;
    if ((v123 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v123 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v124 = 4286578687;
      }

      else
      {
        v124 = v123;
      }
    }
  }

  v125 = 4095;
  if (v124 < 0xFFF)
  {
    v125 = v124;
  }

  if (v121)
  {
    v126 = 0;
  }

  else
  {
    v126 = v125 ^ 0x800;
  }

  if (v108 != 1)
  {
    v126 = v125;
  }

  a2[2] = v126;
  if (v17)
  {
    if (v23 == 3)
    {
      v127 = v97;
      v128 = v22 == 2048;
    }

    else
    {
      v129 = *(&v160 + v107);
      v128 = result == v129;
      if (v22 | v129)
      {
        if (v101 >= 0x1000 && (v102 ^ v129) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v127 = 4095;
        }

        else
        {
          v127 = v96 + v95 * v129;
        }
      }

      else
      {
        v127 = 0;
      }

      ++v107;
    }
  }

  else
  {
    v127 = 0;
    v128 = v104;
  }

  v130 = v127 + v22;
  v131 = v130;
  if (a3 == 4)
  {
    v131 = 2139095039;
    if ((v130 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v130 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v131 = 4286578687;
      }

      else
      {
        v131 = v130;
      }
    }
  }

  v132 = 4095;
  if (v131 < 0xFFF)
  {
    v132 = v131;
  }

  if (v128)
  {
    v133 = 0;
  }

  else
  {
    v133 = v132 ^ 0x800;
  }

  if (v108 != 1)
  {
    v133 = v132;
  }

  a2[3] = v133;
  if (v17)
  {
    if (v23 == 4)
    {
      v134 = v97;
      v135 = v22 == 2048;
    }

    else
    {
      v136 = *(&v160 + v107);
      v135 = result == v136;
      if (v22 | v136)
      {
        if (v101 >= 0x1000 && (v102 ^ v136) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v134 = 4095;
        }

        else
        {
          v134 = v96 + v95 * v136;
        }
      }

      else
      {
        v134 = 0;
      }

      ++v107;
    }
  }

  else
  {
    v134 = 0;
    v135 = v104;
  }

  v137 = v134 + v22;
  v138 = v137;
  if (a3 == 4)
  {
    v138 = 2139095039;
    if ((v137 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v137 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v138 = 4286578687;
      }

      else
      {
        v138 = v137;
      }
    }
  }

  v139 = 4095;
  if (v138 < 0xFFF)
  {
    v139 = v138;
  }

  if (v135)
  {
    v140 = 0;
  }

  else
  {
    v140 = v139 ^ 0x800;
  }

  if (v108 != 1)
  {
    v140 = v139;
  }

  a2[4] = v140;
  if (v17)
  {
    if (v23 == 5)
    {
      v141 = v97;
      v142 = v22 == 2048;
    }

    else
    {
      v143 = *(&v160 + v107);
      v142 = result == v143;
      if (v22 | v143)
      {
        if (v101 >= 0x1000 && (v102 ^ v143) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v141 = 4095;
        }

        else
        {
          v141 = v96 + v95 * v143;
        }
      }

      else
      {
        v141 = 0;
      }

      ++v107;
    }
  }

  else
  {
    v141 = 0;
    v142 = v104;
  }

  v144 = v141 + v22;
  v145 = v144;
  if (a3 == 4)
  {
    v145 = 2139095039;
    if ((v144 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v144 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v145 = 4286578687;
      }

      else
      {
        v145 = v144;
      }
    }
  }

  v146 = 4095;
  if (v145 < 0xFFF)
  {
    v146 = v145;
  }

  if (v142)
  {
    v147 = 0;
  }

  else
  {
    v147 = v146 ^ 0x800;
  }

  if (v108 != 1)
  {
    v147 = v146;
  }

  a2[5] = v147;
  if (v17)
  {
    if (v23 == 6)
    {
      v148 = v97;
      v149 = v22 == 2048;
    }

    else
    {
      v150 = *(&v160 + v107);
      v149 = result == v150;
      if (v22 | v150)
      {
        if (v101 >= 0x1000 && (v102 ^ v150) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v148 = 4095;
        }

        else
        {
          v148 = v96 + v95 * v150;
        }
      }

      else
      {
        v148 = 0;
      }

      ++v107;
    }
  }

  else
  {
    v148 = 0;
    v149 = v104;
  }

  v151 = v148 + v22;
  v152 = v151;
  if (a3 == 4)
  {
    v152 = 2139095039;
    if ((v151 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v151 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v152 = 4286578687;
      }

      else
      {
        v152 = v151;
      }
    }
  }

  v153 = 4095;
  if (v152 < 0xFFF)
  {
    v153 = v152;
  }

  if (v149)
  {
    v154 = 0;
  }

  else
  {
    v154 = v153 ^ 0x800;
  }

  if (v108 != 1)
  {
    v154 = v153;
  }

  a2[6] = v154;
  if (v17)
  {
    if (v23 != 7)
    {
      v155 = *(&v160 + v107);
      v103 = result == v155;
      if (v22 | v155)
      {
        if (v101 >= 0x1000 && (v102 ^ v155) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v97 = 4095;
        }

        else
        {
          v97 = v96 + v95 * v155;
        }
      }

      else
      {
        v97 = 0;
      }
    }
  }

  else
  {
    v97 = 0;
    v103 = v104;
  }

  v156 = v97 + v22;
  v157 = v156;
  if (a3 == 4)
  {
    v157 = 2139095039;
    if ((v156 & 0xFFFFFFFFFFC00000) != 0x7F800000)
    {
      if ((v156 & 0xFFFFFFFFFFC00000) == 0xFF800000)
      {
        v157 = 4286578687;
      }

      else
      {
        v157 = v97 + v98;
      }
    }
  }

  v158 = 4095;
  if (v157 < 0xFFF)
  {
    v158 = v157;
  }

  v159 = v158 ^ 0x800;
  if (v103)
  {
    v159 = 0;
  }

  if (v108 == 1)
  {
    v158 = v159;
  }

  a2[7] = v158;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressSubblock(int16x8_t *a1, uint64_t a2, unint64_t a3, unsigned int a4, int a5, double a6, double a7, double a8, int8x8_t a9)
{
  v285 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    v14 = 0;
    a1->i64[0] = 0;
    a1->i64[1] = 0;
    v15 = (a1->i64 + a2);
    *v15 = 0;
    v15[1] = 0;
    v16 = (a1->i64 + 2 * a2);
    *v16 = 0;
    v16[1] = 0;
    v17 = (a1->i64 + 2 * a2 + a2);
LABEL_6:
    *v17 = 0;
    v17[1] = 0;
    return v14;
  }

  v9 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v281, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v281, a5);
    }

    v278 = v281;
    v275 = v282;
    v277 = v283;
    v273 = v284;
    v19 = a3 + 6;
    if ((v9 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v19, &v281, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v19, &v281, a5);
    }

    v276 = v281;
    v280 = v282;
    v274 = v283;
    v279 = v284;
    v20 = a3 + 12;
    if ((v9 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v20, &v281, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v20, &v281, a5);
    }

    v272 = v281;
    v271 = v282;
    v270 = v283;
    v269 = v284;
    v21 = a3 + 18;
    if ((v9 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v21, &v281, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v21, &v281, a5);
    }

    v22.i64[0] = v271;
    v23.i64[0] = v272;
    v22.i64[1] = v269;
    v24.i64[0] = v275;
    v24.i64[1] = v273;
    v23.i64[1] = v270;
    v25 = vuzp1q_s16(v24, v22);
    v26.i64[0] = v278;
    v26.i64[1] = v277;
    v27 = vuzp1q_s16(v26, v23);
    v22.i64[0] = v281;
    v23.i64[0] = v282;
    v28 = v283;
    v29 = v284;
    *a1 = vshlq_n_s16(v27, 4uLL);
    *(a1 + a2) = vshlq_n_s16(v25, 4uLL);
    v30 = (a1 + a2 + a2);
    v22.i64[1] = v28;
    v25.i64[0] = v276;
    v25.i64[1] = v274;
    v23.i64[1] = v29;
    v27.i64[0] = v280;
    v27.i64[1] = v279;
    *v30 = vshlq_n_s16(vuzp1q_s16(v25, v22), 4uLL);
    *(v30 + a2) = vshlq_n_s16(vuzp1q_s16(v27, v23), 4uLL);
    return 24;
  }

  switch(a4)
  {
    case 0x3Fu:
      v80 = *a3;
      v81 = *(a3 + 16);
      v82 = *(a3 + 32);
      v83 = *(a3 + 48);
      *a1 = vuzp1q_s32(*a3, v82);
      *(a1 + a2) = vuzp2q_s32(v80, v82);
      v84 = (a1 + 2 * a2);
      *v84 = vuzp1q_s32(v81, v83);
      *(v84 + a2) = vuzp2q_s32(v81, v83);
      return 64;
    case 0x2Fu:
      v32.i64[0] = 0xC000C000C000CLL;
      v32.i64[1] = 0xC000C000C000CLL;
      v33 = vmovl_u16(*&vpaddq_s16(v32, v32));
      v34 = vpaddq_s32(v33, v33).u64[0];
      v35.i64[0] = v34;
      v35.i64[1] = HIDWORD(v34);
      v36 = v35;
      v37 = vaddvq_s64(v35);
      v38 = 0uLL;
      v39 = 0uLL;
      v40 = 0uLL;
      v41 = 0uLL;
      if (v37 <= 0x80)
      {
        v42 = (a3 & 0xFFFFFFFFFFFFFFF8);
        v43 = 8 * (a3 & 7);
        v44 = vzip1q_s64(0, v36);
        v45 = v37 + v43;
        v46 = vaddq_s64(v44, vdupq_n_s64(v43));
        v39 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v46)), vshlq_u64(vdupq_lane_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 0), vnegq_s64(v46)));
        if (v37 + v43 >= 0x81)
        {
          v39 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v42[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v46)), vshlq_u64(vdupq_laneq_s64(v42[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v46))), v39);
        }

        v47 = v45 & 0x3F;
        v48 = (v42 + 8 * (v45 >> 6));
        v49 = vaddq_s64(v44, vdupq_n_s64(v47));
        v50 = v37 + v45;
        v40 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v48, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v49)), vshlq_u64(vdupq_lane_s64(v48->i64[0], 0), vnegq_s64(v49)));
        if (v37 + v47 >= 0x81)
        {
          v40 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v48[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v49)), vshlq_u64(vdupq_laneq_s64(v48[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v49))), v40);
        }

        v51 = v50 & 0x3F;
        v52 = (v42 + 8 * (v50 >> 6));
        v53 = vaddq_s64(v44, vdupq_n_s64(v51));
        v54 = v37 + v50;
        v38 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v52, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v53)), vshlq_u64(vdupq_lane_s64(v52->i64[0], 0), vnegq_s64(v53)));
        if (v37 + v51 >= 0x81)
        {
          v38 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v52[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v53)), vshlq_u64(vdupq_laneq_s64(v52[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v53))), v38);
        }

        v55 = vaddq_s64(v44, vdupq_n_s64(v54 & 0x3F));
        v56 = (v42 + 8 * (v54 >> 6));
        v41 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v56, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v55)), vshlq_u64(vdupq_lane_s64(v56->i64[0], 0), vnegq_s64(v55)));
        if (v37 + (v54 & 0x3F) >= 0x81)
        {
          v41 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v56[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v55)), vshlq_u64(vdupq_laneq_s64(v56[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v55))), v41);
        }
      }

      v57 = vzip1_s32(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
      v58.i64[0] = v57.u32[0];
      v58.i64[1] = v57.u32[1];
      v59 = vnegq_s64(v58);
      v60 = vshlq_u64(v38, v59);
      v61 = vuzp1q_s32(vzip1q_s64(v38, v60), vzip2q_s64(v38, v60));
      v62 = vshrq_n_u32(v61, 0xCuLL);
      v63 = vuzp1q_s16(vzip1q_s32(v61, v62), vzip2q_s32(v61, v62));
      v64 = vshlq_u64(v40, v59);
      v65 = vuzp1q_s32(vzip1q_s64(v40, v64), vzip2q_s64(v40, v64));
      v66 = vshrq_n_u32(v65, 0xCuLL);
      v67 = vuzp1q_s16(vzip1q_s32(v65, v66), vzip2q_s32(v65, v66));
      v68 = vshlq_u64(v39, v59);
      v69 = vuzp1q_s32(vzip1q_s64(v39, v68), vzip2q_s64(v39, v68));
      v70 = vshrq_n_u32(v69, 0xCuLL);
      v71 = vshlq_u64(v41, v59);
      v72 = vuzp1q_s32(vzip1q_s64(v41, v71), vzip2q_s64(v41, v71));
      v73 = vshrq_n_u32(v72, 0xCuLL);
      v74 = vuzp1q_s16(vzip1q_s32(v72, v73), vzip2q_s32(v72, v73));
      v75 = vshlq_n_s16(vuzp1q_s16(vzip1q_s32(v69, v70), vzip2q_s32(v69, v70)), 4uLL);
      v76 = vshlq_n_s16(v67, 4uLL);
      v77 = vshlq_n_s16(v63, 4uLL);
      v78 = vshlq_n_s16(v74, 4uLL);
      *a1 = vuzp1q_s32(v75, v77);
      *(a1 + a2) = vuzp2q_s32(v75, v77);
      v79 = (a1 + 2 * a2);
      *v79 = vuzp1q_s32(v76, v78);
      *(v79 + a2) = vuzp2q_s32(v76, v78);
      return 48;
    case 1u:
      v18 = vdupq_n_s16(16 * *a3);
      *a1 = v18;
      *(a1 + a2) = v18;
      *(a1 + 2 * a2) = v18;
      *(a1 + 3 * a2) = v18;
      return 2;
    default:
      v85 = 8 * (a3 & 7);
      v86 = a3 & 0xFFFFFFFFFFFFFFF8;
      v87 = v85 + 18;
      v88 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v85;
      if (v85 >= 0x2F)
      {
        v88 |= *(v86 + 8) << (-8 * (a3 & 7u));
      }

      v89 = (8 * (a3 & 7)) | 0xC0;
      v90 = ((a4 >> 6) | (4 * v88)) & 0xF;
      v91 = vdupq_n_s16(v90);
      a9.i32[0] = v90;
      v92.i64[0] = 0x3000300030003;
      v92.i64[1] = 0x3000300030003;
      v93 = vbicq_s8(vdupq_n_s16(((v88 >> 2) & 0xF) + 1), vceqq_s16((*&v91 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v92));
      v94 = vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(vand_s8(a9, 0x4000400040004), 0))));
      v95.i64[0] = 0x202020202020202;
      v95.i64[1] = 0x202020202020202;
      v96 = vandq_s8(v94, v95);
      if (vmaxvq_s8(v96) < 1)
      {
        v105 = 0;
        v129.i64[0] = -1;
        v129.i64[1] = -1;
        v125 = v93;
        v124 = v93;
        v123 = v93;
        v128.i64[0] = -1;
        v128.i64[1] = -1;
        v122 = v93;
        v127.i64[0] = -1;
        v127.i64[1] = -1;
        v126.i64[0] = -1;
        v126.i64[1] = -1;
      }

      else
      {
        v97 = vmovl_u8(*&vpaddq_s8(v96, v96));
        v98 = vmovl_u16(*&vpaddq_s16(v97, v97));
        v99 = vpaddq_s32(v98, v98).u64[0];
        v100.i64[0] = v99;
        v100.i64[1] = HIDWORD(v99);
        v101 = v100;
        v102 = vaddvq_s64(v100);
        v103 = v102 + v87;
        v104 = v102 <= 0x80 && v89 >= v103;
        v105 = !v104;
        v106 = 0uLL;
        if (v104)
        {
          v107 = v87 & 0x3A;
          v108 = vaddq_s64(vzip1q_s64(0, v101), vdupq_n_s64(v107));
          v109 = (v86 + ((v87 >> 3) & 8));
          v106 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v109, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v108)), vshlq_u64(vdupq_lane_s64(v109->i64[0], 0), vnegq_s64(v108)));
          if (v102 + v107 >= 0x81)
          {
            v106 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v109[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v108)), vshlq_u64(vdupq_laneq_s64(v109[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v108))), v106);
          }

          v87 = v103;
        }

        v110 = vzip1_s32(*v98.i8, *&vextq_s8(v98, v98, 8uLL));
        v111.i64[0] = v110.u32[0];
        v111.i64[1] = v110.u32[1];
        v112 = vshlq_u64(v106, vnegq_s64(v111));
        v113 = vuzp1q_s32(vzip1q_s64(v106, v112), vzip2q_s64(v106, v112));
        v114 = vshlq_u32(v113, vnegq_s32((*&v97 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
        v115 = vuzp1q_s16(vzip1q_s32(v113, v114), vzip2q_s32(v113, v114));
        v116 = vzip1q_s16(v115, vshlq_u16(v115, vnegq_s16(vmovl_u8(vuzp1_s8(*v96.i8, *v91.i8)))));
        *v116.i8 = vmovn_s16(v116);
        v113.i64[0] = 0x101010101010101;
        v113.i64[1] = 0x101010101010101;
        v117 = vshlq_s8(v113, v96);
        v113.i64[0] = -1;
        v113.i64[1] = -1;
        v117.i32[0] = vandq_s8(vaddq_s8(v117, v113), v116).u32[0];
        v118 = vdupq_n_s16(v117.i8[0]);
        v119 = vdupq_n_s16(v117.i8[1]);
        v120 = vdupq_n_s16(v117.i8[2]);
        v121 = vdupq_n_s16(v117.i8[3]);
        v122 = vsubq_s16(v93, v118);
        v123 = vsubq_s16(v93, v119);
        v124 = vsubq_s16(v93, v120);
        v125 = vsubq_s16(v93, v121);
        v126 = vceqzq_s16(v118);
        v127 = vceqzq_s16(v119);
        v128 = vceqzq_s16(v120);
        v129 = vceqzq_s16(v121);
      }

      v130.i64[0] = 0x7000700070007;
      v130.i64[1] = 0x7000700070007;
      v131 = 0uLL;
      v132 = vandq_s8(vextq_s8(vcgtq_u16(v91, v130), 0, 0xEuLL), v93);
      v133 = vmovl_u16(*&vpaddq_s16(v132, v132));
      v134 = vpaddq_s32(v133, v133).u64[0];
      v135.i64[0] = v134;
      v135.i64[1] = HIDWORD(v134);
      v136 = v135;
      v137 = vaddvq_s64(v135);
      v138 = v137 + v87;
      if (v137 <= 0x80 && v89 >= v138)
      {
        v140 = v87 & 0x3F;
        v141 = vaddq_s64(vzip1q_s64(0, v136), vdupq_n_s64(v140));
        v142 = (v86 + 8 * (v87 >> 6));
        v131 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v142, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v141)), vshlq_u64(vdupq_lane_s64(v142->i64[0], 0), vnegq_s64(v141)));
        if (v137 + v140 >= 0x81)
        {
          v131 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v142[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v141)), vshlq_u64(vdupq_laneq_s64(v142[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v141))), v131);
        }

        v87 = v138;
      }

      else
      {
        v105 = 1;
      }

      v143 = v90 & 3;
      if (v143 == 2)
      {
        if (v89 < v87 + 8)
        {
          v105 = 1;
        }

        else
        {
          v87 += 8;
        }

        v144 = v89 < v87 + 8;
        if (v89 >= v87 + 8)
        {
          v87 += 8;
        }

        v105 |= v144;
      }

      v145 = 0uLL;
      v146 = vextq_s8(0, v122, 0xEuLL);
      v147 = vmovl_u16(*&vpaddq_s16(v146, v146));
      v148 = vpaddq_s32(v147, v147).u64[0];
      v149.i64[0] = v148;
      v149.i64[1] = HIDWORD(v148);
      v150 = v149;
      v151 = vaddvq_s64(v149);
      v152 = v151 + v87;
      if (v151 <= 0x80 && v89 >= v152)
      {
        v155 = v87 & 0x3F;
        v156 = vaddq_s64(vzip1q_s64(0, v150), vdupq_n_s64(v155));
        v157 = (v86 + 8 * (v87 >> 6));
        v154 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v157, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v156)), vshlq_u64(vdupq_lane_s64(v157->i64[0], 0), vnegq_s64(v156)));
        if (v151 + v155 >= 0x81)
        {
          v154 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v157[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v156)), vshlq_u64(vdupq_laneq_s64(v157[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v156))), v154);
        }

        v87 = v152;
      }

      else
      {
        v105 = 1;
        v154 = 0uLL;
      }

      v158.i64[0] = 0xFFFF0000FFFFLL;
      v158.i64[1] = 0xFFFF0000FFFFLL;
      v159 = vmovl_u16(*&vpaddq_s16(v123, v123));
      v160 = vpaddq_s32(v159, v159).u64[0];
      v161.i64[0] = v160;
      v161.i64[1] = HIDWORD(v160);
      v162 = v161;
      v163 = vaddvq_s64(v161);
      if (v163 >= 0x81)
      {
        v105 = 1;
      }

      else
      {
        v164 = vzip1_s32(*v159.i8, *&vextq_s8(v159, v159, 8uLL));
        v165.i64[0] = v164.u32[0];
        v165.i64[1] = v164.u32[1];
        v166 = v165;
        v167 = vandq_s8(v123, v158);
        v168 = v163 + v87;
        if (v89 >= v163 + v87)
        {
          v169 = v87 & 0x3F;
          v170 = vaddq_s64(vzip1q_s64(0, v162), vdupq_n_s64(v169));
          v171 = (v86 + 8 * (v87 >> 6));
          v145 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v171, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v170)), vshlq_u64(vdupq_lane_s64(v171->i64[0], 0), vnegq_s64(v170)));
          if (v163 + v169 >= 0x81)
          {
            v145 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v171[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v170)), vshlq_u64(vdupq_laneq_s64(v171[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v170))), v145);
          }

          v87 = v168;
        }

        else
        {
          v105 = 1;
        }

        v172 = vshlq_u64(v145, vnegq_s64(v166));
        v173 = vuzp1q_s32(vzip1q_s64(v145, v172), vzip2q_s64(v145, v172));
        v174 = vshlq_u32(v173, vnegq_s32(v167));
        v145 = vuzp1q_s16(vzip1q_s32(v173, v174), vzip2q_s32(v173, v174));
      }

      v175 = vmovl_u16(*&vpaddq_s16(v124, v124));
      v176 = vpaddq_s32(v175, v175).u64[0];
      v177.i64[0] = v176;
      v177.i64[1] = HIDWORD(v176);
      v178 = v177;
      v179 = vaddvq_s64(v177);
      v180 = 0uLL;
      if (v179 >= 0x81)
      {
        v105 = 1;
        v187 = 0uLL;
      }

      else
      {
        v181 = vzip1_s32(*v175.i8, *&vextq_s8(v175, v175, 8uLL));
        v182.i64[0] = v181.u32[0];
        v182.i64[1] = v181.u32[1];
        v183 = v182;
        v184 = vandq_s8(v124, v158);
        v185 = v179 + v87;
        if (v89 >= v179 + v87)
        {
          v188 = v87 & 0x3F;
          v189 = vaddq_s64(vzip1q_s64(0, v178), vdupq_n_s64(v188));
          v190 = (v86 + 8 * (v87 >> 6));
          v186 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v190, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v189)), vshlq_u64(vdupq_lane_s64(v190->i64[0], 0), vnegq_s64(v189)));
          if (v179 + v188 >= 0x81)
          {
            v186 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v190[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v189)), vshlq_u64(vdupq_laneq_s64(v190[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v189))), v186);
          }

          v87 = v185;
        }

        else
        {
          v186 = 0uLL;
          v105 = 1;
        }

        v191 = vshlq_u64(v186, vnegq_s64(v183));
        v192 = vuzp1q_s32(vzip1q_s64(v186, v191), vzip2q_s64(v186, v191));
        v193 = vshlq_u32(v192, vnegq_s32(v184));
        v187 = vuzp1q_s16(vzip1q_s32(v192, v193), vzip2q_s32(v192, v193));
      }

      v194 = vmovl_u16(*&vpaddq_s16(v125, v125));
      v195 = vpaddq_s32(v194, v194).u64[0];
      v196.i64[0] = v195;
      v196.i64[1] = HIDWORD(v195);
      v197 = v196;
      v198 = vaddvq_s64(v196);
      if (v198 >= 0x81)
      {
        goto LABEL_97;
      }

      if (v89 >= v198 + v87)
      {
        v199 = vaddq_s64(vzip1q_s64(0, v197), vdupq_n_s64(v87 & 0x3F));
        v200 = (v86 + 8 * (v87 >> 6));
        v180 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v200, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v199)), vshlq_u64(vdupq_lane_s64(v200->i64[0], 0), vnegq_s64(v199)));
        if (v198 + (v87 & 0x3F) >= 0x81)
        {
          v180 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v200[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v199)), vshlq_u64(vdupq_laneq_s64(v200[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v199))), v180);
        }

        v87 += v198;
      }

      else
      {
        v105 = 1;
      }

      if ((v105 & 1) != 0 || (v14 = (a4 & 0x3F) + 1, 8 * ((a3 & 7) + v14) - v87 >= 9))
      {
LABEL_97:
        v201 = 0;
        v202 = 0;
        v203 = 8 * (&v281 & 7);
        v204 = 12;
        do
        {
          v205 = 64 - v203;
          if (64 - v203 >= v204)
          {
            v205 = v204;
          }

          *(&v281 + v201) |= ((0xFFFFFFFFFFFFFFFFLL >> v202) & ~(-1 << v205)) << v203;
          v202 += v205;
          v206 = v205 + v203;
          v201 += v206 >> 6;
          v203 = v206 & 0x3F;
          v204 -= v205;
        }

        while (v204);
LABEL_101:
        v14 = 0;
        v207 = (a1->i64 + a2);
        a1->i64[0] = 0;
        a1->i64[1] = 0;
        v208 = (a1->i64 + 2 * a2);
        *v207 = 0;
        v207[1] = 0;
        v17 = (a1->i64 + 2 * a2 + a2);
        *v208 = 0;
        v208[1] = 0;
        goto LABEL_6;
      }

      if (v143 == 2)
      {
        v209 = 0;
        v210 = 0;
        v211 = 8 * (&v281 & 7);
        v212 = 12;
        do
        {
          v213 = 64 - v211;
          if (64 - v211 >= v212)
          {
            v213 = v212;
          }

          *(&v281 + v209) |= ((0xFFFFFFFFFFFFFFFFLL >> v210) & ~(-1 << v213)) << v211;
          v210 += v213;
          v214 = v213 + v211;
          v209 += v214 >> 6;
          v211 = v214 & 0x3F;
          v212 -= v213;
        }

        while (v212);
        goto LABEL_101;
      }

      v215 = vzip1_s32(*v133.i8, *&vextq_s8(v133, v133, 8uLL));
      v216 = vzip1_s32(*v147.i8, *&vextq_s8(v147, v147, 8uLL));
      v217.i64[0] = v215.u32[0];
      v217.i64[1] = v215.u32[1];
      v218 = v217;
      v217.i64[0] = v216.u32[0];
      v217.i64[1] = v216.u32[1];
      v219 = vshlq_u64(v131, vnegq_s64(v218));
      v220 = vshlq_u64(v154, vnegq_s64(v217));
      v221 = vuzp1q_s32(vzip1q_s64(v131, v219), vzip2q_s64(v131, v219));
      v222 = vuzp1q_s32(vzip1q_s64(v154, v220), vzip2q_s64(v154, v220));
      v223 = vshlq_u32(v221, vnegq_s32((*&v132 & __PAIR128__(0xFFE0FFFFFFE0FFFFLL, 0xFFE0FFFFFFE0FFFFLL))));
      v224 = vshlq_u32(v222, vnegq_s32(vandq_s8(v146, v158)));
      v225 = vzip2q_s32(v221, v223);
      v226 = vzip1q_s32(v221, v223);
      v223.i64[0] = 0x10001000100010;
      v223.i64[1] = 0x10001000100010;
      v227 = vzip2q_s32(v222, v224);
      v228 = vzip1q_s32(v222, v224);
      v224.i64[0] = 0x10001000100010;
      v224.i64[1] = 0x10001000100010;
      v229 = vuzp1q_s16(v226, v225);
      v225.i64[0] = 0xF000F000F000FLL;
      v225.i64[1] = 0xF000F000F000FLL;
      v230 = vuzp1q_s16(v228, v227);
      v227.i64[0] = 0xF000F000F000FLL;
      v227.i64[1] = 0xF000F000F000FLL;
      v231 = vzip1_s32(*v194.i8, *&vextq_s8(v194, v194, 8uLL));
      v232.i64[0] = 0xFFFF0000FFFFLL;
      v232.i64[1] = 0xFFFF0000FFFFLL;
      v233.i64[0] = 0xF000F000F000FLL;
      v233.i64[1] = 0xF000F000F000FLL;
      v234.i64[0] = 0x10001000100010;
      v234.i64[1] = 0x10001000100010;
      v235 = vshlq_s16(v229, vsubq_s16(v223, v132));
      v236 = vaddq_s16(v146, v227);
      v237 = vshlq_s16(v230, vsubq_s16(v224, v146));
      v238 = vshlq_s16(v145, vsubq_s16(v224, v123));
      v239 = vshlq_s16(v187, vsubq_s16(v224, v124));
      v217.i64[0] = v231.u32[0];
      v217.i64[1] = v231.u32[1];
      v240 = vandq_s8(v125, v232);
      v241 = vaddq_s16(v125, v233);
      v242 = vsubq_s16(v234, v125);
      v243 = vdupq_n_s16(v88 >> 6);
      v244 = vshlq_s16(v235, vaddq_s16(v132, v225));
      v245 = vshlq_s16(v237, v236);
      v246 = vshlq_u64(v180, vnegq_s64(v217));
      v247 = vuzp1q_s32(vzip1q_s64(v180, v246), vzip2q_s64(v180, v246));
      v248 = vshlq_u32(v247, vnegq_s32(v240));
      v249 = vaddq_s16(vandq_s8(v244, v126), v245);
      v250 = vdupq_lane_s16(*v244.i8, 0);
      v251 = vsubq_s16(v249, vandq_s8(v250, v126));
      v252 = vsubq_s16(vshlq_s16(v238, vaddq_s16(v123, v227)), vandq_s8(v250, v127));
      v253 = vsubq_s16(vshlq_s16(v239, vaddq_s16(v124, v227)), vandq_s8(v250, v128));
      v254 = vsubq_s16(vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v247, v248), vzip2q_s32(v247, v248)), v242), v241), vandq_s8(v250, v129));
      v255.i64[0] = 0x1000100010001;
      v255.i64[1] = 0x1000100010001;
      if (vaddvq_s16(vceqq_s16((*&v91 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v255)))
      {
        v256 = *&v91 & __PAIR128__(0xFFF1FFF1FFF1FFF1, 0xFFF1FFF1FFF1FFF1);
        v257 = vnegq_s16(v256);
        v258 = v251;
        v258.i16[0] = v251.i16[7];
        v258.i16[7] = v251.i16[0];
        v259 = vorrq_s8(vandq_s8(v258, v257), vandq_s8(v251, vceqzq_s16(v256)));
        v260 = vaddq_s16(v259, vandq_s8(vqtbl1q_s8(v259, xmmword_29D2F0E60), v257));
        v251 = vaddq_s16(v260, vandq_s8(vqtbl1q_s8(v260, xmmword_29D2F0E70), v257));
        v261 = vaddq_s16(vandq_s8(vqtbl1q_s8(v252, xmmword_29D2F0E80), v257), v252);
        v252 = vaddq_s16(vandq_s8(vqtbl1q_s8(v261, xmmword_29D2F0E90), v257), v261);
        v262 = vaddq_s16(vandq_s8(vqtbl1q_s8(v253, xmmword_29D2F0EA0), v257), v253);
        v253 = vaddq_s16(vandq_s8(vqtbl1q_s8(v262, xmmword_29D2F0EB0), v257), v262);
        v263 = vaddq_s16(vandq_s8(vqtbl1q_s8(v254, xmmword_29D2F0EC0), v257), v254);
        v254 = vaddq_s16(vandq_s8(vqtbl1q_s8(v263, xmmword_29D2F0ED0), v257), v263);
      }

      v264 = vshlq_n_s16(vaddq_s16(v243, v251), 4uLL);
      v265 = vshlq_n_s16(vaddq_s16(v252, v243), 4uLL);
      v266 = vshlq_n_s16(vaddq_s16(v253, v243), 4uLL);
      v267 = vshlq_n_s16(vaddq_s16(v254, v243), 4uLL);
      *a1 = vuzp1q_s32(v264, v266);
      *(a1 + a2) = vuzp2q_s32(v264, v266);
      v268 = (a1 + 2 * a2);
      *v268 = vuzp1q_s32(v265, v267);
      *(v268 + a2) = vuzp2q_s32(v265, v267);
      break;
  }

  return v14;
}