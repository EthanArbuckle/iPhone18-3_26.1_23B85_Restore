uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
    v11 += result;
  }

  else
  {
    *a4 = 0;
  }

  v14 = v9 - 8;
  if (v9 >= 9 && v8)
  {
    if (v8 >= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = v8;
    }

    if (v14 >= 8)
    {
      v16 = 8;
    }

    else
    {
      v16 = v9 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 1, v13 + 32, a2, v16, v15, a7);
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

    if (v9 >= 8)
    {
      v20 = 8;
    }

    else
    {
      v20 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 2, v13 + v17, a2, v20, v19, a7);
    v11 += result;
    if (v9 < 9)
    {
      goto LABEL_38;
    }
  }

  else
  {
    a4[2] = 0;
    if (v9 < 9)
    {
      goto LABEL_38;
    }
  }

  if (v8 >= 5)
  {
    if (v18 >= 4)
    {
      v21 = 4;
    }

    else
    {
      v21 = v8 - 4;
    }

    if (v14 >= 8)
    {
      v22 = 8;
    }

    else
    {
      v22 = v9 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 3, v13 + v17 + 32, a2, v22, v21, a7);
    v11 += result;
    v23 = v8 - 8;
    goto LABEL_39;
  }

LABEL_38:
  a4[3] = 0;
  v23 = v8 - 8;
  if (!v9)
  {
    goto LABEL_48;
  }

LABEL_39:
  if (v8 < 9)
  {
LABEL_48:
    a4[4] = 0;
    if (v9 < 9)
    {
      goto LABEL_57;
    }

    goto LABEL_49;
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 4, v13 + 8 * a2, a2, v25, v24, a7);
  v11 += result;
  if (v9 < 9)
  {
LABEL_57:
    a4[5] = 0;
    v28 = v8 - 12;
    if (!v9)
    {
      goto LABEL_67;
    }

    goto LABEL_58;
  }

LABEL_49:
  if (v8 < 9)
  {
    goto LABEL_57;
  }

  if (v23 >= 4)
  {
    v26 = 4;
  }

  else
  {
    v26 = v23;
  }

  if (v14 >= 8)
  {
    v27 = 8;
  }

  else
  {
    v27 = v9 - 8;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 5, v13 + 8 * a2 + 32, a2, v27, v26, a7);
  v11 += result;
  v28 = v8 - 12;
LABEL_58:
  if (v8 >= 0xD)
  {
    if (v28 >= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = v28;
    }

    if (v9 >= 8)
    {
      v30 = 8;
    }

    else
    {
      v30 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 6, v13 + 12 * a2, a2, v30, v29, a7);
    v11 += result;
    if (v9 < 9)
    {
      goto LABEL_78;
    }

    goto LABEL_68;
  }

LABEL_67:
  a4[6] = 0;
  if (v9 < 9)
  {
LABEL_78:
    a4[7] = 0;
    return result;
  }

LABEL_68:
  if (v8 < 0xD)
  {
    goto LABEL_78;
  }

  if (v28 >= 4)
  {
    v31 = 4;
  }

  else
  {
    v31 = v28;
  }

  if (v14 >= 8)
  {
    v32 = 8;
  }

  else
  {
    v32 = v9 - 8;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 7, v13 + 12 * a2 + 32, a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1, 64, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 32, 64, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 256, 64, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 288, 64, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 512, 64, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 544, 64, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 768, 64, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressSubblock(a1 + 800, 64, v12 + v13, v14, a4);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = *(a3 + 16);
  v7 = (a3 + 2 * a4);
  v9 = *(a3 + a4);
  v10 = *(a3 + a4 + 16);
  v11 = vzip1q_s64(*a3, v9);
  v12 = vzip2q_s64(*a3, v9);
  v13 = vzip1q_s64(v8, v10);
  v15 = *v7;
  v16 = v7[1];
  v14 = (v7 + a4);
  v17 = vzip2q_s64(v8, v10);
  v18 = v14[1];
  v19 = vzip1q_s64(v15, *v14);
  v20 = vzip2q_s64(v15, *v14);
  v21 = vzip1q_s64(v16, v18);
  v22 = vzip2q_s64(v16, v18);
  v23.i64[0] = v11.u32[0];
  v23.i64[1] = v11.u32[1];
  v24 = v23;
  v23.i64[0] = v11.u32[2];
  v23.i64[1] = v11.u32[3];
  v25 = vbslq_s8(xmmword_29D2F1290, v24, 0);
  v26 = vbslq_s8(xmmword_29D2F1290, v23, 0);
  v23.i64[0] = v12.u32[0];
  v23.i64[1] = v12.u32[1];
  v27 = v23;
  v23.i64[0] = v12.u32[2];
  v23.i64[1] = v12.u32[3];
  v28 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v11.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v11.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v11.i8, 6uLL), v25)));
  v29 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v11, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v11, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v11, 6uLL), v26)));
  v30 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v12.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v12.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v12.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v27, 0))));
  v31 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v12, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v12, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v12, 6uLL), vbslq_s8(xmmword_29D2F1290, v23, 0))));
  v23.i64[0] = v19.u32[0];
  v23.i64[1] = v19.u32[1];
  v32 = v23;
  v23.i64[0] = v19.u32[2];
  v23.i64[1] = v19.u32[3];
  v33 = vbslq_s8(xmmword_29D2F1290, v32, 0);
  v34 = vbslq_s8(xmmword_29D2F1290, v23, 0);
  v23.i64[0] = v20.u32[0];
  v23.i64[1] = v20.u32[1];
  v35 = v23;
  v23.i64[0] = v20.u32[2];
  v23.i64[1] = v20.u32[3];
  v36 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v19.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v19.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v19.i8, 6uLL), v33)));
  v37 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v19, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v19, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v19, 6uLL), v34)));
  v38 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v20.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v20.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v20.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v35, 0))));
  v39 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v20, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v20, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v20, 6uLL), vbslq_s8(xmmword_29D2F1290, v23, 0))));
  v23.i64[0] = v13.u32[0];
  v23.i64[1] = v13.u32[1];
  v40 = v23;
  v23.i64[0] = v13.u32[2];
  v23.i64[1] = v13.u32[3];
  v41 = vbslq_s8(xmmword_29D2F1290, v40, 0);
  v42 = vbslq_s8(xmmword_29D2F1290, v23, 0);
  v23.i64[0] = v17.u32[0];
  v23.i64[1] = v17.u32[1];
  v43 = v23;
  v23.i64[0] = v17.u32[2];
  v23.i64[1] = v17.u32[3];
  v44 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v13.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v13.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v13.i8, 6uLL), v41)));
  v45 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v13, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v13, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v13, 6uLL), v42)));
  v46 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v17.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v17.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v17.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v43, 0))));
  v47 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v17, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v17, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v17, 6uLL), vbslq_s8(xmmword_29D2F1290, v23, 0))));
  v23.i64[0] = v21.u32[0];
  v23.i64[1] = v21.u32[1];
  v48 = v23;
  v23.i64[0] = v21.u32[2];
  v23.i64[1] = v21.u32[3];
  v49 = vbslq_s8(xmmword_29D2F1290, v48, 0);
  v50 = vbslq_s8(xmmword_29D2F1290, v23, 0);
  v23.i64[0] = v22.u32[0];
  v23.i64[1] = v22.u32[1];
  v51 = v23;
  v23.i64[0] = v22.u32[2];
  v23.i64[1] = v22.u32[3];
  v52 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v21.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v21.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v21.i8, 6uLL), v49)));
  v53 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v21, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v21, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v21, 6uLL), v50)));
  v54 = vbslq_s8(xmmword_29D2F12C0, vshll_n_u32(*v22.i8, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_n_u32(*v22.i8, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_n_u32(*v22.i8, 6uLL), vbslq_s8(xmmword_29D2F1290, v51, 0))));
  v55 = vbslq_s8(xmmword_29D2F12C0, vshll_high_n_u32(v22, 0x12uLL), vbslq_s8(xmmword_29D2F12B0, vshll_high_n_u32(v22, 0xCuLL), vbslq_s8(xmmword_29D2F12A0, vshll_high_n_u32(v22, 6uLL), vbslq_s8(xmmword_29D2F1290, v23, 0))));
  v56 = vdupq_lane_s64(v28.i64[0], 0);
  v507 = v39;
  v57 = vsubq_s16(v39, v56);
  v509 = vshlq_s16(vshlq_s16(vsubq_s16(v28, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v511 = vshlq_s16(vshlq_s16(vsubq_s16(v29, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v513 = vshlq_s16(vshlq_s16(vsubq_s16(v30, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v515 = vshlq_s16(vshlq_s16(vsubq_s16(v31, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v517 = vshlq_s16(vshlq_s16(vsubq_s16(v36, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v518 = vshlq_s16(vshlq_s16(vsubq_s16(v37, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v58 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v509, v511), v513), v515), xmmword_29D2F1150);
  v59 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v509, v511), v513), v515), xmmword_29D2F1150);
  v60 = vpmaxq_s16(v58, v58);
  v61 = vpminq_s16(v59, v59);
  v62 = vzip1q_s16(v60, v61);
  v58.i64[0] = 0x10001000100010;
  v58.i64[1] = 0x10001000100010;
  v63 = vbicq_s8(vsubq_s16(v58, vclsq_s16(v62)), vceqzq_s16(v62));
  v519 = vshlq_s16(vshlq_s16(vsubq_s16(v38, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v520 = vshlq_s16(vshlq_s16(v57, xmmword_29D2F12D0), xmmword_29D2F12E0);
  v64.i64[0] = 0x8000800080008000;
  v64.i64[1] = 0x8000800080008000;
  v57.i64[0] = 0x8000800080008000;
  v57.i64[1] = 0x8000800080008000;
  v65 = vminq_s16(v61, v57);
  v66 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v517, v518), v519), v520), xmmword_29D2F1150);
  v67 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v517, v518), v519), v520), xmmword_29D2F1150);
  v68 = vpmaxq_s16(v66, v66);
  v69 = vpminq_s16(v67, v67);
  v70 = vmaxq_s16(vmaxq_s16(v60, v64), v68);
  v71 = vminq_s16(v65, v69);
  v72 = vzip1q_s16(v68, v69);
  v73 = vbicq_s8(vsubq_s16(v58, vclsq_s16(v72)), vceqzq_s16(v72));
  v521 = vshlq_s16(vshlq_s16(vsubq_s16(v44, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v522 = vshlq_s16(vshlq_s16(vsubq_s16(v45, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v74 = vshlq_s16(vshlq_s16(vsubq_s16(v46, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v75 = vminq_s16(vminq_s16(v521, v522), v74);
  v523 = v74;
  v524 = vshlq_s16(vshlq_s16(vsubq_s16(v47, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v76 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v521, v522), v74), v524), xmmword_29D2F1150);
  v77 = vqtbl1q_s8(vminq_s16(v75, v524), xmmword_29D2F1150);
  v78 = vpmaxq_s16(v76, v76);
  v79 = vpminq_s16(v77, v77);
  v80 = vmaxq_s16(v70, v78);
  v81 = vminq_s16(v71, v79);
  v82 = vzip1q_s16(v78, v79);
  v83 = vbicq_s8(vsubq_s16(v58, vclsq_s16(v82)), vceqzq_s16(v82));
  v525 = vshlq_s16(vshlq_s16(vsubq_s16(v52, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v526 = vshlq_s16(vshlq_s16(vsubq_s16(v53, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v529 = v56;
  v527 = vshlq_s16(vshlq_s16(vsubq_s16(v54, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v528 = vshlq_s16(vshlq_s16(vsubq_s16(v55, v56), xmmword_29D2F12D0), xmmword_29D2F12E0);
  v84 = vpmaxq_s16(v63, v63);
  v85 = vpmaxq_s16(v73, v73);
  v86 = vpmaxq_s16(v83, v83);
  v87 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v525, v526), v527), v528), xmmword_29D2F1150);
  v88 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v525, v526), v527), v528), xmmword_29D2F1150);
  v89 = vpmaxq_s16(v87, v87);
  v90 = vpminq_s16(v88, v88);
  v91 = vmaxq_s16(v80, v89);
  v92 = vminq_s16(v81, v90);
  v93 = vzip1q_s16(v89, v90);
  v94 = vbicq_s8(vsubq_s16(v58, vclsq_s16(v93)), vceqzq_s16(v93));
  v95 = vpmaxq_s16(v94, v94);
  v96 = vmaxq_s16(vmaxq_s16(v84, v85), vmaxq_s16(v86, v95));
  v97 = vclzq_s16(vsubq_s16(v91, v92));
  v98.i64[0] = 0xF000F000F000FLL;
  v98.i64[1] = 0xF000F000F000FLL;
  v99.i64[0] = -1;
  v99.i64[1] = -1;
  v536 = v92;
  v537 = v91;
  v100 = vsubq_s16(vshlq_s16(v99, vsubq_s16(v98, v97)), v92);
  v101 = vsubq_s16(v58, v97);
  v102 = vcgtq_s16(v96, v101);
  v103 = vminq_s16(v101, v96);
  v538 = vandq_s8(v100, v102);
  v100.i64[0] = 0x8000800080008;
  v100.i64[1] = 0x8000800080008;
  v58.i64[0] = 0x3000300030003;
  v58.i64[1] = 0x3000300030003;
  v104 = vorrq_s8(vandq_s8(vceqzq_s16(v103), v58), vorrq_s8(vandq_s8(v102, v100), 0));
  v105 = vmaxq_s16(vminq_s16(vsubq_s16(v103, v85), v58), 0);
  v106 = vmaxq_s16(vminq_s16(vsubq_s16(v103, v86), v58), 0);
  v532 = vsubq_s16(v103, v105);
  v533 = vsubq_s16(v103, v106);
  v107 = vmaxq_s16(vminq_s16(vsubq_s16(v103, v95), v58), 0);
  v534 = vsubq_s16(v103, v107);
  v535 = v103;
  v108 = vaddq_s16(v107, v106);
  v109 = vmaxq_s16(vminq_s16(vsubq_s16(v103, v84), v58), 0);
  v110 = vsubq_s16(v103, v109);
  v111 = vceqq_s16(v108, vnegq_s16(vaddq_s16(v109, v105)));
  v109.i64[0] = 0x4000400040004;
  v109.i64[1] = 0x4000400040004;
  v112 = vorrq_s8(vbicq_s8(v109, v111), v104);
  v530 = v112;
  v531 = v110;
  if (vmaxvq_s16(v103))
  {
    v475 = v55;
    v476 = v47;
    v477 = v36;
    v478 = v37;
    v479 = v38;
    v501.val[0] = v28;
    v501.val[1] = v29;
    v501.val[2] = v30;
    v501.val[3] = v31;
    v504 = v104;
    v113 = vshlq_s16(vshlq_s16(vsubq_s16(v525, vqtbl1q_s8(v525, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v114 = vshlq_s16(vshlq_s16(vsubq_s16(v526, vqtbl1q_s8(v526, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v115 = vshlq_s16(vshlq_s16(vsubq_s16(v528, vqtbl1q_s8(v528, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v485 = vshlq_s16(vshlq_s16(vsubq_s16(v509, vqtbl1q_s8(v509, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v486 = vshlq_s16(vshlq_s16(vsubq_s16(v511, vqtbl1q_s8(v511, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v487 = vshlq_s16(vshlq_s16(vsubq_s16(v515, vqtbl1q_s8(v515, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v488 = vshlq_s16(vshlq_s16(vsubq_s16(v513, vqtbl1q_s8(v513, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v116 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v485, v486), v488), v487), xmmword_29D2F1150);
    v117 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v485, v486), v488), v487), xmmword_29D2F1150);
    v118 = vpmaxq_s16(v116, v116);
    v119 = vpminq_s16(v117, v117);
    v120.i64[0] = 0x8000800080008000;
    v120.i64[1] = 0x8000800080008000;
    v121 = vmaxq_s16(v118, v120);
    v122.i64[0] = 0x8000800080008000;
    v122.i64[1] = 0x8000800080008000;
    v123 = vminq_s16(v119, v122);
    v124 = vzip1q_s16(v118, v119);
    v125.i64[0] = 0x10001000100010;
    v125.i64[1] = 0x10001000100010;
    v126 = vbicq_s8(vsubq_s16(v125, vclsq_s16(v124)), vceqzq_s16(v124));
    v127 = vpmaxq_s16(v126, v126);
    v491 = vshlq_s16(vshlq_s16(vsubq_s16(v518, vqtbl1q_s8(v518, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v492 = vshlq_s16(vshlq_s16(vsubq_s16(v517, vqtbl1q_s8(v517, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v493 = vshlq_s16(vshlq_s16(vsubq_s16(v520, vqtbl1q_s8(v520, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v494 = vshlq_s16(vshlq_s16(vsubq_s16(v519, vqtbl1q_s8(v519, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v128 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v492, v491), v494), v493), xmmword_29D2F1150);
    v129 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v492, v491), v494), v493), xmmword_29D2F1150);
    v130 = vpmaxq_s16(v128, v128);
    v131 = vpminq_s16(v129, v129);
    v132 = vmaxq_s16(v121, v130);
    v133 = vminq_s16(v123, v131);
    v134 = vzip1q_s16(v130, v131);
    v135.i64[0] = 0x10001000100010;
    v135.i64[1] = 0x10001000100010;
    v136 = vbicq_s8(vsubq_s16(v125, vclsq_s16(v134)), vceqzq_s16(v134));
    v137 = vpmaxq_s16(v136, v136);
    v495 = vshlq_s16(vshlq_s16(vsubq_s16(v522, vqtbl1q_s8(v522, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v496 = vshlq_s16(vshlq_s16(vsubq_s16(v521, vqtbl1q_s8(v521, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v502 = vshlq_s16(vshlq_s16(vsubq_s16(v523, vqtbl1q_s8(v523, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v498 = vshlq_s16(vshlq_s16(vsubq_s16(v524, vqtbl1q_s8(v524, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v138 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v496, v495), v502), v498), xmmword_29D2F1150);
    v139 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v496, v495), v502), v498), xmmword_29D2F1150);
    v140 = vpmaxq_s16(v138, v138);
    v141 = vpminq_s16(v139, v139);
    v142 = vmaxq_s16(v132, v140);
    v143 = vminq_s16(v133, v141);
    v144 = vzip1q_s16(v140, v141);
    v145 = vbicq_s8(vsubq_s16(v135, vclsq_s16(v144)), vceqzq_s16(v144));
    v146 = vpmaxq_s16(v145, v145);
    v480 = vshlq_s16(vshlq_s16(vsubq_s16(v527, vqtbl1q_s8(v527, xmmword_29D2F1270)), xmmword_29D2F12D0), xmmword_29D2F12E0);
    v147 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v113, v114), v480), v115), xmmword_29D2F1150);
    v148 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v113, v114), v480), v115), xmmword_29D2F1150);
    v149 = vpmaxq_s16(v147, v147);
    v150 = vpminq_s16(v148, v148);
    v151 = vmaxq_s16(v142, v149);
    v152 = vminq_s16(v143, v150);
    v153 = vzip1q_s16(v149, v150);
    v150.i64[0] = 0x10001000100010;
    v150.i64[1] = 0x10001000100010;
    v154 = vbicq_s8(vsubq_s16(v150, vclsq_s16(v153)), vceqzq_s16(v153));
    v155 = vpmaxq_s16(v154, v154);
    v156 = vmaxq_s16(vmaxq_s16(v127, v137), vmaxq_s16(v146, v155));
    v489 = v152;
    v490 = v151;
    v157 = vclzq_s16(vsubq_s16(v151, v152));
    v158 = vsubq_s16(v150, v157);
    v151.i64[0] = 0x10001000100010;
    v151.i64[1] = 0x10001000100010;
    v159 = vcgtq_s16(v156, v158);
    v160 = vminq_s16(v158, v156);
    v158.i64[0] = 0x3000300030003;
    v158.i64[1] = 0x3000300030003;
    v161 = vmaxq_s16(vminq_s16(vsubq_s16(v160, v127), v158), 0);
    v162 = vmaxq_s16(vminq_s16(vsubq_s16(v160, v137), v158), 0);
    v163 = vmaxq_s16(vminq_s16(vsubq_s16(v160, v146), v158), 0);
    v152.i64[0] = 0x3000300030003;
    v152.i64[1] = 0x3000300030003;
    v164 = vmaxq_s16(vminq_s16(vsubq_s16(v160, v155), v158), 0);
    v150.i64[0] = 0x4000400040004;
    v150.i64[1] = 0x4000400040004;
    v165 = vbicq_s8(v150, vceqq_s16(vaddq_s16(v164, v163), vnegq_s16(vaddq_s16(v161, v162))));
    v158.i64[0] = 0x18001800180018;
    v158.i64[1] = 0x18001800180018;
    v166 = v159;
    v167 = vbslq_s8(v159, v158, v151);
    v482 = vsubq_s16(v160, v162);
    v483 = vsubq_s16(v160, v163);
    v484 = vsubq_s16(v160, v164);
    v163.i64[0] = 0x7000700070007;
    v163.i64[1] = 0x7000700070007;
    v481 = vsubq_s16(v160, v161);
    v161.i64[0] = 0x8000800080008;
    v161.i64[1] = 0x8000800080008;
    v150.i64[0] = 0x2000200020002;
    v150.i64[1] = 0x2000200020002;
    v169 = v534;
    v168 = v535;
    v170 = vaddq_s16(vaddq_s16(vbicq_s8(v535, vceqzq_s16(vandq_s8(v504, v161))), vandq_s8(vceqq_s16(vandq_s8(v504, v152), v150), v151)), vandq_s8(vaddq_s16(v112, v112), v161));
    v171 = v531;
    v172 = v532;
    v173 = v533;
    v174 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(v170, v531, v163), vshlq_n_s16(vaddq_s16(vaddq_s16(v533, v532), v534), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v160, vceqzq_s16((*&v167 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v165, v165)), v481, v163), vshlq_n_s16(vaddq_s16(vaddq_s16(v483, v482), v484), 3uLL))).i64[0], 0);
    v175 = vaddvq_s16(v174);
    v177 = a5 < 4 || a6 < 2;
    if (v175)
    {
      v178.i64[0] = 0x3000300030003;
      v178.i64[1] = 0x3000300030003;
      v179 = vorrq_s8(vandq_s8(vceqzq_s16(v160), v178), v167);
      v180 = v114;
      v181 = vorrq_s8(v179, v165);
      v179.i64[0] = 0xF000F000F000FLL;
      v179.i64[1] = 0xF000F000F000FLL;
      v509 = vbslq_s8(v174, v485, v509);
      v511 = vbslq_s8(v174, v486, v511);
      v178.i64[0] = -1;
      v178.i64[1] = -1;
      v513 = vbslq_s8(v174, v488, v513);
      v515 = vbslq_s8(v174, v487, v515);
      v517 = vbslq_s8(v174, v492, v517);
      v518 = vbslq_s8(v174, v491, v518);
      v519 = vbslq_s8(v174, v494, v519);
      v520 = vbslq_s8(v174, v493, v520);
      v521 = vbslq_s8(v174, v496, v521);
      v522 = vbslq_s8(v174, v495, v522);
      v523 = vbslq_s8(v174, v502, v523);
      v524 = vbslq_s8(v174, v498, v524);
      v525 = vbslq_s8(v174, v113, v525);
      v526 = vbslq_s8(v174, v180, v526);
      v527 = vbslq_s8(v174, v480, v527);
      v528 = vbslq_s8(v174, v115, v528);
      v171 = vbslq_s8(v174, v481, v531);
      v172 = vbslq_s8(v174, v482, v532);
      v531 = v171;
      v532 = v172;
      v173 = vbslq_s8(v174, v483, v533);
      v169 = vbslq_s8(v174, v484, v534);
      v533 = v173;
      v534 = v169;
      v537 = vbslq_s8(v174, v490, v537);
      v538 = vbslq_s8(v174, vandq_s8(vsubq_s16(vshlq_s16(v178, vsubq_s16(v179, v157)), v489), v166), v538);
      v168 = vbslq_s8(v174, v160, v535);
      v535 = v168;
      v536 = vbslq_s8(v174, v489, v536);
      v112 = vbslq_s8(v174, v181, v530);
      v529 = vbslq_s8(v174, vsubq_s16(v529, vqtbl1q_s8(v529, xmmword_29D2F1270)), v529);
      v530 = v112;
    }

    if (!v177)
    {
      v182 = vqtbl4q_s8(v501, xmmword_29D2F1160);
      v183 = vsubq_s16(v501.val[0], vqtbl4q_s8(v501, xmmword_29D2F10B0));
      v184 = vsubq_s16(v501.val[2], v182);
      v185 = vsubq_s16(v501.val[3], v182);
      v539.val[0] = v477;
      v539.val[1] = v478;
      v539.val[2] = v479;
      v539.val[3].i64[0] = v507.i64[0];
      v539.val[3].i64[1] = v501.val[3].i64[1];
      v186 = vsubq_s16(v477, vqtbl4q_s8(v539, xmmword_29D2F10B0));
      v187 = vsubq_s16(v478, vqtbl4q_s8(v539, xmmword_29D2F10F0));
      v188 = vsubq_s16(v479, vqtbl4q_s8(v539, xmmword_29D2F1160));
      v189 = vsubq_s16(v507, vqtbl4q_s8(v539, xmmword_29D2F1100));
      v190 = v476.i64[0];
      v191 = v501.val[3].i64[1];
      v539.val[1] = vqtbl4q_s8(*v44.i8, xmmword_29D2F10C0);
      v192 = vsubq_s16(v44, vqtbl4q_s8(*v44.i8, xmmword_29D2F1170));
      v193 = vsubq_s16(v45, vqtbl4q_s8(*v44.i8, xmmword_29D2F1180));
      v194 = vsubq_s16(v46, vqtbl4q_s8(*v44.i8, xmmword_29D2F10B0));
      v195 = v475.i64[0];
      v196 = v501.val[3].i64[1];
      v539.val[0] = vsubq_s16(v52, vqtbl4q_s8(*v52.i8, xmmword_29D2F1170));
      v197 = vsubq_s16(v53, vqtbl4q_s8(*v52.i8, xmmword_29D2F1120));
      v198 = vsubq_s16(v54, vqtbl4q_s8(*v52.i8, xmmword_29D2F10B0));
      v199.i64[0] = v185.i64[0];
      v199.i64[1] = v183.i64[0];
      v200 = vsubq_s16(v475, vqtbl4q_s8(*v52.i8, xmmword_29D2F10C0));
      v183.i64[0] = v185.i64[1];
      v201 = vshlq_s16(v183, xmmword_29D2F12D0);
      v202 = vshlq_s16(v184, xmmword_29D2F12D0);
      v203 = vshlq_s16(v192, xmmword_29D2F12D0);
      v204 = vshlq_s16(v193, xmmword_29D2F12D0);
      v205 = vshlq_s16(vsubq_s16(v476, v539.val[1]), xmmword_29D2F12D0);
      v539.val[1] = vshlq_s16(v197, xmmword_29D2F12D0);
      v206 = vshlq_s16(v201, xmmword_29D2F12E0);
      v207 = vshlq_s16(vshlq_s16(vsubq_s16(v501.val[1], vqtbl4q_s8(v501, xmmword_29D2F10C0)), xmmword_29D2F12D0), xmmword_29D2F12E0);
      v208 = vshlq_s16(v202, xmmword_29D2F12E0);
      v209 = vshlq_s16(vshlq_s16(v199, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v210 = vshlq_s16(vshlq_s16(v186, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v211 = vshlq_s16(vshlq_s16(v187, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v212 = vshlq_s16(vshlq_s16(v188, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v213 = vshlq_s16(vshlq_s16(v189, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v214 = vshlq_s16(v203, xmmword_29D2F12E0);
      v215 = vshlq_s16(v204, xmmword_29D2F12E0);
      v216 = vshlq_s16(vshlq_s16(v194, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v217 = vshlq_s16(v205, xmmword_29D2F12E0);
      v539.val[2] = vshlq_s16(vshlq_s16(v539.val[0], xmmword_29D2F12D0), xmmword_29D2F12E0);
      v218 = vshlq_s16(v539.val[1], xmmword_29D2F12E0);
      v219 = vshlq_s16(vshlq_s16(v198, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v220 = vshlq_s16(vshlq_s16(v200, xmmword_29D2F12D0), xmmword_29D2F12E0);
      v221 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v206, v207), v208), v209), xmmword_29D2F1150);
      v222 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v206, v207), v208), v209), xmmword_29D2F1150);
      v223 = vpmaxq_s16(v221, v221);
      v224 = vpminq_s16(v222, v222);
      v200.i64[0] = 0x8000800080008000;
      v200.i64[1] = 0x8000800080008000;
      v225 = vmaxq_s16(v223, v200);
      v186.i64[0] = 0x8000800080008000;
      v186.i64[1] = 0x8000800080008000;
      v226 = vminq_s16(v224, v186);
      v227 = vzip1q_s16(v223, v224);
      v205.i64[0] = 0x10001000100010;
      v205.i64[1] = 0x10001000100010;
      v228 = vbicq_s8(vsubq_s16(v205, vclsq_s16(v227)), vceqzq_s16(v227));
      v229 = vpmaxq_s16(v228, v228);
      v230 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v210, v211), v212), v213), xmmword_29D2F1150);
      v231 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v210, v211), v212), v213), xmmword_29D2F1150);
      v232 = vpmaxq_s16(v230, v230);
      v233 = vpminq_s16(v231, v231);
      v234 = vmaxq_s16(v225, v232);
      v235 = vminq_s16(v226, v233);
      v236 = vzip1q_s16(v232, v233);
      v237 = vbicq_s8(vsubq_s16(v205, vclsq_s16(v236)), vceqzq_s16(v236));
      v238 = vpmaxq_s16(v237, v237);
      v239 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v214, v215), v216), v217), xmmword_29D2F1150);
      v240 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v214, v215), v216), v217), xmmword_29D2F1150);
      v241 = vpmaxq_s16(v239, v239);
      v242 = vpminq_s16(v240, v240);
      v243 = vmaxq_s16(v234, v241);
      v244 = vminq_s16(v235, v242);
      v245 = vzip1q_s16(v241, v242);
      v246 = vbicq_s8(vsubq_s16(v205, vclsq_s16(v245)), vceqzq_s16(v245));
      v247 = vpmaxq_s16(v246, v246);
      v505 = v539.val[2];
      v506 = v220;
      v508 = v219;
      v248 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v539.val[2], v218), v219), v220), xmmword_29D2F1150);
      v249 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v539.val[2], v218), v219), v220), xmmword_29D2F1150);
      v250 = vpmaxq_s16(v248, v248);
      v251 = vpminq_s16(v249, v249);
      v252 = vmaxq_s16(v243, v250);
      v253 = vminq_s16(v244, v251);
      v254 = vzip1q_s16(v250, v251);
      v255 = vbicq_s8(vsubq_s16(v205, vclsq_s16(v254)), vceqzq_s16(v254));
      v256 = vpmaxq_s16(v255, v255);
      v257 = vmaxq_s16(vmaxq_s16(v229, v238), vmaxq_s16(v247, v256));
      v503 = v252;
      v258 = vclzq_s16(vsubq_s16(v252, v253));
      v259 = vsubq_s16(v205, v258);
      v260 = vcgtq_s16(v257, v259);
      v261 = vminq_s16(v259, v257);
      v257.i64[0] = 0x3000300030003;
      v257.i64[1] = 0x3000300030003;
      v262 = vmaxq_s16(vminq_s16(vsubq_s16(v261, v229), v257), 0);
      v263 = vmaxq_s16(vminq_s16(vsubq_s16(v261, v238), v257), 0);
      v264 = vmaxq_s16(vminq_s16(vsubq_s16(v261, v247), v257), 0);
      v265 = vmaxq_s16(vminq_s16(vsubq_s16(v261, v256), v257), 0);
      v266 = vsubq_s16(v261, v262);
      v539.val[1] = vsubq_s16(v261, v263);
      v267 = vsubq_s16(v261, v265);
      v268 = vceqq_s16(vaddq_s16(v265, v264), vnegq_s16(vaddq_s16(v262, v263)));
      v263.i64[0] = 0x4000400040004;
      v263.i64[1] = 0x4000400040004;
      v269 = vbicq_s8(v263, v268);
      v265.i64[0] = 0x7000700070007;
      v265.i64[1] = 0x7000700070007;
      v497 = vsubq_s16(v261, v264);
      v499 = v539.val[1];
      v500 = v267;
      v270 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v261, v260), vaddq_s16(v269, v269)), v266, v265), vshlq_n_s16(vaddq_s16(vaddq_s16(v497, v539.val[1]), v267), 3uLL));
      v112 = v530;
      v271 = v531;
      v272.i64[0] = 0x2000200020002;
      v272.i64[1] = 0x2000200020002;
      v273 = vandq_s8(vceqq_s16(vandq_s8(v530, v257), v272), v205);
      v257.i64[0] = 0x8000800080008;
      v257.i64[1] = 0x8000800080008;
      v169 = v534;
      v168 = v535;
      v172 = v532;
      v173 = v533;
      v274 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v535, vceqzq_s16(vandq_s8(v530, v257))), vandq_s8(vaddq_s16(v112, v112), v257)), v273), v531, v265), vshlq_n_s16(vaddq_s16(vaddq_s16(v533, v532), v534), 3uLL)), v270).i64[0], 0);
      if (vaddvq_s16(v274))
      {
        v275.i64[0] = 0x9000900090009;
        v275.i64[1] = 0x9000900090009;
        v276 = vorrq_s8(vandq_s8(vceqzq_s16(v261), v272), vsubq_s16(vandq_s8(v260, v275), vmvnq_s8(v260)));
        v275.i64[0] = -1;
        v275.i64[1] = -1;
        v277.i64[0] = 0xF000F000F000FLL;
        v277.i64[1] = 0xF000F000F000FLL;
        v271 = vbslq_s8(v274, v266, v531);
        v172 = vbslq_s8(v274, v499, v532);
        v173 = vbslq_s8(v274, v497, v533);
        v169 = vbslq_s8(v274, v500, v534);
        v168 = vbslq_s8(v274, v261, v535);
        v112 = vbslq_s8(v274, vorrq_s8(v276, v269), v530);
        v528 = vbslq_s8(v274, v506, v528);
        v529 = vbslq_s8(v274, vextq_s8(v501.val[3], v501.val[3], 8uLL), v529);
        v509 = vbslq_s8(v274, v206, v509);
        v511 = vbslq_s8(v274, v207, v511);
        v513 = vbslq_s8(v274, v208, v513);
        v515 = vbslq_s8(v274, v209, v515);
        v517 = vbslq_s8(v274, v210, v517);
        v518 = vbslq_s8(v274, v211, v518);
        v519 = vbslq_s8(v274, v212, v519);
        v520 = vbslq_s8(v274, v213, v520);
        v521 = vbslq_s8(v274, v214, v521);
        v522 = vbslq_s8(v274, v215, v522);
        v523 = vbslq_s8(v274, v216, v523);
        v524 = vbslq_s8(v274, v217, v524);
        v525 = vbslq_s8(v274, v505, v525);
        v526 = vbslq_s8(v274, v218, v526);
        v527 = vbslq_s8(v274, v508, v527);
        v536 = vbslq_s8(v274, v253, v536);
        v537 = vbslq_s8(v274, v503, v537);
        v538 = vbslq_s8(v274, vandq_s8(vsubq_s16(vshlq_s16(v275, vsubq_s16(v277, v258)), v253), v260), v538);
        v531 = v271;
        v532 = v172;
        v533 = v173;
        v534 = v169;
        v535 = v168;
        v530 = v112;
      }

      v171 = v271;
    }

    v278 = vandq_s8(v538, vceqq_s16(v168, v171));
    v510 = vaddq_s16(v278, v509);
    v512 = vaddq_s16(v511, v278);
    v514 = vaddq_s16(v513, v278);
    v516 = vaddq_s16(v515, v278);
    v279 = vandq_s8(v538, vceqq_s16(v168, v172));
    v517 = vaddq_s16(v517, v279);
    v518 = vaddq_s16(v518, v279);
    v519 = vaddq_s16(v519, v279);
    v520 = vaddq_s16(v520, v279);
    v280 = vandq_s8(v538, vceqq_s16(v168, v173));
    v521 = vaddq_s16(v521, v280);
    v522 = vaddq_s16(v522, v280);
    v523 = vaddq_s16(v523, v280);
    v524 = vaddq_s16(v524, v280);
    v281 = vandq_s8(v538, vceqq_s16(v168, v169));
    v525 = vaddq_s16(v525, v281);
    v526 = vaddq_s16(v526, v281);
    v527 = vaddq_s16(v527, v281);
    v528 = vaddq_s16(v528, v281);
    v281.i64[0] = 0x8000800080008;
    v281.i64[1] = 0x8000800080008;
    v282.i64[0] = 0x3000300030003;
    v282.i64[1] = 0x3000300030003;
    v283.i64[0] = 0x2000200020002;
    v283.i64[1] = 0x2000200020002;
    v284 = vceqq_s16(vandq_s8(v112, v282), v283);
    v283.i64[0] = 0x10001000100010;
    v283.i64[1] = 0x10001000100010;
    v285 = vandq_s8(v284, v283);
    v283.i64[0] = 0x7000700070007;
    v283.i64[1] = 0x7000700070007;
    v286 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v168, vceqzq_s16(vandq_s8(v112, v281))), vandq_s8(vaddq_s16(v112, v112), v281)), v285), v171, v283), vshlq_n_s16(vaddq_s16(vaddq_s16(v173, v172), v169), 3uLL));
    v287 = vpaddq_s16(v286, v286);
    if ((vpaddq_s16(v287, v287).i16[0] - 577) < 0xFFFFFFFFFFFFFD78)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 80;
    }

    else
    {
      v288 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v289 = 8 * (a1 & 7);
      if (v289)
      {
        v290 = *v288 & ~(-1 << v289);
      }

      else
      {
        v290 = 0;
      }

      *a2 = 0;
      v292 = v529.i64[0];
      v293 = vmovl_s16(vceqz_s16(*v168.i8));
      v294.i64[0] = v293.i32[0];
      v294.i64[1] = v293.i32[1];
      v295 = v294;
      v294.i64[0] = v293.i32[2];
      v294.i64[1] = v293.i32[3];
      v296 = v294;
      v297 = vand_s8(vadd_s16(*v168.i8, 0xF000F000F000FLL), 0xF000F000F000FLL);
      v297.i16[3] = vbic_s8(0x1000100010001, *&v168).i16[3];
      v298 = vshlq_u32(vmovl_u16(v297), xmmword_29D2F12F0);
      v294.i64[0] = v298.u32[0];
      v294.i64[1] = v298.u32[1];
      v299 = v294;
      v294.i64[0] = v298.u32[2];
      v294.i64[1] = v298.u32[3];
      v300 = vorrq_s8(vbicq_s8(v299, v295), vbicq_s8(v294, v296));
      v301 = *&vorr_s8(*v300.i8, *&vextq_s8(v300, v300, 8uLL)) | v112.i8[0] & 0x1F | (32 * (v112.i8[2] & 0x1F)) & 0x83FF | ((v112.i8[4] & 0x1F) << 10) | ((v112.i8[6] & 0xF) << 15);
      v302 = (v301 << v289) | v290;
      if (v289 >= 0x20)
      {
        *v288 = v302;
        v302 = v301 >> (-8 * (a1 & 7u));
      }

      v303 = v292 & 0x3FF | ((WORD1(v292) & 0x3FF) << 10) | ((WORD2(v292) & 0x3FF) << 20) | ((BYTE6(v292) & 3) << 30);
      v304 = (v289 + 32) & 0x38;
      v305 = v302 | (v303 << v304);
      if (v304 >= 0x20)
      {
        *(v288 + (((v289 + 32) >> 3) & 8)) = v305;
        v305 = v303 >> -v304;
      }

      v306 = vsubq_s16(v535, v531);
      v307 = vsubq_s16(v535, v532);
      v308 = vsubq_s16(v535, v533);
      v309 = vsubq_s16(v535, v534);
      *v306.i8 = vqmovn_u16(v306);
      *v307.i8 = vqmovn_u16(v307);
      *v308.i8 = vqmovn_u16(v308);
      *v309.i8 = vqmovn_u16(v309);
      v310 = vtrn1q_s8(v306, v307);
      v311 = vtrn2q_s8(v306, v307);
      v312 = vtrn1q_s8(v308, v309);
      v313 = vtrn2q_s8(v308, v309);
      v314 = vzip1q_s16(v311, v313);
      v315 = vtrn2q_s16(v311, v313);
      v311.i64[0] = vzip1q_s32(vzip1q_s16(v310, v312), v314).u64[0];
      v315.i64[0] = vzip1q_s32(vtrn2q_s16(v310, v312), v315).u64[0];
      v308.i64[0] = 0x202020202020202;
      v308.i64[1] = 0x202020202020202;
      v316 = vandq_s8(vmovl_s16(vtst_s16(*v530.i8, 0x4000400040004)), v308);
      v308.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v308.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v310.i64[0] = -1;
      v310.i64[1] = -1;
      v317 = vshlq_u8(v310, vorrq_s8(v316, v308));
      v318 = vmovl_u8(vand_s8(*v317.i8, *v311.i8));
      v319 = vmovl_u8(vand_s8(*&vextq_s8(v317, v317, 8uLL), *v315.i8));
      v320 = vmovl_u8(*v316.i8);
      v321 = vmovl_high_u8(v316);
      v322 = vpaddq_s16(vshlq_u16(v318, vtrn1q_s16(0, v320)), vshlq_u16(v319, vtrn1q_s16(0, v321)));
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
      v334 = (v332.i64[0] << v289) | v305;
      if (v333.i64[0] + v289 >= 0x40)
      {
        v288[1] = v334;
        v334 = v332.i64[0] >> (-8 * (a1 & 7u));
        if (!v289)
        {
          v334 = 0;
        }
      }

      v335 = v333.i64[0] + (v289 | 0x40);
      v336 = v334 | (v332.i64[1] << v335);
      if ((v335 & 0x3F) + v333.i64[1] >= 0x40)
      {
        *(v288 + ((v335 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v336;
        v336 = v332.i64[1] >> -(v335 & 0x3F);
        if ((v335 & 0x3F) == 0)
        {
          v336 = 0;
        }
      }

      v337 = v335 + v333.i64[1];
      v338.i64[0] = 0x8000800080008;
      v338.i64[1] = 0x8000800080008;
      v339.i64[0] = -1;
      v339.i64[1] = -1;
      v340 = vandq_s8(vextq_s8(vtstq_s16(v530, v338), 0, 8uLL), v535);
      v341.i64[0] = 0xF000F000F000FLL;
      v341.i64[1] = 0xF000F000F000FLL;
      v342 = vandq_s8(vshlq_u16(v339, vaddq_s16(v340, v341)), v538);
      v343 = vmovl_u16(*v340.i8);
      v344 = vpaddq_s32(vshlq_u32(vmovl_u16(*v342.i8), vtrn1q_s32(0, v343)), vmovl_high_u16(v342));
      v345 = vpaddq_s32(v343, vmovl_high_u16(v340));
      v346.i64[0] = v344.u32[0];
      v346.i64[1] = v344.u32[1];
      v347 = v346;
      v346.i64[0] = v344.u32[2];
      v346.i64[1] = v344.u32[3];
      v348 = v346;
      v346.i64[0] = v345.u32[0];
      v346.i64[1] = v345.u32[1];
      v349 = v346;
      v346.i64[0] = v345.u32[2];
      v346.i64[1] = v345.u32[3];
      v350 = vpaddq_s64(vshlq_u64(v347, vzip1q_s64(0, v349)), vshlq_u64(v348, vzip1q_s64(0, v346)));
      v351 = vpaddq_s64(v349, v346);
      v352 = (v350.i64[0] << v337) | v336;
      if (v351.i64[0] + (v337 & 0x3F) >= 0x40)
      {
        *(v288 + ((v337 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v352;
        v352 = v350.i64[0] >> -(v337 & 0x3F);
        if ((v337 & 0x3F) == 0)
        {
          v352 = 0;
        }
      }

      v353 = v351.i64[0] + v337;
      v354 = v352 | (v350.i64[1] << v353);
      if ((v353 & 0x3F) + v351.i64[1] >= 0x40)
      {
        *(v288 + ((v353 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v354;
        v354 = v350.i64[1] >> -(v353 & 0x3F);
        if ((v353 & 0x3F) == 0)
        {
          v354 = 0;
        }
      }

      v355 = v353 + v351.i64[1];
      v356 = vextq_s8(0, v531, 8uLL);
      v357.i64[0] = 0xF000F000F000FLL;
      v357.i64[1] = 0xF000F000F000FLL;
      v358.i64[0] = -1;
      v358.i64[1] = -1;
      v359 = vandq_s8(vshlq_u16(v358, vaddq_s16(v356, v357)), v510);
      v360 = vmovl_u16(*v356.i8);
      v361 = vmovl_high_u16(v356);
      v362 = vpaddq_s32(vmovl_u16(*v359.i8), vshlq_u32(vmovl_high_u16(v359), vtrn1q_s32(0, v361)));
      v363 = vpaddq_s32(v360, v361);
      v364.i64[0] = v362.u32[0];
      v364.i64[1] = v362.u32[1];
      v365 = v364;
      v364.i64[0] = v362.u32[2];
      v364.i64[1] = v362.u32[3];
      v366 = v364;
      v364.i64[0] = v363.u32[0];
      v364.i64[1] = v363.u32[1];
      v367 = v364;
      v364.i64[0] = v363.u32[2];
      v364.i64[1] = v363.u32[3];
      v368 = vpaddq_s64(vshlq_u64(v365, vzip1q_s64(0, v367)), vshlq_u64(v366, vzip1q_s64(0, v364)));
      v369 = vpaddq_s64(v367, v364);
      v370 = (v368.i64[0] << v355) | v354;
      if (v369.i64[0] + (v355 & 0x3F) >= 0x40)
      {
        *(v288 + ((v355 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v370;
        v370 = v368.i64[0] >> -(v355 & 0x3F);
        if ((v355 & 0x3F) == 0)
        {
          v370 = 0;
        }
      }

      v371 = v369.i64[0] + v355;
      v372 = v370 | (v368.i64[1] << v371);
      if ((v371 & 0x3F) + v369.i64[1] >= 0x40)
      {
        *(v288 + ((v371 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v372;
        v372 = v368.i64[1] >> -(v371 & 0x3F);
        if ((v371 & 0x3F) == 0)
        {
          v372 = 0;
        }
      }

      v373 = v371 + v369.i64[1];
      v374.i64[0] = 0xF000F000F000FLL;
      v374.i64[1] = 0xF000F000F000FLL;
      v375.i64[0] = -1;
      v375.i64[1] = -1;
      v376 = vandq_s8(vshlq_u16(v375, vaddq_s16(v531, v374)), v512);
      v377 = vmovl_u16(*v531.i8);
      v378 = vmovl_high_u16(v531);
      v379 = vpaddq_s32(vshlq_u32(vmovl_u16(*v376.i8), vtrn1q_s32(0, v377)), vshlq_u32(vmovl_high_u16(v376), vtrn1q_s32(0, v378)));
      v380 = vpaddq_s32(v377, v378);
      v381.i64[0] = v379.u32[0];
      v381.i64[1] = v379.u32[1];
      v382 = v381;
      v381.i64[0] = v379.u32[2];
      v381.i64[1] = v379.u32[3];
      v383 = v381;
      v381.i64[0] = v380.u32[0];
      v381.i64[1] = v380.u32[1];
      v384 = v381;
      v381.i64[0] = v380.u32[2];
      v381.i64[1] = v380.u32[3];
      v385 = vpaddq_s64(vshlq_u64(v382, vzip1q_s64(0, v384)), vshlq_u64(v383, vzip1q_s64(0, v381)));
      v386 = vpaddq_s64(v384, v381);
      v387 = (v385.i64[0] << v373) | v372;
      if (v386.i64[0] + (v373 & 0x3F) >= 0x40)
      {
        *(v288 + ((v373 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v387;
        v387 = v385.i64[0] >> -(v373 & 0x3F);
        if ((v373 & 0x3F) == 0)
        {
          v387 = 0;
        }
      }

      v388 = v386.i64[0] + v373;
      v389 = v387 | (v385.i64[1] << v388);
      if ((v388 & 0x3F) + v386.i64[1] >= 0x40)
      {
        *(v288 + ((v388 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v389;
        v389 = v385.i64[1] >> -(v388 & 0x3F);
        if ((v388 & 0x3F) == 0)
        {
          v389 = 0;
        }
      }

      v390 = v388 + v386.i64[1];
      v391.i64[0] = 0xF000F000F000FLL;
      v391.i64[1] = 0xF000F000F000FLL;
      v392.i64[0] = -1;
      v392.i64[1] = -1;
      v393 = vandq_s8(vshlq_u16(v392, vaddq_s16(v531, v391)), v514);
      v394 = vmovl_u16(*v531.i8);
      v395 = vmovl_high_u16(v531);
      v396 = vpaddq_s32(vshlq_u32(vmovl_u16(*v393.i8), vtrn1q_s32(0, v394)), vshlq_u32(vmovl_high_u16(v393), vtrn1q_s32(0, v395)));
      v397 = vpaddq_s32(v394, v395);
      v398.i64[0] = v396.u32[0];
      v398.i64[1] = v396.u32[1];
      v399 = v398;
      v398.i64[0] = v396.u32[2];
      v398.i64[1] = v396.u32[3];
      v400 = v398;
      v398.i64[0] = v397.u32[0];
      v398.i64[1] = v397.u32[1];
      v401 = v398;
      v398.i64[0] = v397.u32[2];
      v398.i64[1] = v397.u32[3];
      v402 = vpaddq_s64(vshlq_u64(v399, vzip1q_s64(0, v401)), vshlq_u64(v400, vzip1q_s64(0, v398)));
      v403 = vpaddq_s64(v401, v398);
      v404 = (v402.i64[0] << v390) | v389;
      if (v403.i64[0] + (v390 & 0x3F) >= 0x40)
      {
        *(v288 + ((v390 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v404;
        v404 = v402.i64[0] >> -(v390 & 0x3F);
        if ((v390 & 0x3F) == 0)
        {
          v404 = 0;
        }
      }

      v405 = v403.i64[0] + v390;
      v406 = v404 | (v402.i64[1] << v405);
      if ((v405 & 0x3F) + v403.i64[1] >= 0x40)
      {
        *(v288 + ((v405 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v406;
        v406 = v402.i64[1] >> -(v405 & 0x3F);
        if ((v405 & 0x3F) == 0)
        {
          v406 = 0;
        }
      }

      v407 = v405 + v403.i64[1];
      v408.i64[0] = 0xF000F000F000FLL;
      v408.i64[1] = 0xF000F000F000FLL;
      v409.i64[0] = -1;
      v409.i64[1] = -1;
      v410 = vandq_s8(vshlq_u16(v409, vaddq_s16(v531, v408)), v516);
      v411 = vmovl_u16(*v531.i8);
      v412 = vmovl_high_u16(v531);
      v413 = vpaddq_s32(vshlq_u32(vmovl_u16(*v410.i8), vtrn1q_s32(0, v411)), vshlq_u32(vmovl_high_u16(v410), vtrn1q_s32(0, v412)));
      v414 = vpaddq_s32(v411, v412);
      v415.i64[0] = v413.u32[0];
      v415.i64[1] = v413.u32[1];
      v416 = v415;
      v415.i64[0] = v413.u32[2];
      v415.i64[1] = v413.u32[3];
      v417 = v415;
      v415.i64[0] = v414.u32[0];
      v415.i64[1] = v414.u32[1];
      v418 = v415;
      v415.i64[0] = v414.u32[2];
      v415.i64[1] = v414.u32[3];
      v419 = vpaddq_s64(vshlq_u64(v416, vzip1q_s64(0, v418)), vshlq_u64(v417, vzip1q_s64(0, v415)));
      v420 = vpaddq_s64(v418, v415);
      v421 = (v419.i64[0] << v407) | v406;
      if (v420.i64[0] + (v407 & 0x3F) >= 0x40)
      {
        *(v288 + ((v407 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v421;
        v421 = v419.i64[0] >> -(v407 & 0x3F);
        if ((v407 & 0x3F) == 0)
        {
          v421 = 0;
        }
      }

      v422 = v420.i64[1];
      v423 = v420.i64[0] + v407;
      v424 = (v420.i64[0] + v407) & 0x3F;
      v425 = v421 | (v419.i64[1] << v423);
      if ((v424 + v420.i64[1]) >= 0x40)
      {
        *(v288 + ((v423 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v425;
        v425 = v419.i64[1] >> -v424;
        if (!v424)
        {
          v425 = 0;
        }
      }

      v426 = 0;
      v427.i64[0] = 0xF000F000F000FLL;
      v427.i64[1] = 0xF000F000F000FLL;
      v428.i64[0] = -1;
      v428.i64[1] = -1;
      v429 = v423 + v422;
      do
      {
        v430 = vandq_s8(vshlq_u16(v428, vaddq_s16(v532, v427)), *(&v517 + v426));
        v431 = vmovl_u16(*v532.i8);
        v432 = vmovl_high_u16(v532);
        v433 = vpaddq_s32(vshlq_u32(vmovl_u16(*v430.i8), vtrn1q_s32(0, v431)), vshlq_u32(vmovl_high_u16(v430), vtrn1q_s32(0, v432)));
        v434 = vpaddq_s32(v431, v432);
        v435.i64[0] = v433.u32[0];
        v435.i64[1] = v433.u32[1];
        v436 = v435;
        v435.i64[0] = v433.u32[2];
        v435.i64[1] = v433.u32[3];
        v437 = v435;
        v435.i64[0] = v434.u32[0];
        v435.i64[1] = v434.u32[1];
        v438 = v435;
        v435.i64[0] = v434.u32[2];
        v435.i64[1] = v434.u32[3];
        v439 = vpaddq_s64(vshlq_u64(v436, vzip1q_s64(0, v438)), vshlq_u64(v437, vzip1q_s64(0, v435)));
        v440 = vpaddq_s64(v438, v435);
        v441 = (v439.i64[0] << v429) | v425;
        if (v440.i64[0] + (v429 & 0x3F) >= 0x40)
        {
          *(v288 + ((v429 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v441;
          v441 = v439.i64[0] >> -(v429 & 0x3F);
          if ((v429 & 0x3F) == 0)
          {
            v441 = 0;
          }
        }

        v442 = v440.i64[0] + v429;
        v425 = v441 | (v439.i64[1] << v442);
        if ((v442 & 0x3F) + v440.i64[1] >= 0x40)
        {
          *(v288 + ((v442 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v425;
          v425 = v439.i64[1] >> -(v442 & 0x3F);
          if ((v442 & 0x3F) == 0)
          {
            v425 = 0;
          }
        }

        v429 = v442 + v440.i64[1];
        v426 += 16;
      }

      while (v426 != 64);
      v443 = 0;
      v444.i64[0] = 0xF000F000F000FLL;
      v444.i64[1] = 0xF000F000F000FLL;
      v445.i64[0] = -1;
      v445.i64[1] = -1;
      do
      {
        v446 = vandq_s8(vshlq_u16(v445, vaddq_s16(v533, v444)), *(&v521 + v443));
        v447 = vmovl_u16(*v533.i8);
        v448 = vmovl_high_u16(v533);
        v449 = vpaddq_s32(vshlq_u32(vmovl_u16(*v446.i8), vtrn1q_s32(0, v447)), vshlq_u32(vmovl_high_u16(v446), vtrn1q_s32(0, v448)));
        v450 = vpaddq_s32(v447, v448);
        v451.i64[0] = v449.u32[0];
        v451.i64[1] = v449.u32[1];
        v452 = v451;
        v451.i64[0] = v449.u32[2];
        v451.i64[1] = v449.u32[3];
        v453 = v451;
        v451.i64[0] = v450.u32[0];
        v451.i64[1] = v450.u32[1];
        v454 = v451;
        v451.i64[0] = v450.u32[2];
        v451.i64[1] = v450.u32[3];
        v455 = vpaddq_s64(vshlq_u64(v452, vzip1q_s64(0, v454)), vshlq_u64(v453, vzip1q_s64(0, v451)));
        v456 = vpaddq_s64(v454, v451);
        v457 = (v455.i64[0] << v429) | v425;
        if (v456.i64[0] + (v429 & 0x3F) >= 0x40)
        {
          *(v288 + ((v429 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v457;
          v457 = v455.i64[0] >> -(v429 & 0x3F);
          if ((v429 & 0x3F) == 0)
          {
            v457 = 0;
          }
        }

        v458 = v456.i64[0] + v429;
        v425 = v457 | (v455.i64[1] << v458);
        if ((v458 & 0x3F) + v456.i64[1] >= 0x40)
        {
          *(v288 + ((v458 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v425;
          v425 = v455.i64[1] >> -(v458 & 0x3F);
          if ((v458 & 0x3F) == 0)
          {
            v425 = 0;
          }
        }

        v429 = v458 + v456.i64[1];
        v443 += 16;
      }

      while (v443 != 64);
      v459 = 0;
      v460.i64[0] = 0xF000F000F000FLL;
      v460.i64[1] = 0xF000F000F000FLL;
      v461.i64[0] = -1;
      v461.i64[1] = -1;
      do
      {
        v462 = vandq_s8(vshlq_u16(v461, vaddq_s16(v534, v460)), *(&v525 + v459));
        v463 = vmovl_u16(*v534.i8);
        v464 = vmovl_high_u16(v534);
        v465 = vpaddq_s32(vshlq_u32(vmovl_u16(*v462.i8), vtrn1q_s32(0, v463)), vshlq_u32(vmovl_high_u16(v462), vtrn1q_s32(0, v464)));
        v466 = vpaddq_s32(v463, v464);
        v467.i64[0] = v465.u32[0];
        v467.i64[1] = v465.u32[1];
        v468 = v467;
        v467.i64[0] = v465.u32[2];
        v467.i64[1] = v465.u32[3];
        v469 = v467;
        v467.i64[0] = v466.u32[0];
        v467.i64[1] = v466.u32[1];
        v470 = v467;
        v467.i64[0] = v466.u32[2];
        v467.i64[1] = v466.u32[3];
        v471 = vpaddq_s64(vshlq_u64(v468, vzip1q_s64(0, v470)), vshlq_u64(v469, vzip1q_s64(0, v467)));
        v472 = vpaddq_s64(v470, v467);
        v473 = (v471.i64[0] << v429) | v425;
        if (v472.i64[0] + (v429 & 0x3F) >= 0x40)
        {
          *(v288 + ((v429 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v473;
          v473 = v471.i64[0] >> -(v429 & 0x3F);
          if ((v429 & 0x3F) == 0)
          {
            v473 = 0;
          }
        }

        v474 = v472.i64[0] + v429;
        v425 = v473 | (v471.i64[1] << v474);
        if ((v474 & 0x3F) + v472.i64[1] >= 0x40)
        {
          *(v288 + ((v474 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v425;
          v425 = v471.i64[1] >> -(v474 & 0x3F);
          if ((v474 & 0x3F) == 0)
          {
            v425 = 0;
          }
        }

        v429 = v474 + v472.i64[1];
        v459 += 16;
      }

      while (v459 != 64);
      if ((v429 & 0x3F) != 0)
      {
        *(v288 + ((v429 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v425;
      }

      result = (v429 - v289 + 7) >> 3;
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblock(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
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

  v47 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1, &v57, a7, v42, v44);
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

  v49 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 20, &v57, a7, v42, v48);
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
  v51 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 40, &v57, a7, v50, v44);
  v57 = v83;
  v58 = v87;
  v59 = v84;
  v60 = v88;
  v61 = v91;
  v62 = v95;
  v63 = v92;
  v64 = v96;
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 60, &v57, a7, v50, v48);
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
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

  v289 = v9;
  v10 = a4 < 2 || a5 == 0;
  v288 = v10;
  v11 = a4 < 2 || a5 < 2;
  v287 = v11;
  v12 = a4 < 3 || a5 == 0;
  v286 = v12;
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
    if (v288)
    {
      v32 = v21;
      if (v289)
      {
        goto LABEL_75;
      }

LABEL_69:
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
      goto LABEL_75;
    }

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
    if (!v289)
    {
      goto LABEL_69;
    }

LABEL_75:
    if (!v287)
    {
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
    }

    if (v286)
    {
      if (v14)
      {
        goto LABEL_83;
      }
    }

    else
    {
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
LABEL_83:
        if (v13)
        {
          goto LABEL_84;
        }

        goto LABEL_96;
      }
    }

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
LABEL_84:
      if (v15)
      {
        goto LABEL_107;
      }

LABEL_101:
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
      goto LABEL_107;
    }

LABEL_96:
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
      goto LABEL_101;
    }

LABEL_107:
    v40 = __clz(v21 - v32);
    v41 = 32 - v40;
    if (v18 <= 11)
    {
      if (v18 != 2)
      {
        if (v18 == 8)
        {
          v43 = 1;
          goto LABEL_130;
        }

        if (v18 == 10)
        {
          if (v40 - 29 < 3)
          {
            v41 = 3;
          }

          goto LABEL_129;
        }

        goto LABEL_122;
      }

      v42 = v40 == 31;
      goto LABEL_127;
    }

    if (v18 != 12)
    {
      if (v18 != 16)
      {
        if (v18 == 32)
        {
          v41 -= v41 >> 1;
LABEL_129:
          v43 = -1;
          goto LABEL_130;
        }

LABEL_122:
        v43 = 0;
        goto LABEL_130;
      }

      v42 = v40 == 31 && v21 == 0xFFFF;
LABEL_127:
      if (v42)
      {
        v41 = 2;
      }

      goto LABEL_129;
    }

    if ((v40 & 0x3C) == 0x1C)
    {
      v41 = 4;
    }

    v43 = -2;
LABEL_130:
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
      v47 = kDQuadParamTable[160 * v17 + 4 + 10 * v45] - v46 + *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v17 + 2);
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
      v143 = v50 != 0 && v49;
      v51 = v32 & ~(-1 << v50);
      if (!v143)
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
  v55 = 0;
  if (a4)
  {
    v56 = a5 == 0;
  }

  else
  {
    v56 = 1;
  }

  v57 = v56;
  while (2)
  {
    v59 = v310[v54];
    v60 = v313[v54];
    v61 = &kDQuadParamTable[160 * v59 + 10 * v60];
    v62 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v59 + 2);
    v63 = v61[5];
    v64 = v61[4] + v62;
    *(&v304 + v54 * 4) = v64;
    v65 = v63 + v62;
    *(&v300 + v54 * 4) = v65;
    v66 = *(v61 + 1);
    v67 = *(v308 + v54 * 4) - *(v309 + v54 * 4);
    if (v67 < 0)
    {
      v69 = &kDQuadParamTable[160 * v59 + 10 * v60];
      if (v69[7] < *(v309 + v54 * 4) - *(v308 + v54 * 4))
      {
        *(&v300 + v54 * 4) = --v65;
        if (!v69[8])
        {
          v68 = -1;
LABEL_170:
          *(&v304 + v54 * 4) = v68 + v64;
        }
      }
    }

    else if (v67)
    {
      v65 += v67;
      *(&v300 + v54 * 4) = v65;
      v68 = v67;
      goto LABEL_170;
    }

    if (v59 == 5)
    {
      v70 = (v67 < 2) | v55;
      if (v60 == 1)
      {
        v55 = v70;
      }
    }

    if (a3 == 4)
    {
      v71 = 1 << (*(&v315 + v54 * 4) - 1);
      if (v59 == 3)
      {
        v72 = -31745;
      }

      else
      {
        v72 = -1;
      }

      if (v59 == 4)
      {
        v73 = -2139095041;
      }

      else
      {
        v73 = v72;
      }

      if (v57)
      {
        if (v288)
        {
          goto LABEL_185;
        }

LABEL_199:
        v77 = v312[v54 + 4];
        v79 = (v77 | v73) == 0xFFFFFFFF || v77 == v71;
        v55 |= v79;
        if (!v289)
        {
          goto LABEL_206;
        }

LABEL_186:
        if (v287)
        {
          goto LABEL_187;
        }

LABEL_213:
        v83 = v312[v54 + 12];
        v85 = (v83 | v73) == 0xFFFFFFFF || v83 == v71;
        v55 |= v85;
        if (!v286)
        {
          goto LABEL_220;
        }

LABEL_188:
        if (v14)
        {
          goto LABEL_189;
        }

LABEL_227:
        v89 = v312[v54 + 20];
        v91 = (v89 | v73) == 0xFFFFFFFF || v89 == v71;
        v55 |= v91;
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
        v74 = v312[v54];
        v76 = (v74 | v73) == 0xFFFFFFFF || v74 == v71;
        v55 |= v76;
        if (!v288)
        {
          goto LABEL_199;
        }

LABEL_185:
        if (v289)
        {
          goto LABEL_186;
        }

LABEL_206:
        v80 = v312[v54 + 8];
        v82 = (v80 | v73) == 0xFFFFFFFF || v80 == v71;
        v55 |= v82;
        if (!v287)
        {
          goto LABEL_213;
        }

LABEL_187:
        if (v286)
        {
          goto LABEL_188;
        }

LABEL_220:
        v86 = v312[v54 + 16];
        v88 = (v86 | v73) == 0xFFFFFFFF || v86 == v71;
        v55 |= v88;
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
        v92 = v312[v54 + 24];
        v94 = (v92 | v73) == 0xFFFFFFFF || v92 == v71;
        v55 |= v94;
        if (!v15)
        {
LABEL_241:
          v95 = v312[v54 + 28];
          v97 = (v95 | v73) == 0xFFFFFFFF || v95 == v71;
          v55 |= v97;
        }
      }
    }

    if (v66 >> v65 > 1 << *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)13,(AGXTextureFootprint)3>::lossyFallBackInfo + v54 * 4 + 32))
    {
      v58 = 1;
    }

    else
    {
      v58 = v57;
    }

    v55 |= v58;
    if (++v54 != 4)
    {
      continue;
    }

    break;
  }

  v98 = 0;
  v298 = 0;
  v299 = 0;
  memset(v297, 0, sizeof(v297));
  v99 = v312;
  v100 = v311;
  do
  {
    v101 = 0;
    v102 = 0;
    v103 = *(&v315 + v98);
    if (v103 >= *(&v304 + v98))
    {
      v104 = *(&v304 + v98);
    }

    else
    {
      v104 = *(&v315 + v98);
    }

    *(&v304 + v98) = v104;
    v105 = -1 << v103;
    v106 = &kDQuadParamTable[160 * v310[v98] + 10 * v313[v98]];
    if (v106[5])
    {
      v107 = v103;
    }

    else
    {
      v107 = 0;
    }

    if (v107 >= *(&v300 + v98))
    {
      v107 = *(&v300 + v98);
    }

    *(&v300 + v98) = v107;
    v108 = *(v106 + 1);
    v109 = v314[v98 + 8] & (-1 << (v103 - v104));
    *(&v298 + v98) = v109;
    v110 = v108 >> v107;
    v111 = &v312[v98];
    v112 = *v111 - v109;
    v113 = &v311[2 * v98];
    if (v57)
    {
      v112 = 0;
    }

    v114 = v111[4] - v109;
    if (v288)
    {
      v114 = 0;
    }

    *v113 = v112;
    v113[1] = v114;
    v115 = v111[8] - v109;
    if (v289)
    {
      v115 = 0;
    }

    v116 = v111[12] - v109;
    if (v287)
    {
      v116 = 0;
    }

    v113[2] = v115;
    v113[3] = v116;
    v117 = v111[16] - v109;
    if (v286)
    {
      v117 = 0;
    }

    v118 = v111[20] - v109;
    if (v14)
    {
      v118 = 0;
    }

    v113[4] = v117;
    v113[5] = v118;
    v119 = v111[24] - v109;
    if (v13)
    {
      v119 = 0;
    }

    v120 = v111[28] - v109;
    if (v15)
    {
      v120 = 0;
    }

    v113[6] = v119;
    v113[7] = v120;
    if (v110 <= 1)
    {
      v121 = 1;
    }

    else
    {
      v121 = v110;
    }

    v122 = 4 * v314[v98];
    v123 = v297 + 28 * v98;
    v124 = &byte_29D2F3081;
    do
    {
      if (v122 != v101)
      {
        if (v107)
        {
          v125 = *(v100 + v101) / v121;
        }

        else
        {
          LODWORD(v125) = 0;
        }

        *&v123[4 * v102] = v125;
        if (v110 >= 2)
        {
          v126 = *(v100 + v101);
          if (v126)
          {
            if (v126 / v121 * v121 == v126 && ((v126 / v121) & 1) != 0)
            {
              if (v109 || v125 != 1)
              {
                if ((a3 | 2) != 3 || (v128 = v99[v101], v129 = *(&v309[2] + v98), v128 != v129) && ((a3 | 2) != 3 || v121 + v129 != v128))
                {
                  LODWORD(v125) = v125 - 1;
                  *&v123[4 * v102] = v125;
                }
              }

              else
              {
                LODWORD(v125) = 1;
              }
            }
          }
        }

        if (v125 >> v107 || (v99[v101] ^ v105) == 0xFFFFFFFF)
        {
          *&v123[4 * v102] = ~(-1 << v107);
        }

        if (*v124 >= a5 || *(v124 - 1) >= a4)
        {
          *&v123[4 * v102] = 0;
        }

        ++v102;
      }

      v101 += 4;
      v124 += 2;
    }

    while (v101 != 32);
    ++v98;
    v100 += 2;
    ++v99;
  }

  while (v98 != 4);
  v130 = a1 & 0xFFFFFFFFFFFFFFF8;
  v131 = 8 * (a1 & 7);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v55)
  {
    v132 = 0;
    v133 = 0;
    v134 = v315;
    v135 = v316;
    v136 = v315 - 4;
    v137 = v316 - 4;
    v138 = v317;
    v139 = v318;
    v140 = v317 - 4;
    v141 = 8 * (a1 & 7);
    while (1)
    {
      v142 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v132;
      v143 = v142[1] < a5 && a4 > *v142;
      v144 = !v143;
      if (v143)
      {
        v145 = v312[4 * v132] >> 4;
        if (v136 > 0x100)
        {
          goto LABEL_325;
        }
      }

      else
      {
        v145 = 0;
        if (v136 > 0x100)
        {
          goto LABEL_325;
        }
      }

      if (v134 != 4 && (v141 - v131 + (v133 << 6) + v136) <= 0xA0)
      {
        v146 = 0;
        v147 = v134 - 4;
        do
        {
          v148 = 64 - v141;
          if (64 - v141 >= v147)
          {
            v148 = v147;
          }

          *(v130 + 8 * v133) |= ((v145 >> v146) & ~(-1 << v148)) << v141;
          v146 += v148;
          v149 = v148 + v141;
          v133 += v149 >> 6;
          v141 = v149 & 0x3F;
          v147 -= v148;
        }

        while (v147);
      }

LABEL_325:
      v150 = &v312[4 * v132];
      if (v144)
      {
        v151 = 0;
        if (v137 > 0x100)
        {
          goto LABEL_335;
        }
      }

      else
      {
        v151 = v150[1] >> 4;
        if (v137 > 0x100)
        {
          goto LABEL_335;
        }
      }

      if (v135 != 4 && (v141 - v131 + (v133 << 6) + v137) <= 0xA0)
      {
        v152 = 0;
        v153 = v135 - 4;
        do
        {
          v154 = 64 - v141;
          if (64 - v141 >= v153)
          {
            v154 = v153;
          }

          *(v130 + 8 * v133) |= ((v151 >> v152) & ~(-1 << v154)) << v141;
          v152 += v154;
          v155 = v154 + v141;
          v133 += v155 >> 6;
          v141 = v155 & 0x3F;
          v153 -= v154;
        }

        while (v153);
      }

LABEL_335:
      if (v144)
      {
        v156 = 0;
        if (v140 > 0x100)
        {
          goto LABEL_345;
        }
      }

      else
      {
        v156 = v150[2] >> 4;
        if (v140 > 0x100)
        {
          goto LABEL_345;
        }
      }

      if (v138 != 4 && (v141 - v131 + (v133 << 6) + v140) <= 0xA0)
      {
        v157 = 0;
        v158 = v138 - 4;
        do
        {
          v159 = 64 - v141;
          if (64 - v141 >= v158)
          {
            v159 = v158;
          }

          *(v130 + 8 * v133) |= ((v156 >> v157) & ~(-1 << v159)) << v141;
          v157 += v159;
          v160 = v159 + v141;
          v133 += v160 >> 6;
          v141 = v160 & 0x3F;
          v158 -= v159;
        }

        while (v158);
      }

LABEL_345:
      if (v144)
      {
        v161 = 0;
        if (v139 <= 0x100)
        {
          goto LABEL_349;
        }
      }

      else
      {
        v161 = v150[3];
        if (v139 <= 0x100)
        {
LABEL_349:
          if (v139 && v141 - v131 + (v133 << 6) + v139 <= 0xA0)
          {
            v162 = 0;
            v163 = v139;
            do
            {
              v164 = 64 - v141;
              if (64 - v141 >= v163)
              {
                v164 = v163;
              }

              *(v130 + 8 * v133) |= ((v161 >> v162) & ~(-1 << v164)) << v141;
              v162 += v164;
              v165 = v164 + v141;
              v133 += v165 >> 6;
              v141 = v165 & 0x3F;
              v163 -= v164;
            }

            while (v163);
          }
        }
      }

      if (++v132 == 8)
      {
        return v55 & 1;
      }
    }
  }

  v166 = 0;
  v167 = 0;
  v168 = 0;
  v296[0] = 0;
  v296[1] = 0;
  v295[0] = 0;
  v295[1] = 0;
  v293 = 0;
  v294 = 0;
  v291 = 0;
  v292 = 0;
  v169 = 8 * (a1 & 7);
  v290 = 0;
  while (2)
  {
    v170 = v313[v166];
    v171 = v314[v166 + 8];
    v172 = AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)13,(AGXTextureFootprint)3>::compBits[v166];
    *(&v291 + v166) = 0;
    *(&v293 + v166) = 0;
    if (v172 > 11)
    {
      if (v172 == 12)
      {
        *(v296 + v166) = 3;
        v174 = v170 - 3;
        if (v170 > 3)
        {
          goto LABEL_377;
        }

        *(v295 + v166) = 0;
        *(&v293 + v166) = 2;
        v175 = 1;
        v176 = 3;
        *(&v291 + v166) = v170;
LABEL_376:
        v170 = 0;
        goto LABEL_381;
      }

      if (v172 != 16 && v172 != 32)
      {
        goto LABEL_378;
      }

      v175 = 0;
      v176 = 4;
      goto LABEL_373;
    }

    if (v172 == 2)
    {
      v175 = 0;
      v176 = 1;
LABEL_373:
      *(v296 + v166) = v176;
      *(v295 + v166) = v170;
LABEL_381:
      *(&v290 + v166) = v175;
      goto LABEL_382;
    }

    if (v172 != 8 && v172 != 10)
    {
LABEL_378:
      v170 = *(v295 + v166);
      v176 = *(v296 + v166);
      *(&v290 + v166) = 0;
      if (v176 > 0x100)
      {
        goto LABEL_357;
      }

      goto LABEL_382;
    }

    *(v296 + v166) = 3;
    if (!(v171 | v170))
    {
      v170 = 0;
      *(v295 + v166) = 0;
      *(&v293 + v166) = 2;
      v175 = 1;
      v176 = 3;
      goto LABEL_381;
    }

    v174 = v170 - 2;
    if (v170 <= 2)
    {
      *(v295 + v166) = 0;
      *(&v293 + v166) = 2;
      *(&v291 + v166) = v170 + 1;
      v175 = 1;
      v176 = 3;
      goto LABEL_376;
    }

LABEL_377:
    *(v295 + v166) = v174;
    v176 = 3;
    v170 = v174;
    *(&v290 + v166) = 0;
LABEL_382:
    if (v176)
    {
      v177 = v176;
      if (v169 - v131 + (v168 << 6) + v176 <= 0xA0)
      {
        v178 = 0;
        do
        {
          v179 = 64 - v169;
          if (64 - v169 >= v177)
          {
            v179 = v177;
          }

          *(v130 + 8 * v168) |= ((v170 >> v178) & ~(-1 << v179)) << v169;
          v178 += v179;
          v180 = v179 + v169;
          v168 += v180 >> 6;
          v169 = v180 & 0x3F;
          v177 -= v179;
        }

        while (v177);
      }
    }

LABEL_357:
    v167 += v176;
    if (++v166 != 4)
    {
      continue;
    }

    break;
  }

  if (v290 == 1)
  {
    v181 = v293;
    if (v293 <= 0x100 && v293 && v169 - v131 + (v168 << 6) + v293 <= 0xA0)
    {
      v182 = 0;
      v183 = v291;
      v184 = v293;
      do
      {
        v185 = 64 - v169;
        if (64 - v169 >= v184)
        {
          v185 = v184;
        }

        *(v130 + 8 * v168) |= ((v183 >> v182) & ~(-1 << v185)) << v169;
        v182 += v185;
        v186 = v185 + v169;
        v168 += v186 >> 6;
        v169 = v186 & 0x3F;
        v184 -= v185;
      }

      while (v184);
    }

    v167 += v181;
  }

  if (BYTE1(v290) == 1)
  {
    v187 = HIDWORD(v293);
    if (HIDWORD(v293) <= 0x100 && HIDWORD(v293) && v169 - v131 + (v168 << 6) + HIDWORD(v293) <= 0xA0)
    {
      v188 = 0;
      v189 = HIDWORD(v291);
      v190 = HIDWORD(v293);
      do
      {
        v191 = 64 - v169;
        if (64 - v169 >= v190)
        {
          v191 = v190;
        }

        *(v130 + 8 * v168) |= ((v189 >> v188) & ~(-1 << v191)) << v169;
        v188 += v191;
        v192 = v191 + v169;
        v168 += v192 >> 6;
        v169 = v192 & 0x3F;
        v190 -= v191;
      }

      while (v190);
    }

    v167 += v187;
  }

  if (BYTE2(v290) == 1)
  {
    v193 = v294;
    if (v294 <= 0x100 && v294 && v169 - v131 + (v168 << 6) + v294 <= 0xA0)
    {
      v194 = 0;
      v195 = v292;
      v196 = v294;
      do
      {
        v197 = 64 - v169;
        if (64 - v169 >= v196)
        {
          v197 = v196;
        }

        *(v130 + 8 * v168) |= ((v195 >> v194) & ~(-1 << v197)) << v169;
        v194 += v197;
        v198 = v197 + v169;
        v168 += v198 >> 6;
        v169 = v198 & 0x3F;
        v196 -= v197;
      }

      while (v196);
    }

    v167 += v193;
  }

  if (HIBYTE(v290) == 1)
  {
    v199 = HIDWORD(v294);
    if (HIDWORD(v294) <= 0x100 && HIDWORD(v294) && v169 - v131 + (v168 << 6) + HIDWORD(v294) <= 0xA0)
    {
      v200 = 0;
      v201 = HIDWORD(v292);
      v202 = HIDWORD(v294);
      do
      {
        v203 = 64 - v169;
        if (64 - v169 >= v202)
        {
          v203 = v202;
        }

        *(v130 + 8 * v168) |= ((v201 >> v200) & ~(-1 << v203)) << v169;
        v200 += v203;
        v204 = v203 + v169;
        v168 += v204 >> 6;
        v169 = v204 & 0x3F;
        v202 -= v203;
      }

      while (v202);
    }

    v167 += v199;
  }

  if (v313[0] || v315 == 2 || v315 >= 0x10)
  {
    v205 = v304;
    if (v304 <= 0x100 && v304 && v169 - v131 + (v168 << 6) + v304 <= 0xA0)
    {
      v206 = 0;
      v207 = v298 >> (v315 - v304);
      v208 = v304;
      do
      {
        v209 = 64 - v169;
        if (64 - v169 >= v208)
        {
          v209 = v208;
        }

        *(v130 + 8 * v168) |= ((v207 >> v206) & ~(-1 << v209)) << v169;
        v206 += v209;
        v210 = v209 + v169;
        v168 += v210 >> 6;
        v169 = v210 & 0x3F;
        v208 -= v209;
      }

      while (v208);
    }

    v167 += v205;
  }

  if (v313[1] || v316 == 2 || v316 >= 0x10)
  {
    v211 = v305;
    if (v305 <= 0x100 && v305 && v169 - v131 + (v168 << 6) + v305 <= 0xA0)
    {
      v212 = 0;
      v213 = (HIDWORD(v298) >> (v316 - v305));
      v214 = v305;
      do
      {
        v215 = 64 - v169;
        if (64 - v169 >= v214)
        {
          v215 = v214;
        }

        *(v130 + 8 * v168) |= ((v213 >> v212) & ~(-1 << v215)) << v169;
        v212 += v215;
        v216 = v215 + v169;
        v168 += v216 >> 6;
        v169 = v216 & 0x3F;
        v214 -= v215;
      }

      while (v214);
    }

    v167 += v211;
  }

  if (v313[2] || v317 == 2 || v317 >= 0x10)
  {
    v217 = v306;
    if (v306 <= 0x100 && v306 && v169 - v131 + (v168 << 6) + v306 <= 0xA0)
    {
      v218 = 0;
      v219 = v299 >> (v317 - v306);
      v220 = v306;
      do
      {
        v221 = 64 - v169;
        if (64 - v169 >= v220)
        {
          v221 = v220;
        }

        *(v130 + 8 * v168) |= ((v219 >> v218) & ~(-1 << v221)) << v169;
        v218 += v221;
        v222 = v221 + v169;
        v168 += v222 >> 6;
        v169 = v222 & 0x3F;
        v220 -= v221;
      }

      while (v220);
    }

    v167 += v217;
  }

  if (v313[3] || v318 == 2 || v318 >= 0x10)
  {
    v223 = v307;
    if (v307 <= 0x100 && v307 && v169 - v131 + (v168 << 6) + v307 <= 0xA0)
    {
      v224 = 0;
      v225 = (HIDWORD(v299) >> (v318 - v307));
      v226 = v307;
      do
      {
        v227 = 64 - v169;
        if (64 - v169 >= v226)
        {
          v227 = v226;
        }

        *(v130 + 8 * v168) |= ((v225 >> v224) & ~(-1 << v227)) << v169;
        v224 += v227;
        v228 = v227 + v169;
        v168 += v228 >> 6;
        v169 = v228 & 0x3F;
        v226 -= v227;
      }

      while (v226);
    }

    v167 += v223;
  }

  v229 = v300;
  if (v300)
  {
    if ((v169 - v131 + (v168 << 6) + 3) <= 0xA0)
    {
      v230 = 0;
      v231 = v314[0];
      v232 = 3;
      do
      {
        v233 = 64 - v169;
        if (64 - v169 >= v232)
        {
          v233 = v232;
        }

        *(v130 + 8 * v168) |= ((v231 >> v230) & ~(-1 << v233)) << v169;
        v230 += v233;
        v234 = v233 + v169;
        v168 += v234 >> 6;
        v169 = v234 & 0x3F;
        v232 -= v233;
      }

      while (v232);
    }

    v167 += 3;
  }

  v235 = v301;
  if (v301)
  {
    if ((v169 - v131 + (v168 << 6) + 3) <= 0xA0)
    {
      v236 = 0;
      v237 = v314[1];
      v238 = 3;
      do
      {
        v239 = 64 - v169;
        if (64 - v169 >= v238)
        {
          v239 = v238;
        }

        *(v130 + 8 * v168) |= ((v237 >> v236) & ~(-1 << v239)) << v169;
        v236 += v239;
        v240 = v239 + v169;
        v168 += v240 >> 6;
        v169 = v240 & 0x3F;
        v238 -= v239;
      }

      while (v238);
    }

    v167 += 3;
  }

  v241 = v302;
  if (v302)
  {
    if ((v169 - v131 + (v168 << 6) + 3) <= 0xA0)
    {
      v242 = 0;
      v243 = v314[2];
      v244 = 3;
      do
      {
        v245 = 64 - v169;
        if (64 - v169 >= v244)
        {
          v245 = v244;
        }

        *(v130 + 8 * v168) |= ((v243 >> v242) & ~(-1 << v245)) << v169;
        v242 += v245;
        v246 = v245 + v169;
        v168 += v246 >> 6;
        v169 = v246 & 0x3F;
        v244 -= v245;
      }

      while (v244);
    }

    v167 += 3;
  }

  v247 = v303;
  if (v303)
  {
    if ((v169 - v131 + (v168 << 6) + 3) <= 0xA0)
    {
      v248 = 0;
      v249 = v314[3];
      v250 = 3;
      do
      {
        v251 = 64 - v169;
        if (64 - v169 >= v250)
        {
          v251 = v250;
        }

        *(v130 + 8 * v168) |= ((v249 >> v248) & ~(-1 << v251)) << v169;
        v248 += v251;
        v252 = v251 + v169;
        v168 += v252 >> 6;
        v169 = v252 & 0x3F;
        v250 -= v251;
      }

      while (v250);
    }

    v167 += 3;
  }

  v253 = 160 - v167;
  v254 = (160 - v167) / 7u;
  v255 = v253 % 7;
  if ((v255 - 257) >= 0xFFFFFF00 && v169 - v131 + (v168 << 6) + v255 <= 0xA0)
  {
    do
    {
      v256 = 64 - v169;
      if (64 - v169 >= v255)
      {
        v256 = v255;
      }

      v257 = v256 + v169;
      v168 += v257 >> 6;
      v169 = v257 & 0x3F;
      v255 -= v256;
    }

    while (v255);
  }

  v258 = 0;
  while (2)
  {
    if (v229 && v229 <= 0x100 && v169 - v131 + (v168 << 6) + v229 <= 0xA0)
    {
      v259 = 0;
      v260 = *(v297 + v258);
      v261 = v229;
      do
      {
        v262 = 64 - v169;
        if (64 - v169 >= v261)
        {
          v262 = v261;
        }

        *(v130 + 8 * v168) |= ((v260 >> v259) & ~(-1 << v262)) << v169;
        v259 += v262;
        v263 = v262 + v169;
        v168 += v263 >> 6;
        v169 = v263 & 0x3F;
        v261 -= v262;
      }

      while (v261);
    }

    v264 = v297 + v258;
    if (!v235)
    {
      v270 = v229;
      if (!v241)
      {
        goto LABEL_520;
      }

      goto LABEL_513;
    }

    if (v235 <= 0x100 && v169 - v131 + (v168 << 6) + v235 <= 0xA0)
    {
      v265 = 0;
      v266 = v264[7];
      v267 = v235;
      do
      {
        v268 = 64 - v169;
        if (64 - v169 >= v267)
        {
          v268 = v267;
        }

        *(v130 + 8 * v168) |= ((v266 >> v265) & ~(-1 << v268)) << v169;
        v265 += v268;
        v269 = v268 + v169;
        v168 += v269 >> 6;
        v169 = v269 & 0x3F;
        v267 -= v268;
      }

      while (v267);
    }

    v270 = v235 + v229;
    if (v241)
    {
LABEL_513:
      if (v241 <= 0x100 && v169 - v131 + (v168 << 6) + v241 <= 0xA0)
      {
        v271 = 0;
        v272 = v264[14];
        v273 = v241;
        do
        {
          v274 = 64 - v169;
          if (64 - v169 >= v273)
          {
            v274 = v273;
          }

          *(v130 + 8 * v168) |= ((v272 >> v271) & ~(-1 << v274)) << v169;
          v271 += v274;
          v275 = v274 + v169;
          v168 += v275 >> 6;
          v169 = v275 & 0x3F;
          v273 -= v274;
        }

        while (v273);
      }

      v270 += v241;
    }

LABEL_520:
    if (v247)
    {
      if (v247 <= 0x100 && v169 - v131 + (v168 << 6) + v247 <= 0xA0)
      {
        v276 = 0;
        v277 = v264[21];
        v278 = v247;
        do
        {
          v279 = 64 - v169;
          if (64 - v169 >= v278)
          {
            v279 = v278;
          }

          *(v130 + 8 * v168) |= ((v277 >> v276) & ~(-1 << v279)) << v169;
          v276 += v279;
          v280 = v279 + v169;
          v168 += v280 >> 6;
          v169 = v280 & 0x3F;
          v278 -= v279;
        }

        while (v278);
      }

      v270 += v247;
    }

    v281 = v254 - v270;
    if (v281 && v281 <= 0x100 && v169 - v131 + (v168 << 6) + v281 <= 0xA0)
    {
      do
      {
        v282 = 64 - v169;
        if (64 - v169 >= v281)
        {
          v282 = v281;
        }

        v283 = v282 + v169;
        v168 += v283 >> 6;
        v169 = v283 & 0x3F;
        v281 -= v282;
      }

      while (v281);
    }

    if (++v258 != 7)
    {
      continue;
    }

    return v55 & 1;
  }
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(uint64_t a1, uint64_t a2, int a3)
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
    if ((result - v6 + (v4 << 6) - 155) < 0xFFFFFFFFFFFFFF5FLL)
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
        if (v13 == 1008)
        {
          v13 = 1023;
        }

        else
        {
          v13 |= (v13 << 27 >> 31) + 8;
        }
      }

      goto LABEL_20;
    }

    v14 = 0;
    v15 = 0;
    v16 = 6;
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
    v13 = 16 * (v14 & 0x3F);
    if (a3 != 4)
    {
      goto LABEL_12;
    }

LABEL_20:
    *(a2 + 16 * v3) = v13 ^ v10;
    if ((result - v6 + (v4 << 6) - 155) < 0xFFFFFFFFFFFFFF5FLL)
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
        if (v20 == 1008)
        {
          v20 = 1023;
        }

        else
        {
          v20 |= (v20 << 27 >> 31) + 8;
        }
      }

      goto LABEL_36;
    }

    v21 = 0;
    v22 = 0;
    v23 = 6;
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
    v20 = 16 * (v21 & 0x3F);
    if (a3 != 4)
    {
      goto LABEL_28;
    }

LABEL_36:
    v27 = v20 ^ v10;
    v28 = (a2 + 16 * v3);
    v28[1] = v27;
    if ((result - v6 + (v4 << 6) - 155) >= 0xFFFFFFFFFFFFFF5FLL)
    {
      v30 = 0;
      v31 = 0;
      v32 = 6;
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
      v29 = 16 * (v30 & 0x3F);
    }

    else
    {
      v29 = 0;
    }

    v35 = ((v29 << 27 >> 31) + 8) | v29;
    if (v29 == 1008)
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
    if ((result - v6 + (v4 << 6) - 159) < 0xFFFFFFFFFFFFFF5FLL)
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

_DWORD *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3)
{
  v271 = *MEMORY[0x29EDCA608];
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = 8 * (a1 & 7);
  v6 = *(a1 & 0xFFFFFFFFFFFFFFF8);
  v244[0] = (v6 >> v5) & 7;
  v7 = (v5 | 3) - v5;
  v8 = (v6 >> (v5 | 3u)) & 7;
  if (v7 > 0x9D)
  {
    v9 = (8 * (a1 & 7)) | 3;
  }

  else
  {
    v7 = ((8 * (a1 & 7)) | 6) - v5;
    v9 = (8 * (a1 & 7)) | 6;
  }

  if ((v5 | 3uLL) - v5 > 0x9D)
  {
    LOBYTE(v8) = 0;
  }

  v244[1] = v8;
  if (v7 - 158 >= 0xFFFFFFFFFFFFFF5FLL)
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

  v244[2] = v11;
  if (v7 + (v10 << 6) - 160 >= 0xFFFFFFFFFFFFFF5FLL)
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
  v244[3] = v15;
  v20 = 10;
  do
  {
    v23 = AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)13,(AGXTextureFootprint)3>::compBits[v18];
    *(&v258 + v18) = v23;
    v24 = v244[v18];
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
    if ((v26 & 1) == 0 && v9 - v5 + (v10 << 6) + v25 <= 0xA0)
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
    v262[v18] = 0;
    if (v23 <= 11)
    {
      if (v23 == 2)
      {
        *(&v267 + v18) = v24 & 1;
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
            v262[v18] = ~(-1 << v23);
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
      *(&v267 + v18) = v32;
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

    *(&v267 + v18) = v21;
    v22 = 2;
LABEL_20:
    v20 += v25;
    *(&v263 + v18++) = v22;
  }

  while (v18 != 4);
  v256 = 0;
  v257 = 0;
  v254 = 0;
  v255 = 0;
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::deriveLossyDQuadBitSharing(&v263, &v267, &v256, &v254);
  v34 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v263 + 2);
  v35 = v267;
  v36 = &kDQuadParamTable[160 * v263 + 10 * v267];
  v38 = v36[4];
  v37 = v36[5];
  v39 = v38 + v34;
  v40 = v37 + v34;
  v41 = v254 - v256;
  if (v254 - v256 < 0)
  {
    v42 = &kDQuadParamTable[160 * v263 + 10 * v267];
    if (v42[7] < v256 - v254)
    {
      --v40;
      if (!v42[8])
      {
        v41 = -1;
LABEL_61:
        v39 += v41;
      }
    }
  }

  else if (v41)
  {
    v40 += v41;
    goto LABEL_61;
  }

  if (v258 >= v39)
  {
    v43 = v39;
  }

  else
  {
    v43 = v258;
  }

  LODWORD(v252) = v43;
  v243 = v258;
  if (v37)
  {
    v44 = v258;
  }

  else
  {
    v44 = 0;
  }

  if (v44 < v40)
  {
    v40 = v44;
  }

  LODWORD(v250) = v40;
  v45 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v264 + 2);
  v46 = &kDQuadParamTable[160 * v264 + 10 * v268];
  v48 = v46[4];
  v47 = v46[5];
  v49 = v48 + v45;
  v50 = v47 + v45;
  v51 = HIDWORD(v254) - HIDWORD(v256);
  if (HIDWORD(v254) - HIDWORD(v256) < 0)
  {
    v52 = &kDQuadParamTable[160 * v264 + 10 * v268];
    if (v52[7] < HIDWORD(v256) - HIDWORD(v254))
    {
      --v50;
      if (!v52[8])
      {
        v51 = -1;
LABEL_76:
        v49 += v51;
      }
    }
  }

  else if (v51)
  {
    v50 += v51;
    goto LABEL_76;
  }

  v241 = v268;
  v53 = v259;
  if (v259 >= v49)
  {
    v54 = v49;
  }

  else
  {
    v54 = v259;
  }

  HIDWORD(v252) = v54;
  if (v47)
  {
    v55 = v259;
  }

  else
  {
    v55 = 0;
  }

  if (v55 < v50)
  {
    v50 = v55;
  }

  HIDWORD(v250) = v50;
  v56 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v265 + 2);
  v57 = v269;
  v58 = &kDQuadParamTable[160 * v265 + 10 * v269];
  v60 = v58[4];
  v59 = v58[5];
  v61 = v60 + v56;
  v62 = v59 + v56;
  v63 = v255 - v257;
  if (v255 - v257 < 0)
  {
    v64 = &kDQuadParamTable[160 * v265 + 10 * v269];
    if (v64[7] < v257 - v255)
    {
      --v62;
      if (!v64[8])
      {
        v63 = -1;
LABEL_90:
        v61 += v63;
      }
    }
  }

  else if (v63)
  {
    v62 += v63;
    goto LABEL_90;
  }

  v65 = v260;
  if (v260 < v61)
  {
    v61 = v260;
  }

  LODWORD(v253) = v61;
  if (v59)
  {
    v66 = v260;
  }

  else
  {
    v66 = 0;
  }

  if (v66 < v62)
  {
    v62 = v66;
  }

  LODWORD(v251) = v62;
  v67 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v266 + 2);
  v68 = v270;
  v69 = &kDQuadParamTable[160 * v266 + 10 * v270];
  v70 = v69[5];
  v71 = v69[4] + v67;
  v72 = v70 + v67;
  v73 = HIDWORD(v255) - HIDWORD(v257);
  if (HIDWORD(v255) - HIDWORD(v257) < 0)
  {
    v75 = &kDQuadParamTable[160 * v266 + 10 * v270];
    if (v75[7] >= HIDWORD(v257) - HIDWORD(v255))
    {
      v35 = v267;
    }

    else
    {
      --v72;
      v35 = v267;
      if (!v75[8])
      {
        v74 = -1;
LABEL_103:
        v71 += v74;
      }
    }
  }

  else if (HIDWORD(v255) != HIDWORD(v257))
  {
    v72 += v73;
    v74 = HIDWORD(v255) - HIDWORD(v257);
    goto LABEL_103;
  }

  v76 = v261;
  if (v261 < v71)
  {
    v71 = v261;
  }

  HIDWORD(v253) = v71;
  if (v70)
  {
    v77 = v261;
  }

  else
  {
    v77 = 0;
  }

  if (v77 < v72)
  {
    v72 = v77;
  }

  HIDWORD(v251) = v72;
  if (v270 == 1 && v73 <= 1)
  {
    v240 = v269;
    v239 = v260;
    v78 = v270;
    v79 = v261;
    v80 = v35;
    fprintf(*MEMORY[0x29EDCA610], "lossy decompress dquad warning: invalid 2-bit region (mode[3]=%d end_level[3]=%d start_level[3]=%d\n", 1, HIDWORD(v255), HIDWORD(v257));
    v35 = v80;
    v76 = v79;
    v68 = v78;
    v65 = v239;
    v57 = v240;
    v72 = 0;
    v62 = 0;
    v50 = 0;
    v40 = 0;
    v71 = 0;
    v61 = 0;
    v54 = 0;
    v43 = 0;
    v252 = 0;
    v253 = 0;
    v250 = 0;
    v251 = 0;
  }

  v248 = 0;
  v249 = 0;
  if (v35 || v243 - 8 > 4)
  {
    if (v43 <= 0x20)
    {
      v81 = 0;
      if (v43)
      {
        v82 = v43;
        if (v9 - v5 + (v10 << 6) + v43 <= 0xA0)
        {
          v81 = 0;
          v83 = 0;
          do
          {
            v84 = 64 - v9;
            if (64 - v9 >= v82)
            {
              v84 = v82;
            }

            v81 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v84)) << v83;
            v83 += v84;
            v10 += (v84 + v9) >> 6;
            v9 = (v84 + v9) & 0x3F;
            v82 -= v84;
          }

          while (v82);
        }
      }
    }

    else
    {
      v81 = 0;
    }

    LODWORD(v248) = v81 << (v243 - v43);
    v20 += v43;
    if (!v241)
    {
      goto LABEL_131;
    }

LABEL_134:
    if (v54 <= 0x20)
    {
      v85 = 0;
      if (v54)
      {
        v86 = v54;
        if (v9 - v5 + (v10 << 6) + v54 <= 0xA0)
        {
          v85 = 0;
          v87 = 0;
          do
          {
            v88 = 64 - v9;
            if (64 - v9 >= v86)
            {
              v88 = v86;
            }

            v85 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v88)) << v87;
            v87 += v88;
            v10 += (v88 + v9) >> 6;
            v9 = (v88 + v9) & 0x3F;
            v86 -= v88;
          }

          while (v86);
        }
      }
    }

    else
    {
      v85 = 0;
    }

    HIDWORD(v248) = v85 << (v53 - v54);
    v20 += v54;
    if (!v57)
    {
      goto LABEL_143;
    }

LABEL_146:
    if (v61 <= 0x20)
    {
      v89 = 0;
      if (v61)
      {
        v90 = v61;
        if (v9 - v5 + (v10 << 6) + v61 <= 0xA0)
        {
          v89 = 0;
          v91 = 0;
          do
          {
            v92 = 64 - v9;
            if (64 - v9 >= v90)
            {
              v92 = v90;
            }

            v89 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v92)) << v91;
            v91 += v92;
            v10 += (v92 + v9) >> 6;
            v9 = (v92 + v9) & 0x3F;
            v90 -= v92;
          }

          while (v90);
        }
      }
    }

    else
    {
      v89 = 0;
    }

    LODWORD(v249) = v89 << (v65 - v61);
    v20 += v61;
    if (!v68)
    {
      goto LABEL_155;
    }

LABEL_157:
    if (v71 <= 0x20)
    {
      v93 = 0;
      if (v71)
      {
        v94 = v71;
        if (v9 - v5 + (v10 << 6) + v71 <= 0xA0)
        {
          v93 = 0;
          v95 = 0;
          do
          {
            v96 = 64 - v9;
            if (64 - v9 >= v94)
            {
              v96 = v94;
            }

            v93 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v96)) << v95;
            v95 += v96;
            v10 += (v96 + v9) >> 6;
            v9 = (v96 + v9) & 0x3F;
            v94 -= v96;
          }

          while (v94);
        }
      }
    }

    else
    {
      v93 = 0;
    }

    HIDWORD(v249) = v93 << (v76 - v71);
    v20 += v71;
  }

  else
  {
    LODWORD(v248) = v262[0];
    if (v241)
    {
      goto LABEL_134;
    }

LABEL_131:
    if (v53 - 8 >= 5)
    {
      goto LABEL_134;
    }

    HIDWORD(v248) = v262[1];
    if (v57)
    {
      goto LABEL_146;
    }

LABEL_143:
    if (v65 - 8 >= 5)
    {
      goto LABEL_146;
    }

    LODWORD(v249) = v262[2];
    if (v68)
    {
      goto LABEL_157;
    }

LABEL_155:
    if (v76 - 8 >= 5)
    {
      goto LABEL_157;
    }

    HIDWORD(v249) = v262[3];
  }

  v247 = 0;
  v246 = 0;
  if (v40)
  {
    if ((v9 - v5 + (v10 << 6) + 3) <= 0xA0)
    {
      v97 = 0;
      v98 = 0;
      v99 = 3;
      do
      {
        v100 = 64 - v9;
        if (64 - v9 >= v99)
        {
          v100 = v99;
        }

        v97 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v100)) << v98;
        v98 += v100;
        v10 += (v100 + v9) >> 6;
        v9 = (v100 + v9) & 0x3F;
        v99 -= v100;
      }

      while (v99);
    }

    else
    {
      v97 = 0;
    }

    LODWORD(v246) = v97;
    v20 += 3;
  }

  if (v50)
  {
    if ((v9 - v5 + (v10 << 6) + 3) <= 0xA0)
    {
      v101 = 0;
      v102 = 0;
      v103 = 3;
      do
      {
        v104 = 64 - v9;
        if (64 - v9 >= v103)
        {
          v104 = v103;
        }

        v101 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v104)) << v102;
        v102 += v104;
        v10 += (v104 + v9) >> 6;
        v9 = (v104 + v9) & 0x3F;
        v103 -= v104;
      }

      while (v103);
    }

    else
    {
      v101 = 0;
    }

    HIDWORD(v246) = v101;
    v20 += 3;
  }

  if (v62)
  {
    if ((v9 - v5 + (v10 << 6) + 3) <= 0xA0)
    {
      v105 = 0;
      v106 = 0;
      v107 = 3;
      do
      {
        v108 = 64 - v9;
        if (64 - v9 >= v107)
        {
          v108 = v107;
        }

        v105 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v108)) << v106;
        v106 += v108;
        v10 += (v108 + v9) >> 6;
        v9 = (v108 + v9) & 0x3F;
        v107 -= v108;
      }

      while (v107);
    }

    else
    {
      v105 = 0;
    }

    LODWORD(v247) = v105;
    v20 += 3;
  }

  if (v72)
  {
    if ((v9 - v5 + (v10 << 6) + 3) <= 0xA0)
    {
      v109 = 0;
      v110 = 0;
      v111 = 3;
      do
      {
        v112 = 64 - v9;
        if (64 - v9 >= v111)
        {
          v112 = v111;
        }

        v109 |= ((*(v4 + 8 * v10) >> v9) & ~(-1 << v112)) << v110;
        v110 += v112;
        v10 += (v112 + v9) >> 6;
        v9 = (v112 + v9) & 0x3F;
        v111 -= v112;
      }

      while (v111);
    }

    else
    {
      v109 = 0;
    }

    HIDWORD(v247) = v109;
    v20 += 3;
  }

  v113 = 0;
  v114 = v9 + (v10 << 6) + (160 - v20) % 7u;
  memset(v245, 0, sizeof(v245));
  while (2)
  {
    v117 = v114 >> 6;
    v118 = v114 & 0x3F;
    if (v40)
    {
      if (v40 <= 0x20 && v118 - v5 + (v114 & 0xFFFFFFFFFFFFFFC0) + v40 <= 0xA0)
      {
        v119 = 0;
        v120 = 0;
        v121 = v40;
        do
        {
          v122 = 64 - v118;
          if (64 - v118 >= v121)
          {
            v122 = v121;
          }

          v119 |= ((*(v4 + 8 * v117) >> v118) & ~(-1 << v122)) << v120;
          v120 += v122;
          v123 = v122 + v118;
          v117 += v123 >> 6;
          v118 = v123 & 0x3F;
          v121 -= v122;
        }

        while (v121);
      }

      else
      {
        v119 = 0;
      }

      *(v245 + v113) = v119;
    }

    v124 = v245 + v113;
    if (v50)
    {
      if (v50 <= 0x20 && v118 - v5 + (v117 << 6) + v50 <= 0xA0)
      {
        v125 = 0;
        v126 = 0;
        v127 = v50;
        do
        {
          v128 = 64 - v118;
          if (64 - v118 >= v127)
          {
            v128 = v127;
          }

          v125 |= ((*(v4 + 8 * v117) >> v118) & ~(-1 << v128)) << v126;
          v126 += v128;
          v129 = v128 + v118;
          v117 += v129 >> 6;
          v118 = v129 & 0x3F;
          v127 -= v128;
        }

        while (v127);
      }

      else
      {
        v125 = 0;
      }

      v124[7] = v125;
      v116 = v50 + v40;
      if (v62)
      {
LABEL_222:
        if (v62 <= 0x20 && v118 - v5 + (v117 << 6) + v62 <= 0xA0)
        {
          v130 = 0;
          v131 = 0;
          v132 = v62;
          do
          {
            v133 = 64 - v118;
            if (64 - v118 >= v132)
            {
              v133 = v132;
            }

            v130 |= ((*(v4 + 8 * v117) >> v118) & ~(-1 << v133)) << v131;
            v131 += v133;
            v134 = v133 + v118;
            v117 += v134 >> 6;
            v118 = v134 & 0x3F;
            v132 -= v133;
          }

          while (v132);
        }

        else
        {
          v130 = 0;
        }

        v124[14] = v130;
        v116 += v62;
      }
    }

    else
    {
      v116 = v40;
      if (v62)
      {
        goto LABEL_222;
      }
    }

    if (v72)
    {
      if (v72 > 0x20 || v118 - v5 + (v117 << 6) + v72 > 0xA0)
      {
        v115 = 0;
      }

      else
      {
        v115 = 0;
        v135 = 0;
        v136 = v72;
        do
        {
          v137 = 64 - v118;
          if (64 - v118 >= v136)
          {
            v137 = v136;
          }

          v115 |= ((*(v4 + 8 * v117) >> v118) & ~(-1 << v137)) << v135;
          v135 += v137;
          v138 = v137 + v118;
          v117 += v138 >> 6;
          v118 = v138 & 0x3F;
          v136 -= v137;
        }

        while (v136);
      }

      v124[21] = v115;
      v116 += v72;
    }

    v114 = (v118 | (v117 << 6)) + (160 - v20) / 7u - v116;
    if (++v113 != 7)
    {
      continue;
    }

    break;
  }

  v139 = 0;
  v140 = 0;
  v141 = a2 + 112;
  result = kDQuadParamTable;
  while (2)
  {
    v147 = *&kDQuadParamTable[160 * *(&v263 + v139) + 2 + 10 * *(&v267 + v139)];
    v148 = *(&v250 + v139);
    if (v147 >> v148 <= 1)
    {
      v149 = 1;
    }

    else
    {
      v149 = v147 >> v148;
    }

    v150 = *(&v258 + v139);
    v151 = v149 >> 1;
    v152 = (1 << (v150 - *(&v252 + v139))) >> 1;
    if (v149 >> 1 < v152)
    {
      v152 = v149 >> 1;
    }

    v153 = (1 << (v150 - 1));
    v154 = *(&v248 + v139);
    v155 = v153 - v154;
    v156 = 1 << v150;
    v157 = (1 << v150) + 0xFFFFFFFFLL;
    if (v154)
    {
      v158 = v152;
    }

    else
    {
      v158 = 0;
    }

    v159 = v154 == v153;
    v160 = v150 == 16;
    if (v150 == 16)
    {
      v161 = 31744;
    }

    else
    {
      v161 = 2139095040;
    }

    if (v150 == 16)
    {
      v162 = 64512;
    }

    else
    {
      v162 = 4286578688;
    }

    v163 = 2143289344;
    if (v160)
    {
      v163 = 32256;
    }

    v164 = 65024;
    if (!v160)
    {
      v164 = 4290772992;
    }

    v165 = (v162 - 1);
    if (v148)
    {
      v166 = v147 + v154;
      v167 = -1 << v148;
      v168 = *(&v246 + v139);
      v169 = v155 / v149;
      if (v168)
      {
        v170 = *(v245 + v140);
        v171 = v169 == v170;
        if (!(v154 | v170))
        {
          v172 = 0;
          goto LABEL_307;
        }

        if (v166 >= v156 && (v167 ^ v170) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v177 = 1;
          v172 = v156 - 1;
        }

        else
        {
          v172 = v151 + v149 * v170;
LABEL_307:
          v177 = 1;
        }
      }

      else
      {
        v177 = 0;
        v172 = v158;
        v171 = v154 == v153;
      }

      v180 = v172 + v154;
      v181 = v180;
      if (a3 == 4)
      {
        v182 = v180 < v161 || v180 >= v163;
        v181 = (v161 - 1);
        if (v182)
        {
          v183 = v180 < v163 || v180 >= v153;
          v181 = v153;
          if (v183)
          {
            if (v180 < v164 && v180 >= v162)
            {
              v181 = (v162 - 1);
            }

            else
            {
              v181 = v180;
            }
          }
        }
      }

      if (v181 >= v156)
      {
        v185 = v157;
      }

      else
      {
        v185 = v181;
      }

      if (v171)
      {
        v186 = 0;
      }

      else
      {
        v186 = v185 ^ v153;
      }

      if (v19 != 1)
      {
        v186 = v185;
      }

      *(a2 + v139) = v186;
      if (v168 == 1)
      {
        v187 = v158;
        v188 = v154 == v153;
      }

      else
      {
        v189 = *((v245 | (4 * v177)) + v140);
        v188 = v169 == v189;
        if (v154 | v189)
        {
          if (v166 < v156 || (v187 = v156 - 1, (v167 ^ v189) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v187 = v151 + v149 * v189;
          }
        }

        else
        {
          v187 = 0;
        }

        ++v177;
      }

      v190 = v187 + v154;
      v191 = v190;
      if (a3 == 4)
      {
        v192 = v190 < v161 || v190 >= v163;
        v191 = (v161 - 1);
        if (v192)
        {
          v193 = v190 < v163 || v190 >= v153;
          v191 = v153;
          if (v193)
          {
            if (v190 < v164 && v190 >= v162)
            {
              v191 = (v162 - 1);
            }

            else
            {
              v191 = v190;
            }
          }
        }
      }

      if (v191 >= v156)
      {
        v195 = v157;
      }

      else
      {
        v195 = v191;
      }

      if (v188)
      {
        v196 = 0;
      }

      else
      {
        v196 = v195 ^ v153;
      }

      if (v19 != 1)
      {
        v196 = v195;
      }

      *(v141 + v139 - 96) = v196;
      if (v168 == 2)
      {
        v197 = v158;
        v198 = v154 == v153;
      }

      else
      {
        v199 = *((v245 | (4 * v177)) + v140);
        v198 = v169 == v199;
        if (v154 | v199)
        {
          if (v166 < v156 || (v197 = v156 - 1, (v167 ^ v199) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v197 = v151 + v149 * v199;
          }
        }

        else
        {
          v197 = 0;
        }

        ++v177;
      }

      v200 = v197 + v154;
      v201 = v200;
      if (a3 == 4)
      {
        if (v200 < v161 || (v201 = (v161 - 1), v200 >= v163))
        {
          if (v200 < v163 || (v201 = v153, v200 >= v153))
          {
            if (v200 < v164 && v200 >= v162)
            {
              v201 = (v162 - 1);
            }

            else
            {
              v201 = v200;
            }
          }
        }
      }

      if (v201 >= v156)
      {
        v203 = v157;
      }

      else
      {
        v203 = v201;
      }

      if (v198)
      {
        v204 = 0;
      }

      else
      {
        v204 = v203 ^ v153;
      }

      if (v19 != 1)
      {
        v204 = v203;
      }

      *(v141 + v139 - 80) = v204;
      if (v168 == 3)
      {
        v205 = v158;
        v206 = v154 == v153;
      }

      else
      {
        v207 = *(v245 + 4 * v177 + v140);
        v206 = v169 == v207;
        if (v154 | v207)
        {
          if (v166 < v156 || (v205 = v156 - 1, (v167 ^ v207) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v205 = v151 + v149 * v207;
          }
        }

        else
        {
          v205 = 0;
        }

        ++v177;
      }

      v208 = v205 + v154;
      v209 = v208;
      if (a3 == 4)
      {
        if (v208 < v161 || (v209 = (v161 - 1), v208 >= v163))
        {
          if (v208 < v163 || (v209 = v153, v208 >= v153))
          {
            if (v208 < v164 && v208 >= v162)
            {
              v209 = (v162 - 1);
            }

            else
            {
              v209 = v208;
            }
          }
        }
      }

      if (v209 >= v156)
      {
        v211 = v157;
      }

      else
      {
        v211 = v209;
      }

      if (v206)
      {
        v212 = 0;
      }

      else
      {
        v212 = v211 ^ v153;
      }

      if (v19 != 1)
      {
        v212 = v211;
      }

      *(v141 + v139 - 64) = v212;
      if (v168 == 4)
      {
        v213 = v158;
        v214 = v154 == v153;
      }

      else
      {
        v215 = *(v245 + 4 * v177 + v140);
        v214 = v169 == v215;
        if (v154 | v215)
        {
          if (v166 < v156 || (v213 = v156 - 1, (v167 ^ v215) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v213 = v151 + v149 * v215;
          }
        }

        else
        {
          v213 = 0;
        }

        ++v177;
      }

      v216 = v213 + v154;
      v217 = v216;
      if (a3 == 4)
      {
        if (v216 < v161 || (v217 = (v161 - 1), v216 >= v163))
        {
          if (v216 < v163 || (v217 = v153, v216 >= v153))
          {
            if (v216 < v164 && v216 >= v162)
            {
              v217 = (v162 - 1);
            }

            else
            {
              v217 = v216;
            }
          }
        }
      }

      if (v217 >= v156)
      {
        v219 = v157;
      }

      else
      {
        v219 = v217;
      }

      if (v214)
      {
        v220 = 0;
      }

      else
      {
        v220 = v219 ^ v153;
      }

      if (v19 != 1)
      {
        v220 = v219;
      }

      *(v141 + v139 - 48) = v220;
      if (v168 == 5)
      {
        v221 = v158;
        v222 = v154 == v153;
      }

      else
      {
        v223 = *(v245 + 4 * v177 + v140);
        v222 = v169 == v223;
        if (v154 | v223)
        {
          if (v166 < v156 || (v221 = v156 - 1, (v167 ^ v223) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v221 = v151 + v149 * v223;
          }
        }

        else
        {
          v221 = 0;
        }

        ++v177;
      }

      v224 = v221 + v154;
      v225 = v224;
      if (a3 == 4)
      {
        if (v224 < v161 || (v225 = (v161 - 1), v224 >= v163))
        {
          if (v224 < v163 || (v225 = v153, v224 >= v153))
          {
            if (v224 < v164 && v224 >= v162)
            {
              v225 = (v162 - 1);
            }

            else
            {
              v225 = v224;
            }
          }
        }
      }

      if (v225 >= v156)
      {
        v227 = v157;
      }

      else
      {
        v227 = v225;
      }

      if (v222)
      {
        v228 = 0;
      }

      else
      {
        v228 = v227 ^ v153;
      }

      if (v19 != 1)
      {
        v228 = v227;
      }

      *(v141 + v139 - 32) = v228;
      if (v168 == 6)
      {
        v229 = v158;
        v230 = v154 == v153;
      }

      else
      {
        v231 = *(v245 + 4 * v177 + v140);
        v230 = v169 == v231;
        if (v154 | v231)
        {
          if (v166 < v156 || (v229 = v156 - 1, (v167 ^ v231) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v229 = v151 + v149 * v231;
          }
        }

        else
        {
          v229 = 0;
        }

        ++v177;
      }

      v232 = v229 + v154;
      v233 = v232;
      if (a3 == 4)
      {
        if (v232 < v161 || (v233 = (v161 - 1), v232 >= v163))
        {
          if (v232 < v163 || (v233 = v153, v232 >= v153))
          {
            if (v232 < v164 && v232 >= v162)
            {
              v233 = (v162 - 1);
            }

            else
            {
              v233 = v232;
            }
          }
        }
      }

      if (v233 >= v156)
      {
        v235 = v157;
      }

      else
      {
        v235 = v233;
      }

      if (v230)
      {
        v236 = 0;
      }

      else
      {
        v236 = v235 ^ v153;
      }

      if (v19 != 1)
      {
        v236 = v235;
      }

      *(v141 + v139 - 16) = v236;
      if (v168 != 7)
      {
        v237 = *(v245 + 4 * v177 + v140);
        v159 = v169 == v237;
        if (v154 | v237)
        {
          if (v166 >= v156 && (v167 ^ v237) == 0xFFFFFFFFFFFFFFFFLL)
          {
            v158 = v156 - 1;
          }

          else
          {
            v158 = v151 + v149 * v237;
          }
        }

        else
        {
          v158 = 0;
        }
      }

      v238 = v158 + v154;
      v144 = v158 + v154;
      if (a3 == 4)
      {
        if (v238 < v161 || (v144 = (v161 - 1), v238 >= v163))
        {
          if (v238 < v163 || (v144 = v153, v238 >= v153))
          {
            if (v238 < v164 && v238 >= v162)
            {
              v144 = (v162 - 1);
            }

            else
            {
              v144 = v158 + v154;
            }
          }
        }
      }

      if (v144 >= v156)
      {
        LODWORD(v145) = v157;
      }

      else
      {
        LODWORD(v145) = v144;
      }

      v146 = v145 ^ v153;
      if (v159)
      {
        v146 = 0;
      }

      if (v19 == 1)
      {
        LODWORD(v145) = v146;
      }

      result = kDQuadParamTable;
    }

    else
    {
      v174 = v163 <= v154 && v154 < v153;
      v176 = v154 >= v162 && v164 > v154;
      if (a3 == 4)
      {
        if (v154 < v161 || v163 <= v154)
        {
          if (v174)
          {
            if (v156 <= v153)
            {
              LODWORD(v145) = v157;
            }

            else
            {
              LODWORD(v145) = v153;
            }
          }

          else
          {
            if (v176)
            {
              v145 = v165;
            }

            else
            {
              v145 = *(&v248 + v139);
            }

            if (v145 >= v156)
            {
              LODWORD(v145) = v157;
            }
          }
        }

        else if (v156 <= (v161 - 1))
        {
          LODWORD(v145) = v157;
        }

        else
        {
          LODWORD(v145) = v161 - 1;
        }
      }

      else
      {
        if (v156 <= v154)
        {
          LODWORD(v145) = v157;
        }

        else
        {
          LODWORD(v145) = *(&v248 + v139);
        }

        v178 = v145 ^ v153;
        if (v149 > v155)
        {
          v178 = 0;
        }

        if (v19 == 1)
        {
          LODWORD(v145) = v178;
        }
      }

      v179 = v141 + v139;
      *(v179 - 112) = v145;
      *(v179 - 96) = v145;
      *(v179 - 80) = v145;
      *(v179 - 64) = v145;
      *(v179 - 48) = v145;
      *(v179 - 32) = v145;
      *(v179 - 16) = v145;
    }

    *(v141 + v139) = v145;
    v140 += 28;
    v139 += 4;
    if (v140 != 112)
    {
      continue;
    }

    return result;
  }
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
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
        v422.i64[0] = (8 * (a3 & 7)) | 0x280;
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

        if ((v112 & 1) != 0 || v422.i64[0] + 8 * result - v327 - 640 >= 9 || v95 == 2)
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
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(a3, &v421, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(a3, &v421, a5);
      }

      v429 = v421;
      v430 = v423;
      v433 = v422;
      v434 = v424;
      v437 = v425;
      v438 = v427;
      v441 = v426;
      v442 = v428;
      v18 = a3 + 20;
      if ((v7 & 2) != 0)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v18, &v421, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v18, &v421, a5);
      }

      v431 = v421;
      v432 = v423;
      v435 = v422;
      v436 = v424;
      v439 = v425;
      v440 = v427;
      v443 = v426;
      v444 = v428;
      v19 = a3 + 40;
      if ((v7 & 4) != 0)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v19, &v421, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v19, &v421, a5);
      }

      v445 = v421;
      v446 = v423;
      v449 = v422;
      v450 = v424;
      v452 = v425;
      v453 = v427;
      *v456 = v426;
      *&v456[2] = v428;
      v20 = a3 + 60;
      if ((v7 & 8) != 0)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v20, &v421, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v20, &v421, a5);
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
      return 80;
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
    v11 += result;
  }

  else
  {
    *a4 = 0;
  }

  v14 = v9 - 8;
  if (v9 >= 9 && v8)
  {
    if (v8 >= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = v8;
    }

    if (v14 >= 8)
    {
      v16 = 8;
    }

    else
    {
      v16 = v9 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 1, v13 + 32, a2, v16, v15, a7);
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

    if (v9 >= 8)
    {
      v20 = 8;
    }

    else
    {
      v20 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 2, v13 + v17, a2, v20, v19, a7);
    v11 += result;
    if (v9 < 9)
    {
      goto LABEL_38;
    }
  }

  else
  {
    a4[2] = 0;
    if (v9 < 9)
    {
      goto LABEL_38;
    }
  }

  if (v8 >= 5)
  {
    if (v18 >= 4)
    {
      v21 = 4;
    }

    else
    {
      v21 = v8 - 4;
    }

    if (v14 >= 8)
    {
      v22 = 8;
    }

    else
    {
      v22 = v9 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 3, v13 + v17 + 32, a2, v22, v21, a7);
    v11 += result;
    v23 = v8 - 8;
    goto LABEL_39;
  }

LABEL_38:
  a4[3] = 0;
  v23 = v8 - 8;
  if (!v9)
  {
    goto LABEL_48;
  }

LABEL_39:
  if (v8 < 9)
  {
LABEL_48:
    a4[4] = 0;
    if (v9 < 9)
    {
      goto LABEL_57;
    }

    goto LABEL_49;
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 4, v13 + 8 * a2, a2, v25, v24, a7);
  v11 += result;
  if (v9 < 9)
  {
LABEL_57:
    a4[5] = 0;
    v28 = v8 - 12;
    if (!v9)
    {
      goto LABEL_67;
    }

    goto LABEL_58;
  }

LABEL_49:
  if (v8 < 9)
  {
    goto LABEL_57;
  }

  if (v23 >= 4)
  {
    v26 = 4;
  }

  else
  {
    v26 = v23;
  }

  if (v14 >= 8)
  {
    v27 = 8;
  }

  else
  {
    v27 = v9 - 8;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 5, v13 + 8 * a2 + 32, a2, v27, v26, a7);
  v11 += result;
  v28 = v8 - 12;
LABEL_58:
  if (v8 >= 0xD)
  {
    if (v28 >= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = v28;
    }

    if (v9 >= 8)
    {
      v30 = 8;
    }

    else
    {
      v30 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 6, v13 + 12 * a2, a2, v30, v29, a7);
    v11 += result;
    if (v9 < 9)
    {
      goto LABEL_78;
    }

    goto LABEL_68;
  }

LABEL_67:
  a4[6] = 0;
  if (v9 < 9)
  {
LABEL_78:
    a4[7] = 0;
    return result;
  }

LABEL_68:
  if (v8 < 0xD)
  {
    goto LABEL_78;
  }

  if (v28 >= 4)
  {
    v31 = 4;
  }

  else
  {
    v31 = v28;
  }

  if (v14 >= 8)
  {
    v32 = 8;
  }

  else
  {
    v32 = v9 - 8;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 7, v13 + 12 * a2 + 32, a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1, 64, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 32, 64, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 256, 64, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 288, 64, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 512, 64, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 544, 64, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 768, 64, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 800, 64, v12 + v13, v14, a4);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressMacroblock(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

  v14 = v9 - 8;
  if (v9 >= 9 && v8)
  {
    if (v8 >= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = v8;
    }

    if (v14 >= 8)
    {
      v16 = 8;
    }

    else
    {
      v16 = v9 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 1, v13 + 32, a2, v16, v15, a7);
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

    if (v9 >= 8)
    {
      v20 = 8;
    }

    else
    {
      v20 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 2, v13 + v17, a2, v20, v19, a7);
    v11 += result;
    if (v9 < 9)
    {
      goto LABEL_38;
    }
  }

  else
  {
    a4[2] = 0;
    if (v9 < 9)
    {
      goto LABEL_38;
    }
  }

  if (v8 >= 5)
  {
    if (v18 >= 4)
    {
      v21 = 4;
    }

    else
    {
      v21 = v8 - 4;
    }

    if (v14 >= 8)
    {
      v22 = 8;
    }

    else
    {
      v22 = v9 - 8;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 3, v13 + v17 + 32, a2, v22, v21, a7);
    v11 += result;
    v23 = v8 - 8;
    goto LABEL_39;
  }

LABEL_38:
  a4[3] = 0;
  v23 = v8 - 8;
  if (!v9)
  {
    goto LABEL_48;
  }

LABEL_39:
  if (v8 < 9)
  {
LABEL_48:
    a4[4] = 0;
    if (v9 < 9)
    {
      goto LABEL_57;
    }

    goto LABEL_49;
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
  if (v9 < 9)
  {
LABEL_57:
    a4[5] = 0;
    v28 = v8 - 12;
    if (!v9)
    {
      goto LABEL_67;
    }

    goto LABEL_58;
  }

LABEL_49:
  if (v8 < 9)
  {
    goto LABEL_57;
  }

  if (v23 >= 4)
  {
    v26 = 4;
  }

  else
  {
    v26 = v23;
  }

  if (v14 >= 8)
  {
    v27 = 8;
  }

  else
  {
    v27 = v9 - 8;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 5, v13 + 8 * a2 + 32, a2, v27, v26, a7);
  v11 += result;
  v28 = v8 - 12;
LABEL_58:
  if (v8 >= 0xD)
  {
    if (v28 >= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = v28;
    }

    if (v9 >= 8)
    {
      v30 = 8;
    }

    else
    {
      v30 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 6, v13 + 12 * a2, a2, v30, v29, a7);
    v11 += result;
    if (v9 < 9)
    {
      goto LABEL_78;
    }

    goto LABEL_68;
  }

LABEL_67:
  a4[6] = 0;
  if (v9 < 9)
  {
LABEL_78:
    a4[7] = 0;
    return result;
  }

LABEL_68:
  if (v8 < 0xD)
  {
    goto LABEL_78;
  }

  if (v28 >= 4)
  {
    v31 = 4;
  }

  else
  {
    v31 = v28;
  }

  if (v14 >= 8)
  {
    v32 = 8;
  }

  else
  {
    v32 = v9 - 8;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(v11, a4 + 7, v13 + 12 * a2 + 32, a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1, 64, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 32, 64, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 256, 64, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 288, 64, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 512, 64, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 544, 64, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 768, 64, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressSubblock(a1 + 800, 64, v12 + v13, v14, a4);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::decompressSubblock(int32x4_t *a1, uint64_t a2, int32x4_t *a3, int a4, double a5, double a6, double a7, int8x8_t a8)
{
  if (a4 > 38)
  {
    if (a4 == 39)
    {
      v63.i64[0] = 0xA000A000A000ALL;
      v63.i64[1] = 0xA000A000A000ALL;
      v64 = vmovl_u16(*&vpaddq_s16(v63, v63));
      v65 = vpaddq_s32(v64, v64).u64[0];
      v66.i64[0] = v65;
      v66.i64[1] = HIDWORD(v65);
      v67 = v66;
      v68 = vaddvq_s64(v66);
      v69 = 0uLL;
      v70 = 0uLL;
      v71 = 0uLL;
      v72 = 0uLL;
      if (v68 <= 0x80)
      {
        v73 = (a3 & 0xFFFFFFFFFFFFFFF8);
        v74 = 8 * (a3 & 7);
        v75 = vzip1q_s64(0, v67);
        v76 = v68 + v74;
        v77 = vaddq_s64(v75, vdupq_n_s64(v74));
        v70 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v77)), vshlq_u64(vdupq_lane_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 0), vnegq_s64(v77)));
        if (v68 + v74 >= 0x81)
        {
          v70 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v73[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v77)), vshlq_u64(vdupq_laneq_s64(v73[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v77))), v70);
        }

        v78 = v76 & 0x3F;
        v79 = (v73 + 8 * (v76 >> 6));
        v80 = vaddq_s64(v75, vdupq_n_s64(v78));
        v81 = v68 + v76;
        v71 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v79, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v80)), vshlq_u64(vdupq_lane_s64(v79->i64[0], 0), vnegq_s64(v80)));
        if (v68 + v78 >= 0x81)
        {
          v71 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v79[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v80)), vshlq_u64(vdupq_laneq_s64(v79[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v80))), v71);
        }

        v82 = v81 & 0x3F;
        v83 = (v73 + 8 * (v81 >> 6));
        v84 = vaddq_s64(v75, vdupq_n_s64(v82));
        v85 = v68 + v81;
        v69 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v83, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v84)), vshlq_u64(vdupq_lane_s64(v83->i64[0], 0), vnegq_s64(v84)));
        if (v68 + v82 >= 0x81)
        {
          v69 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v83[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v84)), vshlq_u64(vdupq_laneq_s64(v83[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v84))), v69);
        }

        v86 = vaddq_s64(v75, vdupq_n_s64(v85 & 0x3F));
        v87 = (v73 + 8 * (v85 >> 6));
        v72 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v87, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v86)), vshlq_u64(vdupq_lane_s64(v87->i64[0], 0), vnegq_s64(v86)));
        if (v68 + (v85 & 0x3F) >= 0x81)
        {
          v72 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v87[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v86)), vshlq_u64(vdupq_laneq_s64(v87[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v86))), v72);
        }
      }

      v88 = vzip1_s32(*v64.i8, *&vextq_s8(v64, v64, 8uLL));
      v89.i64[0] = v88.u32[0];
      v89.i64[1] = v88.u32[1];
      v90 = vnegq_s64(v89);
      v91 = vshlq_u64(v69, v90);
      v92 = vuzp1q_s32(vzip1q_s64(v69, v91), vzip2q_s64(v69, v91));
      v93 = vshrq_n_u32(v92, 0xAuLL);
      v94 = vuzp1q_s16(vzip1q_s32(v92, v93), vzip2q_s32(v92, v93));
      v95 = vshlq_u64(v71, v90);
      v96 = vuzp1q_s32(vzip1q_s64(v71, v95), vzip2q_s64(v71, v95));
      v97 = vshrq_n_u32(v96, 0xAuLL);
      v98 = vuzp1q_s16(vzip1q_s32(v96, v97), vzip2q_s32(v96, v97));
      v99 = vshlq_u64(v70, v90);
      v100 = vuzp1q_s32(vzip1q_s64(v70, v99), vzip2q_s64(v70, v99));
      v101 = vshrq_n_u32(v100, 0xAuLL);
      v102 = vshlq_u64(v72, v90);
      v103 = vuzp1q_s32(vzip1q_s64(v72, v102), vzip2q_s64(v72, v102));
      v104 = vshrq_n_u32(v103, 0xAuLL);
      v105 = vuzp1q_s16(vzip1q_s32(v103, v104), vzip2q_s32(v103, v104));
      v106 = vshlq_n_s16(vuzp1q_s16(vzip1q_s32(v100, v101), vzip2q_s32(v100, v101)), 6uLL);
      v107 = vshlq_n_s16(v98, 6uLL);
      v108 = vshlq_n_s16(v94, 6uLL);
      v109 = vshlq_n_s16(v105, 6uLL);
      *a1 = vuzp1q_s32(v106, v108);
      *(a1 + a2) = vuzp2q_s32(v106, v108);
      v110 = (a1 + 2 * a2);
      *v110 = vuzp1q_s32(v107, v109);
      *(v110 + a2) = vuzp2q_s32(v107, v109);
      return 40;
    }

    if (a4 == 63)
    {
      v10 = *a3;
      v11 = a3[1];
      v12 = a3[2];
      v13 = a3[3];
      *a1 = vuzp1q_s32(*a3, v12);
      *(a1 + a2) = vuzp2q_s32(v10, v12);
      v14 = (a1 + 2 * a2);
      *v14 = vuzp1q_s32(v11, v13);
      *(v14 + a2) = vuzp2q_s32(v11, v13);
      return 64;
    }
  }

  else
  {
    if (!a4)
    {
      v9 = 0;
      a1->i64[0] = 0;
      a1->i64[1] = 0;
      v60 = (a1->i64 + a2);
      *v60 = 0;
      v60[1] = 0;
      v61 = (a1->i64 + 2 * a2);
      *v61 = 0;
      v61[1] = 0;
      v62 = (a1->i64 + 2 * a2 + a2);
LABEL_85:
      *v62 = 0;
      v62[1] = 0;
      return v9;
    }

    if (a4 == 1)
    {
      v8 = vdupq_n_s16(a3->u16[0] << 6);
      *a1 = v8;
      *(a1 + a2) = v8;
      *(a1 + 2 * a2) = v8;
      *(a1 + 3 * a2) = v8;
      return 2;
    }
  }

  v15 = 8 * (a3 & 7);
  v16 = a3 & 0xFFFFFFFFFFFFFFF8;
  v17 = v15 + 16;
  v18 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v15;
  if (v15 >= 0x31)
  {
    v18 |= *(v16 + 8) << (-8 * (a3 & 7u));
  }

  v19 = (8 * (a3 & 7)) | 0x140;
  v20 = ((a4 >> 6) | (4 * v18)) & 0xF;
  v21 = vdupq_n_s16(v20);
  a8.i32[0] = v20;
  v22.i64[0] = 0x3000300030003;
  v22.i64[1] = 0x3000300030003;
  v23 = vbicq_s8(vdupq_n_s16(((v18 >> 2) & 0xF) + 1), vceqq_s16((*&v21 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v22));
  v24 = vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vdup_lane_s16(vand_s8(a8, 0x4000400040004), 0))));
  v25.i64[0] = 0x202020202020202;
  v25.i64[1] = 0x202020202020202;
  v26 = vandq_s8(v24, v25);
  if (vmaxvq_s8(v26) < 1)
  {
    v35 = 0;
    v59.i64[0] = -1;
    v59.i64[1] = -1;
    v55 = v23;
    v54 = v23;
    v53 = v23;
    v58.i64[0] = -1;
    v58.i64[1] = -1;
    v52 = v23;
    v57.i64[0] = -1;
    v57.i64[1] = -1;
    v56.i64[0] = -1;
    v56.i64[1] = -1;
  }

  else
  {
    v27 = vmovl_u8(*&vpaddq_s8(v26, v26));
    v28 = vmovl_u16(*&vpaddq_s16(v27, v27));
    v29 = vpaddq_s32(v28, v28).u64[0];
    v30.i64[0] = v29;
    v30.i64[1] = HIDWORD(v29);
    v31 = v30;
    v32 = vaddvq_s64(v30);
    v33 = v32 + v17;
    v34 = v32 <= 0x80 && v19 >= v33;
    v35 = !v34;
    v36 = 0uLL;
    if (v34)
    {
      v37 = v17 & 0x38;
      v38 = vaddq_s64(vzip1q_s64(0, v31), vdupq_n_s64(v37));
      v39 = (v16 + ((v17 >> 3) & 8));
      v36 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v39, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v38)), vshlq_u64(vdupq_lane_s64(v39->i64[0], 0), vnegq_s64(v38)));
      if (v32 + v37 >= 0x81)
      {
        v36 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v39[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v38)), vshlq_u64(vdupq_laneq_s64(v39[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v38))), v36);
      }

      v17 = v33;
    }

    v40 = vzip1_s32(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
    v41.i64[0] = v40.u32[0];
    v41.i64[1] = v40.u32[1];
    v42 = vshlq_u64(v36, vnegq_s64(v41));
    v43 = vuzp1q_s32(vzip1q_s64(v36, v42), vzip2q_s64(v36, v42));
    v44 = vshlq_u32(v43, vnegq_s32((*&v27 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v45 = vuzp1q_s16(vzip1q_s32(v43, v44), vzip2q_s32(v43, v44));
    v46 = vzip1q_s16(v45, vshlq_u16(v45, vnegq_s16(vmovl_u8(vuzp1_s8(*v26.i8, *v21.i8)))));
    *v46.i8 = vmovn_s16(v46);
    v43.i64[0] = 0x101010101010101;
    v43.i64[1] = 0x101010101010101;
    v47 = vshlq_s8(v43, v26);
    v43.i64[0] = -1;
    v43.i64[1] = -1;
    v47.i32[0] = vandq_s8(vaddq_s8(v47, v43), v46).u32[0];
    v48 = vdupq_n_s16(v47.i8[0]);
    v49 = vdupq_n_s16(v47.i8[1]);
    v50 = vdupq_n_s16(v47.i8[2]);
    v51 = vdupq_n_s16(v47.i8[3]);
    v52 = vsubq_s16(v23, v48);
    v53 = vsubq_s16(v23, v49);
    v54 = vsubq_s16(v23, v50);
    v55 = vsubq_s16(v23, v51);
    v56 = vceqzq_s16(v48);
    v57 = vceqzq_s16(v49);
    v58 = vceqzq_s16(v50);
    v59 = vceqzq_s16(v51);
  }

  v111.i64[0] = 0x7000700070007;
  v111.i64[1] = 0x7000700070007;
  v112 = 0uLL;
  v113 = vandq_s8(vextq_s8(vcgtq_u16(v21, v111), 0, 0xEuLL), v23);
  v114 = vmovl_u16(*&vpaddq_s16(v113, v113));
  v115 = vpaddq_s32(v114, v114).u64[0];
  v116.i64[0] = v115;
  v116.i64[1] = HIDWORD(v115);
  v117 = v116;
  v118 = vaddvq_s64(v116);
  v119 = v118 + v17;
  if (v118 <= 0x80 && v19 >= v119)
  {
    v121 = v17 & 0x3F;
    v122 = vaddq_s64(vzip1q_s64(0, v117), vdupq_n_s64(v121));
    v123 = (v16 + 8 * (v17 >> 6));
    v112 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v123, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v122)), vshlq_u64(vdupq_lane_s64(v123->i64[0], 0), vnegq_s64(v122)));
    if (v118 + v121 >= 0x81)
    {
      v112 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v123[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v122)), vshlq_u64(vdupq_laneq_s64(v123[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v122))), v112);
    }

    v17 = v119;
  }

  else
  {
    v35 = 1;
  }

  v124 = v20 & 3;
  if (v124 == 2)
  {
    if (v19 < v17 + 8)
    {
      v35 = 1;
    }

    else
    {
      v17 += 8;
    }

    v125 = v19 < v17 + 8;
    if (v19 >= v17 + 8)
    {
      v17 += 8;
    }

    v35 |= v125;
  }

  v126 = 0uLL;
  v127 = vextq_s8(0, v52, 0xEuLL);
  v128 = vmovl_u16(*&vpaddq_s16(v127, v127));
  v129 = vpaddq_s32(v128, v128).u64[0];
  v130.i64[0] = v129;
  v130.i64[1] = HIDWORD(v129);
  v131 = v130;
  v132 = vaddvq_s64(v130);
  v133 = v132 + v17;
  if (v132 <= 0x80 && v19 >= v133)
  {
    v136 = v17 & 0x3F;
    v137 = vaddq_s64(vzip1q_s64(0, v131), vdupq_n_s64(v136));
    v138 = (v16 + 8 * (v17 >> 6));
    v135 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v138, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v137)), vshlq_u64(vdupq_lane_s64(v138->i64[0], 0), vnegq_s64(v137)));
    if (v132 + v136 >= 0x81)
    {
      v135 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v138[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v137)), vshlq_u64(vdupq_laneq_s64(v138[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v137))), v135);
    }

    v17 = v133;
  }

  else
  {
    v35 = 1;
    v135 = 0uLL;
  }

  v139.i64[0] = 0xFFFF0000FFFFLL;
  v139.i64[1] = 0xFFFF0000FFFFLL;
  v140 = vmovl_u16(*&vpaddq_s16(v53, v53));
  v141 = vpaddq_s32(v140, v140).u64[0];
  v142.i64[0] = v141;
  v142.i64[1] = HIDWORD(v141);
  v143 = v142;
  v144 = vaddvq_s64(v142);
  if (v144 >= 0x81)
  {
    v35 = 1;
  }

  else
  {
    v145 = vzip1_s32(*v140.i8, *&vextq_s8(v140, v140, 8uLL));
    v146.i64[0] = v145.u32[0];
    v146.i64[1] = v145.u32[1];
    v147 = v146;
    v148 = vandq_s8(v53, v139);
    v149 = v144 + v17;
    if (v19 >= v144 + v17)
    {
      v150 = v17 & 0x3F;
      v151 = vaddq_s64(vzip1q_s64(0, v143), vdupq_n_s64(v150));
      v152 = (v16 + 8 * (v17 >> 6));
      v126 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v152, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v151)), vshlq_u64(vdupq_lane_s64(v152->i64[0], 0), vnegq_s64(v151)));
      if (v144 + v150 >= 0x81)
      {
        v126 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v152[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v151)), vshlq_u64(vdupq_laneq_s64(v152[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v151))), v126);
      }

      v17 = v149;
    }

    else
    {
      v35 = 1;
    }

    v153 = vshlq_u64(v126, vnegq_s64(v147));
    v154 = vuzp1q_s32(vzip1q_s64(v126, v153), vzip2q_s64(v126, v153));
    v155 = vshlq_u32(v154, vnegq_s32(v148));
    v126 = vuzp1q_s16(vzip1q_s32(v154, v155), vzip2q_s32(v154, v155));
  }

  v156 = vmovl_u16(*&vpaddq_s16(v54, v54));
  v157 = vpaddq_s32(v156, v156).u64[0];
  v158.i64[0] = v157;
  v158.i64[1] = HIDWORD(v157);
  v159 = v158;
  v160 = vaddvq_s64(v158);
  if (v160 >= 0x81)
  {
    v35 = 1;
    v167 = 0uLL;
  }

  else
  {
    v161 = vzip1_s32(*v156.i8, *&vextq_s8(v156, v156, 8uLL));
    v162.i64[0] = v161.u32[0];
    v162.i64[1] = v161.u32[1];
    v163 = v162;
    v164 = vandq_s8(v54, v139);
    v165 = v160 + v17;
    if (v19 >= v160 + v17)
    {
      v168 = v17 & 0x3F;
      v169 = vaddq_s64(vzip1q_s64(0, v159), vdupq_n_s64(v168));
      v170 = (v16 + 8 * (v17 >> 6));
      v166 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v170, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v169)), vshlq_u64(vdupq_lane_s64(v170->i64[0], 0), vnegq_s64(v169)));
      if (v160 + v168 >= 0x81)
      {
        v166 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v170[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v169)), vshlq_u64(vdupq_laneq_s64(v170[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v169))), v166);
      }

      v17 = v165;
    }

    else
    {
      v166 = 0uLL;
      v35 = 1;
    }

    v171 = vshlq_u64(v166, vnegq_s64(v163));
    v172 = vuzp1q_s32(vzip1q_s64(v166, v171), vzip2q_s64(v166, v171));
    v173 = vshlq_u32(v172, vnegq_s32(v164));
    v167 = vuzp1q_s16(vzip1q_s32(v172, v173), vzip2q_s32(v172, v173));
  }

  v174 = vmovl_u16(*&vpaddq_s16(v55, v55));
  v175 = vpaddq_s32(v174, v174).u64[0];
  v176.i64[0] = v175;
  v176.i64[1] = HIDWORD(v175);
  v177 = v176;
  v178 = vaddvq_s64(v176);
  if (v178 >= 0x81 || v19 < v178 + v17)
  {
    goto LABEL_80;
  }

  v179 = vaddq_s64(vzip1q_s64(0, v177), vdupq_n_s64(v17 & 0x3F));
  v180 = (v16 + 8 * (v17 >> 6));
  v181 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v180, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v179)), vshlq_u64(vdupq_lane_s64(v180->i64[0], 0), vnegq_s64(v179)));
  if (v178 + (v17 & 0x3F) >= 0x81)
  {
    v181 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v180[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v179)), vshlq_u64(vdupq_laneq_s64(v180[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v179))), v181);
  }

  if ((v35 & 1) != 0 || (v9 = (a4 & 0x3Fu) + 1, 8 * ((a3 & 7) + v9) - (v178 + v17) >= 9))
  {
LABEL_80:
    v182 = 0;
    v183 = 0;
    v184 = 8 * (&v252 & 7);
    v185 = 10;
    do
    {
      v186 = 64 - v184;
      if (64 - v184 >= v185)
      {
        v186 = v185;
      }

      *&v251[8 * v182] |= ((0xFFFFFFFFFFFFFFFFLL >> v183) & ~(-1 << v186)) << v184;
      v183 += v186;
      v187 = v186 + v184;
      v182 += v187 >> 6;
      v184 = v187 & 0x3F;
      v185 -= v186;
    }

    while (v185);
LABEL_84:
    v9 = 0;
    v188 = (a1->i64 + a2);
    a1->i64[0] = 0;
    a1->i64[1] = 0;
    v189 = (a1->i64 + 2 * a2);
    *v188 = 0;
    v188[1] = 0;
    v62 = (a1->i64 + 2 * a2 + a2);
    *v189 = 0;
    v189[1] = 0;
    goto LABEL_85;
  }

  if (v124 == 2)
  {
    v191 = 0;
    v192 = 0;
    v193 = 8 * (&v253 & 7);
    v194 = 10;
    do
    {
      v195 = 64 - v193;
      if (64 - v193 >= v194)
      {
        v195 = v194;
      }

      *&v251[8 * v191] |= ((0xFFFFFFFFFFFFFFFFLL >> v192) & ~(-1 << v195)) << v193;
      v192 += v195;
      v196 = v195 + v193;
      v191 += v196 >> 6;
      v193 = v196 & 0x3F;
      v194 -= v195;
    }

    while (v194);
    goto LABEL_84;
  }

  v197 = vzip1_s32(*v114.i8, *&vextq_s8(v114, v114, 8uLL));
  v198 = vzip1_s32(*v128.i8, *&vextq_s8(v128, v128, 8uLL));
  v199.i64[0] = v197.u32[0];
  v199.i64[1] = v197.u32[1];
  v200 = v199;
  v199.i64[0] = v198.u32[0];
  v199.i64[1] = v198.u32[1];
  v201 = vshlq_u64(v112, vnegq_s64(v200));
  v202 = vshlq_u64(v135, vnegq_s64(v199));
  v203 = vuzp1q_s32(vzip1q_s64(v112, v201), vzip2q_s64(v112, v201));
  v204 = vuzp1q_s32(vzip1q_s64(v135, v202), vzip2q_s64(v135, v202));
  v205 = vshlq_u32(v203, vnegq_s32((*&v113 & __PAIR128__(0xFFE0FFFFFFE0FFFFLL, 0xFFE0FFFFFFE0FFFFLL))));
  v206 = vshlq_u32(v204, vnegq_s32(vandq_s8(v127, v139)));
  v207 = vzip2q_s32(v203, v205);
  v208 = vzip1q_s32(v203, v205);
  v205.i64[0] = 0x10001000100010;
  v205.i64[1] = 0x10001000100010;
  v209 = vzip2q_s32(v204, v206);
  v210 = vzip1q_s32(v204, v206);
  v206.i64[0] = 0x10001000100010;
  v206.i64[1] = 0x10001000100010;
  v211 = vuzp1q_s16(v208, v207);
  v207.i64[0] = 0xF000F000F000FLL;
  v207.i64[1] = 0xF000F000F000FLL;
  v212 = vuzp1q_s16(v210, v209);
  v209.i64[0] = 0xF000F000F000FLL;
  v209.i64[1] = 0xF000F000F000FLL;
  v213 = vzip1_s32(*v174.i8, *&vextq_s8(v174, v174, 8uLL));
  v214.i64[0] = 0xFFFF0000FFFFLL;
  v214.i64[1] = 0xFFFF0000FFFFLL;
  v215.i64[0] = 0xF000F000F000FLL;
  v215.i64[1] = 0xF000F000F000FLL;
  v216.i64[0] = 0x10001000100010;
  v216.i64[1] = 0x10001000100010;
  v217 = vshlq_s16(v211, vsubq_s16(v205, v113));
  v218 = vaddq_s16(v127, v209);
  v219 = vshlq_s16(v212, vsubq_s16(v206, v127));
  v220 = vshlq_s16(v126, vsubq_s16(v206, v53));
  v221 = vshlq_s16(v167, vsubq_s16(v206, v54));
  v199.i64[0] = v213.u32[0];
  v199.i64[1] = v213.u32[1];
  v222 = vandq_s8(v55, v214);
  v223 = vaddq_s16(v55, v215);
  v224 = vsubq_s16(v216, v55);
  v225 = vdupq_n_s16(v18 >> 6);
  v226 = vshlq_s16(v217, vaddq_s16(v113, v207));
  v227 = vshlq_s16(v219, v218);
  v228 = vshlq_u64(v181, vnegq_s64(v199));
  v229 = vuzp1q_s32(vzip1q_s64(v181, v228), vzip2q_s64(v181, v228));
  v230 = vshlq_u32(v229, vnegq_s32(v222));
  v231 = vaddq_s16(vandq_s8(v226, v56), v227);
  v232 = vdupq_lane_s16(*v226.i8, 0);
  v233 = vsubq_s16(v231, vandq_s8(v232, v56));
  v234 = vsubq_s16(vshlq_s16(v220, vaddq_s16(v53, v209)), vandq_s8(v232, v57));
  v235 = vsubq_s16(vshlq_s16(v221, vaddq_s16(v54, v209)), vandq_s8(v232, v58));
  v236 = vsubq_s16(vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v229, v230), vzip2q_s32(v229, v230)), v224), v223), vandq_s8(v232, v59));
  v237.i64[0] = 0x1000100010001;
  v237.i64[1] = 0x1000100010001;
  if (vaddvq_s16(vceqq_s16((*&v21 & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v237)))
  {
    v238 = *&v21 & __PAIR128__(0xFFF1FFF1FFF1FFF1, 0xFFF1FFF1FFF1FFF1);
    v239 = vnegq_s16(v238);
    v240 = v233;
    v240.i16[0] = v233.i16[7];
    v240.i16[7] = v233.i16[0];
    v241 = vorrq_s8(vandq_s8(v240, v239), vandq_s8(v233, vceqzq_s16(v238)));
    v242 = vaddq_s16(v241, vandq_s8(vqtbl1q_s8(v241, xmmword_29D2F0E60), v239));
    v233 = vaddq_s16(v242, vandq_s8(vqtbl1q_s8(v242, xmmword_29D2F0E70), v239));
    v243 = vaddq_s16(vandq_s8(vqtbl1q_s8(v234, xmmword_29D2F0E80), v239), v234);
    v234 = vaddq_s16(vandq_s8(vqtbl1q_s8(v243, xmmword_29D2F0E90), v239), v243);
    v244 = vaddq_s16(vandq_s8(vqtbl1q_s8(v235, xmmword_29D2F0EA0), v239), v235);
    v235 = vaddq_s16(vandq_s8(vqtbl1q_s8(v244, xmmword_29D2F0EB0), v239), v244);
    v245 = vaddq_s16(vandq_s8(vqtbl1q_s8(v236, xmmword_29D2F0EC0), v239), v236);
    v236 = vaddq_s16(vandq_s8(vqtbl1q_s8(v245, xmmword_29D2F0ED0), v239), v245);
  }

  v246 = vshlq_n_s16(vaddq_s16(v225, v233), 6uLL);
  v247 = vshlq_n_s16(vaddq_s16(v234, v225), 6uLL);
  v248 = vshlq_n_s16(vaddq_s16(v235, v225), 6uLL);
  v249 = vshlq_n_s16(vaddq_s16(v236, v225), 6uLL);
  *a1 = vuzp1q_s32(v246, v248);
  *(a1 + a2) = vuzp2q_s32(v246, v248);
  v250 = (a1 + 2 * a2);
  *v250 = vuzp1q_s32(v247, v249);
  *(v250 + a2) = vuzp2q_s32(v247, v249);
  return v9;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>::compressSubblock(unint64_t a1, char *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, int16x4_t a14)
{
  v15 = *(a3 + a4);
  v16 = (a3 + 2 * a4);
  v17 = *(v16 + a4);
  v18 = vshrq_n_s16(vzip1q_s32(*a3, v15), 6uLL);
  v19 = vshrq_n_s16(vzip1q_s32(*v16, v17), 6uLL);
  v20 = vshrq_n_s16(vzip2q_s32(*a3, v15), 6uLL);
  v21 = vshrq_n_s16(vzip2q_s32(*v16, v17), 6uLL);
  v22 = vdupq_lane_s16(*v18.i8, 0);
  v23 = vshlq_n_s16(vsubq_s16(v19, v22), 6uLL);
  v24 = vshlq_n_s16(vsubq_s16(v21, v22), 6uLL);
  v25 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v18, v22), 6uLL), 6uLL);
  v26 = vshrq_n_s16(v23, 6uLL);
  v27 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v20, v22), 6uLL), 6uLL);
  v28 = vshrq_n_s16(v24, 6uLL);
  v23.i16[0] = vmaxvq_s16(v25);
  v29 = vdupq_lane_s16(*v23.i8, 0);
  v24.i16[0] = vminvq_s16(v25);
  v30 = vdupq_lane_s16(*v24.i8, 0);
  v31.i64[0] = 0x8000800080008000;
  v31.i64[1] = 0x8000800080008000;
  v32 = vmaxq_s16(v29, v31);
  v33.i64[0] = 0x8000800080008000;
  v33.i64[1] = 0x8000800080008000;
  v34 = vminq_s16(v30, v33);
  v35 = vzip1q_s16(v29, v30);
  v36.i64[0] = 0x10001000100010;
  v36.i64[1] = 0x10001000100010;
  v37 = vsubq_s16(v36, vclsq_s16(v35));
  v38 = vbicq_s8(v37, vceqzq_s16(v35));
  v39 = vpmaxq_s16(v38, v38);
  v37.i16[0] = vmaxvq_s16(v26);
  a14.i16[0] = vminvq_s16(v26);
  v40 = vdupq_lane_s16(*v37.i8, 0);
  v41 = vdupq_lane_s16(a14, 0);
  v42 = vmaxq_s16(v32, v40);
  v43 = vminq_s16(v34, v41);
  v44 = vzip1q_s16(v40, v41);
  v45 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v44)), vceqzq_s16(v44));
  v46 = vpmaxq_s16(v45, v45);
  v45.i16[0] = vmaxvq_s16(v27);
  v41.i16[0] = vminvq_s16(v27);
  v47 = vdupq_lane_s16(*v45.i8, 0);
  v48 = vdupq_lane_s16(*v41.i8, 0);
  v49 = vmaxq_s16(v42, v47);
  v50 = vminq_s16(v43, v48);
  v51 = vzip1q_s16(v47, v48);
  v52 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v51)), vceqzq_s16(v51));
  v53 = vpmaxq_s16(v52, v52);
  v52.i16[0] = vmaxvq_s16(v28);
  v14.i16[0] = vminvq_s16(v28);
  v54 = vdupq_lane_s16(*v52.i8, 0);
  v55 = vdupq_lane_s16(v14, 0);
  v56 = vmaxq_s16(v49, v54);
  v57 = vminq_s16(v50, v55);
  v58 = vzip1q_s16(v54, v55);
  v59 = vbicq_s8(vsubq_s16(v36, vclsq_s16(v58)), vceqzq_s16(v58));
  v60 = vpmaxq_s16(v59, v59);
  v61 = vmaxq_s16(vmaxq_s16(v39, v46), vmaxq_s16(v53, v60));
  v62 = vclzq_s16(vsubq_s16(v56, v57));
  v63 = vsubq_s16(v36, v62);
  v64 = vminq_s16(v63, v61);
  if (vmaxvq_s16(v64))
  {
    v65.i64[0] = -1;
    v65.i64[1] = -1;
    v66.i64[0] = 0xF000F000F000FLL;
    v66.i64[1] = 0xF000F000F000FLL;
    v67 = vcgtq_s16(v61, v63);
    v68 = vandq_s8(vsubq_s16(vshlq_s16(v65, vsubq_s16(v66, v62)), v57), v67);
    v69.i64[0] = 0x8000800080008;
    v69.i64[1] = 0x8000800080008;
    v65.i64[0] = 0x3000300030003;
    v65.i64[1] = 0x3000300030003;
    v70 = vandq_s8(vceqzq_s16(v64), v65);
    v71 = vmaxq_s16(vminq_s16(vsubq_s16(v64, v39), v65), 0);
    v72 = vmaxq_s16(vminq_s16(vsubq_s16(v64, v46), v65), 0);
    v73 = vmaxq_s16(vminq_s16(vsubq_s16(v64, v53), v65), 0);
    v74 = vmaxq_s16(vminq_s16(vsubq_s16(v64, v60), v65), 0);
    v75 = vsubq_s16(v64, v71);
    v76 = vsubq_s16(v64, v72);
    v77 = vsubq_s16(v64, v73);
    v78 = vsubq_s16(v64, v74);
    v79 = vceqq_s16(vaddq_s16(v74, v73), vnegq_s16(vaddq_s16(v71, v72)));
    v74.i64[0] = 0x4000400040004;
    v74.i64[1] = 0x4000400040004;
    v80 = vbicq_s8(v74, v79);
    v81 = vorrq_s8(vorrq_s8(v70, vandq_s8(v67, v69)), v80);
    if (a5 >= 4 && a6 >= 2)
    {
      v329 = v68;
      v330 = v27;
      v331 = v28;
      v82 = vsubq_s16(v18, vqtbl1q_s8(v18, xmmword_29D2F0F00));
      v83 = v78;
      v84 = v19;
      v84.i16[7] = v18.i16[7];
      v85 = v20;
      v85.i16[7] = v18.i16[7];
      v86 = v21;
      v86.i16[7] = v18.i16[7];
      v87 = v82;
      v87.i16[0] = v82.i16[7];
      v87.i16[7] = v82.i16[0];
      v88 = vshrq_n_s16(vshlq_n_s16(v87, 6uLL), 6uLL);
      v89 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v19, vqtbl1q_s8(v84, xmmword_29D2F0F10)), 6uLL), 6uLL);
      v90 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v20, vqtbl1q_s8(v85, xmmword_29D2F0F20)), 6uLL), 6uLL);
      v91 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v21, vqtbl1q_s8(v86, xmmword_29D2F0F30)), 6uLL), 6uLL);
      v87.i16[0] = vmaxvq_s16(v88);
      v28.i16[0] = vminvq_s16(v88);
      v92 = vdupq_lane_s16(*v87.i8, 0);
      v93 = vdupq_lane_s16(*v28.i8, 0);
      v94.i64[0] = 0x8000800080008000;
      v94.i64[1] = 0x8000800080008000;
      v95 = vmaxq_s16(v92, v94);
      v94.i64[0] = 0x8000800080008000;
      v94.i64[1] = 0x8000800080008000;
      v96 = vminq_s16(v93, v94);
      v97 = vzip1q_s16(v92, v93);
      v98.i64[0] = 0x10001000100010;
      v98.i64[1] = 0x10001000100010;
      v99 = vsubq_s16(v98, vclsq_s16(v97));
      v100 = vbicq_s8(v99, vceqzq_s16(v97));
      v101 = vpmaxq_s16(v100, v100);
      v100.i16[0] = vmaxvq_s16(v89);
      v99.i16[0] = vminvq_s16(v89);
      v102 = vdupq_lane_s16(*v100.i8, 0);
      v103 = vdupq_lane_s16(*v99.i8, 0);
      v104 = vmaxq_s16(v95, v102);
      v105 = vminq_s16(v96, v103);
      v106 = vzip1q_s16(v102, v103);
      v107 = vsubq_s16(v98, vclsq_s16(v106));
      v108 = vbicq_s8(v107, vceqzq_s16(v106));
      v109 = vpmaxq_s16(v108, v108);
      v108.i16[0] = vmaxvq_s16(v90);
      v107.i16[0] = vminvq_s16(v90);
      v110 = vdupq_lane_s16(*v108.i8, 0);
      v111 = vdupq_lane_s16(*v107.i8, 0);
      v112 = vmaxq_s16(v104, v110);
      v113 = vminq_s16(v105, v111);
      v114 = vzip1q_s16(v110, v111);
      v115 = vsubq_s16(v98, vclsq_s16(v114));
      v116 = vbicq_s8(v115, vceqzq_s16(v114));
      v117 = vpmaxq_s16(v116, v116);
      v116.i16[0] = vmaxvq_s16(v91);
      v115.i16[0] = vminvq_s16(v91);
      v118 = vdupq_lane_s16(*v116.i8, 0);
      v119 = vdupq_lane_s16(*v115.i8, 0);
      v120 = vmaxq_s16(v112, v118);
      v121 = vminq_s16(v113, v119);
      v122 = vzip1q_s16(v118, v119);
      v123 = vbicq_s8(vsubq_s16(v98, vclsq_s16(v122)), vceqzq_s16(v122));
      v124 = vpmaxq_s16(v123, v123);
      v125 = vmaxq_s16(vmaxq_s16(v101, v109), vmaxq_s16(v117, v124));
      v126 = vclzq_s16(vsubq_s16(v120, v121));
      v127 = vsubq_s16(v98, v126);
      v128 = vcgtq_s16(v125, v127);
      v129 = vminq_s16(v127, v125);
      v130 = vsubq_s16(v129, v101);
      v101.i64[0] = 0x3000300030003;
      v101.i64[1] = 0x3000300030003;
      v131 = vmaxq_s16(vminq_s16(v130, v101), 0);
      v132 = vmaxq_s16(vminq_s16(vsubq_s16(v129, v109), v101), 0);
      v133 = vmaxq_s16(vminq_s16(vsubq_s16(v129, v117), v101), 0);
      v134 = vmaxq_s16(vminq_s16(vsubq_s16(v129, v124), v101), 0);
      v135 = vsubq_s16(v129, v131);
      v136 = vsubq_s16(v129, v132);
      v137 = vsubq_s16(v129, v133);
      v138 = vsubq_s16(v129, v134);
      v139 = vceqq_s16(vaddq_s16(v134, v133), vnegq_s16(vaddq_s16(v131, v132)));
      v131.i64[0] = 0x4000400040004;
      v131.i64[1] = 0x4000400040004;
      v140 = vbicq_s8(v131, v139);
      v134.i64[0] = 0x7000700070007;
      v134.i64[1] = 0x7000700070007;
      v141 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v64, v67), vaddq_s16(v80, v80)), v75, v134), vshlq_n_s16(vaddq_s16(vaddq_s16(v77, v76), v83), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v129, v128), vaddq_s16(v140, v140)), v135, v134), vshlq_n_s16(vaddq_s16(vaddq_s16(v137, v136), v138), 3uLL))), 0);
      if (vaddvq_s16(v141))
      {
        v142.i64[0] = 0x2000200020002;
        v142.i64[1] = 0x2000200020002;
        v143 = vandq_s8(vceqzq_s16(v129), v142);
        v142.i64[0] = 0x9000900090009;
        v142.i64[1] = 0x9000900090009;
        v144.i64[0] = -1;
        v144.i64[1] = -1;
        v145 = vorrq_s8(vorrq_s8(v143, vsubq_s16(vandq_s8(v128, v142), vmvnq_s8(v128))), v140);
        v142.i64[0] = 0xF000F000F000FLL;
        v142.i64[1] = 0xF000F000F000FLL;
        v146 = vandq_s8(vsubq_s16(vshlq_s16(v144, vsubq_s16(v142, v126)), v121), v128);
        v147 = vcltzq_s16(vshlq_n_s16(v141, 0xFuLL));
        v22.i16[0] = vbslq_s8(v147, vextq_s8(v18, v18, 0xEuLL), v22).u16[0];
        v25 = vbslq_s8(v147, v88, v25);
        v26 = vbslq_s8(v147, v89, v26);
        v27 = vbslq_s8(v147, v90, v330);
        v28 = vbslq_s8(v147, v91, v331);
        v75 = vbslq_s8(v147, v135, v75);
        v76 = vbslq_s8(v147, v136, v76);
        v77 = vbslq_s8(v147, v137, v77);
        v78 = vbslq_s8(v147, v138, v83);
        v68 = vbslq_s8(v147, v146, v329);
        v64 = vbslq_s8(v147, v129, v64);
        v81 = vbslq_s8(v147, v145, v81);
      }

      else
      {
        v27 = v330;
        v28 = v331;
        v78 = v83;
        v68 = v329;
      }
    }

    v150.i64[0] = 0x8000800080008;
    v150.i64[1] = 0x8000800080008;
    v151 = vandq_s8(v81, v150);
    v152.i64[0] = 0x3000300030003;
    v152.i64[1] = 0x3000300030003;
    v153.i64[0] = 0x2000200020002;
    v153.i64[1] = 0x2000200020002;
    v154 = vceqq_s16(vandq_s8(v81, v152), v153);
    v153.i64[0] = 0x10001000100010;
    v153.i64[1] = 0x10001000100010;
    v155 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v156 = 8 * (a1 & 7);
    if (((vbicq_s8(v64, vceqzq_s16(v151)).u16[0] + ((2 * v81.i16[0]) & 8) + vandq_s8(v154, v153).u16[0] - v75.i16[0] + 8 * v75.i16[0] + 8 * vaddq_s16(vaddq_s16(v77, v76), v78).u16[0]) + 23) >= 0x140)
    {
      if (v156)
      {
        v158 = *v155 & ~(-1 << v156);
      }

      else
      {
        v158 = 0;
      }

      v285 = vpaddq_s32(vshlq_u32(vmovl_u16((v18.i64[0] & 0x3FF03FF03FF03FFLL)), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16((*&v18 & __PAIR128__(0x3FF03FF03FF03FFLL, 0x3FF03FF03FF03FFLL))), xmmword_29D2F1480));
      v286.i64[0] = 0xA0000000ALL;
      v286.i64[1] = 0xA0000000ALL;
      v287 = vpaddq_s32(v286, v286);
      v288.i64[0] = v285.u32[0];
      v288.i64[1] = v285.u32[1];
      v289 = v288;
      v288.i64[0] = v285.u32[2];
      v288.i64[1] = v285.u32[3];
      v290 = v288;
      v288.i64[0] = v287.u32[0];
      v288.i64[1] = v287.u32[1];
      v291 = v288;
      v288.i64[0] = v287.u32[2];
      v288.i64[1] = v287.u32[3];
      v292 = vzip1q_s64(0, v291);
      v293 = vzip1q_s64(0, v288);
      v294 = vpaddq_s64(vshlq_u64(v289, v292), vshlq_u64(v290, v293));
      v295 = vpaddq_s64(v291, v288);
      v296 = v294.u64[1];
      v297 = v295.i64[1];
      v298 = v295.i64[0];
      v299 = v295.i64[0] + v156;
      v300 = (v294.i64[0] << v156) | v158;
      if (v295.i64[0] + v156 >= 0x40)
      {
        *v155 = v300;
        v300 = v294.i64[0] >> (-8 * (a1 & 7u));
        if (!v156)
        {
          v300 = 0;
        }
      }

      v301.i64[0] = 0xFC00FC00FC00FC00;
      v301.i64[1] = 0xFC00FC00FC00FC00;
      v302 = v300 | (v296 << v299);
      if ((v299 & 0x3F) + v295.i64[1] >= 0x40)
      {
        *(v155 + ((v299 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v302;
        v302 = v296 >> -(v299 & 0x3F);
        if ((v299 & 0x3F) == 0)
        {
          v302 = 0;
        }
      }

      v303 = v299 + v295.i64[1];
      v304 = vandq_s8(v301, v19);
      v305 = vpaddq_s32(vshlq_u32(vmovl_u16(*v304.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v304), xmmword_29D2F1480));
      v306.i64[0] = v305.u32[0];
      v306.i64[1] = v305.u32[1];
      v307 = v306;
      v306.i64[0] = v305.u32[2];
      v306.i64[1] = v305.u32[3];
      v308 = vpaddq_s64(vshlq_u64(v307, v292), vshlq_u64(v306, v293));
      v309 = (v308.i64[0] << v303) | v302;
      if (v298 + (v303 & 0x3F) >= 0x40)
      {
        *(v155 + ((v303 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v309;
        v309 = v308.i64[0] >> -(v303 & 0x3F);
        if ((v303 & 0x3F) == 0)
        {
          v309 = 0;
        }
      }

      v310 = v298 + v303;
      v311 = v309 | (v308.i64[1] << v310);
      if ((v310 & 0x3F) + v297 >= 0x40)
      {
        *(v155 + ((v310 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v311;
        if ((v310 & 0x3F) != 0)
        {
          v311 = v308.i64[1] >> -(v310 & 0x3F);
        }

        else
        {
          v311 = 0;
        }
      }

      v312 = v310 + v297;
      v313 = vandq_s8(v301, v20);
      v314 = vpaddq_s32(vshlq_u32(vmovl_u16(*v313.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v313), xmmword_29D2F1480));
      v315.i64[0] = v314.u32[0];
      v315.i64[1] = v314.u32[1];
      v316 = v315;
      v315.i64[0] = v314.u32[2];
      v315.i64[1] = v314.u32[3];
      v317 = vpaddq_s64(vshlq_u64(v316, v292), vshlq_u64(v315, v293));
      v318 = (v317.i64[0] << v312) | v311;
      if (v298 + (v312 & 0x3F) >= 0x40)
      {
        *(v155 + ((v312 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v318;
        v318 = v317.i64[0] >> -(v312 & 0x3F);
        if ((v312 & 0x3F) == 0)
        {
          v318 = 0;
        }
      }

      v319 = v298 + v312;
      v320 = v318 | (v317.i64[1] << v319);
      if ((v319 & 0x3F) + v297 >= 0x40)
      {
        *(v155 + ((v319 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v320;
        if ((v319 & 0x3F) != 0)
        {
          v320 = v317.i64[1] >> -(v319 & 0x3F);
        }

        else
        {
          v320 = 0;
        }
      }

      v321 = v319 + v297;
      v322 = vandq_s8(v301, v21);
      v323 = vpaddq_s32(vshlq_u32(vmovl_u16(*v322.i8), xmmword_29D2F1480), vshlq_u32(vmovl_high_u16(v322), xmmword_29D2F1480));
      v324.i64[0] = v323.u32[0];
      v324.i64[1] = v323.u32[1];
      v325 = v324;
      v324.i64[0] = v323.u32[2];
      v324.i64[1] = v323.u32[3];
      v326 = vpaddq_s64(vshlq_u64(v325, v292), vshlq_u64(v324, v293));
      v327 = (v326.i64[0] << v321) | v320;
      if (v298 + (v321 & 0x3F) >= 0x40)
      {
        *(v155 + ((v321 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v327;
        v327 = v326.i64[0] >> -(v321 & 0x3F);
        if ((v321 & 0x3F) == 0)
        {
          v327 = 0;
        }
      }

      v328 = v298 + v321;
      if ((v328 & 0x3F) + v297 >= 0x40)
      {
        *(v155 + ((v328 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v327 | (v326.i64[1] << (v328 & 0x3F));
      }

      v148 = 39;
      result = 40;
    }

    else
    {
      if (v156)
      {
        v157 = *v155 & ~(-1 << v156);
      }

      else
      {
        v157 = 0;
      }

      if (v64.i16[0])
      {
        v159 = (16 * v64.i8[0] - 16) & 0xF0;
      }

      else
      {
        v159 = 0;
      }

      *a2 = v81.i8[0] << 6;
      v160 = (v159 & 0xFFFFFFFFFFFFFFF0 | ((v22.i16[0] & 0x3FF) << 8) | v81.i8[0] & 0xF) >> 2;
      v161 = (v160 << v156) | v157;
      if (v156 >= 0x30)
      {
        *v155 = v161;
        v161 = v160 >> (-8 * (a1 & 7u));
      }

      v162 = v156 + 16;
      v163 = vsubq_s16(v64, v75);
      v164 = vsubq_s16(v64, v76);
      v165 = vsubq_s16(v64, v77);
      v166 = vsubq_s16(v64, v78);
      *v163.i8 = vqmovn_u16(v163);
      *v164.i8 = vqmovn_u16(v164);
      *v165.i8 = vqmovn_u16(v165);
      *v166.i8 = vqmovn_u16(v166);
      v163.i32[0] = vzip1q_s16(vzip1q_s8(v163, v164), vzip1q_s8(v165, v166)).u32[0];
      v165.i64[0] = 0x202020202020202;
      v165.i64[1] = 0x202020202020202;
      v167 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v81.i8, 0x4000400040004)))), v165);
      v165.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v165.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v166.i64[0] = -1;
      v166.i64[1] = -1;
      v168 = vandq_s8(vshlq_u8(v166, vorrq_s8(v167, v165)), v163.u32[0]);
      v169 = vmovl_u8(*v167.i8);
      v170 = vpaddq_s16(vshlq_u16(vmovl_u8(*v168.i8), vtrn1q_s16(0, v169)), vmovl_high_u8(v168));
      v171 = vpaddq_s16(v169, vmovl_high_u8(v167));
      v172 = vmovl_u16(*v171.i8);
      v173 = vmovl_high_u16(v171);
      v174 = vpaddq_s32(vshlq_u32(vmovl_u16(*v170.i8), vtrn1q_s32(0, v172)), vshlq_u32(vmovl_high_u16(v170), vtrn1q_s32(0, v173)));
      v175 = vpaddq_s32(v172, v173);
      v176.i64[0] = v174.u32[0];
      v176.i64[1] = v174.u32[1];
      v177 = v176;
      v176.i64[0] = v174.u32[2];
      v176.i64[1] = v174.u32[3];
      v178 = v176;
      v176.i64[0] = v175.u32[0];
      v176.i64[1] = v175.u32[1];
      v179 = v176;
      v176.i64[0] = v175.u32[2];
      v176.i64[1] = v175.u32[3];
      v180 = vpaddq_s64(vshlq_u64(v177, vzip1q_s64(0, v179)), vshlq_u64(v178, vzip1q_s64(0, v176)));
      v181 = vpaddq_s64(v179, v176);
      v182 = (v156 + 16) & 0x38;
      v183 = (v180.i64[0] << v182) | v161;
      if ((v181.i64[0] + v182) >= 0x40)
      {
        *(v155 + ((v162 >> 3) & 8)) = v183;
        v183 = v180.i64[0] >> -v182;
        if (!v182)
        {
          v183 = 0;
        }
      }

      v184 = vceqq_s16(v64, v75);
      v185 = v181.i64[0] + v162;
      v186 = v183 | (v180.i64[1] << v185);
      if ((v185 & 0x3F) + v181.i64[1] >= 0x40)
      {
        *(v155 + ((v185 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v186;
        v186 = v180.i64[1] >> -(v185 & 0x3F);
        if ((v185 & 0x3F) == 0)
        {
          v186 = 0;
        }
      }

      v187 = vandq_s8(v68, v184);
      v188 = v185 + v181.i64[1];
      v189.i64[0] = -1;
      v189.i64[1] = -1;
      v190 = vandq_s8(vextq_s8(vtstq_s16(v151, v151), 0, 0xEuLL), v64);
      v191.i64[0] = 0xF000F000F000FLL;
      v191.i64[1] = 0xF000F000F000FLL;
      v192 = vandq_s8(vshlq_u16(v189, vaddq_s16(v190, v191)), v68);
      v193 = vmovl_u16(*v190.i8);
      v194 = vpaddq_s32(vshlq_u32(vmovl_u16(*v192.i8), vtrn1q_s32(0, v193)), vmovl_high_u16(v192));
      v195 = vpaddq_s32(v193, vmovl_high_u16(v190));
      v196.i64[0] = v194.u32[0];
      v196.i64[1] = v194.u32[1];
      v197 = v196;
      v196.i64[0] = v194.u32[2];
      v196.i64[1] = v194.u32[3];
      v198 = v196;
      v196.i64[0] = v195.u32[0];
      v196.i64[1] = v195.u32[1];
      v199 = v196;
      v196.i64[0] = v195.u32[2];
      v196.i64[1] = v195.u32[3];
      v200 = vpaddq_s64(vshlq_u64(v197, vzip1q_s64(0, v199)), vshlq_u64(v198, vzip1q_s64(0, v196)));
      v201 = vpaddq_s64(v199, v196);
      v202 = (v200.i64[0] << v188) | v186;
      if (v201.i64[0] + (v188 & 0x3F) >= 0x40)
      {
        *(v155 + ((v188 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v202;
        v202 = v200.i64[0] >> -(v188 & 0x3F);
        if ((v188 & 0x3F) == 0)
        {
          v202 = 0;
        }
      }

      v203 = vceqq_s16(v64, v76);
      v204 = vaddq_s16(v187, v25);
      v205 = v201.i64[0] + v188;
      v206 = v202 | (v200.i64[1] << v205);
      if ((v205 & 0x3F) + v201.i64[1] >= 0x40)
      {
        *(v155 + ((v205 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v206;
        v206 = v200.i64[1] >> -(v205 & 0x3F);
        if ((v205 & 0x3F) == 0)
        {
          v206 = 0;
        }
      }

      v207 = vandq_s8(v68, v203);
      v208 = v205 + v201.i64[1];
      v209 = vextq_s8(0, v75, 0xEuLL);
      v210.i64[0] = 0xF000F000F000FLL;
      v210.i64[1] = 0xF000F000F000FLL;
      v211.i64[0] = -1;
      v211.i64[1] = -1;
      v212 = vandq_s8(vshlq_u16(v211, vaddq_s16(v209, v210)), v204);
      v213 = vmovl_u16(*v209.i8);
      v214 = vmovl_high_u16(v209);
      v215 = vpaddq_s32(vshlq_u32(vmovl_u16(*v212.i8), vtrn1q_s32(0, v213)), vshlq_u32(vmovl_high_u16(v212), vtrn1q_s32(0, v214)));
      v216 = vpaddq_s32(v213, v214);
      v217.i64[0] = v215.u32[0];
      v217.i64[1] = v215.u32[1];
      v218 = v217;
      v217.i64[0] = v215.u32[2];
      v217.i64[1] = v215.u32[3];
      v219 = v217;
      v217.i64[0] = v216.u32[0];
      v217.i64[1] = v216.u32[1];
      v220 = v217;
      v217.i64[0] = v216.u32[2];
      v217.i64[1] = v216.u32[3];
      v221 = vpaddq_s64(vshlq_u64(v218, vzip1q_s64(0, v220)), vshlq_u64(v219, vzip1q_s64(0, v217)));
      v222 = vpaddq_s64(v220, v217);
      v223 = (v221.i64[0] << v208) | v206;
      if (v222.i64[0] + (v208 & 0x3F) >= 0x40)
      {
        *(v155 + ((v208 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v223;
        v223 = v221.i64[0] >> -(v208 & 0x3F);
        if ((v208 & 0x3F) == 0)
        {
          v223 = 0;
        }
      }

      v224 = vceqq_s16(v64, v77);
      v225 = vaddq_s16(v26, v207);
      v226 = v222.i64[0] + v208;
      v227 = v223 | (v221.i64[1] << v226);
      if ((v226 & 0x3F) + v222.i64[1] >= 0x40)
      {
        *(v155 + ((v226 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v227;
        v227 = v221.i64[1] >> -(v226 & 0x3F);
        if ((v226 & 0x3F) == 0)
        {
          v227 = 0;
        }
      }

      v228 = vandq_s8(v68, v224);
      v229 = v226 + v222.i64[1];
      v230.i64[0] = 0xF000F000F000FLL;
      v230.i64[1] = 0xF000F000F000FLL;
      v231.i64[0] = -1;
      v231.i64[1] = -1;
      v232 = vandq_s8(vshlq_u16(v231, vaddq_s16(v76, v230)), v225);
      v233 = vmovl_u16(*v76.i8);
      v234 = vmovl_high_u16(v76);
      v235 = vpaddq_s32(vshlq_u32(vmovl_u16(*v232.i8), vtrn1q_s32(0, v233)), vshlq_u32(vmovl_high_u16(v232), vtrn1q_s32(0, v234)));
      v236 = vpaddq_s32(v233, v234);
      v237.i64[0] = v235.u32[0];
      v237.i64[1] = v235.u32[1];
      v238 = v237;
      v237.i64[0] = v235.u32[2];
      v237.i64[1] = v235.u32[3];
      v239 = v237;
      v237.i64[0] = v236.u32[0];
      v237.i64[1] = v236.u32[1];
      v240 = v237;
      v237.i64[0] = v236.u32[2];
      v237.i64[1] = v236.u32[3];
      v241 = vpaddq_s64(vshlq_u64(v238, vzip1q_s64(0, v240)), vshlq_u64(v239, vzip1q_s64(0, v237)));
      v242 = vpaddq_s64(v240, v237);
      v243 = (v241.i64[0] << v229) | v227;
      if (v242.i64[0] + (v229 & 0x3F) >= 0x40)
      {
        *(v155 + ((v229 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v243;
        v243 = v241.i64[0] >> -(v229 & 0x3F);
        if ((v229 & 0x3F) == 0)
        {
          v243 = 0;
        }
      }

      v244 = vceqq_s16(v64, v78);
      v245 = vaddq_s16(v27, v228);
      v246 = v242.i64[0] + v229;
      v247 = v243 | (v241.i64[1] << v246);
      if ((v246 & 0x3F) + v242.i64[1] >= 0x40)
      {
        *(v155 + ((v246 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v247;
        v247 = v241.i64[1] >> -(v246 & 0x3F);
        if ((v246 & 0x3F) == 0)
        {
          v247 = 0;
        }
      }

      v248 = vandq_s8(v68, v244);
      v249 = v246 + v242.i64[1];
      v250.i64[0] = 0xF000F000F000FLL;
      v250.i64[1] = 0xF000F000F000FLL;
      v251.i64[0] = -1;
      v251.i64[1] = -1;
      v252 = vandq_s8(vshlq_u16(v251, vaddq_s16(v77, v250)), v245);
      v253 = vmovl_u16(*v77.i8);
      v254 = vmovl_high_u16(v77);
      v255 = vpaddq_s32(vshlq_u32(vmovl_u16(*v252.i8), vtrn1q_s32(0, v253)), vshlq_u32(vmovl_high_u16(v252), vtrn1q_s32(0, v254)));
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
      v263 = (v261.i64[0] << v249) | v247;
      if (v262.i64[0] + (v249 & 0x3F) >= 0x40)
      {
        *(v155 + ((v249 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v263;
        v263 = v261.i64[0] >> -(v249 & 0x3F);
        if ((v249 & 0x3F) == 0)
        {
          v263 = 0;
        }
      }

      v264 = vaddq_s16(v28, v248);
      v265 = v262.i64[0] + v249;
      v266 = v263 | (v261.i64[1] << v265);
      if ((v265 & 0x3F) + v262.i64[1] >= 0x40)
      {
        *(v155 + ((v265 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v266;
        v266 = v261.i64[1] >> -(v265 & 0x3F);
        if ((v265 & 0x3F) == 0)
        {
          v266 = 0;
        }
      }

      v267 = v265 + v262.i64[1];
      v268.i64[0] = 0xF000F000F000FLL;
      v268.i64[1] = 0xF000F000F000FLL;
      v269.i64[0] = -1;
      v269.i64[1] = -1;
      v270 = vandq_s8(vshlq_u16(v269, vaddq_s16(v78, v268)), v264);
      v271 = vmovl_u16(*v78.i8);
      v272 = vmovl_high_u16(v78);
      v273 = vpaddq_s32(vshlq_u32(vmovl_u16(*v270.i8), vtrn1q_s32(0, v271)), vshlq_u32(vmovl_high_u16(v270), vtrn1q_s32(0, v272)));
      v274 = vpaddq_s32(v271, v272);
      v275.i64[0] = v273.u32[0];
      v275.i64[1] = v273.u32[1];
      v276 = v275;
      v275.i64[0] = v273.u32[2];
      v275.i64[1] = v273.u32[3];
      v277 = v275;
      v275.i64[0] = v274.u32[0];
      v275.i64[1] = v274.u32[1];
      v278 = v275;
      v275.i64[0] = v274.u32[2];
      v275.i64[1] = v274.u32[3];
      v279 = vpaddq_s64(vshlq_u64(v276, vzip1q_s64(0, v278)), vshlq_u64(v277, vzip1q_s64(0, v275)));
      v280 = vpaddq_s64(v278, v275);
      v281 = (v279.i64[0] << v267) | v266;
      if (v280.i64[0] + (v267 & 0x3F) > 0x3F)
      {
        *(v155 + ((v267 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v281;
        if ((v267 & 0x3F) != 0)
        {
          v281 = v279.i64[0] >> -(v267 & 0x3F);
        }

        else
        {
          v281 = 0;
        }
      }

      v282 = v280.i64[0] + v267;
      v283 = v281 | (v279.i64[1] << v282);
      if ((v282 & 0x3F) + v280.i64[1] >= 0x40)
      {
        *(v155 + ((v282 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v283;
        v283 = v279.i64[1] >> -(v282 & 0x3F);
        if ((v282 & 0x3F) == 0)
        {
          v283 = 0;
        }
      }

      v284 = v282 + v280.i64[1];
      if ((v284 & 0x3F) != 0)
      {
        *(v155 + ((v284 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v283;
      }

      result = (v284 - v156 + 7) >> 3;
      v148 = *a2 | (result - 1);
    }
  }

  else
  {
    *a1 = a3->i16[0] >> 6;
    v148 = 1;
    result = 2;
  }

  *a2 = v148;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressSubblock(unint64_t a1, _BYTE *a2, int32x4_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, int16x4_t a15)
{
  v16 = *(a3 + a4);
  v17 = (a3 + 2 * a4);
  v18 = *(v17 + a4);
  v19 = vshrq_n_s16(vzip1q_s32(*a3, v16), 6uLL);
  v20 = vshrq_n_s16(vzip1q_s32(*v17, v18), 6uLL);
  v21 = vshrq_n_s16(vzip2q_s32(*a3, v16), 6uLL);
  v22 = vshrq_n_s16(vzip2q_s32(*v17, v18), 6uLL);
  v23 = vdupq_lane_s16(*v19.i8, 0);
  v24 = vshlq_n_s16(vsubq_s16(v20, v23), 6uLL);
  v25 = vshlq_n_s16(vsubq_s16(v22, v23), 6uLL);
  v26 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v19, v23), 6uLL), 6uLL);
  v27 = vshrq_n_s16(v24, 6uLL);
  v28 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v21, v23), 6uLL), 6uLL);
  v29 = vshrq_n_s16(v25, 6uLL);
  v24.i16[0] = vmaxvq_s16(v26);
  v30 = vdupq_lane_s16(*v24.i8, 0);
  v25.i16[0] = vminvq_s16(v26);
  v31 = vdupq_lane_s16(*v25.i8, 0);
  v32.i64[0] = 0x8000800080008000;
  v32.i64[1] = 0x8000800080008000;
  v33 = vmaxq_s16(v30, v32);
  v34.i64[0] = 0x8000800080008000;
  v34.i64[1] = 0x8000800080008000;
  v35 = vminq_s16(v31, v34);
  v36 = vzip1q_s16(v30, v31);
  v37.i64[0] = 0x10001000100010;
  v37.i64[1] = 0x10001000100010;
  v38 = vsubq_s16(v37, vclsq_s16(v36));
  v39 = vbicq_s8(v38, vceqzq_s16(v36));
  v40 = vpmaxq_s16(v39, v39);
  v38.i16[0] = vmaxvq_s16(v27);
  a15.i16[0] = vminvq_s16(v27);
  v41 = vdupq_lane_s16(*v38.i8, 0);
  v42 = vdupq_lane_s16(a15, 0);
  v43 = vmaxq_s16(v33, v41);
  v44 = vminq_s16(v35, v42);
  v45 = vzip1q_s16(v41, v42);
  v46 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v45)), vceqzq_s16(v45));
  v47 = vpmaxq_s16(v46, v46);
  v46.i16[0] = vmaxvq_s16(v28);
  v42.i16[0] = vminvq_s16(v28);
  v48 = vdupq_lane_s16(*v46.i8, 0);
  v49 = vdupq_lane_s16(*v42.i8, 0);
  v50 = vmaxq_s16(v43, v48);
  v51 = vminq_s16(v44, v49);
  v52 = vzip1q_s16(v48, v49);
  v53 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v52)), vceqzq_s16(v52));
  v54 = vpmaxq_s16(v53, v53);
  v53.i16[0] = vmaxvq_s16(v29);
  v15.i16[0] = vminvq_s16(v29);
  v55 = vdupq_lane_s16(*v53.i8, 0);
  v56 = vdupq_lane_s16(v15, 0);
  v57 = vmaxq_s16(v50, v55);
  v58 = vminq_s16(v51, v56);
  v59 = vzip1q_s16(v55, v56);
  v60 = vbicq_s8(vsubq_s16(v37, vclsq_s16(v59)), vceqzq_s16(v59));
  v61 = vpmaxq_s16(v60, v60);
  v62 = vmaxq_s16(vmaxq_s16(v40, v47), vmaxq_s16(v54, v61));
  v63 = vclzq_s16(vsubq_s16(v57, v58));
  v64 = vsubq_s16(v37, v63);
  v65 = vminq_s16(v64, v62);
  if (vmaxvq_s16(v65))
  {
    v66.i64[0] = -1;
    v66.i64[1] = -1;
    v67.i64[0] = 0xF000F000F000FLL;
    v67.i64[1] = 0xF000F000F000FLL;
    v68 = vcgtq_s16(v62, v64);
    v69 = vandq_s8(vsubq_s16(vshlq_s16(v66, vsubq_s16(v67, v63)), v58), v68);
    v70.i64[0] = 0x8000800080008;
    v70.i64[1] = 0x8000800080008;
    v66.i64[0] = 0x3000300030003;
    v66.i64[1] = 0x3000300030003;
    v71 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v40), v66), 0);
    v72 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v47), v66), 0);
    v73 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v54), v66), 0);
    v74 = vmaxq_s16(vminq_s16(vsubq_s16(v65, v61), v66), 0);
    v75 = vsubq_s16(v65, v71);
    v76 = vsubq_s16(v65, v72);
    v77 = vsubq_s16(v65, v73);
    v78 = vsubq_s16(v65, v74);
    v79 = vceqq_s16(vaddq_s16(v74, v73), vnegq_s16(vaddq_s16(v71, v72)));
    v74.i64[0] = 0x4000400040004;
    v74.i64[1] = 0x4000400040004;
    v80 = vbicq_s8(v74, v79);
    v81 = vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v65), v66), vandq_s8(v68, v70)), v80);
    if (a5 >= 4 && a6 >= 2)
    {
      v82 = vsubq_s16(v19, vqtbl1q_s8(v19, xmmword_29D2F0F00));
      v83 = v20;
      v83.i16[7] = v19.i16[7];
      v84 = vsubq_s16(v20, vqtbl1q_s8(v83, xmmword_29D2F0F10));
      v85 = v21;
      v85.i16[7] = v19.i16[7];
      v86 = v22;
      v86.i16[7] = v19.i16[7];
      v87 = vsubq_s16(v21, vqtbl1q_s8(v85, xmmword_29D2F0F20));
      v88 = v82;
      v88.i16[0] = v82.i16[7];
      v88.i16[7] = v82.i16[0];
      v89 = vshlq_n_s16(v88, 6uLL);
      v90 = vshlq_n_s16(v87, 6uLL);
      v91 = vshlq_n_s16(vsubq_s16(v22, vqtbl1q_s8(v86, xmmword_29D2F0F30)), 6uLL);
      v92 = vshrq_n_s16(v89, 6uLL);
      v93 = vshrq_n_s16(vshlq_n_s16(v84, 6uLL), 6uLL);
      v94 = vshrq_n_s16(v90, 6uLL);
      v95 = vshrq_n_s16(v91, 6uLL);
      v90.i16[0] = vmaxvq_s16(v92);
      v91.i16[0] = vminvq_s16(v92);
      v96 = vdupq_lane_s16(*v90.i8, 0);
      v97 = vdupq_lane_s16(*v91.i8, 0);
      v98.i64[0] = 0x8000800080008000;
      v98.i64[1] = 0x8000800080008000;
      v99 = vmaxq_s16(v96, v98);
      v98.i64[0] = 0x8000800080008000;
      v98.i64[1] = 0x8000800080008000;
      v100 = vminq_s16(v97, v98);
      v101 = vzip1q_s16(v96, v97);
      v102.i64[0] = 0x10001000100010;
      v102.i64[1] = 0x10001000100010;
      v103 = vsubq_s16(v102, vclsq_s16(v101));
      v104 = vbicq_s8(v103, vceqzq_s16(v101));
      v105 = vpmaxq_s16(v104, v104);
      v104.i16[0] = vmaxvq_s16(v93);
      v103.i16[0] = vminvq_s16(v93);
      v106 = vdupq_lane_s16(*v104.i8, 0);
      v107 = vdupq_lane_s16(*v103.i8, 0);
      v108 = vmaxq_s16(v99, v106);
      v109 = vminq_s16(v100, v107);
      v110 = vzip1q_s16(v106, v107);
      v111 = vsubq_s16(v102, vclsq_s16(v110));
      v112 = vbicq_s8(v111, vceqzq_s16(v110));
      v113 = vpmaxq_s16(v112, v112);
      v112.i16[0] = vmaxvq_s16(v94);
      v111.i16[0] = vminvq_s16(v94);
      v114 = vdupq_lane_s16(*v112.i8, 0);
      v115 = vdupq_lane_s16(*v111.i8, 0);
      v116 = vmaxq_s16(v108, v114);
      v117 = vminq_s16(v109, v115);
      v118 = vzip1q_s16(v114, v115);
      v119 = vsubq_s16(v102, vclsq_s16(v118));
      v120 = vbicq_s8(v119, vceqzq_s16(v118));
      v121 = vpmaxq_s16(v120, v120);
      v120.i16[0] = vmaxvq_s16(v95);
      v119.i16[0] = vminvq_s16(v95);
      v122 = vdupq_lane_s16(*v120.i8, 0);
      v123 = vdupq_lane_s16(*v119.i8, 0);
      v124 = vmaxq_s16(v116, v122);
      v125 = vminq_s16(v117, v123);
      v126 = vzip1q_s16(v122, v123);
      v127 = vbicq_s8(vsubq_s16(v102, vclsq_s16(v126)), vceqzq_s16(v126));
      v128 = vpmaxq_s16(v127, v127);
      v129 = vmaxq_s16(vmaxq_s16(v105, v113), vmaxq_s16(v121, v128));
      v130 = vclzq_s16(vsubq_s16(v124, v125));
      v131 = vsubq_s16(v102, v130);
      v132 = vcgtq_s16(v129, v131);
      v133 = vminq_s16(v131, v129);
      v134 = vsubq_s16(v133, v105);
      v105.i64[0] = 0x3000300030003;
      v105.i64[1] = 0x3000300030003;
      v135 = vmaxq_s16(vminq_s16(v134, v105), 0);
      v136 = vmaxq_s16(vminq_s16(vsubq_s16(v133, v113), v105), 0);
      v137 = vmaxq_s16(vminq_s16(vsubq_s16(v133, v121), v105), 0);
      v138 = vmaxq_s16(vminq_s16(vsubq_s16(v133, v128), v105), 0);
      v139 = vsubq_s16(v133, v135);
      v140 = vsubq_s16(v133, v136);
      v141 = vsubq_s16(v133, v137);
      v142 = vsubq_s16(v133, v138);
      v143 = vceqq_s16(vaddq_s16(v138, v137), vnegq_s16(vaddq_s16(v135, v136)));
      v138.i64[0] = 0x4000400040004;
      v138.i64[1] = 0x4000400040004;
      v144 = vbicq_s8(v138, v143);
      v136.i64[0] = 0x7000700070007;
      v136.i64[1] = 0x7000700070007;
      v145 = vdupq_lane_s16(*&vcgtq_s16(vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v65, v68), vaddq_s16(v80, v80)), v75, v136), vshlq_n_s16(vaddq_s16(vaddq_s16(v77, v76), v78), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v133, v132), vaddq_s16(v144, v144)), v139, v136), vshlq_n_s16(vaddq_s16(vaddq_s16(v141, v140), v142), 3uLL))), 0);
      if (vaddvq_s16(v145))
      {
        v146.i64[0] = 0x2000200020002;
        v146.i64[1] = 0x2000200020002;
        v147 = vandq_s8(vceqzq_s16(v133), v146);
        v146.i64[0] = 0x9000900090009;
        v146.i64[1] = 0x9000900090009;
        v148.i64[0] = -1;
        v148.i64[1] = -1;
        v149 = vorrq_s8(vorrq_s8(v147, vsubq_s16(vandq_s8(v132, v146), vmvnq_s8(v132))), v144);
        v150.i64[0] = 0xF000F000F000FLL;
        v150.i64[1] = 0xF000F000F000FLL;
        v151 = vcltzq_s16(vshlq_n_s16(v145, 0xFuLL));
        v23.i16[0] = vbslq_s8(v151, vextq_s8(v19, v19, 0xEuLL), v23).u16[0];
        v26 = vbslq_s8(v151, v92, v26);
        v27 = vbslq_s8(v151, v93, v27);
        v28 = vbslq_s8(v151, v94, v28);
        v29 = vbslq_s8(v151, v95, v29);
        v75 = vbslq_s8(v151, v139, v75);
        v76 = vbslq_s8(v151, v140, v76);
        v77 = vbslq_s8(v151, v141, v77);
        v78 = vbslq_s8(v151, v142, v78);
        v69 = vbslq_s8(v151, vandq_s8(vsubq_s16(vshlq_s16(v148, vsubq_s16(v150, v130)), v125), v132), v69);
        v65 = vbslq_s8(v151, v133, v65);
        v81 = vbslq_s8(v151, v149, v81);
      }
    }

    v152.i64[0] = 0x8000800080008;
    v152.i64[1] = 0x8000800080008;
    v153 = vandq_s8(v81, v152);
    v154.i64[0] = 0x3000300030003;
    v154.i64[1] = 0x3000300030003;
    v155.i64[0] = 0x2000200020002;
    v155.i64[1] = 0x2000200020002;
    v156 = vceqq_s16(vandq_s8(v81, v154), v155);
    v155.i64[0] = 0x10001000100010;
    v155.i64[1] = 0x10001000100010;
    if (((vbicq_s8(v65, vceqzq_s16(v153)).u16[0] + ((2 * v81.i16[0]) & 8) + vandq_s8(v156, v155).u16[0] - v75.i16[0] + 8 * v75.i16[0] + 8 * vaddq_s16(vaddq_s16(v77, v76), v78).u16[0]) - 241) <= 0xFFFFFFFFFFFFFEF7)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
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

      if (v65.i16[0])
      {
        v161 = (16 * v65.i8[0] - 16) & 0xF0;
      }

      else
      {
        v161 = 0;
      }

      *a2 = v81.i8[0] << 6;
      v162 = (v161 & 0xFFFFFFFFFFFFFFF0 | ((v23.i16[0] & 0x3FF) << 8) | v81.i8[0] & 0xF) >> 2;
      v163 = (v162 << v158) | v159;
      if (v158 >= 0x30)
      {
        *v157 = v163;
        v163 = v162 >> (-8 * (a1 & 7u));
      }

      v164 = v158 + 16;
      v165 = vsubq_s16(v65, v75);
      v166 = vsubq_s16(v65, v76);
      v167 = vsubq_s16(v65, v77);
      v168 = vsubq_s16(v65, v78);
      *v165.i8 = vqmovn_u16(v165);
      *v166.i8 = vqmovn_u16(v166);
      *v167.i8 = vqmovn_u16(v167);
      *v168.i8 = vqmovn_u16(v168);
      v165.i32[0] = vzip1q_s16(vzip1q_s8(v165, v166), vzip1q_s8(v167, v168)).u32[0];
      v166.i64[0] = 0x202020202020202;
      v166.i64[1] = 0x202020202020202;
      v169 = vandq_s8(vbicq_s8(xmmword_29D2F0D30, vmovl_s16(vceqz_s16(vand_s8(*v81.i8, 0x4000400040004)))), v166);
      v166.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v166.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v167.i64[0] = -1;
      v167.i64[1] = -1;
      v170 = vandq_s8(vshlq_u8(v167, vorrq_s8(v169, v166)), v165.u32[0]);
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
      v184 = (v158 + 16) & 0x38;
      v185 = (v182.i64[0] << v184) | v163;
      if ((v183.i64[0] + v184) >= 0x40)
      {
        *(v157 + ((v164 >> 3) & 8)) = v185;
        v185 = v182.i64[0] >> -v184;
        if (!v184)
        {
          v185 = 0;
        }
      }

      v186 = vceqq_s16(v65, v75);
      v187 = v183.i64[0] + v164;
      v188 = v185 | (v182.i64[1] << v187);
      if ((v187 & 0x3F) + v183.i64[1] >= 0x40)
      {
        *(v157 + ((v187 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v188;
        v188 = v182.i64[1] >> -(v187 & 0x3F);
        if ((v187 & 0x3F) == 0)
        {
          v188 = 0;
        }
      }

      v189 = vandq_s8(v69, v186);
      v190 = v187 + v183.i64[1];
      v191 = vtstq_s16(v153, v153);
      v192.i64[0] = -1;
      v192.i64[1] = -1;
      v193 = vandq_s8(vextq_s8(v191, 0, 0xEuLL), v65);
      v194.i64[0] = 0xF000F000F000FLL;
      v194.i64[1] = 0xF000F000F000FLL;
      v195 = vandq_s8(vshlq_u16(v192, vaddq_s16(v193, v194)), v69);
      v196 = vmovl_u16(*v193.i8);
      v197 = vpaddq_s32(vshlq_u32(vmovl_u16(*v195.i8), vtrn1q_s32(0, v196)), vmovl_high_u16(v195));
      v198 = vpaddq_s32(v196, vmovl_high_u16(v193));
      v199.i64[0] = v197.u32[0];
      v199.i64[1] = v197.u32[1];
      v200 = v199;
      v199.i64[0] = v197.u32[2];
      v199.i64[1] = v197.u32[3];
      v201 = v199;
      v199.i64[0] = v198.u32[0];
      v199.i64[1] = v198.u32[1];
      v202 = v199;
      v199.i64[0] = v198.u32[2];
      v199.i64[1] = v198.u32[3];
      v203 = vpaddq_s64(vshlq_u64(v200, vzip1q_s64(0, v202)), vshlq_u64(v201, vzip1q_s64(0, v199)));
      v204 = vpaddq_s64(v202, v199);
      v205 = (v203.i64[0] << v190) | v188;
      if (v204.i64[0] + (v190 & 0x3F) >= 0x40)
      {
        *(v157 + ((v190 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v205;
        v205 = v203.i64[0] >> -(v190 & 0x3F);
        if ((v190 & 0x3F) == 0)
        {
          v205 = 0;
        }
      }

      v206 = vceqq_s16(v65, v76);
      v207 = vaddq_s16(v189, v26);
      v208 = v204.i64[0] + v190;
      v209 = v205 | (v203.i64[1] << v208);
      if ((v208 & 0x3F) + v204.i64[1] >= 0x40)
      {
        *(v157 + ((v208 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v209;
        v209 = v203.i64[1] >> -(v208 & 0x3F);
        if ((v208 & 0x3F) == 0)
        {
          v209 = 0;
        }
      }

      v210 = vandq_s8(v69, v206);
      v211 = v208 + v204.i64[1];
      v212 = vextq_s8(0, v75, 0xEuLL);
      v213.i64[0] = 0xF000F000F000FLL;
      v213.i64[1] = 0xF000F000F000FLL;
      v214.i64[0] = -1;
      v214.i64[1] = -1;
      v215 = vandq_s8(vshlq_u16(v214, vaddq_s16(v212, v213)), v207);
      v216 = vmovl_u16(*v212.i8);
      v217 = vmovl_high_u16(v212);
      v218 = vpaddq_s32(vshlq_u32(vmovl_u16(*v215.i8), vtrn1q_s32(0, v216)), vshlq_u32(vmovl_high_u16(v215), vtrn1q_s32(0, v217)));
      v219 = vpaddq_s32(v216, v217);
      v220.i64[0] = v218.u32[0];
      v220.i64[1] = v218.u32[1];
      v221 = v220;
      v220.i64[0] = v218.u32[2];
      v220.i64[1] = v218.u32[3];
      v222 = v220;
      v220.i64[0] = v219.u32[0];
      v220.i64[1] = v219.u32[1];
      v223 = v220;
      v220.i64[0] = v219.u32[2];
      v220.i64[1] = v219.u32[3];
      v224 = vpaddq_s64(vshlq_u64(v221, vzip1q_s64(0, v223)), vshlq_u64(v222, vzip1q_s64(0, v220)));
      v225 = vpaddq_s64(v223, v220);
      v226 = (v224.i64[0] << v211) | v209;
      if (v225.i64[0] + (v211 & 0x3F) >= 0x40)
      {
        *(v157 + ((v211 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v226;
        v226 = v224.i64[0] >> -(v211 & 0x3F);
        if ((v211 & 0x3F) == 0)
        {
          v226 = 0;
        }
      }

      v227 = vceqq_s16(v65, v77);
      v228 = vaddq_s16(v27, v210);
      v229 = v225.i64[0] + v211;
      v230 = v226 | (v224.i64[1] << v229);
      if ((v229 & 0x3F) + v225.i64[1] >= 0x40)
      {
        *(v157 + ((v229 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v230;
        v230 = v224.i64[1] >> -(v229 & 0x3F);
        if ((v229 & 0x3F) == 0)
        {
          v230 = 0;
        }
      }

      v231 = vandq_s8(v69, v227);
      v232 = v229 + v225.i64[1];
      v233.i64[0] = 0xF000F000F000FLL;
      v233.i64[1] = 0xF000F000F000FLL;
      v234.i64[0] = -1;
      v234.i64[1] = -1;
      v235 = vandq_s8(vshlq_u16(v234, vaddq_s16(v76, v233)), v228);
      v236 = vmovl_u16(*v76.i8);
      v237 = vmovl_high_u16(v76);
      v238 = vpaddq_s32(vshlq_u32(vmovl_u16(*v235.i8), vtrn1q_s32(0, v236)), vshlq_u32(vmovl_high_u16(v235), vtrn1q_s32(0, v237)));
      v239 = vpaddq_s32(v236, v237);
      v240.i64[0] = v238.u32[0];
      v240.i64[1] = v238.u32[1];
      v241 = v240;
      v240.i64[0] = v238.u32[2];
      v240.i64[1] = v238.u32[3];
      v242 = v240;
      v240.i64[0] = v239.u32[0];
      v240.i64[1] = v239.u32[1];
      v243 = v240;
      v240.i64[0] = v239.u32[2];
      v240.i64[1] = v239.u32[3];
      v244 = vpaddq_s64(vshlq_u64(v241, vzip1q_s64(0, v243)), vshlq_u64(v242, vzip1q_s64(0, v240)));
      v245 = vpaddq_s64(v243, v240);
      v246 = (v244.i64[0] << v232) | v230;
      if (v245.i64[0] + (v232 & 0x3F) >= 0x40)
      {
        *(v157 + ((v232 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v246;
        v246 = v244.i64[0] >> -(v232 & 0x3F);
        if ((v232 & 0x3F) == 0)
        {
          v246 = 0;
        }
      }

      v247 = vceqq_s16(v65, v78);
      v248 = vaddq_s16(v28, v231);
      v249 = v245.i64[0] + v232;
      v250 = v246 | (v244.i64[1] << v249);
      if ((v249 & 0x3F) + v245.i64[1] >= 0x40)
      {
        *(v157 + ((v249 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v250;
        v250 = v244.i64[1] >> -(v249 & 0x3F);
        if ((v249 & 0x3F) == 0)
        {
          v250 = 0;
        }
      }

      v251 = vandq_s8(v69, v247);
      v252 = v249 + v245.i64[1];
      v253.i64[0] = 0xF000F000F000FLL;
      v253.i64[1] = 0xF000F000F000FLL;
      v254.i64[0] = -1;
      v254.i64[1] = -1;
      v255 = vandq_s8(vshlq_u16(v254, vaddq_s16(v77, v253)), v248);
      v256 = vmovl_u16(*v77.i8);
      v257 = vmovl_high_u16(v77);
      v258 = vpaddq_s32(vshlq_u32(vmovl_u16(*v255.i8), vtrn1q_s32(0, v256)), vshlq_u32(vmovl_high_u16(v255), vtrn1q_s32(0, v257)));
      v259 = vpaddq_s32(v256, v257);
      v260.i64[0] = v258.u32[0];
      v260.i64[1] = v258.u32[1];
      v261 = v260;
      v260.i64[0] = v258.u32[2];
      v260.i64[1] = v258.u32[3];
      v262 = v260;
      v260.i64[0] = v259.u32[0];
      v260.i64[1] = v259.u32[1];
      v263 = v260;
      v260.i64[0] = v259.u32[2];
      v260.i64[1] = v259.u32[3];
      v264 = vpaddq_s64(vshlq_u64(v261, vzip1q_s64(0, v263)), vshlq_u64(v262, vzip1q_s64(0, v260)));
      v265 = vpaddq_s64(v263, v260);
      v266 = (v264.i64[0] << v252) | v250;
      if (v265.i64[0] + (v252 & 0x3F) >= 0x40)
      {
        *(v157 + ((v252 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v266;
        v266 = v264.i64[0] >> -(v252 & 0x3F);
        if ((v252 & 0x3F) == 0)
        {
          v266 = 0;
        }
      }

      v267 = vaddq_s16(v29, v251);
      v268 = v265.i64[0] + v252;
      v269 = v266 | (v264.i64[1] << v268);
      if ((v268 & 0x3F) + v265.i64[1] >= 0x40)
      {
        *(v157 + ((v268 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v269;
        v269 = v264.i64[1] >> -(v268 & 0x3F);
        if ((v268 & 0x3F) == 0)
        {
          v269 = 0;
        }
      }

      v270 = v268 + v265.i64[1];
      v271.i64[0] = 0xF000F000F000FLL;
      v271.i64[1] = 0xF000F000F000FLL;
      v272.i64[0] = -1;
      v272.i64[1] = -1;
      v273 = vandq_s8(vshlq_u16(v272, vaddq_s16(v78, v271)), v267);
      v274 = vmovl_u16(*v78.i8);
      v275 = vmovl_high_u16(v78);
      v276 = vpaddq_s32(vshlq_u32(vmovl_u16(*v273.i8), vtrn1q_s32(0, v274)), vshlq_u32(vmovl_high_u16(v273), vtrn1q_s32(0, v275)));
      v277 = vpaddq_s32(v274, v275);
      v278.i64[0] = v276.u32[0];
      v278.i64[1] = v276.u32[1];
      v279 = v278;
      v278.i64[0] = v276.u32[2];
      v278.i64[1] = v276.u32[3];
      v280 = v278;
      v278.i64[0] = v277.u32[0];
      v278.i64[1] = v277.u32[1];
      v281 = v278;
      v278.i64[0] = v277.u32[2];
      v278.i64[1] = v277.u32[3];
      v282 = vpaddq_s64(vshlq_u64(v279, vzip1q_s64(0, v281)), vshlq_u64(v280, vzip1q_s64(0, v278)));
      v283 = vpaddq_s64(v281, v278);
      v284 = (v282.i64[0] << v270) | v269;
      if (v283.i64[0] + (v270 & 0x3F) > 0x3F)
      {
        *(v157 + ((v270 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v284;
        if ((v270 & 0x3F) != 0)
        {
          v284 = v282.i64[0] >> -(v270 & 0x3F);
        }

        else
        {
          v284 = 0;
        }
      }

      v285 = v283.i64[0] + v270;
      v286 = v284 | (v282.i64[1] << v285);
      if ((v285 & 0x3F) + v283.i64[1] >= 0x40)
      {
        *(v157 + ((v285 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v286;
        v286 = v282.i64[1] >> -(v285 & 0x3F);
        if ((v285 & 0x3F) == 0)
        {
          v286 = 0;
        }
      }

      v287 = v285 + v283.i64[1];
      if ((v287 & 0x3F) != 0)
      {
        *(v157 + ((v287 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v286;
      }

      result = (v287 - v158 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    *a1 = a3->i16[0] >> 6;
    *a2 = 1;
    return 2;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint16x8_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
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
        v23 = vshrq_n_u16(v22, 6uLL);
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
          *v25 = v27 >> 6;
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
      *(v13 - 12) = *(v12 - 3) >> 6;
      if (a5 != 1)
      {
        *(v13 - 8) = *(v12 - 2) >> 6;
        if (a5 != 2)
        {
          *(v13 - 4) = *(v12 - 1) >> 6;
          if (a5 != 3)
          {
            *v13 = *v12 >> 6;
            if (a5 != 4)
            {
              v13[4] = v12[1] >> 6;
              if (a5 != 5)
              {
                v13[8] = v12[2] >> 6;
                if (a5 != 6)
                {
                  v13[12] = v12[3] >> 6;
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

  v32 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1, &v42, a7, v28, v30);
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

  v34 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 8, &v42, a7, v28, v33);
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
  v36 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 16, &v42, a7, v35, v30);
  v42.i32[0] = WORD2(v49);
  v42.i32[1] = WORD6(v49);
  v42.i32[2] = WORD3(v49);
  v42.i32[3] = HIWORD(v49);
  v43 = WORD2(v50);
  v44 = WORD6(v50);
  v45 = WORD3(v50);
  v46 = HIWORD(v50);
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 24, &v42, a7, v35, v33);
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

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(unint64_t a1, int8x16_t *a2, int a3, unsigned int a4, unsigned int a5)
{
  v125 = *MEMORY[0x29EDCA608];
  if (a3 == 1)
  {
    v9.i64[0] = 0x20000000200;
    v9.i64[1] = 0x20000000200;
    v10 = vdupq_n_s32(0x201u);
    v7 = vbicq_s8(veorq_s8(*a2, v9), vceqq_s32(*a2, v10));
    v8 = vbicq_s8(veorq_s8(a2[1], v9), vceqq_s32(a2[1], v10));
    goto LABEL_5;
  }

  if (a3 == 3)
  {
    v6.i64[0] = 0x20000000200;
    v6.i64[1] = 0x20000000200;
    v7 = veorq_s8(*a2, v6);
    v8 = veorq_s8(a2[1], v6);
LABEL_5:
    v123 = v7;
    v124 = v8;
    v11 = v7.i32[0];
    goto LABEL_7;
  }

  v12 = a2[1];
  v123 = *a2;
  v124 = v12;
  v11 = v123.i32[0];
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
    v15 = v123.u32[1];
    v16 = v123.i32[1] < v11;
    if (v123.i32[1] >= v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = v123.u32[1];
    }

    if (v11 > v123.i32[1])
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
    if (v123.i32[2] < v17)
    {
      v16 = 2;
      v17 = v123.u32[2];
    }

    if (v15 <= v123.i32[2])
    {
      v15 = v123.u32[2];
    }
  }

  v21 = a5 > 1 && a4 > 1;
  if (v21)
  {
    if (v123.i32[3] < v17)
    {
      v16 = 3;
      v17 = v123.u32[3];
    }

    if (v15 <= v123.i32[3])
    {
      v15 = v123.u32[3];
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
    if (v124.i32[0] < v17)
    {
      v16 = 4;
      v17 = v124.i32[0];
    }

    if (v15 <= v124.i32[0])
    {
      v15 = v124.i32[0];
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
    if (v124.i32[1] < v17)
    {
      v16 = 5;
      v17 = v124.u32[1];
    }

    if (v15 <= v124.i32[1])
    {
      v15 = v124.u32[1];
    }
  }

  v27 = a5 > 1 && a4 > 2;
  if (v27)
  {
    if (v124.i32[2] < v17)
    {
      v16 = 6;
      v17 = v124.u32[2];
    }

    if (v15 <= v124.i32[2])
    {
      v15 = v124.u32[2];
    }
  }

  v29 = a5 > 1 && a4 > 3;
  if (v29)
  {
    if (v124.i32[3] < v17)
    {
      v16 = 7;
      v17 = v124.u32[3];
    }

    if (v15 <= v124.i32[3])
    {
      v15 = v124.u32[3];
    }
  }

  v30 = v15 - v17;
  v31 = __clz(v15 - v17);
  if (v31 - 29 >= 3)
  {
    v32 = 31 - v31;
  }

  else
  {
    v32 = 2;
  }

  v33 = v32 & ~(v32 >> 31);
  if (v15)
  {
    v34 = v15 == 1023;
  }

  else
  {
    v34 = 1;
  }

  v35 = !v34;
  if (v32 < 3 && v15 == v17)
  {
    v33 = v35;
  }

  if ((a3 | 2) == 3)
  {
    v37 = 0;
    if (v17 <= 0x1FF && v15 >= 0x200)
    {
      v37 = kDQuadParamTable[10 * v33 + 168] == 0;
    }
  }

  else
  {
    v37 = 0;
  }

  if (v33 > 5 || v37)
  {
    v39 = kDQuadParamTable[10 * v33 + 164];
    v40 = v39 + 3;
    if (v37)
    {
      v41 = 0;
    }

    else
    {
      v41 = -2;
    }

    v42 = v17 & ~(-1 << (7 - v39));
    if (v40 >= 0xA)
    {
      v42 = 0;
    }

    v43 = v42 + v41;
    if (v43 >= 1 && __clz(v43 + v30) < v31)
    {
      ++v33;
    }
  }

  v44 = 0;
  v45 = 0;
  v46 = v33;
  v47 = &kDQuadParamTable[10 * v33];
  v48 = *(v47 + 81);
  v49 = v47[165];
  v50 = v49 + 3;
  if (a4)
  {
    v51 = a5 == 0;
  }

  else
  {
    v51 = 1;
  }

  LODWORD(result) = v51 || v48 >> v50 > 4;
  if (a3 == 4)
  {
    result = 1;
  }

  else
  {
    result = result;
  }

  v54 = kDQuadParamTable[10 * v33 + 164] + 3;
  if (v54 >= 0xA)
  {
    v55 = 10;
  }

  else
  {
    v55 = v54;
  }

  if (v49)
  {
    LODWORD(v56) = 10;
  }

  else
  {
    LODWORD(v56) = 0;
  }

  if (v56 >= v50)
  {
    v56 = v50;
  }

  else
  {
    v56 = v56;
  }

  v57 = (-1 << (10 - v55)) & v17;
  v58 = v11 - v57;
  if (!v13)
  {
    v58 = 0;
  }

  v18 = !v14;
  v59 = v123.i32[1] - v57;
  if (v18)
  {
    v59 = 0;
  }

  v122[0] = v58;
  v122[1] = v59;
  memset(v120, 0, sizeof(v120));
  v121 = 0;
  v60 = v48 >> v56;
  v61 = v123.i32[2] - v57;
  if (!v19)
  {
    v61 = 0;
  }

  v62 = v123.i32[3] - v57;
  if (!v21)
  {
    v62 = 0;
  }

  v122[2] = v61;
  v122[3] = v62;
  v63 = v124.i32[0] - v57;
  if (!v23)
  {
    v63 = 0;
  }

  v64 = v124.i32[1] - v57;
  if (!v25)
  {
    v64 = 0;
  }

  v122[4] = v63;
  v122[5] = v64;
  v65 = v124.i32[2] - v57;
  if (!v27)
  {
    v65 = 0;
  }

  v66 = v124.i32[3] - v57;
  if (!v29)
  {
    v66 = 0;
  }

  v122[6] = v65;
  v122[7] = v66;
  if (v60 <= 1)
  {
    v67 = 1;
  }

  else
  {
    v67 = v48 >> v56;
  }

  v68 = v16;
  v69 = 4 * v16;
  v70 = &byte_29D2F3081;
  do
  {
    if (v69 != v44)
    {
      if (v56)
      {
        v71 = v122[v44 / 4] / v67;
      }

      else
      {
        LODWORD(v71) = 0;
      }

      *(v120 + v45) = v71;
      if (v60 >= 2)
      {
        v72 = v122[v44 / 4];
        if (v72)
        {
          if (v72 / v67 * v67 == v72 && ((v72 / v67) & 1) != 0)
          {
            if (v57 || v71 != 1)
            {
              if ((a3 | 2) != 3 || (v74 = v123.u32[v44 / 4], v74 != 512) && ((a3 | 2) != 3 || v67 + 512 != v74))
              {
                LODWORD(v71) = v71 - 1;
                *(v120 + v45) = v71;
              }
            }

            else
            {
              LODWORD(v71) = 1;
            }
          }
        }
      }

      if (v71 >> v56 || v123.i32[v44 / 4] == 1023)
      {
        *(v120 + v45) = ~(-1 << v56);
      }

      if (*v70 >= a5 || *(v70 - 1) >= a4)
      {
        *(v120 + v45) = 0;
      }

      ++v45;
    }

    v44 += 4;
    v70 += 2;
  }

  while (v44 != 32);
  v75 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v76 = 8 * (a1 & 7);
  *a1 = 0;
  if (result)
  {
    v77 = 0;
    v78 = 0;
    v79 = v76;
    do
    {
      v80 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v77;
      if (v80[1] >= a5 || *v80 >= a4)
      {
        v82 = 0;
      }

      else
      {
        v82 = v123.u32[v77] >> 2;
      }

      if ((v79 - v76 + (v78 << 6) - 57) >= 0xFFFFFFFFFFFFFFBFLL)
      {
        v83 = 0;
        v84 = 8;
        do
        {
          v85 = 64 - v79;
          if (64 - v79 >= v84)
          {
            v85 = v84;
          }

          v75[v78] |= ((v82 >> v83) & ~(-1 << v85)) << v79;
          v83 += v85;
          v86 = v85 + v79;
          v78 += v86 >> 6;
          v79 = v86 & 0x3F;
          v84 -= v85;
        }

        while (v84);
      }

      ++v77;
    }

    while (v77 != 8);
    return result;
  }

  if (v17 | v46)
  {
    v87 = v76 | 3;
    if (v46 < 3)
    {
      v88 = v46 + 1;
    }

    else
    {
      v88 = 0;
    }

    if (v46 >= 3)
    {
      v89 = (v46 + 6) & 7;
    }

    else
    {
      v89 = 0;
    }

    *v75 |= v89 << v76;
    if (v46 >= 3)
    {
      v91 = 0;
      v95 = 3;
      if (!v54)
      {
        goto LABEL_227;
      }

LABEL_222:
      if ((v55 - v76 + v87 + (v91 << 6)) <= 0x40)
      {
        v96 = 0;
        v97 = v55;
        do
        {
          v98 = 64 - v87;
          if (64 - v87 >= v97)
          {
            v98 = v97;
          }

          v75[v91] |= (((v57 >> (10 - v55)) >> v96) & ~(-1 << v98)) << v87;
          v96 += v98;
          v99 = v98 + v87;
          v91 += v99 >> 6;
          v87 = v99 & 0x3F;
          v97 -= v98;
        }

        while (v97);
      }

      goto LABEL_227;
    }

    v90 = 2 * (v46 < 3);
  }

  else
  {
    v88 = 0;
    v87 = v76 | 3;
    v90 = 2;
  }

  if (v90 - v76 + v87 <= 0x40)
  {
    v91 = 0;
    v92 = 0;
    do
    {
      v93 = 64 - v87;
      if (64 - v87 >= v90)
      {
        v93 = v90;
      }

      v75[v91] |= ((v88 >> v92) & ~(-1 << v93)) << v87;
      v92 += v93;
      v94 = v93 + v87;
      v91 += v94 >> 6;
      v87 = v94 & 0x3F;
      v90 -= v93;
    }

    while (v90);
  }

  else
  {
    v91 = 0;
  }

  v95 = 5;
  if (!v46)
  {
    goto LABEL_228;
  }

  if (v54)
  {
    goto LABEL_222;
  }

LABEL_227:
  v95 += v55;
LABEL_228:
  if (v56)
  {
    if ((v87 - v76 + (v91 << 6) + 3) <= 0x40)
    {
      v100 = 0;
      v101 = 3;
      do
      {
        v102 = 64 - v87;
        if (64 - v87 >= v101)
        {
          v102 = v101;
        }

        v75[v91] |= ((v68 >> v100) & ~(-1 << v102)) << v87;
        v100 += v102;
        v103 = v102 + v87;
        v91 += v103 >> 6;
        v87 = v103 & 0x3F;
        v101 -= v102;
      }

      while (v101);
    }

    v95 += 3;
  }

  v104 = (147 * (64 - v95)) >> 10;
  v105 = -7 * v104 + 64 - v95;
  if ((v105 - 257) >= 0xFFFFFF00 && v87 - v76 + (v91 << 6) + v105 <= 0x40)
  {
    do
    {
      v106 = 64 - v87;
      if (64 - v87 >= v105)
      {
        v106 = v105;
      }

      v107 = v106 + v87;
      v91 += v107 >> 6;
      v87 = v107 & 0x3F;
      v105 -= v106;
    }

    while (v105);
  }

  v108 = 0;
  v109 = v104 - v56;
  if (v109)
  {
    v110 = v109 > 0x100;
  }

  else
  {
    v110 = 1;
  }

  v111 = v110;
  do
  {
    if (v56 && v56 - v76 + v87 + (v91 << 6) <= 0x40)
    {
      v112 = 0;
      v113 = *(v120 + v108);
      v114 = v56;
      do
      {
        v115 = 64 - v87;
        if (64 - v87 >= v114)
        {
          v115 = v114;
        }

        v75[v91] |= ((v113 >> v112) & ~(-1 << v115)) << v87;
        v112 += v115;
        v116 = v115 + v87;
        v91 += v116 >> 6;
        v87 = v116 & 0x3F;
        v114 -= v115;
      }

      while (v114);
    }

    if ((v111 & 1) == 0 && v87 - v76 + (v91 << 6) + v109 <= 0x40)
    {
      v117 = v109;
      do
      {
        v118 = 64 - v87;
        if (64 - v87 >= v117)
        {
          v118 = v117;
        }

        v119 = v118 + v87;
        v91 += v119 >> 6;
        v87 = v119 & 0x3F;
        v117 -= v118;
      }

      while (v117);
    }

    ++v108;
  }

  while (v108 != 7);
  return result;
}