uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblock(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v65 = *MEMORY[0x29EDCA608];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  if (a6 && a5)
  {
    if (a5 > 1)
    {
      v19 = a5 & 0x7E;
      if (a5 == v19)
      {
        v20 = 0;
        v21 = &v61 + 8;
        v22 = (a3 + 2);
        do
        {
          v23 = v22;
          v24 = v21;
          v25 = a5;
          do
          {
            v26 = *(v23 - 1);
            v27 = *v23;
            v23 += 2;
            *(v24 - 4) = v26;
            *v24 = v27;
            v24 += 8;
            v25 -= 2;
          }

          while (v25);
          ++v20;
          v21 += 2;
          v22 = (v22 + a4);
        }

        while (v20 != a6);
      }

      else
      {
        v28 = 0;
        v29 = &v61 + 8;
        v30 = (a3 + 2);
        v31 = &v61 + ((a5 >> 1) & 0x3F);
        do
        {
          v32 = v30;
          v33 = v29;
          v34 = a5 & 0x7E;
          do
          {
            v35 = *(v32 - 1);
            v36 = *v32;
            v32 += 2;
            *(v33 - 4) = v35;
            *v33 = v36;
            v33 += 8;
            v34 -= 2;
          }

          while (v34);
          v37 = (a3 + v28 * a4 + 2 * v19);
          v38 = v31;
          v39 = a5 - v19;
          do
          {
            v40 = *v37++;
            *v38 = v40;
            v38 = (v38 + 8);
            --v39;
          }

          while (v39);
          ++v28;
          v29 += 2;
          v30 = (v30 + a4);
          v31 = (v31 + 2);
        }

        while (v28 != a6);
      }
    }

    else
    {
      v10 = 0;
      if (a6 < 2)
      {
        goto LABEL_9;
      }

      if (a4 != 1)
      {
        goto LABEL_9;
      }

      v10 = a6 & 0xFE;
      v11 = (a3 + 1);
      v12 = &v61 + 1;
      v13 = v10;
      do
      {
        v14 = *(v11 - 1);
        v15 = *v11++;
        *(v12 - 1) = v14;
        *v12 = v15;
        v12 += 2;
        v13 -= 2;
      }

      while (v13);
      if (v10 != a6)
      {
LABEL_9:
        v16 = a6 - v10;
        v17 = &v61 + v10;
        v18 = (a3 + v10 * a4);
        do
        {
          *v17++ = *v18;
          v18 = (v18 + a4);
          --v16;
        }

        while (v16);
      }
    }
  }

  v56.i32[0] = v61;
  v56.i32[1] = WORD4(v61);
  v56.i32[2] = WORD1(v61);
  v56.i32[3] = WORD5(v61);
  v57 = v62;
  v58 = WORD4(v62);
  if (a5 >= 4)
  {
    v41 = 4;
  }

  else
  {
    v41 = a5;
  }

  if (a5 >= 4)
  {
    v42 = a5 - 4;
  }

  else
  {
    v42 = 0;
  }

  v59 = WORD1(v62);
  v60 = WORD5(v62);
  if (a6 >= 2)
  {
    v43 = 2;
  }

  else
  {
    v43 = a6;
  }

  if (a6 >= 2)
  {
    v44 = a6 - 2;
  }

  else
  {
    v44 = 0;
  }

  v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1, &v56, a7, v41, v43);
  v56.i32[0] = WORD2(v61);
  v56.i32[1] = WORD6(v61);
  v56.i32[2] = WORD3(v61);
  v56.i32[3] = HIWORD(v61);
  v57 = WORD2(v62);
  v58 = WORD6(v62);
  v59 = WORD3(v62);
  v60 = HIWORD(v62);
  if (a6 >= 4)
  {
    v47 = 2;
  }

  else
  {
    v47 = v44;
  }

  v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 10, &v56, a7, v41, v47);
  v56.i32[0] = v63;
  v56.i32[1] = WORD4(v63);
  v56.i32[2] = WORD1(v63);
  v56.i32[3] = WORD5(v63);
  v57 = v64;
  v58 = WORD4(v64);
  if (a5 >= 8)
  {
    v49 = 4;
  }

  else
  {
    v49 = v42;
  }

  v59 = WORD1(v64);
  v60 = WORD5(v64);
  v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 20, &v56, a7, v49, v43);
  v56.i32[0] = WORD2(v63);
  v56.i32[1] = WORD6(v63);
  v56.i32[2] = WORD3(v63);
  v56.i32[3] = HIWORD(v63);
  v57 = WORD2(v64);
  v58 = WORD6(v64);
  v59 = WORD3(v64);
  v60 = HIWORD(v64);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 30, &v56, a7, v49, v47);
  if (v50)
  {
    v52 = 4;
  }

  else
  {
    v52 = 0;
  }

  if (v48)
  {
    v53 = 2;
  }

  else
  {
    v53 = 0;
  }

  if (result)
  {
    v54 = -8;
  }

  else
  {
    v54 = -16;
  }

  *a2 = v54 | v52 | v46 | v53;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(uint64_t a1, int8x16_t *a2, int a3, unsigned int a4, unsigned int a5)
{
  v128 = *MEMORY[0x29EDCA608];
  if (a3 == 1)
  {
    v8.i64[0] = 0x800000008000;
    v8.i64[1] = 0x800000008000;
    v9 = vdupq_n_s32(0x8001u);
    v6 = vbicq_s8(veorq_s8(*a2, v8), vceqq_s32(*a2, v9));
    v7 = vbicq_s8(veorq_s8(a2[1], v8), vceqq_s32(a2[1], v9));
    goto LABEL_5;
  }

  if (a3 == 3)
  {
    v5.i64[0] = 0x800000008000;
    v5.i64[1] = 0x800000008000;
    v6 = veorq_s8(*a2, v5);
    v7 = veorq_s8(a2[1], v5);
LABEL_5:
    v126 = v6;
    v127 = v7;
    v10 = v6.i32[0];
    goto LABEL_7;
  }

  v11 = a2[1];
  v126 = *a2;
  v127 = v11;
  v10 = v126.i32[0];
LABEL_7:
  if (a4)
  {
    v12 = a5 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = a4 < 2 || a5 == 0;
  if (v13)
  {
    v14 = 0;
    v15 = v10;
    v16 = v10;
  }

  else
  {
    v15 = v126.u32[1];
    v14 = v126.i32[1] < v10;
    if (v126.i32[1] >= v10)
    {
      v16 = v10;
    }

    else
    {
      v16 = v126.u32[1];
    }

    if (v10 > v126.i32[1])
    {
      v15 = v10;
    }
  }

  v17 = a5 < 2 || a4 == 0;
  v18 = v17;
  if (!v17)
  {
    if (v126.i32[2] < v16)
    {
      v14 = 2;
      v16 = v126.u32[2];
    }

    if (v15 <= v126.i32[2])
    {
      v15 = v126.u32[2];
    }
  }

  v19 = a5 >= 2 && a4 >= 2;
  v20 = !v19;
  if (v19)
  {
    if (v126.i32[3] < v16)
    {
      v14 = 3;
      v16 = v126.u32[3];
    }

    if (v15 <= v126.i32[3])
    {
      v15 = v126.u32[3];
    }
  }

  if (a5)
  {
    v21 = a4 >= 3;
  }

  else
  {
    v21 = 0;
  }

  v22 = !v21;
  if (v21)
  {
    if (v127.i32[0] < v16)
    {
      v14 = 4;
      v16 = v127.i32[0];
    }

    if (v15 <= v127.i32[0])
    {
      v15 = v127.i32[0];
    }
  }

  if (a5)
  {
    v23 = a4 >= 4;
  }

  else
  {
    v23 = 0;
  }

  v24 = !v23;
  if (v23)
  {
    if (v127.i32[1] < v16)
    {
      v14 = 5;
      v16 = v127.u32[1];
    }

    if (v15 <= v127.i32[1])
    {
      v15 = v127.u32[1];
    }
  }

  v25 = a5 >= 2 && a4 >= 3;
  v26 = !v25;
  if (v25)
  {
    if (v127.i32[2] < v16)
    {
      v14 = 6;
      v16 = v127.u32[2];
    }

    if (v15 <= v127.i32[2])
    {
      v15 = v127.u32[2];
    }
  }

  v27 = a5 >= 2 && a4 >= 4;
  v28 = !v27;
  if (v27)
  {
    if (v127.i32[3] < v16)
    {
      v14 = 7;
      v16 = v127.u32[3];
    }

    if (v15 <= v127.i32[3])
    {
      v15 = v127.u32[3];
    }
  }

  v29 = v15 - v16;
  v30 = __clz(v15 - v16);
  if (v30 == 31 && v15 == 0xFFFF)
  {
    v32 = 1;
  }

  else
  {
    v32 = 31 - v30;
  }

  v33 = v32 & ~(v32 >> 31);
  if ((a3 | 2) == 3)
  {
    v34 = 0;
    if (!(v16 >> 15) && v15 >= 0x8000)
    {
      v34 = kDQuadParamTable[10 * v33 + 488] == 0;
    }
  }

  else
  {
    v34 = 0;
  }

  if (v32 > 12 || v34)
  {
    v36 = kDQuadParamTable[10 * v33 + 484];
    v37 = v36 + 2;
    if (v34)
    {
      v38 = 0;
    }

    else
    {
      v38 = -2;
    }

    v39 = v16 & ~(-1 << (14 - v36));
    if (v37 >= 0x10)
    {
      v39 = 0;
    }

    v40 = v39 + v38;
    if (v40 >= 1 && __clz(v40 + v29) < v30)
    {
      ++v33;
    }
  }

  v41 = v33;
  v42 = &kDQuadParamTable[10 * v33];
  v43 = *(v42 + 241);
  v44 = v42[485];
  v45 = v44 + 2;
  v46 = v43 >> (v44 + 2);
  if (a3 != 4)
  {
    v48 = v46 > 0x100 || v12;
    goto LABEL_150;
  }

  if (v12)
  {
    v47 = 0;
    if (v13)
    {
      goto LABEL_134;
    }
  }

  else
  {
    v47 = (~v10 & 0x7C00) == 0 || v10 == 0x8000;
    if (v13)
    {
      goto LABEL_134;
    }
  }

  if ((~v126.i32[1] & 0x7C00) == 0 || v126.i32[1] == 0x8000)
  {
    v47 = 1;
  }

LABEL_134:
  if (v18)
  {
    if (v20)
    {
      goto LABEL_136;
    }
  }

  else
  {
    if ((~v126.i32[2] & 0x7C00) == 0 || v126.i32[2] == 0x8000)
    {
      v47 = 1;
    }

    if (v20)
    {
LABEL_136:
      if (v22)
      {
        goto LABEL_137;
      }

      goto LABEL_245;
    }
  }

  if ((~v126.i32[3] & 0x7C00) == 0 || v126.i32[3] == 0x8000)
  {
    v47 = 1;
  }

  if (v22)
  {
LABEL_137:
    if (v24)
    {
      goto LABEL_138;
    }

    goto LABEL_252;
  }

LABEL_245:
  if ((~v127.i32[0] & 0x7C00) == 0 || v127.i32[0] == 0x8000)
  {
    v47 = 1;
  }

  if (v24)
  {
LABEL_138:
    if (v26)
    {
      goto LABEL_139;
    }

LABEL_259:
    if ((~v127.i32[2] & 0x7C00) == 0 || v127.i32[2] == 0x8000)
    {
      v47 = 1;
    }

    if (v28)
    {
      goto LABEL_146;
    }

    goto LABEL_140;
  }

LABEL_252:
  if ((~v127.i32[1] & 0x7C00) == 0 || v127.i32[1] == 0x8000)
  {
    v47 = 1;
  }

  if ((v26 & 1) == 0)
  {
    goto LABEL_259;
  }

LABEL_139:
  if ((v28 & 1) == 0)
  {
LABEL_140:
    if ((~v127.i32[3] & 0x7C00) == 0 || v127.i32[3] == 0x8000)
    {
      v47 = 1;
    }
  }

LABEL_146:
  v52 = v46 > 0x100 || v12;
  v48 = v52 | v47;
LABEL_150:
  v53 = 0;
  v54 = 0;
  v55 = kDQuadParamTable[10 * v41 + 484] + 2;
  if (v55 >= 0x10)
  {
    v56 = 16;
  }

  else
  {
    v56 = v55;
  }

  LODWORD(v57) = 16 * (v44 != 0);
  if (v57 >= v45)
  {
    v57 = v45;
  }

  else
  {
    v57 = v57;
  }

  v58 = (-1 << (16 - v56)) & v16;
  memset(v123, 0, sizeof(v123));
  v124 = 0;
  v59 = v43 >> v57;
  v60 = v10 - v58;
  if (v12)
  {
    v60 = 0;
  }

  v17 = !v13;
  v61 = v126.i32[1] - v58;
  if (!v17)
  {
    v61 = 0;
  }

  v125[0] = v60;
  v125[1] = v61;
  v62 = v126.i32[2] - v58;
  if (v18)
  {
    v62 = 0;
  }

  v63 = v126.i32[3] - v58;
  if (v20)
  {
    v63 = 0;
  }

  v125[2] = v62;
  v125[3] = v63;
  v64 = v127.i32[0] - v58;
  if (v22)
  {
    v64 = 0;
  }

  v65 = v127.i32[1] - v58;
  if (v24)
  {
    v65 = 0;
  }

  v125[4] = v64;
  v125[5] = v65;
  v66 = v127.i32[2] - v58;
  if (v26)
  {
    v66 = 0;
  }

  v67 = v127.i32[3] - v58;
  if (v28)
  {
    v67 = 0;
  }

  v125[6] = v66;
  v125[7] = v67;
  if (v59 <= 1)
  {
    v68 = 1;
  }

  else
  {
    v68 = v59;
  }

  v69 = v14;
  v70 = 4 * v14;
  v71 = &byte_29D2F3081;
  do
  {
    if (v70 != v53)
    {
      if (v57)
      {
        v72 = v125[v53 / 4] / v68;
      }

      else
      {
        LODWORD(v72) = 0;
      }

      *(v123 + v54) = v72;
      if (v59 >= 2)
      {
        v73 = v125[v53 / 4];
        if (v73)
        {
          if (v73 / v68 * v68 == v73 && ((v73 / v68) & 1) != 0)
          {
            if (v58 || v72 != 1)
            {
              if ((a3 | 2) != 3 || (v75 = v126.u32[v53 / 4], v75 != 0x8000) && ((a3 | 2) != 3 || v68 + 0x8000 != v75))
              {
                LODWORD(v72) = v72 - 1;
                *(v123 + v54) = v72;
              }
            }

            else
            {
              LODWORD(v72) = 1;
            }
          }
        }
      }

      if (v72 >> v57 || v126.i32[v53 / 4] == 0xFFFF)
      {
        *(v123 + v54) = ~(-1 << v57);
      }

      if (*v71 >= a5 || *(v71 - 1) >= a4)
      {
        *(v123 + v54) = 0;
      }

      ++v54;
    }

    v53 += 4;
    v71 += 2;
  }

  while (v53 != 32);
  v76 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v77 = 8 * (a1 & 7);
  *(a1 + 8) = 0;
  *a1 = 0;
  if (v48)
  {
    v78 = 0;
    v79 = 0;
    v80 = 8 * (a1 & 7);
    do
    {
      v81 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v78;
      if (v81[1] >= a5 || *v81 >= a4)
      {
        v83 = 0;
      }

      else
      {
        v83 = v126.u32[v78] >> 8;
      }

      if ((v80 - v77 + (v79 << 6) - 73) >= 0xFFFFFFFFFFFFFFAFLL)
      {
        v84 = 0;
        v85 = 8;
        do
        {
          v86 = 64 - v80;
          if (64 - v80 >= v85)
          {
            v86 = v85;
          }

          v76[v79] |= ((v83 >> v84) & ~(-1 << v86)) << v80;
          v84 += v86;
          v87 = v86 + v80;
          v79 += v87 >> 6;
          v80 = v87 & 0x3F;
          v85 -= v86;
        }

        while (v85);
      }

      ++v78;
    }

    while (v78 != 8);
  }

  else
  {
    v88 = 0;
    *v76 |= (v41 & 0xF) << v77;
    v89 = v77 | 4;
    if (v55 && (v56 - v77 + v89) <= 0x50)
    {
      v88 = 0;
      v90 = 0;
      v91 = v58 >> (16 - v56);
      v92 = v56;
      do
      {
        v93 = 64 - v89;
        if (64 - v89 >= v92)
        {
          v93 = v92;
        }

        v76[v88] |= ((v91 >> v90) & ~(-1 << v93)) << v89;
        v90 += v93;
        v94 = v93 + v89;
        v88 += v94 >> 6;
        v89 = v94 & 0x3F;
        v92 -= v93;
      }

      while (v92);
    }

    if (v57)
    {
      if ((v89 - v77 + (v88 << 6) + 3) <= 0x50)
      {
        v95 = 0;
        v96 = 3;
        do
        {
          v97 = 64 - v89;
          if (64 - v89 >= v96)
          {
            v97 = v96;
          }

          v76[v88] |= ((v69 >> v95) & ~(-1 << v97)) << v89;
          v95 += v97;
          v98 = v97 + v89;
          v88 += v98 >> 6;
          v89 = v98 & 0x3F;
          v96 -= v97;
        }

        while (v96);
      }

      v99 = v56 + 7;
    }

    else
    {
      v99 = v56 + 4;
    }

    v105 = 80 - v99;
    v106 = (147 * v105) >> 10;
    v107 = -7 * v106 + v105;
    if ((v107 - 257) >= 0xFFFFFF00 && v89 - v77 + (v88 << 6) + v107 <= 0x50)
    {
      do
      {
        v108 = 64 - v89;
        if (64 - v89 >= v107)
        {
          v108 = v107;
        }

        v109 = v108 + v89;
        v88 += v109 >> 6;
        v89 = v109 & 0x3F;
        v107 -= v108;
      }

      while (v107);
    }

    v110 = 0;
    v111 = v106 - v57;
    if (v111)
    {
      v112 = v111 > 0x100;
    }

    else
    {
      v112 = 1;
    }

    v113 = v112;
    do
    {
      if (v57 && v57 - v77 + v89 + (v88 << 6) <= 0x50)
      {
        v114 = 0;
        v115 = *(v123 + v110);
        v116 = v57;
        do
        {
          v117 = 64 - v89;
          if (64 - v89 >= v116)
          {
            v117 = v116;
          }

          v76[v88] |= ((v115 >> v114) & ~(-1 << v117)) << v89;
          v114 += v117;
          v118 = v117 + v89;
          v88 += v118 >> 6;
          v89 = v118 & 0x3F;
          v116 -= v117;
        }

        while (v116);
      }

      if ((v113 & 1) == 0 && v89 - v77 + (v88 << 6) + v111 <= 0x50)
      {
        v119 = v111;
        do
        {
          v120 = 64 - v89;
          if (64 - v89 >= v119)
          {
            v120 = v119;
          }

          v121 = v120 + v89;
          v88 += v121 >> 6;
          v89 = v121 & 0x3F;
          v119 -= v120;
        }

        while (v119);
      }

      ++v110;
    }

    while (v110 != 7);
  }

  return v48 & 1;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(unint64_t result, _DWORD *a2, int a3)
{
  v3 = (result & 0xFFFFFFFFFFFFFFF8);
  v4 = 8 * (result & 7);
  if (a3 == 4)
  {
    v5 = (v4 + 8) >> 6;
    v6 = (v4 + 8) & 0x38;
    *a2 = (*v3 >> v4) << 8;
    v7 = v6 - v4;
    if (v6 - v4 + ((v4 + 8) & 0x40uLL) - 73 >= 0xFFFFFFFFFFFFFFAFLL)
    {
      v21 = v3[v5];
      v5 += (v6 + 8) >> 6;
      v22 = v21 >> v6;
      v6 = (v6 + 8) & 0x38;
      v8 = v22 << 8;
      v7 = v6 - v4;
    }

    else
    {
      v8 = 0;
    }

    a2[1] = v8;
    if (v7 + (v5 << 6) - 73 > 0xFFFFFFFFFFFFFFAELL)
    {
      v23 = (v6 + 8) & 0x38;
      v24 = v5 + ((v6 + 8) >> 6);
      a2[2] = (v3[v5] >> v6) << 8;
      if (v23 - v4 + (v24 << 6) - 73 >= 0xFFFFFFFFFFFFFFAFLL)
      {
        v27 = 0;
        v28 = 0;
        v29 = 8;
        do
        {
          v30 = 64 - v23;
          if (64 - v23 >= v29)
          {
            v30 = v29;
          }

          result = ((v3[v24] >> v23) & ~(-1 << v30)) << v28;
          v27 |= result;
          v28 += v30;
          v31 = v30 + v23;
          v24 += v31 >> 6;
          v23 = v31 & 0x3F;
          v29 -= v30;
        }

        while (v29);
        a2[3] = v27 << 8;
        if (v23 - v4 + (v24 << 6) - 73 >= 0xFFFFFFFFFFFFFFAFLL)
        {
          v32 = 0;
          v33 = 0;
          v34 = 8;
          do
          {
            v35 = 64 - v23;
            if (64 - v23 >= v34)
            {
              v35 = v34;
            }

            result = ((v3[v24] >> v23) & ~(-1 << v35)) << v33;
            v32 |= result;
            v33 += v35;
            v36 = v35 + v23;
            v24 += v36 >> 6;
            v23 = v36 & 0x3F;
            v34 -= v35;
          }

          while (v34);
          a2[4] = v32 << 8;
          if (v23 - v4 + (v24 << 6) - 73 >= 0xFFFFFFFFFFFFFFAFLL)
          {
            v37 = 0;
            v38 = 0;
            v39 = 8;
            do
            {
              v40 = 64 - v23;
              if (64 - v23 >= v39)
              {
                v40 = v39;
              }

              result = ((v3[v24] >> v23) & ~(-1 << v40)) << v38;
              v37 |= result;
              v38 += v40;
              v41 = v40 + v23;
              v24 += v41 >> 6;
              v23 = v41 & 0x3F;
              v39 -= v40;
            }

            while (v39);
            a2[5] = v37 << 8;
            if (v23 - v4 + (v24 << 6) - 73 >= 0xFFFFFFFFFFFFFFAFLL)
            {
              v42 = 0;
              v43 = 0;
              v44 = 8;
              do
              {
                v45 = 64 - v23;
                if (64 - v23 >= v44)
                {
                  v45 = v44;
                }

                result = ((v3[v24] >> v23) & ~(-1 << v45)) << v43;
                v42 |= result;
                v43 += v45;
                v46 = v45 + v23;
                v24 += v46 >> 6;
                v23 = v46 & 0x3F;
                v44 -= v45;
              }

              while (v44);
              v47 = v23 - v4 + (v24 << 6) - 73;
              a2[6] = v42 << 8;
              v26 = a2 + 7;
              if (v47 >= 0xFFFFFFFFFFFFFFAFLL)
              {
                v48 = 0;
                v49 = 0;
                v50 = 8;
                do
                {
                  v51 = 64 - v23;
                  if (64 - v23 >= v50)
                  {
                    v51 = v50;
                  }

                  result = ((v3[v24] >> v23) & ~(-1 << v51)) << v49;
                  v48 |= result;
                  v49 += v51;
                  v52 = v51 + v23;
                  v24 += v52 >> 6;
                  v23 = v52 & 0x3F;
                  v50 -= v51;
                }

                while (v50);
                v25 = v48 << 8;
              }

              else
              {
                v25 = 0;
              }

              goto LABEL_29;
            }

LABEL_28:
            v25 = 0;
            a2[6] = 0;
            v26 = a2 + 7;
LABEL_29:
            *v26 = v25;
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
  v12 = ((a3 & 0xFFFFFFFD) == 1) << 15;
  result = 8 * (result & 7);
  do
  {
    if (result - v4 + (v10 << 6) - 73 >= 0xFFFFFFFFFFFFFFAFLL)
    {
      v13 = 0;
      v14 = 0;
      v15 = 8;
      do
      {
        v16 = 64 - result;
        if (64 - result >= v15)
        {
          v16 = v15;
        }

        v13 |= ((v3[v10] >> result) & ~(-1 << v16)) << v14;
        v14 += v16;
        v17 = v16 + result;
        v10 += v17 >> 6;
        result = v17 & 0x3F;
        v15 -= v16;
      }

      while (v15);
    }

    else
    {
      v13 = 0;
    }

    v18 = v13 << 8;
    if (v18 != 0x8000 || v11 != 1)
    {
      v20 = v18 - (v13 & 1) + 128;
      if (v18 == 65280)
      {
        v20 = 0xFFFF;
      }

      if (v18)
      {
        v18 = v20;
      }

      else
      {
        v18 = 0;
      }
    }

    a2[v9++] = v18 ^ v12;
  }

  while (v9 != 8);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(uint64_t a1, _DWORD *a2, int a3)
{
  v150 = *MEMORY[0x29EDCA608];
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = v4 | 4;
  v6 = (*(a1 & 0xFFFFFFFFFFFFFFF8) >> v4) & 0xFLL;
  v7 = &kDQuadParamTable[10 * v6];
  v8 = v7[484];
  LODWORD(v7) = v7[485];
  v9 = v7 != 0;
  v10 = v7 + 2;
  v11 = v8 + 2;
  if (v11 >= 0x10)
  {
    v12 = 16;
  }

  else
  {
    v12 = v11;
  }

  LODWORD(v13) = 16 * v9;
  if (v13 >= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = v13;
  }

  v14 = v13;
  v15 = 16 - v12;
  if (v11)
  {
    if ((v12 - v4 + v5) <= 0x50)
    {
      v17 = 0;
      v16 = 0;
      v22 = 0;
      v23 = v12;
      do
      {
        v24 = 64 - v5;
        if (64 - v5 >= v23)
        {
          v24 = v23;
        }

        v17 |= ((*(v3 + 8 * v16) >> v5) & ~(-1 << v24)) << v22;
        v22 += v24;
        v25 = v24 + v5;
        v16 += v25 >> 6;
        v5 = v25 & 0x3F;
        v23 -= v24;
      }

      while (v23);
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    v18 = 73 - v12;
    v19 = (v17 << v15);
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_11:
    LOBYTE(v13) = 0;
    v20 = 0;
    v21 = 0;
    v146 = 0;
    v147 = 0;
    v149 = 0;
    v148 = 0;
    goto LABEL_66;
  }

  v16 = 0;
  v18 = 73;
  v19 = 0;
  if (!v13)
  {
    goto LABEL_11;
  }

LABEL_17:
  if ((v5 - v4 + (v16 << 6) + 3) <= 0x50)
  {
    LODWORD(v20) = 0;
    v26 = 0;
    v27 = 3;
    do
    {
      v28 = 64 - v5;
      if (64 - v5 >= v27)
      {
        v28 = v27;
      }

      v20 = v20 | (((*(v3 + 8 * v16) >> v5) & ~(-1 << v28)) << v26);
      v26 += v28;
      v29 = v28 + v5;
      v16 += v29 >> 6;
      v5 = v29 & 0x3F;
      v27 -= v28;
    }

    while (v27);
  }

  else
  {
    v20 = 0;
  }

  v30 = (147 * v18) >> 10;
  v31 = v13 - v4;
  v32 = (v5 | (v16 << 6)) + -7 * v30 + v18;
  v33 = v32 & 0x3F;
  v34 = v31 + v33 + (v32 & 0xFFFFFFFFFFFFFFC0);
  v146 = 0;
  v147 = 0;
  v149 = 0;
  v148 = 0;
  v35 = v32 >> 6;
  if (v34 <= 0x50)
  {
    v21 = 0;
    v36 = 0;
    v37 = v13;
    do
    {
      v38 = 64 - v33;
      if (64 - v33 >= v37)
      {
        v38 = v37;
      }

      v21 |= ((*(v3 + 8 * v35) >> v33) & ~(-1 << v38)) << v36;
      v36 += v38;
      v39 = v38 + v33;
      v35 += v39 >> 6;
      v33 = v39 & 0x3F;
      v37 -= v38;
    }

    while (v37);
  }

  else
  {
    v21 = 0;
  }

  LODWORD(v146) = v21;
  v40 = v33 | (v35 << 6);
  v41 = v30 - v13;
  v42 = v40 + v41;
  v43 = (v40 + v41) & 0x3F;
  v44 = (v40 + v41) >> 6;
  if (v31 + v43 + (v42 & 0xFFFFFFFFFFFFFFC0) <= 0x50)
  {
    v45 = 0;
    v46 = 0;
    v47 = v13;
    do
    {
      v48 = 64 - v43;
      if (64 - v43 >= v47)
      {
        v48 = v47;
      }

      v45 |= ((*(v3 + 8 * v44) >> v43) & ~(-1 << v48)) << v46;
      v46 += v48;
      v49 = v48 + v43;
      v44 += v49 >> 6;
      v43 = v49 & 0x3F;
      v47 -= v48;
    }

    while (v47);
  }

  else
  {
    v45 = 0;
  }

  HIDWORD(v146) = v45;
  v50 = (v43 | (v44 << 6)) + v41;
  v51 = v50 & 0x3F;
  v52 = v50 >> 6;
  if (v31 + v51 + (v50 & 0xFFFFFFFFFFFFFFC0) <= 0x50)
  {
    v53 = 0;
    v54 = 0;
    v55 = v13;
    do
    {
      v56 = 64 - v51;
      if (64 - v51 >= v55)
      {
        v56 = v55;
      }

      v53 |= ((*(v3 + 8 * v52) >> v51) & ~(-1 << v56)) << v54;
      v54 += v56;
      v57 = v56 + v51;
      v52 += v57 >> 6;
      v51 = v57 & 0x3F;
      v55 -= v56;
    }

    while (v55);
  }

  else
  {
    v53 = 0;
  }

  LODWORD(v147) = v53;
  v58 = (v51 | (v52 << 6)) + v41;
  v59 = v58 & 0x3F;
  v60 = v58 >> 6;
  if (v31 + v59 + (v58 & 0xFFFFFFFFFFFFFFC0) <= 0x50)
  {
    v61 = 0;
    v62 = 0;
    v63 = v13;
    do
    {
      v64 = 64 - v59;
      if (64 - v59 >= v63)
      {
        v64 = v63;
      }

      v61 |= ((*(v3 + 8 * v60) >> v59) & ~(-1 << v64)) << v62;
      v62 += v64;
      v65 = v64 + v59;
      v60 += v65 >> 6;
      v59 = v65 & 0x3F;
      v63 -= v64;
    }

    while (v63);
  }

  else
  {
    v61 = 0;
  }

  HIDWORD(v147) = v61;
  v66 = (v59 | (v60 << 6)) + v41;
  v67 = v66 & 0x3F;
  v68 = v66 >> 6;
  if (v31 + v67 + (v66 & 0xFFFFFFFFFFFFFFC0) <= 0x50)
  {
    v69 = 0;
    v70 = 0;
    v71 = v13;
    do
    {
      v72 = 64 - v67;
      if (64 - v67 >= v71)
      {
        v72 = v71;
      }

      v69 |= ((*(v3 + 8 * v68) >> v67) & ~(-1 << v72)) << v70;
      v70 += v72;
      v73 = v72 + v67;
      v68 += v73 >> 6;
      v67 = v73 & 0x3F;
      v71 -= v72;
    }

    while (v71);
  }

  else
  {
    v69 = 0;
  }

  LODWORD(v148) = v69;
  v74 = (v67 | (v68 << 6)) + v41;
  v75 = v74 & 0x3F;
  v76 = v74 >> 6;
  if (v31 + v75 + (v74 & 0xFFFFFFFFFFFFFFC0) <= 0x50)
  {
    v77 = 0;
    v78 = 0;
    v79 = v13;
    do
    {
      v80 = 64 - v75;
      if (64 - v75 >= v79)
      {
        v80 = v79;
      }

      v77 |= ((*(v3 + 8 * v76) >> v75) & ~(-1 << v80)) << v78;
      v78 += v80;
      v81 = v80 + v75;
      v76 += v81 >> 6;
      v75 = v81 & 0x3F;
      v79 -= v80;
    }

    while (v79);
  }

  else
  {
    v77 = 0;
  }

  HIDWORD(v148) = v77;
  v82 = (v75 | (v76 << 6)) + v41;
  v83 = v82 & 0x3F;
  if (v31 + v83 + (v82 & 0xFFFFFFFFFFFFFFC0) <= 0x50)
  {
    v84 = 0;
    v85 = 0;
    v86 = v82 >> 6;
    v87 = v13;
    do
    {
      v88 = 64 - v83;
      if (64 - v83 >= v87)
      {
        v88 = v87;
      }

      v84 |= ((*(v3 + 8 * v86) >> v83) & ~(-1 << v88)) << v85;
      v85 += v88;
      v89 = v88 + v83;
      v86 += v89 >> 6;
      v83 = v89 & 0x3F;
      v87 -= v88;
    }

    while (v87);
  }

  else
  {
    v84 = 0;
  }

  v149 = v84;
LABEL_66:
  v90 = *&kDQuadParamTable[10 * v6 + 482];
  v91 = v90 >> v13;
  if (v90 >> v13 <= 1)
  {
    v91 = 1;
  }

  v92 = v91 >> 1;
  v93 = (1 << v15) >> 1;
  if (v91 >> 1 >= v93)
  {
    v94 = v93;
  }

  else
  {
    v94 = v91 >> 1;
  }

  result = (0x8000 - v19) / v91;
  v96 = v90 + v19;
  v97 = -1 << v13;
  if (!v19)
  {
    v94 = 0;
  }

  v98 = v19 == 0x8000;
  if (!v14)
  {
    v101 = 0;
    v100 = 0;
    v99 = v91 > 0x8000 - v19;
    goto LABEL_84;
  }

  if (!v20)
  {
    v101 = 0;
    v100 = v94;
    v99 = v19 == 0x8000;
    goto LABEL_84;
  }

  v99 = result == v21;
  if (v19 | v21)
  {
    if (v96 >= 0x10000 && (v97 ^ v21) == 0xFFFFFFFFFFFFFFFFLL)
    {
      v101 = 1;
      v100 = 0xFFFFLL;
      goto LABEL_84;
    }

    v100 = v92 + v91 * v21;
  }

  else
  {
    v100 = 0;
  }

  v101 = 1;
LABEL_84:
  v102 = a3 & 0xFFFFFFFD;
  v103 = v100 + v19;
  if (a3 == 4)
  {
    v104 = v103 & 0xFFFFFFFFFFFFFE00;
    if ((v103 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
    {
      v103 = 31743;
    }

    else if (v104 == 32256)
    {
      v103 = 0x8000;
    }

    else if (v104 == 64512)
    {
      v103 = 64511;
    }
  }

  if (v103 >= 0xFFFF)
  {
    LODWORD(v103) = 0xFFFF;
  }

  if (v99)
  {
    v105 = 0;
  }

  else
  {
    v105 = v103 ^ 0x8000;
  }

  if (v102 != 1)
  {
    v105 = v103;
  }

  *a2 = v105;
  if (v14)
  {
    if (v20 == 1)
    {
      v106 = v94;
      v107 = v19 == 0x8000;
    }

    else
    {
      v108 = *(&v146 | (4 * v101));
      v107 = result == v108;
      if (v19 | v108)
      {
        if (v96 >= 0x10000 && (v97 ^ v108) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v106 = 0xFFFFLL;
        }

        else
        {
          v106 = v92 + v91 * v108;
        }
      }

      else
      {
        v106 = 0;
      }

      ++v101;
    }
  }

  else
  {
    v106 = 0;
    v107 = v91 > 0x8000 - v19;
  }

  v109 = v106 + v19;
  if (a3 == 4)
  {
    v110 = v109 & 0xFFFFFFFFFFFFFE00;
    if ((v109 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
    {
      v109 = 31743;
    }

    else if (v110 == 32256)
    {
      v109 = 0x8000;
    }

    else if (v110 == 64512)
    {
      v109 = 64511;
    }
  }

  if (v109 >= 0xFFFF)
  {
    LODWORD(v109) = 0xFFFF;
  }

  if (v107)
  {
    v111 = 0;
  }

  else
  {
    v111 = v109 ^ 0x8000;
  }

  if (v102 != 1)
  {
    v111 = v109;
  }

  a2[1] = v111;
  if (v14)
  {
    if (v20 == 2)
    {
      v112 = v94;
      v113 = v19 == 0x8000;
    }

    else
    {
      v114 = *(&v146 + v101);
      v113 = result == v114;
      if (v19 | v114)
      {
        if (v96 >= 0x10000 && (v97 ^ v114) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v112 = 0xFFFFLL;
        }

        else
        {
          v112 = v92 + v91 * v114;
        }
      }

      else
      {
        v112 = 0;
      }

      ++v101;
    }
  }

  else
  {
    v112 = 0;
    v113 = v91 > 0x8000 - v19;
  }

  v115 = v112 + v19;
  if (a3 == 4)
  {
    v116 = v115 & 0xFFFFFFFFFFFFFE00;
    if ((v115 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
    {
      v115 = 31743;
    }

    else if (v116 == 32256)
    {
      v115 = 0x8000;
    }

    else if (v116 == 64512)
    {
      v115 = 64511;
    }
  }

  if (v115 >= 0xFFFF)
  {
    LODWORD(v115) = 0xFFFF;
  }

  if (v113)
  {
    v117 = 0;
  }

  else
  {
    v117 = v115 ^ 0x8000;
  }

  if (v102 != 1)
  {
    v117 = v115;
  }

  a2[2] = v117;
  if (v14)
  {
    if (v20 == 3)
    {
      v118 = v94;
      v119 = v19 == 0x8000;
    }

    else
    {
      v120 = *(&v146 + v101);
      v119 = result == v120;
      if (v19 | v120)
      {
        if (v96 >= 0x10000 && (v97 ^ v120) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v118 = 0xFFFFLL;
        }

        else
        {
          v118 = v92 + v91 * v120;
        }
      }

      else
      {
        v118 = 0;
      }

      ++v101;
    }
  }

  else
  {
    v118 = 0;
    v119 = v91 > 0x8000 - v19;
  }

  v121 = v118 + v19;
  if (a3 == 4)
  {
    v122 = v121 & 0xFFFFFFFFFFFFFE00;
    if ((v121 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
    {
      v121 = 31743;
    }

    else if (v122 == 32256)
    {
      v121 = 0x8000;
    }

    else if (v122 == 64512)
    {
      v121 = 64511;
    }
  }

  if (v121 >= 0xFFFF)
  {
    LODWORD(v121) = 0xFFFF;
  }

  if (v119)
  {
    v123 = 0;
  }

  else
  {
    v123 = v121 ^ 0x8000;
  }

  if (v102 != 1)
  {
    v123 = v121;
  }

  a2[3] = v123;
  if (v14)
  {
    if (v20 == 4)
    {
      v124 = v94;
      v125 = v19 == 0x8000;
    }

    else
    {
      v126 = *(&v146 + v101);
      v125 = result == v126;
      if (v19 | v126)
      {
        if (v96 >= 0x10000 && (v97 ^ v126) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v124 = 0xFFFFLL;
        }

        else
        {
          v124 = v92 + v91 * v126;
        }
      }

      else
      {
        v124 = 0;
      }

      ++v101;
    }
  }

  else
  {
    v124 = 0;
    v125 = v91 > 0x8000 - v19;
  }

  v127 = v124 + v19;
  if (a3 == 4)
  {
    v128 = v127 & 0xFFFFFFFFFFFFFE00;
    if ((v127 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
    {
      v127 = 31743;
    }

    else if (v128 == 32256)
    {
      v127 = 0x8000;
    }

    else if (v128 == 64512)
    {
      v127 = 64511;
    }
  }

  if (v127 >= 0xFFFF)
  {
    LODWORD(v127) = 0xFFFF;
  }

  if (v125)
  {
    v129 = 0;
  }

  else
  {
    v129 = v127 ^ 0x8000;
  }

  if (v102 != 1)
  {
    v129 = v127;
  }

  a2[4] = v129;
  if (v14)
  {
    if (v20 == 5)
    {
      v130 = v94;
      v131 = v19 == 0x8000;
    }

    else
    {
      v132 = *(&v146 + v101);
      v131 = result == v132;
      if (v19 | v132)
      {
        if (v96 >= 0x10000 && (v97 ^ v132) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v130 = 0xFFFFLL;
        }

        else
        {
          v130 = v92 + v91 * v132;
        }
      }

      else
      {
        v130 = 0;
      }

      ++v101;
    }
  }

  else
  {
    v130 = 0;
    v131 = v91 > 0x8000 - v19;
  }

  v133 = v130 + v19;
  if (a3 == 4)
  {
    v134 = v133 & 0xFFFFFFFFFFFFFE00;
    if ((v133 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
    {
      v133 = 31743;
    }

    else if (v134 == 32256)
    {
      v133 = 0x8000;
    }

    else if (v134 == 64512)
    {
      v133 = 64511;
    }
  }

  if (v133 >= 0xFFFF)
  {
    LODWORD(v133) = 0xFFFF;
  }

  if (v131)
  {
    v135 = 0;
  }

  else
  {
    v135 = v133 ^ 0x8000;
  }

  if (v102 != 1)
  {
    v135 = v133;
  }

  a2[5] = v135;
  if (v14)
  {
    if (v20 == 6)
    {
      v136 = v94;
      v137 = v19 == 0x8000;
    }

    else
    {
      v138 = *(&v146 + v101);
      v137 = result == v138;
      if (v19 | v138)
      {
        if (v96 >= 0x10000 && (v97 ^ v138) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v136 = 0xFFFFLL;
        }

        else
        {
          v136 = v92 + v91 * v138;
        }
      }

      else
      {
        v136 = 0;
      }

      ++v101;
    }
  }

  else
  {
    v136 = 0;
    v137 = v91 > 0x8000 - v19;
  }

  v139 = v136 + v19;
  if (a3 == 4)
  {
    v140 = v139 & 0xFFFFFFFFFFFFFE00;
    if ((v139 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
    {
      v139 = 31743;
    }

    else if (v140 == 32256)
    {
      v139 = 0x8000;
    }

    else if (v140 == 64512)
    {
      v139 = 64511;
    }
  }

  if (v139 >= 0xFFFF)
  {
    LODWORD(v139) = 0xFFFF;
  }

  if (v137)
  {
    v141 = 0;
  }

  else
  {
    v141 = v139 ^ 0x8000;
  }

  if (v102 != 1)
  {
    v141 = v139;
  }

  a2[6] = v141;
  if (v14)
  {
    if (v20 != 7)
    {
      v142 = *(&v146 + v101);
      v98 = result == v142;
      if (v19 | v142)
      {
        if (v96 >= 0x10000 && (v97 ^ v142) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v94 = 0xFFFFLL;
        }

        else
        {
          v94 = v92 + v91 * v142;
        }
      }

      else
      {
        v94 = 0;
      }
    }
  }

  else
  {
    v94 = 0;
    v98 = v91 > 0x8000 - v19;
  }

  v143 = v94 + v19;
  if (a3 == 4)
  {
    v144 = v143 & 0xFFFFFFFFFFFFFE00;
    if ((v143 & 0xFFFFFFFFFFFFFE00) == 0x7C00)
    {
      v143 = 31743;
    }

    else if (v144 == 32256)
    {
      v143 = 0x8000;
    }

    else if (v144 == 64512)
    {
      v143 = 64511;
    }
  }

  if (v143 >= 0xFFFF)
  {
    LODWORD(v143) = 0xFFFF;
  }

  v145 = v143 ^ 0x8000;
  if (v98)
  {
    v145 = 0;
  }

  if (v102 == 1)
  {
    LODWORD(v143) = v145;
  }

  a2[7] = v143;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(int16x8_t *a1, uint64_t a2, unint64_t a3, unsigned int a4, int a5, double a6, double a7, double a8, int8x8_t a9)
{
  v230 = *MEMORY[0x29EDCA608];
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
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(a3, &v226, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(a3, &v226, a5);
    }

    v224 = v226;
    v222 = v227;
    v221 = v228;
    v218 = v229;
    v19 = a3 + 10;
    if ((v9 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v19, &v226, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v19, &v226, a5);
    }

    v220 = v226;
    v225 = v227;
    v219 = v228;
    v223 = v229;
    v20 = a3 + 20;
    if ((v9 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v20, &v226, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v20, &v226, a5);
    }

    v217 = v226;
    v216 = v227;
    v215 = v228;
    v214 = v229;
    v21 = a3 + 30;
    if ((v9 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v21, &v226, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v21, &v226, a5);
    }

    v23.i64[0] = v216;
    v22.i64[0] = v217;
    v23.i64[1] = v214;
    v24.i64[0] = v222;
    v24.i64[1] = v218;
    v22.i64[1] = v215;
    v25.i64[0] = v224;
    v25.i64[1] = v221;
    v26 = vuzp1q_s16(v24, v23);
    v27 = vuzp1q_s16(v25, v22);
    v28.i64[0] = v226;
    v22.i64[0] = v227;
    v23.i64[0] = v228;
    v29 = v229;
    *a1 = v27;
    *(a1 + a2) = v26;
    v30 = (a1 + a2 + a2);
    v28.i64[1] = v23.i64[0];
    v26.i64[0] = v220;
    v26.i64[1] = v219;
    *v30 = vuzp1q_s16(v26, v28);
    v22.i64[1] = v29;
    v26.i64[0] = v225;
    v26.i64[1] = v223;
    *(v30 + a2) = vuzp1q_s16(v26, v22);
    return 40;
  }

  if (a4 == 63)
  {
    v31 = *a3;
    v32 = *(a3 + 16);
    v33 = *(a3 + 32);
    v34 = *(a3 + 48);
    *a1 = vuzp1q_s32(*a3, v33);
    *(a1 + a2) = vuzp2q_s32(v31, v33);
    v35 = (a1 + 2 * a2);
    *v35 = vuzp1q_s32(v32, v34);
    *(v35 + a2) = vuzp2q_s32(v32, v34);
    return 64;
  }

  if (a4 == 1)
  {
    v18 = vld1q_dup_s16(a3);
    *a1 = v18;
    *(a1 + a2) = v18;
    *(a1 + 2 * a2) = v18;
    *(a1 + 3 * a2) = v18;
    return 2;
  }

  v37 = 8 * (a3 & 7);
  v38 = a3 & 0xFFFFFFFFFFFFFFF8;
  v39 = v37 + 22;
  v40 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v37;
  if (v37 >= 0x2B)
  {
    v40 |= *(v38 + 8) << (-8 * (a3 & 7u));
  }

  v41 = (8 * (a3 & 7)) | 0x140;
  v42 = ((a4 >> 6) | (4 * v40)) & 0xF;
  v43 = vdupq_n_s16(v42);
  a9.i32[0] = v42;
  v44.i64[0] = 0x3000300030003;
  v44.i64[1] = 0x3000300030003;
  v45 = vbicq_s8(vdupq_n_s16(((v40 >> 2) & 0xF) + 1), vceqq_s16((*&v43 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v44));
  v46 = vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(vand_s8(a9, 0x4000400040004), 0))));
  v47.i64[0] = 0x202020202020202;
  v47.i64[1] = 0x202020202020202;
  v48 = vandq_s8(v46, v47);
  if (vmaxvq_s8(v48) < 1)
  {
    v56 = 0;
    v79.i64[0] = -1;
    v79.i64[1] = -1;
    v75 = v45;
    v74 = v45;
    v73 = v45;
    v78.i64[0] = -1;
    v78.i64[1] = -1;
    v72 = v45;
    v77.i64[0] = -1;
    v77.i64[1] = -1;
    v76.i64[0] = -1;
    v76.i64[1] = -1;
  }

  else
  {
    v49 = vmovl_u8(*&vpaddq_s8(v48, v48));
    v50 = vmovl_u16(*&vpaddq_s16(v49, v49));
    v51 = vpaddq_s32(v50, v50).u64[0];
    v52.i64[0] = v51;
    v52.i64[1] = HIDWORD(v51);
    v53 = v52;
    v54 = vaddvq_s64(v52);
    v55 = v54 <= 0x80 && v41 >= v54 + v39;
    v56 = !v55;
    v57 = 0uLL;
    if (v55)
    {
      v58 = vaddq_s64(vzip1q_s64(0, v53), vdupq_n_s64(v39 & 0x3E));
      v59 = (v38 + ((v39 >> 3) & 8));
      v57 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v59, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v58)), vshlq_u64(vdupq_lane_s64(v59->i64[0], 0), vnegq_s64(v58)));
      if (v54 + (v39 & 0x3E) >= 0x81)
      {
        v57 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v59[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v58)), vshlq_u64(vdupq_laneq_s64(v59[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v58))), v57);
      }

      v39 += v54;
    }

    v60 = vzip1_s32(*v50.i8, *&vextq_s8(v50, v50, 8uLL));
    v61.i64[0] = v60.u32[0];
    v61.i64[1] = v60.u32[1];
    v62 = vshlq_u64(v57, vnegq_s64(v61));
    v63 = vuzp1q_s32(vzip1q_s64(v57, v62), vzip2q_s64(v57, v62));
    v64 = vshlq_u32(v63, vnegq_s32((*&v49 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v65 = vuzp1q_s16(vzip1q_s32(v63, v64), vzip2q_s32(v63, v64));
    v66 = vzip1q_s16(v65, vshlq_u16(v65, vnegq_s16(vmovl_u8(vuzp1_s8(*v48.i8, *v43.i8)))));
    *v66.i8 = vmovn_s16(v66);
    v63.i64[0] = 0x101010101010101;
    v63.i64[1] = 0x101010101010101;
    v67 = vshlq_s8(v63, v48);
    v63.i64[0] = -1;
    v63.i64[1] = -1;
    v67.i32[0] = vandq_s8(vaddq_s8(v67, v63), v66).u32[0];
    v68 = vdupq_n_s16(v67.i8[0]);
    v69 = vdupq_n_s16(v67.i8[1]);
    v70 = vdupq_n_s16(v67.i8[2]);
    v71 = vdupq_n_s16(v67.i8[3]);
    v72 = vsubq_s16(v45, v68);
    v73 = vsubq_s16(v45, v69);
    v74 = vsubq_s16(v45, v70);
    v75 = vsubq_s16(v45, v71);
    v76 = vceqzq_s16(v68);
    v77 = vceqzq_s16(v69);
    v78 = vceqzq_s16(v70);
    v79 = vceqzq_s16(v71);
  }

  v80.i64[0] = 0x7000700070007;
  v80.i64[1] = 0x7000700070007;
  v81 = 0uLL;
  v82 = vandq_s8(vextq_s8(vcgtq_u16(v43, v80), 0, 0xEuLL), v45);
  v83 = vmovl_u16(*&vpaddq_s16(v82, v82));
  v84 = vpaddq_s32(v83, v83).u64[0];
  v85.i64[0] = v84;
  v85.i64[1] = HIDWORD(v84);
  v86 = v85;
  v87 = vaddvq_s64(v85);
  if (v87 <= 0x80 && v41 >= v87 + v39)
  {
    v89 = vaddq_s64(vzip1q_s64(0, v86), vdupq_n_s64(v39 & 0x3F));
    v90 = (v38 + 8 * (v39 >> 6));
    v81 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v90, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v89)), vshlq_u64(vdupq_lane_s64(v90->i64[0], 0), vnegq_s64(v89)));
    if (v87 + (v39 & 0x3F) >= 0x81)
    {
      v81 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v90[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v89)), vshlq_u64(vdupq_laneq_s64(v90[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v89))), v81);
    }

    v39 += v87;
  }

  else
  {
    v56 = 1;
  }

  v91 = v42 & 3;
  if (v91 != 2)
  {
    LODWORD(v95) = 0;
    LODWORD(v93) = 0;
    v96 = v39;
    goto LABEL_58;
  }

  v92 = v39 + 8;
  if (v41 < v39 + 8)
  {
    LODWORD(v93) = 0;
    v92 = v39;
LABEL_57:
    LODWORD(v95) = 0;
    v56 = 1;
    v96 = v92;
    goto LABEL_58;
  }

  v97 = (v38 + 8 * (v39 >> 6));
  v93 = *v97 >> v39;
  if ((v39 & 0x3F) >= 0x39)
  {
    v93 |= v97[1] << -(v39 & 0x3F);
  }

  LODWORD(v93) = v93;
  v96 = v39 + 16;
  if (v41 < v39 + 16)
  {
    goto LABEL_57;
  }

  v94 = (v38 + 8 * (v92 >> 6));
  v95 = *v94 >> v92;
  if ((v92 & 0x3F) >= 0x39)
  {
    v95 |= v94[1] << -(v92 & 0x3F);
  }

  LODWORD(v95) = v95;
LABEL_58:
  v98 = 0uLL;
  v99 = vextq_s8(0, v72, 0xEuLL);
  v100 = vmovl_u16(*&vpaddq_s16(v99, v99));
  v101 = vpaddq_s32(v100, v100).u64[0];
  v102.i64[0] = v101;
  v102.i64[1] = HIDWORD(v101);
  v103 = v102;
  v104 = vaddvq_s64(v102);
  v105 = v104 + v96;
  if (v104 <= 0x80 && v41 >= v105)
  {
    v108 = v96 & 0x3F;
    v109 = vaddq_s64(vzip1q_s64(0, v103), vdupq_n_s64(v108));
    v110 = (v38 + 8 * (v96 >> 6));
    v107 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v110, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v109)), vshlq_u64(vdupq_lane_s64(v110->i64[0], 0), vnegq_s64(v109)));
    if (v104 + v108 >= 0x81)
    {
      v107 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v110[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v109)), vshlq_u64(vdupq_laneq_s64(v110[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v109))), v107);
    }

    v96 = v105;
  }

  else
  {
    v56 = 1;
    v107 = 0uLL;
  }

  v111.i64[0] = 0xFFFF0000FFFFLL;
  v111.i64[1] = 0xFFFF0000FFFFLL;
  v112 = vmovl_u16(*&vpaddq_s16(v73, v73));
  v113 = vpaddq_s32(v112, v112).u64[0];
  v114.i64[0] = v113;
  v114.i64[1] = HIDWORD(v113);
  v115 = v114;
  v116 = vaddvq_s64(v114);
  if (v116 >= 0x81)
  {
    v56 = 1;
  }

  else
  {
    v117 = vzip1_s32(*v112.i8, *&vextq_s8(v112, v112, 8uLL));
    v118.i64[0] = v117.u32[0];
    v118.i64[1] = v117.u32[1];
    v119 = v118;
    v120 = vandq_s8(v73, v111);
    v121 = v116 + v96;
    if (v41 >= v116 + v96)
    {
      v122 = v96 & 0x3F;
      v123 = vaddq_s64(vzip1q_s64(0, v115), vdupq_n_s64(v122));
      v124 = (v38 + 8 * (v96 >> 6));
      v98 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v124, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v124->i64[0], 0), vnegq_s64(v123)));
      if (v116 + v122 >= 0x81)
      {
        v98 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v124[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v124[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v98);
      }

      v96 = v121;
    }

    else
    {
      v56 = 1;
    }

    v125 = vshlq_u64(v98, vnegq_s64(v119));
    v126 = vuzp1q_s32(vzip1q_s64(v98, v125), vzip2q_s64(v98, v125));
    v127 = vshlq_u32(v126, vnegq_s32(v120));
    v98 = vuzp1q_s16(vzip1q_s32(v126, v127), vzip2q_s32(v126, v127));
  }

  v128 = vmovl_u16(*&vpaddq_s16(v74, v74));
  v129 = vpaddq_s32(v128, v128).u64[0];
  v130.i64[0] = v129;
  v130.i64[1] = HIDWORD(v129);
  v131 = v130;
  v132 = vaddvq_s64(v130);
  if (v132 >= 0x81)
  {
    v56 = 1;
    v139 = 0uLL;
  }

  else
  {
    v133 = vzip1_s32(*v128.i8, *&vextq_s8(v128, v128, 8uLL));
    v134.i64[0] = v133.u32[0];
    v134.i64[1] = v133.u32[1];
    v135 = v134;
    v136 = vandq_s8(v74, v111);
    v137 = v132 + v96;
    if (v41 >= v132 + v96)
    {
      v140 = v96 & 0x3F;
      v141 = vaddq_s64(vzip1q_s64(0, v131), vdupq_n_s64(v140));
      v142 = (v38 + 8 * (v96 >> 6));
      v138 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v142, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v141)), vshlq_u64(vdupq_lane_s64(v142->i64[0], 0), vnegq_s64(v141)));
      if (v132 + v140 >= 0x81)
      {
        v138 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v142[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v141)), vshlq_u64(vdupq_laneq_s64(v142[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v141))), v138);
      }

      v96 = v137;
    }

    else
    {
      v138 = 0uLL;
      v56 = 1;
    }

    v143 = vshlq_u64(v138, vnegq_s64(v135));
    v144 = vuzp1q_s32(vzip1q_s64(v138, v143), vzip2q_s64(v138, v143));
    v145 = vshlq_u32(v144, vnegq_s32(v136));
    v139 = vuzp1q_s16(vzip1q_s32(v144, v145), vzip2q_s32(v144, v145));
  }

  v146 = vmovl_u16(*&vpaddq_s16(v75, v75));
  v147 = vpaddq_s32(v146, v146).u64[0];
  v148.i64[0] = v147;
  v148.i64[1] = HIDWORD(v147);
  v149 = v148;
  v150 = vaddvq_s64(v148);
  if (v150 >= 0x81 || v41 < v150 + v96)
  {
    goto LABEL_88;
  }

  v151 = vaddq_s64(vzip1q_s64(0, v149), vdupq_n_s64(v96 & 0x3F));
  v152 = (v38 + 8 * (v96 >> 6));
  v153 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v152, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v151)), vshlq_u64(vdupq_lane_s64(v152->i64[0], 0), vnegq_s64(v151)));
  if (v150 + (v96 & 0x3F) >= 0x81)
  {
    v153 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v152[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v151)), vshlq_u64(vdupq_laneq_s64(v152[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v151))), v153);
  }

  if ((v56 & 1) != 0 || (v14 = (a4 & 0x3F) + 1, 8 * ((a3 & 7) + v14) - (v150 + v96) >= 9))
  {
LABEL_88:
    v154 = 0;
    v155 = 0;
    v156 = 8 * (&v226 & 7);
    v157 = 16;
    do
    {
      v158 = 64 - v156;
      if (64 - v156 >= v157)
      {
        v158 = v157;
      }

      *(&v226 + v154) |= ((0xFFFFFFFFFFFFFFFFLL >> v155) & ~(-1 << v158)) << v156;
      v155 += v158;
      v159 = v158 + v156;
      v154 += v159 >> 6;
      v156 = v159 & 0x3F;
      v157 -= v158;
    }

    while (v157);
    v14 = 0;
    v160 = (a1->i64 + a2);
    a1->i64[0] = 0;
    a1->i64[1] = 0;
    v161 = (a1->i64 + 2 * a2);
    *v160 = 0;
    v160[1] = 0;
    v17 = (a1->i64 + 2 * a2 + a2);
    *v161 = 0;
    v161[1] = 0;
    goto LABEL_6;
  }

  v162 = vzip1_s32(*v83.i8, *&vextq_s8(v83, v83, 8uLL));
  v163 = vzip1_s32(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
  v164.i64[0] = v162.u32[0];
  v164.i64[1] = v162.u32[1];
  v165 = v164;
  v164.i64[0] = v163.u32[0];
  v164.i64[1] = v163.u32[1];
  v166 = vshlq_u64(v81, vnegq_s64(v165));
  v167 = vshlq_u64(v107, vnegq_s64(v164));
  v168 = vuzp1q_s32(vzip1q_s64(v81, v166), vzip2q_s64(v81, v166));
  v169 = vuzp1q_s32(vzip1q_s64(v107, v167), vzip2q_s64(v107, v167));
  v170 = vshlq_u32(v168, vnegq_s32((*&v82 & __PAIR128__(0xFFE0FFFFFFE0FFFFLL, 0xFFE0FFFFFFE0FFFFLL))));
  v171 = vshlq_u32(v169, vnegq_s32(vandq_s8(v99, v111)));
  v172 = vzip2q_s32(v168, v170);
  v173 = vzip1q_s32(v168, v170);
  v170.i64[0] = 0x10001000100010;
  v170.i64[1] = 0x10001000100010;
  v174 = vzip2q_s32(v169, v171);
  v175 = vzip1q_s32(v169, v171);
  v171.i64[0] = 0x10001000100010;
  v171.i64[1] = 0x10001000100010;
  v176 = v40 >> 6;
  v177 = vuzp1q_s16(v173, v172);
  v172.i64[0] = 0xF000F000F000FLL;
  v172.i64[1] = 0xF000F000F000FLL;
  v178 = vuzp1q_s16(v175, v174);
  v174.i64[0] = 0xF000F000F000FLL;
  v174.i64[1] = 0xF000F000F000FLL;
  v179 = vzip1_s32(*v146.i8, *&vextq_s8(v146, v146, 8uLL));
  v180.i64[0] = 0xFFFF0000FFFFLL;
  v180.i64[1] = 0xFFFF0000FFFFLL;
  v181.i64[0] = 0xF000F000F000FLL;
  v181.i64[1] = 0xF000F000F000FLL;
  v182.i64[0] = 0x10001000100010;
  v182.i64[1] = 0x10001000100010;
  v164.i64[0] = v179.u32[0];
  v164.i64[1] = v179.u32[1];
  v183 = vshlq_s16(vshlq_s16(v177, vsubq_s16(v170, v82)), vaddq_s16(v82, v172));
  v184 = vshlq_s16(vshlq_s16(v178, vsubq_s16(v171, v99)), vaddq_s16(v99, v174));
  v185 = vshlq_s16(vshlq_s16(v98, vsubq_s16(v171, v73)), vaddq_s16(v73, v174));
  v186 = vshlq_s16(vshlq_s16(v139, vsubq_s16(v171, v74)), vaddq_s16(v74, v174));
  v187 = vshlq_u64(v153, vnegq_s64(v164));
  v188 = vuzp1q_s32(vzip1q_s64(v153, v187), vzip2q_s64(v153, v187));
  v189 = vshlq_u32(v188, vnegq_s32(vandq_s8(v75, v180)));
  v190 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v188, v189), vzip2q_s32(v188, v189)), vsubq_s16(v182, v75)), vaddq_s16(v75, v181));
  if (v91 == 2)
  {
    v191.i64[0] = 0xFFFFFFFF00000000;
    v191.i64[1] = 0xFFFFFFFF00000000;
    v192 = vmlal_s8(vandq_s8(vdupq_n_s16(v95), v191), vdup_n_s8(v93), 0x302030201000100);
    v184 = vaddq_s16(v184, v192);
    v185 = vaddq_s16(vaddq_s16(vdupq_n_s16(2 * v95), v192), v185);
    v186 = vaddq_s16(vaddq_s16(vdupq_n_s16(4 * v93), v192), v186);
    v190 = vaddq_s16(vaddq_s16(vdupq_n_s16(4 * v93 + 2 * v95), v192), v190);
  }

  v193 = vdupq_n_s16(v176);
  v194 = vaddq_s16(vandq_s8(v183, v76), v184);
  v195 = vdupq_lane_s16(*v183.i8, 0);
  v196 = vsubq_s16(v194, vandq_s8(v195, v76));
  v197 = vsubq_s16(v185, vandq_s8(v195, v77));
  v198 = vsubq_s16(v186, vandq_s8(v195, v78));
  v199 = vsubq_s16(v190, vandq_s8(v195, v79));
  v200.i64[0] = 0x1000100010001;
  v200.i64[1] = 0x1000100010001;
  if (vaddvq_s16(vceqq_s16((*&v43 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v200)))
  {
    v201 = *&v43 & __PAIR128__(0xFFF1FFF1FFF1FFF1, 0xFFF1FFF1FFF1FFF1);
    v202 = vnegq_s16(v201);
    v203 = v196;
    v203.i16[0] = v196.i16[7];
    v203.i16[7] = v196.i16[0];
    v204 = vorrq_s8(vandq_s8(v203, v202), vandq_s8(v196, vceqzq_s16(v201)));
    v205 = vaddq_s16(v204, vandq_s8(vqtbl1q_s8(v204, xmmword_29D2F0E60), v202));
    v196 = vaddq_s16(v205, vandq_s8(vqtbl1q_s8(v205, xmmword_29D2F0E70), v202));
    v206 = vaddq_s16(vandq_s8(vqtbl1q_s8(v197, xmmword_29D2F0E80), v202), v197);
    v197 = vaddq_s16(vandq_s8(vqtbl1q_s8(v206, xmmword_29D2F0E90), v202), v206);
    v207 = vaddq_s16(vandq_s8(vqtbl1q_s8(v198, xmmword_29D2F0EA0), v202), v198);
    v198 = vaddq_s16(vandq_s8(vqtbl1q_s8(v207, xmmword_29D2F0EB0), v202), v207);
    v208 = vaddq_s16(vandq_s8(vqtbl1q_s8(v199, xmmword_29D2F0EC0), v202), v199);
    v199 = vaddq_s16(vandq_s8(vqtbl1q_s8(v208, xmmword_29D2F0ED0), v202), v208);
  }

  v209 = vaddq_s16(v193, v196);
  v210 = vaddq_s16(v197, v193);
  v211 = vaddq_s16(v198, v193);
  v212 = vaddq_s16(v199, v193);
  *a1 = vuzp1q_s32(v209, v211);
  *(a1 + a2) = vuzp2q_s32(v209, v211);
  v213 = (a1 + 2 * a2);
  *v213 = vuzp1q_s32(v210, v212);
  *(v213 + a2) = vuzp2q_s32(v210, v212);
  return v14;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(unint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, int16x4_t a12, double a13, double a14, int16x4_t a15)
{
  v16 = a6;
  v17 = a5;
  v19 = a3;
  v21 = result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(a3, a4, result, a2, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
  }

  else
  {
    *a4 = 0;
  }

  v22 = v17 - 8;
  if (v17 >= 9 && v16)
  {
    if (v16 >= 4)
    {
      v23 = 4;
    }

    else
    {
      v23 = v16;
    }

    if (v22 >= 8)
    {
      v24 = 8;
    }

    else
    {
      v24 = v17 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v19, a4 + 1, v21 + 1, a2, v24, v23, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v25 = 4 * a2;
  v26 = v16 - 4;
  if (v17 && v16 >= 5)
  {
    if (v26 >= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = v16 - 4;
    }

    if (v17 >= 8)
    {
      v28 = 8;
    }

    else
    {
      v28 = v17;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v19, a4 + 2, (v21 + v25), a2, v28, v27, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
    if (v17 < 9)
    {
      goto LABEL_38;
    }
  }

  else
  {
    a4[2] = 0;
    if (v17 < 9)
    {
      goto LABEL_38;
    }
  }

  if (v16 >= 5)
  {
    if (v26 >= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = v16 - 4;
    }

    if (v22 >= 8)
    {
      v30 = 8;
    }

    else
    {
      v30 = v17 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v19, a4 + 3, (v21 + v25 + 16), a2, v30, v29, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
    v31 = v16 - 8;
    goto LABEL_39;
  }

LABEL_38:
  a4[3] = 0;
  v31 = v16 - 8;
  if (!v17)
  {
    goto LABEL_48;
  }

LABEL_39:
  if (v16 < 9)
  {
LABEL_48:
    a4[4] = 0;
    if (v17 < 9)
    {
      goto LABEL_57;
    }

    goto LABEL_49;
  }

  if (v31 >= 4)
  {
    v32 = 4;
  }

  else
  {
    v32 = v31;
  }

  if (v17 >= 8)
  {
    v33 = 8;
  }

  else
  {
    v33 = v17;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v19, a4 + 4, (v21 + 8 * a2), a2, v33, v32, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  v19 += result;
  if (v17 < 9)
  {
LABEL_57:
    a4[5] = 0;
    v36 = v16 - 12;
    if (!v17)
    {
      goto LABEL_67;
    }

    goto LABEL_58;
  }

LABEL_49:
  if (v16 < 9)
  {
    goto LABEL_57;
  }

  if (v31 >= 4)
  {
    v34 = 4;
  }

  else
  {
    v34 = v31;
  }

  if (v22 >= 8)
  {
    v35 = 8;
  }

  else
  {
    v35 = v17 - 8;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v19, a4 + 5, (v21 + 8 * a2 + 16), a2, v35, v34, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  v19 += result;
  v36 = v16 - 12;
LABEL_58:
  if (v16 >= 0xD)
  {
    if (v36 >= 4)
    {
      v37 = 4;
    }

    else
    {
      v37 = v36;
    }

    if (v17 >= 8)
    {
      v38 = 8;
    }

    else
    {
      v38 = v17;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v19, a4 + 6, (v21 + 12 * a2), a2, v38, v37, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
    if (v17 < 9)
    {
      goto LABEL_78;
    }

    goto LABEL_68;
  }

LABEL_67:
  a4[6] = 0;
  if (v17 < 9)
  {
LABEL_78:
    a4[7] = 0;
    return result;
  }

LABEL_68:
  if (v16 < 0xD)
  {
    goto LABEL_78;
  }

  if (v36 >= 4)
  {
    v39 = 4;
  }

  else
  {
    v39 = v36;
  }

  if (v22 >= 8)
  {
    v40 = 8;
  }

  else
  {
    v40 = v17 - 8;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v19, a4 + 7, (v21 + 12 * a2 + 16), a2, v40, v39, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(int16x8_t *a1, unint64_t a2, unsigned __int8 *a3, int a4, double a5, double a6, double a7, int8x8_t a8)
{
  v11 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1, 32, a2, *a3, a4, a5, a6, a7, a8);
  v16 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 1, 32, v11, a3[1], a4, v12, v13, v14, v15);
  v21 = v16 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 8, 32, v16, a3[2], a4, v17, v18, v19, v20);
  v26 = v21 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 9, 32, v21, a3[3], a4, v22, v23, v24, v25);
  v31 = v26 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 16, 32, v26, a3[4], a4, v27, v28, v29, v30);
  v36 = v31 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 17, 32, v31, a3[5], a4, v32, v33, v34, v35);
  v41 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 24, 32, v36, a3[6], a4, v37, v38, v39, v40);
  v46 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 25, 32, v36 + v41, v46, a4, v42, v43, v44, v45);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, int16x4_t a12, double a13, double a14, int16x4_t a15)
{
  v17 = *(a3 + a4);
  v18 = vzip1q_s32(*a3, v17);
  v19 = vzip2q_s32(*a3, v17);
  v20 = (a3 + 2 * a4);
  v21 = *(v20 + a4);
  v22 = *v20;
  v23 = vzip1q_s32(*v20, v21);
  v24 = vzip2q_s32(*v20, v21);
  v25 = vdupq_lane_s16(*v18.i8, 0);
  v26 = vsubq_s16(v18, v25);
  v27 = vsubq_s16(v23, v25);
  v28 = vsubq_s16(v19, v25);
  v29 = vsubq_s16(v24, v25);
  v21.i16[0] = vmaxvq_s16(v26);
  v30 = vdupq_lane_s16(*v21.i8, 0);
  v22.i16[0] = vminvq_s16(v26);
  v31 = vdupq_lane_s16(*v22.i8, 0);
  v32.i64[0] = 0x8000800080008000;
  v32.i64[1] = 0x8000800080008000;
  v33 = vmaxq_s16(v30, v32);
  v34.i64[0] = 0x8000800080008000;
  v34.i64[1] = 0x8000800080008000;
  v35 = vminq_s16(v31, v34);
  v36 = vzip1q_s16(v30, v31);
  v37.i64[0] = 0x10001000100010;
  v37.i64[1] = 0x10001000100010;
  v38 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v36)), vceqzq_s16(v36));
  v39 = vpmaxq_s16(v38, v38);
  v38.i16[0] = vmaxvq_s16(v27);
  a12.i16[0] = vminvq_s16(v27);
  v40 = vdupq_lane_s16(*v38.i8, 0);
  v41 = vdupq_lane_s16(a12, 0);
  v42 = vmaxq_s16(v33, v40);
  v43 = vminq_s16(v35, v41);
  v44 = vzip1q_s16(v40, v41);
  v45 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v44)), vceqzq_s16(v44));
  v46 = vpmaxq_s16(v45, v45);
  v45.i16[0] = vmaxvq_s16(v28);
  a15.i16[0] = vminvq_s16(v28);
  v47 = vdupq_lane_s16(*v45.i8, 0);
  v48 = vdupq_lane_s16(a15, 0);
  v49 = vmaxq_s16(v42, v47);
  v50 = vminq_s16(v43, v48);
  v51 = vzip1q_s16(v47, v48);
  v52 = vsubq_s16(v37, vclsq_s16(v51));
  v53 = vbicq_s8(v52, vceqzq_s16(v51));
  v54 = vpmaxq_s16(v53, v53);
  v52.i16[0] = vmaxvq_s16(v29);
  v15.i16[0] = vminvq_s16(v29);
  v55 = vdupq_lane_s16(*v52.i8, 0);
  v56 = vdupq_lane_s16(v15, 0);
  v57 = vmaxq_s16(v49, v55);
  v58 = vminq_s16(v50, v56);
  v59 = vzip1q_s16(v55, v56);
  v60 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v59)), vceqzq_s16(v59));
  v61 = vpmaxq_s16(v60, v60);
  v62 = vmaxq_s16(vmaxq_s16(v39, v46), vmaxq_s16(v54, v61));
  v63 = vclzq_s16(vsubq_s16(v57, v58));
  v64 = vsubq_s16(v37, v63);
  v65 = vminq_s16(v64, v62);
  if (vmaxvq_s16(v65))
  {
    v66 = 0;
    v67 = 0;
    v68.i64[0] = -1;
    v68.i64[1] = -1;
    v69.i64[0] = 0xF000F000F000FLL;
    v69.i64[1] = 0xF000F000F000FLL;
    v70 = vcgtq_s16(v62, v64);
    v71 = vandq_s8(vsubq_s16(vshlq_s16(v68, vsubq_s16(v69, v63)), v58), v70);
    v72.i64[0] = 0x8000800080008;
    v72.i64[1] = 0x8000800080008;
    v73.i64[0] = 0x3000300030003;
    v73.i64[1] = 0x3000300030003;
    v74 = vandq_s8(vceqzq_s16(v65), v73);
    v75 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v39), v73), 0);
    v76 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v46), v73), 0);
    v77 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v54), v73), 0);
    v78 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v61), v73), 0);
    v79 = vsubq_s16(v65, v75);
    v80 = vsubq_s16(v65, v76);
    v81 = vsubq_s16(v65, v77);
    v82 = vsubq_s16(v65, v78);
    v83 = vceqq_s16(vaddq_s16(v78, v77), vnegq_s16(vaddq_s16(v75, v76)));
    v78.i64[0] = 0x4000400040004;
    v78.i64[1] = 0x4000400040004;
    v84 = vbicq_s8(v78, v83);
    v85 = vorrq_s8(vorrq_s8(v74, vandq_s8(v70, v72)), v84);
    if (a5 >= 4 && a6 >= 2)
    {
      v367 = v24;
      v372 = v71;
      v86 = v18.u16[1] - v18.u16[0];
      v87 = 0x302030201000100;
      v88.i64[0] = 0xFFFFFFFF00000000;
      v88.i64[1] = 0xFFFFFFFF00000000;
      v89 = vmlal_s8(vandq_s8(vdupq_n_s16((v18.i8[4] - v18.i8[0])), v88), vdup_n_s8(v86), 0x302030201000100);
      v90 = vsubq_s16(v26, v89);
      v91 = vsubq_s16(vaddq_s16(vdupq_n_s16(-2 * (v18.i8[4] - v18.i8[0])), v27), v89);
      v92 = vsubq_s16(vaddq_s16(vdupq_n_s16(-4 * v86), v28), v89);
      v87.i16[0] = vmaxvq_s16(v90);
      v373 = v90;
      v88.i16[0] = vminvq_s16(v90);
      v93 = vdupq_lane_s16(v87, 0);
      v94 = vdupq_lane_s16(*v88.i8, 0);
      v95 = vsubq_s16(vaddq_s16(vdupq_n_s16(-(2 * (v18.i8[4] - v18.i8[0]) + 4 * v86)), v29), v89);
      v96.i64[0] = 0x8000800080008000;
      v96.i64[1] = 0x8000800080008000;
      v97 = vmaxq_s16(v93, v96);
      v89.i64[0] = 0x8000800080008000;
      v89.i64[1] = 0x8000800080008000;
      v98 = vzip1q_s16(v93, v94);
      v99.i64[0] = 0x10001000100010;
      v99.i64[1] = 0x10001000100010;
      v100 = vsubq_s16(v99, vclsq_s16(v98));
      v101 = vbicq_s8(v100, vceqzq_s16(v98));
      v100.i16[0] = vmaxvq_s16(v91);
      v370 = v91;
      v76.i16[0] = vminvq_s16(v91);
      v102 = vdupq_lane_s16(*v100.i8, 0);
      v103 = vdupq_lane_s16(*v76.i8, 0);
      v104 = vpmaxq_s16(v101, v101);
      v105 = vmaxq_s16(v97, v102);
      v106 = vminq_s16(vminq_s16(v94, v89), v103);
      v107 = vzip1q_s16(v102, v103);
      v108 = vsubq_s16(v99, vclsq_s16(v107));
      v109 = vbicq_s8(v108, vceqzq_s16(v107));
      v110 = vpmaxq_s16(v109, v109);
      v108.i16[0] = vmaxvq_s16(v92);
      v111 = vdupq_lane_s16(*v108.i8, 0);
      v16.i16[0] = vminvq_s16(v92);
      v112 = vdupq_lane_s16(v16, 0);
      v113 = vmaxq_s16(v105, v111);
      v114 = vminq_s16(v106, v112);
      v115 = vzip1q_s16(v111, v112);
      v116 = vsubq_s16(v99, vclsq_s16(v115));
      v117 = vbicq_s8(v116, vceqzq_s16(v115));
      v118 = v28;
      v119 = vpmaxq_s16(v117, v117);
      v117.i16[0] = vmaxvq_s16(v95);
      v116.i16[0] = vminvq_s16(v95);
      v120 = vdupq_lane_s16(*v117.i8, 0);
      v121 = vdupq_lane_s16(*v116.i8, 0);
      v122 = vmaxq_s16(v113, v120);
      v123 = vminq_s16(v114, v121);
      v124 = vzip1q_s16(v120, v121);
      v125 = vbicq_s8(vsubq_s16(v99, vclsq_s16(v124)), vceqzq_s16(v124));
      v126 = vpmaxq_s16(v125, v125);
      v127 = vmaxq_s16(vmaxq_s16(v104, v110), vmaxq_s16(v119, v126));
      v128 = vclzq_s16(vsubq_s16(v122, v123));
      v129 = vsubq_s16(v99, v128);
      v130 = vcgtq_s16(v127, v129);
      v131 = vminq_s16(v129, v127);
      v127.i64[0] = 0x1000100010001;
      v127.i64[1] = 0x1000100010001;
      v132 = vmaxq_s16(v131, v127);
      v133.i64[0] = 0x3000300030003;
      v133.i64[1] = 0x3000300030003;
      v134 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v104), v133), 0);
      v135 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v110), v133), 0);
      v136 = v81;
      v137 = v27;
      v138 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v119), v133), 0);
      v139 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v126), v133), 0);
      v140 = vsubq_s16(v132, v134);
      v141 = vsubq_s16(v132, v135);
      v142 = vsubq_s16(v132, v138);
      v143 = vsubq_s16(v132, v139);
      v144 = vceqq_s16(vaddq_s16(v139, v138), vnegq_s16(vaddq_s16(v134, v135)));
      v139.i64[0] = 0x4000400040004;
      v139.i64[1] = 0x4000400040004;
      v145 = vbicq_s8(v139, v144);
      v146.i64[0] = 0x7000700070007;
      v146.i64[1] = 0x7000700070007;
      v147 = vaddq_s16(vshlq_n_s16(vaddq_s16(vaddq_s16(v142, v141), v143), 3uLL), v99);
      v148.i64[0] = 0x7000700070007;
      v148.i64[1] = 0x7000700070007;
      v149 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v132, v130), vaddq_s16(v145, v145)), v140, v146), v147);
      v150 = vandq_s8(v65, v70);
      v151 = vaddq_s16(v84, v84);
      v152 = vmulq_s16(v79, v148);
      v153 = vshlq_n_s16(vaddq_s16(vaddq_s16(v136, v80), v82), 3uLL);
      v154 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v150, v152), v153), v151), v149), 0);
      v149.i16[0] = vaddvq_s16(v154);
      v155 = v149.u16[0];
      if (v149.i16[0])
      {
        v156.i64[0] = 0x2000200020002;
        v156.i64[1] = 0x2000200020002;
        v157.i64[0] = 0xA000A000A000ALL;
        v157.i64[1] = 0xA000A000A000ALL;
        v158 = vbslq_s8(v130, v157, v156);
        v157.i64[0] = -1;
        v157.i64[1] = -1;
        v159 = vorrq_s8(v145, v158);
        v158.i64[0] = 0xF000F000F000FLL;
        v158.i64[1] = 0xF000F000F000FLL;
        v154 = vcltzq_s16(vshlq_n_s16(v154, 0xFuLL));
        v369 = vbslq_s8(v154, v373, v26);
        v371 = vbslq_s8(v154, v370, v137);
        v368 = vbslq_s8(v154, v92, v118);
        v29 = vbslq_s8(v154, v95, v29);
        v374 = v29;
        v79 = vbslq_s8(v154, v140, v79);
        v80 = vbslq_s8(v154, v141, v80);
        v136 = vbslq_s8(v154, v142, v136);
        v82 = vbslq_s8(v154, v143, v82);
        v71 = vbslq_s8(v154, vandq_s8(vsubq_s16(vshlq_s16(v157, vsubq_s16(v158, v128)), v123), v130), v372);
        v65 = vbslq_s8(v154, v132, v65);
        v85 = vbslq_s8(v154, v159, v85);
        v160.i64[0] = 0x8000800080008;
        v160.i64[1] = 0x8000800080008;
        v151 = vandq_s8(vaddq_s16(v85, v85), v160);
        v152 = vmulq_s16(v79, v148);
        v153 = vshlq_n_s16(vaddq_s16(vaddq_s16(v136, v80), v82), 3uLL);
      }

      else
      {
        v369 = v26;
        v371 = v137;
        v368 = v118;
        v374 = v29;
        v71 = v372;
      }

      v81 = v136;
      v162.i64[0] = 0x7000700070007;
      v162.i64[1] = 0x7000700070007;
      v67 = ((v18.i8[2] - v18.i8[0]) | ((v18.i16[2] - v18.i16[0]) << 8));
      v163 = vsubq_s16(v18, vqtbl1q_s8(v18, xmmword_29D2F0F00));
      v164 = v23;
      v164.i16[7] = v18.i16[7];
      v165 = vsubq_s16(v23, vqtbl1q_s8(v164, xmmword_29D2F0F10));
      v166 = v19;
      v166.i16[7] = v18.i16[7];
      v167 = vsubq_s16(v19, vqtbl1q_s8(v166, xmmword_29D2F0F20));
      v168 = v367;
      v168.i16[7] = v18.i16[7];
      v169 = vqtbl1q_s8(v168, xmmword_29D2F0F30);
      v171 = v163;
      v171.i16[0] = v163.i16[7];
      v170 = vsubq_s16(v367, v169);
      v171.i16[7] = v163.i16[0];
      v163.i16[0] = vmaxvq_s16(v171);
      v172 = vdupq_lane_s16(*v163.i8, 0);
      v169.i16[0] = vminvq_s16(v171);
      v173 = vdupq_lane_s16(*v169.i8, 0);
      v174.i64[0] = 0x8000800080008000;
      v174.i64[1] = 0x8000800080008000;
      v175 = vmaxq_s16(v172, v174);
      v176.i64[0] = 0x8000800080008000;
      v176.i64[1] = 0x8000800080008000;
      v177 = vminq_s16(v173, v176);
      v178 = vzip1q_s16(v172, v173);
      v179.i64[0] = 0x10001000100010;
      v179.i64[1] = 0x10001000100010;
      v180 = vsubq_s16(v179, vclsq_s16(v178));
      v181 = vbicq_s8(v180, vceqzq_s16(v178));
      v182 = vpmaxq_s16(v181, v181);
      v180.i16[0] = vmaxvq_s16(v165);
      v154.i16[0] = vminvq_s16(v165);
      v183 = vdupq_lane_s16(*v180.i8, 0);
      v184 = vdupq_lane_s16(*v154.i8, 0);
      v185 = vmaxq_s16(v175, v183);
      v186 = vminq_s16(v177, v184);
      v187 = vzip1q_s16(v183, v184);
      v188 = vsubq_s16(v179, vclsq_s16(v187));
      v189 = vbicq_s8(v188, vceqzq_s16(v187));
      v188.i16[0] = vmaxvq_s16(v167);
      v130.i16[0] = vminvq_s16(v167);
      v190 = vdupq_lane_s16(*v188.i8, 0);
      v191 = vdupq_lane_s16(*v130.i8, 0);
      v192 = vpmaxq_s16(v189, v189);
      v193 = vmaxq_s16(v185, v190);
      v194 = vminq_s16(v186, v191);
      v195 = vzip1q_s16(v190, v191);
      v196 = vsubq_s16(v179, vclsq_s16(v195));
      v197 = vbicq_s8(v196, vceqzq_s16(v195));
      v198 = vpmaxq_s16(v197, v197);
      v196.i16[0] = vmaxvq_s16(v170);
      v199 = vdupq_lane_s16(*v196.i8, 0);
      v29.i16[0] = vminvq_s16(v170);
      v200 = vdupq_lane_s16(*v29.i8, 0);
      v201 = vmaxq_s16(v193, v199);
      v202 = vminq_s16(v194, v200);
      v203 = vzip1q_s16(v199, v200);
      v204 = vbicq_s8(vsubq_s16(v179, vclsq_s16(v203)), vceqzq_s16(v203));
      v205 = vpmaxq_s16(v204, v204);
      v206 = vmaxq_s16(vmaxq_s16(v182, v192), vmaxq_s16(v198, v205));
      v207 = vclzq_s16(vsubq_s16(v201, v202));
      v208 = vsubq_s16(v179, v207);
      v209 = vcgtq_s16(v206, v208);
      v210 = vminq_s16(v208, v206);
      v200.i64[0] = 0x3000300030003;
      v200.i64[1] = 0x3000300030003;
      v211 = vmaxq_s16(vminq_s16(vsubq_s16(v210, v182), v200), 0);
      v212 = vmaxq_s16(vminq_s16(vsubq_s16(v210, v192), v200), 0);
      v213 = vmaxq_s16(vminq_s16(vsubq_s16(v210, v198), v200), 0);
      v214 = vmaxq_s16(vminq_s16(vsubq_s16(v210, v205), v200), 0);
      v215 = vsubq_s16(v210, v211);
      v216 = vsubq_s16(v210, v212);
      v217 = vsubq_s16(v210, v213);
      v218 = vsubq_s16(v210, v214);
      v219 = vceqq_s16(vaddq_s16(v214, v213), vnegq_s16(vaddq_s16(v211, v212)));
      v212.i64[0] = 0x4000400040004;
      v212.i64[1] = 0x4000400040004;
      v220 = vbicq_s8(v212, v219);
      v213.i64[0] = 0x8000800080008;
      v213.i64[1] = 0x8000800080008;
      v221 = vbicq_s8(v65, vceqzq_s16(vandq_s8(v85, v213)));
      v222.i64[0] = 0x2000200020002;
      v222.i64[1] = 0x2000200020002;
      v223 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v221, v151), vaddq_s16(vandq_s8(vceqq_s16(vandq_s8(v85, v200), v222), v179), v152)), v153), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v210, v209), vaddq_s16(v220, v220)), v215, v162), vshlq_n_s16(vaddq_s16(vaddq_s16(v217, v216), v218), 3uLL))), 0);
      v221.i16[0] = vaddvq_s16(v223);
      v224 = v221.u16[0];
      if (v221.i16[0])
      {
        v225.i64[0] = 0x9000900090009;
        v225.i64[1] = 0x9000900090009;
        v226.i64[0] = -1;
        v226.i64[1] = -1;
        v227 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v210), v222), vsubq_s16(vandq_s8(v209, v225), vmvnq_s8(v209))), v220);
        v228.i64[0] = 0xF000F000F000FLL;
        v228.i64[1] = 0xF000F000F000FLL;
        v229 = vandq_s8(vsubq_s16(vshlq_s16(v226, vsubq_s16(v228, v207)), v202), v209);
        v230 = vcltzq_s16(vshlq_n_s16(v223, 0xFuLL));
        v25.i16[0] = vbslq_s8(v230, vextq_s8(v18, v18, 0xEuLL), v25).u16[0];
        v26 = vbslq_s8(v230, v171, v369);
        v27 = vbslq_s8(v230, v165, v371);
        v28 = vbslq_s8(v230, v167, v368);
        v29 = vbslq_s8(v230, v170, v374);
        v79 = vbslq_s8(v230, v215, v79);
        v80 = vbslq_s8(v230, v216, v80);
        v81 = vbslq_s8(v230, v217, v136);
        v82 = vbslq_s8(v230, v218, v82);
        v71 = vbslq_s8(v230, v229, v71);
        v65 = vbslq_s8(v230, v210, v65);
        v85 = vbslq_s8(v230, v227, v85);
      }

      else
      {
        v29 = v374;
        v28 = v368;
        v26 = v369;
        v27 = v371;
      }

      if (v155)
      {
        v231 = v224 == 0;
      }

      else
      {
        v231 = 0;
      }

      v66 = v231;
    }

    v232.i64[0] = 0x8000800080008;
    v232.i64[1] = 0x8000800080008;
    v233 = vandq_s8(v85, v232);
    v234.i64[0] = 0x3000300030003;
    v234.i64[1] = 0x3000300030003;
    v235.i64[0] = 0x2000200020002;
    v235.i64[1] = 0x2000200020002;
    v236 = vceqq_s16(vandq_s8(v85, v234), v235);
    v235.i64[0] = 0x10001000100010;
    v235.i64[1] = 0x10001000100010;
    if (((vbicq_s8(v65, vceqzq_s16(v233)).u16[0] + ((2 * v85.i16[0]) & 8) + vandq_s8(v236, v235).u16[0] - v79.i16[0] + 8 * v79.i16[0] + 8 * vaddq_s16(vaddq_s16(v81, v80), v82).u16[0]) - 235) <= 0xFFFFFFFFFFFFFEF7)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 32;
    }

    else
    {
      v237 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v238 = 8 * (a1 & 7);
      if (v238)
      {
        v239 = *v237 & ~(-1 << v238);
      }

      else
      {
        v239 = 0;
      }

      if (v65.i16[0])
      {
        v240 = (16 * v65.i8[0] - 16) & 0xF0;
      }

      else
      {
        v240 = 0;
      }

      *a2 = v85.i8[0] << 6;
      v241 = (v240 & 0xFFFFFFFFFF0000F0 | (v25.u16[0] << 8) | v85.i8[0] & 0xF) >> 2;
      v242 = (v241 << v238) | v239;
      if (v238 >= 0x2A)
      {
        *v237 = v242;
        v242 = v241 >> (-8 * (a1 & 7u));
      }

      v243 = v238 + 22;
      v244 = vsubq_s16(v65, v79);
      v245 = vsubq_s16(v65, v80);
      v246 = vsubq_s16(v65, v81);
      v247 = vsubq_s16(v65, v82);
      *v244.i8 = vqmovn_u16(v244);
      *v245.i8 = vqmovn_u16(v245);
      *v246.i8 = vqmovn_u16(v246);
      *v247.i8 = vqmovn_u16(v247);
      v244.i32[0] = vzip1q_s16(vzip1q_s8(v244, v245), vzip1q_s8(v246, v247)).u32[0];
      v246.i64[0] = 0x202020202020202;
      v246.i64[1] = 0x202020202020202;
      v248 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v85.i8, 0x4000400040004)))), v246);
      v246.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v246.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v247.i64[0] = -1;
      v247.i64[1] = -1;
      v249 = vandq_s8(vshlq_u8(v247, vorrq_s8(v248, v246)), v244.u32[0]);
      v250 = vmovl_u8(*v248.i8);
      v251 = vpaddq_s16(vshlq_u16(vmovl_u8(*v249.i8), vtrn1q_s16(0, v250)), vmovl_high_u8(v249));
      v252 = vpaddq_s16(v250, vmovl_high_u8(v248));
      v253 = vmovl_u16(*v252.i8);
      v254 = vmovl_high_u16(v252);
      v255 = vpaddq_s32(vshlq_u32(vmovl_u16(*v251.i8), vtrn1q_s32(0, v253)), vshlq_u32(vmovl_high_u16(v251), vtrn1q_s32(0, v254)));
      v256 = vpaddq_s32(v253, v254);
      v257.i64[0] = v255.u32[0];
      v257.i64[1] = v255.u32[1];
      v258 = v257;
      v257.i64[0] = v255.u32[2];
      v257.i64[1] = v255.u32[3];
      v259 = v257;
      v257.i64[0] = v256.u32[0];
      v257.i64[1] = v256.u32[1];
      v260 = v257;
      v257.i64[0] = v256.u32[2];
      v257.i64[1] = v256.u32[3];
      v261 = vpaddq_s64(vshlq_u64(v258, vzip1q_s64(0, v260)), vshlq_u64(v259, vzip1q_s64(0, v257)));
      v262 = vpaddq_s64(v260, v257);
      v263 = (v238 + 22) & 0x3E;
      v264 = (v261.i64[0] << v263) | v242;
      if ((v262.i64[0] + v263) >= 0x40)
      {
        *(v237 + ((v243 >> 3) & 8)) = v264;
        v264 = v261.i64[0] >> -v263;
      }

      v265 = v262.i64[0] + v243;
      v266 = v264 | (v261.i64[1] << v265);
      if ((v265 & 0x3F) + v262.i64[1] >= 0x40)
      {
        *(v237 + ((v265 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v266;
        v266 = v261.i64[1] >> -(v265 & 0x3F);
        if ((v265 & 0x3F) == 0)
        {
          v266 = 0;
        }
      }

      v267 = vceqq_s16(v65, v79);
      v268 = v265 + v262.i64[1];
      v269.i64[0] = -1;
      v269.i64[1] = -1;
      v270 = vandq_s8(vextq_s8(vtstq_s16(v233, v233), 0, 0xEuLL), v65);
      v271.i64[0] = 0xF000F000F000FLL;
      v271.i64[1] = 0xF000F000F000FLL;
      v272 = vandq_s8(vshlq_u16(v269, vaddq_s16(v270, v271)), v71);
      v273 = vmovl_u16(*v270.i8);
      v274 = vpaddq_s32(vshlq_u32(vmovl_u16(*v272.i8), vtrn1q_s32(0, v273)), vmovl_high_u16(v272));
      v275 = vpaddq_s32(v273, vmovl_high_u16(v270));
      v276.i64[0] = v274.u32[0];
      v276.i64[1] = v274.u32[1];
      v277 = v276;
      v276.i64[0] = v274.u32[2];
      v276.i64[1] = v274.u32[3];
      v278 = v276;
      v276.i64[0] = v275.u32[0];
      v276.i64[1] = v275.u32[1];
      v279 = v276;
      v276.i64[0] = v275.u32[2];
      v276.i64[1] = v275.u32[3];
      v280 = vpaddq_s64(vshlq_u64(v277, vzip1q_s64(0, v279)), vshlq_u64(v278, vzip1q_s64(0, v276)));
      v281 = vpaddq_s64(v279, v276);
      v282 = (v280.i64[0] << v268) | v266;
      if (v281.i64[0] + (v268 & 0x3F) >= 0x40)
      {
        *(v237 + ((v268 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v282;
        v282 = v280.i64[0] >> -(v268 & 0x3F);
        if ((v268 & 0x3F) == 0)
        {
          v282 = 0;
        }
      }

      v283 = vandq_s8(v71, v267);
      v284 = v281.i64[0] + v268;
      v285 = v282 | (v280.i64[1] << v284);
      if ((v284 & 0x3F) + v281.i64[1] >= 0x40)
      {
        *(v237 + ((v284 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v285;
        v285 = v280.i64[1] >> -(v284 & 0x3F);
        if ((v284 & 0x3F) == 0)
        {
          v285 = 0;
        }
      }

      v286 = vceqq_s16(v65, v80);
      v287 = vaddq_s16(v283, v26);
      v288 = v284 + v281.i64[1];
      if (v66)
      {
        v285 |= v67 << v288;
        if ((v288 & 0x3F) >= 0x30)
        {
          *(v237 + ((v288 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v285;
          v285 = v67 >> -(v288 & 0x3F);
        }

        v288 += 16;
      }

      v289 = vandq_s8(v71, v286);
      v290 = vextq_s8(0, v79, 0xEuLL);
      v291.i64[0] = 0xF000F000F000FLL;
      v291.i64[1] = 0xF000F000F000FLL;
      v292.i64[0] = -1;
      v292.i64[1] = -1;
      v293 = vandq_s8(vshlq_u16(v292, vaddq_s16(v290, v291)), v287);
      v294 = vmovl_u16(*v290.i8);
      v295 = vmovl_high_u16(v290);
      v296 = vpaddq_s32(vshlq_u32(vmovl_u16(*v293.i8), vtrn1q_s32(0, v294)), vshlq_u32(vmovl_high_u16(v293), vtrn1q_s32(0, v295)));
      v297 = vpaddq_s32(v294, v295);
      v298.i64[0] = v296.u32[0];
      v298.i64[1] = v296.u32[1];
      v299 = v298;
      v298.i64[0] = v296.u32[2];
      v298.i64[1] = v296.u32[3];
      v300 = v298;
      v298.i64[0] = v297.u32[0];
      v298.i64[1] = v297.u32[1];
      v301 = v298;
      v298.i64[0] = v297.u32[2];
      v298.i64[1] = v297.u32[3];
      v302 = vpaddq_s64(vshlq_u64(v299, vzip1q_s64(0, v301)), vshlq_u64(v300, vzip1q_s64(0, v298)));
      v303 = vpaddq_s64(v301, v298);
      v304 = (v302.i64[0] << v288) | v285;
      if (v303.i64[0] + (v288 & 0x3F) >= 0x40)
      {
        *(v237 + ((v288 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v304;
        v304 = v302.i64[0] >> -(v288 & 0x3F);
        if ((v288 & 0x3F) == 0)
        {
          v304 = 0;
        }
      }

      v305 = vceqq_s16(v65, v81);
      v306 = vaddq_s16(v27, v289);
      v307 = v303.i64[0] + v288;
      v308 = (v303.i64[0] + v288) & 0x3F;
      v309 = v304 | (v302.i64[1] << v307);
      if ((v307 & 0x3F) + v303.i64[1] >= 0x40)
      {
        *(v237 + ((v307 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v309;
        v309 = v302.i64[1] >> -v308;
        if (!v308)
        {
          v309 = 0;
        }
      }

      v310 = vandq_s8(v71, v305);
      v311 = v307 + v303.i64[1];
      v312.i64[0] = 0xF000F000F000FLL;
      v312.i64[1] = 0xF000F000F000FLL;
      v313.i64[0] = -1;
      v313.i64[1] = -1;
      v314 = vandq_s8(vshlq_u16(v313, vaddq_s16(v80, v312)), v306);
      v315 = vmovl_u16(*v80.i8);
      v316 = vmovl_high_u16(v80);
      v317 = vpaddq_s32(vshlq_u32(vmovl_u16(*v314.i8), vtrn1q_s32(0, v315)), vshlq_u32(vmovl_high_u16(v314), vtrn1q_s32(0, v316)));
      v318 = vpaddq_s32(v315, v316);
      v319.i64[0] = v317.u32[0];
      v319.i64[1] = v317.u32[1];
      v320 = v319;
      v319.i64[0] = v317.u32[2];
      v319.i64[1] = v317.u32[3];
      v321 = v319;
      v319.i64[0] = v318.u32[0];
      v319.i64[1] = v318.u32[1];
      v322 = v319;
      v319.i64[0] = v318.u32[2];
      v319.i64[1] = v318.u32[3];
      v323 = vpaddq_s64(vshlq_u64(v320, vzip1q_s64(0, v322)), vshlq_u64(v321, vzip1q_s64(0, v319)));
      v324 = vpaddq_s64(v322, v319);
      v325 = (v323.i64[0] << v311) | v309;
      if (v324.i64[0] + (v311 & 0x3F) >= 0x40)
      {
        *(v237 + ((v311 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v325;
        v325 = v323.i64[0] >> -(v311 & 0x3F);
        if ((v311 & 0x3F) == 0)
        {
          v325 = 0;
        }
      }

      v326 = vceqq_s16(v65, v82);
      v327 = vaddq_s16(v28, v310);
      v328 = v324.i64[0] + v311;
      v329 = v325 | (v323.i64[1] << v328);
      if ((v328 & 0x3F) + v324.i64[1] >= 0x40)
      {
        *(v237 + ((v328 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v329;
        v329 = v323.i64[1] >> -(v328 & 0x3F);
        if ((v328 & 0x3F) == 0)
        {
          v329 = 0;
        }
      }

      v330 = vandq_s8(v71, v326);
      v331 = v328 + v324.i64[1];
      v332.i64[0] = 0xF000F000F000FLL;
      v332.i64[1] = 0xF000F000F000FLL;
      v333.i64[0] = -1;
      v333.i64[1] = -1;
      v334 = vandq_s8(vshlq_u16(v333, vaddq_s16(v81, v332)), v327);
      v335 = vmovl_u16(*v81.i8);
      v336 = vmovl_high_u16(v81);
      v337 = vpaddq_s32(vshlq_u32(vmovl_u16(*v334.i8), vtrn1q_s32(0, v335)), vshlq_u32(vmovl_high_u16(v334), vtrn1q_s32(0, v336)));
      v338 = vpaddq_s32(v335, v336);
      v339.i64[0] = v337.u32[0];
      v339.i64[1] = v337.u32[1];
      v340 = v339;
      v339.i64[0] = v337.u32[2];
      v339.i64[1] = v337.u32[3];
      v341 = v339;
      v339.i64[0] = v338.u32[0];
      v339.i64[1] = v338.u32[1];
      v342 = v339;
      v339.i64[0] = v338.u32[2];
      v339.i64[1] = v338.u32[3];
      v343 = vpaddq_s64(vshlq_u64(v340, vzip1q_s64(0, v342)), vshlq_u64(v341, vzip1q_s64(0, v339)));
      v344 = vpaddq_s64(v342, v339);
      v345 = (v343.i64[0] << v331) | v329;
      if (v344.i64[0] + (v331 & 0x3F) >= 0x40)
      {
        *(v237 + ((v331 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v345;
        v345 = v343.i64[0] >> -(v331 & 0x3F);
        if ((v331 & 0x3F) == 0)
        {
          v345 = 0;
        }
      }

      v346 = vaddq_s16(v29, v330);
      v347 = v344.i64[0] + v331;
      v348 = v345 | (v343.i64[1] << v347);
      if ((v347 & 0x3F) + v344.i64[1] >= 0x40)
      {
        *(v237 + ((v347 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v348;
        v348 = v343.i64[1] >> -(v347 & 0x3F);
        if ((v347 & 0x3F) == 0)
        {
          v348 = 0;
        }
      }

      v349 = v347 + v344.i64[1];
      v350.i64[0] = 0xF000F000F000FLL;
      v350.i64[1] = 0xF000F000F000FLL;
      v351.i64[0] = -1;
      v351.i64[1] = -1;
      v352 = vandq_s8(vshlq_u16(v351, vaddq_s16(v82, v350)), v346);
      v353 = vmovl_u16(*v82.i8);
      v354 = vmovl_high_u16(v82);
      v355 = vpaddq_s32(vshlq_u32(vmovl_u16(*v352.i8), vtrn1q_s32(0, v353)), vshlq_u32(vmovl_high_u16(v352), vtrn1q_s32(0, v354)));
      v356 = vpaddq_s32(v353, v354);
      v357.i64[0] = v355.u32[0];
      v357.i64[1] = v355.u32[1];
      v358 = v357;
      v357.i64[0] = v355.u32[2];
      v357.i64[1] = v355.u32[3];
      v359 = v357;
      v357.i64[0] = v356.u32[0];
      v357.i64[1] = v356.u32[1];
      v360 = v357;
      v357.i64[0] = v356.u32[2];
      v357.i64[1] = v356.u32[3];
      v361 = vpaddq_s64(vshlq_u64(v358, vzip1q_s64(0, v360)), vshlq_u64(v359, vzip1q_s64(0, v357)));
      v362 = vpaddq_s64(v360, v357);
      v363 = (v361.i64[0] << v349) | v348;
      if (v362.i64[0] + (v349 & 0x3F) > 0x3F)
      {
        *(v237 + ((v349 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v363;
        if ((v349 & 0x3F) != 0)
        {
          v363 = v361.i64[0] >> -(v349 & 0x3F);
        }

        else
        {
          v363 = 0;
        }
      }

      v364 = v362.i64[0] + v349;
      v365 = v363 | (v361.i64[1] << v364);
      if ((v364 & 0x3F) + v362.i64[1] >= 0x40)
      {
        *(v237 + ((v364 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
        v365 = v361.i64[1] >> -(v364 & 0x3F);
        if ((v364 & 0x3F) == 0)
        {
          v365 = 0;
        }
      }

      v366 = v364 + v362.i64[1];
      if ((v366 & 0x3F) != 0)
      {
        *(v237 + ((v366 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
      }

      result = (v366 - v238 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = a3->i16[0];
    *a2 = 1;
    return 2;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(int16x8_t *a1, uint64_t a2, unint64_t a3, unsigned int a4, int a5, double a6, double a7, double a8, int8x8_t a9)
{
  v230 = *MEMORY[0x29EDCA608];
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
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v226, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v226, a5);
    }

    v224 = v226;
    v222 = v227;
    v221 = v228;
    v218 = v229;
    v19 = a3 + 8;
    if ((v9 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v19, &v226, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v19, &v226, a5);
    }

    v220 = v226;
    v225 = v227;
    v219 = v228;
    v223 = v229;
    v20 = a3 + 16;
    if ((v9 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v20, &v226, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v20, &v226, a5);
    }

    v217 = v226;
    v216 = v227;
    v215 = v228;
    v214 = v229;
    v21 = a3 + 24;
    if ((v9 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v21, &v226, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v21, &v226, a5);
    }

    v23.i64[0] = v216;
    v22.i64[0] = v217;
    v23.i64[1] = v214;
    v24.i64[0] = v222;
    v24.i64[1] = v218;
    v22.i64[1] = v215;
    v25.i64[0] = v224;
    v25.i64[1] = v221;
    v26 = vuzp1q_s16(v24, v23);
    v27 = vuzp1q_s16(v25, v22);
    v28.i64[0] = v226;
    v22.i64[0] = v227;
    v23.i64[0] = v228;
    v29 = v229;
    *a1 = v27;
    *(a1 + a2) = v26;
    v30 = (a1 + a2 + a2);
    v28.i64[1] = v23.i64[0];
    v26.i64[0] = v220;
    v26.i64[1] = v219;
    *v30 = vuzp1q_s16(v26, v28);
    v22.i64[1] = v29;
    v26.i64[0] = v225;
    v26.i64[1] = v223;
    *(v30 + a2) = vuzp1q_s16(v26, v22);
    return 32;
  }

  if (a4 == 63)
  {
    v31 = *a3;
    v32 = *(a3 + 16);
    v33 = *(a3 + 32);
    v34 = *(a3 + 48);
    *a1 = vuzp1q_s32(*a3, v33);
    *(a1 + a2) = vuzp2q_s32(v31, v33);
    v35 = (a1 + 2 * a2);
    *v35 = vuzp1q_s32(v32, v34);
    *(v35 + a2) = vuzp2q_s32(v32, v34);
    return 64;
  }

  if (a4 == 1)
  {
    v18 = vld1q_dup_s16(a3);
    *a1 = v18;
    *(a1 + a2) = v18;
    *(a1 + 2 * a2) = v18;
    *(a1 + 3 * a2) = v18;
    return 2;
  }

  v37 = 8 * (a3 & 7);
  v38 = a3 & 0xFFFFFFFFFFFFFFF8;
  v39 = v37 + 22;
  v40 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v37;
  if (v37 >= 0x2B)
  {
    v40 |= *(v38 + 8) << (-8 * (a3 & 7u));
  }

  v41 = (8 * (a3 & 7)) | 0x100;
  v42 = ((a4 >> 6) | (4 * v40)) & 0xF;
  v43 = vdupq_n_s16(v42);
  a9.i32[0] = v42;
  v44.i64[0] = 0x3000300030003;
  v44.i64[1] = 0x3000300030003;
  v45 = vbicq_s8(vdupq_n_s16(((v40 >> 2) & 0xF) + 1), vceqq_s16((*&v43 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v44));
  v46 = vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(vand_s8(a9, 0x4000400040004), 0))));
  v47.i64[0] = 0x202020202020202;
  v47.i64[1] = 0x202020202020202;
  v48 = vandq_s8(v46, v47);
  if (vmaxvq_s8(v48) < 1)
  {
    v56 = 0;
    v79.i64[0] = -1;
    v79.i64[1] = -1;
    v75 = v45;
    v74 = v45;
    v73 = v45;
    v78.i64[0] = -1;
    v78.i64[1] = -1;
    v72 = v45;
    v77.i64[0] = -1;
    v77.i64[1] = -1;
    v76.i64[0] = -1;
    v76.i64[1] = -1;
  }

  else
  {
    v49 = vmovl_u8(*&vpaddq_s8(v48, v48));
    v50 = vmovl_u16(*&vpaddq_s16(v49, v49));
    v51 = vpaddq_s32(v50, v50).u64[0];
    v52.i64[0] = v51;
    v52.i64[1] = HIDWORD(v51);
    v53 = v52;
    v54 = vaddvq_s64(v52);
    v55 = v54 <= 0x80 && v41 >= v54 + v39;
    v56 = !v55;
    v57 = 0uLL;
    if (v55)
    {
      v58 = vaddq_s64(vzip1q_s64(0, v53), vdupq_n_s64(v39 & 0x3E));
      v59 = (v38 + ((v39 >> 3) & 8));
      v57 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v59, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v58)), vshlq_u64(vdupq_lane_s64(v59->i64[0], 0), vnegq_s64(v58)));
      if (v54 + (v39 & 0x3E) >= 0x81)
      {
        v57 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v59[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v58)), vshlq_u64(vdupq_laneq_s64(v59[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v58))), v57);
      }

      v39 += v54;
    }

    v60 = vzip1_s32(*v50.i8, *&vextq_s8(v50, v50, 8uLL));
    v61.i64[0] = v60.u32[0];
    v61.i64[1] = v60.u32[1];
    v62 = vshlq_u64(v57, vnegq_s64(v61));
    v63 = vuzp1q_s32(vzip1q_s64(v57, v62), vzip2q_s64(v57, v62));
    v64 = vshlq_u32(v63, vnegq_s32((*&v49 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v65 = vuzp1q_s16(vzip1q_s32(v63, v64), vzip2q_s32(v63, v64));
    v66 = vzip1q_s16(v65, vshlq_u16(v65, vnegq_s16(vmovl_u8(vuzp1_s8(*v48.i8, *v43.i8)))));
    *v66.i8 = vmovn_s16(v66);
    v63.i64[0] = 0x101010101010101;
    v63.i64[1] = 0x101010101010101;
    v67 = vshlq_s8(v63, v48);
    v63.i64[0] = -1;
    v63.i64[1] = -1;
    v67.i32[0] = vandq_s8(vaddq_s8(v67, v63), v66).u32[0];
    v68 = vdupq_n_s16(v67.i8[0]);
    v69 = vdupq_n_s16(v67.i8[1]);
    v70 = vdupq_n_s16(v67.i8[2]);
    v71 = vdupq_n_s16(v67.i8[3]);
    v72 = vsubq_s16(v45, v68);
    v73 = vsubq_s16(v45, v69);
    v74 = vsubq_s16(v45, v70);
    v75 = vsubq_s16(v45, v71);
    v76 = vceqzq_s16(v68);
    v77 = vceqzq_s16(v69);
    v78 = vceqzq_s16(v70);
    v79 = vceqzq_s16(v71);
  }

  v80.i64[0] = 0x7000700070007;
  v80.i64[1] = 0x7000700070007;
  v81 = 0uLL;
  v82 = vandq_s8(vextq_s8(vcgtq_u16(v43, v80), 0, 0xEuLL), v45);
  v83 = vmovl_u16(*&vpaddq_s16(v82, v82));
  v84 = vpaddq_s32(v83, v83).u64[0];
  v85.i64[0] = v84;
  v85.i64[1] = HIDWORD(v84);
  v86 = v85;
  v87 = vaddvq_s64(v85);
  if (v87 <= 0x80 && v41 >= v87 + v39)
  {
    v89 = vaddq_s64(vzip1q_s64(0, v86), vdupq_n_s64(v39 & 0x3F));
    v90 = (v38 + 8 * (v39 >> 6));
    v81 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v90, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v89)), vshlq_u64(vdupq_lane_s64(v90->i64[0], 0), vnegq_s64(v89)));
    if (v87 + (v39 & 0x3F) >= 0x81)
    {
      v81 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v90[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v89)), vshlq_u64(vdupq_laneq_s64(v90[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v89))), v81);
    }

    v39 += v87;
  }

  else
  {
    v56 = 1;
  }

  v91 = v42 & 3;
  if (v91 != 2)
  {
    LODWORD(v95) = 0;
    LODWORD(v93) = 0;
    v96 = v39;
    goto LABEL_58;
  }

  v92 = v39 + 8;
  if (v41 < v39 + 8)
  {
    LODWORD(v93) = 0;
    v92 = v39;
LABEL_57:
    LODWORD(v95) = 0;
    v56 = 1;
    v96 = v92;
    goto LABEL_58;
  }

  v97 = (v38 + 8 * (v39 >> 6));
  v93 = *v97 >> v39;
  if ((v39 & 0x3F) >= 0x39)
  {
    v93 |= v97[1] << -(v39 & 0x3F);
  }

  LODWORD(v93) = v93;
  v96 = v39 + 16;
  if (v41 < v39 + 16)
  {
    goto LABEL_57;
  }

  v94 = (v38 + 8 * (v92 >> 6));
  v95 = *v94 >> v92;
  if ((v92 & 0x3F) >= 0x39)
  {
    v95 |= v94[1] << -(v92 & 0x3F);
  }

  LODWORD(v95) = v95;
LABEL_58:
  v98 = 0uLL;
  v99 = vextq_s8(0, v72, 0xEuLL);
  v100 = vmovl_u16(*&vpaddq_s16(v99, v99));
  v101 = vpaddq_s32(v100, v100).u64[0];
  v102.i64[0] = v101;
  v102.i64[1] = HIDWORD(v101);
  v103 = v102;
  v104 = vaddvq_s64(v102);
  v105 = v104 + v96;
  if (v104 <= 0x80 && v41 >= v105)
  {
    v108 = v96 & 0x3F;
    v109 = vaddq_s64(vzip1q_s64(0, v103), vdupq_n_s64(v108));
    v110 = (v38 + 8 * (v96 >> 6));
    v107 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v110, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v109)), vshlq_u64(vdupq_lane_s64(v110->i64[0], 0), vnegq_s64(v109)));
    if (v104 + v108 >= 0x81)
    {
      v107 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v110[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v109)), vshlq_u64(vdupq_laneq_s64(v110[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v109))), v107);
    }

    v96 = v105;
  }

  else
  {
    v56 = 1;
    v107 = 0uLL;
  }

  v111.i64[0] = 0xFFFF0000FFFFLL;
  v111.i64[1] = 0xFFFF0000FFFFLL;
  v112 = vmovl_u16(*&vpaddq_s16(v73, v73));
  v113 = vpaddq_s32(v112, v112).u64[0];
  v114.i64[0] = v113;
  v114.i64[1] = HIDWORD(v113);
  v115 = v114;
  v116 = vaddvq_s64(v114);
  if (v116 >= 0x81)
  {
    v56 = 1;
  }

  else
  {
    v117 = vzip1_s32(*v112.i8, *&vextq_s8(v112, v112, 8uLL));
    v118.i64[0] = v117.u32[0];
    v118.i64[1] = v117.u32[1];
    v119 = v118;
    v120 = vandq_s8(v73, v111);
    v121 = v116 + v96;
    if (v41 >= v116 + v96)
    {
      v122 = v96 & 0x3F;
      v123 = vaddq_s64(vzip1q_s64(0, v115), vdupq_n_s64(v122));
      v124 = (v38 + 8 * (v96 >> 6));
      v98 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v124, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v124->i64[0], 0), vnegq_s64(v123)));
      if (v116 + v122 >= 0x81)
      {
        v98 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v124[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v124[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v98);
      }

      v96 = v121;
    }

    else
    {
      v56 = 1;
    }

    v125 = vshlq_u64(v98, vnegq_s64(v119));
    v126 = vuzp1q_s32(vzip1q_s64(v98, v125), vzip2q_s64(v98, v125));
    v127 = vshlq_u32(v126, vnegq_s32(v120));
    v98 = vuzp1q_s16(vzip1q_s32(v126, v127), vzip2q_s32(v126, v127));
  }

  v128 = vmovl_u16(*&vpaddq_s16(v74, v74));
  v129 = vpaddq_s32(v128, v128).u64[0];
  v130.i64[0] = v129;
  v130.i64[1] = HIDWORD(v129);
  v131 = v130;
  v132 = vaddvq_s64(v130);
  if (v132 >= 0x81)
  {
    v56 = 1;
    v139 = 0uLL;
  }

  else
  {
    v133 = vzip1_s32(*v128.i8, *&vextq_s8(v128, v128, 8uLL));
    v134.i64[0] = v133.u32[0];
    v134.i64[1] = v133.u32[1];
    v135 = v134;
    v136 = vandq_s8(v74, v111);
    v137 = v132 + v96;
    if (v41 >= v132 + v96)
    {
      v140 = v96 & 0x3F;
      v141 = vaddq_s64(vzip1q_s64(0, v131), vdupq_n_s64(v140));
      v142 = (v38 + 8 * (v96 >> 6));
      v138 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v142, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v141)), vshlq_u64(vdupq_lane_s64(v142->i64[0], 0), vnegq_s64(v141)));
      if (v132 + v140 >= 0x81)
      {
        v138 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v142[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v141)), vshlq_u64(vdupq_laneq_s64(v142[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v141))), v138);
      }

      v96 = v137;
    }

    else
    {
      v138 = 0uLL;
      v56 = 1;
    }

    v143 = vshlq_u64(v138, vnegq_s64(v135));
    v144 = vuzp1q_s32(vzip1q_s64(v138, v143), vzip2q_s64(v138, v143));
    v145 = vshlq_u32(v144, vnegq_s32(v136));
    v139 = vuzp1q_s16(vzip1q_s32(v144, v145), vzip2q_s32(v144, v145));
  }

  v146 = vmovl_u16(*&vpaddq_s16(v75, v75));
  v147 = vpaddq_s32(v146, v146).u64[0];
  v148.i64[0] = v147;
  v148.i64[1] = HIDWORD(v147);
  v149 = v148;
  v150 = vaddvq_s64(v148);
  if (v150 >= 0x81 || v41 < v150 + v96)
  {
    goto LABEL_88;
  }

  v151 = vaddq_s64(vzip1q_s64(0, v149), vdupq_n_s64(v96 & 0x3F));
  v152 = (v38 + 8 * (v96 >> 6));
  v153 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v152, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v151)), vshlq_u64(vdupq_lane_s64(v152->i64[0], 0), vnegq_s64(v151)));
  if (v150 + (v96 & 0x3F) >= 0x81)
  {
    v153 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v152[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v151)), vshlq_u64(vdupq_laneq_s64(v152[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v151))), v153);
  }

  if ((v56 & 1) != 0 || (v14 = (a4 & 0x3F) + 1, 8 * ((a3 & 7) + v14) - (v150 + v96) >= 9))
  {
LABEL_88:
    v154 = 0;
    v155 = 0;
    v156 = 8 * (&v226 & 7);
    v157 = 16;
    do
    {
      v158 = 64 - v156;
      if (64 - v156 >= v157)
      {
        v158 = v157;
      }

      *(&v226 + v154) |= ((0xFFFFFFFFFFFFFFFFLL >> v155) & ~(-1 << v158)) << v156;
      v155 += v158;
      v159 = v158 + v156;
      v154 += v159 >> 6;
      v156 = v159 & 0x3F;
      v157 -= v158;
    }

    while (v157);
    v14 = 0;
    v160 = (a1->i64 + a2);
    a1->i64[0] = 0;
    a1->i64[1] = 0;
    v161 = (a1->i64 + 2 * a2);
    *v160 = 0;
    v160[1] = 0;
    v17 = (a1->i64 + 2 * a2 + a2);
    *v161 = 0;
    v161[1] = 0;
    goto LABEL_6;
  }

  v162 = vzip1_s32(*v83.i8, *&vextq_s8(v83, v83, 8uLL));
  v163 = vzip1_s32(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
  v164.i64[0] = v162.u32[0];
  v164.i64[1] = v162.u32[1];
  v165 = v164;
  v164.i64[0] = v163.u32[0];
  v164.i64[1] = v163.u32[1];
  v166 = vshlq_u64(v81, vnegq_s64(v165));
  v167 = vshlq_u64(v107, vnegq_s64(v164));
  v168 = vuzp1q_s32(vzip1q_s64(v81, v166), vzip2q_s64(v81, v166));
  v169 = vuzp1q_s32(vzip1q_s64(v107, v167), vzip2q_s64(v107, v167));
  v170 = vshlq_u32(v168, vnegq_s32((*&v82 & __PAIR128__(0xFFE0FFFFFFE0FFFFLL, 0xFFE0FFFFFFE0FFFFLL))));
  v171 = vshlq_u32(v169, vnegq_s32(vandq_s8(v99, v111)));
  v172 = vzip2q_s32(v168, v170);
  v173 = vzip1q_s32(v168, v170);
  v170.i64[0] = 0x10001000100010;
  v170.i64[1] = 0x10001000100010;
  v174 = vzip2q_s32(v169, v171);
  v175 = vzip1q_s32(v169, v171);
  v171.i64[0] = 0x10001000100010;
  v171.i64[1] = 0x10001000100010;
  v176 = v40 >> 6;
  v177 = vuzp1q_s16(v173, v172);
  v172.i64[0] = 0xF000F000F000FLL;
  v172.i64[1] = 0xF000F000F000FLL;
  v178 = vuzp1q_s16(v175, v174);
  v174.i64[0] = 0xF000F000F000FLL;
  v174.i64[1] = 0xF000F000F000FLL;
  v179 = vzip1_s32(*v146.i8, *&vextq_s8(v146, v146, 8uLL));
  v180.i64[0] = 0xFFFF0000FFFFLL;
  v180.i64[1] = 0xFFFF0000FFFFLL;
  v181.i64[0] = 0xF000F000F000FLL;
  v181.i64[1] = 0xF000F000F000FLL;
  v182.i64[0] = 0x10001000100010;
  v182.i64[1] = 0x10001000100010;
  v164.i64[0] = v179.u32[0];
  v164.i64[1] = v179.u32[1];
  v183 = vshlq_s16(vshlq_s16(v177, vsubq_s16(v170, v82)), vaddq_s16(v82, v172));
  v184 = vshlq_s16(vshlq_s16(v178, vsubq_s16(v171, v99)), vaddq_s16(v99, v174));
  v185 = vshlq_s16(vshlq_s16(v98, vsubq_s16(v171, v73)), vaddq_s16(v73, v174));
  v186 = vshlq_s16(vshlq_s16(v139, vsubq_s16(v171, v74)), vaddq_s16(v74, v174));
  v187 = vshlq_u64(v153, vnegq_s64(v164));
  v188 = vuzp1q_s32(vzip1q_s64(v153, v187), vzip2q_s64(v153, v187));
  v189 = vshlq_u32(v188, vnegq_s32(vandq_s8(v75, v180)));
  v190 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v188, v189), vzip2q_s32(v188, v189)), vsubq_s16(v182, v75)), vaddq_s16(v75, v181));
  if (v91 == 2)
  {
    v191.i64[0] = 0xFFFFFFFF00000000;
    v191.i64[1] = 0xFFFFFFFF00000000;
    v192 = vmlal_s8(vandq_s8(vdupq_n_s16(v95), v191), vdup_n_s8(v93), 0x302030201000100);
    v184 = vaddq_s16(v184, v192);
    v185 = vaddq_s16(vaddq_s16(vdupq_n_s16(2 * v95), v192), v185);
    v186 = vaddq_s16(vaddq_s16(vdupq_n_s16(4 * v93), v192), v186);
    v190 = vaddq_s16(vaddq_s16(vdupq_n_s16(4 * v93 + 2 * v95), v192), v190);
  }

  v193 = vdupq_n_s16(v176);
  v194 = vaddq_s16(vandq_s8(v183, v76), v184);
  v195 = vdupq_lane_s16(*v183.i8, 0);
  v196 = vsubq_s16(v194, vandq_s8(v195, v76));
  v197 = vsubq_s16(v185, vandq_s8(v195, v77));
  v198 = vsubq_s16(v186, vandq_s8(v195, v78));
  v199 = vsubq_s16(v190, vandq_s8(v195, v79));
  v200.i64[0] = 0x1000100010001;
  v200.i64[1] = 0x1000100010001;
  if (vaddvq_s16(vceqq_s16((*&v43 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v200)))
  {
    v201 = *&v43 & __PAIR128__(0xFFF1FFF1FFF1FFF1, 0xFFF1FFF1FFF1FFF1);
    v202 = vnegq_s16(v201);
    v203 = v196;
    v203.i16[0] = v196.i16[7];
    v203.i16[7] = v196.i16[0];
    v204 = vorrq_s8(vandq_s8(v203, v202), vandq_s8(v196, vceqzq_s16(v201)));
    v205 = vaddq_s16(v204, vandq_s8(vqtbl1q_s8(v204, xmmword_29D2F0E60), v202));
    v196 = vaddq_s16(v205, vandq_s8(vqtbl1q_s8(v205, xmmword_29D2F0E70), v202));
    v206 = vaddq_s16(vandq_s8(vqtbl1q_s8(v197, xmmword_29D2F0E80), v202), v197);
    v197 = vaddq_s16(vandq_s8(vqtbl1q_s8(v206, xmmword_29D2F0E90), v202), v206);
    v207 = vaddq_s16(vandq_s8(vqtbl1q_s8(v198, xmmword_29D2F0EA0), v202), v198);
    v198 = vaddq_s16(vandq_s8(vqtbl1q_s8(v207, xmmword_29D2F0EB0), v202), v207);
    v208 = vaddq_s16(vandq_s8(vqtbl1q_s8(v199, xmmword_29D2F0EC0), v202), v199);
    v199 = vaddq_s16(vandq_s8(vqtbl1q_s8(v208, xmmword_29D2F0ED0), v202), v208);
  }

  v209 = vaddq_s16(v193, v196);
  v210 = vaddq_s16(v197, v193);
  v211 = vaddq_s16(v198, v193);
  v212 = vaddq_s16(v199, v193);
  *a1 = vuzp1q_s32(v209, v211);
  *(a1 + a2) = vuzp2q_s32(v209, v211);
  v213 = (a1 + 2 * a2);
  *v213 = vuzp1q_s32(v210, v212);
  *(v213 + a2) = vuzp2q_s32(v210, v212);
  return v14;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, int16x4_t a12, double a13, double a14, int16x4_t a15)
{
  v16 = a6;
  v17 = a5;
  v19 = a3;
  v21 = result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
  }

  else
  {
    *a4 = 0;
  }

  v22 = v17 - 8;
  if (v17 >= 9 && v16)
  {
    if (v16 >= 4)
    {
      v23 = 4;
    }

    else
    {
      v23 = v16;
    }

    if (v22 >= 8)
    {
      v24 = 8;
    }

    else
    {
      v24 = v17 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 1, v21 + 1, a2, v24, v23, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v25 = 4 * a2;
  v26 = v16 - 4;
  if (v17 && v16 >= 5)
  {
    if (v26 >= 4)
    {
      v27 = 4;
    }

    else
    {
      v27 = v16 - 4;
    }

    if (v17 >= 8)
    {
      v28 = 8;
    }

    else
    {
      v28 = v17;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 2, (v21 + v25), a2, v28, v27, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
    if (v17 < 9)
    {
      goto LABEL_38;
    }
  }

  else
  {
    a4[2] = 0;
    if (v17 < 9)
    {
      goto LABEL_38;
    }
  }

  if (v16 >= 5)
  {
    if (v26 >= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = v16 - 4;
    }

    if (v22 >= 8)
    {
      v30 = 8;
    }

    else
    {
      v30 = v17 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 3, (v21 + v25 + 16), a2, v30, v29, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
    v31 = v16 - 8;
    goto LABEL_39;
  }

LABEL_38:
  a4[3] = 0;
  v31 = v16 - 8;
  if (!v17)
  {
    goto LABEL_48;
  }

LABEL_39:
  if (v16 < 9)
  {
LABEL_48:
    a4[4] = 0;
    if (v17 < 9)
    {
      goto LABEL_57;
    }

    goto LABEL_49;
  }

  if (v31 >= 4)
  {
    v32 = 4;
  }

  else
  {
    v32 = v31;
  }

  if (v17 >= 8)
  {
    v33 = 8;
  }

  else
  {
    v33 = v17;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 4, (v21 + 8 * a2), a2, v33, v32, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  v19 += result;
  if (v17 < 9)
  {
LABEL_57:
    a4[5] = 0;
    v36 = v16 - 12;
    if (!v17)
    {
      goto LABEL_67;
    }

    goto LABEL_58;
  }

LABEL_49:
  if (v16 < 9)
  {
    goto LABEL_57;
  }

  if (v31 >= 4)
  {
    v34 = 4;
  }

  else
  {
    v34 = v31;
  }

  if (v22 >= 8)
  {
    v35 = 8;
  }

  else
  {
    v35 = v17 - 8;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 5, (v21 + 8 * a2 + 16), a2, v35, v34, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  v19 += result;
  v36 = v16 - 12;
LABEL_58:
  if (v16 >= 0xD)
  {
    if (v36 >= 4)
    {
      v37 = 4;
    }

    else
    {
      v37 = v36;
    }

    if (v17 >= 8)
    {
      v38 = 8;
    }

    else
    {
      v38 = v17;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 6, (v21 + 12 * a2), a2, v38, v37, a7, a8, a9, a10, a11, a12, a13, a14, a15);
    v19 += result;
    if (v17 < 9)
    {
      goto LABEL_78;
    }

    goto LABEL_68;
  }

LABEL_67:
  a4[6] = 0;
  if (v17 < 9)
  {
LABEL_78:
    a4[7] = 0;
    return result;
  }

LABEL_68:
  if (v16 < 0xD)
  {
    goto LABEL_78;
  }

  if (v36 >= 4)
  {
    v39 = 4;
  }

  else
  {
    v39 = v36;
  }

  if (v22 >= 8)
  {
    v40 = 8;
  }

  else
  {
    v40 = v17 - 8;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(v19, a4 + 7, (v21 + 12 * a2 + 16), a2, v40, v39, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(int16x8_t *a1, unint64_t a2, unsigned __int8 *a3, int a4, double a5, double a6, double a7, int8x8_t a8)
{
  v11 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1, 32, a2, *a3, a4, a5, a6, a7, a8);
  v16 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 1, 32, v11, a3[1], a4, v12, v13, v14, v15);
  v21 = v16 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 8, 32, v16, a3[2], a4, v17, v18, v19, v20);
  v26 = v21 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 9, 32, v21, a3[3], a4, v22, v23, v24, v25);
  v31 = v26 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 16, 32, v26, a3[4], a4, v27, v28, v29, v30);
  v36 = v31 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 17, 32, v31, a3[5], a4, v32, v33, v34, v35);
  v41 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 24, 32, v36, a3[6], a4, v37, v38, v39, v40);
  v46 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressSubblock(a1 + 25, 32, v36 + v41, v46, a4, v42, v43, v44, v45);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(int32x4_t *a1, uint64_t a2, int32x4_t *a3, unsigned int a4, double a5, double a6, double a7, int8x8_t a8)
{
  switch(a4)
  {
    case 0x3Fu:
      v15 = *a3;
      v16 = a3[1];
      v17 = a3[2];
      v18 = a3[3];
      *a1 = vuzp1q_s32(*a3, v17);
      *(a1 + a2) = vuzp2q_s32(v15, v17);
      v19 = (a1 + 2 * a2);
      *v19 = vuzp1q_s32(v16, v18);
      *(v19 + a2) = vuzp2q_s32(v16, v18);
      return 64;
    case 1u:
      v14 = vld1q_dup_s16(a3->i16);
      *a1 = v14;
      *(a1 + a2) = v14;
      *(a1 + 2 * a2) = v14;
      *(a1 + 3 * a2) = v14;
      return 2;
    case 0u:
      a1->i64[0] = 0;
      a1->i64[1] = 0;
      v10 = (a1->i64 + a2);
      *v10 = 0;
      v10[1] = 0;
      v11 = (a1->i64 + 2 * a2);
      *v11 = 0;
      v11[1] = 0;
      v12 = (a1->i64 + 2 * a2 + a2);
      *v12 = 0;
      v12[1] = 0;
      return 0;
  }

  v201 = v9;
  v202 = v8;
  v20 = 8 * (a3 & 7);
  v21 = a3 & 0xFFFFFFFFFFFFFFF8;
  v22 = v20 + 22;
  v23 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v20;
  if (v20 >= 0x2B)
  {
    v23 |= *(v21 + 8) << (-8 * (a3 & 7u));
  }

  v24 = (8 * (a3 & 7)) | 0x200;
  v25 = ((a4 >> 6) | (4 * v23)) & 0xF;
  v26 = vdupq_n_s16(v25);
  a8.i32[0] = v25;
  v27.i64[0] = 0x3000300030003;
  v27.i64[1] = 0x3000300030003;
  v28 = vbicq_s8(vdupq_n_s16(((v23 >> 2) & 0xF) + 1), vceqq_s16((*&v26 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v27));
  v29 = vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(vand_s8(a8, 0x4000400040004), 0))));
  v30.i64[0] = 0x202020202020202;
  v30.i64[1] = 0x202020202020202;
  v31 = vandq_s8(v29, v30);
  if (vmaxvq_s8(v31) < 1)
  {
    v39 = 0;
    v62.i64[0] = -1;
    v62.i64[1] = -1;
    v58 = v28;
    v57 = v28;
    v56 = v28;
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
    v32 = vmovl_u8(*&vpaddq_s8(v31, v31));
    v33 = vmovl_u16(*&vpaddq_s16(v32, v32));
    v34 = vpaddq_s32(v33, v33).u64[0];
    v35.i64[0] = v34;
    v35.i64[1] = HIDWORD(v34);
    v36 = v35;
    v37 = vaddvq_s64(v35);
    v38 = v37 <= 0x80 && v24 >= v37 + v22;
    v39 = !v38;
    v40 = 0uLL;
    if (v38)
    {
      v41 = vaddq_s64(vzip1q_s64(0, v36), vdupq_n_s64(v22 & 0x3E));
      v42 = (v21 + ((v22 >> 3) & 8));
      v40 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v42, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v41)), vshlq_u64(vdupq_lane_s64(v42->i64[0], 0), vnegq_s64(v41)));
      if (v37 + (v22 & 0x3E) >= 0x81)
      {
        v40 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v42[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v41)), vshlq_u64(vdupq_laneq_s64(v42[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v41))), v40);
      }

      v22 += v37;
    }

    v43 = vzip1_s32(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
    v44.i64[0] = v43.u32[0];
    v44.i64[1] = v43.u32[1];
    v45 = vshlq_u64(v40, vnegq_s64(v44));
    v46 = vuzp1q_s32(vzip1q_s64(v40, v45), vzip2q_s64(v40, v45));
    v47 = vshlq_u32(v46, vnegq_s32((*&v32 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v48 = vuzp1q_s16(vzip1q_s32(v46, v47), vzip2q_s32(v46, v47));
    v49 = vzip1q_s16(v48, vshlq_u16(v48, vnegq_s16(vmovl_u8(vuzp1_s8(*v31.i8, *v26.i8)))));
    *v49.i8 = vmovn_s16(v49);
    v46.i64[0] = 0x101010101010101;
    v46.i64[1] = 0x101010101010101;
    v50 = vshlq_s8(v46, v31);
    v46.i64[0] = -1;
    v46.i64[1] = -1;
    v50.i32[0] = vandq_s8(vaddq_s8(v50, v46), v49).u32[0];
    v51 = vdupq_n_s16(v50.i8[0]);
    v52 = vdupq_n_s16(v50.i8[1]);
    v53 = vdupq_n_s16(v50.i8[2]);
    v54 = vdupq_n_s16(v50.i8[3]);
    v55 = vsubq_s16(v28, v51);
    v56 = vsubq_s16(v28, v52);
    v57 = vsubq_s16(v28, v53);
    v58 = vsubq_s16(v28, v54);
    v59 = vceqzq_s16(v51);
    v60 = vceqzq_s16(v52);
    v61 = vceqzq_s16(v53);
    v62 = vceqzq_s16(v54);
  }

  v63.i64[0] = 0x7000700070007;
  v63.i64[1] = 0x7000700070007;
  v64 = 0uLL;
  v65 = vandq_s8(vextq_s8(vcgtq_u16(v26, v63), 0, 0xEuLL), v28);
  v66 = vmovl_u16(*&vpaddq_s16(v65, v65));
  v67 = vpaddq_s32(v66, v66).u64[0];
  v68.i64[0] = v67;
  v68.i64[1] = HIDWORD(v67);
  v69 = v68;
  v70 = vaddvq_s64(v68);
  if (v70 <= 0x80 && v24 >= v70 + v22)
  {
    v72 = vaddq_s64(vzip1q_s64(0, v69), vdupq_n_s64(v22 & 0x3F));
    v73 = (v21 + 8 * (v22 >> 6));
    v64 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v73, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v72)), vshlq_u64(vdupq_lane_s64(v73->i64[0], 0), vnegq_s64(v72)));
    if (v70 + (v22 & 0x3F) >= 0x81)
    {
      v64 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v73[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v72)), vshlq_u64(vdupq_laneq_s64(v73[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v72))), v64);
    }

    v22 += v70;
  }

  else
  {
    v39 = 1;
  }

  v74 = v25 & 3;
  if (v74 == 2)
  {
    v75 = v22 + 8;
    if (v24 >= v22 + 8)
    {
      v80 = (v21 + 8 * (v22 >> 6));
      v76 = *v80 >> v22;
      if ((v22 & 0x3F) >= 0x39)
      {
        v76 |= v80[1] << -(v22 & 0x3F);
      }

      LODWORD(v76) = v76;
      v79 = v22 + 16;
      if (v24 >= v22 + 16)
      {
        v77 = (v21 + 8 * (v75 >> 6));
        v78 = *v77 >> v75;
        if ((v75 & 0x3F) >= 0x39)
        {
          v78 |= v77[1] << -(v75 & 0x3F);
        }

        LODWORD(v78) = v78;
        goto LABEL_42;
      }
    }

    else
    {
      LODWORD(v76) = 0;
      v75 = v22;
    }

    LODWORD(v78) = 0;
    v39 = 1;
    v79 = v75;
  }

  else
  {
    LODWORD(v78) = 0;
    LODWORD(v76) = 0;
    v79 = v22;
  }

LABEL_42:
  v81 = 0uLL;
  v82 = vextq_s8(0, v55, 0xEuLL);
  v83 = vmovl_u16(*&vpaddq_s16(v82, v82));
  v84 = vpaddq_s32(v83, v83).u64[0];
  v85.i64[0] = v84;
  v85.i64[1] = HIDWORD(v84);
  v86 = v85;
  v87 = vaddvq_s64(v85);
  v88 = v87 + v79;
  if (v87 <= 0x80 && v24 >= v88)
  {
    v91 = v79 & 0x3F;
    v92 = vaddq_s64(vzip1q_s64(0, v86), vdupq_n_s64(v91));
    v93 = (v21 + 8 * (v79 >> 6));
    v90 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v93, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v92)), vshlq_u64(vdupq_lane_s64(v93->i64[0], 0), vnegq_s64(v92)));
    if (v87 + v91 >= 0x81)
    {
      v90 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v93[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v92)), vshlq_u64(vdupq_laneq_s64(v93[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v92))), v90);
    }

    v79 = v88;
  }

  else
  {
    v39 = 1;
    v90 = 0uLL;
  }

  v94.i64[0] = 0xFFFF0000FFFFLL;
  v94.i64[1] = 0xFFFF0000FFFFLL;
  v95 = vmovl_u16(*&vpaddq_s16(v56, v56));
  v96 = vpaddq_s32(v95, v95).u64[0];
  v97.i64[0] = v96;
  v97.i64[1] = HIDWORD(v96);
  v98 = v97;
  v99 = vaddvq_s64(v97);
  if (v99 >= 0x81)
  {
    v39 = 1;
  }

  else
  {
    v100 = vzip1_s32(*v95.i8, *&vextq_s8(v95, v95, 8uLL));
    v101.i64[0] = v100.u32[0];
    v101.i64[1] = v100.u32[1];
    v102 = v101;
    v103 = vandq_s8(v56, v94);
    v104 = v99 + v79;
    if (v24 >= v99 + v79)
    {
      v105 = v79 & 0x3F;
      v106 = vaddq_s64(vzip1q_s64(0, v98), vdupq_n_s64(v105));
      v107 = (v21 + 8 * (v79 >> 6));
      v81 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v107, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v106)), vshlq_u64(vdupq_lane_s64(v107->i64[0], 0), vnegq_s64(v106)));
      if (v99 + v105 >= 0x81)
      {
        v81 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v107[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v106)), vshlq_u64(vdupq_laneq_s64(v107[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v106))), v81);
      }

      v79 = v104;
    }

    else
    {
      v39 = 1;
    }

    v108 = vshlq_u64(v81, vnegq_s64(v102));
    v109 = vuzp1q_s32(vzip1q_s64(v81, v108), vzip2q_s64(v81, v108));
    v110 = vshlq_u32(v109, vnegq_s32(v103));
    v81 = vuzp1q_s16(vzip1q_s32(v109, v110), vzip2q_s32(v109, v110));
  }

  v111 = vmovl_u16(*&vpaddq_s16(v57, v57));
  v112 = vpaddq_s32(v111, v111).u64[0];
  v113.i64[0] = v112;
  v113.i64[1] = HIDWORD(v112);
  v114 = v113;
  v115 = vaddvq_s64(v113);
  if (v115 >= 0x81)
  {
    v39 = 1;
    v122 = 0uLL;
  }

  else
  {
    v116 = vzip1_s32(*v111.i8, *&vextq_s8(v111, v111, 8uLL));
    v117.i64[0] = v116.u32[0];
    v117.i64[1] = v116.u32[1];
    v118 = v117;
    v119 = vandq_s8(v57, v94);
    v120 = v115 + v79;
    if (v24 >= v115 + v79)
    {
      v123 = v79 & 0x3F;
      v124 = vaddq_s64(vzip1q_s64(0, v114), vdupq_n_s64(v123));
      v125 = (v21 + 8 * (v79 >> 6));
      v121 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v125, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v124)), vshlq_u64(vdupq_lane_s64(v125->i64[0], 0), vnegq_s64(v124)));
      if (v115 + v123 >= 0x81)
      {
        v121 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v125[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v124)), vshlq_u64(vdupq_laneq_s64(v125[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v124))), v121);
      }

      v79 = v120;
    }

    else
    {
      v121 = 0uLL;
      v39 = 1;
    }

    v126 = vshlq_u64(v121, vnegq_s64(v118));
    v127 = vuzp1q_s32(vzip1q_s64(v121, v126), vzip2q_s64(v121, v126));
    v128 = vshlq_u32(v127, vnegq_s32(v119));
    v122 = vuzp1q_s16(vzip1q_s32(v127, v128), vzip2q_s32(v127, v128));
  }

  v129 = vmovl_u16(*&vpaddq_s16(v58, v58));
  v130 = vpaddq_s32(v129, v129).u64[0];
  v131.i64[0] = v130;
  v131.i64[1] = HIDWORD(v130);
  v132 = v131;
  v133 = vaddvq_s64(v131);
  if (v133 >= 0x81 || v24 < v133 + v79)
  {
    goto LABEL_72;
  }

  v134 = vaddq_s64(vzip1q_s64(0, v132), vdupq_n_s64(v79 & 0x3F));
  v135 = (v21 + 8 * (v79 >> 6));
  v136 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v135, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v134)), vshlq_u64(vdupq_lane_s64(v135->i64[0], 0), vnegq_s64(v134)));
  if (v133 + (v79 & 0x3F) >= 0x81)
  {
    v136 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v135[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v134)), vshlq_u64(vdupq_laneq_s64(v135[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v134))), v136);
  }

  if ((v39 & 1) != 0 || (v137 = (a4 & 0x3F) + 1, 8 * ((a3 & 7) + v137) - (v133 + v79) >= 9))
  {
LABEL_72:
    v138 = 0;
    v139 = 0;
    v140 = 8 * (&v200 & 7);
    v141 = 16;
    do
    {
      v142 = 64 - v140;
      if (64 - v140 >= v141)
      {
        v142 = v141;
      }

      *&v199[8 * v138] |= ((0xFFFFFFFFFFFFFFFFLL >> v139) & ~(-1 << v142)) << v140;
      v139 += v142;
      v143 = v142 + v140;
      v138 += v143 >> 6;
      v140 = v143 & 0x3F;
      v141 -= v142;
    }

    while (v141);
    v137 = 0;
    v144 = (a1->i64 + a2);
    a1->i64[0] = 0;
    a1->i64[1] = 0;
    v145 = (a1->i64 + 2 * a2);
    *v144 = 0;
    v144[1] = 0;
    v146 = (a1->i64 + 2 * a2 + a2);
    *v145 = 0;
    v145[1] = 0;
    *v146 = 0;
    v146[1] = 0;
  }

  else
  {
    v147 = vzip1_s32(*v66.i8, *&vextq_s8(v66, v66, 8uLL));
    v148 = vzip1_s32(*v83.i8, *&vextq_s8(v83, v83, 8uLL));
    v149.i64[0] = v147.u32[0];
    v149.i64[1] = v147.u32[1];
    v150 = v149;
    v149.i64[0] = v148.u32[0];
    v149.i64[1] = v148.u32[1];
    v151 = vshlq_u64(v64, vnegq_s64(v150));
    v152 = vshlq_u64(v90, vnegq_s64(v149));
    v153 = vuzp1q_s32(vzip1q_s64(v64, v151), vzip2q_s64(v64, v151));
    v154 = vuzp1q_s32(vzip1q_s64(v90, v152), vzip2q_s64(v90, v152));
    v155 = vshlq_u32(v153, vnegq_s32((*&v65 & __PAIR128__(0xFFE0FFFFFFE0FFFFLL, 0xFFE0FFFFFFE0FFFFLL))));
    v156 = vshlq_u32(v154, vnegq_s32(vandq_s8(v82, v94)));
    v157 = vzip2q_s32(v153, v155);
    v158 = vzip1q_s32(v153, v155);
    v155.i64[0] = 0x10001000100010;
    v155.i64[1] = 0x10001000100010;
    v159 = vzip2q_s32(v154, v156);
    v160 = vzip1q_s32(v154, v156);
    v156.i64[0] = 0x10001000100010;
    v156.i64[1] = 0x10001000100010;
    v161 = v23 >> 6;
    v162 = vuzp1q_s16(v158, v157);
    v157.i64[0] = 0xF000F000F000FLL;
    v157.i64[1] = 0xF000F000F000FLL;
    v163 = vuzp1q_s16(v160, v159);
    v159.i64[0] = 0xF000F000F000FLL;
    v159.i64[1] = 0xF000F000F000FLL;
    v164 = vzip1_s32(*v129.i8, *&vextq_s8(v129, v129, 8uLL));
    v165.i64[0] = 0xFFFF0000FFFFLL;
    v165.i64[1] = 0xFFFF0000FFFFLL;
    v166.i64[0] = 0xF000F000F000FLL;
    v166.i64[1] = 0xF000F000F000FLL;
    v167.i64[0] = 0x10001000100010;
    v167.i64[1] = 0x10001000100010;
    v149.i64[0] = v164.u32[0];
    v149.i64[1] = v164.u32[1];
    v168 = vshlq_s16(vshlq_s16(v162, vsubq_s16(v155, v65)), vaddq_s16(v65, v157));
    v169 = vshlq_s16(vshlq_s16(v163, vsubq_s16(v156, v82)), vaddq_s16(v82, v159));
    v170 = vshlq_s16(vshlq_s16(v81, vsubq_s16(v156, v56)), vaddq_s16(v56, v159));
    v171 = vshlq_s16(vshlq_s16(v122, vsubq_s16(v156, v57)), vaddq_s16(v57, v159));
    v172 = vshlq_u64(v136, vnegq_s64(v149));
    v173 = vuzp1q_s32(vzip1q_s64(v136, v172), vzip2q_s64(v136, v172));
    v174 = vshlq_u32(v173, vnegq_s32(vandq_s8(v58, v165)));
    v175 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v173, v174), vzip2q_s32(v173, v174)), vsubq_s16(v167, v58)), vaddq_s16(v58, v166));
    if (v74 == 2)
    {
      v176.i64[0] = 0xFFFFFFFF00000000;
      v176.i64[1] = 0xFFFFFFFF00000000;
      v177 = vmlal_s8(vandq_s8(vdupq_n_s16(v78), v176), vdup_n_s8(v76), 0x302030201000100);
      v169 = vaddq_s16(v169, v177);
      v170 = vaddq_s16(vaddq_s16(vdupq_n_s16(2 * v78), v177), v170);
      v171 = vaddq_s16(vaddq_s16(vdupq_n_s16(4 * v76), v177), v171);
      v175 = vaddq_s16(vaddq_s16(vdupq_n_s16(4 * v76 + 2 * v78), v177), v175);
    }

    v178 = vdupq_n_s16(v161);
    v179 = vaddq_s16(vandq_s8(v168, v59), v169);
    v180 = vdupq_lane_s16(*v168.i8, 0);
    v181 = vsubq_s16(v179, vandq_s8(v180, v59));
    v182 = vsubq_s16(v170, vandq_s8(v180, v60));
    v183 = vsubq_s16(v171, vandq_s8(v180, v61));
    v184 = vsubq_s16(v175, vandq_s8(v180, v62));
    v185.i64[0] = 0x1000100010001;
    v185.i64[1] = 0x1000100010001;
    if (vaddvq_s16(vceqq_s16((*&v26 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v185)))
    {
      v186 = *&v26 & __PAIR128__(0xFFF1FFF1FFF1FFF1, 0xFFF1FFF1FFF1FFF1);
      v187 = vnegq_s16(v186);
      v188 = v181;
      v188.i16[0] = v181.i16[7];
      v188.i16[7] = v181.i16[0];
      v189 = vorrq_s8(vandq_s8(v188, v187), vandq_s8(v181, vceqzq_s16(v186)));
      v190 = vaddq_s16(v189, vandq_s8(vqtbl1q_s8(v189, xmmword_29D2F0E60), v187));
      v181 = vaddq_s16(v190, vandq_s8(vqtbl1q_s8(v190, xmmword_29D2F0E70), v187));
      v191 = vaddq_s16(vandq_s8(vqtbl1q_s8(v182, xmmword_29D2F0E80), v187), v182);
      v182 = vaddq_s16(vandq_s8(vqtbl1q_s8(v191, xmmword_29D2F0E90), v187), v191);
      v192 = vaddq_s16(vandq_s8(vqtbl1q_s8(v183, xmmword_29D2F0EA0), v187), v183);
      v183 = vaddq_s16(vandq_s8(vqtbl1q_s8(v192, xmmword_29D2F0EB0), v187), v192);
      v193 = vaddq_s16(vandq_s8(vqtbl1q_s8(v184, xmmword_29D2F0EC0), v187), v184);
      v184 = vaddq_s16(vandq_s8(vqtbl1q_s8(v193, xmmword_29D2F0ED0), v187), v193);
    }

    v194 = vaddq_s16(v178, v181);
    v195 = vaddq_s16(v182, v178);
    v196 = vaddq_s16(v183, v178);
    v197 = vaddq_s16(v184, v178);
    *a1 = vuzp1q_s32(v194, v196);
    *(a1 + a2) = vuzp2q_s32(v194, v196);
    v198 = (a1 + 2 * a2);
    *v198 = vuzp1q_s32(v195, v197);
    *(v198 + a2) = vuzp2q_s32(v195, v197);
  }

  return v137;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressSubblock(uint64_t a1, _BYTE *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, int16x4_t a12, double a13, double a14, int16x4_t a15)
{
  v17 = *(a3 + a4);
  v18 = vzip1q_s32(*a3, v17);
  v19 = vzip2q_s32(*a3, v17);
  v20 = (a3 + 2 * a4);
  v21 = *(v20 + a4);
  v22 = *v20;
  v23 = vzip1q_s32(*v20, v21);
  v24 = vzip2q_s32(*v20, v21);
  v25 = vdupq_lane_s16(*v18.i8, 0);
  v26 = vsubq_s16(v18, v25);
  v27 = vsubq_s16(v23, v25);
  v28 = vsubq_s16(v19, v25);
  v29 = vsubq_s16(v24, v25);
  v21.i16[0] = vmaxvq_s16(v26);
  v30 = vdupq_lane_s16(*v21.i8, 0);
  v22.i16[0] = vminvq_s16(v26);
  v31 = vdupq_lane_s16(*v22.i8, 0);
  v32.i64[0] = 0x8000800080008000;
  v32.i64[1] = 0x8000800080008000;
  v33 = vmaxq_s16(v30, v32);
  v34.i64[0] = 0x8000800080008000;
  v34.i64[1] = 0x8000800080008000;
  v35 = vminq_s16(v31, v34);
  v36 = vzip1q_s16(v30, v31);
  v37.i64[0] = 0x10001000100010;
  v37.i64[1] = 0x10001000100010;
  v38 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v36)), vceqzq_s16(v36));
  v39 = vpmaxq_s16(v38, v38);
  v38.i16[0] = vmaxvq_s16(v27);
  a12.i16[0] = vminvq_s16(v27);
  v40 = vdupq_lane_s16(*v38.i8, 0);
  v41 = vdupq_lane_s16(a12, 0);
  v42 = vmaxq_s16(v33, v40);
  v43 = vminq_s16(v35, v41);
  v44 = vzip1q_s16(v40, v41);
  v45 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v44)), vceqzq_s16(v44));
  v46 = vpmaxq_s16(v45, v45);
  v45.i16[0] = vmaxvq_s16(v28);
  a15.i16[0] = vminvq_s16(v28);
  v47 = vdupq_lane_s16(*v45.i8, 0);
  v48 = vdupq_lane_s16(a15, 0);
  v49 = vmaxq_s16(v42, v47);
  v50 = vminq_s16(v43, v48);
  v51 = vzip1q_s16(v47, v48);
  v52 = vsubq_s16(v37, vclsq_s16(v51));
  v53 = vbicq_s8(v52, vceqzq_s16(v51));
  v54 = vpmaxq_s16(v53, v53);
  v52.i16[0] = vmaxvq_s16(v29);
  v15.i16[0] = vminvq_s16(v29);
  v55 = vdupq_lane_s16(*v52.i8, 0);
  v56 = vdupq_lane_s16(v15, 0);
  v57 = vmaxq_s16(v49, v55);
  v58 = vminq_s16(v50, v56);
  v59 = vzip1q_s16(v55, v56);
  v60 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v59)), vceqzq_s16(v59));
  v61 = vpmaxq_s16(v60, v60);
  v62 = vmaxq_s16(vmaxq_s16(v39, v46), vmaxq_s16(v54, v61));
  v63 = vclzq_s16(vsubq_s16(v57, v58));
  v64 = vsubq_s16(v37, v63);
  v65 = vminq_s16(v64, v62);
  if (vmaxvq_s16(v65))
  {
    v66 = 0;
    v67 = 0;
    v68.i64[0] = -1;
    v68.i64[1] = -1;
    v69.i64[0] = 0xF000F000F000FLL;
    v69.i64[1] = 0xF000F000F000FLL;
    v70 = vcgtq_s16(v62, v64);
    v71 = vandq_s8(vsubq_s16(vshlq_s16(v68, vsubq_s16(v69, v63)), v58), v70);
    v72.i64[0] = 0x8000800080008;
    v72.i64[1] = 0x8000800080008;
    v73.i64[0] = 0x3000300030003;
    v73.i64[1] = 0x3000300030003;
    v74 = vandq_s8(vceqzq_s16(v65), v73);
    v75 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v39), v73), 0);
    v76 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v46), v73), 0);
    v77 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v54), v73), 0);
    v78 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v61), v73), 0);
    v79 = vsubq_s16(v65, v75);
    v80 = vsubq_s16(v65, v76);
    v81 = vsubq_s16(v65, v77);
    v82 = vsubq_s16(v65, v78);
    v83 = vceqq_s16(vaddq_s16(v78, v77), vnegq_s16(vaddq_s16(v75, v76)));
    v78.i64[0] = 0x4000400040004;
    v78.i64[1] = 0x4000400040004;
    v84 = vbicq_s8(v78, v83);
    v85 = vorrq_s8(vorrq_s8(v74, vandq_s8(v70, v72)), v84);
    if (a5 >= 4 && a6 >= 2)
    {
      v367 = v24;
      v372 = v71;
      v86 = v18.u16[1] - v18.u16[0];
      v87 = 0x302030201000100;
      v88.i64[0] = 0xFFFFFFFF00000000;
      v88.i64[1] = 0xFFFFFFFF00000000;
      v89 = vmlal_s8(vandq_s8(vdupq_n_s16((v18.i8[4] - v18.i8[0])), v88), vdup_n_s8(v86), 0x302030201000100);
      v90 = vsubq_s16(v26, v89);
      v91 = vsubq_s16(vaddq_s16(vdupq_n_s16(-2 * (v18.i8[4] - v18.i8[0])), v27), v89);
      v92 = vsubq_s16(vaddq_s16(vdupq_n_s16(-4 * v86), v28), v89);
      v87.i16[0] = vmaxvq_s16(v90);
      v373 = v90;
      v88.i16[0] = vminvq_s16(v90);
      v93 = vdupq_lane_s16(v87, 0);
      v94 = vdupq_lane_s16(*v88.i8, 0);
      v95 = vsubq_s16(vaddq_s16(vdupq_n_s16(-(2 * (v18.i8[4] - v18.i8[0]) + 4 * v86)), v29), v89);
      v96.i64[0] = 0x8000800080008000;
      v96.i64[1] = 0x8000800080008000;
      v97 = vmaxq_s16(v93, v96);
      v89.i64[0] = 0x8000800080008000;
      v89.i64[1] = 0x8000800080008000;
      v98 = vzip1q_s16(v93, v94);
      v99.i64[0] = 0x10001000100010;
      v99.i64[1] = 0x10001000100010;
      v100 = vsubq_s16(v99, vclsq_s16(v98));
      v101 = vbicq_s8(v100, vceqzq_s16(v98));
      v100.i16[0] = vmaxvq_s16(v91);
      v370 = v91;
      v76.i16[0] = vminvq_s16(v91);
      v102 = vdupq_lane_s16(*v100.i8, 0);
      v103 = vdupq_lane_s16(*v76.i8, 0);
      v104 = vpmaxq_s16(v101, v101);
      v105 = vmaxq_s16(v97, v102);
      v106 = vminq_s16(vminq_s16(v94, v89), v103);
      v107 = vzip1q_s16(v102, v103);
      v108 = vsubq_s16(v99, vclsq_s16(v107));
      v109 = vbicq_s8(v108, vceqzq_s16(v107));
      v110 = vpmaxq_s16(v109, v109);
      v108.i16[0] = vmaxvq_s16(v92);
      v111 = vdupq_lane_s16(*v108.i8, 0);
      v16.i16[0] = vminvq_s16(v92);
      v112 = vdupq_lane_s16(v16, 0);
      v113 = vmaxq_s16(v105, v111);
      v114 = vminq_s16(v106, v112);
      v115 = vzip1q_s16(v111, v112);
      v116 = vsubq_s16(v99, vclsq_s16(v115));
      v117 = vbicq_s8(v116, vceqzq_s16(v115));
      v118 = v28;
      v119 = vpmaxq_s16(v117, v117);
      v117.i16[0] = vmaxvq_s16(v95);
      v116.i16[0] = vminvq_s16(v95);
      v120 = vdupq_lane_s16(*v117.i8, 0);
      v121 = vdupq_lane_s16(*v116.i8, 0);
      v122 = vmaxq_s16(v113, v120);
      v123 = vminq_s16(v114, v121);
      v124 = vzip1q_s16(v120, v121);
      v125 = vbicq_s8(vsubq_s16(v99, vclsq_s16(v124)), vceqzq_s16(v124));
      v126 = vpmaxq_s16(v125, v125);
      v127 = vmaxq_s16(vmaxq_s16(v104, v110), vmaxq_s16(v119, v126));
      v128 = vclzq_s16(vsubq_s16(v122, v123));
      v129 = vsubq_s16(v99, v128);
      v130 = vcgtq_s16(v127, v129);
      v131 = vminq_s16(v129, v127);
      v127.i64[0] = 0x1000100010001;
      v127.i64[1] = 0x1000100010001;
      v132 = vmaxq_s16(v131, v127);
      v133.i64[0] = 0x3000300030003;
      v133.i64[1] = 0x3000300030003;
      v134 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v104), v133), 0);
      v135 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v110), v133), 0);
      v136 = v81;
      v137 = v27;
      v138 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v119), v133), 0);
      v139 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v126), v133), 0);
      v140 = vsubq_s16(v132, v134);
      v141 = vsubq_s16(v132, v135);
      v142 = vsubq_s16(v132, v138);
      v143 = vsubq_s16(v132, v139);
      v144 = vceqq_s16(vaddq_s16(v139, v138), vnegq_s16(vaddq_s16(v134, v135)));
      v139.i64[0] = 0x4000400040004;
      v139.i64[1] = 0x4000400040004;
      v145 = vbicq_s8(v139, v144);
      v146.i64[0] = 0x7000700070007;
      v146.i64[1] = 0x7000700070007;
      v147 = vaddq_s16(vshlq_n_s16(vaddq_s16(vaddq_s16(v142, v141), v143), 3uLL), v99);
      v148.i64[0] = 0x7000700070007;
      v148.i64[1] = 0x7000700070007;
      v149 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v132, v130), vaddq_s16(v145, v145)), v140, v146), v147);
      v150 = vandq_s8(v65, v70);
      v151 = vaddq_s16(v84, v84);
      v152 = vmulq_s16(v79, v148);
      v153 = vshlq_n_s16(vaddq_s16(vaddq_s16(v136, v80), v82), 3uLL);
      v154 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v150, v152), v153), v151), v149), 0);
      v149.i16[0] = vaddvq_s16(v154);
      v155 = v149.u16[0];
      if (v149.i16[0])
      {
        v156.i64[0] = 0x2000200020002;
        v156.i64[1] = 0x2000200020002;
        v157.i64[0] = 0xA000A000A000ALL;
        v157.i64[1] = 0xA000A000A000ALL;
        v158 = vbslq_s8(v130, v157, v156);
        v157.i64[0] = -1;
        v157.i64[1] = -1;
        v159 = vorrq_s8(v145, v158);
        v158.i64[0] = 0xF000F000F000FLL;
        v158.i64[1] = 0xF000F000F000FLL;
        v154 = vcltzq_s16(vshlq_n_s16(v154, 0xFuLL));
        v369 = vbslq_s8(v154, v373, v26);
        v371 = vbslq_s8(v154, v370, v137);
        v368 = vbslq_s8(v154, v92, v118);
        v29 = vbslq_s8(v154, v95, v29);
        v374 = v29;
        v79 = vbslq_s8(v154, v140, v79);
        v80 = vbslq_s8(v154, v141, v80);
        v136 = vbslq_s8(v154, v142, v136);
        v82 = vbslq_s8(v154, v143, v82);
        v71 = vbslq_s8(v154, vandq_s8(vsubq_s16(vshlq_s16(v157, vsubq_s16(v158, v128)), v123), v130), v372);
        v65 = vbslq_s8(v154, v132, v65);
        v85 = vbslq_s8(v154, v159, v85);
        v160.i64[0] = 0x8000800080008;
        v160.i64[1] = 0x8000800080008;
        v151 = vandq_s8(vaddq_s16(v85, v85), v160);
        v152 = vmulq_s16(v79, v148);
        v153 = vshlq_n_s16(vaddq_s16(vaddq_s16(v136, v80), v82), 3uLL);
      }

      else
      {
        v369 = v26;
        v371 = v137;
        v368 = v118;
        v374 = v29;
        v71 = v372;
      }

      v81 = v136;
      v162.i64[0] = 0x7000700070007;
      v162.i64[1] = 0x7000700070007;
      v67 = ((v18.i8[2] - v18.i8[0]) | ((v18.i16[2] - v18.i16[0]) << 8));
      v163 = vsubq_s16(v18, vqtbl1q_s8(v18, xmmword_29D2F0F00));
      v164 = v23;
      v164.i16[7] = v18.i16[7];
      v165 = vsubq_s16(v23, vqtbl1q_s8(v164, xmmword_29D2F0F10));
      v166 = v19;
      v166.i16[7] = v18.i16[7];
      v167 = vsubq_s16(v19, vqtbl1q_s8(v166, xmmword_29D2F0F20));
      v168 = v367;
      v168.i16[7] = v18.i16[7];
      v169 = vqtbl1q_s8(v168, xmmword_29D2F0F30);
      v171 = v163;
      v171.i16[0] = v163.i16[7];
      v170 = vsubq_s16(v367, v169);
      v171.i16[7] = v163.i16[0];
      v163.i16[0] = vmaxvq_s16(v171);
      v172 = vdupq_lane_s16(*v163.i8, 0);
      v169.i16[0] = vminvq_s16(v171);
      v173 = vdupq_lane_s16(*v169.i8, 0);
      v174.i64[0] = 0x8000800080008000;
      v174.i64[1] = 0x8000800080008000;
      v175 = vmaxq_s16(v172, v174);
      v176.i64[0] = 0x8000800080008000;
      v176.i64[1] = 0x8000800080008000;
      v177 = vminq_s16(v173, v176);
      v178 = vzip1q_s16(v172, v173);
      v179.i64[0] = 0x10001000100010;
      v179.i64[1] = 0x10001000100010;
      v180 = vsubq_s16(v179, vclsq_s16(v178));
      v181 = vbicq_s8(v180, vceqzq_s16(v178));
      v182 = vpmaxq_s16(v181, v181);
      v180.i16[0] = vmaxvq_s16(v165);
      v154.i16[0] = vminvq_s16(v165);
      v183 = vdupq_lane_s16(*v180.i8, 0);
      v184 = vdupq_lane_s16(*v154.i8, 0);
      v185 = vmaxq_s16(v175, v183);
      v186 = vminq_s16(v177, v184);
      v187 = vzip1q_s16(v183, v184);
      v188 = vsubq_s16(v179, vclsq_s16(v187));
      v189 = vbicq_s8(v188, vceqzq_s16(v187));
      v188.i16[0] = vmaxvq_s16(v167);
      v130.i16[0] = vminvq_s16(v167);
      v190 = vdupq_lane_s16(*v188.i8, 0);
      v191 = vdupq_lane_s16(*v130.i8, 0);
      v192 = vpmaxq_s16(v189, v189);
      v193 = vmaxq_s16(v185, v190);
      v194 = vminq_s16(v186, v191);
      v195 = vzip1q_s16(v190, v191);
      v196 = vsubq_s16(v179, vclsq_s16(v195));
      v197 = vbicq_s8(v196, vceqzq_s16(v195));
      v198 = vpmaxq_s16(v197, v197);
      v196.i16[0] = vmaxvq_s16(v170);
      v199 = vdupq_lane_s16(*v196.i8, 0);
      v29.i16[0] = vminvq_s16(v170);
      v200 = vdupq_lane_s16(*v29.i8, 0);
      v201 = vmaxq_s16(v193, v199);
      v202 = vminq_s16(v194, v200);
      v203 = vzip1q_s16(v199, v200);
      v204 = vbicq_s8(vsubq_s16(v179, vclsq_s16(v203)), vceqzq_s16(v203));
      v205 = vpmaxq_s16(v204, v204);
      v206 = vmaxq_s16(vmaxq_s16(v182, v192), vmaxq_s16(v198, v205));
      v207 = vclzq_s16(vsubq_s16(v201, v202));
      v208 = vsubq_s16(v179, v207);
      v209 = vcgtq_s16(v206, v208);
      v210 = vminq_s16(v208, v206);
      v200.i64[0] = 0x3000300030003;
      v200.i64[1] = 0x3000300030003;
      v211 = vmaxq_s16(vminq_s16(vsubq_s16(v210, v182), v200), 0);
      v212 = vmaxq_s16(vminq_s16(vsubq_s16(v210, v192), v200), 0);
      v213 = vmaxq_s16(vminq_s16(vsubq_s16(v210, v198), v200), 0);
      v214 = vmaxq_s16(vminq_s16(vsubq_s16(v210, v205), v200), 0);
      v215 = vsubq_s16(v210, v211);
      v216 = vsubq_s16(v210, v212);
      v217 = vsubq_s16(v210, v213);
      v218 = vsubq_s16(v210, v214);
      v219 = vceqq_s16(vaddq_s16(v214, v213), vnegq_s16(vaddq_s16(v211, v212)));
      v212.i64[0] = 0x4000400040004;
      v212.i64[1] = 0x4000400040004;
      v220 = vbicq_s8(v212, v219);
      v213.i64[0] = 0x8000800080008;
      v213.i64[1] = 0x8000800080008;
      v221 = vbicq_s8(v65, vceqzq_s16(vandq_s8(v85, v213)));
      v222.i64[0] = 0x2000200020002;
      v222.i64[1] = 0x2000200020002;
      v223 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v221, v151), vaddq_s16(vandq_s8(vceqq_s16(vandq_s8(v85, v200), v222), v179), v152)), v153), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v210, v209), vaddq_s16(v220, v220)), v215, v162), vshlq_n_s16(vaddq_s16(vaddq_s16(v217, v216), v218), 3uLL))), 0);
      v221.i16[0] = vaddvq_s16(v223);
      v224 = v221.u16[0];
      if (v221.i16[0])
      {
        v225.i64[0] = 0x9000900090009;
        v225.i64[1] = 0x9000900090009;
        v226.i64[0] = -1;
        v226.i64[1] = -1;
        v227 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v210), v222), vsubq_s16(vandq_s8(v209, v225), vmvnq_s8(v209))), v220);
        v228.i64[0] = 0xF000F000F000FLL;
        v228.i64[1] = 0xF000F000F000FLL;
        v229 = vandq_s8(vsubq_s16(vshlq_s16(v226, vsubq_s16(v228, v207)), v202), v209);
        v230 = vcltzq_s16(vshlq_n_s16(v223, 0xFuLL));
        v25.i16[0] = vbslq_s8(v230, vextq_s8(v18, v18, 0xEuLL), v25).u16[0];
        v26 = vbslq_s8(v230, v171, v369);
        v27 = vbslq_s8(v230, v165, v371);
        v28 = vbslq_s8(v230, v167, v368);
        v29 = vbslq_s8(v230, v170, v374);
        v79 = vbslq_s8(v230, v215, v79);
        v80 = vbslq_s8(v230, v216, v80);
        v81 = vbslq_s8(v230, v217, v136);
        v82 = vbslq_s8(v230, v218, v82);
        v71 = vbslq_s8(v230, v229, v71);
        v65 = vbslq_s8(v230, v210, v65);
        v85 = vbslq_s8(v230, v227, v85);
      }

      else
      {
        v29 = v374;
        v28 = v368;
        v26 = v369;
        v27 = v371;
      }

      if (v155)
      {
        v231 = v224 == 0;
      }

      else
      {
        v231 = 0;
      }

      v66 = v231;
    }

    v232.i64[0] = 0x8000800080008;
    v232.i64[1] = 0x8000800080008;
    v233 = vandq_s8(v85, v232);
    v234.i64[0] = 0x3000300030003;
    v234.i64[1] = 0x3000300030003;
    v235.i64[0] = 0x2000200020002;
    v235.i64[1] = 0x2000200020002;
    v236 = vceqq_s16(vandq_s8(v85, v234), v235);
    v235.i64[0] = 0x10001000100010;
    v235.i64[1] = 0x10001000100010;
    if (((vbicq_s8(v65, vceqzq_s16(v233)).u16[0] + ((2 * v85.i16[0]) & 8) + vandq_s8(v236, v235).u16[0] - v79.i16[0] + 8 * v79.i16[0] + 8 * vaddq_s16(vaddq_s16(v81, v80), v82).u16[0]) - 363) <= 0xFFFFFFFFFFFFFE77)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 48;
    }

    else
    {
      v237 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v238 = 8 * (a1 & 7);
      if (v238)
      {
        v239 = *v237 & ~(-1 << v238);
      }

      else
      {
        v239 = 0;
      }

      if (v65.i16[0])
      {
        v240 = (16 * v65.i8[0] - 16) & 0xF0;
      }

      else
      {
        v240 = 0;
      }

      *a2 = v85.i8[0] << 6;
      v241 = (v240 & 0xFFFFFFFFFF0000F0 | (v25.u16[0] << 8) | v85.i8[0] & 0xF) >> 2;
      v242 = (v241 << v238) | v239;
      if (v238 >= 0x2A)
      {
        *v237 = v242;
        v242 = v241 >> (-8 * (a1 & 7u));
      }

      v243 = v238 + 22;
      v244 = vsubq_s16(v65, v79);
      v245 = vsubq_s16(v65, v80);
      v246 = vsubq_s16(v65, v81);
      v247 = vsubq_s16(v65, v82);
      *v244.i8 = vqmovn_u16(v244);
      *v245.i8 = vqmovn_u16(v245);
      *v246.i8 = vqmovn_u16(v246);
      *v247.i8 = vqmovn_u16(v247);
      v244.i32[0] = vzip1q_s16(vzip1q_s8(v244, v245), vzip1q_s8(v246, v247)).u32[0];
      v246.i64[0] = 0x202020202020202;
      v246.i64[1] = 0x202020202020202;
      v248 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v85.i8, 0x4000400040004)))), v246);
      v246.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v246.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v247.i64[0] = -1;
      v247.i64[1] = -1;
      v249 = vandq_s8(vshlq_u8(v247, vorrq_s8(v248, v246)), v244.u32[0]);
      v250 = vmovl_u8(*v248.i8);
      v251 = vpaddq_s16(vshlq_u16(vmovl_u8(*v249.i8), vtrn1q_s16(0, v250)), vmovl_high_u8(v249));
      v252 = vpaddq_s16(v250, vmovl_high_u8(v248));
      v253 = vmovl_u16(*v252.i8);
      v254 = vmovl_high_u16(v252);
      v255 = vpaddq_s32(vshlq_u32(vmovl_u16(*v251.i8), vtrn1q_s32(0, v253)), vshlq_u32(vmovl_high_u16(v251), vtrn1q_s32(0, v254)));
      v256 = vpaddq_s32(v253, v254);
      v257.i64[0] = v255.u32[0];
      v257.i64[1] = v255.u32[1];
      v258 = v257;
      v257.i64[0] = v255.u32[2];
      v257.i64[1] = v255.u32[3];
      v259 = v257;
      v257.i64[0] = v256.u32[0];
      v257.i64[1] = v256.u32[1];
      v260 = v257;
      v257.i64[0] = v256.u32[2];
      v257.i64[1] = v256.u32[3];
      v261 = vpaddq_s64(vshlq_u64(v258, vzip1q_s64(0, v260)), vshlq_u64(v259, vzip1q_s64(0, v257)));
      v262 = vpaddq_s64(v260, v257);
      v263 = (v238 + 22) & 0x3E;
      v264 = (v261.i64[0] << v263) | v242;
      if ((v262.i64[0] + v263) >= 0x40)
      {
        *(v237 + ((v243 >> 3) & 8)) = v264;
        v264 = v261.i64[0] >> -v263;
      }

      v265 = v262.i64[0] + v243;
      v266 = v264 | (v261.i64[1] << v265);
      if ((v265 & 0x3F) + v262.i64[1] >= 0x40)
      {
        *(v237 + ((v265 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v266;
        v266 = v261.i64[1] >> -(v265 & 0x3F);
        if ((v265 & 0x3F) == 0)
        {
          v266 = 0;
        }
      }

      v267 = vceqq_s16(v65, v79);
      v268 = v265 + v262.i64[1];
      v269.i64[0] = -1;
      v269.i64[1] = -1;
      v270 = vandq_s8(vextq_s8(vtstq_s16(v233, v233), 0, 0xEuLL), v65);
      v271.i64[0] = 0xF000F000F000FLL;
      v271.i64[1] = 0xF000F000F000FLL;
      v272 = vandq_s8(vshlq_u16(v269, vaddq_s16(v270, v271)), v71);
      v273 = vmovl_u16(*v270.i8);
      v274 = vpaddq_s32(vshlq_u32(vmovl_u16(*v272.i8), vtrn1q_s32(0, v273)), vmovl_high_u16(v272));
      v275 = vpaddq_s32(v273, vmovl_high_u16(v270));
      v276.i64[0] = v274.u32[0];
      v276.i64[1] = v274.u32[1];
      v277 = v276;
      v276.i64[0] = v274.u32[2];
      v276.i64[1] = v274.u32[3];
      v278 = v276;
      v276.i64[0] = v275.u32[0];
      v276.i64[1] = v275.u32[1];
      v279 = v276;
      v276.i64[0] = v275.u32[2];
      v276.i64[1] = v275.u32[3];
      v280 = vpaddq_s64(vshlq_u64(v277, vzip1q_s64(0, v279)), vshlq_u64(v278, vzip1q_s64(0, v276)));
      v281 = vpaddq_s64(v279, v276);
      v282 = (v280.i64[0] << v268) | v266;
      if (v281.i64[0] + (v268 & 0x3F) >= 0x40)
      {
        *(v237 + ((v268 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v282;
        v282 = v280.i64[0] >> -(v268 & 0x3F);
        if ((v268 & 0x3F) == 0)
        {
          v282 = 0;
        }
      }

      v283 = vandq_s8(v71, v267);
      v284 = v281.i64[0] + v268;
      v285 = v282 | (v280.i64[1] << v284);
      if ((v284 & 0x3F) + v281.i64[1] >= 0x40)
      {
        *(v237 + ((v284 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v285;
        v285 = v280.i64[1] >> -(v284 & 0x3F);
        if ((v284 & 0x3F) == 0)
        {
          v285 = 0;
        }
      }

      v286 = vceqq_s16(v65, v80);
      v287 = vaddq_s16(v283, v26);
      v288 = v284 + v281.i64[1];
      if (v66)
      {
        v285 |= v67 << v288;
        if ((v288 & 0x3F) >= 0x30)
        {
          *(v237 + ((v288 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v285;
          v285 = v67 >> -(v288 & 0x3F);
        }

        v288 += 16;
      }

      v289 = vandq_s8(v71, v286);
      v290 = vextq_s8(0, v79, 0xEuLL);
      v291.i64[0] = 0xF000F000F000FLL;
      v291.i64[1] = 0xF000F000F000FLL;
      v292.i64[0] = -1;
      v292.i64[1] = -1;
      v293 = vandq_s8(vshlq_u16(v292, vaddq_s16(v290, v291)), v287);
      v294 = vmovl_u16(*v290.i8);
      v295 = vmovl_high_u16(v290);
      v296 = vpaddq_s32(vshlq_u32(vmovl_u16(*v293.i8), vtrn1q_s32(0, v294)), vshlq_u32(vmovl_high_u16(v293), vtrn1q_s32(0, v295)));
      v297 = vpaddq_s32(v294, v295);
      v298.i64[0] = v296.u32[0];
      v298.i64[1] = v296.u32[1];
      v299 = v298;
      v298.i64[0] = v296.u32[2];
      v298.i64[1] = v296.u32[3];
      v300 = v298;
      v298.i64[0] = v297.u32[0];
      v298.i64[1] = v297.u32[1];
      v301 = v298;
      v298.i64[0] = v297.u32[2];
      v298.i64[1] = v297.u32[3];
      v302 = vpaddq_s64(vshlq_u64(v299, vzip1q_s64(0, v301)), vshlq_u64(v300, vzip1q_s64(0, v298)));
      v303 = vpaddq_s64(v301, v298);
      v304 = (v302.i64[0] << v288) | v285;
      if (v303.i64[0] + (v288 & 0x3F) >= 0x40)
      {
        *(v237 + ((v288 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v304;
        v304 = v302.i64[0] >> -(v288 & 0x3F);
        if ((v288 & 0x3F) == 0)
        {
          v304 = 0;
        }
      }

      v305 = vceqq_s16(v65, v81);
      v306 = vaddq_s16(v27, v289);
      v307 = v303.i64[0] + v288;
      v308 = (v303.i64[0] + v288) & 0x3F;
      v309 = v304 | (v302.i64[1] << v307);
      if ((v307 & 0x3F) + v303.i64[1] >= 0x40)
      {
        *(v237 + ((v307 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v309;
        v309 = v302.i64[1] >> -v308;
        if (!v308)
        {
          v309 = 0;
        }
      }

      v310 = vandq_s8(v71, v305);
      v311 = v307 + v303.i64[1];
      v312.i64[0] = 0xF000F000F000FLL;
      v312.i64[1] = 0xF000F000F000FLL;
      v313.i64[0] = -1;
      v313.i64[1] = -1;
      v314 = vandq_s8(vshlq_u16(v313, vaddq_s16(v80, v312)), v306);
      v315 = vmovl_u16(*v80.i8);
      v316 = vmovl_high_u16(v80);
      v317 = vpaddq_s32(vshlq_u32(vmovl_u16(*v314.i8), vtrn1q_s32(0, v315)), vshlq_u32(vmovl_high_u16(v314), vtrn1q_s32(0, v316)));
      v318 = vpaddq_s32(v315, v316);
      v319.i64[0] = v317.u32[0];
      v319.i64[1] = v317.u32[1];
      v320 = v319;
      v319.i64[0] = v317.u32[2];
      v319.i64[1] = v317.u32[3];
      v321 = v319;
      v319.i64[0] = v318.u32[0];
      v319.i64[1] = v318.u32[1];
      v322 = v319;
      v319.i64[0] = v318.u32[2];
      v319.i64[1] = v318.u32[3];
      v323 = vpaddq_s64(vshlq_u64(v320, vzip1q_s64(0, v322)), vshlq_u64(v321, vzip1q_s64(0, v319)));
      v324 = vpaddq_s64(v322, v319);
      v325 = (v323.i64[0] << v311) | v309;
      if (v324.i64[0] + (v311 & 0x3F) >= 0x40)
      {
        *(v237 + ((v311 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v325;
        v325 = v323.i64[0] >> -(v311 & 0x3F);
        if ((v311 & 0x3F) == 0)
        {
          v325 = 0;
        }
      }

      v326 = vceqq_s16(v65, v82);
      v327 = vaddq_s16(v28, v310);
      v328 = v324.i64[0] + v311;
      v329 = v325 | (v323.i64[1] << v328);
      if ((v328 & 0x3F) + v324.i64[1] >= 0x40)
      {
        *(v237 + ((v328 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v329;
        v329 = v323.i64[1] >> -(v328 & 0x3F);
        if ((v328 & 0x3F) == 0)
        {
          v329 = 0;
        }
      }

      v330 = vandq_s8(v71, v326);
      v331 = v328 + v324.i64[1];
      v332.i64[0] = 0xF000F000F000FLL;
      v332.i64[1] = 0xF000F000F000FLL;
      v333.i64[0] = -1;
      v333.i64[1] = -1;
      v334 = vandq_s8(vshlq_u16(v333, vaddq_s16(v81, v332)), v327);
      v335 = vmovl_u16(*v81.i8);
      v336 = vmovl_high_u16(v81);
      v337 = vpaddq_s32(vshlq_u32(vmovl_u16(*v334.i8), vtrn1q_s32(0, v335)), vshlq_u32(vmovl_high_u16(v334), vtrn1q_s32(0, v336)));
      v338 = vpaddq_s32(v335, v336);
      v339.i64[0] = v337.u32[0];
      v339.i64[1] = v337.u32[1];
      v340 = v339;
      v339.i64[0] = v337.u32[2];
      v339.i64[1] = v337.u32[3];
      v341 = v339;
      v339.i64[0] = v338.u32[0];
      v339.i64[1] = v338.u32[1];
      v342 = v339;
      v339.i64[0] = v338.u32[2];
      v339.i64[1] = v338.u32[3];
      v343 = vpaddq_s64(vshlq_u64(v340, vzip1q_s64(0, v342)), vshlq_u64(v341, vzip1q_s64(0, v339)));
      v344 = vpaddq_s64(v342, v339);
      v345 = (v343.i64[0] << v331) | v329;
      if (v344.i64[0] + (v331 & 0x3F) >= 0x40)
      {
        *(v237 + ((v331 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v345;
        v345 = v343.i64[0] >> -(v331 & 0x3F);
        if ((v331 & 0x3F) == 0)
        {
          v345 = 0;
        }
      }

      v346 = vaddq_s16(v29, v330);
      v347 = v344.i64[0] + v331;
      v348 = v345 | (v343.i64[1] << v347);
      if ((v347 & 0x3F) + v344.i64[1] >= 0x40)
      {
        *(v237 + ((v347 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v348;
        v348 = v343.i64[1] >> -(v347 & 0x3F);
        if ((v347 & 0x3F) == 0)
        {
          v348 = 0;
        }
      }

      v349 = v347 + v344.i64[1];
      v350.i64[0] = 0xF000F000F000FLL;
      v350.i64[1] = 0xF000F000F000FLL;
      v351.i64[0] = -1;
      v351.i64[1] = -1;
      v352 = vandq_s8(vshlq_u16(v351, vaddq_s16(v82, v350)), v346);
      v353 = vmovl_u16(*v82.i8);
      v354 = vmovl_high_u16(v82);
      v355 = vpaddq_s32(vshlq_u32(vmovl_u16(*v352.i8), vtrn1q_s32(0, v353)), vshlq_u32(vmovl_high_u16(v352), vtrn1q_s32(0, v354)));
      v356 = vpaddq_s32(v353, v354);
      v357.i64[0] = v355.u32[0];
      v357.i64[1] = v355.u32[1];
      v358 = v357;
      v357.i64[0] = v355.u32[2];
      v357.i64[1] = v355.u32[3];
      v359 = v357;
      v357.i64[0] = v356.u32[0];
      v357.i64[1] = v356.u32[1];
      v360 = v357;
      v357.i64[0] = v356.u32[2];
      v357.i64[1] = v356.u32[3];
      v361 = vpaddq_s64(vshlq_u64(v358, vzip1q_s64(0, v360)), vshlq_u64(v359, vzip1q_s64(0, v357)));
      v362 = vpaddq_s64(v360, v357);
      v363 = (v361.i64[0] << v349) | v348;
      if (v362.i64[0] + (v349 & 0x3F) > 0x3F)
      {
        *(v237 + ((v349 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v363;
        if ((v349 & 0x3F) != 0)
        {
          v363 = v361.i64[0] >> -(v349 & 0x3F);
        }

        else
        {
          v363 = 0;
        }
      }

      v364 = v362.i64[0] + v349;
      v365 = v363 | (v361.i64[1] << v364);
      if ((v364 & 0x3F) + v362.i64[1] >= 0x40)
      {
        *(v237 + ((v364 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
        v365 = v361.i64[1] >> -(v364 & 0x3F);
        if ((v364 & 0x3F) == 0)
        {
          v365 = 0;
        }
      }

      v366 = v364 + v362.i64[1];
      if ((v366 & 0x3F) != 0)
      {
        *(v237 + ((v366 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
      }

      result = (v366 - v238 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = a3->i16[0];
    *a2 = 1;
    return 2;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v65 = *MEMORY[0x29EDCA608];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  if (a5 > 1)
  {
    v19 = a5 & 0x7E;
    if (a5 == v19)
    {
      v20 = 0;
      v21 = &v61 + 8;
      v22 = (a3 + 2);
      do
      {
        v23 = v22;
        v24 = v21;
        v25 = a5;
        do
        {
          v26 = *(v23 - 1);
          v27 = *v23;
          v23 += 2;
          *(v24 - 4) = v26;
          *v24 = v27;
          v24 += 8;
          v25 -= 2;
        }

        while (v25);
        ++v20;
        v21 += 2;
        v22 = (v22 + a4);
      }

      while (v20 != a6);
    }

    else
    {
      v28 = 0;
      v29 = &v61 + 8;
      v30 = (a3 + 2);
      v31 = &v61 + ((a5 >> 1) & 0x3F);
      do
      {
        v32 = v30;
        v33 = v29;
        v34 = a5 & 0x7E;
        do
        {
          v35 = *(v32 - 1);
          v36 = *v32;
          v32 += 2;
          *(v33 - 4) = v35;
          *v33 = v36;
          v33 += 8;
          v34 -= 2;
        }

        while (v34);
        v37 = (a3 + v28 * a4 + 2 * v19);
        v38 = v31;
        v39 = a5 - v19;
        do
        {
          v40 = *v37++;
          *v38 = v40;
          v38 = (v38 + 8);
          --v39;
        }

        while (v39);
        ++v28;
        v29 += 2;
        v30 = (v30 + a4);
        v31 = (v31 + 2);
      }

      while (v28 != a6);
    }
  }

  else
  {
    v10 = 0;
    if (a6 < 2)
    {
      goto LABEL_7;
    }

    if (a4 != 1)
    {
      goto LABEL_7;
    }

    v10 = a6 & 0xFE;
    v11 = (a3 + 1);
    v12 = &v61 + 1;
    v13 = v10;
    do
    {
      v14 = *(v11 - 1);
      v15 = *v11++;
      *(v12 - 1) = v14;
      *v12 = v15;
      v12 += 2;
      v13 -= 2;
    }

    while (v13);
    if (v10 != a6)
    {
LABEL_7:
      v16 = a6 - v10;
      v17 = &v61 + v10;
      v18 = (a3 + v10 * a4);
      do
      {
        *v17++ = *v18;
        v18 = (v18 + a4);
        --v16;
      }

      while (v16);
    }
  }

  v56.i32[0] = v61;
  v56.i32[1] = WORD4(v61);
  v56.i32[2] = WORD1(v61);
  v56.i32[3] = WORD5(v61);
  v57 = v62;
  v58 = WORD4(v62);
  if (a5 >= 4)
  {
    v41 = 4;
  }

  else
  {
    v41 = a5;
  }

  if (a5 >= 4)
  {
    v42 = a5 - 4;
  }

  else
  {
    v42 = 0;
  }

  v59 = WORD1(v62);
  v60 = WORD5(v62);
  if (a6 >= 2)
  {
    v43 = 2;
  }

  else
  {
    v43 = a6;
  }

  if (a6 >= 2)
  {
    v44 = a6 - 2;
  }

  else
  {
    v44 = 0;
  }

  v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1, &v56, a7, v41, v43);
  v56.i32[0] = WORD2(v61);
  v56.i32[1] = WORD6(v61);
  v56.i32[2] = WORD3(v61);
  v56.i32[3] = HIWORD(v61);
  v57 = WORD2(v62);
  v58 = WORD6(v62);
  v59 = WORD3(v62);
  v60 = HIWORD(v62);
  if (a6 >= 4)
  {
    v47 = 2;
  }

  else
  {
    v47 = v44;
  }

  v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 12, &v56, a7, v41, v47);
  v56.i32[0] = v63;
  v56.i32[1] = WORD4(v63);
  v56.i32[2] = WORD1(v63);
  v56.i32[3] = WORD5(v63);
  v57 = v64;
  v58 = WORD4(v64);
  if (a5 >= 8)
  {
    v49 = 4;
  }

  else
  {
    v49 = v42;
  }

  v59 = WORD1(v64);
  v60 = WORD5(v64);
  v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 24, &v56, a7, v49, v43);
  v56.i32[0] = WORD2(v63);
  v56.i32[1] = WORD6(v63);
  v56.i32[2] = WORD3(v63);
  v56.i32[3] = HIWORD(v63);
  v57 = WORD2(v64);
  v58 = WORD6(v64);
  v59 = WORD3(v64);
  v60 = HIWORD(v64);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 36, &v56, a7, v49, v47);
  if (v50)
  {
    v52 = 4;
  }

  else
  {
    v52 = 0;
  }

  if (v48)
  {
    v53 = 2;
  }

  else
  {
    v53 = 0;
  }

  if (result)
  {
    v54 = -8;
  }

  else
  {
    v54 = -16;
  }

  *a2 = v54 | v52 | v46 | v53;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressSubblock(uint64_t a1, _BYTE *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, int16x4_t a12, double a13, double a14, int16x4_t a15)
{
  v17 = *(a3 + a4);
  v18 = vzip1q_s32(*a3, v17);
  v19 = vzip2q_s32(*a3, v17);
  v20 = (a3 + 2 * a4);
  v21 = *(v20 + a4);
  v22 = *v20;
  v23 = vzip1q_s32(*v20, v21);
  v24 = vzip2q_s32(*v20, v21);
  v25 = vdupq_lane_s16(*v18.i8, 0);
  v26 = vsubq_s16(v18, v25);
  v27 = vsubq_s16(v23, v25);
  v28 = vsubq_s16(v19, v25);
  v29 = vsubq_s16(v24, v25);
  v21.i16[0] = vmaxvq_s16(v26);
  v30 = vdupq_lane_s16(*v21.i8, 0);
  v22.i16[0] = vminvq_s16(v26);
  v31 = vdupq_lane_s16(*v22.i8, 0);
  v32.i64[0] = 0x8000800080008000;
  v32.i64[1] = 0x8000800080008000;
  v33 = vmaxq_s16(v30, v32);
  v34.i64[0] = 0x8000800080008000;
  v34.i64[1] = 0x8000800080008000;
  v35 = vminq_s16(v31, v34);
  v36 = vzip1q_s16(v30, v31);
  v37.i64[0] = 0x10001000100010;
  v37.i64[1] = 0x10001000100010;
  v38 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v36)), vceqzq_s16(v36));
  v39 = vpmaxq_s16(v38, v38);
  v38.i16[0] = vmaxvq_s16(v27);
  a12.i16[0] = vminvq_s16(v27);
  v40 = vdupq_lane_s16(*v38.i8, 0);
  v41 = vdupq_lane_s16(a12, 0);
  v42 = vmaxq_s16(v33, v40);
  v43 = vminq_s16(v35, v41);
  v44 = vzip1q_s16(v40, v41);
  v45 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v44)), vceqzq_s16(v44));
  v46 = vpmaxq_s16(v45, v45);
  v45.i16[0] = vmaxvq_s16(v28);
  a15.i16[0] = vminvq_s16(v28);
  v47 = vdupq_lane_s16(*v45.i8, 0);
  v48 = vdupq_lane_s16(a15, 0);
  v49 = vmaxq_s16(v42, v47);
  v50 = vminq_s16(v43, v48);
  v51 = vzip1q_s16(v47, v48);
  v52 = vsubq_s16(v37, vclsq_s16(v51));
  v53 = vbicq_s8(v52, vceqzq_s16(v51));
  v54 = vpmaxq_s16(v53, v53);
  v52.i16[0] = vmaxvq_s16(v29);
  v15.i16[0] = vminvq_s16(v29);
  v55 = vdupq_lane_s16(*v52.i8, 0);
  v56 = vdupq_lane_s16(v15, 0);
  v57 = vmaxq_s16(v49, v55);
  v58 = vminq_s16(v50, v56);
  v59 = vzip1q_s16(v55, v56);
  v60 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v59)), vceqzq_s16(v59));
  v61 = vpmaxq_s16(v60, v60);
  v62 = vmaxq_s16(vmaxq_s16(v39, v46), vmaxq_s16(v54, v61));
  v63 = vclzq_s16(vsubq_s16(v57, v58));
  v64 = vsubq_s16(v37, v63);
  v65 = vminq_s16(v64, v62);
  if (vmaxvq_s16(v65))
  {
    v66 = 0;
    v67 = 0;
    v68.i64[0] = -1;
    v68.i64[1] = -1;
    v69.i64[0] = 0xF000F000F000FLL;
    v69.i64[1] = 0xF000F000F000FLL;
    v70 = vcgtq_s16(v62, v64);
    v71 = vandq_s8(vsubq_s16(vshlq_s16(v68, vsubq_s16(v69, v63)), v58), v70);
    v72.i64[0] = 0x8000800080008;
    v72.i64[1] = 0x8000800080008;
    v73.i64[0] = 0x3000300030003;
    v73.i64[1] = 0x3000300030003;
    v74 = vandq_s8(vceqzq_s16(v65), v73);
    v75 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v39), v73), 0);
    v76 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v46), v73), 0);
    v77 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v54), v73), 0);
    v78 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v61), v73), 0);
    v79 = vsubq_s16(v65, v75);
    v80 = vsubq_s16(v65, v76);
    v81 = vsubq_s16(v65, v77);
    v82 = vsubq_s16(v65, v78);
    v83 = vceqq_s16(vaddq_s16(v78, v77), vnegq_s16(vaddq_s16(v75, v76)));
    v78.i64[0] = 0x4000400040004;
    v78.i64[1] = 0x4000400040004;
    v84 = vbicq_s8(v78, v83);
    v85 = vorrq_s8(vorrq_s8(v74, vandq_s8(v70, v72)), v84);
    if (a5 >= 4 && a6 >= 2)
    {
      v367 = v24;
      v372 = v71;
      v86 = v18.u16[1] - v18.u16[0];
      v87 = 0x302030201000100;
      v88.i64[0] = 0xFFFFFFFF00000000;
      v88.i64[1] = 0xFFFFFFFF00000000;
      v89 = vmlal_s8(vandq_s8(vdupq_n_s16((v18.i8[4] - v18.i8[0])), v88), vdup_n_s8(v86), 0x302030201000100);
      v90 = vsubq_s16(v26, v89);
      v91 = vsubq_s16(vaddq_s16(vdupq_n_s16(-2 * (v18.i8[4] - v18.i8[0])), v27), v89);
      v92 = vsubq_s16(vaddq_s16(vdupq_n_s16(-4 * v86), v28), v89);
      v87.i16[0] = vmaxvq_s16(v90);
      v373 = v90;
      v88.i16[0] = vminvq_s16(v90);
      v93 = vdupq_lane_s16(v87, 0);
      v94 = vdupq_lane_s16(*v88.i8, 0);
      v95 = vsubq_s16(vaddq_s16(vdupq_n_s16(-(2 * (v18.i8[4] - v18.i8[0]) + 4 * v86)), v29), v89);
      v96.i64[0] = 0x8000800080008000;
      v96.i64[1] = 0x8000800080008000;
      v97 = vmaxq_s16(v93, v96);
      v89.i64[0] = 0x8000800080008000;
      v89.i64[1] = 0x8000800080008000;
      v98 = vzip1q_s16(v93, v94);
      v99.i64[0] = 0x10001000100010;
      v99.i64[1] = 0x10001000100010;
      v100 = vsubq_s16(v99, vclsq_s16(v98));
      v101 = vbicq_s8(v100, vceqzq_s16(v98));
      v100.i16[0] = vmaxvq_s16(v91);
      v370 = v91;
      v76.i16[0] = vminvq_s16(v91);
      v102 = vdupq_lane_s16(*v100.i8, 0);
      v103 = vdupq_lane_s16(*v76.i8, 0);
      v104 = vpmaxq_s16(v101, v101);
      v105 = vmaxq_s16(v97, v102);
      v106 = vminq_s16(vminq_s16(v94, v89), v103);
      v107 = vzip1q_s16(v102, v103);
      v108 = vsubq_s16(v99, vclsq_s16(v107));
      v109 = vbicq_s8(v108, vceqzq_s16(v107));
      v110 = vpmaxq_s16(v109, v109);
      v108.i16[0] = vmaxvq_s16(v92);
      v111 = vdupq_lane_s16(*v108.i8, 0);
      v16.i16[0] = vminvq_s16(v92);
      v112 = vdupq_lane_s16(v16, 0);
      v113 = vmaxq_s16(v105, v111);
      v114 = vminq_s16(v106, v112);
      v115 = vzip1q_s16(v111, v112);
      v116 = vsubq_s16(v99, vclsq_s16(v115));
      v117 = vbicq_s8(v116, vceqzq_s16(v115));
      v118 = v28;
      v119 = vpmaxq_s16(v117, v117);
      v117.i16[0] = vmaxvq_s16(v95);
      v116.i16[0] = vminvq_s16(v95);
      v120 = vdupq_lane_s16(*v117.i8, 0);
      v121 = vdupq_lane_s16(*v116.i8, 0);
      v122 = vmaxq_s16(v113, v120);
      v123 = vminq_s16(v114, v121);
      v124 = vzip1q_s16(v120, v121);
      v125 = vbicq_s8(vsubq_s16(v99, vclsq_s16(v124)), vceqzq_s16(v124));
      v126 = vpmaxq_s16(v125, v125);
      v127 = vmaxq_s16(vmaxq_s16(v104, v110), vmaxq_s16(v119, v126));
      v128 = vclzq_s16(vsubq_s16(v122, v123));
      v129 = vsubq_s16(v99, v128);
      v130 = vcgtq_s16(v127, v129);
      v131 = vminq_s16(v129, v127);
      v127.i64[0] = 0x1000100010001;
      v127.i64[1] = 0x1000100010001;
      v132 = vmaxq_s16(v131, v127);
      v133.i64[0] = 0x3000300030003;
      v133.i64[1] = 0x3000300030003;
      v134 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v104), v133), 0);
      v135 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v110), v133), 0);
      v136 = v81;
      v137 = v27;
      v138 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v119), v133), 0);
      v139 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v126), v133), 0);
      v140 = vsubq_s16(v132, v134);
      v141 = vsubq_s16(v132, v135);
      v142 = vsubq_s16(v132, v138);
      v143 = vsubq_s16(v132, v139);
      v144 = vceqq_s16(vaddq_s16(v139, v138), vnegq_s16(vaddq_s16(v134, v135)));
      v139.i64[0] = 0x4000400040004;
      v139.i64[1] = 0x4000400040004;
      v145 = vbicq_s8(v139, v144);
      v146.i64[0] = 0x7000700070007;
      v146.i64[1] = 0x7000700070007;
      v147 = vaddq_s16(vshlq_n_s16(vaddq_s16(vaddq_s16(v142, v141), v143), 3uLL), v99);
      v148.i64[0] = 0x7000700070007;
      v148.i64[1] = 0x7000700070007;
      v149 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v132, v130), vaddq_s16(v145, v145)), v140, v146), v147);
      v150 = vandq_s8(v65, v70);
      v151 = vaddq_s16(v84, v84);
      v152 = vmulq_s16(v79, v148);
      v153 = vshlq_n_s16(vaddq_s16(vaddq_s16(v136, v80), v82), 3uLL);
      v154 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v150, v152), v153), v151), v149), 0);
      v149.i16[0] = vaddvq_s16(v154);
      v155 = v149.u16[0];
      if (v149.i16[0])
      {
        v156.i64[0] = 0x2000200020002;
        v156.i64[1] = 0x2000200020002;
        v157.i64[0] = 0xA000A000A000ALL;
        v157.i64[1] = 0xA000A000A000ALL;
        v158 = vbslq_s8(v130, v157, v156);
        v157.i64[0] = -1;
        v157.i64[1] = -1;
        v159 = vorrq_s8(v145, v158);
        v158.i64[0] = 0xF000F000F000FLL;
        v158.i64[1] = 0xF000F000F000FLL;
        v154 = vcltzq_s16(vshlq_n_s16(v154, 0xFuLL));
        v369 = vbslq_s8(v154, v373, v26);
        v371 = vbslq_s8(v154, v370, v137);
        v368 = vbslq_s8(v154, v92, v118);
        v29 = vbslq_s8(v154, v95, v29);
        v374 = v29;
        v79 = vbslq_s8(v154, v140, v79);
        v80 = vbslq_s8(v154, v141, v80);
        v136 = vbslq_s8(v154, v142, v136);
        v82 = vbslq_s8(v154, v143, v82);
        v71 = vbslq_s8(v154, vandq_s8(vsubq_s16(vshlq_s16(v157, vsubq_s16(v158, v128)), v123), v130), v372);
        v65 = vbslq_s8(v154, v132, v65);
        v85 = vbslq_s8(v154, v159, v85);
        v160.i64[0] = 0x8000800080008;
        v160.i64[1] = 0x8000800080008;
        v151 = vandq_s8(vaddq_s16(v85, v85), v160);
        v152 = vmulq_s16(v79, v148);
        v153 = vshlq_n_s16(vaddq_s16(vaddq_s16(v136, v80), v82), 3uLL);
      }

      else
      {
        v369 = v26;
        v371 = v137;
        v368 = v118;
        v374 = v29;
        v71 = v372;
      }

      v81 = v136;
      v162.i64[0] = 0x7000700070007;
      v162.i64[1] = 0x7000700070007;
      v67 = ((v18.i8[2] - v18.i8[0]) | ((v18.i16[2] - v18.i16[0]) << 8));
      v163 = vsubq_s16(v18, vqtbl1q_s8(v18, xmmword_29D2F0F00));
      v164 = v23;
      v164.i16[7] = v18.i16[7];
      v165 = vsubq_s16(v23, vqtbl1q_s8(v164, xmmword_29D2F0F10));
      v166 = v19;
      v166.i16[7] = v18.i16[7];
      v167 = vsubq_s16(v19, vqtbl1q_s8(v166, xmmword_29D2F0F20));
      v168 = v367;
      v168.i16[7] = v18.i16[7];
      v169 = vqtbl1q_s8(v168, xmmword_29D2F0F30);
      v171 = v163;
      v171.i16[0] = v163.i16[7];
      v170 = vsubq_s16(v367, v169);
      v171.i16[7] = v163.i16[0];
      v163.i16[0] = vmaxvq_s16(v171);
      v172 = vdupq_lane_s16(*v163.i8, 0);
      v169.i16[0] = vminvq_s16(v171);
      v173 = vdupq_lane_s16(*v169.i8, 0);
      v174.i64[0] = 0x8000800080008000;
      v174.i64[1] = 0x8000800080008000;
      v175 = vmaxq_s16(v172, v174);
      v176.i64[0] = 0x8000800080008000;
      v176.i64[1] = 0x8000800080008000;
      v177 = vminq_s16(v173, v176);
      v178 = vzip1q_s16(v172, v173);
      v179.i64[0] = 0x10001000100010;
      v179.i64[1] = 0x10001000100010;
      v180 = vsubq_s16(v179, vclsq_s16(v178));
      v181 = vbicq_s8(v180, vceqzq_s16(v178));
      v182 = vpmaxq_s16(v181, v181);
      v180.i16[0] = vmaxvq_s16(v165);
      v154.i16[0] = vminvq_s16(v165);
      v183 = vdupq_lane_s16(*v180.i8, 0);
      v184 = vdupq_lane_s16(*v154.i8, 0);
      v185 = vmaxq_s16(v175, v183);
      v186 = vminq_s16(v177, v184);
      v187 = vzip1q_s16(v183, v184);
      v188 = vsubq_s16(v179, vclsq_s16(v187));
      v189 = vbicq_s8(v188, vceqzq_s16(v187));
      v188.i16[0] = vmaxvq_s16(v167);
      v130.i16[0] = vminvq_s16(v167);
      v190 = vdupq_lane_s16(*v188.i8, 0);
      v191 = vdupq_lane_s16(*v130.i8, 0);
      v192 = vpmaxq_s16(v189, v189);
      v193 = vmaxq_s16(v185, v190);
      v194 = vminq_s16(v186, v191);
      v195 = vzip1q_s16(v190, v191);
      v196 = vsubq_s16(v179, vclsq_s16(v195));
      v197 = vbicq_s8(v196, vceqzq_s16(v195));
      v198 = vpmaxq_s16(v197, v197);
      v196.i16[0] = vmaxvq_s16(v170);
      v199 = vdupq_lane_s16(*v196.i8, 0);
      v29.i16[0] = vminvq_s16(v170);
      v200 = vdupq_lane_s16(*v29.i8, 0);
      v201 = vmaxq_s16(v193, v199);
      v202 = vminq_s16(v194, v200);
      v203 = vzip1q_s16(v199, v200);
      v204 = vbicq_s8(vsubq_s16(v179, vclsq_s16(v203)), vceqzq_s16(v203));
      v205 = vpmaxq_s16(v204, v204);
      v206 = vmaxq_s16(vmaxq_s16(v182, v192), vmaxq_s16(v198, v205));
      v207 = vclzq_s16(vsubq_s16(v201, v202));
      v208 = vsubq_s16(v179, v207);
      v209 = vcgtq_s16(v206, v208);
      v210 = vminq_s16(v208, v206);
      v200.i64[0] = 0x3000300030003;
      v200.i64[1] = 0x3000300030003;
      v211 = vmaxq_s16(vminq_s16(vsubq_s16(v210, v182), v200), 0);
      v212 = vmaxq_s16(vminq_s16(vsubq_s16(v210, v192), v200), 0);
      v213 = vmaxq_s16(vminq_s16(vsubq_s16(v210, v198), v200), 0);
      v214 = vmaxq_s16(vminq_s16(vsubq_s16(v210, v205), v200), 0);
      v215 = vsubq_s16(v210, v211);
      v216 = vsubq_s16(v210, v212);
      v217 = vsubq_s16(v210, v213);
      v218 = vsubq_s16(v210, v214);
      v219 = vceqq_s16(vaddq_s16(v214, v213), vnegq_s16(vaddq_s16(v211, v212)));
      v212.i64[0] = 0x4000400040004;
      v212.i64[1] = 0x4000400040004;
      v220 = vbicq_s8(v212, v219);
      v213.i64[0] = 0x8000800080008;
      v213.i64[1] = 0x8000800080008;
      v221 = vbicq_s8(v65, vceqzq_s16(vandq_s8(v85, v213)));
      v222.i64[0] = 0x2000200020002;
      v222.i64[1] = 0x2000200020002;
      v223 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v221, v151), vaddq_s16(vandq_s8(vceqq_s16(vandq_s8(v85, v200), v222), v179), v152)), v153), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v210, v209), vaddq_s16(v220, v220)), v215, v162), vshlq_n_s16(vaddq_s16(vaddq_s16(v217, v216), v218), 3uLL))), 0);
      v221.i16[0] = vaddvq_s16(v223);
      v224 = v221.u16[0];
      if (v221.i16[0])
      {
        v225.i64[0] = 0x9000900090009;
        v225.i64[1] = 0x9000900090009;
        v226.i64[0] = -1;
        v226.i64[1] = -1;
        v227 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v210), v222), vsubq_s16(vandq_s8(v209, v225), vmvnq_s8(v209))), v220);
        v228.i64[0] = 0xF000F000F000FLL;
        v228.i64[1] = 0xF000F000F000FLL;
        v229 = vandq_s8(vsubq_s16(vshlq_s16(v226, vsubq_s16(v228, v207)), v202), v209);
        v230 = vcltzq_s16(vshlq_n_s16(v223, 0xFuLL));
        v25.i16[0] = vbslq_s8(v230, vextq_s8(v18, v18, 0xEuLL), v25).u16[0];
        v26 = vbslq_s8(v230, v171, v369);
        v27 = vbslq_s8(v230, v165, v371);
        v28 = vbslq_s8(v230, v167, v368);
        v29 = vbslq_s8(v230, v170, v374);
        v79 = vbslq_s8(v230, v215, v79);
        v80 = vbslq_s8(v230, v216, v80);
        v81 = vbslq_s8(v230, v217, v136);
        v82 = vbslq_s8(v230, v218, v82);
        v71 = vbslq_s8(v230, v229, v71);
        v65 = vbslq_s8(v230, v210, v65);
        v85 = vbslq_s8(v230, v227, v85);
      }

      else
      {
        v29 = v374;
        v28 = v368;
        v26 = v369;
        v27 = v371;
      }

      if (v155)
      {
        v231 = v224 == 0;
      }

      else
      {
        v231 = 0;
      }

      v66 = v231;
    }

    v232.i64[0] = 0x8000800080008;
    v232.i64[1] = 0x8000800080008;
    v233 = vandq_s8(v85, v232);
    v234.i64[0] = 0x3000300030003;
    v234.i64[1] = 0x3000300030003;
    v235.i64[0] = 0x2000200020002;
    v235.i64[1] = 0x2000200020002;
    v236 = vceqq_s16(vandq_s8(v85, v234), v235);
    v235.i64[0] = 0x10001000100010;
    v235.i64[1] = 0x10001000100010;
    if (((vbicq_s8(v65, vceqzq_s16(v233)).u16[0] + ((2 * v85.i16[0]) & 8) + vandq_s8(v236, v235).u16[0] - v79.i16[0] + 8 * v79.i16[0] + 8 * vaddq_s16(vaddq_s16(v81, v80), v82).u16[0]) - 299) <= 0xFFFFFFFFFFFFFEB7)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 40;
    }

    else
    {
      v237 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v238 = 8 * (a1 & 7);
      if (v238)
      {
        v239 = *v237 & ~(-1 << v238);
      }

      else
      {
        v239 = 0;
      }

      if (v65.i16[0])
      {
        v240 = (16 * v65.i8[0] - 16) & 0xF0;
      }

      else
      {
        v240 = 0;
      }

      *a2 = v85.i8[0] << 6;
      v241 = (v240 & 0xFFFFFFFFFF0000F0 | (v25.u16[0] << 8) | v85.i8[0] & 0xF) >> 2;
      v242 = (v241 << v238) | v239;
      if (v238 >= 0x2A)
      {
        *v237 = v242;
        v242 = v241 >> (-8 * (a1 & 7u));
      }

      v243 = v238 + 22;
      v244 = vsubq_s16(v65, v79);
      v245 = vsubq_s16(v65, v80);
      v246 = vsubq_s16(v65, v81);
      v247 = vsubq_s16(v65, v82);
      *v244.i8 = vqmovn_u16(v244);
      *v245.i8 = vqmovn_u16(v245);
      *v246.i8 = vqmovn_u16(v246);
      *v247.i8 = vqmovn_u16(v247);
      v244.i32[0] = vzip1q_s16(vzip1q_s8(v244, v245), vzip1q_s8(v246, v247)).u32[0];
      v246.i64[0] = 0x202020202020202;
      v246.i64[1] = 0x202020202020202;
      v248 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v85.i8, 0x4000400040004)))), v246);
      v246.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v246.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v247.i64[0] = -1;
      v247.i64[1] = -1;
      v249 = vandq_s8(vshlq_u8(v247, vorrq_s8(v248, v246)), v244.u32[0]);
      v250 = vmovl_u8(*v248.i8);
      v251 = vpaddq_s16(vshlq_u16(vmovl_u8(*v249.i8), vtrn1q_s16(0, v250)), vmovl_high_u8(v249));
      v252 = vpaddq_s16(v250, vmovl_high_u8(v248));
      v253 = vmovl_u16(*v252.i8);
      v254 = vmovl_high_u16(v252);
      v255 = vpaddq_s32(vshlq_u32(vmovl_u16(*v251.i8), vtrn1q_s32(0, v253)), vshlq_u32(vmovl_high_u16(v251), vtrn1q_s32(0, v254)));
      v256 = vpaddq_s32(v253, v254);
      v257.i64[0] = v255.u32[0];
      v257.i64[1] = v255.u32[1];
      v258 = v257;
      v257.i64[0] = v255.u32[2];
      v257.i64[1] = v255.u32[3];
      v259 = v257;
      v257.i64[0] = v256.u32[0];
      v257.i64[1] = v256.u32[1];
      v260 = v257;
      v257.i64[0] = v256.u32[2];
      v257.i64[1] = v256.u32[3];
      v261 = vpaddq_s64(vshlq_u64(v258, vzip1q_s64(0, v260)), vshlq_u64(v259, vzip1q_s64(0, v257)));
      v262 = vpaddq_s64(v260, v257);
      v263 = (v238 + 22) & 0x3E;
      v264 = (v261.i64[0] << v263) | v242;
      if ((v262.i64[0] + v263) >= 0x40)
      {
        *(v237 + ((v243 >> 3) & 8)) = v264;
        v264 = v261.i64[0] >> -v263;
      }

      v265 = v262.i64[0] + v243;
      v266 = v264 | (v261.i64[1] << v265);
      if ((v265 & 0x3F) + v262.i64[1] >= 0x40)
      {
        *(v237 + ((v265 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v266;
        v266 = v261.i64[1] >> -(v265 & 0x3F);
        if ((v265 & 0x3F) == 0)
        {
          v266 = 0;
        }
      }

      v267 = vceqq_s16(v65, v79);
      v268 = v265 + v262.i64[1];
      v269.i64[0] = -1;
      v269.i64[1] = -1;
      v270 = vandq_s8(vextq_s8(vtstq_s16(v233, v233), 0, 0xEuLL), v65);
      v271.i64[0] = 0xF000F000F000FLL;
      v271.i64[1] = 0xF000F000F000FLL;
      v272 = vandq_s8(vshlq_u16(v269, vaddq_s16(v270, v271)), v71);
      v273 = vmovl_u16(*v270.i8);
      v274 = vpaddq_s32(vshlq_u32(vmovl_u16(*v272.i8), vtrn1q_s32(0, v273)), vmovl_high_u16(v272));
      v275 = vpaddq_s32(v273, vmovl_high_u16(v270));
      v276.i64[0] = v274.u32[0];
      v276.i64[1] = v274.u32[1];
      v277 = v276;
      v276.i64[0] = v274.u32[2];
      v276.i64[1] = v274.u32[3];
      v278 = v276;
      v276.i64[0] = v275.u32[0];
      v276.i64[1] = v275.u32[1];
      v279 = v276;
      v276.i64[0] = v275.u32[2];
      v276.i64[1] = v275.u32[3];
      v280 = vpaddq_s64(vshlq_u64(v277, vzip1q_s64(0, v279)), vshlq_u64(v278, vzip1q_s64(0, v276)));
      v281 = vpaddq_s64(v279, v276);
      v282 = (v280.i64[0] << v268) | v266;
      if (v281.i64[0] + (v268 & 0x3F) >= 0x40)
      {
        *(v237 + ((v268 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v282;
        v282 = v280.i64[0] >> -(v268 & 0x3F);
        if ((v268 & 0x3F) == 0)
        {
          v282 = 0;
        }
      }

      v283 = vandq_s8(v71, v267);
      v284 = v281.i64[0] + v268;
      v285 = v282 | (v280.i64[1] << v284);
      if ((v284 & 0x3F) + v281.i64[1] >= 0x40)
      {
        *(v237 + ((v284 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v285;
        v285 = v280.i64[1] >> -(v284 & 0x3F);
        if ((v284 & 0x3F) == 0)
        {
          v285 = 0;
        }
      }

      v286 = vceqq_s16(v65, v80);
      v287 = vaddq_s16(v283, v26);
      v288 = v284 + v281.i64[1];
      if (v66)
      {
        v285 |= v67 << v288;
        if ((v288 & 0x3F) >= 0x30)
        {
          *(v237 + ((v288 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v285;
          v285 = v67 >> -(v288 & 0x3F);
        }

        v288 += 16;
      }

      v289 = vandq_s8(v71, v286);
      v290 = vextq_s8(0, v79, 0xEuLL);
      v291.i64[0] = 0xF000F000F000FLL;
      v291.i64[1] = 0xF000F000F000FLL;
      v292.i64[0] = -1;
      v292.i64[1] = -1;
      v293 = vandq_s8(vshlq_u16(v292, vaddq_s16(v290, v291)), v287);
      v294 = vmovl_u16(*v290.i8);
      v295 = vmovl_high_u16(v290);
      v296 = vpaddq_s32(vshlq_u32(vmovl_u16(*v293.i8), vtrn1q_s32(0, v294)), vshlq_u32(vmovl_high_u16(v293), vtrn1q_s32(0, v295)));
      v297 = vpaddq_s32(v294, v295);
      v298.i64[0] = v296.u32[0];
      v298.i64[1] = v296.u32[1];
      v299 = v298;
      v298.i64[0] = v296.u32[2];
      v298.i64[1] = v296.u32[3];
      v300 = v298;
      v298.i64[0] = v297.u32[0];
      v298.i64[1] = v297.u32[1];
      v301 = v298;
      v298.i64[0] = v297.u32[2];
      v298.i64[1] = v297.u32[3];
      v302 = vpaddq_s64(vshlq_u64(v299, vzip1q_s64(0, v301)), vshlq_u64(v300, vzip1q_s64(0, v298)));
      v303 = vpaddq_s64(v301, v298);
      v304 = (v302.i64[0] << v288) | v285;
      if (v303.i64[0] + (v288 & 0x3F) >= 0x40)
      {
        *(v237 + ((v288 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v304;
        v304 = v302.i64[0] >> -(v288 & 0x3F);
        if ((v288 & 0x3F) == 0)
        {
          v304 = 0;
        }
      }

      v305 = vceqq_s16(v65, v81);
      v306 = vaddq_s16(v27, v289);
      v307 = v303.i64[0] + v288;
      v308 = (v303.i64[0] + v288) & 0x3F;
      v309 = v304 | (v302.i64[1] << v307);
      if ((v307 & 0x3F) + v303.i64[1] >= 0x40)
      {
        *(v237 + ((v307 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v309;
        v309 = v302.i64[1] >> -v308;
        if (!v308)
        {
          v309 = 0;
        }
      }

      v310 = vandq_s8(v71, v305);
      v311 = v307 + v303.i64[1];
      v312.i64[0] = 0xF000F000F000FLL;
      v312.i64[1] = 0xF000F000F000FLL;
      v313.i64[0] = -1;
      v313.i64[1] = -1;
      v314 = vandq_s8(vshlq_u16(v313, vaddq_s16(v80, v312)), v306);
      v315 = vmovl_u16(*v80.i8);
      v316 = vmovl_high_u16(v80);
      v317 = vpaddq_s32(vshlq_u32(vmovl_u16(*v314.i8), vtrn1q_s32(0, v315)), vshlq_u32(vmovl_high_u16(v314), vtrn1q_s32(0, v316)));
      v318 = vpaddq_s32(v315, v316);
      v319.i64[0] = v317.u32[0];
      v319.i64[1] = v317.u32[1];
      v320 = v319;
      v319.i64[0] = v317.u32[2];
      v319.i64[1] = v317.u32[3];
      v321 = v319;
      v319.i64[0] = v318.u32[0];
      v319.i64[1] = v318.u32[1];
      v322 = v319;
      v319.i64[0] = v318.u32[2];
      v319.i64[1] = v318.u32[3];
      v323 = vpaddq_s64(vshlq_u64(v320, vzip1q_s64(0, v322)), vshlq_u64(v321, vzip1q_s64(0, v319)));
      v324 = vpaddq_s64(v322, v319);
      v325 = (v323.i64[0] << v311) | v309;
      if (v324.i64[0] + (v311 & 0x3F) >= 0x40)
      {
        *(v237 + ((v311 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v325;
        v325 = v323.i64[0] >> -(v311 & 0x3F);
        if ((v311 & 0x3F) == 0)
        {
          v325 = 0;
        }
      }

      v326 = vceqq_s16(v65, v82);
      v327 = vaddq_s16(v28, v310);
      v328 = v324.i64[0] + v311;
      v329 = v325 | (v323.i64[1] << v328);
      if ((v328 & 0x3F) + v324.i64[1] >= 0x40)
      {
        *(v237 + ((v328 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v329;
        v329 = v323.i64[1] >> -(v328 & 0x3F);
        if ((v328 & 0x3F) == 0)
        {
          v329 = 0;
        }
      }

      v330 = vandq_s8(v71, v326);
      v331 = v328 + v324.i64[1];
      v332.i64[0] = 0xF000F000F000FLL;
      v332.i64[1] = 0xF000F000F000FLL;
      v333.i64[0] = -1;
      v333.i64[1] = -1;
      v334 = vandq_s8(vshlq_u16(v333, vaddq_s16(v81, v332)), v327);
      v335 = vmovl_u16(*v81.i8);
      v336 = vmovl_high_u16(v81);
      v337 = vpaddq_s32(vshlq_u32(vmovl_u16(*v334.i8), vtrn1q_s32(0, v335)), vshlq_u32(vmovl_high_u16(v334), vtrn1q_s32(0, v336)));
      v338 = vpaddq_s32(v335, v336);
      v339.i64[0] = v337.u32[0];
      v339.i64[1] = v337.u32[1];
      v340 = v339;
      v339.i64[0] = v337.u32[2];
      v339.i64[1] = v337.u32[3];
      v341 = v339;
      v339.i64[0] = v338.u32[0];
      v339.i64[1] = v338.u32[1];
      v342 = v339;
      v339.i64[0] = v338.u32[2];
      v339.i64[1] = v338.u32[3];
      v343 = vpaddq_s64(vshlq_u64(v340, vzip1q_s64(0, v342)), vshlq_u64(v341, vzip1q_s64(0, v339)));
      v344 = vpaddq_s64(v342, v339);
      v345 = (v343.i64[0] << v331) | v329;
      if (v344.i64[0] + (v331 & 0x3F) >= 0x40)
      {
        *(v237 + ((v331 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v345;
        v345 = v343.i64[0] >> -(v331 & 0x3F);
        if ((v331 & 0x3F) == 0)
        {
          v345 = 0;
        }
      }

      v346 = vaddq_s16(v29, v330);
      v347 = v344.i64[0] + v331;
      v348 = v345 | (v343.i64[1] << v347);
      if ((v347 & 0x3F) + v344.i64[1] >= 0x40)
      {
        *(v237 + ((v347 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v348;
        v348 = v343.i64[1] >> -(v347 & 0x3F);
        if ((v347 & 0x3F) == 0)
        {
          v348 = 0;
        }
      }

      v349 = v347 + v344.i64[1];
      v350.i64[0] = 0xF000F000F000FLL;
      v350.i64[1] = 0xF000F000F000FLL;
      v351.i64[0] = -1;
      v351.i64[1] = -1;
      v352 = vandq_s8(vshlq_u16(v351, vaddq_s16(v82, v350)), v346);
      v353 = vmovl_u16(*v82.i8);
      v354 = vmovl_high_u16(v82);
      v355 = vpaddq_s32(vshlq_u32(vmovl_u16(*v352.i8), vtrn1q_s32(0, v353)), vshlq_u32(vmovl_high_u16(v352), vtrn1q_s32(0, v354)));
      v356 = vpaddq_s32(v353, v354);
      v357.i64[0] = v355.u32[0];
      v357.i64[1] = v355.u32[1];
      v358 = v357;
      v357.i64[0] = v355.u32[2];
      v357.i64[1] = v355.u32[3];
      v359 = v357;
      v357.i64[0] = v356.u32[0];
      v357.i64[1] = v356.u32[1];
      v360 = v357;
      v357.i64[0] = v356.u32[2];
      v357.i64[1] = v356.u32[3];
      v361 = vpaddq_s64(vshlq_u64(v358, vzip1q_s64(0, v360)), vshlq_u64(v359, vzip1q_s64(0, v357)));
      v362 = vpaddq_s64(v360, v357);
      v363 = (v361.i64[0] << v349) | v348;
      if (v362.i64[0] + (v349 & 0x3F) > 0x3F)
      {
        *(v237 + ((v349 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v363;
        if ((v349 & 0x3F) != 0)
        {
          v363 = v361.i64[0] >> -(v349 & 0x3F);
        }

        else
        {
          v363 = 0;
        }
      }

      v364 = v362.i64[0] + v349;
      v365 = v363 | (v361.i64[1] << v364);
      if ((v364 & 0x3F) + v362.i64[1] >= 0x40)
      {
        *(v237 + ((v364 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
        v365 = v361.i64[1] >> -(v364 & 0x3F);
        if ((v364 & 0x3F) == 0)
        {
          v365 = 0;
        }
      }

      v366 = v364 + v362.i64[1];
      if ((v366 & 0x3F) != 0)
      {
        *(v237 + ((v366 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
      }

      result = (v366 - v238 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = a3->i16[0];
    *a2 = 1;
    return 2;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>::compressLossyCompressedSubblock(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v65 = *MEMORY[0x29EDCA608];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  if (a5 > 1)
  {
    v19 = a5 & 0x7E;
    if (a5 == v19)
    {
      v20 = 0;
      v21 = &v61 + 8;
      v22 = (a3 + 2);
      do
      {
        v23 = v22;
        v24 = v21;
        v25 = a5;
        do
        {
          v26 = *(v23 - 1);
          v27 = *v23;
          v23 += 2;
          *(v24 - 4) = v26;
          *v24 = v27;
          v24 += 8;
          v25 -= 2;
        }

        while (v25);
        ++v20;
        v21 += 2;
        v22 = (v22 + a4);
      }

      while (v20 != a6);
    }

    else
    {
      v28 = 0;
      v29 = &v61 + 8;
      v30 = (a3 + 2);
      v31 = &v61 + ((a5 >> 1) & 0x3F);
      do
      {
        v32 = v30;
        v33 = v29;
        v34 = a5 & 0x7E;
        do
        {
          v35 = *(v32 - 1);
          v36 = *v32;
          v32 += 2;
          *(v33 - 4) = v35;
          *v33 = v36;
          v33 += 8;
          v34 -= 2;
        }

        while (v34);
        v37 = (a3 + v28 * a4 + 2 * v19);
        v38 = v31;
        v39 = a5 - v19;
        do
        {
          v40 = *v37++;
          *v38 = v40;
          v38 = (v38 + 8);
          --v39;
        }

        while (v39);
        ++v28;
        v29 += 2;
        v30 = (v30 + a4);
        v31 = (v31 + 2);
      }

      while (v28 != a6);
    }
  }

  else
  {
    v10 = 0;
    if (a6 < 2)
    {
      goto LABEL_7;
    }

    if (a4 != 1)
    {
      goto LABEL_7;
    }

    v10 = a6 & 0xFE;
    v11 = (a3 + 1);
    v12 = &v61 + 1;
    v13 = v10;
    do
    {
      v14 = *(v11 - 1);
      v15 = *v11++;
      *(v12 - 1) = v14;
      *v12 = v15;
      v12 += 2;
      v13 -= 2;
    }

    while (v13);
    if (v10 != a6)
    {
LABEL_7:
      v16 = a6 - v10;
      v17 = &v61 + v10;
      v18 = (a3 + v10 * a4);
      do
      {
        *v17++ = *v18;
        v18 = (v18 + a4);
        --v16;
      }

      while (v16);
    }
  }

  v56.i32[0] = v61;
  v56.i32[1] = WORD4(v61);
  v56.i32[2] = WORD1(v61);
  v56.i32[3] = WORD5(v61);
  v57 = v62;
  v58 = WORD4(v62);
  if (a5 >= 4)
  {
    v41 = 4;
  }

  else
  {
    v41 = a5;
  }

  if (a5 >= 4)
  {
    v42 = a5 - 4;
  }

  else
  {
    v42 = 0;
  }

  v59 = WORD1(v62);
  v60 = WORD5(v62);
  if (a6 >= 2)
  {
    v43 = 2;
  }

  else
  {
    v43 = a6;
  }

  if (a6 >= 2)
  {
    v44 = a6 - 2;
  }

  else
  {
    v44 = 0;
  }

  v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1, &v56, a7, v41, v43);
  v56.i32[0] = WORD2(v61);
  v56.i32[1] = WORD6(v61);
  v56.i32[2] = WORD3(v61);
  v56.i32[3] = HIWORD(v61);
  v57 = WORD2(v62);
  v58 = WORD6(v62);
  v59 = WORD3(v62);
  v60 = HIWORD(v62);
  if (a6 >= 4)
  {
    v47 = 2;
  }

  else
  {
    v47 = v44;
  }

  v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 10, &v56, a7, v41, v47);
  v56.i32[0] = v63;
  v56.i32[1] = WORD4(v63);
  v56.i32[2] = WORD1(v63);
  v56.i32[3] = WORD5(v63);
  v57 = v64;
  v58 = WORD4(v64);
  if (a5 >= 8)
  {
    v49 = 4;
  }

  else
  {
    v49 = v42;
  }

  v59 = WORD1(v64);
  v60 = WORD5(v64);
  v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 20, &v56, a7, v49, v43);
  v56.i32[0] = WORD2(v63);
  v56.i32[1] = WORD6(v63);
  v56.i32[2] = WORD3(v63);
  v56.i32[3] = HIWORD(v63);
  v57 = WORD2(v64);
  v58 = WORD6(v64);
  v59 = WORD3(v64);
  v60 = HIWORD(v64);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 30, &v56, a7, v49, v47);
  if (v50)
  {
    v52 = 4;
  }

  else
  {
    v52 = 0;
  }

  if (v48)
  {
    v53 = 2;
  }

  else
  {
    v53 = 0;
  }

  if (result)
  {
    v54 = -8;
  }

  else
  {
    v54 = -16;
  }

  *a2 = v54 | v52 | v46 | v53;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, int16x4_t a12, double a13, double a14, int16x4_t a15)
{
  v17 = *(a3 + a4);
  v18 = vzip1q_s32(*a3, v17);
  v19 = vzip2q_s32(*a3, v17);
  v20 = (a3 + 2 * a4);
  v21 = *(v20 + a4);
  v22 = *v20;
  v23 = vzip1q_s32(*v20, v21);
  v24 = vzip2q_s32(*v20, v21);
  v25 = vdupq_lane_s16(*v18.i8, 0);
  v26 = vsubq_s16(v18, v25);
  v27 = vsubq_s16(v23, v25);
  v28 = vsubq_s16(v19, v25);
  v29 = vsubq_s16(v24, v25);
  v21.i16[0] = vmaxvq_s16(v26);
  v30 = vdupq_lane_s16(*v21.i8, 0);
  v22.i16[0] = vminvq_s16(v26);
  v31 = vdupq_lane_s16(*v22.i8, 0);
  v32.i64[0] = 0x8000800080008000;
  v32.i64[1] = 0x8000800080008000;
  v33 = vmaxq_s16(v30, v32);
  v34.i64[0] = 0x8000800080008000;
  v34.i64[1] = 0x8000800080008000;
  v35 = vminq_s16(v31, v34);
  v36 = vzip1q_s16(v30, v31);
  v37.i64[0] = 0x10001000100010;
  v37.i64[1] = 0x10001000100010;
  v38 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v36)), vceqzq_s16(v36));
  v39 = vpmaxq_s16(v38, v38);
  v38.i16[0] = vmaxvq_s16(v27);
  a12.i16[0] = vminvq_s16(v27);
  v40 = vdupq_lane_s16(*v38.i8, 0);
  v41 = vdupq_lane_s16(a12, 0);
  v42 = vmaxq_s16(v33, v40);
  v43 = vminq_s16(v35, v41);
  v44 = vzip1q_s16(v40, v41);
  v45 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v44)), vceqzq_s16(v44));
  v46 = vpmaxq_s16(v45, v45);
  v45.i16[0] = vmaxvq_s16(v28);
  a15.i16[0] = vminvq_s16(v28);
  v47 = vdupq_lane_s16(*v45.i8, 0);
  v48 = vdupq_lane_s16(a15, 0);
  v49 = vmaxq_s16(v42, v47);
  v50 = vminq_s16(v43, v48);
  v51 = vzip1q_s16(v47, v48);
  v52 = vsubq_s16(v37, vclsq_s16(v51));
  v53 = vbicq_s8(v52, vceqzq_s16(v51));
  v54 = vpmaxq_s16(v53, v53);
  v52.i16[0] = vmaxvq_s16(v29);
  v15.i16[0] = vminvq_s16(v29);
  v55 = vdupq_lane_s16(*v52.i8, 0);
  v56 = vdupq_lane_s16(v15, 0);
  v57 = vmaxq_s16(v49, v55);
  v58 = vminq_s16(v50, v56);
  v59 = vzip1q_s16(v55, v56);
  v60 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v59)), vceqzq_s16(v59));
  v61 = vpmaxq_s16(v60, v60);
  v62 = vmaxq_s16(vmaxq_s16(v39, v46), vmaxq_s16(v54, v61));
  v63 = vclzq_s16(vsubq_s16(v57, v58));
  v64 = vsubq_s16(v37, v63);
  v65 = vminq_s16(v64, v62);
  if (vmaxvq_s16(v65))
  {
    v66 = 0;
    v67 = 0;
    v68.i64[0] = -1;
    v68.i64[1] = -1;
    v69.i64[0] = 0xF000F000F000FLL;
    v69.i64[1] = 0xF000F000F000FLL;
    v70 = vcgtq_s16(v62, v64);
    v71 = vandq_s8(vsubq_s16(vshlq_s16(v68, vsubq_s16(v69, v63)), v58), v70);
    v72.i64[0] = 0x8000800080008;
    v72.i64[1] = 0x8000800080008;
    v73.i64[0] = 0x3000300030003;
    v73.i64[1] = 0x3000300030003;
    v74 = vandq_s8(vceqzq_s16(v65), v73);
    v75 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v39), v73), 0);
    v76 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v46), v73), 0);
    v77 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v54), v73), 0);
    v78 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v61), v73), 0);
    v79 = vsubq_s16(v65, v75);
    v80 = vsubq_s16(v65, v76);
    v81 = vsubq_s16(v65, v77);
    v82 = vsubq_s16(v65, v78);
    v83 = vceqq_s16(vaddq_s16(v78, v77), vnegq_s16(vaddq_s16(v75, v76)));
    v78.i64[0] = 0x4000400040004;
    v78.i64[1] = 0x4000400040004;
    v84 = vbicq_s8(v78, v83);
    v85 = vorrq_s8(vorrq_s8(v74, vandq_s8(v70, v72)), v84);
    if (a5 >= 4 && a6 >= 2)
    {
      v367 = v24;
      v372 = v71;
      v86 = v18.u16[1] - v18.u16[0];
      v87 = 0x302030201000100;
      v88.i64[0] = 0xFFFFFFFF00000000;
      v88.i64[1] = 0xFFFFFFFF00000000;
      v89 = vmlal_s8(vandq_s8(vdupq_n_s16((v18.i8[4] - v18.i8[0])), v88), vdup_n_s8(v86), 0x302030201000100);
      v90 = vsubq_s16(v26, v89);
      v91 = vsubq_s16(vaddq_s16(vdupq_n_s16(-2 * (v18.i8[4] - v18.i8[0])), v27), v89);
      v92 = vsubq_s16(vaddq_s16(vdupq_n_s16(-4 * v86), v28), v89);
      v87.i16[0] = vmaxvq_s16(v90);
      v373 = v90;
      v88.i16[0] = vminvq_s16(v90);
      v93 = vdupq_lane_s16(v87, 0);
      v94 = vdupq_lane_s16(*v88.i8, 0);
      v95 = vsubq_s16(vaddq_s16(vdupq_n_s16(-(2 * (v18.i8[4] - v18.i8[0]) + 4 * v86)), v29), v89);
      v96.i64[0] = 0x8000800080008000;
      v96.i64[1] = 0x8000800080008000;
      v97 = vmaxq_s16(v93, v96);
      v89.i64[0] = 0x8000800080008000;
      v89.i64[1] = 0x8000800080008000;
      v98 = vzip1q_s16(v93, v94);
      v99.i64[0] = 0x10001000100010;
      v99.i64[1] = 0x10001000100010;
      v100 = vsubq_s16(v99, vclsq_s16(v98));
      v101 = vbicq_s8(v100, vceqzq_s16(v98));
      v100.i16[0] = vmaxvq_s16(v91);
      v370 = v91;
      v76.i16[0] = vminvq_s16(v91);
      v102 = vdupq_lane_s16(*v100.i8, 0);
      v103 = vdupq_lane_s16(*v76.i8, 0);
      v104 = vpmaxq_s16(v101, v101);
      v105 = vmaxq_s16(v97, v102);
      v106 = vminq_s16(vminq_s16(v94, v89), v103);
      v107 = vzip1q_s16(v102, v103);
      v108 = vsubq_s16(v99, vclsq_s16(v107));
      v109 = vbicq_s8(v108, vceqzq_s16(v107));
      v110 = vpmaxq_s16(v109, v109);
      v108.i16[0] = vmaxvq_s16(v92);
      v111 = vdupq_lane_s16(*v108.i8, 0);
      v16.i16[0] = vminvq_s16(v92);
      v112 = vdupq_lane_s16(v16, 0);
      v113 = vmaxq_s16(v105, v111);
      v114 = vminq_s16(v106, v112);
      v115 = vzip1q_s16(v111, v112);
      v116 = vsubq_s16(v99, vclsq_s16(v115));
      v117 = vbicq_s8(v116, vceqzq_s16(v115));
      v118 = v28;
      v119 = vpmaxq_s16(v117, v117);
      v117.i16[0] = vmaxvq_s16(v95);
      v116.i16[0] = vminvq_s16(v95);
      v120 = vdupq_lane_s16(*v117.i8, 0);
      v121 = vdupq_lane_s16(*v116.i8, 0);
      v122 = vmaxq_s16(v113, v120);
      v123 = vminq_s16(v114, v121);
      v124 = vzip1q_s16(v120, v121);
      v125 = vbicq_s8(vsubq_s16(v99, vclsq_s16(v124)), vceqzq_s16(v124));
      v126 = vpmaxq_s16(v125, v125);
      v127 = vmaxq_s16(vmaxq_s16(v104, v110), vmaxq_s16(v119, v126));
      v128 = vclzq_s16(vsubq_s16(v122, v123));
      v129 = vsubq_s16(v99, v128);
      v130 = vcgtq_s16(v127, v129);
      v131 = vminq_s16(v129, v127);
      v127.i64[0] = 0x1000100010001;
      v127.i64[1] = 0x1000100010001;
      v132 = vmaxq_s16(v131, v127);
      v133.i64[0] = 0x3000300030003;
      v133.i64[1] = 0x3000300030003;
      v134 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v104), v133), 0);
      v135 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v110), v133), 0);
      v136 = v81;
      v137 = v27;
      v138 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v119), v133), 0);
      v139 = vmaxq_s16(vminq_s16(vsubq_s16(v132, v126), v133), 0);
      v140 = vsubq_s16(v132, v134);
      v141 = vsubq_s16(v132, v135);
      v142 = vsubq_s16(v132, v138);
      v143 = vsubq_s16(v132, v139);
      v144 = vceqq_s16(vaddq_s16(v139, v138), vnegq_s16(vaddq_s16(v134, v135)));
      v139.i64[0] = 0x4000400040004;
      v139.i64[1] = 0x4000400040004;
      v145 = vbicq_s8(v139, v144);
      v146.i64[0] = 0x7000700070007;
      v146.i64[1] = 0x7000700070007;
      v147 = vaddq_s16(vshlq_n_s16(vaddq_s16(vaddq_s16(v142, v141), v143), 3uLL), v99);
      v148.i64[0] = 0x7000700070007;
      v148.i64[1] = 0x7000700070007;
      v149 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v132, v130), vaddq_s16(v145, v145)), v140, v146), v147);
      v150 = vandq_s8(v65, v70);
      v151 = vaddq_s16(v84, v84);
      v152 = vmulq_s16(v79, v148);
      v153 = vshlq_n_s16(vaddq_s16(vaddq_s16(v136, v80), v82), 3uLL);
      v154 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v150, v152), v153), v151), v149), 0);
      v149.i16[0] = vaddvq_s16(v154);
      v155 = v149.u16[0];
      if (v149.i16[0])
      {
        v156.i64[0] = 0x2000200020002;
        v156.i64[1] = 0x2000200020002;
        v157.i64[0] = 0xA000A000A000ALL;
        v157.i64[1] = 0xA000A000A000ALL;
        v158 = vbslq_s8(v130, v157, v156);
        v157.i64[0] = -1;
        v157.i64[1] = -1;
        v159 = vorrq_s8(v145, v158);
        v158.i64[0] = 0xF000F000F000FLL;
        v158.i64[1] = 0xF000F000F000FLL;
        v154 = vcltzq_s16(vshlq_n_s16(v154, 0xFuLL));
        v369 = vbslq_s8(v154, v373, v26);
        v371 = vbslq_s8(v154, v370, v137);
        v368 = vbslq_s8(v154, v92, v118);
        v29 = vbslq_s8(v154, v95, v29);
        v374 = v29;
        v79 = vbslq_s8(v154, v140, v79);
        v80 = vbslq_s8(v154, v141, v80);
        v136 = vbslq_s8(v154, v142, v136);
        v82 = vbslq_s8(v154, v143, v82);
        v71 = vbslq_s8(v154, vandq_s8(vsubq_s16(vshlq_s16(v157, vsubq_s16(v158, v128)), v123), v130), v372);
        v65 = vbslq_s8(v154, v132, v65);
        v85 = vbslq_s8(v154, v159, v85);
        v160.i64[0] = 0x8000800080008;
        v160.i64[1] = 0x8000800080008;
        v151 = vandq_s8(vaddq_s16(v85, v85), v160);
        v152 = vmulq_s16(v79, v148);
        v153 = vshlq_n_s16(vaddq_s16(vaddq_s16(v136, v80), v82), 3uLL);
      }

      else
      {
        v369 = v26;
        v371 = v137;
        v368 = v118;
        v374 = v29;
        v71 = v372;
      }

      v81 = v136;
      v162.i64[0] = 0x7000700070007;
      v162.i64[1] = 0x7000700070007;
      v67 = ((v18.i8[2] - v18.i8[0]) | ((v18.i16[2] - v18.i16[0]) << 8));
      v163 = vsubq_s16(v18, vqtbl1q_s8(v18, xmmword_29D2F0F00));
      v164 = v23;
      v164.i16[7] = v18.i16[7];
      v165 = vsubq_s16(v23, vqtbl1q_s8(v164, xmmword_29D2F0F10));
      v166 = v19;
      v166.i16[7] = v18.i16[7];
      v167 = vsubq_s16(v19, vqtbl1q_s8(v166, xmmword_29D2F0F20));
      v168 = v367;
      v168.i16[7] = v18.i16[7];
      v169 = vqtbl1q_s8(v168, xmmword_29D2F0F30);
      v171 = v163;
      v171.i16[0] = v163.i16[7];
      v170 = vsubq_s16(v367, v169);
      v171.i16[7] = v163.i16[0];
      v163.i16[0] = vmaxvq_s16(v171);
      v172 = vdupq_lane_s16(*v163.i8, 0);
      v169.i16[0] = vminvq_s16(v171);
      v173 = vdupq_lane_s16(*v169.i8, 0);
      v174.i64[0] = 0x8000800080008000;
      v174.i64[1] = 0x8000800080008000;
      v175 = vmaxq_s16(v172, v174);
      v176.i64[0] = 0x8000800080008000;
      v176.i64[1] = 0x8000800080008000;
      v177 = vminq_s16(v173, v176);
      v178 = vzip1q_s16(v172, v173);
      v179.i64[0] = 0x10001000100010;
      v179.i64[1] = 0x10001000100010;
      v180 = vsubq_s16(v179, vclsq_s16(v178));
      v181 = vbicq_s8(v180, vceqzq_s16(v178));
      v182 = vpmaxq_s16(v181, v181);
      v180.i16[0] = vmaxvq_s16(v165);
      v154.i16[0] = vminvq_s16(v165);
      v183 = vdupq_lane_s16(*v180.i8, 0);
      v184 = vdupq_lane_s16(*v154.i8, 0);
      v185 = vmaxq_s16(v175, v183);
      v186 = vminq_s16(v177, v184);
      v187 = vzip1q_s16(v183, v184);
      v188 = vsubq_s16(v179, vclsq_s16(v187));
      v189 = vbicq_s8(v188, vceqzq_s16(v187));
      v188.i16[0] = vmaxvq_s16(v167);
      v130.i16[0] = vminvq_s16(v167);
      v190 = vdupq_lane_s16(*v188.i8, 0);
      v191 = vdupq_lane_s16(*v130.i8, 0);
      v192 = vpmaxq_s16(v189, v189);
      v193 = vmaxq_s16(v185, v190);
      v194 = vminq_s16(v186, v191);
      v195 = vzip1q_s16(v190, v191);
      v196 = vsubq_s16(v179, vclsq_s16(v195));
      v197 = vbicq_s8(v196, vceqzq_s16(v195));
      v198 = vpmaxq_s16(v197, v197);
      v196.i16[0] = vmaxvq_s16(v170);
      v199 = vdupq_lane_s16(*v196.i8, 0);
      v29.i16[0] = vminvq_s16(v170);
      v200 = vdupq_lane_s16(*v29.i8, 0);
      v201 = vmaxq_s16(v193, v199);
      v202 = vminq_s16(v194, v200);
      v203 = vzip1q_s16(v199, v200);
      v204 = vbicq_s8(vsubq_s16(v179, vclsq_s16(v203)), vceqzq_s16(v203));
      v205 = vpmaxq_s16(v204, v204);
      v206 = vmaxq_s16(vmaxq_s16(v182, v192), vmaxq_s16(v198, v205));
      v207 = vclzq_s16(vsubq_s16(v201, v202));
      v208 = vsubq_s16(v179, v207);
      v209 = vcgtq_s16(v206, v208);
      v210 = vminq_s16(v208, v206);
      v200.i64[0] = 0x3000300030003;
      v200.i64[1] = 0x3000300030003;
      v211 = vmaxq_s16(vminq_s16(vsubq_s16(v210, v182), v200), 0);
      v212 = vmaxq_s16(vminq_s16(vsubq_s16(v210, v192), v200), 0);
      v213 = vmaxq_s16(vminq_s16(vsubq_s16(v210, v198), v200), 0);
      v214 = vmaxq_s16(vminq_s16(vsubq_s16(v210, v205), v200), 0);
      v215 = vsubq_s16(v210, v211);
      v216 = vsubq_s16(v210, v212);
      v217 = vsubq_s16(v210, v213);
      v218 = vsubq_s16(v210, v214);
      v219 = vceqq_s16(vaddq_s16(v214, v213), vnegq_s16(vaddq_s16(v211, v212)));
      v212.i64[0] = 0x4000400040004;
      v212.i64[1] = 0x4000400040004;
      v220 = vbicq_s8(v212, v219);
      v213.i64[0] = 0x8000800080008;
      v213.i64[1] = 0x8000800080008;
      v221 = vbicq_s8(v65, vceqzq_s16(vandq_s8(v85, v213)));
      v222.i64[0] = 0x2000200020002;
      v222.i64[1] = 0x2000200020002;
      v223 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vaddq_s16(vaddq_s16(v221, v151), vaddq_s16(vandq_s8(vceqq_s16(vandq_s8(v85, v200), v222), v179), v152)), v153), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v210, v209), vaddq_s16(v220, v220)), v215, v162), vshlq_n_s16(vaddq_s16(vaddq_s16(v217, v216), v218), 3uLL))), 0);
      v221.i16[0] = vaddvq_s16(v223);
      v224 = v221.u16[0];
      if (v221.i16[0])
      {
        v225.i64[0] = 0x9000900090009;
        v225.i64[1] = 0x9000900090009;
        v226.i64[0] = -1;
        v226.i64[1] = -1;
        v227 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v210), v222), vsubq_s16(vandq_s8(v209, v225), vmvnq_s8(v209))), v220);
        v228.i64[0] = 0xF000F000F000FLL;
        v228.i64[1] = 0xF000F000F000FLL;
        v229 = vandq_s8(vsubq_s16(vshlq_s16(v226, vsubq_s16(v228, v207)), v202), v209);
        v230 = vcltzq_s16(vshlq_n_s16(v223, 0xFuLL));
        v25.i16[0] = vbslq_s8(v230, vextq_s8(v18, v18, 0xEuLL), v25).u16[0];
        v26 = vbslq_s8(v230, v171, v369);
        v27 = vbslq_s8(v230, v165, v371);
        v28 = vbslq_s8(v230, v167, v368);
        v29 = vbslq_s8(v230, v170, v374);
        v79 = vbslq_s8(v230, v215, v79);
        v80 = vbslq_s8(v230, v216, v80);
        v81 = vbslq_s8(v230, v217, v136);
        v82 = vbslq_s8(v230, v218, v82);
        v71 = vbslq_s8(v230, v229, v71);
        v65 = vbslq_s8(v230, v210, v65);
        v85 = vbslq_s8(v230, v227, v85);
      }

      else
      {
        v29 = v374;
        v28 = v368;
        v26 = v369;
        v27 = v371;
      }

      if (v155)
      {
        v231 = v224 == 0;
      }

      else
      {
        v231 = 0;
      }

      v66 = v231;
    }

    v232.i64[0] = 0x8000800080008;
    v232.i64[1] = 0x8000800080008;
    v233 = vandq_s8(v85, v232);
    v234.i64[0] = 0x3000300030003;
    v234.i64[1] = 0x3000300030003;
    v235.i64[0] = 0x2000200020002;
    v235.i64[1] = 0x2000200020002;
    v236 = vceqq_s16(vandq_s8(v85, v234), v235);
    v235.i64[0] = 0x10001000100010;
    v235.i64[1] = 0x10001000100010;
    if (((vbicq_s8(v65, vceqzq_s16(v233)).u16[0] + ((2 * v85.i16[0]) & 8) + vandq_s8(v236, v235).u16[0] - v79.i16[0] + 8 * v79.i16[0] + 8 * vaddq_s16(vaddq_s16(v81, v80), v82).u16[0]) - 235) <= 0xFFFFFFFFFFFFFEF7)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 32;
    }

    else
    {
      v237 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v238 = 8 * (a1 & 7);
      if (v238)
      {
        v239 = *v237 & ~(-1 << v238);
      }

      else
      {
        v239 = 0;
      }

      if (v65.i16[0])
      {
        v240 = (16 * v65.i8[0] - 16) & 0xF0;
      }

      else
      {
        v240 = 0;
      }

      *a2 = v85.i8[0] << 6;
      v241 = (v240 & 0xFFFFFFFFFF0000F0 | (v25.u16[0] << 8) | v85.i8[0] & 0xF) >> 2;
      v242 = (v241 << v238) | v239;
      if (v238 >= 0x2A)
      {
        *v237 = v242;
        v242 = v241 >> (-8 * (a1 & 7u));
      }

      v243 = v238 + 22;
      v244 = vsubq_s16(v65, v79);
      v245 = vsubq_s16(v65, v80);
      v246 = vsubq_s16(v65, v81);
      v247 = vsubq_s16(v65, v82);
      *v244.i8 = vqmovn_u16(v244);
      *v245.i8 = vqmovn_u16(v245);
      *v246.i8 = vqmovn_u16(v246);
      *v247.i8 = vqmovn_u16(v247);
      v244.i32[0] = vzip1q_s16(vzip1q_s8(v244, v245), vzip1q_s8(v246, v247)).u32[0];
      v246.i64[0] = 0x202020202020202;
      v246.i64[1] = 0x202020202020202;
      v248 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v85.i8, 0x4000400040004)))), v246);
      v246.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v246.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v247.i64[0] = -1;
      v247.i64[1] = -1;
      v249 = vandq_s8(vshlq_u8(v247, vorrq_s8(v248, v246)), v244.u32[0]);
      v250 = vmovl_u8(*v248.i8);
      v251 = vpaddq_s16(vshlq_u16(vmovl_u8(*v249.i8), vtrn1q_s16(0, v250)), vmovl_high_u8(v249));
      v252 = vpaddq_s16(v250, vmovl_high_u8(v248));
      v253 = vmovl_u16(*v252.i8);
      v254 = vmovl_high_u16(v252);
      v255 = vpaddq_s32(vshlq_u32(vmovl_u16(*v251.i8), vtrn1q_s32(0, v253)), vshlq_u32(vmovl_high_u16(v251), vtrn1q_s32(0, v254)));
      v256 = vpaddq_s32(v253, v254);
      v257.i64[0] = v255.u32[0];
      v257.i64[1] = v255.u32[1];
      v258 = v257;
      v257.i64[0] = v255.u32[2];
      v257.i64[1] = v255.u32[3];
      v259 = v257;
      v257.i64[0] = v256.u32[0];
      v257.i64[1] = v256.u32[1];
      v260 = v257;
      v257.i64[0] = v256.u32[2];
      v257.i64[1] = v256.u32[3];
      v261 = vpaddq_s64(vshlq_u64(v258, vzip1q_s64(0, v260)), vshlq_u64(v259, vzip1q_s64(0, v257)));
      v262 = vpaddq_s64(v260, v257);
      v263 = (v238 + 22) & 0x3E;
      v264 = (v261.i64[0] << v263) | v242;
      if ((v262.i64[0] + v263) >= 0x40)
      {
        *(v237 + ((v243 >> 3) & 8)) = v264;
        v264 = v261.i64[0] >> -v263;
      }

      v265 = v262.i64[0] + v243;
      v266 = v264 | (v261.i64[1] << v265);
      if ((v265 & 0x3F) + v262.i64[1] >= 0x40)
      {
        *(v237 + ((v265 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v266;
        v266 = v261.i64[1] >> -(v265 & 0x3F);
        if ((v265 & 0x3F) == 0)
        {
          v266 = 0;
        }
      }

      v267 = vceqq_s16(v65, v79);
      v268 = v265 + v262.i64[1];
      v269.i64[0] = -1;
      v269.i64[1] = -1;
      v270 = vandq_s8(vextq_s8(vtstq_s16(v233, v233), 0, 0xEuLL), v65);
      v271.i64[0] = 0xF000F000F000FLL;
      v271.i64[1] = 0xF000F000F000FLL;
      v272 = vandq_s8(vshlq_u16(v269, vaddq_s16(v270, v271)), v71);
      v273 = vmovl_u16(*v270.i8);
      v274 = vpaddq_s32(vshlq_u32(vmovl_u16(*v272.i8), vtrn1q_s32(0, v273)), vmovl_high_u16(v272));
      v275 = vpaddq_s32(v273, vmovl_high_u16(v270));
      v276.i64[0] = v274.u32[0];
      v276.i64[1] = v274.u32[1];
      v277 = v276;
      v276.i64[0] = v274.u32[2];
      v276.i64[1] = v274.u32[3];
      v278 = v276;
      v276.i64[0] = v275.u32[0];
      v276.i64[1] = v275.u32[1];
      v279 = v276;
      v276.i64[0] = v275.u32[2];
      v276.i64[1] = v275.u32[3];
      v280 = vpaddq_s64(vshlq_u64(v277, vzip1q_s64(0, v279)), vshlq_u64(v278, vzip1q_s64(0, v276)));
      v281 = vpaddq_s64(v279, v276);
      v282 = (v280.i64[0] << v268) | v266;
      if (v281.i64[0] + (v268 & 0x3F) >= 0x40)
      {
        *(v237 + ((v268 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v282;
        v282 = v280.i64[0] >> -(v268 & 0x3F);
        if ((v268 & 0x3F) == 0)
        {
          v282 = 0;
        }
      }

      v283 = vandq_s8(v71, v267);
      v284 = v281.i64[0] + v268;
      v285 = v282 | (v280.i64[1] << v284);
      if ((v284 & 0x3F) + v281.i64[1] >= 0x40)
      {
        *(v237 + ((v284 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v285;
        v285 = v280.i64[1] >> -(v284 & 0x3F);
        if ((v284 & 0x3F) == 0)
        {
          v285 = 0;
        }
      }

      v286 = vceqq_s16(v65, v80);
      v287 = vaddq_s16(v283, v26);
      v288 = v284 + v281.i64[1];
      if (v66)
      {
        v285 |= v67 << v288;
        if ((v288 & 0x3F) >= 0x30)
        {
          *(v237 + ((v288 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v285;
          v285 = v67 >> -(v288 & 0x3F);
        }

        v288 += 16;
      }

      v289 = vandq_s8(v71, v286);
      v290 = vextq_s8(0, v79, 0xEuLL);
      v291.i64[0] = 0xF000F000F000FLL;
      v291.i64[1] = 0xF000F000F000FLL;
      v292.i64[0] = -1;
      v292.i64[1] = -1;
      v293 = vandq_s8(vshlq_u16(v292, vaddq_s16(v290, v291)), v287);
      v294 = vmovl_u16(*v290.i8);
      v295 = vmovl_high_u16(v290);
      v296 = vpaddq_s32(vshlq_u32(vmovl_u16(*v293.i8), vtrn1q_s32(0, v294)), vshlq_u32(vmovl_high_u16(v293), vtrn1q_s32(0, v295)));
      v297 = vpaddq_s32(v294, v295);
      v298.i64[0] = v296.u32[0];
      v298.i64[1] = v296.u32[1];
      v299 = v298;
      v298.i64[0] = v296.u32[2];
      v298.i64[1] = v296.u32[3];
      v300 = v298;
      v298.i64[0] = v297.u32[0];
      v298.i64[1] = v297.u32[1];
      v301 = v298;
      v298.i64[0] = v297.u32[2];
      v298.i64[1] = v297.u32[3];
      v302 = vpaddq_s64(vshlq_u64(v299, vzip1q_s64(0, v301)), vshlq_u64(v300, vzip1q_s64(0, v298)));
      v303 = vpaddq_s64(v301, v298);
      v304 = (v302.i64[0] << v288) | v285;
      if (v303.i64[0] + (v288 & 0x3F) >= 0x40)
      {
        *(v237 + ((v288 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v304;
        v304 = v302.i64[0] >> -(v288 & 0x3F);
        if ((v288 & 0x3F) == 0)
        {
          v304 = 0;
        }
      }

      v305 = vceqq_s16(v65, v81);
      v306 = vaddq_s16(v27, v289);
      v307 = v303.i64[0] + v288;
      v308 = (v303.i64[0] + v288) & 0x3F;
      v309 = v304 | (v302.i64[1] << v307);
      if ((v307 & 0x3F) + v303.i64[1] >= 0x40)
      {
        *(v237 + ((v307 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v309;
        v309 = v302.i64[1] >> -v308;
        if (!v308)
        {
          v309 = 0;
        }
      }

      v310 = vandq_s8(v71, v305);
      v311 = v307 + v303.i64[1];
      v312.i64[0] = 0xF000F000F000FLL;
      v312.i64[1] = 0xF000F000F000FLL;
      v313.i64[0] = -1;
      v313.i64[1] = -1;
      v314 = vandq_s8(vshlq_u16(v313, vaddq_s16(v80, v312)), v306);
      v315 = vmovl_u16(*v80.i8);
      v316 = vmovl_high_u16(v80);
      v317 = vpaddq_s32(vshlq_u32(vmovl_u16(*v314.i8), vtrn1q_s32(0, v315)), vshlq_u32(vmovl_high_u16(v314), vtrn1q_s32(0, v316)));
      v318 = vpaddq_s32(v315, v316);
      v319.i64[0] = v317.u32[0];
      v319.i64[1] = v317.u32[1];
      v320 = v319;
      v319.i64[0] = v317.u32[2];
      v319.i64[1] = v317.u32[3];
      v321 = v319;
      v319.i64[0] = v318.u32[0];
      v319.i64[1] = v318.u32[1];
      v322 = v319;
      v319.i64[0] = v318.u32[2];
      v319.i64[1] = v318.u32[3];
      v323 = vpaddq_s64(vshlq_u64(v320, vzip1q_s64(0, v322)), vshlq_u64(v321, vzip1q_s64(0, v319)));
      v324 = vpaddq_s64(v322, v319);
      v325 = (v323.i64[0] << v311) | v309;
      if (v324.i64[0] + (v311 & 0x3F) >= 0x40)
      {
        *(v237 + ((v311 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v325;
        v325 = v323.i64[0] >> -(v311 & 0x3F);
        if ((v311 & 0x3F) == 0)
        {
          v325 = 0;
        }
      }

      v326 = vceqq_s16(v65, v82);
      v327 = vaddq_s16(v28, v310);
      v328 = v324.i64[0] + v311;
      v329 = v325 | (v323.i64[1] << v328);
      if ((v328 & 0x3F) + v324.i64[1] >= 0x40)
      {
        *(v237 + ((v328 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v329;
        v329 = v323.i64[1] >> -(v328 & 0x3F);
        if ((v328 & 0x3F) == 0)
        {
          v329 = 0;
        }
      }

      v330 = vandq_s8(v71, v326);
      v331 = v328 + v324.i64[1];
      v332.i64[0] = 0xF000F000F000FLL;
      v332.i64[1] = 0xF000F000F000FLL;
      v333.i64[0] = -1;
      v333.i64[1] = -1;
      v334 = vandq_s8(vshlq_u16(v333, vaddq_s16(v81, v332)), v327);
      v335 = vmovl_u16(*v81.i8);
      v336 = vmovl_high_u16(v81);
      v337 = vpaddq_s32(vshlq_u32(vmovl_u16(*v334.i8), vtrn1q_s32(0, v335)), vshlq_u32(vmovl_high_u16(v334), vtrn1q_s32(0, v336)));
      v338 = vpaddq_s32(v335, v336);
      v339.i64[0] = v337.u32[0];
      v339.i64[1] = v337.u32[1];
      v340 = v339;
      v339.i64[0] = v337.u32[2];
      v339.i64[1] = v337.u32[3];
      v341 = v339;
      v339.i64[0] = v338.u32[0];
      v339.i64[1] = v338.u32[1];
      v342 = v339;
      v339.i64[0] = v338.u32[2];
      v339.i64[1] = v338.u32[3];
      v343 = vpaddq_s64(vshlq_u64(v340, vzip1q_s64(0, v342)), vshlq_u64(v341, vzip1q_s64(0, v339)));
      v344 = vpaddq_s64(v342, v339);
      v345 = (v343.i64[0] << v331) | v329;
      if (v344.i64[0] + (v331 & 0x3F) >= 0x40)
      {
        *(v237 + ((v331 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v345;
        v345 = v343.i64[0] >> -(v331 & 0x3F);
        if ((v331 & 0x3F) == 0)
        {
          v345 = 0;
        }
      }

      v346 = vaddq_s16(v29, v330);
      v347 = v344.i64[0] + v331;
      v348 = v345 | (v343.i64[1] << v347);
      if ((v347 & 0x3F) + v344.i64[1] >= 0x40)
      {
        *(v237 + ((v347 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v348;
        v348 = v343.i64[1] >> -(v347 & 0x3F);
        if ((v347 & 0x3F) == 0)
        {
          v348 = 0;
        }
      }

      v349 = v347 + v344.i64[1];
      v350.i64[0] = 0xF000F000F000FLL;
      v350.i64[1] = 0xF000F000F000FLL;
      v351.i64[0] = -1;
      v351.i64[1] = -1;
      v352 = vandq_s8(vshlq_u16(v351, vaddq_s16(v82, v350)), v346);
      v353 = vmovl_u16(*v82.i8);
      v354 = vmovl_high_u16(v82);
      v355 = vpaddq_s32(vshlq_u32(vmovl_u16(*v352.i8), vtrn1q_s32(0, v353)), vshlq_u32(vmovl_high_u16(v352), vtrn1q_s32(0, v354)));
      v356 = vpaddq_s32(v353, v354);
      v357.i64[0] = v355.u32[0];
      v357.i64[1] = v355.u32[1];
      v358 = v357;
      v357.i64[0] = v355.u32[2];
      v357.i64[1] = v355.u32[3];
      v359 = v357;
      v357.i64[0] = v356.u32[0];
      v357.i64[1] = v356.u32[1];
      v360 = v357;
      v357.i64[0] = v356.u32[2];
      v357.i64[1] = v356.u32[3];
      v361 = vpaddq_s64(vshlq_u64(v358, vzip1q_s64(0, v360)), vshlq_u64(v359, vzip1q_s64(0, v357)));
      v362 = vpaddq_s64(v360, v357);
      v363 = (v361.i64[0] << v349) | v348;
      if (v362.i64[0] + (v349 & 0x3F) > 0x3F)
      {
        *(v237 + ((v349 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v363;
        if ((v349 & 0x3F) != 0)
        {
          v363 = v361.i64[0] >> -(v349 & 0x3F);
        }

        else
        {
          v363 = 0;
        }
      }

      v364 = v362.i64[0] + v349;
      v365 = v363 | (v361.i64[1] << v364);
      if ((v364 & 0x3F) + v362.i64[1] >= 0x40)
      {
        *(v237 + ((v364 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
        v365 = v361.i64[1] >> -(v364 & 0x3F);
        if ((v364 & 0x3F) == 0)
        {
          v365 = 0;
        }
      }

      v366 = v364 + v362.i64[1];
      if ((v366 & 0x3F) != 0)
      {
        *(v237 + ((v366 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
      }

      result = (v366 - v238 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = a3->i16[0];
    *a2 = 1;
    return 2;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v65 = *MEMORY[0x29EDCA608];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  if (a5 > 1)
  {
    v19 = a5 & 0x7E;
    if (a5 == v19)
    {
      v20 = 0;
      v21 = &v61 + 8;
      v22 = (a3 + 2);
      do
      {
        v23 = v22;
        v24 = v21;
        v25 = a5;
        do
        {
          v26 = *(v23 - 1);
          v27 = *v23;
          v23 += 2;
          *(v24 - 4) = v26;
          *v24 = v27;
          v24 += 8;
          v25 -= 2;
        }

        while (v25);
        ++v20;
        v21 += 2;
        v22 = (v22 + a4);
      }

      while (v20 != a6);
    }

    else
    {
      v28 = 0;
      v29 = &v61 + 8;
      v30 = (a3 + 2);
      v31 = &v61 + ((a5 >> 1) & 0x3F);
      do
      {
        v32 = v30;
        v33 = v29;
        v34 = a5 & 0x7E;
        do
        {
          v35 = *(v32 - 1);
          v36 = *v32;
          v32 += 2;
          *(v33 - 4) = v35;
          *v33 = v36;
          v33 += 8;
          v34 -= 2;
        }

        while (v34);
        v37 = (a3 + v28 * a4 + 2 * v19);
        v38 = v31;
        v39 = a5 - v19;
        do
        {
          v40 = *v37++;
          *v38 = v40;
          v38 = (v38 + 8);
          --v39;
        }

        while (v39);
        ++v28;
        v29 += 2;
        v30 = (v30 + a4);
        v31 = (v31 + 2);
      }

      while (v28 != a6);
    }
  }

  else
  {
    v10 = 0;
    if (a6 < 2)
    {
      goto LABEL_7;
    }

    if (a4 != 1)
    {
      goto LABEL_7;
    }

    v10 = a6 & 0xFE;
    v11 = (a3 + 1);
    v12 = &v61 + 1;
    v13 = v10;
    do
    {
      v14 = *(v11 - 1);
      v15 = *v11++;
      *(v12 - 1) = v14;
      *v12 = v15;
      v12 += 2;
      v13 -= 2;
    }

    while (v13);
    if (v10 != a6)
    {
LABEL_7:
      v16 = a6 - v10;
      v17 = &v61 + v10;
      v18 = (a3 + v10 * a4);
      do
      {
        *v17++ = *v18;
        v18 = (v18 + a4);
        --v16;
      }

      while (v16);
    }
  }

  v56.i32[0] = v61;
  v56.i32[1] = WORD4(v61);
  v56.i32[2] = WORD1(v61);
  v56.i32[3] = WORD5(v61);
  v57 = v62;
  v58 = WORD4(v62);
  if (a5 >= 4)
  {
    v41 = 4;
  }

  else
  {
    v41 = a5;
  }

  if (a5 >= 4)
  {
    v42 = a5 - 4;
  }

  else
  {
    v42 = 0;
  }

  v59 = WORD1(v62);
  v60 = WORD5(v62);
  if (a6 >= 2)
  {
    v43 = 2;
  }

  else
  {
    v43 = a6;
  }

  if (a6 >= 2)
  {
    v44 = a6 - 2;
  }

  else
  {
    v44 = 0;
  }

  v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v56, a7, v41, v43);
  v56.i32[0] = WORD2(v61);
  v56.i32[1] = WORD6(v61);
  v56.i32[2] = WORD3(v61);
  v56.i32[3] = HIWORD(v61);
  v57 = WORD2(v62);
  v58 = WORD6(v62);
  v59 = WORD3(v62);
  v60 = HIWORD(v62);
  if (a6 >= 4)
  {
    v47 = 2;
  }

  else
  {
    v47 = v44;
  }

  v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 8, &v56, a7, v41, v47);
  v56.i32[0] = v63;
  v56.i32[1] = WORD4(v63);
  v56.i32[2] = WORD1(v63);
  v56.i32[3] = WORD5(v63);
  v57 = v64;
  v58 = WORD4(v64);
  if (a5 >= 8)
  {
    v49 = 4;
  }

  else
  {
    v49 = v42;
  }

  v59 = WORD1(v64);
  v60 = WORD5(v64);
  v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 16, &v56, a7, v49, v43);
  v56.i32[0] = WORD2(v63);
  v56.i32[1] = WORD6(v63);
  v56.i32[2] = WORD3(v63);
  v56.i32[3] = HIWORD(v63);
  v57 = WORD2(v64);
  v58 = WORD6(v64);
  v59 = WORD3(v64);
  v60 = HIWORD(v64);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 24, &v56, a7, v49, v47);
  if (v50)
  {
    v52 = 4;
  }

  else
  {
    v52 = 0;
  }

  if (v48)
  {
    v53 = 2;
  }

  else
  {
    v53 = 0;
  }

  if (result)
  {
    v54 = -8;
  }

  else
  {
    v54 = -16;
  }

  *a2 = v54 | v52 | v46 | v53;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(float64x2_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  switch(a4)
  {
    case 0xFFu:
      v12 = *(a3 + 16);
      v13 = *(a3 + 48);
      v14 = *(a3 + 144);
      v15 = *(a3 + 176);
      v16 = *(a3 + 64);
      v17 = *(a3 + 96);
      v18 = *(a3 + 32);
      v19 = *(a3 + 192);
      v20 = *(a3 + 224);
      v21 = *(a3 + 240);
      v22 = *(a3 + 128);
      v23 = *(a3 + 160);
      v24 = *(a3 + 80);
      v25 = *(a3 + 112);
      v26 = *(a3 + 208);
      v27 = (a1->f64 + a2);
      *a1 = *a3;
      a1[1] = v18;
      a1[2] = v22;
      a1[3] = v23;
      v28 = (a1->f64 + 2 * a2);
      *v27 = v12;
      v27[1] = v13;
      v27[2] = v14;
      v27[3] = v15;
      *v28 = v16;
      v28[1] = v17;
      v28[2] = v19;
      v28[3] = v20;
      v29 = (v28 + a2);
      v4 = 256;
      *v29 = v24;
      v29[1] = v25;
      v29[2] = v26;
      v29[3] = v21;
      return v4;
    case 7u:
      v8 = vld1q_dup_f64(a3);
      *a1 = v8;
      a1[1] = v8;
      a1[2] = v8;
      a1[3] = v8;
      v9 = (a1 + a2);
      *v9 = v8;
      v9[1] = v8;
      v9[2] = v8;
      v9[3] = v8;
      v10 = (a1 + 2 * a2);
      *v10 = v8;
      v10[1] = v8;
      v10[2] = v8;
      v10[3] = v8;
      v11 = (a1 + 2 * a2 + a2);
      *v11 = v8;
      v11[1] = v8;
      v4 = 8;
LABEL_144:
      v11[2] = v8;
      v11[3] = v8;
      return v4;
    case 0u:
      v4 = 0;
      a1[2] = 0u;
      a1[3] = 0u;
      *a1 = 0u;
      a1[1] = 0u;
      v5 = (a1->f64 + a2);
      v5[2] = 0u;
      v5[3] = 0u;
      *v5 = 0u;
      v5[1] = 0u;
      v6 = (a1->f64 + 2 * a2);
      v6[2] = 0u;
      v6[3] = 0u;
      *v6 = 0u;
      v6[1] = 0u;
      v7 = (a1->f64 + 2 * a2 + a2);
      v7[2] = 0u;
      v7[3] = 0u;
      *v7 = 0u;
      v7[1] = 0u;
      return v4;
  }

  v30 = 8 * (a3 & 7);
  v31 = a3 & 0xFFFFFFFFFFFFFFF8;
  v32 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v30;
  if (v30 >= 0x1D)
  {
    v32 |= *(v31 + 8) << (-8 * (a3 & 7u));
  }

  v33.i16[0] = v32;
  v33.i16[1] = v32 >> 5;
  v33.i16[2] = v32 >> 10;
  v33.i16[3] = v32 >> 15;
  v34 = vand_s8(vshl_u32(vdup_n_s32(v32), 0xFFFFFFE8FFFFFFECLL), 0xF0000000FLL);
  v34.i16[1] = v34.i16[2];
  v34.i16[2] = v32 >> 28;
  v34.i16[3] = BYTE4(v32) & 0xF;
  v35 = (8 * (a3 & 7)) | 0x800;
  v36 = v30 + 100;
  v37 = vand_s8(v33, 0x1F001F001F001FLL);
  v38 = vdupq_lane_s64(v37, 0);
  v39.i64[0] = 0x3000300030003;
  v39.i64[1] = 0x3000300030003;
  v426 = *&v38 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3);
  v40 = vbicq_s8(vdupq_lane_s64(*&vadd_s16(v34, 0x1000100010001), 0), vceqq_s16((*&v38 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v39));
  v39.i64[0] = 0x202020202020202;
  v39.i64[1] = 0x202020202020202;
  v41 = vandq_s8(vmovl_s16(vtst_s16((v37 & 0xFFE4FFE4FFE4FFE4), (v37 & 0xFFE4FFE4FFE4FFE4))), v39);
  if (vmaxvq_s8(v41) < 1)
  {
    v50 = 0;
    v70.i64[0] = -1;
    v70.i64[1] = -1;
    v424 = v70;
    v425 = v70;
    v69 = v40;
    v68 = v40;
    v67 = v40;
    v422 = v70;
    v423 = v70;
    v66 = v40;
  }

  else
  {
    v42 = vmovl_u8(*&vpaddq_s8(v41, v41));
    v43 = vmovl_u16(*&vpaddq_s16(v42, v42));
    v44 = vpaddq_s32(v43, v43).u64[0];
    v45.i64[0] = v44;
    v45.i64[1] = HIDWORD(v44);
    v46 = v45;
    v47 = vaddvq_s64(v45);
    v48 = v36 + v47;
    v49 = v47 <= 0x80 && v35 >= v48;
    v50 = !v49;
    v51 = 0uLL;
    if (v49)
    {
      v52 = v36 & 0x3C;
      v53 = vaddq_s64(vdupq_n_s64(v52), vzip1q_s64(0, v46));
      v54 = (v31 + ((v36 >> 3) & 0x18));
      v51 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v54, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v53)), vshlq_u64(vdupq_lane_s64(v54->i64[0], 0), vnegq_s64(v53)));
      if (v52 + v47 >= 0x81)
      {
        v51 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v54[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v53)), vshlq_u64(vdupq_laneq_s64(v54[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v53))), v51);
      }

      v36 = v48;
    }

    v55 = vzip1_s32(*v43.i8, *&vextq_s8(v43, v43, 8uLL));
    v56.i64[0] = v55.u32[0];
    v56.i64[1] = v55.u32[1];
    v57 = vshlq_u64(v51, vnegq_s64(v56));
    v58 = vuzp1q_s32(vzip1q_s64(v51, v57), vzip2q_s64(v51, v57));
    v59 = vshlq_u32(v58, vnegq_s32((*&v42 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v60 = vuzp1q_s16(vzip1q_s32(v58, v59), vzip2q_s32(v58, v59));
    v61 = vshlq_u16(v60, vnegq_s16((*&v41 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
    v62 = vuzp1q_s8(vzip1q_s16(v60, v61), vzip2q_s16(v60, v61));
    v61.i64[0] = 0x101010101010101;
    v61.i64[1] = 0x101010101010101;
    v63 = vshlq_s8(v61, v41);
    v61.i64[0] = -1;
    v61.i64[1] = -1;
    v64 = vqtbl1q_s8(vandq_s8(vaddq_s8(v63, v61), v62), xmmword_29D2F0F70);
    *v62.i8 = vdup_lane_s32(*v64.i8, 0);
    *v61.i8 = vdup_lane_s32(*v64.i8, 1);
    v65 = vdupq_laneq_s32(v64, 2).u64[0];
    v64.i64[0] = vdupq_laneq_s32(v64, 3).u64[0];
    v66 = vsubw_s8(v40, *v62.i8);
    v67 = vsubw_s8(v40, *v61.i8);
    v68 = vsubw_s8(v40, v65);
    v69 = vsubw_s8(v40, *v64.i8);
    v424 = vmovl_s8(vceqz_s8(*v62.i8));
    v422 = vmovl_s8(vceqz_s8(*v61.i8));
    v423 = vmovl_s8(vceqz_s8(v65));
    v425 = vmovl_s8(vceqz_s8(*v64.i8));
  }

  v71.i64[0] = 0x8000800080008;
  v71.i64[1] = 0x8000800080008;
  v72 = 0uLL;
  v428 = vandq_s8(vextq_s8(vtstq_s16(v38, v71), 0, 8uLL), v40);
  v73 = vmovl_u16(*&vpaddq_s16(v428, v428));
  v74 = vpaddq_s32(v73, v73).u64[0];
  v75.i64[0] = v74;
  v75.i64[1] = HIDWORD(v74);
  v76 = v75;
  v77 = vaddvq_s64(v75);
  v78 = v36 + v77;
  if (v77 <= 0x80 && v35 >= v78)
  {
    v80 = v36 & 0x3F;
    v81 = vaddq_s64(vdupq_n_s64(v80), vzip1q_s64(0, v76));
    v82 = (v31 + 8 * (v36 >> 6));
    v72 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v82, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v81)), vshlq_u64(vdupq_lane_s64(v82->i64[0], 0), vnegq_s64(v81)));
    if (v80 + v77 >= 0x81)
    {
      v72 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v82[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v81)), vshlq_u64(vdupq_laneq_s64(v82[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v81))), v72);
    }

    v36 = v78;
  }

  else
  {
    v50 = 1;
  }

  v83 = v38.i8[0] & 3;
  if (v83 == 2)
  {
    v84 = v36 + 16;
    if (v35 >= v36 + 8)
    {
      v36 += 8;
    }

    else
    {
      v50 = 1;
      v84 = v36 + 8;
    }

    if (v35 >= v84)
    {
      v36 = v84;
    }

    else
    {
      v50 = 1;
    }
  }

  v85 = 0uLL;
  v417 = vextq_s8(0, v66, 8uLL);
  v86 = vmovl_u16(*&vpaddq_s16(v417, v417));
  v87 = vpaddq_s32(v86, v86).u64[0];
  v88.i64[0] = v87;
  v88.i64[1] = HIDWORD(v87);
  v89 = v88;
  v90 = vaddvq_s64(v88);
  v91 = v36 + v90;
  if (v90 <= 0x80 && v35 >= v91)
  {
    v94 = v36 & 0x3F;
    v95 = vaddq_s64(vdupq_n_s64(v94), vzip1q_s64(0, v89));
    v96 = (v31 + 8 * (v36 >> 6));
    v93 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v96, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v95)), vshlq_u64(vdupq_lane_s64(v96->i64[0], 0), vnegq_s64(v95)));
    if (v94 + v90 >= 0x81)
    {
      v93 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v96[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v95)), vshlq_u64(vdupq_laneq_s64(v96[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v95))), v93);
    }

    v36 = v91;
  }

  else
  {
    v50 = 1;
    v93 = 0uLL;
  }

  v97 = vmovl_u16(*&vpaddq_s16(v66, v66));
  v98 = vpaddq_s32(v97, v97).u64[0];
  v99.i64[0] = v98;
  v99.i64[1] = HIDWORD(v98);
  v100 = v99;
  v101 = vaddvq_s64(v99);
  v102 = v36 + v101;
  if (v101 <= 0x80 && v35 >= v102)
  {
    v104 = v36 & 0x3F;
    v105 = vaddq_s64(vdupq_n_s64(v104), vzip1q_s64(0, v100));
    v106 = (v31 + 8 * (v36 >> 6));
    v85 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v106, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v105)), vshlq_u64(vdupq_lane_s64(v106->i64[0], 0), vnegq_s64(v105)));
    if (v104 + v101 >= 0x81)
    {
      v85 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v106[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v105)), vshlq_u64(vdupq_laneq_s64(v106[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v105))), v85);
    }

    v36 = v102;
  }

  else
  {
    v50 = 1;
  }

  v107 = v36 + v101;
  v108 = 0uLL;
  if (v101 <= 0x80 && v35 >= v107)
  {
    v111 = v36 & 0x3F;
    v112 = vaddq_s64(vdupq_n_s64(v111), vzip1q_s64(0, v100));
    v113 = (v31 + 8 * (v36 >> 6));
    v110 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v113, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v112)), vshlq_u64(vdupq_lane_s64(v113->i64[0], 0), vnegq_s64(v112)));
    if (v111 + v101 >= 0x81)
    {
      v110 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v113[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v112)), vshlq_u64(vdupq_laneq_s64(v113[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v112))), v110);
    }

    v36 = v107;
  }

  else
  {
    v50 = 1;
    v110 = 0uLL;
  }

  v114 = v36 + v101;
  v115 = v101 <= 0x80 && v35 >= v114;
  v427 = v38;
  if (v115)
  {
    v116 = v36 & 0x3F;
    v117 = vaddq_s64(vdupq_n_s64(v116), vzip1q_s64(0, v100));
    v118 = (v31 + 8 * (v36 >> 6));
    v108 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v118, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v117)), vshlq_u64(vdupq_lane_s64(v118->i64[0], 0), vnegq_s64(v117)));
    if (v116 + v101 >= 0x81)
    {
      v108 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v118[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v117)), vshlq_u64(vdupq_laneq_s64(v118[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v117))), v108);
    }

    v36 = v114;
  }

  else
  {
    v50 = 1;
  }

  v119 = vmovl_u16(*&vpaddq_s16(v67, v67));
  v120 = vpaddq_s32(v119, v119).u64[0];
  v121.i64[0] = v120;
  v121.i64[1] = HIDWORD(v120);
  v122 = v121;
  v123 = vaddvq_s64(v121);
  v124 = v36 + v123;
  v125 = 0uLL;
  if (v123 <= 0x80 && v35 >= v124)
  {
    v128 = v36 & 0x3F;
    v129 = vaddq_s64(vdupq_n_s64(v128), vzip1q_s64(0, v122));
    v130 = (v31 + 8 * (v36 >> 6));
    v127 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v130, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v129)), vshlq_u64(vdupq_lane_s64(v130->i64[0], 0), vnegq_s64(v129)));
    if (v128 + v123 >= 0x81)
    {
      v127 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v130[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v129)), vshlq_u64(vdupq_laneq_s64(v130[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v129))), v127);
    }

    v36 = v124;
  }

  else
  {
    v50 = 1;
    v127 = 0uLL;
  }

  v131 = v36 + v123;
  if (v123 <= 0x80 && v35 >= v131)
  {
    v133 = v36 & 0x3F;
    v134 = vaddq_s64(vdupq_n_s64(v133), vzip1q_s64(0, v122));
    v135 = (v31 + 8 * (v36 >> 6));
    v125 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v135, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v134)), vshlq_u64(vdupq_lane_s64(v135->i64[0], 0), vnegq_s64(v134)));
    if (v133 + v123 >= 0x81)
    {
      v125 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v135[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v134)), vshlq_u64(vdupq_laneq_s64(v135[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v134))), v125);
    }

    v36 = v131;
  }

  else
  {
    v50 = 1;
  }

  v418 = v66;
  v136 = v36 + v123;
  v137 = 0uLL;
  if (v123 <= 0x80 && v35 >= v136)
  {
    v140 = v36 & 0x3F;
    v141 = vaddq_s64(vdupq_n_s64(v140), vzip1q_s64(0, v122));
    v142 = (v31 + 8 * (v36 >> 6));
    v139 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v142, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v141)), vshlq_u64(vdupq_lane_s64(v142->i64[0], 0), vnegq_s64(v141)));
    if (v140 + v123 >= 0x81)
    {
      v139 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v142[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v141)), vshlq_u64(vdupq_laneq_s64(v142[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v141))), v139);
    }

    v36 = v136;
    if (v123 > 0x80)
    {
      goto LABEL_98;
    }
  }

  else
  {
    v50 = 1;
    v139 = 0uLL;
    if (v123 > 0x80)
    {
      goto LABEL_98;
    }
  }

  v143 = v36 + v123;
  if (v35 < v36 + v123)
  {
LABEL_98:
    v50 = 1;
    v143 = v36;
    goto LABEL_99;
  }

  v144 = v36 & 0x3F;
  v145 = vaddq_s64(vdupq_n_s64(v144), vzip1q_s64(0, v122));
  v146 = (v31 + 8 * (v36 >> 6));
  v137 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v146, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v145)), vshlq_u64(vdupq_lane_s64(v146->i64[0], 0), vnegq_s64(v145)));
  if (v144 + v123 >= 0x81)
  {
    v137 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v146[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v145)), vshlq_u64(vdupq_laneq_s64(v146[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v145))), v137);
  }

LABEL_99:
  v147 = vmovl_u16(*&vpaddq_s16(v68, v68));
  v148 = vpaddq_s32(v147, v147).u64[0];
  v149.i64[0] = v148;
  v149.i64[1] = HIDWORD(v148);
  v150 = v149;
  v151 = vaddvq_s64(v149);
  v152 = v151;
  v153 = 0uLL;
  v419 = v67;
  v420 = v68;
  if (v151 > 0x80 || (v154 = v143 + v151, v35 < v143 + v151))
  {
    v50 = 1;
    v154 = v143;
    v157 = 0uLL;
  }

  else
  {
    v155 = vaddq_s64(vdupq_n_s64(v143 & 0x3F), vzip1q_s64(0, v150));
    v156 = (v31 + 8 * (v143 >> 6));
    v157 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v156, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v155)), vshlq_u64(vdupq_lane_s64(v156->i64[0], 0), vnegq_s64(v155)));
    if ((v143 & 0x3F) + v152 >= 0x81)
    {
      v157 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v156[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v155)), vshlq_u64(vdupq_laneq_s64(v156[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v155))), v157);
    }
  }

  if (v152 > 0x80 || (v158 = v154 + v152, v35 < v154 + v152))
  {
    v50 = 1;
    v158 = v154;
  }

  else
  {
    v159 = vaddq_s64(vdupq_n_s64(v154 & 0x3F), vzip1q_s64(0, v150));
    v160 = (v31 + 8 * (v154 >> 6));
    v153 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v160, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v159)), vshlq_u64(vdupq_lane_s64(v160->i64[0], 0), vnegq_s64(v159)));
    if ((v154 & 0x3F) + v152 >= 0x81)
    {
      v153 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v160[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v159)), vshlq_u64(vdupq_laneq_s64(v160[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v159))), v153);
    }
  }

  v161 = 0uLL;
  if (v152 > 0x80 || (v162 = v158 + v152, v35 < v158 + v152))
  {
    v50 = 1;
    v162 = v158;
    v166 = 0uLL;
  }

  else
  {
    v163 = v158 & 0x3F;
    v164 = vaddq_s64(vdupq_n_s64(v163), vzip1q_s64(0, v150));
    v165 = (v31 + 8 * (v158 >> 6));
    v166 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v165, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v164)), vshlq_u64(vdupq_lane_s64(v165->i64[0], 0), vnegq_s64(v164)));
    if (v163 + v152 >= 0x81)
    {
      v166 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v165[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v164)), vshlq_u64(vdupq_laneq_s64(v165[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v164))), v166);
    }
  }

  if (v152 > 0x80 || (v167 = v162 + v152, v35 < v162 + v152))
  {
    v50 = 1;
    v167 = v162;
  }

  else
  {
    v168 = v162 & 0x3F;
    v169 = vaddq_s64(vdupq_n_s64(v168), vzip1q_s64(0, v150));
    v170 = (v31 + 8 * (v162 >> 6));
    v161 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v170, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v169)), vshlq_u64(vdupq_lane_s64(v170->i64[0], 0), vnegq_s64(v169)));
    if (v168 + v152 >= 0x81)
    {
      v161 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v170[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v169)), vshlq_u64(vdupq_laneq_s64(v170[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v169))), v161);
    }
  }

  v421 = v69;
  v171 = vmovl_u16(*&vpaddq_s16(v69, v69));
  v172 = vpaddq_s32(v171, v171).u64[0];
  v173.i64[0] = v172;
  v173.i64[1] = HIDWORD(v172);
  v174 = v173;
  v175 = vaddvq_s64(v173);
  v176 = v175;
  v177 = 0uLL;
  if (v175 > 0x80 || (v178 = v167 + v175, v35 < v167 + v175))
  {
    v50 = 1;
    v178 = v167;
    v182 = 0uLL;
  }

  else
  {
    v179 = v167 & 0x3F;
    v180 = vaddq_s64(vdupq_n_s64(v179), vzip1q_s64(0, v174));
    v181 = (v31 + 8 * (v167 >> 6));
    v182 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v181, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v180)), vshlq_u64(vdupq_lane_s64(v181->i64[0], 0), vnegq_s64(v180)));
    if (v179 + v176 >= 0x81)
    {
      v182 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v181[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v180)), vshlq_u64(vdupq_laneq_s64(v181[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v180))), v182);
    }
  }

  if (v176 > 0x80 || (v183 = v178 + v176, v35 < v178 + v176))
  {
    v50 = 1;
    v183 = v178;
  }

  else
  {
    v184 = v178 & 0x3F;
    v185 = vaddq_s64(vdupq_n_s64(v184), vzip1q_s64(0, v174));
    v186 = (v31 + 8 * (v178 >> 6));
    v177 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v186, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v185)), vshlq_u64(vdupq_lane_s64(v186->i64[0], 0), vnegq_s64(v185)));
    if (v184 + v176 >= 0x81)
    {
      v177 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v186[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v185)), vshlq_u64(vdupq_laneq_s64(v186[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v185))), v177);
    }
  }

  if (v176 > 0x80 || (v187 = v183 + v176, v35 < v183 + v176))
  {
    v50 = 1;
    v187 = v183;
    v191 = 0uLL;
  }

  else
  {
    v188 = v183 & 0x3F;
    v189 = vaddq_s64(vdupq_n_s64(v188), vzip1q_s64(0, v174));
    v190 = (v31 + 8 * (v183 >> 6));
    v191 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v190, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v189)), vshlq_u64(vdupq_lane_s64(v190->i64[0], 0), vnegq_s64(v189)));
    if (v188 + v176 >= 0x81)
    {
      v191 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v190[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v189)), vshlq_u64(vdupq_laneq_s64(v190[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v189))), v191);
    }
  }

  if (v176 > 0x80)
  {
    goto LABEL_143;
  }

  v192 = v187 + v176;
  if (v35 < v187 + v176)
  {
    goto LABEL_143;
  }

  v193 = v187 & 0x3F;
  v194 = vaddq_s64(vdupq_n_s64(v193), vzip1q_s64(0, v174));
  v195 = (v31 + 8 * (v187 >> 6));
  v196 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v195, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v194)), vshlq_u64(vdupq_lane_s64(v195->i64[0], 0), vnegq_s64(v194)));
  if (v193 + v176 >= 0x81)
  {
    v196 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v195[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v194)), vshlq_u64(vdupq_laneq_s64(v195[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v194))), v196);
  }

  if ((v50 & 1) != 0 || (v4 = a4 + 1, v35 + 8 * v4 - v192 - 2048 >= 9) || v83 == 2)
  {
LABEL_143:
    v4 = 0;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    *a1 = v8;
    a1[1] = v8;
    a1[2] = v8;
    a1[3] = v8;
    v197 = (a1 + a2);
    *v197 = v8;
    v197[1] = v8;
    v197[2] = v8;
    v197[3] = v8;
    v198 = (a1 + 2 * a2);
    *v198 = v8;
    v198[1] = v8;
    v198[2] = v8;
    v198[3] = v8;
    v11 = (a1 + 2 * a2 + a2);
    *v11 = v8;
    v11[1] = v8;
    goto LABEL_144;
  }

  v200 = vzip1_s32(*v73.i8, *&vextq_s8(v73, v73, 8uLL));
  v201 = vzip1_s32(*v86.i8, *&vextq_s8(v86, v86, 8uLL));
  v202 = vzip1_s32(*v97.i8, *&vextq_s8(v97, v97, 8uLL));
  v203 = vzip1_s32(*v119.i8, *&vextq_s8(v119, v119, 8uLL));
  v204 = vzip1_s32(*v147.i8, *&vextq_s8(v147, v147, 8uLL));
  v205 = vzip1_s32(*v171.i8, *&vextq_s8(v171, v171, 8uLL));
  v206 = ((2 * *(v31 + (((v30 + 36) >> 3) & 8) + 8)) << ~(v30 + 36)) | (*(v31 + (((v30 + 36) >> 3) & 8)) >> (v30 + 36));
  v207.i64[0] = v200.u32[0];
  v207.i64[1] = v200.u32[1];
  v208 = vshlq_u64(v72, vnegq_s64(v207));
  v412 = vzip1q_s64(v72, v208);
  v414 = vzip2q_s64(v72, v208);
  v207.i64[0] = v201.u32[0];
  v207.i64[1] = v201.u32[1];
  v209 = vshlq_u64(v93, vnegq_s64(v207));
  v408 = vzip1q_s64(v93, v209);
  v410 = vzip2q_s64(v93, v209);
  v207.i64[0] = v202.u32[0];
  v207.i64[1] = v202.u32[1];
  v210 = vnegq_s64(v207);
  v211 = vshlq_u64(v85, v210);
  v404 = vzip1q_s64(v85, v211);
  v406 = vzip2q_s64(v85, v211);
  v212 = vshlq_u64(v110, v210);
  v402 = vzip2q_s64(v110, v212);
  v213 = vzip1q_s64(v110, v212);
  v214 = vshlq_u64(v108, v210);
  v215 = vzip2q_s64(v108, v214);
  v216 = vzip1q_s64(v108, v214);
  v207.i64[0] = v203.u32[0];
  v207.i64[1] = v203.u32[1];
  v217 = vnegq_s64(v207);
  v218 = vshlq_u64(v127, v217);
  v219 = vzip2q_s64(v127, v218);
  v220 = vzip1q_s64(v127, v218);
  v221 = vshlq_u64(v125, v217);
  v222 = vzip2q_s64(v125, v221);
  v223 = vzip1q_s64(v125, v221);
  v224 = vshlq_u64(v139, v217);
  v225 = vzip2q_s64(v139, v224);
  v226 = vzip1q_s64(v139, v224);
  v227 = vshlq_u64(v137, v217);
  v228 = vzip2q_s64(v137, v227);
  v229 = vzip1q_s64(v137, v227);
  v207.i64[0] = v204.u32[0];
  v207.i64[1] = v204.u32[1];
  v230 = vnegq_s64(v207);
  v231 = vshlq_u64(v157, v230);
  v232 = vzip2q_s64(v157, v231);
  v233 = vzip1q_s64(v157, v231);
  v234 = vshlq_u64(v153, v230);
  v235 = vzip2q_s64(v153, v234);
  v236 = vzip1q_s64(v153, v234);
  v237 = vshlq_u64(v166, v230);
  v238 = vzip2q_s64(v166, v237);
  v239 = vzip1q_s64(v166, v237);
  v240 = vshlq_u64(v161, v230);
  v241 = vzip2q_s64(v161, v240);
  v242 = vzip1q_s64(v161, v240);
  v207.i64[0] = v205.u32[0];
  v207.i64[1] = v205.u32[1];
  v416 = vnegq_s64(v207);
  v243 = vshlq_u64(v182, v416);
  v244 = vzip2q_s64(v182, v243);
  v245 = vzip1q_s64(v182, v243);
  v246 = vshlq_u64(v177, v416);
  v247 = vzip2q_s64(v177, v246);
  v248 = vzip1q_s64(v177, v246);
  v249 = vshlq_u64(v191, v416);
  v250 = vzip2q_s64(v191, v249);
  v251 = vzip1q_s64(v191, v249);
  v252 = vuzp1q_s32(v412, v414);
  v253 = vuzp1q_s32(v408, v410);
  v254 = vuzp1q_s32(v404, v406);
  v255 = vuzp1q_s32(v213, v402);
  v256 = vuzp1q_s32(v216, v215);
  v257 = vuzp1q_s32(v220, v219);
  v258 = vuzp1q_s32(v223, v222);
  v259 = vuzp1q_s32(v226, v225);
  v260 = vuzp1q_s32(v229, v228);
  v261 = vuzp1q_s32(v233, v232);
  v262 = vuzp1q_s32(v236, v235);
  v263 = vuzp1q_s32(v239, v238);
  v264 = vuzp1q_s32(v242, v241);
  v265 = vuzp1q_s32(v245, v244);
  v266 = vuzp1q_s32(v248, v247);
  v245.i64[0] = 0xFFFF0000FFFFLL;
  v245.i64[1] = 0xFFFF0000FFFFLL;
  v267 = vuzp1q_s32(v251, v250);
  v268 = vshlq_u32(v252, vnegq_s32(vandq_s8(v428, v245)));
  v413 = vzip1q_s32(v252, v268);
  v415 = vzip2q_s32(v252, v268);
  v250.i64[0] = 0xFFFF0000FFFFLL;
  v250.i64[1] = 0xFFFF0000FFFFLL;
  v269 = vshlq_u32(v253, vnegq_s32(vandq_s8(v417, v250)));
  v409 = vzip1q_s32(v253, v269);
  v411 = vzip2q_s32(v253, v269);
  v270 = vnegq_s32(vandq_s8(v418, v250));
  v271 = vshlq_u32(v254, v270);
  v405 = vzip1q_s32(v254, v271);
  v407 = vzip2q_s32(v254, v271);
  v272 = vshlq_u32(v255, v270);
  v401 = vzip1q_s32(v255, v272);
  v403 = vzip2q_s32(v255, v272);
  v273 = vshlq_u32(v256, v270);
  v399 = vzip1q_s32(v256, v273);
  v400 = vzip2q_s32(v256, v273);
  v232.i64[0] = 0xFFFF0000FFFFLL;
  v232.i64[1] = 0xFFFF0000FFFFLL;
  v274 = vnegq_s32(vandq_s8(v419, v232));
  v275 = vshlq_u32(v257, v274);
  v397 = vzip1q_s32(v257, v275);
  v398 = vzip2q_s32(v257, v275);
  v276 = vshlq_u32(v258, v274);
  v395 = vzip1q_s32(v258, v276);
  v396 = vzip2q_s32(v258, v276);
  v277 = vshlq_u32(v259, v274);
  v393 = vzip1q_s32(v259, v277);
  v394 = vzip2q_s32(v259, v277);
  v278 = vshlq_u32(v260, v274);
  v392 = vzip2q_s32(v260, v278);
  v279 = vzip1q_s32(v260, v278);
  v260.i64[0] = 0xFFFF0000FFFFLL;
  v260.i64[1] = 0xFFFF0000FFFFLL;
  v280 = vnegq_s32(vandq_s8(v420, v260));
  v281 = vshlq_u32(v261, v280);
  v282 = vzip2q_s32(v261, v281);
  v283 = vzip1q_s32(v261, v281);
  v284 = vshlq_u32(v262, v280);
  v285 = vzip2q_s32(v262, v284);
  v286 = vzip1q_s32(v262, v284);
  v287 = vshlq_u32(v263, v280);
  v288 = vzip2q_s32(v263, v287);
  v289 = vzip1q_s32(v263, v287);
  v290 = vshlq_u32(v264, v280);
  v291 = vzip2q_s32(v264, v290);
  v292 = vzip1q_s32(v264, v290);
  v264.i64[0] = 0xFFFF0000FFFFLL;
  v264.i64[1] = 0xFFFF0000FFFFLL;
  v293 = vnegq_s32(vandq_s8(v421, v264));
  v294 = vshlq_u32(v265, v293);
  v295 = vzip2q_s32(v265, v294);
  v296 = vzip1q_s32(v265, v294);
  v297 = vshlq_u32(v266, v293);
  v298 = vzip2q_s32(v266, v297);
  v299 = vzip1q_s32(v266, v297);
  *v268.i8 = vmovn_s64(vshlq_u64(vdupq_n_s64(v206), xmmword_29D2F10A0));
  v297.i32[0] = v206;
  LOWORD(v206) = v268.i16[2];
  v297.i16[2] = v268.i16[0];
  v300 = vshlq_u32(v267, v293);
  v301 = vuzp1q_s16(v283, v282);
  v302 = vuzp1q_s16(v286, v285);
  v303 = vuzp1q_s16(v296, v295);
  v304 = vuzp1q_s16(v299, v298);
  v305 = vuzp1q_s16(vzip1q_s32(v267, v300), vzip2q_s32(v267, v300));
  v300.i64[0] = 0x10001000100010;
  v300.i64[1] = 0x10001000100010;
  v271.i64[0] = 0xF000F000F000FLL;
  v271.i64[1] = 0xF000F000F000FLL;
  v298.i64[0] = 0x10001000100010;
  v298.i64[1] = 0x10001000100010;
  v306 = vshlq_s16(vuzp1q_s16(v409, v411), vsubq_s16(v298, v417));
  v307 = vsubq_s16(v298, v418);
  v267.i64[0] = 0xF000F000F000FLL;
  v267.i64[1] = 0xF000F000F000FLL;
  v308 = vaddq_s16(v417, v267);
  v309 = vaddq_s16(v418, v267);
  v229.i64[0] = 0x10001000100010;
  v229.i64[1] = 0x10001000100010;
  v310 = vsubq_s16(v229, v419);
  v295.i64[0] = 0xF000F000F000FLL;
  v295.i64[1] = 0xF000F000F000FLL;
  v311 = vaddq_s16(v419, v295);
  v312 = vshlq_s16(vuzp1q_s16(v397, v398), v310);
  v313 = vshlq_s16(vuzp1q_s16(v395, v396), v310);
  v314 = vshlq_s16(vuzp1q_s16(v393, v394), v310);
  v315 = vshlq_s16(vuzp1q_s16(v279, v392), v310);
  v310.i64[0] = 0x10001000100010;
  v310.i64[1] = 0x10001000100010;
  v316 = vsubq_s16(v310, v420);
  v259.i64[0] = 0xF000F000F000FLL;
  v259.i64[1] = 0xF000F000F000FLL;
  v317 = vaddq_s16(v420, v259);
  v318 = vshlq_s16(v301, v316);
  v319 = vshlq_s16(v302, v316);
  v320 = vshlq_s16(vuzp1q_s16(v289, v288), v316);
  v321 = vshlq_s16(vuzp1q_s16(v292, v291), v316);
  v288.i64[0] = 0x10001000100010;
  v288.i64[1] = 0x10001000100010;
  v322 = vsubq_s16(v288, v421);
  v253.i64[0] = 0xF000F000F000FLL;
  v253.i64[1] = 0xF000F000F000FLL;
  v323 = vaddq_s16(v421, v253);
  v324 = vshlq_s16(vshlq_s16(vuzp1q_s16(v413, v415), vsubq_s16(v300, v428)), vaddq_s16(v428, v271));
  v325 = vshlq_s16(v306, v308);
  v326 = vshlq_s16(vshlq_s16(vuzp1q_s16(v405, v407), v307), v309);
  v327 = vshlq_s16(vshlq_s16(vuzp1q_s16(v401, v403), v307), v309);
  v328 = vshlq_s16(vshlq_s16(vuzp1q_s16(v399, v400), v307), v309);
  v329 = vshlq_s16(v319, v317);
  v330 = vshlq_s16(v321, v317);
  v331 = vshlq_u64(v196, v416);
  v332 = vuzp1q_s32(vzip1q_s64(v196, v331), vzip2q_s64(v196, v331));
  v333 = vshlq_u32(v332, v293);
  v334 = vshlq_s16(vshlq_s16(v305, v322), v323);
  v335 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v332, v333), vzip2q_s32(v332, v333)), v322), v323);
  v336 = vandq_s8(v324, v424);
  v337 = vdupq_lane_s64(v324.i64[0], 0);
  v338 = vaddq_s16(v336, v325);
  v339 = vandq_s8(v422, v337);
  v340 = vsubq_s16(vshlq_s16(v312, v311), v339);
  v341 = vsubq_s16(vshlq_s16(v313, v311), v339);
  v342 = vsubq_s16(vshlq_s16(v314, v311), v339);
  v343 = vsubq_s16(vshlq_s16(v315, v311), v339);
  v344 = vandq_s8(v423, v337);
  v345 = vsubq_s16(vshlq_s16(v318, v317), v344);
  v346 = vsubq_s16(v329, v344);
  v347 = vsubq_s16(vshlq_s16(v320, v317), v344);
  v348 = vandq_s8(v424, v337);
  v349 = vsubq_s16(v330, v344);
  v350 = vandq_s8(v425, v337);
  v351 = vsubq_s16(vshlq_s16(vshlq_s16(v303, v322), v323), v350);
  v352 = vsubq_s16(vshlq_s16(vshlq_s16(v304, v322), v323), v350);
  v353 = vsubq_s16(v334, v350);
  v354 = vsubq_s16(v335, v350);
  v355 = vsubq_s16(v326, v348);
  v356 = vsubq_s16(v327, v348);
  v357.i64[0] = 0x1000100010001;
  v357.i64[1] = 0x1000100010001;
  v358 = vsubq_s16(v338, v348);
  v359 = vsubq_s16(v328, v348);
  v297.i16[3] = v206;
  v360 = vdupq_lane_s64(v297.i64[0], 0);
  if (vaddvq_s16(vceqq_s16(v426, v357)))
  {
    v361 = vnegq_s16(vandq_s8(v427, v357));
    v362.i64[0] = v359.i64[0];
    v363.i64[1] = v358.i64[1];
    v362.i64[1] = v358.i64[0];
    v363.i64[0] = v359.i64[1];
    v364 = vbslq_s8(v361, v363, v358);
    v365 = vbslq_s8(v361, v362, v359);
    v363.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v363.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    v366 = vandq_s8(vqtbl4q_s8(*(&v355 - 1), v363), v361);
    v429.val[0] = vaddq_s16(v364, vandq_s8(vqtbl4q_s8(*(&v355 - 1), xmmword_29D2F10B0), v361));
    v429.val[1] = vaddq_s16(v355, vandq_s8(vqtbl4q_s8(*(&v355 - 1), xmmword_29D2F10C0), v361));
    v429.val[2] = vaddq_s16(v356, v366);
    v429.val[3] = vaddq_s16(v365, v366);
    v367 = vandq_s8(vqtbl4q_s8(v429, v363), v361);
    v358 = vaddq_s16(v429.val[0], vandq_s8(vqtbl4q_s8(v429, xmmword_29D2F10D0), v361));
    v355 = vaddq_s16(v429.val[1], vandq_s8(vqtbl4q_s8(v429, xmmword_29D2F10E0), v361));
    v356 = vaddq_s16(v429.val[2], v367);
    v359 = vaddq_s16(v429.val[3], v367);
    v430.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v340.i8, xmmword_29D2F10B0), v361), v340);
    v430.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v340.i8, xmmword_29D2F10F0), v361), v341);
    v430.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v340.i8, v363), v361), v342);
    v430.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v340.i8, xmmword_29D2F1100), v361), v343);
    v368 = vandq_s8(vqtbl4q_s8(v430, xmmword_29D2F10D0), v361);
    v429.val[0] = vandq_s8(vqtbl4q_s8(v430, v363), v361);
    v340 = vaddq_s16(v368, v430.val[0]);
    v341 = vaddq_s16(v430.val[1], v368);
    v342 = vaddq_s16(v430.val[2], v429.val[0]);
    v343 = vaddq_s16(v430.val[3], v429.val[0]);
    v430.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, xmmword_29D2F0EB0), v361), v345);
    v430.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, xmmword_29D2F0FB0), v361), v346);
    v430.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, xmmword_29D2F10B0), v361), v347);
    v430.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, xmmword_29D2F10C0), v361), v349);
    v429.val[1] = vandq_s8(vqtbl4q_s8(v430, v363), v361);
    v345 = vaddq_s16(v430.val[0], v429.val[1]);
    v346 = vaddq_s16(v430.val[1], v429.val[1]);
    v347 = vaddq_s16(v430.val[2], vandq_s8(vqtbl4q_s8(v430, xmmword_29D2F0FE0), v361));
    v349 = vaddq_s16(v430.val[3], vandq_s8(vqtbl4q_s8(v430, xmmword_29D2F1110), v361));
    v429.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v351.i8, xmmword_29D2F0EB0), v361), v351);
    v429.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v351.i8, xmmword_29D2F1120), v361), v352);
    v369 = v427;
    v430.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v351.i8, xmmword_29D2F10B0), v361), v353);
    v430.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v351.i8, xmmword_29D2F10C0), v361), v354);
    v370 = vandq_s8(vqtbl4q_s8(*(&v429 + 32), v363), v361);
    v351 = vaddq_s16(v429.val[2], v370);
    v352 = vaddq_s16(v429.val[3], v370);
    v353 = vaddq_s16(v430.val[0], vandq_s8(vqtbl4q_s8(*(&v429 + 32), xmmword_29D2F0FE0), v361));
    v354 = vaddq_s16(v430.val[1], vandq_s8(vqtbl4q_s8(*(&v429 + 32), xmmword_29D2F1130), v361));
  }

  else
  {
    v369 = v427;
  }

  v371 = vaddq_s16(v358, v360);
  v372 = vaddq_s16(v355, v360);
  v373 = vaddq_s16(v356, v360);
  v374 = vaddq_s16(v359, v360);
  v375 = vaddq_s16(v340, v360);
  v376 = vaddq_s16(v341, v360);
  v377 = vaddq_s16(v342, v360);
  v378 = vaddq_s16(v343, v360);
  v379 = vaddq_s16(v345, v360);
  v380 = vaddq_s16(v346, v360);
  v381 = vaddq_s16(v347, v360);
  v382 = vaddq_s16(v349, v360);
  v383 = vaddq_s16(v351, v360);
  v384 = vaddq_s16(v352, v360);
  v385 = vaddq_s16(v353, v360);
  v386 = vaddq_s16(v354, v360);
  v387.i64[0] = 0x10001000100010;
  v387.i64[1] = 0x10001000100010;
  v388 = vceqzq_s16(vandq_s8(v369, v387));
  v389 = (a1 + a2);
  *a1 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v371, xmmword_29D2F1140), v388), v371);
  a1[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v373, xmmword_29D2F1140), v388), v373);
  a1[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v379, xmmword_29D2F1140), v388), v379);
  a1[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v381, xmmword_29D2F1140), v388), v381);
  v390 = (a1 + 2 * a2);
  *v389 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v372, xmmword_29D2F1140), v388), v372);
  v389[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v374, xmmword_29D2F1140), v388), v374);
  v389[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v380, xmmword_29D2F1140), v388), v380);
  v389[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v382, xmmword_29D2F1140), v388), v382);
  *v390 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v375, xmmword_29D2F1140), v388), v375);
  v390[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v377, xmmword_29D2F1140), v388), v377);
  v390[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v383, xmmword_29D2F1140), v388), v383);
  v390[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v385, xmmword_29D2F1140), v388), v385);
  v391 = (v390 + a2);
  *v391 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v376, xmmword_29D2F1140), v388), v376);
  v391[1] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v378, xmmword_29D2F1140), v388), v378);
  v391[2] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v384, xmmword_29D2F1140), v388), v384);
  v391[3] = vaddq_s16(vbicq_s8(vqtbl1q_s8(v386, xmmword_29D2F1140), v388), v386);
  return v4;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressMacroblock(float64x2_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1, 128, a2, *a3);
  v6 = v5 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 4, 128, v5, a3[1]);
  v7 = v6 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 32, 128, v6, a3[2]);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 36, 128, v7, a3[3]);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 64, 128, v8, a3[4]);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 68, 128, v9, a3[5]);
  v11 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 96, 128, v10, a3[6]);
  v12 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressSubblock(a1 + 100, 128, v10 + v11, v12);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::compressSubblock(unint64_t a1, char *a2, int16x8_t *a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = (a3 + 2 * a4);
  v7 = a3[3];
  v8 = a3[2];
  v9 = *(&a3[2] + a4);
  v10 = *(&a3[3] + a4);
  v12 = *v6;
  v13 = v6[1];
  v14 = v6[2];
  v15 = v6[3];
  v11 = (v6 + a4);
  v16 = v14;
  v17 = v13;
  v18 = v11[1];
  v19 = v11[2];
  v20 = v11[3];
  v21 = *v11;
  v22 = vdupq_lane_s64(a3->i64[0], 0);
  v472 = *a3;
  v473 = *(a3 + a4);
  v474 = a3[1];
  v475 = *(&a3[1] + a4);
  v482 = vsubq_s16(*a3, v22);
  v484 = vsubq_s16(v473, v22);
  v486 = vsubq_s16(v474, v22);
  v488 = vsubq_s16(v475, v22);
  v23 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v482, v484), v486), v488), xmmword_29D2F1150);
  v24 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v482, v484), v486), v488), xmmword_29D2F1150);
  v25 = vpmaxq_s16(v23, v23);
  v26 = vpminq_s16(v24, v24);
  v27 = vzip1q_s16(v25, v26);
  v28.i64[0] = 0x10001000100010;
  v28.i64[1] = 0x10001000100010;
  v29 = vbicq_s8(vsubq_s16(v28, vclsq_s16(v27)), vceqzq_s16(v27));
  v490 = vsubq_s16(v12, v22);
  v491 = vsubq_s16(v21, v22);
  v479 = v12;
  v480 = v21;
  v481 = v17;
  v30 = vsubq_s16(v17, v22);
  v31 = vminq_s16(vminq_s16(v490, v491), v30);
  v492 = v30;
  v493 = vsubq_s16(v18, v22);
  v12.i64[0] = 0x8000800080008000;
  v12.i64[1] = 0x8000800080008000;
  v32 = vmaxq_s16(v25, v12);
  v12.i64[0] = 0x8000800080008000;
  v12.i64[1] = 0x8000800080008000;
  v33 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v490, v491), v30), v493), xmmword_29D2F1150);
  v34 = vqtbl1q_s8(vminq_s16(v31, v493), xmmword_29D2F1150);
  v35 = vpmaxq_s16(v33, v33);
  v36 = vpminq_s16(v34, v34);
  v37 = vmaxq_s16(v32, v35);
  v38 = vminq_s16(vminq_s16(v26, v12), v36);
  v39 = vzip1q_s16(v35, v36);
  v40 = vbicq_s8(vsubq_s16(v28, vclsq_s16(v39)), vceqzq_s16(v39));
  v41 = v9;
  v494 = vsubq_s16(v8, v22);
  v495 = vsubq_s16(v9, v22);
  v42 = vsubq_s16(v7, v22);
  v43 = vminq_s16(vminq_s16(v494, v495), v42);
  v471 = v10;
  v496 = v42;
  v497 = vsubq_s16(v10, v22);
  v44 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v494, v495), v42), v497), xmmword_29D2F1150);
  v45 = vqtbl1q_s8(vminq_s16(v43, v497), xmmword_29D2F1150);
  v46 = vpmaxq_s16(v44, v44);
  v47 = vpminq_s16(v45, v45);
  v48 = vmaxq_s16(v37, v46);
  v49 = vminq_s16(v38, v47);
  v50 = vzip1q_s16(v46, v47);
  v51 = vbicq_s8(vsubq_s16(v28, vclsq_s16(v50)), vceqzq_s16(v50));
  v498 = vsubq_s16(v16, v22);
  v499 = vsubq_s16(v19, v22);
  v502 = v22;
  v476 = v16;
  v477 = v19;
  v478 = v15;
  v469 = v18;
  v470 = v20;
  v500 = vsubq_s16(v15, v22);
  v501 = vsubq_s16(v20, v22);
  v52 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v498, v499), v500), v501), xmmword_29D2F1150);
  v53 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v498, v499), v500), v501), xmmword_29D2F1150);
  v54 = vpmaxq_s16(v52, v52);
  v55 = vpminq_s16(v53, v53);
  v56 = vmaxq_s16(v48, v54);
  v57 = vminq_s16(v49, v55);
  v58 = vzip1q_s16(v54, v55);
  v59 = vbicq_s8(vsubq_s16(v28, vclsq_s16(v58)), vceqzq_s16(v58));
  v60 = vpmaxq_s16(v29, v29);
  v61 = vpmaxq_s16(v40, v40);
  v62 = vpmaxq_s16(v51, v51);
  v63 = vpmaxq_s16(v59, v59);
  v64 = vmaxq_s16(vmaxq_s16(v60, v61), vmaxq_s16(v62, v63));
  v65 = vclzq_s16(vsubq_s16(v56, v57));
  v66.i64[0] = 0xF000F000F000FLL;
  v66.i64[1] = 0xF000F000F000FLL;
  v67.i64[0] = -1;
  v67.i64[1] = -1;
  v509 = v57;
  v510 = v56;
  v68 = vsubq_s16(vshlq_s16(v67, vsubq_s16(v66, v65)), v57);
  v69 = vsubq_s16(v28, v65);
  v70 = vcgtq_s16(v64, v69);
  v71 = vminq_s16(v69, v64);
  v511 = vandq_s8(v68, v70);
  v72.i64[0] = 0x8000800080008;
  v72.i64[1] = 0x8000800080008;
  v73.i64[0] = 0x3000300030003;
  v73.i64[1] = 0x3000300030003;
  v74 = vorrq_s8(vandq_s8(vceqzq_s16(v71), v73), vorrq_s8(vandq_s8(v70, v72), 0));
  v75 = vmaxq_s16(vminq_s16(vsubq_s16(v71, v61), v73), 0);
  v76 = vmaxq_s16(vminq_s16(vsubq_s16(v71, v62), v73), 0);
  v505 = vsubq_s16(v71, v75);
  v506 = vsubq_s16(v71, v76);
  v77 = vmaxq_s16(vminq_s16(vsubq_s16(v71, v63), v73), 0);
  v507 = vsubq_s16(v71, v77);
  v508 = v71;
  v78 = vmaxq_s16(vminq_s16(vsubq_s16(v71, v60), v73), 0);
  v72.i64[0] = 0x4000400040004;
  v72.i64[1] = 0x4000400040004;
  v79 = vorrq_s8(vbicq_s8(v72, vceqq_s16(vaddq_s16(v77, v76), vnegq_s16(vaddq_s16(v78, v75)))), v74);
  v503 = v79;
  v504 = vsubq_s16(v71, v78);
  if (vmaxvq_s16(v71))
  {
    v466 = v8;
    v467 = v41;
    v468 = v7;
    v80 = vsubq_s16(v490, vqtbl1q_s8(v490, xmmword_29D2F1140));
    v81 = vsubq_s16(v491, vqtbl1q_s8(v491, xmmword_29D2F1140));
    v82 = vsubq_s16(v492, vqtbl1q_s8(v492, xmmword_29D2F1140));
    v83 = vsubq_s16(v493, vqtbl1q_s8(v493, xmmword_29D2F1140));
    v84 = vsubq_s16(v494, vqtbl1q_s8(v494, xmmword_29D2F1140));
    v85 = vsubq_s16(v495, vqtbl1q_s8(v495, xmmword_29D2F1140));
    v86.i64[0] = 0x8000800080008000;
    v86.i64[1] = 0x8000800080008000;
    v87.i64[0] = 0x8000800080008000;
    v87.i64[1] = 0x8000800080008000;
    v88 = vsubq_s16(v496, vqtbl1q_s8(v496, xmmword_29D2F1140));
    v89 = vsubq_s16(v497, vqtbl1q_s8(v497, xmmword_29D2F1140));
    v90 = vsubq_s16(v498, vqtbl1q_s8(v498, xmmword_29D2F1140));
    v91 = vsubq_s16(v499, vqtbl1q_s8(v499, xmmword_29D2F1140));
    v92 = vsubq_s16(v501, vqtbl1q_s8(v501, xmmword_29D2F1140));
    v453 = vsubq_s16(v482, vqtbl1q_s8(v482, xmmword_29D2F1140));
    v455 = vsubq_s16(v484, vqtbl1q_s8(v484, xmmword_29D2F1140));
    v459 = vsubq_s16(v488, vqtbl1q_s8(v488, xmmword_29D2F1140));
    v461 = vsubq_s16(v486, vqtbl1q_s8(v486, xmmword_29D2F1140));
    v93 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v453, v455), v461), v459), xmmword_29D2F1150);
    v94 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v453, v455), v461), v459), xmmword_29D2F1150);
    v95 = vpmaxq_s16(v93, v93);
    v96 = vpminq_s16(v94, v94);
    v97 = vmaxq_s16(v95, v86);
    v98 = vminq_s16(v96, v87);
    v99 = vsubq_s16(v500, vqtbl1q_s8(v500, xmmword_29D2F1140));
    v100 = vzip1q_s16(v95, v96);
    v101 = vbicq_s8(vsubq_s16(v28, vclsq_s16(v100)), vceqzq_s16(v100));
    v102 = vpmaxq_s16(v101, v101);
    v103 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v80, v81), v82), v83), xmmword_29D2F1150);
    v104 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v80, v81), v82), v83), xmmword_29D2F1150);
    v105 = vpmaxq_s16(v103, v103);
    v106 = vpminq_s16(v104, v104);
    v107 = vmaxq_s16(v97, v105);
    v108 = vminq_s16(v98, v106);
    v109 = vzip1q_s16(v105, v106);
    v110 = vbicq_s8(vsubq_s16(v28, vclsq_s16(v109)), vceqzq_s16(v109));
    v111 = vpmaxq_s16(v110, v110);
    v112 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v84, v85), v88), v89), xmmword_29D2F1150);
    v113 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v84, v85), v88), v89), xmmword_29D2F1150);
    v114 = vpmaxq_s16(v112, v112);
    v115 = vpminq_s16(v113, v113);
    v116 = vmaxq_s16(v107, v114);
    v117 = vminq_s16(v108, v115);
    v118 = vzip1q_s16(v114, v115);
    v119 = vbicq_s8(vsubq_s16(v28, vclsq_s16(v118)), vceqzq_s16(v118));
    v120 = vpmaxq_s16(v119, v119);
    v121 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v90, v91), v99), v92), xmmword_29D2F1150);
    v122 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v90, v91), v99), v92), xmmword_29D2F1150);
    v123 = vpmaxq_s16(v121, v121);
    v124 = vpminq_s16(v122, v122);
    v125 = vmaxq_s16(v116, v123);
    v126 = vminq_s16(v117, v124);
    v127 = vzip1q_s16(v123, v124);
    v128 = vbicq_s8(vsubq_s16(v28, vclsq_s16(v127)), vceqzq_s16(v127));
    v129 = vpmaxq_s16(v128, v128);
    v130 = vmaxq_s16(vmaxq_s16(v102, v111), vmaxq_s16(v120, v129));
    v463 = v125;
    v457 = v126;
    v131 = vclzq_s16(vsubq_s16(v125, v126));
    v132 = vsubq_s16(v28, v131);
    v133 = vcgtq_s16(v130, v132);
    v134 = vminq_s16(v132, v130);
    v135 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v102), v73), 0);
    v136 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v111), v73), 0);
    v137 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v120), v73), 0);
    v138 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v129), v73), 0);
    v125.i64[0] = 0x4000400040004;
    v125.i64[1] = 0x4000400040004;
    v139 = vbicq_s8(v125, vceqq_s16(vaddq_s16(v138, v137), vnegq_s16(vaddq_s16(v135, v136))));
    v129.i64[0] = 0x18001800180018;
    v129.i64[1] = 0x18001800180018;
    v140 = vbslq_s8(v133, v129, v28);
    v141 = vsubq_s16(v134, v137);
    v142 = vsubq_s16(v134, v138);
    v450 = vsubq_s16(v134, v136);
    v451 = v141;
    v143.i64[0] = 0x7000700070007;
    v143.i64[1] = 0x7000700070007;
    v449 = vsubq_s16(v134, v135);
    v144 = vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v134, vceqzq_s16((*&v140 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v139, v139)), v449, v143), vshlq_n_s16(vaddq_s16(vaddq_s16(v141, v450), v142), 3uLL));
    v86.i64[0] = 0x8000800080008;
    v86.i64[1] = 0x8000800080008;
    v145 = vandq_s8(vaddq_s16(v79, v79), v86);
    v146 = vandq_s8(v74, v86);
    v136.i64[0] = 0x2000200020002;
    v136.i64[1] = 0x2000200020002;
    v147 = vandq_s8(vceqq_s16(vandq_s8(v74, v73), v136), v28);
    v149 = v507;
    v148 = v508;
    v150 = vaddq_s16(vaddq_s16(vbicq_s8(v508, vceqzq_s16(v146)), v147), v145);
    v151 = v504;
    v152 = v505;
    v153 = v506;
    v154 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(v150, v504, v143), vshlq_n_s16(vaddq_s16(vaddq_s16(v506, v505), v507), 3uLL)), v144).i64[0], 0);
    v155 = vaddvq_s16(v154);
    v157 = a5 < 4 || a6 < 2;
    if (v155)
    {
      v158.i64[0] = 0x3000300030003;
      v158.i64[1] = 0x3000300030003;
      v159 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v134), v158), v140), v139);
      v160.i64[0] = 0xF000F000F000FLL;
      v160.i64[1] = 0xF000F000F000FLL;
      v482 = vbslq_s8(v154, v453, v482);
      v484 = vbslq_s8(v154, v455, v484);
      v158.i64[0] = -1;
      v158.i64[1] = -1;
      v486 = vbslq_s8(v154, v461, v486);
      v488 = vbslq_s8(v154, v459, v488);
      v490 = vbslq_s8(v154, v80, v490);
      v491 = vbslq_s8(v154, v81, v491);
      v492 = vbslq_s8(v154, v82, v492);
      v493 = vbslq_s8(v154, v83, v493);
      v494 = vbslq_s8(v154, v84, v494);
      v495 = vbslq_s8(v154, v85, v495);
      v496 = vbslq_s8(v154, v88, v496);
      v497 = vbslq_s8(v154, v89, v497);
      v498 = vbslq_s8(v154, v90, v498);
      v499 = vbslq_s8(v154, v91, v499);
      v500 = vbslq_s8(v154, v99, v500);
      v501 = vbslq_s8(v154, v92, v501);
      v151 = vbslq_s8(v154, v449, v504);
      v152 = vbslq_s8(v154, v450, v505);
      v504 = v151;
      v505 = v152;
      v153 = vbslq_s8(v154, v451, v506);
      v149 = vbslq_s8(v154, v142, v507);
      v506 = v153;
      v507 = v149;
      v510 = vbslq_s8(v154, v463, v510);
      v511 = vbslq_s8(v154, vandq_s8(vsubq_s16(vshlq_s16(v158, vsubq_s16(v160, v131)), v457), v133), v511);
      v148 = vbslq_s8(v154, v134, v508);
      v508 = v148;
      v509 = vbslq_s8(v154, v457, v509);
      v79 = vbslq_s8(v154, v159, v503);
      v502 = vbslq_s8(v154, vsubq_s16(v502, vqtbl1q_s8(v502, xmmword_29D2F1140)), v502);
      v503 = v79;
    }

    v161 = v479;
    v162 = v480;
    v163 = v481;
    v164 = v472;
    v165 = v473;
    v166 = v474;
    v167 = v475;
    if (!v157)
    {
      v168 = vqtbl4q_s8(*v164.i8, xmmword_29D2F1160);
      v464 = vsubq_s16(v472, vqtbl4q_s8(*v164.i8, xmmword_29D2F10B0));
      v462 = vsubq_s16(v473, vqtbl4q_s8(*v164.i8, xmmword_29D2F10C0));
      v169 = vsubq_s16(v474, v168);
      v170 = vsubq_s16(v475, v168);
      v171 = v469.i64[0];
      v172 = v475.i64[1];
      v173 = vqtbl4q_s8(*v161.i8, xmmword_29D2F1100);
      v174 = vsubq_s16(v479, vqtbl4q_s8(*v161.i8, xmmword_29D2F10B0));
      v175 = vsubq_s16(v480, vqtbl4q_s8(*v161.i8, xmmword_29D2F10F0));
      v176 = vsubq_s16(v481, vqtbl4q_s8(*v161.i8, xmmword_29D2F1160));
      v177 = vsubq_s16(v469, v173);
      v178 = v466;
      v179 = v467;
      v180 = v468;
      v162.i64[0] = v471.i64[0];
      v162.i64[1] = v475.i64[1];
      v181 = vsubq_s16(v466, vqtbl4q_s8(*(&v162 - 3), xmmword_29D2F1170));
      v182 = vsubq_s16(v467, vqtbl4q_s8(*(&v162 - 3), xmmword_29D2F1180));
      v183 = vsubq_s16(v468, vqtbl4q_s8(*(&v162 - 3), xmmword_29D2F10B0));
      v184 = vsubq_s16(v471, vqtbl4q_s8(*(&v162 - 3), xmmword_29D2F10C0));
      v512.val[0] = v476;
      v512.val[1] = v477;
      v512.val[2] = v478;
      v512.val[3].i64[0] = v470.i64[0];
      v512.val[3].i64[1] = v475.i64[1];
      v185 = vqtbl4q_s8(v512, xmmword_29D2F10C0);
      v186 = vsubq_s16(v476, vqtbl4q_s8(v512, xmmword_29D2F1170));
      v187 = vsubq_s16(v477, vqtbl4q_s8(v512, xmmword_29D2F1120));
      v512.val[1] = vsubq_s16(v478, vqtbl4q_s8(v512, xmmword_29D2F10B0));
      v188 = v181;
      v189 = v174;
      v190 = v177;
      v191 = v184;
      v192 = vsubq_s16(v470, v185);
      v167.i64[1] = v464.i64[1];
      v193 = v176;
      v194 = v183;
      v195 = v169;
      v196.i64[0] = v170.i64[0];
      v196.i64[1] = v464.i64[0];
      v167.i64[0] = v170.i64[1];
      v198 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v167, v462), v195), v196), xmmword_29D2F1150);
      v199 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v167, v462), v195), v196), xmmword_29D2F1150);
      v200 = vpmaxq_s16(v198, v198);
      v201 = vpminq_s16(v199, v199);
      v185.i64[0] = 0x8000800080008000;
      v185.i64[1] = 0x8000800080008000;
      v202 = vmaxq_s16(v200, v185);
      v203.i64[0] = 0x8000800080008000;
      v203.i64[1] = 0x8000800080008000;
      v204 = vminq_s16(v201, v203);
      v205 = vzip1q_s16(v200, v201);
      v206.i64[0] = 0x10001000100010;
      v206.i64[1] = 0x10001000100010;
      v207 = vbicq_s8(vsubq_s16(v206, vclsq_s16(v205)), vceqzq_s16(v205));
      v208 = vpmaxq_s16(v207, v207);
      v209 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v174, v175), v193), v190), xmmword_29D2F1150);
      v210 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v174, v175), v193), v190), xmmword_29D2F1150);
      v211 = vpmaxq_s16(v209, v209);
      v212 = vpminq_s16(v210, v210);
      v213 = vmaxq_s16(v202, v211);
      v214 = vminq_s16(v204, v212);
      v215 = vzip1q_s16(v211, v212);
      v216 = vbicq_s8(vsubq_s16(v206, vclsq_s16(v215)), vceqzq_s16(v215));
      v217 = vpmaxq_s16(v216, v216);
      v218 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v188, v182), v194), v184), xmmword_29D2F1150);
      v219 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v188, v182), v194), v184), xmmword_29D2F1150);
      v220 = vpmaxq_s16(v218, v218);
      v221 = vpminq_s16(v219, v219);
      v222 = vmaxq_s16(v213, v220);
      v223 = vminq_s16(v214, v221);
      v224 = vzip1q_s16(v220, v221);
      v225 = vbicq_s8(vsubq_s16(v206, vclsq_s16(v224)), vceqzq_s16(v224));
      v512.val[0] = vpmaxq_s16(v225, v225);
      v458 = v187;
      v460 = v186;
      v465 = v512.val[1];
      v226 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v186, v187), v512.val[1]), v192), xmmword_29D2F1150);
      v227 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v186, v187), v512.val[1]), v192), xmmword_29D2F1150);
      v228 = vpmaxq_s16(v226, v226);
      v229 = vpminq_s16(v227, v227);
      v230 = vmaxq_s16(v222, v228);
      v231 = vminq_s16(v223, v229);
      v232 = vzip1q_s16(v228, v229);
      v233 = vbicq_s8(vsubq_s16(v206, vclsq_s16(v232)), vceqzq_s16(v232));
      v234 = vpmaxq_s16(v233, v233);
      v235 = vmaxq_s16(vmaxq_s16(v208, v217), vmaxq_s16(v512.val[0], v234));
      v236 = vclzq_s16(vsubq_s16(v230, v231));
      v512.val[1] = vsubq_s16(v206, v236);
      v237 = vcgtq_s16(v235, v512.val[1]);
      v238 = vminq_s16(v512.val[1], v235);
      v235.i64[0] = 0x3000300030003;
      v235.i64[1] = 0x3000300030003;
      v239 = vmaxq_s16(vminq_s16(vsubq_s16(v238, v208), v235), 0);
      v240 = vmaxq_s16(vminq_s16(vsubq_s16(v238, v217), v235), 0);
      v512.val[0] = vmaxq_s16(vminq_s16(vsubq_s16(v238, v512.val[0]), v235), 0);
      v241 = vmaxq_s16(vminq_s16(vsubq_s16(v238, v234), v235), 0);
      v242 = vsubq_s16(v238, v239);
      v512.val[1] = vsubq_s16(v238, v240);
      v243 = vsubq_s16(v238, v241);
      v244 = vceqq_s16(vaddq_s16(v241, v512.val[0]), vnegq_s16(vaddq_s16(v239, v240)));
      v240.i64[0] = 0x4000400040004;
      v240.i64[1] = 0x4000400040004;
      v245 = vbicq_s8(v240, v244);
      v241.i64[0] = 0x7000700070007;
      v241.i64[1] = 0x7000700070007;
      v454 = vsubq_s16(v238, v512.val[0]);
      v456 = v512.val[1];
      v452 = v242;
      v246 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v238, v237), vaddq_s16(v245, v245)), v242, v241), vshlq_n_s16(vaddq_s16(vaddq_s16(v454, v512.val[1]), v243), 3uLL));
      v79 = v503;
      v151 = v504;
      v247.i64[0] = 0x2000200020002;
      v247.i64[1] = 0x2000200020002;
      v248 = vandq_s8(vceqq_s16(vandq_s8(v503, v235), v247), v206);
      v235.i64[0] = 0x8000800080008;
      v235.i64[1] = 0x8000800080008;
      v149 = v507;
      v148 = v508;
      v152 = v505;
      v153 = v506;
      v249 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v508, vceqzq_s16(vandq_s8(v503, v235))), vandq_s8(vaddq_s16(v79, v79), v235)), v248), v504, v241), vshlq_n_s16(vaddq_s16(vaddq_s16(v506, v505), v507), 3uLL)), v246).i64[0], 0);
      if (vaddvq_s16(v249))
      {
        v250.i64[0] = 0x9000900090009;
        v250.i64[1] = 0x9000900090009;
        v251.i64[0] = 0xF000F000F000FLL;
        v251.i64[1] = 0xF000F000F000FLL;
        v252.i64[0] = -1;
        v252.i64[1] = -1;
        v151 = vbslq_s8(v249, v452, v504);
        v152 = vbslq_s8(v249, v456, v505);
        v153 = vbslq_s8(v249, v454, v506);
        v149 = vbslq_s8(v249, v243, v507);
        v148 = vbslq_s8(v249, v238, v508);
        v79 = vbslq_s8(v249, vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v238), v247), vsubq_s16(vandq_s8(v237, v250), vmvnq_s8(v237))), v245), v503);
        v501 = vbslq_s8(v249, v192, v501);
        v502 = vbslq_s8(v249, vextq_s8(v475, v475, 8uLL), v502);
        v482 = vbslq_s8(v249, v167, v482);
        v484 = vbslq_s8(v249, v462, v484);
        v486 = vbslq_s8(v249, v195, v486);
        v488 = vbslq_s8(v249, v196, v488);
        v490 = vbslq_s8(v249, v189, v490);
        v491 = vbslq_s8(v249, v175, v491);
        v492 = vbslq_s8(v249, v193, v492);
        v493 = vbslq_s8(v249, v190, v493);
        v494 = vbslq_s8(v249, v188, v494);
        v495 = vbslq_s8(v249, v182, v495);
        v496 = vbslq_s8(v249, v194, v496);
        v497 = vbslq_s8(v249, v191, v497);
        v498 = vbslq_s8(v249, v460, v498);
        v499 = vbslq_s8(v249, v458, v499);
        v500 = vbslq_s8(v249, v465, v500);
        v509 = vbslq_s8(v249, v231, v509);
        v510 = vbslq_s8(v249, v230, v510);
        v511 = vbslq_s8(v249, vandq_s8(vsubq_s16(vshlq_s16(v252, vsubq_s16(v251, v236)), v231), v237), v511);
        v504 = v151;
        v505 = v152;
        v506 = v153;
        v507 = v149;
        v508 = v148;
        v503 = v79;
      }

      v164 = v472;
      v165 = v473;
      v166 = v474;
      v167 = v475;
      v161 = v479;
      v162 = v480;
      v163 = v481;
    }

    v255 = vandq_s8(v511, vceqq_s16(v148, v151));
    v483 = vaddq_s16(v255, v482);
    v485 = vaddq_s16(v484, v255);
    v487 = vaddq_s16(v486, v255);
    v489 = vaddq_s16(v488, v255);
    v256 = vandq_s8(v511, vceqq_s16(v148, v152));
    v490 = vaddq_s16(v490, v256);
    v491 = vaddq_s16(v491, v256);
    v492 = vaddq_s16(v492, v256);
    v493 = vaddq_s16(v493, v256);
    v257 = vandq_s8(v511, vceqq_s16(v148, v153));
    v494 = vaddq_s16(v494, v257);
    v495 = vaddq_s16(v495, v257);
    v496 = vaddq_s16(v496, v257);
    v497 = vaddq_s16(v497, v257);
    v258 = vandq_s8(v511, vceqq_s16(v148, v149));
    v498 = vaddq_s16(v498, v258);
    v499 = vaddq_s16(v499, v258);
    v500 = vaddq_s16(v500, v258);
    v501 = vaddq_s16(v501, v258);
    v258.i64[0] = 0x8000800080008;
    v258.i64[1] = 0x8000800080008;
    v259.i64[0] = 0x3000300030003;
    v259.i64[1] = 0x3000300030003;
    v260.i64[0] = 0x2000200020002;
    v260.i64[1] = 0x2000200020002;
    v261 = vceqq_s16(vandq_s8(v79, v259), v260);
    v260.i64[0] = 0x10001000100010;
    v260.i64[1] = 0x10001000100010;
    v262 = vandq_s8(v261, v260);
    v260.i64[0] = 0x7000700070007;
    v260.i64[1] = 0x7000700070007;
    v263 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v148, vceqzq_s16(vandq_s8(v79, v258))), vandq_s8(vaddq_s16(v79, v79), v258)), v262), v151, v260), vshlq_n_s16(vaddq_s16(vaddq_s16(v153, v152), v149), 3uLL));
    v264 = vpaddq_s16(v263, v263);
    if ((vpaddq_s16(v264, v264).i16[0] + 107) > 0x7FF)
    {
      *a1 = v164;
      *(a1 + 16) = v165;
      *(a1 + 32) = v166;
      *(a1 + 48) = v167;
      *(a1 + 64) = v161;
      *(a1 + 80) = v162;
      *(a1 + 96) = v163;
      *(a1 + 112) = v469;
      *(a1 + 128) = v466;
      *(a1 + 144) = v467;
      *(a1 + 160) = v468;
      *(a1 + 176) = v471;
      v268 = (a1 + 192);
      v253 = -1;
      result = 256;
      *v268 = v476;
      v268[1] = v477;
      v268[2] = v478;
      v268[3] = v470;
    }

    else
    {
      v265 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v266 = 8 * (a1 & 7);
      if (v266)
      {
        v267 = *v265 & ~(-1 << v266);
      }

      else
      {
        v267 = 0;
      }

      *a2 = 0;
      v269 = v502.i64[0];
      if (v148.i16[0])
      {
        v270 = ((v148.i8[0] - 1) & 0xF) << 20;
      }

      else
      {
        v270 = 0;
      }

      if (v148.i16[1])
      {
        v271 = ((v148.i8[2] - 1) & 0xF) << 24;
      }

      else
      {
        v271 = 0;
      }

      if (v148.i16[2])
      {
        v272 = (v148.u16[2] << 28) - 0x10000000;
      }

      else
      {
        v272 = 0;
      }

      if (v148.i16[3])
      {
        v273 = ((v148.i8[6] - 1) & 0xF) << 32;
      }

      else
      {
        v273 = 0;
      }

      v274 = (v79.i8[0] & 0x1F | (32 * (v79.i8[2] & 0x1F)) & 0x83FF | ((v79.i8[4] & 0x1F) << 10) | ((v79.i8[6] & 0x1F) << 15) | v270 | v271 | v272) + v273;
      v275 = (v274 << v266) | v267;
      if (v266 >= 0x1C)
      {
        *v265 = v275;
        v275 = v274 >> (-8 * (a1 & 7u));
      }

      v276 = v269 | (WORD1(v269) << 16) | (WORD2(v269) << 32) | (HIWORD(v269) << 48);
      v277 = (v266 + 36) & 0x3C;
      *(v265 + (((v266 + 36) >> 3) & 8)) = v275 | (v276 << v277);
      v278 = v266 + 100;
      v279 = vsubq_s16(v508, v504);
      v280 = vsubq_s16(v508, v505);
      v281 = vsubq_s16(v508, v506);
      v282 = vsubq_s16(v508, v507);
      *v279.i8 = vqmovn_u16(v279);
      *v280.i8 = vqmovn_u16(v280);
      *v281.i8 = vqmovn_u16(v281);
      *v282.i8 = vqmovn_u16(v282);
      v283 = vtrn1q_s8(v279, v280);
      v284 = vtrn2q_s8(v279, v280);
      v285 = vtrn1q_s8(v281, v282);
      v286 = vtrn2q_s8(v281, v282);
      v287 = vzip1q_s16(v284, v286);
      v288 = vtrn2q_s16(v284, v286);
      v284.i64[0] = vzip1q_s32(vzip1q_s16(v283, v285), v287).u64[0];
      v288.i64[0] = vzip1q_s32(vtrn2q_s16(v283, v285), v288).u64[0];
      v281.i64[0] = 0x202020202020202;
      v281.i64[1] = 0x202020202020202;
      v289 = vandq_s8(vmovl_s16(vtst_s16(*v503.i8, 0x4000400040004)), v281);
      v281.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v281.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v283.i64[0] = -1;
      v283.i64[1] = -1;
      v290 = vshlq_u8(v283, vorrq_s8(v289, v281));
      v291 = vmovl_u8(vand_s8(*v290.i8, *v284.i8));
      v292 = vmovl_u8(vand_s8(*&vextq_s8(v290, v290, 8uLL), *v288.i8));
      v293 = vmovl_u8(*v289.i8);
      v294 = vmovl_high_u8(v289);
      v295 = vpaddq_s16(vshlq_u16(v291, vtrn1q_s16(0, v293)), vshlq_u16(v292, vtrn1q_s16(0, v294)));
      v296 = vpaddq_s16(v293, v294);
      v297 = vmovl_u16(*v296.i8);
      v298 = vmovl_high_u16(v296);
      v299 = vpaddq_s32(vshlq_u32(vmovl_u16(*v295.i8), vtrn1q_s32(0, v297)), vshlq_u32(vmovl_high_u16(v295), vtrn1q_s32(0, v298)));
      v300 = vpaddq_s32(v297, v298);
      v301.i64[0] = v299.u32[0];
      v301.i64[1] = v299.u32[1];
      v302 = v301;
      v301.i64[0] = v299.u32[2];
      v301.i64[1] = v299.u32[3];
      v303 = v301;
      v301.i64[0] = v300.u32[0];
      v301.i64[1] = v300.u32[1];
      v304 = v301;
      v301.i64[0] = v300.u32[2];
      v301.i64[1] = v300.u32[3];
      v305 = vpaddq_s64(vshlq_u64(v302, vzip1q_s64(0, v304)), vshlq_u64(v303, vzip1q_s64(0, v301)));
      v306 = vpaddq_s64(v304, v301);
      v307 = (v266 + 100) & 0x3C;
      v308 = (v305.i64[0] << v307) | (v276 >> -v277);
      if ((v306.i64[0] + v307) >= 0x40)
      {
        *(v265 + ((v278 >> 3) & 0x18)) = v308;
        v308 = v305.i64[0] >> -v307;
      }

      v309 = v306.i64[0] + v278;
      v310 = v308 | (v305.i64[1] << v309);
      if ((v309 & 0x3F) + v306.i64[1] >= 0x40)
      {
        *(v265 + ((v309 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v310;
        v310 = v305.i64[1] >> -(v309 & 0x3F);
        if ((v309 & 0x3F) == 0)
        {
          v310 = 0;
        }
      }

      v311 = v309 + v306.i64[1];
      v312.i64[0] = 0x8000800080008;
      v312.i64[1] = 0x8000800080008;
      v313.i64[0] = -1;
      v313.i64[1] = -1;
      v314 = vandq_s8(vextq_s8(vtstq_s16(v503, v312), 0, 8uLL), v508);
      v315.i64[0] = 0xF000F000F000FLL;
      v315.i64[1] = 0xF000F000F000FLL;
      v316 = vandq_s8(vshlq_u16(v313, vaddq_s16(v314, v315)), v511);
      v317 = vmovl_u16(*v314.i8);
      v318 = vpaddq_s32(vshlq_u32(vmovl_u16(*v316.i8), vtrn1q_s32(0, v317)), vmovl_high_u16(v316));
      v319 = vpaddq_s32(v317, vmovl_high_u16(v314));
      v320.i64[0] = v318.u32[0];
      v320.i64[1] = v318.u32[1];
      v321 = v320;
      v320.i64[0] = v318.u32[2];
      v320.i64[1] = v318.u32[3];
      v322 = v320;
      v320.i64[0] = v319.u32[0];
      v320.i64[1] = v319.u32[1];
      v323 = v320;
      v320.i64[0] = v319.u32[2];
      v320.i64[1] = v319.u32[3];
      v324 = vpaddq_s64(vshlq_u64(v321, vzip1q_s64(0, v323)), vshlq_u64(v322, vzip1q_s64(0, v320)));
      v325 = vpaddq_s64(v323, v320);
      v326 = (v324.i64[0] << v311) | v310;
      if (v325.i64[0] + (v311 & 0x3F) >= 0x40)
      {
        *(v265 + ((v311 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v326;
        v326 = v324.i64[0] >> -(v311 & 0x3F);
        if ((v311 & 0x3F) == 0)
        {
          v326 = 0;
        }
      }

      v327 = v325.i64[0] + v311;
      v328 = v326 | (v324.i64[1] << v327);
      if ((v327 & 0x3F) + v325.i64[1] >= 0x40)
      {
        *(v265 + ((v327 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v328;
        v328 = v324.i64[1] >> -(v327 & 0x3F);
        if ((v327 & 0x3F) == 0)
        {
          v328 = 0;
        }
      }

      v329 = v327 + v325.i64[1];
      v330 = vextq_s8(0, v504, 8uLL);
      v331.i64[0] = 0xF000F000F000FLL;
      v331.i64[1] = 0xF000F000F000FLL;
      v332.i64[0] = -1;
      v332.i64[1] = -1;
      v333 = vandq_s8(vshlq_u16(v332, vaddq_s16(v330, v331)), v483);
      v334 = vmovl_u16(*v330.i8);
      v335 = vmovl_high_u16(v330);
      v336 = vpaddq_s32(vmovl_u16(*v333.i8), vshlq_u32(vmovl_high_u16(v333), vtrn1q_s32(0, v335)));
      v337 = vpaddq_s32(v334, v335);
      v338.i64[0] = v336.u32[0];
      v338.i64[1] = v336.u32[1];
      v339 = v338;
      v338.i64[0] = v336.u32[2];
      v338.i64[1] = v336.u32[3];
      v340 = v338;
      v338.i64[0] = v337.u32[0];
      v338.i64[1] = v337.u32[1];
      v341 = v338;
      v338.i64[0] = v337.u32[2];
      v338.i64[1] = v337.u32[3];
      v342 = vpaddq_s64(vshlq_u64(v339, vzip1q_s64(0, v341)), vshlq_u64(v340, vzip1q_s64(0, v338)));
      v343 = vpaddq_s64(v341, v338);
      v344 = (v342.i64[0] << v329) | v328;
      if (v343.i64[0] + (v329 & 0x3F) >= 0x40)
      {
        *(v265 + ((v329 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v344;
        v344 = v342.i64[0] >> -(v329 & 0x3F);
        if ((v329 & 0x3F) == 0)
        {
          v344 = 0;
        }
      }

      v345 = v343.i64[0] + v329;
      v346 = v344 | (v342.i64[1] << v345);
      if ((v345 & 0x3F) + v343.i64[1] >= 0x40)
      {
        *(v265 + ((v345 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v346;
        v346 = v342.i64[1] >> -(v345 & 0x3F);
        if ((v345 & 0x3F) == 0)
        {
          v346 = 0;
        }
      }

      v347 = v345 + v343.i64[1];
      v348.i64[0] = 0xF000F000F000FLL;
      v348.i64[1] = 0xF000F000F000FLL;
      v349.i64[0] = -1;
      v349.i64[1] = -1;
      v350 = vandq_s8(vshlq_u16(v349, vaddq_s16(v504, v348)), v485);
      v351 = vmovl_u16(*v504.i8);
      v352 = vmovl_high_u16(v504);
      v353 = vpaddq_s32(vshlq_u32(vmovl_u16(*v350.i8), vtrn1q_s32(0, v351)), vshlq_u32(vmovl_high_u16(v350), vtrn1q_s32(0, v352)));
      v354 = vpaddq_s32(v351, v352);
      v355.i64[0] = v353.u32[0];
      v355.i64[1] = v353.u32[1];
      v356 = v355;
      v355.i64[0] = v353.u32[2];
      v355.i64[1] = v353.u32[3];
      v357 = v355;
      v355.i64[0] = v354.u32[0];
      v355.i64[1] = v354.u32[1];
      v358 = v355;
      v355.i64[0] = v354.u32[2];
      v355.i64[1] = v354.u32[3];
      v359 = vpaddq_s64(vshlq_u64(v356, vzip1q_s64(0, v358)), vshlq_u64(v357, vzip1q_s64(0, v355)));
      v360 = vpaddq_s64(v358, v355);
      v361 = (v359.i64[0] << v347) | v346;
      if (v360.i64[0] + (v347 & 0x3F) >= 0x40)
      {
        *(v265 + ((v347 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
        v361 = v359.i64[0] >> -(v347 & 0x3F);
        if ((v347 & 0x3F) == 0)
        {
          v361 = 0;
        }
      }

      v362 = v360.i64[0] + v347;
      v363 = v361 | (v359.i64[1] << v362);
      if ((v362 & 0x3F) + v360.i64[1] >= 0x40)
      {
        *(v265 + ((v362 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v363;
        v363 = v359.i64[1] >> -(v362 & 0x3F);
        if ((v362 & 0x3F) == 0)
        {
          v363 = 0;
        }
      }

      v364 = v362 + v360.i64[1];
      v365.i64[0] = 0xF000F000F000FLL;
      v365.i64[1] = 0xF000F000F000FLL;
      v366.i64[0] = -1;
      v366.i64[1] = -1;
      v367 = vandq_s8(vshlq_u16(v366, vaddq_s16(v504, v365)), v487);
      v368 = vmovl_u16(*v504.i8);
      v369 = vmovl_high_u16(v504);
      v370 = vpaddq_s32(vshlq_u32(vmovl_u16(*v367.i8), vtrn1q_s32(0, v368)), vshlq_u32(vmovl_high_u16(v367), vtrn1q_s32(0, v369)));
      v371 = vpaddq_s32(v368, v369);
      v372.i64[0] = v370.u32[0];
      v372.i64[1] = v370.u32[1];
      v373 = v372;
      v372.i64[0] = v370.u32[2];
      v372.i64[1] = v370.u32[3];
      v374 = v372;
      v372.i64[0] = v371.u32[0];
      v372.i64[1] = v371.u32[1];
      v375 = v372;
      v372.i64[0] = v371.u32[2];
      v372.i64[1] = v371.u32[3];
      v376 = vpaddq_s64(vshlq_u64(v373, vzip1q_s64(0, v375)), vshlq_u64(v374, vzip1q_s64(0, v372)));
      v377 = vpaddq_s64(v375, v372);
      v378 = (v376.i64[0] << v364) | v363;
      if (v377.i64[0] + (v364 & 0x3F) >= 0x40)
      {
        *(v265 + ((v364 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v378;
        v378 = v376.i64[0] >> -(v364 & 0x3F);
        if ((v364 & 0x3F) == 0)
        {
          v378 = 0;
        }
      }

      v379 = v377.i64[0] + v364;
      v380 = v378 | (v376.i64[1] << v379);
      if ((v379 & 0x3F) + v377.i64[1] >= 0x40)
      {
        *(v265 + ((v379 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v380;
        v380 = v376.i64[1] >> -(v379 & 0x3F);
        if ((v379 & 0x3F) == 0)
        {
          v380 = 0;
        }
      }

      v381 = v379 + v377.i64[1];
      v382.i64[0] = 0xF000F000F000FLL;
      v382.i64[1] = 0xF000F000F000FLL;
      v383.i64[0] = -1;
      v383.i64[1] = -1;
      v384 = vandq_s8(vshlq_u16(v383, vaddq_s16(v504, v382)), v489);
      v385 = vmovl_u16(*v504.i8);
      v386 = vmovl_high_u16(v504);
      v387 = vpaddq_s32(vshlq_u32(vmovl_u16(*v384.i8), vtrn1q_s32(0, v385)), vshlq_u32(vmovl_high_u16(v384), vtrn1q_s32(0, v386)));
      v388 = vpaddq_s32(v385, v386);
      v389.i64[0] = v387.u32[0];
      v389.i64[1] = v387.u32[1];
      v390 = v389;
      v389.i64[0] = v387.u32[2];
      v389.i64[1] = v387.u32[3];
      v391 = v389;
      v389.i64[0] = v388.u32[0];
      v389.i64[1] = v388.u32[1];
      v392 = v389;
      v389.i64[0] = v388.u32[2];
      v389.i64[1] = v388.u32[3];
      v393 = vpaddq_s64(vshlq_u64(v390, vzip1q_s64(0, v392)), vshlq_u64(v391, vzip1q_s64(0, v389)));
      v394 = vpaddq_s64(v392, v389);
      v395 = (v393.i64[0] << v381) | v380;
      if (v394.i64[0] + (v381 & 0x3F) >= 0x40)
      {
        *(v265 + ((v381 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v395;
        v395 = v393.i64[0] >> -(v381 & 0x3F);
        if ((v381 & 0x3F) == 0)
        {
          v395 = 0;
        }
      }

      v396 = v394.i64[1];
      v397 = v394.i64[0] + v381;
      v398 = (v394.i64[0] + v381) & 0x3F;
      v399 = v395 | (v393.i64[1] << v397);
      if ((v398 + v394.i64[1]) >= 0x40)
      {
        *(v265 + ((v397 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v399;
        v399 = v393.i64[1] >> -v398;
        if (!v398)
        {
          v399 = 0;
        }
      }

      v400 = 0;
      v401.i64[0] = 0xF000F000F000FLL;
      v401.i64[1] = 0xF000F000F000FLL;
      v402.i64[0] = -1;
      v402.i64[1] = -1;
      v403 = v397 + v396;
      do
      {
        v404 = vandq_s8(vshlq_u16(v402, vaddq_s16(v505, v401)), *(&v490 + v400));
        v405 = vmovl_u16(*v505.i8);
        v406 = vmovl_high_u16(v505);
        v407 = vpaddq_s32(vshlq_u32(vmovl_u16(*v404.i8), vtrn1q_s32(0, v405)), vshlq_u32(vmovl_high_u16(v404), vtrn1q_s32(0, v406)));
        v408 = vpaddq_s32(v405, v406);
        v409.i64[0] = v407.u32[0];
        v409.i64[1] = v407.u32[1];
        v410 = v409;
        v409.i64[0] = v407.u32[2];
        v409.i64[1] = v407.u32[3];
        v411 = v409;
        v409.i64[0] = v408.u32[0];
        v409.i64[1] = v408.u32[1];
        v412 = v409;
        v409.i64[0] = v408.u32[2];
        v409.i64[1] = v408.u32[3];
        v413 = vpaddq_s64(vshlq_u64(v410, vzip1q_s64(0, v412)), vshlq_u64(v411, vzip1q_s64(0, v409)));
        v414 = vpaddq_s64(v412, v409);
        v415 = (v413.i64[0] << v403) | v399;
        if (v414.i64[0] + (v403 & 0x3F) >= 0x40)
        {
          *(v265 + ((v403 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v415;
          v415 = v413.i64[0] >> -(v403 & 0x3F);
          if ((v403 & 0x3F) == 0)
          {
            v415 = 0;
          }
        }

        v416 = v414.i64[0] + v403;
        v399 = v415 | (v413.i64[1] << v416);
        if ((v416 & 0x3F) + v414.i64[1] >= 0x40)
        {
          *(v265 + ((v416 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v399;
          v399 = v413.i64[1] >> -(v416 & 0x3F);
          if ((v416 & 0x3F) == 0)
          {
            v399 = 0;
          }
        }

        v403 = v416 + v414.i64[1];
        v400 += 16;
      }

      while (v400 != 64);
      v417 = 0;
      v418.i64[0] = 0xF000F000F000FLL;
      v418.i64[1] = 0xF000F000F000FLL;
      v419.i64[0] = -1;
      v419.i64[1] = -1;
      do
      {
        v420 = vandq_s8(vshlq_u16(v419, vaddq_s16(v506, v418)), *(&v494 + v417));
        v421 = vmovl_u16(*v506.i8);
        v422 = vmovl_high_u16(v506);
        v423 = vpaddq_s32(vshlq_u32(vmovl_u16(*v420.i8), vtrn1q_s32(0, v421)), vshlq_u32(vmovl_high_u16(v420), vtrn1q_s32(0, v422)));
        v424 = vpaddq_s32(v421, v422);
        v425.i64[0] = v423.u32[0];
        v425.i64[1] = v423.u32[1];
        v426 = v425;
        v425.i64[0] = v423.u32[2];
        v425.i64[1] = v423.u32[3];
        v427 = v425;
        v425.i64[0] = v424.u32[0];
        v425.i64[1] = v424.u32[1];
        v428 = v425;
        v425.i64[0] = v424.u32[2];
        v425.i64[1] = v424.u32[3];
        v429 = vpaddq_s64(vshlq_u64(v426, vzip1q_s64(0, v428)), vshlq_u64(v427, vzip1q_s64(0, v425)));
        v430 = vpaddq_s64(v428, v425);
        v431 = (v429.i64[0] << v403) | v399;
        if (v430.i64[0] + (v403 & 0x3F) >= 0x40)
        {
          *(v265 + ((v403 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v431;
          v431 = v429.i64[0] >> -(v403 & 0x3F);
          if ((v403 & 0x3F) == 0)
          {
            v431 = 0;
          }
        }

        v432 = v430.i64[0] + v403;
        v399 = v431 | (v429.i64[1] << v432);
        if ((v432 & 0x3F) + v430.i64[1] >= 0x40)
        {
          *(v265 + ((v432 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v399;
          v399 = v429.i64[1] >> -(v432 & 0x3F);
          if ((v432 & 0x3F) == 0)
          {
            v399 = 0;
          }
        }

        v403 = v432 + v430.i64[1];
        v417 += 16;
      }

      while (v417 != 64);
      v433 = 0;
      v434.i64[0] = 0xF000F000F000FLL;
      v434.i64[1] = 0xF000F000F000FLL;
      v435.i64[0] = -1;
      v435.i64[1] = -1;
      do
      {
        v436 = vandq_s8(vshlq_u16(v435, vaddq_s16(v507, v434)), *(&v498 + v433));
        v437 = vmovl_u16(*v507.i8);
        v438 = vmovl_high_u16(v507);
        v439 = vpaddq_s32(vshlq_u32(vmovl_u16(*v436.i8), vtrn1q_s32(0, v437)), vshlq_u32(vmovl_high_u16(v436), vtrn1q_s32(0, v438)));
        v440 = vpaddq_s32(v437, v438);
        v441.i64[0] = v439.u32[0];
        v441.i64[1] = v439.u32[1];
        v442 = v441;
        v441.i64[0] = v439.u32[2];
        v441.i64[1] = v439.u32[3];
        v443 = v441;
        v441.i64[0] = v440.u32[0];
        v441.i64[1] = v440.u32[1];
        v444 = v441;
        v441.i64[0] = v440.u32[2];
        v441.i64[1] = v440.u32[3];
        v445 = vpaddq_s64(vshlq_u64(v442, vzip1q_s64(0, v444)), vshlq_u64(v443, vzip1q_s64(0, v441)));
        v446 = vpaddq_s64(v444, v441);
        v447 = (v445.i64[0] << v403) | v399;
        if (v446.i64[0] + (v403 & 0x3F) >= 0x40)
        {
          *(v265 + ((v403 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v447;
          v447 = v445.i64[0] >> -(v403 & 0x3F);
          if ((v403 & 0x3F) == 0)
          {
            v447 = 0;
          }
        }

        v448 = v446.i64[0] + v403;
        v399 = v447 | (v445.i64[1] << v448);
        if ((v448 & 0x3F) + v446.i64[1] >= 0x40)
        {
          *(v265 + ((v448 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v399;
          v399 = v445.i64[1] >> -(v448 & 0x3F);
          if ((v448 & 0x3F) == 0)
          {
            v399 = 0;
          }
        }

        v403 = v448 + v446.i64[1];
        v433 += 16;
      }

      while (v433 != 64);
      if ((v403 & 0x3F) != 0)
      {
        *(v265 + ((v403 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v399;
      }

      result = (v403 - v266 + 7) >> 3;
      v253 = *a2 | (result - 1);
    }
  }

  else
  {
    *a1 = a3->i64[0];
    v253 = 7;
    result = 8;
  }

  *a2 = v253;
  return result;
}