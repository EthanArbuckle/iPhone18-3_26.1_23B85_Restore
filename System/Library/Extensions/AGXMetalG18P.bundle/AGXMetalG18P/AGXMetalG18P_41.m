unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 1, v13 + 4, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 2, (v13 + v17), a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 3, (v13 + v17 + 64), a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 4, (v13 + 8 * a2), a2, v25, v24, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 5, (v13 + 8 * a2 + 64), a2, v27, v26, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 6, (v13 + 12 * a2), a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 7, (v13 + 12 * a2 + 64), a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>::decompressMacroblock(_OWORD *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1, 128, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 4, 128, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 32, 128, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 36, 128, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 64, 128, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 68, 128, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 96, 128, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 100, 128, v12 + v13, v14, a4);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(unint64_t a1, _BYTE *a2, int16x8_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = (a3 + 2 * a4);
  v9 = *v7;
  v10 = v7[1];
  v11 = v7[2];
  v12 = v7[3];
  v8 = (v7 + a4);
  v13 = vshrq_n_s16(*a3, 6uLL);
  v14 = vshrq_n_s16(*(a3 + a4), 6uLL);
  v15 = vshrq_n_s16(a3[1], 6uLL);
  v16 = vshrq_n_s16(*(&a3[1] + a4), 6uLL);
  v17 = vshrq_n_s16(*v8, 6uLL);
  v18 = vshrq_n_s16(v8[1], 6uLL);
  v19 = vshrq_n_s16(a3[2], 6uLL);
  v20 = vshrq_n_s16(*(&a3[2] + a4), 6uLL);
  v21 = vshrq_n_s16(a3[3], 6uLL);
  v22 = vshrq_n_s16(*(&a3[3] + a4), 6uLL);
  v23 = vshrq_n_s16(v11, 6uLL);
  v24 = vshrq_n_s16(v8[2], 6uLL);
  v25 = vshrq_n_s16(v12, 6uLL);
  v26 = vshrq_n_s16(v8[3], 6uLL);
  v468 = vdupq_lane_s64(v13.i64[0], 0);
  v444 = vshrq_n_s16(v9, 6uLL);
  v446 = v17;
  v447 = vshrq_n_s16(v10, 6uLL);
  v448 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v13, v468), 6uLL), 6uLL);
  v450 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v14, v468), 6uLL), 6uLL);
  v452 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v15, v468), 6uLL), 6uLL);
  v454 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v16, v468), 6uLL), 6uLL);
  v456 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v444, v468), 6uLL), 6uLL);
  v457 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v17, v468), 6uLL), 6uLL);
  v27 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v448, v450), v452), v454), xmmword_29D2F1150);
  v28 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v448, v450), v452), v454), xmmword_29D2F1150);
  v29 = vpmaxq_s16(v27, v27);
  v30 = vpminq_s16(v28, v28);
  v31 = vzip1q_s16(v29, v30);
  v32.i64[0] = 0x10001000100010;
  v32.i64[1] = 0x10001000100010;
  v33 = vbicq_s8(vsubq_s16(v32, vclsq_s16(v31)), vceqzq_s16(v31));
  v458 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v447, v468), 6uLL), 6uLL);
  v459 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v18, v468), 6uLL), 6uLL);
  v460 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v19, v468), 6uLL), 6uLL);
  v461 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v20, v468), 6uLL), 6uLL);
  v28.i64[0] = 0x8000800080008000;
  v28.i64[1] = 0x8000800080008000;
  v34.i64[0] = 0x8000800080008000;
  v34.i64[1] = 0x8000800080008000;
  v35 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v456, v457), v458), v459), xmmword_29D2F1150);
  v36 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v456, v457), v458), v459), xmmword_29D2F1150);
  v37 = vpmaxq_s16(v35, v35);
  v38 = vpminq_s16(v36, v36);
  v39 = vmaxq_s16(vmaxq_s16(v29, v28), v37);
  v40 = vminq_s16(vminq_s16(v30, v34), v38);
  v41 = vzip1q_s16(v37, v38);
  v42 = vbicq_s8(vsubq_s16(v32, vclsq_s16(v41)), vceqzq_s16(v41));
  v462 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v21, v468), 6uLL), 6uLL);
  v463 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v22, v468), 6uLL), 6uLL);
  v464 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v23, v468), 6uLL), 6uLL);
  v465 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v24, v468), 6uLL), 6uLL);
  v43 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v460, v461), v462), v463), xmmword_29D2F1150);
  v44 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v460, v461), v462), v463), xmmword_29D2F1150);
  v45 = vpmaxq_s16(v43, v43);
  v46 = vpminq_s16(v44, v44);
  v47 = vminq_s16(v40, v46);
  v48 = vzip1q_s16(v45, v46);
  v49 = vbicq_s8(vsubq_s16(v32, vclsq_s16(v48)), vceqzq_s16(v48));
  v466 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v25, v468), 6uLL), 6uLL);
  v467 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v26, v468), 6uLL), 6uLL);
  v50 = vpmaxq_s16(v33, v33);
  v51 = vpmaxq_s16(v42, v42);
  v52 = vpmaxq_s16(v49, v49);
  v53 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v464, v465), v466), v467), xmmword_29D2F1150);
  v54 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v464, v465), v466), v467), xmmword_29D2F1150);
  v55 = vpmaxq_s16(v53, v53);
  v56 = vpminq_s16(v54, v54);
  v57 = vmaxq_s16(vmaxq_s16(v39, v45), v55);
  v58 = vminq_s16(v47, v56);
  v59 = vzip1q_s16(v55, v56);
  v60 = vbicq_s8(vsubq_s16(v32, vclsq_s16(v59)), vceqzq_s16(v59));
  v61 = vpmaxq_s16(v60, v60);
  v62 = vmaxq_s16(vmaxq_s16(v50, v51), vmaxq_s16(v52, v61));
  v63 = vclzq_s16(vsubq_s16(v57, v58));
  v45.i64[0] = 0xF000F000F000FLL;
  v45.i64[1] = 0xF000F000F000FLL;
  v30.i64[0] = -1;
  v30.i64[1] = -1;
  v475 = v58;
  v476 = v57;
  v64 = vsubq_s16(v32, v63);
  v65 = vsubq_s16(vshlq_s16(v30, vsubq_s16(v45, v63)), v58);
  v66 = vcgtq_s16(v62, v64);
  v67 = vminq_s16(v64, v62);
  v477 = vandq_s8(v65, v66);
  v65.i64[0] = 0x8000800080008;
  v65.i64[1] = 0x8000800080008;
  v68.i64[0] = 0x3000300030003;
  v68.i64[1] = 0x3000300030003;
  v69 = vorrq_s8(vandq_s8(vceqzq_s16(v67), v68), vorrq_s8(vandq_s8(v66, v65), 0));
  v70 = vmaxq_s16(vminq_s16(vsubq_s16(v67, v51), v68), 0);
  v71 = vmaxq_s16(vminq_s16(vsubq_s16(v67, v52), v68), 0);
  v471 = vsubq_s16(v67, v70);
  v472 = vsubq_s16(v67, v71);
  v72 = vmaxq_s16(vminq_s16(vsubq_s16(v67, v61), v68), 0);
  v473 = vsubq_s16(v67, v72);
  v474 = v67;
  v73 = vmaxq_s16(vminq_s16(vsubq_s16(v67, v50), v68), 0);
  v74 = vsubq_s16(v67, v73);
  v75 = vceqq_s16(vaddq_s16(v72, v71), vnegq_s16(vaddq_s16(v73, v70)));
  v73.i64[0] = 0x4000400040004;
  v73.i64[1] = 0x4000400040004;
  v76 = vorrq_s8(vbicq_s8(v73, v75), v69);
  v469 = v76;
  v470 = v74;
  if (vmaxvq_s16(v67))
  {
    v415 = v18;
    v416 = v22;
    v417 = v19;
    v418 = v20;
    v419 = v21;
    v420 = v23;
    v421 = v24;
    v422 = v25;
    v423 = v26;
    v77.i64[0] = 0x10001000100010;
    v77.i64[1] = 0x10001000100010;
    v78 = v69;
    v79 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v448, vqtbl1q_s8(v448, xmmword_29D2F1140)), 6uLL), 6uLL);
    v80 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v450, vqtbl1q_s8(v450, xmmword_29D2F1140)), 6uLL), 6uLL);
    v81 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v452, vqtbl1q_s8(v452, xmmword_29D2F1140)), 6uLL), 6uLL);
    v82 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v454, vqtbl1q_s8(v454, xmmword_29D2F1140)), 6uLL), 6uLL);
    v83 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v464, vqtbl1q_s8(v464, xmmword_29D2F1140)), 6uLL), 6uLL);
    v84 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v465, vqtbl1q_s8(v465, xmmword_29D2F1140)), 6uLL), 6uLL);
    v85 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v466, vqtbl1q_s8(v466, xmmword_29D2F1140)), 6uLL), 6uLL);
    v86 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v460, vqtbl1q_s8(v460, xmmword_29D2F1140)), 6uLL), 6uLL);
    v87 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v467, vqtbl1q_s8(v467, xmmword_29D2F1140)), 6uLL), 6uLL);
    v88 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v463, vqtbl1q_s8(v463, xmmword_29D2F1140)), 6uLL), 6uLL);
    v89 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v79, v80), v81), v82);
    v428 = v82;
    v429 = v81;
    v90 = vminq_s16(vminq_s16(vminq_s16(v79, v80), v81), v82);
    v91 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v462, vqtbl1q_s8(v462, xmmword_29D2F1140)), 6uLL), 6uLL);
    v92 = vqtbl1q_s8(v89, xmmword_29D2F1150);
    v93 = vqtbl1q_s8(v90, xmmword_29D2F1150);
    v94 = vpmaxq_s16(v92, v92);
    v95 = vpminq_s16(v93, v93);
    v96.i64[0] = 0x8000800080008000;
    v96.i64[1] = 0x8000800080008000;
    v97 = vmaxq_s16(v94, v96);
    v98.i64[0] = 0x8000800080008000;
    v98.i64[1] = 0x8000800080008000;
    v99 = vminq_s16(v95, v98);
    v100 = vzip1q_s16(v94, v95);
    v101 = vbicq_s8(vsubq_s16(v77, vclsq_s16(v100)), vceqzq_s16(v100));
    v102 = vpmaxq_s16(v101, v101);
    v434 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v457, vqtbl1q_s8(v457, xmmword_29D2F1140)), 6uLL), 6uLL);
    v436 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v456, vqtbl1q_s8(v456, xmmword_29D2F1140)), 6uLL), 6uLL);
    v438 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v459, vqtbl1q_s8(v459, xmmword_29D2F1140)), 6uLL), 6uLL);
    v440 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v458, vqtbl1q_s8(v458, xmmword_29D2F1140)), 6uLL), 6uLL);
    v103 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v436, v434), v440), v438), xmmword_29D2F1150);
    v104 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v436, v434), v440), v438), xmmword_29D2F1150);
    v105 = vpmaxq_s16(v103, v103);
    v106 = vpminq_s16(v104, v104);
    v107 = vmaxq_s16(v97, v105);
    v108 = vminq_s16(v99, v106);
    v109 = vzip1q_s16(v105, v106);
    v110 = vbicq_s8(vsubq_s16(v77, vclsq_s16(v109)), vceqzq_s16(v109));
    v111 = vpmaxq_s16(v110, v110);
    v442 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v461, vqtbl1q_s8(v461, xmmword_29D2F1140)), 6uLL), 6uLL);
    v112 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v86, v442), v91), v88), xmmword_29D2F1150);
    v113 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v86, v442), v91), v88), xmmword_29D2F1150);
    v114 = vpmaxq_s16(v112, v112);
    v115 = vpminq_s16(v113, v113);
    v116 = vmaxq_s16(v107, v114);
    v117 = vminq_s16(v108, v115);
    v118 = vzip1q_s16(v114, v115);
    v119 = vbicq_s8(vsubq_s16(v77, vclsq_s16(v118)), vceqzq_s16(v118));
    v120 = vpmaxq_s16(v119, v119);
    v121 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v83, v84), v85), v87), xmmword_29D2F1150);
    v122 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v83, v84), v85), v87), xmmword_29D2F1150);
    v123 = vpmaxq_s16(v121, v121);
    v124 = vpminq_s16(v122, v122);
    v125 = vmaxq_s16(v116, v123);
    v126 = vminq_s16(v117, v124);
    v127 = vzip1q_s16(v123, v124);
    v128 = vbicq_s8(vsubq_s16(v77, vclsq_s16(v127)), vceqzq_s16(v127));
    v129 = vpmaxq_s16(v128, v128);
    v130 = vmaxq_s16(vmaxq_s16(v102, v111), vmaxq_s16(v120, v129));
    v430 = v126;
    v432 = v125;
    v131 = vclzq_s16(vsubq_s16(v125, v126));
    v132 = vsubq_s16(v77, v131);
    v133 = vcgtq_s16(v130, v132);
    v134 = vminq_s16(v132, v130);
    v135 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v102), v68), 0);
    v136 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v111), v68), 0);
    v137 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v120), v68), 0);
    v138 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v129), v68), 0);
    v125.i64[0] = 0x4000400040004;
    v125.i64[1] = 0x4000400040004;
    v139 = vbicq_s8(v125, vceqq_s16(vaddq_s16(v138, v137), vnegq_s16(vaddq_s16(v135, v136))));
    v132.i64[0] = 0x18001800180018;
    v132.i64[1] = 0x18001800180018;
    v140 = vbslq_s8(v133, v132, v77);
    v425 = vsubq_s16(v134, v136);
    v426 = vsubq_s16(v134, v137);
    v427 = vsubq_s16(v134, v138);
    v138.i64[0] = 0x7000700070007;
    v138.i64[1] = 0x7000700070007;
    v424 = vsubq_s16(v134, v135);
    v137.i64[0] = 0x8000800080008;
    v137.i64[1] = 0x8000800080008;
    v141 = vandq_s8(vaddq_s16(v76, v76), v137);
    v125.i64[0] = 0x2000200020002;
    v125.i64[1] = 0x2000200020002;
    v142 = vandq_s8(vceqq_s16(vandq_s8(v78, v68), v125), v77);
    v143 = vceqzq_s16(vandq_s8(v78, v137));
    v144 = v473;
    v145 = v474;
    v147 = v470;
    v146 = v471;
    v148 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v474, v143), v142), v141), v470, v138);
    v149 = v472;
    v150 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v148, vshlq_n_s16(vaddq_s16(vaddq_s16(v472, v471), v473), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v134, vceqzq_s16((*&v140 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v139, v139)), v424, v138), vshlq_n_s16(vaddq_s16(vaddq_s16(v426, v425), v427), 3uLL))).i64[0], 0);
    v151 = vaddvq_s16(v150);
    v153 = a5 < 4 || a6 < 2;
    if (v151)
    {
      v154.i64[0] = 0x3000300030003;
      v154.i64[1] = 0x3000300030003;
      v155.i64[0] = 0xF000F000F000FLL;
      v155.i64[1] = 0xF000F000F000FLL;
      v448 = vbslq_s8(v150, v79, v448);
      v450 = vbslq_s8(v150, v80, v450);
      v156.i64[0] = -1;
      v156.i64[1] = -1;
      v452 = vbslq_s8(v150, v429, v452);
      v454 = vbslq_s8(v150, v428, v454);
      v157 = vandq_s8(vsubq_s16(vshlq_s16(v156, vsubq_s16(v155, v131)), v430), v133);
      v456 = vbslq_s8(v150, v436, v456);
      v457 = vbslq_s8(v150, v434, v457);
      v458 = vbslq_s8(v150, v440, v458);
      v459 = vbslq_s8(v150, v438, v459);
      v460 = vbslq_s8(v150, v86, v460);
      v461 = vbslq_s8(v150, v442, v461);
      v462 = vbslq_s8(v150, v91, v462);
      v463 = vbslq_s8(v150, v88, v463);
      v464 = vbslq_s8(v150, v83, v464);
      v465 = vbslq_s8(v150, v84, v465);
      v466 = vbslq_s8(v150, v85, v466);
      v467 = vbslq_s8(v150, v87, v467);
      v147 = vbslq_s8(v150, v424, v470);
      v146 = vbslq_s8(v150, v425, v471);
      v470 = v147;
      v471 = v146;
      v149 = vbslq_s8(v150, v426, v472);
      v144 = vbslq_s8(v150, v427, v473);
      v472 = v149;
      v473 = v144;
      v476 = vbslq_s8(v150, v432, v476);
      v477 = vbslq_s8(v150, v157, v477);
      v145 = vbslq_s8(v150, v134, v474);
      v474 = v145;
      v475 = vbslq_s8(v150, v430, v475);
      v76 = vbslq_s8(v150, vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v134), v154), v140), v139), v469);
      v468 = vbslq_s8(v150, vsubq_s16(v468, vqtbl1q_s8(v468, xmmword_29D2F1140)), v468);
      v469 = v76;
    }

    if (!v153)
    {
      v158 = vqtbl4q_s8(*v13.i8, xmmword_29D2F1160);
      v159 = vsubq_s16(v13, vqtbl4q_s8(*v13.i8, xmmword_29D2F10B0));
      v160 = vsubq_s16(v15, v158);
      v161 = vsubq_s16(v16, v158);
      v479.val[0] = v444;
      v479.val[1] = v446;
      v479.val[2] = v447;
      v479.val[3].i64[0] = v415.i64[0];
      v479.val[3].i64[1] = v16.i64[1];
      v162 = vsubq_s16(v444, vqtbl4q_s8(v479, xmmword_29D2F10B0));
      v163 = vsubq_s16(v446, vqtbl4q_s8(v479, xmmword_29D2F10F0));
      v164 = vsubq_s16(v447, vqtbl4q_s8(v479, xmmword_29D2F1160));
      v165 = vsubq_s16(v415, vqtbl4q_s8(v479, xmmword_29D2F1100));
      v480.val[0] = v417;
      v480.val[1] = v418;
      v480.val[2] = v419;
      v480.val[3].i64[0] = v416.i64[0];
      v480.val[3].i64[1] = v16.i64[1];
      v479.val[1] = vsubq_s16(v417, vqtbl4q_s8(v480, xmmword_29D2F1170));
      v479.val[2] = vsubq_s16(v418, vqtbl4q_s8(v480, xmmword_29D2F1180));
      v479.val[3] = vsubq_s16(v419, vqtbl4q_s8(v480, xmmword_29D2F10B0));
      v166 = vsubq_s16(v416, vqtbl4q_s8(v480, xmmword_29D2F10C0));
      v478.val[0] = v420;
      v478.val[1] = v421;
      v478.val[2] = v422;
      v478.val[3].i64[0] = v423.i64[0];
      v478.val[3].i64[1] = v16.i64[1];
      v479.val[0] = vsubq_s16(v420, vqtbl4q_s8(v478, xmmword_29D2F1170));
      v480.val[0] = vsubq_s16(v421, vqtbl4q_s8(v478, xmmword_29D2F1120));
      v167 = vsubq_s16(v422, vqtbl4q_s8(v478, xmmword_29D2F10B0));
      v480.val[1].i64[0] = v161.i64[0];
      v480.val[1].i64[1] = v159.i64[0];
      v168 = vsubq_s16(v423, vqtbl4q_s8(v478, xmmword_29D2F10C0));
      v159.i64[0] = v161.i64[1];
      v169 = vshlq_n_s16(v480.val[1], 6uLL);
      v480.val[1] = vshlq_n_s16(v479.val[1], 6uLL);
      v480.val[3] = vshlq_n_s16(v479.val[2], 6uLL);
      v478.val[0] = vshlq_n_s16(v479.val[3], 6uLL);
      v478.val[1] = vshlq_n_s16(v166, 6uLL);
      v478.val[2] = vshlq_n_s16(v479.val[0], 6uLL);
      v170 = vshlq_n_s16(v168, 6uLL);
      v171 = vshrq_n_s16(vshlq_n_s16(v159, 6uLL), 6uLL);
      v172 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v14, vqtbl4q_s8(*v13.i8, xmmword_29D2F10C0)), 6uLL), 6uLL);
      v173 = vshrq_n_s16(vshlq_n_s16(v160, 6uLL), 6uLL);
      v174 = vshrq_n_s16(v169, 6uLL);
      v175 = vshrq_n_s16(vshlq_n_s16(v162, 6uLL), 6uLL);
      v176 = vshrq_n_s16(vshlq_n_s16(v163, 6uLL), 6uLL);
      v177 = vshrq_n_s16(vshlq_n_s16(v164, 6uLL), 6uLL);
      v178 = vshrq_n_s16(vshlq_n_s16(v165, 6uLL), 6uLL);
      v179 = vshrq_n_s16(v480.val[1], 6uLL);
      v180 = vshrq_n_s16(v480.val[3], 6uLL);
      v181 = vshrq_n_s16(v478.val[0], 6uLL);
      v182 = vshrq_n_s16(v478.val[1], 6uLL);
      v183 = vshrq_n_s16(v478.val[2], 6uLL);
      v184 = vshrq_n_s16(vshlq_n_s16(v480.val[0], 6uLL), 6uLL);
      v185 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v171, v172), v173), v174), xmmword_29D2F1150);
      v186 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v171, v172), v173), v174), xmmword_29D2F1150);
      v187 = vpmaxq_s16(v185, v185);
      v188 = vpminq_s16(v186, v186);
      v480.val[0].i64[0] = 0x8000800080008000;
      v480.val[0].i64[1] = 0x8000800080008000;
      v480.val[0] = vmaxq_s16(v187, v480.val[0]);
      v480.val[1].i64[0] = 0x8000800080008000;
      v480.val[1].i64[1] = 0x8000800080008000;
      v480.val[1] = vminq_s16(v188, v480.val[1]);
      v189 = vzip1q_s16(v187, v188);
      v187.i64[0] = 0x10001000100010;
      v187.i64[1] = 0x10001000100010;
      v480.val[3] = vbicq_s8(vsubq_s16(v187, vclsq_s16(v189)), vceqzq_s16(v189));
      v480.val[3] = vpmaxq_s16(v480.val[3], v480.val[3]);
      v478.val[0] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v175, v176), v177), v178), xmmword_29D2F1150);
      v478.val[1] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v175, v176), v177), v178), xmmword_29D2F1150);
      v478.val[0] = vpmaxq_s16(v478.val[0], v478.val[0]);
      v478.val[1] = vpminq_s16(v478.val[1], v478.val[1]);
      v480.val[0] = vmaxq_s16(v480.val[0], v478.val[0]);
      v480.val[1] = vminq_s16(v480.val[1], v478.val[1]);
      v478.val[0] = vzip1q_s16(v478.val[0], v478.val[1]);
      v478.val[0] = vbicq_s8(vsubq_s16(v187, vclsq_s16(v478.val[0])), vceqzq_s16(v478.val[0]));
      v478.val[0] = vpmaxq_s16(v478.val[0], v478.val[0]);
      v478.val[1] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v179, v180), v181), v182), xmmword_29D2F1150);
      v478.val[2] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v179, v180), v181), v182), xmmword_29D2F1150);
      v478.val[1] = vpmaxq_s16(v478.val[1], v478.val[1]);
      v478.val[2] = vpminq_s16(v478.val[2], v478.val[2]);
      v480.val[0] = vmaxq_s16(v480.val[0], v478.val[1]);
      v478.val[1] = vzip1q_s16(v478.val[1], v478.val[2]);
      v478.val[1] = vbicq_s8(vsubq_s16(v187, vclsq_s16(v478.val[1])), vceqzq_s16(v478.val[1]));
      v190 = vpmaxq_s16(v478.val[1], v478.val[1]);
      v439 = v184;
      v441 = v183;
      v443 = vshrq_n_s16(v170, 6uLL);
      v445 = vshrq_n_s16(vshlq_n_s16(v167, 6uLL), 6uLL);
      v478.val[1] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v183, v184), v445), v443), xmmword_29D2F1150);
      v191 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v183, v184), v445), v443), xmmword_29D2F1150);
      v478.val[1] = vpmaxq_s16(v478.val[1], v478.val[1]);
      v192 = vpminq_s16(v191, v191);
      v193 = vmaxq_s16(v480.val[0], v478.val[1]);
      v194 = vminq_s16(vminq_s16(v480.val[1], v478.val[2]), v192);
      v195 = vzip1q_s16(v478.val[1], v192);
      v196 = vbicq_s8(vsubq_s16(v187, vclsq_s16(v195)), vceqzq_s16(v195));
      v197 = vpmaxq_s16(v196, v196);
      v480.val[0] = vmaxq_s16(vmaxq_s16(v480.val[3], v478.val[0]), vmaxq_s16(v190, v197));
      v437 = v193;
      v198 = vclzq_s16(vsubq_s16(v193, v194));
      v480.val[1] = vsubq_s16(v187, v198);
      v199 = vcgtq_s16(v480.val[0], v480.val[1]);
      v200 = vminq_s16(v480.val[1], v480.val[0]);
      v480.val[0] = vsubq_s16(v200, v480.val[3]);
      v480.val[3].i64[0] = 0x3000300030003;
      v480.val[3].i64[1] = 0x3000300030003;
      v480.val[0] = vmaxq_s16(vminq_s16(v480.val[0], v480.val[3]), 0);
      v480.val[1] = vmaxq_s16(vminq_s16(vsubq_s16(v200, v478.val[0]), v480.val[3]), 0);
      v478.val[0] = vmaxq_s16(vminq_s16(vsubq_s16(v200, v190), v480.val[3]), 0);
      v201 = vmaxq_s16(vminq_s16(vsubq_s16(v200, v197), v480.val[3]), 0);
      v202 = vsubq_s16(v200, v480.val[0]);
      v203 = vsubq_s16(v200, v478.val[0]);
      v204 = vsubq_s16(v200, v201);
      v205 = vceqq_s16(vaddq_s16(v201, v478.val[0]), vnegq_s16(vaddq_s16(v480.val[0], v480.val[1])));
      v480.val[0].i64[0] = 0x4000400040004;
      v480.val[0].i64[1] = 0x4000400040004;
      v206 = vbicq_s8(v480.val[0], v205);
      v478.val[0].i64[0] = 0x7000700070007;
      v478.val[0].i64[1] = 0x7000700070007;
      v431 = v203;
      v433 = vsubq_s16(v200, v480.val[1]);
      v435 = v204;
      v207 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v200, v199), vaddq_s16(v206, v206)), v202, v478.val[0]), vshlq_n_s16(vaddq_s16(vaddq_s16(v203, v433), v204), 3uLL));
      v76 = v469;
      v147 = v470;
      v208.i64[0] = 0x2000200020002;
      v208.i64[1] = 0x2000200020002;
      v209 = vandq_s8(vceqq_s16(vandq_s8(v469, v480.val[3]), v208), v187);
      v480.val[3].i64[0] = 0x8000800080008;
      v480.val[3].i64[1] = 0x8000800080008;
      v210 = vandq_s8(vaddq_s16(v76, v76), v480.val[3]);
      v211 = vceqzq_s16(vandq_s8(v469, v480.val[3]));
      v144 = v473;
      v145 = v474;
      v212 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v474, v211), v210), v209), v470, v478.val[0]);
      v146 = v471;
      v149 = v472;
      v213 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v212, vshlq_n_s16(vaddq_s16(vaddq_s16(v472, v471), v473), 3uLL)), v207).i64[0], 0);
      if (vaddvq_s16(v213))
      {
        v214 = vextq_s8(v16, v16, 8uLL);
        v215.i64[0] = 0x9000900090009;
        v215.i64[1] = 0x9000900090009;
        v216 = vorrq_s8(vandq_s8(vceqzq_s16(v200), v208), vsubq_s16(vandq_s8(v199, v215), vmvnq_s8(v199)));
        v215.i64[0] = -1;
        v215.i64[1] = -1;
        v217.i64[0] = 0xF000F000F000FLL;
        v217.i64[1] = 0xF000F000F000FLL;
        v147 = vbslq_s8(v213, v202, v470);
        v146 = vbslq_s8(v213, v433, v471);
        v149 = vbslq_s8(v213, v431, v472);
        v144 = vbslq_s8(v213, v435, v473);
        v145 = vbslq_s8(v213, v200, v474);
        v76 = vbslq_s8(v213, vorrq_s8(v216, v206), v469);
        v467 = vbslq_s8(v213, v443, v467);
        v468 = vbslq_s8(v213, v214, v468);
        v448 = vbslq_s8(v213, v171, v448);
        v450 = vbslq_s8(v213, v172, v450);
        v452 = vbslq_s8(v213, v173, v452);
        v454 = vbslq_s8(v213, v174, v454);
        v456 = vbslq_s8(v213, v175, v456);
        v457 = vbslq_s8(v213, v176, v457);
        v458 = vbslq_s8(v213, v177, v458);
        v459 = vbslq_s8(v213, v178, v459);
        v460 = vbslq_s8(v213, v179, v460);
        v461 = vbslq_s8(v213, v180, v461);
        v462 = vbslq_s8(v213, v181, v462);
        v463 = vbslq_s8(v213, v182, v463);
        v464 = vbslq_s8(v213, v441, v464);
        v465 = vbslq_s8(v213, v439, v465);
        v466 = vbslq_s8(v213, v445, v466);
        v475 = vbslq_s8(v213, v194, v475);
        v476 = vbslq_s8(v213, v437, v476);
        v477 = vbslq_s8(v213, vandq_s8(vsubq_s16(vshlq_s16(v215, vsubq_s16(v217, v198)), v194), v199), v477);
        v470 = v147;
        v471 = v146;
        v472 = v149;
        v473 = v144;
        v474 = v145;
        v469 = v76;
      }
    }

    v218 = vandq_s8(v477, vceqq_s16(v145, v147));
    v449 = vaddq_s16(v218, v448);
    v451 = vaddq_s16(v450, v218);
    v453 = vaddq_s16(v452, v218);
    v455 = vaddq_s16(v454, v218);
    v219 = vandq_s8(v477, vceqq_s16(v145, v146));
    v456 = vaddq_s16(v456, v219);
    v457 = vaddq_s16(v457, v219);
    v458 = vaddq_s16(v458, v219);
    v459 = vaddq_s16(v459, v219);
    v220 = vandq_s8(v477, vceqq_s16(v145, v149));
    v460 = vaddq_s16(v460, v220);
    v461 = vaddq_s16(v461, v220);
    v462 = vaddq_s16(v462, v220);
    v463 = vaddq_s16(v463, v220);
    v221 = vandq_s8(v477, vceqq_s16(v145, v144));
    v464 = vaddq_s16(v464, v221);
    v465 = vaddq_s16(v465, v221);
    v466 = vaddq_s16(v466, v221);
    v467 = vaddq_s16(v467, v221);
    v221.i64[0] = 0x8000800080008;
    v221.i64[1] = 0x8000800080008;
    v222.i64[0] = 0x3000300030003;
    v222.i64[1] = 0x3000300030003;
    v223.i64[0] = 0x2000200020002;
    v223.i64[1] = 0x2000200020002;
    v224 = vceqq_s16(vandq_s8(v76, v222), v223);
    v223.i64[0] = 0x10001000100010;
    v223.i64[1] = 0x10001000100010;
    v225 = vandq_s8(v224, v223);
    v223.i64[0] = 0x7000700070007;
    v223.i64[1] = 0x7000700070007;
    v226 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v145, vceqzq_s16(vandq_s8(v76, v221))), vandq_s8(vaddq_s16(v76, v76), v221)), v225), v147, v223), vshlq_n_s16(vaddq_s16(vaddq_s16(v149, v146), v144), 3uLL));
    v227 = vpaddq_s16(v226, v226);
    if ((vpaddq_s16(v227, v227).i16[0] - 693) < 0xFFFFFFFFFFFFFCF8)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 96;
    }

    else
    {
      v228 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v229 = 8 * (a1 & 7);
      if (v229)
      {
        v230 = *v228 & ~(-1 << v229);
      }

      else
      {
        v230 = 0;
      }

      *a2 = 0;
      v234 = v468.i64[0];
      if (v145.i16[0])
      {
        v235 = ((v145.i8[0] - 1) & 0xF) << 20;
      }

      else
      {
        v235 = 0;
      }

      if (v145.i16[1])
      {
        v236 = ((v145.i8[2] - 1) & 0xF) << 24;
      }

      else
      {
        v236 = 0;
      }

      if (v145.i16[2])
      {
        v237 = (v145.u16[2] << 28) - 0x10000000;
      }

      else
      {
        v237 = 0;
      }

      if (v145.i16[3])
      {
        v238 = ((v145.i8[6] - 1) & 0xF) << 32;
      }

      else
      {
        v238 = 0;
      }

      v239 = (v76.i8[0] & 0x1F | (32 * (v76.i8[2] & 0x1F)) & 0x83FF | ((v76.i8[4] & 0x1F) << 10) | ((v76.i8[6] & 0x1F) << 15) | v235 | v236 | v237) + v238;
      v240 = (v239 << v229) | v230;
      if (v229 >= 0x1C)
      {
        *v228 = v240;
        v240 = v239 >> (-8 * (a1 & 7u));
      }

      v241 = v234 & 0x3FF | ((WORD1(v234) & 0x3FF) << 10) & 0xFFFFFFFFC00FFFFFLL | ((WORD2(v234) & 0x3FF) << 20) | ((HIWORD(v234) & 0x3FF) << 30);
      v242 = (v229 + 36) & 0x3C;
      v243 = v240 | (v241 << v242);
      if (v242 >= 0x18)
      {
        *(v228 + (((v229 + 36) >> 3) & 8)) = v243;
        v243 = v241 >> -v242;
      }

      v244 = v229 + 76;
      v245 = vsubq_s16(v474, v470);
      v246 = vsubq_s16(v474, v471);
      v247 = vsubq_s16(v474, v472);
      v248 = vsubq_s16(v474, v473);
      *v245.i8 = vqmovn_u16(v245);
      *v246.i8 = vqmovn_u16(v246);
      *v247.i8 = vqmovn_u16(v247);
      *v248.i8 = vqmovn_u16(v248);
      v249 = vtrn1q_s8(v245, v246);
      v250 = vtrn2q_s8(v245, v246);
      v251 = vtrn1q_s8(v247, v248);
      v252 = vtrn2q_s8(v247, v248);
      v253 = vzip1q_s16(v250, v252);
      v254 = vtrn2q_s16(v250, v252);
      v250.i64[0] = vzip1q_s32(vzip1q_s16(v249, v251), v253).u64[0];
      v254.i64[0] = vzip1q_s32(vtrn2q_s16(v249, v251), v254).u64[0];
      v247.i64[0] = 0x202020202020202;
      v247.i64[1] = 0x202020202020202;
      v255 = vandq_s8(vmovl_s16(vtst_s16(*v469.i8, 0x4000400040004)), v247);
      v247.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v247.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v249.i64[0] = -1;
      v249.i64[1] = -1;
      v256 = vshlq_u8(v249, vorrq_s8(v255, v247));
      v257 = vmovl_u8(vand_s8(*v256.i8, *v250.i8));
      v258 = vmovl_u8(vand_s8(*&vextq_s8(v256, v256, 8uLL), *v254.i8));
      v259 = vmovl_u8(*v255.i8);
      v260 = vmovl_high_u8(v255);
      v261 = vpaddq_s16(vshlq_u16(v257, vtrn1q_s16(0, v259)), vshlq_u16(v258, vtrn1q_s16(0, v260)));
      v262 = vpaddq_s16(v259, v260);
      v263 = vmovl_u16(*v262.i8);
      v264 = vmovl_high_u16(v262);
      v265 = vpaddq_s32(vshlq_u32(vmovl_u16(*v261.i8), vtrn1q_s32(0, v263)), vshlq_u32(vmovl_high_u16(v261), vtrn1q_s32(0, v264)));
      v266 = vpaddq_s32(v263, v264);
      v267.i64[0] = v265.u32[0];
      v267.i64[1] = v265.u32[1];
      v268 = v267;
      v267.i64[0] = v265.u32[2];
      v267.i64[1] = v265.u32[3];
      v269 = v267;
      v267.i64[0] = v266.u32[0];
      v267.i64[1] = v266.u32[1];
      v270 = v267;
      v267.i64[0] = v266.u32[2];
      v267.i64[1] = v266.u32[3];
      v271 = vpaddq_s64(vshlq_u64(v268, vzip1q_s64(0, v270)), vshlq_u64(v269, vzip1q_s64(0, v267)));
      v272 = vpaddq_s64(v270, v267);
      v273 = (v229 + 76) & 0x3C;
      v274 = (v271.i64[0] << v273) | v243;
      if ((v272.i64[0] + v273) >= 0x40)
      {
        *(v228 + ((v244 >> 3) & 0x18)) = v274;
        v274 = v271.i64[0] >> -v273;
      }

      v275 = v272.i64[0] + v244;
      v276 = v274 | (v271.i64[1] << v275);
      if ((v275 & 0x3F) + v272.i64[1] >= 0x40)
      {
        *(v228 + ((v275 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v276;
        v276 = v271.i64[1] >> -(v275 & 0x3F);
        if ((v275 & 0x3F) == 0)
        {
          v276 = 0;
        }
      }

      v277 = v275 + v272.i64[1];
      v278.i64[0] = 0x8000800080008;
      v278.i64[1] = 0x8000800080008;
      v279.i64[0] = -1;
      v279.i64[1] = -1;
      v280 = vandq_s8(vextq_s8(vtstq_s16(v469, v278), 0, 8uLL), v474);
      v281.i64[0] = 0xF000F000F000FLL;
      v281.i64[1] = 0xF000F000F000FLL;
      v282 = vandq_s8(vshlq_u16(v279, vaddq_s16(v280, v281)), v477);
      v283 = vmovl_u16(*v280.i8);
      v284 = vpaddq_s32(vshlq_u32(vmovl_u16(*v282.i8), vtrn1q_s32(0, v283)), vmovl_high_u16(v282));
      v285 = vpaddq_s32(v283, vmovl_high_u16(v280));
      v286.i64[0] = v284.u32[0];
      v286.i64[1] = v284.u32[1];
      v287 = v286;
      v286.i64[0] = v284.u32[2];
      v286.i64[1] = v284.u32[3];
      v288 = v286;
      v286.i64[0] = v285.u32[0];
      v286.i64[1] = v285.u32[1];
      v289 = v286;
      v286.i64[0] = v285.u32[2];
      v286.i64[1] = v285.u32[3];
      v290 = vpaddq_s64(vshlq_u64(v287, vzip1q_s64(0, v289)), vshlq_u64(v288, vzip1q_s64(0, v286)));
      v291 = vpaddq_s64(v289, v286);
      v292 = (v290.i64[0] << v277) | v276;
      if (v291.i64[0] + (v277 & 0x3F) >= 0x40)
      {
        *(v228 + ((v277 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v292;
        v292 = v290.i64[0] >> -(v277 & 0x3F);
        if ((v277 & 0x3F) == 0)
        {
          v292 = 0;
        }
      }

      v293 = v291.i64[0] + v277;
      v294 = v292 | (v290.i64[1] << v293);
      if ((v293 & 0x3F) + v291.i64[1] >= 0x40)
      {
        *(v228 + ((v293 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v294;
        v294 = v290.i64[1] >> -(v293 & 0x3F);
        if ((v293 & 0x3F) == 0)
        {
          v294 = 0;
        }
      }

      v295 = v293 + v291.i64[1];
      v296 = vextq_s8(0, v470, 8uLL);
      v297.i64[0] = 0xF000F000F000FLL;
      v297.i64[1] = 0xF000F000F000FLL;
      v298.i64[0] = -1;
      v298.i64[1] = -1;
      v299 = vandq_s8(vshlq_u16(v298, vaddq_s16(v296, v297)), v449);
      v300 = vmovl_u16(*v296.i8);
      v301 = vmovl_high_u16(v296);
      v302 = vpaddq_s32(vmovl_u16(*v299.i8), vshlq_u32(vmovl_high_u16(v299), vtrn1q_s32(0, v301)));
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
      v310 = (v308.i64[0] << v295) | v294;
      if (v309.i64[0] + (v295 & 0x3F) >= 0x40)
      {
        *(v228 + ((v295 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v310;
        v310 = v308.i64[0] >> -(v295 & 0x3F);
        if ((v295 & 0x3F) == 0)
        {
          v310 = 0;
        }
      }

      v311 = v309.i64[0] + v295;
      v312 = v310 | (v308.i64[1] << v311);
      if ((v311 & 0x3F) + v309.i64[1] >= 0x40)
      {
        *(v228 + ((v311 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v312;
        v312 = v308.i64[1] >> -(v311 & 0x3F);
        if ((v311 & 0x3F) == 0)
        {
          v312 = 0;
        }
      }

      v313 = v311 + v309.i64[1];
      v314.i64[0] = 0xF000F000F000FLL;
      v314.i64[1] = 0xF000F000F000FLL;
      v315.i64[0] = -1;
      v315.i64[1] = -1;
      v316 = vandq_s8(vshlq_u16(v315, vaddq_s16(v470, v314)), v451);
      v317 = vmovl_u16(*v470.i8);
      v318 = vmovl_high_u16(v470);
      v319 = vpaddq_s32(vshlq_u32(vmovl_u16(*v316.i8), vtrn1q_s32(0, v317)), vshlq_u32(vmovl_high_u16(v316), vtrn1q_s32(0, v318)));
      v320 = vpaddq_s32(v317, v318);
      v321.i64[0] = v319.u32[0];
      v321.i64[1] = v319.u32[1];
      v322 = v321;
      v321.i64[0] = v319.u32[2];
      v321.i64[1] = v319.u32[3];
      v323 = v321;
      v321.i64[0] = v320.u32[0];
      v321.i64[1] = v320.u32[1];
      v324 = v321;
      v321.i64[0] = v320.u32[2];
      v321.i64[1] = v320.u32[3];
      v325 = vpaddq_s64(vshlq_u64(v322, vzip1q_s64(0, v324)), vshlq_u64(v323, vzip1q_s64(0, v321)));
      v326 = vpaddq_s64(v324, v321);
      v327 = (v325.i64[0] << v313) | v312;
      if (v326.i64[0] + (v313 & 0x3F) >= 0x40)
      {
        *(v228 + ((v313 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v327;
        v327 = v325.i64[0] >> -(v313 & 0x3F);
        if ((v313 & 0x3F) == 0)
        {
          v327 = 0;
        }
      }

      v328 = v326.i64[0] + v313;
      v329 = v327 | (v325.i64[1] << v328);
      if ((v328 & 0x3F) + v326.i64[1] >= 0x40)
      {
        *(v228 + ((v328 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v329;
        v329 = v325.i64[1] >> -(v328 & 0x3F);
        if ((v328 & 0x3F) == 0)
        {
          v329 = 0;
        }
      }

      v330 = v328 + v326.i64[1];
      v331.i64[0] = 0xF000F000F000FLL;
      v331.i64[1] = 0xF000F000F000FLL;
      v332.i64[0] = -1;
      v332.i64[1] = -1;
      v333 = vandq_s8(vshlq_u16(v332, vaddq_s16(v470, v331)), v453);
      v334 = vmovl_u16(*v470.i8);
      v335 = vmovl_high_u16(v470);
      v336 = vpaddq_s32(vshlq_u32(vmovl_u16(*v333.i8), vtrn1q_s32(0, v334)), vshlq_u32(vmovl_high_u16(v333), vtrn1q_s32(0, v335)));
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
      v344 = (v342.i64[0] << v330) | v329;
      if (v343.i64[0] + (v330 & 0x3F) >= 0x40)
      {
        *(v228 + ((v330 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v344;
        v344 = v342.i64[0] >> -(v330 & 0x3F);
        if ((v330 & 0x3F) == 0)
        {
          v344 = 0;
        }
      }

      v345 = v343.i64[0] + v330;
      v346 = v344 | (v342.i64[1] << v345);
      if ((v345 & 0x3F) + v343.i64[1] >= 0x40)
      {
        *(v228 + ((v345 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v346;
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
      v350 = vandq_s8(vshlq_u16(v349, vaddq_s16(v470, v348)), v455);
      v351 = vmovl_u16(*v470.i8);
      v352 = vmovl_high_u16(v470);
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
        *(v228 + ((v347 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
        v361 = v359.i64[0] >> -(v347 & 0x3F);
        if ((v347 & 0x3F) == 0)
        {
          v361 = 0;
        }
      }

      v362 = v360.i64[1];
      v363 = v360.i64[0] + v347;
      v364 = (v360.i64[0] + v347) & 0x3F;
      v365 = v361 | (v359.i64[1] << v363);
      if ((v364 + v360.i64[1]) >= 0x40)
      {
        *(v228 + ((v363 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
        v365 = v359.i64[1] >> -v364;
        if (!v364)
        {
          v365 = 0;
        }
      }

      v366 = 0;
      v367.i64[0] = 0xF000F000F000FLL;
      v367.i64[1] = 0xF000F000F000FLL;
      v368.i64[0] = -1;
      v368.i64[1] = -1;
      v369 = v363 + v362;
      do
      {
        v370 = vandq_s8(vshlq_u16(v368, vaddq_s16(v471, v367)), *(&v456 + v366));
        v371 = vmovl_u16(*v471.i8);
        v372 = vmovl_high_u16(v471);
        v373 = vpaddq_s32(vshlq_u32(vmovl_u16(*v370.i8), vtrn1q_s32(0, v371)), vshlq_u32(vmovl_high_u16(v370), vtrn1q_s32(0, v372)));
        v374 = vpaddq_s32(v371, v372);
        v375.i64[0] = v373.u32[0];
        v375.i64[1] = v373.u32[1];
        v376 = v375;
        v375.i64[0] = v373.u32[2];
        v375.i64[1] = v373.u32[3];
        v377 = v375;
        v375.i64[0] = v374.u32[0];
        v375.i64[1] = v374.u32[1];
        v378 = v375;
        v375.i64[0] = v374.u32[2];
        v375.i64[1] = v374.u32[3];
        v379 = vpaddq_s64(vshlq_u64(v376, vzip1q_s64(0, v378)), vshlq_u64(v377, vzip1q_s64(0, v375)));
        v380 = vpaddq_s64(v378, v375);
        v381 = (v379.i64[0] << v369) | v365;
        if (v380.i64[0] + (v369 & 0x3F) >= 0x40)
        {
          *(v228 + ((v369 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v381;
          v381 = v379.i64[0] >> -(v369 & 0x3F);
          if ((v369 & 0x3F) == 0)
          {
            v381 = 0;
          }
        }

        v382 = v380.i64[0] + v369;
        v365 = v381 | (v379.i64[1] << v382);
        if ((v382 & 0x3F) + v380.i64[1] >= 0x40)
        {
          *(v228 + ((v382 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
          v365 = v379.i64[1] >> -(v382 & 0x3F);
          if ((v382 & 0x3F) == 0)
          {
            v365 = 0;
          }
        }

        v369 = v382 + v380.i64[1];
        v366 += 16;
      }

      while (v366 != 64);
      v383 = 0;
      v384.i64[0] = 0xF000F000F000FLL;
      v384.i64[1] = 0xF000F000F000FLL;
      v385.i64[0] = -1;
      v385.i64[1] = -1;
      do
      {
        v386 = vandq_s8(vshlq_u16(v385, vaddq_s16(v472, v384)), *(&v460 + v383));
        v387 = vmovl_u16(*v472.i8);
        v388 = vmovl_high_u16(v472);
        v389 = vpaddq_s32(vshlq_u32(vmovl_u16(*v386.i8), vtrn1q_s32(0, v387)), vshlq_u32(vmovl_high_u16(v386), vtrn1q_s32(0, v388)));
        v390 = vpaddq_s32(v387, v388);
        v391.i64[0] = v389.u32[0];
        v391.i64[1] = v389.u32[1];
        v392 = v391;
        v391.i64[0] = v389.u32[2];
        v391.i64[1] = v389.u32[3];
        v393 = v391;
        v391.i64[0] = v390.u32[0];
        v391.i64[1] = v390.u32[1];
        v394 = v391;
        v391.i64[0] = v390.u32[2];
        v391.i64[1] = v390.u32[3];
        v395 = vpaddq_s64(vshlq_u64(v392, vzip1q_s64(0, v394)), vshlq_u64(v393, vzip1q_s64(0, v391)));
        v396 = vpaddq_s64(v394, v391);
        v397 = (v395.i64[0] << v369) | v365;
        if (v396.i64[0] + (v369 & 0x3F) >= 0x40)
        {
          *(v228 + ((v369 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
          v397 = v395.i64[0] >> -(v369 & 0x3F);
          if ((v369 & 0x3F) == 0)
          {
            v397 = 0;
          }
        }

        v398 = v396.i64[0] + v369;
        v365 = v397 | (v395.i64[1] << v398);
        if ((v398 & 0x3F) + v396.i64[1] >= 0x40)
        {
          *(v228 + ((v398 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
          v365 = v395.i64[1] >> -(v398 & 0x3F);
          if ((v398 & 0x3F) == 0)
          {
            v365 = 0;
          }
        }

        v369 = v398 + v396.i64[1];
        v383 += 16;
      }

      while (v383 != 64);
      v399 = 0;
      v400.i64[0] = 0xF000F000F000FLL;
      v400.i64[1] = 0xF000F000F000FLL;
      v401.i64[0] = -1;
      v401.i64[1] = -1;
      do
      {
        v402 = vandq_s8(vshlq_u16(v401, vaddq_s16(v473, v400)), *(&v464 + v399));
        v403 = vmovl_u16(*v473.i8);
        v404 = vmovl_high_u16(v473);
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
        v413 = (v411.i64[0] << v369) | v365;
        if (v412.i64[0] + (v369 & 0x3F) >= 0x40)
        {
          *(v228 + ((v369 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v413;
          v413 = v411.i64[0] >> -(v369 & 0x3F);
          if ((v369 & 0x3F) == 0)
          {
            v413 = 0;
          }
        }

        v414 = v412.i64[0] + v369;
        v365 = v413 | (v411.i64[1] << v414);
        if ((v414 & 0x3F) + v412.i64[1] >= 0x40)
        {
          *(v228 + ((v414 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
          v365 = v411.i64[1] >> -(v414 & 0x3F);
          if ((v414 & 0x3F) == 0)
          {
            v365 = 0;
          }
        }

        v369 = v414 + v412.i64[1];
        v399 += 16;
      }

      while (v399 != 64);
      if ((v369 & 0x3F) != 0)
      {
        *(v228 + ((v369 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
      }

      result = (v369 - v229 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    v231 = vld1q_dup_f64(a3->i64);
    v232 = vorrq_s8(vandq_s8(vshlq_u64(v231, xmmword_29D2F1440), xmmword_29D2F1470), vandq_s8(vshlq_u64(v231, xmmword_29D2F1450), xmmword_29D2F1460));
    *v232.i8 = vorr_s8(*v232.i8, *&vextq_s8(v232, v232, 8uLL));
    *a1 = v232.i32[0];
    *(a1 + 4) = v232.i8[4];
    *a2 = 4;
    return 5;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v82 = *MEMORY[0x29EDCA608];
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
  if (a6 && a5)
  {
    if (a5 > 1)
    {
      v19 = a5 & 0x7E;
      if (a5 == v19)
      {
        v20 = 0;
        v21 = &v68;
        v22 = (a3 + 8);
        do
        {
          v23 = v22;
          v24 = v21;
          v25 = a5;
          do
          {
            v26 = (*v23 >> 6) & 0x3FF03FF03FF03FFLL;
            *(v24 - 4) = (*(v23 - 1) >> 6) & 0x3FF03FF03FF03FFLL;
            *v24 = v26;
            v24 += 8;
            v23 += 2;
            v25 -= 2;
          }

          while (v25);
          ++v20;
          v21 = (v21 + 8);
          v22 = (v22 + a4);
        }

        while (v20 != a6);
      }

      else
      {
        v27 = 0;
        v28 = &v68;
        v29 = (a3 + 8);
        v30 = &v66 + 4 * ((a5 >> 1) & 0x3F);
        do
        {
          v31 = v29;
          v32 = v28;
          v33 = a5 & 0x7E;
          do
          {
            v34 = (*v31 >> 6) & 0x3FF03FF03FF03FFLL;
            *(v32 - 4) = (*(v31 - 1) >> 6) & 0x3FF03FF03FF03FFLL;
            *v32 = v34;
            v32 += 8;
            v31 += 2;
            v33 -= 2;
          }

          while (v33);
          v35 = (a3 + v27 * a4 + 8 * v19);
          v36 = v30;
          v37 = a5 - v19;
          do
          {
            v38 = *v35++;
            *v36 = (v38 >> 6) & 0x3FF03FF03FF03FFLL;
            v36 += 4;
            --v37;
          }

          while (v37);
          ++v27;
          v28 = (v28 + 8);
          v29 = (v29 + a4);
          v30 = (v30 + 8);
        }

        while (v27 != a6);
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
      v12 = &v66 + 1;
      v13 = v10;
      do
      {
        v14 = *(v11 - 1);
        v15 = *v11;
        v11 = (v11 + 2);
        *(v12 - 1) = (v14 >> 6) & 0x3FF03FF03FF03FFLL;
        *v12 = (v15 >> 6) & 0x3FF03FF03FF03FFLL;
        v12 += 2;
        v13 -= 2;
      }

      while (v13);
      if (v10 != a6)
      {
LABEL_9:
        v16 = a6 - v10;
        v17 = &v66 + v10;
        v18 = (a3 + v10 * a4);
        do
        {
          *v17++ = (*v18 >> 6) & 0x3FF03FF03FF03FFLL;
          v18 = (v18 + a4);
          --v16;
        }

        while (v16);
      }
    }
  }

  v58 = vmovl_u16(*&v66);
  v59 = vmovl_u16(*&v68);
  v60 = vmovl_u16(*(&v66 + 8));
  v61 = vmovl_u16(*(&v68 + 8));
  v62 = vmovl_u16(*&v70);
  v63 = vmovl_u16(*&v72);
  v39 = vmovl_u16(*(&v70 + 8));
  v40 = vmovl_u16(*(&v72 + 8));
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

  if (a6 >= 2)
  {
    v43 = 2;
  }

  else
  {
    v43 = a6;
  }

  v64 = v39;
  v65 = v40;
  if (a6 >= 2)
  {
    v44 = a6 - 2;
  }

  else
  {
    v44 = 0;
  }

  v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1, &v58, a7, v41, v43);
  v58 = vmovl_u16(*&v67);
  v59 = vmovl_u16(*&v69);
  v60 = vmovl_u16(*(&v67 + 8));
  v61 = vmovl_u16(*(&v69 + 8));
  v62 = vmovl_u16(*&v71);
  v63 = vmovl_u16(*&v73);
  v64 = vmovl_u16(*(&v71 + 8));
  v65 = vmovl_u16(*(&v73 + 8));
  if (a6 >= 4)
  {
    v47 = 2;
  }

  else
  {
    v47 = v44;
  }

  v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 24, &v58, a7, v41, v47);
  v58 = vmovl_u16(*&v74);
  v59 = vmovl_u16(*&v76);
  v60 = vmovl_u16(*(&v74 + 8));
  v61 = vmovl_u16(*(&v76 + 8));
  v62 = vmovl_u16(*&v78);
  v63 = vmovl_u16(*&v80);
  v49 = vmovl_u16(*(&v78 + 8));
  v50 = vmovl_u16(*(&v80 + 8));
  if (a5 >= 8)
  {
    v51 = 4;
  }

  else
  {
    v51 = v42;
  }

  v64 = v49;
  v65 = v50;
  v52 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 48, &v58, a7, v51, v43);
  v58 = vmovl_u16(*&v75);
  v59 = vmovl_u16(*&v77);
  v60 = vmovl_u16(*(&v75 + 8));
  v61 = vmovl_u16(*(&v77 + 8));
  v62 = vmovl_u16(*&v79);
  v63 = vmovl_u16(*&v81);
  v64 = vmovl_u16(*(&v79 + 8));
  v65 = vmovl_u16(*(&v81 + 8));
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(a1 + 72, &v58, a7, v51, v47);
  if (v52)
  {
    v54 = 4;
  }

  else
  {
    v54 = 0;
  }

  if (v48)
  {
    v55 = 2;
  }

  else
  {
    v55 = 0;
  }

  if (result)
  {
    v56 = -8;
  }

  else
  {
    v56 = -16;
  }

  *a2 = v56 | v54 | v46 | v55;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressLossyCompressedSubblockDQuad(unint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v342 = *MEMORY[0x29EDCA608];
  memset_pattern16(&__b, &unk_29D2F26C0, 0x10uLL);
  memset_pattern16(v329, &unk_29D2F26D0, 0x10uLL);
  memset_pattern16(v328, &unk_29D2F26E0, 0x10uLL);
  v9 = 0;
  if (a4)
  {
    v10 = a5 < 2;
  }

  else
  {
    v10 = 1;
  }

  v313 = v10;
  v11 = a4 < 2 || a5 == 0;
  v311 = v11;
  v12 = a4 < 2 || a5 < 2;
  v309 = v12;
  v13 = a4 < 3 || a5 == 0;
  v307 = v13;
  v14 = a4 < 3 || a5 < 2;
  v15 = a4 < 4 || a5 == 0;
  v16 = a4 < 4 || a5 < 2;
  v17 = a2 + 64;
  do
  {
    v18 = (v17 + v9 * 4);
    v19 = *(v17 + v9 * 4 - 64);
    if (a3 == 1)
    {
      v28 = &v331[v9];
      if (v19 == 513)
      {
        v19 = 0;
      }

      else
      {
        v19 ^= 0x200u;
      }

      *v28 = v19;
      v29 = *(v18 - 12);
      if (v29 == 513)
      {
        v21 = 0;
      }

      else
      {
        v21 = v29 ^ 0x200;
      }

      v28[4] = v21;
      v30 = *(v18 - 8);
      if (v30 == 513)
      {
        v22 = 0;
      }

      else
      {
        v22 = v30 ^ 0x200;
      }

      v28[8] = v22;
      v31 = *(v18 - 4);
      v23 = v31 ^ 0x200;
      if (v31 == 513)
      {
        v23 = 0;
      }

      v28[12] = v23;
      if (*v18 == 513)
      {
        v24 = 0;
      }

      else
      {
        v24 = *v18 ^ 0x200;
      }

      v28[16] = v24;
      v32 = v18[4];
      if (v32 == 513)
      {
        v25 = 0;
      }

      else
      {
        v25 = v32 ^ 0x200;
      }

      v28[20] = v25;
      v33 = v18[8];
      v26 = v33 ^ 0x200;
      if (v33 == 513)
      {
        v26 = 0;
      }

      v28[24] = v26;
      v34 = v18[12];
      v27 = v34 ^ 0x200;
      if (v34 == 513)
      {
        v27 = 0;
      }

      v28[28] = v27;
    }

    else
    {
      if (a3 == 3)
      {
        v19 ^= 0x200u;
        v20 = &v331[v9];
        *v20 = v19;
        v21 = *(v17 + v9 * 4 - 48) ^ 0x200;
        v20[4] = v21;
        v22 = *(v17 + v9 * 4 - 32) ^ 0x200;
        v20[8] = v22;
        v23 = *(v17 + v9 * 4 - 16) ^ 0x200;
        v20[12] = v23;
        v24 = *(v17 + v9 * 4) ^ 0x200;
        v20[16] = v24;
        v25 = *(v17 + v9 * 4 + 16) ^ 0x200;
        v20[20] = v25;
        v26 = *(v17 + v9 * 4 + 32) ^ 0x200;
        v20[24] = v26;
        v27 = *(v17 + v9 * 4 + 48) ^ 0x200;
      }

      else
      {
        v20 = &v331[v9];
        *v20 = v19;
        v21 = *(v17 + v9 * 4 - 48);
        v20[4] = v21;
        v22 = *(v17 + v9 * 4 - 32);
        v20[8] = v22;
        v23 = *(v17 + v9 * 4 - 16);
        v20[12] = v23;
        v24 = *(v17 + v9 * 4);
        v20[16] = v24;
        v25 = *(v17 + v9 * 4 + 16);
        v20[20] = v25;
        v26 = *(v17 + v9 * 4 + 32);
        v20[24] = v26;
        v27 = *(v17 + v9 * 4 + 48);
      }

      v20[28] = v27;
    }

    v35 = &v336[v9 + 4];
    v336[v9 + 4] = v19;
    v337[v9] = v19;
    v336[v9] = 0;
    if (v311)
    {
      v36 = v19;
      if (v313)
      {
        goto LABEL_65;
      }

LABEL_60:
      if (v22 < v36)
      {
        v336[v9] = 2;
        v337[v9] = v22;
        v36 = v22;
      }

      v38 = &v331[v9 + 8];
      if (v19 >= v22)
      {
        v38 = &v336[v9 + 4];
      }

      v19 = *v38;
      *v35 = *v38;
      goto LABEL_65;
    }

    v36 = v19;
    if (v21 < v19)
    {
      v336[v9] = 1;
      v337[v9] = v21;
      v36 = v21;
    }

    if (v19 >= v21)
    {
      v37 = &v336[v9 + 4];
    }

    else
    {
      v37 = &v331[v9 + 4];
    }

    v19 = *v37;
    *v35 = *v37;
    if (!v313)
    {
      goto LABEL_60;
    }

LABEL_65:
    if (v309)
    {
      if (v13)
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v23 < v36)
      {
        v336[v9] = 3;
        v337[v9] = v23;
        v36 = v23;
      }

      v39 = &v331[v9 + 12];
      if (v19 >= v23)
      {
        v39 = &v336[v9 + 4];
      }

      v19 = *v39;
      *v35 = *v39;
      if (v13)
      {
LABEL_67:
        if (v15)
        {
          goto LABEL_68;
        }

        goto LABEL_81;
      }
    }

    if (v24 < v36)
    {
      v336[v9] = 4;
      v337[v9] = v24;
      v36 = v24;
    }

    v40 = &v331[v9 + 16];
    if (v19 >= v24)
    {
      v40 = &v336[v9 + 4];
    }

    v19 = *v40;
    *v35 = *v40;
    if (v15)
    {
LABEL_68:
      if (v14)
      {
        goto LABEL_69;
      }

      goto LABEL_86;
    }

LABEL_81:
    if (v25 < v36)
    {
      v336[v9] = 5;
      v337[v9] = v25;
      v36 = v25;
    }

    v41 = &v331[v9 + 20];
    if (v19 >= v25)
    {
      v41 = &v336[v9 + 4];
    }

    v19 = *v41;
    *v35 = *v41;
    if (v14)
    {
LABEL_69:
      if (v16)
      {
        goto LABEL_96;
      }

LABEL_91:
      if (v27 < v36)
      {
        v336[v9] = 7;
        v337[v9] = v27;
        v36 = v27;
      }

      v43 = &v331[v9 + 28];
      if (v19 >= v27)
      {
        v43 = &v336[v9 + 4];
      }

      v19 = *v43;
      *v35 = *v43;
      goto LABEL_96;
    }

LABEL_86:
    if (v26 < v36)
    {
      v336[v9] = 6;
      v337[v9] = v26;
      v36 = v26;
    }

    v42 = &v331[v9 + 24];
    if (v19 >= v26)
    {
      v42 = &v336[v9 + 4];
    }

    v19 = *v42;
    *v35 = *v42;
    if (!v16)
    {
      goto LABEL_91;
    }

LABEL_96:
    v44 = __clz(v19 - v36);
    if (v44 - 29 >= 3)
    {
      v45 = 31 - v44;
    }

    else
    {
      v45 = 2;
    }

    v46 = v45 & ~(v45 >> 31);
    v47 = v19 - v36;
    if (v19 == v36 && v45 < 3)
    {
      if (v36)
      {
        v46 = v36 != 1023;
      }

      else
      {
        v46 = 0;
      }
    }

    *(&v332 + v9 * 4) = v46;
    if ((a3 | 2) == 3)
    {
      v48 = 0;
      if (v19 >= 0x200 && v36 <= 0x1FF)
      {
        v48 = kDQuadParamTable[10 * v46 + 168] == 0;
      }

      if (v46 <= 5)
      {
LABEL_111:
        if (!v48)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v48 = 0;
      if (v46 <= 5)
      {
        goto LABEL_111;
      }
    }

    v49 = kDQuadParamTable[10 * v46 + 164] + !v48;
    if (v48)
    {
      v50 = 0;
    }

    else
    {
      v50 = -2;
    }

    v51 = v36 & ~(-1 << (10 - v49));
    if (v49 >= 0xA)
    {
      v52 = 0;
    }

    else
    {
      v52 = v51;
    }

    v53 = v52 + v50;
    v54 = __clz(v53 + v47);
    if (v53 >= 1 && v54 < v44)
    {
      *(&v332 + v9 * 4) = v46 + 1;
    }

LABEL_23:
    ++v9;
  }

  while (v9 != 4);
  v327[0] = 0;
  v327[1] = 0;
  v326[0] = 0;
  v326[1] = 0;
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::deriveLossyDQuadBitSharing(v329, &v332, v327, v326);
  v56 = 0;
  v57 = 0;
  if (a4)
  {
    v58 = a5 == 0;
  }

  else
  {
    v58 = 1;
  }

  v59 = v58;
  while (2)
  {
    v61 = v329[v56 / 4];
    v62 = *(&v332 + v56);
    v63 = &kDQuadParamTable[160 * v61 + 10 * v62];
    v64 = *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)11,(AGXTextureFootprint)2>::getDquadExtraBitScale(AGX::AppleCompressionGen2::DQuadFmtId)::kDQuadBitTable + 4 * v61 + 2);
    v65 = v63[5];
    v66 = v63[4] + v64;
    *(&v322 + v56) = v66;
    v67 = v65 + v64;
    *(&v318 + v56) = v67;
    v68 = *(v63 + 1);
    v69 = *(v326 + v56) - *(v327 + v56);
    if (v69 < 0)
    {
      v71 = &kDQuadParamTable[160 * v61 + 10 * v62];
      if (v71[7] < *(v327 + v56) - *(v326 + v56))
      {
        *(&v318 + v56) = --v67;
        if (!v71[8])
        {
          v70 = -1;
LABEL_136:
          *(&v322 + v56) = v70 + v66;
        }
      }
    }

    else if (v69)
    {
      v67 += v69;
      *(&v318 + v56) = v67;
      v70 = v69;
      goto LABEL_136;
    }

    if (v61 == 5 && v62 == 1)
    {
      v57 |= v69 < 2;
    }

    if (a3 == 4)
    {
      v72 = 1 << (*(&__b + v56) - 1);
      if (v61 == 3)
      {
        v73 = -31745;
      }

      else
      {
        v73 = -1;
      }

      if (v61 == 4)
      {
        v74 = -2139095041;
      }

      else
      {
        v74 = v73;
      }

      if (v59)
      {
        if (v311)
        {
          goto LABEL_151;
        }

LABEL_165:
        v78 = v331[v56 / 4 + 4];
        v80 = (v78 | v74) == 0xFFFFFFFF || v78 == v72;
        v57 |= v80;
        if (!v313)
        {
          goto LABEL_172;
        }

LABEL_152:
        if (v309)
        {
          goto LABEL_153;
        }

LABEL_179:
        v84 = v331[v56 / 4 + 12];
        v86 = (v84 | v74) == 0xFFFFFFFF || v84 == v72;
        v57 |= v86;
        if (!v307)
        {
          goto LABEL_186;
        }

LABEL_154:
        if (v15)
        {
          goto LABEL_155;
        }

LABEL_193:
        v90 = v331[v56 / 4 + 20];
        v92 = (v90 | v74) == 0xFFFFFFFF || v90 == v72;
        v57 |= v92;
        if (!v14)
        {
          goto LABEL_200;
        }

LABEL_156:
        if (!v16)
        {
          goto LABEL_207;
        }
      }

      else
      {
        v75 = v331[v56 / 4];
        v77 = (v75 | v74) == 0xFFFFFFFF || v75 == v72;
        v57 |= v77;
        if (!v311)
        {
          goto LABEL_165;
        }

LABEL_151:
        if (v313)
        {
          goto LABEL_152;
        }

LABEL_172:
        v81 = v331[v56 / 4 + 8];
        v83 = (v81 | v74) == 0xFFFFFFFF || v81 == v72;
        v57 |= v83;
        if (!v309)
        {
          goto LABEL_179;
        }

LABEL_153:
        if (v307)
        {
          goto LABEL_154;
        }

LABEL_186:
        v87 = v331[v56 / 4 + 16];
        v89 = (v87 | v74) == 0xFFFFFFFF || v87 == v72;
        v57 |= v89;
        if (!v15)
        {
          goto LABEL_193;
        }

LABEL_155:
        if (v14)
        {
          goto LABEL_156;
        }

LABEL_200:
        v93 = v331[v56 / 4 + 24];
        v95 = (v93 | v74) == 0xFFFFFFFF || v93 == v72;
        v57 |= v95;
        if (!v16)
        {
LABEL_207:
          v96 = v331[v56 / 4 + 28];
          v98 = (v96 | v74) == 0xFFFFFFFF || v96 == v72;
          v57 |= v98;
        }
      }
    }

    if (v68 >> v67 > 1 << *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)19,(AGXTextureFootprint)3>::lossyFallBackInfo + v56 + 32))
    {
      v60 = 1;
    }

    else
    {
      v60 = v59;
    }

    v57 |= v60;
    v56 += 4;
    if (v56 != 16)
    {
      continue;
    }

    break;
  }

  v99 = 0;
  v316 = 0;
  v317 = 0;
  memset(v315, 0, sizeof(v315));
  v100 = v331;
  v101 = v330;
  do
  {
    v102 = 0;
    v103 = 0;
    v104 = *(&__b + v99);
    if (v104 >= *(&v322 + v99))
    {
      v105 = *(&v322 + v99);
    }

    else
    {
      v105 = *(&__b + v99);
    }

    *(&v322 + v99) = v105;
    v106 = -1 << v104;
    v107 = &kDQuadParamTable[160 * v329[v99] + 10 * *(&v332 + v99)];
    if (v107[5])
    {
      v108 = v104;
    }

    else
    {
      v108 = 0;
    }

    if (v108 >= *(&v318 + v99))
    {
      v108 = *(&v318 + v99);
    }

    *(&v318 + v99) = v108;
    v109 = *(v107 + 1);
    v110 = v337[v99] & (-1 << (v104 - v105));
    *(&v316 + v99) = v110;
    v111 = v109 >> v108;
    v112 = &v331[v99];
    v113 = *v112 - v110;
    v114 = &v330[2 * v99];
    if (v59)
    {
      v113 = 0;
    }

    v115 = v112[4] - v110;
    if (v311)
    {
      v115 = 0;
    }

    *v114 = v113;
    v114[1] = v115;
    v116 = v112[8] - v110;
    if (v313)
    {
      v116 = 0;
    }

    v117 = v112[12] - v110;
    if (v309)
    {
      v117 = 0;
    }

    v114[2] = v116;
    v114[3] = v117;
    v118 = v112[16] - v110;
    if (v307)
    {
      v118 = 0;
    }

    v119 = v112[20] - v110;
    if (v15)
    {
      v119 = 0;
    }

    v114[4] = v118;
    v114[5] = v119;
    v120 = v112[24] - v110;
    if (v14)
    {
      v120 = 0;
    }

    v121 = v112[28] - v110;
    if (v16)
    {
      v121 = 0;
    }

    v114[6] = v120;
    v114[7] = v121;
    if (v111 <= 1)
    {
      v122 = 1;
    }

    else
    {
      v122 = v111;
    }

    v123 = 4 * v336[v99];
    v124 = v315 + 28 * v99;
    v125 = &byte_29D2F3081;
    do
    {
      if (v123 != v102)
      {
        if (v108)
        {
          v126 = *(v101 + v102) / v122;
        }

        else
        {
          LODWORD(v126) = 0;
        }

        *&v124[4 * v103] = v126;
        if (v111 >= 2)
        {
          v127 = *(v101 + v102);
          if (v127)
          {
            if (v127 / v122 * v122 == v127 && ((v127 / v122) & 1) != 0)
            {
              if (v110 || v126 != 1)
              {
                if ((a3 | 2) != 3 || (v129 = v100[v102], v130 = v328[v99], v129 != v130) && ((a3 | 2) != 3 || v122 + v130 != v129))
                {
                  LODWORD(v126) = v126 - 1;
                  *&v124[4 * v103] = v126;
                }
              }

              else
              {
                LODWORD(v126) = 1;
              }
            }
          }
        }

        if (v126 >> v108 || (v100[v102] ^ v106) == 0xFFFFFFFF)
        {
          *&v124[4 * v103] = ~(-1 << v108);
        }

        if (*v125 >= a5 || *(v125 - 1) >= a4)
        {
          *&v124[4 * v103] = 0;
        }

        ++v103;
      }

      v102 += 4;
      v125 += 2;
    }

    while (v102 != 32);
    ++v99;
    v101 += 2;
    ++v100;
  }

  while (v99 != 4);
  v131 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v132 = 8 * (a1 & 7);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v57)
  {
    v133 = 0;
    v134 = 0;
    v135 = __b;
    v136 = v339;
    v137 = __b - 4;
    v138 = v339 - 4;
    v140 = v340;
    v139 = v341;
    v141 = v340 - 4;
    v142 = v341 - 4;
    v143 = 8 * (a1 & 7);
    while (1)
    {
      v144 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v133;
      v145 = v144[1] < a5 && a4 > *v144;
      v146 = !v145;
      if (v145)
      {
        v147 = v331[4 * v133] >> 4;
        if (v137 > 0x100)
        {
          goto LABEL_291;
        }
      }

      else
      {
        v147 = 0;
        if (v137 > 0x100)
        {
          goto LABEL_291;
        }
      }

      if (v135 != 4 && (v143 - v132 + (v134 << 6) + v137) <= 0xC0)
      {
        v148 = 0;
        v149 = v135 - 4;
        do
        {
          v150 = 64 - v143;
          if (64 - v143 >= v149)
          {
            v150 = v149;
          }

          v131[v134] |= ((v147 >> v148) & ~(-1 << v150)) << v143;
          v148 += v150;
          v151 = v150 + v143;
          v134 += v151 >> 6;
          v143 = v151 & 0x3F;
          v149 -= v150;
        }

        while (v149);
      }

LABEL_291:
      v152 = &v331[4 * v133];
      if (v146)
      {
        v153 = 0;
        if (v138 > 0x100)
        {
          goto LABEL_301;
        }
      }

      else
      {
        v153 = v152[1] >> 4;
        if (v138 > 0x100)
        {
          goto LABEL_301;
        }
      }

      if (v136 != 4 && (v143 - v132 + (v134 << 6) + v138) <= 0xC0)
      {
        v154 = 0;
        v155 = v136 - 4;
        do
        {
          v156 = 64 - v143;
          if (64 - v143 >= v155)
          {
            v156 = v155;
          }

          v131[v134] |= ((v153 >> v154) & ~(-1 << v156)) << v143;
          v154 += v156;
          v157 = v156 + v143;
          v134 += v157 >> 6;
          v143 = v157 & 0x3F;
          v155 -= v156;
        }

        while (v155);
      }

LABEL_301:
      if (v146)
      {
        v158 = 0;
        if (v141 > 0x100)
        {
          goto LABEL_311;
        }
      }

      else
      {
        v158 = v152[2] >> 4;
        if (v141 > 0x100)
        {
          goto LABEL_311;
        }
      }

      if (v140 != 4 && (v143 - v132 + (v134 << 6) + v141) <= 0xC0)
      {
        v159 = 0;
        v160 = v140 - 4;
        do
        {
          v161 = 64 - v143;
          if (64 - v143 >= v160)
          {
            v161 = v160;
          }

          v131[v134] |= ((v158 >> v159) & ~(-1 << v161)) << v143;
          v159 += v161;
          v162 = v161 + v143;
          v134 += v162 >> 6;
          v143 = v162 & 0x3F;
          v160 -= v161;
        }

        while (v160);
      }

LABEL_311:
      if (v146)
      {
        v163 = 0;
        if (v142 <= 0x100)
        {
          goto LABEL_315;
        }
      }

      else
      {
        v163 = v152[3] >> 4;
        if (v142 <= 0x100)
        {
LABEL_315:
          if (v139 != 4 && (v143 - v132 + (v134 << 6) + v142) <= 0xC0)
          {
            v164 = 0;
            v165 = v139 - 4;
            do
            {
              v166 = 64 - v143;
              if (64 - v143 >= v165)
              {
                v166 = v165;
              }

              v131[v134] |= ((v163 >> v164) & ~(-1 << v166)) << v143;
              v164 += v166;
              v167 = v166 + v143;
              v134 += v167 >> 6;
              v143 = v167 & 0x3F;
              v165 -= v166;
            }

            while (v165);
          }
        }
      }

      if (++v133 == 8)
      {
        return v57 & 1;
      }
    }
  }

  v168 = v332;
  if (v337[0] | v332)
  {
    if (v332 <= 2)
    {
      v169 = 0;
      v312 = 0;
      v170 = v332 + 1;
      goto LABEL_326;
    }

    v172 = 0;
    v170 = 0;
    v171 = 0;
    v169 = (v332 + 6) & 7;
    v312 = 1;
  }

  else
  {
    v169 = 0;
    v312 = 0;
    v170 = 0;
LABEL_326:
    v171 = 1;
    v172 = 2;
  }

  v173 = (v169 << v132) | *v131;
  *v131 = v173;
  v174 = v132 | 3;
  v175 = v333;
  if (v337[1] | v333)
  {
    if (v333 < 3)
    {
      v176 = 0;
      v310 = 0;
      v177 = v333 + 1;
      goto LABEL_332;
    }

    v314 = 0;
    v177 = 0;
    v178 = 0;
    v176 = (v333 + 6) & 7;
    v310 = 1;
  }

  else
  {
    v176 = 0;
    v310 = 0;
    v177 = 0;
LABEL_332:
    v178 = 1;
    v314 = 2;
  }

  if ((v174 - v132) <= 0xBD)
  {
    *v131 = (v176 << v174) | v173;
    v174 = v132 | 6;
  }

  v179 = v334;
  if (v337[2] | v334)
  {
    if (v334 < 3)
    {
      v180 = 0;
      v308 = 0;
      v181 = v334 + 1;
      goto LABEL_340;
    }

    v183 = 0;
    v181 = 0;
    v182 = 0;
    v180 = v334 - 2;
    v308 = 1;
  }

  else
  {
    v180 = 0;
    v308 = 0;
    v181 = 0;
LABEL_340:
    v182 = 1;
    v183 = 2;
  }

  if ((v174 - v132 - 190) >= 0xFFFFFFFFFFFFFF3FLL)
  {
    v184 = 0;
    v185 = 0;
    v186 = 3;
    do
    {
      v187 = 64 - v174;
      if (64 - v174 >= v186)
      {
        v187 = v186;
      }

      v131[v184] |= ((v180 >> v185) & ~(-1 << v187)) << v174;
      v185 += v187;
      v188 = v187 + v174;
      v184 += v188 >> 6;
      v174 = v188 & 0x3F;
      v186 -= v187;
    }

    while (v186);
  }

  else
  {
    v184 = 0;
  }

  v189 = v335;
  v190 = v337[3] | v335;
  v191 = v335 - 2;
  if (v335 >= 3)
  {
    v192 = 1;
  }

  else
  {
    v191 = 0;
    v192 = 0;
  }

  if (v335 >= 3)
  {
    v193 = 0;
  }

  else
  {
    v193 = 2;
  }

  if (v335 < 3)
  {
    v194 = v335 + 1;
  }

  else
  {
    v194 = 0;
  }

  if (v190)
  {
    v195 = v192;
  }

  else
  {
    v191 = 0;
    v195 = 0;
  }

  if (v190)
  {
    v196 = v193;
  }

  else
  {
    v196 = 2;
  }

  if (v190)
  {
    v197 = v194;
  }

  else
  {
    v197 = 0;
  }

  if (v190)
  {
    v198 = v335 < 3;
  }

  else
  {
    v198 = 1;
  }

  if ((v174 - v132 + (v184 << 6) + 3) <= 0xC0)
  {
    v199 = 0;
    v200 = 3;
    do
    {
      v201 = 64 - v174;
      if (64 - v174 >= v200)
      {
        v201 = v200;
      }

      v131[v184] |= ((v191 >> v199) & ~(-1 << v201)) << v174;
      v199 += v201;
      v202 = v201 + v174;
      v184 += v202 >> 6;
      v174 = v202 & 0x3F;
      v200 -= v201;
    }

    while (v200);
  }

  if (!v171)
  {
    v208 = 12;
    if (!v178)
    {
      goto LABEL_394;
    }

    goto LABEL_385;
  }

  v203 = v172;
  v204 = v312;
  if (v174 - v132 + (v184 << 6) + v172 > 0xC0)
  {
    v204 = 1;
  }

  if ((v204 & 1) == 0)
  {
    v205 = 0;
    do
    {
      v206 = 64 - v174;
      if (64 - v174 >= v203)
      {
        v206 = v203;
      }

      v131[v184] |= ((v170 >> v205) & ~(-1 << v206)) << v174;
      v205 += v206;
      v207 = v206 + v174;
      v184 += v207 >> 6;
      v174 = v207 & 0x3F;
      v203 -= v206;
    }

    while (v203);
  }

  v208 = v172 | 0xC;
  if (v178)
  {
LABEL_385:
    v209 = v314;
    if (v174 - v132 + (v184 << 6) + v314 > 0xC0)
    {
      v210 = 1;
    }

    else
    {
      v210 = v310;
    }

    if ((v210 & 1) == 0)
    {
      v211 = 0;
      do
      {
        v212 = 64 - v174;
        if (64 - v174 >= v209)
        {
          v212 = v209;
        }

        v131[v184] |= ((v177 >> v211) & ~(-1 << v212)) << v174;
        v211 += v212;
        v213 = v212 + v174;
        v184 += v213 >> 6;
        v174 = v213 & 0x3F;
        v209 -= v212;
      }

      while (v209);
    }

    v208 += v314;
  }

LABEL_394:
  if (v182)
  {
    v215 = v183;
    v216 = v308;
    if (v174 - v132 + (v184 << 6) + v183 > 0xC0)
    {
      v216 = 1;
    }

    if ((v216 & 1) == 0)
    {
      v217 = 0;
      do
      {
        v218 = 64 - v174;
        if (64 - v174 >= v215)
        {
          v218 = v215;
        }

        v131[v184] |= ((v181 >> v217) & ~(-1 << v218)) << v174;
        v217 += v218;
        v219 = v218 + v174;
        v184 += v219 >> 6;
        v174 = v219 & 0x3F;
        v215 -= v218;
      }

      while (v215);
    }

    v208 += v183;
    if (v198)
    {
      goto LABEL_406;
    }

LABEL_396:
    v214 = __b;
    if (v168)
    {
      goto LABEL_419;
    }

LABEL_415:
    if (v214 == 2 || v214 >= 0x10)
    {
      goto LABEL_419;
    }

    v225 = v339;
    if (!v175)
    {
      goto LABEL_528;
    }

LABEL_427:
    v232 = v323;
    if (v323 <= 0x100 && v323 && v174 - v132 + (v184 << 6) + v323 <= 0xC0)
    {
      v233 = 0;
      v234 = (HIDWORD(v316) >> (v225 - v323));
      v235 = v323;
      do
      {
        v236 = 64 - v174;
        if (64 - v174 >= v235)
        {
          v236 = v235;
        }

        v131[v184] |= ((v234 >> v233) & ~(-1 << v236)) << v174;
        v233 += v236;
        v237 = v236 + v174;
        v184 += v237 >> 6;
        v174 = v237 & 0x3F;
        v235 -= v236;
      }

      while (v235);
    }

    v208 += v232;
  }

  else
  {
    if (!v198)
    {
      goto LABEL_396;
    }

LABEL_406:
    if ((v174 - v132 + (v184 << 6) + v196) > 0xC0)
    {
      v220 = 1;
    }

    else
    {
      v220 = v195;
    }

    if ((v220 & 1) == 0)
    {
      v221 = 0;
      v222 = v196;
      do
      {
        v223 = 64 - v174;
        if (64 - v174 >= v222)
        {
          v223 = v222;
        }

        v131[v184] |= ((v197 >> v221) & ~(-1 << v223)) << v174;
        v221 += v223;
        v224 = v223 + v174;
        v184 += v224 >> 6;
        v174 = v224 & 0x3F;
        v222 -= v223;
      }

      while (v222);
    }

    v208 += v196;
    v214 = __b;
    if (!v168)
    {
      goto LABEL_415;
    }

LABEL_419:
    v226 = v322;
    if (v322 <= 0x100 && v322 && v174 - v132 + (v184 << 6) + v322 <= 0xC0)
    {
      v227 = 0;
      v228 = v316 >> (v214 - v322);
      v229 = v322;
      do
      {
        v230 = 64 - v174;
        if (64 - v174 >= v229)
        {
          v230 = v229;
        }

        v131[v184] |= ((v228 >> v227) & ~(-1 << v230)) << v174;
        v227 += v230;
        v231 = v230 + v174;
        v184 += v231 >> 6;
        v174 = v231 & 0x3F;
        v229 -= v230;
      }

      while (v229);
    }

    v208 += v226;
    v225 = v339;
    if (v175)
    {
      goto LABEL_427;
    }

LABEL_528:
    if (v225 == 2 || v225 >= 0x10)
    {
      goto LABEL_427;
    }
  }

  if (v179 || v340 == 2 || v340 >= 0x10)
  {
    v238 = v324;
    if (v324 <= 0x100 && v324 && v174 - v132 + (v184 << 6) + v324 <= 0xC0)
    {
      v239 = 0;
      v240 = v317 >> (v340 - v324);
      v241 = v324;
      do
      {
        v242 = 64 - v174;
        if (64 - v174 >= v241)
        {
          v242 = v241;
        }

        v131[v184] |= ((v240 >> v239) & ~(-1 << v242)) << v174;
        v239 += v242;
        v243 = v242 + v174;
        v184 += v243 >> 6;
        v174 = v243 & 0x3F;
        v241 -= v242;
      }

      while (v241);
    }

    v208 += v238;
  }

  if (v189 || v341 == 2 || v341 >= 0x10)
  {
    v244 = v325;
    if (v325 <= 0x100 && v325 && v174 - v132 + (v184 << 6) + v325 <= 0xC0)
    {
      v245 = 0;
      v246 = (HIDWORD(v317) >> (v341 - v325));
      v247 = v325;
      do
      {
        v248 = 64 - v174;
        if (64 - v174 >= v247)
        {
          v248 = v247;
        }

        v131[v184] |= ((v246 >> v245) & ~(-1 << v248)) << v174;
        v245 += v248;
        v249 = v248 + v174;
        v184 += v249 >> 6;
        v174 = v249 & 0x3F;
        v247 -= v248;
      }

      while (v247);
    }

    v208 += v244;
  }

  v250 = v318;
  if (v318)
  {
    if ((v174 - v132 + (v184 << 6) + 3) <= 0xC0)
    {
      v251 = 0;
      v252 = v336[0];
      v253 = 3;
      do
      {
        v254 = 64 - v174;
        if (64 - v174 >= v253)
        {
          v254 = v253;
        }

        v131[v184] |= ((v252 >> v251) & ~(-1 << v254)) << v174;
        v251 += v254;
        v255 = v254 + v174;
        v184 += v255 >> 6;
        v174 = v255 & 0x3F;
        v253 -= v254;
      }

      while (v253);
    }

    v208 += 3;
  }

  v256 = v319;
  if (v319)
  {
    if ((v174 - v132 + (v184 << 6) + 3) <= 0xC0)
    {
      v257 = 0;
      v258 = v336[1];
      v259 = 3;
      do
      {
        v260 = 64 - v174;
        if (64 - v174 >= v259)
        {
          v260 = v259;
        }

        v131[v184] |= ((v258 >> v257) & ~(-1 << v260)) << v174;
        v257 += v260;
        v261 = v260 + v174;
        v184 += v261 >> 6;
        v174 = v261 & 0x3F;
        v259 -= v260;
      }

      while (v259);
    }

    v208 += 3;
  }

  v262 = v320;
  if (v320)
  {
    if ((v174 - v132 + (v184 << 6) + 3) <= 0xC0)
    {
      v263 = 0;
      v264 = v336[2];
      v265 = 3;
      do
      {
        v266 = 64 - v174;
        if (64 - v174 >= v265)
        {
          v266 = v265;
        }

        v131[v184] |= ((v264 >> v263) & ~(-1 << v266)) << v174;
        v263 += v266;
        v267 = v266 + v174;
        v184 += v267 >> 6;
        v174 = v267 & 0x3F;
        v265 -= v266;
      }

      while (v265);
    }

    v208 += 3;
  }

  v268 = v321;
  if (v321)
  {
    if ((v174 - v132 + (v184 << 6) + 3) <= 0xC0)
    {
      v269 = 0;
      v270 = v336[3];
      v271 = 3;
      do
      {
        v272 = 64 - v174;
        if (64 - v174 >= v271)
        {
          v272 = v271;
        }

        v131[v184] |= ((v270 >> v269) & ~(-1 << v272)) << v174;
        v269 += v272;
        v273 = v272 + v174;
        v184 += v273 >> 6;
        v174 = v273 & 0x3F;
        v271 -= v272;
      }

      while (v271);
    }

    v208 += 3;
  }

  v274 = 192 - v208;
  v275 = (192 - v208) / 7u;
  v276 = v274 % 7;
  if ((v276 - 257) >= 0xFFFFFF00 && v174 - v132 + (v184 << 6) + v276 <= 0xC0)
  {
    do
    {
      v277 = 64 - v174;
      if (64 - v174 >= v276)
      {
        v277 = v276;
      }

      v278 = v277 + v174;
      v184 += v278 >> 6;
      v174 = v278 & 0x3F;
      v276 -= v277;
    }

    while (v276);
  }

  v279 = 0;
  while (2)
  {
    if (v250 && v250 <= 0x100 && v174 - v132 + (v184 << 6) + v250 <= 0xC0)
    {
      v280 = 0;
      v281 = *(v315 + v279);
      v282 = v250;
      do
      {
        v283 = 64 - v174;
        if (64 - v174 >= v282)
        {
          v283 = v282;
        }

        v131[v184] |= ((v281 >> v280) & ~(-1 << v283)) << v174;
        v280 += v283;
        v284 = v283 + v174;
        v184 += v284 >> 6;
        v174 = v284 & 0x3F;
        v282 -= v283;
      }

      while (v282);
    }

    v285 = v315 + v279;
    if (!v256)
    {
      v291 = v250;
      if (!v262)
      {
        goto LABEL_512;
      }

      goto LABEL_505;
    }

    if (v256 <= 0x100 && v174 - v132 + (v184 << 6) + v256 <= 0xC0)
    {
      v286 = 0;
      v287 = v285[7];
      v288 = v256;
      do
      {
        v289 = 64 - v174;
        if (64 - v174 >= v288)
        {
          v289 = v288;
        }

        v131[v184] |= ((v287 >> v286) & ~(-1 << v289)) << v174;
        v286 += v289;
        v290 = v289 + v174;
        v184 += v290 >> 6;
        v174 = v290 & 0x3F;
        v288 -= v289;
      }

      while (v288);
    }

    v291 = v256 + v250;
    if (v262)
    {
LABEL_505:
      if (v262 <= 0x100 && v174 - v132 + (v184 << 6) + v262 <= 0xC0)
      {
        v292 = 0;
        v293 = v285[14];
        v294 = v262;
        do
        {
          v295 = 64 - v174;
          if (64 - v174 >= v294)
          {
            v295 = v294;
          }

          v131[v184] |= ((v293 >> v292) & ~(-1 << v295)) << v174;
          v292 += v295;
          v296 = v295 + v174;
          v184 += v296 >> 6;
          v174 = v296 & 0x3F;
          v294 -= v295;
        }

        while (v294);
      }

      v291 += v262;
    }

LABEL_512:
    if (v268)
    {
      if (v268 <= 0x100 && v174 - v132 + (v184 << 6) + v268 <= 0xC0)
      {
        v297 = 0;
        v298 = v285[21];
        v299 = v268;
        do
        {
          v300 = 64 - v174;
          if (64 - v174 >= v299)
          {
            v300 = v299;
          }

          v131[v184] |= ((v298 >> v297) & ~(-1 << v300)) << v174;
          v297 += v300;
          v301 = v300 + v174;
          v184 += v301 >> 6;
          v174 = v301 & 0x3F;
          v299 -= v300;
        }

        while (v299);
      }

      v291 += v268;
    }

    v302 = v275 - v291;
    if (v302 && v302 <= 0x100 && v174 - v132 + (v184 << 6) + v302 <= 0xC0)
    {
      do
      {
        v303 = 64 - v174;
        if (64 - v174 >= v302)
        {
          v303 = v302;
        }

        v304 = v303 + v174;
        v184 += v304 >> 6;
        v174 = v304 & 0x3F;
        v302 -= v303;
      }

      while (v302);
    }

    if (++v279 != 7)
    {
      continue;
    }

    return v57 & 1;
  }
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = a3 & 0xFFFFFFFD;
  v6 = ((a3 & 0xFFFFFFFD) == 1) << 9;
  if (a3 == 4)
  {
    v7 = 0;
    v8 = 0;
    v9 = 8 * (a1 & 7);
    while (1)
    {
      result = v9 - v4 + (v8 << 6) - 187;
      v12 = (a2 + 16 * v7);
      if (result < 0xFFFFFFFFFFFFFF3FLL)
      {
        break;
      }

      v13 = 0;
      v14 = 0;
      v15 = 6;
      do
      {
        v16 = 64 - v9;
        if (64 - v9 >= v15)
        {
          v16 = v15;
        }

        v13 |= ((*(v3 + 8 * v8) >> v9) & ~(-1 << v16)) << v14;
        v14 += v16;
        v17 = v16 + v9;
        v8 += v17 >> 6;
        v9 = v17 & 0x3F;
        v15 -= v16;
      }

      while (v15);
      result = (16 * (v13 & 0x3F)) ^ v6;
      *(a2 + 16 * v7) = result;
      if ((v9 - v4 + (v8 << 6) - 187) < 0xFFFFFFFFFFFFFF3FLL)
      {
        goto LABEL_4;
      }

      v18 = 0;
      v19 = 0;
      v20 = 6;
      do
      {
        v21 = 64 - v9;
        if (64 - v9 >= v20)
        {
          v21 = v20;
        }

        v18 |= ((*(v3 + 8 * v8) >> v9) & ~(-1 << v21)) << v19;
        v19 += v21;
        v22 = v21 + v9;
        v8 += v22 >> 6;
        v9 = v22 & 0x3F;
        v20 -= v21;
      }

      while (v20);
      result = v9 - v4 + (v8 << 6) - 187;
      v12[1] = (16 * (v18 & 0x3F)) ^ v6;
      if (result >= 0xFFFFFFFFFFFFFF3FLL)
      {
        v23 = 0;
        v24 = 0;
        v25 = 6;
        do
        {
          v26 = 64 - v9;
          if (64 - v9 >= v25)
          {
            v26 = v25;
          }

          v23 |= ((*(v3 + 8 * v8) >> v9) & ~(-1 << v26)) << v24;
          v24 += v26;
          v27 = v26 + v9;
          v8 += v27 >> 6;
          v9 = v27 & 0x3F;
          v25 -= v26;
        }

        while (v25);
        result = v9 - v4 + (v8 << 6) - 187;
        v12[2] = (16 * (v23 & 0x3F)) ^ v6;
        if (result >= 0xFFFFFFFFFFFFFF3FLL)
        {
          v28 = 0;
          result = 0;
          v29 = 6;
          do
          {
            v30 = 64 - v9;
            if (64 - v9 >= v29)
            {
              v30 = v29;
            }

            v28 |= ((*(v3 + 8 * v8) >> v9) & ~(-1 << v30)) << result;
            result += v30;
            v31 = v30 + v9;
            v8 += v31 >> 6;
            v9 = v31 & 0x3F;
            v29 -= v30;
          }

          while (v29);
          v10 = 16 * (v28 & 0x3F);
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_6;
      }

LABEL_5:
      v10 = 0;
      v12[2] = v6;
LABEL_6:
      v12[3] = v10 ^ v6;
      if (++v7 == 8)
      {
        return result;
      }
    }

    *(a2 + 16 * v7) = v6;
LABEL_4:
    v12[1] = v6;
    goto LABEL_5;
  }

  v32 = 0;
  v33 = 0;
  v34 = 8 * (a1 & 7);
  do
  {
    if ((v34 - v4 + (v33 << 6) - 187) >= 0xFFFFFFFFFFFFFF3FLL)
    {
      v37 = 0;
      v38 = 0;
      v39 = 6;
      do
      {
        v40 = 64 - v34;
        if (64 - v34 >= v39)
        {
          v40 = v39;
        }

        v37 |= ((*(v3 + 8 * v33) >> v34) & ~(-1 << v40)) << v38;
        v38 += v40;
        v41 = v40 + v34;
        v33 += v41 >> 6;
        v34 = v41 & 0x3F;
        v39 -= v40;
      }

      while (v39);
      v36 = 16 * (v37 & 0x3F);
      if ((v36 != 512 || v5 != 1) && v36 != 0)
      {
        if (v36 == 1008)
        {
          v36 = 1023;
        }

        else
        {
          v36 = v36 - (v37 & 1) + 8;
        }
      }
    }

    else
    {
      v36 = 0;
    }

    *(a2 + 16 * v32) = v36 ^ v6;
    if ((v34 - v4 + (v33 << 6) - 187) >= 0xFFFFFFFFFFFFFF3FLL)
    {
      v45 = 0;
      v46 = 0;
      v47 = 6;
      do
      {
        v48 = 64 - v34;
        if (64 - v34 >= v47)
        {
          v48 = v47;
        }

        v45 |= ((*(v3 + 8 * v33) >> v34) & ~(-1 << v48)) << v46;
        v46 += v48;
        v49 = v48 + v34;
        v33 += v49 >> 6;
        v34 = v49 & 0x3F;
        v47 -= v48;
      }

      while (v47);
      v44 = 16 * (v45 & 0x3F);
      if ((v44 != 512 || v5 != 1) && v44 != 0)
      {
        if (v44 == 1008)
        {
          v44 = 1023;
        }

        else
        {
          v44 = v44 - (v45 & 1) + 8;
        }
      }
    }

    else
    {
      v44 = 0;
    }

    result = a2 + 16 * v32;
    *(result + 4) = v44 ^ v6;
    if ((v34 - v4 + (v33 << 6) - 187) >= 0xFFFFFFFFFFFFFF3FLL)
    {
      v53 = 0;
      v54 = 0;
      v55 = 6;
      do
      {
        v56 = 64 - v34;
        if (64 - v34 >= v55)
        {
          v56 = v55;
        }

        v53 |= ((*(v3 + 8 * v33) >> v34) & ~(-1 << v56)) << v54;
        v54 += v56;
        v57 = v56 + v34;
        v33 += v57 >> 6;
        v34 = v57 & 0x3F;
        v55 -= v56;
      }

      while (v55);
      v52 = 16 * (v53 & 0x3F);
      if ((v52 != 512 || v5 != 1) && v52 != 0)
      {
        if (v52 == 1008)
        {
          v52 = 1023;
        }

        else
        {
          v52 = v52 - (v53 & 1) + 8;
        }
      }
    }

    else
    {
      v52 = 0;
    }

    *(result + 8) = v52 ^ v6;
    if ((v34 - v4 + (v33 << 6) - 187) < 0xFFFFFFFFFFFFFF3FLL)
    {
      v35 = 0;
    }

    else
    {
      v60 = 0;
      v61 = 0;
      v62 = 6;
      do
      {
        v63 = 64 - v34;
        if (64 - v34 >= v62)
        {
          v63 = v62;
        }

        v60 |= ((*(v3 + 8 * v33) >> v34) & ~(-1 << v63)) << v61;
        v61 += v63;
        v64 = v63 + v34;
        v33 += v64 >> 6;
        v34 = v64 & 0x3F;
        v62 -= v63;
      }

      while (v62);
      v35 = 16 * (v60 & 0x3F);
      if ((v35 != 512 || v5 != 1) && v35 != 0)
      {
        v67 = v35 - (v60 & 1) + 8;
        if (v35 == 1008)
        {
          v35 = 1023;
        }

        else
        {
          v35 = v67;
        }
      }
    }

    *(result + 12) = v35 ^ v6;
    ++v32;
  }

  while (v32 != 8);
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3)
{
  v276 = *MEMORY[0x29EDCA608];
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = 8 * (a1 & 7);
  v6 = *(a1 & 0xFFFFFFFFFFFFFFF8);
  v7 = (v6 >> v5) & 7;
  v8 = v5 | 3;
  v9 = (v6 >> (v5 | 3u)) & 7;
  v10 = (v5 | 6) - v5;
  if ((v5 | 3uLL) - v5 <= 0xBD)
  {
    v11 = (8 * (a1 & 7)) | 6;
  }

  else
  {
    v10 = v8 - v5;
    v11 = (8 * (a1 & 7)) | 3;
  }

  if ((v8 - v5) <= 0xBD)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  if ((v10 - 190) >= 0xFFFFFFFFFFFFFF3FLL)
  {
    v15 = 0;
    v13 = 0;
    v17 = 0;
    v18 = 3;
    do
    {
      v19 = 64 - v11;
      if (64 - v11 >= v18)
      {
        v19 = v18;
      }

      v13 |= (((*(v4 + 8 * v15) >> v11) & ~(-1 << v19)) << v17);
      v17 += v19;
      v15 += (v19 + v11) >> 6;
      v11 = (v19 + v11) & 0x3F;
      v18 -= v19;
    }

    while (v18);
    v14 = v15 << 6;
    v10 = v11 - v5;
    if ((v11 - v5 + (v15 << 6) + 3) <= 0xC0)
    {
      v16 = 0;
      v20 = 0;
      v21 = 3;
      do
      {
        v22 = 64 - v11;
        if (64 - v11 >= v21)
        {
          v22 = v21;
        }

        v16 |= (((*(v4 + 8 * v15) >> v11) & ~(-1 << v22)) << v20);
        v20 += v22;
        v15 += (v22 + v11) >> 6;
        v11 = (v22 + v11) & 0x3F;
        v21 -= v22;
      }

      while (v21);
      v14 = v15 << 6;
      v10 = v11 - v5;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  v23 = 0;
  v273[0] = 10;
  v24 = 2 * (v7 == 0);
  if (!v7 && (v10 + v14 + v24) <= 0xC0)
  {
    v25 = 0;
    v26 = 0;
    v27 = 2 * (v7 == 0);
    do
    {
      v28 = 64 - v11;
      if (64 - v11 >= v27)
      {
        v28 = v27;
      }

      v25 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v28)) << v26;
      v26 += v28;
      v15 += (v28 + v11) >> 6;
      v11 = (v28 + v11) & 0x3F;
      v27 -= v28;
    }

    while (v27);
    v23 = v25 & 3;
  }

  if (v7)
  {
    v257 = 0;
    v29 = v7 + 2;
  }

  else
  {
    v257 = dword_29D2F2720[v23];
    v29 = *(&xmmword_29D2F1D80 + v23);
  }

  v30 = 0;
  v275[0] = v29;
  v274[0] = 1;
  v273[1] = 10;
  v31 = 2 * (v12 == 0);
  if (!v12 && (v11 - v5 + (v15 << 6) + v31) <= 0xC0)
  {
    v32 = 0;
    v33 = 0;
    v34 = 2 * (v12 == 0);
    do
    {
      v35 = 64 - v11;
      if (64 - v11 >= v34)
      {
        v35 = v34;
      }

      v32 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v35)) << v33;
      v33 += v35;
      v15 += (v35 + v11) >> 6;
      v11 = (v35 + v11) & 0x3F;
      v34 -= v35;
    }

    while (v34);
    v30 = v32 & 3;
  }

  if (v12)
  {
    v256 = 0;
    v36 = v12 + 2;
  }

  else
  {
    v256 = dword_29D2F2720[v30];
    v36 = *(&xmmword_29D2F1D80 + v30);
  }

  v37 = 0;
  v275[1] = v36;
  v274[1] = 1;
  v273[2] = 10;
  v38 = 2 * (v13 == 0);
  if (!v13 && (v11 - v5 + (v15 << 6) + v38) <= 0xC0)
  {
    v39 = 0;
    v40 = 0;
    v41 = 2 * (v13 == 0);
    do
    {
      v42 = 64 - v11;
      if (64 - v11 >= v41)
      {
        v42 = v41;
      }

      v39 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v42)) << v40;
      v40 += v42;
      v15 += (v42 + v11) >> 6;
      v11 = (v42 + v11) & 0x3F;
      v41 -= v42;
    }

    while (v41);
    v37 = v39 & 3;
  }

  v43 = v13 & 7;
  if (v43)
  {
    v255 = 0;
    v44 = v43 + 2;
  }

  else
  {
    v255 = dword_29D2F2720[v37];
    v44 = *(&xmmword_29D2F1D80 + v37);
  }

  v45 = 0;
  v275[2] = v44;
  v274[2] = 1;
  v273[3] = 10;
  v259 = v38;
  v260 = v31;
  v258 = 2 * (v16 == 0);
  if (!v16 && (v11 - v5 + (v15 << 6) + 2) <= 0xC0)
  {
    v46 = 0;
    v47 = 0;
    v48 = 2 * (v16 == 0);
    do
    {
      v49 = 64 - v11;
      if (64 - v11 >= v48)
      {
        v49 = v48;
      }

      v46 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v49)) << v47;
      v47 += v49;
      v15 += (v49 + v11) >> 6;
      v11 = (v49 + v11) & 0x3F;
      v48 -= v49;
    }

    while (v48);
    v45 = v46 & 3;
  }

  v50 = v16 & 7;
  if (v50)
  {
    v254 = 0;
    v51 = v50 + 2;
  }

  else
  {
    v254 = dword_29D2F2720[v45];
    v51 = *(&xmmword_29D2F1D80 + v45);
  }

  v52 = v51;
  v275[3] = v51;
  v274[3] = 1;
  v271 = 0;
  v272 = 0;
  v269 = 0;
  v270 = 0;
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::deriveLossyDQuadBitSharing(v274, v275, &v271, &v269);
  v53 = &kDQuadParamTable[10 * v29];
  v54 = v53[164] + 1;
  v55 = v53[165];
  v56 = v55 + 1;
  v57 = v269 - v271;
  if (v269 - v271 >= 0)
  {
    v58 = v36;
    v59 = v44;
    v60 = v259;
    v61 = v260;
    v62 = v258;
    if (!v57)
    {
      goto LABEL_69;
    }

    v56 += v57;
    goto LABEL_63;
  }

  v63 = &kDQuadParamTable[10 * v29];
  v58 = v36;
  if (v63[167] >= v271 - v269)
  {
    v59 = v44;
  }

  else
  {
    v59 = v44;
    if (!v63[168])
    {
      v57 = -1;
      v56 = v55;
      v60 = v259;
      v61 = v260;
      v62 = v258;
LABEL_63:
      v54 += v57;
      goto LABEL_69;
    }

    v56 = v55;
  }

  v60 = v259;
  v61 = v260;
  v62 = v258;
LABEL_69:
  if (v54 >= 0xA)
  {
    v64 = 10;
  }

  else
  {
    v64 = v54;
  }

  v268[0] = v64;
  if (v55)
  {
    LODWORD(v65) = 10;
  }

  else
  {
    LODWORD(v65) = 0;
  }

  if (v65 >= v56)
  {
    v65 = v56;
  }

  else
  {
    v65 = v65;
  }

  v267[0] = v65;
  v66 = &kDQuadParamTable[10 * v58];
  v67 = v66[164] + 1;
  v68 = v66[165];
  LODWORD(v69) = v68 + 1;
  v70 = HIDWORD(v269) - HIDWORD(v271);
  if (HIDWORD(v269) - HIDWORD(v271) >= 0)
  {
    if (!v70)
    {
      goto LABEL_85;
    }

    LODWORD(v69) = v70 + v69;
    goto LABEL_81;
  }

  v71 = &kDQuadParamTable[10 * v58];
  if (v71[167] < HIDWORD(v271) - HIDWORD(v269))
  {
    if (!v71[168])
    {
      v70 = -1;
      LODWORD(v69) = v68;
LABEL_81:
      v67 += v70;
      goto LABEL_85;
    }

    LODWORD(v69) = v68;
  }

LABEL_85:
  v72 = (v24 | 0xC) + v61;
  if (v67 >= 0xA)
  {
    v73 = 10;
  }

  else
  {
    v73 = v67;
  }

  v268[1] = v73;
  if (v68)
  {
    v74 = 10;
  }

  else
  {
    v74 = 0;
  }

  if (v74 >= v69)
  {
    v69 = v69;
  }

  else
  {
    v69 = v74;
  }

  v267[1] = v69;
  v75 = &kDQuadParamTable[10 * v59];
  v76 = v75[164] + 1;
  v77 = v75[165];
  LODWORD(v78) = v77 + 1;
  v79 = v270 - v272;
  if (v270 - v272 >= 0)
  {
    if (!v79)
    {
      goto LABEL_101;
    }

    LODWORD(v78) = v79 + v78;
    goto LABEL_97;
  }

  v80 = &kDQuadParamTable[10 * v59];
  if (v80[167] < v272 - v270)
  {
    if (!v80[168])
    {
      v79 = -1;
      LODWORD(v78) = v77;
LABEL_97:
      v76 += v79;
      goto LABEL_101;
    }

    LODWORD(v78) = v77;
  }

LABEL_101:
  v81 = v72 + v60;
  if (v76 >= 0xA)
  {
    v82 = 10;
  }

  else
  {
    v82 = v76;
  }

  v268[2] = v82;
  if (v77)
  {
    v83 = 10;
  }

  else
  {
    v83 = 0;
  }

  if (v83 >= v78)
  {
    v78 = v78;
  }

  else
  {
    v78 = v83;
  }

  v267[2] = v78;
  v84 = &kDQuadParamTable[10 * v52];
  v85 = v84[164] + 1;
  v86 = v84[165];
  v87 = v86 + 1;
  v88 = HIDWORD(v270) - HIDWORD(v272);
  if (HIDWORD(v270) - HIDWORD(v272) >= 0)
  {
    if (!v88)
    {
      goto LABEL_117;
    }

    v87 += v88;
    goto LABEL_113;
  }

  v89 = &kDQuadParamTable[10 * v52];
  if (v89[167] < HIDWORD(v272) - HIDWORD(v270))
  {
    if (!v89[168])
    {
      v88 = -1;
      v87 = v86;
LABEL_113:
      v85 += v88;
      goto LABEL_117;
    }

    v87 = v86;
  }

LABEL_117:
  if (v85 >= 0xA)
  {
    v90 = 10;
  }

  else
  {
    v90 = v85;
  }

  v268[3] = v90;
  if (v86)
  {
    LODWORD(v91) = 10;
  }

  else
  {
    LODWORD(v91) = 0;
  }

  if (v91 >= v87)
  {
    v91 = v87;
  }

  else
  {
    v91 = v91;
  }

  v267[3] = v91;
  v92 = v81 + v62;
  v265 = 0;
  v266 = 0;
  if (!v29)
  {
    LODWORD(v265) = v257;
    if (v58)
    {
      goto LABEL_134;
    }

LABEL_157:
    HIDWORD(v265) = v256;
    if (v59)
    {
      goto LABEL_141;
    }

LABEL_158:
    LODWORD(v266) = v255;
    if (v52)
    {
      goto LABEL_148;
    }

    goto LABEL_159;
  }

  v93 = 0;
  if (v54 && (v11 - v5 + (v15 << 6) + v64) <= 0xC0)
  {
    v93 = 0;
    v94 = 0;
    v95 = v64;
    do
    {
      v96 = 64 - v11;
      if (64 - v11 >= v95)
      {
        v96 = v95;
      }

      v93 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v96)) << v94;
      v94 += v96;
      v97 = v96 + v11;
      v15 += v97 >> 6;
      v11 = v97 & 0x3F;
      v95 -= v96;
    }

    while (v95);
  }

  LODWORD(v265) = v93 << (10 - v64);
  v92 += v64;
  if (!v58)
  {
    goto LABEL_157;
  }

LABEL_134:
  v98 = 0;
  if (v67 && (v11 - v5 + (v15 << 6) + v73) <= 0xC0)
  {
    v98 = 0;
    v99 = 0;
    v100 = v73;
    do
    {
      v101 = 64 - v11;
      if (64 - v11 >= v100)
      {
        v101 = v100;
      }

      v98 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v101)) << v99;
      v99 += v101;
      v15 += (v101 + v11) >> 6;
      v11 = (v101 + v11) & 0x3F;
      v100 -= v101;
    }

    while (v100);
  }

  HIDWORD(v265) = v98 << (10 - v73);
  v92 += v73;
  if (!v59)
  {
    goto LABEL_158;
  }

LABEL_141:
  v102 = 0;
  if (v76 && (v11 - v5 + (v15 << 6) + v82) <= 0xC0)
  {
    v102 = 0;
    v103 = 0;
    v104 = v82;
    do
    {
      v105 = 64 - v11;
      if (64 - v11 >= v104)
      {
        v105 = v104;
      }

      v102 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v105)) << v103;
      v103 += v105;
      v15 += (v105 + v11) >> 6;
      v11 = (v105 + v11) & 0x3F;
      v104 -= v105;
    }

    while (v104);
  }

  LODWORD(v266) = v102 << (10 - v82);
  v92 += v82;
  if (v52)
  {
LABEL_148:
    v106 = 0;
    if (v85 && (v11 - v5 + (v15 << 6) + v90) <= 0xC0)
    {
      v106 = 0;
      v107 = 0;
      v108 = v90;
      do
      {
        v109 = 64 - v11;
        if (64 - v11 >= v108)
        {
          v109 = v108;
        }

        v106 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v109)) << v107;
        v107 += v109;
        v15 += (v109 + v11) >> 6;
        v11 = (v109 + v11) & 0x3F;
        v108 -= v109;
      }

      while (v108);
    }

    HIDWORD(v266) = v106 << (10 - v90);
    v92 += v90;
    v263 = 0;
    v264 = 0;
    if (!v65)
    {
      goto LABEL_167;
    }

    goto LABEL_160;
  }

LABEL_159:
  HIDWORD(v266) = v254;
  v263 = 0;
  v264 = 0;
  if (v65)
  {
LABEL_160:
    if ((v11 - v5 + (v15 << 6) + 3) <= 0xC0)
    {
      v110 = 0;
      v111 = 0;
      v112 = 3;
      do
      {
        v113 = 64 - v11;
        if (64 - v11 >= v112)
        {
          v113 = v112;
        }

        v110 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v113)) << v111;
        v111 += v113;
        v15 += (v113 + v11) >> 6;
        v11 = (v113 + v11) & 0x3F;
        v112 -= v113;
      }

      while (v112);
    }

    else
    {
      v110 = 0;
    }

    LODWORD(v263) = v110;
    v92 += 3;
  }

LABEL_167:
  if (v69)
  {
    if ((v11 - v5 + (v15 << 6) + 3) <= 0xC0)
    {
      v114 = 0;
      v115 = 0;
      v116 = 3;
      do
      {
        v117 = 64 - v11;
        if (64 - v11 >= v116)
        {
          v117 = v116;
        }

        v114 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v117)) << v115;
        v115 += v117;
        v15 += (v117 + v11) >> 6;
        v11 = (v117 + v11) & 0x3F;
        v116 -= v117;
      }

      while (v116);
    }

    else
    {
      v114 = 0;
    }

    HIDWORD(v263) = v114;
    v92 += 3;
  }

  if (v78)
  {
    if ((v11 - v5 + (v15 << 6) + 3) <= 0xC0)
    {
      v118 = 0;
      v119 = 0;
      v120 = 3;
      do
      {
        v121 = 64 - v11;
        if (64 - v11 >= v120)
        {
          v121 = v120;
        }

        v118 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v121)) << v119;
        v119 += v121;
        v15 += (v121 + v11) >> 6;
        v11 = (v121 + v11) & 0x3F;
        v120 -= v121;
      }

      while (v120);
    }

    else
    {
      v118 = 0;
    }

    LODWORD(v264) = v118;
    v92 += 3;
  }

  if (v91)
  {
    if ((v11 - v5 + (v15 << 6) + 3) <= 0xC0)
    {
      v122 = 0;
      v123 = 0;
      v124 = 3;
      do
      {
        v125 = 64 - v11;
        if (64 - v11 >= v124)
        {
          v125 = v124;
        }

        v122 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v125)) << v123;
        v123 += v125;
        v15 += (v125 + v11) >> 6;
        v11 = (v125 + v11) & 0x3F;
        v124 -= v125;
      }

      while (v124);
    }

    else
    {
      v122 = 0;
    }

    HIDWORD(v264) = v122;
    v92 += 3;
  }

  v126 = 0;
  v127 = a3 & 0xFFFFFFFD;
  v128 = 192 - v92;
  v129 = (((37 * (192 - v92)) >> 8) + (((-64 - v92 - ((37 * (192 - v92)) >> 8)) & 0xFE) >> 1)) >> 2;
  v130 = (v11 | (v15 << 6)) + -7 * v129 + v128;
  memset(v262, 0, sizeof(v262));
  do
  {
    v133 = v130 >> 6;
    v134 = v130 & 0x3F;
    if (v65)
    {
      if (v134 - v5 + (v130 & 0xFFFFFFFFFFFFFFC0) + v65 <= 0xC0)
      {
        v135 = 0;
        v136 = 0;
        v137 = v65;
        do
        {
          v138 = 64 - v134;
          if (64 - v134 >= v137)
          {
            v138 = v137;
          }

          v135 |= ((*(v4 + 8 * v133) >> v134) & ~(-1 << v138)) << v136;
          v136 += v138;
          v139 = v138 + v134;
          v133 += v139 >> 6;
          v134 = v139 & 0x3F;
          v137 -= v138;
        }

        while (v137);
      }

      else
      {
        v135 = 0;
      }

      *(v262 + v126) = v135;
    }

    v140 = v262 + v126;
    if (!v69)
    {
      v132 = v65;
      if (!v78)
      {
        goto LABEL_220;
      }

LABEL_213:
      if (v134 - v5 + (v133 << 6) + v78 <= 0xC0)
      {
        v146 = 0;
        v147 = 0;
        v148 = v78;
        do
        {
          v149 = 64 - v134;
          if (64 - v134 >= v148)
          {
            v149 = v148;
          }

          v146 |= ((*(v4 + 8 * v133) >> v134) & ~(-1 << v149)) << v147;
          v147 += v149;
          v150 = v149 + v134;
          v133 += v150 >> 6;
          v134 = v150 & 0x3F;
          v148 -= v149;
        }

        while (v148);
      }

      else
      {
        v146 = 0;
      }

      v140[14] = v146;
      v132 += v78;
      goto LABEL_220;
    }

    if (v134 - v5 + (v133 << 6) + v69 <= 0xC0)
    {
      v141 = 0;
      v142 = 0;
      v143 = v69;
      do
      {
        v144 = 64 - v134;
        if (64 - v134 >= v143)
        {
          v144 = v143;
        }

        v141 |= ((*(v4 + 8 * v133) >> v134) & ~(-1 << v144)) << v142;
        v142 += v144;
        v145 = v144 + v134;
        v133 += v145 >> 6;
        v134 = v145 & 0x3F;
        v143 -= v144;
      }

      while (v143);
    }

    else
    {
      v141 = 0;
    }

    v140[7] = v141;
    v132 = v69 + v65;
    if (v78)
    {
      goto LABEL_213;
    }

LABEL_220:
    if (v91)
    {
      if (v134 - v5 + (v133 << 6) + v91 > 0xC0)
      {
        v131 = 0;
      }

      else
      {
        v131 = 0;
        v151 = 0;
        v152 = v91;
        do
        {
          v153 = 64 - v134;
          if (64 - v134 >= v152)
          {
            v153 = v152;
          }

          v131 |= ((*(v4 + 8 * v133) >> v134) & ~(-1 << v153)) << v151;
          v151 += v153;
          v154 = v153 + v134;
          v133 += v154 >> 6;
          v134 = v154 & 0x3F;
          v152 -= v153;
        }

        while (v152);
      }

      v140[21] = v131;
      v132 += v91;
    }

    v130 = (v134 | (v133 << 6)) + v129 - v132;
    ++v126;
  }

  while (v126 != 7);
  v155 = 0;
  v156 = 0;
  v157 = a2 + 112;
  do
  {
    v162 = *&kDQuadParamTable[160 * v274[v155 / 4] + 2 + 10 * v275[v155 / 4]];
    v163 = v267[v155 / 4];
    if (v162 >> v163 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v162 >> v163;
    }

    v164 = v273[v155 / 4];
    v165 = result >> 1;
    if (result >> 1 >= (1 << (v164 - v268[v155 / 4])) >> 1)
    {
      v166 = (1 << (v164 - v268[v155 / 4])) >> 1;
    }

    else
    {
      v166 = result >> 1;
    }

    v167 = (1 << (v164 - 1));
    v168 = *(&v265 + v155);
    v169 = v167 - v168;
    v170 = 1 << v164;
    v171 = (1 << v164) + 0xFFFFFFFFLL;
    if (v168)
    {
      v172 = v166;
    }

    else
    {
      v172 = 0;
    }

    v173 = v168 == v167;
    v174 = v164 == 16;
    if (v164 == 16)
    {
      v175 = 31744;
    }

    else
    {
      v175 = 2139095040;
    }

    if (v164 == 16)
    {
      v176 = 64512;
    }

    else
    {
      v176 = 4286578688;
    }

    v177 = 2143289344;
    if (v174)
    {
      v177 = 32256;
    }

    v178 = 65024;
    if (!v174)
    {
      v178 = 4290772992;
    }

    v179 = (v176 - 1);
    if (v163)
    {
      v180 = v162 + v168;
      v181 = -1 << v163;
      v182 = *(&v263 + v155);
      v183 = v169 / result;
      if (!v182)
      {
        v191 = 0;
        v186 = v172;
        v185 = v168 == v167;
        goto LABEL_297;
      }

      v184 = *(v262 + v156);
      v185 = v183 == v184;
      if (v168 | v184)
      {
        if (v180 >= v170 && (v181 ^ v184) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v191 = 1;
          v186 = v170 - 1;
          goto LABEL_297;
        }

        v186 = v165 + result * v184;
      }

      else
      {
        v186 = 0;
      }

      v191 = 1;
LABEL_297:
      v194 = v186 + v168;
      v195 = v194;
      if (a3 == 4)
      {
        v196 = v194 < v175 || v194 >= v177;
        v195 = (v175 - 1);
        if (v196)
        {
          v197 = v194 < v177 || v194 >= v167;
          v195 = v167;
          if (v197)
          {
            if (v194 < v178 && v194 >= v176)
            {
              v195 = (v176 - 1);
            }

            else
            {
              v195 = v194;
            }
          }
        }
      }

      if (v195 >= v170)
      {
        v199 = v170 - 1;
      }

      else
      {
        v199 = v195;
      }

      if (v185)
      {
        v200 = 0;
      }

      else
      {
        v200 = v199 ^ v167;
      }

      if (v127 != 1)
      {
        v200 = v199;
      }

      *(a2 + v155) = v200;
      if (v182 == 1)
      {
        v201 = v172;
        v202 = v168 == v167;
      }

      else
      {
        v203 = *((v262 | (4 * v191)) + v156);
        v202 = v183 == v203;
        if (v168 | v203)
        {
          if (v180 < v170 || (v201 = v170 - 1, (v181 ^ v203) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v201 = v165 + result * v203;
          }
        }

        else
        {
          v201 = 0;
        }

        ++v191;
      }

      v204 = v201 + v168;
      v205 = v204;
      if (a3 == 4)
      {
        v206 = v204 < v175 || v204 >= v177;
        v205 = (v175 - 1);
        if (v206)
        {
          v207 = v204 < v177 || v204 >= v167;
          v205 = v167;
          if (v207)
          {
            if (v204 < v178 && v204 >= v176)
            {
              v205 = (v176 - 1);
            }

            else
            {
              v205 = v204;
            }
          }
        }
      }

      if (v205 >= v170)
      {
        v209 = v170 - 1;
      }

      else
      {
        v209 = v205;
      }

      if (v202)
      {
        v210 = 0;
      }

      else
      {
        v210 = v209 ^ v167;
      }

      if (v127 != 1)
      {
        v210 = v209;
      }

      *(v157 + v155 - 96) = v210;
      if (v182 == 2)
      {
        v211 = v172;
        v212 = v168 == v167;
      }

      else
      {
        v213 = *((v262 | (4 * v191)) + v156);
        v212 = v183 == v213;
        if (v168 | v213)
        {
          if (v180 < v170 || (v211 = v170 - 1, (v181 ^ v213) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v211 = v165 + result * v213;
          }
        }

        else
        {
          v211 = 0;
        }

        ++v191;
      }

      v214 = v211 + v168;
      v215 = v214;
      if (a3 == 4)
      {
        if (v214 < v175 || (v215 = (v175 - 1), v214 >= v177))
        {
          if (v214 < v177 || (v215 = v167, v214 >= v167))
          {
            if (v214 < v178 && v214 >= v176)
            {
              v215 = (v176 - 1);
            }

            else
            {
              v215 = v214;
            }
          }
        }
      }

      if (v215 >= v170)
      {
        v217 = v170 - 1;
      }

      else
      {
        v217 = v215;
      }

      if (v212)
      {
        v218 = 0;
      }

      else
      {
        v218 = v217 ^ v167;
      }

      if (v127 != 1)
      {
        v218 = v217;
      }

      *(v157 + v155 - 80) = v218;
      if (v182 == 3)
      {
        v219 = v172;
        v220 = v168 == v167;
      }

      else
      {
        v221 = *(v262 + 4 * v191 + v156);
        v220 = v183 == v221;
        if (v168 | v221)
        {
          if (v180 < v170 || (v219 = v170 - 1, (v181 ^ v221) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v219 = v165 + result * v221;
          }
        }

        else
        {
          v219 = 0;
        }

        ++v191;
      }

      v222 = v219 + v168;
      v223 = v222;
      if (a3 == 4)
      {
        if (v222 < v175 || (v223 = (v175 - 1), v222 >= v177))
        {
          if (v222 < v177 || (v223 = v167, v222 >= v167))
          {
            if (v222 < v178 && v222 >= v176)
            {
              v223 = (v176 - 1);
            }

            else
            {
              v223 = v222;
            }
          }
        }
      }

      if (v223 >= v170)
      {
        v225 = v170 - 1;
      }

      else
      {
        v225 = v223;
      }

      if (v220)
      {
        v226 = 0;
      }

      else
      {
        v226 = v225 ^ v167;
      }

      if (v127 != 1)
      {
        v226 = v225;
      }

      *(v157 + v155 - 64) = v226;
      if (v182 == 4)
      {
        v227 = v172;
        v228 = v168 == v167;
      }

      else
      {
        v229 = *(v262 + 4 * v191 + v156);
        v228 = v183 == v229;
        if (v168 | v229)
        {
          if (v180 < v170 || (v227 = v170 - 1, (v181 ^ v229) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v227 = v165 + result * v229;
          }
        }

        else
        {
          v227 = 0;
        }

        ++v191;
      }

      v230 = v227 + v168;
      v231 = v230;
      if (a3 == 4)
      {
        if (v230 < v175 || (v231 = (v175 - 1), v230 >= v177))
        {
          if (v230 < v177 || (v231 = v167, v230 >= v167))
          {
            if (v230 < v178 && v230 >= v176)
            {
              v231 = (v176 - 1);
            }

            else
            {
              v231 = v230;
            }
          }
        }
      }

      if (v231 >= v170)
      {
        v233 = v170 - 1;
      }

      else
      {
        v233 = v231;
      }

      if (v228)
      {
        v234 = 0;
      }

      else
      {
        v234 = v233 ^ v167;
      }

      if (v127 != 1)
      {
        v234 = v233;
      }

      *(v157 + v155 - 48) = v234;
      if (v182 == 5)
      {
        v235 = v172;
        v236 = v168 == v167;
      }

      else
      {
        v237 = *(v262 + 4 * v191 + v156);
        v236 = v183 == v237;
        if (v168 | v237)
        {
          if (v180 < v170 || (v235 = v170 - 1, (v181 ^ v237) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v235 = v165 + result * v237;
          }
        }

        else
        {
          v235 = 0;
        }

        ++v191;
      }

      v238 = v235 + v168;
      v239 = v238;
      if (a3 == 4)
      {
        if (v238 < v175 || (v239 = (v175 - 1), v238 >= v177))
        {
          if (v238 < v177 || (v239 = v167, v238 >= v167))
          {
            if (v238 < v178 && v238 >= v176)
            {
              v239 = (v176 - 1);
            }

            else
            {
              v239 = v238;
            }
          }
        }
      }

      if (v239 >= v170)
      {
        v241 = v170 - 1;
      }

      else
      {
        v241 = v239;
      }

      if (v236)
      {
        v242 = 0;
      }

      else
      {
        v242 = v241 ^ v167;
      }

      if (v127 != 1)
      {
        v242 = v241;
      }

      *(v157 + v155 - 32) = v242;
      if (v182 == 6)
      {
        v243 = v172;
        v244 = v168 == v167;
      }

      else
      {
        v245 = *(v262 + 4 * v191 + v156);
        v244 = v183 == v245;
        if (v168 | v245)
        {
          if (v180 < v170 || (v243 = v170 - 1, (v181 ^ v245) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v243 = v165 + result * v245;
          }
        }

        else
        {
          v243 = 0;
        }

        ++v191;
      }

      v246 = v243 + v168;
      v247 = v246;
      if (a3 == 4)
      {
        if (v246 < v175 || (v247 = (v175 - 1), v246 >= v177))
        {
          if (v246 < v177 || (v247 = v167, v246 >= v167))
          {
            if (v246 < v178 && v246 >= v176)
            {
              v247 = (v176 - 1);
            }

            else
            {
              v247 = v246;
            }
          }
        }
      }

      if (v247 >= v170)
      {
        v249 = v170 - 1;
      }

      else
      {
        v249 = v247;
      }

      if (v244)
      {
        v250 = 0;
      }

      else
      {
        v250 = v249 ^ v167;
      }

      if (v127 != 1)
      {
        v250 = v249;
      }

      *(v157 + v155 - 16) = v250;
      if (v182 != 7)
      {
        v251 = *(v262 + 4 * v191 + v156);
        v173 = v183 == v251;
        if (v168 | v251)
        {
          if (v180 >= v170 && (v181 ^ v251) == 0xFFFFFFFFFFFFFFFFLL)
          {
            v172 = v170 - 1;
          }

          else
          {
            v172 = v165 + result * v251;
          }
        }

        else
        {
          v172 = 0;
        }
      }

      v252 = v172 + v168;
      result = v172 + v168;
      if (a3 == 4)
      {
        if (v252 < v175 || (result = (v175 - 1), v252 >= v177))
        {
          if (v252 < v177 || (result = v167, v252 >= v167))
          {
            if (v252 < v178 && v252 >= v176)
            {
              result = (v176 - 1);
            }

            else
            {
              result = v172 + v168;
            }
          }
        }
      }

      if (result >= v170)
      {
        v160 = v170 - 1;
      }

      else
      {
        v160 = result;
      }

      v161 = v160 ^ v167;
      if (v173)
      {
        v161 = 0;
      }

      if (v127 == 1)
      {
        v160 = v161;
      }

      goto LABEL_241;
    }

    v188 = v177 <= v168 && v168 < v167;
    v190 = v168 >= v176 && v178 > v168;
    if (a3 == 4)
    {
      if (v168 < v175 || v177 <= v168)
      {
        if (v188)
        {
          if (v170 <= v167)
          {
            v160 = v171;
          }

          else
          {
            v160 = v167;
          }
        }

        else
        {
          if (v190)
          {
            v253 = v179;
          }

          else
          {
            v253 = *(&v265 + v155);
          }

          if (v253 >= v170)
          {
            v160 = v171;
          }

          else
          {
            v160 = v253;
          }
        }
      }

      else if (v170 <= (v175 - 1))
      {
        v160 = v171;
      }

      else
      {
        v160 = v175 - 1;
      }
    }

    else
    {
      if (v170 <= v168)
      {
        v160 = v170 - 1;
      }

      else
      {
        v160 = *(&v265 + v155);
      }

      v192 = v160 ^ v167;
      if (result > v169)
      {
        v192 = 0;
      }

      if (v127 == 1)
      {
        v160 = v192;
      }
    }

    v193 = v157 + v155;
    *(v193 - 112) = v160;
    *(v193 - 96) = v160;
    *(v193 - 80) = v160;
    *(v193 - 64) = v160;
    *(v193 - 48) = v160;
    *(v193 - 32) = v160;
    *(v193 - 16) = v160;
LABEL_241:
    *(v157 + v155) = v160;
    v156 += 28;
    v155 += 4;
  }

  while (v156 != 112);
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(_OWORD *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v714 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    result = 0;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    v11 = (a1 + a2);
    v11[2] = 0u;
    v11[3] = 0u;
    *v11 = 0u;
    v11[1] = 0u;
    v12 = (a1 + 2 * a2);
    v12[2] = 0u;
    v12[3] = 0u;
    *v12 = 0u;
    v12[1] = 0u;
    v13 = (a1 + 2 * a2 + a2);
    v13[2] = 0u;
    v13[3] = 0u;
    *v13 = 0u;
    v13[1] = 0u;
    return result;
  }

  v7 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(a3, &v687, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(a3, &v687, a5);
    }

    *v695.i8 = vmovn_s32(v687);
    v695.u64[1] = vmovn_s32(v689);
    *v697.i8 = vmovn_s32(v688);
    v697.u64[1] = vmovn_s32(v690);
    v699[0] = vmovn_s32(v691);
    v699[1] = vmovn_s32(v693);
    v700[0] = vmovn_s32(v692);
    v700[1] = vmovn_s32(v694);
    v20 = a3 + 24;
    if ((v7 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v20, &v687, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v20, &v687, a5);
    }

    *v696.i8 = vmovn_s32(v687);
    v696.u64[1] = vmovn_s32(v689);
    *v698.i8 = vmovn_s32(v688);
    v698.u64[1] = vmovn_s32(v690);
    v699[2] = vmovn_s32(v691);
    v699[3] = vmovn_s32(v693);
    v700[2] = vmovn_s32(v692);
    v700[3] = vmovn_s32(v694);
    v21 = a3 + 48;
    if ((v7 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v21, &v687, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v21, &v687, a5);
    }

    v701[0] = vmovn_s32(v687);
    v701[1] = vmovn_s32(v689);
    v702[0] = vmovn_s32(v688);
    v702[1] = vmovn_s32(v690);
    *v703.i8 = vmovn_s32(v691);
    v703.u64[1] = vmovn_s32(v693);
    *v705.i8 = vmovn_s32(v692);
    v705.u64[1] = vmovn_s32(v694);
    v22 = a3 + 72;
    if ((v7 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockFallback(v22, &v687, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressLossyCompressedSubblockDQuad(v22, &v687, a5);
    }

    v701[2] = vmovn_s32(v687);
    v701[3] = vmovn_s32(v689);
    v702[2] = vmovn_s32(v688);
    v702[3] = vmovn_s32(v690);
    *v704.i8 = vmovn_s32(v691);
    v704.u64[1] = vmovn_s32(v693);
    v23 = (a1 + 2);
    v24 = -32;
    *v706.i8 = vmovn_s32(v692);
    v706.u64[1] = vmovn_s32(v694);
    do
    {
      v25 = (((v699[v24 / 8] & 0x3FF) << 6) | (WORD1(v699[v24 / 8]) << 22) | (WORD2(v699[v24 / 8]) << 38)) & 0xFFC0FFC0FFC0 | (HIWORD(v699[v24 / 8]) << 54);
      *(v23 - 4) = (((v697.i16[v24 / 2] & 0x3FF) << 6) | (v697.u16[v24 / 2 + 1] << 22) | (v697.u16[v24 / 2 + 2] << 38)) & 0xFFC0FFC0FFC0 | (v697.u16[v24 / 2 + 3] << 54);
      *(v23 - 3) = v25;
      v26 = (((v701[v24 / 8] & 0x3FF) << 6) | (WORD1(v701[v24 / 8]) << 22) | (WORD2(v701[v24 / 8]) << 38)) & 0xFFC0FFC0FFC0 | (HIWORD(v701[v24 / 8]) << 54);
      *(v23 - 2) = (((v700[v24 / 8] & 0x3FF) << 6) | (WORD1(v700[v24 / 8]) << 22) | (WORD2(v700[v24 / 8]) << 38)) & 0xFFC0FFC0FFC0 | (HIWORD(v700[v24 / 8]) << 54);
      *(v23 - 1) = v26;
      v27 = (((v703.i16[v24 / 2] & 0x3FF) << 6) | (v703.u16[v24 / 2 + 1] << 22) | (v703.u16[v24 / 2 + 2] << 38)) & 0xFFC0FFC0FFC0 | (v703.u16[v24 / 2 + 3] << 54);
      *v23 = (((v702[v24 / 8] & 0x3FF) << 6) | (WORD1(v702[v24 / 8]) << 22) | (WORD2(v702[v24 / 8]) << 38)) & 0xFFC0FFC0FFC0 | (HIWORD(v702[v24 / 8]) << 54);
      v23[1] = v27;
      v28 = (((v707.i16[v24 / 2] & 0x3FF) << 6) | (v707.u16[v24 / 2 + 1] << 22) | (v707.u16[v24 / 2 + 2] << 38)) & 0xFFC0FFC0FFC0 | (v707.u16[v24 / 2 + 3] << 54);
      v23[2] = (((v705.i16[v24 / 2] & 0x3FF) << 6) | (v705.u16[v24 / 2 + 1] << 22) | (v705.u16[v24 / 2 + 2] << 38)) & 0xFFC0FFC0FFC0 | (v705.u16[v24 / 2 + 3] << 54);
      v23[3] = v28;
      v23 = (v23 + a2);
      v24 += 8;
    }

    while (v24);
    return 96;
  }

  if (a4 != 159)
  {
    if (a4 == 4)
    {
      v14 = vld1q_dup_f64(a3);
      v15 = vorrq_s8(vandq_s8(vshlq_u64(v14, xmmword_29D2F1400), xmmword_29D2F1430), vandq_s8(vshlq_u64(v14, xmmword_29D2F1410), xmmword_29D2F1420));
      v16 = vdupq_n_s64(*&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)));
      *a1 = v16;
      a1[1] = v16;
      a1[2] = v16;
      a1[3] = v16;
      v17 = (a1 + a2);
      *v17 = v16;
      v17[1] = v16;
      v17[2] = v16;
      v17[3] = v16;
      v18 = (a1 + 2 * a2);
      *v18 = v16;
      v18[1] = v16;
      v18[2] = v16;
      v18[3] = v16;
      v19 = (a1 + 2 * a2 + a2);
      *v19 = v16;
      v19[1] = v16;
      v19[2] = v16;
      v19[3] = v16;
      return 5;
    }

    v688.i8[8] = 0;
    v688.i64[0] = (8 * (a3 & 7)) | 0x300;
    v687.i64[0] = 8 * (a3 & 7);
    v687.i64[1] = a3 & 0xFFFFFFFFFFFFFFF8;
    result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)19,AGX::AppleCompressionGen2::Vec<short>>(&v708, v713, &v707, &v687, a4);
    v260.i64[0] = 0x3000300030003;
    v260.i64[1] = 0x3000300030003;
    v261 = vandq_s8(v708, v260);
    v262 = vbicq_s8(v713[0], vceqq_s16(v261, v260));
    v713[0] = v262;
    v709 = v262;
    v710 = v262;
    v711 = v262;
    v712 = v262;
    v263.i64[0] = 0x202020202020202;
    v263.i64[1] = 0x202020202020202;
    v264 = vandq_s8(vmovl_s16(vtst_s16(*v708.i8, 0x4000400040004)), v263);
    v265 = v687.i64[0];
    if (vmaxvq_s8(v264) < 1)
    {
      v282.i64[0] = -1;
      v282.i64[1] = -1;
      v283.i64[0] = -1;
      v283.i64[1] = -1;
      v284.i64[0] = -1;
      v284.i64[1] = -1;
      v285.i64[0] = -1;
      v285.i64[1] = -1;
    }

    else
    {
      v266 = vmovl_u8(*&vpaddq_s8(v264, v264));
      v267 = vmovl_u16(*&vpaddq_s16(v266, v266));
      v268 = vpaddq_s32(v267, v267).u64[0];
      v269.i64[0] = v268;
      v269.i64[1] = HIDWORD(v268);
      v270 = v269;
      v271 = vaddvq_s64(v269);
      v272 = v271;
      v273 = v687.i64[0] + v271;
      if (v688.i64[0])
      {
        v274 = v688.i64[0] >= v273;
      }

      else
      {
        v274 = 1;
      }

      v275 = v274;
      if (v271 <= 0x80 && (v275 & 1) != 0)
      {
        v259.i64[0] = 63;
        v276 = (v687.i64[1] + 8 * (v687.i64[0] >> 6));
        v277 = vaddq_s64(vdupq_lane_s64(vandq_s8(v687.u64[0], v259).i64[0], 0), vzip1q_s64(0, v270));
        v278 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v276, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v277)), vshlq_u64(vdupq_lane_s64(v276->i64[0], 0), vnegq_s64(v277)));
        if ((v687.i8[0] & 0x3F) + v272 >= 0x81)
        {
          v278 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v276[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v277)), vshlq_u64(vdupq_laneq_s64(v276[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v277))), v278);
        }

        v687.i64[0] = v273;
        v265 = v273;
      }

      else
      {
        v688.i8[8] = 1;
        v278 = 0uLL;
      }

      v286 = vzip1_s32(*v267.i8, *&vextq_s8(v267, v267, 8uLL));
      v287.i64[0] = v286.u32[0];
      v287.i64[1] = v286.u32[1];
      v288 = vshlq_u64(v278, vnegq_s64(v287));
      v289 = vuzp1q_s32(vzip1q_s64(v278, v288), vzip2q_s64(v278, v288));
      v290 = vshlq_u32(v289, vnegq_s32((*&v266 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v291 = vuzp1q_s16(vzip1q_s32(v289, v290), vzip2q_s32(v289, v290));
      v292 = vshlq_u16(v291, vnegq_s16((*&v264 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
      v293 = vuzp1q_s8(vzip1q_s16(v291, v292), vzip2q_s16(v291, v292));
      v292.i64[0] = 0x101010101010101;
      v292.i64[1] = 0x101010101010101;
      v294 = vshlq_s8(v292, v264);
      v292.i64[0] = -1;
      v292.i64[1] = -1;
      v295 = vqtbl1q_s8(vandq_s8(vaddq_s8(v294, v292), v293), xmmword_29D2F0F70);
      *v293.i8 = vdup_lane_s32(*v295.i8, 0);
      *v292.i8 = vdup_lane_s32(*v295.i8, 1);
      v296 = vdupq_laneq_s32(v295, 2).u64[0];
      v297 = vdupq_laneq_s32(v295, 3).u64[0];
      v709 = vsubw_s8(v709, *v293.i8);
      v710 = vsubw_s8(v710, *v292.i8);
      v711 = vsubw_s8(v711, v296);
      v712 = vsubw_s8(v712, v297);
      v285 = vmovl_s8(vceqz_s8(*v293.i8));
      v284 = vmovl_s8(vceqz_s8(*v292.i8));
      v283 = vmovl_s8(vceqz_s8(v296));
      v282 = vmovl_s8(vceqz_s8(v297));
    }

    v298.i64[0] = 0x8000800080008;
    v298.i64[1] = 0x8000800080008;
    v299 = 0uLL;
    v300 = vandq_s8(vextq_s8(vtstq_s16(v708, v298), 0, 8uLL), v262);
    v301 = vmovl_u16(*&vpaddq_s16(v300, v300));
    v302 = vpaddq_s32(v301, v301).u64[0];
    v303.i64[0] = v302;
    v303.i64[1] = HIDWORD(v302);
    v304 = v303;
    v305 = vaddvq_s64(v303);
    v306 = v265 + v305;
    if (v688.i64[0])
    {
      v307 = v688.i64[0] >= v306;
    }

    else
    {
      v307 = 1;
    }

    v308 = v307;
    if (v305 <= 0x80 && (v308 & 1) != 0)
    {
      v309 = v265 & 0x3F;
      v310 = vaddq_s64(vdupq_n_s64(v309), vzip1q_s64(0, v304));
      v311 = (v687.i64[1] + 8 * (v265 >> 6));
      v299 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v311, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v310)), vshlq_u64(vdupq_lane_s64(v311->i64[0], 0), vnegq_s64(v310)));
      if (v309 + v305 >= 0x81)
      {
        v299 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v311[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v310)), vshlq_u64(vdupq_laneq_s64(v311[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v310))), v299);
      }

      v265 = v306;
    }

    else
    {
      v688.i8[8] = 1;
    }

    v312 = vzip1_s32(*v301.i8, *&vextq_s8(v301, v301, 8uLL));
    v313.i64[0] = v312.u32[0];
    v313.i64[1] = v312.u32[1];
    v314 = vshlq_u64(v299, vnegq_s64(v313));
    v315 = vuzp1q_s32(vzip1q_s64(v299, v314), vzip2q_s64(v299, v314));
    v316.i64[0] = 0xFFFF0000FFFFLL;
    v316.i64[1] = 0xFFFF0000FFFFLL;
    v317 = vshlq_u32(v315, vnegq_s32(vandq_s8(v300, v316)));
    v318 = vuzp1q_s16(vzip1q_s32(v315, v317), vzip2q_s32(v315, v317));
    v317.i64[0] = 0xF000F000F000FLL;
    v317.i64[1] = 0xF000F000F000FLL;
    v319.i64[0] = 0x10001000100010;
    v319.i64[1] = 0x10001000100010;
    v320 = vshlq_s16(vshlq_s16(v318, vsubq_s16(v319, v300)), vaddq_s16(v300, v317));
    v713[3] = v320;
    v321 = v708.i8[0] & 3;
    if (v321 == 2)
    {
      if (!v688.i64[0])
      {
        v322 = v265 + 16;
LABEL_94:
        v323 = 0uLL;
        v324 = vextq_s8(0, v709, 8uLL);
        v325 = vmovl_u16(*&vpaddq_s16(v324, v324));
        v326 = vpaddq_s32(v325, v325).u64[0];
        v327.i64[0] = v326;
        v327.i64[1] = HIDWORD(v326);
        v328 = v327;
        v329 = vaddvq_s64(v327);
        if (v688.i64[0])
        {
          v330 = v688.i64[0] >= v322 + v329;
        }

        else
        {
          v330 = 1;
        }

        v331 = v330;
        if (v329 <= 0x80 && (v331 & 1) != 0)
        {
          v332 = vaddq_s64(vdupq_n_s64(v322 & 0x3F), vzip1q_s64(0, v328));
          v333 = v687.i64[1];
          v334 = (v687.i64[1] + 8 * (v322 >> 6));
          v323 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v334, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v332)), vshlq_u64(vdupq_lane_s64(v334->i64[0], 0), vnegq_s64(v332)));
          if ((v322 & 0x3F) + v329 >= 0x81)
          {
            v323 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v334[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v332)), vshlq_u64(vdupq_laneq_s64(v334[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v332))), v323);
          }

          v335 = v688.i8[8];
          v322 += v329;
        }

        else
        {
          v335 = 1;
          v333 = v687.i64[1];
        }

        v336.i64[0] = 0xFFFF0000FFFFLL;
        v336.i64[1] = 0xFFFF0000FFFFLL;
        v337.i64[0] = 0xF000F000F000FLL;
        v337.i64[1] = 0xF000F000F000FLL;
        v338.i64[0] = 0x10001000100010;
        v338.i64[1] = 0x10001000100010;
        v339 = vmovl_u16(*&vpaddq_s16(v709, v709));
        v340 = vpaddq_s32(v339, v339).u64[0];
        v341.i64[0] = v340;
        v341.i64[1] = HIDWORD(v340);
        v342 = v341;
        v343 = vaddvq_s64(v341);
        v344 = v343;
        v345 = v322 + v343;
        if (v688.i64[0])
        {
          v346 = v688.i64[0] >= v345;
        }

        else
        {
          v346 = 1;
        }

        v347 = v346;
        v348 = 0uLL;
        if (v343 <= 0x80 && v347)
        {
          v349 = v322 & 0x3F;
          v350 = vaddq_s64(vdupq_n_s64(v349), vzip1q_s64(0, v342));
          v351 = (v333 + 8 * (v322 >> 6));
          v352 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v351, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v350)), vshlq_u64(vdupq_lane_s64(v351->i64[0], 0), vnegq_s64(v350)));
          if (v349 + v344 >= 0x81)
          {
            v352 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v351[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v350)), vshlq_u64(vdupq_laneq_s64(v351[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v350))), v352);
          }
        }

        else
        {
          v335 = 1;
          v345 = v322;
          v352 = 0uLL;
        }

        v353 = vzip1_s32(*v339.i8, *&vextq_s8(v339, v339, 8uLL));
        v354.i64[0] = v353.u32[0];
        v354.i64[1] = v353.u32[1];
        v355 = vnegq_s64(v354);
        v356 = vshlq_u64(v352, v355);
        v357 = vuzp1q_s32(vzip1q_s64(v352, v356), vzip2q_s64(v352, v356));
        v358 = vnegq_s32(vandq_s8(v709, v336));
        v359 = vshlq_u32(v357, v358);
        v360 = vuzp1q_s16(vzip1q_s32(v357, v359), vzip2q_s32(v357, v359));
        v361 = vaddq_s16(v709, v337);
        v362 = vsubq_s16(v338, v709);
        v363 = vshlq_s16(vshlq_s16(v360, v362), v361);
        v696 = v363;
        v364 = v345 + v344;
        if (v688.i64[0])
        {
          v365 = v688.i64[0] >= v364;
        }

        else
        {
          v365 = 1;
        }

        v366 = v365;
        if (v344 <= 0x80 && v366)
        {
          v367 = v345 & 0x3F;
          v368 = vaddq_s64(vdupq_n_s64(v367), vzip1q_s64(0, v342));
          v369 = (v333 + 8 * (v345 >> 6));
          v348 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v369, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v368)), vshlq_u64(vdupq_lane_s64(v369->i64[0], 0), vnegq_s64(v368)));
          if (v367 + v344 >= 0x81)
          {
            v348 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v369[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v368)), vshlq_u64(vdupq_laneq_s64(v369[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v368))), v348);
          }
        }

        else
        {
          v335 = 1;
          v364 = v345;
        }

        v370 = vshlq_u64(v348, v355);
        v371 = vuzp1q_s32(vzip1q_s64(v348, v370), vzip2q_s64(v348, v370));
        v372 = vshlq_u32(v371, v358);
        v373 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v371, v372), vzip2q_s32(v371, v372)), v362), v361);
        v697 = v373;
        v374 = v364 + v344;
        if (v688.i64[0])
        {
          v375 = v688.i64[0] >= v374;
        }

        else
        {
          v375 = 1;
        }

        v376 = v375;
        v377 = 0uLL;
        if (v344 <= 0x80 && v376)
        {
          v378 = v364 & 0x3F;
          v379 = vaddq_s64(vdupq_n_s64(v378), vzip1q_s64(0, v342));
          v380 = (v333 + 8 * (v364 >> 6));
          v381 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v380, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v379)), vshlq_u64(vdupq_lane_s64(v380->i64[0], 0), vnegq_s64(v379)));
          if (v378 + v344 >= 0x81)
          {
            v381 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v380[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v379)), vshlq_u64(vdupq_laneq_s64(v380[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v379))), v381);
          }
        }

        else
        {
          v335 = 1;
          v374 = v364;
          v381 = 0uLL;
        }

        v382 = vshlq_u64(v381, v355);
        v383 = vuzp1q_s32(vzip1q_s64(v381, v382), vzip2q_s64(v381, v382));
        v384 = vshlq_u32(v383, v358);
        v385 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v383, v384), vzip2q_s32(v383, v384)), v362), v361);
        v698 = v385;
        v386 = vmovl_u16(*&vpaddq_s16(v710, v710));
        v383.i64[0] = vpaddq_s32(v386, v386).u64[0];
        v387.i64[0] = v383.u32[0];
        v387.i64[1] = v383.u32[1];
        v388 = v387;
        v389 = vaddvq_s64(v387);
        v390 = v389;
        v391 = v374 + v389;
        if (v688.i64[0])
        {
          v392 = v688.i64[0] >= v391;
        }

        else
        {
          v392 = 1;
        }

        v393 = v392;
        if (v389 <= 0x80 && v393)
        {
          v394 = v374 & 0x3F;
          v395 = vaddq_s64(vdupq_n_s64(v394), vzip1q_s64(0, v388));
          v396 = (v333 + 8 * (v374 >> 6));
          v377 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v396, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v395)), vshlq_u64(vdupq_lane_s64(v396->i64[0], 0), vnegq_s64(v395)));
          if (v394 + v390 >= 0x81)
          {
            v377 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v396[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v395)), vshlq_u64(vdupq_laneq_s64(v396[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v395))), v377);
          }
        }

        else
        {
          v335 = 1;
          v391 = v374;
        }

        v397 = v391 + v390;
        if (v688.i64[0])
        {
          v398 = v688.i64[0] >= v397;
        }

        else
        {
          v398 = 1;
        }

        v399 = v398;
        v400 = 0uLL;
        if (v390 <= 0x80 && v399)
        {
          v401 = v391 & 0x3F;
          v402 = vaddq_s64(vdupq_n_s64(v401), vzip1q_s64(0, v388));
          v403 = (v333 + 8 * (v391 >> 6));
          v404 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v403, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v402)), vshlq_u64(vdupq_lane_s64(v403->i64[0], 0), vnegq_s64(v402)));
          if (v401 + v390 >= 0x81)
          {
            v404 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v403[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v402)), vshlq_u64(vdupq_laneq_s64(v403[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v402))), v404);
          }
        }

        else
        {
          v335 = 1;
          v397 = v391;
          v404 = 0uLL;
        }

        v405 = v397 + v390;
        if (v688.i64[0])
        {
          v406 = v688.i64[0] >= v405;
        }

        else
        {
          v406 = 1;
        }

        v407 = v406;
        if (v390 <= 0x80 && v407)
        {
          v408 = v397 & 0x3F;
          v409 = vaddq_s64(vdupq_n_s64(v408), vzip1q_s64(0, v388));
          v410 = (v333 + 8 * (v397 >> 6));
          v400 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v410, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v409)), vshlq_u64(vdupq_lane_s64(v410->i64[0], 0), vnegq_s64(v409)));
          if (v408 + v390 >= 0x81)
          {
            v400 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v410[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v409)), vshlq_u64(vdupq_laneq_s64(v410[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v409))), v400);
          }
        }

        else
        {
          v335 = 1;
          v405 = v397;
        }

        v411 = v405 + v390;
        if (v688.i64[0])
        {
          v412 = v688.i64[0] >= v411;
        }

        else
        {
          v412 = 1;
        }

        v413 = v412;
        v414 = 0uLL;
        v684 = v283;
        v686 = v285;
        v415.i64[0] = 0xFFFF0000FFFFLL;
        v415.i64[1] = 0xFFFF0000FFFFLL;
        if (v390 <= 0x80 && v413)
        {
          v416 = v405 & 0x3F;
          v417 = vaddq_s64(vdupq_n_s64(v416), vzip1q_s64(0, v388));
          v418 = (v333 + 8 * (v405 >> 6));
          v419 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v418, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v417)), vshlq_u64(vdupq_lane_s64(v418->i64[0], 0), vnegq_s64(v417)));
          if (v416 + v390 >= 0x81)
          {
            v419 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v418[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v417)), vshlq_u64(vdupq_laneq_s64(v418[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v417))), v419);
          }
        }

        else
        {
          v335 = 1;
          v411 = v405;
          v419 = 0uLL;
        }

        v420 = vmovl_u16(*&vpaddq_s16(v711, v711));
        v421 = vpaddq_s32(v420, v420).u64[0];
        v422.i64[0] = v421;
        v422.i64[1] = HIDWORD(v421);
        v423 = v422;
        v424 = vaddvq_s64(v422);
        v425 = v424;
        v426 = v411 + v424;
        if (v688.i64[0])
        {
          v427 = v688.i64[0] >= v426;
        }

        else
        {
          v427 = 1;
        }

        v428 = v427;
        if (v424 <= 0x80 && v428)
        {
          v429 = v411 & 0x3F;
          v430 = vaddq_s64(vdupq_n_s64(v429), vzip1q_s64(0, v423));
          v431 = (v333 + 8 * (v411 >> 6));
          v414 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v431, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v430)), vshlq_u64(vdupq_lane_s64(v431->i64[0], 0), vnegq_s64(v430)));
          if (v429 + v425 >= 0x81)
          {
            v414 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v431[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v430)), vshlq_u64(vdupq_laneq_s64(v431[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v430))), v414);
          }
        }

        else
        {
          v335 = 1;
          v426 = v411;
        }

        v432 = v426 + v425;
        if (v688.i64[0])
        {
          v433 = v688.i64[0] >= v432;
        }

        else
        {
          v433 = 1;
        }

        v434 = v433;
        v435 = 0uLL;
        if (v425 <= 0x80 && v434)
        {
          v436 = v426 & 0x3F;
          v437 = vaddq_s64(vdupq_n_s64(v436), vzip1q_s64(0, v423));
          v438 = (v333 + 8 * (v426 >> 6));
          v439 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v438, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v437)), vshlq_u64(vdupq_lane_s64(v438->i64[0], 0), vnegq_s64(v437)));
          if (v436 + v425 >= 0x81)
          {
            v439 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v438[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v437)), vshlq_u64(vdupq_laneq_s64(v438[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v437))), v439);
          }
        }

        else
        {
          v335 = 1;
          v432 = v426;
          v439 = 0uLL;
        }

        v440 = v432 + v425;
        if (v688.i64[0])
        {
          v441 = v688.i64[0] >= v440;
        }

        else
        {
          v441 = 1;
        }

        v442 = v441;
        if (v425 <= 0x80 && v442)
        {
          v443 = v432 & 0x3F;
          v444 = vaddq_s64(vdupq_n_s64(v443), vzip1q_s64(0, v423));
          v445 = (v333 + 8 * (v432 >> 6));
          v435 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v445, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v444)), vshlq_u64(vdupq_lane_s64(v445->i64[0], 0), vnegq_s64(v444)));
          if (v443 + v425 >= 0x81)
          {
            v435 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v445[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v444)), vshlq_u64(vdupq_laneq_s64(v445[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v444))), v435);
          }
        }

        else
        {
          v335 = 1;
          v440 = v432;
        }

        v446 = v440 + v425;
        if (v688.i64[0])
        {
          v447 = v688.i64[0] >= v446;
        }

        else
        {
          v447 = 1;
        }

        v448 = v447;
        v449 = 0uLL;
        v682 = v284;
        if (v425 <= 0x80 && v448)
        {
          v450 = v440 & 0x3F;
          v451 = vaddq_s64(vdupq_n_s64(v450), vzip1q_s64(0, v423));
          v452 = (v333 + 8 * (v440 >> 6));
          v453 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v452, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v451)), vshlq_u64(vdupq_lane_s64(v452->i64[0], 0), vnegq_s64(v451)));
          if (v450 + v425 >= 0x81)
          {
            v453 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v452[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v451)), vshlq_u64(vdupq_laneq_s64(v452[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v451))), v453);
          }
        }

        else
        {
          v335 = 1;
          v446 = v440;
          v453 = 0uLL;
        }

        v454 = vmovl_u16(*&vpaddq_s16(v712, v712));
        v455 = vpaddq_s32(v454, v454).u64[0];
        v456.i64[0] = v455;
        v456.i64[1] = HIDWORD(v455);
        v457 = v456;
        v458 = vaddvq_s64(v456);
        v459 = v458;
        v460 = v446 + v458;
        if (v688.i64[0])
        {
          v461 = v688.i64[0] >= v460;
        }

        else
        {
          v461 = 1;
        }

        v462 = v461;
        if (v458 <= 0x80 && v462)
        {
          v463 = v446 & 0x3F;
          v464 = vaddq_s64(vdupq_n_s64(v463), vzip1q_s64(0, v457));
          v465 = (v333 + 8 * (v446 >> 6));
          v449 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v465, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v464)), vshlq_u64(vdupq_lane_s64(v465->i64[0], 0), vnegq_s64(v464)));
          if (v463 + v459 >= 0x81)
          {
            v449 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v465[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v464)), vshlq_u64(vdupq_laneq_s64(v465[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v464))), v449);
          }
        }

        else
        {
          v335 = 1;
          v460 = v446;
        }

        v466 = v460 + v459;
        if (v688.i64[0])
        {
          v467 = v688.i64[0] >= v466;
        }

        else
        {
          v467 = 1;
        }

        v468 = v467;
        v469 = 0uLL;
        if (v459 <= 0x80 && v468)
        {
          v470 = v460 & 0x3F;
          v471 = vaddq_s64(vdupq_n_s64(v470), vzip1q_s64(0, v457));
          v472 = (v333 + 8 * (v460 >> 6));
          v473 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v472, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v471)), vshlq_u64(vdupq_lane_s64(v472->i64[0], 0), vnegq_s64(v471)));
          if (v470 + v459 >= 0x81)
          {
            v473 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v472[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v471)), vshlq_u64(vdupq_laneq_s64(v472[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v471))), v473);
          }
        }

        else
        {
          v335 = 1;
          v466 = v460;
          v473 = 0uLL;
        }

        v474 = v466 + v459;
        if (v688.i64[0])
        {
          v475 = v688.i64[0] >= v474;
        }

        else
        {
          v475 = 1;
        }

        v476 = v475;
        if (v459 <= 0x80 && v476)
        {
          v477 = v466 & 0x3F;
          v478 = vaddq_s64(vdupq_n_s64(v477), vzip1q_s64(0, v457));
          v479 = (v333 + 8 * (v466 >> 6));
          v469 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v479, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v478)), vshlq_u64(vdupq_lane_s64(v479->i64[0], 0), vnegq_s64(v478)));
          if (v477 + v459 >= 0x81)
          {
            v469 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v479[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v478)), vshlq_u64(vdupq_laneq_s64(v479[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v478))), v469);
          }
        }

        else
        {
          v335 = 1;
          v474 = v466;
        }

        v480 = v474 + v459;
        if (v688.i64[0])
        {
          v481 = v688.i64[0] >= v480;
        }

        else
        {
          v481 = 1;
        }

        v482 = v481;
        if (v459 > 0x80 || !v482)
        {
          goto LABEL_275;
        }

        v483 = vaddq_s64(vdupq_n_s64(v474 & 0x3F), vzip1q_s64(0, v457));
        v484 = (v333 + 8 * (v474 >> 6));
        v485 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v484, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v483)), vshlq_u64(vdupq_lane_s64(v484->i64[0], 0), vnegq_s64(v483)));
        if ((v474 & 0x3F) + v459 >= 0x81)
        {
          v485 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v484[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v483)), vshlq_u64(vdupq_laneq_s64(v484[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v483))), v485);
        }

        if ((v335 & 1) != 0 || v688.i64[0] + 8 * result - v480 - 768 >= 9 || v321 == 2)
        {
LABEL_275:
          result = 0;
          v486 = vdupq_n_s64(0xFFFFF003FFuLL);
          *a1 = v486;
          a1[1] = v486;
          a1[2] = v486;
          a1[3] = v486;
          v487 = (a1 + a2);
          *v487 = v486;
          v487[1] = v486;
          v487[2] = v486;
          v487[3] = v486;
          v488 = (a1 + 2 * a2);
          *v488 = v486;
          v488[1] = v486;
          v488[2] = v486;
          v488[3] = v486;
          v489 = (a1 + 2 * a2 + a2);
          *v489 = v486;
          v489[1] = v486;
          v489[2] = v486;
          v489[3] = v486;
        }

        else
        {
          v490 = vzip1_s32(*v325.i8, *&vextq_s8(v325, v325, 8uLL));
          v491 = vzip1_s32(*v386.i8, *&vextq_s8(v386, v386, 8uLL));
          v492 = vzip1_s32(*v420.i8, *&vextq_s8(v420, v420, 8uLL));
          v493 = vzip1_s32(*v454.i8, *&vextq_s8(v454, v454, 8uLL));
          v494.i64[0] = v490.u32[0];
          v494.i64[1] = v490.u32[1];
          v495 = vshlq_u64(v323, vnegq_s64(v494));
          v496 = vzip2q_s64(v323, v495);
          v497 = vzip1q_s64(v323, v495);
          v494.i64[0] = v491.u32[0];
          v494.i64[1] = v491.u32[1];
          v498 = vnegq_s64(v494);
          v499 = vshlq_u64(v377, v498);
          v500 = vzip2q_s64(v377, v499);
          v501 = vzip1q_s64(v377, v499);
          v502 = vshlq_u64(v404, v498);
          v503 = vzip2q_s64(v404, v502);
          v504 = vzip1q_s64(v404, v502);
          v505 = vshlq_u64(v400, v498);
          v506 = vzip2q_s64(v400, v505);
          v507 = vzip1q_s64(v400, v505);
          v508 = vshlq_u64(v419, v498);
          v509 = vzip2q_s64(v419, v508);
          v510 = vzip1q_s64(v419, v508);
          v494.i64[0] = v492.u32[0];
          v494.i64[1] = v492.u32[1];
          v511 = vnegq_s64(v494);
          v512 = vshlq_u64(v414, v511);
          v680 = v261;
          v681 = v282;
          v513 = vzip2q_s64(v414, v512);
          v514 = vzip1q_s64(v414, v512);
          v515 = vshlq_u64(v439, v511);
          v516 = vzip2q_s64(v439, v515);
          v517 = vzip1q_s64(v439, v515);
          v518 = vshlq_u64(v435, v511);
          v676 = v320;
          v677 = v373;
          v519 = vzip2q_s64(v435, v518);
          v520 = vzip1q_s64(v435, v518);
          v521 = vshlq_u64(v453, v511);
          v522 = vzip2q_s64(v453, v521);
          v523 = vzip1q_s64(v453, v521);
          v494.i64[0] = v493.u32[0];
          v494.i64[1] = v493.u32[1];
          v524 = vnegq_s64(v494);
          v525 = vshlq_u64(v449, v524);
          v678 = v363;
          v679 = v385;
          v526 = vzip2q_s64(v449, v525);
          v527 = vzip1q_s64(v449, v525);
          v528 = vshlq_u64(v473, v524);
          v529 = v324;
          v530 = vzip2q_s64(v473, v528);
          v531 = vzip1q_s64(v473, v528);
          v532 = vshlq_u64(v469, v524);
          v533 = vuzp1q_s32(v497, v496);
          v534 = vuzp1q_s32(v501, v500);
          v535 = vuzp1q_s32(v504, v503);
          v536 = vuzp1q_s32(v507, v506);
          v537 = vuzp1q_s32(v510, v509);
          v538 = vuzp1q_s32(v514, v513);
          v539 = vuzp1q_s32(v517, v516);
          v540 = vuzp1q_s32(v520, v519);
          v541 = vuzp1q_s32(v523, v522);
          v542 = vuzp1q_s32(v527, v526);
          v543 = vuzp1q_s32(v531, v530);
          v531.i64[0] = 0xFFFF0000FFFFLL;
          v531.i64[1] = 0xFFFF0000FFFFLL;
          v544 = vnegq_s32(vandq_s8(v710, v531));
          v545 = vuzp1q_s32(vzip1q_s64(v469, v532), vzip2q_s64(v469, v532));
          v546 = vshlq_u32(v533, vnegq_s32(vandq_s8(v529, v415)));
          v547 = vzip2q_s32(v533, v546);
          v548 = vzip1q_s32(v533, v546);
          v549 = vshlq_u32(v534, v544);
          v550 = vzip2q_s32(v534, v549);
          v551 = vzip1q_s32(v534, v549);
          v552 = vshlq_u32(v535, v544);
          v553 = vzip2q_s32(v535, v552);
          v554 = vzip1q_s32(v535, v552);
          v555 = vshlq_u32(v536, v544);
          v556 = vzip2q_s32(v536, v555);
          v557 = vzip1q_s32(v536, v555);
          v558 = vshlq_u32(v537, v544);
          v559 = vzip2q_s32(v537, v558);
          v560 = vzip1q_s32(v537, v558);
          v558.i64[0] = 0xFFFF0000FFFFLL;
          v558.i64[1] = 0xFFFF0000FFFFLL;
          v561 = vnegq_s32(vandq_s8(v711, v558));
          v562 = vshlq_u32(v538, v561);
          v563 = vzip2q_s32(v538, v562);
          v564 = vzip1q_s32(v538, v562);
          v565 = vshlq_u32(v539, v561);
          v566 = vzip2q_s32(v539, v565);
          v567 = vzip1q_s32(v539, v565);
          v568 = vshlq_u32(v540, v561);
          v569 = vzip2q_s32(v540, v568);
          v570 = vzip1q_s32(v540, v568);
          v571 = vshlq_u32(v541, v561);
          v572 = vzip2q_s32(v541, v571);
          v573 = vzip1q_s32(v541, v571);
          v571.i64[0] = 0xFFFF0000FFFFLL;
          v571.i64[1] = 0xFFFF0000FFFFLL;
          v574 = vnegq_s32(vandq_s8(v712, v571));
          v575 = vshlq_u32(v542, v574);
          v576 = vzip2q_s32(v542, v575);
          v577 = vzip1q_s32(v542, v575);
          v578 = vshlq_u32(v543, v574);
          v579 = vzip2q_s32(v543, v578);
          v580 = vzip1q_s32(v543, v578);
          v581 = vshlq_u32(v545, v574);
          v582 = vuzp1q_s16(v548, v547);
          v583 = vuzp1q_s16(v560, v559);
          v584.i64[0] = 0x10001000100010;
          v584.i64[1] = 0x10001000100010;
          v560.i64[0] = 0xF000F000F000FLL;
          v560.i64[1] = 0xF000F000F000FLL;
          v585 = vaddq_s16(v529, v560);
          v547.i64[0] = 0x10001000100010;
          v547.i64[1] = 0x10001000100010;
          v586 = vshlq_s16(v582, vsubq_s16(v584, v529));
          v584.i64[0] = 0xF000F000F000FLL;
          v584.i64[1] = 0xF000F000F000FLL;
          v587 = vsubq_s16(v547, v710);
          v588 = vaddq_s16(v710, v584);
          v529.i64[0] = 0x10001000100010;
          v529.i64[1] = 0x10001000100010;
          v589 = vshlq_s16(vuzp1q_s16(v551, v550), v587);
          v590 = vshlq_s16(vuzp1q_s16(v554, v553), v587);
          v591 = vshlq_s16(vuzp1q_s16(v557, v556), v587);
          v592 = vshlq_s16(v583, v587);
          v587.i64[0] = 0xF000F000F000FLL;
          v587.i64[1] = 0xF000F000F000FLL;
          v593 = vsubq_s16(v529, v711);
          v594 = vaddq_s16(v711, v587);
          v550.i64[0] = 0x10001000100010;
          v550.i64[1] = 0x10001000100010;
          v595 = vshlq_s16(vuzp1q_s16(v564, v563), v593);
          v596 = vshlq_s16(vuzp1q_s16(v567, v566), v593);
          v597 = vshlq_s16(vuzp1q_s16(v570, v569), v593);
          v598 = vshlq_s16(vuzp1q_s16(v573, v572), v593);
          v593.i64[0] = 0xF000F000F000FLL;
          v593.i64[1] = 0xF000F000F000FLL;
          v599 = vsubq_s16(v550, v712);
          v600 = vaddq_s16(v712, v593);
          v601 = vshlq_s16(v589, v588);
          v602 = vshlq_s16(v590, v588);
          v603 = vshlq_s16(v591, v588);
          v604 = vshlq_s16(v592, v588);
          v605 = vshlq_s16(v595, v594);
          v606 = vshlq_s16(v596, v594);
          v607 = vshlq_s16(v597, v594);
          v608 = vshlq_s16(v598, v594);
          v609 = vshlq_u64(v485, v524);
          v610 = vuzp1q_s32(vzip1q_s64(v485, v609), vzip2q_s64(v485, v609));
          v611 = vshlq_u32(v610, v574);
          v612 = vshlq_s16(vuzp1q_s16(v580, v579), v599);
          v613 = vshlq_s16(vuzp1q_s16(vzip1q_s32(v545, v581), vzip2q_s32(v545, v581)), v599);
          v614 = vshlq_s16(vshlq_s16(vuzp1q_s16(v577, v576), v599), v600);
          v615 = vshlq_s16(v612, v600);
          v616 = vshlq_s16(v613, v600);
          v617 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v610, v611), vzip2q_s32(v610, v611)), v599), v600);
          v618 = vaddq_s16(vandq_s8(v676, v686), vshlq_s16(v586, v585));
          v619 = vdupq_lane_s64(v676.i64[0], 0);
          v620 = vandq_s8(v682, v619);
          v621 = vsubq_s16(v601, v620);
          v622 = vsubq_s16(v602, v620);
          v623 = vsubq_s16(v603, v620);
          v624 = vsubq_s16(v604, v620);
          v625 = vandq_s8(v684, v619);
          v626 = vsubq_s16(v605, v625);
          v627 = vsubq_s16(v606, v625);
          v628 = vandq_s8(v686, v619);
          v629 = vsubq_s16(v607, v625);
          v630 = vsubq_s16(v608, v625);
          v631.i64[0] = 0x1000100010001;
          v631.i64[1] = 0x1000100010001;
          v632 = vsubq_s16(v678, v628);
          v633 = vsubq_s16(v677, v628);
          v634 = vandq_s8(v681, v619);
          v635 = vsubq_s16(v614, v634);
          v636 = vsubq_s16(v615, v634);
          v637 = vsubq_s16(v616, v634);
          v638 = vsubq_s16(v617, v634);
          v639 = vsubq_s16(v679, v628);
          v640 = vsubq_s16(v618, v628);
          v695 = v618;
          v703 = v635;
          v704 = v636;
          v705 = v637;
          v706 = v638;
          if (vaddvq_s16(vceqq_s16(v680, v631)))
          {
            v641 = vnegq_s16(vandq_s8(v708, v631));
            v642.i64[0] = v639.i64[0];
            v643.i64[1] = v640.i64[1];
            v642.i64[1] = v640.i64[0];
            v643.i64[0] = v639.i64[1];
            v644 = vbslq_s8(v641, v643, v640);
            v645 = vbslq_s8(v641, v642, v639);
            v643.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
            v643.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
            v646 = vandq_s8(vqtbl4q_s8(*(&v632 - 1), v643), v641);
            v717.val[0] = vaddq_s16(v644, vandq_s8(vqtbl4q_s8(*(&v632 - 1), xmmword_29D2F10B0), v641));
            v717.val[1] = vaddq_s16(v632, vandq_s8(vqtbl4q_s8(*(&v632 - 1), xmmword_29D2F10C0), v641));
            v717.val[2] = vaddq_s16(v633, v646);
            v717.val[3] = vaddq_s16(v645, v646);
            v647 = vandq_s8(vqtbl4q_s8(v717, v643), v641);
            v640 = vaddq_s16(v717.val[0], vandq_s8(vqtbl4q_s8(v717, xmmword_29D2F10D0), v641));
            v632 = vaddq_s16(v717.val[1], vandq_s8(vqtbl4q_s8(v717, xmmword_29D2F10E0), v641));
            v695 = v640;
            v696 = v632;
            v633 = vaddq_s16(v717.val[2], v647);
            v639 = vaddq_s16(v717.val[3], v647);
            v715.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v621.i8, xmmword_29D2F10B0), v641), v621);
            v715.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v621.i8, xmmword_29D2F10F0), v641), v622);
            v715.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v621.i8, v643), v641), v623);
            v715.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v621.i8, xmmword_29D2F1100), v641), v624);
            v648 = vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F10D0), v641);
            v649 = vandq_s8(vqtbl4q_s8(v715, v643), v641);
            v621 = vaddq_s16(v648, v715.val[0]);
            v622 = vaddq_s16(v715.val[1], v648);
            v623 = vaddq_s16(v715.val[2], v649);
            v624 = vaddq_s16(v715.val[3], v649);
            v715.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v626.i8, xmmword_29D2F0EB0), v641), v626);
            v715.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v626.i8, xmmword_29D2F0FB0), v641), v627);
            v715.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v626.i8, xmmword_29D2F10B0), v641), v629);
            v715.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v626.i8, xmmword_29D2F10C0), v641), v630);
            v650 = vandq_s8(vqtbl4q_s8(v715, v643), v641);
            v626 = vaddq_s16(v715.val[0], v650);
            v627 = vaddq_s16(v715.val[1], v650);
            v629 = vaddq_s16(v715.val[2], vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F0FE0), v641));
            v630 = vaddq_s16(v715.val[3], vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F1110), v641));
            v715.val[0] = v703;
            v715.val[1] = v704;
            v651 = v708;
            v715.val[2] = v705;
            v715.val[3] = v706;
            v716.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F0EB0), v641), v703);
            v716.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F1120), v641), v704);
            v697 = v633;
            v698 = v639;
            v716.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F10B0), v641), v705);
            v716.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F10C0), v641), v706);
            v652 = vandq_s8(vqtbl4q_s8(v716, v643), v641);
            v653 = vandq_s8(vqtbl4q_s8(v716, xmmword_29D2F0FE0), v641);
            v654 = vandq_s8(vqtbl4q_s8(v716, xmmword_29D2F1130), v641);
            v635 = vaddq_s16(v716.val[0], v652);
            v636 = vaddq_s16(v716.val[1], v652);
            v637 = vaddq_s16(v716.val[2], v653);
            v638 = vaddq_s16(v716.val[3], v654);
          }

          else
          {
            v651 = v708;
          }

          v655 = vaddq_s16(v707, v640);
          v656 = vaddq_s16(v632, v707);
          v657 = vaddq_s16(v633, v707);
          v658 = vaddq_s16(v639, v707);
          v659 = vaddq_s16(v621, v707);
          v660 = vaddq_s16(v622, v707);
          v661 = vaddq_s16(v623, v707);
          v662 = vaddq_s16(v624, v707);
          v663 = vaddq_s16(v626, v707);
          v664 = vaddq_s16(v627, v707);
          v665 = vaddq_s16(v629, v707);
          v666 = vaddq_s16(v630, v707);
          v667 = vaddq_s16(v635, v707);
          v668 = vaddq_s16(v636, v707);
          v669 = vaddq_s16(v637, v707);
          v670 = vaddq_s16(v638, v707);
          v671.i64[0] = 0x10001000100010;
          v671.i64[1] = 0x10001000100010;
          v672 = vceqzq_s16(vandq_s8(v651, v671));
          v673 = (a1 + a2);
          *a1 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v655, xmmword_29D2F1140), v672), v655), 6uLL);
          a1[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v657, xmmword_29D2F1140), v672), v657), 6uLL);
          a1[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v663, xmmword_29D2F1140), v672), v663), 6uLL);
          a1[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v665, xmmword_29D2F1140), v672), v665), 6uLL);
          v674 = (a1 + 2 * a2);
          *v673 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v656, xmmword_29D2F1140), v672), v656), 6uLL);
          v673[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v658, xmmword_29D2F1140), v672), v658), 6uLL);
          v673[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v664, xmmword_29D2F1140), v672), v664), 6uLL);
          v673[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v666, xmmword_29D2F1140), v672), v666), 6uLL);
          *v674 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v659, xmmword_29D2F1140), v672), v659), 6uLL);
          v674[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v661, xmmword_29D2F1140), v672), v661), 6uLL);
          v674[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v667, xmmword_29D2F1140), v672), v667), 6uLL);
          v674[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v669, xmmword_29D2F1140), v672), v669), 6uLL);
          v675 = (v674 + a2);
          *v675 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v660, xmmword_29D2F1140), v672), v660), 6uLL);
          v675[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v662, xmmword_29D2F1140), v672), v662), 6uLL);
          v675[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v668, xmmword_29D2F1140), v672), v668), 6uLL);
          v675[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v670, xmmword_29D2F1140), v672), v670), 6uLL);
        }

        return result;
      }

      if (v688.i64[0] >= v265 + 8)
      {
        v687.i64[0] = v265 + 8;
        v322 = v265 + 16;
        v265 += 8;
      }

      else
      {
        v688.i8[8] = 1;
        v322 = v265 + 8;
      }

      if (v688.i64[0] >= v322)
      {
        goto LABEL_94;
      }

      v688.i8[8] = 1;
    }

    v322 = v265;
    goto LABEL_94;
  }

  v29.i64[0] = 0xA000A000A000ALL;
  v29.i64[1] = 0xA000A000A000ALL;
  v30 = vmovl_u16(*&vpaddq_s16(v29, v29));
  v29.i64[0] = vpaddq_s32(v30, v30).u64[0];
  v31.i64[0] = v29.u32[0];
  v31.i64[1] = v29.u32[1];
  v32 = v31;
  v33 = vaddvq_s64(v31);
  v34 = v33;
  v35 = 0uLL;
  if (v33 > 0x80)
  {
    v249 = 0uLL;
    v250 = 0uLL;
    v251 = 0uLL;
    v241 = 0uLL;
    v242 = 0uLL;
    v243 = 0uLL;
    v244 = 0uLL;
    v248 = 0uLL;
    v247 = 0uLL;
    v246 = 0uLL;
    v245 = 0uLL;
    v258 = 0uLL;
    v257 = 0uLL;
    v256 = 0uLL;
    v255 = 0uLL;
  }

  else
  {
    v36 = (a3 & 0xFFFFFFFFFFFFFFF8);
    v37 = vzip1q_s64(0, v32);
    v38 = 8 * (a3 & 7);
    v39 = v33 + v38;
    v40 = vaddq_s64(v37, vdupq_n_s64(v38));
    v41 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v40)), vshlq_u64(vdupq_lane_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 0), vnegq_s64(v40)));
    if (v39 >= 0x81)
    {
      v41 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v36[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v40)), vshlq_u64(vdupq_laneq_s64(v36[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v40))), v41);
    }

    v42 = v39 & 0x3F;
    v43 = (v36 + 8 * (v39 >> 6));
    v44 = vaddq_s64(v37, vdupq_n_s64(v42));
    v45 = v34 + v39;
    v46 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v43, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v44)), vshlq_u64(vdupq_lane_s64(v43->i64[0], 0), vnegq_s64(v44)));
    if (v34 + v42 >= 0x81)
    {
      v46 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v43[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v44)), vshlq_u64(vdupq_laneq_s64(v43[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v44))), v46);
    }

    v47 = v45 & 0x3F;
    v48 = (v36 + 8 * (v45 >> 6));
    v49 = vaddq_s64(v37, vdupq_n_s64(v47));
    v50 = v34 + v45;
    v51 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v48, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v49)), vshlq_u64(vdupq_lane_s64(v48->i64[0], 0), vnegq_s64(v49)));
    if (v34 + v47 >= 0x81)
    {
      v51 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v48[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v49)), vshlq_u64(vdupq_laneq_s64(v48[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v49))), v51);
    }

    v52 = v50 & 0x3F;
    v53 = (v36 + 8 * (v50 >> 6));
    v54 = vaddq_s64(v37, vdupq_n_s64(v52));
    v55 = v34 + v50;
    v56 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v53, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v54)), vshlq_u64(vdupq_lane_s64(v53->i64[0], 0), vnegq_s64(v54)));
    if (v34 + v52 >= 0x81)
    {
      v56 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v53[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v54)), vshlq_u64(vdupq_laneq_s64(v53[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v54))), v56);
    }

    v57 = vextq_s8(v30, v30, 8uLL).u64[0];
    v58 = v55 & 0x3F;
    v59 = (v36 + 8 * (v55 >> 6));
    v60 = vaddq_s64(v37, vdupq_n_s64(v58));
    v61 = v34 + v55;
    v62 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v59, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v60)), vshlq_u64(vdupq_lane_s64(v59->i64[0], 0), vnegq_s64(v60)));
    if (v34 + v58 >= 0x81)
    {
      v62 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v59[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v60)), vshlq_u64(vdupq_laneq_s64(v59[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v60))), v62);
    }

    v63 = v61 & 0x3F;
    v64 = (v36 + 8 * (v61 >> 6));
    v65 = vaddq_s64(v37, vdupq_n_s64(v63));
    v66 = v34 + v61;
    v67 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v64, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v65)), vshlq_u64(vdupq_lane_s64(v64->i64[0], 0), vnegq_s64(v65)));
    if (v34 + v63 >= 0x81)
    {
      v67 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v64[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v65)), vshlq_u64(vdupq_laneq_s64(v64[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v65))), v67);
    }

    v68 = vzip1_s32(*v30.i8, v57);
    v69 = v66 & 0x3F;
    v70 = (v36 + 8 * (v66 >> 6));
    v71 = vaddq_s64(v37, vdupq_n_s64(v69));
    v72 = v34 + v66;
    v73 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v70, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v71)), vshlq_u64(vdupq_lane_s64(v70->i64[0], 0), vnegq_s64(v71)));
    if (v34 + v69 >= 0x81)
    {
      v73 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v70[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v71)), vshlq_u64(vdupq_laneq_s64(v70[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v71))), v73);
    }

    v74.i64[0] = v68.u32[0];
    v74.i64[1] = v68.u32[1];
    v75 = v74;
    v76 = v72 & 0x3F;
    v77 = (v36 + 8 * (v72 >> 6));
    v78 = vaddq_s64(v37, vdupq_n_s64(v76));
    v79 = v34 + v72;
    v80 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v77, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v78)), vshlq_u64(vdupq_lane_s64(v77->i64[0], 0), vnegq_s64(v78)));
    if (v34 + v76 >= 0x81)
    {
      v80 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v77[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v78)), vshlq_u64(vdupq_laneq_s64(v77[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v78))), v80);
    }

    v81 = vnegq_s64(v75);
    v82 = v79 & 0x3F;
    v83 = (v36 + 8 * (v79 >> 6));
    v84 = vaddq_s64(v37, vdupq_n_s64(v82));
    v85 = v34 + v79;
    v86 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v83, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v84)), vshlq_u64(vdupq_lane_s64(v83->i64[0], 0), vnegq_s64(v84)));
    if (v34 + v82 >= 0x81)
    {
      v86 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v83[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v84)), vshlq_u64(vdupq_laneq_s64(v83[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v84))), v86);
    }

    v87 = vshlq_u64(v41, v81);
    v88 = vshlq_u64(v46, v81);
    v89 = vshlq_u64(v51, v81);
    v90 = vshlq_u64(v56, v81);
    v91 = vshlq_u64(v62, v81);
    v92 = vshlq_u64(v67, v81);
    v93 = vshlq_u64(v73, v81);
    v94 = vshlq_u64(v80, v81);
    v95 = vshlq_u64(v86, v81);
    v96 = v85 & 0x3F;
    v97 = (v36 + 8 * (v85 >> 6));
    v98 = vaddq_s64(v37, vdupq_n_s64(v96));
    v99 = v34 + v85;
    v100 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v97, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v98)), vshlq_u64(vdupq_lane_s64(v97->i64[0], 0), vnegq_s64(v98)));
    if (v34 + v96 >= 0x81)
    {
      v100 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v97[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v98)), vshlq_u64(vdupq_laneq_s64(v97[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v98))), v100);
    }

    v101 = vzip2q_s64(v41, v87);
    v102 = vzip1q_s64(v41, v87);
    v103 = vzip2q_s64(v46, v88);
    v104 = vzip1q_s64(v46, v88);
    v105 = vzip2q_s64(v51, v89);
    v106 = vzip1q_s64(v51, v89);
    v107 = vzip2q_s64(v56, v90);
    v108 = vzip1q_s64(v56, v90);
    v109 = vzip2q_s64(v62, v91);
    v110 = vzip1q_s64(v62, v91);
    v111 = vzip2q_s64(v67, v92);
    v112 = vzip1q_s64(v67, v92);
    v113 = vzip2q_s64(v73, v93);
    v114 = vzip1q_s64(v73, v93);
    v115 = vzip2q_s64(v80, v94);
    v116 = vzip1q_s64(v80, v94);
    v117 = vzip2q_s64(v86, v95);
    v118 = vzip1q_s64(v86, v95);
    v119 = vshlq_u64(v100, v81);
    v120 = vzip2q_s64(v100, v119);
    v121 = vzip1q_s64(v100, v119);
    v122 = (v36 + 8 * (v99 >> 6));
    v123 = vaddq_s64(v37, vdupq_n_s64(v99 & 0x3F));
    v124 = v34 + v99;
    v125 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v122, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v122->i64[0], 0), vnegq_s64(v123)));
    if (v34 + (v99 & 0x3F) >= 0x81)
    {
      v125 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v122[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v122[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v125);
    }

    v126 = vuzp1q_s32(v102, v101);
    v127 = vuzp1q_s32(v104, v103);
    v128 = vuzp1q_s32(v106, v105);
    v129 = vuzp1q_s32(v108, v107);
    v130 = vuzp1q_s32(v110, v109);
    v131 = vuzp1q_s32(v112, v111);
    v132 = vuzp1q_s32(v114, v113);
    v133 = vuzp1q_s32(v116, v115);
    v134 = vuzp1q_s32(v118, v117);
    v135 = vuzp1q_s32(v121, v120);
    v136 = vshlq_u64(v125, v81);
    v137 = vuzp1q_s32(vzip1q_s64(v125, v136), vzip2q_s64(v125, v136));
    v138 = v34 + v124;
    v139 = v124 & 0x3F;
    v140 = vaddq_s64(v37, vdupq_n_s64(v139));
    v141 = (v36 + 8 * (v124 >> 6));
    v142 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
    if (v34 + v139 >= 0x81)
    {
      v142 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v142);
    }

    v143 = vshrq_n_u32(v126, 0xAuLL);
    v144 = vshrq_n_u32(v127, 0xAuLL);
    v145 = vshrq_n_u32(v128, 0xAuLL);
    v146 = vshrq_n_u32(v129, 0xAuLL);
    v147 = vshrq_n_u32(v130, 0xAuLL);
    v148 = vshrq_n_u32(v131, 0xAuLL);
    v149 = vshrq_n_u32(v132, 0xAuLL);
    v150 = vshrq_n_u32(v133, 0xAuLL);
    v151 = vshrq_n_u32(v134, 0xAuLL);
    v152 = vshrq_n_u32(v135, 0xAuLL);
    v153 = vshrq_n_u32(v137, 0xAuLL);
    v154 = vshlq_u64(v142, v81);
    v155 = vuzp1q_s32(vzip1q_s64(v142, v154), vzip2q_s64(v142, v154));
    v156 = vshrq_n_u32(v155, 0xAuLL);
    v157 = v138 & 0x3F;
    v158 = (v36 + 8 * (v138 >> 6));
    v159 = vaddq_s64(v37, vdupq_n_s64(v157));
    v160 = v34 + v138;
    v161 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v158, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v159)), vshlq_u64(vdupq_lane_s64(v158->i64[0], 0), vnegq_s64(v159)));
    if (v34 + v157 >= 0x81)
    {
      v161 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v158[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v159)), vshlq_u64(vdupq_laneq_s64(v158[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v159))), v161);
    }

    v162 = vzip2q_s32(v126, v143);
    v163 = vzip1q_s32(v126, v143);
    v683 = vzip1q_s32(v127, v144);
    v685 = vzip2q_s32(v127, v144);
    v164 = vzip2q_s32(v128, v145);
    v165 = vzip1q_s32(v128, v145);
    v166 = vzip2q_s32(v129, v146);
    v167 = vzip1q_s32(v129, v146);
    v168 = vzip2q_s32(v130, v147);
    v169 = vzip1q_s32(v130, v147);
    v170 = vzip2q_s32(v131, v148);
    v171 = vzip1q_s32(v131, v148);
    v172 = vzip2q_s32(v132, v149);
    v173 = vzip1q_s32(v132, v149);
    v174 = vzip2q_s32(v133, v150);
    v175 = vzip1q_s32(v133, v150);
    v176 = vzip2q_s32(v134, v151);
    v177 = vzip1q_s32(v134, v151);
    v178 = vzip2q_s32(v135, v152);
    v179 = vzip1q_s32(v135, v152);
    v180 = vzip2q_s32(v137, v153);
    v181 = vzip1q_s32(v137, v153);
    v182 = vzip2q_s32(v155, v156);
    v183 = vzip1q_s32(v155, v156);
    v184 = vshlq_u64(v161, v81);
    v185 = vuzp1q_s32(vzip1q_s64(v161, v184), vzip2q_s64(v161, v184));
    v186 = vshrq_n_u32(v185, 0xAuLL);
    v187 = vzip2q_s32(v185, v186);
    v188 = vzip1q_s32(v185, v186);
    v189 = vaddq_s64(v37, vdupq_n_s64(v160 & 0x3F));
    v190 = (v36 + 8 * (v160 >> 6));
    v191.i64[0] = 0x1000100010001;
    v191.i64[1] = 0x1000100010001;
    v192 = vshlq_n_s16(v191, 0xAuLL);
    v193 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v190, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v189)), vshlq_u64(vdupq_lane_s64(v190->i64[0], 0), vnegq_s64(v189)));
    v194.i64[0] = -1;
    v194.i64[1] = -1;
    v195 = v34 + v160;
    if (v34 + (v160 & 0x3F) >= 0x81)
    {
      v194.i64[0] = -1;
      v194.i64[1] = -1;
      v193 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v190[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v189)), vshlq_u64(vdupq_laneq_s64(v190[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v189))), v193);
    }

    v196 = vaddq_s16(v192, v194);
    v197 = vuzp1q_s16(v163, v162);
    v198 = vuzp1q_s16(v683, v685);
    v199 = vuzp1q_s16(v165, v164);
    v200 = vuzp1q_s16(v167, v166);
    v201 = vuzp1q_s16(v169, v168);
    v202 = vuzp1q_s16(v171, v170);
    v203 = vuzp1q_s16(v173, v172);
    v204 = vuzp1q_s16(v175, v174);
    v205 = vuzp1q_s16(v177, v176);
    v206 = vuzp1q_s16(v179, v178);
    v207 = vuzp1q_s16(v181, v180);
    v208 = vuzp1q_s16(v183, v182);
    v209 = vuzp1q_s16(v188, v187);
    v210 = vshlq_u64(v193, v81);
    v211 = vuzp1q_s32(vzip1q_s64(v193, v210), vzip2q_s64(v193, v210));
    v212 = vshrq_n_u32(v211, 0xAuLL);
    v213 = vuzp1q_s16(vzip1q_s32(v211, v212), vzip2q_s32(v211, v212));
    v214 = v34 + v195;
    v215 = v195 & 0x3F;
    v216 = vaddq_s64(v37, vdupq_n_s64(v215));
    v217 = (v36 + 8 * (v195 >> 6));
    v218 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v217, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v216)), vshlq_u64(vdupq_lane_s64(v217->i64[0], 0), vnegq_s64(v216)));
    if (v34 + v215 >= 0x81)
    {
      v218 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v217[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v216)), vshlq_u64(vdupq_laneq_s64(v217[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v216))), v218);
    }

    v219 = vandq_s8(v196, v197);
    v220 = vandq_s8(v196, v198);
    v221 = vandq_s8(v196, v199);
    v222 = vandq_s8(v196, v200);
    v223 = vandq_s8(v196, v201);
    v224 = vandq_s8(v196, v202);
    v225 = vandq_s8(v196, v203);
    v226 = vandq_s8(v196, v204);
    v227 = vandq_s8(v196, v205);
    v228 = vandq_s8(v196, v206);
    v229 = vandq_s8(v196, v207);
    v230 = vandq_s8(v196, v208);
    v231 = vandq_s8(v196, v209);
    v232 = vandq_s8(v196, v213);
    v233 = vshlq_u64(v218, v81);
    v234 = vuzp1q_s32(vzip1q_s64(v218, v233), vzip2q_s64(v218, v233));
    v235 = vshrq_n_u32(v234, 0xAuLL);
    v236 = vuzp1q_s16(vzip1q_s32(v234, v235), vzip2q_s32(v234, v235));
    v237 = (v36 + 8 * (v214 >> 6));
    v238 = vaddq_s64(v37, vdupq_n_s64(v214 & 0x3F));
    v239 = vandq_s8(v196, v236);
    v240 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v237, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v238)), vshlq_u64(vdupq_lane_s64(v237->i64[0], 0), vnegq_s64(v238)));
    if (v34 + (v214 & 0x3F) >= 0x81)
    {
      v240 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v237[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v238)), vshlq_u64(vdupq_laneq_s64(v237[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v238))), v240);
    }

    v241 = vshlq_n_s16(v219, 6uLL);
    v242 = vshlq_n_s16(v220, 6uLL);
    v243 = vshlq_n_s16(v221, 6uLL);
    v244 = vshlq_n_s16(v222, 6uLL);
    v245 = vshlq_n_s16(v223, 6uLL);
    v246 = vshlq_n_s16(v224, 6uLL);
    v247 = vshlq_n_s16(v225, 6uLL);
    v248 = vshlq_n_s16(v226, 6uLL);
    v35 = vshlq_n_s16(v227, 6uLL);
    v249 = vshlq_n_s16(v228, 6uLL);
    v250 = vshlq_n_s16(v229, 6uLL);
    v251 = vshlq_n_s16(v230, 6uLL);
    v252 = vshlq_u64(v240, v81);
    v253 = vuzp1q_s32(vzip1q_s64(v240, v252), vzip2q_s64(v240, v252));
    v254 = vshrq_n_u32(v253, 0xAuLL);
    v255 = vshlq_n_s16(v231, 6uLL);
    v256 = vshlq_n_s16(v232, 6uLL);
    v257 = vshlq_n_s16(v239, 6uLL);
    v258 = vshlq_n_s16(vandq_s8(v196, vuzp1q_s16(vzip1q_s32(v253, v254), vzip2q_s32(v253, v254))), 6uLL);
  }

  v279 = (a1 + a2);
  *a1 = v241;
  a1[1] = v243;
  a1[2] = v35;
  a1[3] = v250;
  v280 = (a1 + 2 * a2);
  *v279 = v242;
  v279[1] = v244;
  v279[2] = v249;
  v279[3] = v251;
  *v280 = v245;
  v280[1] = v247;
  v280[2] = v255;
  v280[3] = v257;
  v281 = (v280 + a2);
  result = 160;
  *v281 = v246;
  v281[1] = v248;
  v281[2] = v256;
  v281[3] = v258;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 1, v13 + 4, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 2, (v13 + v17), a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 3, (v13 + v17 + 64), a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 4, (v13 + 8 * a2), a2, v25, v24, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 5, (v13 + 8 * a2 + 64), a2, v27, v26, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 6, (v13 + 12 * a2), a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::compressSubblock(v11, a4 + 7, (v13 + 12 * a2 + 64), a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressMacroblock(_OWORD *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1, 128, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 4, 128, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 32, 128, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 36, 128, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 64, 128, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 68, 128, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 96, 128, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>::decompressSubblock(a1 + 100, 128, v12 + v13, v14, a4);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, int16x8_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = (a3 + 2 * a4);
  v9 = *v7;
  v10 = v7[1];
  v11 = v7[2];
  v12 = v7[3];
  v8 = (v7 + a4);
  v13 = vshrq_n_s16(*a3, 6uLL);
  v14 = vshrq_n_s16(*(a3 + a4), 6uLL);
  v15 = vshrq_n_s16(a3[1], 6uLL);
  v16 = vshrq_n_s16(*(&a3[1] + a4), 6uLL);
  v17 = vshrq_n_s16(*v8, 6uLL);
  v18 = vshrq_n_s16(v8[1], 6uLL);
  v19 = vshrq_n_s16(a3[2], 6uLL);
  v20 = vshrq_n_s16(*(&a3[2] + a4), 6uLL);
  v21 = vshrq_n_s16(a3[3], 6uLL);
  v22 = vshrq_n_s16(*(&a3[3] + a4), 6uLL);
  v23 = vshrq_n_s16(v11, 6uLL);
  v24 = vshrq_n_s16(v8[2], 6uLL);
  v25 = vshrq_n_s16(v12, 6uLL);
  v26 = vshrq_n_s16(v8[3], 6uLL);
  v468 = vdupq_lane_s64(v13.i64[0], 0);
  v444 = vshrq_n_s16(v9, 6uLL);
  v446 = v17;
  v447 = vshrq_n_s16(v10, 6uLL);
  v448 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v13, v468), 6uLL), 6uLL);
  v450 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v14, v468), 6uLL), 6uLL);
  v452 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v15, v468), 6uLL), 6uLL);
  v454 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v16, v468), 6uLL), 6uLL);
  v456 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v444, v468), 6uLL), 6uLL);
  v457 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v17, v468), 6uLL), 6uLL);
  v27 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v448, v450), v452), v454), xmmword_29D2F1150);
  v28 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v448, v450), v452), v454), xmmword_29D2F1150);
  v29 = vpmaxq_s16(v27, v27);
  v30 = vpminq_s16(v28, v28);
  v31 = vzip1q_s16(v29, v30);
  v32.i64[0] = 0x10001000100010;
  v32.i64[1] = 0x10001000100010;
  v33 = vbicq_s8(vsubq_s16(v32, vclsq_s16(v31)), vceqzq_s16(v31));
  v458 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v447, v468), 6uLL), 6uLL);
  v459 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v18, v468), 6uLL), 6uLL);
  v460 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v19, v468), 6uLL), 6uLL);
  v461 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v20, v468), 6uLL), 6uLL);
  v28.i64[0] = 0x8000800080008000;
  v28.i64[1] = 0x8000800080008000;
  v34.i64[0] = 0x8000800080008000;
  v34.i64[1] = 0x8000800080008000;
  v35 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v456, v457), v458), v459), xmmword_29D2F1150);
  v36 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v456, v457), v458), v459), xmmword_29D2F1150);
  v37 = vpmaxq_s16(v35, v35);
  v38 = vpminq_s16(v36, v36);
  v39 = vmaxq_s16(vmaxq_s16(v29, v28), v37);
  v40 = vminq_s16(vminq_s16(v30, v34), v38);
  v41 = vzip1q_s16(v37, v38);
  v42 = vbicq_s8(vsubq_s16(v32, vclsq_s16(v41)), vceqzq_s16(v41));
  v462 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v21, v468), 6uLL), 6uLL);
  v463 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v22, v468), 6uLL), 6uLL);
  v464 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v23, v468), 6uLL), 6uLL);
  v465 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v24, v468), 6uLL), 6uLL);
  v43 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v460, v461), v462), v463), xmmword_29D2F1150);
  v44 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v460, v461), v462), v463), xmmword_29D2F1150);
  v45 = vpmaxq_s16(v43, v43);
  v46 = vpminq_s16(v44, v44);
  v47 = vminq_s16(v40, v46);
  v48 = vzip1q_s16(v45, v46);
  v49 = vbicq_s8(vsubq_s16(v32, vclsq_s16(v48)), vceqzq_s16(v48));
  v466 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v25, v468), 6uLL), 6uLL);
  v467 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v26, v468), 6uLL), 6uLL);
  v50 = vpmaxq_s16(v33, v33);
  v51 = vpmaxq_s16(v42, v42);
  v52 = vpmaxq_s16(v49, v49);
  v53 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v464, v465), v466), v467), xmmword_29D2F1150);
  v54 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v464, v465), v466), v467), xmmword_29D2F1150);
  v55 = vpmaxq_s16(v53, v53);
  v56 = vpminq_s16(v54, v54);
  v57 = vmaxq_s16(vmaxq_s16(v39, v45), v55);
  v58 = vminq_s16(v47, v56);
  v59 = vzip1q_s16(v55, v56);
  v60 = vbicq_s8(vsubq_s16(v32, vclsq_s16(v59)), vceqzq_s16(v59));
  v61 = vpmaxq_s16(v60, v60);
  v62 = vmaxq_s16(vmaxq_s16(v50, v51), vmaxq_s16(v52, v61));
  v63 = vclzq_s16(vsubq_s16(v57, v58));
  v45.i64[0] = 0xF000F000F000FLL;
  v45.i64[1] = 0xF000F000F000FLL;
  v30.i64[0] = -1;
  v30.i64[1] = -1;
  v475 = v58;
  v476 = v57;
  v64 = vsubq_s16(v32, v63);
  v65 = vsubq_s16(vshlq_s16(v30, vsubq_s16(v45, v63)), v58);
  v66 = vcgtq_s16(v62, v64);
  v67 = vminq_s16(v64, v62);
  v477 = vandq_s8(v65, v66);
  v65.i64[0] = 0x8000800080008;
  v65.i64[1] = 0x8000800080008;
  v68.i64[0] = 0x3000300030003;
  v68.i64[1] = 0x3000300030003;
  v69 = vorrq_s8(vandq_s8(vceqzq_s16(v67), v68), vorrq_s8(vandq_s8(v66, v65), 0));
  v70 = vmaxq_s16(vminq_s16(vsubq_s16(v67, v51), v68), 0);
  v71 = vmaxq_s16(vminq_s16(vsubq_s16(v67, v52), v68), 0);
  v471 = vsubq_s16(v67, v70);
  v472 = vsubq_s16(v67, v71);
  v72 = vmaxq_s16(vminq_s16(vsubq_s16(v67, v61), v68), 0);
  v473 = vsubq_s16(v67, v72);
  v474 = v67;
  v73 = vmaxq_s16(vminq_s16(vsubq_s16(v67, v50), v68), 0);
  v74 = vsubq_s16(v67, v73);
  v75 = vceqq_s16(vaddq_s16(v72, v71), vnegq_s16(vaddq_s16(v73, v70)));
  v73.i64[0] = 0x4000400040004;
  v73.i64[1] = 0x4000400040004;
  v76 = vorrq_s8(vbicq_s8(v73, v75), v69);
  v469 = v76;
  v470 = v74;
  if (vmaxvq_s16(v67))
  {
    v415 = v18;
    v416 = v22;
    v417 = v19;
    v418 = v20;
    v419 = v21;
    v420 = v23;
    v421 = v24;
    v422 = v25;
    v423 = v26;
    v77.i64[0] = 0x10001000100010;
    v77.i64[1] = 0x10001000100010;
    v78 = v69;
    v79 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v448, vqtbl1q_s8(v448, xmmword_29D2F1140)), 6uLL), 6uLL);
    v80 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v450, vqtbl1q_s8(v450, xmmword_29D2F1140)), 6uLL), 6uLL);
    v81 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v452, vqtbl1q_s8(v452, xmmword_29D2F1140)), 6uLL), 6uLL);
    v82 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v454, vqtbl1q_s8(v454, xmmword_29D2F1140)), 6uLL), 6uLL);
    v83 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v464, vqtbl1q_s8(v464, xmmword_29D2F1140)), 6uLL), 6uLL);
    v84 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v465, vqtbl1q_s8(v465, xmmword_29D2F1140)), 6uLL), 6uLL);
    v85 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v466, vqtbl1q_s8(v466, xmmword_29D2F1140)), 6uLL), 6uLL);
    v86 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v460, vqtbl1q_s8(v460, xmmword_29D2F1140)), 6uLL), 6uLL);
    v87 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v467, vqtbl1q_s8(v467, xmmword_29D2F1140)), 6uLL), 6uLL);
    v88 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v463, vqtbl1q_s8(v463, xmmword_29D2F1140)), 6uLL), 6uLL);
    v89 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v79, v80), v81), v82);
    v428 = v82;
    v429 = v81;
    v90 = vminq_s16(vminq_s16(vminq_s16(v79, v80), v81), v82);
    v91 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v462, vqtbl1q_s8(v462, xmmword_29D2F1140)), 6uLL), 6uLL);
    v92 = vqtbl1q_s8(v89, xmmword_29D2F1150);
    v93 = vqtbl1q_s8(v90, xmmword_29D2F1150);
    v94 = vpmaxq_s16(v92, v92);
    v95 = vpminq_s16(v93, v93);
    v96.i64[0] = 0x8000800080008000;
    v96.i64[1] = 0x8000800080008000;
    v97 = vmaxq_s16(v94, v96);
    v98.i64[0] = 0x8000800080008000;
    v98.i64[1] = 0x8000800080008000;
    v99 = vminq_s16(v95, v98);
    v100 = vzip1q_s16(v94, v95);
    v101 = vbicq_s8(vsubq_s16(v77, vclsq_s16(v100)), vceqzq_s16(v100));
    v102 = vpmaxq_s16(v101, v101);
    v434 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v457, vqtbl1q_s8(v457, xmmword_29D2F1140)), 6uLL), 6uLL);
    v436 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v456, vqtbl1q_s8(v456, xmmword_29D2F1140)), 6uLL), 6uLL);
    v438 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v459, vqtbl1q_s8(v459, xmmword_29D2F1140)), 6uLL), 6uLL);
    v440 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v458, vqtbl1q_s8(v458, xmmword_29D2F1140)), 6uLL), 6uLL);
    v103 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v436, v434), v440), v438), xmmword_29D2F1150);
    v104 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v436, v434), v440), v438), xmmword_29D2F1150);
    v105 = vpmaxq_s16(v103, v103);
    v106 = vpminq_s16(v104, v104);
    v107 = vmaxq_s16(v97, v105);
    v108 = vminq_s16(v99, v106);
    v109 = vzip1q_s16(v105, v106);
    v110 = vbicq_s8(vsubq_s16(v77, vclsq_s16(v109)), vceqzq_s16(v109));
    v111 = vpmaxq_s16(v110, v110);
    v442 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v461, vqtbl1q_s8(v461, xmmword_29D2F1140)), 6uLL), 6uLL);
    v112 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v86, v442), v91), v88), xmmword_29D2F1150);
    v113 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v86, v442), v91), v88), xmmword_29D2F1150);
    v114 = vpmaxq_s16(v112, v112);
    v115 = vpminq_s16(v113, v113);
    v116 = vmaxq_s16(v107, v114);
    v117 = vminq_s16(v108, v115);
    v118 = vzip1q_s16(v114, v115);
    v119 = vbicq_s8(vsubq_s16(v77, vclsq_s16(v118)), vceqzq_s16(v118));
    v120 = vpmaxq_s16(v119, v119);
    v121 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v83, v84), v85), v87), xmmword_29D2F1150);
    v122 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v83, v84), v85), v87), xmmword_29D2F1150);
    v123 = vpmaxq_s16(v121, v121);
    v124 = vpminq_s16(v122, v122);
    v125 = vmaxq_s16(v116, v123);
    v126 = vminq_s16(v117, v124);
    v127 = vzip1q_s16(v123, v124);
    v128 = vbicq_s8(vsubq_s16(v77, vclsq_s16(v127)), vceqzq_s16(v127));
    v129 = vpmaxq_s16(v128, v128);
    v130 = vmaxq_s16(vmaxq_s16(v102, v111), vmaxq_s16(v120, v129));
    v430 = v126;
    v432 = v125;
    v131 = vclzq_s16(vsubq_s16(v125, v126));
    v132 = vsubq_s16(v77, v131);
    v133 = vcgtq_s16(v130, v132);
    v134 = vminq_s16(v132, v130);
    v135 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v102), v68), 0);
    v136 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v111), v68), 0);
    v137 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v120), v68), 0);
    v138 = vmaxq_s16(vminq_s16(vsubq_s16(v134, v129), v68), 0);
    v125.i64[0] = 0x4000400040004;
    v125.i64[1] = 0x4000400040004;
    v139 = vbicq_s8(v125, vceqq_s16(vaddq_s16(v138, v137), vnegq_s16(vaddq_s16(v135, v136))));
    v132.i64[0] = 0x18001800180018;
    v132.i64[1] = 0x18001800180018;
    v140 = vbslq_s8(v133, v132, v77);
    v425 = vsubq_s16(v134, v136);
    v426 = vsubq_s16(v134, v137);
    v427 = vsubq_s16(v134, v138);
    v138.i64[0] = 0x7000700070007;
    v138.i64[1] = 0x7000700070007;
    v424 = vsubq_s16(v134, v135);
    v137.i64[0] = 0x8000800080008;
    v137.i64[1] = 0x8000800080008;
    v141 = vandq_s8(vaddq_s16(v76, v76), v137);
    v125.i64[0] = 0x2000200020002;
    v125.i64[1] = 0x2000200020002;
    v142 = vandq_s8(vceqq_s16(vandq_s8(v78, v68), v125), v77);
    v143 = vceqzq_s16(vandq_s8(v78, v137));
    v144 = v473;
    v145 = v474;
    v147 = v470;
    v146 = v471;
    v148 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v474, v143), v142), v141), v470, v138);
    v149 = v472;
    v150 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v148, vshlq_n_s16(vaddq_s16(vaddq_s16(v472, v471), v473), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v134, vceqzq_s16((*&v140 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v139, v139)), v424, v138), vshlq_n_s16(vaddq_s16(vaddq_s16(v426, v425), v427), 3uLL))).i64[0], 0);
    v151 = vaddvq_s16(v150);
    v153 = a5 < 4 || a6 < 2;
    if (v151)
    {
      v154.i64[0] = 0x3000300030003;
      v154.i64[1] = 0x3000300030003;
      v155.i64[0] = 0xF000F000F000FLL;
      v155.i64[1] = 0xF000F000F000FLL;
      v448 = vbslq_s8(v150, v79, v448);
      v450 = vbslq_s8(v150, v80, v450);
      v156.i64[0] = -1;
      v156.i64[1] = -1;
      v452 = vbslq_s8(v150, v429, v452);
      v454 = vbslq_s8(v150, v428, v454);
      v157 = vandq_s8(vsubq_s16(vshlq_s16(v156, vsubq_s16(v155, v131)), v430), v133);
      v456 = vbslq_s8(v150, v436, v456);
      v457 = vbslq_s8(v150, v434, v457);
      v458 = vbslq_s8(v150, v440, v458);
      v459 = vbslq_s8(v150, v438, v459);
      v460 = vbslq_s8(v150, v86, v460);
      v461 = vbslq_s8(v150, v442, v461);
      v462 = vbslq_s8(v150, v91, v462);
      v463 = vbslq_s8(v150, v88, v463);
      v464 = vbslq_s8(v150, v83, v464);
      v465 = vbslq_s8(v150, v84, v465);
      v466 = vbslq_s8(v150, v85, v466);
      v467 = vbslq_s8(v150, v87, v467);
      v147 = vbslq_s8(v150, v424, v470);
      v146 = vbslq_s8(v150, v425, v471);
      v470 = v147;
      v471 = v146;
      v149 = vbslq_s8(v150, v426, v472);
      v144 = vbslq_s8(v150, v427, v473);
      v472 = v149;
      v473 = v144;
      v476 = vbslq_s8(v150, v432, v476);
      v477 = vbslq_s8(v150, v157, v477);
      v145 = vbslq_s8(v150, v134, v474);
      v474 = v145;
      v475 = vbslq_s8(v150, v430, v475);
      v76 = vbslq_s8(v150, vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v134), v154), v140), v139), v469);
      v468 = vbslq_s8(v150, vsubq_s16(v468, vqtbl1q_s8(v468, xmmword_29D2F1140)), v468);
      v469 = v76;
    }

    if (!v153)
    {
      v158 = vqtbl4q_s8(*v13.i8, xmmword_29D2F1160);
      v159 = vsubq_s16(v13, vqtbl4q_s8(*v13.i8, xmmword_29D2F10B0));
      v160 = vsubq_s16(v15, v158);
      v161 = vsubq_s16(v16, v158);
      v479.val[0] = v444;
      v479.val[1] = v446;
      v479.val[2] = v447;
      v479.val[3].i64[0] = v415.i64[0];
      v479.val[3].i64[1] = v16.i64[1];
      v162 = vsubq_s16(v444, vqtbl4q_s8(v479, xmmword_29D2F10B0));
      v163 = vsubq_s16(v446, vqtbl4q_s8(v479, xmmword_29D2F10F0));
      v164 = vsubq_s16(v447, vqtbl4q_s8(v479, xmmword_29D2F1160));
      v165 = vsubq_s16(v415, vqtbl4q_s8(v479, xmmword_29D2F1100));
      v480.val[0] = v417;
      v480.val[1] = v418;
      v480.val[2] = v419;
      v480.val[3].i64[0] = v416.i64[0];
      v480.val[3].i64[1] = v16.i64[1];
      v479.val[1] = vsubq_s16(v417, vqtbl4q_s8(v480, xmmword_29D2F1170));
      v479.val[2] = vsubq_s16(v418, vqtbl4q_s8(v480, xmmword_29D2F1180));
      v479.val[3] = vsubq_s16(v419, vqtbl4q_s8(v480, xmmword_29D2F10B0));
      v166 = vsubq_s16(v416, vqtbl4q_s8(v480, xmmword_29D2F10C0));
      v478.val[0] = v420;
      v478.val[1] = v421;
      v478.val[2] = v422;
      v478.val[3].i64[0] = v423.i64[0];
      v478.val[3].i64[1] = v16.i64[1];
      v479.val[0] = vsubq_s16(v420, vqtbl4q_s8(v478, xmmword_29D2F1170));
      v480.val[0] = vsubq_s16(v421, vqtbl4q_s8(v478, xmmword_29D2F1120));
      v167 = vsubq_s16(v422, vqtbl4q_s8(v478, xmmword_29D2F10B0));
      v480.val[1].i64[0] = v161.i64[0];
      v480.val[1].i64[1] = v159.i64[0];
      v168 = vsubq_s16(v423, vqtbl4q_s8(v478, xmmword_29D2F10C0));
      v159.i64[0] = v161.i64[1];
      v169 = vshlq_n_s16(v480.val[1], 6uLL);
      v480.val[1] = vshlq_n_s16(v479.val[1], 6uLL);
      v480.val[3] = vshlq_n_s16(v479.val[2], 6uLL);
      v478.val[0] = vshlq_n_s16(v479.val[3], 6uLL);
      v478.val[1] = vshlq_n_s16(v166, 6uLL);
      v478.val[2] = vshlq_n_s16(v479.val[0], 6uLL);
      v170 = vshlq_n_s16(v168, 6uLL);
      v171 = vshrq_n_s16(vshlq_n_s16(v159, 6uLL), 6uLL);
      v172 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v14, vqtbl4q_s8(*v13.i8, xmmword_29D2F10C0)), 6uLL), 6uLL);
      v173 = vshrq_n_s16(vshlq_n_s16(v160, 6uLL), 6uLL);
      v174 = vshrq_n_s16(v169, 6uLL);
      v175 = vshrq_n_s16(vshlq_n_s16(v162, 6uLL), 6uLL);
      v176 = vshrq_n_s16(vshlq_n_s16(v163, 6uLL), 6uLL);
      v177 = vshrq_n_s16(vshlq_n_s16(v164, 6uLL), 6uLL);
      v178 = vshrq_n_s16(vshlq_n_s16(v165, 6uLL), 6uLL);
      v179 = vshrq_n_s16(v480.val[1], 6uLL);
      v180 = vshrq_n_s16(v480.val[3], 6uLL);
      v181 = vshrq_n_s16(v478.val[0], 6uLL);
      v182 = vshrq_n_s16(v478.val[1], 6uLL);
      v183 = vshrq_n_s16(v478.val[2], 6uLL);
      v184 = vshrq_n_s16(vshlq_n_s16(v480.val[0], 6uLL), 6uLL);
      v185 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v171, v172), v173), v174), xmmword_29D2F1150);
      v186 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v171, v172), v173), v174), xmmword_29D2F1150);
      v187 = vpmaxq_s16(v185, v185);
      v188 = vpminq_s16(v186, v186);
      v480.val[0].i64[0] = 0x8000800080008000;
      v480.val[0].i64[1] = 0x8000800080008000;
      v480.val[0] = vmaxq_s16(v187, v480.val[0]);
      v480.val[1].i64[0] = 0x8000800080008000;
      v480.val[1].i64[1] = 0x8000800080008000;
      v480.val[1] = vminq_s16(v188, v480.val[1]);
      v189 = vzip1q_s16(v187, v188);
      v187.i64[0] = 0x10001000100010;
      v187.i64[1] = 0x10001000100010;
      v480.val[3] = vbicq_s8(vsubq_s16(v187, vclsq_s16(v189)), vceqzq_s16(v189));
      v480.val[3] = vpmaxq_s16(v480.val[3], v480.val[3]);
      v478.val[0] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v175, v176), v177), v178), xmmword_29D2F1150);
      v478.val[1] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v175, v176), v177), v178), xmmword_29D2F1150);
      v478.val[0] = vpmaxq_s16(v478.val[0], v478.val[0]);
      v478.val[1] = vpminq_s16(v478.val[1], v478.val[1]);
      v480.val[0] = vmaxq_s16(v480.val[0], v478.val[0]);
      v480.val[1] = vminq_s16(v480.val[1], v478.val[1]);
      v478.val[0] = vzip1q_s16(v478.val[0], v478.val[1]);
      v478.val[0] = vbicq_s8(vsubq_s16(v187, vclsq_s16(v478.val[0])), vceqzq_s16(v478.val[0]));
      v478.val[0] = vpmaxq_s16(v478.val[0], v478.val[0]);
      v478.val[1] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v179, v180), v181), v182), xmmword_29D2F1150);
      v478.val[2] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v179, v180), v181), v182), xmmword_29D2F1150);
      v478.val[1] = vpmaxq_s16(v478.val[1], v478.val[1]);
      v478.val[2] = vpminq_s16(v478.val[2], v478.val[2]);
      v480.val[0] = vmaxq_s16(v480.val[0], v478.val[1]);
      v478.val[1] = vzip1q_s16(v478.val[1], v478.val[2]);
      v478.val[1] = vbicq_s8(vsubq_s16(v187, vclsq_s16(v478.val[1])), vceqzq_s16(v478.val[1]));
      v190 = vpmaxq_s16(v478.val[1], v478.val[1]);
      v439 = v184;
      v441 = v183;
      v443 = vshrq_n_s16(v170, 6uLL);
      v445 = vshrq_n_s16(vshlq_n_s16(v167, 6uLL), 6uLL);
      v478.val[1] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v183, v184), v445), v443), xmmword_29D2F1150);
      v191 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v183, v184), v445), v443), xmmword_29D2F1150);
      v478.val[1] = vpmaxq_s16(v478.val[1], v478.val[1]);
      v192 = vpminq_s16(v191, v191);
      v193 = vmaxq_s16(v480.val[0], v478.val[1]);
      v194 = vminq_s16(vminq_s16(v480.val[1], v478.val[2]), v192);
      v195 = vzip1q_s16(v478.val[1], v192);
      v196 = vbicq_s8(vsubq_s16(v187, vclsq_s16(v195)), vceqzq_s16(v195));
      v197 = vpmaxq_s16(v196, v196);
      v480.val[0] = vmaxq_s16(vmaxq_s16(v480.val[3], v478.val[0]), vmaxq_s16(v190, v197));
      v437 = v193;
      v198 = vclzq_s16(vsubq_s16(v193, v194));
      v480.val[1] = vsubq_s16(v187, v198);
      v199 = vcgtq_s16(v480.val[0], v480.val[1]);
      v200 = vminq_s16(v480.val[1], v480.val[0]);
      v480.val[0] = vsubq_s16(v200, v480.val[3]);
      v480.val[3].i64[0] = 0x3000300030003;
      v480.val[3].i64[1] = 0x3000300030003;
      v480.val[0] = vmaxq_s16(vminq_s16(v480.val[0], v480.val[3]), 0);
      v480.val[1] = vmaxq_s16(vminq_s16(vsubq_s16(v200, v478.val[0]), v480.val[3]), 0);
      v478.val[0] = vmaxq_s16(vminq_s16(vsubq_s16(v200, v190), v480.val[3]), 0);
      v201 = vmaxq_s16(vminq_s16(vsubq_s16(v200, v197), v480.val[3]), 0);
      v202 = vsubq_s16(v200, v480.val[0]);
      v203 = vsubq_s16(v200, v478.val[0]);
      v204 = vsubq_s16(v200, v201);
      v205 = vceqq_s16(vaddq_s16(v201, v478.val[0]), vnegq_s16(vaddq_s16(v480.val[0], v480.val[1])));
      v480.val[0].i64[0] = 0x4000400040004;
      v480.val[0].i64[1] = 0x4000400040004;
      v206 = vbicq_s8(v480.val[0], v205);
      v478.val[0].i64[0] = 0x7000700070007;
      v478.val[0].i64[1] = 0x7000700070007;
      v431 = v203;
      v433 = vsubq_s16(v200, v480.val[1]);
      v435 = v204;
      v207 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v200, v199), vaddq_s16(v206, v206)), v202, v478.val[0]), vshlq_n_s16(vaddq_s16(vaddq_s16(v203, v433), v204), 3uLL));
      v76 = v469;
      v147 = v470;
      v208.i64[0] = 0x2000200020002;
      v208.i64[1] = 0x2000200020002;
      v209 = vandq_s8(vceqq_s16(vandq_s8(v469, v480.val[3]), v208), v187);
      v480.val[3].i64[0] = 0x8000800080008;
      v480.val[3].i64[1] = 0x8000800080008;
      v210 = vandq_s8(vaddq_s16(v76, v76), v480.val[3]);
      v211 = vceqzq_s16(vandq_s8(v469, v480.val[3]));
      v144 = v473;
      v145 = v474;
      v212 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v474, v211), v210), v209), v470, v478.val[0]);
      v146 = v471;
      v149 = v472;
      v213 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v212, vshlq_n_s16(vaddq_s16(vaddq_s16(v472, v471), v473), 3uLL)), v207).i64[0], 0);
      if (vaddvq_s16(v213))
      {
        v214 = vextq_s8(v16, v16, 8uLL);
        v215.i64[0] = 0x9000900090009;
        v215.i64[1] = 0x9000900090009;
        v216 = vorrq_s8(vandq_s8(vceqzq_s16(v200), v208), vsubq_s16(vandq_s8(v199, v215), vmvnq_s8(v199)));
        v215.i64[0] = -1;
        v215.i64[1] = -1;
        v217.i64[0] = 0xF000F000F000FLL;
        v217.i64[1] = 0xF000F000F000FLL;
        v147 = vbslq_s8(v213, v202, v470);
        v146 = vbslq_s8(v213, v433, v471);
        v149 = vbslq_s8(v213, v431, v472);
        v144 = vbslq_s8(v213, v435, v473);
        v145 = vbslq_s8(v213, v200, v474);
        v76 = vbslq_s8(v213, vorrq_s8(v216, v206), v469);
        v467 = vbslq_s8(v213, v443, v467);
        v468 = vbslq_s8(v213, v214, v468);
        v448 = vbslq_s8(v213, v171, v448);
        v450 = vbslq_s8(v213, v172, v450);
        v452 = vbslq_s8(v213, v173, v452);
        v454 = vbslq_s8(v213, v174, v454);
        v456 = vbslq_s8(v213, v175, v456);
        v457 = vbslq_s8(v213, v176, v457);
        v458 = vbslq_s8(v213, v177, v458);
        v459 = vbslq_s8(v213, v178, v459);
        v460 = vbslq_s8(v213, v179, v460);
        v461 = vbslq_s8(v213, v180, v461);
        v462 = vbslq_s8(v213, v181, v462);
        v463 = vbslq_s8(v213, v182, v463);
        v464 = vbslq_s8(v213, v441, v464);
        v465 = vbslq_s8(v213, v439, v465);
        v466 = vbslq_s8(v213, v445, v466);
        v475 = vbslq_s8(v213, v194, v475);
        v476 = vbslq_s8(v213, v437, v476);
        v477 = vbslq_s8(v213, vandq_s8(vsubq_s16(vshlq_s16(v215, vsubq_s16(v217, v198)), v194), v199), v477);
        v470 = v147;
        v471 = v146;
        v472 = v149;
        v473 = v144;
        v474 = v145;
        v469 = v76;
      }
    }

    v218 = vandq_s8(v477, vceqq_s16(v145, v147));
    v449 = vaddq_s16(v218, v448);
    v451 = vaddq_s16(v450, v218);
    v453 = vaddq_s16(v452, v218);
    v455 = vaddq_s16(v454, v218);
    v219 = vandq_s8(v477, vceqq_s16(v145, v146));
    v456 = vaddq_s16(v456, v219);
    v457 = vaddq_s16(v457, v219);
    v458 = vaddq_s16(v458, v219);
    v459 = vaddq_s16(v459, v219);
    v220 = vandq_s8(v477, vceqq_s16(v145, v149));
    v460 = vaddq_s16(v460, v220);
    v461 = vaddq_s16(v461, v220);
    v462 = vaddq_s16(v462, v220);
    v463 = vaddq_s16(v463, v220);
    v221 = vandq_s8(v477, vceqq_s16(v145, v144));
    v464 = vaddq_s16(v464, v221);
    v465 = vaddq_s16(v465, v221);
    v466 = vaddq_s16(v466, v221);
    v467 = vaddq_s16(v467, v221);
    v221.i64[0] = 0x8000800080008;
    v221.i64[1] = 0x8000800080008;
    v222.i64[0] = 0x3000300030003;
    v222.i64[1] = 0x3000300030003;
    v223.i64[0] = 0x2000200020002;
    v223.i64[1] = 0x2000200020002;
    v224 = vceqq_s16(vandq_s8(v76, v222), v223);
    v223.i64[0] = 0x10001000100010;
    v223.i64[1] = 0x10001000100010;
    v225 = vandq_s8(v224, v223);
    v223.i64[0] = 0x7000700070007;
    v223.i64[1] = 0x7000700070007;
    v226 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v145, vceqzq_s16(vandq_s8(v76, v221))), vandq_s8(vaddq_s16(v76, v76), v221)), v225), v147, v223), vshlq_n_s16(vaddq_s16(vaddq_s16(v149, v146), v144), 3uLL));
    v227 = vpaddq_s16(v226, v226);
    if ((vpaddq_s16(v227, v227).i16[0] - 693) < 0xFFFFFFFFFFFFFCF8)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 96;
    }

    else
    {
      v228 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v229 = 8 * (a1 & 7);
      if (v229)
      {
        v230 = *v228 & ~(-1 << v229);
      }

      else
      {
        v230 = 0;
      }

      *a2 = 0;
      v234 = v468.i64[0];
      if (v145.i16[0])
      {
        v235 = ((v145.i8[0] - 1) & 0xF) << 20;
      }

      else
      {
        v235 = 0;
      }

      if (v145.i16[1])
      {
        v236 = ((v145.i8[2] - 1) & 0xF) << 24;
      }

      else
      {
        v236 = 0;
      }

      if (v145.i16[2])
      {
        v237 = (v145.u16[2] << 28) - 0x10000000;
      }

      else
      {
        v237 = 0;
      }

      if (v145.i16[3])
      {
        v238 = ((v145.i8[6] - 1) & 0xF) << 32;
      }

      else
      {
        v238 = 0;
      }

      v239 = (v76.i8[0] & 0x1F | (32 * (v76.i8[2] & 0x1F)) & 0x83FF | ((v76.i8[4] & 0x1F) << 10) | ((v76.i8[6] & 0x1F) << 15) | v235 | v236 | v237) + v238;
      v240 = (v239 << v229) | v230;
      if (v229 >= 0x1C)
      {
        *v228 = v240;
        v240 = v239 >> (-8 * (a1 & 7u));
      }

      v241 = v234 & 0x3FF | ((WORD1(v234) & 0x3FF) << 10) & 0xFFFFFFFFC00FFFFFLL | ((WORD2(v234) & 0x3FF) << 20) | ((HIWORD(v234) & 0x3FF) << 30);
      v242 = (v229 + 36) & 0x3C;
      v243 = v240 | (v241 << v242);
      if (v242 >= 0x18)
      {
        *(v228 + (((v229 + 36) >> 3) & 8)) = v243;
        v243 = v241 >> -v242;
      }

      v244 = v229 + 76;
      v245 = vsubq_s16(v474, v470);
      v246 = vsubq_s16(v474, v471);
      v247 = vsubq_s16(v474, v472);
      v248 = vsubq_s16(v474, v473);
      *v245.i8 = vqmovn_u16(v245);
      *v246.i8 = vqmovn_u16(v246);
      *v247.i8 = vqmovn_u16(v247);
      *v248.i8 = vqmovn_u16(v248);
      v249 = vtrn1q_s8(v245, v246);
      v250 = vtrn2q_s8(v245, v246);
      v251 = vtrn1q_s8(v247, v248);
      v252 = vtrn2q_s8(v247, v248);
      v253 = vzip1q_s16(v250, v252);
      v254 = vtrn2q_s16(v250, v252);
      v250.i64[0] = vzip1q_s32(vzip1q_s16(v249, v251), v253).u64[0];
      v254.i64[0] = vzip1q_s32(vtrn2q_s16(v249, v251), v254).u64[0];
      v247.i64[0] = 0x202020202020202;
      v247.i64[1] = 0x202020202020202;
      v255 = vandq_s8(vmovl_s16(vtst_s16(*v469.i8, 0x4000400040004)), v247);
      v247.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v247.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v249.i64[0] = -1;
      v249.i64[1] = -1;
      v256 = vshlq_u8(v249, vorrq_s8(v255, v247));
      v257 = vmovl_u8(vand_s8(*v256.i8, *v250.i8));
      v258 = vmovl_u8(vand_s8(*&vextq_s8(v256, v256, 8uLL), *v254.i8));
      v259 = vmovl_u8(*v255.i8);
      v260 = vmovl_high_u8(v255);
      v261 = vpaddq_s16(vshlq_u16(v257, vtrn1q_s16(0, v259)), vshlq_u16(v258, vtrn1q_s16(0, v260)));
      v262 = vpaddq_s16(v259, v260);
      v263 = vmovl_u16(*v262.i8);
      v264 = vmovl_high_u16(v262);
      v265 = vpaddq_s32(vshlq_u32(vmovl_u16(*v261.i8), vtrn1q_s32(0, v263)), vshlq_u32(vmovl_high_u16(v261), vtrn1q_s32(0, v264)));
      v266 = vpaddq_s32(v263, v264);
      v267.i64[0] = v265.u32[0];
      v267.i64[1] = v265.u32[1];
      v268 = v267;
      v267.i64[0] = v265.u32[2];
      v267.i64[1] = v265.u32[3];
      v269 = v267;
      v267.i64[0] = v266.u32[0];
      v267.i64[1] = v266.u32[1];
      v270 = v267;
      v267.i64[0] = v266.u32[2];
      v267.i64[1] = v266.u32[3];
      v271 = vpaddq_s64(vshlq_u64(v268, vzip1q_s64(0, v270)), vshlq_u64(v269, vzip1q_s64(0, v267)));
      v272 = vpaddq_s64(v270, v267);
      v273 = (v229 + 76) & 0x3C;
      v274 = (v271.i64[0] << v273) | v243;
      if ((v272.i64[0] + v273) >= 0x40)
      {
        *(v228 + ((v244 >> 3) & 0x18)) = v274;
        v274 = v271.i64[0] >> -v273;
      }

      v275 = v272.i64[0] + v244;
      v276 = v274 | (v271.i64[1] << v275);
      if ((v275 & 0x3F) + v272.i64[1] >= 0x40)
      {
        *(v228 + ((v275 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v276;
        v276 = v271.i64[1] >> -(v275 & 0x3F);
        if ((v275 & 0x3F) == 0)
        {
          v276 = 0;
        }
      }

      v277 = v275 + v272.i64[1];
      v278.i64[0] = 0x8000800080008;
      v278.i64[1] = 0x8000800080008;
      v279.i64[0] = -1;
      v279.i64[1] = -1;
      v280 = vandq_s8(vextq_s8(vtstq_s16(v469, v278), 0, 8uLL), v474);
      v281.i64[0] = 0xF000F000F000FLL;
      v281.i64[1] = 0xF000F000F000FLL;
      v282 = vandq_s8(vshlq_u16(v279, vaddq_s16(v280, v281)), v477);
      v283 = vmovl_u16(*v280.i8);
      v284 = vpaddq_s32(vshlq_u32(vmovl_u16(*v282.i8), vtrn1q_s32(0, v283)), vmovl_high_u16(v282));
      v285 = vpaddq_s32(v283, vmovl_high_u16(v280));
      v286.i64[0] = v284.u32[0];
      v286.i64[1] = v284.u32[1];
      v287 = v286;
      v286.i64[0] = v284.u32[2];
      v286.i64[1] = v284.u32[3];
      v288 = v286;
      v286.i64[0] = v285.u32[0];
      v286.i64[1] = v285.u32[1];
      v289 = v286;
      v286.i64[0] = v285.u32[2];
      v286.i64[1] = v285.u32[3];
      v290 = vpaddq_s64(vshlq_u64(v287, vzip1q_s64(0, v289)), vshlq_u64(v288, vzip1q_s64(0, v286)));
      v291 = vpaddq_s64(v289, v286);
      v292 = (v290.i64[0] << v277) | v276;
      if (v291.i64[0] + (v277 & 0x3F) >= 0x40)
      {
        *(v228 + ((v277 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v292;
        v292 = v290.i64[0] >> -(v277 & 0x3F);
        if ((v277 & 0x3F) == 0)
        {
          v292 = 0;
        }
      }

      v293 = v291.i64[0] + v277;
      v294 = v292 | (v290.i64[1] << v293);
      if ((v293 & 0x3F) + v291.i64[1] >= 0x40)
      {
        *(v228 + ((v293 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v294;
        v294 = v290.i64[1] >> -(v293 & 0x3F);
        if ((v293 & 0x3F) == 0)
        {
          v294 = 0;
        }
      }

      v295 = v293 + v291.i64[1];
      v296 = vextq_s8(0, v470, 8uLL);
      v297.i64[0] = 0xF000F000F000FLL;
      v297.i64[1] = 0xF000F000F000FLL;
      v298.i64[0] = -1;
      v298.i64[1] = -1;
      v299 = vandq_s8(vshlq_u16(v298, vaddq_s16(v296, v297)), v449);
      v300 = vmovl_u16(*v296.i8);
      v301 = vmovl_high_u16(v296);
      v302 = vpaddq_s32(vmovl_u16(*v299.i8), vshlq_u32(vmovl_high_u16(v299), vtrn1q_s32(0, v301)));
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
      v310 = (v308.i64[0] << v295) | v294;
      if (v309.i64[0] + (v295 & 0x3F) >= 0x40)
      {
        *(v228 + ((v295 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v310;
        v310 = v308.i64[0] >> -(v295 & 0x3F);
        if ((v295 & 0x3F) == 0)
        {
          v310 = 0;
        }
      }

      v311 = v309.i64[0] + v295;
      v312 = v310 | (v308.i64[1] << v311);
      if ((v311 & 0x3F) + v309.i64[1] >= 0x40)
      {
        *(v228 + ((v311 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v312;
        v312 = v308.i64[1] >> -(v311 & 0x3F);
        if ((v311 & 0x3F) == 0)
        {
          v312 = 0;
        }
      }

      v313 = v311 + v309.i64[1];
      v314.i64[0] = 0xF000F000F000FLL;
      v314.i64[1] = 0xF000F000F000FLL;
      v315.i64[0] = -1;
      v315.i64[1] = -1;
      v316 = vandq_s8(vshlq_u16(v315, vaddq_s16(v470, v314)), v451);
      v317 = vmovl_u16(*v470.i8);
      v318 = vmovl_high_u16(v470);
      v319 = vpaddq_s32(vshlq_u32(vmovl_u16(*v316.i8), vtrn1q_s32(0, v317)), vshlq_u32(vmovl_high_u16(v316), vtrn1q_s32(0, v318)));
      v320 = vpaddq_s32(v317, v318);
      v321.i64[0] = v319.u32[0];
      v321.i64[1] = v319.u32[1];
      v322 = v321;
      v321.i64[0] = v319.u32[2];
      v321.i64[1] = v319.u32[3];
      v323 = v321;
      v321.i64[0] = v320.u32[0];
      v321.i64[1] = v320.u32[1];
      v324 = v321;
      v321.i64[0] = v320.u32[2];
      v321.i64[1] = v320.u32[3];
      v325 = vpaddq_s64(vshlq_u64(v322, vzip1q_s64(0, v324)), vshlq_u64(v323, vzip1q_s64(0, v321)));
      v326 = vpaddq_s64(v324, v321);
      v327 = (v325.i64[0] << v313) | v312;
      if (v326.i64[0] + (v313 & 0x3F) >= 0x40)
      {
        *(v228 + ((v313 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v327;
        v327 = v325.i64[0] >> -(v313 & 0x3F);
        if ((v313 & 0x3F) == 0)
        {
          v327 = 0;
        }
      }

      v328 = v326.i64[0] + v313;
      v329 = v327 | (v325.i64[1] << v328);
      if ((v328 & 0x3F) + v326.i64[1] >= 0x40)
      {
        *(v228 + ((v328 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v329;
        v329 = v325.i64[1] >> -(v328 & 0x3F);
        if ((v328 & 0x3F) == 0)
        {
          v329 = 0;
        }
      }

      v330 = v328 + v326.i64[1];
      v331.i64[0] = 0xF000F000F000FLL;
      v331.i64[1] = 0xF000F000F000FLL;
      v332.i64[0] = -1;
      v332.i64[1] = -1;
      v333 = vandq_s8(vshlq_u16(v332, vaddq_s16(v470, v331)), v453);
      v334 = vmovl_u16(*v470.i8);
      v335 = vmovl_high_u16(v470);
      v336 = vpaddq_s32(vshlq_u32(vmovl_u16(*v333.i8), vtrn1q_s32(0, v334)), vshlq_u32(vmovl_high_u16(v333), vtrn1q_s32(0, v335)));
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
      v344 = (v342.i64[0] << v330) | v329;
      if (v343.i64[0] + (v330 & 0x3F) >= 0x40)
      {
        *(v228 + ((v330 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v344;
        v344 = v342.i64[0] >> -(v330 & 0x3F);
        if ((v330 & 0x3F) == 0)
        {
          v344 = 0;
        }
      }

      v345 = v343.i64[0] + v330;
      v346 = v344 | (v342.i64[1] << v345);
      if ((v345 & 0x3F) + v343.i64[1] >= 0x40)
      {
        *(v228 + ((v345 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v346;
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
      v350 = vandq_s8(vshlq_u16(v349, vaddq_s16(v470, v348)), v455);
      v351 = vmovl_u16(*v470.i8);
      v352 = vmovl_high_u16(v470);
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
        *(v228 + ((v347 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
        v361 = v359.i64[0] >> -(v347 & 0x3F);
        if ((v347 & 0x3F) == 0)
        {
          v361 = 0;
        }
      }

      v362 = v360.i64[1];
      v363 = v360.i64[0] + v347;
      v364 = (v360.i64[0] + v347) & 0x3F;
      v365 = v361 | (v359.i64[1] << v363);
      if ((v364 + v360.i64[1]) >= 0x40)
      {
        *(v228 + ((v363 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
        v365 = v359.i64[1] >> -v364;
        if (!v364)
        {
          v365 = 0;
        }
      }

      v366 = 0;
      v367.i64[0] = 0xF000F000F000FLL;
      v367.i64[1] = 0xF000F000F000FLL;
      v368.i64[0] = -1;
      v368.i64[1] = -1;
      v369 = v363 + v362;
      do
      {
        v370 = vandq_s8(vshlq_u16(v368, vaddq_s16(v471, v367)), *(&v456 + v366));
        v371 = vmovl_u16(*v471.i8);
        v372 = vmovl_high_u16(v471);
        v373 = vpaddq_s32(vshlq_u32(vmovl_u16(*v370.i8), vtrn1q_s32(0, v371)), vshlq_u32(vmovl_high_u16(v370), vtrn1q_s32(0, v372)));
        v374 = vpaddq_s32(v371, v372);
        v375.i64[0] = v373.u32[0];
        v375.i64[1] = v373.u32[1];
        v376 = v375;
        v375.i64[0] = v373.u32[2];
        v375.i64[1] = v373.u32[3];
        v377 = v375;
        v375.i64[0] = v374.u32[0];
        v375.i64[1] = v374.u32[1];
        v378 = v375;
        v375.i64[0] = v374.u32[2];
        v375.i64[1] = v374.u32[3];
        v379 = vpaddq_s64(vshlq_u64(v376, vzip1q_s64(0, v378)), vshlq_u64(v377, vzip1q_s64(0, v375)));
        v380 = vpaddq_s64(v378, v375);
        v381 = (v379.i64[0] << v369) | v365;
        if (v380.i64[0] + (v369 & 0x3F) >= 0x40)
        {
          *(v228 + ((v369 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v381;
          v381 = v379.i64[0] >> -(v369 & 0x3F);
          if ((v369 & 0x3F) == 0)
          {
            v381 = 0;
          }
        }

        v382 = v380.i64[0] + v369;
        v365 = v381 | (v379.i64[1] << v382);
        if ((v382 & 0x3F) + v380.i64[1] >= 0x40)
        {
          *(v228 + ((v382 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
          v365 = v379.i64[1] >> -(v382 & 0x3F);
          if ((v382 & 0x3F) == 0)
          {
            v365 = 0;
          }
        }

        v369 = v382 + v380.i64[1];
        v366 += 16;
      }

      while (v366 != 64);
      v383 = 0;
      v384.i64[0] = 0xF000F000F000FLL;
      v384.i64[1] = 0xF000F000F000FLL;
      v385.i64[0] = -1;
      v385.i64[1] = -1;
      do
      {
        v386 = vandq_s8(vshlq_u16(v385, vaddq_s16(v472, v384)), *(&v460 + v383));
        v387 = vmovl_u16(*v472.i8);
        v388 = vmovl_high_u16(v472);
        v389 = vpaddq_s32(vshlq_u32(vmovl_u16(*v386.i8), vtrn1q_s32(0, v387)), vshlq_u32(vmovl_high_u16(v386), vtrn1q_s32(0, v388)));
        v390 = vpaddq_s32(v387, v388);
        v391.i64[0] = v389.u32[0];
        v391.i64[1] = v389.u32[1];
        v392 = v391;
        v391.i64[0] = v389.u32[2];
        v391.i64[1] = v389.u32[3];
        v393 = v391;
        v391.i64[0] = v390.u32[0];
        v391.i64[1] = v390.u32[1];
        v394 = v391;
        v391.i64[0] = v390.u32[2];
        v391.i64[1] = v390.u32[3];
        v395 = vpaddq_s64(vshlq_u64(v392, vzip1q_s64(0, v394)), vshlq_u64(v393, vzip1q_s64(0, v391)));
        v396 = vpaddq_s64(v394, v391);
        v397 = (v395.i64[0] << v369) | v365;
        if (v396.i64[0] + (v369 & 0x3F) >= 0x40)
        {
          *(v228 + ((v369 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v397;
          v397 = v395.i64[0] >> -(v369 & 0x3F);
          if ((v369 & 0x3F) == 0)
          {
            v397 = 0;
          }
        }

        v398 = v396.i64[0] + v369;
        v365 = v397 | (v395.i64[1] << v398);
        if ((v398 & 0x3F) + v396.i64[1] >= 0x40)
        {
          *(v228 + ((v398 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
          v365 = v395.i64[1] >> -(v398 & 0x3F);
          if ((v398 & 0x3F) == 0)
          {
            v365 = 0;
          }
        }

        v369 = v398 + v396.i64[1];
        v383 += 16;
      }

      while (v383 != 64);
      v399 = 0;
      v400.i64[0] = 0xF000F000F000FLL;
      v400.i64[1] = 0xF000F000F000FLL;
      v401.i64[0] = -1;
      v401.i64[1] = -1;
      do
      {
        v402 = vandq_s8(vshlq_u16(v401, vaddq_s16(v473, v400)), *(&v464 + v399));
        v403 = vmovl_u16(*v473.i8);
        v404 = vmovl_high_u16(v473);
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
        v413 = (v411.i64[0] << v369) | v365;
        if (v412.i64[0] + (v369 & 0x3F) >= 0x40)
        {
          *(v228 + ((v369 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v413;
          v413 = v411.i64[0] >> -(v369 & 0x3F);
          if ((v369 & 0x3F) == 0)
          {
            v413 = 0;
          }
        }

        v414 = v412.i64[0] + v369;
        v365 = v413 | (v411.i64[1] << v414);
        if ((v414 & 0x3F) + v412.i64[1] >= 0x40)
        {
          *(v228 + ((v414 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
          v365 = v411.i64[1] >> -(v414 & 0x3F);
          if ((v414 & 0x3F) == 0)
          {
            v365 = 0;
          }
        }

        v369 = v414 + v412.i64[1];
        v399 += 16;
      }

      while (v399 != 64);
      if ((v369 & 0x3F) != 0)
      {
        *(v228 + ((v369 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v365;
      }

      result = (v369 - v229 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    v231 = vld1q_dup_f64(a3->i64);
    v232 = vorrq_s8(vandq_s8(vshlq_u64(v231, xmmword_29D2F1440), xmmword_29D2F1470), vandq_s8(vshlq_u64(v231, xmmword_29D2F1450), xmmword_29D2F1460));
    *v232.i8 = vorr_s8(*v232.i8, *&vextq_s8(v232, v232, 8uLL));
    *a1 = v232.i32[0];
    *(a1 + 4) = v232.i8[4];
    *a2 = 4;
    return 5;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v82 = *MEMORY[0x29EDCA608];
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
  if (a6 && a5)
  {
    if (a5 > 1)
    {
      v19 = a5 & 0x7E;
      if (a5 == v19)
      {
        v20 = 0;
        v21 = &v68;
        v22 = (a3 + 8);
        do
        {
          v23 = v22;
          v24 = v21;
          v25 = a5;
          do
          {
            v26 = (*v23 >> 6) & 0x3FF03FF03FF03FFLL;
            *(v24 - 4) = (*(v23 - 1) >> 6) & 0x3FF03FF03FF03FFLL;
            *v24 = v26;
            v24 += 8;
            v23 += 2;
            v25 -= 2;
          }

          while (v25);
          ++v20;
          v21 = (v21 + 8);
          v22 = (v22 + a4);
        }

        while (v20 != a6);
      }

      else
      {
        v27 = 0;
        v28 = &v68;
        v29 = (a3 + 8);
        v30 = &v66 + 4 * ((a5 >> 1) & 0x3F);
        do
        {
          v31 = v29;
          v32 = v28;
          v33 = a5 & 0x7E;
          do
          {
            v34 = (*v31 >> 6) & 0x3FF03FF03FF03FFLL;
            *(v32 - 4) = (*(v31 - 1) >> 6) & 0x3FF03FF03FF03FFLL;
            *v32 = v34;
            v32 += 8;
            v31 += 2;
            v33 -= 2;
          }

          while (v33);
          v35 = (a3 + v27 * a4 + 8 * v19);
          v36 = v30;
          v37 = a5 - v19;
          do
          {
            v38 = *v35++;
            *v36 = (v38 >> 6) & 0x3FF03FF03FF03FFLL;
            v36 += 4;
            --v37;
          }

          while (v37);
          ++v27;
          v28 = (v28 + 8);
          v29 = (v29 + a4);
          v30 = (v30 + 8);
        }

        while (v27 != a6);
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
      v12 = &v66 + 1;
      v13 = v10;
      do
      {
        v14 = *(v11 - 1);
        v15 = *v11;
        v11 = (v11 + 2);
        *(v12 - 1) = (v14 >> 6) & 0x3FF03FF03FF03FFLL;
        *v12 = (v15 >> 6) & 0x3FF03FF03FF03FFLL;
        v12 += 2;
        v13 -= 2;
      }

      while (v13);
      if (v10 != a6)
      {
LABEL_9:
        v16 = a6 - v10;
        v17 = &v66 + v10;
        v18 = (a3 + v10 * a4);
        do
        {
          *v17++ = (*v18 >> 6) & 0x3FF03FF03FF03FFLL;
          v18 = (v18 + a4);
          --v16;
        }

        while (v16);
      }
    }
  }

  v58 = vmovl_u16(*&v66);
  v59 = vmovl_u16(*&v68);
  v60 = vmovl_u16(*(&v66 + 8));
  v61 = vmovl_u16(*(&v68 + 8));
  v62 = vmovl_u16(*&v70);
  v63 = vmovl_u16(*&v72);
  v39 = vmovl_u16(*(&v70 + 8));
  v40 = vmovl_u16(*(&v72 + 8));
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

  if (a6 >= 2)
  {
    v43 = 2;
  }

  else
  {
    v43 = a6;
  }

  v64 = v39;
  v65 = v40;
  if (a6 >= 2)
  {
    v44 = a6 - 2;
  }

  else
  {
    v44 = 0;
  }

  v46 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v58, a7, v41, v43);
  v58 = vmovl_u16(*&v67);
  v59 = vmovl_u16(*&v69);
  v60 = vmovl_u16(*(&v67 + 8));
  v61 = vmovl_u16(*(&v69 + 8));
  v62 = vmovl_u16(*&v71);
  v63 = vmovl_u16(*&v73);
  v64 = vmovl_u16(*(&v71 + 8));
  v65 = vmovl_u16(*(&v73 + 8));
  if (a6 >= 4)
  {
    v47 = 2;
  }

  else
  {
    v47 = v44;
  }

  v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 24, &v58, a7, v41, v47);
  v58 = vmovl_u16(*&v74);
  v59 = vmovl_u16(*&v76);
  v60 = vmovl_u16(*(&v74 + 8));
  v61 = vmovl_u16(*(&v76 + 8));
  v62 = vmovl_u16(*&v78);
  v63 = vmovl_u16(*&v80);
  v49 = vmovl_u16(*(&v78 + 8));
  v50 = vmovl_u16(*(&v80 + 8));
  if (a5 >= 8)
  {
    v51 = 4;
  }

  else
  {
    v51 = v42;
  }

  v64 = v49;
  v65 = v50;
  v52 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 48, &v58, a7, v51, v43);
  v58 = vmovl_u16(*&v75);
  v59 = vmovl_u16(*&v77);
  v60 = vmovl_u16(*(&v75 + 8));
  v61 = vmovl_u16(*(&v77 + 8));
  v62 = vmovl_u16(*&v79);
  v63 = vmovl_u16(*&v81);
  v64 = vmovl_u16(*(&v79 + 8));
  v65 = vmovl_u16(*(&v81 + 8));
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 72, &v58, a7, v51, v47);
  if (v52)
  {
    v54 = 4;
  }

  else
  {
    v54 = 0;
  }

  if (v48)
  {
    v55 = 2;
  }

  else
  {
    v55 = 0;
  }

  if (result)
  {
    v56 = -8;
  }

  else
  {
    v56 = -16;
  }

  *a2 = v56 | v54 | v46 | v55;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(unint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v343 = *MEMORY[0x29EDCA608];
  memset_pattern16(&__b, &unk_29D2F26C0, 0x10uLL);
  memset_pattern16(v330, &unk_29D2F26D0, 0x10uLL);
  memset_pattern16(v329, &unk_29D2F26E0, 0x10uLL);
  v9 = 0;
  if (a4)
  {
    v10 = a5 < 2;
  }

  else
  {
    v10 = 1;
  }

  v312 = v10;
  v11 = a4 < 2 || a5 == 0;
  v310 = v11;
  v12 = a4 < 2 || a5 < 2;
  v308 = v12;
  v13 = a4 < 3 || a5 == 0;
  v306 = v13;
  v14 = a4 < 3 || a5 < 2;
  v15 = a4 < 4 || a5 == 0;
  v16 = a4 < 4 || a5 < 2;
  v17 = a2 + 64;
  do
  {
    v18 = (v17 + v9 * 4);
    v19 = *(v17 + v9 * 4 - 64);
    if (a3 == 1)
    {
      v28 = &v332[v9];
      if (v19 == 513)
      {
        v19 = 0;
      }

      else
      {
        v19 ^= 0x200u;
      }

      *v28 = v19;
      v29 = *(v18 - 12);
      if (v29 == 513)
      {
        v21 = 0;
      }

      else
      {
        v21 = v29 ^ 0x200;
      }

      v28[4] = v21;
      v30 = *(v18 - 8);
      if (v30 == 513)
      {
        v22 = 0;
      }

      else
      {
        v22 = v30 ^ 0x200;
      }

      v28[8] = v22;
      v31 = *(v18 - 4);
      v23 = v31 ^ 0x200;
      if (v31 == 513)
      {
        v23 = 0;
      }

      v28[12] = v23;
      if (*v18 == 513)
      {
        v24 = 0;
      }

      else
      {
        v24 = *v18 ^ 0x200;
      }

      v28[16] = v24;
      v32 = v18[4];
      if (v32 == 513)
      {
        v25 = 0;
      }

      else
      {
        v25 = v32 ^ 0x200;
      }

      v28[20] = v25;
      v33 = v18[8];
      v26 = v33 ^ 0x200;
      if (v33 == 513)
      {
        v26 = 0;
      }

      v28[24] = v26;
      v34 = v18[12];
      v27 = v34 ^ 0x200;
      if (v34 == 513)
      {
        v27 = 0;
      }

      v28[28] = v27;
    }

    else
    {
      if (a3 == 3)
      {
        v19 ^= 0x200u;
        v20 = &v332[v9];
        *v20 = v19;
        v21 = *(v17 + v9 * 4 - 48) ^ 0x200;
        v20[4] = v21;
        v22 = *(v17 + v9 * 4 - 32) ^ 0x200;
        v20[8] = v22;
        v23 = *(v17 + v9 * 4 - 16) ^ 0x200;
        v20[12] = v23;
        v24 = *(v17 + v9 * 4) ^ 0x200;
        v20[16] = v24;
        v25 = *(v17 + v9 * 4 + 16) ^ 0x200;
        v20[20] = v25;
        v26 = *(v17 + v9 * 4 + 32) ^ 0x200;
        v20[24] = v26;
        v27 = *(v17 + v9 * 4 + 48) ^ 0x200;
      }

      else
      {
        v20 = &v332[v9];
        *v20 = v19;
        v21 = *(v17 + v9 * 4 - 48);
        v20[4] = v21;
        v22 = *(v17 + v9 * 4 - 32);
        v20[8] = v22;
        v23 = *(v17 + v9 * 4 - 16);
        v20[12] = v23;
        v24 = *(v17 + v9 * 4);
        v20[16] = v24;
        v25 = *(v17 + v9 * 4 + 16);
        v20[20] = v25;
        v26 = *(v17 + v9 * 4 + 32);
        v20[24] = v26;
        v27 = *(v17 + v9 * 4 + 48);
      }

      v20[28] = v27;
    }

    v35 = &v337[v9 + 4];
    v337[v9 + 4] = v19;
    v338[v9] = v19;
    v337[v9] = 0;
    if (v310)
    {
      v36 = v19;
      if (v312)
      {
        goto LABEL_65;
      }

LABEL_60:
      if (v22 < v36)
      {
        v337[v9] = 2;
        v338[v9] = v22;
        v36 = v22;
      }

      v38 = &v332[v9 + 8];
      if (v19 >= v22)
      {
        v38 = &v337[v9 + 4];
      }

      v19 = *v38;
      *v35 = *v38;
      goto LABEL_65;
    }

    v36 = v19;
    if (v21 < v19)
    {
      v337[v9] = 1;
      v338[v9] = v21;
      v36 = v21;
    }

    if (v19 >= v21)
    {
      v37 = &v337[v9 + 4];
    }

    else
    {
      v37 = &v332[v9 + 4];
    }

    v19 = *v37;
    *v35 = *v37;
    if (!v312)
    {
      goto LABEL_60;
    }

LABEL_65:
    if (v308)
    {
      if (v13)
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v23 < v36)
      {
        v337[v9] = 3;
        v338[v9] = v23;
        v36 = v23;
      }

      v39 = &v332[v9 + 12];
      if (v19 >= v23)
      {
        v39 = &v337[v9 + 4];
      }

      v19 = *v39;
      *v35 = *v39;
      if (v13)
      {
LABEL_67:
        if (v15)
        {
          goto LABEL_68;
        }

        goto LABEL_81;
      }
    }

    if (v24 < v36)
    {
      v337[v9] = 4;
      v338[v9] = v24;
      v36 = v24;
    }

    v40 = &v332[v9 + 16];
    if (v19 >= v24)
    {
      v40 = &v337[v9 + 4];
    }

    v19 = *v40;
    *v35 = *v40;
    if (v15)
    {
LABEL_68:
      if (v14)
      {
        goto LABEL_69;
      }

      goto LABEL_86;
    }

LABEL_81:
    if (v25 < v36)
    {
      v337[v9] = 5;
      v338[v9] = v25;
      v36 = v25;
    }

    v41 = &v332[v9 + 20];
    if (v19 >= v25)
    {
      v41 = &v337[v9 + 4];
    }

    v19 = *v41;
    *v35 = *v41;
    if (v14)
    {
LABEL_69:
      if (v16)
      {
        goto LABEL_96;
      }

LABEL_91:
      if (v27 < v36)
      {
        v337[v9] = 7;
        v338[v9] = v27;
        v36 = v27;
      }

      v43 = &v332[v9 + 28];
      if (v19 >= v27)
      {
        v43 = &v337[v9 + 4];
      }

      v19 = *v43;
      *v35 = *v43;
      goto LABEL_96;
    }

LABEL_86:
    if (v26 < v36)
    {
      v337[v9] = 6;
      v338[v9] = v26;
      v36 = v26;
    }

    v42 = &v332[v9 + 24];
    if (v19 >= v26)
    {
      v42 = &v337[v9 + 4];
    }

    v19 = *v42;
    *v35 = *v42;
    if (!v16)
    {
      goto LABEL_91;
    }

LABEL_96:
    v44 = __clz(v19 - v36);
    if (v44 - 29 >= 3)
    {
      v45 = 31 - v44;
    }

    else
    {
      v45 = 2;
    }

    v46 = v45 & ~(v45 >> 31);
    v47 = v19 - v36;
    if (v19 == v36 && v45 < 3)
    {
      if (v36)
      {
        v46 = v36 != 1023;
      }

      else
      {
        v46 = 0;
      }
    }

    *(&v333 + v9 * 4) = v46;
    if ((a3 | 2) == 3)
    {
      v48 = 0;
      if (v19 >= 0x200 && v36 <= 0x1FF)
      {
        v48 = kDQuadParamTable[10 * v46 + 168] == 0;
      }

      if (v46 <= 5)
      {
LABEL_111:
        if (!v48)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v48 = 0;
      if (v46 <= 5)
      {
        goto LABEL_111;
      }
    }

    v49 = kDQuadParamTable[10 * v46 + 164] - v48;
    if (v48)
    {
      v50 = 0;
    }

    else
    {
      v50 = -2;
    }

    v51 = v36 & ~(-1 << (10 - v49));
    if (v49 >= 0xA)
    {
      v52 = 0;
    }

    else
    {
      v52 = v51;
    }

    v53 = v52 + v50;
    v54 = __clz(v53 + v47);
    if (v53 >= 1 && v54 < v44)
    {
      *(&v333 + v9 * 4) = v46 + 1;
    }

LABEL_23:
    ++v9;
  }

  while (v9 != 4);
  v328[0] = 0;
  v328[1] = 0;
  v327[0] = 0;
  v327[1] = 0;
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::deriveLossyDQuadBitSharing(v330, &v333, v328, v327);
  v56 = 0;
  if (a4)
  {
    v57 = a5 == 0;
  }

  else
  {
    v57 = 1;
  }

  v58 = v57;
  v59 = 0x30u;
  while (2)
  {
    v61 = *(v327 + v59);
    v62 = v332[v59 / 4 + 20];
    v63 = &kDQuadParamTable[160 * v61 + 10 * v62];
    v64 = *(v63 + 1);
    v66 = v63[4];
    v65 = v63[5];
    *(&v316 + v59) = v66;
    v67 = &v319 + v59;
    *(&v315 + v59) = v65;
    v68 = *(&v317 + v59) - *(&v319 + v59);
    if (v68 < 0)
    {
      v70 = &kDQuadParamTable[160 * v61 + 10 * v62];
      if (v70[7] < (*(&v319 + v59) - *(&v317 + v59)))
      {
        *(v67 - 12) = --v65;
        if (!v70[8])
        {
          v69 = -1;
LABEL_137:
          *(&v316 + v59) = v69 + v66;
        }
      }
    }

    else if (v68)
    {
      v65 += v68;
      *(v67 - 12) = v65;
      v69 = v68;
      goto LABEL_137;
    }

    if (v61 == 5 && v62 == 1)
    {
      v56 |= v68 < 2;
    }

    if (a3 == 4)
    {
      v71 = 1 << (v337[v59 / 4] - 1);
      if (v61 == 3)
      {
        v72 = -31745;
      }

      else
      {
        v72 = -1;
      }

      if (v61 == 4)
      {
        v73 = -2139095041;
      }

      else
      {
        v73 = v72;
      }

      if (v58)
      {
        if (v310)
        {
          goto LABEL_152;
        }

LABEL_166:
        v77 = *(&v331[6] + v59);
        v79 = (v77 | v73) == 0xFFFFFFFF || v77 == v71;
        v56 |= v79;
        if (!v312)
        {
          goto LABEL_173;
        }

LABEL_153:
        if (v308)
        {
          goto LABEL_154;
        }

LABEL_180:
        v83 = v332[v59 / 4];
        v85 = (v83 | v73) == 0xFFFFFFFF || v83 == v71;
        v56 |= v85;
        if (!v306)
        {
          goto LABEL_187;
        }

LABEL_155:
        if (v15)
        {
          goto LABEL_156;
        }

LABEL_194:
        v89 = v332[v59 / 4 + 8];
        v91 = (v89 | v73) == 0xFFFFFFFF || v89 == v71;
        v56 |= v91;
        if (!v14)
        {
          goto LABEL_201;
        }

LABEL_157:
        if (!v16)
        {
          goto LABEL_208;
        }
      }

      else
      {
        v74 = *(&v331[5] + v59);
        v76 = (v74 | v73) == 0xFFFFFFFF || v74 == v71;
        v56 |= v76;
        if (!v310)
        {
          goto LABEL_166;
        }

LABEL_152:
        if (v312)
        {
          goto LABEL_153;
        }

LABEL_173:
        v80 = *(&v331[7] + v59);
        v82 = (v80 | v73) == 0xFFFFFFFF || v80 == v71;
        v56 |= v82;
        if (!v308)
        {
          goto LABEL_180;
        }

LABEL_154:
        if (v306)
        {
          goto LABEL_155;
        }

LABEL_187:
        v86 = v332[v59 / 4 + 4];
        v88 = (v86 | v73) == 0xFFFFFFFF || v86 == v71;
        v56 |= v88;
        if (!v15)
        {
          goto LABEL_194;
        }

LABEL_156:
        if (v14)
        {
          goto LABEL_157;
        }

LABEL_201:
        v92 = v332[v59 / 4 + 12];
        v94 = (v92 | v73) == 0xFFFFFFFF || v92 == v71;
        v56 |= v94;
        if (!v16)
        {
LABEL_208:
          v95 = v332[v59 / 4 + 16];
          v97 = (v95 | v73) == 0xFFFFFFFF || v95 == v71;
          v56 |= v97;
        }
      }
    }

    if (v64 >> v65 > 1 << *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)19,(AGXTextureFootprint)3>::lossyFallBackInfo + v59))
    {
      v60 = 1;
    }

    else
    {
      v60 = v58;
    }

    v56 |= v60;
    v59 += 4;
    if (v59 != 64)
    {
      continue;
    }

    break;
  }

  v98 = 0;
  v317 = 0;
  v318 = 0;
  v315 = 0u;
  v316 = 0u;
  memset(v314, 0, sizeof(v314));
  v99 = v332;
  v100 = v331;
  do
  {
    v101 = 0;
    v102 = 0;
    v103 = *(&__b + v98);
    if (v103 >= *(&v323 + v98))
    {
      v104 = *(&v323 + v98);
    }

    else
    {
      v104 = *(&__b + v98);
    }

    *(&v323 + v98) = v104;
    v105 = -1 << v103;
    v106 = &kDQuadParamTable[160 * v330[v98] + 10 * *(&v333 + v98)];
    if (v106[5])
    {
      v107 = v103;
    }

    else
    {
      v107 = 0;
    }

    if (v107 >= *(&v319 + v98))
    {
      v107 = *(&v319 + v98);
    }

    *(&v319 + v98) = v107;
    v108 = *(v106 + 1);
    v109 = v338[v98] & (-1 << (v103 - v104));
    *(&v317 + v98) = v109;
    v110 = v108 >> v107;
    v111 = &v332[v98];
    v112 = *v111 - v109;
    v113 = &v331[2 * v98];
    if (v58)
    {
      v112 = 0;
    }

    v114 = v111[4] - v109;
    if (v310)
    {
      v114 = 0;
    }

    *v113 = v112;
    v113[1] = v114;
    v115 = v111[8] - v109;
    if (v312)
    {
      v115 = 0;
    }

    v116 = v111[12] - v109;
    if (v308)
    {
      v116 = 0;
    }

    v113[2] = v115;
    v113[3] = v116;
    v117 = v111[16] - v109;
    if (v306)
    {
      v117 = 0;
    }

    v118 = v111[20] - v109;
    if (v15)
    {
      v118 = 0;
    }

    v113[4] = v117;
    v113[5] = v118;
    v119 = v111[24] - v109;
    if (v14)
    {
      v119 = 0;
    }

    v120 = v111[28] - v109;
    if (v16)
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

    v122 = 4 * v337[v98];
    v123 = v314 + 28 * v98;
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
                if ((a3 | 2) != 3 || (v128 = v99[v101], v129 = v329[v98], v128 != v129) && ((a3 | 2) != 3 || v121 + v129 != v128))
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
  v130 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v131 = 8 * (a1 & 7);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v56)
  {
    v132 = 0;
    v133 = 0;
    v134 = __b;
    v135 = v340;
    v136 = __b - 4;
    v137 = v340 - 4;
    v139 = v341;
    v138 = v342;
    v140 = v341 - 4;
    v141 = v342 - 4;
    v142 = 8 * (a1 & 7);
    while (1)
    {
      v143 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v132;
      v144 = v143[1] < a5 && a4 > *v143;
      v145 = !v144;
      if (v144)
      {
        v146 = v332[4 * v132] >> 4;
        if (v136 > 0x100)
        {
          goto LABEL_292;
        }
      }

      else
      {
        v146 = 0;
        if (v136 > 0x100)
        {
          goto LABEL_292;
        }
      }

      if (v134 != 4 && (v142 - v131 + (v133 << 6) + v136) <= 0xC0)
      {
        v147 = 0;
        v148 = v134 - 4;
        do
        {
          v149 = 64 - v142;
          if (64 - v142 >= v148)
          {
            v149 = v148;
          }

          v130[v133] |= ((v146 >> v147) & ~(-1 << v149)) << v142;
          v147 += v149;
          v150 = v149 + v142;
          v133 += v150 >> 6;
          v142 = v150 & 0x3F;
          v148 -= v149;
        }

        while (v148);
      }

LABEL_292:
      v151 = &v332[4 * v132];
      if (v145)
      {
        v152 = 0;
        if (v137 > 0x100)
        {
          goto LABEL_302;
        }
      }

      else
      {
        v152 = v151[1] >> 4;
        if (v137 > 0x100)
        {
          goto LABEL_302;
        }
      }

      if (v135 != 4 && (v142 - v131 + (v133 << 6) + v137) <= 0xC0)
      {
        v153 = 0;
        v154 = v135 - 4;
        do
        {
          v155 = 64 - v142;
          if (64 - v142 >= v154)
          {
            v155 = v154;
          }

          v130[v133] |= ((v152 >> v153) & ~(-1 << v155)) << v142;
          v153 += v155;
          v156 = v155 + v142;
          v133 += v156 >> 6;
          v142 = v156 & 0x3F;
          v154 -= v155;
        }

        while (v154);
      }

LABEL_302:
      if (v145)
      {
        v157 = 0;
        if (v140 > 0x100)
        {
          goto LABEL_312;
        }
      }

      else
      {
        v157 = v151[2] >> 4;
        if (v140 > 0x100)
        {
          goto LABEL_312;
        }
      }

      if (v139 != 4 && (v142 - v131 + (v133 << 6) + v140) <= 0xC0)
      {
        v158 = 0;
        v159 = v139 - 4;
        do
        {
          v160 = 64 - v142;
          if (64 - v142 >= v159)
          {
            v160 = v159;
          }

          v130[v133] |= ((v157 >> v158) & ~(-1 << v160)) << v142;
          v158 += v160;
          v161 = v160 + v142;
          v133 += v161 >> 6;
          v142 = v161 & 0x3F;
          v159 -= v160;
        }

        while (v159);
      }

LABEL_312:
      if (v145)
      {
        v162 = 0;
        if (v141 <= 0x100)
        {
          goto LABEL_316;
        }
      }

      else
      {
        v162 = v151[3] >> 4;
        if (v141 <= 0x100)
        {
LABEL_316:
          if (v138 != 4 && (v142 - v131 + (v133 << 6) + v141) <= 0xC0)
          {
            v163 = 0;
            v164 = v138 - 4;
            do
            {
              v165 = 64 - v142;
              if (64 - v142 >= v164)
              {
                v165 = v164;
              }

              v130[v133] |= ((v162 >> v163) & ~(-1 << v165)) << v142;
              v163 += v165;
              v166 = v165 + v142;
              v133 += v166 >> 6;
              v142 = v166 & 0x3F;
              v164 -= v165;
            }

            while (v164);
          }
        }
      }

      if (++v132 == 8)
      {
        return v56 & 1;
      }
    }
  }

  v167 = v333;
  if (v338[0] | v333)
  {
    if (v333 <= 2)
    {
      v168 = 0;
      v311 = 0;
      v169 = v333 + 1;
      goto LABEL_327;
    }

    v171 = 0;
    v169 = 0;
    v170 = 0;
    v168 = (v333 + 6) & 7;
    v311 = 1;
  }

  else
  {
    v168 = 0;
    v311 = 0;
    v169 = 0;
LABEL_327:
    v170 = 1;
    v171 = 2;
  }

  v172 = (v168 << v131) | *v130;
  *v130 = v172;
  v173 = v131 | 3;
  v174 = v334;
  if (v338[1] | v334)
  {
    if (v334 < 3)
    {
      v175 = 0;
      v309 = 0;
      v176 = v334 + 1;
      goto LABEL_333;
    }

    v313 = 0;
    v176 = 0;
    v177 = 0;
    v175 = (v334 + 6) & 7;
    v309 = 1;
  }

  else
  {
    v175 = 0;
    v309 = 0;
    v176 = 0;
LABEL_333:
    v177 = 1;
    v313 = 2;
  }

  if ((v173 - v131) <= 0xBD)
  {
    *v130 = (v175 << v173) | v172;
    v173 = v131 | 6;
  }

  v178 = v335;
  if (v338[2] | v335)
  {
    if (v335 < 3)
    {
      v179 = 0;
      v307 = 0;
      v180 = v335 + 1;
      goto LABEL_341;
    }

    v182 = 0;
    v180 = 0;
    v181 = 0;
    v179 = v335 - 2;
    v307 = 1;
  }

  else
  {
    v179 = 0;
    v307 = 0;
    v180 = 0;
LABEL_341:
    v181 = 1;
    v182 = 2;
  }

  if ((v173 - v131 - 190) >= 0xFFFFFFFFFFFFFF3FLL)
  {
    v183 = 0;
    v184 = 0;
    v185 = 3;
    do
    {
      v186 = 64 - v173;
      if (64 - v173 >= v185)
      {
        v186 = v185;
      }

      v130[v183] |= ((v179 >> v184) & ~(-1 << v186)) << v173;
      v184 += v186;
      v187 = v186 + v173;
      v183 += v187 >> 6;
      v173 = v187 & 0x3F;
      v185 -= v186;
    }

    while (v185);
  }

  else
  {
    v183 = 0;
  }

  v188 = v336;
  v189 = v338[3] | v336;
  v190 = v336 - 2;
  if (v336 >= 3)
  {
    v191 = 1;
  }

  else
  {
    v190 = 0;
    v191 = 0;
  }

  if (v336 >= 3)
  {
    v192 = 0;
  }

  else
  {
    v192 = 2;
  }

  if (v336 < 3)
  {
    v193 = v336 + 1;
  }

  else
  {
    v193 = 0;
  }

  if (v189)
  {
    v194 = v191;
  }

  else
  {
    v190 = 0;
    v194 = 0;
  }

  if (v189)
  {
    v195 = v192;
  }

  else
  {
    v195 = 2;
  }

  if (v189)
  {
    v196 = v193;
  }

  else
  {
    v196 = 0;
  }

  if (v189)
  {
    v197 = v336 < 3;
  }

  else
  {
    v197 = 1;
  }

  if ((v173 - v131 + (v183 << 6) + 3) <= 0xC0)
  {
    v198 = 0;
    v199 = 3;
    do
    {
      v200 = 64 - v173;
      if (64 - v173 >= v199)
      {
        v200 = v199;
      }

      v130[v183] |= ((v190 >> v198) & ~(-1 << v200)) << v173;
      v198 += v200;
      v201 = v200 + v173;
      v183 += v201 >> 6;
      v173 = v201 & 0x3F;
      v199 -= v200;
    }

    while (v199);
  }

  if (!v170)
  {
    v207 = 12;
    if (!v177)
    {
      goto LABEL_395;
    }

    goto LABEL_386;
  }

  v202 = v171;
  v203 = v311;
  if (v173 - v131 + (v183 << 6) + v171 > 0xC0)
  {
    v203 = 1;
  }

  if ((v203 & 1) == 0)
  {
    v204 = 0;
    do
    {
      v205 = 64 - v173;
      if (64 - v173 >= v202)
      {
        v205 = v202;
      }

      v130[v183] |= ((v169 >> v204) & ~(-1 << v205)) << v173;
      v204 += v205;
      v206 = v205 + v173;
      v183 += v206 >> 6;
      v173 = v206 & 0x3F;
      v202 -= v205;
    }

    while (v202);
  }

  v207 = v171 | 0xC;
  if (v177)
  {
LABEL_386:
    v208 = v313;
    if (v173 - v131 + (v183 << 6) + v313 > 0xC0)
    {
      v209 = 1;
    }

    else
    {
      v209 = v309;
    }

    if ((v209 & 1) == 0)
    {
      v210 = 0;
      do
      {
        v211 = 64 - v173;
        if (64 - v173 >= v208)
        {
          v211 = v208;
        }

        v130[v183] |= ((v176 >> v210) & ~(-1 << v211)) << v173;
        v210 += v211;
        v212 = v211 + v173;
        v183 += v212 >> 6;
        v173 = v212 & 0x3F;
        v208 -= v211;
      }

      while (v208);
    }

    v207 += v313;
  }

LABEL_395:
  if (v181)
  {
    v214 = v182;
    v215 = v307;
    if (v173 - v131 + (v183 << 6) + v182 > 0xC0)
    {
      v215 = 1;
    }

    if ((v215 & 1) == 0)
    {
      v216 = 0;
      do
      {
        v217 = 64 - v173;
        if (64 - v173 >= v214)
        {
          v217 = v214;
        }

        v130[v183] |= ((v180 >> v216) & ~(-1 << v217)) << v173;
        v216 += v217;
        v218 = v217 + v173;
        v183 += v218 >> 6;
        v173 = v218 & 0x3F;
        v214 -= v217;
      }

      while (v214);
    }

    v207 += v182;
    if (v197)
    {
      goto LABEL_407;
    }

LABEL_397:
    v213 = __b;
    if (v167)
    {
      goto LABEL_420;
    }

LABEL_416:
    if (v213 == 2 || v213 >= 0x10)
    {
      goto LABEL_420;
    }

    v224 = v340;
    if (!v174)
    {
      goto LABEL_529;
    }

LABEL_428:
    v231 = v324;
    if (v324 <= 0x100 && v324 && v173 - v131 + (v183 << 6) + v324 <= 0xC0)
    {
      v232 = 0;
      v233 = (HIDWORD(v317) >> (v224 - v324));
      v234 = v324;
      do
      {
        v235 = 64 - v173;
        if (64 - v173 >= v234)
        {
          v235 = v234;
        }

        v130[v183] |= ((v233 >> v232) & ~(-1 << v235)) << v173;
        v232 += v235;
        v236 = v235 + v173;
        v183 += v236 >> 6;
        v173 = v236 & 0x3F;
        v234 -= v235;
      }

      while (v234);
    }

    v207 += v231;
  }

  else
  {
    if (!v197)
    {
      goto LABEL_397;
    }

LABEL_407:
    if ((v173 - v131 + (v183 << 6) + v195) > 0xC0)
    {
      v219 = 1;
    }

    else
    {
      v219 = v194;
    }

    if ((v219 & 1) == 0)
    {
      v220 = 0;
      v221 = v195;
      do
      {
        v222 = 64 - v173;
        if (64 - v173 >= v221)
        {
          v222 = v221;
        }

        v130[v183] |= ((v196 >> v220) & ~(-1 << v222)) << v173;
        v220 += v222;
        v223 = v222 + v173;
        v183 += v223 >> 6;
        v173 = v223 & 0x3F;
        v221 -= v222;
      }

      while (v221);
    }

    v207 += v195;
    v213 = __b;
    if (!v167)
    {
      goto LABEL_416;
    }

LABEL_420:
    v225 = v323;
    if (v323 <= 0x100 && v323 && v173 - v131 + (v183 << 6) + v323 <= 0xC0)
    {
      v226 = 0;
      v227 = v317 >> (v213 - v323);
      v228 = v323;
      do
      {
        v229 = 64 - v173;
        if (64 - v173 >= v228)
        {
          v229 = v228;
        }

        v130[v183] |= ((v227 >> v226) & ~(-1 << v229)) << v173;
        v226 += v229;
        v230 = v229 + v173;
        v183 += v230 >> 6;
        v173 = v230 & 0x3F;
        v228 -= v229;
      }

      while (v228);
    }

    v207 += v225;
    v224 = v340;
    if (v174)
    {
      goto LABEL_428;
    }

LABEL_529:
    if (v224 == 2 || v224 >= 0x10)
    {
      goto LABEL_428;
    }
  }

  if (v178 || v341 == 2 || v341 >= 0x10)
  {
    v237 = v325;
    if (v325 <= 0x100 && v325 && v173 - v131 + (v183 << 6) + v325 <= 0xC0)
    {
      v238 = 0;
      v239 = v318 >> (v341 - v325);
      v240 = v325;
      do
      {
        v241 = 64 - v173;
        if (64 - v173 >= v240)
        {
          v241 = v240;
        }

        v130[v183] |= ((v239 >> v238) & ~(-1 << v241)) << v173;
        v238 += v241;
        v242 = v241 + v173;
        v183 += v242 >> 6;
        v173 = v242 & 0x3F;
        v240 -= v241;
      }

      while (v240);
    }

    v207 += v237;
  }

  if (v188 || v342 == 2 || v342 >= 0x10)
  {
    v243 = v326;
    if (v326 <= 0x100 && v326 && v173 - v131 + (v183 << 6) + v326 <= 0xC0)
    {
      v244 = 0;
      v245 = (HIDWORD(v318) >> (v342 - v326));
      v246 = v326;
      do
      {
        v247 = 64 - v173;
        if (64 - v173 >= v246)
        {
          v247 = v246;
        }

        v130[v183] |= ((v245 >> v244) & ~(-1 << v247)) << v173;
        v244 += v247;
        v248 = v247 + v173;
        v183 += v248 >> 6;
        v173 = v248 & 0x3F;
        v246 -= v247;
      }

      while (v246);
    }

    v207 += v243;
  }

  v249 = v319;
  if (v319)
  {
    if ((v173 - v131 + (v183 << 6) + 3) <= 0xC0)
    {
      v250 = 0;
      v251 = v337[0];
      v252 = 3;
      do
      {
        v253 = 64 - v173;
        if (64 - v173 >= v252)
        {
          v253 = v252;
        }

        v130[v183] |= ((v251 >> v250) & ~(-1 << v253)) << v173;
        v250 += v253;
        v254 = v253 + v173;
        v183 += v254 >> 6;
        v173 = v254 & 0x3F;
        v252 -= v253;
      }

      while (v252);
    }

    v207 += 3;
  }

  v255 = v320;
  if (v320)
  {
    if ((v173 - v131 + (v183 << 6) + 3) <= 0xC0)
    {
      v256 = 0;
      v257 = v337[1];
      v258 = 3;
      do
      {
        v259 = 64 - v173;
        if (64 - v173 >= v258)
        {
          v259 = v258;
        }

        v130[v183] |= ((v257 >> v256) & ~(-1 << v259)) << v173;
        v256 += v259;
        v260 = v259 + v173;
        v183 += v260 >> 6;
        v173 = v260 & 0x3F;
        v258 -= v259;
      }

      while (v258);
    }

    v207 += 3;
  }

  v261 = v321;
  if (v321)
  {
    if ((v173 - v131 + (v183 << 6) + 3) <= 0xC0)
    {
      v262 = 0;
      v263 = v337[2];
      v264 = 3;
      do
      {
        v265 = 64 - v173;
        if (64 - v173 >= v264)
        {
          v265 = v264;
        }

        v130[v183] |= ((v263 >> v262) & ~(-1 << v265)) << v173;
        v262 += v265;
        v266 = v265 + v173;
        v183 += v266 >> 6;
        v173 = v266 & 0x3F;
        v264 -= v265;
      }

      while (v264);
    }

    v207 += 3;
  }

  v267 = v322;
  if (v322)
  {
    if ((v173 - v131 + (v183 << 6) + 3) <= 0xC0)
    {
      v268 = 0;
      v269 = v337[3];
      v270 = 3;
      do
      {
        v271 = 64 - v173;
        if (64 - v173 >= v270)
        {
          v271 = v270;
        }

        v130[v183] |= ((v269 >> v268) & ~(-1 << v271)) << v173;
        v268 += v271;
        v272 = v271 + v173;
        v183 += v272 >> 6;
        v173 = v272 & 0x3F;
        v270 -= v271;
      }

      while (v270);
    }

    v207 += 3;
  }

  v273 = 192 - v207;
  v274 = (192 - v207) / 7u;
  v275 = v273 % 7;
  if ((v275 - 257) >= 0xFFFFFF00 && v173 - v131 + (v183 << 6) + v275 <= 0xC0)
  {
    do
    {
      v276 = 64 - v173;
      if (64 - v173 >= v275)
      {
        v276 = v275;
      }

      v277 = v276 + v173;
      v183 += v277 >> 6;
      v173 = v277 & 0x3F;
      v275 -= v276;
    }

    while (v275);
  }

  v278 = 0;
  while (2)
  {
    if (v249 && v249 <= 0x100 && v173 - v131 + (v183 << 6) + v249 <= 0xC0)
    {
      v279 = 0;
      v280 = *(v314 + v278);
      v281 = v249;
      do
      {
        v282 = 64 - v173;
        if (64 - v173 >= v281)
        {
          v282 = v281;
        }

        v130[v183] |= ((v280 >> v279) & ~(-1 << v282)) << v173;
        v279 += v282;
        v283 = v282 + v173;
        v183 += v283 >> 6;
        v173 = v283 & 0x3F;
        v281 -= v282;
      }

      while (v281);
    }

    v284 = v314 + v278;
    if (!v255)
    {
      v290 = v249;
      if (!v261)
      {
        goto LABEL_513;
      }

      goto LABEL_506;
    }

    if (v255 <= 0x100 && v173 - v131 + (v183 << 6) + v255 <= 0xC0)
    {
      v285 = 0;
      v286 = v284[7];
      v287 = v255;
      do
      {
        v288 = 64 - v173;
        if (64 - v173 >= v287)
        {
          v288 = v287;
        }

        v130[v183] |= ((v286 >> v285) & ~(-1 << v288)) << v173;
        v285 += v288;
        v289 = v288 + v173;
        v183 += v289 >> 6;
        v173 = v289 & 0x3F;
        v287 -= v288;
      }

      while (v287);
    }

    v290 = v255 + v249;
    if (v261)
    {
LABEL_506:
      if (v261 <= 0x100 && v173 - v131 + (v183 << 6) + v261 <= 0xC0)
      {
        v291 = 0;
        v292 = v284[14];
        v293 = v261;
        do
        {
          v294 = 64 - v173;
          if (64 - v173 >= v293)
          {
            v294 = v293;
          }

          v130[v183] |= ((v292 >> v291) & ~(-1 << v294)) << v173;
          v291 += v294;
          v295 = v294 + v173;
          v183 += v295 >> 6;
          v173 = v295 & 0x3F;
          v293 -= v294;
        }

        while (v293);
      }

      v290 += v261;
    }

LABEL_513:
    if (v267)
    {
      if (v267 <= 0x100 && v173 - v131 + (v183 << 6) + v267 <= 0xC0)
      {
        v296 = 0;
        v297 = v284[21];
        v298 = v267;
        do
        {
          v299 = 64 - v173;
          if (64 - v173 >= v298)
          {
            v299 = v298;
          }

          v130[v183] |= ((v297 >> v296) & ~(-1 << v299)) << v173;
          v296 += v299;
          v300 = v299 + v173;
          v183 += v300 >> 6;
          v173 = v300 & 0x3F;
          v298 -= v299;
        }

        while (v298);
      }

      v290 += v267;
    }

    v301 = v274 - v290;
    if (v301 && v301 <= 0x100 && v173 - v131 + (v183 << 6) + v301 <= 0xC0)
    {
      do
      {
        v302 = 64 - v173;
        if (64 - v173 >= v301)
        {
          v302 = v301;
        }

        v303 = v302 + v173;
        v183 += v303 >> 6;
        v173 = v303 & 0x3F;
        v301 -= v302;
      }

      while (v301);
    }

    if (++v278 != 7)
    {
      continue;
    }

    return v56 & 1;
  }
}