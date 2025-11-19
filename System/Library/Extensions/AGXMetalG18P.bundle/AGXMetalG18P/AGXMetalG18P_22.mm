uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v97 = *MEMORY[0x29EDCA608];
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  if (a6 && a5)
  {
    if (a5 > 1)
    {
      v20 = a5 & 0x7E;
      if (a5 == v20)
      {
        v21 = 0;
        v22 = (a3 + 4);
        v23 = &v69 + 1;
        do
        {
          v24 = v23;
          v25 = v22;
          v26 = a5;
          do
          {
            v28 = *(v25 - 1);
            v27 = *v25;
            *(v24 - 9) = v28 & 0x3FF | (((v28 >> 10) & 0x3FF) << 32);
            *(v24 - 8) = (4 * v28) & 0x300000000 | (v28 >> 20) & 0x3FF;
            *(v24 - 1) = v27 & 0x3FF | (((v27 >> 10) & 0x3FF) << 32);
            *v24 = (4 * v27) & 0x300000000 | (v27 >> 20) & 0x3FF;
            v25 += 2;
            v24 += 16;
            v26 -= 2;
          }

          while (v26);
          ++v21;
          v22 = (v22 + a4);
          v23 += 2;
        }

        while (v21 != a6);
      }

      else
      {
        v29 = 0;
        v30 = (a3 + 4);
        v31 = &v69 + 1;
        v32 = (&v65 + 8 * ((a5 >> 1) & 0x3F)) | 8;
        do
        {
          v33 = v31;
          v34 = v30;
          v35 = a5 & 0x7E;
          do
          {
            v36 = *(v34 - 1);
            v37 = *v34;
            *(v33 - 9) = v36 & 0x3FF | (((v36 >> 10) & 0x3FF) << 32);
            *(v33 - 8) = (4 * v36) & 0x300000000 | (v36 >> 20) & 0x3FF;
            *(v33 - 1) = v37 & 0x3FF | (((v37 >> 10) & 0x3FF) << 32);
            *v33 = (4 * v37) & 0x300000000 | (v37 >> 20) & 0x3FF;
            v34 += 2;
            v33 += 16;
            v35 -= 2;
          }

          while (v35);
          v38 = (a3 + v29 * a4 + 4 * v20);
          v39 = v32;
          v40 = a5 - v20;
          do
          {
            v41 = *v38++;
            *(v39 - 1) = v41 & 0x3FF | (((v41 >> 10) & 0x3FF) << 32);
            *v39 = (4 * v41) & 0x300000000 | (v41 >> 20) & 0x3FF;
            v39 += 8;
            --v40;
          }

          while (v40);
          ++v29;
          v30 = (v30 + a4);
          v31 += 2;
          v32 += 16;
        }

        while (v29 != a6);
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
      v12 = &v66;
      v13 = v10;
      do
      {
        v14 = *(v11 - 1);
        v15 = *v11;
        v11 = (v11 + 2);
        *(v12 - 2) = v14 & 0x3FF | (((v14 >> 10) & 0x3FF) << 32);
        *(v12 - 1) = (4 * v14) & 0x300000000 | (v14 >> 20) & 0x3FF;
        *v12 = v15 & 0x3FF | (((v15 >> 10) & 0x3FF) << 32);
        v12[1] = (4 * v15) & 0x300000000 | (v15 >> 20) & 0x3FF;
        v12 += 4;
        v13 -= 2;
      }

      while (v13);
      if (v10 != a6)
      {
LABEL_9:
        v16 = a6 - v10;
        v17 = ((&v65 + v10) | 8);
        v18 = (a3 + v10 * a4);
        do
        {
          v19 = *v18;
          *(v17 - 1) = v19 & 0x3FF | (((v19 >> 10) & 0x3FF) << 32);
          *v17 = (4 * v19) & 0x300000000 | (v19 >> 20) & 0x3FF;
          v17 += 2;
          v18 = (v18 + a4);
          --v16;
        }

        while (v16);
      }
    }
  }

  v57 = v65;
  v58 = v69;
  v59 = v66;
  v60 = v70;
  v61 = v73;
  v62 = v77;
  if (a5 >= 4)
  {
    v42 = 4;
  }

  else
  {
    v42 = a5;
  }

  if (a5 >= 4)
  {
    v43 = a5 - 4;
  }

  else
  {
    v43 = 0;
  }

  if (a6 >= 2)
  {
    v44 = 2;
  }

  else
  {
    v44 = a6;
  }

  v63 = v74;
  v64 = v78;
  if (a6 >= 2)
  {
    v45 = a6 - 2;
  }

  else
  {
    v45 = 0;
  }

  v47 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v57, a7, v42, v44);
  v57 = v67;
  v58 = v71;
  v59 = v68;
  v60 = v72;
  v61 = v75;
  v62 = v79;
  v63 = v76;
  v64 = v80;
  if (a6 >= 4)
  {
    v48 = 2;
  }

  else
  {
    v48 = v45;
  }

  v49 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 16, &v57, a7, v42, v48);
  v57 = v81;
  v58 = v85;
  v59 = v82;
  v60 = v86;
  v61 = v89;
  v62 = v93;
  if (a5 >= 8)
  {
    v50 = 4;
  }

  else
  {
    v50 = v43;
  }

  v63 = v90;
  v64 = v94;
  v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 32, &v57, a7, v50, v44);
  v57 = v83;
  v58 = v87;
  v59 = v84;
  v60 = v88;
  v61 = v91;
  v62 = v95;
  v63 = v92;
  v64 = v96;
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 48, &v57, a7, v50, v48);
  if (v51)
  {
    v53 = 4;
  }

  else
  {
    v53 = 0;
  }

  if (v49)
  {
    v54 = 2;
  }

  else
  {
    v54 = 0;
  }

  if (result)
  {
    v55 = -8;
  }

  else
  {
    v55 = -16;
  }

  *a2 = v55 | v53 | v47 | v54;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(unint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v8 = 0;
  v319 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    v9 = a5 < 2;
  }

  else
  {
    v9 = 1;
  }

  v287 = v9;
  v10 = a4 < 2 || a5 == 0;
  v286 = v10;
  v11 = a4 < 2 || a5 < 2;
  v285 = v11;
  v12 = a4 < 3 || a5 == 0;
  v284 = v12;
  v13 = a4 < 3 || a5 < 2;
  v14 = a4 < 4 || a5 == 0;
  v15 = a4 < 4 || a5 < 2;
  v16 = AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)13,(AGXTextureFootprint)3>::compBits;
  do
  {
    v17 = 0;
    v19 = *v16++;
    v18 = v19;
    *(&v315 + v8 * 4) = v19;
    if (v19 <= 11)
    {
      if (v18 == 2)
      {
        v17 = 5;
      }

      else
      {
        v17 = v18 == 10;
      }
    }

    else
    {
      switch(v18)
      {
        case 12:
          v17 = 2;
          break;
        case 16:
          v17 = 3;
          break;
        case 32:
          v17 = 4;
          break;
      }
    }

    v310[v8] = v17;
    v20 = 1 << (v18 - 1);
    *(&v309[2] + v8 * 4) = v20;
    v21 = *(a2 + v8 * 4);
    if (a3 == 1)
    {
      v22 = &v312[v8];
      if ((v21 ^ v20) == 1)
      {
        v21 = 0;
      }

      else
      {
        v21 ^= v20;
      }

      *v22 = v21;
      v30 = (a2 + v8 * 4);
      if ((*(a2 + v8 * 4 + 16) ^ v20) == 1)
      {
        v23 = 0;
      }

      else
      {
        v23 = *(a2 + v8 * 4 + 16) ^ v20;
      }

      v22[4] = v23;
      v24 = v30[8] ^ v20;
      if (v24 == 1)
      {
        v24 = 0;
      }

      v22[8] = v24;
      if ((v30[12] ^ v20) == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = v30[12] ^ v20;
      }

      v22[12] = v25;
      if ((v30[16] ^ v20) == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = v30[16] ^ v20;
      }

      v22[16] = v26;
      if ((v30[20] ^ v20) == 1)
      {
        v27 = 0;
      }

      else
      {
        v27 = v30[20] ^ v20;
      }

      v22[20] = v27;
      v28 = v30[24] ^ v20;
      if (v28 == 1)
      {
        v28 = 0;
      }

      v22[24] = v28;
      v29 = v30[28] ^ v20;
      if (v29 == 1)
      {
        v29 = 0;
      }
    }

    else if (a3 == 3)
    {
      v21 ^= v20;
      v22 = &v312[v8];
      *v22 = v21;
      v23 = *(a2 + v8 * 4 + 16) ^ v20;
      v22[4] = v23;
      v24 = *(a2 + v8 * 4 + 32) ^ v20;
      v22[8] = v24;
      v25 = *(a2 + v8 * 4 + 48) ^ v20;
      v22[12] = v25;
      v26 = *(a2 + v8 * 4 + 64) ^ v20;
      v22[16] = v26;
      v27 = *(a2 + v8 * 4 + 80) ^ v20;
      v22[20] = v27;
      v28 = *(a2 + v8 * 4 + 96) ^ v20;
      v22[24] = v28;
      v29 = *(a2 + v8 * 4 + 112) ^ v20;
    }

    else
    {
      v22 = &v312[v8];
      *v22 = v21;
      v23 = *(a2 + v8 * 4 + 16);
      v22[4] = v23;
      v24 = *(a2 + v8 * 4 + 32);
      v22[8] = v24;
      v25 = *(a2 + v8 * 4 + 48);
      v22[12] = v25;
      v26 = *(a2 + v8 * 4 + 64);
      v22[16] = v26;
      v27 = *(a2 + v8 * 4 + 80);
      v22[20] = v27;
      v28 = *(a2 + v8 * 4 + 96);
      v22[24] = v28;
      v29 = *(a2 + v8 * 4 + 112);
    }

    v22[28] = v29;
    v31 = &v314[v8 + 4];
    v314[v8 + 4] = v21;
    v314[v8 + 8] = v21;
    v314[v8] = 0;
    if (v286)
    {
      v32 = v21;
      if (v287)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v32 = v21;
      if (v23 < v21)
      {
        v314[v8] = 1;
        v314[v8 + 8] = v23;
        v32 = v23;
      }

      if (v21 >= v23)
      {
        v33 = &v314[v8 + 4];
      }

      else
      {
        v33 = &v312[v8 + 4];
      }

      v21 = *v33;
      *v31 = *v33;
      if (v287)
      {
LABEL_62:
        if (v285)
        {
          goto LABEL_63;
        }

        goto LABEL_80;
      }
    }

    if (v24 < v32)
    {
      v314[v8] = 2;
      v314[v8 + 8] = v24;
      v32 = v24;
    }

    if (v21 >= v24)
    {
      v34 = &v314[v8 + 4];
    }

    else
    {
      v34 = &v312[v8 + 8];
    }

    v21 = *v34;
    *v31 = *v34;
    if (v285)
    {
LABEL_63:
      if (v284)
      {
        goto LABEL_64;
      }

      goto LABEL_85;
    }

LABEL_80:
    if (v25 < v32)
    {
      v314[v8] = 3;
      v314[v8 + 8] = v25;
      v32 = v25;
    }

    v35 = &v312[v8 + 12];
    if (v21 >= v25)
    {
      v35 = &v314[v8 + 4];
    }

    v21 = *v35;
    *v31 = *v35;
    if (v284)
    {
LABEL_64:
      if (v14)
      {
        goto LABEL_65;
      }

      goto LABEL_90;
    }

LABEL_85:
    if (v26 < v32)
    {
      v314[v8] = 4;
      v314[v8 + 8] = v26;
      v32 = v26;
    }

    v36 = &v312[v8 + 16];
    if (v21 >= v26)
    {
      v36 = &v314[v8 + 4];
    }

    v21 = *v36;
    *v31 = *v36;
    if (v14)
    {
LABEL_65:
      if (v13)
      {
        goto LABEL_66;
      }

      goto LABEL_95;
    }

LABEL_90:
    if (v27 < v32)
    {
      v314[v8] = 5;
      v314[v8 + 8] = v27;
      v32 = v27;
    }

    v37 = &v312[v8 + 20];
    if (v21 >= v27)
    {
      v37 = &v314[v8 + 4];
    }

    v21 = *v37;
    *v31 = *v37;
    if (v13)
    {
LABEL_66:
      if (v15)
      {
        goto LABEL_106;
      }

LABEL_100:
      if (v29 < v32)
      {
        v314[v8] = 7;
        v314[v8 + 8] = v29;
        v32 = v29;
      }

      if (v21 >= v29)
      {
        v39 = &v314[v8 + 4];
      }

      else
      {
        v39 = &v312[v8 + 28];
      }

      v21 = *v39;
      *v31 = *v39;
      goto LABEL_106;
    }

LABEL_95:
    if (v28 < v32)
    {
      v314[v8] = 6;
      v314[v8 + 8] = v28;
      v32 = v28;
    }

    v38 = &v312[v8 + 24];
    if (v21 >= v28)
    {
      v38 = &v314[v8 + 4];
    }

    v21 = *v38;
    *v31 = *v38;
    if (!v15)
    {
      goto LABEL_100;
    }

LABEL_106:
    v40 = __clz(v21 - v32);
    v41 = 32 - v40;
    if (v18 <= 11)
    {
      if (v18 != 2)
      {
        if (v18 == 8)
        {
          v43 = 1;
          goto LABEL_129;
        }

        if (v18 == 10)
        {
          if (v40 - 29 < 3)
          {
            v41 = 3;
          }

          goto LABEL_128;
        }

        goto LABEL_121;
      }

      v42 = v40 == 31;
      goto LABEL_126;
    }

    if (v18 != 12)
    {
      if (v18 != 16)
      {
        if (v18 == 32)
        {
          v41 -= v41 >> 1;
LABEL_128:
          v43 = -1;
          goto LABEL_129;
        }

LABEL_121:
        v43 = 0;
        goto LABEL_129;
      }

      v42 = v40 == 31 && v21 == 0xFFFF;
LABEL_126:
      if (v42)
      {
        v41 = 2;
      }

      goto LABEL_128;
    }

    if ((v40 & 0x3C) == 0x1C)
    {
      v41 = 4;
    }

    v43 = -2;
LABEL_129:
    v44 = v41 + v43;
    v45 = v44 & ~(v44 >> 31);
    if (v21 == v32 && (v18 - 8) <= 4 && v44 <= 2)
    {
      if (v32)
      {
        v45 = (v32 ^ (-1 << v18)) != 0xFFFFFFFF || v18 > 0xB;
      }

      else
      {
        v45 = 0;
      }
    }

    v313[v8] = v45;
    if ((a3 | 2) == 3)
    {
      v46 = 0;
      if (v32 < v20 && v21 >= v20)
      {
        v46 = kDQuadParamTable[160 * v17 + 8 + 10 * v45] == 0;
      }
    }

    else
    {
      v46 = 0;
    }

    if (v45 >= kDquadTransition[v17] || v46)
    {
      v47 = kDQuadParamTable[160 * v17 + 4 + 10 * v45] - v46;
      if (v46)
      {
        v48 = 0;
      }

      else
      {
        v48 = -2;
      }

      v49 = v18 >= v47;
      v50 = v18 - v47;
      v141 = v50 != 0 && v49;
      v51 = v32 & ~(-1 << v50);
      if (!v141)
      {
        v51 = 0;
      }

      v52 = v51 + v48;
      if (v52 >= 1 && __clz(v52 + v21 - v32) < v40)
      {
        v313[v8] = ++v45;
      }

      if (v18 == 32)
      {
        v53 = kDquadMaxMode[v17];
        if (v53 >= v45)
        {
          v53 = v45;
        }

        v313[v8] = v53;
      }
    }

    ++v8;
  }

  while (v8 != 4);
  v309[0] = 0;
  v309[1] = 0;
  v308[0] = 0;
  v308[1] = 0;
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::deriveLossyDQuadBitSharing(v310, v313, v309, v308);
  v54 = 0;
  if (a4)
  {
    v55 = a5 == 0;
  }

  else
  {
    v55 = 1;
  }

  v56 = v55;
  v57 = 0x30u;
  while (2)
  {
    v59 = *(v308 + v57);
    v60 = v312[v57 / 4 + 20];
    v61 = &kDQuadParamTable[160 * v59 + 10 * v60];
    v62 = *(v61 + 1);
    v64 = v61[4];
    v63 = v61[5];
    *(&v297 + v57 + 8) = v64;
    v65 = &v300 + v57;
    *(&v296 + v57 + 8) = v63;
    v66 = *(&v298 + v57) - *(&v300 + v57);
    if (v66 < 0)
    {
      v68 = &kDQuadParamTable[160 * v59 + 10 * v60];
      if (v68[7] < (*(&v300 + v57) - *(&v298 + v57)))
      {
        *(v65 - 12) = --v63;
        if (!v68[8])
        {
          v67 = -1;
LABEL_170:
          *(&v297 + v57 + 8) = v67 + v64;
        }
      }
    }

    else if (v66)
    {
      v63 += v66;
      *(v65 - 12) = v63;
      v67 = v66;
      goto LABEL_170;
    }

    if (v59 == 5 && v60 == 1)
    {
      v54 |= v66 < 2;
    }

    if (a3 == 4)
    {
      v69 = 1 << (v314[v57 / 4] - 1);
      if (v59 == 3)
      {
        v70 = -31745;
      }

      else
      {
        v70 = -1;
      }

      if (v59 == 4)
      {
        v71 = -2139095041;
      }

      else
      {
        v71 = v70;
      }

      if (v56)
      {
        if (v286)
        {
          goto LABEL_185;
        }

LABEL_199:
        v75 = *(&v311[6] + v57);
        v77 = (v75 | v71) == 0xFFFFFFFF || v75 == v69;
        v54 |= v77;
        if (!v287)
        {
          goto LABEL_206;
        }

LABEL_186:
        if (v285)
        {
          goto LABEL_187;
        }

LABEL_213:
        v81 = v312[v57 / 4];
        v83 = (v81 | v71) == 0xFFFFFFFF || v81 == v69;
        v54 |= v83;
        if (!v284)
        {
          goto LABEL_220;
        }

LABEL_188:
        if (v14)
        {
          goto LABEL_189;
        }

LABEL_227:
        v87 = v312[v57 / 4 + 8];
        v89 = (v87 | v71) == 0xFFFFFFFF || v87 == v69;
        v54 |= v89;
        if (!v13)
        {
          goto LABEL_234;
        }

LABEL_190:
        if (!v15)
        {
          goto LABEL_241;
        }
      }

      else
      {
        v72 = *(&v311[5] + v57);
        v74 = (v72 | v71) == 0xFFFFFFFF || v72 == v69;
        v54 |= v74;
        if (!v286)
        {
          goto LABEL_199;
        }

LABEL_185:
        if (v287)
        {
          goto LABEL_186;
        }

LABEL_206:
        v78 = *(&v311[7] + v57);
        v80 = (v78 | v71) == 0xFFFFFFFF || v78 == v69;
        v54 |= v80;
        if (!v285)
        {
          goto LABEL_213;
        }

LABEL_187:
        if (v284)
        {
          goto LABEL_188;
        }

LABEL_220:
        v84 = v312[v57 / 4 + 4];
        v86 = (v84 | v71) == 0xFFFFFFFF || v84 == v69;
        v54 |= v86;
        if (!v14)
        {
          goto LABEL_227;
        }

LABEL_189:
        if (v13)
        {
          goto LABEL_190;
        }

LABEL_234:
        v90 = v312[v57 / 4 + 12];
        v92 = (v90 | v71) == 0xFFFFFFFF || v90 == v69;
        v54 |= v92;
        if (!v15)
        {
LABEL_241:
          v93 = v312[v57 / 4 + 16];
          v95 = (v93 | v71) == 0xFFFFFFFF || v93 == v69;
          v54 |= v95;
        }
      }
    }

    if (v62 >> v63 > 1 << *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)13,(AGXTextureFootprint)3>::lossyFallBackInfo + v57))
    {
      v58 = 1;
    }

    else
    {
      v58 = v56;
    }

    v54 |= v58;
    v57 += 4;
    if (v57 != 64)
    {
      continue;
    }

    break;
  }

  v96 = 0;
  v298 = 0;
  v299 = 0;
  v296 = 0u;
  v297 = 0u;
  memset(v295, 0, sizeof(v295));
  v97 = v312;
  v98 = v311;
  do
  {
    v99 = 0;
    v100 = 0;
    v101 = *(&v315 + v96);
    if (v101 >= *(&v304 + v96))
    {
      v102 = *(&v304 + v96);
    }

    else
    {
      v102 = *(&v315 + v96);
    }

    *(&v304 + v96) = v102;
    v103 = -1 << v101;
    v104 = &kDQuadParamTable[160 * v310[v96] + 10 * v313[v96]];
    if (v104[5])
    {
      v105 = v101;
    }

    else
    {
      v105 = 0;
    }

    if (v105 >= *(&v300 + v96))
    {
      v105 = *(&v300 + v96);
    }

    *(&v300 + v96) = v105;
    v106 = *(v104 + 1);
    v107 = v314[v96 + 8] & (-1 << (v101 - v102));
    *(&v298 + v96) = v107;
    v108 = v106 >> v105;
    v109 = &v312[v96];
    v110 = *v109 - v107;
    v111 = &v311[2 * v96];
    if (v56)
    {
      v110 = 0;
    }

    v112 = v109[4] - v107;
    if (v286)
    {
      v112 = 0;
    }

    *v111 = v110;
    v111[1] = v112;
    v113 = v109[8] - v107;
    if (v287)
    {
      v113 = 0;
    }

    v114 = v109[12] - v107;
    if (v285)
    {
      v114 = 0;
    }

    v111[2] = v113;
    v111[3] = v114;
    v115 = v109[16] - v107;
    if (v284)
    {
      v115 = 0;
    }

    v116 = v109[20] - v107;
    if (v14)
    {
      v116 = 0;
    }

    v111[4] = v115;
    v111[5] = v116;
    v117 = v109[24] - v107;
    if (v13)
    {
      v117 = 0;
    }

    v118 = v109[28] - v107;
    if (v15)
    {
      v118 = 0;
    }

    v111[6] = v117;
    v111[7] = v118;
    if (v108 <= 1)
    {
      v119 = 1;
    }

    else
    {
      v119 = v108;
    }

    v120 = 4 * v314[v96];
    v121 = v295 + 28 * v96;
    v122 = &byte_29D2F3081;
    do
    {
      if (v120 != v99)
      {
        if (v105)
        {
          v123 = *(v98 + v99) / v119;
        }

        else
        {
          LODWORD(v123) = 0;
        }

        *&v121[4 * v100] = v123;
        if (v108 >= 2)
        {
          v124 = *(v98 + v99);
          if (v124)
          {
            if (v124 / v119 * v119 == v124 && ((v124 / v119) & 1) != 0)
            {
              if (v107 || v123 != 1)
              {
                if ((a3 | 2) != 3 || (v126 = v97[v99], v127 = *(&v309[2] + v96), v126 != v127) && ((a3 | 2) != 3 || v119 + v127 != v126))
                {
                  LODWORD(v123) = v123 - 1;
                  *&v121[4 * v100] = v123;
                }
              }

              else
              {
                LODWORD(v123) = 1;
              }
            }
          }
        }

        if (v123 >> v105 || (v97[v99] ^ v103) == 0xFFFFFFFF)
        {
          *&v121[4 * v100] = ~(-1 << v105);
        }

        if (*v122 >= a5 || *(v122 - 1) >= a4)
        {
          *&v121[4 * v100] = 0;
        }

        ++v100;
      }

      v99 += 4;
      v122 += 2;
    }

    while (v99 != 32);
    ++v96;
    v98 += 2;
    ++v97;
  }

  while (v96 != 4);
  v128 = a1 & 0xFFFFFFFFFFFFFFF8;
  v129 = 8 * (a1 & 7);
  *a1 = 0;
  *(a1 + 8) = 0;
  if (v54)
  {
    v130 = 0;
    v131 = 0;
    v132 = v315;
    v133 = v316;
    v134 = v315 - 5;
    v135 = v316 - 5;
    v136 = v317;
    v137 = v318;
    v138 = v317 - 6;
    v139 = 8 * (a1 & 7);
    while (1)
    {
      v140 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v130;
      v141 = v140[1] < a5 && a4 > *v140;
      v142 = !v141;
      if (v141)
      {
        v143 = v312[4 * v130] >> 5;
        if (v134 > 0x100)
        {
          goto LABEL_325;
        }
      }

      else
      {
        v143 = 0;
        if (v134 > 0x100)
        {
          goto LABEL_325;
        }
      }

      if (v132 != 5 && (v139 - v129 + (v131 << 6) + v134) <= 0x80)
      {
        v144 = 0;
        v145 = v132 - 5;
        do
        {
          v146 = 64 - v139;
          if (64 - v139 >= v145)
          {
            v146 = v145;
          }

          *(v128 + 8 * v131) |= ((v143 >> v144) & ~(-1 << v146)) << v139;
          v144 += v146;
          v147 = v146 + v139;
          v131 += v147 >> 6;
          v139 = v147 & 0x3F;
          v145 -= v146;
        }

        while (v145);
      }

LABEL_325:
      v148 = &v312[4 * v130];
      if (v142)
      {
        v149 = 0;
        if (v135 > 0x100)
        {
          goto LABEL_335;
        }
      }

      else
      {
        v149 = v148[1] >> 5;
        if (v135 > 0x100)
        {
          goto LABEL_335;
        }
      }

      if (v133 != 5 && (v139 - v129 + (v131 << 6) + v135) <= 0x80)
      {
        v150 = 0;
        v151 = v133 - 5;
        do
        {
          v152 = 64 - v139;
          if (64 - v139 >= v151)
          {
            v152 = v151;
          }

          *(v128 + 8 * v131) |= ((v149 >> v150) & ~(-1 << v152)) << v139;
          v150 += v152;
          v153 = v152 + v139;
          v131 += v153 >> 6;
          v139 = v153 & 0x3F;
          v151 -= v152;
        }

        while (v151);
      }

LABEL_335:
      if (v142)
      {
        v154 = 0;
        if (v138 > 0x100)
        {
          goto LABEL_345;
        }
      }

      else
      {
        v154 = v148[2] >> 6;
        if (v138 > 0x100)
        {
          goto LABEL_345;
        }
      }

      if (v136 != 6 && (v139 - v129 + (v131 << 6) + v138) <= 0x80)
      {
        v155 = 0;
        v156 = v136 - 6;
        do
        {
          v157 = 64 - v139;
          if (64 - v139 >= v156)
          {
            v157 = v156;
          }

          *(v128 + 8 * v131) |= ((v154 >> v155) & ~(-1 << v157)) << v139;
          v155 += v157;
          v158 = v157 + v139;
          v131 += v158 >> 6;
          v139 = v158 & 0x3F;
          v156 -= v157;
        }

        while (v156);
      }

LABEL_345:
      if (v142)
      {
        v159 = 0;
        if (v137 <= 0x100)
        {
          goto LABEL_349;
        }
      }

      else
      {
        v159 = v148[3];
        if (v137 <= 0x100)
        {
LABEL_349:
          if (v137 && v139 - v129 + (v131 << 6) + v137 <= 0x80)
          {
            v160 = 0;
            v161 = v137;
            do
            {
              v162 = 64 - v139;
              if (64 - v139 >= v161)
              {
                v162 = v161;
              }

              *(v128 + 8 * v131) |= ((v159 >> v160) & ~(-1 << v162)) << v139;
              v160 += v162;
              v163 = v162 + v139;
              v131 += v163 >> 6;
              v139 = v163 & 0x3F;
              v161 -= v162;
            }

            while (v161);
          }
        }
      }

      if (++v130 == 8)
      {
        return v54 & 1;
      }
    }
  }

  v164 = 0;
  v165 = 0;
  v166 = 0;
  v294[0] = 0;
  v294[1] = 0;
  v293[0] = 0;
  v293[1] = 0;
  v291 = 0;
  v292 = 0;
  v289 = 0;
  v290 = 0;
  v167 = 8 * (a1 & 7);
  v288 = 0;
  while (2)
  {
    v168 = v313[v164];
    v169 = v314[v164 + 8];
    v170 = AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)13,(AGXTextureFootprint)3>::compBits[v164];
    *(&v289 + v164) = 0;
    *(&v291 + v164) = 0;
    if (v170 > 11)
    {
      if (v170 == 12)
      {
        *(v294 + v164) = 3;
        v172 = v168 - 3;
        if (v168 > 3)
        {
          goto LABEL_377;
        }

        *(v293 + v164) = 0;
        *(&v291 + v164) = 2;
        v173 = 1;
        v174 = 3;
        *(&v289 + v164) = v168;
LABEL_376:
        v168 = 0;
        goto LABEL_381;
      }

      if (v170 != 16 && v170 != 32)
      {
        goto LABEL_378;
      }

      v173 = 0;
      v174 = 4;
      goto LABEL_373;
    }

    if (v170 == 2)
    {
      v173 = 0;
      v174 = 1;
LABEL_373:
      *(v294 + v164) = v174;
      *(v293 + v164) = v168;
LABEL_381:
      *(&v288 + v164) = v173;
      goto LABEL_382;
    }

    if (v170 != 8 && v170 != 10)
    {
LABEL_378:
      v168 = *(v293 + v164);
      v174 = *(v294 + v164);
      *(&v288 + v164) = 0;
      if (v174 > 0x100)
      {
        goto LABEL_357;
      }

      goto LABEL_382;
    }

    *(v294 + v164) = 3;
    if (!(v169 | v168))
    {
      v168 = 0;
      *(v293 + v164) = 0;
      *(&v291 + v164) = 2;
      v173 = 1;
      v174 = 3;
      goto LABEL_381;
    }

    v172 = v168 - 2;
    if (v168 <= 2)
    {
      *(v293 + v164) = 0;
      *(&v291 + v164) = 2;
      *(&v289 + v164) = v168 + 1;
      v173 = 1;
      v174 = 3;
      goto LABEL_376;
    }

LABEL_377:
    *(v293 + v164) = v172;
    v174 = 3;
    v168 = v172;
    *(&v288 + v164) = 0;
LABEL_382:
    if (v174)
    {
      v175 = v174;
      if (v167 - v129 + (v166 << 6) + v174 <= 0x80)
      {
        v176 = 0;
        do
        {
          v177 = 64 - v167;
          if (64 - v167 >= v175)
          {
            v177 = v175;
          }

          *(v128 + 8 * v166) |= ((v168 >> v176) & ~(-1 << v177)) << v167;
          v176 += v177;
          v178 = v177 + v167;
          v166 += v178 >> 6;
          v167 = v178 & 0x3F;
          v175 -= v177;
        }

        while (v175);
      }
    }

LABEL_357:
    v165 += v174;
    if (++v164 != 4)
    {
      continue;
    }

    break;
  }

  if (v288 == 1)
  {
    v179 = v291;
    if (v291 <= 0x100 && v291 && v167 - v129 + (v166 << 6) + v291 <= 0x80)
    {
      v180 = 0;
      v181 = v289;
      v182 = v291;
      do
      {
        v183 = 64 - v167;
        if (64 - v167 >= v182)
        {
          v183 = v182;
        }

        *(v128 + 8 * v166) |= ((v181 >> v180) & ~(-1 << v183)) << v167;
        v180 += v183;
        v184 = v183 + v167;
        v166 += v184 >> 6;
        v167 = v184 & 0x3F;
        v182 -= v183;
      }

      while (v182);
    }

    v165 += v179;
  }

  if (BYTE1(v288) == 1)
  {
    v185 = HIDWORD(v291);
    if (HIDWORD(v291) <= 0x100 && HIDWORD(v291) && v167 - v129 + (v166 << 6) + HIDWORD(v291) <= 0x80)
    {
      v186 = 0;
      v187 = HIDWORD(v289);
      v188 = HIDWORD(v291);
      do
      {
        v189 = 64 - v167;
        if (64 - v167 >= v188)
        {
          v189 = v188;
        }

        *(v128 + 8 * v166) |= ((v187 >> v186) & ~(-1 << v189)) << v167;
        v186 += v189;
        v190 = v189 + v167;
        v166 += v190 >> 6;
        v167 = v190 & 0x3F;
        v188 -= v189;
      }

      while (v188);
    }

    v165 += v185;
  }

  if (BYTE2(v288) == 1)
  {
    v191 = v292;
    if (v292 <= 0x100 && v292 && v167 - v129 + (v166 << 6) + v292 <= 0x80)
    {
      v192 = 0;
      v193 = v290;
      v194 = v292;
      do
      {
        v195 = 64 - v167;
        if (64 - v167 >= v194)
        {
          v195 = v194;
        }

        *(v128 + 8 * v166) |= ((v193 >> v192) & ~(-1 << v195)) << v167;
        v192 += v195;
        v196 = v195 + v167;
        v166 += v196 >> 6;
        v167 = v196 & 0x3F;
        v194 -= v195;
      }

      while (v194);
    }

    v165 += v191;
  }

  if (HIBYTE(v288) == 1)
  {
    v197 = HIDWORD(v292);
    if (HIDWORD(v292) <= 0x100 && HIDWORD(v292) && v167 - v129 + (v166 << 6) + HIDWORD(v292) <= 0x80)
    {
      v198 = 0;
      v199 = HIDWORD(v290);
      v200 = HIDWORD(v292);
      do
      {
        v201 = 64 - v167;
        if (64 - v167 >= v200)
        {
          v201 = v200;
        }

        *(v128 + 8 * v166) |= ((v199 >> v198) & ~(-1 << v201)) << v167;
        v198 += v201;
        v202 = v201 + v167;
        v166 += v202 >> 6;
        v167 = v202 & 0x3F;
        v200 -= v201;
      }

      while (v200);
    }

    v165 += v197;
  }

  if (v313[0] || v315 == 2 || v315 >= 0x10)
  {
    v203 = v304;
    if (v304 <= 0x100 && v304 && v167 - v129 + (v166 << 6) + v304 <= 0x80)
    {
      v204 = 0;
      v205 = v298 >> (v315 - v304);
      v206 = v304;
      do
      {
        v207 = 64 - v167;
        if (64 - v167 >= v206)
        {
          v207 = v206;
        }

        *(v128 + 8 * v166) |= ((v205 >> v204) & ~(-1 << v207)) << v167;
        v204 += v207;
        v208 = v207 + v167;
        v166 += v208 >> 6;
        v167 = v208 & 0x3F;
        v206 -= v207;
      }

      while (v206);
    }

    v165 += v203;
  }

  if (v313[1] || v316 == 2 || v316 >= 0x10)
  {
    v209 = v305;
    if (v305 <= 0x100 && v305 && v167 - v129 + (v166 << 6) + v305 <= 0x80)
    {
      v210 = 0;
      v211 = (HIDWORD(v298) >> (v316 - v305));
      v212 = v305;
      do
      {
        v213 = 64 - v167;
        if (64 - v167 >= v212)
        {
          v213 = v212;
        }

        *(v128 + 8 * v166) |= ((v211 >> v210) & ~(-1 << v213)) << v167;
        v210 += v213;
        v214 = v213 + v167;
        v166 += v214 >> 6;
        v167 = v214 & 0x3F;
        v212 -= v213;
      }

      while (v212);
    }

    v165 += v209;
  }

  if (v313[2] || v317 == 2 || v317 >= 0x10)
  {
    v215 = v306;
    if (v306 <= 0x100 && v306 && v167 - v129 + (v166 << 6) + v306 <= 0x80)
    {
      v216 = 0;
      v217 = v299 >> (v317 - v306);
      v218 = v306;
      do
      {
        v219 = 64 - v167;
        if (64 - v167 >= v218)
        {
          v219 = v218;
        }

        *(v128 + 8 * v166) |= ((v217 >> v216) & ~(-1 << v219)) << v167;
        v216 += v219;
        v220 = v219 + v167;
        v166 += v220 >> 6;
        v167 = v220 & 0x3F;
        v218 -= v219;
      }

      while (v218);
    }

    v165 += v215;
  }

  if (v313[3] || v318 == 2 || v318 >= 0x10)
  {
    v221 = v307;
    if (v307 <= 0x100 && v307 && v167 - v129 + (v166 << 6) + v307 <= 0x80)
    {
      v222 = 0;
      v223 = (HIDWORD(v299) >> (v318 - v307));
      v224 = v307;
      do
      {
        v225 = 64 - v167;
        if (64 - v167 >= v224)
        {
          v225 = v224;
        }

        *(v128 + 8 * v166) |= ((v223 >> v222) & ~(-1 << v225)) << v167;
        v222 += v225;
        v226 = v225 + v167;
        v166 += v226 >> 6;
        v167 = v226 & 0x3F;
        v224 -= v225;
      }

      while (v224);
    }

    v165 += v221;
  }

  v227 = v300;
  if (v300)
  {
    if ((v167 - v129 + (v166 << 6) + 3) <= 0x80)
    {
      v228 = 0;
      v229 = v314[0];
      v230 = 3;
      do
      {
        v231 = 64 - v167;
        if (64 - v167 >= v230)
        {
          v231 = v230;
        }

        *(v128 + 8 * v166) |= ((v229 >> v228) & ~(-1 << v231)) << v167;
        v228 += v231;
        v232 = v231 + v167;
        v166 += v232 >> 6;
        v167 = v232 & 0x3F;
        v230 -= v231;
      }

      while (v230);
    }

    v165 += 3;
  }

  v233 = v301;
  if (v301)
  {
    if ((v167 - v129 + (v166 << 6) + 3) <= 0x80)
    {
      v234 = 0;
      v235 = v314[1];
      v236 = 3;
      do
      {
        v237 = 64 - v167;
        if (64 - v167 >= v236)
        {
          v237 = v236;
        }

        *(v128 + 8 * v166) |= ((v235 >> v234) & ~(-1 << v237)) << v167;
        v234 += v237;
        v238 = v237 + v167;
        v166 += v238 >> 6;
        v167 = v238 & 0x3F;
        v236 -= v237;
      }

      while (v236);
    }

    v165 += 3;
  }

  v239 = v302;
  if (v302)
  {
    if ((v167 - v129 + (v166 << 6) + 3) <= 0x80)
    {
      v240 = 0;
      v241 = v314[2];
      v242 = 3;
      do
      {
        v243 = 64 - v167;
        if (64 - v167 >= v242)
        {
          v243 = v242;
        }

        *(v128 + 8 * v166) |= ((v241 >> v240) & ~(-1 << v243)) << v167;
        v240 += v243;
        v244 = v243 + v167;
        v166 += v244 >> 6;
        v167 = v244 & 0x3F;
        v242 -= v243;
      }

      while (v242);
    }

    v165 += 3;
  }

  v245 = v303;
  if (v303)
  {
    if ((v167 - v129 + (v166 << 6) + 3) <= 0x80)
    {
      v246 = 0;
      v247 = v314[3];
      v248 = 3;
      do
      {
        v249 = 64 - v167;
        if (64 - v167 >= v248)
        {
          v249 = v248;
        }

        *(v128 + 8 * v166) |= ((v247 >> v246) & ~(-1 << v249)) << v167;
        v246 += v249;
        v250 = v249 + v167;
        v166 += v250 >> 6;
        v167 = v250 & 0x3F;
        v248 -= v249;
      }

      while (v248);
    }

    v165 += 3;
  }

  v251 = 128 - v165;
  v252 = (128 - v165) / 7u;
  v253 = v251 % 7;
  if ((v253 - 257) >= 0xFFFFFF00 && v167 - v129 + (v166 << 6) + v253 <= 0x80)
  {
    do
    {
      v254 = 64 - v167;
      if (64 - v167 >= v253)
      {
        v254 = v253;
      }

      v255 = v254 + v167;
      v166 += v255 >> 6;
      v167 = v255 & 0x3F;
      v253 -= v254;
    }

    while (v253);
  }

  v256 = 0;
  while (2)
  {
    if (v227 && v227 <= 0x100 && v167 - v129 + (v166 << 6) + v227 <= 0x80)
    {
      v257 = 0;
      v258 = *(v295 + v256);
      v259 = v227;
      do
      {
        v260 = 64 - v167;
        if (64 - v167 >= v259)
        {
          v260 = v259;
        }

        *(v128 + 8 * v166) |= ((v258 >> v257) & ~(-1 << v260)) << v167;
        v257 += v260;
        v261 = v260 + v167;
        v166 += v261 >> 6;
        v167 = v261 & 0x3F;
        v259 -= v260;
      }

      while (v259);
    }

    v262 = v295 + v256;
    if (!v233)
    {
      v268 = v227;
      if (!v239)
      {
        goto LABEL_520;
      }

      goto LABEL_513;
    }

    if (v233 <= 0x100 && v167 - v129 + (v166 << 6) + v233 <= 0x80)
    {
      v263 = 0;
      v264 = v262[7];
      v265 = v233;
      do
      {
        v266 = 64 - v167;
        if (64 - v167 >= v265)
        {
          v266 = v265;
        }

        *(v128 + 8 * v166) |= ((v264 >> v263) & ~(-1 << v266)) << v167;
        v263 += v266;
        v267 = v266 + v167;
        v166 += v267 >> 6;
        v167 = v267 & 0x3F;
        v265 -= v266;
      }

      while (v265);
    }

    v268 = v233 + v227;
    if (v239)
    {
LABEL_513:
      if (v239 <= 0x100 && v167 - v129 + (v166 << 6) + v239 <= 0x80)
      {
        v269 = 0;
        v270 = v262[14];
        v271 = v239;
        do
        {
          v272 = 64 - v167;
          if (64 - v167 >= v271)
          {
            v272 = v271;
          }

          *(v128 + 8 * v166) |= ((v270 >> v269) & ~(-1 << v272)) << v167;
          v269 += v272;
          v273 = v272 + v167;
          v166 += v273 >> 6;
          v167 = v273 & 0x3F;
          v271 -= v272;
        }

        while (v271);
      }

      v268 += v239;
    }

LABEL_520:
    if (v245)
    {
      if (v245 <= 0x100 && v167 - v129 + (v166 << 6) + v245 <= 0x80)
      {
        v274 = 0;
        v275 = v262[21];
        v276 = v245;
        do
        {
          v277 = 64 - v167;
          if (64 - v167 >= v276)
          {
            v277 = v276;
          }

          *(v128 + 8 * v166) |= ((v275 >> v274) & ~(-1 << v277)) << v167;
          v274 += v277;
          v278 = v277 + v167;
          v166 += v278 >> 6;
          v167 = v278 & 0x3F;
          v276 -= v277;
        }

        while (v276);
      }

      v268 += v245;
    }

    v279 = v252 - v268;
    if (v279 && v279 <= 0x100 && v167 - v129 + (v166 << 6) + v279 <= 0x80)
    {
      do
      {
        v280 = 64 - v167;
        if (64 - v167 >= v279)
        {
          v280 = v279;
        }

        v281 = v280 + v167;
        v166 += v281 >> 6;
        v167 = v281 & 0x3F;
        v279 -= v280;
      }

      while (v279);
    }

    if (++v256 != 7)
    {
      continue;
    }

    return v54 & 1;
  }
}

unsigned int *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::deriveLossyDQuadBitSharing(unsigned int *result, unsigned int *a2, _DWORD *a3, _DWORD *a4)
{
  if (a2[3])
  {
    v4 = 8;
  }

  else
  {
    v4 = 5;
  }

  a2[3] = v4;
  v5 = *a2;
  v6 = result[1];
  v7 = kDQuadParamTable[160 * *result + 6 + 10 * *a2];
  *a4 = v7;
  *a3 = v7;
  v8 = a2[1];
  v9 = v8 >= v5;
  if (v8 <= v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = a2[1];
  }

  v11 = v8 < v5;
  if (v8 < v5)
  {
    v5 = a2[1];
  }

  v12 = kDQuadParamTable[160 * v6 + 6 + 10 * v8];
  a4[1] = v12;
  a3[1] = v12;
  v13 = a2[2];
  if (v13 >= v5)
  {
    v14 = v5;
  }

  else
  {
    v14 = a2[2];
  }

  if (v13 < v5)
  {
    v11 = 2;
  }

  v15 = v13 > v10;
  if (v13 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = a2[2];
  }

  if (v13 > v10)
  {
    v9 = 2;
  }

  v17 = kDQuadParamTable[160 * result[2] + 6 + 10 * v13];
  a4[2] = v17;
  a3[2] = v17;
  v18 = a2[3];
  if (v15 || v18 > v16)
  {
    v20 = -2;
  }

  else
  {
    v20 = 1;
  }

  if (v18 <= v16)
  {
    v21 = v9;
  }

  else
  {
    v21 = 3;
  }

  if (v18 >= v14)
  {
    v22 = v11;
  }

  else
  {
    v22 = 3;
  }

  v23 = kDQuadParamTable[10 * v18 + 166];
  a4[3] = v23;
  a3[3] = v23;
  v24 = a2[v21];
  v25 = a2[v22];
  v26 = v21 + v20;
  v27 = v21 - 1;
  if (!v21)
  {
    v27 = 2;
  }

  if (v26 == v22)
  {
    v26 = v27;
  }

  v28 = a2[v26];
  v29 = a2[6 - (v21 + v22) - v26];
  v30 = v28 > v29;
  if (v28 <= v29)
  {
    v31 = v26;
  }

  else
  {
    v31 = 6 - (v21 + v22) - v26;
  }

  if (!v30)
  {
    v26 = 6 - (v21 + v22) - v26;
  }

  v32 = a2[v31];
  if (v24 - v32 <= 1 && v25 <= 1)
  {
    a4[v22] = 0;
    v37 = 1431655766 * a3[v22];
    a4[v31] += HIDWORD(v37) + (v37 >> 63);
    v38 = 1431655766 * (a3[v22] + 1);
    a4[v26] += HIDWORD(v38) + (v38 >> 63);
    v39 = 1431655766 * (a3[v22] + 2);
    v40 = HIDWORD(v39) + (v39 >> 63);
    v41 = a4[v21];
LABEL_54:
    a4[v21] = v40 + v41;
    goto LABEL_74;
  }

  v34 = a2[v26];
  if (v24 - v34 <= 1 && v25 <= 1)
  {
    a4[v22] = 0;
    v42 = a3[v31] & (a3[v31] >> 31);
    a4[v31] = v42;
    a4[v26] += (a3[v22] - v42 + a3[v31]) / 2;
    a4[v21] += (a3[v22] + a3[v31] - a4[v31] + 1) / 2;
    goto LABEL_74;
  }

  if (v34 - v25 > 1)
  {
    if (v34 - v25 != 2)
    {
      goto LABEL_62;
    }

    v36 = a3[v21];
  }

  else
  {
    v36 = a3[v21];
    if ((v36 & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    if (a3[v26] > 0)
    {
LABEL_59:
      v43 = 0;
      a4[v22] = 0;
      a4[v31] = 0;
      if (a3[v31] + a3[v22] >= 6)
      {
        v43 = a3[v26];
      }

      a4[v26] = v43;
      v40 = a3[v22] - v43 + a3[v31];
      v41 = a3[v26] + a4[v21];
      goto LABEL_54;
    }
  }

  if (v36 <= -2 && a3[v26] >= 1)
  {
    goto LABEL_59;
  }

LABEL_62:
  if (!v25 || a3[v22] < 1 || a3[v31] < 1 || (a3[v26] & 0x80000000) != 0 || a3[v21] > -2)
  {
    if (v24 != v25 && a3[v22] >= 1)
    {
      a4[v22] = 0;
      a4[v21] += a3[v22];
    }

    if (v34 != v32 && a3[v31] >= 1)
    {
      a4[v31] = 0;
      a4[v26] += a3[v31];
    }
  }

  else
  {
    a4[v22] = 0;
    a4[v31] = 0;
    a4[v26] = a3[v26];
    a4[v21] += a3[v31] + a3[v22];
  }

LABEL_74:
  result[3] = 5;
  a2[3] = a2[3] != 5;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 0;
  v4 = 0;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = 8 * (a1 & 7);
  v7 = a3 & 0xFFFFFFFD;
  v8 = (a3 & 0xFFFFFFFD) == 1;
  v9 = 2 * v8;
  v10 = v8 << 9;
  result = v6;
  do
  {
    if ((result - v6 + (v4 << 6) - 124) < 0xFFFFFFFFFFFFFF7FLL)
    {
      v13 = 0;
      if (a3 == 4)
      {
        goto LABEL_20;
      }

LABEL_12:
      v19 = v13 == 512 && v7 == 1;
      if (!v19 && v13)
      {
        if (v13 == 992)
        {
          v13 = 1023;
        }

        else
        {
          v13 |= (v13 << 26 >> 31) + 16;
        }
      }

      goto LABEL_20;
    }

    v14 = 0;
    v15 = 0;
    v16 = 5;
    do
    {
      v17 = 64 - result;
      if (64 - result >= v16)
      {
        v17 = v16;
      }

      v14 |= ((*(v5 + 8 * v4) >> result) & ~(-1 << v17)) << v15;
      v15 += v17;
      v18 = v17 + result;
      v4 += v18 >> 6;
      result = v18 & 0x3F;
      v16 -= v17;
    }

    while (v16);
    v13 = 32 * (v14 & 0x1F);
    if (a3 != 4)
    {
      goto LABEL_12;
    }

LABEL_20:
    *(a2 + 16 * v3) = v13 ^ v10;
    if ((result - v6 + (v4 << 6) - 124) < 0xFFFFFFFFFFFFFF7FLL)
    {
      v20 = 0;
      if (a3 == 4)
      {
        goto LABEL_36;
      }

LABEL_28:
      v26 = v20 == 512 && v7 == 1;
      if (!v26 && v20)
      {
        if (v20 == 992)
        {
          v20 = 1023;
        }

        else
        {
          v20 |= (v20 << 26 >> 31) + 16;
        }
      }

      goto LABEL_36;
    }

    v21 = 0;
    v22 = 0;
    v23 = 5;
    do
    {
      v24 = 64 - result;
      if (64 - result >= v23)
      {
        v24 = v23;
      }

      v21 |= ((*(v5 + 8 * v4) >> result) & ~(-1 << v24)) << v22;
      v22 += v24;
      v25 = v24 + result;
      v4 += v25 >> 6;
      result = v25 & 0x3F;
      v23 -= v24;
    }

    while (v23);
    v20 = 32 * (v21 & 0x1F);
    if (a3 != 4)
    {
      goto LABEL_28;
    }

LABEL_36:
    v27 = v20 ^ v10;
    v28 = (a2 + 16 * v3);
    v28[1] = v27;
    if ((result - v6 + (v4 << 6) - 125) >= 0xFFFFFFFFFFFFFF7FLL)
    {
      v30 = 0;
      v31 = 0;
      v32 = 4;
      do
      {
        v33 = 64 - result;
        if (64 - result >= v32)
        {
          v33 = v32;
        }

        v30 |= ((*(v5 + 8 * v4) >> result) & ~(-1 << v33)) << v31;
        v31 += v33;
        v34 = v33 + result;
        v4 += v34 >> 6;
        result = v34 & 0x3F;
        v32 -= v33;
      }

      while (v32);
      v29 = (v30 & 0xF) << 6;
    }

    else
    {
      v29 = 0;
    }

    v35 = ((v29 << 25 >> 31) + 32) | v29;
    if (v29 == 960)
    {
      v35 = 1023;
    }

    if (v29 == 512 && v7 == 1 || v29 == 0)
    {
      v35 = v29;
    }

    if (a3 != 4)
    {
      v29 = v35;
    }

    v28[2] = v29 ^ v10;
    if ((result - v6 + (v4 << 6) - 127) < 0xFFFFFFFFFFFFFF7FLL)
    {
      v12 = 0;
    }

    else
    {
      v38 = 0;
      v39 = 0;
      v40 = 2;
      do
      {
        v41 = 64 - result;
        if (64 - result >= v40)
        {
          v41 = v40;
        }

        v38 |= ((*(v5 + 8 * v4) >> result) & ~(-1 << v41)) << v39;
        v39 += v41;
        v42 = v41 + result;
        v4 += v42 >> 6;
        result = v42 & 0x3F;
        v40 -= v41;
      }

      while (v40);
      v12 = v38 & 3;
    }

    v28[3] = v12 ^ v9;
    ++v3;
  }

  while (v3 != 8);
  return result;
}

_DWORD *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3)
{
  v266 = *MEMORY[0x29EDCA608];
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = 8 * (a1 & 7);
  v6 = *(a1 & 0xFFFFFFFFFFFFFFF8);
  v239[0] = (v6 >> v5) & 7;
  v7 = (v5 | 3) - v5;
  v8 = (v6 >> (v5 | 3u)) & 7;
  if (v7 > 0x7D)
  {
    v9 = (8 * (a1 & 7)) | 3;
  }

  else
  {
    v7 = ((8 * (a1 & 7)) | 6) - v5;
    v9 = (8 * (a1 & 7)) | 6;
  }

  if ((v5 | 3uLL) - v5 > 0x7D)
  {
    LOBYTE(v8) = 0;
  }

  v239[1] = v8;
  if (v7 - 126 >= 0xFFFFFFFFFFFFFF7FLL)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 3;
    do
    {
      v14 = 64 - v9;
      if (64 - v9 >= v13)
      {
        v14 = v13;
      }

      v11 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v14)) << v12;
      v12 += v14;
      v10 += (v14 + v9) >> 6;
      v9 = (v14 + v9) & 0x3F;
      v13 -= v14;
    }

    while (v13);
    v7 = v9 - v5;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v239[2] = v11;
  if (v7 + (v10 << 6) - 128 >= 0xFFFFFFFFFFFFFF7FLL)
  {
    v16 = v9 + 1;
    v17 = *(v4 + 8 * v10) >> v9;
    v9 = (v9 + 1) & 0x3F;
    v10 += v16 >> 6;
    v15 = v17 & 1;
  }

  else
  {
    v15 = 0;
  }

  v18 = 0;
  v19 = a3 & 0xFFFFFFFD;
  v239[3] = v15;
  v20 = 10;
  do
  {
    v23 = AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)13,(AGXTextureFootprint)3>::compBits[v18];
    *(&v253 + v18) = v23;
    v24 = v239[v18];
    if (v24)
    {
      LODWORD(v25) = 0;
      v26 = 1;
    }

    else
    {
      v25 = (0x200020002uLL >> (8 * ((v23 - 8) & 0x1Fu))) & 2;
      if ((v23 - 8) <= 4)
      {
        v26 = v23;
      }

      else
      {
        v26 = 1;
      }

      if ((v23 - 8) > 4)
      {
        LODWORD(v25) = 0;
      }
    }

    v27 = 0;
    if ((v26 & 1) == 0 && v9 - v5 + (v10 << 6) + v25 <= 0x80)
    {
      v28 = 0;
      v29 = 0;
      v30 = v25;
      do
      {
        v31 = 64 - v9;
        if (64 - v9 >= v30)
        {
          v31 = v30;
        }

        v28 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v31)) << v29;
        v29 += v31;
        v10 += (v31 + v9) >> 6;
        v9 = (v31 + v9) & 0x3F;
        v30 -= v31;
      }

      while (v30);
      v27 = v28 & 3;
    }

    v32 = 0;
    v257[v18] = 0;
    if (v23 <= 11)
    {
      if (v23 == 2)
      {
        *(&v262 + v18) = v24 & 1;
        v22 = 5;
        goto LABEL_20;
      }

      if (v23 == 8 || v23 == 10)
      {
        v33 = v24 & 7;
        if (v33)
        {
          v32 = v33 + 2;
        }

        else if (v27 > 1)
        {
          if (v27 == 2)
          {
            v32 = 1;
          }

          else
          {
            v32 = 2;
          }
        }

        else
        {
          v32 = 0;
          if (v27)
          {
            v257[v18] = ~(-1 << v23);
          }
        }
      }

      goto LABEL_45;
    }

    if (v23 != 12)
    {
      if (v23 == 16 || v23 == 32)
      {
        v32 = v24 & 0xF;
      }

LABEL_45:
      v22 = 0;
      *(&v262 + v18) = v32;
      if (v23 > 15)
      {
        if (v23 == 16)
        {
          v22 = 3;
        }

        else if (v23 == 32)
        {
          v22 = 4;
        }
      }

      else
      {
        v22 = v23 == 10;
      }

      goto LABEL_20;
    }

    v21 = (v24 & 7) + 3;
    if ((v24 & 7) == 0)
    {
      v21 = v27;
    }

    *(&v262 + v18) = v21;
    v22 = 2;
LABEL_20:
    v20 += v25;
    *(&v258 + v18++) = v22;
  }

  while (v18 != 4);
  v251 = 0;
  v252 = 0;
  v249 = 0;
  v250 = 0;
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::deriveLossyDQuadBitSharing(&v258, &v262, &v251, &v249);
  v34 = v262;
  v35 = &kDQuadParamTable[160 * v258 + 10 * v262];
  v37 = v35[4];
  v36 = v35[5];
  v38 = v249 - v251;
  if (v249 - v251 < 0)
  {
    v40 = &kDQuadParamTable[160 * v258 + 10 * v262];
    if (v40[7] >= v251 - v249)
    {
      v39 = v36;
    }

    else
    {
      v39 = v36 - 1;
      if (!v40[8])
      {
        v38 = -1;
LABEL_61:
        v37 += v38;
      }
    }
  }

  else
  {
    v39 = v36;
    if (v38)
    {
      v39 = v38 + v36;
      goto LABEL_61;
    }
  }

  v41 = v253;
  if (v253 >= v37)
  {
    v42 = v37;
  }

  else
  {
    v42 = v253;
  }

  LODWORD(v247) = v42;
  if (v36)
  {
    v43 = v253;
  }

  else
  {
    v43 = 0;
  }

  if (v43 >= v39)
  {
    v43 = v39;
  }

  LODWORD(v245) = v43;
  v44 = &kDQuadParamTable[160 * v259 + 10 * v263];
  v46 = v44[4];
  v45 = v44[5];
  v47 = HIDWORD(v249) - HIDWORD(v251);
  if (HIDWORD(v249) - HIDWORD(v251) < 0)
  {
    v49 = &kDQuadParamTable[160 * v259 + 10 * v263];
    if (v49[7] >= HIDWORD(v251) - HIDWORD(v249))
    {
      v48 = v45;
    }

    else
    {
      v48 = v45 - 1;
      if (!v49[8])
      {
        v47 = -1;
LABEL_77:
        v46 += v47;
      }
    }
  }

  else
  {
    v48 = v45;
    if (v47)
    {
      v48 = v47 + v45;
      goto LABEL_77;
    }
  }

  v237 = v263;
  v50 = v254;
  if (v254 >= v46)
  {
    v51 = v46;
  }

  else
  {
    v51 = v254;
  }

  HIDWORD(v247) = v51;
  if (v45)
  {
    v52 = v254;
  }

  else
  {
    v52 = 0;
  }

  if (v52 >= v48)
  {
    v52 = v48;
  }

  HIDWORD(v245) = v52;
  v53 = v264;
  v54 = &kDQuadParamTable[160 * v260 + 10 * v264];
  v56 = v54[4];
  v55 = v54[5];
  v57 = v250 - v252;
  if (v250 - v252 < 0)
  {
    v59 = &kDQuadParamTable[160 * v260 + 10 * v264];
    if (v59[7] >= v252 - v250)
    {
      v58 = v55;
    }

    else
    {
      v58 = v55 - 1;
      if (!v59[8])
      {
        v57 = -1;
LABEL_93:
        v56 += v57;
      }
    }
  }

  else
  {
    v58 = v55;
    if (v57)
    {
      v58 = v57 + v55;
      goto LABEL_93;
    }
  }

  v60 = v255;
  if (v255 >= v56)
  {
    v61 = v56;
  }

  else
  {
    v61 = v255;
  }

  LODWORD(v248) = v61;
  if (v55)
  {
    v62 = v255;
  }

  else
  {
    v62 = 0;
  }

  if (v62 >= v58)
  {
    v62 = v58;
  }

  LODWORD(v246) = v62;
  v63 = v265;
  v64 = &kDQuadParamTable[160 * v261 + 10 * v265];
  v66 = v64[4];
  v65 = v64[5];
  v67 = HIDWORD(v250) - HIDWORD(v252);
  if (HIDWORD(v250) - HIDWORD(v252) < 0)
  {
    v70 = &kDQuadParamTable[160 * v261 + 10 * v265];
    if (v70[7] >= HIDWORD(v252) - HIDWORD(v250))
    {
      v68 = v65;
      v34 = v262;
    }

    else
    {
      v68 = v65 - 1;
      v34 = v262;
      if (!v70[8])
      {
        v69 = -1;
LABEL_109:
        v66 += v69;
      }
    }
  }

  else
  {
    v68 = v65;
    if (HIDWORD(v250) != HIDWORD(v252))
    {
      v68 = v67 + v65;
      v69 = HIDWORD(v250) - HIDWORD(v252);
      goto LABEL_109;
    }
  }

  v71 = v256;
  if (v256 < v66)
  {
    v66 = v256;
  }

  HIDWORD(v248) = v66;
  if (v65)
  {
    v72 = v256;
  }

  else
  {
    v72 = 0;
  }

  if (v72 >= v68)
  {
    v72 = v68;
  }

  HIDWORD(v246) = v72;
  if (v265 == 1 && v67 <= 1)
  {
    v236 = v264;
    v235 = v255;
    v234 = v265;
    v73 = v256;
    v74 = v253;
    v75 = v34;
    fprintf(*MEMORY[0x29EDCA610], "lossy decompress dquad warning: invalid 2-bit region (mode[3]=%d end_level[3]=%d start_level[3]=%d\n", 1, HIDWORD(v250), HIDWORD(v252));
    v34 = v75;
    v41 = v74;
    v71 = v73;
    v63 = v234;
    v60 = v235;
    v53 = v236;
    v72 = 0;
    v62 = 0;
    v52 = 0;
    v43 = 0;
    v66 = 0;
    v61 = 0;
    v51 = 0;
    v42 = 0;
    v247 = 0;
    v248 = 0;
    v245 = 0;
    v246 = 0;
  }

  v243 = 0;
  v244 = 0;
  if (v34 || v41 - 8 > 4)
  {
    if (v42 <= 0x20)
    {
      v76 = 0;
      if (v42)
      {
        v77 = v42;
        if (v9 - v5 + (v10 << 6) + v42 <= 0x80)
        {
          v76 = 0;
          v78 = 0;
          do
          {
            v79 = 64 - v9;
            if (64 - v9 >= v77)
            {
              v79 = v77;
            }

            v76 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v79)) << v78;
            v78 += v79;
            v10 += (v79 + v9) >> 6;
            v9 = (v79 + v9) & 0x3F;
            v77 -= v79;
          }

          while (v77);
        }
      }
    }

    else
    {
      v76 = 0;
    }

    LODWORD(v243) = v76 << (v41 - v42);
    v20 += v42;
    if (!v237)
    {
      goto LABEL_137;
    }

LABEL_140:
    if (v51 <= 0x20)
    {
      v80 = 0;
      if (v51)
      {
        v81 = v51;
        if (v9 - v5 + (v10 << 6) + v51 <= 0x80)
        {
          v80 = 0;
          v82 = 0;
          do
          {
            v83 = 64 - v9;
            if (64 - v9 >= v81)
            {
              v83 = v81;
            }

            v80 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v83)) << v82;
            v82 += v83;
            v10 += (v83 + v9) >> 6;
            v9 = (v83 + v9) & 0x3F;
            v81 -= v83;
          }

          while (v81);
        }
      }
    }

    else
    {
      v80 = 0;
    }

    HIDWORD(v243) = v80 << (v50 - v51);
    v20 += v51;
    if (!v53)
    {
      goto LABEL_149;
    }

LABEL_152:
    if (v61 <= 0x20)
    {
      v84 = 0;
      if (v61)
      {
        v85 = v61;
        if (v9 - v5 + (v10 << 6) + v61 <= 0x80)
        {
          v84 = 0;
          v86 = 0;
          do
          {
            v87 = 64 - v9;
            if (64 - v9 >= v85)
            {
              v87 = v85;
            }

            v84 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v87)) << v86;
            v86 += v87;
            v10 += (v87 + v9) >> 6;
            v9 = (v87 + v9) & 0x3F;
            v85 -= v87;
          }

          while (v85);
        }
      }
    }

    else
    {
      v84 = 0;
    }

    LODWORD(v244) = v84 << (v60 - v61);
    v20 += v61;
    if (!v63)
    {
      goto LABEL_161;
    }

LABEL_163:
    if (v66 <= 0x20)
    {
      v88 = 0;
      if (v66)
      {
        v89 = v66;
        if (v9 - v5 + (v10 << 6) + v66 <= 0x80)
        {
          v88 = 0;
          v90 = 0;
          do
          {
            v91 = 64 - v9;
            if (64 - v9 >= v89)
            {
              v91 = v89;
            }

            v88 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v91)) << v90;
            v90 += v91;
            v10 += (v91 + v9) >> 6;
            v9 = (v91 + v9) & 0x3F;
            v89 -= v91;
          }

          while (v89);
        }
      }
    }

    else
    {
      v88 = 0;
    }

    HIDWORD(v244) = v88 << (v71 - v66);
    v20 += v66;
  }

  else
  {
    LODWORD(v243) = v257[0];
    if (v237)
    {
      goto LABEL_140;
    }

LABEL_137:
    if (v50 - 8 >= 5)
    {
      goto LABEL_140;
    }

    HIDWORD(v243) = v257[1];
    if (v53)
    {
      goto LABEL_152;
    }

LABEL_149:
    if (v60 - 8 >= 5)
    {
      goto LABEL_152;
    }

    LODWORD(v244) = v257[2];
    if (v63)
    {
      goto LABEL_163;
    }

LABEL_161:
    if (v71 - 8 >= 5)
    {
      goto LABEL_163;
    }

    HIDWORD(v244) = v257[3];
  }

  v242 = 0;
  v241 = 0;
  if (v43)
  {
    if ((v9 - v5 + (v10 << 6) + 3) <= 0x80)
    {
      v92 = 0;
      v93 = 0;
      v94 = 3;
      do
      {
        v95 = 64 - v9;
        if (64 - v9 >= v94)
        {
          v95 = v94;
        }

        v92 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v95)) << v93;
        v93 += v95;
        v10 += (v95 + v9) >> 6;
        v9 = (v95 + v9) & 0x3F;
        v94 -= v95;
      }

      while (v94);
    }

    else
    {
      v92 = 0;
    }

    LODWORD(v241) = v92;
    v20 += 3;
  }

  if (v52)
  {
    if ((v9 - v5 + (v10 << 6) + 3) <= 0x80)
    {
      v96 = 0;
      v97 = 0;
      v98 = 3;
      do
      {
        v99 = 64 - v9;
        if (64 - v9 >= v98)
        {
          v99 = v98;
        }

        v96 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v99)) << v97;
        v97 += v99;
        v10 += (v99 + v9) >> 6;
        v9 = (v99 + v9) & 0x3F;
        v98 -= v99;
      }

      while (v98);
    }

    else
    {
      v96 = 0;
    }

    HIDWORD(v241) = v96;
    v20 += 3;
  }

  if (v62)
  {
    if ((v9 - v5 + (v10 << 6) + 3) <= 0x80)
    {
      v100 = 0;
      v101 = 0;
      v102 = 3;
      do
      {
        v103 = 64 - v9;
        if (64 - v9 >= v102)
        {
          v103 = v102;
        }

        v100 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v103)) << v101;
        v101 += v103;
        v10 += (v103 + v9) >> 6;
        v9 = (v103 + v9) & 0x3F;
        v102 -= v103;
      }

      while (v102);
    }

    else
    {
      v100 = 0;
    }

    LODWORD(v242) = v100;
    v20 += 3;
  }

  if (v72)
  {
    if ((v9 - v5 + (v10 << 6) + 3) <= 0x80)
    {
      v104 = 0;
      v105 = 0;
      v106 = 3;
      do
      {
        v107 = 64 - v9;
        if (64 - v9 >= v106)
        {
          v107 = v106;
        }

        v104 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v107)) << v105;
        v105 += v107;
        v10 += (v107 + v9) >> 6;
        v9 = (v107 + v9) & 0x3F;
        v106 -= v107;
      }

      while (v106);
    }

    else
    {
      v104 = 0;
    }

    HIDWORD(v242) = v104;
    v20 += 3;
  }

  v108 = 0;
  v109 = v9 + (v10 << 6) + (128 - v20) % 7u;
  memset(v240, 0, sizeof(v240));
  while (2)
  {
    v112 = v109 >> 6;
    v113 = v109 & 0x3F;
    if (v43)
    {
      if (v43 <= 0x20 && v113 - v5 + (v109 & 0xFFFFFFFFFFFFFFC0) + v43 <= 0x80)
      {
        v114 = 0;
        v115 = 0;
        v116 = v43;
        do
        {
          v117 = 64 - v113;
          if (64 - v113 >= v116)
          {
            v117 = v116;
          }

          v114 |= ((*(v4 + 8 * v112) >> v113) & ~(-1 << v117)) << v115;
          v115 += v117;
          v118 = v117 + v113;
          v112 += v118 >> 6;
          v113 = v118 & 0x3F;
          v116 -= v117;
        }

        while (v116);
      }

      else
      {
        v114 = 0;
      }

      *(v240 + v108) = v114;
    }

    v119 = v240 + v108;
    if (v52)
    {
      if (v52 <= 0x20 && v113 - v5 + (v112 << 6) + v52 <= 0x80)
      {
        v120 = 0;
        v121 = 0;
        v122 = v52;
        do
        {
          v123 = 64 - v113;
          if (64 - v113 >= v122)
          {
            v123 = v122;
          }

          v120 |= ((*(v4 + 8 * v112) >> v113) & ~(-1 << v123)) << v121;
          v121 += v123;
          v124 = v123 + v113;
          v112 += v124 >> 6;
          v113 = v124 & 0x3F;
          v122 -= v123;
        }

        while (v122);
      }

      else
      {
        v120 = 0;
      }

      v119[7] = v120;
      v111 = v52 + v43;
      if (v62)
      {
LABEL_228:
        if (v62 <= 0x20 && v113 - v5 + (v112 << 6) + v62 <= 0x80)
        {
          v125 = 0;
          v126 = 0;
          v127 = v62;
          do
          {
            v128 = 64 - v113;
            if (64 - v113 >= v127)
            {
              v128 = v127;
            }

            v125 |= ((*(v4 + 8 * v112) >> v113) & ~(-1 << v128)) << v126;
            v126 += v128;
            v129 = v128 + v113;
            v112 += v129 >> 6;
            v113 = v129 & 0x3F;
            v127 -= v128;
          }

          while (v127);
        }

        else
        {
          v125 = 0;
        }

        v119[14] = v125;
        v111 += v62;
      }
    }

    else
    {
      v111 = v43;
      if (v62)
      {
        goto LABEL_228;
      }
    }

    if (v72)
    {
      if (v72 > 0x20 || v113 - v5 + (v112 << 6) + v72 > 0x80)
      {
        v110 = 0;
      }

      else
      {
        v110 = 0;
        v130 = 0;
        v131 = v72;
        do
        {
          v132 = 64 - v113;
          if (64 - v113 >= v131)
          {
            v132 = v131;
          }

          v110 |= ((*(v4 + 8 * v112) >> v113) & ~(-1 << v132)) << v130;
          v130 += v132;
          v133 = v132 + v113;
          v112 += v133 >> 6;
          v113 = v133 & 0x3F;
          v131 -= v132;
        }

        while (v131);
      }

      v119[21] = v110;
      v111 += v72;
    }

    v109 = (v113 | (v112 << 6)) + (128 - v20) / 7u - v111;
    if (++v108 != 7)
    {
      continue;
    }

    break;
  }

  v134 = 0;
  v135 = 0;
  v136 = a2 + 112;
  result = kDQuadParamTable;
  while (2)
  {
    v142 = *&kDQuadParamTable[160 * *(&v258 + v134) + 2 + 10 * *(&v262 + v134)];
    v143 = *(&v245 + v134);
    if (v142 >> v143 <= 1)
    {
      v144 = 1;
    }

    else
    {
      v144 = v142 >> v143;
    }

    v145 = *(&v253 + v134);
    v146 = v144 >> 1;
    v147 = (1 << (v145 - *(&v247 + v134))) >> 1;
    if (v144 >> 1 < v147)
    {
      v147 = v144 >> 1;
    }

    v148 = (1 << (v145 - 1));
    v149 = *(&v243 + v134);
    v150 = v148 - v149;
    v151 = 1 << v145;
    v152 = (1 << v145) + 0xFFFFFFFFLL;
    if (v149)
    {
      v153 = v147;
    }

    else
    {
      v153 = 0;
    }

    v154 = v149 == v148;
    v155 = v145 == 16;
    if (v145 == 16)
    {
      v156 = 31744;
    }

    else
    {
      v156 = 2139095040;
    }

    if (v145 == 16)
    {
      v157 = 64512;
    }

    else
    {
      v157 = 4286578688;
    }

    v158 = 2143289344;
    if (v155)
    {
      v158 = 32256;
    }

    v159 = 65024;
    if (!v155)
    {
      v159 = 4290772992;
    }

    v160 = (v157 - 1);
    if (v143)
    {
      v161 = v142 + v149;
      v162 = -1 << v143;
      v163 = *(&v241 + v134);
      v164 = v150 / v144;
      if (v163)
      {
        v165 = *(v240 + v135);
        v166 = v164 == v165;
        if (!(v149 | v165))
        {
          v167 = 0;
          goto LABEL_313;
        }

        if (v161 >= v151 && (v162 ^ v165) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v172 = 1;
          v167 = v151 - 1;
        }

        else
        {
          v167 = v146 + v144 * v165;
LABEL_313:
          v172 = 1;
        }
      }

      else
      {
        v172 = 0;
        v167 = v153;
        v166 = v149 == v148;
      }

      v175 = v167 + v149;
      v176 = v175;
      if (a3 == 4)
      {
        v177 = v175 < v156 || v175 >= v158;
        v176 = (v156 - 1);
        if (v177)
        {
          v178 = v175 < v158 || v175 >= v148;
          v176 = v148;
          if (v178)
          {
            if (v175 < v159 && v175 >= v157)
            {
              v176 = (v157 - 1);
            }

            else
            {
              v176 = v175;
            }
          }
        }
      }

      if (v176 >= v151)
      {
        v180 = v152;
      }

      else
      {
        v180 = v176;
      }

      if (v166)
      {
        v181 = 0;
      }

      else
      {
        v181 = v180 ^ v148;
      }

      if (v19 != 1)
      {
        v181 = v180;
      }

      *(a2 + v134) = v181;
      if (v163 == 1)
      {
        v182 = v153;
        v183 = v149 == v148;
      }

      else
      {
        v184 = *((v240 | (4 * v172)) + v135);
        v183 = v164 == v184;
        if (v149 | v184)
        {
          if (v161 < v151 || (v182 = v151 - 1, (v162 ^ v184) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v182 = v146 + v144 * v184;
          }
        }

        else
        {
          v182 = 0;
        }

        ++v172;
      }

      v185 = v182 + v149;
      v186 = v185;
      if (a3 == 4)
      {
        v187 = v185 < v156 || v185 >= v158;
        v186 = (v156 - 1);
        if (v187)
        {
          v188 = v185 < v158 || v185 >= v148;
          v186 = v148;
          if (v188)
          {
            if (v185 < v159 && v185 >= v157)
            {
              v186 = (v157 - 1);
            }

            else
            {
              v186 = v185;
            }
          }
        }
      }

      if (v186 >= v151)
      {
        v190 = v152;
      }

      else
      {
        v190 = v186;
      }

      if (v183)
      {
        v191 = 0;
      }

      else
      {
        v191 = v190 ^ v148;
      }

      if (v19 != 1)
      {
        v191 = v190;
      }

      *(v136 + v134 - 96) = v191;
      if (v163 == 2)
      {
        v192 = v153;
        v193 = v149 == v148;
      }

      else
      {
        v194 = *((v240 | (4 * v172)) + v135);
        v193 = v164 == v194;
        if (v149 | v194)
        {
          if (v161 < v151 || (v192 = v151 - 1, (v162 ^ v194) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v192 = v146 + v144 * v194;
          }
        }

        else
        {
          v192 = 0;
        }

        ++v172;
      }

      v195 = v192 + v149;
      v196 = v195;
      if (a3 == 4)
      {
        if (v195 < v156 || (v196 = (v156 - 1), v195 >= v158))
        {
          if (v195 < v158 || (v196 = v148, v195 >= v148))
          {
            if (v195 < v159 && v195 >= v157)
            {
              v196 = (v157 - 1);
            }

            else
            {
              v196 = v195;
            }
          }
        }
      }

      if (v196 >= v151)
      {
        v198 = v152;
      }

      else
      {
        v198 = v196;
      }

      if (v193)
      {
        v199 = 0;
      }

      else
      {
        v199 = v198 ^ v148;
      }

      if (v19 != 1)
      {
        v199 = v198;
      }

      *(v136 + v134 - 80) = v199;
      if (v163 == 3)
      {
        v200 = v153;
        v201 = v149 == v148;
      }

      else
      {
        v202 = *(v240 + 4 * v172 + v135);
        v201 = v164 == v202;
        if (v149 | v202)
        {
          if (v161 < v151 || (v200 = v151 - 1, (v162 ^ v202) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v200 = v146 + v144 * v202;
          }
        }

        else
        {
          v200 = 0;
        }

        ++v172;
      }

      v203 = v200 + v149;
      v204 = v203;
      if (a3 == 4)
      {
        if (v203 < v156 || (v204 = (v156 - 1), v203 >= v158))
        {
          if (v203 < v158 || (v204 = v148, v203 >= v148))
          {
            if (v203 < v159 && v203 >= v157)
            {
              v204 = (v157 - 1);
            }

            else
            {
              v204 = v203;
            }
          }
        }
      }

      if (v204 >= v151)
      {
        v206 = v152;
      }

      else
      {
        v206 = v204;
      }

      if (v201)
      {
        v207 = 0;
      }

      else
      {
        v207 = v206 ^ v148;
      }

      if (v19 != 1)
      {
        v207 = v206;
      }

      *(v136 + v134 - 64) = v207;
      if (v163 == 4)
      {
        v208 = v153;
        v209 = v149 == v148;
      }

      else
      {
        v210 = *(v240 + 4 * v172 + v135);
        v209 = v164 == v210;
        if (v149 | v210)
        {
          if (v161 < v151 || (v208 = v151 - 1, (v162 ^ v210) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v208 = v146 + v144 * v210;
          }
        }

        else
        {
          v208 = 0;
        }

        ++v172;
      }

      v211 = v208 + v149;
      v212 = v211;
      if (a3 == 4)
      {
        if (v211 < v156 || (v212 = (v156 - 1), v211 >= v158))
        {
          if (v211 < v158 || (v212 = v148, v211 >= v148))
          {
            if (v211 < v159 && v211 >= v157)
            {
              v212 = (v157 - 1);
            }

            else
            {
              v212 = v211;
            }
          }
        }
      }

      if (v212 >= v151)
      {
        v214 = v152;
      }

      else
      {
        v214 = v212;
      }

      if (v209)
      {
        v215 = 0;
      }

      else
      {
        v215 = v214 ^ v148;
      }

      if (v19 != 1)
      {
        v215 = v214;
      }

      *(v136 + v134 - 48) = v215;
      if (v163 == 5)
      {
        v216 = v153;
        v217 = v149 == v148;
      }

      else
      {
        v218 = *(v240 + 4 * v172 + v135);
        v217 = v164 == v218;
        if (v149 | v218)
        {
          if (v161 < v151 || (v216 = v151 - 1, (v162 ^ v218) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v216 = v146 + v144 * v218;
          }
        }

        else
        {
          v216 = 0;
        }

        ++v172;
      }

      v219 = v216 + v149;
      v220 = v219;
      if (a3 == 4)
      {
        if (v219 < v156 || (v220 = (v156 - 1), v219 >= v158))
        {
          if (v219 < v158 || (v220 = v148, v219 >= v148))
          {
            if (v219 < v159 && v219 >= v157)
            {
              v220 = (v157 - 1);
            }

            else
            {
              v220 = v219;
            }
          }
        }
      }

      if (v220 >= v151)
      {
        v222 = v152;
      }

      else
      {
        v222 = v220;
      }

      if (v217)
      {
        v223 = 0;
      }

      else
      {
        v223 = v222 ^ v148;
      }

      if (v19 != 1)
      {
        v223 = v222;
      }

      *(v136 + v134 - 32) = v223;
      if (v163 == 6)
      {
        v224 = v153;
        v225 = v149 == v148;
      }

      else
      {
        v226 = *(v240 + 4 * v172 + v135);
        v225 = v164 == v226;
        if (v149 | v226)
        {
          if (v161 < v151 || (v224 = v151 - 1, (v162 ^ v226) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v224 = v146 + v144 * v226;
          }
        }

        else
        {
          v224 = 0;
        }

        ++v172;
      }

      v227 = v224 + v149;
      v228 = v227;
      if (a3 == 4)
      {
        if (v227 < v156 || (v228 = (v156 - 1), v227 >= v158))
        {
          if (v227 < v158 || (v228 = v148, v227 >= v148))
          {
            if (v227 < v159 && v227 >= v157)
            {
              v228 = (v157 - 1);
            }

            else
            {
              v228 = v227;
            }
          }
        }
      }

      if (v228 >= v151)
      {
        v230 = v152;
      }

      else
      {
        v230 = v228;
      }

      if (v225)
      {
        v231 = 0;
      }

      else
      {
        v231 = v230 ^ v148;
      }

      if (v19 != 1)
      {
        v231 = v230;
      }

      *(v136 + v134 - 16) = v231;
      if (v163 != 7)
      {
        v232 = *(v240 + 4 * v172 + v135);
        v154 = v164 == v232;
        if (v149 | v232)
        {
          if (v161 >= v151 && (v162 ^ v232) == 0xFFFFFFFFFFFFFFFFLL)
          {
            v153 = v151 - 1;
          }

          else
          {
            v153 = v146 + v144 * v232;
          }
        }

        else
        {
          v153 = 0;
        }
      }

      v233 = v153 + v149;
      v139 = v153 + v149;
      if (a3 == 4)
      {
        if (v233 < v156 || (v139 = (v156 - 1), v233 >= v158))
        {
          if (v233 < v158 || (v139 = v148, v233 >= v148))
          {
            if (v233 < v159 && v233 >= v157)
            {
              v139 = (v157 - 1);
            }

            else
            {
              v139 = v153 + v149;
            }
          }
        }
      }

      if (v139 >= v151)
      {
        LODWORD(v140) = v152;
      }

      else
      {
        LODWORD(v140) = v139;
      }

      v141 = v140 ^ v148;
      if (v154)
      {
        v141 = 0;
      }

      if (v19 == 1)
      {
        LODWORD(v140) = v141;
      }

      result = kDQuadParamTable;
    }

    else
    {
      v169 = v158 <= v149 && v149 < v148;
      v171 = v149 >= v157 && v159 > v149;
      if (a3 == 4)
      {
        if (v149 < v156 || v158 <= v149)
        {
          if (v169)
          {
            if (v151 <= v148)
            {
              LODWORD(v140) = v152;
            }

            else
            {
              LODWORD(v140) = v148;
            }
          }

          else
          {
            if (v171)
            {
              v140 = v160;
            }

            else
            {
              v140 = *(&v243 + v134);
            }

            if (v140 >= v151)
            {
              LODWORD(v140) = v152;
            }
          }
        }

        else if (v151 <= (v156 - 1))
        {
          LODWORD(v140) = v152;
        }

        else
        {
          LODWORD(v140) = v156 - 1;
        }
      }

      else
      {
        if (v151 <= v149)
        {
          LODWORD(v140) = v152;
        }

        else
        {
          LODWORD(v140) = *(&v243 + v134);
        }

        v173 = v140 ^ v148;
        if (v144 > v150)
        {
          v173 = 0;
        }

        if (v19 == 1)
        {
          LODWORD(v140) = v173;
        }
      }

      v174 = v136 + v134;
      *(v174 - 112) = v140;
      *(v174 - 96) = v140;
      *(v174 - 80) = v140;
      *(v174 - 64) = v140;
      *(v174 - 48) = v140;
      *(v174 - 32) = v140;
      *(v174 - 16) = v140;
    }

    *(v136 + v134) = v140;
    v135 += 28;
    v134 += 4;
    if (v135 != 112)
    {
      continue;
    }

    return result;
  }
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v457 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    v7 = a4;
    if (a4 < 0xF0)
    {
      if (a4 == 127)
      {
        v27 = *a3;
        v28 = *(a3 + 16);
        v29 = *(a3 + 32);
        v30 = *(a3 + 48);
        v31 = *(a3 + 64);
        v32 = *(a3 + 80);
        v33 = *(a3 + 96);
        v34 = *(a3 + 112);
        v35 = (a1 + a2);
        *a1 = vzip1q_s64(*a3, v28);
        *(a1 + 16) = vzip1q_s64(v31, v32);
        v36 = (a1 + 2 * a2);
        *v35 = vzip2q_s64(v27, v28);
        v35[1] = vzip2q_s64(v31, v32);
        *v36 = vzip1q_s64(v29, v30);
        v36[1] = vzip1q_s64(v33, v34);
        v37 = (v36 + a2);
        *v37 = vzip2q_s64(v29, v30);
        v37[1] = vzip2q_s64(v33, v34);
        return 128;
      }

      else if (a4 == 3)
      {
        v14 = vld1q_dup_f32(a3);
        *a1 = v14;
        *(a1 + 16) = v14;
        v15 = (a1 + a2);
        *v15 = v14;
        v15[1] = v14;
        v16 = (a1 + 2 * a2);
        *v16 = v14;
        v16[1] = v14;
        v17 = (a1 + a2 + 2 * a2);
        *v17 = v14;
        v17[1] = v14;
        return 4;
      }

      else
      {
        v422.i8[8] = 0;
        v422.i64[0] = (8 * (a3 & 7)) | 0x200;
        v421.i64[0] = 8 * (a3 & 7);
        v421.i64[1] = a3 & 0xFFFFFFFFFFFFFFF8;
        result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)13,AGX::AppleCompressionGen2::Vec<short>>(&v446, v451, &v445, &v421, a4);
        v39.i64[0] = 0x3000300030003;
        v39.i64[1] = 0x3000300030003;
        v40 = v446;
        v41 = vandq_s8(v446, v39);
        v42 = vbicq_s8(v451[0], vceqq_s16(v41, v39));
        v451[0] = v42;
        v447 = v42;
        v448 = v42;
        v449 = v42;
        v450 = v42;
        v43.i64[0] = 0x202020202020202;
        v43.i64[1] = 0x202020202020202;
        v44 = vandq_s8(vmovl_s16(vtst_s16(*v446.i8, 0x4000400040004)), v43);
        v45 = v421.i64[0];
        if (vmaxvq_s8(v44) < 1)
        {
          v59.i64[0] = -1;
          v59.i64[1] = -1;
          v60.i64[0] = -1;
          v60.i64[1] = -1;
          v61.i64[0] = -1;
          v61.i64[1] = -1;
          v62.i64[0] = -1;
          v62.i64[1] = -1;
        }

        else
        {
          v46 = vmovl_u8(*&vpaddq_s8(v44, v44));
          v47 = vmovl_u16(*&vpaddq_s16(v46, v46));
          v48 = vpaddq_s32(v47, v47).u64[0];
          v49.i64[0] = v48;
          v49.i64[1] = HIDWORD(v48);
          v50 = v49;
          v51 = vaddvq_s64(v49);
          v52 = v51;
          v53 = v421.i64[0] + v51;
          if (v422.i64[0])
          {
            _CF = v422.i64[0] >= v53;
          }

          else
          {
            _CF = 1;
          }

          v55 = _CF;
          if (v51 <= 0x80 && (v55 & 1) != 0)
          {
            v38.i64[0] = 63;
            v56 = (v421.i64[1] + 8 * (v421.i64[0] >> 6));
            v57 = vaddq_s64(vdupq_lane_s64(vandq_s8(v421.u64[0], v38).i64[0], 0), vzip1q_s64(0, v50));
            v58 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v56, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v57)), vshlq_u64(vdupq_lane_s64(v56->i64[0], 0), vnegq_s64(v57)));
            if ((v421.i8[0] & 0x3F) + v52 >= 0x81)
            {
              v58 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v56[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v57)), vshlq_u64(vdupq_laneq_s64(v56[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v57))), v58);
            }

            v45 = v53;
          }

          else
          {
            v422.i8[8] = 1;
            v58 = 0uLL;
          }

          v63 = vzip1_s32(*v47.i8, *&vextq_s8(v47, v47, 8uLL));
          v64.i64[0] = v63.u32[0];
          v64.i64[1] = v63.u32[1];
          v65 = vshlq_u64(v58, vnegq_s64(v64));
          v66 = vuzp1q_s32(vzip1q_s64(v58, v65), vzip2q_s64(v58, v65));
          v67 = vshlq_u32(v66, vnegq_s32((*&v46 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
          v68 = vuzp1q_s16(vzip1q_s32(v66, v67), vzip2q_s32(v66, v67));
          v69 = vshlq_u16(v68, vnegq_s16((*&v44 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
          v70 = vuzp1q_s8(vzip1q_s16(v68, v69), vzip2q_s16(v68, v69));
          v69.i64[0] = 0x101010101010101;
          v69.i64[1] = 0x101010101010101;
          v71 = vshlq_s8(v69, v44);
          v69.i64[0] = -1;
          v69.i64[1] = -1;
          v72 = vqtbl1q_s8(vandq_s8(vaddq_s8(v71, v69), v70), xmmword_29D2F0F70);
          *v70.i8 = vdup_lane_s32(*v72.i8, 0);
          *v69.i8 = vdup_lane_s32(*v72.i8, 1);
          v73 = vdupq_laneq_s32(v72, 2).u64[0];
          v72.i64[0] = vdupq_laneq_s32(v72, 3).u64[0];
          v447 = vsubw_s8(v447, *v70.i8);
          v448 = vsubw_s8(v448, *v69.i8);
          v449 = vsubw_s8(v449, v73);
          v450 = vsubw_s8(v450, *v72.i8);
          v62 = vmovl_s8(vceqz_s8(*v70.i8));
          v61 = vmovl_s8(vceqz_s8(*v69.i8));
          v60 = vmovl_s8(vceqz_s8(v73));
          v59 = vmovl_s8(vceqz_s8(*v72.i8));
        }

        v74.i64[0] = 0x8000800080008;
        v74.i64[1] = 0x8000800080008;
        v75 = 0uLL;
        v76 = vandq_s8(vextq_s8(vtstq_s16(v446, v74), 0, 8uLL), v42);
        v77 = vmovl_u16(*&vpaddq_s16(v76, v76));
        v78 = vpaddq_s32(v77, v77).u64[0];
        v79.i64[0] = v78;
        v79.i64[1] = HIDWORD(v78);
        v80 = v79;
        v81 = vaddvq_s64(v79);
        if (v422.i64[0])
        {
          v82 = v422.i64[0] >= v45 + v81;
        }

        else
        {
          v82 = 1;
        }

        v83 = v82;
        if (v81 <= 0x80 && (v83 & 1) != 0)
        {
          v84 = vaddq_s64(vdupq_n_s64(v45 & 0x3F), vzip1q_s64(0, v80));
          v85 = (v421.i64[1] + 8 * (v45 >> 6));
          v75 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v85, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v84)), vshlq_u64(vdupq_lane_s64(v85->i64[0], 0), vnegq_s64(v84)));
          if ((v45 & 0x3F) + v81 >= 0x81)
          {
            v75 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v85[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v84)), vshlq_u64(vdupq_laneq_s64(v85[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v84))), v75);
          }

          v45 += v81;
        }

        else
        {
          v422.i8[8] = 1;
        }

        v86 = vzip1_s32(*v77.i8, *&vextq_s8(v77, v77, 8uLL));
        v87.i64[0] = v86.u32[0];
        v87.i64[1] = v86.u32[1];
        v88 = vshlq_u64(v75, vnegq_s64(v87));
        v89 = vuzp1q_s32(vzip1q_s64(v75, v88), vzip2q_s64(v75, v88));
        v90.i64[0] = 0xFFFF0000FFFFLL;
        v90.i64[1] = 0xFFFF0000FFFFLL;
        v91 = vshlq_u32(v89, vnegq_s32(vandq_s8(v76, v90)));
        v92 = vuzp1q_s16(vzip1q_s32(v89, v91), vzip2q_s32(v89, v91));
        v91.i64[0] = 0xF000F000F000FLL;
        v91.i64[1] = 0xF000F000F000FLL;
        v93.i64[0] = 0x10001000100010;
        v93.i64[1] = 0x10001000100010;
        v94 = vshlq_s16(vshlq_s16(v92, vsubq_s16(v93, v76)), vaddq_s16(v76, v91));
        v453 = v94;
        v95 = v446.i8[0] & 3;
        if (v95 == 2)
        {
          if (v422.i64[0])
          {
            v96 = v45 + 8;
            v97 = v45 + 16;
            if (v422.i64[0] >= v45 + 8)
            {
              v45 += 8;
            }

            else
            {
              v97 = v45 + 8;
            }

            if (v422.i64[0] >= v97)
            {
              v45 = v97;
            }

            if (v422.i64[0] < v96 || v422.i64[0] < v97)
            {
              v422.i8[8] = 1;
            }
          }

          else
          {
            v45 += 16;
          }
        }

        v98 = 0uLL;
        v99 = vextq_s8(0, v447, 8uLL);
        v100 = vmovl_u16(*&vpaddq_s16(v99, v99));
        v101 = vpaddq_s32(v100, v100).u64[0];
        v102.i64[0] = v101;
        v102.i64[1] = HIDWORD(v101);
        v103 = v102;
        v104 = vaddvq_s64(v102);
        v105 = v45 + v104;
        if (v422.i64[0])
        {
          v106 = v422.i64[0] >= v105;
        }

        else
        {
          v106 = 1;
        }

        v107 = v106;
        if (v104 <= 0x80 && (v107 & 1) != 0)
        {
          v108 = v45 & 0x3F;
          v109 = vaddq_s64(vdupq_n_s64(v108), vzip1q_s64(0, v103));
          v110 = v421.i64[1];
          v111 = (v421.i64[1] + 8 * (v45 >> 6));
          v98 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v111, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v109)), vshlq_u64(vdupq_lane_s64(v111->i64[0], 0), vnegq_s64(v109)));
          if (v108 + v104 >= 0x81)
          {
            v98 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v111[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v109)), vshlq_u64(vdupq_laneq_s64(v111[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v109))), v98);
          }

          v112 = v422.i8[8];
          v45 = v105;
        }

        else
        {
          v112 = 1;
          v110 = v421.i64[1];
        }

        v113 = vzip1_s32(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
        v114.i64[0] = v113.u32[0];
        v114.i64[1] = v113.u32[1];
        v115 = vshlq_u64(v98, vnegq_s64(v114));
        v116 = vuzp1q_s32(vzip1q_s64(v98, v115), vzip2q_s64(v98, v115));
        v117.i64[0] = 0xFFFF0000FFFFLL;
        v117.i64[1] = 0xFFFF0000FFFFLL;
        v118 = vshlq_u32(v116, vnegq_s32(vandq_s8(v99, v117)));
        v119.i64[0] = 0xF000F000F000FLL;
        v119.i64[1] = 0xF000F000F000FLL;
        v120.i64[0] = 0x10001000100010;
        v120.i64[1] = 0x10001000100010;
        v121 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v116, v118), vzip2q_s32(v116, v118)), vsubq_s16(v120, v99)), vaddq_s16(v99, v119));
        v429 = v121;
        v122 = vmovl_u16(*&vpaddq_s16(v447, v447));
        v116.i64[0] = vpaddq_s32(v122, v122).u64[0];
        v114.i64[0] = v116.u32[0];
        v114.i64[1] = v116.u32[1];
        v123 = v114;
        v124 = vaddvq_s64(v114);
        v125 = v45 + v124;
        if (v422.i64[0])
        {
          v126 = v422.i64[0] >= v125;
        }

        else
        {
          v126 = 1;
        }

        v127 = v126;
        v128 = 0uLL;
        if (v124 <= 0x80 && v127)
        {
          v129 = v45 & 0x3F;
          v130 = vaddq_s64(vdupq_n_s64(v129), vzip1q_s64(0, v123));
          v131 = (v110 + 8 * (v45 >> 6));
          v132 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v131, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v130)), vshlq_u64(vdupq_lane_s64(v131->i64[0], 0), vnegq_s64(v130)));
          if (v129 + v124 >= 0x81)
          {
            v132 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v131[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v130)), vshlq_u64(vdupq_laneq_s64(v131[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v130))), v132);
          }
        }

        else
        {
          v112 = 1;
          v125 = v45;
          v132 = 0uLL;
        }

        v133 = vzip1_s32(*v122.i8, *&vextq_s8(v122, v122, 8uLL));
        v134.i64[0] = v133.u32[0];
        v134.i64[1] = v133.u32[1];
        v135 = vnegq_s64(v134);
        v136 = vshlq_u64(v132, v135);
        v137 = vuzp1q_s32(vzip1q_s64(v132, v136), vzip2q_s64(v132, v136));
        v138 = vnegq_s32(vandq_s8(v447, v117));
        v139 = vshlq_u32(v137, v138);
        v140 = vuzp1q_s16(vzip1q_s32(v137, v139), vzip2q_s32(v137, v139));
        v141 = vaddq_s16(v447, v119);
        v142 = vsubq_s16(v120, v447);
        v143 = vshlq_s16(vshlq_s16(v140, v142), v141);
        v430 = v143;
        v144 = v125 + v124;
        if (v422.i64[0])
        {
          v145 = v422.i64[0] >= v144;
        }

        else
        {
          v145 = 1;
        }

        v146 = v145;
        if (v124 <= 0x80 && v146)
        {
          v147 = v125 & 0x3F;
          v148 = vaddq_s64(vdupq_n_s64(v147), vzip1q_s64(0, v123));
          v149 = (v110 + 8 * (v125 >> 6));
          v128 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v149, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v148)), vshlq_u64(vdupq_lane_s64(v149->i64[0], 0), vnegq_s64(v148)));
          if (v147 + v124 >= 0x81)
          {
            v128 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v149[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v148)), vshlq_u64(vdupq_laneq_s64(v149[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v148))), v128);
          }
        }

        else
        {
          v112 = 1;
          v144 = v125;
        }

        v150 = vshlq_u64(v128, v135);
        v151 = vuzp1q_s32(vzip1q_s64(v128, v150), vzip2q_s64(v128, v150));
        v152 = vshlq_u32(v151, v138);
        v153 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v151, v152), vzip2q_s32(v151, v152)), v142), v141);
        v431 = v153;
        v154 = v144 + v124;
        if (v422.i64[0])
        {
          v155 = v422.i64[0] >= v154;
        }

        else
        {
          v155 = 1;
        }

        v156 = v155;
        v157 = 0uLL;
        if (v124 <= 0x80 && v156)
        {
          v158 = v144 & 0x3F;
          v159 = vaddq_s64(vdupq_n_s64(v158), vzip1q_s64(0, v123));
          v160 = (v110 + 8 * (v144 >> 6));
          v161 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v160, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v159)), vshlq_u64(vdupq_lane_s64(v160->i64[0], 0), vnegq_s64(v159)));
          if (v158 + v124 >= 0x81)
          {
            v161 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v160[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v159)), vshlq_u64(vdupq_laneq_s64(v160[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v159))), v161);
          }
        }

        else
        {
          v112 = 1;
          v154 = v144;
          v161 = 0uLL;
        }

        v162 = vshlq_u64(v161, v135);
        v163 = vuzp1q_s32(vzip1q_s64(v161, v162), vzip2q_s64(v161, v162));
        v164 = vshlq_u32(v163, v138);
        v165 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v163, v164), vzip2q_s32(v163, v164)), v142), v141);
        v432 = v165;
        v166 = vmovl_u16(*&vpaddq_s16(v448, v448));
        v167 = vpaddq_s32(v166, v166).u64[0];
        v168.i64[0] = v167;
        v168.i64[1] = HIDWORD(v167);
        v169 = v168;
        v170 = vaddvq_s64(v168);
        v171 = v170;
        v172 = v154 + v170;
        if (v422.i64[0])
        {
          v173 = v422.i64[0] >= v172;
        }

        else
        {
          v173 = 1;
        }

        v174 = v173;
        if (v170 <= 0x80 && v174)
        {
          v175 = v154 & 0x3F;
          v176 = vaddq_s64(vdupq_n_s64(v175), vzip1q_s64(0, v169));
          v177 = (v110 + 8 * (v154 >> 6));
          v157 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v177, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v176)), vshlq_u64(vdupq_lane_s64(v177->i64[0], 0), vnegq_s64(v176)));
          if (v175 + v171 >= 0x81)
          {
            v157 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v177[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v176)), vshlq_u64(vdupq_laneq_s64(v177[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v176))), v157);
          }
        }

        else
        {
          v112 = 1;
          v172 = v154;
        }

        v178 = vzip1_s32(*v166.i8, *&vextq_s8(v166, v166, 8uLL));
        v179.i64[0] = v178.u32[0];
        v179.i64[1] = v178.u32[1];
        v180 = vnegq_s64(v179);
        v181 = vshlq_u64(v157, v180);
        v182 = vuzp1q_s32(vzip1q_s64(v157, v181), vzip2q_s64(v157, v181));
        v183.i64[0] = 0xFFFF0000FFFFLL;
        v183.i64[1] = 0xFFFF0000FFFFLL;
        v184 = vnegq_s32(vandq_s8(v448, v183));
        v185 = vshlq_u32(v182, v184);
        v186 = vuzp1q_s16(vzip1q_s32(v182, v185), vzip2q_s32(v182, v185));
        v185.i64[0] = 0xF000F000F000FLL;
        v185.i64[1] = 0xF000F000F000FLL;
        v187 = vaddq_s16(v448, v185);
        v185.i64[0] = 0x10001000100010;
        v185.i64[1] = 0x10001000100010;
        v188 = vsubq_s16(v185, v448);
        v189 = vshlq_s16(vshlq_s16(v186, v188), v187);
        v433 = v189;
        v190 = v172 + v171;
        if (v422.i64[0])
        {
          v191 = v422.i64[0] >= v190;
        }

        else
        {
          v191 = 1;
        }

        v192 = v191;
        v193 = 0uLL;
        if (v171 <= 0x80 && v192)
        {
          v194 = v172 & 0x3F;
          v195 = vaddq_s64(vdupq_n_s64(v194), vzip1q_s64(0, v169));
          v196 = (v110 + 8 * (v172 >> 6));
          v197 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v196, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v195)), vshlq_u64(vdupq_lane_s64(v196->i64[0], 0), vnegq_s64(v195)));
          if (v194 + v171 >= 0x81)
          {
            v197 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v196[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v195)), vshlq_u64(vdupq_laneq_s64(v196[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v195))), v197);
          }
        }

        else
        {
          v112 = 1;
          v190 = v172;
          v197 = 0uLL;
        }

        v198 = vshlq_u64(v197, v180);
        v199 = vuzp1q_s32(vzip1q_s64(v197, v198), vzip2q_s64(v197, v198));
        v200 = vshlq_u32(v199, v184);
        v201 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v199, v200), vzip2q_s32(v199, v200)), v188), v187);
        v434 = v201;
        v202 = v190 + v171;
        if (v422.i64[0])
        {
          v203 = v422.i64[0] >= v202;
        }

        else
        {
          v203 = 1;
        }

        v204 = v203;
        if (v171 <= 0x80 && v204)
        {
          v205 = v190 & 0x3F;
          v206 = vaddq_s64(vdupq_n_s64(v205), vzip1q_s64(0, v169));
          v207 = (v110 + 8 * (v190 >> 6));
          v193 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v207, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v206)), vshlq_u64(vdupq_lane_s64(v207->i64[0], 0), vnegq_s64(v206)));
          if (v205 + v171 >= 0x81)
          {
            v193 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v207[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v206)), vshlq_u64(vdupq_laneq_s64(v207[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v206))), v193);
          }
        }

        else
        {
          v112 = 1;
          v202 = v190;
        }

        v208 = vshlq_u64(v193, v180);
        v209 = vuzp1q_s32(vzip1q_s64(v193, v208), vzip2q_s64(v193, v208));
        v210 = vshlq_u32(v209, v184);
        v211 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v209, v210), vzip2q_s32(v209, v210)), v188), v187);
        v435 = v211;
        v212 = v202 + v171;
        if (v422.i64[0])
        {
          v213 = v422.i64[0] >= v212;
        }

        else
        {
          v213 = 1;
        }

        v214 = v213;
        v215 = 0uLL;
        if (v171 <= 0x80 && v214)
        {
          v216 = v202 & 0x3F;
          v217 = vaddq_s64(vdupq_n_s64(v216), vzip1q_s64(0, v169));
          v218 = (v110 + 8 * (v202 >> 6));
          v219 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v218, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v217)), vshlq_u64(vdupq_lane_s64(v218->i64[0], 0), vnegq_s64(v217)));
          if (v216 + v171 >= 0x81)
          {
            v219 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v218[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v217)), vshlq_u64(vdupq_laneq_s64(v218[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v217))), v219);
          }
        }

        else
        {
          v112 = 1;
          v212 = v202;
          v219 = 0uLL;
        }

        v220 = vshlq_u64(v219, v180);
        v221 = vuzp1q_s32(vzip1q_s64(v219, v220), vzip2q_s64(v219, v220));
        v222 = vshlq_u32(v221, v184);
        v223 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v221, v222), vzip2q_s32(v221, v222)), v188), v187);
        v436 = v223;
        v224 = vmovl_u16(*&vpaddq_s16(v449, v449));
        v225 = vpaddq_s32(v224, v224).u64[0];
        v226.i64[0] = v225;
        v226.i64[1] = HIDWORD(v225);
        v227 = v226;
        v228 = vaddvq_s64(v226);
        v229 = v228;
        v230 = v212 + v228;
        if (v422.i64[0])
        {
          v231 = v422.i64[0] >= v230;
        }

        else
        {
          v231 = 1;
        }

        v232 = v231;
        if (v228 <= 0x80 && v232)
        {
          v233 = v212 & 0x3F;
          v234 = vaddq_s64(vdupq_n_s64(v233), vzip1q_s64(0, v227));
          v235 = (v110 + 8 * (v212 >> 6));
          v215 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v235, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v234)), vshlq_u64(vdupq_lane_s64(v235->i64[0], 0), vnegq_s64(v234)));
          if (v233 + v229 >= 0x81)
          {
            v215 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v235[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v234)), vshlq_u64(vdupq_laneq_s64(v235[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v234))), v215);
          }
        }

        else
        {
          v112 = 1;
          v230 = v212;
        }

        v236 = vzip1_s32(*v224.i8, *&vextq_s8(v224, v224, 8uLL));
        v237.i64[0] = v236.u32[0];
        v237.i64[1] = v236.u32[1];
        v238 = vnegq_s64(v237);
        v239 = vshlq_u64(v215, v238);
        v240 = vuzp1q_s32(vzip1q_s64(v215, v239), vzip2q_s64(v215, v239));
        v241.i64[0] = 0xFFFF0000FFFFLL;
        v241.i64[1] = 0xFFFF0000FFFFLL;
        v242 = vnegq_s32(vandq_s8(v449, v241));
        v243 = vshlq_u32(v240, v242);
        v244 = vuzp1q_s16(vzip1q_s32(v240, v243), vzip2q_s32(v240, v243));
        v243.i64[0] = 0xF000F000F000FLL;
        v243.i64[1] = 0xF000F000F000FLL;
        v245 = vaddq_s16(v449, v243);
        v243.i64[0] = 0x10001000100010;
        v243.i64[1] = 0x10001000100010;
        v246 = vsubq_s16(v243, v449);
        v247 = vshlq_s16(vshlq_s16(v244, v246), v245);
        v437 = v247;
        v248 = v230 + v229;
        if (v422.i64[0])
        {
          v249 = v422.i64[0] >= v248;
        }

        else
        {
          v249 = 1;
        }

        v250 = v249;
        v251 = 0uLL;
        if (v229 <= 0x80 && v250)
        {
          v252 = v230 & 0x3F;
          v253 = vaddq_s64(vdupq_n_s64(v252), vzip1q_s64(0, v227));
          v254 = (v110 + 8 * (v230 >> 6));
          v255 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v254, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v253)), vshlq_u64(vdupq_lane_s64(v254->i64[0], 0), vnegq_s64(v253)));
          if (v252 + v229 >= 0x81)
          {
            v255 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v254[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v253)), vshlq_u64(vdupq_laneq_s64(v254[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v253))), v255);
          }
        }

        else
        {
          v112 = 1;
          v248 = v230;
          v255 = 0uLL;
        }

        v256 = vshlq_u64(v255, v238);
        v257 = vuzp1q_s32(vzip1q_s64(v255, v256), vzip2q_s64(v255, v256));
        v258 = vshlq_u32(v257, v242);
        v259 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v257, v258), vzip2q_s32(v257, v258)), v246), v245);
        v438 = v259;
        v260 = v248 + v229;
        if (v422.i64[0])
        {
          v261 = v422.i64[0] >= v260;
        }

        else
        {
          v261 = 1;
        }

        v262 = v261;
        if (v229 <= 0x80 && v262)
        {
          v263 = v248 & 0x3F;
          v264 = vaddq_s64(vdupq_n_s64(v263), vzip1q_s64(0, v227));
          v265 = (v110 + 8 * (v248 >> 6));
          v251 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v265, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v264)), vshlq_u64(vdupq_lane_s64(v265->i64[0], 0), vnegq_s64(v264)));
          if (v263 + v229 >= 0x81)
          {
            v251 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v265[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v264)), vshlq_u64(vdupq_laneq_s64(v265[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v264))), v251);
          }
        }

        else
        {
          v112 = 1;
          v260 = v248;
        }

        v266 = vshlq_u64(v251, v238);
        v267 = vuzp1q_s32(vzip1q_s64(v251, v266), vzip2q_s64(v251, v266));
        v268 = vshlq_u32(v267, v242);
        v269 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v267, v268), vzip2q_s32(v267, v268)), v246), v245);
        v439 = v269;
        v270 = v260 + v229;
        if (v422.i64[0])
        {
          v271 = v422.i64[0] >= v270;
        }

        else
        {
          v271 = 1;
        }

        v272 = v271;
        v273 = 0uLL;
        if (v229 <= 0x80 && v272)
        {
          v274 = v260 & 0x3F;
          v275 = vaddq_s64(vdupq_n_s64(v274), vzip1q_s64(0, v227));
          v276 = (v110 + 8 * (v260 >> 6));
          v277 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v276, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v275)), vshlq_u64(vdupq_lane_s64(v276->i64[0], 0), vnegq_s64(v275)));
          if (v274 + v229 >= 0x81)
          {
            v277 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v276[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v275)), vshlq_u64(vdupq_laneq_s64(v276[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v275))), v277);
          }
        }

        else
        {
          v112 = 1;
          v270 = v260;
          v277 = 0uLL;
        }

        v278 = vshlq_u64(v277, v238);
        v279 = vuzp1q_s32(vzip1q_s64(v277, v278), vzip2q_s64(v277, v278));
        v280 = vshlq_u32(v279, v242);
        v281 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v279, v280), vzip2q_s32(v279, v280)), v246), v245);
        v440 = v281;
        v282 = vmovl_u16(*&vpaddq_s16(v450, v450));
        v283 = vpaddq_s32(v282, v282).u64[0];
        v284.i64[0] = v283;
        v284.i64[1] = HIDWORD(v283);
        v285 = v284;
        v286 = vaddvq_s64(v284);
        v287 = v286;
        v288 = v270 + v286;
        if (v422.i64[0])
        {
          v289 = v422.i64[0] >= v288;
        }

        else
        {
          v289 = 1;
        }

        v290 = v289;
        if (v286 <= 0x80 && v290)
        {
          v291 = v270 & 0x3F;
          v292 = vaddq_s64(vdupq_n_s64(v291), vzip1q_s64(0, v285));
          v293 = (v110 + 8 * (v270 >> 6));
          v273 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v293, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v292)), vshlq_u64(vdupq_lane_s64(v293->i64[0], 0), vnegq_s64(v292)));
          if (v291 + v287 >= 0x81)
          {
            v273 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v293[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v292)), vshlq_u64(vdupq_laneq_s64(v293[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v292))), v273);
          }
        }

        else
        {
          v112 = 1;
          v288 = v270;
        }

        v294 = vzip1_s32(*v282.i8, *&vextq_s8(v282, v282, 8uLL));
        v295.i64[0] = v294.u32[0];
        v295.i64[1] = v294.u32[1];
        v296 = vnegq_s64(v295);
        v297 = vshlq_u64(v273, v296);
        v298 = vuzp1q_s32(vzip1q_s64(v273, v297), vzip2q_s64(v273, v297));
        v297.i64[0] = 0xFFFF0000FFFFLL;
        v297.i64[1] = 0xFFFF0000FFFFLL;
        v299 = vnegq_s32(vandq_s8(v450, v297));
        v300 = vshlq_u32(v298, v299);
        v301 = vuzp1q_s16(vzip1q_s32(v298, v300), vzip2q_s32(v298, v300));
        v298.i64[0] = 0xF000F000F000FLL;
        v298.i64[1] = 0xF000F000F000FLL;
        v302 = vaddq_s16(v450, v298);
        v300.i64[0] = 0x10001000100010;
        v300.i64[1] = 0x10001000100010;
        v303 = vsubq_s16(v300, v450);
        v304 = vshlq_s16(vshlq_s16(v301, v303), v302);
        v441 = v304;
        v305 = v288 + v287;
        if (v422.i64[0])
        {
          v306 = v422.i64[0] >= v305;
        }

        else
        {
          v306 = 1;
        }

        v307 = v306;
        v308 = 0uLL;
        if (v287 <= 0x80 && v307)
        {
          v309 = v288 & 0x3F;
          v310 = vaddq_s64(vdupq_n_s64(v309), vzip1q_s64(0, v285));
          v311 = (v110 + 8 * (v288 >> 6));
          v312 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v311, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v310)), vshlq_u64(vdupq_lane_s64(v311->i64[0], 0), vnegq_s64(v310)));
          if (v309 + v287 >= 0x81)
          {
            v312 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v311[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v310)), vshlq_u64(vdupq_laneq_s64(v311[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v310))), v312);
          }
        }

        else
        {
          v112 = 1;
          v305 = v288;
          v312 = 0uLL;
        }

        v313 = vshlq_u64(v312, v296);
        v314 = vuzp1q_s32(vzip1q_s64(v312, v313), vzip2q_s64(v312, v313));
        v315 = vshlq_u32(v314, v299);
        v316 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v314, v315), vzip2q_s32(v314, v315)), v303), v302);
        v442 = v316;
        v317 = v305 + v287;
        if (v422.i64[0])
        {
          v318 = v422.i64[0] >= v317;
        }

        else
        {
          v318 = 1;
        }

        v319 = v318;
        if (v287 <= 0x80 && v319)
        {
          v320 = v305 & 0x3F;
          v321 = vaddq_s64(vdupq_n_s64(v320), vzip1q_s64(0, v285));
          v322 = (v110 + 8 * (v305 >> 6));
          v308 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v322, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v321)), vshlq_u64(vdupq_lane_s64(v322->i64[0], 0), vnegq_s64(v321)));
          if (v320 + v287 >= 0x81)
          {
            v308 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v322[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v321)), vshlq_u64(vdupq_laneq_s64(v322[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v321))), v308);
          }
        }

        else
        {
          v112 = 1;
          v317 = v305;
        }

        v323 = vshlq_u64(v308, v296);
        v324 = vuzp1q_s32(vzip1q_s64(v308, v323), vzip2q_s64(v308, v323));
        v325 = vshlq_u32(v324, v299);
        v326 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v324, v325), vzip2q_s32(v324, v325)), v303), v302);
        v443 = v326;
        v327 = v317 + v287;
        if (v422.i64[0])
        {
          v328 = v422.i64[0] >= v327;
        }

        else
        {
          v328 = 1;
        }

        v329 = v328;
        if (v287 > 0x80 || !v329)
        {
          goto LABEL_242;
        }

        v330 = vaddq_s64(vdupq_n_s64(v317 & 0x3F), vzip1q_s64(0, v285));
        v331 = (v110 + 8 * (v317 >> 6));
        v332 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v331, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v330)), vshlq_u64(vdupq_lane_s64(v331->i64[0], 0), vnegq_s64(v330)));
        if ((v317 & 0x3F) + v287 >= 0x81)
        {
          v332 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v331[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v330)), vshlq_u64(vdupq_laneq_s64(v331[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v330))), v332);
        }

        if ((v112 & 1) != 0 || v422.i64[0] + 8 * result - v327 - 512 >= 9 || v95 == 2)
        {
LABEL_242:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
          return 0;
        }

        else
        {
          v333 = vshlq_u64(v332, v296);
          v334 = vuzp1q_s32(vzip1q_s64(v332, v333), vzip2q_s64(v332, v333));
          v335 = vshlq_u32(v334, v299);
          v336 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v334, v335), vzip2q_s32(v334, v335)), v303), v302);
          v337 = vaddq_s16(vandq_s8(v94, v62), v121);
          v338 = vdupq_lane_s64(v94.i64[0], 0);
          v339 = vandq_s8(v62, v338);
          v340 = vsubq_s16(v337, v339);
          v341 = vsubq_s16(v143, v339);
          v342 = vsubq_s16(v153, v339);
          v343 = vsubq_s16(v165, v339);
          v344 = vandq_s8(v61, v338);
          v345 = vsubq_s16(v189, v344);
          v346 = vsubq_s16(v201, v344);
          v347 = vsubq_s16(v211, v344);
          v348 = vsubq_s16(v223, v344);
          v349 = vandq_s8(v60, v338);
          v350 = vsubq_s16(v247, v349);
          v351 = vsubq_s16(v259, v349);
          v352 = vsubq_s16(v269, v349);
          v353 = vsubq_s16(v281, v349);
          v354 = vandq_s8(v59, v338);
          v355 = vsubq_s16(v304, v354);
          v429 = v337;
          v356 = vsubq_s16(v316, v354);
          v357 = vsubq_s16(v326, v354);
          v441 = v355;
          v442 = v356;
          v358 = vsubq_s16(v336, v354);
          v443 = v357;
          v444 = v358;
          v359.i64[0] = 0x1000100010001;
          v359.i64[1] = 0x1000100010001;
          if (vaddvq_s16(vceqq_s16(v41, v359)))
          {
            v360 = vnegq_s16(vandq_s8(v446, v359));
            v361.i64[0] = v343.i64[0];
            v362.i64[1] = v340.i64[1];
            v361.i64[1] = v340.i64[0];
            v362.i64[0] = v343.i64[1];
            v363 = vbslq_s8(v360, v362, v340);
            v364 = vbslq_s8(v360, v361, v343);
            v362.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
            v362.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
            v365 = vandq_s8(vqtbl4q_s8(*(&v341 - 1), v362), v360);
            v459.val[0] = vaddq_s16(v363, vandq_s8(vqtbl4q_s8(*(&v341 - 1), xmmword_29D2F10B0), v360));
            v459.val[1] = vaddq_s16(v341, vandq_s8(vqtbl4q_s8(*(&v341 - 1), xmmword_29D2F10C0), v360));
            v459.val[2] = vaddq_s16(v342, v365);
            v459.val[3] = vaddq_s16(v364, v365);
            v366 = vandq_s8(vqtbl4q_s8(v459, v362), v360);
            v340 = vaddq_s16(v459.val[0], vandq_s8(vqtbl4q_s8(v459, xmmword_29D2F10D0), v360));
            v341 = vaddq_s16(v459.val[1], vandq_s8(vqtbl4q_s8(v459, xmmword_29D2F10E0), v360));
            v429 = v340;
            v430 = v341;
            v342 = vaddq_s16(v459.val[2], v366);
            v343 = vaddq_s16(v459.val[3], v366);
            v458.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, xmmword_29D2F10B0), v360), v345);
            v458.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, xmmword_29D2F10F0), v360), v346);
            v458.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, v362), v360), v347);
            v458.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, xmmword_29D2F1100), v360), v348);
            v367 = vandq_s8(vqtbl4q_s8(v458, xmmword_29D2F10D0), v360);
            v368 = vandq_s8(vqtbl4q_s8(v458, v362), v360);
            v345 = vaddq_s16(v367, v458.val[0]);
            v346 = vaddq_s16(v458.val[1], v367);
            v347 = vaddq_s16(v458.val[2], v368);
            v348 = vaddq_s16(v458.val[3], v368);
            v458.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v350.i8, xmmword_29D2F0EB0), v360), v350);
            v458.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v350.i8, xmmword_29D2F0FB0), v360), v351);
            v458.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v350.i8, xmmword_29D2F10B0), v360), v352);
            v458.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v350.i8, xmmword_29D2F10C0), v360), v353);
            v369 = vandq_s8(vqtbl4q_s8(v458, v362), v360);
            v350 = vaddq_s16(v458.val[0], v369);
            v351 = vaddq_s16(v458.val[1], v369);
            v352 = vaddq_s16(v458.val[2], vandq_s8(vqtbl4q_s8(v458, xmmword_29D2F0FE0), v360));
            v353 = vaddq_s16(v458.val[3], vandq_s8(vqtbl4q_s8(v458, xmmword_29D2F1110), v360));
            v459.val[0] = v441;
            v459.val[1] = v442;
            v40 = v446;
            v459.val[2] = v443;
            v459.val[3] = v444;
            v458.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(v459, xmmword_29D2F0EB0), v360), v441);
            v458.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(v459, xmmword_29D2F1120), v360), v442);
            v431 = v342;
            v432 = v343;
            v458.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(v459, xmmword_29D2F10B0), v360), v443);
            v458.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(v459, xmmword_29D2F10C0), v360), v444);
            v370 = vandq_s8(vqtbl4q_s8(v458, v362), v360);
            v355 = vaddq_s16(v458.val[0], v370);
            v356 = vaddq_s16(v458.val[1], v370);
            v357 = vaddq_s16(v458.val[2], vandq_s8(vqtbl4q_s8(v458, xmmword_29D2F0FE0), v360));
            v358 = vaddq_s16(v458.val[3], vandq_s8(vqtbl4q_s8(v458, xmmword_29D2F1130), v360));
          }

          v371 = vaddq_s16(v445, v340);
          v372 = vaddq_s16(v341, v445);
          v373 = vaddq_s16(v342, v445);
          v374 = vaddq_s16(v343, v445);
          v375 = vaddq_s16(v345, v445);
          v376 = vaddq_s16(v346, v445);
          v377 = vaddq_s16(v347, v445);
          v378 = vaddq_s16(v348, v445);
          v379 = vaddq_s16(v350, v445);
          v380 = vaddq_s16(v351, v445);
          v381 = vaddq_s16(v352, v445);
          v382 = vaddq_s16(v353, v445);
          v383 = vaddq_s16(v355, v445);
          v384 = vaddq_s16(v356, v445);
          v385 = vaddq_s16(v357, v445);
          v386 = vaddq_s16(v358, v445);
          v387.i64[0] = 0x10001000100010;
          v387.i64[1] = 0x10001000100010;
          v388 = vceqzq_s16(vandq_s8(v40, v387));
          v389 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v371, xmmword_29D2F1270), v388), v371);
          v390 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v372, xmmword_29D2F1270), v388), v372);
          v391 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v373, xmmword_29D2F1270), v388), v373);
          v392 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v374, xmmword_29D2F1270), v388), v374);
          v393 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v375, xmmword_29D2F1270), v388), v375);
          v394 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v376, xmmword_29D2F1270), v388), v376);
          v395 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v377, xmmword_29D2F1270), v388), v377);
          v396 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v378, xmmword_29D2F1270), v388), v378);
          v397 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v379, xmmword_29D2F1270), v388), v379);
          v398 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v380, xmmword_29D2F1270), v388), v380);
          v399 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v381, xmmword_29D2F1270), v388), v381);
          v400 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v382, xmmword_29D2F1270), v388), v382);
          v401 = vbicq_s8(vqtbl1q_s8(v386, xmmword_29D2F1270), v388);
          v402 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v383, xmmword_29D2F1270), v388), v383);
          v403 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v384, xmmword_29D2F1270), v388), v384);
          v404 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v385, xmmword_29D2F1270), v388), v385);
          v405 = vaddq_s16(v401, v386);
          __asm { FMOV            V6.4S, #1.875 }

          v384.i64[0] = 0xC0000000C0000000;
          v384.i64[1] = 0xC0000000C0000000;
          v410 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v389, 0x12uLL), v390, 0x12uLL), vbslq_s8(_Q6, vshrn_high_n_s64(vshrn_n_s64(v389, 0xCuLL), v390, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v389, 6uLL), v390, 6uLL), vuzp1q_s32(v389, v390))));
          v411 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v391, 0x12uLL), v392, 0x12uLL), vbslq_s8(_Q6, vshrn_high_n_s64(vshrn_n_s64(v391, 0xCuLL), v392, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v391, 6uLL), v392, 6uLL), vuzp1q_s32(v391, v392))));
          v412 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v393, 0x12uLL), v394, 0x12uLL), vbslq_s8(_Q6, vshrn_high_n_s64(vshrn_n_s64(v393, 0xCuLL), v394, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v393, 6uLL), v394, 6uLL), vuzp1q_s32(v393, v394))));
          v413 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v395, 0x12uLL), v396, 0x12uLL), vbslq_s8(_Q6, vshrn_high_n_s64(vshrn_n_s64(v395, 0xCuLL), v396, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v395, 6uLL), v396, 6uLL), vuzp1q_s32(v395, v396))));
          v414 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v397, 0x12uLL), v398, 0x12uLL), vbslq_s8(_Q6, vshrn_high_n_s64(vshrn_n_s64(v397, 0xCuLL), v398, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v397, 6uLL), v398, 6uLL), vuzp1q_s32(v397, v398))));
          v415 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v399, 0x12uLL), v400, 0x12uLL), vbslq_s8(_Q6, vshrn_high_n_s64(vshrn_n_s64(v399, 0xCuLL), v400, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v399, 6uLL), v400, 6uLL), vuzp1q_s32(v399, v400))));
          v416 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v402, 0x12uLL), v403, 0x12uLL), vbslq_s8(_Q6, vshrn_high_n_s64(vshrn_n_s64(v402, 0xCuLL), v403, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v402, 6uLL), v403, 6uLL), vuzp1q_s32(v402, v403))));
          v417 = (a1 + a2);
          *a1 = vzip1q_s64(v410, v411);
          *(a1 + 16) = vzip1q_s64(v414, v415);
          v418 = (a1 + 2 * a2);
          *v417 = vzip2q_s64(v410, v411);
          v417[1] = vzip2q_s64(v414, v415);
          v419 = vbslq_s8(v384, vshrn_high_n_s64(vshrn_n_s64(v404, 0x12uLL), v405, 0x12uLL), vbslq_s8(_Q6, vshrn_high_n_s64(vshrn_n_s64(v404, 0xCuLL), v405, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v404, 6uLL), v405, 6uLL), vuzp1q_s32(v404, v405))));
          *v418 = vzip1q_s64(v412, v413);
          v418[1] = vzip1q_s64(v416, v419);
          v420 = (v418 + a2);
          *v420 = vzip2q_s64(v412, v413);
          v420[1] = vzip2q_s64(v416, v419);
        }
      }
    }

    else
    {
      if (a4)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v421, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v421, a5);
      }

      v429 = v421;
      v430 = v423;
      v433 = v422;
      v434 = v424;
      v437 = v425;
      v438 = v427;
      v441 = v426;
      v442 = v428;
      v18 = a3 + 16;
      if ((v7 & 2) != 0)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v18, &v421, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v18, &v421, a5);
      }

      v431 = v421;
      v432 = v423;
      v435 = v422;
      v436 = v424;
      v439 = v425;
      v440 = v427;
      v443 = v426;
      v444 = v428;
      v19 = a3 + 32;
      if ((v7 & 4) != 0)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v19, &v421, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v19, &v421, a5);
      }

      v445 = v421;
      v446 = v423;
      v449 = v422;
      v450 = v424;
      v452 = v425;
      v453 = v427;
      *v456 = v426;
      *&v456[2] = v428;
      v20 = a3 + 48;
      if ((v7 & 8) != 0)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v20, &v421, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v20, &v421, a5);
      }

      v447 = v421;
      v448 = v423;
      v451[0] = v422;
      v451[1] = v424;
      v454 = v425;
      v455 = v427;
      v21 = (a1 + 16);
      v22 = -64;
      *&v456[4] = v426;
      *&v456[6] = v428;
      do
      {
        v23 = v437.i32[v22 / 4] & 0x3FF | ((v437.i32[v22 / 4 + 1] & 0x3FF) << 10) & 0xC00FFFFF | ((v437.i32[v22 / 4 + 2] & 0x3FF) << 20) | (v437.i32[v22 / 4 + 3] << 30);
        *(v21 - 4) = v433.i32[v22 / 4] & 0x3FF | ((v433.i32[v22 / 4 + 1] & 0x3FF) << 10) & 0xC00FFFFF | ((v433.i32[v22 / 4 + 2] & 0x3FF) << 20) | (v433.i32[v22 / 4 + 3] << 30);
        *(v21 - 3) = v23;
        v24 = v445.i32[v22 / 4] & 0x3FF | ((v445.i32[v22 / 4 + 1] & 0x3FF) << 10) & 0xC00FFFFF | ((v445.i32[v22 / 4 + 2] & 0x3FF) << 20) | (v445.i32[v22 / 4 + 3] << 30);
        *(v21 - 2) = v441.i32[v22 / 4] & 0x3FF | ((v441.i32[v22 / 4 + 1] & 0x3FF) << 10) & 0xC00FFFFF | ((v441.i32[v22 / 4 + 2] & 0x3FF) << 20) | (v441.i32[v22 / 4 + 3] << 30);
        *(v21 - 1) = v24;
        v25 = v452.i32[v22 / 4] & 0x3FF | ((v452.i32[v22 / 4 + 1] & 0x3FF) << 10) & 0xC00FFFFF | ((v452.i32[v22 / 4 + 2] & 0x3FF) << 20) | (v452.i32[v22 / 4 + 3] << 30);
        *v21 = v449.i32[v22 / 4] & 0x3FF | ((v449.i32[v22 / 4 + 1] & 0x3FF) << 10) & 0xC00FFFFF | ((v449.i32[v22 / 4 + 2] & 0x3FF) << 20) | (v449.i32[v22 / 4 + 3] << 30);
        v21[1] = v25;
        v26 = v456[v22 / 8 + 8] & 0x3FF | ((HIDWORD(v456[v22 / 8 + 8]) & 0x3FF) << 10) & 0xC00FFFFF | ((*(&v457 + v22) & 0x3FF) << 20) | (*(&v457 + v22 + 4) << 30);
        v21[2] = v456[v22 / 8] & 0x3FF | ((HIDWORD(v456[v22 / 8]) & 0x3FF) << 10) & 0xC00FFFFF | ((v456[v22 / 8 + 1] & 0x3FF) << 20) | (HIDWORD(v456[v22 / 8 + 1]) << 30);
        v21[3] = v26;
        v21 = (v21 + a2);
        v22 += 16;
      }

      while (v22);
      return 64;
    }
  }

  else
  {
    result = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v11 = (a1 + a2);
    *v11 = 0u;
    v11[1] = 0u;
    v12 = (a1 + 2 * a2);
    *v12 = 0u;
    v12[1] = 0u;
    v13 = (a1 + a2 + 2 * a2);
    *v13 = 0u;
    v13[1] = 0u;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + v14, a2, v17, v16, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + 32, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v14 + 32, a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 8 * a2, a2, v25, v24, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 12 * a2, a2, v28, v27, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 8 * a2 + 32, a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + 12 * a2 + 32, a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1, 64, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 256, 64, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 32, 64, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 288, 64, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 512, 64, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 768, 64, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 544, 64, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 800, 64, v12 + v13, v14, a4);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = *(a3 + 16);
  v7 = (a3 + 2 * a4);
  v9 = *(a3 + a4);
  v10 = *(a3 + a4 + 16);
  v12 = *v7;
  v13 = v7[1];
  v11 = (v7 + a4);
  v14 = v11[1];
  v15.i64[0] = *a3;
  v15.i64[1] = HIDWORD(*a3);
  v16 = v15;
  v15.i64[0] = *(a3 + 8);
  v15.i64[1] = HIDWORD(*a3);
  v17 = vbslq_s8(xmmword_29D2F1290, v16, 0);
  v18 = vbslq_s8(xmmword_29D2F1290, v15, 0);
  v15.i64[0] = v9.u32[0];
  v15.i64[1] = v9.u32[1];
  v19 = v15;
  v15.i64[0] = v9.u32[2];
  v15.i64[1] = v9.u32[3];
  v20 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*a3, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*a3, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*a3, 6uLL), v17)));
  v21 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(*a3, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(*a3, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(*a3, 6uLL), v18)));
  v22 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v9.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v9.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v9.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v19, 0))));
  v23 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v9, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v9, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v9, 6uLL), vbslq_s8(xmmword_29D2F1290, v15, 0))));
  v15.i64[0] = v8.u32[0];
  v15.i64[1] = v8.u32[1];
  v24 = v15;
  v15.i64[0] = v8.u32[2];
  v15.i64[1] = v8.u32[3];
  v25 = vbslq_s8(xmmword_29D2F1290, v24, 0);
  v26 = vbslq_s8(xmmword_29D2F1290, v15, 0);
  v15.i64[0] = v10.u32[0];
  v15.i64[1] = v10.u32[1];
  v27 = v15;
  v15.i64[0] = v10.u32[2];
  v15.i64[1] = v10.u32[3];
  v28 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v8.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v8.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v8.i8, 6uLL), v25)));
  v29 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v8, 6uLL), v26)));
  v30 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v10.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v10.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v10.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v27, 0))));
  v31 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v10, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v10, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v10, 6uLL), vbslq_s8(xmmword_29D2F1290, v15, 0))));
  v15.i64[0] = v12.u32[0];
  v15.i64[1] = v12.u32[1];
  v32 = v15;
  v15.i64[0] = v12.u32[2];
  v15.i64[1] = v12.u32[3];
  v33 = vbslq_s8(xmmword_29D2F1290, v32, 0);
  v34 = vbslq_s8(xmmword_29D2F1290, v15, 0);
  v15.i64[0] = v11->u32[0];
  v15.i64[1] = HIDWORD(v11->i64[0]);
  v35 = v15;
  v15.i64[0] = v11->i64[1];
  v15.i64[1] = HIDWORD(*v11);
  v36 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v12.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v12.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v12.i8, 6uLL), v33)));
  v37 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v12, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v12, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v12, 6uLL), v34)));
  v38 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v11->i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v11->i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v11->i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v35, 0))));
  v39 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(*v11, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(*v11, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(*v11, 6uLL), vbslq_s8(xmmword_29D2F1290, v15, 0))));
  v15.i64[0] = v13.u32[0];
  v15.i64[1] = v13.u32[1];
  v40 = v15;
  v15.i64[0] = v13.u32[2];
  v15.i64[1] = v13.u32[3];
  v41 = vbslq_s8(xmmword_29D2F1290, v40, 0);
  v42 = vbslq_s8(xmmword_29D2F1290, v15, 0);
  v15.i64[0] = v14.u32[0];
  v15.i64[1] = v14.u32[1];
  v43 = v15;
  v15.i64[0] = v14.u32[2];
  v15.i64[1] = v14.u32[3];
  v44 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v13.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v13.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v13.i8, 6uLL), v41)));
  v45 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v13, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v13, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v13, 6uLL), v42)));
  v46 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v14.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v14.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v14.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v43, 0))));
  v47 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v14, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v14, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v14, 6uLL), vbslq_s8(xmmword_29D2F1290, v15, 0))));
  v48 = vdupq_lane_s64(v20.i64[0], 0);
  v499 = v31;
  v49 = vsubq_s16(v31, v48);
  v501 = vshlq_s16(vshlq_s16(vsubq_s16(v20, v48), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v503 = vshlq_s16(vshlq_s16(vsubq_s16(v21, v48), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v505 = vshlq_s16(vshlq_s16(vsubq_s16(v22, v48), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v507 = vshlq_s16(vshlq_s16(vsubq_s16(v23, v48), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v509 = vshlq_s16(vshlq_s16(vsubq_s16(v28, v48), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v510 = vshlq_s16(vshlq_s16(vsubq_s16(v29, v48), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v50 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v501, v503), v505), v507), xmmword_29D2F1150);
  v51 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v501, v503), v505), v507), xmmword_29D2F1150);
  v52 = vpmaxq_s16(v50, v50);
  v53 = vpminq_s16(v51, v51);
  v54 = vzip1q_s16(v52, v53);
  v50.i64[0] = 0x10001000100010;
  v50.i64[1] = 0x10001000100010;
  v55 = vbicq_s8(vsubq_s16(v50, vclsq_s16(v54)), vceqzq_s16(v54));
  v511 = vshlq_s16(vshlq_s16(vsubq_s16(v30, v48), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v512 = vshlq_s16(vshlq_s16(v49, xmmword_29D2F12D0), xmmword_29D2F12E0);
  v56.i64[0] = 0x8000800080008000;
  v56.i64[1] = 0x8000800080008000;
  v49.i64[0] = 0x8000800080008000;
  v49.i64[1] = 0x8000800080008000;
  v57 = vminq_s16(v53, v49);
  v58 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v509, v510), v511), v512), xmmword_29D2F1150);
  v59 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v509, v510), v511), v512), xmmword_29D2F1150);
  v60 = vpmaxq_s16(v58, v58);
  v61 = vpminq_s16(v59, v59);
  v62 = vmaxq_s16(vmaxq_s16(v52, v56), v60);
  v63 = vminq_s16(v57, v61);
  v64 = vzip1q_s16(v60, v61);
  v65 = vbicq_s8(vsubq_s16(v50, vclsq_s16(v64)), vceqzq_s16(v64));
  v513 = vshlq_s16(vshlq_s16(vsubq_s16(v36, v48), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v514 = vshlq_s16(vshlq_s16(vsubq_s16(v37, v48), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v66 = vshlq_s16(vshlq_s16(vsubq_s16(v38, v48), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v67 = vminq_s16(vminq_s16(v513, v514), v66);
  v515 = v66;
  v516 = vshlq_s16(vshlq_s16(vsubq_s16(v39, v48), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v68 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v513, v514), v66), v516), xmmword_29D2F1150);
  v69 = vqtbl1q_s8(vminq_s16(v67, v516), xmmword_29D2F1150);
  v70 = vpmaxq_s16(v68, v68);
  v71 = vpminq_s16(v69, v69);
  v72 = vmaxq_s16(v62, v70);
  v73 = vminq_s16(v63, v71);
  v74 = vzip1q_s16(v70, v71);
  v75 = vbicq_s8(vsubq_s16(v50, vclsq_s16(v74)), vceqzq_s16(v74));
  v517 = vshlq_s16(vshlq_s16(vsubq_s16(v44, v48), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v518 = vshlq_s16(vshlq_s16(vsubq_s16(v45, v48), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v521 = v48;
  v519 = vshlq_s16(vshlq_s16(vsubq_s16(v46, v48), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v520 = vshlq_s16(vshlq_s16(vsubq_s16(v47, v48), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v76 = vpmaxq_s16(v55, v55);
  v77 = vpmaxq_s16(v65, v65);
  v78 = vpmaxq_s16(v75, v75);
  v79 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v517, v518), v519), v520), xmmword_29D2F1150);
  v80 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v517, v518), v519), v520), xmmword_29D2F1150);
  v81 = vpmaxq_s16(v79, v79);
  v82 = vpminq_s16(v80, v80);
  v83 = vmaxq_s16(v72, v81);
  v84 = vminq_s16(v73, v82);
  v85 = vzip1q_s16(v81, v82);
  v86 = vbicq_s8(vsubq_s16(v50, vclsq_s16(v85)), vceqzq_s16(v85));
  v87 = vpmaxq_s16(v86, v86);
  v88 = vmaxq_s16(vmaxq_s16(v76, v77), vmaxq_s16(v78, v87));
  v89 = vclzq_s16(vsubq_s16(v83, v84));
  v90.i64[0] = 0xF000F000F000FLL;
  v90.i64[1] = 0xF000F000F000FLL;
  v91.i64[0] = -1;
  v91.i64[1] = -1;
  v528 = v84;
  v529 = v83;
  v92 = vsubq_s16(vshlq_s16(v91, vsubq_s16(v90, v89)), v84);
  v93 = vsubq_s16(v50, v89);
  v94 = vcgtq_s16(v88, v93);
  v95 = vminq_s16(v93, v88);
  v530 = vandq_s8(v92, v94);
  v92.i64[0] = 0x8000800080008;
  v92.i64[1] = 0x8000800080008;
  v50.i64[0] = 0x3000300030003;
  v50.i64[1] = 0x3000300030003;
  v96 = vorrq_s8(vandq_s8(vceqzq_s16(v95), v50), vorrq_s8(vandq_s8(v94, v92), 0));
  v97 = vmaxq_s16(vminq_s16(vsubq_s16(v95, v77), v50), 0);
  v98 = vmaxq_s16(vminq_s16(vsubq_s16(v95, v78), v50), 0);
  v524 = vsubq_s16(v95, v97);
  v525 = vsubq_s16(v95, v98);
  v99 = vmaxq_s16(vminq_s16(vsubq_s16(v95, v87), v50), 0);
  v526 = vsubq_s16(v95, v99);
  v527 = v95;
  v100 = vaddq_s16(v99, v98);
  v101 = vmaxq_s16(vminq_s16(vsubq_s16(v95, v76), v50), 0);
  v102 = vsubq_s16(v95, v101);
  v103 = vceqq_s16(v100, vnegq_s16(vaddq_s16(v101, v97)));
  v101.i64[0] = 0x4000400040004;
  v101.i64[1] = 0x4000400040004;
  v104 = vorrq_s8(vbicq_s8(v101, v103), v96);
  v522 = v104;
  v523 = v102;
  if (vmaxvq_s16(v95))
  {
    v467 = v47;
    v468 = v39;
    v469 = v28;
    v470 = v29;
    v471 = v30;
    v493.val[0] = v20;
    v493.val[1] = v21;
    v493.val[2] = v22;
    v493.val[3] = v23;
    v496 = v96;
    v105 = vshlq_s16(vshlq_s16(vsubq_s16(v517, vqtbl1q_s8(v517, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v106 = vshlq_s16(vshlq_s16(vsubq_s16(v518, vqtbl1q_s8(v518, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v107 = vshlq_s16(vshlq_s16(vsubq_s16(v520, vqtbl1q_s8(v520, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v477 = vshlq_s16(vshlq_s16(vsubq_s16(v501, vqtbl1q_s8(v501, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v478 = vshlq_s16(vshlq_s16(vsubq_s16(v503, vqtbl1q_s8(v503, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v479 = vshlq_s16(vshlq_s16(vsubq_s16(v507, vqtbl1q_s8(v507, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v480 = vshlq_s16(vshlq_s16(vsubq_s16(v505, vqtbl1q_s8(v505, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v108 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v477, v478), v480), v479), xmmword_29D2F1150);
    v109 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v477, v478), v480), v479), xmmword_29D2F1150);
    v110 = vpmaxq_s16(v108, v108);
    v111 = vpminq_s16(v109, v109);
    v112.i64[0] = 0x8000800080008000;
    v112.i64[1] = 0x8000800080008000;
    v113 = vmaxq_s16(v110, v112);
    v114.i64[0] = 0x8000800080008000;
    v114.i64[1] = 0x8000800080008000;
    v115 = vminq_s16(v111, v114);
    v116 = vzip1q_s16(v110, v111);
    v117.i64[0] = 0x10001000100010;
    v117.i64[1] = 0x10001000100010;
    v118 = vbicq_s8(vsubq_s16(v117, vclsq_s16(v116)), vceqzq_s16(v116));
    v119 = vpmaxq_s16(v118, v118);
    v483 = vshlq_s16(vshlq_s16(vsubq_s16(v510, vqtbl1q_s8(v510, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v484 = vshlq_s16(vshlq_s16(vsubq_s16(v509, vqtbl1q_s8(v509, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v485 = vshlq_s16(vshlq_s16(vsubq_s16(v512, vqtbl1q_s8(v512, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v486 = vshlq_s16(vshlq_s16(vsubq_s16(v511, vqtbl1q_s8(v511, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v120 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v484, v483), v486), v485), xmmword_29D2F1150);
    v121 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v484, v483), v486), v485), xmmword_29D2F1150);
    v122 = vpmaxq_s16(v120, v120);
    v123 = vpminq_s16(v121, v121);
    v124 = vmaxq_s16(v113, v122);
    v125 = vminq_s16(v115, v123);
    v126 = vzip1q_s16(v122, v123);
    v127.i64[0] = 0x10001000100010;
    v127.i64[1] = 0x10001000100010;
    v128 = vbicq_s8(vsubq_s16(v117, vclsq_s16(v126)), vceqzq_s16(v126));
    v129 = vpmaxq_s16(v128, v128);
    v487 = vshlq_s16(vshlq_s16(vsubq_s16(v514, vqtbl1q_s8(v514, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v488 = vshlq_s16(vshlq_s16(vsubq_s16(v513, vqtbl1q_s8(v513, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v494 = vshlq_s16(vshlq_s16(vsubq_s16(v515, vqtbl1q_s8(v515, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v490 = vshlq_s16(vshlq_s16(vsubq_s16(v516, vqtbl1q_s8(v516, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v130 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v488, v487), v494), v490), xmmword_29D2F1150);
    v131 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v488, v487), v494), v490), xmmword_29D2F1150);
    v132 = vpmaxq_s16(v130, v130);
    v133 = vpminq_s16(v131, v131);
    v134 = vmaxq_s16(v124, v132);
    v135 = vminq_s16(v125, v133);
    v136 = vzip1q_s16(v132, v133);
    v137 = vbicq_s8(vsubq_s16(v127, vclsq_s16(v136)), vceqzq_s16(v136));
    v138 = vpmaxq_s16(v137, v137);
    v472 = vshlq_s16(vshlq_s16(vsubq_s16(v519, vqtbl1q_s8(v519, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v139 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v105, v106), v472), v107), xmmword_29D2F1150);
    v140 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v105, v106), v472), v107), xmmword_29D2F1150);
    v141 = vpmaxq_s16(v139, v139);
    v142 = vpminq_s16(v140, v140);
    v143 = vmaxq_s16(v134, v141);
    v144 = vminq_s16(v135, v142);
    v145 = vzip1q_s16(v141, v142);
    v142.i64[0] = 0x10001000100010;
    v142.i64[1] = 0x10001000100010;
    v146 = vbicq_s8(vsubq_s16(v142, vclsq_s16(v145)), vceqzq_s16(v145));
    v147 = vpmaxq_s16(v146, v146);
    v148 = vmaxq_s16(vmaxq_s16(v119, v129), vmaxq_s16(v138, v147));
    v481 = v144;
    v482 = v143;
    v149 = vclzq_s16(vsubq_s16(v143, v144));
    v150 = vsubq_s16(v142, v149);
    v143.i64[0] = 0x10001000100010;
    v143.i64[1] = 0x10001000100010;
    v151 = vcgtq_s16(v148, v150);
    v152 = vminq_s16(v150, v148);
    v150.i64[0] = 0x3000300030003;
    v150.i64[1] = 0x3000300030003;
    v153 = vmaxq_s16(vminq_s16(vsubq_s16(v152, v119), v150), 0);
    v154 = vmaxq_s16(vminq_s16(vsubq_s16(v152, v129), v150), 0);
    v155 = vmaxq_s16(vminq_s16(vsubq_s16(v152, v138), v150), 0);
    v144.i64[0] = 0x3000300030003;
    v144.i64[1] = 0x3000300030003;
    v156 = vmaxq_s16(vminq_s16(vsubq_s16(v152, v147), v150), 0);
    v142.i64[0] = 0x4000400040004;
    v142.i64[1] = 0x4000400040004;
    v157 = vbicq_s8(v142, vceqq_s16(vaddq_s16(v156, v155), vnegq_s16(vaddq_s16(v153, v154))));
    v150.i64[0] = 0x18001800180018;
    v150.i64[1] = 0x18001800180018;
    v158 = v151;
    v159 = vbslq_s8(v151, v150, v143);
    v474 = vsubq_s16(v152, v154);
    v475 = vsubq_s16(v152, v155);
    v476 = vsubq_s16(v152, v156);
    v155.i64[0] = 0x7000700070007;
    v155.i64[1] = 0x7000700070007;
    v473 = vsubq_s16(v152, v153);
    v153.i64[0] = 0x8000800080008;
    v153.i64[1] = 0x8000800080008;
    v142.i64[0] = 0x2000200020002;
    v142.i64[1] = 0x2000200020002;
    v161 = v526;
    v160 = v527;
    v162 = vaddq_s16(vaddq_s16(vbicq_s8(v527, vceqzq_s16(vandq_s8(v496, v153))), vandq_s8(vceqq_s16(vandq_s8(v496, v144), v142), v143)), vandq_s8(vaddq_s16(v104, v104), v153));
    v163 = v523;
    v164 = v524;
    v165 = v525;
    v166 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(v162, v523, v155), vshlq_n_s16(vaddq_s16(vaddq_s16(v525, v524), v526), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v152, vceqzq_s16((*&v159 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v157, v157)), v473, v155), vshlq_n_s16(vaddq_s16(vaddq_s16(v475, v474), v476), 3uLL))).i64[0], 0);
    v167 = vaddvq_s16(v166);
    v169 = a5 < 2 || a6 < 2;
    if (v167)
    {
      v170.i64[0] = 0x3000300030003;
      v170.i64[1] = 0x3000300030003;
      v171 = vorrq_s8(vandq_s8(vceqzq_s16(v152), v170), v159);
      v172 = v106;
      v173 = vorrq_s8(v171, v157);
      v171.i64[0] = 0xF000F000F000FLL;
      v171.i64[1] = 0xF000F000F000FLL;
      v501 = vbslq_s8(v166, v477, v501);
      v503 = vbslq_s8(v166, v478, v503);
      v170.i64[0] = -1;
      v170.i64[1] = -1;
      v505 = vbslq_s8(v166, v480, v505);
      v507 = vbslq_s8(v166, v479, v507);
      v509 = vbslq_s8(v166, v484, v509);
      v510 = vbslq_s8(v166, v483, v510);
      v511 = vbslq_s8(v166, v486, v511);
      v512 = vbslq_s8(v166, v485, v512);
      v513 = vbslq_s8(v166, v488, v513);
      v514 = vbslq_s8(v166, v487, v514);
      v515 = vbslq_s8(v166, v494, v515);
      v516 = vbslq_s8(v166, v490, v516);
      v517 = vbslq_s8(v166, v105, v517);
      v518 = vbslq_s8(v166, v172, v518);
      v519 = vbslq_s8(v166, v472, v519);
      v520 = vbslq_s8(v166, v107, v520);
      v163 = vbslq_s8(v166, v473, v523);
      v164 = vbslq_s8(v166, v474, v524);
      v523 = v163;
      v524 = v164;
      v165 = vbslq_s8(v166, v475, v525);
      v161 = vbslq_s8(v166, v476, v526);
      v525 = v165;
      v526 = v161;
      v529 = vbslq_s8(v166, v482, v529);
      v530 = vbslq_s8(v166, vandq_s8(vsubq_s16(vshlq_s16(v170, vsubq_s16(v171, v149)), v481), v158), v530);
      v160 = vbslq_s8(v166, v152, v527);
      v527 = v160;
      v528 = vbslq_s8(v166, v481, v528);
      v104 = vbslq_s8(v166, v173, v522);
      v521 = vbslq_s8(v166, vsubq_s16(v521, vqtbl1q_s8(v521, xmmword_29D2F1270)), v521);
      v522 = v104;
    }

    if (!v169)
    {
      v174 = vqtbl4q_s8(v493, xmmword_29D2F1160);
      v175 = vsubq_s16(v493.val[0], vqtbl4q_s8(v493, xmmword_29D2F10B0));
      v176 = vsubq_s16(v493.val[2], v174);
      v177 = vsubq_s16(v493.val[3], v174);
      v531.val[0] = v469;
      v531.val[1] = v470;
      v531.val[2] = v471;
      v531.val[3].i64[0] = v499.i64[0];
      v531.val[3].i64[1] = v493.val[3].i64[1];
      v178 = vsubq_s16(v469, vqtbl4q_s8(v531, xmmword_29D2F10B0));
      v179 = vsubq_s16(v470, vqtbl4q_s8(v531, xmmword_29D2F10F0));
      v180 = vsubq_s16(v471, vqtbl4q_s8(v531, xmmword_29D2F1160));
      v181 = vsubq_s16(v499, vqtbl4q_s8(v531, xmmword_29D2F1100));
      v182 = v468.i64[0];
      v183 = v493.val[3].i64[1];
      v531.val[1] = vqtbl4q_s8(*v36.i8, xmmword_29D2F10C0);
      v184 = vsubq_s16(v36, vqtbl4q_s8(*v36.i8, xmmword_29D2F1170));
      v185 = vsubq_s16(v37, vqtbl4q_s8(*v36.i8, xmmword_29D2F1180));
      v186 = vsubq_s16(v38, vqtbl4q_s8(*v36.i8, xmmword_29D2F10B0));
      v187 = v467.i64[0];
      v188 = v493.val[3].i64[1];
      v531.val[0] = vsubq_s16(v44, vqtbl4q_s8(*v44.i8, xmmword_29D2F1170));
      v189 = vsubq_s16(v45, vqtbl4q_s8(*v44.i8, xmmword_29D2F1120));
      v190 = vsubq_s16(v46, vqtbl4q_s8(*v44.i8, xmmword_29D2F10B0));
      v191.i64[0] = v177.i64[0];
      v191.i64[1] = v175.i64[0];
      v192 = vsubq_s16(v467, vqtbl4q_s8(*v44.i8, xmmword_29D2F10C0));
      v175.i64[0] = v177.i64[1];
      v193 = vshlq_s16(v175, xmmword_29D2F12D0);
      v194 = vshlq_s16(v176, xmmword_29D2F12D0);
      v195 = vshlq_s16(v184, xmmword_29D2F12D0);
      v196 = vshlq_s16(v185, xmmword_29D2F12D0);
      v197 = vshlq_s16(vsubq_s16(v468, v531.val[1]), xmmword_29D2F12D0);
      v531.val[1] = vshlq_s16(v189, xmmword_29D2F12D0);
      v198 = vshlq_s16(v193, xmmword_29D2F12E0);
      v199 = vshlq_s16(vshlq_s16(vsubq_s16(v493.val[1], vqtbl4q_s8(v493, xmmword_29D2F10C0)), xmmword_29D2F12D0), xmmword_29D2F12E0);
      v200 = vshlq_s16(v194, xmmword_29D2F12E0);
      v201 = vshlq_s16(vshlq_s16(v191, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v202 = vshlq_s16(vshlq_s16(v178, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v203 = vshlq_s16(vshlq_s16(v179, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v204 = vshlq_s16(vshlq_s16(v180, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v205 = vshlq_s16(vshlq_s16(v181, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v206 = vshlq_s16(v195, xmmword_29D2F12E0);
      v207 = vshlq_s16(v196, xmmword_29D2F12E0);
      v208 = vshlq_s16(vshlq_s16(v186, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v209 = vshlq_s16(v197, xmmword_29D2F12E0);
      v531.val[2] = vshlq_s16(vshlq_s16(v531.val[0], xmmword_29D2F12D0), xmmword_29D2F12E0);
      v210 = vshlq_s16(v531.val[1], xmmword_29D2F12E0);
      v211 = vshlq_s16(vshlq_s16(v190, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v212 = vshlq_s16(vshlq_s16(v192, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v213 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v198, v199), v200), v201), xmmword_29D2F1150);
      v214 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v198, v199), v200), v201), xmmword_29D2F1150);
      v215 = vpmaxq_s16(v213, v213);
      v216 = vpminq_s16(v214, v214);
      v192.i64[0] = 0x8000800080008000;
      v192.i64[1] = 0x8000800080008000;
      v217 = vmaxq_s16(v215, v192);
      v178.i64[0] = 0x8000800080008000;
      v178.i64[1] = 0x8000800080008000;
      v218 = vminq_s16(v216, v178);
      v219 = vzip1q_s16(v215, v216);
      v197.i64[0] = 0x10001000100010;
      v197.i64[1] = 0x10001000100010;
      v220 = vbicq_s8(vsubq_s16(v197, vclsq_s16(v219)), vceqzq_s16(v219));
      v221 = vpmaxq_s16(v220, v220);
      v222 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v202, v203), v204), v205), xmmword_29D2F1150);
      v223 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v202, v203), v204), v205), xmmword_29D2F1150);
      v224 = vpmaxq_s16(v222, v222);
      v225 = vpminq_s16(v223, v223);
      v226 = vmaxq_s16(v217, v224);
      v227 = vminq_s16(v218, v225);
      v228 = vzip1q_s16(v224, v225);
      v229 = vbicq_s8(vsubq_s16(v197, vclsq_s16(v228)), vceqzq_s16(v228));
      v230 = vpmaxq_s16(v229, v229);
      v231 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v206, v207), v208), v209), xmmword_29D2F1150);
      v232 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v206, v207), v208), v209), xmmword_29D2F1150);
      v233 = vpmaxq_s16(v231, v231);
      v234 = vpminq_s16(v232, v232);
      v235 = vmaxq_s16(v226, v233);
      v236 = vminq_s16(v227, v234);
      v237 = vzip1q_s16(v233, v234);
      v238 = vbicq_s8(vsubq_s16(v197, vclsq_s16(v237)), vceqzq_s16(v237));
      v239 = vpmaxq_s16(v238, v238);
      v497 = v531.val[2];
      v498 = v212;
      v500 = v211;
      v240 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v531.val[2], v210), v211), v212), xmmword_29D2F1150);
      v241 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v531.val[2], v210), v211), v212), xmmword_29D2F1150);
      v242 = vpmaxq_s16(v240, v240);
      v243 = vpminq_s16(v241, v241);
      v244 = vmaxq_s16(v235, v242);
      v245 = vminq_s16(v236, v243);
      v246 = vzip1q_s16(v242, v243);
      v247 = vbicq_s8(vsubq_s16(v197, vclsq_s16(v246)), vceqzq_s16(v246));
      v248 = vpmaxq_s16(v247, v247);
      v249 = vmaxq_s16(vmaxq_s16(v221, v230), vmaxq_s16(v239, v248));
      v495 = v244;
      v250 = vclzq_s16(vsubq_s16(v244, v245));
      v251 = vsubq_s16(v197, v250);
      v252 = vcgtq_s16(v249, v251);
      v253 = vminq_s16(v251, v249);
      v249.i64[0] = 0x3000300030003;
      v249.i64[1] = 0x3000300030003;
      v254 = vmaxq_s16(vminq_s16(vsubq_s16(v253, v221), v249), 0);
      v255 = vmaxq_s16(vminq_s16(vsubq_s16(v253, v230), v249), 0);
      v256 = vmaxq_s16(vminq_s16(vsubq_s16(v253, v239), v249), 0);
      v257 = vmaxq_s16(vminq_s16(vsubq_s16(v253, v248), v249), 0);
      v258 = vsubq_s16(v253, v254);
      v531.val[1] = vsubq_s16(v253, v255);
      v259 = vsubq_s16(v253, v257);
      v260 = vceqq_s16(vaddq_s16(v257, v256), vnegq_s16(vaddq_s16(v254, v255)));
      v255.i64[0] = 0x4000400040004;
      v255.i64[1] = 0x4000400040004;
      v261 = vbicq_s8(v255, v260);
      v257.i64[0] = 0x7000700070007;
      v257.i64[1] = 0x7000700070007;
      v489 = vsubq_s16(v253, v256);
      v491 = v531.val[1];
      v492 = v259;
      v262 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v253, v252), vaddq_s16(v261, v261)), v258, v257), vshlq_n_s16(vaddq_s16(vaddq_s16(v489, v531.val[1]), v259), 3uLL));
      v104 = v522;
      v263 = v523;
      v264.i64[0] = 0x2000200020002;
      v264.i64[1] = 0x2000200020002;
      v265 = vandq_s8(vceqq_s16(vandq_s8(v522, v249), v264), v197);
      v249.i64[0] = 0x8000800080008;
      v249.i64[1] = 0x8000800080008;
      v161 = v526;
      v160 = v527;
      v164 = v524;
      v165 = v525;
      v266 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v527, vceqzq_s16(vandq_s8(v522, v249))), vandq_s8(vaddq_s16(v104, v104), v249)), v265), v523, v257), vshlq_n_s16(vaddq_s16(vaddq_s16(v525, v524), v526), 3uLL)), v262).i64[0], 0);
      if (vaddvq_s16(v266))
      {
        v267.i64[0] = 0x9000900090009;
        v267.i64[1] = 0x9000900090009;
        v268 = vorrq_s8(vandq_s8(vceqzq_s16(v253), v264), vsubq_s16(vandq_s8(v252, v267), vmvnq_s8(v252)));
        v267.i64[0] = -1;
        v267.i64[1] = -1;
        v269.i64[0] = 0xF000F000F000FLL;
        v269.i64[1] = 0xF000F000F000FLL;
        v263 = vbslq_s8(v266, v258, v523);
        v164 = vbslq_s8(v266, v491, v524);
        v165 = vbslq_s8(v266, v489, v525);
        v161 = vbslq_s8(v266, v492, v526);
        v160 = vbslq_s8(v266, v253, v527);
        v104 = vbslq_s8(v266, vorrq_s8(v268, v261), v522);
        v520 = vbslq_s8(v266, v498, v520);
        v521 = vbslq_s8(v266, vextq_s8(v493.val[3], v493.val[3], 8uLL), v521);
        v501 = vbslq_s8(v266, v198, v501);
        v503 = vbslq_s8(v266, v199, v503);
        v505 = vbslq_s8(v266, v200, v505);
        v507 = vbslq_s8(v266, v201, v507);
        v509 = vbslq_s8(v266, v202, v509);
        v510 = vbslq_s8(v266, v203, v510);
        v511 = vbslq_s8(v266, v204, v511);
        v512 = vbslq_s8(v266, v205, v512);
        v513 = vbslq_s8(v266, v206, v513);
        v514 = vbslq_s8(v266, v207, v514);
        v515 = vbslq_s8(v266, v208, v515);
        v516 = vbslq_s8(v266, v209, v516);
        v517 = vbslq_s8(v266, v497, v517);
        v518 = vbslq_s8(v266, v210, v518);
        v519 = vbslq_s8(v266, v500, v519);
        v528 = vbslq_s8(v266, v245, v528);
        v529 = vbslq_s8(v266, v495, v529);
        v530 = vbslq_s8(v266, vandq_s8(vsubq_s16(vshlq_s16(v267, vsubq_s16(v269, v250)), v245), v252), v530);
        v523 = v263;
        v524 = v164;
        v525 = v165;
        v526 = v161;
        v527 = v160;
        v522 = v104;
      }

      v163 = v263;
    }

    v270 = vandq_s8(v530, vceqq_s16(v160, v163));
    v502 = vaddq_s16(v270, v501);
    v504 = vaddq_s16(v503, v270);
    v506 = vaddq_s16(v505, v270);
    v508 = vaddq_s16(v507, v270);
    v271 = vandq_s8(v530, vceqq_s16(v160, v164));
    v509 = vaddq_s16(v509, v271);
    v510 = vaddq_s16(v510, v271);
    v511 = vaddq_s16(v511, v271);
    v512 = vaddq_s16(v512, v271);
    v272 = vandq_s8(v530, vceqq_s16(v160, v165));
    v513 = vaddq_s16(v513, v272);
    v514 = vaddq_s16(v514, v272);
    v515 = vaddq_s16(v515, v272);
    v516 = vaddq_s16(v516, v272);
    v273 = vandq_s8(v530, vceqq_s16(v160, v161));
    v517 = vaddq_s16(v517, v273);
    v518 = vaddq_s16(v518, v273);
    v519 = vaddq_s16(v519, v273);
    v520 = vaddq_s16(v520, v273);
    v273.i64[0] = 0x8000800080008;
    v273.i64[1] = 0x8000800080008;
    v274.i64[0] = 0x3000300030003;
    v274.i64[1] = 0x3000300030003;
    v275.i64[0] = 0x2000200020002;
    v275.i64[1] = 0x2000200020002;
    v276 = vceqq_s16(vandq_s8(v104, v274), v275);
    v275.i64[0] = 0x10001000100010;
    v275.i64[1] = 0x10001000100010;
    v277 = vandq_s8(v276, v275);
    v275.i64[0] = 0x7000700070007;
    v275.i64[1] = 0x7000700070007;
    v278 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v160, vceqzq_s16(vandq_s8(v104, v273))), vandq_s8(vaddq_s16(v104, v104), v273)), v277), v163, v275), vshlq_n_s16(vaddq_s16(vaddq_s16(v165, v164), v161), 3uLL));
    v279 = vpaddq_s16(v278, v278);
    if ((vpaddq_s16(v279, v279).i16[0] - 449) < 0xFFFFFFFFFFFFFDF8)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 64;
    }

    else
    {
      v280 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v281 = 8 * (a1 & 7);
      if (v281)
      {
        v282 = *v280 & ~(-1 << v281);
      }

      else
      {
        v282 = 0;
      }

      *a2 = 0;
      v284 = v521.i64[0];
      v285 = vmovl_s16(vceqz_s16(*v160.i8));
      v286.i64[0] = v285.i32[0];
      v286.i64[1] = v285.i32[1];
      v287 = v286;
      v286.i64[0] = v285.i32[2];
      v286.i64[1] = v285.i32[3];
      v288 = v286;
      v289 = vand_s8(vadd_s16(*v160.i8, 0xF000F000F000FLL), 0xF000F000F000FLL);
      v289.i16[3] = vbic_s8(0x1000100010001, *&v160).i16[3];
      v290 = vshlq_u32(vmovl_u16(v289), xmmword_29D2F12F0);
      v286.i64[0] = v290.u32[0];
      v286.i64[1] = v290.u32[1];
      v291 = v286;
      v286.i64[0] = v290.u32[2];
      v286.i64[1] = v290.u32[3];
      v292 = vorrq_s8(vbicq_s8(v291, v287), vbicq_s8(v286, v288));
      v293 = *&vorr_s8(*v292.i8, *&vextq_s8(v292, v292, 8uLL)) | v104.i8[0] & 0x1F | (32 * (v104.i8[2] & 0x1F)) & 0x83FF | ((v104.i8[4] & 0x1F) << 10) | ((v104.i8[6] & 0xF) << 15);
      v294 = (v293 << v281) | v282;
      if (v281 >= 0x20)
      {
        *v280 = v294;
        v294 = v293 >> (-8 * (a1 & 7u));
      }

      v295 = v284 & 0x3FF | ((WORD1(v284) & 0x3FF) << 10) | ((WORD2(v284) & 0x3FF) << 20) | ((BYTE6(v284) & 3) << 30);
      v296 = (v281 + 32) & 0x38;
      v297 = v294 | (v295 << v296);
      if (v296 >= 0x20)
      {
        *(v280 + (((v281 + 32) >> 3) & 8)) = v297;
        v297 = v295 >> -v296;
      }

      v298 = vsubq_s16(v527, v523);
      v299 = vsubq_s16(v527, v524);
      v300 = vsubq_s16(v527, v525);
      v301 = vsubq_s16(v527, v526);
      *v298.i8 = vqmovn_u16(v298);
      *v299.i8 = vqmovn_u16(v299);
      *v300.i8 = vqmovn_u16(v300);
      *v301.i8 = vqmovn_u16(v301);
      v302 = vtrn1q_s8(v298, v299);
      v303 = vtrn2q_s8(v298, v299);
      v304 = vtrn1q_s8(v300, v301);
      v305 = vtrn2q_s8(v300, v301);
      v306 = vzip1q_s16(v303, v305);
      v307 = vtrn2q_s16(v303, v305);
      v303.i64[0] = vzip1q_s32(vzip1q_s16(v302, v304), v306).u64[0];
      v307.i64[0] = vzip1q_s32(vtrn2q_s16(v302, v304), v307).u64[0];
      v300.i64[0] = 0x202020202020202;
      v300.i64[1] = 0x202020202020202;
      v308 = vandq_s8(vmovl_s16(vtst_s16(*v522.i8, 0x4000400040004)), v300);
      v300.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v300.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v302.i64[0] = -1;
      v302.i64[1] = -1;
      v309 = vshlq_u8(v302, vorrq_s8(v308, v300));
      v310 = vmovl_u8(vand_s8(*v309.i8, *v303.i8));
      v311 = vmovl_u8(vand_s8(*&vextq_s8(v309, v309, 8uLL), *v307.i8));
      v312 = vmovl_u8(*v308.i8);
      v313 = vmovl_high_u8(v308);
      v314 = vpaddq_s16(vshlq_u16(v310, vtrn1q_s16(0, v312)), vshlq_u16(v311, vtrn1q_s16(0, v313)));
      v315 = vpaddq_s16(v312, v313);
      v316 = vmovl_u16(*v315.i8);
      v317 = vmovl_high_u16(v315);
      v318 = vpaddq_s32(vshlq_u32(vmovl_u16(*v314.i8), vtrn1q_s32(0, v316)), vshlq_u32(vmovl_high_u16(v314), vtrn1q_s32(0, v317)));
      v319 = vpaddq_s32(v316, v317);
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
      v326 = (v324.i64[0] << v281) | v297;
      if (v325.i64[0] + v281 >= 0x40)
      {
        v280[1] = v326;
        v326 = v324.i64[0] >> (-8 * (a1 & 7u));
        if (!v281)
        {
          v326 = 0;
        }
      }

      v327 = v325.i64[0] + (v281 | 0x40);
      v328 = v326 | (v324.i64[1] << v327);
      if ((v327 & 0x3F) + v325.i64[1] >= 0x40)
      {
        *(v280 + ((v327 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v328;
        v328 = v324.i64[1] >> -(v327 & 0x3F);
        if ((v327 & 0x3F) == 0)
        {
          v328 = 0;
        }
      }

      v329 = v327 + v325.i64[1];
      v330.i64[0] = 0x8000800080008;
      v330.i64[1] = 0x8000800080008;
      v331.i64[0] = -1;
      v331.i64[1] = -1;
      v332 = vandq_s8(vextq_s8(vtstq_s16(v522, v330), 0, 8uLL), v527);
      v333.i64[0] = 0xF000F000F000FLL;
      v333.i64[1] = 0xF000F000F000FLL;
      v334 = vandq_s8(vshlq_u16(v331, vaddq_s16(v332, v333)), v530);
      v335 = vmovl_u16(*v332.i8);
      v336 = vpaddq_s32(vshlq_u32(vmovl_u16(*v334.i8), vtrn1q_s32(0, v335)), vmovl_high_u16(v334));
      v337 = vpaddq_s32(v335, vmovl_high_u16(v332));
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
        *(v280 + ((v329 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v344;
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
        *(v280 + ((v345 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v346;
        v346 = v342.i64[1] >> -(v345 & 0x3F);
        if ((v345 & 0x3F) == 0)
        {
          v346 = 0;
        }
      }

      v347 = v345 + v343.i64[1];
      v348 = vextq_s8(0, v523, 8uLL);
      v349.i64[0] = 0xF000F000F000FLL;
      v349.i64[1] = 0xF000F000F000FLL;
      v350.i64[0] = -1;
      v350.i64[1] = -1;
      v351 = vandq_s8(vshlq_u16(v350, vaddq_s16(v348, v349)), v502);
      v352 = vmovl_u16(*v348.i8);
      v353 = vmovl_high_u16(v348);
      v354 = vpaddq_s32(vmovl_u16(*v351.i8), vshlq_u32(vmovl_high_u16(v351), vtrn1q_s32(0, v353)));
      v355 = vpaddq_s32(v352, v353);
      v356.i64[0] = v354.u32[0];
      v356.i64[1] = v354.u32[1];
      v357 = v356;
      v356.i64[0] = v354.u32[2];
      v356.i64[1] = v354.u32[3];
      v358 = v356;
      v356.i64[0] = v355.u32[0];
      v356.i64[1] = v355.u32[1];
      v359 = v356;
      v356.i64[0] = v355.u32[2];
      v356.i64[1] = v355.u32[3];
      v360 = vpaddq_s64(vshlq_u64(v357, vzip1q_s64(0, v359)), vshlq_u64(v358, vzip1q_s64(0, v356)));
      v361 = vpaddq_s64(v359, v356);
      v362 = (v360.i64[0] << v347) | v346;
      if (v361.i64[0] + (v347 & 0x3F) >= 0x40)
      {
        *(v280 + ((v347 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v362;
        v362 = v360.i64[0] >> -(v347 & 0x3F);
        if ((v347 & 0x3F) == 0)
        {
          v362 = 0;
        }
      }

      v363 = v361.i64[0] + v347;
      v364 = v362 | (v360.i64[1] << v363);
      if ((v363 & 0x3F) + v361.i64[1] >= 0x40)
      {
        *(v280 + ((v363 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v364;
        v364 = v360.i64[1] >> -(v363 & 0x3F);
        if ((v363 & 0x3F) == 0)
        {
          v364 = 0;
        }
      }

      v365 = v363 + v361.i64[1];
      v366.i64[0] = 0xF000F000F000FLL;
      v366.i64[1] = 0xF000F000F000FLL;
      v367.i64[0] = -1;
      v367.i64[1] = -1;
      v368 = vandq_s8(vshlq_u16(v367, vaddq_s16(v523, v366)), v504);
      v369 = vmovl_u16(*v523.i8);
      v370 = vmovl_high_u16(v523);
      v371 = vpaddq_s32(vshlq_u32(vmovl_u16(*v368.i8), vtrn1q_s32(0, v369)), vshlq_u32(vmovl_high_u16(v368), vtrn1q_s32(0, v370)));
      v372 = vpaddq_s32(v369, v370);
      v373.i64[0] = v371.u32[0];
      v373.i64[1] = v371.u32[1];
      v374 = v373;
      v373.i64[0] = v371.u32[2];
      v373.i64[1] = v371.u32[3];
      v375 = v373;
      v373.i64[0] = v372.u32[0];
      v373.i64[1] = v372.u32[1];
      v376 = v373;
      v373.i64[0] = v372.u32[2];
      v373.i64[1] = v372.u32[3];
      v377 = vpaddq_s64(vshlq_u64(v374, vzip1q_s64(0, v376)), vshlq_u64(v375, vzip1q_s64(0, v373)));
      v378 = vpaddq_s64(v376, v373);
      v379 = (v377.i64[0] << v365) | v364;
      if (v378.i64[0] + (v365 & 0x3F) >= 0x40)
      {
        *(v280 + ((v365 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v379;
        v379 = v377.i64[0] >> -(v365 & 0x3F);
        if ((v365 & 0x3F) == 0)
        {
          v379 = 0;
        }
      }

      v380 = v378.i64[0] + v365;
      v381 = v379 | (v377.i64[1] << v380);
      if ((v380 & 0x3F) + v378.i64[1] >= 0x40)
      {
        *(v280 + ((v380 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v381;
        v381 = v377.i64[1] >> -(v380 & 0x3F);
        if ((v380 & 0x3F) == 0)
        {
          v381 = 0;
        }
      }

      v382 = v380 + v378.i64[1];
      v383.i64[0] = 0xF000F000F000FLL;
      v383.i64[1] = 0xF000F000F000FLL;
      v384.i64[0] = -1;
      v384.i64[1] = -1;
      v385 = vandq_s8(vshlq_u16(v384, vaddq_s16(v523, v383)), v506);
      v386 = vmovl_u16(*v523.i8);
      v387 = vmovl_high_u16(v523);
      v388 = vpaddq_s32(vshlq_u32(vmovl_u16(*v385.i8), vtrn1q_s32(0, v386)), vshlq_u32(vmovl_high_u16(v385), vtrn1q_s32(0, v387)));
      v389 = vpaddq_s32(v386, v387);
      v390.i64[0] = v388.u32[0];
      v390.i64[1] = v388.u32[1];
      v391 = v390;
      v390.i64[0] = v388.u32[2];
      v390.i64[1] = v388.u32[3];
      v392 = v390;
      v390.i64[0] = v389.u32[0];
      v390.i64[1] = v389.u32[1];
      v393 = v390;
      v390.i64[0] = v389.u32[2];
      v390.i64[1] = v389.u32[3];
      v394 = vpaddq_s64(vshlq_u64(v391, vzip1q_s64(0, v393)), vshlq_u64(v392, vzip1q_s64(0, v390)));
      v395 = vpaddq_s64(v393, v390);
      v396 = (v394.i64[0] << v382) | v381;
      if (v395.i64[0] + (v382 & 0x3F) >= 0x40)
      {
        *(v280 + ((v382 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v396;
        v396 = v394.i64[0] >> -(v382 & 0x3F);
        if ((v382 & 0x3F) == 0)
        {
          v396 = 0;
        }
      }

      v397 = v395.i64[0] + v382;
      v398 = v396 | (v394.i64[1] << v397);
      if ((v397 & 0x3F) + v395.i64[1] >= 0x40)
      {
        *(v280 + ((v397 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v398;
        v398 = v394.i64[1] >> -(v397 & 0x3F);
        if ((v397 & 0x3F) == 0)
        {
          v398 = 0;
        }
      }

      v399 = v397 + v395.i64[1];
      v400.i64[0] = 0xF000F000F000FLL;
      v400.i64[1] = 0xF000F000F000FLL;
      v401.i64[0] = -1;
      v401.i64[1] = -1;
      v402 = vandq_s8(vshlq_u16(v401, vaddq_s16(v523, v400)), v508);
      v403 = vmovl_u16(*v523.i8);
      v404 = vmovl_high_u16(v523);
      v405 = vpaddq_s32(vshlq_u32(vmovl_u16(*v402.i8), vtrn1q_s32(0, v403)), vshlq_u32(vmovl_high_u16(v402), vtrn1q_s32(0, v404)));
      v406 = vpaddq_s32(v403, v404);
      v407.i64[0] = v405.u32[0];
      v407.i64[1] = v405.u32[1];
      v408 = v407;
      v407.i64[0] = v405.u32[2];
      v407.i64[1] = v405.u32[3];
      v409 = v407;
      v407.i64[0] = v406.u32[0];
      v407.i64[1] = v406.u32[1];
      v410 = v407;
      v407.i64[0] = v406.u32[2];
      v407.i64[1] = v406.u32[3];
      v411 = vpaddq_s64(vshlq_u64(v408, vzip1q_s64(0, v410)), vshlq_u64(v409, vzip1q_s64(0, v407)));
      v412 = vpaddq_s64(v410, v407);
      v413 = (v411.i64[0] << v399) | v398;
      if (v412.i64[0] + (v399 & 0x3F) >= 0x40)
      {
        *(v280 + ((v399 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v413;
        v413 = v411.i64[0] >> -(v399 & 0x3F);
        if ((v399 & 0x3F) == 0)
        {
          v413 = 0;
        }
      }

      v414 = v412.i64[1];
      v415 = v412.i64[0] + v399;
      v416 = (v412.i64[0] + v399) & 0x3F;
      v417 = v413 | (v411.i64[1] << v415);
      if ((v416 + v412.i64[1]) >= 0x40)
      {
        *(v280 + ((v415 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v417;
        v417 = v411.i64[1] >> -v416;
        if (!v416)
        {
          v417 = 0;
        }
      }

      v418 = 0;
      v419.i64[0] = 0xF000F000F000FLL;
      v419.i64[1] = 0xF000F000F000FLL;
      v420.i64[0] = -1;
      v420.i64[1] = -1;
      v421 = v415 + v414;
      do
      {
        v422 = vandq_s8(vshlq_u16(v420, vaddq_s16(v524, v419)), *(&v509 + v418));
        v423 = vmovl_u16(*v524.i8);
        v424 = vmovl_high_u16(v524);
        v425 = vpaddq_s32(vshlq_u32(vmovl_u16(*v422.i8), vtrn1q_s32(0, v423)), vshlq_u32(vmovl_high_u16(v422), vtrn1q_s32(0, v424)));
        v426 = vpaddq_s32(v423, v424);
        v427.i64[0] = v425.u32[0];
        v427.i64[1] = v425.u32[1];
        v428 = v427;
        v427.i64[0] = v425.u32[2];
        v427.i64[1] = v425.u32[3];
        v429 = v427;
        v427.i64[0] = v426.u32[0];
        v427.i64[1] = v426.u32[1];
        v430 = v427;
        v427.i64[0] = v426.u32[2];
        v427.i64[1] = v426.u32[3];
        v431 = vpaddq_s64(vshlq_u64(v428, vzip1q_s64(0, v430)), vshlq_u64(v429, vzip1q_s64(0, v427)));
        v432 = vpaddq_s64(v430, v427);
        v433 = (v431.i64[0] << v421) | v417;
        if (v432.i64[0] + (v421 & 0x3F) >= 0x40)
        {
          *(v280 + ((v421 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v433;
          v433 = v431.i64[0] >> -(v421 & 0x3F);
          if ((v421 & 0x3F) == 0)
          {
            v433 = 0;
          }
        }

        v434 = v432.i64[0] + v421;
        v417 = v433 | (v431.i64[1] << v434);
        if ((v434 & 0x3F) + v432.i64[1] >= 0x40)
        {
          *(v280 + ((v434 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v417;
          v417 = v431.i64[1] >> -(v434 & 0x3F);
          if ((v434 & 0x3F) == 0)
          {
            v417 = 0;
          }
        }

        v421 = v434 + v432.i64[1];
        v418 += 16;
      }

      while (v418 != 64);
      v435 = 0;
      v436.i64[0] = 0xF000F000F000FLL;
      v436.i64[1] = 0xF000F000F000FLL;
      v437.i64[0] = -1;
      v437.i64[1] = -1;
      do
      {
        v438 = vandq_s8(vshlq_u16(v437, vaddq_s16(v525, v436)), *(&v513 + v435));
        v439 = vmovl_u16(*v525.i8);
        v440 = vmovl_high_u16(v525);
        v441 = vpaddq_s32(vshlq_u32(vmovl_u16(*v438.i8), vtrn1q_s32(0, v439)), vshlq_u32(vmovl_high_u16(v438), vtrn1q_s32(0, v440)));
        v442 = vpaddq_s32(v439, v440);
        v443.i64[0] = v441.u32[0];
        v443.i64[1] = v441.u32[1];
        v444 = v443;
        v443.i64[0] = v441.u32[2];
        v443.i64[1] = v441.u32[3];
        v445 = v443;
        v443.i64[0] = v442.u32[0];
        v443.i64[1] = v442.u32[1];
        v446 = v443;
        v443.i64[0] = v442.u32[2];
        v443.i64[1] = v442.u32[3];
        v447 = vpaddq_s64(vshlq_u64(v444, vzip1q_s64(0, v446)), vshlq_u64(v445, vzip1q_s64(0, v443)));
        v448 = vpaddq_s64(v446, v443);
        v449 = (v447.i64[0] << v421) | v417;
        if (v448.i64[0] + (v421 & 0x3F) >= 0x40)
        {
          *(v280 + ((v421 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v449;
          v449 = v447.i64[0] >> -(v421 & 0x3F);
          if ((v421 & 0x3F) == 0)
          {
            v449 = 0;
          }
        }

        v450 = v448.i64[0] + v421;
        v417 = v449 | (v447.i64[1] << v450);
        if ((v450 & 0x3F) + v448.i64[1] >= 0x40)
        {
          *(v280 + ((v450 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v417;
          v417 = v447.i64[1] >> -(v450 & 0x3F);
          if ((v450 & 0x3F) == 0)
          {
            v417 = 0;
          }
        }

        v421 = v450 + v448.i64[1];
        v435 += 16;
      }

      while (v435 != 64);
      v451 = 0;
      v452.i64[0] = 0xF000F000F000FLL;
      v452.i64[1] = 0xF000F000F000FLL;
      v453.i64[0] = -1;
      v453.i64[1] = -1;
      do
      {
        v454 = vandq_s8(vshlq_u16(v453, vaddq_s16(v526, v452)), *(&v517 + v451));
        v455 = vmovl_u16(*v526.i8);
        v456 = vmovl_high_u16(v526);
        v457 = vpaddq_s32(vshlq_u32(vmovl_u16(*v454.i8), vtrn1q_s32(0, v455)), vshlq_u32(vmovl_high_u16(v454), vtrn1q_s32(0, v456)));
        v458 = vpaddq_s32(v455, v456);
        v459.i64[0] = v457.u32[0];
        v459.i64[1] = v457.u32[1];
        v460 = v459;
        v459.i64[0] = v457.u32[2];
        v459.i64[1] = v457.u32[3];
        v461 = v459;
        v459.i64[0] = v458.u32[0];
        v459.i64[1] = v458.u32[1];
        v462 = v459;
        v459.i64[0] = v458.u32[2];
        v459.i64[1] = v458.u32[3];
        v463 = vpaddq_s64(vshlq_u64(v460, vzip1q_s64(0, v462)), vshlq_u64(v461, vzip1q_s64(0, v459)));
        v464 = vpaddq_s64(v462, v459);
        v465 = (v463.i64[0] << v421) | v417;
        if (v464.i64[0] + (v421 & 0x3F) >= 0x40)
        {
          *(v280 + ((v421 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v465;
          v465 = v463.i64[0] >> -(v421 & 0x3F);
          if ((v421 & 0x3F) == 0)
          {
            v465 = 0;
          }
        }

        v466 = v464.i64[0] + v421;
        v417 = v465 | (v463.i64[1] << v466);
        if ((v466 & 0x3F) + v464.i64[1] >= 0x40)
        {
          *(v280 + ((v466 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v417;
          v417 = v463.i64[1] >> -(v466 & 0x3F);
          if ((v466 & 0x3F) == 0)
          {
            v417 = 0;
          }
        }

        v421 = v466 + v464.i64[1];
        v451 += 16;
      }

      while (v451 != 64);
      if ((v421 & 0x3F) != 0)
      {
        *(v280 + ((v421 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v417;
      }

      result = (v421 - v281 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = *a3;
    *a2 = 3;
    return 4;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v88 = *MEMORY[0x29EDCA608];
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  if (a6 && a5)
  {
    if (a5 >= 2)
    {
      v30 = 0;
      v31 = a5 & 0x7E;
      v32 = a3;
      do
      {
        v33 = (v30 & 0x7F) << 7;
        v34 = (&v60 + 32 * ((a5 >> 1) & 0x3F) + v33);
        v35 = (&v60 + v33);
        v36 = v32;
        v37 = a5 & 0x7E;
        do
        {
          v89 = vld2_f32(v36);
          v36 += 4;
          v38 = vand_s8(v89.val[0], 0x300000003);
          v39 = vshr_n_u32(v89.val[0], 0x14uLL);
          v40.i64[0] = v38.u32[0];
          v40.i64[1] = v38.u32[1];
          v90.val[0] = vorrq_s8(vshll_n_s32(vand_s8(vshr_n_u32(v89.val[0], 0xAuLL), 0x300000003), 0x20uLL), v40);
          v40.i64[0] = v39.i32[0] & 0xFFFFF3FF;
          v40.i64[1] = v39.i32[1] & 0xFFFFF3FF;
          v90.val[1] = vorrq_s8(vshll_n_s32(vshr_n_u32(v89.val[0], 0x1EuLL), 0x20uLL), v40);
          v41 = v35 - 8;
          vst2q_f64(v41, v90);
          *&v90.val[0].f64[0] = vand_s8(v89.val[1], 0x300000003);
          v42 = *&vshr_n_u32(v89.val[1], 0x14uLL) & 0xFFFFF3FFFFFFF3FFLL;
          v89.val[0] = vshr_n_u32(v89.val[1], 0x1EuLL);
          v40.i64[0] = LODWORD(v90.val[0].f64[0]);
          v40.i64[1] = HIDWORD(v90.val[0].f64[0]);
          *(&v89 + 8) = vorrq_s8(vshll_n_s32(vand_s8(vshr_n_u32(v89.val[1], 0xAuLL), 0x300000003), 0x20uLL), v40);
          v40.i64[0] = v42;
          v40.i64[1] = HIDWORD(v42);
          v90.val[0] = vorrq_s8(vshll_n_s32(v89.val[0], 0x20uLL), v40);
          vst2q_f64(v35, *v89.val[1].f32);
          v35 += 4;
          v37 -= 2;
        }

        while (v37);
        if (a5 != v31)
        {
          v43 = (a3 + v30 * a4 + 8 * v31);
          v44 = a5 - v31;
          do
          {
            v46 = *v43;
            v45 = v43[1];
            v43 += 2;
            *(v34 - 8) = v46 & 0x3FF | (((v46 >> 10) & 0x3FF) << 32);
            *(v34 - 7) = (4 * v46) & 0x300000000 | (v46 >> 20) & 0x3FF;
            *v34 = v45 & 0x3FF | (((v45 >> 10) & 0x3FF) << 32);
            v34[1] = (4 * v45) & 0x300000000 | (v45 >> 20) & 0x3FF;
            v34 += 2;
            --v44;
          }

          while (v44);
        }

        ++v30;
        v32 = (v32 + a4);
      }

      while (v30 != a6);
    }

    else
    {
      v11 = 0;
      v12 = (a3 + 4);
      do
      {
        v13 = *(v12 - 1);
        v14 = (&v56 + 4 * (v11 & 0xFE));
        *v14 = v13 & 0x3FF | (((v13 >> 10) & 0x3FF) << 32);
        v14[1] = (4 * v13) & 0x300000000 | (v13 >> 20) & 0x3FF;
        v15 = *v12;
        v14[8] = v15 & 0x3FF | (((v15 >> 10) & 0x3FF) << 32);
        v14[9] = (4 * v15) & 0x300000000 | (v15 >> 20) & 0x3FF;
        v11 += 2;
        v12 = (v12 + a4);
      }

      while (2 * a6 != v11);
    }
  }

  v48 = v56;
  v49 = v60;
  v50 = v57;
  v51 = v61;
  v52 = v64;
  v53 = v68;
  v16 = 2 * (a5 & 0x7F);
  if (v16 >= 4)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2 * (a5 & 0x7F);
  }

  if (v16 >= 4)
  {
    v18 = v16 - 4;
  }

  else
  {
    v18 = 0;
  }

  if (a6 >= 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = a6;
  }

  v54 = v65;
  v55 = v69;
  if (a6 >= 2)
  {
    v20 = a6 - 2;
  }

  else
  {
    v20 = 0;
  }

  v21 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v48, a7, v17, v19);
  v48 = v58;
  v49 = v62;
  v50 = v59;
  v51 = v63;
  v52 = v66;
  v53 = v70;
  v54 = v67;
  v55 = v71;
  if (a6 >= 4)
  {
    v22 = 2;
  }

  else
  {
    v22 = v20;
  }

  v23 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 16, &v48, a7, v17, v22);
  v48 = v72;
  v49 = v76;
  v50 = v73;
  v51 = v77;
  v52 = v80;
  v53 = v84;
  if (a5 >= 4)
  {
    v24 = 4;
  }

  else
  {
    v24 = v18;
  }

  v54 = v81;
  v55 = v85;
  v25 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 32, &v48, a7, v24, v19);
  v48 = v74;
  v49 = v78;
  v50 = v75;
  v51 = v79;
  v52 = v82;
  v53 = v86;
  v54 = v83;
  v55 = v87;
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 48, &v48, a7, v24, v22);
  if (v25)
  {
    v27 = 4;
  }

  else
  {
    v27 = 0;
  }

  if (v23)
  {
    v28 = 2;
  }

  else
  {
    v28 = 0;
  }

  if (result)
  {
    v29 = -8;
  }

  else
  {
    v29 = -16;
  }

  *a2 = v29 | v27 | v21 | v28;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v450 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    v7 = a4;
    if (a4 < 0xF0)
    {
      if (a4 == 127)
      {
        v28 = *(a3 + 16);
        v29 = *(a3 + 32);
        v30 = *(a3 + 48);
        v31 = *(a3 + 80);
        v32 = *(a3 + 96);
        v33 = *(a3 + 112);
        v34 = *(a3 + 64);
        v35 = (a1 + a2);
        *a1 = *a3;
        *(a1 + 16) = v29;
        v36 = (a1 + 2 * a2);
        *v35 = v28;
        v35[1] = v30;
        *v36 = v34;
        v36[1] = v32;
        v37 = (v36 + a2);
        *v37 = v31;
        v37[1] = v33;
        return 128;
      }

      else if (a4 == 3)
      {
        v14 = vld1q_dup_f32(a3);
        *a1 = v14;
        *(a1 + 16) = v14;
        v15 = (a1 + a2);
        *v15 = v14;
        v15[1] = v14;
        v16 = (a1 + 2 * a2);
        *v16 = v14;
        v16[1] = v14;
        v17 = (a1 + a2 + 2 * a2);
        *v17 = v14;
        v17[1] = v14;
        return 4;
      }

      else
      {
        v413.i8[8] = 0;
        v413.i64[0] = (8 * (a3 & 7)) | 0x200;
        v412.i64[0] = 8 * (a3 & 7);
        v412.i64[1] = a3 & 0xFFFFFFFFFFFFFFF8;
        result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)13,AGX::AppleCompressionGen2::Vec<short>>(&v437, v442, &v436, &v412, a4);
        v39.i64[0] = 0x3000300030003;
        v39.i64[1] = 0x3000300030003;
        v40 = v437;
        v41 = vandq_s8(v437, v39);
        v42 = vbicq_s8(v442[0], vceqq_s16(v41, v39));
        v442[0] = v42;
        v438 = v42;
        v439 = v42;
        v440 = v42;
        v441 = v42;
        v43.i64[0] = 0x202020202020202;
        v43.i64[1] = 0x202020202020202;
        v44 = vandq_s8(vmovl_s16(vtst_s16(*v437.i8, 0x4000400040004)), v43);
        v45 = v412.i64[0];
        if (vmaxvq_s8(v44) < 1)
        {
          v59.i64[0] = -1;
          v59.i64[1] = -1;
          v60.i64[0] = -1;
          v60.i64[1] = -1;
          v61.i64[0] = -1;
          v61.i64[1] = -1;
          v62.i64[0] = -1;
          v62.i64[1] = -1;
        }

        else
        {
          v46 = vmovl_u8(*&vpaddq_s8(v44, v44));
          v47 = vmovl_u16(*&vpaddq_s16(v46, v46));
          v48 = vpaddq_s32(v47, v47).u64[0];
          v49.i64[0] = v48;
          v49.i64[1] = HIDWORD(v48);
          v50 = v49;
          v51 = vaddvq_s64(v49);
          v52 = v51;
          v53 = v412.i64[0] + v51;
          if (v413.i64[0])
          {
            _CF = v413.i64[0] >= v53;
          }

          else
          {
            _CF = 1;
          }

          v55 = _CF;
          if (v51 <= 0x80 && (v55 & 1) != 0)
          {
            v38.i64[0] = 63;
            v56 = (v412.i64[1] + 8 * (v412.i64[0] >> 6));
            v57 = vaddq_s64(vdupq_lane_s64(vandq_s8(v412.u64[0], v38).i64[0], 0), vzip1q_s64(0, v50));
            v58 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v56, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v57)), vshlq_u64(vdupq_lane_s64(v56->i64[0], 0), vnegq_s64(v57)));
            if ((v412.i8[0] & 0x3F) + v52 >= 0x81)
            {
              v58 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v56[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v57)), vshlq_u64(vdupq_laneq_s64(v56[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v57))), v58);
            }

            v45 = v53;
          }

          else
          {
            v413.i8[8] = 1;
            v58 = 0uLL;
          }

          v63 = vzip1_s32(*v47.i8, *&vextq_s8(v47, v47, 8uLL));
          v64.i64[0] = v63.u32[0];
          v64.i64[1] = v63.u32[1];
          v65 = vshlq_u64(v58, vnegq_s64(v64));
          v66 = vuzp1q_s32(vzip1q_s64(v58, v65), vzip2q_s64(v58, v65));
          v67 = vshlq_u32(v66, vnegq_s32((*&v46 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
          v68 = vuzp1q_s16(vzip1q_s32(v66, v67), vzip2q_s32(v66, v67));
          v69 = vshlq_u16(v68, vnegq_s16((*&v44 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
          v70 = vuzp1q_s8(vzip1q_s16(v68, v69), vzip2q_s16(v68, v69));
          v69.i64[0] = 0x101010101010101;
          v69.i64[1] = 0x101010101010101;
          v71 = vshlq_s8(v69, v44);
          v69.i64[0] = -1;
          v69.i64[1] = -1;
          v72 = vqtbl1q_s8(vandq_s8(vaddq_s8(v71, v69), v70), xmmword_29D2F0F70);
          *v70.i8 = vdup_lane_s32(*v72.i8, 0);
          *v69.i8 = vdup_lane_s32(*v72.i8, 1);
          v73 = vdupq_laneq_s32(v72, 2).u64[0];
          v72.i64[0] = vdupq_laneq_s32(v72, 3).u64[0];
          v438 = vsubw_s8(v438, *v70.i8);
          v439 = vsubw_s8(v439, *v69.i8);
          v440 = vsubw_s8(v440, v73);
          v441 = vsubw_s8(v441, *v72.i8);
          v62 = vmovl_s8(vceqz_s8(*v70.i8));
          v61 = vmovl_s8(vceqz_s8(*v69.i8));
          v60 = vmovl_s8(vceqz_s8(v73));
          v59 = vmovl_s8(vceqz_s8(*v72.i8));
        }

        v74.i64[0] = 0x8000800080008;
        v74.i64[1] = 0x8000800080008;
        v75 = 0uLL;
        v76 = vandq_s8(vextq_s8(vtstq_s16(v437, v74), 0, 8uLL), v42);
        v77 = vmovl_u16(*&vpaddq_s16(v76, v76));
        v78 = vpaddq_s32(v77, v77).u64[0];
        v79.i64[0] = v78;
        v79.i64[1] = HIDWORD(v78);
        v80 = v79;
        v81 = vaddvq_s64(v79);
        if (v413.i64[0])
        {
          v82 = v413.i64[0] >= v45 + v81;
        }

        else
        {
          v82 = 1;
        }

        v83 = v82;
        if (v81 <= 0x80 && (v83 & 1) != 0)
        {
          v84 = vaddq_s64(vdupq_n_s64(v45 & 0x3F), vzip1q_s64(0, v80));
          v85 = (v412.i64[1] + 8 * (v45 >> 6));
          v75 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v85, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v84)), vshlq_u64(vdupq_lane_s64(v85->i64[0], 0), vnegq_s64(v84)));
          if ((v45 & 0x3F) + v81 >= 0x81)
          {
            v75 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v85[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v84)), vshlq_u64(vdupq_laneq_s64(v85[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v84))), v75);
          }

          v45 += v81;
        }

        else
        {
          v413.i8[8] = 1;
        }

        v86 = vzip1_s32(*v77.i8, *&vextq_s8(v77, v77, 8uLL));
        v87.i64[0] = v86.u32[0];
        v87.i64[1] = v86.u32[1];
        v88 = vshlq_u64(v75, vnegq_s64(v87));
        v89 = vuzp1q_s32(vzip1q_s64(v75, v88), vzip2q_s64(v75, v88));
        v90.i64[0] = 0xFFFF0000FFFFLL;
        v90.i64[1] = 0xFFFF0000FFFFLL;
        v91 = vshlq_u32(v89, vnegq_s32(vandq_s8(v76, v90)));
        v92 = vuzp1q_s16(vzip1q_s32(v89, v91), vzip2q_s32(v89, v91));
        v91.i64[0] = 0xF000F000F000FLL;
        v91.i64[1] = 0xF000F000F000FLL;
        v93.i64[0] = 0x10001000100010;
        v93.i64[1] = 0x10001000100010;
        v94 = vshlq_s16(vshlq_s16(v92, vsubq_s16(v93, v76)), vaddq_s16(v76, v91));
        v443 = v94;
        v95 = v437.i8[0] & 3;
        if (v95 == 2)
        {
          if (v413.i64[0])
          {
            v96 = v45 + 8;
            v97 = v45 + 16;
            if (v413.i64[0] >= v45 + 8)
            {
              v45 += 8;
            }

            else
            {
              v97 = v45 + 8;
            }

            if (v413.i64[0] >= v97)
            {
              v45 = v97;
            }

            if (v413.i64[0] < v96 || v413.i64[0] < v97)
            {
              v413.i8[8] = 1;
            }
          }

          else
          {
            v45 += 16;
          }
        }

        v98 = 0uLL;
        v99 = vextq_s8(0, v438, 8uLL);
        v100 = vmovl_u16(*&vpaddq_s16(v99, v99));
        v101 = vpaddq_s32(v100, v100).u64[0];
        v102.i64[0] = v101;
        v102.i64[1] = HIDWORD(v101);
        v103 = v102;
        v104 = vaddvq_s64(v102);
        v105 = v45 + v104;
        if (v413.i64[0])
        {
          v106 = v413.i64[0] >= v105;
        }

        else
        {
          v106 = 1;
        }

        v107 = v106;
        if (v104 <= 0x80 && (v107 & 1) != 0)
        {
          v108 = v45 & 0x3F;
          v109 = vaddq_s64(vdupq_n_s64(v108), vzip1q_s64(0, v103));
          v110 = v412.i64[1];
          v111 = (v412.i64[1] + 8 * (v45 >> 6));
          v98 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v111, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v109)), vshlq_u64(vdupq_lane_s64(v111->i64[0], 0), vnegq_s64(v109)));
          if (v108 + v104 >= 0x81)
          {
            v98 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v111[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v109)), vshlq_u64(vdupq_laneq_s64(v111[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v109))), v98);
          }

          v112 = v413.i8[8];
          v45 = v105;
        }

        else
        {
          v112 = 1;
          v110 = v412.i64[1];
        }

        v113 = vzip1_s32(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
        v114.i64[0] = v113.u32[0];
        v114.i64[1] = v113.u32[1];
        v115 = vshlq_u64(v98, vnegq_s64(v114));
        v116 = vuzp1q_s32(vzip1q_s64(v98, v115), vzip2q_s64(v98, v115));
        v117.i64[0] = 0xFFFF0000FFFFLL;
        v117.i64[1] = 0xFFFF0000FFFFLL;
        v118 = vshlq_u32(v116, vnegq_s32(vandq_s8(v99, v117)));
        v119.i64[0] = 0xF000F000F000FLL;
        v119.i64[1] = 0xF000F000F000FLL;
        v120.i64[0] = 0x10001000100010;
        v120.i64[1] = 0x10001000100010;
        v121 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v116, v118), vzip2q_s32(v116, v118)), vsubq_s16(v120, v99)), vaddq_s16(v99, v119));
        v420 = v121;
        v122 = vmovl_u16(*&vpaddq_s16(v438, v438));
        v116.i64[0] = vpaddq_s32(v122, v122).u64[0];
        v114.i64[0] = v116.u32[0];
        v114.i64[1] = v116.u32[1];
        v123 = v114;
        v124 = vaddvq_s64(v114);
        v125 = v45 + v124;
        if (v413.i64[0])
        {
          v126 = v413.i64[0] >= v125;
        }

        else
        {
          v126 = 1;
        }

        v127 = v126;
        v128 = 0uLL;
        if (v124 <= 0x80 && v127)
        {
          v129 = v45 & 0x3F;
          v130 = vaddq_s64(vdupq_n_s64(v129), vzip1q_s64(0, v123));
          v131 = (v110 + 8 * (v45 >> 6));
          v132 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v131, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v130)), vshlq_u64(vdupq_lane_s64(v131->i64[0], 0), vnegq_s64(v130)));
          if (v129 + v124 >= 0x81)
          {
            v132 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v131[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v130)), vshlq_u64(vdupq_laneq_s64(v131[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v130))), v132);
          }
        }

        else
        {
          v112 = 1;
          v125 = v45;
          v132 = 0uLL;
        }

        v133 = vzip1_s32(*v122.i8, *&vextq_s8(v122, v122, 8uLL));
        v134.i64[0] = v133.u32[0];
        v134.i64[1] = v133.u32[1];
        v135 = vnegq_s64(v134);
        v136 = vshlq_u64(v132, v135);
        v137 = vuzp1q_s32(vzip1q_s64(v132, v136), vzip2q_s64(v132, v136));
        v138 = vnegq_s32(vandq_s8(v438, v117));
        v139 = vshlq_u32(v137, v138);
        v140 = vuzp1q_s16(vzip1q_s32(v137, v139), vzip2q_s32(v137, v139));
        v141 = vaddq_s16(v438, v119);
        v142 = vsubq_s16(v120, v438);
        v143 = vshlq_s16(vshlq_s16(v140, v142), v141);
        v421 = v143;
        v144 = v125 + v124;
        if (v413.i64[0])
        {
          v145 = v413.i64[0] >= v144;
        }

        else
        {
          v145 = 1;
        }

        v146 = v145;
        if (v124 <= 0x80 && v146)
        {
          v147 = v125 & 0x3F;
          v148 = vaddq_s64(vdupq_n_s64(v147), vzip1q_s64(0, v123));
          v149 = (v110 + 8 * (v125 >> 6));
          v128 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v149, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v148)), vshlq_u64(vdupq_lane_s64(v149->i64[0], 0), vnegq_s64(v148)));
          if (v147 + v124 >= 0x81)
          {
            v128 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v149[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v148)), vshlq_u64(vdupq_laneq_s64(v149[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v148))), v128);
          }
        }

        else
        {
          v112 = 1;
          v144 = v125;
        }

        v150 = vshlq_u64(v128, v135);
        v151 = vuzp1q_s32(vzip1q_s64(v128, v150), vzip2q_s64(v128, v150));
        v152 = vshlq_u32(v151, v138);
        v153 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v151, v152), vzip2q_s32(v151, v152)), v142), v141);
        v422 = v153;
        v154 = v144 + v124;
        if (v413.i64[0])
        {
          v155 = v413.i64[0] >= v154;
        }

        else
        {
          v155 = 1;
        }

        v156 = v155;
        v157 = 0uLL;
        if (v124 <= 0x80 && v156)
        {
          v158 = v144 & 0x3F;
          v159 = vaddq_s64(vdupq_n_s64(v158), vzip1q_s64(0, v123));
          v160 = (v110 + 8 * (v144 >> 6));
          v161 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v160, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v159)), vshlq_u64(vdupq_lane_s64(v160->i64[0], 0), vnegq_s64(v159)));
          if (v158 + v124 >= 0x81)
          {
            v161 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v160[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v159)), vshlq_u64(vdupq_laneq_s64(v160[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v159))), v161);
          }
        }

        else
        {
          v112 = 1;
          v154 = v144;
          v161 = 0uLL;
        }

        v162 = vshlq_u64(v161, v135);
        v163 = vuzp1q_s32(vzip1q_s64(v161, v162), vzip2q_s64(v161, v162));
        v164 = vshlq_u32(v163, v138);
        v165 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v163, v164), vzip2q_s32(v163, v164)), v142), v141);
        v423 = v165;
        v166 = vmovl_u16(*&vpaddq_s16(v439, v439));
        v167 = vpaddq_s32(v166, v166).u64[0];
        v168.i64[0] = v167;
        v168.i64[1] = HIDWORD(v167);
        v169 = v168;
        v170 = vaddvq_s64(v168);
        v171 = v170;
        v172 = v154 + v170;
        if (v413.i64[0])
        {
          v173 = v413.i64[0] >= v172;
        }

        else
        {
          v173 = 1;
        }

        v174 = v173;
        if (v170 <= 0x80 && v174)
        {
          v175 = v154 & 0x3F;
          v176 = vaddq_s64(vdupq_n_s64(v175), vzip1q_s64(0, v169));
          v177 = (v110 + 8 * (v154 >> 6));
          v157 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v177, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v176)), vshlq_u64(vdupq_lane_s64(v177->i64[0], 0), vnegq_s64(v176)));
          if (v175 + v171 >= 0x81)
          {
            v157 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v177[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v176)), vshlq_u64(vdupq_laneq_s64(v177[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v176))), v157);
          }
        }

        else
        {
          v112 = 1;
          v172 = v154;
        }

        v178 = vzip1_s32(*v166.i8, *&vextq_s8(v166, v166, 8uLL));
        v179.i64[0] = v178.u32[0];
        v179.i64[1] = v178.u32[1];
        v180 = vnegq_s64(v179);
        v181 = vshlq_u64(v157, v180);
        v182 = vuzp1q_s32(vzip1q_s64(v157, v181), vzip2q_s64(v157, v181));
        v183.i64[0] = 0xFFFF0000FFFFLL;
        v183.i64[1] = 0xFFFF0000FFFFLL;
        v184 = vnegq_s32(vandq_s8(v439, v183));
        v185 = vshlq_u32(v182, v184);
        v186 = vuzp1q_s16(vzip1q_s32(v182, v185), vzip2q_s32(v182, v185));
        v185.i64[0] = 0xF000F000F000FLL;
        v185.i64[1] = 0xF000F000F000FLL;
        v187 = vaddq_s16(v439, v185);
        v185.i64[0] = 0x10001000100010;
        v185.i64[1] = 0x10001000100010;
        v188 = vsubq_s16(v185, v439);
        v189 = vshlq_s16(vshlq_s16(v186, v188), v187);
        v424 = v189;
        v190 = v172 + v171;
        if (v413.i64[0])
        {
          v191 = v413.i64[0] >= v190;
        }

        else
        {
          v191 = 1;
        }

        v192 = v191;
        v193 = 0uLL;
        if (v171 <= 0x80 && v192)
        {
          v194 = v172 & 0x3F;
          v195 = vaddq_s64(vdupq_n_s64(v194), vzip1q_s64(0, v169));
          v196 = (v110 + 8 * (v172 >> 6));
          v197 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v196, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v195)), vshlq_u64(vdupq_lane_s64(v196->i64[0], 0), vnegq_s64(v195)));
          if (v194 + v171 >= 0x81)
          {
            v197 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v196[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v195)), vshlq_u64(vdupq_laneq_s64(v196[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v195))), v197);
          }
        }

        else
        {
          v112 = 1;
          v190 = v172;
          v197 = 0uLL;
        }

        v198 = vshlq_u64(v197, v180);
        v199 = vuzp1q_s32(vzip1q_s64(v197, v198), vzip2q_s64(v197, v198));
        v200 = vshlq_u32(v199, v184);
        v201 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v199, v200), vzip2q_s32(v199, v200)), v188), v187);
        v425 = v201;
        v202 = v190 + v171;
        if (v413.i64[0])
        {
          v203 = v413.i64[0] >= v202;
        }

        else
        {
          v203 = 1;
        }

        v204 = v203;
        if (v171 <= 0x80 && v204)
        {
          v205 = v190 & 0x3F;
          v206 = vaddq_s64(vdupq_n_s64(v205), vzip1q_s64(0, v169));
          v207 = (v110 + 8 * (v190 >> 6));
          v193 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v207, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v206)), vshlq_u64(vdupq_lane_s64(v207->i64[0], 0), vnegq_s64(v206)));
          if (v205 + v171 >= 0x81)
          {
            v193 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v207[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v206)), vshlq_u64(vdupq_laneq_s64(v207[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v206))), v193);
          }
        }

        else
        {
          v112 = 1;
          v202 = v190;
        }

        v208 = vshlq_u64(v193, v180);
        v209 = vuzp1q_s32(vzip1q_s64(v193, v208), vzip2q_s64(v193, v208));
        v210 = vshlq_u32(v209, v184);
        v211 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v209, v210), vzip2q_s32(v209, v210)), v188), v187);
        v426 = v211;
        v212 = v202 + v171;
        if (v413.i64[0])
        {
          v213 = v413.i64[0] >= v212;
        }

        else
        {
          v213 = 1;
        }

        v214 = v213;
        v215 = 0uLL;
        if (v171 <= 0x80 && v214)
        {
          v216 = v202 & 0x3F;
          v217 = vaddq_s64(vdupq_n_s64(v216), vzip1q_s64(0, v169));
          v218 = (v110 + 8 * (v202 >> 6));
          v219 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v218, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v217)), vshlq_u64(vdupq_lane_s64(v218->i64[0], 0), vnegq_s64(v217)));
          if (v216 + v171 >= 0x81)
          {
            v219 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v218[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v217)), vshlq_u64(vdupq_laneq_s64(v218[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v217))), v219);
          }
        }

        else
        {
          v112 = 1;
          v212 = v202;
          v219 = 0uLL;
        }

        v220 = vshlq_u64(v219, v180);
        v221 = vuzp1q_s32(vzip1q_s64(v219, v220), vzip2q_s64(v219, v220));
        v222 = vshlq_u32(v221, v184);
        v223 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v221, v222), vzip2q_s32(v221, v222)), v188), v187);
        v427 = v223;
        v224 = vmovl_u16(*&vpaddq_s16(v440, v440));
        v225 = vpaddq_s32(v224, v224).u64[0];
        v226.i64[0] = v225;
        v226.i64[1] = HIDWORD(v225);
        v227 = v226;
        v228 = vaddvq_s64(v226);
        v229 = v228;
        v230 = v212 + v228;
        if (v413.i64[0])
        {
          v231 = v413.i64[0] >= v230;
        }

        else
        {
          v231 = 1;
        }

        v232 = v231;
        if (v228 <= 0x80 && v232)
        {
          v233 = v212 & 0x3F;
          v234 = vaddq_s64(vdupq_n_s64(v233), vzip1q_s64(0, v227));
          v235 = (v110 + 8 * (v212 >> 6));
          v215 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v235, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v234)), vshlq_u64(vdupq_lane_s64(v235->i64[0], 0), vnegq_s64(v234)));
          if (v233 + v229 >= 0x81)
          {
            v215 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v235[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v234)), vshlq_u64(vdupq_laneq_s64(v235[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v234))), v215);
          }
        }

        else
        {
          v112 = 1;
          v230 = v212;
        }

        v236 = vzip1_s32(*v224.i8, *&vextq_s8(v224, v224, 8uLL));
        v237.i64[0] = v236.u32[0];
        v237.i64[1] = v236.u32[1];
        v238 = vnegq_s64(v237);
        v239 = vshlq_u64(v215, v238);
        v240 = vuzp1q_s32(vzip1q_s64(v215, v239), vzip2q_s64(v215, v239));
        v241.i64[0] = 0xFFFF0000FFFFLL;
        v241.i64[1] = 0xFFFF0000FFFFLL;
        v242 = vnegq_s32(vandq_s8(v440, v241));
        v243 = vshlq_u32(v240, v242);
        v244 = vuzp1q_s16(vzip1q_s32(v240, v243), vzip2q_s32(v240, v243));
        v243.i64[0] = 0xF000F000F000FLL;
        v243.i64[1] = 0xF000F000F000FLL;
        v245 = vaddq_s16(v440, v243);
        v243.i64[0] = 0x10001000100010;
        v243.i64[1] = 0x10001000100010;
        v246 = vsubq_s16(v243, v440);
        v247 = vshlq_s16(vshlq_s16(v244, v246), v245);
        v428 = v247;
        v248 = v230 + v229;
        if (v413.i64[0])
        {
          v249 = v413.i64[0] >= v248;
        }

        else
        {
          v249 = 1;
        }

        v250 = v249;
        v251 = 0uLL;
        if (v229 <= 0x80 && v250)
        {
          v252 = v230 & 0x3F;
          v253 = vaddq_s64(vdupq_n_s64(v252), vzip1q_s64(0, v227));
          v254 = (v110 + 8 * (v230 >> 6));
          v255 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v254, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v253)), vshlq_u64(vdupq_lane_s64(v254->i64[0], 0), vnegq_s64(v253)));
          if (v252 + v229 >= 0x81)
          {
            v255 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v254[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v253)), vshlq_u64(vdupq_laneq_s64(v254[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v253))), v255);
          }
        }

        else
        {
          v112 = 1;
          v248 = v230;
          v255 = 0uLL;
        }

        v256 = vshlq_u64(v255, v238);
        v257 = vuzp1q_s32(vzip1q_s64(v255, v256), vzip2q_s64(v255, v256));
        v258 = vshlq_u32(v257, v242);
        v259 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v257, v258), vzip2q_s32(v257, v258)), v246), v245);
        v429 = v259;
        v260 = v248 + v229;
        if (v413.i64[0])
        {
          v261 = v413.i64[0] >= v260;
        }

        else
        {
          v261 = 1;
        }

        v262 = v261;
        if (v229 <= 0x80 && v262)
        {
          v263 = v248 & 0x3F;
          v264 = vaddq_s64(vdupq_n_s64(v263), vzip1q_s64(0, v227));
          v265 = (v110 + 8 * (v248 >> 6));
          v251 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v265, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v264)), vshlq_u64(vdupq_lane_s64(v265->i64[0], 0), vnegq_s64(v264)));
          if (v263 + v229 >= 0x81)
          {
            v251 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v265[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v264)), vshlq_u64(vdupq_laneq_s64(v265[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v264))), v251);
          }
        }

        else
        {
          v112 = 1;
          v260 = v248;
        }

        v266 = vshlq_u64(v251, v238);
        v267 = vuzp1q_s32(vzip1q_s64(v251, v266), vzip2q_s64(v251, v266));
        v268 = vshlq_u32(v267, v242);
        v269 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v267, v268), vzip2q_s32(v267, v268)), v246), v245);
        v430 = v269;
        v270 = v260 + v229;
        if (v413.i64[0])
        {
          v271 = v413.i64[0] >= v270;
        }

        else
        {
          v271 = 1;
        }

        v272 = v271;
        v273 = 0uLL;
        if (v229 <= 0x80 && v272)
        {
          v274 = v260 & 0x3F;
          v275 = vaddq_s64(vdupq_n_s64(v274), vzip1q_s64(0, v227));
          v276 = (v110 + 8 * (v260 >> 6));
          v277 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v276, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v275)), vshlq_u64(vdupq_lane_s64(v276->i64[0], 0), vnegq_s64(v275)));
          if (v274 + v229 >= 0x81)
          {
            v277 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v276[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v275)), vshlq_u64(vdupq_laneq_s64(v276[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v275))), v277);
          }
        }

        else
        {
          v112 = 1;
          v270 = v260;
          v277 = 0uLL;
        }

        v278 = vshlq_u64(v277, v238);
        v279 = vuzp1q_s32(vzip1q_s64(v277, v278), vzip2q_s64(v277, v278));
        v280 = vshlq_u32(v279, v242);
        v281 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v279, v280), vzip2q_s32(v279, v280)), v246), v245);
        v431 = v281;
        v282 = vmovl_u16(*&vpaddq_s16(v441, v441));
        v283 = vpaddq_s32(v282, v282).u64[0];
        v284.i64[0] = v283;
        v284.i64[1] = HIDWORD(v283);
        v285 = v284;
        v286 = vaddvq_s64(v284);
        v287 = v286;
        v288 = v270 + v286;
        if (v413.i64[0])
        {
          v289 = v413.i64[0] >= v288;
        }

        else
        {
          v289 = 1;
        }

        v290 = v289;
        if (v286 <= 0x80 && v290)
        {
          v291 = v270 & 0x3F;
          v292 = vaddq_s64(vdupq_n_s64(v291), vzip1q_s64(0, v285));
          v293 = (v110 + 8 * (v270 >> 6));
          v273 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v293, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v292)), vshlq_u64(vdupq_lane_s64(v293->i64[0], 0), vnegq_s64(v292)));
          if (v291 + v287 >= 0x81)
          {
            v273 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v293[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v292)), vshlq_u64(vdupq_laneq_s64(v293[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v292))), v273);
          }
        }

        else
        {
          v112 = 1;
          v288 = v270;
        }

        v294 = vzip1_s32(*v282.i8, *&vextq_s8(v282, v282, 8uLL));
        v295.i64[0] = v294.u32[0];
        v295.i64[1] = v294.u32[1];
        v296 = vnegq_s64(v295);
        v297 = vshlq_u64(v273, v296);
        v298 = vuzp1q_s32(vzip1q_s64(v273, v297), vzip2q_s64(v273, v297));
        v297.i64[0] = 0xFFFF0000FFFFLL;
        v297.i64[1] = 0xFFFF0000FFFFLL;
        v299 = vnegq_s32(vandq_s8(v441, v297));
        v300 = vshlq_u32(v298, v299);
        v301 = vuzp1q_s16(vzip1q_s32(v298, v300), vzip2q_s32(v298, v300));
        v298.i64[0] = 0xF000F000F000FLL;
        v298.i64[1] = 0xF000F000F000FLL;
        v302 = vaddq_s16(v441, v298);
        v300.i64[0] = 0x10001000100010;
        v300.i64[1] = 0x10001000100010;
        v303 = vsubq_s16(v300, v441);
        v304 = vshlq_s16(vshlq_s16(v301, v303), v302);
        v432 = v304;
        v305 = v288 + v287;
        if (v413.i64[0])
        {
          v306 = v413.i64[0] >= v305;
        }

        else
        {
          v306 = 1;
        }

        v307 = v306;
        v308 = 0uLL;
        if (v287 <= 0x80 && v307)
        {
          v309 = v288 & 0x3F;
          v310 = vaddq_s64(vdupq_n_s64(v309), vzip1q_s64(0, v285));
          v311 = (v110 + 8 * (v288 >> 6));
          v312 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v311, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v310)), vshlq_u64(vdupq_lane_s64(v311->i64[0], 0), vnegq_s64(v310)));
          if (v309 + v287 >= 0x81)
          {
            v312 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v311[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v310)), vshlq_u64(vdupq_laneq_s64(v311[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v310))), v312);
          }
        }

        else
        {
          v112 = 1;
          v305 = v288;
          v312 = 0uLL;
        }

        v313 = vshlq_u64(v312, v296);
        v314 = vuzp1q_s32(vzip1q_s64(v312, v313), vzip2q_s64(v312, v313));
        v315 = vshlq_u32(v314, v299);
        v316 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v314, v315), vzip2q_s32(v314, v315)), v303), v302);
        v433 = v316;
        v317 = v305 + v287;
        if (v413.i64[0])
        {
          v318 = v413.i64[0] >= v317;
        }

        else
        {
          v318 = 1;
        }

        v319 = v318;
        if (v287 <= 0x80 && v319)
        {
          v320 = v305 & 0x3F;
          v321 = vaddq_s64(vdupq_n_s64(v320), vzip1q_s64(0, v285));
          v322 = (v110 + 8 * (v305 >> 6));
          v308 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v322, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v321)), vshlq_u64(vdupq_lane_s64(v322->i64[0], 0), vnegq_s64(v321)));
          if (v320 + v287 >= 0x81)
          {
            v308 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v322[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v321)), vshlq_u64(vdupq_laneq_s64(v322[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v321))), v308);
          }
        }

        else
        {
          v112 = 1;
          v317 = v305;
        }

        v323 = vshlq_u64(v308, v296);
        v324 = vuzp1q_s32(vzip1q_s64(v308, v323), vzip2q_s64(v308, v323));
        v325 = vshlq_u32(v324, v299);
        v326 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v324, v325), vzip2q_s32(v324, v325)), v303), v302);
        v434 = v326;
        v327 = v317 + v287;
        if (v413.i64[0])
        {
          v328 = v413.i64[0] >= v327;
        }

        else
        {
          v328 = 1;
        }

        v329 = v328;
        if (v287 > 0x80 || !v329)
        {
          goto LABEL_242;
        }

        v330 = vaddq_s64(vdupq_n_s64(v317 & 0x3F), vzip1q_s64(0, v285));
        v331 = (v110 + 8 * (v317 >> 6));
        v332 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v331, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v330)), vshlq_u64(vdupq_lane_s64(v331->i64[0], 0), vnegq_s64(v330)));
        if ((v317 & 0x3F) + v287 >= 0x81)
        {
          v332 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v331[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v330)), vshlq_u64(vdupq_laneq_s64(v331[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v330))), v332);
        }

        if ((v112 & 1) != 0 || v413.i64[0] + 8 * result - v327 - 512 >= 9 || v95 == 2)
        {
LABEL_242:
          AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
          return 0;
        }

        else
        {
          v333 = vshlq_u64(v332, v296);
          v334 = vuzp1q_s32(vzip1q_s64(v332, v333), vzip2q_s64(v332, v333));
          v335 = vshlq_u32(v334, v299);
          v336 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v334, v335), vzip2q_s32(v334, v335)), v303), v302);
          v337 = vaddq_s16(vandq_s8(v94, v62), v121);
          v338 = vdupq_lane_s64(v94.i64[0], 0);
          v339 = vandq_s8(v62, v338);
          v340 = vsubq_s16(v337, v339);
          v341 = vsubq_s16(v143, v339);
          v342 = vsubq_s16(v153, v339);
          v343 = vsubq_s16(v165, v339);
          v344 = vandq_s8(v61, v338);
          v345 = vsubq_s16(v189, v344);
          v346 = vsubq_s16(v201, v344);
          v347 = vsubq_s16(v211, v344);
          v348 = vsubq_s16(v223, v344);
          v349 = vandq_s8(v60, v338);
          v350 = vsubq_s16(v247, v349);
          v351 = vsubq_s16(v259, v349);
          v352 = vsubq_s16(v269, v349);
          v353 = vsubq_s16(v281, v349);
          v354 = vandq_s8(v59, v338);
          v355 = vsubq_s16(v304, v354);
          v420 = v337;
          v356 = vsubq_s16(v316, v354);
          v357 = vsubq_s16(v326, v354);
          v432 = v355;
          v433 = v356;
          v358 = vsubq_s16(v336, v354);
          v434 = v357;
          v435 = v358;
          v359.i64[0] = 0x1000100010001;
          v359.i64[1] = 0x1000100010001;
          if (vaddvq_s16(vceqq_s16(v41, v359)))
          {
            v360 = vnegq_s16(vandq_s8(v437, v359));
            v361.i64[0] = v343.i64[0];
            v362.i64[1] = v340.i64[1];
            v361.i64[1] = v340.i64[0];
            v362.i64[0] = v343.i64[1];
            v363 = vbslq_s8(v360, v362, v340);
            v364 = vbslq_s8(v360, v361, v343);
            v362.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
            v362.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
            v365 = vandq_s8(vqtbl4q_s8(*(&v341 - 1), v362), v360);
            v452.val[0] = vaddq_s16(v363, vandq_s8(vqtbl4q_s8(*(&v341 - 1), xmmword_29D2F10B0), v360));
            v452.val[1] = vaddq_s16(v341, vandq_s8(vqtbl4q_s8(*(&v341 - 1), xmmword_29D2F10C0), v360));
            v452.val[2] = vaddq_s16(v342, v365);
            v452.val[3] = vaddq_s16(v364, v365);
            v366 = vandq_s8(vqtbl4q_s8(v452, v362), v360);
            v340 = vaddq_s16(v452.val[0], vandq_s8(vqtbl4q_s8(v452, xmmword_29D2F10D0), v360));
            v341 = vaddq_s16(v452.val[1], vandq_s8(vqtbl4q_s8(v452, xmmword_29D2F10E0), v360));
            v420 = v340;
            v421 = v341;
            v342 = vaddq_s16(v452.val[2], v366);
            v343 = vaddq_s16(v452.val[3], v366);
            v451.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, xmmword_29D2F10B0), v360), v345);
            v451.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, xmmword_29D2F10F0), v360), v346);
            v451.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, v362), v360), v347);
            v451.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v345.i8, xmmword_29D2F1100), v360), v348);
            v367 = vandq_s8(vqtbl4q_s8(v451, xmmword_29D2F10D0), v360);
            v368 = vandq_s8(vqtbl4q_s8(v451, v362), v360);
            v345 = vaddq_s16(v367, v451.val[0]);
            v346 = vaddq_s16(v451.val[1], v367);
            v347 = vaddq_s16(v451.val[2], v368);
            v348 = vaddq_s16(v451.val[3], v368);
            v451.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v350.i8, xmmword_29D2F0EB0), v360), v350);
            v451.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v350.i8, xmmword_29D2F0FB0), v360), v351);
            v451.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v350.i8, xmmword_29D2F10B0), v360), v352);
            v451.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v350.i8, xmmword_29D2F10C0), v360), v353);
            v369 = vandq_s8(vqtbl4q_s8(v451, v362), v360);
            v350 = vaddq_s16(v451.val[0], v369);
            v351 = vaddq_s16(v451.val[1], v369);
            v352 = vaddq_s16(v451.val[2], vandq_s8(vqtbl4q_s8(v451, xmmword_29D2F0FE0), v360));
            v353 = vaddq_s16(v451.val[3], vandq_s8(vqtbl4q_s8(v451, xmmword_29D2F1110), v360));
            v452.val[0] = v432;
            v452.val[1] = v433;
            v40 = v437;
            v452.val[2] = v434;
            v452.val[3] = v435;
            v451.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(v452, xmmword_29D2F0EB0), v360), v432);
            v451.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(v452, xmmword_29D2F1120), v360), v433);
            v422 = v342;
            v423 = v343;
            v451.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(v452, xmmword_29D2F10B0), v360), v434);
            v451.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(v452, xmmword_29D2F10C0), v360), v435);
            v370 = vandq_s8(vqtbl4q_s8(v451, v362), v360);
            v355 = vaddq_s16(v451.val[0], v370);
            v356 = vaddq_s16(v451.val[1], v370);
            v357 = vaddq_s16(v451.val[2], vandq_s8(vqtbl4q_s8(v451, xmmword_29D2F0FE0), v360));
            v358 = vaddq_s16(v451.val[3], vandq_s8(vqtbl4q_s8(v451, xmmword_29D2F1130), v360));
          }

          v371 = vaddq_s16(v436, v340);
          v372 = vaddq_s16(v341, v436);
          v373 = vaddq_s16(v342, v436);
          v374 = vaddq_s16(v343, v436);
          v375 = vaddq_s16(v345, v436);
          v376 = vaddq_s16(v346, v436);
          v377 = vaddq_s16(v347, v436);
          v378 = vaddq_s16(v348, v436);
          v379 = vaddq_s16(v350, v436);
          v380 = vaddq_s16(v351, v436);
          v381 = vaddq_s16(v352, v436);
          v382 = vaddq_s16(v353, v436);
          v383 = vaddq_s16(v355, v436);
          v384 = vaddq_s16(v356, v436);
          v385 = vaddq_s16(v357, v436);
          v386 = vaddq_s16(v358, v436);
          v387.i64[0] = 0x10001000100010;
          v387.i64[1] = 0x10001000100010;
          v388 = vceqzq_s16(vandq_s8(v40, v387));
          v389 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v371, xmmword_29D2F1270), v388), v371);
          v390 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v372, xmmword_29D2F1270), v388), v372);
          v391 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v373, xmmword_29D2F1270), v388), v373);
          v392 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v374, xmmword_29D2F1270), v388), v374);
          v393 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v375, xmmword_29D2F1270), v388), v375);
          v394 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v376, xmmword_29D2F1270), v388), v376);
          v395 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v377, xmmword_29D2F1270), v388), v377);
          v396 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v378, xmmword_29D2F1270), v388), v378);
          v397 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v379, xmmword_29D2F1270), v388), v379);
          v398 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v380, xmmword_29D2F1270), v388), v380);
          v399 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v381, xmmword_29D2F1270), v388), v381);
          v400 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v382, xmmword_29D2F1270), v388), v382);
          v401 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v383, xmmword_29D2F1270), v388), v383);
          v402 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v384, xmmword_29D2F1270), v388), v384);
          __asm { FMOV            V7.4S, #1.875 }

          v382.i64[0] = 0xC0000000C0000000;
          v382.i64[1] = 0xC0000000C0000000;
          v407 = (a1 + a2);
          *a1 = vbslq_s8(v382, vshrn_high_n_s64(vshrn_n_s64(v389, 0x12uLL), v390, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v389, 0xCuLL), v390, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v389, 6uLL), v390, 6uLL), vuzp1q_s32(v389, v390))));
          *(a1 + 16) = vbslq_s8(v382, vshrn_high_n_s64(vshrn_n_s64(v393, 0x12uLL), v394, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v393, 0xCuLL), v394, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v393, 6uLL), v394, 6uLL), vuzp1q_s32(v393, v394))));
          v408 = (a1 + 2 * a2);
          v409 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v385, xmmword_29D2F1270), v388), v385);
          v410 = vaddq_s16(vbicq_s8(vqtbl1q_s8(v386, xmmword_29D2F1270), v388), v386);
          *v407 = vbslq_s8(v382, vshrn_high_n_s64(vshrn_n_s64(v391, 0x12uLL), v392, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v391, 0xCuLL), v392, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v391, 6uLL), v392, 6uLL), vuzp1q_s32(v391, v392))));
          v407[1] = vbslq_s8(v382, vshrn_high_n_s64(vshrn_n_s64(v395, 0x12uLL), v396, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v395, 0xCuLL), v396, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v395, 6uLL), v396, 6uLL), vuzp1q_s32(v395, v396))));
          *v408 = vbslq_s8(v382, vshrn_high_n_s64(vshrn_n_s64(v397, 0x12uLL), v398, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v397, 0xCuLL), v398, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v397, 6uLL), v398, 6uLL), vuzp1q_s32(v397, v398))));
          v408[1] = vbslq_s8(v382, vshrn_high_n_s64(vshrn_n_s64(v401, 0x12uLL), v402, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v401, 0xCuLL), v402, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v401, 6uLL), v402, 6uLL), vuzp1q_s32(v401, v402))));
          v411 = (v408 + a2);
          *v411 = vbslq_s8(v382, vshrn_high_n_s64(vshrn_n_s64(v399, 0x12uLL), v400, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v399, 0xCuLL), v400, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v399, 6uLL), v400, 6uLL), vuzp1q_s32(v399, v400))));
          v411[1] = vbslq_s8(v382, vshrn_high_n_s64(vshrn_n_s64(v409, 0x12uLL), v410, 0x12uLL), vbslq_s8(_Q7, vshrn_high_n_s64(vshrn_n_s64(v409, 0xCuLL), v410, 0xCuLL), vbslq_s8(xmmword_29D2F1280, vshrn_high_n_s64(vshrn_n_s64(v409, 6uLL), v410, 6uLL), vuzp1q_s32(v409, v410))));
        }
      }
    }

    else
    {
      if (a4)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v412, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v412, a5);
      }

      v420 = v412;
      v421 = v414;
      v424 = v413;
      v425 = v415;
      v428 = v416;
      v429 = v418;
      v432 = v417;
      v433 = v419;
      v18 = a3 + 16;
      if ((v7 & 2) != 0)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v18, &v412, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v18, &v412, a5);
      }

      v422 = v412;
      v423 = v414;
      v426 = v413;
      v427 = v415;
      v430 = v416;
      v431 = v418;
      v434 = v417;
      v435 = v419;
      v19 = a3 + 32;
      if ((v7 & 4) != 0)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v19, &v412, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v19, &v412, a5);
      }

      v436 = v412;
      v437 = v414;
      v440 = v413;
      v441 = v415;
      v442[2] = v416;
      v443 = v418;
      v446 = v417;
      v447 = v419;
      v20 = a3 + 48;
      if ((v7 & 8) != 0)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v20, &v412, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v20, &v412, a5);
      }

      v438 = v412;
      v439 = v414;
      v442[0] = v413;
      v442[1] = v415;
      v444 = v416;
      v445 = v418;
      v21 = (a1 + 16);
      v22 = 31;
      v448 = v417;
      v449 = v419;
      do
      {
        v23 = v416.i32[v22 + 1] & 0x3FF | ((v416.i32[v22 + 2] & 0x3FF) << 10) & 0xC00FFFFF | ((v416.i32[v22 + 3] & 0x3FF) << 20) | (v417.i32[v22] << 30);
        *(v21 - 4) = v412.i32[v22 + 1] & 0x3FF | ((v412.i32[v22 + 2] & 0x3FF) << 10) & 0xC00FFFFF | ((v412.i32[v22 + 3] & 0x3FF) << 20) | (v413.i32[v22] << 30);
        *(v21 - 3) = v23;
        v24 = v417.i32[v22 + 1] & 0x3FF | ((v417.i32[v22 + 2] & 0x3FF) << 10) & 0xC00FFFFF | ((v417.i32[v22 + 3] & 0x3FF) << 20) | (v418.i32[v22] << 30);
        *(v21 - 2) = v413.i32[v22 + 1] & 0x3FF | ((v413.i32[v22 + 2] & 0x3FF) << 10) & 0xC00FFFFF | ((v413.i32[v22 + 3] & 0x3FF) << 20) | (v414.i32[v22] << 30);
        *(v21 - 1) = v24;
        v25 = v418.i32[v22 + 1] & 0x3FF | ((v418.i32[v22 + 2] & 0x3FF) << 10) & 0xC00FFFFF | ((v418.i32[v22 + 3] & 0x3FF) << 20) | (v419.i32[v22] << 30);
        *v21 = v414.i32[v22 + 1] & 0x3FF | ((v414.i32[v22 + 2] & 0x3FF) << 10) & 0xC00FFFFF | ((v414.i32[v22 + 3] & 0x3FF) << 20) | (v415.i32[v22] << 30);
        v21[1] = v25;
        v26 = v415.i32[v22 + 1] & 0x3FF | ((v415.i32[v22 + 2] & 0x3FF) << 10) & 0xC00FFFFF | ((v415.i32[v22 + 3] & 0x3FF) << 20) | (v416.i32[v22] << 30);
        v27 = v419.i32[v22 + 1] & 0x3FF | ((v419.i32[v22 + 2] & 0x3FF) << 10) & 0xC00FFFFF | ((v419.i32[v22 + 3] & 0x3FF) << 20) | (v420.i32[v22] << 30);
        v22 += 32;
        v21[2] = v26;
        v21[3] = v27;
        v21 = (v21 + a2);
      }

      while (v22 != 159);
      return 64;
    }
  }

  else
  {
    result = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    v11 = (a1 + a2);
    *v11 = 0u;
    v11[1] = 0u;
    v12 = (a1 + 2 * a2);
    *v12 = 0u;
    v12[1] = 0u;
    v13 = (a1 + a2 + 2 * a2);
    *v13 = 0u;
    v13[1] = 0u;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + 32, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + v17, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v17 + 32, a2, v22, v21, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 4, v13 + 64, a2, v25, v24, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 96, a2, v28, v27, a7);
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
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 4 * a2 + 64, a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + v31 + 96, a2, v33, v32, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1, 128, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 32, 128, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 512, 128, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 544, 128, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 64, 128, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 96, 128, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 576, 128, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 608, 128, v12 + v13, v14, a4);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = *(a3 + 16);
  v8 = *(a3 + 32);
  v9 = *(a3 + 48);
  v11 = *(a3 + a4);
  v12 = *(a3 + a4 + 16);
  v10 = (a3 + a4 + 32);
  v13 = *(a3 + a4 + 48);
  v14.i64[0] = *a3;
  v14.i64[1] = HIDWORD(*a3);
  v15 = v14;
  v14.i64[0] = *(a3 + 8);
  v14.i64[1] = HIDWORD(*a3);
  v16 = vbslq_s8(xmmword_29D2F1290, v15, 0);
  v17 = vbslq_s8(xmmword_29D2F1290, v14, 0);
  v14.i64[0] = v7.u32[0];
  v14.i64[1] = v7.u32[1];
  v18 = v14;
  v14.i64[0] = v7.u32[2];
  v14.i64[1] = v7.u32[3];
  v19 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*a3, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*a3, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*a3, 6uLL), v16)));
  v20 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(*a3, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(*a3, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(*a3, 6uLL), v17)));
  v21 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v7.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v7.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v7.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v18, 0))));
  v22 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v7, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v7, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v7, 6uLL), vbslq_s8(xmmword_29D2F1290, v14, 0))));
  v14.i64[0] = v11.u32[0];
  v14.i64[1] = v11.u32[1];
  v23 = v14;
  v14.i64[0] = v11.u32[2];
  v14.i64[1] = v11.u32[3];
  v24 = vbslq_s8(xmmword_29D2F1290, v23, 0);
  v25 = vbslq_s8(xmmword_29D2F1290, v14, 0);
  v14.i64[0] = v12.u32[0];
  v14.i64[1] = v12.u32[1];
  v26 = v14;
  v14.i64[0] = v12.u32[2];
  v14.i64[1] = v12.u32[3];
  v27 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v11.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v11.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v11.i8, 6uLL), v24)));
  v28 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v11, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v11, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v11, 6uLL), v25)));
  v29 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v12.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v12.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v12.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v26, 0))));
  v30 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v12, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v12, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v12, 6uLL), vbslq_s8(xmmword_29D2F1290, v14, 0))));
  v14.i64[0] = v8.u32[0];
  v14.i64[1] = v8.u32[1];
  v31 = v14;
  v14.i64[0] = v8.u32[2];
  v14.i64[1] = v8.u32[3];
  v32 = vbslq_s8(xmmword_29D2F1290, v31, 0);
  v33 = vbslq_s8(xmmword_29D2F1290, v14, 0);
  v14.i64[0] = v9.u32[0];
  v14.i64[1] = v9.u32[1];
  v34 = v14;
  v14.i64[0] = v9.u32[2];
  v14.i64[1] = v9.u32[3];
  v35 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v8.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v8.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v8.i8, 6uLL), v32)));
  v36 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v8, 6uLL), v33)));
  v37 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v9.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v9.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v9.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v34, 0))));
  v38 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v9, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v9, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v9, 6uLL), vbslq_s8(xmmword_29D2F1290, v14, 0))));
  v14.i64[0] = *v10->i8;
  v14.i64[1] = HIDWORD(*v10);
  v39 = v14;
  v14.i64[0] = *(a3 + a4 + 40);
  v14.i64[1] = HIDWORD(*v10->i8);
  v40 = vbslq_s8(xmmword_29D2F1290, v39, 0);
  v41 = vbslq_s8(xmmword_29D2F1290, v14, 0);
  v14.i64[0] = v13.u32[0];
  v14.i64[1] = v13.u32[1];
  v42 = v14;
  v14.i64[0] = v13.u32[2];
  v14.i64[1] = v13.u32[3];
  v43 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v10, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v10, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v10, 6uLL), v40)));
  v44 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(*v10->i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(*v10->i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(*v10->i8, 6uLL), v41)));
  v45 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v13.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v13.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v13.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v42, 0))));
  v46 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v13, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v13, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v13, 6uLL), vbslq_s8(xmmword_29D2F1290, v14, 0))));
  v47 = vdupq_lane_s64(v19.i64[0], 0);
  v498 = v30;
  v48 = vsubq_s16(v30, v47);
  v500 = vshlq_s16(vshlq_s16(vsubq_s16(v19, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v502 = vshlq_s16(vshlq_s16(vsubq_s16(v20, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v504 = vshlq_s16(vshlq_s16(vsubq_s16(v21, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v506 = vshlq_s16(vshlq_s16(vsubq_s16(v22, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v508 = vshlq_s16(vshlq_s16(vsubq_s16(v27, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v509 = vshlq_s16(vshlq_s16(vsubq_s16(v28, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v49 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v500, v502), v504), v506), xmmword_29D2F1150);
  v50 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v500, v502), v504), v506), xmmword_29D2F1150);
  v51 = vpmaxq_s16(v49, v49);
  v52 = vpminq_s16(v50, v50);
  v53 = vzip1q_s16(v51, v52);
  v49.i64[0] = 0x10001000100010;
  v49.i64[1] = 0x10001000100010;
  v54 = vbicq_s8(vsubq_s16(v49, vclsq_s16(v53)), vceqzq_s16(v53));
  v510 = vshlq_s16(vshlq_s16(vsubq_s16(v29, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v511 = vshlq_s16(vshlq_s16(v48, xmmword_29D2F12D0), xmmword_29D2F12E0);
  v55.i64[0] = 0x8000800080008000;
  v55.i64[1] = 0x8000800080008000;
  v48.i64[0] = 0x8000800080008000;
  v48.i64[1] = 0x8000800080008000;
  v56 = vminq_s16(v52, v48);
  v57 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v508, v509), v510), v511), xmmword_29D2F1150);
  v58 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v508, v509), v510), v511), xmmword_29D2F1150);
  v59 = vpmaxq_s16(v57, v57);
  v60 = vpminq_s16(v58, v58);
  v61 = vmaxq_s16(vmaxq_s16(v51, v55), v59);
  v62 = vminq_s16(v56, v60);
  v63 = vzip1q_s16(v59, v60);
  v64 = vbicq_s8(vsubq_s16(v49, vclsq_s16(v63)), vceqzq_s16(v63));
  v512 = vshlq_s16(vshlq_s16(vsubq_s16(v35, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v513 = vshlq_s16(vshlq_s16(vsubq_s16(v36, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v65 = vshlq_s16(vshlq_s16(vsubq_s16(v37, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v66 = vminq_s16(vminq_s16(v512, v513), v65);
  v514 = v65;
  v515 = vshlq_s16(vshlq_s16(vsubq_s16(v38, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v67 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v512, v513), v65), v515), xmmword_29D2F1150);
  v68 = vqtbl1q_s8(vminq_s16(v66, v515), xmmword_29D2F1150);
  v69 = vpmaxq_s16(v67, v67);
  v70 = vpminq_s16(v68, v68);
  v71 = vmaxq_s16(v61, v69);
  v72 = vminq_s16(v62, v70);
  v73 = vzip1q_s16(v69, v70);
  v74 = vbicq_s8(vsubq_s16(v49, vclsq_s16(v73)), vceqzq_s16(v73));
  v516 = vshlq_s16(vshlq_s16(vsubq_s16(v43, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v517 = vshlq_s16(vshlq_s16(vsubq_s16(v44, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v520 = v47;
  v518 = vshlq_s16(vshlq_s16(vsubq_s16(v45, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v519 = vshlq_s16(vshlq_s16(vsubq_s16(v46, v47), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v75 = vpmaxq_s16(v54, v54);
  v76 = vpmaxq_s16(v64, v64);
  v77 = vpmaxq_s16(v74, v74);
  v78 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v516, v517), v518), v519), xmmword_29D2F1150);
  v79 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v516, v517), v518), v519), xmmword_29D2F1150);
  v80 = vpmaxq_s16(v78, v78);
  v81 = vpminq_s16(v79, v79);
  v82 = vmaxq_s16(v71, v80);
  v83 = vminq_s16(v72, v81);
  v84 = vzip1q_s16(v80, v81);
  v85 = vbicq_s8(vsubq_s16(v49, vclsq_s16(v84)), vceqzq_s16(v84));
  v86 = vpmaxq_s16(v85, v85);
  v87 = vmaxq_s16(vmaxq_s16(v75, v76), vmaxq_s16(v77, v86));
  v88 = vclzq_s16(vsubq_s16(v82, v83));
  v89.i64[0] = 0xF000F000F000FLL;
  v89.i64[1] = 0xF000F000F000FLL;
  v90.i64[0] = -1;
  v90.i64[1] = -1;
  v527 = v83;
  v528 = v82;
  v91 = vsubq_s16(vshlq_s16(v90, vsubq_s16(v89, v88)), v83);
  v92 = vsubq_s16(v49, v88);
  v93 = vcgtq_s16(v87, v92);
  v94 = vminq_s16(v92, v87);
  v529 = vandq_s8(v91, v93);
  v91.i64[0] = 0x8000800080008;
  v91.i64[1] = 0x8000800080008;
  v49.i64[0] = 0x3000300030003;
  v49.i64[1] = 0x3000300030003;
  v95 = vorrq_s8(vandq_s8(vceqzq_s16(v94), v49), vorrq_s8(vandq_s8(v93, v91), 0));
  v96 = vmaxq_s16(vminq_s16(vsubq_s16(v94, v76), v49), 0);
  v97 = vmaxq_s16(vminq_s16(vsubq_s16(v94, v77), v49), 0);
  v523 = vsubq_s16(v94, v96);
  v524 = vsubq_s16(v94, v97);
  v98 = vmaxq_s16(vminq_s16(vsubq_s16(v94, v86), v49), 0);
  v525 = vsubq_s16(v94, v98);
  v526 = v94;
  v99 = vaddq_s16(v98, v97);
  v100 = vmaxq_s16(vminq_s16(vsubq_s16(v94, v75), v49), 0);
  v101 = vsubq_s16(v94, v100);
  v102 = vceqq_s16(v99, vnegq_s16(vaddq_s16(v100, v96)));
  v100.i64[0] = 0x4000400040004;
  v100.i64[1] = 0x4000400040004;
  v103 = vorrq_s8(vbicq_s8(v100, v102), v95);
  v521 = v103;
  v522 = v101;
  if (vmaxvq_s16(v94))
  {
    v466 = v46;
    v467 = v38;
    v468 = v27;
    v469 = v28;
    v470 = v29;
    v492.val[0] = v19;
    v492.val[1] = v20;
    v492.val[2] = v21;
    v492.val[3] = v22;
    v495 = v95;
    v104 = vshlq_s16(vshlq_s16(vsubq_s16(v516, vqtbl1q_s8(v516, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v105 = vshlq_s16(vshlq_s16(vsubq_s16(v517, vqtbl1q_s8(v517, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v106 = vshlq_s16(vshlq_s16(vsubq_s16(v519, vqtbl1q_s8(v519, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v476 = vshlq_s16(vshlq_s16(vsubq_s16(v500, vqtbl1q_s8(v500, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v477 = vshlq_s16(vshlq_s16(vsubq_s16(v502, vqtbl1q_s8(v502, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v478 = vshlq_s16(vshlq_s16(vsubq_s16(v506, vqtbl1q_s8(v506, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v479 = vshlq_s16(vshlq_s16(vsubq_s16(v504, vqtbl1q_s8(v504, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v107 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v476, v477), v479), v478), xmmword_29D2F1150);
    v108 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v476, v477), v479), v478), xmmword_29D2F1150);
    v109 = vpmaxq_s16(v107, v107);
    v110 = vpminq_s16(v108, v108);
    v111.i64[0] = 0x8000800080008000;
    v111.i64[1] = 0x8000800080008000;
    v112 = vmaxq_s16(v109, v111);
    v113.i64[0] = 0x8000800080008000;
    v113.i64[1] = 0x8000800080008000;
    v114 = vminq_s16(v110, v113);
    v115 = vzip1q_s16(v109, v110);
    v116.i64[0] = 0x10001000100010;
    v116.i64[1] = 0x10001000100010;
    v117 = vbicq_s8(vsubq_s16(v116, vclsq_s16(v115)), vceqzq_s16(v115));
    v118 = vpmaxq_s16(v117, v117);
    v482 = vshlq_s16(vshlq_s16(vsubq_s16(v509, vqtbl1q_s8(v509, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v483 = vshlq_s16(vshlq_s16(vsubq_s16(v508, vqtbl1q_s8(v508, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v484 = vshlq_s16(vshlq_s16(vsubq_s16(v511, vqtbl1q_s8(v511, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v485 = vshlq_s16(vshlq_s16(vsubq_s16(v510, vqtbl1q_s8(v510, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v119 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v483, v482), v485), v484), xmmword_29D2F1150);
    v120 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v483, v482), v485), v484), xmmword_29D2F1150);
    v121 = vpmaxq_s16(v119, v119);
    v122 = vpminq_s16(v120, v120);
    v123 = vmaxq_s16(v112, v121);
    v124 = vminq_s16(v114, v122);
    v125 = vzip1q_s16(v121, v122);
    v126.i64[0] = 0x10001000100010;
    v126.i64[1] = 0x10001000100010;
    v127 = vbicq_s8(vsubq_s16(v116, vclsq_s16(v125)), vceqzq_s16(v125));
    v128 = vpmaxq_s16(v127, v127);
    v486 = vshlq_s16(vshlq_s16(vsubq_s16(v513, vqtbl1q_s8(v513, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v487 = vshlq_s16(vshlq_s16(vsubq_s16(v512, vqtbl1q_s8(v512, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v493 = vshlq_s16(vshlq_s16(vsubq_s16(v514, vqtbl1q_s8(v514, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v489 = vshlq_s16(vshlq_s16(vsubq_s16(v515, vqtbl1q_s8(v515, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v129 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v487, v486), v493), v489), xmmword_29D2F1150);
    v130 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v487, v486), v493), v489), xmmword_29D2F1150);
    v131 = vpmaxq_s16(v129, v129);
    v132 = vpminq_s16(v130, v130);
    v133 = vmaxq_s16(v123, v131);
    v134 = vminq_s16(v124, v132);
    v135 = vzip1q_s16(v131, v132);
    v136 = vbicq_s8(vsubq_s16(v126, vclsq_s16(v135)), vceqzq_s16(v135));
    v137 = vpmaxq_s16(v136, v136);
    v471 = vshlq_s16(vshlq_s16(vsubq_s16(v518, vqtbl1q_s8(v518, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v138 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v104, v105), v471), v106), xmmword_29D2F1150);
    v139 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v104, v105), v471), v106), xmmword_29D2F1150);
    v140 = vpmaxq_s16(v138, v138);
    v141 = vpminq_s16(v139, v139);
    v142 = vmaxq_s16(v133, v140);
    v143 = vminq_s16(v134, v141);
    v144 = vzip1q_s16(v140, v141);
    v141.i64[0] = 0x10001000100010;
    v141.i64[1] = 0x10001000100010;
    v145 = vbicq_s8(vsubq_s16(v141, vclsq_s16(v144)), vceqzq_s16(v144));
    v146 = vpmaxq_s16(v145, v145);
    v147 = vmaxq_s16(vmaxq_s16(v118, v128), vmaxq_s16(v137, v146));
    v480 = v143;
    v481 = v142;
    v148 = vclzq_s16(vsubq_s16(v142, v143));
    v149 = vsubq_s16(v141, v148);
    v142.i64[0] = 0x10001000100010;
    v142.i64[1] = 0x10001000100010;
    v150 = vcgtq_s16(v147, v149);
    v151 = vminq_s16(v149, v147);
    v149.i64[0] = 0x3000300030003;
    v149.i64[1] = 0x3000300030003;
    v152 = vmaxq_s16(vminq_s16(vsubq_s16(v151, v118), v149), 0);
    v153 = vmaxq_s16(vminq_s16(vsubq_s16(v151, v128), v149), 0);
    v154 = vmaxq_s16(vminq_s16(vsubq_s16(v151, v137), v149), 0);
    v143.i64[0] = 0x3000300030003;
    v143.i64[1] = 0x3000300030003;
    v155 = vmaxq_s16(vminq_s16(vsubq_s16(v151, v146), v149), 0);
    v141.i64[0] = 0x4000400040004;
    v141.i64[1] = 0x4000400040004;
    v156 = vbicq_s8(v141, vceqq_s16(vaddq_s16(v155, v154), vnegq_s16(vaddq_s16(v152, v153))));
    v149.i64[0] = 0x18001800180018;
    v149.i64[1] = 0x18001800180018;
    v157 = v150;
    v158 = vbslq_s8(v150, v149, v142);
    v473 = vsubq_s16(v151, v153);
    v474 = vsubq_s16(v151, v154);
    v475 = vsubq_s16(v151, v155);
    v154.i64[0] = 0x7000700070007;
    v154.i64[1] = 0x7000700070007;
    v472 = vsubq_s16(v151, v152);
    v152.i64[0] = 0x8000800080008;
    v152.i64[1] = 0x8000800080008;
    v141.i64[0] = 0x2000200020002;
    v141.i64[1] = 0x2000200020002;
    v160 = v525;
    v159 = v526;
    v161 = vaddq_s16(vaddq_s16(vbicq_s8(v526, vceqzq_s16(vandq_s8(v495, v152))), vandq_s8(vceqq_s16(vandq_s8(v495, v143), v141), v142)), vandq_s8(vaddq_s16(v103, v103), v152));
    v162 = v522;
    v163 = v523;
    v164 = v524;
    v165 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(v161, v522, v154), vshlq_n_s16(vaddq_s16(vaddq_s16(v524, v523), v525), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v151, vceqzq_s16((*&v158 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v156, v156)), v472, v154), vshlq_n_s16(vaddq_s16(vaddq_s16(v474, v473), v475), 3uLL))).i64[0], 0);
    v166 = vaddvq_s16(v165);
    v168 = a5 < 2 || a6 == 0;
    if (v166)
    {
      v169.i64[0] = 0x3000300030003;
      v169.i64[1] = 0x3000300030003;
      v170 = vorrq_s8(vandq_s8(vceqzq_s16(v151), v169), v158);
      v171 = v105;
      v172 = vorrq_s8(v170, v156);
      v170.i64[0] = 0xF000F000F000FLL;
      v170.i64[1] = 0xF000F000F000FLL;
      v500 = vbslq_s8(v165, v476, v500);
      v502 = vbslq_s8(v165, v477, v502);
      v169.i64[0] = -1;
      v169.i64[1] = -1;
      v504 = vbslq_s8(v165, v479, v504);
      v506 = vbslq_s8(v165, v478, v506);
      v508 = vbslq_s8(v165, v483, v508);
      v509 = vbslq_s8(v165, v482, v509);
      v510 = vbslq_s8(v165, v485, v510);
      v511 = vbslq_s8(v165, v484, v511);
      v512 = vbslq_s8(v165, v487, v512);
      v513 = vbslq_s8(v165, v486, v513);
      v514 = vbslq_s8(v165, v493, v514);
      v515 = vbslq_s8(v165, v489, v515);
      v516 = vbslq_s8(v165, v104, v516);
      v517 = vbslq_s8(v165, v171, v517);
      v518 = vbslq_s8(v165, v471, v518);
      v519 = vbslq_s8(v165, v106, v519);
      v162 = vbslq_s8(v165, v472, v522);
      v163 = vbslq_s8(v165, v473, v523);
      v522 = v162;
      v523 = v163;
      v164 = vbslq_s8(v165, v474, v524);
      v160 = vbslq_s8(v165, v475, v525);
      v524 = v164;
      v525 = v160;
      v528 = vbslq_s8(v165, v481, v528);
      v529 = vbslq_s8(v165, vandq_s8(vsubq_s16(vshlq_s16(v169, vsubq_s16(v170, v148)), v480), v157), v529);
      v159 = vbslq_s8(v165, v151, v526);
      v526 = v159;
      v527 = vbslq_s8(v165, v480, v527);
      v103 = vbslq_s8(v165, v172, v521);
      v520 = vbslq_s8(v165, vsubq_s16(v520, vqtbl1q_s8(v520, xmmword_29D2F1270)), v520);
      v521 = v103;
    }

    if (!v168)
    {
      v173 = vqtbl4q_s8(v492, xmmword_29D2F1160);
      v174 = vsubq_s16(v492.val[0], vqtbl4q_s8(v492, xmmword_29D2F10B0));
      v175 = vsubq_s16(v492.val[2], v173);
      v176 = vsubq_s16(v492.val[3], v173);
      v530.val[0] = v468;
      v530.val[1] = v469;
      v530.val[2] = v470;
      v530.val[3].i64[0] = v498.i64[0];
      v530.val[3].i64[1] = v492.val[3].i64[1];
      v177 = vsubq_s16(v468, vqtbl4q_s8(v530, xmmword_29D2F10B0));
      v178 = vsubq_s16(v469, vqtbl4q_s8(v530, xmmword_29D2F10F0));
      v179 = vsubq_s16(v470, vqtbl4q_s8(v530, xmmword_29D2F1160));
      v180 = vsubq_s16(v498, vqtbl4q_s8(v530, xmmword_29D2F1100));
      v181 = v467.i64[0];
      v182 = v492.val[3].i64[1];
      v530.val[1] = vqtbl4q_s8(*v35.i8, xmmword_29D2F10C0);
      v183 = vsubq_s16(v35, vqtbl4q_s8(*v35.i8, xmmword_29D2F1170));
      v184 = vsubq_s16(v36, vqtbl4q_s8(*v35.i8, xmmword_29D2F1180));
      v185 = vsubq_s16(v37, vqtbl4q_s8(*v35.i8, xmmword_29D2F10B0));
      v186 = v466.i64[0];
      v187 = v492.val[3].i64[1];
      v530.val[0] = vsubq_s16(v43, vqtbl4q_s8(*v43.i8, xmmword_29D2F1170));
      v188 = vsubq_s16(v44, vqtbl4q_s8(*v43.i8, xmmword_29D2F1120));
      v189 = vsubq_s16(v45, vqtbl4q_s8(*v43.i8, xmmword_29D2F10B0));
      v190.i64[0] = v176.i64[0];
      v190.i64[1] = v174.i64[0];
      v191 = vsubq_s16(v466, vqtbl4q_s8(*v43.i8, xmmword_29D2F10C0));
      v174.i64[0] = v176.i64[1];
      v192 = vshlq_s16(v174, xmmword_29D2F12D0);
      v193 = vshlq_s16(v175, xmmword_29D2F12D0);
      v194 = vshlq_s16(v183, xmmword_29D2F12D0);
      v195 = vshlq_s16(v184, xmmword_29D2F12D0);
      v196 = vshlq_s16(vsubq_s16(v467, v530.val[1]), xmmword_29D2F12D0);
      v530.val[1] = vshlq_s16(v188, xmmword_29D2F12D0);
      v197 = vshlq_s16(v192, xmmword_29D2F12E0);
      v198 = vshlq_s16(vshlq_s16(vsubq_s16(v492.val[1], vqtbl4q_s8(v492, xmmword_29D2F10C0)), xmmword_29D2F12D0), xmmword_29D2F12E0);
      v199 = vshlq_s16(v193, xmmword_29D2F12E0);
      v200 = vshlq_s16(vshlq_s16(v190, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v201 = vshlq_s16(vshlq_s16(v177, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v202 = vshlq_s16(vshlq_s16(v178, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v203 = vshlq_s16(vshlq_s16(v179, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v204 = vshlq_s16(vshlq_s16(v180, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v205 = vshlq_s16(v194, xmmword_29D2F12E0);
      v206 = vshlq_s16(v195, xmmword_29D2F12E0);
      v207 = vshlq_s16(vshlq_s16(v185, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v208 = vshlq_s16(v196, xmmword_29D2F12E0);
      v530.val[2] = vshlq_s16(vshlq_s16(v530.val[0], xmmword_29D2F12D0), xmmword_29D2F12E0);
      v209 = vshlq_s16(v530.val[1], xmmword_29D2F12E0);
      v210 = vshlq_s16(vshlq_s16(v189, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v211 = vshlq_s16(vshlq_s16(v191, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v212 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v197, v198), v199), v200), xmmword_29D2F1150);
      v213 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v197, v198), v199), v200), xmmword_29D2F1150);
      v214 = vpmaxq_s16(v212, v212);
      v215 = vpminq_s16(v213, v213);
      v191.i64[0] = 0x8000800080008000;
      v191.i64[1] = 0x8000800080008000;
      v216 = vmaxq_s16(v214, v191);
      v177.i64[0] = 0x8000800080008000;
      v177.i64[1] = 0x8000800080008000;
      v217 = vminq_s16(v215, v177);
      v218 = vzip1q_s16(v214, v215);
      v196.i64[0] = 0x10001000100010;
      v196.i64[1] = 0x10001000100010;
      v219 = vbicq_s8(vsubq_s16(v196, vclsq_s16(v218)), vceqzq_s16(v218));
      v220 = vpmaxq_s16(v219, v219);
      v221 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v201, v202), v203), v204), xmmword_29D2F1150);
      v222 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v201, v202), v203), v204), xmmword_29D2F1150);
      v223 = vpmaxq_s16(v221, v221);
      v224 = vpminq_s16(v222, v222);
      v225 = vmaxq_s16(v216, v223);
      v226 = vminq_s16(v217, v224);
      v227 = vzip1q_s16(v223, v224);
      v228 = vbicq_s8(vsubq_s16(v196, vclsq_s16(v227)), vceqzq_s16(v227));
      v229 = vpmaxq_s16(v228, v228);
      v230 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v205, v206), v207), v208), xmmword_29D2F1150);
      v231 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v205, v206), v207), v208), xmmword_29D2F1150);
      v232 = vpmaxq_s16(v230, v230);
      v233 = vpminq_s16(v231, v231);
      v234 = vmaxq_s16(v225, v232);
      v235 = vminq_s16(v226, v233);
      v236 = vzip1q_s16(v232, v233);
      v237 = vbicq_s8(vsubq_s16(v196, vclsq_s16(v236)), vceqzq_s16(v236));
      v238 = vpmaxq_s16(v237, v237);
      v496 = v530.val[2];
      v497 = v211;
      v499 = v210;
      v239 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v530.val[2], v209), v210), v211), xmmword_29D2F1150);
      v240 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v530.val[2], v209), v210), v211), xmmword_29D2F1150);
      v241 = vpmaxq_s16(v239, v239);
      v242 = vpminq_s16(v240, v240);
      v243 = vmaxq_s16(v234, v241);
      v244 = vminq_s16(v235, v242);
      v245 = vzip1q_s16(v241, v242);
      v246 = vbicq_s8(vsubq_s16(v196, vclsq_s16(v245)), vceqzq_s16(v245));
      v247 = vpmaxq_s16(v246, v246);
      v248 = vmaxq_s16(vmaxq_s16(v220, v229), vmaxq_s16(v238, v247));
      v494 = v243;
      v249 = vclzq_s16(vsubq_s16(v243, v244));
      v250 = vsubq_s16(v196, v249);
      v251 = vcgtq_s16(v248, v250);
      v252 = vminq_s16(v250, v248);
      v248.i64[0] = 0x3000300030003;
      v248.i64[1] = 0x3000300030003;
      v253 = vmaxq_s16(vminq_s16(vsubq_s16(v252, v220), v248), 0);
      v254 = vmaxq_s16(vminq_s16(vsubq_s16(v252, v229), v248), 0);
      v255 = vmaxq_s16(vminq_s16(vsubq_s16(v252, v238), v248), 0);
      v256 = vmaxq_s16(vminq_s16(vsubq_s16(v252, v247), v248), 0);
      v257 = vsubq_s16(v252, v253);
      v530.val[1] = vsubq_s16(v252, v254);
      v258 = vsubq_s16(v252, v256);
      v259 = vceqq_s16(vaddq_s16(v256, v255), vnegq_s16(vaddq_s16(v253, v254)));
      v254.i64[0] = 0x4000400040004;
      v254.i64[1] = 0x4000400040004;
      v260 = vbicq_s8(v254, v259);
      v256.i64[0] = 0x7000700070007;
      v256.i64[1] = 0x7000700070007;
      v488 = vsubq_s16(v252, v255);
      v490 = v530.val[1];
      v491 = v258;
      v261 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v252, v251), vaddq_s16(v260, v260)), v257, v256), vshlq_n_s16(vaddq_s16(vaddq_s16(v488, v530.val[1]), v258), 3uLL));
      v103 = v521;
      v262 = v522;
      v263.i64[0] = 0x2000200020002;
      v263.i64[1] = 0x2000200020002;
      v264 = vandq_s8(vceqq_s16(vandq_s8(v521, v248), v263), v196);
      v248.i64[0] = 0x8000800080008;
      v248.i64[1] = 0x8000800080008;
      v160 = v525;
      v159 = v526;
      v163 = v523;
      v164 = v524;
      v265 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v526, vceqzq_s16(vandq_s8(v521, v248))), vandq_s8(vaddq_s16(v103, v103), v248)), v264), v522, v256), vshlq_n_s16(vaddq_s16(vaddq_s16(v524, v523), v525), 3uLL)), v261).i64[0], 0);
      if (vaddvq_s16(v265))
      {
        v266.i64[0] = 0x9000900090009;
        v266.i64[1] = 0x9000900090009;
        v267 = vorrq_s8(vandq_s8(vceqzq_s16(v252), v263), vsubq_s16(vandq_s8(v251, v266), vmvnq_s8(v251)));
        v266.i64[0] = -1;
        v266.i64[1] = -1;
        v268.i64[0] = 0xF000F000F000FLL;
        v268.i64[1] = 0xF000F000F000FLL;
        v262 = vbslq_s8(v265, v257, v522);
        v163 = vbslq_s8(v265, v490, v523);
        v164 = vbslq_s8(v265, v488, v524);
        v160 = vbslq_s8(v265, v491, v525);
        v159 = vbslq_s8(v265, v252, v526);
        v103 = vbslq_s8(v265, vorrq_s8(v267, v260), v521);
        v519 = vbslq_s8(v265, v497, v519);
        v520 = vbslq_s8(v265, vextq_s8(v492.val[3], v492.val[3], 8uLL), v520);
        v500 = vbslq_s8(v265, v197, v500);
        v502 = vbslq_s8(v265, v198, v502);
        v504 = vbslq_s8(v265, v199, v504);
        v506 = vbslq_s8(v265, v200, v506);
        v508 = vbslq_s8(v265, v201, v508);
        v509 = vbslq_s8(v265, v202, v509);
        v510 = vbslq_s8(v265, v203, v510);
        v511 = vbslq_s8(v265, v204, v511);
        v512 = vbslq_s8(v265, v205, v512);
        v513 = vbslq_s8(v265, v206, v513);
        v514 = vbslq_s8(v265, v207, v514);
        v515 = vbslq_s8(v265, v208, v515);
        v516 = vbslq_s8(v265, v496, v516);
        v517 = vbslq_s8(v265, v209, v517);
        v518 = vbslq_s8(v265, v499, v518);
        v527 = vbslq_s8(v265, v244, v527);
        v528 = vbslq_s8(v265, v494, v528);
        v529 = vbslq_s8(v265, vandq_s8(vsubq_s16(vshlq_s16(v266, vsubq_s16(v268, v249)), v244), v251), v529);
        v522 = v262;
        v523 = v163;
        v524 = v164;
        v525 = v160;
        v526 = v159;
        v521 = v103;
      }

      v162 = v262;
    }

    v269 = vandq_s8(v529, vceqq_s16(v159, v162));
    v501 = vaddq_s16(v269, v500);
    v503 = vaddq_s16(v502, v269);
    v505 = vaddq_s16(v504, v269);
    v507 = vaddq_s16(v506, v269);
    v270 = vandq_s8(v529, vceqq_s16(v159, v163));
    v508 = vaddq_s16(v508, v270);
    v509 = vaddq_s16(v509, v270);
    v510 = vaddq_s16(v510, v270);
    v511 = vaddq_s16(v511, v270);
    v271 = vandq_s8(v529, vceqq_s16(v159, v164));
    v512 = vaddq_s16(v512, v271);
    v513 = vaddq_s16(v513, v271);
    v514 = vaddq_s16(v514, v271);
    v515 = vaddq_s16(v515, v271);
    v272 = vandq_s8(v529, vceqq_s16(v159, v160));
    v516 = vaddq_s16(v516, v272);
    v517 = vaddq_s16(v517, v272);
    v518 = vaddq_s16(v518, v272);
    v519 = vaddq_s16(v519, v272);
    v272.i64[0] = 0x8000800080008;
    v272.i64[1] = 0x8000800080008;
    v273.i64[0] = 0x3000300030003;
    v273.i64[1] = 0x3000300030003;
    v274.i64[0] = 0x2000200020002;
    v274.i64[1] = 0x2000200020002;
    v275 = vceqq_s16(vandq_s8(v103, v273), v274);
    v274.i64[0] = 0x10001000100010;
    v274.i64[1] = 0x10001000100010;
    v276 = vandq_s8(v275, v274);
    v274.i64[0] = 0x7000700070007;
    v274.i64[1] = 0x7000700070007;
    v277 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v159, vceqzq_s16(vandq_s8(v103, v272))), vandq_s8(vaddq_s16(v103, v103), v272)), v276), v162, v274), vshlq_n_s16(vaddq_s16(vaddq_s16(v164, v163), v160), 3uLL));
    v278 = vpaddq_s16(v277, v277);
    if ((vpaddq_s16(v278, v278).i16[0] - 449) < 0xFFFFFFFFFFFFFDF8)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 64;
    }

    else
    {
      v279 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v280 = 8 * (a1 & 7);
      if (v280)
      {
        v281 = *v279 & ~(-1 << v280);
      }

      else
      {
        v281 = 0;
      }

      *a2 = 0;
      v283 = v520.i64[0];
      v284 = vmovl_s16(vceqz_s16(*v159.i8));
      v285.i64[0] = v284.i32[0];
      v285.i64[1] = v284.i32[1];
      v286 = v285;
      v285.i64[0] = v284.i32[2];
      v285.i64[1] = v284.i32[3];
      v287 = v285;
      v288 = vand_s8(vadd_s16(*v159.i8, 0xF000F000F000FLL), 0xF000F000F000FLL);
      v288.i16[3] = vbic_s8(0x1000100010001, *&v159).i16[3];
      v289 = vshlq_u32(vmovl_u16(v288), xmmword_29D2F12F0);
      v285.i64[0] = v289.u32[0];
      v285.i64[1] = v289.u32[1];
      v290 = v285;
      v285.i64[0] = v289.u32[2];
      v285.i64[1] = v289.u32[3];
      v291 = vorrq_s8(vbicq_s8(v290, v286), vbicq_s8(v285, v287));
      v292 = *&vorr_s8(*v291.i8, *&vextq_s8(v291, v291, 8uLL)) | v103.i8[0] & 0x1F | (32 * (v103.i8[2] & 0x1F)) & 0x83FF | ((v103.i8[4] & 0x1F) << 10) | ((v103.i8[6] & 0xF) << 15);
      v293 = (v292 << v280) | v281;
      if (v280 >= 0x20)
      {
        *v279 = v293;
        v293 = v292 >> (-8 * (a1 & 7u));
      }

      v294 = v283 & 0x3FF | ((WORD1(v283) & 0x3FF) << 10) | ((WORD2(v283) & 0x3FF) << 20) | ((BYTE6(v283) & 3) << 30);
      v295 = (v280 + 32) & 0x38;
      v296 = v293 | (v294 << v295);
      if (v295 >= 0x20)
      {
        *(v279 + (((v280 + 32) >> 3) & 8)) = v296;
        v296 = v294 >> -v295;
      }

      v297 = vsubq_s16(v526, v522);
      v298 = vsubq_s16(v526, v523);
      v299 = vsubq_s16(v526, v524);
      v300 = vsubq_s16(v526, v525);
      *v297.i8 = vqmovn_u16(v297);
      *v298.i8 = vqmovn_u16(v298);
      *v299.i8 = vqmovn_u16(v299);
      *v300.i8 = vqmovn_u16(v300);
      v301 = vtrn1q_s8(v297, v298);
      v302 = vtrn2q_s8(v297, v298);
      v303 = vtrn1q_s8(v299, v300);
      v304 = vtrn2q_s8(v299, v300);
      v305 = vzip1q_s16(v302, v304);
      v306 = vtrn2q_s16(v302, v304);
      v302.i64[0] = vzip1q_s32(vzip1q_s16(v301, v303), v305).u64[0];
      v306.i64[0] = vzip1q_s32(vtrn2q_s16(v301, v303), v306).u64[0];
      v299.i64[0] = 0x202020202020202;
      v299.i64[1] = 0x202020202020202;
      v307 = vandq_s8(vmovl_s16(vtst_s16(*v521.i8, 0x4000400040004)), v299);
      v299.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v299.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v301.i64[0] = -1;
      v301.i64[1] = -1;
      v308 = vshlq_u8(v301, vorrq_s8(v307, v299));
      v309 = vmovl_u8(vand_s8(*v308.i8, *v302.i8));
      v310 = vmovl_u8(vand_s8(*&vextq_s8(v308, v308, 8uLL), *v306.i8));
      v311 = vmovl_u8(*v307.i8);
      v312 = vmovl_high_u8(v307);
      v313 = vpaddq_s16(vshlq_u16(v309, vtrn1q_s16(0, v311)), vshlq_u16(v310, vtrn1q_s16(0, v312)));
      v314 = vpaddq_s16(v311, v312);
      v315 = vmovl_u16(*v314.i8);
      v316 = vmovl_high_u16(v314);
      v317 = vpaddq_s32(vshlq_u32(vmovl_u16(*v313.i8), vtrn1q_s32(0, v315)), vshlq_u32(vmovl_high_u16(v313), vtrn1q_s32(0, v316)));
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
      v325 = (v323.i64[0] << v280) | v296;
      if (v324.i64[0] + v280 >= 0x40)
      {
        v279[1] = v325;
        v325 = v323.i64[0] >> (-8 * (a1 & 7u));
        if (!v280)
        {
          v325 = 0;
        }
      }

      v326 = v324.i64[0] + (v280 | 0x40);
      v327 = v325 | (v323.i64[1] << v326);
      if ((v326 & 0x3F) + v324.i64[1] >= 0x40)
      {
        *(v279 + ((v326 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v327;
        v327 = v323.i64[1] >> -(v326 & 0x3F);
        if ((v326 & 0x3F) == 0)
        {
          v327 = 0;
        }
      }

      v328 = v326 + v324.i64[1];
      v329.i64[0] = 0x8000800080008;
      v329.i64[1] = 0x8000800080008;
      v330.i64[0] = -1;
      v330.i64[1] = -1;
      v331 = vandq_s8(vextq_s8(vtstq_s16(v521, v329), 0, 8uLL), v526);
      v332.i64[0] = 0xF000F000F000FLL;
      v332.i64[1] = 0xF000F000F000FLL;
      v333 = vandq_s8(vshlq_u16(v330, vaddq_s16(v331, v332)), v529);
      v334 = vmovl_u16(*v331.i8);
      v335 = vpaddq_s32(vshlq_u32(vmovl_u16(*v333.i8), vtrn1q_s32(0, v334)), vmovl_high_u16(v333));
      v336 = vpaddq_s32(v334, vmovl_high_u16(v331));
      v337.i64[0] = v335.u32[0];
      v337.i64[1] = v335.u32[1];
      v338 = v337;
      v337.i64[0] = v335.u32[2];
      v337.i64[1] = v335.u32[3];
      v339 = v337;
      v337.i64[0] = v336.u32[0];
      v337.i64[1] = v336.u32[1];
      v340 = v337;
      v337.i64[0] = v336.u32[2];
      v337.i64[1] = v336.u32[3];
      v341 = vpaddq_s64(vshlq_u64(v338, vzip1q_s64(0, v340)), vshlq_u64(v339, vzip1q_s64(0, v337)));
      v342 = vpaddq_s64(v340, v337);
      v343 = (v341.i64[0] << v328) | v327;
      if (v342.i64[0] + (v328 & 0x3F) >= 0x40)
      {
        *(v279 + ((v328 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v343;
        v343 = v341.i64[0] >> -(v328 & 0x3F);
        if ((v328 & 0x3F) == 0)
        {
          v343 = 0;
        }
      }

      v344 = v342.i64[0] + v328;
      v345 = v343 | (v341.i64[1] << v344);
      if ((v344 & 0x3F) + v342.i64[1] >= 0x40)
      {
        *(v279 + ((v344 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v345;
        v345 = v341.i64[1] >> -(v344 & 0x3F);
        if ((v344 & 0x3F) == 0)
        {
          v345 = 0;
        }
      }

      v346 = v344 + v342.i64[1];
      v347 = vextq_s8(0, v522, 8uLL);
      v348.i64[0] = 0xF000F000F000FLL;
      v348.i64[1] = 0xF000F000F000FLL;
      v349.i64[0] = -1;
      v349.i64[1] = -1;
      v350 = vandq_s8(vshlq_u16(v349, vaddq_s16(v347, v348)), v501);
      v351 = vmovl_u16(*v347.i8);
      v352 = vmovl_high_u16(v347);
      v353 = vpaddq_s32(vmovl_u16(*v350.i8), vshlq_u32(vmovl_high_u16(v350), vtrn1q_s32(0, v352)));
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
      v361 = (v359.i64[0] << v346) | v345;
      if (v360.i64[0] + (v346 & 0x3F) >= 0x40)
      {
        *(v279 + ((v346 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
        v361 = v359.i64[0] >> -(v346 & 0x3F);
        if ((v346 & 0x3F) == 0)
        {
          v361 = 0;
        }
      }

      v362 = v360.i64[0] + v346;
      v363 = v361 | (v359.i64[1] << v362);
      if ((v362 & 0x3F) + v360.i64[1] >= 0x40)
      {
        *(v279 + ((v362 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v363;
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
      v367 = vandq_s8(vshlq_u16(v366, vaddq_s16(v522, v365)), v503);
      v368 = vmovl_u16(*v522.i8);
      v369 = vmovl_high_u16(v522);
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
        *(v279 + ((v364 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v378;
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
        *(v279 + ((v379 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v380;
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
      v384 = vandq_s8(vshlq_u16(v383, vaddq_s16(v522, v382)), v505);
      v385 = vmovl_u16(*v522.i8);
      v386 = vmovl_high_u16(v522);
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
        *(v279 + ((v381 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v395;
        v395 = v393.i64[0] >> -(v381 & 0x3F);
        if ((v381 & 0x3F) == 0)
        {
          v395 = 0;
        }
      }

      v396 = v394.i64[0] + v381;
      v397 = v395 | (v393.i64[1] << v396);
      if ((v396 & 0x3F) + v394.i64[1] >= 0x40)
      {
        *(v279 + ((v396 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
        v397 = v393.i64[1] >> -(v396 & 0x3F);
        if ((v396 & 0x3F) == 0)
        {
          v397 = 0;
        }
      }

      v398 = v396 + v394.i64[1];
      v399.i64[0] = 0xF000F000F000FLL;
      v399.i64[1] = 0xF000F000F000FLL;
      v400.i64[0] = -1;
      v400.i64[1] = -1;
      v401 = vandq_s8(vshlq_u16(v400, vaddq_s16(v522, v399)), v507);
      v402 = vmovl_u16(*v522.i8);
      v403 = vmovl_high_u16(v522);
      v404 = vpaddq_s32(vshlq_u32(vmovl_u16(*v401.i8), vtrn1q_s32(0, v402)), vshlq_u32(vmovl_high_u16(v401), vtrn1q_s32(0, v403)));
      v405 = vpaddq_s32(v402, v403);
      v406.i64[0] = v404.u32[0];
      v406.i64[1] = v404.u32[1];
      v407 = v406;
      v406.i64[0] = v404.u32[2];
      v406.i64[1] = v404.u32[3];
      v408 = v406;
      v406.i64[0] = v405.u32[0];
      v406.i64[1] = v405.u32[1];
      v409 = v406;
      v406.i64[0] = v405.u32[2];
      v406.i64[1] = v405.u32[3];
      v410 = vpaddq_s64(vshlq_u64(v407, vzip1q_s64(0, v409)), vshlq_u64(v408, vzip1q_s64(0, v406)));
      v411 = vpaddq_s64(v409, v406);
      v412 = (v410.i64[0] << v398) | v397;
      if (v411.i64[0] + (v398 & 0x3F) >= 0x40)
      {
        *(v279 + ((v398 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v412;
        v412 = v410.i64[0] >> -(v398 & 0x3F);
        if ((v398 & 0x3F) == 0)
        {
          v412 = 0;
        }
      }

      v413 = v411.i64[1];
      v414 = v411.i64[0] + v398;
      v415 = (v411.i64[0] + v398) & 0x3F;
      v416 = v412 | (v410.i64[1] << v414);
      if ((v415 + v411.i64[1]) >= 0x40)
      {
        *(v279 + ((v414 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
        v416 = v410.i64[1] >> -v415;
        if (!v415)
        {
          v416 = 0;
        }
      }

      v417 = 0;
      v418.i64[0] = 0xF000F000F000FLL;
      v418.i64[1] = 0xF000F000F000FLL;
      v419.i64[0] = -1;
      v419.i64[1] = -1;
      v420 = v414 + v413;
      do
      {
        v421 = vandq_s8(vshlq_u16(v419, vaddq_s16(v523, v418)), *(&v508 + v417));
        v422 = vmovl_u16(*v523.i8);
        v423 = vmovl_high_u16(v523);
        v424 = vpaddq_s32(vshlq_u32(vmovl_u16(*v421.i8), vtrn1q_s32(0, v422)), vshlq_u32(vmovl_high_u16(v421), vtrn1q_s32(0, v423)));
        v425 = vpaddq_s32(v422, v423);
        v426.i64[0] = v424.u32[0];
        v426.i64[1] = v424.u32[1];
        v427 = v426;
        v426.i64[0] = v424.u32[2];
        v426.i64[1] = v424.u32[3];
        v428 = v426;
        v426.i64[0] = v425.u32[0];
        v426.i64[1] = v425.u32[1];
        v429 = v426;
        v426.i64[0] = v425.u32[2];
        v426.i64[1] = v425.u32[3];
        v430 = vpaddq_s64(vshlq_u64(v427, vzip1q_s64(0, v429)), vshlq_u64(v428, vzip1q_s64(0, v426)));
        v431 = vpaddq_s64(v429, v426);
        v432 = (v430.i64[0] << v420) | v416;
        if (v431.i64[0] + (v420 & 0x3F) >= 0x40)
        {
          *(v279 + ((v420 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v432;
          v432 = v430.i64[0] >> -(v420 & 0x3F);
          if ((v420 & 0x3F) == 0)
          {
            v432 = 0;
          }
        }

        v433 = v431.i64[0] + v420;
        v416 = v432 | (v430.i64[1] << v433);
        if ((v433 & 0x3F) + v431.i64[1] >= 0x40)
        {
          *(v279 + ((v433 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
          v416 = v430.i64[1] >> -(v433 & 0x3F);
          if ((v433 & 0x3F) == 0)
          {
            v416 = 0;
          }
        }

        v420 = v433 + v431.i64[1];
        v417 += 16;
      }

      while (v417 != 64);
      v434 = 0;
      v435.i64[0] = 0xF000F000F000FLL;
      v435.i64[1] = 0xF000F000F000FLL;
      v436.i64[0] = -1;
      v436.i64[1] = -1;
      do
      {
        v437 = vandq_s8(vshlq_u16(v436, vaddq_s16(v524, v435)), *(&v512 + v434));
        v438 = vmovl_u16(*v524.i8);
        v439 = vmovl_high_u16(v524);
        v440 = vpaddq_s32(vshlq_u32(vmovl_u16(*v437.i8), vtrn1q_s32(0, v438)), vshlq_u32(vmovl_high_u16(v437), vtrn1q_s32(0, v439)));
        v441 = vpaddq_s32(v438, v439);
        v442.i64[0] = v440.u32[0];
        v442.i64[1] = v440.u32[1];
        v443 = v442;
        v442.i64[0] = v440.u32[2];
        v442.i64[1] = v440.u32[3];
        v444 = v442;
        v442.i64[0] = v441.u32[0];
        v442.i64[1] = v441.u32[1];
        v445 = v442;
        v442.i64[0] = v441.u32[2];
        v442.i64[1] = v441.u32[3];
        v446 = vpaddq_s64(vshlq_u64(v443, vzip1q_s64(0, v445)), vshlq_u64(v444, vzip1q_s64(0, v442)));
        v447 = vpaddq_s64(v445, v442);
        v448 = (v446.i64[0] << v420) | v416;
        if (v447.i64[0] + (v420 & 0x3F) >= 0x40)
        {
          *(v279 + ((v420 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v448;
          v448 = v446.i64[0] >> -(v420 & 0x3F);
          if ((v420 & 0x3F) == 0)
          {
            v448 = 0;
          }
        }

        v449 = v447.i64[0] + v420;
        v416 = v448 | (v446.i64[1] << v449);
        if ((v449 & 0x3F) + v447.i64[1] >= 0x40)
        {
          *(v279 + ((v449 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
          v416 = v446.i64[1] >> -(v449 & 0x3F);
          if ((v449 & 0x3F) == 0)
          {
            v416 = 0;
          }
        }

        v420 = v449 + v447.i64[1];
        v434 += 16;
      }

      while (v434 != 64);
      v450 = 0;
      v451.i64[0] = 0xF000F000F000FLL;
      v451.i64[1] = 0xF000F000F000FLL;
      v452.i64[0] = -1;
      v452.i64[1] = -1;
      do
      {
        v453 = vandq_s8(vshlq_u16(v452, vaddq_s16(v525, v451)), *(&v516 + v450));
        v454 = vmovl_u16(*v525.i8);
        v455 = vmovl_high_u16(v525);
        v456 = vpaddq_s32(vshlq_u32(vmovl_u16(*v453.i8), vtrn1q_s32(0, v454)), vshlq_u32(vmovl_high_u16(v453), vtrn1q_s32(0, v455)));
        v457 = vpaddq_s32(v454, v455);
        v458.i64[0] = v456.u32[0];
        v458.i64[1] = v456.u32[1];
        v459 = v458;
        v458.i64[0] = v456.u32[2];
        v458.i64[1] = v456.u32[3];
        v460 = v458;
        v458.i64[0] = v457.u32[0];
        v458.i64[1] = v457.u32[1];
        v461 = v458;
        v458.i64[0] = v457.u32[2];
        v458.i64[1] = v457.u32[3];
        v462 = vpaddq_s64(vshlq_u64(v459, vzip1q_s64(0, v461)), vshlq_u64(v460, vzip1q_s64(0, v458)));
        v463 = vpaddq_s64(v461, v458);
        v464 = (v462.i64[0] << v420) | v416;
        if (v463.i64[0] + (v420 & 0x3F) >= 0x40)
        {
          *(v279 + ((v420 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v464;
          v464 = v462.i64[0] >> -(v420 & 0x3F);
          if ((v420 & 0x3F) == 0)
          {
            v464 = 0;
          }
        }

        v465 = v463.i64[0] + v420;
        v416 = v464 | (v462.i64[1] << v465);
        if ((v465 & 0x3F) + v463.i64[1] >= 0x40)
        {
          *(v279 + ((v465 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
          v416 = v462.i64[1] >> -(v465 & 0x3F);
          if ((v465 & 0x3F) == 0)
          {
            v416 = 0;
          }
        }

        v420 = v465 + v463.i64[1];
        v450 += 16;
      }

      while (v450 != 64);
      if ((v420 & 0x3F) != 0)
      {
        *(v279 + ((v420 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v416;
      }

      result = (v420 - v280 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = *a3;
    *a2 = 3;
    return 4;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v87 = *MEMORY[0x29EDCA608];
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  if (a6 && a5)
  {
    for (i = 0; i != a6; ++i)
    {
      v12 = 0;
      v13 = (a3 + i * a4);
      v14 = 2 * (i & 0x7F);
      v15 = (2 * i) | 1u;
      do
      {
        v17 = *v13;
        v16 = v13[1];
        v18 = v17 & 0x3FF | (((v17 >> 10) & 0x3FF) << 32);
        v19 = (4 * v17) & 0x300000000 | (v17 >> 20) & 0x3FF;
        v20 = &v55 + 8 * (v12 & 0x7F);
        v21 = &v20[v14];
        *v21 = v18;
        v21[1] = v19;
        v22 = v16 & 0x3FF | (((v16 >> 10) & 0x3FF) << 32);
        v23 = (4 * v16) & 0x300000000 | (v16 >> 20) & 0x3FF;
        v24 = &v55 + 4 * ((2 * v12) | 1u);
        v25 = &v24[v14];
        *v25 = v22;
        v25[1] = v23;
        v26 = v13[2];
        v27 = v13[3];
        v28 = &v20[v15];
        *v28 = v26 & 0x3FF | (((v26 >> 10) & 0x3FF) << 32);
        v28[1] = (4 * v26) & 0x300000000 | (v26 >> 20) & 0x3FF;
        v29 = &v24[v15];
        *v29 = v27 & 0x3FF | (((v27 >> 10) & 0x3FF) << 32);
        v29[1] = (4 * v27) & 0x300000000 | (v27 >> 20) & 0x3FF;
        v13 += 4;
        ++v12;
      }

      while (a5 != v12);
    }
  }

  v47 = v55;
  v48 = v59;
  v49 = v56;
  v50 = v60;
  v51 = v63;
  v52 = v67;
  v30 = a6 != 0;
  v31 = 2 * (a6 & 0x7F);
  v32 = 2 * (a5 & 0x7F);
  if (v32 >= 4)
  {
    v33 = 4;
  }

  else
  {
    v33 = 2 * (a5 & 0x7F);
  }

  v53 = v64;
  v54 = v68;
  v34 = 2 * v30;
  if (v32 >= 4)
  {
    v35 = v32 - 4;
  }

  else
  {
    v35 = 0;
  }

  v36 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v47, a7, v33, 2 * v30);
  v47 = v57;
  v48 = v61;
  v49 = v58;
  v50 = v62;
  v51 = v65;
  v52 = v69;
  v37 = v31 - 2;
  if (v31 < 2)
  {
    v37 = 0;
  }

  v53 = v66;
  v54 = v70;
  if (a6 >= 2)
  {
    v38 = 2;
  }

  else
  {
    v38 = v37;
  }

  v39 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 16, &v47, a7, v33, v38);
  v47 = v71;
  v48 = v75;
  v49 = v72;
  v50 = v76;
  v51 = v79;
  v52 = v83;
  if (a5 >= 4)
  {
    v40 = 4;
  }

  else
  {
    v40 = v35;
  }

  v53 = v80;
  v54 = v84;
  v41 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 32, &v47, a7, v40, v34);
  v47 = v73;
  v48 = v77;
  v49 = v74;
  v50 = v78;
  v51 = v81;
  v52 = v85;
  v53 = v82;
  v54 = v86;
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 48, &v47, a7, v40, v38);
  if (v41)
  {
    v43 = 4;
  }

  else
  {
    v43 = 0;
  }

  if (v39)
  {
    v44 = 2;
  }

  else
  {
    v44 = 0;
  }

  if (result)
  {
    v45 = -8;
  }

  else
  {
    v45 = -16;
  }

  *a2 = v45 | v43 | v36 | v44;
  return result;
}