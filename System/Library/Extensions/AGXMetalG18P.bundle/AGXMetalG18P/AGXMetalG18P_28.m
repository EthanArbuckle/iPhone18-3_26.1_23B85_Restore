unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 1, (v13 + v14), a2, v17, v16, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 2, v13 + 4, a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 3, (v13 + v14 + 64), a2, v22, v21, a7);
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

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 4, (v13 + 8 * a2), a2, v25, v24, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 5, (v13 + 12 * a2), a2, v28, v27, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 6, (v13 + 8 * a2 + 64), a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 7, (v13 + 12 * a2 + 64), a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressMacroblock(_OWORD *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1, 128, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 32, 128, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 4, 128, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 36, 128, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 64, 128, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 96, 128, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 68, 128, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 100, 128, v12 + v13, v14, a4);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(unint64_t a1, _BYTE *a2, int16x8_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = (a3 + 2 * a4);
  v9 = *v7;
  v10 = v7[1];
  v11 = v7[2];
  v12 = v7[3];
  v8 = (v7 + a4);
  v13 = vshrq_n_s16(*a3, 6uLL);
  v14 = vshrq_n_s16(a3[1], 6uLL);
  v15 = vshrq_n_s16(*(a3 + a4), 6uLL);
  v16 = vshrq_n_s16(*(&a3[1] + a4), 6uLL);
  v17 = vshrq_n_s16(a3[2], 6uLL);
  v18 = vshrq_n_s16(a3[3], 6uLL);
  v19 = vshrq_n_s16(*(&a3[2] + a4), 6uLL);
  v20 = vshrq_n_s16(*(&a3[3] + a4), 6uLL);
  v21 = vshrq_n_s16(v9, 6uLL);
  v22 = vshrq_n_s16(v10, 6uLL);
  v23 = vshrq_n_s16(*v8, 6uLL);
  v24 = vshrq_n_s16(v8[1], 6uLL);
  v25 = vshrq_n_s16(v11, 6uLL);
  v26 = vshrq_n_s16(v12, 6uLL);
  v27 = vshrq_n_s16(v8[2], 6uLL);
  v28 = vshrq_n_s16(v8[3], 6uLL);
  v470 = vdupq_lane_s64(v13.i64[0], 0);
  v446 = v17;
  v448 = v18;
  v449 = v19;
  v450 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v13, v470), 6uLL), 6uLL);
  v452 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v14, v470), 6uLL), 6uLL);
  v454 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v15, v470), 6uLL), 6uLL);
  v456 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v16, v470), 6uLL), 6uLL);
  v458 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v17, v470), 6uLL), 6uLL);
  v459 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v18, v470), 6uLL), 6uLL);
  v29 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v450, v452), v454), v456), xmmword_29D2F1150);
  v30 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v450, v452), v454), v456), xmmword_29D2F1150);
  v31 = vpmaxq_s16(v29, v29);
  v32 = vpminq_s16(v30, v30);
  v33 = vzip1q_s16(v31, v32);
  v34.i64[0] = 0x10001000100010;
  v34.i64[1] = 0x10001000100010;
  v35 = vbicq_s8(vsubq_s16(v34, vclsq_s16(v33)), vceqzq_s16(v33));
  v460 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v19, v470), 6uLL), 6uLL);
  v461 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v20, v470), 6uLL), 6uLL);
  v462 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v21, v470), 6uLL), 6uLL);
  v463 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v22, v470), 6uLL), 6uLL);
  v30.i64[0] = 0x8000800080008000;
  v30.i64[1] = 0x8000800080008000;
  v36.i64[0] = 0x8000800080008000;
  v36.i64[1] = 0x8000800080008000;
  v37 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v458, v459), v460), v461), xmmword_29D2F1150);
  v38 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v458, v459), v460), v461), xmmword_29D2F1150);
  v39 = vpmaxq_s16(v37, v37);
  v40 = vpminq_s16(v38, v38);
  v41 = vmaxq_s16(vmaxq_s16(v31, v30), v39);
  v42 = vminq_s16(vminq_s16(v32, v36), v40);
  v43 = vzip1q_s16(v39, v40);
  v44 = vbicq_s8(vsubq_s16(v34, vclsq_s16(v43)), vceqzq_s16(v43));
  v464 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v23, v470), 6uLL), 6uLL);
  v465 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v24, v470), 6uLL), 6uLL);
  v466 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v25, v470), 6uLL), 6uLL);
  v467 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v26, v470), 6uLL), 6uLL);
  v45 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v462, v463), v464), v465), xmmword_29D2F1150);
  v46 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v462, v463), v464), v465), xmmword_29D2F1150);
  v47 = vpmaxq_s16(v45, v45);
  v48 = vpminq_s16(v46, v46);
  v49 = vminq_s16(v42, v48);
  v50 = vzip1q_s16(v47, v48);
  v51 = vbicq_s8(vsubq_s16(v34, vclsq_s16(v50)), vceqzq_s16(v50));
  v468 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v27, v470), 6uLL), 6uLL);
  v469 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v28, v470), 6uLL), 6uLL);
  v52 = vpmaxq_s16(v35, v35);
  v53 = vpmaxq_s16(v44, v44);
  v54 = vpmaxq_s16(v51, v51);
  v55 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v466, v467), v468), v469), xmmword_29D2F1150);
  v56 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v466, v467), v468), v469), xmmword_29D2F1150);
  v57 = vpmaxq_s16(v55, v55);
  v58 = vpminq_s16(v56, v56);
  v59 = vmaxq_s16(vmaxq_s16(v41, v47), v57);
  v60 = vminq_s16(v49, v58);
  v61 = vzip1q_s16(v57, v58);
  v62 = vbicq_s8(vsubq_s16(v34, vclsq_s16(v61)), vceqzq_s16(v61));
  v63 = vpmaxq_s16(v62, v62);
  v64 = vmaxq_s16(vmaxq_s16(v52, v53), vmaxq_s16(v54, v63));
  v65 = vclzq_s16(vsubq_s16(v59, v60));
  v47.i64[0] = 0xF000F000F000FLL;
  v47.i64[1] = 0xF000F000F000FLL;
  v32.i64[0] = -1;
  v32.i64[1] = -1;
  v477 = v60;
  v478 = v59;
  v66 = vsubq_s16(v34, v65);
  v67 = vsubq_s16(vshlq_s16(v32, vsubq_s16(v47, v65)), v60);
  v68 = vcgtq_s16(v64, v66);
  v69 = vminq_s16(v66, v64);
  v479 = vandq_s8(v67, v68);
  v67.i64[0] = 0x8000800080008;
  v67.i64[1] = 0x8000800080008;
  v70.i64[0] = 0x3000300030003;
  v70.i64[1] = 0x3000300030003;
  v71 = vorrq_s8(vandq_s8(vceqzq_s16(v69), v70), vorrq_s8(vandq_s8(v68, v67), 0));
  v72 = vmaxq_s16(vminq_s16(vsubq_s16(v69, v53), v70), 0);
  v73 = vmaxq_s16(vminq_s16(vsubq_s16(v69, v54), v70), 0);
  v473 = vsubq_s16(v69, v72);
  v474 = vsubq_s16(v69, v73);
  v74 = vmaxq_s16(vminq_s16(vsubq_s16(v69, v63), v70), 0);
  v475 = vsubq_s16(v69, v74);
  v476 = v69;
  v75 = vmaxq_s16(vminq_s16(vsubq_s16(v69, v52), v70), 0);
  v76 = vsubq_s16(v69, v75);
  v77 = vceqq_s16(vaddq_s16(v74, v73), vnegq_s16(vaddq_s16(v75, v72)));
  v75.i64[0] = 0x4000400040004;
  v75.i64[1] = 0x4000400040004;
  v78 = vorrq_s8(vbicq_s8(v75, v77), v71);
  v471 = v78;
  v472 = v76;
  if (vmaxvq_s16(v69))
  {
    v417 = v20;
    v418 = v24;
    v419 = v21;
    v420 = v22;
    v421 = v23;
    v422 = v25;
    v423 = v26;
    v424 = v27;
    v425 = v28;
    v79.i64[0] = 0x10001000100010;
    v79.i64[1] = 0x10001000100010;
    v80 = v71;
    v81 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v450, vqtbl1q_s8(v450, xmmword_29D2F1140)), 6uLL), 6uLL);
    v82 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v452, vqtbl1q_s8(v452, xmmword_29D2F1140)), 6uLL), 6uLL);
    v83 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v454, vqtbl1q_s8(v454, xmmword_29D2F1140)), 6uLL), 6uLL);
    v84 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v456, vqtbl1q_s8(v456, xmmword_29D2F1140)), 6uLL), 6uLL);
    v85 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v466, vqtbl1q_s8(v466, xmmword_29D2F1140)), 6uLL), 6uLL);
    v86 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v467, vqtbl1q_s8(v467, xmmword_29D2F1140)), 6uLL), 6uLL);
    v87 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v468, vqtbl1q_s8(v468, xmmword_29D2F1140)), 6uLL), 6uLL);
    v88 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v462, vqtbl1q_s8(v462, xmmword_29D2F1140)), 6uLL), 6uLL);
    v89 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v469, vqtbl1q_s8(v469, xmmword_29D2F1140)), 6uLL), 6uLL);
    v90 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v465, vqtbl1q_s8(v465, xmmword_29D2F1140)), 6uLL), 6uLL);
    v91 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v81, v82), v83), v84);
    v430 = v84;
    v431 = v83;
    v92 = vminq_s16(vminq_s16(vminq_s16(v81, v82), v83), v84);
    v93 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v464, vqtbl1q_s8(v464, xmmword_29D2F1140)), 6uLL), 6uLL);
    v94 = vqtbl1q_s8(v91, xmmword_29D2F1150);
    v95 = vqtbl1q_s8(v92, xmmword_29D2F1150);
    v96 = vpmaxq_s16(v94, v94);
    v97 = vpminq_s16(v95, v95);
    v98.i64[0] = 0x8000800080008000;
    v98.i64[1] = 0x8000800080008000;
    v99 = vmaxq_s16(v96, v98);
    v100.i64[0] = 0x8000800080008000;
    v100.i64[1] = 0x8000800080008000;
    v101 = vminq_s16(v97, v100);
    v102 = vzip1q_s16(v96, v97);
    v103 = vbicq_s8(vsubq_s16(v79, vclsq_s16(v102)), vceqzq_s16(v102));
    v104 = vpmaxq_s16(v103, v103);
    v436 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v459, vqtbl1q_s8(v459, xmmword_29D2F1140)), 6uLL), 6uLL);
    v438 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v458, vqtbl1q_s8(v458, xmmword_29D2F1140)), 6uLL), 6uLL);
    v440 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v461, vqtbl1q_s8(v461, xmmword_29D2F1140)), 6uLL), 6uLL);
    v442 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v460, vqtbl1q_s8(v460, xmmword_29D2F1140)), 6uLL), 6uLL);
    v105 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v438, v436), v442), v440), xmmword_29D2F1150);
    v106 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v438, v436), v442), v440), xmmword_29D2F1150);
    v107 = vpmaxq_s16(v105, v105);
    v108 = vpminq_s16(v106, v106);
    v109 = vmaxq_s16(v99, v107);
    v110 = vminq_s16(v101, v108);
    v111 = vzip1q_s16(v107, v108);
    v112 = vbicq_s8(vsubq_s16(v79, vclsq_s16(v111)), vceqzq_s16(v111));
    v113 = vpmaxq_s16(v112, v112);
    v444 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v463, vqtbl1q_s8(v463, xmmword_29D2F1140)), 6uLL), 6uLL);
    v114 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v88, v444), v93), v90), xmmword_29D2F1150);
    v115 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v88, v444), v93), v90), xmmword_29D2F1150);
    v116 = vpmaxq_s16(v114, v114);
    v117 = vpminq_s16(v115, v115);
    v118 = vmaxq_s16(v109, v116);
    v119 = vminq_s16(v110, v117);
    v120 = vzip1q_s16(v116, v117);
    v121 = vbicq_s8(vsubq_s16(v79, vclsq_s16(v120)), vceqzq_s16(v120));
    v122 = vpmaxq_s16(v121, v121);
    v123 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v85, v86), v87), v89), xmmword_29D2F1150);
    v124 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v85, v86), v87), v89), xmmword_29D2F1150);
    v125 = vpmaxq_s16(v123, v123);
    v126 = vpminq_s16(v124, v124);
    v127 = vmaxq_s16(v118, v125);
    v128 = vminq_s16(v119, v126);
    v129 = vzip1q_s16(v125, v126);
    v130 = vbicq_s8(vsubq_s16(v79, vclsq_s16(v129)), vceqzq_s16(v129));
    v131 = vpmaxq_s16(v130, v130);
    v132 = vmaxq_s16(vmaxq_s16(v104, v113), vmaxq_s16(v122, v131));
    v432 = v128;
    v434 = v127;
    v133 = vclzq_s16(vsubq_s16(v127, v128));
    v134 = vsubq_s16(v79, v133);
    v135 = vcgtq_s16(v132, v134);
    v136 = vminq_s16(v134, v132);
    v137 = vmaxq_s16(vminq_s16(vsubq_s16(v136, v104), v70), 0);
    v138 = vmaxq_s16(vminq_s16(vsubq_s16(v136, v113), v70), 0);
    v139 = vmaxq_s16(vminq_s16(vsubq_s16(v136, v122), v70), 0);
    v140 = vmaxq_s16(vminq_s16(vsubq_s16(v136, v131), v70), 0);
    v127.i64[0] = 0x4000400040004;
    v127.i64[1] = 0x4000400040004;
    v141 = vbicq_s8(v127, vceqq_s16(vaddq_s16(v140, v139), vnegq_s16(vaddq_s16(v137, v138))));
    v134.i64[0] = 0x18001800180018;
    v134.i64[1] = 0x18001800180018;
    v142 = vbslq_s8(v135, v134, v79);
    v427 = vsubq_s16(v136, v138);
    v428 = vsubq_s16(v136, v139);
    v429 = vsubq_s16(v136, v140);
    v140.i64[0] = 0x7000700070007;
    v140.i64[1] = 0x7000700070007;
    v426 = vsubq_s16(v136, v137);
    v139.i64[0] = 0x8000800080008;
    v139.i64[1] = 0x8000800080008;
    v143 = vandq_s8(vaddq_s16(v78, v78), v139);
    v127.i64[0] = 0x2000200020002;
    v127.i64[1] = 0x2000200020002;
    v144 = vandq_s8(vceqq_s16(vandq_s8(v80, v70), v127), v79);
    v145 = vceqzq_s16(vandq_s8(v80, v139));
    v146 = v475;
    v147 = v476;
    v149 = v472;
    v148 = v473;
    v150 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v476, v145), v144), v143), v472, v140);
    v151 = v474;
    v152 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v150, vshlq_n_s16(vaddq_s16(vaddq_s16(v474, v473), v475), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v136, vceqzq_s16((*&v142 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v141, v141)), v426, v140), vshlq_n_s16(vaddq_s16(vaddq_s16(v428, v427), v429), 3uLL))).i64[0], 0);
    v153 = vaddvq_s16(v152);
    v155 = a5 < 2 || a6 < 2;
    if (v153)
    {
      v156.i64[0] = 0x3000300030003;
      v156.i64[1] = 0x3000300030003;
      v157.i64[0] = 0xF000F000F000FLL;
      v157.i64[1] = 0xF000F000F000FLL;
      v450 = vbslq_s8(v152, v81, v450);
      v452 = vbslq_s8(v152, v82, v452);
      v158.i64[0] = -1;
      v158.i64[1] = -1;
      v454 = vbslq_s8(v152, v431, v454);
      v456 = vbslq_s8(v152, v430, v456);
      v159 = vandq_s8(vsubq_s16(vshlq_s16(v158, vsubq_s16(v157, v133)), v432), v135);
      v458 = vbslq_s8(v152, v438, v458);
      v459 = vbslq_s8(v152, v436, v459);
      v460 = vbslq_s8(v152, v442, v460);
      v461 = vbslq_s8(v152, v440, v461);
      v462 = vbslq_s8(v152, v88, v462);
      v463 = vbslq_s8(v152, v444, v463);
      v464 = vbslq_s8(v152, v93, v464);
      v465 = vbslq_s8(v152, v90, v465);
      v466 = vbslq_s8(v152, v85, v466);
      v467 = vbslq_s8(v152, v86, v467);
      v468 = vbslq_s8(v152, v87, v468);
      v469 = vbslq_s8(v152, v89, v469);
      v149 = vbslq_s8(v152, v426, v472);
      v148 = vbslq_s8(v152, v427, v473);
      v472 = v149;
      v473 = v148;
      v151 = vbslq_s8(v152, v428, v474);
      v146 = vbslq_s8(v152, v429, v475);
      v474 = v151;
      v475 = v146;
      v478 = vbslq_s8(v152, v434, v478);
      v479 = vbslq_s8(v152, v159, v479);
      v147 = vbslq_s8(v152, v136, v476);
      v476 = v147;
      v477 = vbslq_s8(v152, v432, v477);
      v78 = vbslq_s8(v152, vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v136), v156), v142), v141), v471);
      v470 = vbslq_s8(v152, vsubq_s16(v470, vqtbl1q_s8(v470, xmmword_29D2F1140)), v470);
      v471 = v78;
    }

    if (!v155)
    {
      v160 = vqtbl4q_s8(*v13.i8, xmmword_29D2F1160);
      v161 = vsubq_s16(v13, vqtbl4q_s8(*v13.i8, xmmword_29D2F10B0));
      v162 = vsubq_s16(v15, v160);
      v163 = vsubq_s16(v16, v160);
      v481.val[0] = v446;
      v481.val[1] = v448;
      v481.val[2] = v449;
      v481.val[3].i64[0] = v417.i64[0];
      v481.val[3].i64[1] = v16.i64[1];
      v164 = vsubq_s16(v446, vqtbl4q_s8(v481, xmmword_29D2F10B0));
      v165 = vsubq_s16(v448, vqtbl4q_s8(v481, xmmword_29D2F10F0));
      v166 = vsubq_s16(v449, vqtbl4q_s8(v481, xmmword_29D2F1160));
      v167 = vsubq_s16(v417, vqtbl4q_s8(v481, xmmword_29D2F1100));
      v482.val[0] = v419;
      v482.val[1] = v420;
      v482.val[2] = v421;
      v482.val[3].i64[0] = v418.i64[0];
      v482.val[3].i64[1] = v16.i64[1];
      v481.val[1] = vsubq_s16(v419, vqtbl4q_s8(v482, xmmword_29D2F1170));
      v481.val[2] = vsubq_s16(v420, vqtbl4q_s8(v482, xmmword_29D2F1180));
      v481.val[3] = vsubq_s16(v421, vqtbl4q_s8(v482, xmmword_29D2F10B0));
      v168 = vsubq_s16(v418, vqtbl4q_s8(v482, xmmword_29D2F10C0));
      v480.val[0] = v422;
      v480.val[1] = v423;
      v480.val[2] = v424;
      v480.val[3].i64[0] = v425.i64[0];
      v480.val[3].i64[1] = v16.i64[1];
      v481.val[0] = vsubq_s16(v422, vqtbl4q_s8(v480, xmmword_29D2F1170));
      v482.val[0] = vsubq_s16(v423, vqtbl4q_s8(v480, xmmword_29D2F1120));
      v169 = vsubq_s16(v424, vqtbl4q_s8(v480, xmmword_29D2F10B0));
      v482.val[1].i64[0] = v163.i64[0];
      v482.val[1].i64[1] = v161.i64[0];
      v170 = vsubq_s16(v425, vqtbl4q_s8(v480, xmmword_29D2F10C0));
      v161.i64[0] = v163.i64[1];
      v171 = vshlq_n_s16(v482.val[1], 6uLL);
      v482.val[1] = vshlq_n_s16(v481.val[1], 6uLL);
      v482.val[3] = vshlq_n_s16(v481.val[2], 6uLL);
      v480.val[0] = vshlq_n_s16(v481.val[3], 6uLL);
      v480.val[1] = vshlq_n_s16(v168, 6uLL);
      v480.val[2] = vshlq_n_s16(v481.val[0], 6uLL);
      v172 = vshlq_n_s16(v170, 6uLL);
      v173 = vshrq_n_s16(vshlq_n_s16(v161, 6uLL), 6uLL);
      v174 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v14, vqtbl4q_s8(*v13.i8, xmmword_29D2F10C0)), 6uLL), 6uLL);
      v175 = vshrq_n_s16(vshlq_n_s16(v162, 6uLL), 6uLL);
      v176 = vshrq_n_s16(v171, 6uLL);
      v177 = vshrq_n_s16(vshlq_n_s16(v164, 6uLL), 6uLL);
      v178 = vshrq_n_s16(vshlq_n_s16(v165, 6uLL), 6uLL);
      v179 = vshrq_n_s16(vshlq_n_s16(v166, 6uLL), 6uLL);
      v180 = vshrq_n_s16(vshlq_n_s16(v167, 6uLL), 6uLL);
      v181 = vshrq_n_s16(v482.val[1], 6uLL);
      v182 = vshrq_n_s16(v482.val[3], 6uLL);
      v183 = vshrq_n_s16(v480.val[0], 6uLL);
      v184 = vshrq_n_s16(v480.val[1], 6uLL);
      v185 = vshrq_n_s16(v480.val[2], 6uLL);
      v186 = vshrq_n_s16(vshlq_n_s16(v482.val[0], 6uLL), 6uLL);
      v187 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v173, v174), v175), v176), xmmword_29D2F1150);
      v188 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v173, v174), v175), v176), xmmword_29D2F1150);
      v189 = vpmaxq_s16(v187, v187);
      v190 = vpminq_s16(v188, v188);
      v482.val[0].i64[0] = 0x8000800080008000;
      v482.val[0].i64[1] = 0x8000800080008000;
      v482.val[0] = vmaxq_s16(v189, v482.val[0]);
      v482.val[1].i64[0] = 0x8000800080008000;
      v482.val[1].i64[1] = 0x8000800080008000;
      v482.val[1] = vminq_s16(v190, v482.val[1]);
      v191 = vzip1q_s16(v189, v190);
      v189.i64[0] = 0x10001000100010;
      v189.i64[1] = 0x10001000100010;
      v482.val[3] = vbicq_s8(vsubq_s16(v189, vclsq_s16(v191)), vceqzq_s16(v191));
      v482.val[3] = vpmaxq_s16(v482.val[3], v482.val[3]);
      v480.val[0] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v177, v178), v179), v180), xmmword_29D2F1150);
      v480.val[1] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v177, v178), v179), v180), xmmword_29D2F1150);
      v480.val[0] = vpmaxq_s16(v480.val[0], v480.val[0]);
      v480.val[1] = vpminq_s16(v480.val[1], v480.val[1]);
      v482.val[0] = vmaxq_s16(v482.val[0], v480.val[0]);
      v482.val[1] = vminq_s16(v482.val[1], v480.val[1]);
      v480.val[0] = vzip1q_s16(v480.val[0], v480.val[1]);
      v480.val[0] = vbicq_s8(vsubq_s16(v189, vclsq_s16(v480.val[0])), vceqzq_s16(v480.val[0]));
      v480.val[0] = vpmaxq_s16(v480.val[0], v480.val[0]);
      v480.val[1] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v181, v182), v183), v184), xmmword_29D2F1150);
      v480.val[2] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v181, v182), v183), v184), xmmword_29D2F1150);
      v480.val[1] = vpmaxq_s16(v480.val[1], v480.val[1]);
      v480.val[2] = vpminq_s16(v480.val[2], v480.val[2]);
      v482.val[0] = vmaxq_s16(v482.val[0], v480.val[1]);
      v480.val[1] = vzip1q_s16(v480.val[1], v480.val[2]);
      v480.val[1] = vbicq_s8(vsubq_s16(v189, vclsq_s16(v480.val[1])), vceqzq_s16(v480.val[1]));
      v192 = vpmaxq_s16(v480.val[1], v480.val[1]);
      v441 = v186;
      v443 = v185;
      v445 = vshrq_n_s16(v172, 6uLL);
      v447 = vshrq_n_s16(vshlq_n_s16(v169, 6uLL), 6uLL);
      v480.val[1] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v185, v186), v447), v445), xmmword_29D2F1150);
      v193 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v185, v186), v447), v445), xmmword_29D2F1150);
      v480.val[1] = vpmaxq_s16(v480.val[1], v480.val[1]);
      v194 = vpminq_s16(v193, v193);
      v195 = vmaxq_s16(v482.val[0], v480.val[1]);
      v196 = vminq_s16(vminq_s16(v482.val[1], v480.val[2]), v194);
      v197 = vzip1q_s16(v480.val[1], v194);
      v198 = vbicq_s8(vsubq_s16(v189, vclsq_s16(v197)), vceqzq_s16(v197));
      v199 = vpmaxq_s16(v198, v198);
      v482.val[0] = vmaxq_s16(vmaxq_s16(v482.val[3], v480.val[0]), vmaxq_s16(v192, v199));
      v439 = v195;
      v200 = vclzq_s16(vsubq_s16(v195, v196));
      v482.val[1] = vsubq_s16(v189, v200);
      v201 = vcgtq_s16(v482.val[0], v482.val[1]);
      v202 = vminq_s16(v482.val[1], v482.val[0]);
      v482.val[0] = vsubq_s16(v202, v482.val[3]);
      v482.val[3].i64[0] = 0x3000300030003;
      v482.val[3].i64[1] = 0x3000300030003;
      v482.val[0] = vmaxq_s16(vminq_s16(v482.val[0], v482.val[3]), 0);
      v482.val[1] = vmaxq_s16(vminq_s16(vsubq_s16(v202, v480.val[0]), v482.val[3]), 0);
      v480.val[0] = vmaxq_s16(vminq_s16(vsubq_s16(v202, v192), v482.val[3]), 0);
      v203 = vmaxq_s16(vminq_s16(vsubq_s16(v202, v199), v482.val[3]), 0);
      v204 = vsubq_s16(v202, v482.val[0]);
      v205 = vsubq_s16(v202, v480.val[0]);
      v206 = vsubq_s16(v202, v203);
      v207 = vceqq_s16(vaddq_s16(v203, v480.val[0]), vnegq_s16(vaddq_s16(v482.val[0], v482.val[1])));
      v482.val[0].i64[0] = 0x4000400040004;
      v482.val[0].i64[1] = 0x4000400040004;
      v208 = vbicq_s8(v482.val[0], v207);
      v480.val[0].i64[0] = 0x7000700070007;
      v480.val[0].i64[1] = 0x7000700070007;
      v433 = v205;
      v435 = vsubq_s16(v202, v482.val[1]);
      v437 = v206;
      v209 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v202, v201), vaddq_s16(v208, v208)), v204, v480.val[0]), vshlq_n_s16(vaddq_s16(vaddq_s16(v205, v435), v206), 3uLL));
      v78 = v471;
      v149 = v472;
      v210.i64[0] = 0x2000200020002;
      v210.i64[1] = 0x2000200020002;
      v211 = vandq_s8(vceqq_s16(vandq_s8(v471, v482.val[3]), v210), v189);
      v482.val[3].i64[0] = 0x8000800080008;
      v482.val[3].i64[1] = 0x8000800080008;
      v212 = vandq_s8(vaddq_s16(v78, v78), v482.val[3]);
      v213 = vceqzq_s16(vandq_s8(v471, v482.val[3]));
      v146 = v475;
      v147 = v476;
      v214 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v476, v213), v212), v211), v472, v480.val[0]);
      v148 = v473;
      v151 = v474;
      v215 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v214, vshlq_n_s16(vaddq_s16(vaddq_s16(v474, v473), v475), 3uLL)), v209).i64[0], 0);
      if (vaddvq_s16(v215))
      {
        v216 = vextq_s8(v16, v16, 8uLL);
        v217.i64[0] = 0x9000900090009;
        v217.i64[1] = 0x9000900090009;
        v218 = vorrq_s8(vandq_s8(vceqzq_s16(v202), v210), vsubq_s16(vandq_s8(v201, v217), vmvnq_s8(v201)));
        v217.i64[0] = -1;
        v217.i64[1] = -1;
        v219.i64[0] = 0xF000F000F000FLL;
        v219.i64[1] = 0xF000F000F000FLL;
        v149 = vbslq_s8(v215, v204, v472);
        v148 = vbslq_s8(v215, v435, v473);
        v151 = vbslq_s8(v215, v433, v474);
        v146 = vbslq_s8(v215, v437, v475);
        v147 = vbslq_s8(v215, v202, v476);
        v78 = vbslq_s8(v215, vorrq_s8(v218, v208), v471);
        v469 = vbslq_s8(v215, v445, v469);
        v470 = vbslq_s8(v215, v216, v470);
        v450 = vbslq_s8(v215, v173, v450);
        v452 = vbslq_s8(v215, v174, v452);
        v454 = vbslq_s8(v215, v175, v454);
        v456 = vbslq_s8(v215, v176, v456);
        v458 = vbslq_s8(v215, v177, v458);
        v459 = vbslq_s8(v215, v178, v459);
        v460 = vbslq_s8(v215, v179, v460);
        v461 = vbslq_s8(v215, v180, v461);
        v462 = vbslq_s8(v215, v181, v462);
        v463 = vbslq_s8(v215, v182, v463);
        v464 = vbslq_s8(v215, v183, v464);
        v465 = vbslq_s8(v215, v184, v465);
        v466 = vbslq_s8(v215, v443, v466);
        v467 = vbslq_s8(v215, v441, v467);
        v468 = vbslq_s8(v215, v447, v468);
        v477 = vbslq_s8(v215, v196, v477);
        v478 = vbslq_s8(v215, v439, v478);
        v479 = vbslq_s8(v215, vandq_s8(vsubq_s16(vshlq_s16(v217, vsubq_s16(v219, v200)), v196), v201), v479);
        v472 = v149;
        v473 = v148;
        v474 = v151;
        v475 = v146;
        v476 = v147;
        v471 = v78;
      }
    }

    v220 = vandq_s8(v479, vceqq_s16(v147, v149));
    v451 = vaddq_s16(v220, v450);
    v453 = vaddq_s16(v452, v220);
    v455 = vaddq_s16(v454, v220);
    v457 = vaddq_s16(v456, v220);
    v221 = vandq_s8(v479, vceqq_s16(v147, v148));
    v458 = vaddq_s16(v458, v221);
    v459 = vaddq_s16(v459, v221);
    v460 = vaddq_s16(v460, v221);
    v461 = vaddq_s16(v461, v221);
    v222 = vandq_s8(v479, vceqq_s16(v147, v151));
    v462 = vaddq_s16(v462, v222);
    v463 = vaddq_s16(v463, v222);
    v464 = vaddq_s16(v464, v222);
    v465 = vaddq_s16(v465, v222);
    v223 = vandq_s8(v479, vceqq_s16(v147, v146));
    v466 = vaddq_s16(v466, v223);
    v467 = vaddq_s16(v467, v223);
    v468 = vaddq_s16(v468, v223);
    v469 = vaddq_s16(v469, v223);
    v223.i64[0] = 0x8000800080008;
    v223.i64[1] = 0x8000800080008;
    v224.i64[0] = 0x3000300030003;
    v224.i64[1] = 0x3000300030003;
    v225.i64[0] = 0x2000200020002;
    v225.i64[1] = 0x2000200020002;
    v226 = vceqq_s16(vandq_s8(v78, v224), v225);
    v225.i64[0] = 0x10001000100010;
    v225.i64[1] = 0x10001000100010;
    v227 = vandq_s8(v226, v225);
    v225.i64[0] = 0x7000700070007;
    v225.i64[1] = 0x7000700070007;
    v228 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v147, vceqzq_s16(vandq_s8(v78, v223))), vandq_s8(vaddq_s16(v78, v78), v223)), v227), v149, v225), vshlq_n_s16(vaddq_s16(vaddq_s16(v151, v148), v146), 3uLL));
    v229 = vpaddq_s16(v228, v228);
    if ((vpaddq_s16(v229, v229).i16[0] - 949) < 0xFFFFFFFFFFFFFBF8)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 128;
    }

    else
    {
      v230 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v231 = 8 * (a1 & 7);
      if (v231)
      {
        v232 = *v230 & ~(-1 << v231);
      }

      else
      {
        v232 = 0;
      }

      *a2 = 0;
      v236 = v470.i64[0];
      if (v147.i16[0])
      {
        v237 = ((v147.i8[0] - 1) & 0xF) << 20;
      }

      else
      {
        v237 = 0;
      }

      if (v147.i16[1])
      {
        v238 = ((v147.i8[2] - 1) & 0xF) << 24;
      }

      else
      {
        v238 = 0;
      }

      if (v147.i16[2])
      {
        v239 = (v147.u16[2] << 28) - 0x10000000;
      }

      else
      {
        v239 = 0;
      }

      if (v147.i16[3])
      {
        v240 = ((v147.i8[6] - 1) & 0xF) << 32;
      }

      else
      {
        v240 = 0;
      }

      v241 = (v78.i8[0] & 0x1F | (32 * (v78.i8[2] & 0x1F)) & 0x83FF | ((v78.i8[4] & 0x1F) << 10) | ((v78.i8[6] & 0x1F) << 15) | v237 | v238 | v239) + v240;
      v242 = (v241 << v231) | v232;
      if (v231 >= 0x1C)
      {
        *v230 = v242;
        v242 = v241 >> (-8 * (a1 & 7u));
      }

      v243 = v236 & 0x3FF | ((WORD1(v236) & 0x3FF) << 10) & 0xFFFFFFFFC00FFFFFLL | ((WORD2(v236) & 0x3FF) << 20) | ((HIWORD(v236) & 0x3FF) << 30);
      v244 = (v231 + 36) & 0x3C;
      v245 = v242 | (v243 << v244);
      if (v244 >= 0x18)
      {
        *(v230 + (((v231 + 36) >> 3) & 8)) = v245;
        v245 = v243 >> -v244;
      }

      v246 = v231 + 76;
      v247 = vsubq_s16(v476, v472);
      v248 = vsubq_s16(v476, v473);
      v249 = vsubq_s16(v476, v474);
      v250 = vsubq_s16(v476, v475);
      *v247.i8 = vqmovn_u16(v247);
      *v248.i8 = vqmovn_u16(v248);
      *v249.i8 = vqmovn_u16(v249);
      *v250.i8 = vqmovn_u16(v250);
      v251 = vtrn1q_s8(v247, v248);
      v252 = vtrn2q_s8(v247, v248);
      v253 = vtrn1q_s8(v249, v250);
      v254 = vtrn2q_s8(v249, v250);
      v255 = vzip1q_s16(v252, v254);
      v256 = vtrn2q_s16(v252, v254);
      v252.i64[0] = vzip1q_s32(vzip1q_s16(v251, v253), v255).u64[0];
      v256.i64[0] = vzip1q_s32(vtrn2q_s16(v251, v253), v256).u64[0];
      v249.i64[0] = 0x202020202020202;
      v249.i64[1] = 0x202020202020202;
      v257 = vandq_s8(vmovl_s16(vtst_s16(*v471.i8, 0x4000400040004)), v249);
      v249.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v249.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v251.i64[0] = -1;
      v251.i64[1] = -1;
      v258 = vshlq_u8(v251, vorrq_s8(v257, v249));
      v259 = vmovl_u8(vand_s8(*v258.i8, *v252.i8));
      v260 = vmovl_u8(vand_s8(*&vextq_s8(v258, v258, 8uLL), *v256.i8));
      v261 = vmovl_u8(*v257.i8);
      v262 = vmovl_high_u8(v257);
      v263 = vpaddq_s16(vshlq_u16(v259, vtrn1q_s16(0, v261)), vshlq_u16(v260, vtrn1q_s16(0, v262)));
      v264 = vpaddq_s16(v261, v262);
      v265 = vmovl_u16(*v264.i8);
      v266 = vmovl_high_u16(v264);
      v267 = vpaddq_s32(vshlq_u32(vmovl_u16(*v263.i8), vtrn1q_s32(0, v265)), vshlq_u32(vmovl_high_u16(v263), vtrn1q_s32(0, v266)));
      v268 = vpaddq_s32(v265, v266);
      v269.i64[0] = v267.u32[0];
      v269.i64[1] = v267.u32[1];
      v270 = v269;
      v269.i64[0] = v267.u32[2];
      v269.i64[1] = v267.u32[3];
      v271 = v269;
      v269.i64[0] = v268.u32[0];
      v269.i64[1] = v268.u32[1];
      v272 = v269;
      v269.i64[0] = v268.u32[2];
      v269.i64[1] = v268.u32[3];
      v273 = vpaddq_s64(vshlq_u64(v270, vzip1q_s64(0, v272)), vshlq_u64(v271, vzip1q_s64(0, v269)));
      v274 = vpaddq_s64(v272, v269);
      v275 = (v231 + 76) & 0x3C;
      v276 = (v273.i64[0] << v275) | v245;
      if ((v274.i64[0] + v275) >= 0x40)
      {
        *(v230 + ((v246 >> 3) & 0x18)) = v276;
        v276 = v273.i64[0] >> -v275;
      }

      v277 = v274.i64[0] + v246;
      v278 = v276 | (v273.i64[1] << v277);
      if ((v277 & 0x3F) + v274.i64[1] >= 0x40)
      {
        *(v230 + ((v277 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v278;
        v278 = v273.i64[1] >> -(v277 & 0x3F);
        if ((v277 & 0x3F) == 0)
        {
          v278 = 0;
        }
      }

      v279 = v277 + v274.i64[1];
      v280.i64[0] = 0x8000800080008;
      v280.i64[1] = 0x8000800080008;
      v281.i64[0] = -1;
      v281.i64[1] = -1;
      v282 = vandq_s8(vextq_s8(vtstq_s16(v471, v280), 0, 8uLL), v476);
      v283.i64[0] = 0xF000F000F000FLL;
      v283.i64[1] = 0xF000F000F000FLL;
      v284 = vandq_s8(vshlq_u16(v281, vaddq_s16(v282, v283)), v479);
      v285 = vmovl_u16(*v282.i8);
      v286 = vpaddq_s32(vshlq_u32(vmovl_u16(*v284.i8), vtrn1q_s32(0, v285)), vmovl_high_u16(v284));
      v287 = vpaddq_s32(v285, vmovl_high_u16(v282));
      v288.i64[0] = v286.u32[0];
      v288.i64[1] = v286.u32[1];
      v289 = v288;
      v288.i64[0] = v286.u32[2];
      v288.i64[1] = v286.u32[3];
      v290 = v288;
      v288.i64[0] = v287.u32[0];
      v288.i64[1] = v287.u32[1];
      v291 = v288;
      v288.i64[0] = v287.u32[2];
      v288.i64[1] = v287.u32[3];
      v292 = vpaddq_s64(vshlq_u64(v289, vzip1q_s64(0, v291)), vshlq_u64(v290, vzip1q_s64(0, v288)));
      v293 = vpaddq_s64(v291, v288);
      v294 = (v292.i64[0] << v279) | v278;
      if (v293.i64[0] + (v279 & 0x3F) >= 0x40)
      {
        *(v230 + ((v279 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v294;
        v294 = v292.i64[0] >> -(v279 & 0x3F);
        if ((v279 & 0x3F) == 0)
        {
          v294 = 0;
        }
      }

      v295 = v293.i64[0] + v279;
      v296 = v294 | (v292.i64[1] << v295);
      if ((v295 & 0x3F) + v293.i64[1] >= 0x40)
      {
        *(v230 + ((v295 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v296;
        v296 = v292.i64[1] >> -(v295 & 0x3F);
        if ((v295 & 0x3F) == 0)
        {
          v296 = 0;
        }
      }

      v297 = v295 + v293.i64[1];
      v298 = vextq_s8(0, v472, 8uLL);
      v299.i64[0] = 0xF000F000F000FLL;
      v299.i64[1] = 0xF000F000F000FLL;
      v300.i64[0] = -1;
      v300.i64[1] = -1;
      v301 = vandq_s8(vshlq_u16(v300, vaddq_s16(v298, v299)), v451);
      v302 = vmovl_u16(*v298.i8);
      v303 = vmovl_high_u16(v298);
      v304 = vpaddq_s32(vmovl_u16(*v301.i8), vshlq_u32(vmovl_high_u16(v301), vtrn1q_s32(0, v303)));
      v305 = vpaddq_s32(v302, v303);
      v306.i64[0] = v304.u32[0];
      v306.i64[1] = v304.u32[1];
      v307 = v306;
      v306.i64[0] = v304.u32[2];
      v306.i64[1] = v304.u32[3];
      v308 = v306;
      v306.i64[0] = v305.u32[0];
      v306.i64[1] = v305.u32[1];
      v309 = v306;
      v306.i64[0] = v305.u32[2];
      v306.i64[1] = v305.u32[3];
      v310 = vpaddq_s64(vshlq_u64(v307, vzip1q_s64(0, v309)), vshlq_u64(v308, vzip1q_s64(0, v306)));
      v311 = vpaddq_s64(v309, v306);
      v312 = (v310.i64[0] << v297) | v296;
      if (v311.i64[0] + (v297 & 0x3F) >= 0x40)
      {
        *(v230 + ((v297 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v312;
        v312 = v310.i64[0] >> -(v297 & 0x3F);
        if ((v297 & 0x3F) == 0)
        {
          v312 = 0;
        }
      }

      v313 = v311.i64[0] + v297;
      v314 = v312 | (v310.i64[1] << v313);
      if ((v313 & 0x3F) + v311.i64[1] >= 0x40)
      {
        *(v230 + ((v313 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v314;
        v314 = v310.i64[1] >> -(v313 & 0x3F);
        if ((v313 & 0x3F) == 0)
        {
          v314 = 0;
        }
      }

      v315 = v313 + v311.i64[1];
      v316.i64[0] = 0xF000F000F000FLL;
      v316.i64[1] = 0xF000F000F000FLL;
      v317.i64[0] = -1;
      v317.i64[1] = -1;
      v318 = vandq_s8(vshlq_u16(v317, vaddq_s16(v472, v316)), v453);
      v319 = vmovl_u16(*v472.i8);
      v320 = vmovl_high_u16(v472);
      v321 = vpaddq_s32(vshlq_u32(vmovl_u16(*v318.i8), vtrn1q_s32(0, v319)), vshlq_u32(vmovl_high_u16(v318), vtrn1q_s32(0, v320)));
      v322 = vpaddq_s32(v319, v320);
      v323.i64[0] = v321.u32[0];
      v323.i64[1] = v321.u32[1];
      v324 = v323;
      v323.i64[0] = v321.u32[2];
      v323.i64[1] = v321.u32[3];
      v325 = v323;
      v323.i64[0] = v322.u32[0];
      v323.i64[1] = v322.u32[1];
      v326 = v323;
      v323.i64[0] = v322.u32[2];
      v323.i64[1] = v322.u32[3];
      v327 = vpaddq_s64(vshlq_u64(v324, vzip1q_s64(0, v326)), vshlq_u64(v325, vzip1q_s64(0, v323)));
      v328 = vpaddq_s64(v326, v323);
      v329 = (v327.i64[0] << v315) | v314;
      if (v328.i64[0] + (v315 & 0x3F) >= 0x40)
      {
        *(v230 + ((v315 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v329;
        v329 = v327.i64[0] >> -(v315 & 0x3F);
        if ((v315 & 0x3F) == 0)
        {
          v329 = 0;
        }
      }

      v330 = v328.i64[0] + v315;
      v331 = v329 | (v327.i64[1] << v330);
      if ((v330 & 0x3F) + v328.i64[1] >= 0x40)
      {
        *(v230 + ((v330 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v331;
        v331 = v327.i64[1] >> -(v330 & 0x3F);
        if ((v330 & 0x3F) == 0)
        {
          v331 = 0;
        }
      }

      v332 = v330 + v328.i64[1];
      v333.i64[0] = 0xF000F000F000FLL;
      v333.i64[1] = 0xF000F000F000FLL;
      v334.i64[0] = -1;
      v334.i64[1] = -1;
      v335 = vandq_s8(vshlq_u16(v334, vaddq_s16(v472, v333)), v455);
      v336 = vmovl_u16(*v472.i8);
      v337 = vmovl_high_u16(v472);
      v338 = vpaddq_s32(vshlq_u32(vmovl_u16(*v335.i8), vtrn1q_s32(0, v336)), vshlq_u32(vmovl_high_u16(v335), vtrn1q_s32(0, v337)));
      v339 = vpaddq_s32(v336, v337);
      v340.i64[0] = v338.u32[0];
      v340.i64[1] = v338.u32[1];
      v341 = v340;
      v340.i64[0] = v338.u32[2];
      v340.i64[1] = v338.u32[3];
      v342 = v340;
      v340.i64[0] = v339.u32[0];
      v340.i64[1] = v339.u32[1];
      v343 = v340;
      v340.i64[0] = v339.u32[2];
      v340.i64[1] = v339.u32[3];
      v344 = vpaddq_s64(vshlq_u64(v341, vzip1q_s64(0, v343)), vshlq_u64(v342, vzip1q_s64(0, v340)));
      v345 = vpaddq_s64(v343, v340);
      v346 = (v344.i64[0] << v332) | v331;
      if (v345.i64[0] + (v332 & 0x3F) >= 0x40)
      {
        *(v230 + ((v332 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v346;
        v346 = v344.i64[0] >> -(v332 & 0x3F);
        if ((v332 & 0x3F) == 0)
        {
          v346 = 0;
        }
      }

      v347 = v345.i64[0] + v332;
      v348 = v346 | (v344.i64[1] << v347);
      if ((v347 & 0x3F) + v345.i64[1] >= 0x40)
      {
        *(v230 + ((v347 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v348;
        v348 = v344.i64[1] >> -(v347 & 0x3F);
        if ((v347 & 0x3F) == 0)
        {
          v348 = 0;
        }
      }

      v349 = v347 + v345.i64[1];
      v350.i64[0] = 0xF000F000F000FLL;
      v350.i64[1] = 0xF000F000F000FLL;
      v351.i64[0] = -1;
      v351.i64[1] = -1;
      v352 = vandq_s8(vshlq_u16(v351, vaddq_s16(v472, v350)), v457);
      v353 = vmovl_u16(*v472.i8);
      v354 = vmovl_high_u16(v472);
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
      if (v362.i64[0] + (v349 & 0x3F) >= 0x40)
      {
        *(v230 + ((v349 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v363;
        v363 = v361.i64[0] >> -(v349 & 0x3F);
        if ((v349 & 0x3F) == 0)
        {
          v363 = 0;
        }
      }

      v364 = v362.i64[1];
      v365 = v362.i64[0] + v349;
      v366 = (v362.i64[0] + v349) & 0x3F;
      v367 = v363 | (v361.i64[1] << v365);
      if ((v366 + v362.i64[1]) >= 0x40)
      {
        *(v230 + ((v365 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v367;
        v367 = v361.i64[1] >> -v366;
        if (!v366)
        {
          v367 = 0;
        }
      }

      v368 = 0;
      v369.i64[0] = 0xF000F000F000FLL;
      v369.i64[1] = 0xF000F000F000FLL;
      v370.i64[0] = -1;
      v370.i64[1] = -1;
      v371 = v365 + v364;
      do
      {
        v372 = vandq_s8(vshlq_u16(v370, vaddq_s16(v473, v369)), *(&v458 + v368));
        v373 = vmovl_u16(*v473.i8);
        v374 = vmovl_high_u16(v473);
        v375 = vpaddq_s32(vshlq_u32(vmovl_u16(*v372.i8), vtrn1q_s32(0, v373)), vshlq_u32(vmovl_high_u16(v372), vtrn1q_s32(0, v374)));
        v376 = vpaddq_s32(v373, v374);
        v377.i64[0] = v375.u32[0];
        v377.i64[1] = v375.u32[1];
        v378 = v377;
        v377.i64[0] = v375.u32[2];
        v377.i64[1] = v375.u32[3];
        v379 = v377;
        v377.i64[0] = v376.u32[0];
        v377.i64[1] = v376.u32[1];
        v380 = v377;
        v377.i64[0] = v376.u32[2];
        v377.i64[1] = v376.u32[3];
        v381 = vpaddq_s64(vshlq_u64(v378, vzip1q_s64(0, v380)), vshlq_u64(v379, vzip1q_s64(0, v377)));
        v382 = vpaddq_s64(v380, v377);
        v383 = (v381.i64[0] << v371) | v367;
        if (v382.i64[0] + (v371 & 0x3F) >= 0x40)
        {
          *(v230 + ((v371 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
          v383 = v381.i64[0] >> -(v371 & 0x3F);
          if ((v371 & 0x3F) == 0)
          {
            v383 = 0;
          }
        }

        v384 = v382.i64[0] + v371;
        v367 = v383 | (v381.i64[1] << v384);
        if ((v384 & 0x3F) + v382.i64[1] >= 0x40)
        {
          *(v230 + ((v384 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v367;
          v367 = v381.i64[1] >> -(v384 & 0x3F);
          if ((v384 & 0x3F) == 0)
          {
            v367 = 0;
          }
        }

        v371 = v384 + v382.i64[1];
        v368 += 16;
      }

      while (v368 != 64);
      v385 = 0;
      v386.i64[0] = 0xF000F000F000FLL;
      v386.i64[1] = 0xF000F000F000FLL;
      v387.i64[0] = -1;
      v387.i64[1] = -1;
      do
      {
        v388 = vandq_s8(vshlq_u16(v387, vaddq_s16(v474, v386)), *(&v462 + v385));
        v389 = vmovl_u16(*v474.i8);
        v390 = vmovl_high_u16(v474);
        v391 = vpaddq_s32(vshlq_u32(vmovl_u16(*v388.i8), vtrn1q_s32(0, v389)), vshlq_u32(vmovl_high_u16(v388), vtrn1q_s32(0, v390)));
        v392 = vpaddq_s32(v389, v390);
        v393.i64[0] = v391.u32[0];
        v393.i64[1] = v391.u32[1];
        v394 = v393;
        v393.i64[0] = v391.u32[2];
        v393.i64[1] = v391.u32[3];
        v395 = v393;
        v393.i64[0] = v392.u32[0];
        v393.i64[1] = v392.u32[1];
        v396 = v393;
        v393.i64[0] = v392.u32[2];
        v393.i64[1] = v392.u32[3];
        v397 = vpaddq_s64(vshlq_u64(v394, vzip1q_s64(0, v396)), vshlq_u64(v395, vzip1q_s64(0, v393)));
        v398 = vpaddq_s64(v396, v393);
        v399 = (v397.i64[0] << v371) | v367;
        if (v398.i64[0] + (v371 & 0x3F) >= 0x40)
        {
          *(v230 + ((v371 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v399;
          v399 = v397.i64[0] >> -(v371 & 0x3F);
          if ((v371 & 0x3F) == 0)
          {
            v399 = 0;
          }
        }

        v400 = v398.i64[0] + v371;
        v367 = v399 | (v397.i64[1] << v400);
        if ((v400 & 0x3F) + v398.i64[1] >= 0x40)
        {
          *(v230 + ((v400 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v367;
          v367 = v397.i64[1] >> -(v400 & 0x3F);
          if ((v400 & 0x3F) == 0)
          {
            v367 = 0;
          }
        }

        v371 = v400 + v398.i64[1];
        v385 += 16;
      }

      while (v385 != 64);
      v401 = 0;
      v402.i64[0] = 0xF000F000F000FLL;
      v402.i64[1] = 0xF000F000F000FLL;
      v403.i64[0] = -1;
      v403.i64[1] = -1;
      do
      {
        v404 = vandq_s8(vshlq_u16(v403, vaddq_s16(v475, v402)), *(&v466 + v401));
        v405 = vmovl_u16(*v475.i8);
        v406 = vmovl_high_u16(v475);
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
        v415 = (v413.i64[0] << v371) | v367;
        if (v414.i64[0] + (v371 & 0x3F) >= 0x40)
        {
          *(v230 + ((v371 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v415;
          v415 = v413.i64[0] >> -(v371 & 0x3F);
          if ((v371 & 0x3F) == 0)
          {
            v415 = 0;
          }
        }

        v416 = v414.i64[0] + v371;
        v367 = v415 | (v413.i64[1] << v416);
        if ((v416 & 0x3F) + v414.i64[1] >= 0x40)
        {
          *(v230 + ((v416 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v367;
          v367 = v413.i64[1] >> -(v416 & 0x3F);
          if ((v416 & 0x3F) == 0)
          {
            v367 = 0;
          }
        }

        v371 = v416 + v414.i64[1];
        v401 += 16;
      }

      while (v401 != 64);
      if ((v371 & 0x3F) != 0)
      {
        *(v230 + ((v371 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v367;
      }

      result = (v371 - v231 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    v233 = vld1q_dup_f64(a3->i64);
    v234 = vorrq_s8(vandq_s8(vshlq_u64(v233, xmmword_29D2F1440), xmmword_29D2F1470), vandq_s8(vshlq_u64(v233, xmmword_29D2F1450), xmmword_29D2F1460));
    *v234.i8 = vorr_s8(*v234.i8, *&vextq_s8(v234, v234, 8uLL));
    *a1 = v234.i32[0];
    *(a1 + 4) = v234.i8[4];
    *a2 = 4;
    return 5;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v77 = *MEMORY[0x29EDCA608];
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
  if (a6 && a5)
  {
    if (a5 > 1)
    {
      v15 = a5 & 0x7E;
      if (a5 == v15)
      {
        v16 = 0;
        v17.i64[0] = 0xFC00FC00FC00FC00;
        v17.i64[1] = 0xFC00FC00FC00FC00;
        do
        {
          v18 = (&v63 + 4 * (v16 & 0x7F));
          v19 = a3;
          v20 = a5;
          do
          {
            v78 = vld2q_f64(v19);
            v19 += 4;
            v18[-2] = vandq_s8(vshrq_n_u64(v78.val[0], 6uLL), v17);
            *v18++ = vandq_s8(vshrq_n_u64(v78.val[1], 6uLL), v17);
            v20 -= 2;
          }

          while (v20);
          ++v16;
          a3 += a4;
        }

        while (v16 != a6);
      }

      else
      {
        v21 = 0;
        v22 = &v63 + ((a5 >> 1) & 0x3F);
        v23.i64[0] = 0xFC00FC00FC00FC00;
        v23.i64[1] = 0xFC00FC00FC00FC00;
        v24 = a3;
        do
        {
          v25 = (v21 & 0x7F) << 6;
          v26 = (v22 + v25);
          v27 = (&v63 + v25);
          v28 = v24;
          v29 = a5 & 0x7E;
          do
          {
            v79 = vld2q_f64(v28);
            v28 += 4;
            v27[-2] = vandq_s8(vshrq_n_u64(v79.val[0], 6uLL), v23);
            *v27++ = vandq_s8(vshrq_n_u64(v79.val[1], 6uLL), v23);
            v29 -= 2;
          }

          while (v29);
          v30 = (a3 + v21 * a4 + 16 * v15);
          v31 = a5 - v15;
          do
          {
            v32 = *v30;
            v33 = v30[1];
            v30 += 2;
            *(v26 - 4) = (v32 >> 6) & 0x3FF03FF03FF03FFLL;
            *v26++ = (v33 >> 6) & 0x3FF03FF03FF03FFLL;
            --v31;
          }

          while (v31);
          ++v21;
          v24 = (v24 + a4);
        }

        while (v21 != a6);
      }
    }

    else
    {
      v11 = 0;
      v12 = (a3 + 8);
      do
      {
        v13 = *v12;
        v14 = (&v61 + 2 * (v11 & 0xFE));
        *v14 = (*(v12 - 1) >> 6) & 0x3FF03FF03FF03FFLL;
        v14[4] = (v13 >> 6) & 0x3FF03FF03FF03FFLL;
        v11 += 2;
        v12 = (v12 + a4);
      }

      while (2 * a6 != v11);
    }
  }

  v53 = vmovl_u16(*&v61);
  v54 = vmovl_u16(*&v63);
  v55 = vmovl_u16(*(&v61 + 8));
  v56 = vmovl_u16(*(&v63 + 8));
  v57 = vmovl_u16(*&v65);
  v58 = vmovl_u16(*&v67);
  v34 = 2 * (a5 & 0x7F);
  v35 = vmovl_u16(*(&v65 + 8));
  v36 = vmovl_u16(*(&v67 + 8));
  if (v34 >= 4)
  {
    v37 = 4;
  }

  else
  {
    v37 = 2 * (a5 & 0x7F);
  }

  if (v34 >= 4)
  {
    v38 = v34 - 4;
  }

  else
  {
    v38 = 0;
  }

  if (a6 >= 2)
  {
    v39 = 2;
  }

  else
  {
    v39 = a6;
  }

  v59 = v35;
  v60 = v36;
  if (a6 >= 2)
  {
    v40 = a6 - 2;
  }

  else
  {
    v40 = 0;
  }

  v41 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1, &v53, a7, v37, v39);
  v53 = vmovl_u16(*&v62);
  v54 = vmovl_u16(*&v64);
  v55 = vmovl_u16(*(&v62 + 8));
  v56 = vmovl_u16(*(&v64 + 8));
  v57 = vmovl_u16(*&v66);
  v58 = vmovl_u16(*&v68);
  v59 = vmovl_u16(*(&v66 + 8));
  v60 = vmovl_u16(*(&v68 + 8));
  if (a6 >= 4)
  {
    v42 = 2;
  }

  else
  {
    v42 = v40;
  }

  v43 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 32, &v53, a7, v37, v42);
  v53 = vmovl_u16(*&v69);
  v54 = vmovl_u16(*&v71);
  v55 = vmovl_u16(*(&v69 + 8));
  v56 = vmovl_u16(*(&v71 + 8));
  v57 = vmovl_u16(*&v73);
  v58 = vmovl_u16(*&v75);
  v44 = vmovl_u16(*(&v73 + 8));
  v45 = vmovl_u16(*(&v75 + 8));
  if (a5 >= 4)
  {
    v46 = 4;
  }

  else
  {
    v46 = v38;
  }

  v59 = v44;
  v60 = v45;
  v47 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 64, &v53, a7, v46, v39);
  v53 = vmovl_u16(*&v70);
  v54 = vmovl_u16(*&v72);
  v55 = vmovl_u16(*(&v70 + 8));
  v56 = vmovl_u16(*(&v72 + 8));
  v57 = vmovl_u16(*&v74);
  v58 = vmovl_u16(*&v76);
  v59 = vmovl_u16(*(&v74 + 8));
  v60 = vmovl_u16(*(&v76 + 8));
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 96, &v53, a7, v46, v42);
  if (v47)
  {
    v49 = 4;
  }

  else
  {
    v49 = 0;
  }

  if (v43)
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

  *a2 = v51 | v49 | v41 | v50;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(_OWORD *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v718 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    result = 0;
    v11 = 0uLL;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    v12 = (a1 + a2);
    v12[2] = 0u;
    v12[3] = 0u;
    *v12 = 0u;
    v12[1] = 0u;
    v13 = (a1 + 2 * a2);
    v13[2] = 0u;
    v13[3] = 0u;
    *v13 = 0u;
    v13[1] = 0u;
    v14 = (a1 + 2 * a2 + a2);
    v14[2] = 0u;
    v14[3] = 0u;
LABEL_6:
    *v14 = v11;
    v14[1] = v11;
    return result;
  }

  v7 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(a3, &v679, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(a3, &v679, a5);
    }

    *v687.i8 = vmovn_s32(v679);
    v687.u64[1] = vmovn_s32(v681);
    *v689.i8 = vmovn_s32(v680);
    v689.u64[1] = vmovn_s32(v682);
    v691 = vmovn_s32(v683);
    v692 = vmovn_s32(v685);
    v695 = vmovn_s32(v684);
    v696 = vmovn_s32(v686);
    v21 = a3 + 32;
    if ((v7 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v21, &v679, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v21, &v679, a5);
    }

    *v688.i8 = vmovn_s32(v679);
    v688.u64[1] = vmovn_s32(v681);
    *v690.i8 = vmovn_s32(v680);
    v690.u64[1] = vmovn_s32(v682);
    v693 = vmovn_s32(v683);
    v694 = vmovn_s32(v685);
    v697 = vmovn_s32(v684);
    v698 = vmovn_s32(v686);
    v22 = a3 + 64;
    if ((v7 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v22, &v679, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v22, &v679, a5);
    }

    v699 = vmovn_s32(v679);
    v700 = vmovn_s32(v681);
    v703 = vmovn_s32(v680);
    v704 = vmovn_s32(v682);
    *v707.i8 = vmovn_s32(v683);
    v707.u64[1] = vmovn_s32(v685);
    *v709.i8 = vmovn_s32(v684);
    v709.u64[1] = vmovn_s32(v686);
    v23 = a3 + 96;
    if ((v7 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v23, &v679, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v23, &v679, a5);
    }

    v701 = vmovn_s32(v679);
    v702 = vmovn_s32(v681);
    v705 = vmovn_s32(v680);
    v706 = vmovn_s32(v682);
    *v708.i8 = vmovn_s32(v683);
    v708.u64[1] = vmovn_s32(v685);
    v24 = (a1 + 2);
    v25 = 31;
    *v710.i8 = vmovn_s32(v684);
    v710.u64[1] = vmovn_s32(v686);
    do
    {
      v26 = (((v685.i16[v25 + 1] & 0x3FF) << 6) | (v685.u16[v25 + 2] << 22) | (v685.u16[v25 + 3] << 38)) & 0xFFC0FFC0FFC0 | (v685.u16[v25 + 4] << 54);
      *(v24 - 4) = (((v683.i16[v25 + 1] & 0x3FF) << 6) | (v683.u16[v25 + 2] << 22) | (v683.u16[v25 + 3] << 38)) & 0xFFC0FFC0FFC0 | (v683.u16[v25 + 4] << 54);
      *(v24 - 3) = v26;
      v27 = (((v685.i16[v25 + 5] & 0x3FF) << 6) | (v685.u16[v25 + 6] << 22) | (v685.u16[v25 + 7] << 38)) & 0xFFC0FFC0FFC0 | (v686.u16[v25] << 54);
      *(v24 - 2) = (((v683.i16[v25 + 5] & 0x3FF) << 6) | (v683.u16[v25 + 6] << 22) | (v683.u16[v25 + 7] << 38)) & 0xFFC0FFC0FFC0 | (v684.u16[v25] << 54);
      *(v24 - 1) = v27;
      v28 = (((v686.i16[v25 + 1] & 0x3FF) << 6) | (v686.u16[v25 + 2] << 22) | (v686.u16[v25 + 3] << 38)) & 0xFFC0FFC0FFC0 | (v686.u16[v25 + 4] << 54);
      *v24 = (((v684.i16[v25 + 1] & 0x3FF) << 6) | (v684.u16[v25 + 2] << 22) | (v684.u16[v25 + 3] << 38)) & 0xFFC0FFC0FFC0 | (v684.u16[v25 + 4] << 54);
      v24[1] = v28;
      v29 = (((v686.i16[v25 + 5] & 0x3FF) << 6) | (v686.u16[v25 + 6] << 22) | (v686.u16[v25 + 7] << 38)) & 0xFFC0FFC0FFC0 | (v687.u16[v25] << 54);
      v24[2] = (((v684.i16[v25 + 5] & 0x3FF) << 6) | (v684.u16[v25 + 6] << 22) | (v684.u16[v25 + 7] << 38)) & 0xFFC0FFC0FFC0 | (v685.u16[v25] << 54);
      v24[3] = v29;
      v25 += 32;
      v24 = (v24 + a2);
    }

    while (v25 != 159);
    return 128;
  }

  if (a4 == 159)
  {
    v30.i64[0] = 0xA000A000A000ALL;
    v30.i64[1] = 0xA000A000A000ALL;
    v31 = vmovl_u16(*&vpaddq_s16(v30, v30));
    v30.i64[0] = vpaddq_s32(v31, v31).u64[0];
    v32.i64[0] = v30.u32[0];
    v32.i64[1] = v30.u32[1];
    v33 = v32;
    v34 = vaddvq_s64(v32);
    v35 = v34;
    v36 = 0uLL;
    if (v34 > 0x80)
    {
      v250 = 0uLL;
      v251 = 0uLL;
      v252 = 0uLL;
      v242 = 0uLL;
      v243 = 0uLL;
      v244 = 0uLL;
      v245 = 0uLL;
      v249 = 0uLL;
      v248 = 0uLL;
      v247 = 0uLL;
      v246 = 0uLL;
      v259 = 0uLL;
      v258 = 0uLL;
      v257 = 0uLL;
      v256 = 0uLL;
    }

    else
    {
      v37 = (a3 & 0xFFFFFFFFFFFFFFF8);
      v38 = vzip1q_s64(0, v33);
      v39 = 8 * (a3 & 7);
      v40 = v34 + v39;
      v41 = vaddq_s64(v38, vdupq_n_s64(v39));
      v42 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v41)), vshlq_u64(vdupq_lane_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 0), vnegq_s64(v41)));
      if (v40 >= 0x81)
      {
        v42 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v37[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v41)), vshlq_u64(vdupq_laneq_s64(v37[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v41))), v42);
      }

      v43 = v40 & 0x3F;
      v44 = (v37 + 8 * (v40 >> 6));
      v45 = vaddq_s64(v38, vdupq_n_s64(v43));
      v46 = v35 + v40;
      v47 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v44, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v45)), vshlq_u64(vdupq_lane_s64(v44->i64[0], 0), vnegq_s64(v45)));
      if (v35 + v43 >= 0x81)
      {
        v47 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v44[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v45)), vshlq_u64(vdupq_laneq_s64(v44[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v45))), v47);
      }

      v48 = v46 & 0x3F;
      v49 = (v37 + 8 * (v46 >> 6));
      v50 = vaddq_s64(v38, vdupq_n_s64(v48));
      v51 = v35 + v46;
      v52 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v49, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v50)), vshlq_u64(vdupq_lane_s64(v49->i64[0], 0), vnegq_s64(v50)));
      if (v35 + v48 >= 0x81)
      {
        v52 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v49[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v50)), vshlq_u64(vdupq_laneq_s64(v49[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v50))), v52);
      }

      v53 = v51 & 0x3F;
      v54 = (v37 + 8 * (v51 >> 6));
      v55 = vaddq_s64(v38, vdupq_n_s64(v53));
      v56 = v35 + v51;
      v57 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v54, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v55)), vshlq_u64(vdupq_lane_s64(v54->i64[0], 0), vnegq_s64(v55)));
      if (v35 + v53 >= 0x81)
      {
        v57 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v54[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v55)), vshlq_u64(vdupq_laneq_s64(v54[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v55))), v57);
      }

      v58 = vextq_s8(v31, v31, 8uLL).u64[0];
      v59 = v56 & 0x3F;
      v60 = (v37 + 8 * (v56 >> 6));
      v61 = vaddq_s64(v38, vdupq_n_s64(v59));
      v62 = v35 + v56;
      v63 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v60, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v61)), vshlq_u64(vdupq_lane_s64(v60->i64[0], 0), vnegq_s64(v61)));
      if (v35 + v59 >= 0x81)
      {
        v63 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v60[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v61)), vshlq_u64(vdupq_laneq_s64(v60[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v61))), v63);
      }

      v64 = v62 & 0x3F;
      v65 = (v37 + 8 * (v62 >> 6));
      v66 = vaddq_s64(v38, vdupq_n_s64(v64));
      v67 = v35 + v62;
      v68 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v65, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v66)), vshlq_u64(vdupq_lane_s64(v65->i64[0], 0), vnegq_s64(v66)));
      if (v35 + v64 >= 0x81)
      {
        v68 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v65[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v66)), vshlq_u64(vdupq_laneq_s64(v65[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v66))), v68);
      }

      v69 = vzip1_s32(*v31.i8, v58);
      v70 = v67 & 0x3F;
      v71 = (v37 + 8 * (v67 >> 6));
      v72 = vaddq_s64(v38, vdupq_n_s64(v70));
      v73 = v35 + v67;
      v74 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v71, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v72)), vshlq_u64(vdupq_lane_s64(v71->i64[0], 0), vnegq_s64(v72)));
      if (v35 + v70 >= 0x81)
      {
        v74 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v71[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v72)), vshlq_u64(vdupq_laneq_s64(v71[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v72))), v74);
      }

      v75.i64[0] = v69.u32[0];
      v75.i64[1] = v69.u32[1];
      v76 = v75;
      v77 = v73 & 0x3F;
      v78 = (v37 + 8 * (v73 >> 6));
      v79 = vaddq_s64(v38, vdupq_n_s64(v77));
      v80 = v35 + v73;
      v81 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v78, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v79)), vshlq_u64(vdupq_lane_s64(v78->i64[0], 0), vnegq_s64(v79)));
      if (v35 + v77 >= 0x81)
      {
        v81 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v78[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v79)), vshlq_u64(vdupq_laneq_s64(v78[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v79))), v81);
      }

      v82 = vnegq_s64(v76);
      v83 = v80 & 0x3F;
      v84 = (v37 + 8 * (v80 >> 6));
      v85 = vaddq_s64(v38, vdupq_n_s64(v83));
      v86 = v35 + v80;
      v87 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v84, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v85)), vshlq_u64(vdupq_lane_s64(v84->i64[0], 0), vnegq_s64(v85)));
      if (v35 + v83 >= 0x81)
      {
        v87 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v84[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v85)), vshlq_u64(vdupq_laneq_s64(v84[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v85))), v87);
      }

      v88 = vshlq_u64(v42, v82);
      v89 = vshlq_u64(v47, v82);
      v90 = vshlq_u64(v52, v82);
      v91 = vshlq_u64(v57, v82);
      v92 = vshlq_u64(v63, v82);
      v93 = vshlq_u64(v68, v82);
      v94 = vshlq_u64(v74, v82);
      v95 = vshlq_u64(v81, v82);
      v96 = vshlq_u64(v87, v82);
      v97 = v86 & 0x3F;
      v98 = (v37 + 8 * (v86 >> 6));
      v99 = vaddq_s64(v38, vdupq_n_s64(v97));
      v100 = v35 + v86;
      v101 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v98, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v99)), vshlq_u64(vdupq_lane_s64(v98->i64[0], 0), vnegq_s64(v99)));
      if (v35 + v97 >= 0x81)
      {
        v101 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v98[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v99)), vshlq_u64(vdupq_laneq_s64(v98[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v99))), v101);
      }

      v102 = vzip2q_s64(v42, v88);
      v103 = vzip1q_s64(v42, v88);
      v104 = vzip2q_s64(v47, v89);
      v105 = vzip1q_s64(v47, v89);
      v106 = vzip2q_s64(v52, v90);
      v107 = vzip1q_s64(v52, v90);
      v108 = vzip2q_s64(v57, v91);
      v109 = vzip1q_s64(v57, v91);
      v110 = vzip2q_s64(v63, v92);
      v111 = vzip1q_s64(v63, v92);
      v112 = vzip2q_s64(v68, v93);
      v113 = vzip1q_s64(v68, v93);
      v114 = vzip2q_s64(v74, v94);
      v115 = vzip1q_s64(v74, v94);
      v116 = vzip2q_s64(v81, v95);
      v117 = vzip1q_s64(v81, v95);
      v118 = vzip2q_s64(v87, v96);
      v119 = vzip1q_s64(v87, v96);
      v120 = vshlq_u64(v101, v82);
      v121 = vzip2q_s64(v101, v120);
      v122 = vzip1q_s64(v101, v120);
      v123 = (v37 + 8 * (v100 >> 6));
      v124 = vaddq_s64(v38, vdupq_n_s64(v100 & 0x3F));
      v125 = v35 + v100;
      v126 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v123, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v124)), vshlq_u64(vdupq_lane_s64(v123->i64[0], 0), vnegq_s64(v124)));
      if (v35 + (v100 & 0x3F) >= 0x81)
      {
        v126 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v123[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v124)), vshlq_u64(vdupq_laneq_s64(v123[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v124))), v126);
      }

      v127 = vuzp1q_s32(v103, v102);
      v128 = vuzp1q_s32(v105, v104);
      v129 = vuzp1q_s32(v107, v106);
      v130 = vuzp1q_s32(v109, v108);
      v131 = vuzp1q_s32(v111, v110);
      v132 = vuzp1q_s32(v113, v112);
      v133 = vuzp1q_s32(v115, v114);
      v134 = vuzp1q_s32(v117, v116);
      v135 = vuzp1q_s32(v119, v118);
      v136 = vuzp1q_s32(v122, v121);
      v137 = vshlq_u64(v126, v82);
      v138 = vuzp1q_s32(vzip1q_s64(v126, v137), vzip2q_s64(v126, v137));
      v139 = v35 + v125;
      v140 = v125 & 0x3F;
      v141 = vaddq_s64(v38, vdupq_n_s64(v140));
      v142 = (v37 + 8 * (v125 >> 6));
      v143 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v142, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v141)), vshlq_u64(vdupq_lane_s64(v142->i64[0], 0), vnegq_s64(v141)));
      if (v35 + v140 >= 0x81)
      {
        v143 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v142[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v141)), vshlq_u64(vdupq_laneq_s64(v142[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v141))), v143);
      }

      v144 = vshrq_n_u32(v127, 0xAuLL);
      v145 = vshrq_n_u32(v128, 0xAuLL);
      v146 = vshrq_n_u32(v129, 0xAuLL);
      v147 = vshrq_n_u32(v130, 0xAuLL);
      v148 = vshrq_n_u32(v131, 0xAuLL);
      v149 = vshrq_n_u32(v132, 0xAuLL);
      v150 = vshrq_n_u32(v133, 0xAuLL);
      v151 = vshrq_n_u32(v134, 0xAuLL);
      v152 = vshrq_n_u32(v135, 0xAuLL);
      v153 = vshrq_n_u32(v136, 0xAuLL);
      v154 = vshrq_n_u32(v138, 0xAuLL);
      v155 = vshlq_u64(v143, v82);
      v156 = vuzp1q_s32(vzip1q_s64(v143, v155), vzip2q_s64(v143, v155));
      v157 = vshrq_n_u32(v156, 0xAuLL);
      v158 = v139 & 0x3F;
      v159 = (v37 + 8 * (v139 >> 6));
      v160 = vaddq_s64(v38, vdupq_n_s64(v158));
      v161 = v35 + v139;
      v162 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v159, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v160)), vshlq_u64(vdupq_lane_s64(v159->i64[0], 0), vnegq_s64(v160)));
      if (v35 + v158 >= 0x81)
      {
        v162 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v159[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v160)), vshlq_u64(vdupq_laneq_s64(v159[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v160))), v162);
      }

      v163 = vzip2q_s32(v127, v144);
      v164 = vzip1q_s32(v127, v144);
      v675 = vzip1q_s32(v128, v145);
      v677 = vzip2q_s32(v128, v145);
      v165 = vzip2q_s32(v129, v146);
      v166 = vzip1q_s32(v129, v146);
      v167 = vzip2q_s32(v130, v147);
      v168 = vzip1q_s32(v130, v147);
      v169 = vzip2q_s32(v131, v148);
      v170 = vzip1q_s32(v131, v148);
      v171 = vzip2q_s32(v132, v149);
      v172 = vzip1q_s32(v132, v149);
      v173 = vzip2q_s32(v133, v150);
      v174 = vzip1q_s32(v133, v150);
      v175 = vzip2q_s32(v134, v151);
      v176 = vzip1q_s32(v134, v151);
      v177 = vzip2q_s32(v135, v152);
      v178 = vzip1q_s32(v135, v152);
      v179 = vzip2q_s32(v136, v153);
      v180 = vzip1q_s32(v136, v153);
      v181 = vzip2q_s32(v138, v154);
      v182 = vzip1q_s32(v138, v154);
      v183 = vzip2q_s32(v156, v157);
      v184 = vzip1q_s32(v156, v157);
      v185 = vshlq_u64(v162, v82);
      v186 = vuzp1q_s32(vzip1q_s64(v162, v185), vzip2q_s64(v162, v185));
      v187 = vshrq_n_u32(v186, 0xAuLL);
      v188 = vzip2q_s32(v186, v187);
      v189 = vzip1q_s32(v186, v187);
      v190 = vaddq_s64(v38, vdupq_n_s64(v161 & 0x3F));
      v191 = (v37 + 8 * (v161 >> 6));
      v192.i64[0] = 0x1000100010001;
      v192.i64[1] = 0x1000100010001;
      v193 = vshlq_n_s16(v192, 0xAuLL);
      v194 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v191, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v190)), vshlq_u64(vdupq_lane_s64(v191->i64[0], 0), vnegq_s64(v190)));
      v195.i64[0] = -1;
      v195.i64[1] = -1;
      v196 = v35 + v161;
      if (v35 + (v161 & 0x3F) >= 0x81)
      {
        v195.i64[0] = -1;
        v195.i64[1] = -1;
        v194 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v191[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v190)), vshlq_u64(vdupq_laneq_s64(v191[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v190))), v194);
      }

      v197 = vaddq_s16(v193, v195);
      v198 = vuzp1q_s16(v164, v163);
      v199 = vuzp1q_s16(v675, v677);
      v200 = vuzp1q_s16(v166, v165);
      v201 = vuzp1q_s16(v168, v167);
      v202 = vuzp1q_s16(v170, v169);
      v203 = vuzp1q_s16(v172, v171);
      v204 = vuzp1q_s16(v174, v173);
      v205 = vuzp1q_s16(v176, v175);
      v206 = vuzp1q_s16(v178, v177);
      v207 = vuzp1q_s16(v180, v179);
      v208 = vuzp1q_s16(v182, v181);
      v209 = vuzp1q_s16(v184, v183);
      v210 = vuzp1q_s16(v189, v188);
      v211 = vshlq_u64(v194, v82);
      v212 = vuzp1q_s32(vzip1q_s64(v194, v211), vzip2q_s64(v194, v211));
      v213 = vshrq_n_u32(v212, 0xAuLL);
      v214 = vuzp1q_s16(vzip1q_s32(v212, v213), vzip2q_s32(v212, v213));
      v215 = v35 + v196;
      v216 = v196 & 0x3F;
      v217 = vaddq_s64(v38, vdupq_n_s64(v216));
      v218 = (v37 + 8 * (v196 >> 6));
      v219 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v218, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v217)), vshlq_u64(vdupq_lane_s64(v218->i64[0], 0), vnegq_s64(v217)));
      if (v35 + v216 >= 0x81)
      {
        v219 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v218[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v217)), vshlq_u64(vdupq_laneq_s64(v218[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v217))), v219);
      }

      v220 = vandq_s8(v197, v198);
      v221 = vandq_s8(v197, v199);
      v222 = vandq_s8(v197, v200);
      v223 = vandq_s8(v197, v201);
      v224 = vandq_s8(v197, v202);
      v225 = vandq_s8(v197, v203);
      v226 = vandq_s8(v197, v204);
      v227 = vandq_s8(v197, v205);
      v228 = vandq_s8(v197, v206);
      v229 = vandq_s8(v197, v207);
      v230 = vandq_s8(v197, v208);
      v231 = vandq_s8(v197, v209);
      v232 = vandq_s8(v197, v210);
      v233 = vandq_s8(v197, v214);
      v234 = vshlq_u64(v219, v82);
      v235 = vuzp1q_s32(vzip1q_s64(v219, v234), vzip2q_s64(v219, v234));
      v236 = vshrq_n_u32(v235, 0xAuLL);
      v237 = vuzp1q_s16(vzip1q_s32(v235, v236), vzip2q_s32(v235, v236));
      v238 = (v37 + 8 * (v215 >> 6));
      v239 = vaddq_s64(v38, vdupq_n_s64(v215 & 0x3F));
      v240 = vandq_s8(v197, v237);
      v241 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v238, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v239)), vshlq_u64(vdupq_lane_s64(v238->i64[0], 0), vnegq_s64(v239)));
      if (v35 + (v215 & 0x3F) >= 0x81)
      {
        v241 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v238[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v239)), vshlq_u64(vdupq_laneq_s64(v238[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v239))), v241);
      }

      v242 = vshlq_n_s16(v220, 6uLL);
      v243 = vshlq_n_s16(v221, 6uLL);
      v244 = vshlq_n_s16(v222, 6uLL);
      v245 = vshlq_n_s16(v223, 6uLL);
      v246 = vshlq_n_s16(v224, 6uLL);
      v247 = vshlq_n_s16(v225, 6uLL);
      v248 = vshlq_n_s16(v226, 6uLL);
      v249 = vshlq_n_s16(v227, 6uLL);
      v36 = vshlq_n_s16(v228, 6uLL);
      v250 = vshlq_n_s16(v229, 6uLL);
      v251 = vshlq_n_s16(v230, 6uLL);
      v252 = vshlq_n_s16(v231, 6uLL);
      v253 = vshlq_u64(v241, v82);
      v254 = vuzp1q_s32(vzip1q_s64(v241, v253), vzip2q_s64(v241, v253));
      v255 = vshrq_n_u32(v254, 0xAuLL);
      v256 = vshlq_n_s16(v232, 6uLL);
      v257 = vshlq_n_s16(v233, 6uLL);
      v258 = vshlq_n_s16(v240, 6uLL);
      v259 = vshlq_n_s16(vandq_s8(v197, vuzp1q_s16(vzip1q_s32(v254, v255), vzip2q_s32(v254, v255))), 6uLL);
    }

    v280 = (a1 + a2);
    *a1 = v242;
    a1[1] = v243;
    a1[2] = v246;
    a1[3] = v247;
    v281 = (a1 + 2 * a2);
    *v280 = v244;
    v280[1] = v245;
    v280[2] = v248;
    v280[3] = v249;
    *v281 = v36;
    v281[1] = v250;
    v281[2] = v256;
    v281[3] = v257;
    v282 = (v281 + a2);
    result = 160;
    *v282 = v251;
    v282[1] = v252;
    v282[2] = v258;
    v282[3] = v259;
  }

  else
  {
    if (a4 == 4)
    {
      v15 = vld1q_dup_f64(a3);
      v16 = vorrq_s8(vandq_s8(vshlq_u64(v15, xmmword_29D2F1400), xmmword_29D2F1430), vandq_s8(vshlq_u64(v15, xmmword_29D2F1410), xmmword_29D2F1420));
      v17 = vdupq_n_s64(*&vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)));
      *a1 = v17;
      a1[1] = v17;
      a1[2] = v17;
      a1[3] = v17;
      v18 = (a1 + a2);
      *v18 = v17;
      v18[1] = v17;
      v18[2] = v17;
      v18[3] = v17;
      v19 = (a1 + 2 * a2);
      *v19 = v17;
      v19[1] = v17;
      v19[2] = v17;
      v19[3] = v17;
      v20 = (a1 + 2 * a2 + a2);
      *v20 = v17;
      v20[1] = v17;
      v20[2] = v17;
      v20[3] = v17;
      return 5;
    }

    v680.i8[8] = 0;
    v680.i64[0] = (8 * (a3 & 7)) | 0x400;
    v679.i64[0] = 8 * (a3 & 7);
    v679.i64[1] = a3 & 0xFFFFFFFFFFFFFFF8;
    result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)19,AGX::AppleCompressionGen2::Vec<short>>(&v712, v717, &v711, &v679, a4);
    v261.i64[0] = 0x3000300030003;
    v261.i64[1] = 0x3000300030003;
    v262 = vandq_s8(v712, v261);
    v263 = vbicq_s8(v717[0], vceqq_s16(v262, v261));
    v717[0] = v263;
    v713 = v263;
    v714 = v263;
    v715 = v263;
    v716 = v263;
    v264.i64[0] = 0x202020202020202;
    v264.i64[1] = 0x202020202020202;
    v265 = vandq_s8(vmovl_s16(vtst_s16(*v712.i8, 0x4000400040004)), v264);
    v266 = v679.i64[0];
    if (vmaxvq_s8(v265) < 1)
    {
      v283.i64[0] = -1;
      v283.i64[1] = -1;
      v284.i64[0] = -1;
      v284.i64[1] = -1;
      v285.i64[0] = -1;
      v285.i64[1] = -1;
      v286.i64[0] = -1;
      v286.i64[1] = -1;
    }

    else
    {
      v267 = vmovl_u8(*&vpaddq_s8(v265, v265));
      v268 = vmovl_u16(*&vpaddq_s16(v267, v267));
      v269 = vpaddq_s32(v268, v268).u64[0];
      v270.i64[0] = v269;
      v270.i64[1] = HIDWORD(v269);
      v271 = v270;
      v272 = vaddvq_s64(v270);
      v273 = v272;
      v274 = v679.i64[0] + v272;
      if (v680.i64[0])
      {
        v275 = v680.i64[0] >= v274;
      }

      else
      {
        v275 = 1;
      }

      v276 = v275;
      if (v272 <= 0x80 && (v276 & 1) != 0)
      {
        v260.i64[0] = 63;
        v277 = (v679.i64[1] + 8 * (v679.i64[0] >> 6));
        v278 = vaddq_s64(vdupq_lane_s64(vandq_s8(v679.u64[0], v260).i64[0], 0), vzip1q_s64(0, v271));
        v279 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v277, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v278)), vshlq_u64(vdupq_lane_s64(v277->i64[0], 0), vnegq_s64(v278)));
        if ((v679.i8[0] & 0x3F) + v273 >= 0x81)
        {
          v279 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v277[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v278)), vshlq_u64(vdupq_laneq_s64(v277[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v278))), v279);
        }

        v266 = v274;
      }

      else
      {
        v680.i8[8] = 1;
        v279 = 0uLL;
      }

      v287 = vzip1_s32(*v268.i8, *&vextq_s8(v268, v268, 8uLL));
      v288.i64[0] = v287.u32[0];
      v288.i64[1] = v287.u32[1];
      v289 = vshlq_u64(v279, vnegq_s64(v288));
      v290 = vuzp1q_s32(vzip1q_s64(v279, v289), vzip2q_s64(v279, v289));
      v291 = vshlq_u32(v290, vnegq_s32((*&v267 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v292 = vuzp1q_s16(vzip1q_s32(v290, v291), vzip2q_s32(v290, v291));
      v293 = vshlq_u16(v292, vnegq_s16((*&v265 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
      v294 = vuzp1q_s8(vzip1q_s16(v292, v293), vzip2q_s16(v292, v293));
      v293.i64[0] = 0x101010101010101;
      v293.i64[1] = 0x101010101010101;
      v295 = vshlq_s8(v293, v265);
      v293.i64[0] = -1;
      v293.i64[1] = -1;
      v296 = vqtbl1q_s8(vandq_s8(vaddq_s8(v295, v293), v294), xmmword_29D2F0F70);
      *v294.i8 = vdup_lane_s32(*v296.i8, 0);
      *v293.i8 = vdup_lane_s32(*v296.i8, 1);
      v297 = vdupq_laneq_s32(v296, 2).u64[0];
      v296.i64[0] = vdupq_laneq_s32(v296, 3).u64[0];
      v713 = vsubw_s8(v713, *v294.i8);
      v714 = vsubw_s8(v714, *v293.i8);
      v715 = vsubw_s8(v715, v297);
      v716 = vsubw_s8(v716, *v296.i8);
      v286 = vmovl_s8(vceqz_s8(*v294.i8));
      v285 = vmovl_s8(vceqz_s8(*v293.i8));
      v284 = vmovl_s8(vceqz_s8(v297));
      v283 = vmovl_s8(vceqz_s8(*v296.i8));
    }

    v298.i64[0] = 0x8000800080008;
    v298.i64[1] = 0x8000800080008;
    v299 = 0uLL;
    v300 = vandq_s8(vextq_s8(vtstq_s16(v712, v298), 0, 8uLL), v263);
    v301 = vmovl_u16(*&vpaddq_s16(v300, v300));
    v302 = vpaddq_s32(v301, v301).u64[0];
    v303.i64[0] = v302;
    v303.i64[1] = HIDWORD(v302);
    v304 = v303;
    v305 = vaddvq_s64(v303);
    if (v680.i64[0])
    {
      v306 = v680.i64[0] >= v266 + v305;
    }

    else
    {
      v306 = 1;
    }

    v307 = v306;
    if (v305 <= 0x80 && (v307 & 1) != 0)
    {
      v308 = vaddq_s64(vdupq_n_s64(v266 & 0x3F), vzip1q_s64(0, v304));
      v309 = (v679.i64[1] + 8 * (v266 >> 6));
      v299 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v309, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v308)), vshlq_u64(vdupq_lane_s64(v309->i64[0], 0), vnegq_s64(v308)));
      if ((v266 & 0x3F) + v305 >= 0x81)
      {
        v299 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v309[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v308)), vshlq_u64(vdupq_laneq_s64(v309[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v308))), v299);
      }

      v266 += v305;
    }

    else
    {
      v680.i8[8] = 1;
    }

    v310 = v712.i8[0] & 3;
    if (v310 == 2)
    {
      if (v680.i64[0])
      {
        v311 = v266 + 8;
        v312 = v266 + 16;
        if (v680.i64[0] >= v266 + 8)
        {
          v266 += 8;
        }

        else
        {
          v312 = v266 + 8;
        }

        if (v680.i64[0] >= v312)
        {
          v266 = v312;
        }

        if (v680.i64[0] < v311 || v680.i64[0] < v312)
        {
          v680.i8[8] = 1;
        }
      }

      else
      {
        v266 += 16;
      }
    }

    v313 = 0uLL;
    v314 = vextq_s8(0, v713, 8uLL);
    v315 = vmovl_u16(*&vpaddq_s16(v314, v314));
    v316 = vpaddq_s32(v315, v315).u64[0];
    v317.i64[0] = v316;
    v317.i64[1] = HIDWORD(v316);
    v318 = v317;
    v319 = vaddvq_s64(v317);
    v320 = v266 + v319;
    if (v680.i64[0])
    {
      v321 = v680.i64[0] >= v320;
    }

    else
    {
      v321 = 1;
    }

    v322 = v321;
    if (v319 <= 0x80 && (v322 & 1) != 0)
    {
      v323 = v266 & 0x3F;
      v324 = vaddq_s64(vdupq_n_s64(v323), vzip1q_s64(0, v318));
      v325 = v679.i64[1];
      v326 = (v679.i64[1] + 8 * (v266 >> 6));
      v313 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v326, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v324)), vshlq_u64(vdupq_lane_s64(v326->i64[0], 0), vnegq_s64(v324)));
      if (v323 + v319 >= 0x81)
      {
        v313 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v326[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v324)), vshlq_u64(vdupq_laneq_s64(v326[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v324))), v313);
      }

      v327 = v680.i8[8];
      v266 = v320;
    }

    else
    {
      v327 = 1;
      v325 = v679.i64[1];
    }

    v328.i64[0] = 0xFFFF0000FFFFLL;
    v328.i64[1] = 0xFFFF0000FFFFLL;
    v329.i64[0] = 0xF000F000F000FLL;
    v329.i64[1] = 0xF000F000F000FLL;
    v330.i64[0] = 0x10001000100010;
    v330.i64[1] = 0x10001000100010;
    v331 = vmovl_u16(*&vpaddq_s16(v713, v713));
    v332 = vpaddq_s32(v331, v331).u64[0];
    v333.i64[0] = v332;
    v333.i64[1] = HIDWORD(v332);
    v334 = v333;
    v335 = vaddvq_s64(v333);
    v336 = v335;
    v337 = v266 + v335;
    if (v680.i64[0])
    {
      v338 = v680.i64[0] >= v337;
    }

    else
    {
      v338 = 1;
    }

    v339 = v338;
    v340 = 0uLL;
    if (v335 <= 0x80 && v339)
    {
      v341 = v266 & 0x3F;
      v342 = vaddq_s64(vdupq_n_s64(v341), vzip1q_s64(0, v334));
      v343 = (v325 + 8 * (v266 >> 6));
      v344 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v343, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v342)), vshlq_u64(vdupq_lane_s64(v343->i64[0], 0), vnegq_s64(v342)));
      if (v341 + v336 >= 0x81)
      {
        v344 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v343[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v342)), vshlq_u64(vdupq_laneq_s64(v343[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v342))), v344);
      }
    }

    else
    {
      v327 = 1;
      v337 = v266;
      v344 = 0uLL;
    }

    v345 = vzip1_s32(*v331.i8, *&vextq_s8(v331, v331, 8uLL));
    v346.i64[0] = v345.u32[0];
    v346.i64[1] = v345.u32[1];
    v347 = vnegq_s64(v346);
    v348 = vshlq_u64(v344, v347);
    v349 = vuzp1q_s32(vzip1q_s64(v344, v348), vzip2q_s64(v344, v348));
    v350 = vnegq_s32(vandq_s8(v713, v328));
    v351 = vshlq_u32(v349, v350);
    v352 = vuzp1q_s16(vzip1q_s32(v349, v351), vzip2q_s32(v349, v351));
    v353 = vaddq_s16(v713, v329);
    v354 = vsubq_s16(v330, v713);
    v355 = vshlq_s16(vshlq_s16(v352, v354), v353);
    v688 = v355;
    v356 = v337 + v336;
    if (v680.i64[0])
    {
      v357 = v680.i64[0] >= v356;
    }

    else
    {
      v357 = 1;
    }

    v358 = v357;
    if (v336 <= 0x80 && v358)
    {
      v359 = v337 & 0x3F;
      v360 = vaddq_s64(vdupq_n_s64(v359), vzip1q_s64(0, v334));
      v361 = (v325 + 8 * (v337 >> 6));
      v340 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v361, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v360)), vshlq_u64(vdupq_lane_s64(v361->i64[0], 0), vnegq_s64(v360)));
      if (v359 + v336 >= 0x81)
      {
        v340 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v361[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v360)), vshlq_u64(vdupq_laneq_s64(v361[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v360))), v340);
      }
    }

    else
    {
      v327 = 1;
      v356 = v337;
    }

    v362 = vshlq_u64(v340, v347);
    v363 = vuzp1q_s32(vzip1q_s64(v340, v362), vzip2q_s64(v340, v362));
    v364 = vshlq_u32(v363, v350);
    v365 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v363, v364), vzip2q_s32(v363, v364)), v354), v353);
    v689 = v365;
    v366 = v356 + v336;
    if (v680.i64[0])
    {
      v367 = v680.i64[0] >= v366;
    }

    else
    {
      v367 = 1;
    }

    v368 = v367;
    v369 = 0uLL;
    if (v336 <= 0x80 && v368)
    {
      v370 = v356 & 0x3F;
      v371 = vaddq_s64(vdupq_n_s64(v370), vzip1q_s64(0, v334));
      v372 = (v325 + 8 * (v356 >> 6));
      v373 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v372, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v371)), vshlq_u64(vdupq_lane_s64(v372->i64[0], 0), vnegq_s64(v371)));
      if (v370 + v336 >= 0x81)
      {
        v373 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v372[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v371)), vshlq_u64(vdupq_laneq_s64(v372[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v371))), v373);
      }
    }

    else
    {
      v327 = 1;
      v366 = v356;
      v373 = 0uLL;
    }

    v374 = vshlq_u64(v373, v347);
    v375 = vuzp1q_s32(vzip1q_s64(v373, v374), vzip2q_s64(v373, v374));
    v376 = vshlq_u32(v375, v350);
    v377 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v375, v376), vzip2q_s32(v375, v376)), v354), v353);
    v690 = v377;
    v378 = vmovl_u16(*&vpaddq_s16(v714, v714));
    v375.i64[0] = vpaddq_s32(v378, v378).u64[0];
    v379.i64[0] = v375.u32[0];
    v379.i64[1] = v375.u32[1];
    v380 = v379;
    v381 = vaddvq_s64(v379);
    v382 = v381;
    v383 = v366 + v381;
    if (v680.i64[0])
    {
      v384 = v680.i64[0] >= v383;
    }

    else
    {
      v384 = 1;
    }

    v385 = v384;
    if (v381 <= 0x80 && v385)
    {
      v386 = v366 & 0x3F;
      v387 = vaddq_s64(vdupq_n_s64(v386), vzip1q_s64(0, v380));
      v388 = (v325 + 8 * (v366 >> 6));
      v369 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v388, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v387)), vshlq_u64(vdupq_lane_s64(v388->i64[0], 0), vnegq_s64(v387)));
      if (v386 + v382 >= 0x81)
      {
        v369 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v388[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v387)), vshlq_u64(vdupq_laneq_s64(v388[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v387))), v369);
      }
    }

    else
    {
      v327 = 1;
      v383 = v366;
    }

    v389 = v383 + v382;
    if (v680.i64[0])
    {
      v390 = v680.i64[0] >= v389;
    }

    else
    {
      v390 = 1;
    }

    v391 = v390;
    v392 = 0uLL;
    if (v382 <= 0x80 && v391)
    {
      v393 = v383 & 0x3F;
      v394 = vaddq_s64(vdupq_n_s64(v393), vzip1q_s64(0, v380));
      v395 = (v325 + 8 * (v383 >> 6));
      v396 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v395, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v394)), vshlq_u64(vdupq_lane_s64(v395->i64[0], 0), vnegq_s64(v394)));
      if (v393 + v382 >= 0x81)
      {
        v396 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v395[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v394)), vshlq_u64(vdupq_laneq_s64(v395[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v394))), v396);
      }
    }

    else
    {
      v327 = 1;
      v389 = v383;
      v396 = 0uLL;
    }

    v397 = v389 + v382;
    if (v680.i64[0])
    {
      v398 = v680.i64[0] >= v397;
    }

    else
    {
      v398 = 1;
    }

    v399 = v398;
    v673 = v285;
    if (v382 <= 0x80 && v399)
    {
      v400 = vaddq_s64(vdupq_n_s64(v389 & 0x3F), vzip1q_s64(0, v380));
      v401 = (v325 + 8 * (v389 >> 6));
      v392 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v401, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v400)), vshlq_u64(vdupq_lane_s64(v401->i64[0], 0), vnegq_s64(v400)));
      if ((v389 & 0x3F) + v382 >= 0x81)
      {
        v392 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v401[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v400)), vshlq_u64(vdupq_laneq_s64(v401[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v400))), v392);
      }
    }

    else
    {
      v327 = 1;
      v397 = v389;
    }

    v402 = v397 + v382;
    if (v680.i64[0])
    {
      v403 = v680.i64[0] >= v402;
    }

    else
    {
      v403 = 1;
    }

    v404 = v403;
    v405 = 0uLL;
    v676 = v286;
    v678 = v262;
    v674 = v284;
    v672 = v300;
    if (v382 <= 0x80 && v404)
    {
      v406 = vaddq_s64(vdupq_n_s64(v397 & 0x3F), vzip1q_s64(0, v380));
      v407 = (v325 + 8 * (v397 >> 6));
      v408 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v407, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v406)), vshlq_u64(vdupq_lane_s64(v407->i64[0], 0), vnegq_s64(v406)));
      if ((v397 & 0x3F) + v382 >= 0x81)
      {
        v408 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v407[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v406)), vshlq_u64(vdupq_laneq_s64(v407[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v406))), v408);
      }
    }

    else
    {
      v327 = 1;
      v402 = v397;
      v408 = 0uLL;
    }

    v409 = vmovl_u16(*&vpaddq_s16(v715, v715));
    v410 = vpaddq_s32(v409, v409).u64[0];
    v411.i64[0] = v410;
    v411.i64[1] = HIDWORD(v410);
    v412 = v411;
    v413 = vaddvq_s64(v411);
    v414 = v413;
    v415 = v402 + v413;
    if (v680.i64[0])
    {
      v416 = v680.i64[0] >= v415;
    }

    else
    {
      v416 = 1;
    }

    v417 = v416;
    if (v413 <= 0x80 && v417)
    {
      v418 = v402 & 0x3F;
      v419 = vaddq_s64(vdupq_n_s64(v418), vzip1q_s64(0, v412));
      v420 = (v325 + 8 * (v402 >> 6));
      v405 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v420, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v419)), vshlq_u64(vdupq_lane_s64(v420->i64[0], 0), vnegq_s64(v419)));
      if (v418 + v414 >= 0x81)
      {
        v405 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v420[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v419)), vshlq_u64(vdupq_laneq_s64(v420[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v419))), v405);
      }
    }

    else
    {
      v327 = 1;
      v415 = v402;
    }

    v421 = v415 + v414;
    if (v680.i64[0])
    {
      v422 = v680.i64[0] >= v421;
    }

    else
    {
      v422 = 1;
    }

    v423 = v422;
    v424 = 0uLL;
    if (v414 <= 0x80 && v423)
    {
      v425 = v415 & 0x3F;
      v426 = vaddq_s64(vdupq_n_s64(v425), vzip1q_s64(0, v412));
      v427 = (v325 + 8 * (v415 >> 6));
      v428 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v427, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v426)), vshlq_u64(vdupq_lane_s64(v427->i64[0], 0), vnegq_s64(v426)));
      if (v425 + v414 >= 0x81)
      {
        v428 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v427[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v426)), vshlq_u64(vdupq_laneq_s64(v427[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v426))), v428);
      }
    }

    else
    {
      v327 = 1;
      v421 = v415;
      v428 = 0uLL;
    }

    v429 = v421 + v414;
    if (v680.i64[0])
    {
      v430 = v680.i64[0] >= v429;
    }

    else
    {
      v430 = 1;
    }

    v431 = v430;
    if (v414 <= 0x80 && v431)
    {
      v432 = v421 & 0x3F;
      v433 = vaddq_s64(vdupq_n_s64(v432), vzip1q_s64(0, v412));
      v434 = (v325 + 8 * (v421 >> 6));
      v424 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v434, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v433)), vshlq_u64(vdupq_lane_s64(v434->i64[0], 0), vnegq_s64(v433)));
      if (v432 + v414 >= 0x81)
      {
        v424 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v434[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v433)), vshlq_u64(vdupq_laneq_s64(v434[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v433))), v424);
      }
    }

    else
    {
      v327 = 1;
      v429 = v421;
    }

    v435 = v429 + v414;
    if (v680.i64[0])
    {
      v436 = v680.i64[0] >= v435;
    }

    else
    {
      v436 = 1;
    }

    v437 = v436;
    v438 = 0uLL;
    if (v414 <= 0x80 && v437)
    {
      v439 = v429 & 0x3F;
      v440 = vaddq_s64(vdupq_n_s64(v439), vzip1q_s64(0, v412));
      v441 = (v325 + 8 * (v429 >> 6));
      v442 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v441, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v440)), vshlq_u64(vdupq_lane_s64(v441->i64[0], 0), vnegq_s64(v440)));
      if (v439 + v414 >= 0x81)
      {
        v442 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v441[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v440)), vshlq_u64(vdupq_laneq_s64(v441[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v440))), v442);
      }
    }

    else
    {
      v327 = 1;
      v435 = v429;
      v442 = 0uLL;
    }

    v443 = vmovl_u16(*&vpaddq_s16(v716, v716));
    v444 = vpaddq_s32(v443, v443).u64[0];
    v445.i64[0] = v444;
    v445.i64[1] = HIDWORD(v444);
    v446 = v445;
    v447 = vaddvq_s64(v445);
    v448 = v447;
    v449 = v435 + v447;
    if (v680.i64[0])
    {
      v450 = v680.i64[0] >= v449;
    }

    else
    {
      v450 = 1;
    }

    v451 = v450;
    if (v447 <= 0x80 && v451)
    {
      v452 = v435 & 0x3F;
      v453 = vaddq_s64(vdupq_n_s64(v452), vzip1q_s64(0, v446));
      v454 = (v325 + 8 * (v435 >> 6));
      v438 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v454, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v453)), vshlq_u64(vdupq_lane_s64(v454->i64[0], 0), vnegq_s64(v453)));
      if (v452 + v448 >= 0x81)
      {
        v438 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v454[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v453)), vshlq_u64(vdupq_laneq_s64(v454[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v453))), v438);
      }
    }

    else
    {
      v327 = 1;
      v449 = v435;
    }

    v455 = v449 + v448;
    if (v680.i64[0])
    {
      v456 = v680.i64[0] >= v455;
    }

    else
    {
      v456 = 1;
    }

    v457 = v456;
    v458 = 0uLL;
    if (v448 <= 0x80 && v457)
    {
      v459 = v449 & 0x3F;
      v460 = vaddq_s64(vdupq_n_s64(v459), vzip1q_s64(0, v446));
      v461 = (v325 + 8 * (v449 >> 6));
      v462 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v461, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v460)), vshlq_u64(vdupq_lane_s64(v461->i64[0], 0), vnegq_s64(v460)));
      if (v459 + v448 >= 0x81)
      {
        v462 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v461[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v460)), vshlq_u64(vdupq_laneq_s64(v461[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v460))), v462);
      }
    }

    else
    {
      v327 = 1;
      v455 = v449;
      v462 = 0uLL;
    }

    v463 = v455 + v448;
    if (v680.i64[0])
    {
      v464 = v680.i64[0] >= v463;
    }

    else
    {
      v464 = 1;
    }

    v465 = v464;
    if (v448 <= 0x80 && v465)
    {
      v466 = v455 & 0x3F;
      v467 = vaddq_s64(vdupq_n_s64(v466), vzip1q_s64(0, v446));
      v468 = (v325 + 8 * (v455 >> 6));
      v458 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v468, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v467)), vshlq_u64(vdupq_lane_s64(v468->i64[0], 0), vnegq_s64(v467)));
      if (v466 + v448 >= 0x81)
      {
        v458 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v468[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v467)), vshlq_u64(vdupq_laneq_s64(v468[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v467))), v458);
      }
    }

    else
    {
      v327 = 1;
      v463 = v455;
    }

    v469 = v463 + v448;
    if (v680.i64[0])
    {
      v470 = v680.i64[0] >= v469;
    }

    else
    {
      v470 = 1;
    }

    v471 = v470;
    if (v448 > 0x80 || !v471)
    {
      goto LABEL_278;
    }

    v472 = vaddq_s64(vdupq_n_s64(v463 & 0x3F), vzip1q_s64(0, v446));
    v473 = (v325 + 8 * (v463 >> 6));
    v474 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v473, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v472)), vshlq_u64(vdupq_lane_s64(v473->i64[0], 0), vnegq_s64(v472)));
    if ((v463 & 0x3F) + v448 >= 0x81)
    {
      v474 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v473[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v472)), vshlq_u64(vdupq_laneq_s64(v473[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v472))), v474);
    }

    if ((v327 & 1) != 0 || v680.i64[0] + 8 * result - v469 - 1024 >= 9 || v310 == 2)
    {
LABEL_278:
      result = 0;
      v11 = vdupq_n_s64(0xFFFFF003FFuLL);
      *a1 = v11;
      a1[1] = v11;
      v475 = (a1 + a2);
      *v475 = v11;
      v475[1] = v11;
      v476 = (a1 + 2 * a2);
      *v476 = v11;
      v476[1] = v11;
      v14 = (a1 + 2 * a2 + a2);
      goto LABEL_6;
    }

    v477 = vzip1_s32(*v301.i8, *&vextq_s8(v301, v301, 8uLL));
    v478 = vzip1_s32(*v315.i8, *&vextq_s8(v315, v315, 8uLL));
    v479 = vzip1_s32(*v378.i8, *&vextq_s8(v378, v378, 8uLL));
    v480 = vzip1_s32(*v409.i8, *&vextq_s8(v409, v409, 8uLL));
    v481 = vzip1_s32(*v443.i8, *&vextq_s8(v443, v443, 8uLL));
    v482.i64[0] = v477.u32[0];
    v482.i64[1] = v477.u32[1];
    v483 = vshlq_u64(v299, vnegq_s64(v482));
    v484 = vzip2q_s64(v299, v483);
    v485 = vzip1q_s64(v299, v483);
    v482.i64[0] = v478.u32[0];
    v482.i64[1] = v478.u32[1];
    v486 = vshlq_u64(v313, vnegq_s64(v482));
    v487 = vzip2q_s64(v313, v486);
    v488 = vzip1q_s64(v313, v486);
    v482.i64[0] = v479.u32[0];
    v482.i64[1] = v479.u32[1];
    v489 = vnegq_s64(v482);
    v490 = vshlq_u64(v369, v489);
    v491 = vzip2q_s64(v369, v490);
    v492 = vzip1q_s64(v369, v490);
    v493 = vshlq_u64(v396, v489);
    v494 = vzip2q_s64(v396, v493);
    v495 = vzip1q_s64(v396, v493);
    v496 = vshlq_u64(v392, v489);
    v497 = vzip2q_s64(v392, v496);
    v498 = vzip1q_s64(v392, v496);
    v499 = vshlq_u64(v408, v489);
    v500 = vzip2q_s64(v408, v499);
    v501 = vzip1q_s64(v408, v499);
    v482.i64[0] = v480.u32[0];
    v482.i64[1] = v480.u32[1];
    v502 = vnegq_s64(v482);
    v503 = vshlq_u64(v405, v502);
    v670 = v355;
    v671 = v283;
    v504 = vzip2q_s64(v405, v503);
    v505 = vzip1q_s64(v405, v503);
    v506 = vshlq_u64(v428, v502);
    v507 = vzip2q_s64(v428, v506);
    v508 = vzip1q_s64(v428, v506);
    v509 = vshlq_u64(v424, v502);
    v510 = v314;
    v666 = v314;
    v511 = vzip2q_s64(v424, v509);
    v512 = vzip1q_s64(v424, v509);
    v513 = vshlq_u64(v442, v502);
    v514 = vzip2q_s64(v442, v513);
    v515 = vzip1q_s64(v442, v513);
    v482.i64[0] = v481.u32[0];
    v482.i64[1] = v481.u32[1];
    v667 = vnegq_s64(v482);
    v668 = v365;
    v516 = vshlq_u64(v438, v667);
    v517 = vzip2q_s64(v438, v516);
    v518 = vzip1q_s64(v438, v516);
    v519 = vshlq_u64(v462, v667);
    v669 = v377;
    v520 = vzip2q_s64(v462, v519);
    v521 = vzip1q_s64(v462, v519);
    v522 = vshlq_u64(v458, v667);
    v523 = vuzp1q_s32(v485, v484);
    v524 = vuzp1q_s32(v488, v487);
    v525 = vuzp1q_s32(v492, v491);
    v526 = vuzp1q_s32(v495, v494);
    v527 = vuzp1q_s32(v498, v497);
    v528 = vuzp1q_s32(v501, v500);
    v529 = vuzp1q_s32(v505, v504);
    v530 = vuzp1q_s32(v508, v507);
    v531 = vuzp1q_s32(v512, v511);
    v532 = vuzp1q_s32(v515, v514);
    v533 = vuzp1q_s32(v518, v517);
    v534 = vuzp1q_s32(v521, v520);
    v535 = vuzp1q_s32(vzip1q_s64(v458, v522), vzip2q_s64(v458, v522));
    v521.i64[0] = 0xFFFF0000FFFFLL;
    v521.i64[1] = 0xFFFF0000FFFFLL;
    v536 = vshlq_u32(v523, vnegq_s32(vandq_s8(v672, v521)));
    v537 = vzip2q_s32(v523, v536);
    v538 = vzip1q_s32(v523, v536);
    v539.i64[0] = 0xFFFF0000FFFFLL;
    v539.i64[1] = 0xFFFF0000FFFFLL;
    v540 = vshlq_u32(v524, vnegq_s32(vandq_s8(v510, v539)));
    v541 = vzip2q_s32(v524, v540);
    v542 = vzip1q_s32(v524, v540);
    v540.i64[0] = 0xFFFF0000FFFFLL;
    v540.i64[1] = 0xFFFF0000FFFFLL;
    v543 = vnegq_s32(vandq_s8(v714, v540));
    v544 = vshlq_u32(v525, v543);
    v545 = vzip2q_s32(v525, v544);
    v546 = vzip1q_s32(v525, v544);
    v547 = vshlq_u32(v526, v543);
    v548 = vzip2q_s32(v526, v547);
    v549 = vzip1q_s32(v526, v547);
    v550 = vshlq_u32(v527, v543);
    v551 = vzip2q_s32(v527, v550);
    v552 = vzip1q_s32(v527, v550);
    v553 = vshlq_u32(v528, v543);
    v554 = vzip2q_s32(v528, v553);
    v555 = vzip1q_s32(v528, v553);
    v553.i64[0] = 0xFFFF0000FFFFLL;
    v553.i64[1] = 0xFFFF0000FFFFLL;
    v556 = vnegq_s32(vandq_s8(v715, v553));
    v557 = vshlq_u32(v529, v556);
    v558 = vzip2q_s32(v529, v557);
    v559 = vzip1q_s32(v529, v557);
    v560 = vshlq_u32(v530, v556);
    v561 = vzip2q_s32(v530, v560);
    v562 = vzip1q_s32(v530, v560);
    v563 = vshlq_u32(v531, v556);
    v564 = vzip2q_s32(v531, v563);
    v565 = vzip1q_s32(v531, v563);
    v566 = vshlq_u32(v532, v556);
    v567 = vzip2q_s32(v532, v566);
    v568 = vzip1q_s32(v532, v566);
    v566.i64[0] = 0xFFFF0000FFFFLL;
    v566.i64[1] = 0xFFFF0000FFFFLL;
    v569 = vnegq_s32(vandq_s8(v716, v566));
    v570 = vshlq_u32(v533, v569);
    v571 = vzip2q_s32(v533, v570);
    v572 = vzip1q_s32(v533, v570);
    v573 = vshlq_u32(v534, v569);
    v574 = vzip2q_s32(v534, v573);
    v575 = vzip1q_s32(v534, v573);
    v576 = vshlq_u32(v535, v569);
    v577 = vuzp1q_s16(v538, v537);
    v578 = vuzp1q_s16(v542, v541);
    v579 = vuzp1q_s16(v546, v545);
    v580 = vuzp1q_s16(v549, v548);
    v581 = vuzp1q_s16(v552, v551);
    v582 = vuzp1q_s16(v555, v554);
    v583 = vuzp1q_s16(vzip1q_s32(v535, v576), vzip2q_s32(v535, v576));
    v535.i64[0] = 0x10001000100010;
    v535.i64[1] = 0x10001000100010;
    v541.i64[0] = 0xF000F000F000FLL;
    v541.i64[1] = 0xF000F000F000FLL;
    v584 = vshlq_s16(v577, vsubq_s16(v535, v672));
    v535.i64[0] = 0x10001000100010;
    v535.i64[1] = 0x10001000100010;
    v552.i64[0] = 0xF000F000F000FLL;
    v552.i64[1] = 0xF000F000F000FLL;
    v554.i64[0] = 0x10001000100010;
    v554.i64[1] = 0x10001000100010;
    v585 = vshlq_s16(v578, vsubq_s16(v535, v666));
    v578.i64[0] = 0xF000F000F000FLL;
    v578.i64[1] = 0xF000F000F000FLL;
    v586 = vsubq_s16(v554, v714);
    v587 = vaddq_s16(v714, v578);
    v545.i64[0] = 0x10001000100010;
    v545.i64[1] = 0x10001000100010;
    v588 = vshlq_s16(v579, v586);
    v589 = vshlq_s16(v580, v586);
    v590 = vshlq_s16(v581, v586);
    v591 = vshlq_s16(v582, v586);
    v586.i64[0] = 0xF000F000F000FLL;
    v586.i64[1] = 0xF000F000F000FLL;
    v592 = vsubq_s16(v545, v715);
    v593 = vaddq_s16(v715, v586);
    v498.i64[0] = 0x10001000100010;
    v498.i64[1] = 0x10001000100010;
    v594 = vshlq_s16(vuzp1q_s16(v559, v558), v592);
    v595 = vshlq_s16(vuzp1q_s16(v562, v561), v592);
    v596 = vshlq_s16(vuzp1q_s16(v565, v564), v592);
    v597 = vshlq_s16(vuzp1q_s16(v568, v567), v592);
    v592.i64[0] = 0xF000F000F000FLL;
    v592.i64[1] = 0xF000F000F000FLL;
    v598 = vsubq_s16(v498, v716);
    v599 = vaddq_s16(v716, v592);
    v600 = vshlq_s16(v584, vaddq_s16(v672, v541));
    v601 = vshlq_u64(v474, v667);
    v602 = vuzp1q_s32(vzip1q_s64(v474, v601), vzip2q_s64(v474, v601));
    v603 = vshlq_u32(v602, v569);
    v604 = vshlq_s16(vshlq_s16(vuzp1q_s16(v572, v571), v598), v599);
    v605 = vshlq_s16(vshlq_s16(vuzp1q_s16(v575, v574), v598), v599);
    v606 = vshlq_s16(vshlq_s16(v583, v598), v599);
    v607 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v602, v603), vzip2q_s32(v602, v603)), v598), v599);
    v608 = vaddq_s16(vandq_s8(v600, v676), vshlq_s16(v585, vaddq_s16(v666, v552)));
    v609 = vdupq_lane_s64(v600.i64[0], 0);
    v610 = vandq_s8(v673, v609);
    v611 = vsubq_s16(vshlq_s16(v588, v587), v610);
    v612 = vsubq_s16(vshlq_s16(v589, v587), v610);
    v613 = vsubq_s16(vshlq_s16(v590, v587), v610);
    v614 = vsubq_s16(vshlq_s16(v591, v587), v610);
    v615 = vandq_s8(v674, v609);
    v616 = vsubq_s16(vshlq_s16(v594, v593), v615);
    v617 = vsubq_s16(vshlq_s16(v595, v593), v615);
    v618 = vandq_s8(v676, v609);
    v619 = vsubq_s16(vshlq_s16(v596, v593), v615);
    v620 = vsubq_s16(vshlq_s16(v597, v593), v615);
    v621.i64[0] = 0x1000100010001;
    v621.i64[1] = 0x1000100010001;
    v622 = vsubq_s16(v670, v618);
    v623 = vsubq_s16(v668, v618);
    v624 = vandq_s8(v671, v609);
    v625 = vsubq_s16(v604, v624);
    v626 = vsubq_s16(v605, v624);
    v627 = vsubq_s16(v606, v624);
    v628 = vsubq_s16(v607, v624);
    v629 = vsubq_s16(v669, v618);
    v630 = vsubq_s16(v608, v618);
    v687 = v608;
    v707 = v625;
    v708 = v626;
    v709 = v627;
    v710 = v628;
    if (vaddvq_s16(vceqq_s16(v678, v621)))
    {
      v631 = vnegq_s16(vandq_s8(v712, v621));
      v632.i64[0] = v629.i64[0];
      v633.i64[1] = v630.i64[1];
      v632.i64[1] = v630.i64[0];
      v633.i64[0] = v629.i64[1];
      v634 = vbslq_s8(v631, v633, v630);
      v635 = vbslq_s8(v631, v632, v629);
      v633.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
      v633.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
      v636 = vandq_s8(vqtbl4q_s8(*(&v622 - 1), v633), v631);
      v719.val[0] = vaddq_s16(v634, vandq_s8(vqtbl4q_s8(*(&v622 - 1), xmmword_29D2F10B0), v631));
      v719.val[1] = vaddq_s16(v622, vandq_s8(vqtbl4q_s8(*(&v622 - 1), xmmword_29D2F10C0), v631));
      v719.val[2] = vaddq_s16(v623, v636);
      v719.val[3] = vaddq_s16(v635, v636);
      v637 = vandq_s8(vqtbl4q_s8(v719, v633), v631);
      v630 = vaddq_s16(v719.val[0], vandq_s8(vqtbl4q_s8(v719, xmmword_29D2F10D0), v631));
      v622 = vaddq_s16(v719.val[1], vandq_s8(vqtbl4q_s8(v719, xmmword_29D2F10E0), v631));
      v687 = v630;
      v688 = v622;
      v623 = vaddq_s16(v719.val[2], v637);
      v629 = vaddq_s16(v719.val[3], v637);
      v719.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v611.i8, xmmword_29D2F10B0), v631), v611);
      v719.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v611.i8, xmmword_29D2F10F0), v631), v612);
      v719.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v611.i8, v633), v631), v613);
      v719.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v611.i8, xmmword_29D2F1100), v631), v614);
      v638 = vandq_s8(vqtbl4q_s8(v719, xmmword_29D2F10D0), v631);
      v639 = vandq_s8(vqtbl4q_s8(v719, v633), v631);
      v611 = vaddq_s16(v638, v719.val[0]);
      v612 = vaddq_s16(v719.val[1], v638);
      v613 = vaddq_s16(v719.val[2], v639);
      v614 = vaddq_s16(v719.val[3], v639);
      v719.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v616.i8, xmmword_29D2F0EB0), v631), v616);
      v719.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v616.i8, xmmword_29D2F0FB0), v631), v617);
      v719.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v616.i8, xmmword_29D2F10B0), v631), v619);
      v719.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v616.i8, xmmword_29D2F10C0), v631), v620);
      v640 = vandq_s8(vqtbl4q_s8(v719, v633), v631);
      v616 = vaddq_s16(v719.val[0], v640);
      v617 = vaddq_s16(v719.val[1], v640);
      v619 = vaddq_s16(v719.val[2], vandq_s8(vqtbl4q_s8(v719, xmmword_29D2F0FE0), v631));
      v620 = vaddq_s16(v719.val[3], vandq_s8(vqtbl4q_s8(v719, xmmword_29D2F1110), v631));
      v719.val[0] = v707;
      v719.val[1] = v708;
      v719.val[2] = v709;
      v719.val[3] = v710;
      v720.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(v719, xmmword_29D2F0EB0), v631), v707);
      v720.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(v719, xmmword_29D2F1120), v631), v708);
      v689 = v623;
      v690 = v629;
      v720.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(v719, xmmword_29D2F10B0), v631), v709);
      v720.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(v719, xmmword_29D2F10C0), v631), v710);
      v641 = v712;
      v642 = vandq_s8(vqtbl4q_s8(v720, v633), v631);
      v643 = vandq_s8(vqtbl4q_s8(v720, xmmword_29D2F0FE0), v631);
      v644 = vandq_s8(vqtbl4q_s8(v720, xmmword_29D2F1130), v631);
      v625 = vaddq_s16(v720.val[0], v642);
      v626 = vaddq_s16(v720.val[1], v642);
      v627 = vaddq_s16(v720.val[2], v643);
      v628 = vaddq_s16(v720.val[3], v644);
    }

    else
    {
      v641 = v712;
    }

    v645 = vaddq_s16(v711, v630);
    v646 = vaddq_s16(v622, v711);
    v647 = vaddq_s16(v623, v711);
    v648 = vaddq_s16(v629, v711);
    v649 = vaddq_s16(v611, v711);
    v650 = vaddq_s16(v612, v711);
    v651 = vaddq_s16(v613, v711);
    v652 = vaddq_s16(v614, v711);
    v653 = vaddq_s16(v616, v711);
    v654 = vaddq_s16(v617, v711);
    v655 = vaddq_s16(v619, v711);
    v656 = vaddq_s16(v620, v711);
    v657 = vaddq_s16(v625, v711);
    v658 = vaddq_s16(v626, v711);
    v659 = vaddq_s16(v627, v711);
    v660 = vaddq_s16(v628, v711);
    v661.i64[0] = 0x10001000100010;
    v661.i64[1] = 0x10001000100010;
    v662 = vceqzq_s16(vandq_s8(v641, v661));
    v663 = (a1 + a2);
    *a1 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v645, xmmword_29D2F1140), v662), v645), 6uLL);
    a1[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v646, xmmword_29D2F1140), v662), v646), 6uLL);
    a1[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v649, xmmword_29D2F1140), v662), v649), 6uLL);
    a1[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v650, xmmword_29D2F1140), v662), v650), 6uLL);
    v664 = (a1 + 2 * a2);
    *v663 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v647, xmmword_29D2F1140), v662), v647), 6uLL);
    v663[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v648, xmmword_29D2F1140), v662), v648), 6uLL);
    v663[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v651, xmmword_29D2F1140), v662), v651), 6uLL);
    v663[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v652, xmmword_29D2F1140), v662), v652), 6uLL);
    *v664 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v653, xmmword_29D2F1140), v662), v653), 6uLL);
    v664[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v654, xmmword_29D2F1140), v662), v654), 6uLL);
    v664[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v657, xmmword_29D2F1140), v662), v657), 6uLL);
    v664[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v658, xmmword_29D2F1140), v662), v658), 6uLL);
    v665 = (v664 + a2);
    *v665 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v655, xmmword_29D2F1140), v662), v655), 6uLL);
    v665[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v656, xmmword_29D2F1140), v662), v656), 6uLL);
    v665[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v659, xmmword_29D2F1140), v662), v659), 6uLL);
    v665[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v660, xmmword_29D2F1140), v662), v660), 6uLL);
  }

  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 1, v13 + 4, a2, v16, v15, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 2, (v13 + v17), a2, v20, v19, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 3, (v13 + v17 + 64), a2, v22, v21, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 4, v13 + 8, a2, v25, v24, a7);
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 5, v13 + 12, a2, v28, v27, a7);
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
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 6, (v13 + 4 * a2 + 128), a2, v30, v29, a7);
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

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 7, (v13 + v31 + 192), a2, v33, v32, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressMacroblock(_OWORD *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1, 256, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 4, 256, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 64, 256, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 68, 256, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 8, 256, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 12, 256, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 72, 256, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 76, 256, v12 + v13, v14, a4);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(unint64_t a1, _BYTE *a2, int16x8_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = *(a3 + a4);
  v8 = vshrq_n_s16(*a3, 6uLL);
  v9 = vshrq_n_s16(a3[1], 6uLL);
  v10 = vshrq_n_s16(a3[2], 6uLL);
  v11 = vshrq_n_s16(a3[3], 6uLL);
  v12 = vshrq_n_s16(*(&a3[1] + a4), 6uLL);
  v13 = vshrq_n_s16(*(&a3[2] + a4), 6uLL);
  v14 = vshrq_n_s16(*(&a3[3] + a4), 6uLL);
  v15 = vshrq_n_s16(a3[4], 6uLL);
  v16 = vshrq_n_s16(a3[5], 6uLL);
  v17 = vshrq_n_s16(a3[6], 6uLL);
  v18 = vshrq_n_s16(a3[7], 6uLL);
  v19 = vshrq_n_s16(*(&a3[4] + a4), 6uLL);
  v20 = vshrq_n_s16(*(&a3[5] + a4), 6uLL);
  v21 = vshrq_n_s16(*(&a3[6] + a4), 6uLL);
  v22 = vshrq_n_s16(*(&a3[7] + a4), 6uLL);
  v464 = vdupq_lane_s64(v8.i64[0], 0);
  v440 = vshrq_n_s16(v7, 6uLL);
  v442 = v12;
  v443 = v13;
  v444 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v8, v464), 6uLL), 6uLL);
  v446 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v9, v464), 6uLL), 6uLL);
  v448 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v10, v464), 6uLL), 6uLL);
  v450 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v11, v464), 6uLL), 6uLL);
  v452 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v440, v464), 6uLL), 6uLL);
  v453 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v12, v464), 6uLL), 6uLL);
  v23 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v444, v446), v448), v450), xmmword_29D2F1150);
  v24 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v444, v446), v448), v450), xmmword_29D2F1150);
  v25 = vpmaxq_s16(v23, v23);
  v26 = vpminq_s16(v24, v24);
  v27 = vzip1q_s16(v25, v26);
  v28.i64[0] = 0x10001000100010;
  v28.i64[1] = 0x10001000100010;
  v29 = vbicq_s8(vsubq_s16(v28, vclsq_s16(v27)), vceqzq_s16(v27));
  v454 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v13, v464), 6uLL), 6uLL);
  v455 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v14, v464), 6uLL), 6uLL);
  v456 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v15, v464), 6uLL), 6uLL);
  v457 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v16, v464), 6uLL), 6uLL);
  v24.i64[0] = 0x8000800080008000;
  v24.i64[1] = 0x8000800080008000;
  v30.i64[0] = 0x8000800080008000;
  v30.i64[1] = 0x8000800080008000;
  v31 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v452, v453), v454), v455), xmmword_29D2F1150);
  v32 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v452, v453), v454), v455), xmmword_29D2F1150);
  v33 = vpmaxq_s16(v31, v31);
  v34 = vpminq_s16(v32, v32);
  v35 = vmaxq_s16(vmaxq_s16(v25, v24), v33);
  v36 = vminq_s16(vminq_s16(v26, v30), v34);
  v37 = vzip1q_s16(v33, v34);
  v38 = vbicq_s8(vsubq_s16(v28, vclsq_s16(v37)), vceqzq_s16(v37));
  v458 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v17, v464), 6uLL), 6uLL);
  v459 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v18, v464), 6uLL), 6uLL);
  v460 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v19, v464), 6uLL), 6uLL);
  v461 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v20, v464), 6uLL), 6uLL);
  v39 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v456, v457), v458), v459), xmmword_29D2F1150);
  v40 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v456, v457), v458), v459), xmmword_29D2F1150);
  v41 = vpmaxq_s16(v39, v39);
  v42 = vpminq_s16(v40, v40);
  v43 = vminq_s16(v36, v42);
  v44 = vzip1q_s16(v41, v42);
  v45 = vbicq_s8(vsubq_s16(v28, vclsq_s16(v44)), vceqzq_s16(v44));
  v462 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v21, v464), 6uLL), 6uLL);
  v463 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v22, v464), 6uLL), 6uLL);
  v46 = vpmaxq_s16(v29, v29);
  v47 = vpmaxq_s16(v38, v38);
  v48 = vpmaxq_s16(v45, v45);
  v49 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v460, v461), v462), v463), xmmword_29D2F1150);
  v50 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v460, v461), v462), v463), xmmword_29D2F1150);
  v51 = vpmaxq_s16(v49, v49);
  v52 = vpminq_s16(v50, v50);
  v53 = vmaxq_s16(vmaxq_s16(v35, v41), v51);
  v54 = vminq_s16(v43, v52);
  v55 = vzip1q_s16(v51, v52);
  v56 = vbicq_s8(vsubq_s16(v28, vclsq_s16(v55)), vceqzq_s16(v55));
  v57 = vpmaxq_s16(v56, v56);
  v58 = vmaxq_s16(vmaxq_s16(v46, v47), vmaxq_s16(v48, v57));
  v59 = vclzq_s16(vsubq_s16(v53, v54));
  v41.i64[0] = 0xF000F000F000FLL;
  v41.i64[1] = 0xF000F000F000FLL;
  v26.i64[0] = -1;
  v26.i64[1] = -1;
  v471 = v54;
  v472 = v53;
  v60 = vsubq_s16(v28, v59);
  v61 = vsubq_s16(vshlq_s16(v26, vsubq_s16(v41, v59)), v54);
  v62 = vcgtq_s16(v58, v60);
  v63 = vminq_s16(v60, v58);
  v473 = vandq_s8(v61, v62);
  v61.i64[0] = 0x8000800080008;
  v61.i64[1] = 0x8000800080008;
  v64.i64[0] = 0x3000300030003;
  v64.i64[1] = 0x3000300030003;
  v65 = vorrq_s8(vandq_s8(vceqzq_s16(v63), v64), vorrq_s8(vandq_s8(v62, v61), 0));
  v66 = vmaxq_s16(vminq_s16(vsubq_s16(v63, v47), v64), 0);
  v67 = vmaxq_s16(vminq_s16(vsubq_s16(v63, v48), v64), 0);
  v467 = vsubq_s16(v63, v66);
  v468 = vsubq_s16(v63, v67);
  v68 = vmaxq_s16(vminq_s16(vsubq_s16(v63, v57), v64), 0);
  v469 = vsubq_s16(v63, v68);
  v470 = v63;
  v69 = vmaxq_s16(vminq_s16(vsubq_s16(v63, v46), v64), 0);
  v70 = vsubq_s16(v63, v69);
  v71 = vceqq_s16(vaddq_s16(v68, v67), vnegq_s16(vaddq_s16(v69, v66)));
  v69.i64[0] = 0x4000400040004;
  v69.i64[1] = 0x4000400040004;
  v72 = vorrq_s8(vbicq_s8(v69, v71), v65);
  v465 = v72;
  v466 = v70;
  if (vmaxvq_s16(v63))
  {
    v411 = v14;
    v412 = v18;
    v413 = v15;
    v414 = v16;
    v415 = v17;
    v416 = v19;
    v417 = v20;
    v418 = v21;
    v419 = v22;
    v73.i64[0] = 0x10001000100010;
    v73.i64[1] = 0x10001000100010;
    v74 = v65;
    v75 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v444, vqtbl1q_s8(v444, xmmword_29D2F1140)), 6uLL), 6uLL);
    v76 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v446, vqtbl1q_s8(v446, xmmword_29D2F1140)), 6uLL), 6uLL);
    v77 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v448, vqtbl1q_s8(v448, xmmword_29D2F1140)), 6uLL), 6uLL);
    v78 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v450, vqtbl1q_s8(v450, xmmword_29D2F1140)), 6uLL), 6uLL);
    v79 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v460, vqtbl1q_s8(v460, xmmword_29D2F1140)), 6uLL), 6uLL);
    v80 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v461, vqtbl1q_s8(v461, xmmword_29D2F1140)), 6uLL), 6uLL);
    v81 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v462, vqtbl1q_s8(v462, xmmword_29D2F1140)), 6uLL), 6uLL);
    v82 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v456, vqtbl1q_s8(v456, xmmword_29D2F1140)), 6uLL), 6uLL);
    v83 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v463, vqtbl1q_s8(v463, xmmword_29D2F1140)), 6uLL), 6uLL);
    v84 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v459, vqtbl1q_s8(v459, xmmword_29D2F1140)), 6uLL), 6uLL);
    v85 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v75, v76), v77), v78);
    v424 = v78;
    v425 = v77;
    v86 = vminq_s16(vminq_s16(vminq_s16(v75, v76), v77), v78);
    v87 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v458, vqtbl1q_s8(v458, xmmword_29D2F1140)), 6uLL), 6uLL);
    v88 = vqtbl1q_s8(v85, xmmword_29D2F1150);
    v89 = vqtbl1q_s8(v86, xmmword_29D2F1150);
    v90 = vpmaxq_s16(v88, v88);
    v91 = vpminq_s16(v89, v89);
    v92.i64[0] = 0x8000800080008000;
    v92.i64[1] = 0x8000800080008000;
    v93 = vmaxq_s16(v90, v92);
    v94.i64[0] = 0x8000800080008000;
    v94.i64[1] = 0x8000800080008000;
    v95 = vminq_s16(v91, v94);
    v96 = vzip1q_s16(v90, v91);
    v97 = vbicq_s8(vsubq_s16(v73, vclsq_s16(v96)), vceqzq_s16(v96));
    v98 = vpmaxq_s16(v97, v97);
    v430 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v453, vqtbl1q_s8(v453, xmmword_29D2F1140)), 6uLL), 6uLL);
    v432 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v452, vqtbl1q_s8(v452, xmmword_29D2F1140)), 6uLL), 6uLL);
    v434 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v455, vqtbl1q_s8(v455, xmmword_29D2F1140)), 6uLL), 6uLL);
    v436 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v454, vqtbl1q_s8(v454, xmmword_29D2F1140)), 6uLL), 6uLL);
    v99 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v432, v430), v436), v434), xmmword_29D2F1150);
    v100 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v432, v430), v436), v434), xmmword_29D2F1150);
    v101 = vpmaxq_s16(v99, v99);
    v102 = vpminq_s16(v100, v100);
    v103 = vmaxq_s16(v93, v101);
    v104 = vminq_s16(v95, v102);
    v105 = vzip1q_s16(v101, v102);
    v106 = vbicq_s8(vsubq_s16(v73, vclsq_s16(v105)), vceqzq_s16(v105));
    v107 = vpmaxq_s16(v106, v106);
    v438 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v457, vqtbl1q_s8(v457, xmmword_29D2F1140)), 6uLL), 6uLL);
    v108 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v82, v438), v87), v84), xmmword_29D2F1150);
    v109 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v82, v438), v87), v84), xmmword_29D2F1150);
    v110 = vpmaxq_s16(v108, v108);
    v111 = vpminq_s16(v109, v109);
    v112 = vmaxq_s16(v103, v110);
    v113 = vminq_s16(v104, v111);
    v114 = vzip1q_s16(v110, v111);
    v115 = vbicq_s8(vsubq_s16(v73, vclsq_s16(v114)), vceqzq_s16(v114));
    v116 = vpmaxq_s16(v115, v115);
    v117 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v79, v80), v81), v83), xmmword_29D2F1150);
    v118 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v79, v80), v81), v83), xmmword_29D2F1150);
    v119 = vpmaxq_s16(v117, v117);
    v120 = vpminq_s16(v118, v118);
    v121 = vmaxq_s16(v112, v119);
    v122 = vminq_s16(v113, v120);
    v123 = vzip1q_s16(v119, v120);
    v124 = vbicq_s8(vsubq_s16(v73, vclsq_s16(v123)), vceqzq_s16(v123));
    v125 = vpmaxq_s16(v124, v124);
    v126 = vmaxq_s16(vmaxq_s16(v98, v107), vmaxq_s16(v116, v125));
    v426 = v122;
    v428 = v121;
    v127 = vclzq_s16(vsubq_s16(v121, v122));
    v128 = vsubq_s16(v73, v127);
    v129 = vcgtq_s16(v126, v128);
    v130 = vminq_s16(v128, v126);
    v131 = vmaxq_s16(vminq_s16(vsubq_s16(v130, v98), v64), 0);
    v132 = vmaxq_s16(vminq_s16(vsubq_s16(v130, v107), v64), 0);
    v133 = vmaxq_s16(vminq_s16(vsubq_s16(v130, v116), v64), 0);
    v134 = vmaxq_s16(vminq_s16(vsubq_s16(v130, v125), v64), 0);
    v121.i64[0] = 0x4000400040004;
    v121.i64[1] = 0x4000400040004;
    v135 = vbicq_s8(v121, vceqq_s16(vaddq_s16(v134, v133), vnegq_s16(vaddq_s16(v131, v132))));
    v128.i64[0] = 0x18001800180018;
    v128.i64[1] = 0x18001800180018;
    v136 = vbslq_s8(v129, v128, v73);
    v421 = vsubq_s16(v130, v132);
    v422 = vsubq_s16(v130, v133);
    v423 = vsubq_s16(v130, v134);
    v134.i64[0] = 0x7000700070007;
    v134.i64[1] = 0x7000700070007;
    v420 = vsubq_s16(v130, v131);
    v133.i64[0] = 0x8000800080008;
    v133.i64[1] = 0x8000800080008;
    v137 = vandq_s8(vaddq_s16(v72, v72), v133);
    v121.i64[0] = 0x2000200020002;
    v121.i64[1] = 0x2000200020002;
    v138 = vandq_s8(vceqq_s16(vandq_s8(v74, v64), v121), v73);
    v139 = vceqzq_s16(vandq_s8(v74, v133));
    v140 = v469;
    v141 = v470;
    v143 = v466;
    v142 = v467;
    v144 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v470, v139), v138), v137), v466, v134);
    v145 = v468;
    v146 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v144, vshlq_n_s16(vaddq_s16(vaddq_s16(v468, v467), v469), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v130, vceqzq_s16((*&v136 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v135, v135)), v420, v134), vshlq_n_s16(vaddq_s16(vaddq_s16(v422, v421), v423), 3uLL))).i64[0], 0);
    v147 = vaddvq_s16(v146);
    v149 = a5 < 2 || a6 == 0;
    if (v147)
    {
      v150.i64[0] = 0x3000300030003;
      v150.i64[1] = 0x3000300030003;
      v151.i64[0] = 0xF000F000F000FLL;
      v151.i64[1] = 0xF000F000F000FLL;
      v444 = vbslq_s8(v146, v75, v444);
      v446 = vbslq_s8(v146, v76, v446);
      v152.i64[0] = -1;
      v152.i64[1] = -1;
      v448 = vbslq_s8(v146, v425, v448);
      v450 = vbslq_s8(v146, v424, v450);
      v153 = vandq_s8(vsubq_s16(vshlq_s16(v152, vsubq_s16(v151, v127)), v426), v129);
      v452 = vbslq_s8(v146, v432, v452);
      v453 = vbslq_s8(v146, v430, v453);
      v454 = vbslq_s8(v146, v436, v454);
      v455 = vbslq_s8(v146, v434, v455);
      v456 = vbslq_s8(v146, v82, v456);
      v457 = vbslq_s8(v146, v438, v457);
      v458 = vbslq_s8(v146, v87, v458);
      v459 = vbslq_s8(v146, v84, v459);
      v460 = vbslq_s8(v146, v79, v460);
      v461 = vbslq_s8(v146, v80, v461);
      v462 = vbslq_s8(v146, v81, v462);
      v463 = vbslq_s8(v146, v83, v463);
      v143 = vbslq_s8(v146, v420, v466);
      v142 = vbslq_s8(v146, v421, v467);
      v466 = v143;
      v467 = v142;
      v145 = vbslq_s8(v146, v422, v468);
      v140 = vbslq_s8(v146, v423, v469);
      v468 = v145;
      v469 = v140;
      v472 = vbslq_s8(v146, v428, v472);
      v473 = vbslq_s8(v146, v153, v473);
      v141 = vbslq_s8(v146, v130, v470);
      v470 = v141;
      v471 = vbslq_s8(v146, v426, v471);
      v72 = vbslq_s8(v146, vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v130), v150), v136), v135), v465);
      v464 = vbslq_s8(v146, vsubq_s16(v464, vqtbl1q_s8(v464, xmmword_29D2F1140)), v464);
      v465 = v72;
    }

    if (!v149)
    {
      v154 = vqtbl4q_s8(*v8.i8, xmmword_29D2F1160);
      v155 = vsubq_s16(v8, vqtbl4q_s8(*v8.i8, xmmword_29D2F10B0));
      v156 = vsubq_s16(v10, v154);
      v157 = vsubq_s16(v11, v154);
      v475.val[0] = v440;
      v475.val[1] = v442;
      v475.val[2] = v443;
      v475.val[3].i64[0] = v411.i64[0];
      v475.val[3].i64[1] = v11.i64[1];
      v158 = vsubq_s16(v440, vqtbl4q_s8(v475, xmmword_29D2F10B0));
      v159 = vsubq_s16(v442, vqtbl4q_s8(v475, xmmword_29D2F10F0));
      v160 = vsubq_s16(v443, vqtbl4q_s8(v475, xmmword_29D2F1160));
      v161 = vsubq_s16(v411, vqtbl4q_s8(v475, xmmword_29D2F1100));
      v476.val[0] = v413;
      v476.val[1] = v414;
      v476.val[2] = v415;
      v476.val[3].i64[0] = v412.i64[0];
      v476.val[3].i64[1] = v11.i64[1];
      v475.val[1] = vsubq_s16(v413, vqtbl4q_s8(v476, xmmword_29D2F1170));
      v475.val[2] = vsubq_s16(v414, vqtbl4q_s8(v476, xmmword_29D2F1180));
      v475.val[3] = vsubq_s16(v415, vqtbl4q_s8(v476, xmmword_29D2F10B0));
      v162 = vsubq_s16(v412, vqtbl4q_s8(v476, xmmword_29D2F10C0));
      v474.val[0] = v416;
      v474.val[1] = v417;
      v474.val[2] = v418;
      v474.val[3].i64[0] = v419.i64[0];
      v474.val[3].i64[1] = v11.i64[1];
      v475.val[0] = vsubq_s16(v416, vqtbl4q_s8(v474, xmmword_29D2F1170));
      v476.val[0] = vsubq_s16(v417, vqtbl4q_s8(v474, xmmword_29D2F1120));
      v163 = vsubq_s16(v418, vqtbl4q_s8(v474, xmmword_29D2F10B0));
      v476.val[1].i64[0] = v157.i64[0];
      v476.val[1].i64[1] = v155.i64[0];
      v164 = vsubq_s16(v419, vqtbl4q_s8(v474, xmmword_29D2F10C0));
      v155.i64[0] = v157.i64[1];
      v165 = vshlq_n_s16(v476.val[1], 6uLL);
      v476.val[1] = vshlq_n_s16(v475.val[1], 6uLL);
      v476.val[3] = vshlq_n_s16(v475.val[2], 6uLL);
      v474.val[0] = vshlq_n_s16(v475.val[3], 6uLL);
      v474.val[1] = vshlq_n_s16(v162, 6uLL);
      v474.val[2] = vshlq_n_s16(v475.val[0], 6uLL);
      v166 = vshlq_n_s16(v164, 6uLL);
      v167 = vshrq_n_s16(vshlq_n_s16(v155, 6uLL), 6uLL);
      v168 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v9, vqtbl4q_s8(*v8.i8, xmmword_29D2F10C0)), 6uLL), 6uLL);
      v169 = vshrq_n_s16(vshlq_n_s16(v156, 6uLL), 6uLL);
      v170 = vshrq_n_s16(v165, 6uLL);
      v171 = vshrq_n_s16(vshlq_n_s16(v158, 6uLL), 6uLL);
      v172 = vshrq_n_s16(vshlq_n_s16(v159, 6uLL), 6uLL);
      v173 = vshrq_n_s16(vshlq_n_s16(v160, 6uLL), 6uLL);
      v174 = vshrq_n_s16(vshlq_n_s16(v161, 6uLL), 6uLL);
      v175 = vshrq_n_s16(v476.val[1], 6uLL);
      v176 = vshrq_n_s16(v476.val[3], 6uLL);
      v177 = vshrq_n_s16(v474.val[0], 6uLL);
      v178 = vshrq_n_s16(v474.val[1], 6uLL);
      v179 = vshrq_n_s16(v474.val[2], 6uLL);
      v180 = vshrq_n_s16(vshlq_n_s16(v476.val[0], 6uLL), 6uLL);
      v181 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v167, v168), v169), v170), xmmword_29D2F1150);
      v182 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v167, v168), v169), v170), xmmword_29D2F1150);
      v183 = vpmaxq_s16(v181, v181);
      v184 = vpminq_s16(v182, v182);
      v476.val[0].i64[0] = 0x8000800080008000;
      v476.val[0].i64[1] = 0x8000800080008000;
      v476.val[0] = vmaxq_s16(v183, v476.val[0]);
      v476.val[1].i64[0] = 0x8000800080008000;
      v476.val[1].i64[1] = 0x8000800080008000;
      v476.val[1] = vminq_s16(v184, v476.val[1]);
      v185 = vzip1q_s16(v183, v184);
      v183.i64[0] = 0x10001000100010;
      v183.i64[1] = 0x10001000100010;
      v476.val[3] = vbicq_s8(vsubq_s16(v183, vclsq_s16(v185)), vceqzq_s16(v185));
      v476.val[3] = vpmaxq_s16(v476.val[3], v476.val[3]);
      v474.val[0] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v171, v172), v173), v174), xmmword_29D2F1150);
      v474.val[1] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v171, v172), v173), v174), xmmword_29D2F1150);
      v474.val[0] = vpmaxq_s16(v474.val[0], v474.val[0]);
      v474.val[1] = vpminq_s16(v474.val[1], v474.val[1]);
      v476.val[0] = vmaxq_s16(v476.val[0], v474.val[0]);
      v476.val[1] = vminq_s16(v476.val[1], v474.val[1]);
      v474.val[0] = vzip1q_s16(v474.val[0], v474.val[1]);
      v474.val[0] = vbicq_s8(vsubq_s16(v183, vclsq_s16(v474.val[0])), vceqzq_s16(v474.val[0]));
      v474.val[0] = vpmaxq_s16(v474.val[0], v474.val[0]);
      v474.val[1] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v175, v176), v177), v178), xmmword_29D2F1150);
      v474.val[2] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v175, v176), v177), v178), xmmword_29D2F1150);
      v474.val[1] = vpmaxq_s16(v474.val[1], v474.val[1]);
      v474.val[2] = vpminq_s16(v474.val[2], v474.val[2]);
      v476.val[0] = vmaxq_s16(v476.val[0], v474.val[1]);
      v474.val[1] = vzip1q_s16(v474.val[1], v474.val[2]);
      v474.val[1] = vbicq_s8(vsubq_s16(v183, vclsq_s16(v474.val[1])), vceqzq_s16(v474.val[1]));
      v186 = vpmaxq_s16(v474.val[1], v474.val[1]);
      v435 = v180;
      v437 = v179;
      v439 = vshrq_n_s16(v166, 6uLL);
      v441 = vshrq_n_s16(vshlq_n_s16(v163, 6uLL), 6uLL);
      v474.val[1] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v179, v180), v441), v439), xmmword_29D2F1150);
      v187 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v179, v180), v441), v439), xmmword_29D2F1150);
      v474.val[1] = vpmaxq_s16(v474.val[1], v474.val[1]);
      v188 = vpminq_s16(v187, v187);
      v189 = vmaxq_s16(v476.val[0], v474.val[1]);
      v190 = vminq_s16(vminq_s16(v476.val[1], v474.val[2]), v188);
      v191 = vzip1q_s16(v474.val[1], v188);
      v192 = vbicq_s8(vsubq_s16(v183, vclsq_s16(v191)), vceqzq_s16(v191));
      v193 = vpmaxq_s16(v192, v192);
      v476.val[0] = vmaxq_s16(vmaxq_s16(v476.val[3], v474.val[0]), vmaxq_s16(v186, v193));
      v433 = v189;
      v194 = vclzq_s16(vsubq_s16(v189, v190));
      v476.val[1] = vsubq_s16(v183, v194);
      v195 = vcgtq_s16(v476.val[0], v476.val[1]);
      v196 = vminq_s16(v476.val[1], v476.val[0]);
      v476.val[0] = vsubq_s16(v196, v476.val[3]);
      v476.val[3].i64[0] = 0x3000300030003;
      v476.val[3].i64[1] = 0x3000300030003;
      v476.val[0] = vmaxq_s16(vminq_s16(v476.val[0], v476.val[3]), 0);
      v476.val[1] = vmaxq_s16(vminq_s16(vsubq_s16(v196, v474.val[0]), v476.val[3]), 0);
      v474.val[0] = vmaxq_s16(vminq_s16(vsubq_s16(v196, v186), v476.val[3]), 0);
      v197 = vmaxq_s16(vminq_s16(vsubq_s16(v196, v193), v476.val[3]), 0);
      v198 = vsubq_s16(v196, v476.val[0]);
      v199 = vsubq_s16(v196, v474.val[0]);
      v200 = vsubq_s16(v196, v197);
      v201 = vceqq_s16(vaddq_s16(v197, v474.val[0]), vnegq_s16(vaddq_s16(v476.val[0], v476.val[1])));
      v476.val[0].i64[0] = 0x4000400040004;
      v476.val[0].i64[1] = 0x4000400040004;
      v202 = vbicq_s8(v476.val[0], v201);
      v474.val[0].i64[0] = 0x7000700070007;
      v474.val[0].i64[1] = 0x7000700070007;
      v427 = v199;
      v429 = vsubq_s16(v196, v476.val[1]);
      v431 = v200;
      v203 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v196, v195), vaddq_s16(v202, v202)), v198, v474.val[0]), vshlq_n_s16(vaddq_s16(vaddq_s16(v199, v429), v200), 3uLL));
      v72 = v465;
      v143 = v466;
      v204.i64[0] = 0x2000200020002;
      v204.i64[1] = 0x2000200020002;
      v205 = vandq_s8(vceqq_s16(vandq_s8(v465, v476.val[3]), v204), v183);
      v476.val[3].i64[0] = 0x8000800080008;
      v476.val[3].i64[1] = 0x8000800080008;
      v206 = vandq_s8(vaddq_s16(v72, v72), v476.val[3]);
      v207 = vceqzq_s16(vandq_s8(v465, v476.val[3]));
      v140 = v469;
      v141 = v470;
      v208 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v470, v207), v206), v205), v466, v474.val[0]);
      v142 = v467;
      v145 = v468;
      v209 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v208, vshlq_n_s16(vaddq_s16(vaddq_s16(v468, v467), v469), 3uLL)), v203).i64[0], 0);
      if (vaddvq_s16(v209))
      {
        v210 = vextq_s8(v11, v11, 8uLL);
        v211.i64[0] = 0x9000900090009;
        v211.i64[1] = 0x9000900090009;
        v212 = vorrq_s8(vandq_s8(vceqzq_s16(v196), v204), vsubq_s16(vandq_s8(v195, v211), vmvnq_s8(v195)));
        v211.i64[0] = -1;
        v211.i64[1] = -1;
        v213.i64[0] = 0xF000F000F000FLL;
        v213.i64[1] = 0xF000F000F000FLL;
        v143 = vbslq_s8(v209, v198, v466);
        v142 = vbslq_s8(v209, v429, v467);
        v145 = vbslq_s8(v209, v427, v468);
        v140 = vbslq_s8(v209, v431, v469);
        v141 = vbslq_s8(v209, v196, v470);
        v72 = vbslq_s8(v209, vorrq_s8(v212, v202), v465);
        v463 = vbslq_s8(v209, v439, v463);
        v464 = vbslq_s8(v209, v210, v464);
        v444 = vbslq_s8(v209, v167, v444);
        v446 = vbslq_s8(v209, v168, v446);
        v448 = vbslq_s8(v209, v169, v448);
        v450 = vbslq_s8(v209, v170, v450);
        v452 = vbslq_s8(v209, v171, v452);
        v453 = vbslq_s8(v209, v172, v453);
        v454 = vbslq_s8(v209, v173, v454);
        v455 = vbslq_s8(v209, v174, v455);
        v456 = vbslq_s8(v209, v175, v456);
        v457 = vbslq_s8(v209, v176, v457);
        v458 = vbslq_s8(v209, v177, v458);
        v459 = vbslq_s8(v209, v178, v459);
        v460 = vbslq_s8(v209, v437, v460);
        v461 = vbslq_s8(v209, v435, v461);
        v462 = vbslq_s8(v209, v441, v462);
        v471 = vbslq_s8(v209, v190, v471);
        v472 = vbslq_s8(v209, v433, v472);
        v473 = vbslq_s8(v209, vandq_s8(vsubq_s16(vshlq_s16(v211, vsubq_s16(v213, v194)), v190), v195), v473);
        v466 = v143;
        v467 = v142;
        v468 = v145;
        v469 = v140;
        v470 = v141;
        v465 = v72;
      }
    }

    v214 = vandq_s8(v473, vceqq_s16(v141, v143));
    v445 = vaddq_s16(v214, v444);
    v447 = vaddq_s16(v446, v214);
    v449 = vaddq_s16(v448, v214);
    v451 = vaddq_s16(v450, v214);
    v215 = vandq_s8(v473, vceqq_s16(v141, v142));
    v452 = vaddq_s16(v452, v215);
    v453 = vaddq_s16(v453, v215);
    v454 = vaddq_s16(v454, v215);
    v455 = vaddq_s16(v455, v215);
    v216 = vandq_s8(v473, vceqq_s16(v141, v145));
    v456 = vaddq_s16(v456, v216);
    v457 = vaddq_s16(v457, v216);
    v458 = vaddq_s16(v458, v216);
    v459 = vaddq_s16(v459, v216);
    v217 = vandq_s8(v473, vceqq_s16(v141, v140));
    v460 = vaddq_s16(v460, v217);
    v461 = vaddq_s16(v461, v217);
    v462 = vaddq_s16(v462, v217);
    v463 = vaddq_s16(v463, v217);
    v217.i64[0] = 0x8000800080008;
    v217.i64[1] = 0x8000800080008;
    v218.i64[0] = 0x3000300030003;
    v218.i64[1] = 0x3000300030003;
    v219.i64[0] = 0x2000200020002;
    v219.i64[1] = 0x2000200020002;
    v220 = vceqq_s16(vandq_s8(v72, v218), v219);
    v219.i64[0] = 0x10001000100010;
    v219.i64[1] = 0x10001000100010;
    v221 = vandq_s8(v220, v219);
    v219.i64[0] = 0x7000700070007;
    v219.i64[1] = 0x7000700070007;
    v222 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v141, vceqzq_s16(vandq_s8(v72, v217))), vandq_s8(vaddq_s16(v72, v72), v217)), v221), v143, v219), vshlq_n_s16(vaddq_s16(vaddq_s16(v145, v142), v140), 3uLL));
    v223 = vpaddq_s16(v222, v222);
    if ((vpaddq_s16(v223, v223).i16[0] - 949) < 0xFFFFFFFFFFFFFBF8)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 128;
    }

    else
    {
      v224 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v225 = 8 * (a1 & 7);
      if (v225)
      {
        v226 = *v224 & ~(-1 << v225);
      }

      else
      {
        v226 = 0;
      }

      *a2 = 0;
      v230 = v464.i64[0];
      if (v141.i16[0])
      {
        v231 = ((v141.i8[0] - 1) & 0xF) << 20;
      }

      else
      {
        v231 = 0;
      }

      if (v141.i16[1])
      {
        v232 = ((v141.i8[2] - 1) & 0xF) << 24;
      }

      else
      {
        v232 = 0;
      }

      if (v141.i16[2])
      {
        v233 = (v141.u16[2] << 28) - 0x10000000;
      }

      else
      {
        v233 = 0;
      }

      if (v141.i16[3])
      {
        v234 = ((v141.i8[6] - 1) & 0xF) << 32;
      }

      else
      {
        v234 = 0;
      }

      v235 = (v72.i8[0] & 0x1F | (32 * (v72.i8[2] & 0x1F)) & 0x83FF | ((v72.i8[4] & 0x1F) << 10) | ((v72.i8[6] & 0x1F) << 15) | v231 | v232 | v233) + v234;
      v236 = (v235 << v225) | v226;
      if (v225 >= 0x1C)
      {
        *v224 = v236;
        v236 = v235 >> (-8 * (a1 & 7u));
      }

      v237 = v230 & 0x3FF | ((WORD1(v230) & 0x3FF) << 10) & 0xFFFFFFFFC00FFFFFLL | ((WORD2(v230) & 0x3FF) << 20) | ((HIWORD(v230) & 0x3FF) << 30);
      v238 = (v225 + 36) & 0x3C;
      v239 = v236 | (v237 << v238);
      if (v238 >= 0x18)
      {
        *(v224 + (((v225 + 36) >> 3) & 8)) = v239;
        v239 = v237 >> -v238;
      }

      v240 = v225 + 76;
      v241 = vsubq_s16(v470, v466);
      v242 = vsubq_s16(v470, v467);
      v243 = vsubq_s16(v470, v468);
      v244 = vsubq_s16(v470, v469);
      *v241.i8 = vqmovn_u16(v241);
      *v242.i8 = vqmovn_u16(v242);
      *v243.i8 = vqmovn_u16(v243);
      *v244.i8 = vqmovn_u16(v244);
      v245 = vtrn1q_s8(v241, v242);
      v246 = vtrn2q_s8(v241, v242);
      v247 = vtrn1q_s8(v243, v244);
      v248 = vtrn2q_s8(v243, v244);
      v249 = vzip1q_s16(v246, v248);
      v250 = vtrn2q_s16(v246, v248);
      v246.i64[0] = vzip1q_s32(vzip1q_s16(v245, v247), v249).u64[0];
      v250.i64[0] = vzip1q_s32(vtrn2q_s16(v245, v247), v250).u64[0];
      v243.i64[0] = 0x202020202020202;
      v243.i64[1] = 0x202020202020202;
      v251 = vandq_s8(vmovl_s16(vtst_s16(*v465.i8, 0x4000400040004)), v243);
      v243.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v243.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v245.i64[0] = -1;
      v245.i64[1] = -1;
      v252 = vshlq_u8(v245, vorrq_s8(v251, v243));
      v253 = vmovl_u8(vand_s8(*v252.i8, *v246.i8));
      v254 = vmovl_u8(vand_s8(*&vextq_s8(v252, v252, 8uLL), *v250.i8));
      v255 = vmovl_u8(*v251.i8);
      v256 = vmovl_high_u8(v251);
      v257 = vpaddq_s16(vshlq_u16(v253, vtrn1q_s16(0, v255)), vshlq_u16(v254, vtrn1q_s16(0, v256)));
      v258 = vpaddq_s16(v255, v256);
      v259 = vmovl_u16(*v258.i8);
      v260 = vmovl_high_u16(v258);
      v261 = vpaddq_s32(vshlq_u32(vmovl_u16(*v257.i8), vtrn1q_s32(0, v259)), vshlq_u32(vmovl_high_u16(v257), vtrn1q_s32(0, v260)));
      v262 = vpaddq_s32(v259, v260);
      v263.i64[0] = v261.u32[0];
      v263.i64[1] = v261.u32[1];
      v264 = v263;
      v263.i64[0] = v261.u32[2];
      v263.i64[1] = v261.u32[3];
      v265 = v263;
      v263.i64[0] = v262.u32[0];
      v263.i64[1] = v262.u32[1];
      v266 = v263;
      v263.i64[0] = v262.u32[2];
      v263.i64[1] = v262.u32[3];
      v267 = vpaddq_s64(vshlq_u64(v264, vzip1q_s64(0, v266)), vshlq_u64(v265, vzip1q_s64(0, v263)));
      v268 = vpaddq_s64(v266, v263);
      v269 = (v225 + 76) & 0x3C;
      v270 = (v267.i64[0] << v269) | v239;
      if ((v268.i64[0] + v269) >= 0x40)
      {
        *(v224 + ((v240 >> 3) & 0x18)) = v270;
        v270 = v267.i64[0] >> -v269;
      }

      v271 = v268.i64[0] + v240;
      v272 = v270 | (v267.i64[1] << v271);
      if ((v271 & 0x3F) + v268.i64[1] >= 0x40)
      {
        *(v224 + ((v271 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v272;
        v272 = v267.i64[1] >> -(v271 & 0x3F);
        if ((v271 & 0x3F) == 0)
        {
          v272 = 0;
        }
      }

      v273 = v271 + v268.i64[1];
      v274.i64[0] = 0x8000800080008;
      v274.i64[1] = 0x8000800080008;
      v275.i64[0] = -1;
      v275.i64[1] = -1;
      v276 = vandq_s8(vextq_s8(vtstq_s16(v465, v274), 0, 8uLL), v470);
      v277.i64[0] = 0xF000F000F000FLL;
      v277.i64[1] = 0xF000F000F000FLL;
      v278 = vandq_s8(vshlq_u16(v275, vaddq_s16(v276, v277)), v473);
      v279 = vmovl_u16(*v276.i8);
      v280 = vpaddq_s32(vshlq_u32(vmovl_u16(*v278.i8), vtrn1q_s32(0, v279)), vmovl_high_u16(v278));
      v281 = vpaddq_s32(v279, vmovl_high_u16(v276));
      v282.i64[0] = v280.u32[0];
      v282.i64[1] = v280.u32[1];
      v283 = v282;
      v282.i64[0] = v280.u32[2];
      v282.i64[1] = v280.u32[3];
      v284 = v282;
      v282.i64[0] = v281.u32[0];
      v282.i64[1] = v281.u32[1];
      v285 = v282;
      v282.i64[0] = v281.u32[2];
      v282.i64[1] = v281.u32[3];
      v286 = vpaddq_s64(vshlq_u64(v283, vzip1q_s64(0, v285)), vshlq_u64(v284, vzip1q_s64(0, v282)));
      v287 = vpaddq_s64(v285, v282);
      v288 = (v286.i64[0] << v273) | v272;
      if (v287.i64[0] + (v273 & 0x3F) >= 0x40)
      {
        *(v224 + ((v273 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v288;
        v288 = v286.i64[0] >> -(v273 & 0x3F);
        if ((v273 & 0x3F) == 0)
        {
          v288 = 0;
        }
      }

      v289 = v287.i64[0] + v273;
      v290 = v288 | (v286.i64[1] << v289);
      if ((v289 & 0x3F) + v287.i64[1] >= 0x40)
      {
        *(v224 + ((v289 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v290;
        v290 = v286.i64[1] >> -(v289 & 0x3F);
        if ((v289 & 0x3F) == 0)
        {
          v290 = 0;
        }
      }

      v291 = v289 + v287.i64[1];
      v292 = vextq_s8(0, v466, 8uLL);
      v293.i64[0] = 0xF000F000F000FLL;
      v293.i64[1] = 0xF000F000F000FLL;
      v294.i64[0] = -1;
      v294.i64[1] = -1;
      v295 = vandq_s8(vshlq_u16(v294, vaddq_s16(v292, v293)), v445);
      v296 = vmovl_u16(*v292.i8);
      v297 = vmovl_high_u16(v292);
      v298 = vpaddq_s32(vmovl_u16(*v295.i8), vshlq_u32(vmovl_high_u16(v295), vtrn1q_s32(0, v297)));
      v299 = vpaddq_s32(v296, v297);
      v300.i64[0] = v298.u32[0];
      v300.i64[1] = v298.u32[1];
      v301 = v300;
      v300.i64[0] = v298.u32[2];
      v300.i64[1] = v298.u32[3];
      v302 = v300;
      v300.i64[0] = v299.u32[0];
      v300.i64[1] = v299.u32[1];
      v303 = v300;
      v300.i64[0] = v299.u32[2];
      v300.i64[1] = v299.u32[3];
      v304 = vpaddq_s64(vshlq_u64(v301, vzip1q_s64(0, v303)), vshlq_u64(v302, vzip1q_s64(0, v300)));
      v305 = vpaddq_s64(v303, v300);
      v306 = (v304.i64[0] << v291) | v290;
      if (v305.i64[0] + (v291 & 0x3F) >= 0x40)
      {
        *(v224 + ((v291 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v306;
        v306 = v304.i64[0] >> -(v291 & 0x3F);
        if ((v291 & 0x3F) == 0)
        {
          v306 = 0;
        }
      }

      v307 = v305.i64[0] + v291;
      v308 = v306 | (v304.i64[1] << v307);
      if ((v307 & 0x3F) + v305.i64[1] >= 0x40)
      {
        *(v224 + ((v307 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v308;
        v308 = v304.i64[1] >> -(v307 & 0x3F);
        if ((v307 & 0x3F) == 0)
        {
          v308 = 0;
        }
      }

      v309 = v307 + v305.i64[1];
      v310.i64[0] = 0xF000F000F000FLL;
      v310.i64[1] = 0xF000F000F000FLL;
      v311.i64[0] = -1;
      v311.i64[1] = -1;
      v312 = vandq_s8(vshlq_u16(v311, vaddq_s16(v466, v310)), v447);
      v313 = vmovl_u16(*v466.i8);
      v314 = vmovl_high_u16(v466);
      v315 = vpaddq_s32(vshlq_u32(vmovl_u16(*v312.i8), vtrn1q_s32(0, v313)), vshlq_u32(vmovl_high_u16(v312), vtrn1q_s32(0, v314)));
      v316 = vpaddq_s32(v313, v314);
      v317.i64[0] = v315.u32[0];
      v317.i64[1] = v315.u32[1];
      v318 = v317;
      v317.i64[0] = v315.u32[2];
      v317.i64[1] = v315.u32[3];
      v319 = v317;
      v317.i64[0] = v316.u32[0];
      v317.i64[1] = v316.u32[1];
      v320 = v317;
      v317.i64[0] = v316.u32[2];
      v317.i64[1] = v316.u32[3];
      v321 = vpaddq_s64(vshlq_u64(v318, vzip1q_s64(0, v320)), vshlq_u64(v319, vzip1q_s64(0, v317)));
      v322 = vpaddq_s64(v320, v317);
      v323 = (v321.i64[0] << v309) | v308;
      if (v322.i64[0] + (v309 & 0x3F) >= 0x40)
      {
        *(v224 + ((v309 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v323;
        v323 = v321.i64[0] >> -(v309 & 0x3F);
        if ((v309 & 0x3F) == 0)
        {
          v323 = 0;
        }
      }

      v324 = v322.i64[0] + v309;
      v325 = v323 | (v321.i64[1] << v324);
      if ((v324 & 0x3F) + v322.i64[1] >= 0x40)
      {
        *(v224 + ((v324 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v325;
        v325 = v321.i64[1] >> -(v324 & 0x3F);
        if ((v324 & 0x3F) == 0)
        {
          v325 = 0;
        }
      }

      v326 = v324 + v322.i64[1];
      v327.i64[0] = 0xF000F000F000FLL;
      v327.i64[1] = 0xF000F000F000FLL;
      v328.i64[0] = -1;
      v328.i64[1] = -1;
      v329 = vandq_s8(vshlq_u16(v328, vaddq_s16(v466, v327)), v449);
      v330 = vmovl_u16(*v466.i8);
      v331 = vmovl_high_u16(v466);
      v332 = vpaddq_s32(vshlq_u32(vmovl_u16(*v329.i8), vtrn1q_s32(0, v330)), vshlq_u32(vmovl_high_u16(v329), vtrn1q_s32(0, v331)));
      v333 = vpaddq_s32(v330, v331);
      v334.i64[0] = v332.u32[0];
      v334.i64[1] = v332.u32[1];
      v335 = v334;
      v334.i64[0] = v332.u32[2];
      v334.i64[1] = v332.u32[3];
      v336 = v334;
      v334.i64[0] = v333.u32[0];
      v334.i64[1] = v333.u32[1];
      v337 = v334;
      v334.i64[0] = v333.u32[2];
      v334.i64[1] = v333.u32[3];
      v338 = vpaddq_s64(vshlq_u64(v335, vzip1q_s64(0, v337)), vshlq_u64(v336, vzip1q_s64(0, v334)));
      v339 = vpaddq_s64(v337, v334);
      v340 = (v338.i64[0] << v326) | v325;
      if (v339.i64[0] + (v326 & 0x3F) >= 0x40)
      {
        *(v224 + ((v326 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v340;
        v340 = v338.i64[0] >> -(v326 & 0x3F);
        if ((v326 & 0x3F) == 0)
        {
          v340 = 0;
        }
      }

      v341 = v339.i64[0] + v326;
      v342 = v340 | (v338.i64[1] << v341);
      if ((v341 & 0x3F) + v339.i64[1] >= 0x40)
      {
        *(v224 + ((v341 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v342;
        v342 = v338.i64[1] >> -(v341 & 0x3F);
        if ((v341 & 0x3F) == 0)
        {
          v342 = 0;
        }
      }

      v343 = v341 + v339.i64[1];
      v344.i64[0] = 0xF000F000F000FLL;
      v344.i64[1] = 0xF000F000F000FLL;
      v345.i64[0] = -1;
      v345.i64[1] = -1;
      v346 = vandq_s8(vshlq_u16(v345, vaddq_s16(v466, v344)), v451);
      v347 = vmovl_u16(*v466.i8);
      v348 = vmovl_high_u16(v466);
      v349 = vpaddq_s32(vshlq_u32(vmovl_u16(*v346.i8), vtrn1q_s32(0, v347)), vshlq_u32(vmovl_high_u16(v346), vtrn1q_s32(0, v348)));
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
      v357 = (v355.i64[0] << v343) | v342;
      if (v356.i64[0] + (v343 & 0x3F) >= 0x40)
      {
        *(v224 + ((v343 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v357;
        v357 = v355.i64[0] >> -(v343 & 0x3F);
        if ((v343 & 0x3F) == 0)
        {
          v357 = 0;
        }
      }

      v358 = v356.i64[1];
      v359 = v356.i64[0] + v343;
      v360 = (v356.i64[0] + v343) & 0x3F;
      v361 = v357 | (v355.i64[1] << v359);
      if ((v360 + v356.i64[1]) >= 0x40)
      {
        *(v224 + ((v359 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
        v361 = v355.i64[1] >> -v360;
        if (!v360)
        {
          v361 = 0;
        }
      }

      v362 = 0;
      v363.i64[0] = 0xF000F000F000FLL;
      v363.i64[1] = 0xF000F000F000FLL;
      v364.i64[0] = -1;
      v364.i64[1] = -1;
      v365 = v359 + v358;
      do
      {
        v366 = vandq_s8(vshlq_u16(v364, vaddq_s16(v467, v363)), *(&v452 + v362));
        v367 = vmovl_u16(*v467.i8);
        v368 = vmovl_high_u16(v467);
        v369 = vpaddq_s32(vshlq_u32(vmovl_u16(*v366.i8), vtrn1q_s32(0, v367)), vshlq_u32(vmovl_high_u16(v366), vtrn1q_s32(0, v368)));
        v370 = vpaddq_s32(v367, v368);
        v371.i64[0] = v369.u32[0];
        v371.i64[1] = v369.u32[1];
        v372 = v371;
        v371.i64[0] = v369.u32[2];
        v371.i64[1] = v369.u32[3];
        v373 = v371;
        v371.i64[0] = v370.u32[0];
        v371.i64[1] = v370.u32[1];
        v374 = v371;
        v371.i64[0] = v370.u32[2];
        v371.i64[1] = v370.u32[3];
        v375 = vpaddq_s64(vshlq_u64(v372, vzip1q_s64(0, v374)), vshlq_u64(v373, vzip1q_s64(0, v371)));
        v376 = vpaddq_s64(v374, v371);
        v377 = (v375.i64[0] << v365) | v361;
        if (v376.i64[0] + (v365 & 0x3F) >= 0x40)
        {
          *(v224 + ((v365 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v377;
          v377 = v375.i64[0] >> -(v365 & 0x3F);
          if ((v365 & 0x3F) == 0)
          {
            v377 = 0;
          }
        }

        v378 = v376.i64[0] + v365;
        v361 = v377 | (v375.i64[1] << v378);
        if ((v378 & 0x3F) + v376.i64[1] >= 0x40)
        {
          *(v224 + ((v378 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
          v361 = v375.i64[1] >> -(v378 & 0x3F);
          if ((v378 & 0x3F) == 0)
          {
            v361 = 0;
          }
        }

        v365 = v378 + v376.i64[1];
        v362 += 16;
      }

      while (v362 != 64);
      v379 = 0;
      v380.i64[0] = 0xF000F000F000FLL;
      v380.i64[1] = 0xF000F000F000FLL;
      v381.i64[0] = -1;
      v381.i64[1] = -1;
      do
      {
        v382 = vandq_s8(vshlq_u16(v381, vaddq_s16(v468, v380)), *(&v456 + v379));
        v383 = vmovl_u16(*v468.i8);
        v384 = vmovl_high_u16(v468);
        v385 = vpaddq_s32(vshlq_u32(vmovl_u16(*v382.i8), vtrn1q_s32(0, v383)), vshlq_u32(vmovl_high_u16(v382), vtrn1q_s32(0, v384)));
        v386 = vpaddq_s32(v383, v384);
        v387.i64[0] = v385.u32[0];
        v387.i64[1] = v385.u32[1];
        v388 = v387;
        v387.i64[0] = v385.u32[2];
        v387.i64[1] = v385.u32[3];
        v389 = v387;
        v387.i64[0] = v386.u32[0];
        v387.i64[1] = v386.u32[1];
        v390 = v387;
        v387.i64[0] = v386.u32[2];
        v387.i64[1] = v386.u32[3];
        v391 = vpaddq_s64(vshlq_u64(v388, vzip1q_s64(0, v390)), vshlq_u64(v389, vzip1q_s64(0, v387)));
        v392 = vpaddq_s64(v390, v387);
        v393 = (v391.i64[0] << v365) | v361;
        if (v392.i64[0] + (v365 & 0x3F) >= 0x40)
        {
          *(v224 + ((v365 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v393;
          v393 = v391.i64[0] >> -(v365 & 0x3F);
          if ((v365 & 0x3F) == 0)
          {
            v393 = 0;
          }
        }

        v394 = v392.i64[0] + v365;
        v361 = v393 | (v391.i64[1] << v394);
        if ((v394 & 0x3F) + v392.i64[1] >= 0x40)
        {
          *(v224 + ((v394 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
          v361 = v391.i64[1] >> -(v394 & 0x3F);
          if ((v394 & 0x3F) == 0)
          {
            v361 = 0;
          }
        }

        v365 = v394 + v392.i64[1];
        v379 += 16;
      }

      while (v379 != 64);
      v395 = 0;
      v396.i64[0] = 0xF000F000F000FLL;
      v396.i64[1] = 0xF000F000F000FLL;
      v397.i64[0] = -1;
      v397.i64[1] = -1;
      do
      {
        v398 = vandq_s8(vshlq_u16(v397, vaddq_s16(v469, v396)), *(&v460 + v395));
        v399 = vmovl_u16(*v469.i8);
        v400 = vmovl_high_u16(v469);
        v401 = vpaddq_s32(vshlq_u32(vmovl_u16(*v398.i8), vtrn1q_s32(0, v399)), vshlq_u32(vmovl_high_u16(v398), vtrn1q_s32(0, v400)));
        v402 = vpaddq_s32(v399, v400);
        v403.i64[0] = v401.u32[0];
        v403.i64[1] = v401.u32[1];
        v404 = v403;
        v403.i64[0] = v401.u32[2];
        v403.i64[1] = v401.u32[3];
        v405 = v403;
        v403.i64[0] = v402.u32[0];
        v403.i64[1] = v402.u32[1];
        v406 = v403;
        v403.i64[0] = v402.u32[2];
        v403.i64[1] = v402.u32[3];
        v407 = vpaddq_s64(vshlq_u64(v404, vzip1q_s64(0, v406)), vshlq_u64(v405, vzip1q_s64(0, v403)));
        v408 = vpaddq_s64(v406, v403);
        v409 = (v407.i64[0] << v365) | v361;
        if (v408.i64[0] + (v365 & 0x3F) >= 0x40)
        {
          *(v224 + ((v365 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v409;
          v409 = v407.i64[0] >> -(v365 & 0x3F);
          if ((v365 & 0x3F) == 0)
          {
            v409 = 0;
          }
        }

        v410 = v408.i64[0] + v365;
        v361 = v409 | (v407.i64[1] << v410);
        if ((v410 & 0x3F) + v408.i64[1] >= 0x40)
        {
          *(v224 + ((v410 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
          v361 = v407.i64[1] >> -(v410 & 0x3F);
          if ((v410 & 0x3F) == 0)
          {
            v361 = 0;
          }
        }

        v365 = v410 + v408.i64[1];
        v395 += 16;
      }

      while (v395 != 64);
      if ((v365 & 0x3F) != 0)
      {
        *(v224 + ((v365 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
      }

      result = (v365 - v225 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    v227 = vld1q_dup_f64(a3->i64);
    v228 = vorrq_s8(vandq_s8(vshlq_u64(v227, xmmword_29D2F1440), xmmword_29D2F1470), vandq_s8(vshlq_u64(v227, xmmword_29D2F1450), xmmword_29D2F1460));
    *v228.i8 = vorr_s8(*v228.i8, *&vextq_s8(v228, v228, 8uLL));
    *a1 = v228.i32[0];
    *(a1 + 4) = v228.i8[4];
    *a2 = 4;
    return 5;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v92 = *MEMORY[0x29EDCA608];
  v11 = 0uLL;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
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
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  v21 = 0uLL;
  v22 = 0uLL;
  v23 = 0uLL;
  v24 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
  v27 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
  v30 = 0uLL;
  if (a6 && a5)
  {
    for (i = 0; i != a6; ++i)
    {
      v32 = 0;
      v33 = (a3 + i * a4);
      v34 = (2 * i) | 1u;
      do
      {
        v35 = v33[1];
        v36 = &v76 + 4 * (v32 & 0x7F);
        *&v36[i & 0x7F] = (*v33 >> 6) & 0x3FF03FF03FF03FFLL;
        v37 = v33[3];
        *(v36 + v34) = (v33[2] >> 6) & 0x3FF03FF03FF03FFLL;
        v38 = &v76 + 2 * ((2 * v32) | 1u);
        *&v38[i & 0x7F] = (v35 >> 6) & 0x3FF03FF03FF03FFLL;
        v33 += 4;
        ++v32;
        *(v38 + v34) = (v37 >> 6) & 0x3FF03FF03FF03FFLL;
      }

      while (a5 != v32);
    }

    v30 = vmovl_u16(*&v76);
    v29 = vmovl_u16(*&v78);
    v28 = vmovl_u16(*(&v76 + 8));
    v27 = vmovl_u16(*(&v78 + 8));
    v26 = vmovl_u16(*&v80);
    v25 = vmovl_u16(*&v82);
    v24 = vmovl_u16(*(&v80 + 8));
    v23 = vmovl_u16(*(&v82 + 8));
    v22 = vmovl_u16(*&v77);
    v21 = vmovl_u16(*&v79);
    v20 = vmovl_u16(*(&v77 + 8));
    v19 = vmovl_u16(*(&v79 + 8));
    v18 = vmovl_u16(*&v81);
    v17 = vmovl_u16(*&v83);
    v16 = vmovl_u16(*(&v81 + 8));
    v15 = vmovl_u16(*(&v83 + 8));
    v14 = vmovl_u16(*&v84);
    v13 = vmovl_u16(*&v86);
    v12 = vmovl_u16(*(&v84 + 8));
    v11 = vmovl_u16(*(&v86 + 8));
  }

  v55 = v22;
  v56 = v21;
  v57 = v20;
  v58 = v19;
  v59 = v18;
  v60 = v17;
  v61 = v16;
  v62 = v15;
  v63 = v14;
  v64 = v13;
  v65 = v12;
  v66 = v11;
  v39 = a6 != 0;
  v40 = 2 * (a6 & 0x7F);
  v68 = v30;
  v69 = v29;
  v41 = 2 * (a5 & 0x7F);
  v70 = v28;
  v71 = v27;
  v72 = v26;
  v73 = v25;
  if (v41 >= 4)
  {
    v42 = 4;
  }

  else
  {
    v42 = 2 * (a5 & 0x7F);
  }

  v74 = v24;
  v75 = v23;
  v43 = 2 * v39;
  if (v41 >= 4)
  {
    v44 = v41 - 4;
  }

  else
  {
    v44 = 0;
  }

  v45 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1, &v68, a7, v42, 2 * v39);
  v68 = v55;
  v69 = v56;
  v70 = v57;
  v71 = v58;
  v72 = v59;
  v73 = v60;
  v46 = v40 - 2;
  if (v40 < 2)
  {
    v46 = 0;
  }

  v74 = v61;
  v75 = v62;
  if (a6 >= 2)
  {
    v47 = 2;
  }

  else
  {
    v47 = v46;
  }

  v48 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 32, &v68, a7, v42, v47);
  v68 = v63;
  v69 = v64;
  v70 = v65;
  v71 = v66;
  v72 = vmovl_u16(*&v88);
  v73 = vmovl_u16(*&v90);
  v74 = vmovl_u16(*(&v88 + 8));
  v75 = vmovl_u16(*(&v90 + 8));
  if (a5 >= 4)
  {
    v49 = 4;
  }

  else
  {
    v49 = v44;
  }

  v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 64, &v68, a7, v49, v43);
  v68 = vmovl_u16(*&v85);
  v69 = vmovl_u16(*&v87);
  v70 = vmovl_u16(*(&v85 + 8));
  v71 = vmovl_u16(*(&v87 + 8));
  v72 = vmovl_u16(*&v89);
  v73 = vmovl_u16(*&v91);
  v74 = vmovl_u16(*(&v89 + 8));
  v75 = vmovl_u16(*(&v91 + 8));
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 96, &v68, a7, v49, v47);
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

  *a2 = v54 | v52 | v45 | v53;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(int16x8_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v705 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    result = 0;
    v11 = 0uLL;
    a1[6] = 0u;
    a1[7] = 0u;
    a1[4] = 0u;
    a1[5] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    v12 = &a1->i8[a2];
    v12[6] = 0u;
    v12[7] = 0u;
    v12[4] = 0u;
    v12[5] = 0u;
    v12[2] = 0u;
    v12[3] = 0u;
LABEL_6:
    *v12 = v11;
    v12[1] = v11;
    return result;
  }

  v7 = a4;
  if (a4 >= 0xF0)
  {
    if (a4)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(a3, &v688, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(a3, &v688, a5);
    }

    v674 = v689;
    v675 = v688;
    v713 = vld4_f32(v690.i32);
    v714 = vld4_f32(v692);
    v706 = vld4_f32(v693);
    v673 = v706;
    v17 = a3 + 32;
    if ((v7 & 2) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v17, &v688, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v17, &v688, a5);
    }

    v679 = v689;
    v680 = v688;
    v707 = vld4_f32(v690.i32);
    v681 = v707;
    v708 = vld4_f32(v692);
    v682 = v708;
    v709 = vld4_f32(v693);
    v683 = v709;
    v18 = a3 + 64;
    if ((v7 & 4) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v18, &v688, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v18, &v688, a5);
    }

    v671 = v689;
    v672 = v688;
    v710 = vld4_f32(v690.i32);
    v676 = v710;
    v711 = vld4_f32(v692);
    v677 = v711;
    v712 = vld4_f32(v693);
    v678 = v712;
    v19 = a3 + 96;
    if ((v7 & 8) != 0)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v19, &v688, a5);
    }

    else
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v19, &v688, a5);
    }

    v20 = vand_s8(v713.val[2], 0x300000003);
    v21.i64[0] = v713.val[3].u32[0];
    v21.i64[1] = v713.val[3].u32[1];
    v22 = v21;
    v23 = vand_s8(v714.val[2], 0x300000003);
    v21.i64[0] = v714.val[3].u32[0];
    v21.i64[1] = v714.val[3].u32[1];
    v24 = v21;
    v25 = vand_s8(v673.val[2], 0x300000003);
    v21.i64[0] = v673.val[3].u32[0];
    v21.i64[1] = v673.val[3].u32[1];
    v26 = v21;
    v27 = vorr_s8(vshl_n_s32(vzip2_s32(*v675.i8, *v674.i8), 0x16uLL), vand_s8(vshl_n_s32(vzip1_s32(*v675.i8, *v674.i8), 6uLL), 0xFFFF0000FFFFLL));
    v28 = vextq_s8(v674, v674, 8uLL).u64[0];
    v29 = vextq_s8(v675, v675, 8uLL).u64[0];
    v30 = vand_s8(vzip1_s32(v29, v28), 0x300000003);
    v21.i64[0] = v30.u32[0];
    v21.i64[1] = v30.u32[1];
    v31 = vshlq_n_s64(v21, 0x26uLL);
    v21.i64[0] = v27.u32[0];
    v21.i64[1] = v27.u32[1];
    v32 = vorrq_s8(v31, v21);
    v33 = vzip2_s32(v29, v28);
    v21.i64[0] = v33.u32[0];
    v21.i64[1] = v33.u32[1];
    v34 = vorrq_s8(v32, vshlq_n_s64(v21, 0x36uLL));
    v35 = vorr_s8(vshl_n_s32(v713.val[1], 0x16uLL), vand_s8(vshl_n_s32(v713.val[0], 6uLL), 0xFFFF0000FFFFLL));
    v21.i64[0] = v20.u32[0];
    v21.i64[1] = v20.u32[1];
    v36 = vorrq_s8(vshlq_n_s64(v21, 0x26uLL), vshlq_n_s64(v22, 0x36uLL));
    v21.i64[0] = v35.u32[0];
    v21.i64[1] = v35.u32[1];
    *a1 = v34;
    a1[1] = vorrq_s8(v36, v21);
    v37 = vorr_s8(vshl_n_s32(v714.val[1], 0x16uLL), vand_s8(vshl_n_s32(v714.val[0], 6uLL), 0xFFFF0000FFFFLL));
    v21.i64[0] = v23.u32[0];
    v21.i64[1] = v23.u32[1];
    v38 = vorrq_s8(vshlq_n_s64(v21, 0x26uLL), vshlq_n_s64(v24, 0x36uLL));
    v21.i64[0] = v37.u32[0];
    v21.i64[1] = v37.u32[1];
    v39 = vorrq_s8(v38, v21);
    *v38.i8 = vorr_s8(vshl_n_s32(v673.val[1], 0x16uLL), vand_s8(vshl_n_s32(v673.val[0], 6uLL), 0xFFFF0000FFFFLL));
    v21.i64[0] = v25.u32[0];
    v21.i64[1] = v25.u32[1];
    v40 = vorrq_s8(vshlq_n_s64(v21, 0x26uLL), vshlq_n_s64(v26, 0x36uLL));
    v21.i64[0] = v38.u32[0];
    v21.i64[1] = v38.u32[1];
    a1[2] = v39;
    a1[3] = vorrq_s8(v40, v21);
    v40.i64[0] = vextq_s8(v671, v671, 8uLL).u64[0];
    v22.i64[0] = vextq_s8(v672, v672, 8uLL).u64[0];
    *v39.i8 = vorr_s8(vshl_n_s32(vzip2_s32(*v672.i8, *v671.i8), 0x16uLL), vand_s8(vshl_n_s32(vzip1_s32(*v672.i8, *v671.i8), 6uLL), 0xFFFF0000FFFFLL));
    *v38.i8 = vand_s8(vzip1_s32(*v22.i8, *v40.i8), 0x300000003);
    v21.i64[0] = v38.u32[0];
    v21.i64[1] = v38.u32[1];
    v41 = vshlq_n_s64(v21, 0x26uLL);
    v21.i64[0] = v39.u32[0];
    v21.i64[1] = v39.u32[1];
    v42 = vorrq_s8(v41, v21);
    *v41.i8 = vzip2_s32(*v22.i8, *v40.i8);
    v21.i64[0] = v41.u32[0];
    v21.i64[1] = v41.u32[1];
    v43 = vorrq_s8(v42, vshlq_n_s64(v21, 0x36uLL));
    v44 = vorr_s8(vshl_n_s32(v676.val[1], 0x16uLL), vand_s8(vshl_n_s32(v676.val[0], 6uLL), 0xFFFF0000FFFFLL));
    *v42.i8 = vand_s8(v676.val[2], 0x300000003);
    v21.i64[0] = v42.u32[0];
    v21.i64[1] = v42.u32[1];
    v45 = vshlq_n_s64(v21, 0x26uLL);
    v21.i64[0] = v676.val[3].u32[0];
    v21.i64[1] = v676.val[3].u32[1];
    v46 = vorrq_s8(v45, vshlq_n_s64(v21, 0x36uLL));
    *(&v22 - 24) = vld4_f32(v690.i32);
    v21.i64[0] = v44.u32[0];
    v21.i64[1] = v44.u32[1];
    a1[4] = v43;
    a1[5] = vorrq_s8(v46, v21);
    *v43.i8 = vorr_s8(vshl_n_s32(v677.val[1], 0x16uLL), vand_s8(vshl_n_s32(v677.val[0], 6uLL), 0xFFFF0000FFFFLL));
    v47 = vand_s8(v677.val[2], 0x300000003);
    v21.i64[0] = v47.u32[0];
    v21.i64[1] = v47.u32[1];
    v48 = vshlq_n_s64(v21, 0x26uLL);
    v21.i64[0] = v677.val[3].u32[0];
    v21.i64[1] = v677.val[3].u32[1];
    v49 = vorrq_s8(v48, vshlq_n_s64(v21, 0x36uLL));
    *v34.i8 = vand_s8(v678.val[2], 0x300000003);
    v21.i64[0] = v678.val[3].u32[0];
    v21.i64[1] = v678.val[3].u32[1];
    v50 = v21;
    *(&v24 - 8) = vld4_f32(v692);
    v21.i64[0] = v43.u32[0];
    v21.i64[1] = v43.u32[1];
    v51 = vorrq_s8(v49, v21);
    *v49.i8 = vorr_s8(vshl_n_s32(v678.val[1], 0x16uLL), vand_s8(vshl_n_s32(v678.val[0], 6uLL), 0xFFFF0000FFFFLL));
    v21.i64[0] = v34.u32[0];
    v21.i64[1] = v34.u32[1];
    v52 = vorrq_s8(vshlq_n_s64(v21, 0x26uLL), vshlq_n_s64(v50, 0x36uLL));
    v21.i64[0] = v49.u32[0];
    v21.i64[1] = v49.u32[1];
    a1[6] = v51;
    a1[7] = vorrq_s8(v52, v21);
    v52.i64[0] = vextq_s8(v679, v679, 8uLL).u64[0];
    v26.i64[0] = vextq_s8(v680, v680, 8uLL).u64[0];
    *v51.i8 = vorr_s8(vshl_n_s32(vzip2_s32(*v680.i8, *v679.i8), 0x16uLL), vand_s8(vshl_n_s32(vzip1_s32(*v680.i8, *v679.i8), 6uLL), 0xFFFF0000FFFFLL));
    *v49.i8 = vand_s8(vzip1_s32(*v26.i8, *v52.i8), 0x300000003);
    v21.i64[0] = v49.u32[0];
    v21.i64[1] = v49.u32[1];
    v53 = vshlq_n_s64(v21, 0x26uLL);
    v21.i64[0] = v51.u32[0];
    v21.i64[1] = v51.u32[1];
    v54 = vorrq_s8(v53, v21);
    *v53.i8 = vzip2_s32(*v26.i8, *v52.i8);
    v21.i64[0] = v53.u32[0];
    v21.i64[1] = v53.u32[1];
    v55 = vorrq_s8(v54, vshlq_n_s64(v21, 0x36uLL));
    *v53.i8 = vorr_s8(vshl_n_s32(v681.val[1], 0x16uLL), vand_s8(vshl_n_s32(v681.val[0], 6uLL), 0xFFFF0000FFFFLL));
    *v52.i8 = vand_s8(v681.val[2], 0x300000003);
    v21.i64[0] = v52.u32[0];
    v21.i64[1] = v52.u32[1];
    v56 = vshlq_n_s64(v21, 0x26uLL);
    v21.i64[0] = v681.val[3].u32[0];
    v21.i64[1] = v681.val[3].u32[1];
    v57 = vorrq_s8(v56, vshlq_n_s64(v21, 0x36uLL));
    v58 = vand_s8(v682.val[2], 0x300000003);
    v21.i64[0] = v682.val[3].u32[0];
    v21.i64[1] = v682.val[3].u32[1];
    v59 = v21;
    v60 = vand_s8(v683.val[2], 0x300000003);
    v21.i64[0] = v683.val[3].u32[0];
    v21.i64[1] = v683.val[3].u32[1];
    v61 = v21;
    *(&v26 - 8) = vld4_f32(v693);
    v21.i64[0] = v53.u32[0];
    v21.i64[1] = v53.u32[1];
    v62 = &a1->i8[a2];
    *v62 = v55;
    v62[1] = vorrq_s8(v57, v21);
    *v55.i8 = vorr_s8(vshl_n_s32(v682.val[1], 0x16uLL), vand_s8(vshl_n_s32(v682.val[0], 6uLL), 0xFFFF0000FFFFLL));
    v21.i64[0] = v58.u32[0];
    v21.i64[1] = v58.u32[1];
    v63 = vorrq_s8(vshlq_n_s64(v21, 0x26uLL), vshlq_n_s64(v59, 0x36uLL));
    v21.i64[0] = v55.u32[0];
    v21.i64[1] = v55.u32[1];
    v64 = vorrq_s8(v63, v21);
    v21.i64[0] = v60.u32[0];
    v21.i64[1] = v60.u32[1];
    *v31.i8 = vorr_s8(vshl_n_s32(v683.val[1], 0x16uLL), vand_s8(vshl_n_s32(v683.val[0], 6uLL), 0xFFFF0000FFFFLL));
    v65 = vorrq_s8(vshlq_n_s64(v21, 0x26uLL), vshlq_n_s64(v61, 0x36uLL));
    v66 = v688;
    v67 = v689;
    v21.i64[0] = v31.u32[0];
    v21.i64[1] = v31.u32[1];
    v62[2] = v64;
    v62[3] = vorrq_s8(v65, v21);
    *v64.i8 = vshl_n_s32(*v45.i8, 6uLL);
    *v31.i8 = vshl_n_s32(*v41.i8, 0x16uLL);
    *v65.i8 = vand_s8(*v40.i8, 0x300000003);
    v21.i64[0] = v22.u32[0];
    v21.i64[1] = v22.u32[1];
    v68 = v21;
    *v41.i8 = vshl_n_s32(*v46.i8, 6uLL);
    *v40.i8 = vshl_n_s32(*v24.i8, 0x16uLL);
    *v22.i8 = vand_s8(v69, 0x300000003);
    v21.i64[0] = v70;
    v21.i64[1] = v71;
    v72 = v21;
    *v24.i8 = vshl_n_s32(*v56.i8, 6uLL);
    v73 = vshl_n_s32(*v26.i8, 0x16uLL);
    v74 = vand_s8(*v34.i8, 0x300000003);
    v21.i64[0] = v50.u32[0];
    v21.i64[1] = v50.u32[1];
    v75 = v21;
    *v26.i8 = vzip1_s32(*v66.i8, *v67.i8);
    *v34.i8 = vzip2_s32(*v66.i8, *v67.i8);
    v67.i64[0] = vextq_s8(v67, v67, 8uLL).u64[0];
    v66.i64[0] = vextq_s8(v66, v66, 8uLL).u64[0];
    v76 = vand_s8(vzip1_s32(*v66.i8, *v67.i8), 0x300000003);
    *v26.i8 = vorr_s8(vshl_n_s32(*v34.i8, 0x16uLL), vand_s8(vshl_n_s32(*v26.i8, 6uLL), 0xFFFF0000FFFFLL));
    v21.i64[0] = v76.u32[0];
    v21.i64[1] = v76.u32[1];
    v77 = vshlq_n_s64(v21, 0x26uLL);
    v21.i64[0] = v26.u32[0];
    v21.i64[1] = v26.u32[1];
    v78 = vorrq_s8(v77, v21);
    *v66.i8 = vzip2_s32(*v66.i8, *v67.i8);
    v21.i64[0] = v66.u32[0];
    v21.i64[1] = v66.u32[1];
    v79 = vorrq_s8(v78, vshlq_n_s64(v21, 0x36uLL));
    *v66.i8 = vorr_s8(*v31.i8, vand_s8(*v64.i8, 0xFFFF0000FFFFLL));
    v21.i64[0] = v65.u32[0];
    v21.i64[1] = v65.u32[1];
    v80 = vorrq_s8(vshlq_n_s64(v21, 0x26uLL), vshlq_n_s64(v68, 0x36uLL));
    v21.i64[0] = v66.u32[0];
    v21.i64[1] = v66.u32[1];
    v62[4] = v79;
    v62[5] = vorrq_s8(v80, v21);
    *v79.i8 = vorr_s8(*v40.i8, vand_s8(*v41.i8, 0xFFFF0000FFFFLL));
    v21.i64[0] = v22.u32[0];
    v21.i64[1] = v22.u32[1];
    v81 = vorrq_s8(vshlq_n_s64(v21, 0x26uLL), vshlq_n_s64(v72, 0x36uLL));
    v21.i64[0] = v79.u32[0];
    v21.i64[1] = v79.u32[1];
    v82 = vorrq_s8(v81, v21);
    v83 = vorr_s8(v73, vand_s8(*v24.i8, 0xFFFF0000FFFFLL));
    v21.i64[0] = v74.u32[0];
    v21.i64[1] = v74.u32[1];
    v84 = vorrq_s8(vshlq_n_s64(v21, 0x26uLL), vshlq_n_s64(v75, 0x36uLL));
    v21.i64[0] = v83.u32[0];
    v21.i64[1] = v83.u32[1];
    v62[6] = v82;
    v62[7] = vorrq_s8(v84, v21);
    return 128;
  }

  if (a4 == 159)
  {
    v85.i64[0] = 0xA000A000A000ALL;
    v85.i64[1] = 0xA000A000A000ALL;
    v86 = vmovl_u16(*&vpaddq_s16(v85, v85));
    v85.i64[0] = vpaddq_s32(v86, v86).u64[0];
    v87.i64[0] = v85.u32[0];
    v87.i64[1] = v85.u32[1];
    v88 = v87;
    v89 = vaddvq_s64(v87);
    v90 = v89;
    v91 = 0uLL;
    if (v89 > 0x80)
    {
      v295 = 0uLL;
      v296 = 0uLL;
      v297 = 0uLL;
      v287 = 0uLL;
      v288 = 0uLL;
      v289 = 0uLL;
      v290 = 0uLL;
      v294 = 0uLL;
      v293 = 0uLL;
      v292 = 0uLL;
      v291 = 0uLL;
      v315 = 0uLL;
      v314 = 0uLL;
      v313 = 0uLL;
      v312 = 0uLL;
    }

    else
    {
      v92 = (a3 & 0xFFFFFFFFFFFFFFF8);
      v93 = vzip1q_s64(0, v88);
      v94 = 8 * (a3 & 7);
      v95 = v89 + v94;
      v96 = vaddq_s64(v93, vdupq_n_s64(v94));
      v97 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v96)), vshlq_u64(vdupq_lane_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 0), vnegq_s64(v96)));
      if (v95 >= 0x81)
      {
        v97 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v92[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v96)), vshlq_u64(vdupq_laneq_s64(v92[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v96))), v97);
      }

      v98 = v95 & 0x3F;
      v99 = (v92 + 8 * (v95 >> 6));
      v100 = vaddq_s64(v93, vdupq_n_s64(v98));
      v101 = v90 + v95;
      v102 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v99, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v100)), vshlq_u64(vdupq_lane_s64(v99->i64[0], 0), vnegq_s64(v100)));
      if (v90 + v98 >= 0x81)
      {
        v102 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v99[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v100)), vshlq_u64(vdupq_laneq_s64(v99[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v100))), v102);
      }

      v103 = v101 & 0x3F;
      v104 = (v92 + 8 * (v101 >> 6));
      v105 = vaddq_s64(v93, vdupq_n_s64(v103));
      v106 = v90 + v101;
      v107 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v104, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v105)), vshlq_u64(vdupq_lane_s64(v104->i64[0], 0), vnegq_s64(v105)));
      if (v90 + v103 >= 0x81)
      {
        v107 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v104[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v105)), vshlq_u64(vdupq_laneq_s64(v104[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v105))), v107);
      }

      v108 = vextq_s8(v86, v86, 8uLL).u64[0];
      v109 = v106 & 0x3F;
      v110 = (v92 + 8 * (v106 >> 6));
      v111 = vaddq_s64(v93, vdupq_n_s64(v109));
      v112 = v90 + v106;
      v113 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v110, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v111)), vshlq_u64(vdupq_lane_s64(v110->i64[0], 0), vnegq_s64(v111)));
      if (v90 + v109 >= 0x81)
      {
        v113 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v110[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v111)), vshlq_u64(vdupq_laneq_s64(v110[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v111))), v113);
      }

      v114 = v112 & 0x3F;
      v115 = (v92 + 8 * (v112 >> 6));
      v116 = vaddq_s64(v93, vdupq_n_s64(v114));
      v117 = v90 + v112;
      v118 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v115, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v116)), vshlq_u64(vdupq_lane_s64(v115->i64[0], 0), vnegq_s64(v116)));
      if (v90 + v114 >= 0x81)
      {
        v118 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v115[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v116)), vshlq_u64(vdupq_laneq_s64(v115[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v116))), v118);
      }

      v119 = vzip1_s32(*v86.i8, v108);
      v120 = v117 & 0x3F;
      v121 = (v92 + 8 * (v117 >> 6));
      v122 = vaddq_s64(v93, vdupq_n_s64(v120));
      v123 = v90 + v117;
      v124 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v121, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v122)), vshlq_u64(vdupq_lane_s64(v121->i64[0], 0), vnegq_s64(v122)));
      if (v90 + v120 >= 0x81)
      {
        v124 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v121[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v122)), vshlq_u64(vdupq_laneq_s64(v121[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v122))), v124);
      }

      v125.i64[0] = v119.u32[0];
      v125.i64[1] = v119.u32[1];
      v126 = v125;
      v127 = v123 & 0x3F;
      v128 = (v92 + 8 * (v123 >> 6));
      v129 = vaddq_s64(v93, vdupq_n_s64(v127));
      v130 = v90 + v123;
      v131 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v128, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v129)), vshlq_u64(vdupq_lane_s64(v128->i64[0], 0), vnegq_s64(v129)));
      if (v90 + v127 >= 0x81)
      {
        v131 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v128[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v129)), vshlq_u64(vdupq_laneq_s64(v128[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v129))), v131);
      }

      v132 = vnegq_s64(v126);
      v133 = v130 & 0x3F;
      v134 = (v92 + 8 * (v130 >> 6));
      v135 = vaddq_s64(v93, vdupq_n_s64(v133));
      v136 = v90 + v130;
      v137 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v134, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v135)), vshlq_u64(vdupq_lane_s64(v134->i64[0], 0), vnegq_s64(v135)));
      if (v90 + v133 >= 0x81)
      {
        v137 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v134[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v135)), vshlq_u64(vdupq_laneq_s64(v134[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v135))), v137);
      }

      v138 = vshlq_u64(v97, v132);
      v139 = vshlq_u64(v102, v132);
      v140 = vshlq_u64(v107, v132);
      v141 = vshlq_u64(v113, v132);
      v142 = vshlq_u64(v118, v132);
      v143 = vshlq_u64(v124, v132);
      v144 = vshlq_u64(v131, v132);
      v145 = vshlq_u64(v137, v132);
      v146 = v136 & 0x3F;
      v147 = (v92 + 8 * (v136 >> 6));
      v148 = vaddq_s64(v93, vdupq_n_s64(v146));
      v149 = v90 + v136;
      v150 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v147, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v148)), vshlq_u64(vdupq_lane_s64(v147->i64[0], 0), vnegq_s64(v148)));
      if (v90 + v146 >= 0x81)
      {
        v150 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v147[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v148)), vshlq_u64(vdupq_laneq_s64(v147[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v148))), v150);
      }

      v151 = vzip2q_s64(v97, v138);
      v152 = vzip1q_s64(v97, v138);
      v153 = vzip2q_s64(v102, v139);
      v154 = vzip1q_s64(v102, v139);
      v155 = vzip2q_s64(v107, v140);
      v156 = vzip1q_s64(v107, v140);
      v157 = vzip2q_s64(v113, v141);
      v158 = vzip1q_s64(v113, v141);
      v159 = vzip2q_s64(v118, v142);
      v160 = vzip1q_s64(v118, v142);
      v161 = vzip2q_s64(v124, v143);
      v162 = vzip1q_s64(v124, v143);
      v163 = vzip2q_s64(v131, v144);
      v164 = vzip1q_s64(v131, v144);
      v165 = vzip2q_s64(v137, v145);
      v166 = vzip1q_s64(v137, v145);
      v167 = vshlq_u64(v150, v132);
      v168 = vzip2q_s64(v150, v167);
      v169 = vzip1q_s64(v150, v167);
      v170 = (v92 + 8 * (v149 >> 6));
      v171 = vaddq_s64(v93, vdupq_n_s64(v149 & 0x3F));
      v172 = v90 + v149;
      v173 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v170, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v171)), vshlq_u64(vdupq_lane_s64(v170->i64[0], 0), vnegq_s64(v171)));
      if (v90 + (v149 & 0x3F) >= 0x81)
      {
        v173 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v170[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v171)), vshlq_u64(vdupq_laneq_s64(v170[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v171))), v173);
      }

      v174 = vuzp1q_s32(v152, v151);
      v175 = vuzp1q_s32(v154, v153);
      v176 = vuzp1q_s32(v156, v155);
      v177 = vuzp1q_s32(v158, v157);
      v178 = vuzp1q_s32(v160, v159);
      v179 = vuzp1q_s32(v162, v161);
      v180 = vuzp1q_s32(v164, v163);
      v181 = vuzp1q_s32(v166, v165);
      v182 = vuzp1q_s32(v169, v168);
      v183 = vshlq_u64(v173, v132);
      v184 = vuzp1q_s32(vzip1q_s64(v173, v183), vzip2q_s64(v173, v183));
      v185 = v90 + v172;
      v186 = v172 & 0x3F;
      v187 = vaddq_s64(v93, vdupq_n_s64(v186));
      v188 = (v92 + 8 * (v172 >> 6));
      v189 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v188, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v187)), vshlq_u64(vdupq_lane_s64(v188->i64[0], 0), vnegq_s64(v187)));
      if (v90 + v186 >= 0x81)
      {
        v189 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v188[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v187)), vshlq_u64(vdupq_laneq_s64(v188[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v187))), v189);
      }

      v190.i64[0] = 0x1000100010001;
      v190.i64[1] = 0x1000100010001;
      v191 = vshrq_n_u32(v174, 0xAuLL);
      v192 = vshrq_n_u32(v175, 0xAuLL);
      v193 = vshrq_n_u32(v176, 0xAuLL);
      v194 = vshrq_n_u32(v177, 0xAuLL);
      v195 = vshrq_n_u32(v178, 0xAuLL);
      v196 = vshrq_n_u32(v179, 0xAuLL);
      v197 = vshrq_n_u32(v180, 0xAuLL);
      v198 = vshrq_n_u32(v181, 0xAuLL);
      v199 = vshrq_n_u32(v182, 0xAuLL);
      v200 = vshrq_n_u32(v184, 0xAuLL);
      v201 = vshlq_u64(v189, v132);
      v202 = vuzp1q_s32(vzip1q_s64(v189, v201), vzip2q_s64(v189, v201));
      v203 = vshrq_n_u32(v202, 0xAuLL);
      v204 = v185 & 0x3F;
      v205 = (v92 + 8 * (v185 >> 6));
      v206 = vaddq_s64(v93, vdupq_n_s64(v204));
      v207 = v90 + v185;
      v208 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v205, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v206)), vshlq_u64(vdupq_lane_s64(v205->i64[0], 0), vnegq_s64(v206)));
      if (v90 + v204 >= 0x81)
      {
        v208 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v205[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v206)), vshlq_u64(vdupq_laneq_s64(v205[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v206))), v208);
      }

      v209 = vshlq_n_s16(v190, 0xAuLL);
      v210.i64[0] = -1;
      v210.i64[1] = -1;
      v211 = vzip2q_s32(v174, v191);
      v212 = vzip1q_s32(v174, v191);
      v213 = vzip2q_s32(v175, v192);
      v214 = vzip1q_s32(v175, v192);
      v215 = vzip2q_s32(v176, v193);
      v216 = vzip1q_s32(v176, v193);
      v217 = vzip2q_s32(v177, v194);
      v218 = vzip1q_s32(v177, v194);
      v219 = vzip2q_s32(v178, v195);
      v220 = vzip1q_s32(v178, v195);
      v221 = vzip2q_s32(v179, v196);
      v222 = vzip1q_s32(v179, v196);
      v223 = vzip2q_s32(v180, v197);
      v224 = vzip1q_s32(v180, v197);
      v225 = vzip2q_s32(v181, v198);
      v226 = vzip1q_s32(v181, v198);
      v227 = vzip2q_s32(v182, v199);
      v228 = vzip1q_s32(v182, v199);
      v229 = vzip2q_s32(v184, v200);
      v230 = vzip1q_s32(v184, v200);
      v231 = vzip2q_s32(v202, v203);
      v232 = vzip1q_s32(v202, v203);
      v233 = vshlq_u64(v208, v132);
      v234 = vuzp1q_s32(vzip1q_s64(v208, v233), vzip2q_s64(v208, v233));
      v235 = vshrq_n_u32(v234, 0xAuLL);
      v236 = vzip2q_s32(v234, v235);
      v237 = vzip1q_s32(v234, v235);
      v238 = (v92 + 8 * (v207 >> 6));
      v239 = vaddq_s64(v93, vdupq_n_s64(v207 & 0x3F));
      v240 = v90 + v207;
      v241 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v238, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v239)), vshlq_u64(vdupq_lane_s64(v238->i64[0], 0), vnegq_s64(v239)));
      if (v90 + (v207 & 0x3F) >= 0x81)
      {
        v210.i64[0] = -1;
        v210.i64[1] = -1;
        v241 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v238[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v239)), vshlq_u64(vdupq_laneq_s64(v238[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v239))), v241);
      }

      v242 = vaddq_s16(v209, v210);
      v243 = vuzp1q_s16(v212, v211);
      v244 = vuzp1q_s16(v214, v213);
      v245 = vuzp1q_s16(v216, v215);
      v246 = vuzp1q_s16(v218, v217);
      v247 = vuzp1q_s16(v220, v219);
      v248 = vuzp1q_s16(v222, v221);
      v249 = vuzp1q_s16(v224, v223);
      v250 = vuzp1q_s16(v226, v225);
      v251 = vuzp1q_s16(v228, v227);
      v252 = vuzp1q_s16(v230, v229);
      v253 = vuzp1q_s16(v232, v231);
      v254 = vuzp1q_s16(v237, v236);
      v255 = vshlq_u64(v241, v132);
      v256 = vuzp1q_s32(vzip1q_s64(v241, v255), vzip2q_s64(v241, v255));
      v257 = vshrq_n_u32(v256, 0xAuLL);
      v258 = vzip2q_s32(v256, v257);
      v259 = vzip1q_s32(v256, v257);
      v260 = v90 + v240;
      v261 = v240 & 0x3F;
      v262 = vaddq_s64(v93, vdupq_n_s64(v261));
      v263 = (v92 + 8 * (v240 >> 6));
      v264 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v263, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v262)), vshlq_u64(vdupq_lane_s64(v263->i64[0], 0), vnegq_s64(v262)));
      if (v90 + v261 >= 0x81)
      {
        v264 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v263[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v262)), vshlq_u64(vdupq_laneq_s64(v263[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v262))), v264);
      }

      v265 = vandq_s8(v242, v243);
      v266 = vandq_s8(v242, v244);
      v267 = vandq_s8(v242, v245);
      v268 = vandq_s8(v242, v246);
      v269 = vandq_s8(v242, v247);
      v270 = vandq_s8(v242, v248);
      v271 = vandq_s8(v242, v249);
      v272 = vandq_s8(v242, v250);
      v273 = vandq_s8(v242, v251);
      v274 = vandq_s8(v242, v252);
      v275 = vandq_s8(v242, v253);
      v276 = vandq_s8(v242, v254);
      v277 = vuzp1q_s16(v259, v258);
      v278 = vshlq_u64(v264, v132);
      v279 = vuzp1q_s32(vzip1q_s64(v264, v278), vzip2q_s64(v264, v278));
      v280 = vshrq_n_u32(v279, 0xAuLL);
      v281 = vuzp1q_s16(vzip1q_s32(v279, v280), vzip2q_s32(v279, v280));
      v282 = v260 & 0x3F;
      v283 = (v92 + 8 * (v260 >> 6));
      v284 = vaddq_s64(v93, vdupq_n_s64(v282));
      v285 = v90 + v260;
      v286 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v283, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v284)), vshlq_u64(vdupq_lane_s64(v283->i64[0], 0), vnegq_s64(v284)));
      if (v90 + v282 >= 0x81)
      {
        v286 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v283[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v284)), vshlq_u64(vdupq_laneq_s64(v283[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v284))), v286);
      }

      v287 = vshlq_n_s16(v265, 6uLL);
      v288 = vshlq_n_s16(v266, 6uLL);
      v289 = vshlq_n_s16(v267, 6uLL);
      v290 = vshlq_n_s16(v268, 6uLL);
      v291 = vshlq_n_s16(v269, 6uLL);
      v292 = vshlq_n_s16(v270, 6uLL);
      v293 = vshlq_n_s16(v271, 6uLL);
      v294 = vshlq_n_s16(v272, 6uLL);
      v91 = vshlq_n_s16(v273, 6uLL);
      v295 = vshlq_n_s16(v274, 6uLL);
      v296 = vshlq_n_s16(v275, 6uLL);
      v297 = vshlq_n_s16(v276, 6uLL);
      v298 = vandq_s8(v242, v277);
      v299 = vandq_s8(v242, v281);
      v300 = vshlq_u64(v286, v132);
      v301 = vuzp1q_s32(vzip1q_s64(v286, v300), vzip2q_s64(v286, v300));
      v302 = vshrq_n_u32(v301, 0xAuLL);
      v303 = vuzp1q_s16(vzip1q_s32(v301, v302), vzip2q_s32(v301, v302));
      v304 = (v92 + 8 * (v285 >> 6));
      v305 = vaddq_s64(v93, vdupq_n_s64(v285 & 0x3F));
      v306 = vandq_s8(v242, v303);
      v307 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v304, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v305)), vshlq_u64(vdupq_lane_s64(v304->i64[0], 0), vnegq_s64(v305)));
      if (v90 + (v285 & 0x3F) >= 0x81)
      {
        v307 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v304[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v305)), vshlq_u64(vdupq_laneq_s64(v304[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v305))), v307);
      }

      v308 = vshlq_u64(v307, v132);
      v309 = vuzp1q_s32(vzip1q_s64(v307, v308), vzip2q_s64(v307, v308));
      v310 = vshrq_n_u32(v309, 0xAuLL);
      v311 = vandq_s8(v242, vuzp1q_s16(vzip1q_s32(v309, v310), vzip2q_s32(v309, v310)));
      v312 = vshlq_n_s16(v298, 6uLL);
      v313 = vshlq_n_s16(v299, 6uLL);
      v314 = vshlq_n_s16(v306, 6uLL);
      v315 = vshlq_n_s16(v311, 6uLL);
    }

    *a1 = v287;
    a1[1] = v288;
    a1[2] = v289;
    a1[3] = v290;
    v337 = (a1 + a2);
    a1[4] = v91;
    a1[5] = v295;
    a1[6] = v296;
    a1[7] = v297;
    *v337 = v291;
    v337[1] = v292;
    v337[2] = v293;
    v337[3] = v294;
    v338 = (a1 + a2 + 64);
    result = 160;
    *v338 = v312;
    v338[1] = v313;
    v338[2] = v314;
    v338[3] = v315;
  }

  else
  {
    if (a4 == 4)
    {
      v13 = vld1q_dup_f64(a3);
      v14 = vorrq_s8(vandq_s8(vshlq_u64(v13, xmmword_29D2F1400), xmmword_29D2F1430), vandq_s8(vshlq_u64(v13, xmmword_29D2F1410), xmmword_29D2F1420));
      v15 = vdupq_n_s64(*&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)));
      *a1 = v15;
      a1[1] = v15;
      a1[2] = v15;
      a1[3] = v15;
      a1[4] = v15;
      a1[5] = v15;
      a1[6] = v15;
      a1[7] = v15;
      v16 = &a1->i8[a2];
      *v16 = v15;
      v16[1] = v15;
      v16[2] = v15;
      v16[3] = v15;
      v16[4] = v15;
      v16[5] = v15;
      v16[6] = v15;
      v16[7] = v15;
      return 5;
    }

    v687 = 0;
    v686 = (8 * (a3 & 7)) | 0x400;
    v684 = 8 * (a3 & 7);
    v685 = a3 & 0xFFFFFFFFFFFFFFF8;
    result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)19,AGX::AppleCompressionGen2::Vec<short>>(&v699, v704, &v698, &v684, a4);
    v317.i64[0] = 0x3000300030003;
    v317.i64[1] = 0x3000300030003;
    v318 = v699;
    v319 = vandq_s8(v699, v317);
    v320 = vbicq_s8(v704[0], vceqq_s16(v319, v317));
    v704[0] = v320;
    v700 = v320;
    v701 = v320;
    v702 = v320;
    v703 = v320;
    v321.i64[0] = 0x202020202020202;
    v321.i64[1] = 0x202020202020202;
    v322 = vandq_s8(vmovl_s16(vtst_s16(*v699.i8, 0x4000400040004)), v321);
    v323 = v684;
    if (vmaxvq_s8(v322) < 1)
    {
      v339.i64[0] = -1;
      v339.i64[1] = -1;
      v340.i64[0] = -1;
      v340.i64[1] = -1;
      v341.i64[0] = -1;
      v341.i64[1] = -1;
      v342.i64[0] = -1;
      v342.i64[1] = -1;
    }

    else
    {
      v324 = vmovl_u8(*&vpaddq_s8(v322, v322));
      v325 = vmovl_u16(*&vpaddq_s16(v324, v324));
      v326 = vpaddq_s32(v325, v325).u64[0];
      v327.i64[0] = v326;
      v327.i64[1] = HIDWORD(v326);
      v328 = v327;
      v329 = vaddvq_s64(v327);
      v330 = v329;
      v331 = v684 + v329;
      if (v686)
      {
        v332 = v686 >= v331;
      }

      else
      {
        v332 = 1;
      }

      v333 = v332;
      if (v329 <= 0x80 && (v333 & 1) != 0)
      {
        v316.i64[0] = 63;
        v334 = (v685 + 8 * (v684 >> 6));
        v335 = vaddq_s64(vdupq_lane_s64(vandq_s8(v684, v316).i64[0], 0), vzip1q_s64(0, v328));
        v336 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v334, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v335)), vshlq_u64(vdupq_lane_s64(v334->i64[0], 0), vnegq_s64(v335)));
        if ((v684 & 0x3F) + v330 >= 0x81)
        {
          v336 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v334[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v335)), vshlq_u64(vdupq_laneq_s64(v334[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v335))), v336);
        }

        v323 = v331;
      }

      else
      {
        v687 = 1;
        v336 = 0uLL;
      }

      v343 = vzip1_s32(*v325.i8, *&vextq_s8(v325, v325, 8uLL));
      v344.i64[0] = v343.u32[0];
      v344.i64[1] = v343.u32[1];
      v345 = vshlq_u64(v336, vnegq_s64(v344));
      v346 = vuzp1q_s32(vzip1q_s64(v336, v345), vzip2q_s64(v336, v345));
      v347 = vshlq_u32(v346, vnegq_s32((*&v324 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
      v348 = vuzp1q_s16(vzip1q_s32(v346, v347), vzip2q_s32(v346, v347));
      v349 = vshlq_u16(v348, vnegq_s16((*&v322 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
      v350 = vuzp1q_s8(vzip1q_s16(v348, v349), vzip2q_s16(v348, v349));
      v349.i64[0] = 0x101010101010101;
      v349.i64[1] = 0x101010101010101;
      v351 = vshlq_s8(v349, v322);
      v349.i64[0] = -1;
      v349.i64[1] = -1;
      v352 = vqtbl1q_s8(vandq_s8(vaddq_s8(v351, v349), v350), xmmword_29D2F0F70);
      *v350.i8 = vdup_lane_s32(*v352.i8, 0);
      *v349.i8 = vdup_lane_s32(*v352.i8, 1);
      v353 = vdupq_laneq_s32(v352, 2).u64[0];
      v352.i64[0] = vdupq_laneq_s32(v352, 3).u64[0];
      v700 = vsubw_s8(v700, *v350.i8);
      v701 = vsubw_s8(v701, *v349.i8);
      v702 = vsubw_s8(v702, v353);
      v703 = vsubw_s8(v703, *v352.i8);
      v342 = vmovl_s8(vceqz_s8(*v350.i8));
      v341 = vmovl_s8(vceqz_s8(*v349.i8));
      v340 = vmovl_s8(vceqz_s8(v353));
      v339 = vmovl_s8(vceqz_s8(*v352.i8));
    }

    v354.i64[0] = 0x8000800080008;
    v354.i64[1] = 0x8000800080008;
    v355 = 0uLL;
    v356 = vandq_s8(vextq_s8(vtstq_s16(v699, v354), 0, 8uLL), v320);
    v357 = vmovl_u16(*&vpaddq_s16(v356, v356));
    v358 = vpaddq_s32(v357, v357).u64[0];
    v359.i64[0] = v358;
    v359.i64[1] = HIDWORD(v358);
    v360 = v359;
    v361 = vaddvq_s64(v359);
    if (v686)
    {
      v362 = v686 >= v323 + v361;
    }

    else
    {
      v362 = 1;
    }

    v363 = v362;
    if (v361 <= 0x80 && (v363 & 1) != 0)
    {
      v364 = vaddq_s64(vdupq_n_s64(v323 & 0x3F), vzip1q_s64(0, v360));
      v365 = (v685 + 8 * (v323 >> 6));
      v355 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v365, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v364)), vshlq_u64(vdupq_lane_s64(v365->i64[0], 0), vnegq_s64(v364)));
      if ((v323 & 0x3F) + v361 >= 0x81)
      {
        v355 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v365[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v364)), vshlq_u64(vdupq_laneq_s64(v365[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v364))), v355);
      }

      v323 += v361;
    }

    else
    {
      v687 = 1;
    }

    v366 = vzip1_s32(*v357.i8, *&vextq_s8(v357, v357, 8uLL));
    v367.i64[0] = v366.u32[0];
    v367.i64[1] = v366.u32[1];
    v368 = vshlq_u64(v355, vnegq_s64(v367));
    v369 = vuzp1q_s32(vzip1q_s64(v355, v368), vzip2q_s64(v355, v368));
    v370.i64[0] = 0xFFFF0000FFFFLL;
    v370.i64[1] = 0xFFFF0000FFFFLL;
    v371 = vshlq_u32(v369, vnegq_s32(vandq_s8(v356, v370)));
    v372 = vuzp1q_s16(vzip1q_s32(v369, v371), vzip2q_s32(v369, v371));
    v371.i64[0] = 0xF000F000F000FLL;
    v371.i64[1] = 0xF000F000F000FLL;
    v373.i64[0] = 0x10001000100010;
    v373.i64[1] = 0x10001000100010;
    v374 = vshlq_s16(vshlq_s16(v372, vsubq_s16(v373, v356)), vaddq_s16(v356, v371));
    v704[3] = v374;
    v375 = v699.i8[0] & 3;
    if (v375 == 2)
    {
      if (v686)
      {
        v376 = v323 + 8;
        v377 = v323 + 16;
        if (v686 >= v323 + 8)
        {
          v323 += 8;
        }

        else
        {
          v377 = v323 + 8;
        }

        if (v686 >= v377)
        {
          v323 = v377;
        }

        if (v686 < v376 || v686 < v377)
        {
          v687 = 1;
        }
      }

      else
      {
        v323 += 16;
      }
    }

    v378 = 0uLL;
    v379 = vextq_s8(0, v700, 8uLL);
    v380 = vmovl_u16(*&vpaddq_s16(v379, v379));
    v381 = vpaddq_s32(v380, v380).u64[0];
    v382.i64[0] = v381;
    v382.i64[1] = HIDWORD(v381);
    v383 = v382;
    v384 = vaddvq_s64(v382);
    v385 = v323 + v384;
    if (v686)
    {
      v386 = v686 >= v385;
    }

    else
    {
      v386 = 1;
    }

    v387 = v386;
    if (v384 <= 0x80 && (v387 & 1) != 0)
    {
      v388 = v323 & 0x3F;
      v389 = vaddq_s64(vdupq_n_s64(v388), vzip1q_s64(0, v383));
      v390 = v685;
      v391 = (v685 + 8 * (v323 >> 6));
      v378 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v391, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v389)), vshlq_u64(vdupq_lane_s64(v391->i64[0], 0), vnegq_s64(v389)));
      if (v388 + v384 >= 0x81)
      {
        v378 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v391[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v389)), vshlq_u64(vdupq_laneq_s64(v391[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v389))), v378);
      }

      v392 = v687;
      v323 = v385;
    }

    else
    {
      v392 = 1;
      v390 = v685;
    }

    v393 = vzip1_s32(*v380.i8, *&vextq_s8(v380, v380, 8uLL));
    v394.i64[0] = v393.u32[0];
    v394.i64[1] = v393.u32[1];
    v395 = vshlq_u64(v378, vnegq_s64(v394));
    v396 = vuzp1q_s32(vzip1q_s64(v378, v395), vzip2q_s64(v378, v395));
    v397.i64[0] = 0xFFFF0000FFFFLL;
    v397.i64[1] = 0xFFFF0000FFFFLL;
    v398 = vshlq_u32(v396, vnegq_s32(vandq_s8(v379, v397)));
    v399.i64[0] = 0xF000F000F000FLL;
    v399.i64[1] = 0xF000F000F000FLL;
    v400.i64[0] = 0x10001000100010;
    v400.i64[1] = 0x10001000100010;
    v401 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v396, v398), vzip2q_s32(v396, v398)), vsubq_s16(v400, v379)), vaddq_s16(v379, v399));
    v688 = v401;
    v402 = vmovl_u16(*&vpaddq_s16(v700, v700));
    v396.i64[0] = vpaddq_s32(v402, v402).u64[0];
    v394.i64[0] = v396.u32[0];
    v394.i64[1] = v396.u32[1];
    v403 = v394;
    v404 = vaddvq_s64(v394);
    v405 = v323 + v404;
    if (v686)
    {
      v406 = v686 >= v405;
    }

    else
    {
      v406 = 1;
    }

    v407 = v406;
    v408 = 0uLL;
    if (v404 <= 0x80 && v407)
    {
      v409 = v323 & 0x3F;
      v410 = vaddq_s64(vdupq_n_s64(v409), vzip1q_s64(0, v403));
      v411 = (v390 + 8 * (v323 >> 6));
      v412 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v411, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v410)), vshlq_u64(vdupq_lane_s64(v411->i64[0], 0), vnegq_s64(v410)));
      if (v409 + v404 >= 0x81)
      {
        v412 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v411[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v410)), vshlq_u64(vdupq_laneq_s64(v411[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v410))), v412);
      }
    }

    else
    {
      v392 = 1;
      v405 = v323;
      v412 = 0uLL;
    }

    v413 = vzip1_s32(*v402.i8, *&vextq_s8(v402, v402, 8uLL));
    v414.i64[0] = v413.u32[0];
    v414.i64[1] = v413.u32[1];
    v415 = vnegq_s64(v414);
    v416 = vshlq_u64(v412, v415);
    v417 = vuzp1q_s32(vzip1q_s64(v412, v416), vzip2q_s64(v412, v416));
    v418 = vnegq_s32(vandq_s8(v700, v397));
    v419 = vshlq_u32(v417, v418);
    v420 = vuzp1q_s16(vzip1q_s32(v417, v419), vzip2q_s32(v417, v419));
    v421 = vaddq_s16(v700, v399);
    v422 = vsubq_s16(v400, v700);
    v423 = vshlq_s16(vshlq_s16(v420, v422), v421);
    v689 = v423;
    v424 = v405 + v404;
    if (v686)
    {
      v425 = v686 >= v424;
    }

    else
    {
      v425 = 1;
    }

    v426 = v425;
    if (v404 <= 0x80 && v426)
    {
      v427 = v405 & 0x3F;
      v428 = vaddq_s64(vdupq_n_s64(v427), vzip1q_s64(0, v403));
      v429 = (v390 + 8 * (v405 >> 6));
      v408 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v429, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v428)), vshlq_u64(vdupq_lane_s64(v429->i64[0], 0), vnegq_s64(v428)));
      if (v427 + v404 >= 0x81)
      {
        v408 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v429[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v428)), vshlq_u64(vdupq_laneq_s64(v429[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v428))), v408);
      }
    }

    else
    {
      v392 = 1;
      v424 = v405;
    }

    v430 = vshlq_u64(v408, v415);
    v431 = vuzp1q_s32(vzip1q_s64(v408, v430), vzip2q_s64(v408, v430));
    v432 = vshlq_u32(v431, v418);
    v433 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v431, v432), vzip2q_s32(v431, v432)), v422), v421);
    v690 = v433;
    v434 = v424 + v404;
    if (v686)
    {
      v435 = v686 >= v434;
    }

    else
    {
      v435 = 1;
    }

    v436 = v435;
    v437 = 0uLL;
    if (v404 <= 0x80 && v436)
    {
      v438 = v424 & 0x3F;
      v439 = vaddq_s64(vdupq_n_s64(v438), vzip1q_s64(0, v403));
      v440 = (v390 + 8 * (v424 >> 6));
      v441 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v440, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v439)), vshlq_u64(vdupq_lane_s64(v440->i64[0], 0), vnegq_s64(v439)));
      if (v438 + v404 >= 0x81)
      {
        v441 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v440[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v439)), vshlq_u64(vdupq_laneq_s64(v440[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v439))), v441);
      }
    }

    else
    {
      v392 = 1;
      v434 = v424;
      v441 = 0uLL;
    }

    v442 = vshlq_u64(v441, v415);
    v443 = vuzp1q_s32(vzip1q_s64(v441, v442), vzip2q_s64(v441, v442));
    v444 = vshlq_u32(v443, v418);
    v445 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v443, v444), vzip2q_s32(v443, v444)), v422), v421);
    v691 = v445;
    v446 = vmovl_u16(*&vpaddq_s16(v701, v701));
    v447 = vpaddq_s32(v446, v446).u64[0];
    v448.i64[0] = v447;
    v448.i64[1] = HIDWORD(v447);
    v449 = v448;
    v450 = vaddvq_s64(v448);
    v451 = v450;
    v452 = v434 + v450;
    if (v686)
    {
      v453 = v686 >= v452;
    }

    else
    {
      v453 = 1;
    }

    v454 = v453;
    if (v450 <= 0x80 && v454)
    {
      v455 = v434 & 0x3F;
      v456 = vaddq_s64(vdupq_n_s64(v455), vzip1q_s64(0, v449));
      v457 = (v390 + 8 * (v434 >> 6));
      v437 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v457, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v456)), vshlq_u64(vdupq_lane_s64(v457->i64[0], 0), vnegq_s64(v456)));
      if (v455 + v451 >= 0x81)
      {
        v437 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v457[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v456)), vshlq_u64(vdupq_laneq_s64(v457[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v456))), v437);
      }
    }

    else
    {
      v392 = 1;
      v452 = v434;
    }

    v458 = vzip1_s32(*v446.i8, *&vextq_s8(v446, v446, 8uLL));
    v459.i64[0] = v458.u32[0];
    v459.i64[1] = v458.u32[1];
    v460 = vnegq_s64(v459);
    v461 = vshlq_u64(v437, v460);
    v462 = vuzp1q_s32(vzip1q_s64(v437, v461), vzip2q_s64(v437, v461));
    v463.i64[0] = 0xFFFF0000FFFFLL;
    v463.i64[1] = 0xFFFF0000FFFFLL;
    v464 = vnegq_s32(vandq_s8(v701, v463));
    v465 = vshlq_u32(v462, v464);
    v466 = vuzp1q_s16(vzip1q_s32(v462, v465), vzip2q_s32(v462, v465));
    v465.i64[0] = 0xF000F000F000FLL;
    v465.i64[1] = 0xF000F000F000FLL;
    v467 = vaddq_s16(v701, v465);
    v465.i64[0] = 0x10001000100010;
    v465.i64[1] = 0x10001000100010;
    v468 = vsubq_s16(v465, v701);
    v469 = vshlq_s16(vshlq_s16(v466, v468), v467);
    v692[0] = v469;
    v470 = v452 + v451;
    if (v686)
    {
      v471 = v686 >= v470;
    }

    else
    {
      v471 = 1;
    }

    v472 = v471;
    v473 = 0uLL;
    if (v451 <= 0x80 && v472)
    {
      v474 = v452 & 0x3F;
      v475 = vaddq_s64(vdupq_n_s64(v474), vzip1q_s64(0, v449));
      v476 = (v390 + 8 * (v452 >> 6));
      v477 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v476, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v475)), vshlq_u64(vdupq_lane_s64(v476->i64[0], 0), vnegq_s64(v475)));
      if (v474 + v451 >= 0x81)
      {
        v477 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v476[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v475)), vshlq_u64(vdupq_laneq_s64(v476[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v475))), v477);
      }
    }

    else
    {
      v392 = 1;
      v470 = v452;
      v477 = 0uLL;
    }

    v478 = vshlq_u64(v477, v460);
    v479 = vuzp1q_s32(vzip1q_s64(v477, v478), vzip2q_s64(v477, v478));
    v480 = vshlq_u32(v479, v464);
    v481 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v479, v480), vzip2q_s32(v479, v480)), v468), v467);
    v692[1] = v481;
    v482 = v470 + v451;
    if (v686)
    {
      v483 = v686 >= v482;
    }

    else
    {
      v483 = 1;
    }

    v484 = v483;
    if (v451 <= 0x80 && v484)
    {
      v485 = v470 & 0x3F;
      v486 = vaddq_s64(vdupq_n_s64(v485), vzip1q_s64(0, v449));
      v487 = (v390 + 8 * (v470 >> 6));
      v473 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v487, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v486)), vshlq_u64(vdupq_lane_s64(v487->i64[0], 0), vnegq_s64(v486)));
      if (v485 + v451 >= 0x81)
      {
        v473 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v487[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v486)), vshlq_u64(vdupq_laneq_s64(v487[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v486))), v473);
      }
    }

    else
    {
      v392 = 1;
      v482 = v470;
    }

    v488 = vshlq_u64(v473, v460);
    v489 = vuzp1q_s32(vzip1q_s64(v473, v488), vzip2q_s64(v473, v488));
    v490 = vshlq_u32(v489, v464);
    v491 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v489, v490), vzip2q_s32(v489, v490)), v468), v467);
    v693[0] = v491;
    v492 = v482 + v451;
    if (v686)
    {
      v493 = v686 >= v492;
    }

    else
    {
      v493 = 1;
    }

    v494 = v493;
    v495 = 0uLL;
    if (v451 <= 0x80 && v494)
    {
      v496 = v482 & 0x3F;
      v497 = vaddq_s64(vdupq_n_s64(v496), vzip1q_s64(0, v449));
      v498 = (v390 + 8 * (v482 >> 6));
      v499 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v498, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v497)), vshlq_u64(vdupq_lane_s64(v498->i64[0], 0), vnegq_s64(v497)));
      if (v496 + v451 >= 0x81)
      {
        v499 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v498[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v497)), vshlq_u64(vdupq_laneq_s64(v498[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v497))), v499);
      }
    }

    else
    {
      v392 = 1;
      v492 = v482;
      v499 = 0uLL;
    }

    v500 = vshlq_u64(v499, v460);
    v501 = vuzp1q_s32(vzip1q_s64(v499, v500), vzip2q_s64(v499, v500));
    v502 = vshlq_u32(v501, v464);
    v503 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v501, v502), vzip2q_s32(v501, v502)), v468), v467);
    v693[1] = v503;
    v504 = vmovl_u16(*&vpaddq_s16(v702, v702));
    v505 = vpaddq_s32(v504, v504).u64[0];
    v506.i64[0] = v505;
    v506.i64[1] = HIDWORD(v505);
    v507 = v506;
    v508 = vaddvq_s64(v506);
    v509 = v508;
    v510 = v492 + v508;
    if (v686)
    {
      v511 = v686 >= v510;
    }

    else
    {
      v511 = 1;
    }

    v512 = v511;
    if (v508 <= 0x80 && v512)
    {
      v513 = v492 & 0x3F;
      v514 = vaddq_s64(vdupq_n_s64(v513), vzip1q_s64(0, v507));
      v515 = (v390 + 8 * (v492 >> 6));
      v495 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v515, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v514)), vshlq_u64(vdupq_lane_s64(v515->i64[0], 0), vnegq_s64(v514)));
      if (v513 + v509 >= 0x81)
      {
        v495 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v515[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v514)), vshlq_u64(vdupq_laneq_s64(v515[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v514))), v495);
      }
    }

    else
    {
      v392 = 1;
      v510 = v492;
    }

    v516 = vzip1_s32(*v504.i8, *&vextq_s8(v504, v504, 8uLL));
    v517.i64[0] = v516.u32[0];
    v517.i64[1] = v516.u32[1];
    v518 = vnegq_s64(v517);
    v519 = vshlq_u64(v495, v518);
    v520 = vuzp1q_s32(vzip1q_s64(v495, v519), vzip2q_s64(v495, v519));
    v521.i64[0] = 0xFFFF0000FFFFLL;
    v521.i64[1] = 0xFFFF0000FFFFLL;
    v522 = vnegq_s32(vandq_s8(v702, v521));
    v523 = vshlq_u32(v520, v522);
    v524 = vuzp1q_s16(vzip1q_s32(v520, v523), vzip2q_s32(v520, v523));
    v523.i64[0] = 0xF000F000F000FLL;
    v523.i64[1] = 0xF000F000F000FLL;
    v525 = vaddq_s16(v702, v523);
    v523.i64[0] = 0x10001000100010;
    v523.i64[1] = 0x10001000100010;
    v526 = vsubq_s16(v523, v702);
    v527 = vshlq_s16(vshlq_s16(v524, v526), v525);
    v693[2] = v527;
    v528 = v510 + v509;
    if (v686)
    {
      v529 = v686 >= v528;
    }

    else
    {
      v529 = 1;
    }

    v530 = v529;
    v531 = 0uLL;
    if (v509 <= 0x80 && v530)
    {
      v532 = v510 & 0x3F;
      v533 = vaddq_s64(vdupq_n_s64(v532), vzip1q_s64(0, v507));
      v534 = (v390 + 8 * (v510 >> 6));
      v535 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v534, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v533)), vshlq_u64(vdupq_lane_s64(v534->i64[0], 0), vnegq_s64(v533)));
      if (v532 + v509 >= 0x81)
      {
        v535 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v534[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v533)), vshlq_u64(vdupq_laneq_s64(v534[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v533))), v535);
      }
    }

    else
    {
      v392 = 1;
      v528 = v510;
      v535 = 0uLL;
    }

    v536 = vshlq_u64(v535, v518);
    v537 = vuzp1q_s32(vzip1q_s64(v535, v536), vzip2q_s64(v535, v536));
    v538 = vshlq_u32(v537, v522);
    v539 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v537, v538), vzip2q_s32(v537, v538)), v526), v525);
    v693[3] = v539;
    v540 = v528 + v509;
    if (v686)
    {
      v541 = v686 >= v540;
    }

    else
    {
      v541 = 1;
    }

    v542 = v541;
    if (v509 <= 0x80 && v542)
    {
      v543 = v528 & 0x3F;
      v544 = vaddq_s64(vdupq_n_s64(v543), vzip1q_s64(0, v507));
      v545 = (v390 + 8 * (v528 >> 6));
      v531 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v545, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v544)), vshlq_u64(vdupq_lane_s64(v545->i64[0], 0), vnegq_s64(v544)));
      if (v543 + v509 >= 0x81)
      {
        v531 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v545[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v544)), vshlq_u64(vdupq_laneq_s64(v545[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v544))), v531);
      }
    }

    else
    {
      v392 = 1;
      v540 = v528;
    }

    v546 = vshlq_u64(v531, v518);
    v547 = vuzp1q_s32(vzip1q_s64(v531, v546), vzip2q_s64(v531, v546));
    v548 = vshlq_u32(v547, v522);
    v549 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v547, v548), vzip2q_s32(v547, v548)), v526), v525);
    v693[4] = v549;
    v550 = v540 + v509;
    if (v686)
    {
      v551 = v686 >= v550;
    }

    else
    {
      v551 = 1;
    }

    v552 = v551;
    v553 = 0uLL;
    if (v509 <= 0x80 && v552)
    {
      v554 = v540 & 0x3F;
      v555 = vaddq_s64(vdupq_n_s64(v554), vzip1q_s64(0, v507));
      v556 = (v390 + 8 * (v540 >> 6));
      v557 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v556, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v555)), vshlq_u64(vdupq_lane_s64(v556->i64[0], 0), vnegq_s64(v555)));
      if (v554 + v509 >= 0x81)
      {
        v557 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v556[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v555)), vshlq_u64(vdupq_laneq_s64(v556[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v555))), v557);
      }
    }

    else
    {
      v392 = 1;
      v550 = v540;
      v557 = 0uLL;
    }

    v558 = vshlq_u64(v557, v518);
    v559 = vuzp1q_s32(vzip1q_s64(v557, v558), vzip2q_s64(v557, v558));
    v560 = vshlq_u32(v559, v522);
    v561 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v559, v560), vzip2q_s32(v559, v560)), v526), v525);
    v693[5] = v561;
    v562 = vmovl_u16(*&vpaddq_s16(v703, v703));
    v563 = vpaddq_s32(v562, v562).u64[0];
    v564.i64[0] = v563;
    v564.i64[1] = HIDWORD(v563);
    v565 = v564;
    v566 = vaddvq_s64(v564);
    v567 = v566;
    v568 = v550 + v566;
    if (v686)
    {
      v569 = v686 >= v568;
    }

    else
    {
      v569 = 1;
    }

    v570 = v569;
    if (v566 <= 0x80 && v570)
    {
      v571 = v550 & 0x3F;
      v572 = vaddq_s64(vdupq_n_s64(v571), vzip1q_s64(0, v565));
      v573 = (v390 + 8 * (v550 >> 6));
      v553 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v573, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v572)), vshlq_u64(vdupq_lane_s64(v573->i64[0], 0), vnegq_s64(v572)));
      if (v571 + v567 >= 0x81)
      {
        v553 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v573[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v572)), vshlq_u64(vdupq_laneq_s64(v573[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v572))), v553);
      }
    }

    else
    {
      v392 = 1;
      v568 = v550;
    }

    v574 = vzip1_s32(*v562.i8, *&vextq_s8(v562, v562, 8uLL));
    v575.i64[0] = v574.u32[0];
    v575.i64[1] = v574.u32[1];
    v576 = vnegq_s64(v575);
    v577 = vshlq_u64(v553, v576);
    v578 = vuzp1q_s32(vzip1q_s64(v553, v577), vzip2q_s64(v553, v577));
    v577.i64[0] = 0xFFFF0000FFFFLL;
    v577.i64[1] = 0xFFFF0000FFFFLL;
    v579 = vnegq_s32(vandq_s8(v703, v577));
    v580 = vshlq_u32(v578, v579);
    v581 = vuzp1q_s16(vzip1q_s32(v578, v580), vzip2q_s32(v578, v580));
    v578.i64[0] = 0xF000F000F000FLL;
    v578.i64[1] = 0xF000F000F000FLL;
    v582 = vaddq_s16(v703, v578);
    v580.i64[0] = 0x10001000100010;
    v580.i64[1] = 0x10001000100010;
    v583 = vsubq_s16(v580, v703);
    v584 = vshlq_s16(vshlq_s16(v581, v583), v582);
    v694 = v584;
    v585 = v568 + v567;
    if (v686)
    {
      v586 = v686 >= v585;
    }

    else
    {
      v586 = 1;
    }

    v587 = v586;
    v588 = 0uLL;
    if (v567 <= 0x80 && v587)
    {
      v589 = v568 & 0x3F;
      v590 = vaddq_s64(vdupq_n_s64(v589), vzip1q_s64(0, v565));
      v591 = (v390 + 8 * (v568 >> 6));
      v592 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v591, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v590)), vshlq_u64(vdupq_lane_s64(v591->i64[0], 0), vnegq_s64(v590)));
      if (v589 + v567 >= 0x81)
      {
        v592 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v591[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v590)), vshlq_u64(vdupq_laneq_s64(v591[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v590))), v592);
      }
    }

    else
    {
      v392 = 1;
      v585 = v568;
      v592 = 0uLL;
    }

    v593 = vshlq_u64(v592, v576);
    v594 = vuzp1q_s32(vzip1q_s64(v592, v593), vzip2q_s64(v592, v593));
    v595 = vshlq_u32(v594, v579);
    v596 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v594, v595), vzip2q_s32(v594, v595)), v583), v582);
    v695 = v596;
    v597 = v585 + v567;
    if (v686)
    {
      v598 = v686 >= v597;
    }

    else
    {
      v598 = 1;
    }

    v599 = v598;
    if (v567 <= 0x80 && v599)
    {
      v600 = v585 & 0x3F;
      v601 = vaddq_s64(vdupq_n_s64(v600), vzip1q_s64(0, v565));
      v602 = (v390 + 8 * (v585 >> 6));
      v588 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v602, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v601)), vshlq_u64(vdupq_lane_s64(v602->i64[0], 0), vnegq_s64(v601)));
      if (v600 + v567 >= 0x81)
      {
        v588 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v602[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v601)), vshlq_u64(vdupq_laneq_s64(v602[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v601))), v588);
      }
    }

    else
    {
      v392 = 1;
      v597 = v585;
    }

    v603 = vshlq_u64(v588, v576);
    v604 = vuzp1q_s32(vzip1q_s64(v588, v603), vzip2q_s64(v588, v603));
    v605 = vshlq_u32(v604, v579);
    v606 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v604, v605), vzip2q_s32(v604, v605)), v583), v582);
    v696 = v606;
    v607 = v597 + v567;
    if (v686)
    {
      v608 = v686 >= v607;
    }

    else
    {
      v608 = 1;
    }

    v609 = v608;
    if (v567 > 0x80 || !v609)
    {
      goto LABEL_276;
    }

    v610 = vaddq_s64(vdupq_n_s64(v597 & 0x3F), vzip1q_s64(0, v565));
    v611 = (v390 + 8 * (v597 >> 6));
    v612 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v611, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v610)), vshlq_u64(vdupq_lane_s64(v611->i64[0], 0), vnegq_s64(v610)));
    if ((v597 & 0x3F) + v567 >= 0x81)
    {
      v612 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v611[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v610)), vshlq_u64(vdupq_laneq_s64(v611[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v610))), v612);
    }

    if ((v392 & 1) != 0 || v686 + 8 * result - v607 - 1024 >= 9 || v375 == 2)
    {
LABEL_276:
      result = 0;
      v11 = vdupq_n_s64(0xFFFFF003FFuLL);
      *a1 = v11;
      a1[1] = v11;
      v12 = &a1->i8[a2];
      goto LABEL_6;
    }

    v613 = vshlq_u64(v612, v576);
    v614 = vuzp1q_s32(vzip1q_s64(v612, v613), vzip2q_s64(v612, v613));
    v615 = vshlq_u32(v614, v579);
    v616 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v614, v615), vzip2q_s32(v614, v615)), v583), v582);
    v617 = vaddq_s16(vandq_s8(v374, v342), v401);
    v618 = vdupq_lane_s64(v374.i64[0], 0);
    v619 = vandq_s8(v342, v618);
    v620 = vsubq_s16(v617, v619);
    v621 = vsubq_s16(v423, v619);
    v622 = vsubq_s16(v433, v619);
    v623 = vsubq_s16(v445, v619);
    v624 = vandq_s8(v341, v618);
    v625 = vsubq_s16(v469, v624);
    v626 = vsubq_s16(v481, v624);
    v627 = vsubq_s16(v491, v624);
    v628 = vsubq_s16(v503, v624);
    v629 = vandq_s8(v340, v618);
    v630 = vsubq_s16(v527, v629);
    v631 = vsubq_s16(v539, v629);
    v632 = vsubq_s16(v549, v629);
    v633 = vsubq_s16(v561, v629);
    v634 = vandq_s8(v339, v618);
    v635 = vsubq_s16(v584, v634);
    v688 = v617;
    v636 = vsubq_s16(v596, v634);
    v637 = vsubq_s16(v606, v634);
    v694 = v635;
    v695 = v636;
    v638 = vsubq_s16(v616, v634);
    v696 = v637;
    v697 = v638;
    v639.i64[0] = 0x1000100010001;
    v639.i64[1] = 0x1000100010001;
    if (vaddvq_s16(vceqq_s16(v319, v639)))
    {
      v640 = vnegq_s16(vandq_s8(v699, v639));
      v641.i64[0] = v623.i64[0];
      v642.i64[1] = v620.i64[1];
      v641.i64[1] = v620.i64[0];
      v642.i64[0] = v623.i64[1];
      v643 = vbslq_s8(v640, v642, v620);
      v644 = vbslq_s8(v640, v641, v623);
      v642.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
      v642.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
      v645 = vandq_s8(vqtbl4q_s8(*(&v621 - 1), v642), v640);
      v716.val[0] = vaddq_s16(v643, vandq_s8(vqtbl4q_s8(*(&v621 - 1), xmmword_29D2F10B0), v640));
      v716.val[1] = vaddq_s16(v621, vandq_s8(vqtbl4q_s8(*(&v621 - 1), xmmword_29D2F10C0), v640));
      v716.val[2] = vaddq_s16(v622, v645);
      v716.val[3] = vaddq_s16(v644, v645);
      v646 = vandq_s8(vqtbl4q_s8(v716, v642), v640);
      v620 = vaddq_s16(v716.val[0], vandq_s8(vqtbl4q_s8(v716, xmmword_29D2F10D0), v640));
      v621 = vaddq_s16(v716.val[1], vandq_s8(vqtbl4q_s8(v716, xmmword_29D2F10E0), v640));
      v688 = v620;
      v689 = v621;
      v622 = vaddq_s16(v716.val[2], v646);
      v623 = vaddq_s16(v716.val[3], v646);
      v715.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v625.i8, xmmword_29D2F10B0), v640), v625);
      v715.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v625.i8, xmmword_29D2F10F0), v640), v626);
      v715.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v625.i8, v642), v640), v627);
      v715.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v625.i8, xmmword_29D2F1100), v640), v628);
      v647 = vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F10D0), v640);
      v648 = vandq_s8(vqtbl4q_s8(v715, v642), v640);
      v625 = vaddq_s16(v647, v715.val[0]);
      v626 = vaddq_s16(v715.val[1], v647);
      v627 = vaddq_s16(v715.val[2], v648);
      v628 = vaddq_s16(v715.val[3], v648);
      v715.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v630.i8, xmmword_29D2F0EB0), v640), v630);
      v715.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v630.i8, xmmword_29D2F0FB0), v640), v631);
      v715.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v630.i8, xmmword_29D2F10B0), v640), v632);
      v715.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v630.i8, xmmword_29D2F10C0), v640), v633);
      v649 = vandq_s8(vqtbl4q_s8(v715, v642), v640);
      v630 = vaddq_s16(v715.val[0], v649);
      v631 = vaddq_s16(v715.val[1], v649);
      v632 = vaddq_s16(v715.val[2], vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F0FE0), v640));
      v633 = vaddq_s16(v715.val[3], vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F1110), v640));
      v716.val[0] = v694;
      v716.val[1] = v695;
      v318 = v699;
      v716.val[2] = v696;
      v716.val[3] = v697;
      v715.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(v716, xmmword_29D2F0EB0), v640), v694);
      v715.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(v716, xmmword_29D2F1120), v640), v695);
      v690 = v622;
      v691 = v623;
      v715.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(v716, xmmword_29D2F10B0), v640), v696);
      v715.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(v716, xmmword_29D2F10C0), v640), v697);
      v650 = vandq_s8(vqtbl4q_s8(v715, v642), v640);
      v635 = vaddq_s16(v715.val[0], v650);
      v636 = vaddq_s16(v715.val[1], v650);
      v637 = vaddq_s16(v715.val[2], vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F0FE0), v640));
      v638 = vaddq_s16(v715.val[3], vandq_s8(vqtbl4q_s8(v715, xmmword_29D2F1130), v640));
    }

    v651 = vaddq_s16(v698, v620);
    v652 = vaddq_s16(v621, v698);
    v653 = vaddq_s16(v622, v698);
    v654 = vaddq_s16(v623, v698);
    v655 = vaddq_s16(v625, v698);
    v656 = vaddq_s16(v626, v698);
    v657 = vaddq_s16(v627, v698);
    v658 = vaddq_s16(v628, v698);
    v659 = vaddq_s16(v630, v698);
    v660 = vaddq_s16(v631, v698);
    v661 = vaddq_s16(v632, v698);
    v662 = vaddq_s16(v633, v698);
    v663 = vaddq_s16(v635, v698);
    v664 = vaddq_s16(v636, v698);
    v665 = vaddq_s16(v637, v698);
    v666 = vaddq_s16(v638, v698);
    v667.i64[0] = 0x10001000100010;
    v667.i64[1] = 0x10001000100010;
    v668 = vceqzq_s16(vandq_s8(v318, v667));
    v669 = a1 + 4;
    *a1 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v651, xmmword_29D2F1140), v668), v651), 6uLL);
    a1[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v652, xmmword_29D2F1140), v668), v652), 6uLL);
    a1[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v653, xmmword_29D2F1140), v668), v653), 6uLL);
    a1[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v654, xmmword_29D2F1140), v668), v654), 6uLL);
    v670 = (a1 + a2);
    *v669 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v659, xmmword_29D2F1140), v668), v659), 6uLL);
    v669[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v660, xmmword_29D2F1140), v668), v660), 6uLL);
    v669[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v661, xmmword_29D2F1140), v668), v661), 6uLL);
    v669[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v662, xmmword_29D2F1140), v668), v662), 6uLL);
    *v670 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v655, xmmword_29D2F1140), v668), v655), 6uLL);
    v670[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v656, xmmword_29D2F1140), v668), v656), 6uLL);
    v670[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v657, xmmword_29D2F1140), v668), v657), 6uLL);
    v670[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v658, xmmword_29D2F1140), v668), v658), 6uLL);
    v670 += 4;
    *v670 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v663, xmmword_29D2F1140), v668), v663), 6uLL);
    v670[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v664, xmmword_29D2F1140), v668), v664), 6uLL);
    v670[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v665, xmmword_29D2F1140), v668), v665), 6uLL);
    v670[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v666, xmmword_29D2F1140), v668), v666), 6uLL);
  }

  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = a6;
  v9 = a5;
  v11 = a3;
  v13 = result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
    v11 += result;
  }

  else
  {
    *a4 = 0;
  }

  v14 = 2 * a2;
  v15 = v8 - 2;
  if (v9 && v8 >= 3)
  {
    if (v15 >= 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = v8 - 2;
    }

    if (v9 >= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 1, (v13 + v14), a2, v17, v16, a7);
    v11 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v18 = v9 - 4;
  if (v9 >= 5 && v8)
  {
    if (v8 >= 2)
    {
      v19 = 2;
    }

    else
    {
      v19 = v8;
    }

    if (v18 >= 4)
    {
      v20 = 4;
    }

    else
    {
      v20 = v9 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 2, v13 + 8, a2, v20, v19, a7);
    v11 += result;
  }

  else
  {
    a4[2] = 0;
    if (v9 < 5)
    {
      goto LABEL_37;
    }
  }

  if (v8 >= 3)
  {
    if (v15 >= 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = v8 - 2;
    }

    if (v18 >= 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = v9 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 3, (v13 + v14 + 128), a2, v22, v21, a7);
    v11 += result;
    v23 = v8 - 4;
    goto LABEL_38;
  }

LABEL_37:
  a4[3] = 0;
  v23 = v8 - 4;
  if (!v9)
  {
    goto LABEL_46;
  }

LABEL_38:
  if (v8 < 5)
  {
LABEL_46:
    a4[4] = 0;
    v26 = v8 - 6;
    if (!v9)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

  if (v23 >= 2)
  {
    v24 = 2;
  }

  else
  {
    v24 = v23;
  }

  if (v9 >= 4)
  {
    v25 = 4;
  }

  else
  {
    v25 = v9;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 4, (v13 + 4 * a2), a2, v25, v24, a7);
  v11 += result;
  v26 = v8 - 6;
LABEL_47:
  if (v8 >= 7)
  {
    if (v26 >= 2)
    {
      v27 = 2;
    }

    else
    {
      v27 = v26;
    }

    if (v9 >= 4)
    {
      v28 = 4;
    }

    else
    {
      v28 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 5, (v13 + 6 * a2), a2, v28, v27, a7);
    v11 += result;
    if (v9 < 5)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

LABEL_56:
  a4[5] = 0;
  if (v9 < 5)
  {
    goto LABEL_65;
  }

LABEL_57:
  if (v8 >= 5)
  {
    if (v23 >= 2)
    {
      v29 = 2;
    }

    else
    {
      v29 = v23;
    }

    if (v18 >= 4)
    {
      v30 = 4;
    }

    else
    {
      v30 = v9 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 6, (v13 + 4 * a2 + 128), a2, v30, v29, a7);
    v11 += result;
    goto LABEL_66;
  }

LABEL_65:
  a4[6] = 0;
  if (v9 < 5)
  {
LABEL_76:
    a4[7] = 0;
    return result;
  }

LABEL_66:
  if (v8 < 7)
  {
    goto LABEL_76;
  }

  if (v26 >= 2)
  {
    v31 = 2;
  }

  else
  {
    v31 = v26;
  }

  if (v18 >= 4)
  {
    v32 = 4;
  }

  else
  {
    v32 = v9 - 4;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 7, (v13 + 6 * a2 + 128), a2, v32, v31, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressMacroblock(int16x8_t *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1, 256, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 32, 256, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 8, 256, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 40, 256, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 64, 256, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 96, 256, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 72, 256, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 104, 256, v12 + v13, v14, a4);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(unint64_t a1, _BYTE *a2, int16x8_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = vshrq_n_s16(*a3, 6uLL);
  v8 = vshrq_n_s16(a3[1], 6uLL);
  v9 = vshrq_n_s16(a3[2], 6uLL);
  v10 = vshrq_n_s16(a3[3], 6uLL);
  v11 = vshrq_n_s16(a3[4], 6uLL);
  v12 = vshrq_n_s16(a3[5], 6uLL);
  v13 = vshrq_n_s16(a3[6], 6uLL);
  v14 = vshrq_n_s16(a3[7], 6uLL);
  v15 = vshrq_n_s16(*(a3 + a4), 6uLL);
  v16 = vshrq_n_s16(*(&a3[1] + a4), 6uLL);
  v17 = vshrq_n_s16(*(&a3[2] + a4), 6uLL);
  v18 = vshrq_n_s16(*(&a3[3] + a4), 6uLL);
  v19 = vshrq_n_s16(*(&a3[4] + a4), 6uLL);
  v20 = vshrq_n_s16(*(&a3[5] + a4), 6uLL);
  v21 = vshrq_n_s16(*(&a3[6] + a4), 6uLL);
  v22 = vshrq_n_s16(*(&a3[7] + a4), 6uLL);
  v464 = vdupq_lane_s64(v7.i64[0], 0);
  v440 = v11;
  v442 = v12;
  v443 = v13;
  v444 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v7, v464), 6uLL), 6uLL);
  v446 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v8, v464), 6uLL), 6uLL);
  v448 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v9, v464), 6uLL), 6uLL);
  v450 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v10, v464), 6uLL), 6uLL);
  v452 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v11, v464), 6uLL), 6uLL);
  v453 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v12, v464), 6uLL), 6uLL);
  v23 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v444, v446), v448), v450), xmmword_29D2F1150);
  v24 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v444, v446), v448), v450), xmmword_29D2F1150);
  v25 = vpmaxq_s16(v23, v23);
  v26 = vpminq_s16(v24, v24);
  v27 = vzip1q_s16(v25, v26);
  v28.i64[0] = 0x10001000100010;
  v28.i64[1] = 0x10001000100010;
  v29 = vbicq_s8(vsubq_s16(v28, vclsq_s16(v27)), vceqzq_s16(v27));
  v454 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v13, v464), 6uLL), 6uLL);
  v455 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v14, v464), 6uLL), 6uLL);
  v456 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v15, v464), 6uLL), 6uLL);
  v457 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v16, v464), 6uLL), 6uLL);
  v24.i64[0] = 0x8000800080008000;
  v24.i64[1] = 0x8000800080008000;
  v30.i64[0] = 0x8000800080008000;
  v30.i64[1] = 0x8000800080008000;
  v31 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v452, v453), v454), v455), xmmword_29D2F1150);
  v32 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v452, v453), v454), v455), xmmword_29D2F1150);
  v33 = vpmaxq_s16(v31, v31);
  v34 = vpminq_s16(v32, v32);
  v35 = vmaxq_s16(vmaxq_s16(v25, v24), v33);
  v36 = vminq_s16(vminq_s16(v26, v30), v34);
  v37 = vzip1q_s16(v33, v34);
  v38 = vbicq_s8(vsubq_s16(v28, vclsq_s16(v37)), vceqzq_s16(v37));
  v458 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v17, v464), 6uLL), 6uLL);
  v459 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v18, v464), 6uLL), 6uLL);
  v460 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v19, v464), 6uLL), 6uLL);
  v461 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v20, v464), 6uLL), 6uLL);
  v39 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v456, v457), v458), v459), xmmword_29D2F1150);
  v40 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v456, v457), v458), v459), xmmword_29D2F1150);
  v41 = vpmaxq_s16(v39, v39);
  v42 = vpminq_s16(v40, v40);
  v43 = vminq_s16(v36, v42);
  v44 = vzip1q_s16(v41, v42);
  v45 = vbicq_s8(vsubq_s16(v28, vclsq_s16(v44)), vceqzq_s16(v44));
  v462 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v21, v464), 6uLL), 6uLL);
  v463 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v22, v464), 6uLL), 6uLL);
  v46 = vpmaxq_s16(v29, v29);
  v47 = vpmaxq_s16(v38, v38);
  v48 = vpmaxq_s16(v45, v45);
  v49 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v460, v461), v462), v463), xmmword_29D2F1150);
  v50 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v460, v461), v462), v463), xmmword_29D2F1150);
  v51 = vpmaxq_s16(v49, v49);
  v52 = vpminq_s16(v50, v50);
  v53 = vmaxq_s16(vmaxq_s16(v35, v41), v51);
  v54 = vminq_s16(v43, v52);
  v55 = vzip1q_s16(v51, v52);
  v56 = vbicq_s8(vsubq_s16(v28, vclsq_s16(v55)), vceqzq_s16(v55));
  v57 = vpmaxq_s16(v56, v56);
  v58 = vmaxq_s16(vmaxq_s16(v46, v47), vmaxq_s16(v48, v57));
  v59 = vclzq_s16(vsubq_s16(v53, v54));
  v41.i64[0] = 0xF000F000F000FLL;
  v41.i64[1] = 0xF000F000F000FLL;
  v26.i64[0] = -1;
  v26.i64[1] = -1;
  v471 = v54;
  v472 = v53;
  v60 = vsubq_s16(v28, v59);
  v61 = vsubq_s16(vshlq_s16(v26, vsubq_s16(v41, v59)), v54);
  v62 = vcgtq_s16(v58, v60);
  v63 = vminq_s16(v60, v58);
  v473 = vandq_s8(v61, v62);
  v61.i64[0] = 0x8000800080008;
  v61.i64[1] = 0x8000800080008;
  v64.i64[0] = 0x3000300030003;
  v64.i64[1] = 0x3000300030003;
  v65 = vorrq_s8(vandq_s8(vceqzq_s16(v63), v64), vorrq_s8(vandq_s8(v62, v61), 0));
  v66 = vmaxq_s16(vminq_s16(vsubq_s16(v63, v47), v64), 0);
  v67 = vmaxq_s16(vminq_s16(vsubq_s16(v63, v48), v64), 0);
  v467 = vsubq_s16(v63, v66);
  v468 = vsubq_s16(v63, v67);
  v68 = vmaxq_s16(vminq_s16(vsubq_s16(v63, v57), v64), 0);
  v469 = vsubq_s16(v63, v68);
  v470 = v63;
  v69 = vmaxq_s16(vminq_s16(vsubq_s16(v63, v46), v64), 0);
  v70 = vsubq_s16(v63, v69);
  v71 = vceqq_s16(vaddq_s16(v68, v67), vnegq_s16(vaddq_s16(v69, v66)));
  v69.i64[0] = 0x4000400040004;
  v69.i64[1] = 0x4000400040004;
  v72 = vorrq_s8(vbicq_s8(v69, v71), v65);
  v465 = v72;
  v466 = v70;
  if (vmaxvq_s16(v63))
  {
    v411 = v14;
    v412 = v18;
    v413 = v15;
    v414 = v16;
    v415 = v17;
    v416 = v19;
    v417 = v20;
    v418 = v21;
    v419 = v22;
    v73.i64[0] = 0x10001000100010;
    v73.i64[1] = 0x10001000100010;
    v74 = v65;
    v75 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v444, vqtbl1q_s8(v444, xmmword_29D2F1140)), 6uLL), 6uLL);
    v76 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v446, vqtbl1q_s8(v446, xmmword_29D2F1140)), 6uLL), 6uLL);
    v77 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v448, vqtbl1q_s8(v448, xmmword_29D2F1140)), 6uLL), 6uLL);
    v78 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v450, vqtbl1q_s8(v450, xmmword_29D2F1140)), 6uLL), 6uLL);
    v79 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v460, vqtbl1q_s8(v460, xmmword_29D2F1140)), 6uLL), 6uLL);
    v80 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v461, vqtbl1q_s8(v461, xmmword_29D2F1140)), 6uLL), 6uLL);
    v81 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v462, vqtbl1q_s8(v462, xmmword_29D2F1140)), 6uLL), 6uLL);
    v82 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v456, vqtbl1q_s8(v456, xmmword_29D2F1140)), 6uLL), 6uLL);
    v83 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v463, vqtbl1q_s8(v463, xmmword_29D2F1140)), 6uLL), 6uLL);
    v84 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v459, vqtbl1q_s8(v459, xmmword_29D2F1140)), 6uLL), 6uLL);
    v85 = vmaxq_s16(vmaxq_s16(vmaxq_s16(v75, v76), v77), v78);
    v424 = v78;
    v425 = v77;
    v86 = vminq_s16(vminq_s16(vminq_s16(v75, v76), v77), v78);
    v87 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v458, vqtbl1q_s8(v458, xmmword_29D2F1140)), 6uLL), 6uLL);
    v88 = vqtbl1q_s8(v85, xmmword_29D2F1150);
    v89 = vqtbl1q_s8(v86, xmmword_29D2F1150);
    v90 = vpmaxq_s16(v88, v88);
    v91 = vpminq_s16(v89, v89);
    v92.i64[0] = 0x8000800080008000;
    v92.i64[1] = 0x8000800080008000;
    v93 = vmaxq_s16(v90, v92);
    v94.i64[0] = 0x8000800080008000;
    v94.i64[1] = 0x8000800080008000;
    v95 = vminq_s16(v91, v94);
    v96 = vzip1q_s16(v90, v91);
    v97 = vbicq_s8(vsubq_s16(v73, vclsq_s16(v96)), vceqzq_s16(v96));
    v98 = vpmaxq_s16(v97, v97);
    v430 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v453, vqtbl1q_s8(v453, xmmword_29D2F1140)), 6uLL), 6uLL);
    v432 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v452, vqtbl1q_s8(v452, xmmword_29D2F1140)), 6uLL), 6uLL);
    v434 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v455, vqtbl1q_s8(v455, xmmword_29D2F1140)), 6uLL), 6uLL);
    v436 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v454, vqtbl1q_s8(v454, xmmword_29D2F1140)), 6uLL), 6uLL);
    v99 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v432, v430), v436), v434), xmmword_29D2F1150);
    v100 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v432, v430), v436), v434), xmmword_29D2F1150);
    v101 = vpmaxq_s16(v99, v99);
    v102 = vpminq_s16(v100, v100);
    v103 = vmaxq_s16(v93, v101);
    v104 = vminq_s16(v95, v102);
    v105 = vzip1q_s16(v101, v102);
    v106 = vbicq_s8(vsubq_s16(v73, vclsq_s16(v105)), vceqzq_s16(v105));
    v107 = vpmaxq_s16(v106, v106);
    v438 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v457, vqtbl1q_s8(v457, xmmword_29D2F1140)), 6uLL), 6uLL);
    v108 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v82, v438), v87), v84), xmmword_29D2F1150);
    v109 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v82, v438), v87), v84), xmmword_29D2F1150);
    v110 = vpmaxq_s16(v108, v108);
    v111 = vpminq_s16(v109, v109);
    v112 = vmaxq_s16(v103, v110);
    v113 = vminq_s16(v104, v111);
    v114 = vzip1q_s16(v110, v111);
    v115 = vbicq_s8(vsubq_s16(v73, vclsq_s16(v114)), vceqzq_s16(v114));
    v116 = vpmaxq_s16(v115, v115);
    v117 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v79, v80), v81), v83), xmmword_29D2F1150);
    v118 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v79, v80), v81), v83), xmmword_29D2F1150);
    v119 = vpmaxq_s16(v117, v117);
    v120 = vpminq_s16(v118, v118);
    v121 = vmaxq_s16(v112, v119);
    v122 = vminq_s16(v113, v120);
    v123 = vzip1q_s16(v119, v120);
    v124 = vbicq_s8(vsubq_s16(v73, vclsq_s16(v123)), vceqzq_s16(v123));
    v125 = vpmaxq_s16(v124, v124);
    v126 = vmaxq_s16(vmaxq_s16(v98, v107), vmaxq_s16(v116, v125));
    v426 = v122;
    v428 = v121;
    v127 = vclzq_s16(vsubq_s16(v121, v122));
    v128 = vsubq_s16(v73, v127);
    v129 = vcgtq_s16(v126, v128);
    v130 = vminq_s16(v128, v126);
    v131 = vmaxq_s16(vminq_s16(vsubq_s16(v130, v98), v64), 0);
    v132 = vmaxq_s16(vminq_s16(vsubq_s16(v130, v107), v64), 0);
    v133 = vmaxq_s16(vminq_s16(vsubq_s16(v130, v116), v64), 0);
    v134 = vmaxq_s16(vminq_s16(vsubq_s16(v130, v125), v64), 0);
    v121.i64[0] = 0x4000400040004;
    v121.i64[1] = 0x4000400040004;
    v135 = vbicq_s8(v121, vceqq_s16(vaddq_s16(v134, v133), vnegq_s16(vaddq_s16(v131, v132))));
    v128.i64[0] = 0x18001800180018;
    v128.i64[1] = 0x18001800180018;
    v136 = vbslq_s8(v129, v128, v73);
    v421 = vsubq_s16(v130, v132);
    v422 = vsubq_s16(v130, v133);
    v423 = vsubq_s16(v130, v134);
    v134.i64[0] = 0x7000700070007;
    v134.i64[1] = 0x7000700070007;
    v420 = vsubq_s16(v130, v131);
    v133.i64[0] = 0x8000800080008;
    v133.i64[1] = 0x8000800080008;
    v137 = vandq_s8(vaddq_s16(v72, v72), v133);
    v121.i64[0] = 0x2000200020002;
    v121.i64[1] = 0x2000200020002;
    v138 = vandq_s8(vceqq_s16(vandq_s8(v74, v64), v121), v73);
    v139 = vceqzq_s16(vandq_s8(v74, v133));
    v140 = v469;
    v141 = v470;
    v143 = v466;
    v142 = v467;
    v144 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v470, v139), v138), v137), v466, v134);
    v145 = v468;
    v146 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v144, vshlq_n_s16(vaddq_s16(vaddq_s16(v468, v467), v469), 3uLL)), vaddq_s16(vmlaq_s16(vaddq_s16(vbicq_s8(v130, vceqzq_s16((*&v136 & __PAIR128__(0xFFEFFFEFFFEFFFEFLL, 0xFFEFFFEFFFEFFFEFLL)))), vaddq_s16(v135, v135)), v420, v134), vshlq_n_s16(vaddq_s16(vaddq_s16(v422, v421), v423), 3uLL))).i64[0], 0);
    v147 = vaddvq_s16(v146);
    if (a5)
    {
      v148 = a6 == 0;
    }

    else
    {
      v148 = 1;
    }

    v149 = v148;
    if (v147)
    {
      v150.i64[0] = 0x3000300030003;
      v150.i64[1] = 0x3000300030003;
      v151.i64[0] = 0xF000F000F000FLL;
      v151.i64[1] = 0xF000F000F000FLL;
      v444 = vbslq_s8(v146, v75, v444);
      v446 = vbslq_s8(v146, v76, v446);
      v152.i64[0] = -1;
      v152.i64[1] = -1;
      v448 = vbslq_s8(v146, v425, v448);
      v450 = vbslq_s8(v146, v424, v450);
      v153 = vandq_s8(vsubq_s16(vshlq_s16(v152, vsubq_s16(v151, v127)), v426), v129);
      v452 = vbslq_s8(v146, v432, v452);
      v453 = vbslq_s8(v146, v430, v453);
      v454 = vbslq_s8(v146, v436, v454);
      v455 = vbslq_s8(v146, v434, v455);
      v456 = vbslq_s8(v146, v82, v456);
      v457 = vbslq_s8(v146, v438, v457);
      v458 = vbslq_s8(v146, v87, v458);
      v459 = vbslq_s8(v146, v84, v459);
      v460 = vbslq_s8(v146, v79, v460);
      v461 = vbslq_s8(v146, v80, v461);
      v462 = vbslq_s8(v146, v81, v462);
      v463 = vbslq_s8(v146, v83, v463);
      v143 = vbslq_s8(v146, v420, v466);
      v142 = vbslq_s8(v146, v421, v467);
      v466 = v143;
      v467 = v142;
      v145 = vbslq_s8(v146, v422, v468);
      v140 = vbslq_s8(v146, v423, v469);
      v468 = v145;
      v469 = v140;
      v472 = vbslq_s8(v146, v428, v472);
      v473 = vbslq_s8(v146, v153, v473);
      v141 = vbslq_s8(v146, v130, v470);
      v470 = v141;
      v471 = vbslq_s8(v146, v426, v471);
      v72 = vbslq_s8(v146, vorrq_s8(vorrq_s8(vandq_s8(vceqzq_s16(v130), v150), v136), v135), v465);
      v464 = vbslq_s8(v146, vsubq_s16(v464, vqtbl1q_s8(v464, xmmword_29D2F1140)), v464);
      v465 = v72;
    }

    if ((v149 & 1) == 0)
    {
      v154 = vqtbl4q_s8(*v7.i8, xmmword_29D2F1160);
      v155 = vsubq_s16(v7, vqtbl4q_s8(*v7.i8, xmmword_29D2F10B0));
      v156 = vsubq_s16(v9, v154);
      v157 = vsubq_s16(v10, v154);
      v475.val[0] = v440;
      v475.val[1] = v442;
      v475.val[2] = v443;
      v475.val[3].i64[0] = v411.i64[0];
      v475.val[3].i64[1] = v10.i64[1];
      v158 = vsubq_s16(v440, vqtbl4q_s8(v475, xmmword_29D2F10B0));
      v159 = vsubq_s16(v442, vqtbl4q_s8(v475, xmmword_29D2F10F0));
      v160 = vsubq_s16(v443, vqtbl4q_s8(v475, xmmword_29D2F1160));
      v161 = vsubq_s16(v411, vqtbl4q_s8(v475, xmmword_29D2F1100));
      v476.val[0] = v413;
      v476.val[1] = v414;
      v476.val[2] = v415;
      v476.val[3].i64[0] = v412.i64[0];
      v476.val[3].i64[1] = v10.i64[1];
      v475.val[1] = vsubq_s16(v413, vqtbl4q_s8(v476, xmmword_29D2F1170));
      v475.val[2] = vsubq_s16(v414, vqtbl4q_s8(v476, xmmword_29D2F1180));
      v475.val[3] = vsubq_s16(v415, vqtbl4q_s8(v476, xmmword_29D2F10B0));
      v162 = vsubq_s16(v412, vqtbl4q_s8(v476, xmmword_29D2F10C0));
      v474.val[0] = v416;
      v474.val[1] = v417;
      v474.val[2] = v418;
      v474.val[3].i64[0] = v419.i64[0];
      v474.val[3].i64[1] = v10.i64[1];
      v475.val[0] = vsubq_s16(v416, vqtbl4q_s8(v474, xmmword_29D2F1170));
      v476.val[0] = vsubq_s16(v417, vqtbl4q_s8(v474, xmmword_29D2F1120));
      v163 = vsubq_s16(v418, vqtbl4q_s8(v474, xmmword_29D2F10B0));
      v476.val[1].i64[0] = v157.i64[0];
      v476.val[1].i64[1] = v155.i64[0];
      v164 = vsubq_s16(v419, vqtbl4q_s8(v474, xmmword_29D2F10C0));
      v155.i64[0] = v157.i64[1];
      v165 = vshlq_n_s16(v476.val[1], 6uLL);
      v476.val[1] = vshlq_n_s16(v475.val[1], 6uLL);
      v476.val[3] = vshlq_n_s16(v475.val[2], 6uLL);
      v474.val[0] = vshlq_n_s16(v475.val[3], 6uLL);
      v474.val[1] = vshlq_n_s16(v162, 6uLL);
      v474.val[2] = vshlq_n_s16(v475.val[0], 6uLL);
      v166 = vshlq_n_s16(v164, 6uLL);
      v167 = vshrq_n_s16(vshlq_n_s16(v155, 6uLL), 6uLL);
      v168 = vshrq_n_s16(vshlq_n_s16(vsubq_s16(v8, vqtbl4q_s8(*v7.i8, xmmword_29D2F10C0)), 6uLL), 6uLL);
      v169 = vshrq_n_s16(vshlq_n_s16(v156, 6uLL), 6uLL);
      v170 = vshrq_n_s16(v165, 6uLL);
      v171 = vshrq_n_s16(vshlq_n_s16(v158, 6uLL), 6uLL);
      v172 = vshrq_n_s16(vshlq_n_s16(v159, 6uLL), 6uLL);
      v173 = vshrq_n_s16(vshlq_n_s16(v160, 6uLL), 6uLL);
      v174 = vshrq_n_s16(vshlq_n_s16(v161, 6uLL), 6uLL);
      v175 = vshrq_n_s16(v476.val[1], 6uLL);
      v176 = vshrq_n_s16(v476.val[3], 6uLL);
      v177 = vshrq_n_s16(v474.val[0], 6uLL);
      v178 = vshrq_n_s16(v474.val[1], 6uLL);
      v179 = vshrq_n_s16(v474.val[2], 6uLL);
      v180 = vshrq_n_s16(vshlq_n_s16(v476.val[0], 6uLL), 6uLL);
      v181 = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v167, v168), v169), v170), xmmword_29D2F1150);
      v182 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v167, v168), v169), v170), xmmword_29D2F1150);
      v183 = vpmaxq_s16(v181, v181);
      v184 = vpminq_s16(v182, v182);
      v476.val[0].i64[0] = 0x8000800080008000;
      v476.val[0].i64[1] = 0x8000800080008000;
      v476.val[0] = vmaxq_s16(v183, v476.val[0]);
      v476.val[1].i64[0] = 0x8000800080008000;
      v476.val[1].i64[1] = 0x8000800080008000;
      v476.val[1] = vminq_s16(v184, v476.val[1]);
      v185 = vzip1q_s16(v183, v184);
      v183.i64[0] = 0x10001000100010;
      v183.i64[1] = 0x10001000100010;
      v476.val[3] = vbicq_s8(vsubq_s16(v183, vclsq_s16(v185)), vceqzq_s16(v185));
      v476.val[3] = vpmaxq_s16(v476.val[3], v476.val[3]);
      v474.val[0] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v171, v172), v173), v174), xmmword_29D2F1150);
      v474.val[1] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v171, v172), v173), v174), xmmword_29D2F1150);
      v474.val[0] = vpmaxq_s16(v474.val[0], v474.val[0]);
      v474.val[1] = vpminq_s16(v474.val[1], v474.val[1]);
      v476.val[0] = vmaxq_s16(v476.val[0], v474.val[0]);
      v476.val[1] = vminq_s16(v476.val[1], v474.val[1]);
      v474.val[0] = vzip1q_s16(v474.val[0], v474.val[1]);
      v474.val[0] = vbicq_s8(vsubq_s16(v183, vclsq_s16(v474.val[0])), vceqzq_s16(v474.val[0]));
      v474.val[0] = vpmaxq_s16(v474.val[0], v474.val[0]);
      v474.val[1] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v175, v176), v177), v178), xmmword_29D2F1150);
      v474.val[2] = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v175, v176), v177), v178), xmmword_29D2F1150);
      v474.val[1] = vpmaxq_s16(v474.val[1], v474.val[1]);
      v474.val[2] = vpminq_s16(v474.val[2], v474.val[2]);
      v476.val[0] = vmaxq_s16(v476.val[0], v474.val[1]);
      v474.val[1] = vzip1q_s16(v474.val[1], v474.val[2]);
      v474.val[1] = vbicq_s8(vsubq_s16(v183, vclsq_s16(v474.val[1])), vceqzq_s16(v474.val[1]));
      v186 = vpmaxq_s16(v474.val[1], v474.val[1]);
      v435 = v180;
      v437 = v179;
      v439 = vshrq_n_s16(v166, 6uLL);
      v441 = vshrq_n_s16(vshlq_n_s16(v163, 6uLL), 6uLL);
      v474.val[1] = vqtbl1q_s8(vmaxq_s16(vmaxq_s16(vmaxq_s16(v179, v180), v441), v439), xmmword_29D2F1150);
      v187 = vqtbl1q_s8(vminq_s16(vminq_s16(vminq_s16(v179, v180), v441), v439), xmmword_29D2F1150);
      v474.val[1] = vpmaxq_s16(v474.val[1], v474.val[1]);
      v188 = vpminq_s16(v187, v187);
      v189 = vmaxq_s16(v476.val[0], v474.val[1]);
      v190 = vminq_s16(vminq_s16(v476.val[1], v474.val[2]), v188);
      v191 = vzip1q_s16(v474.val[1], v188);
      v192 = vbicq_s8(vsubq_s16(v183, vclsq_s16(v191)), vceqzq_s16(v191));
      v193 = vpmaxq_s16(v192, v192);
      v476.val[0] = vmaxq_s16(vmaxq_s16(v476.val[3], v474.val[0]), vmaxq_s16(v186, v193));
      v433 = v189;
      v194 = vclzq_s16(vsubq_s16(v189, v190));
      v476.val[1] = vsubq_s16(v183, v194);
      v195 = vcgtq_s16(v476.val[0], v476.val[1]);
      v196 = vminq_s16(v476.val[1], v476.val[0]);
      v476.val[0] = vsubq_s16(v196, v476.val[3]);
      v476.val[3].i64[0] = 0x3000300030003;
      v476.val[3].i64[1] = 0x3000300030003;
      v476.val[0] = vmaxq_s16(vminq_s16(v476.val[0], v476.val[3]), 0);
      v476.val[1] = vmaxq_s16(vminq_s16(vsubq_s16(v196, v474.val[0]), v476.val[3]), 0);
      v474.val[0] = vmaxq_s16(vminq_s16(vsubq_s16(v196, v186), v476.val[3]), 0);
      v197 = vmaxq_s16(vminq_s16(vsubq_s16(v196, v193), v476.val[3]), 0);
      v198 = vsubq_s16(v196, v476.val[0]);
      v199 = vsubq_s16(v196, v474.val[0]);
      v200 = vsubq_s16(v196, v197);
      v201 = vceqq_s16(vaddq_s16(v197, v474.val[0]), vnegq_s16(vaddq_s16(v476.val[0], v476.val[1])));
      v476.val[0].i64[0] = 0x4000400040004;
      v476.val[0].i64[1] = 0x4000400040004;
      v202 = vbicq_s8(v476.val[0], v201);
      v474.val[0].i64[0] = 0x7000700070007;
      v474.val[0].i64[1] = 0x7000700070007;
      v427 = v199;
      v429 = vsubq_s16(v196, v476.val[1]);
      v431 = v200;
      v203 = vaddq_s16(vmlaq_s16(vaddq_s16(vandq_s8(v196, v195), vaddq_s16(v202, v202)), v198, v474.val[0]), vshlq_n_s16(vaddq_s16(vaddq_s16(v199, v429), v200), 3uLL));
      v72 = v465;
      v143 = v466;
      v204.i64[0] = 0x2000200020002;
      v204.i64[1] = 0x2000200020002;
      v205 = vandq_s8(vceqq_s16(vandq_s8(v465, v476.val[3]), v204), v183);
      v476.val[3].i64[0] = 0x8000800080008;
      v476.val[3].i64[1] = 0x8000800080008;
      v206 = vandq_s8(vaddq_s16(v72, v72), v476.val[3]);
      v207 = vceqzq_s16(vandq_s8(v465, v476.val[3]));
      v140 = v469;
      v141 = v470;
      v208 = vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v470, v207), v206), v205), v466, v474.val[0]);
      v142 = v467;
      v145 = v468;
      v209 = vdupq_lane_s64(vcgtq_s16(vaddq_s16(v208, vshlq_n_s16(vaddq_s16(vaddq_s16(v468, v467), v469), 3uLL)), v203).i64[0], 0);
      if (vaddvq_s16(v209))
      {
        v210 = vextq_s8(v10, v10, 8uLL);
        v211.i64[0] = 0x9000900090009;
        v211.i64[1] = 0x9000900090009;
        v212 = vorrq_s8(vandq_s8(vceqzq_s16(v196), v204), vsubq_s16(vandq_s8(v195, v211), vmvnq_s8(v195)));
        v211.i64[0] = -1;
        v211.i64[1] = -1;
        v213.i64[0] = 0xF000F000F000FLL;
        v213.i64[1] = 0xF000F000F000FLL;
        v143 = vbslq_s8(v209, v198, v466);
        v142 = vbslq_s8(v209, v429, v467);
        v145 = vbslq_s8(v209, v427, v468);
        v140 = vbslq_s8(v209, v431, v469);
        v141 = vbslq_s8(v209, v196, v470);
        v72 = vbslq_s8(v209, vorrq_s8(v212, v202), v465);
        v463 = vbslq_s8(v209, v439, v463);
        v464 = vbslq_s8(v209, v210, v464);
        v444 = vbslq_s8(v209, v167, v444);
        v446 = vbslq_s8(v209, v168, v446);
        v448 = vbslq_s8(v209, v169, v448);
        v450 = vbslq_s8(v209, v170, v450);
        v452 = vbslq_s8(v209, v171, v452);
        v453 = vbslq_s8(v209, v172, v453);
        v454 = vbslq_s8(v209, v173, v454);
        v455 = vbslq_s8(v209, v174, v455);
        v456 = vbslq_s8(v209, v175, v456);
        v457 = vbslq_s8(v209, v176, v457);
        v458 = vbslq_s8(v209, v177, v458);
        v459 = vbslq_s8(v209, v178, v459);
        v460 = vbslq_s8(v209, v437, v460);
        v461 = vbslq_s8(v209, v435, v461);
        v462 = vbslq_s8(v209, v441, v462);
        v471 = vbslq_s8(v209, v190, v471);
        v472 = vbslq_s8(v209, v433, v472);
        v473 = vbslq_s8(v209, vandq_s8(vsubq_s16(vshlq_s16(v211, vsubq_s16(v213, v194)), v190), v195), v473);
        v466 = v143;
        v467 = v142;
        v468 = v145;
        v469 = v140;
        v470 = v141;
        v465 = v72;
      }
    }

    v214 = vandq_s8(v473, vceqq_s16(v141, v143));
    v445 = vaddq_s16(v214, v444);
    v447 = vaddq_s16(v446, v214);
    v449 = vaddq_s16(v448, v214);
    v451 = vaddq_s16(v450, v214);
    v215 = vandq_s8(v473, vceqq_s16(v141, v142));
    v452 = vaddq_s16(v452, v215);
    v453 = vaddq_s16(v453, v215);
    v454 = vaddq_s16(v454, v215);
    v455 = vaddq_s16(v455, v215);
    v216 = vandq_s8(v473, vceqq_s16(v141, v145));
    v456 = vaddq_s16(v456, v216);
    v457 = vaddq_s16(v457, v216);
    v458 = vaddq_s16(v458, v216);
    v459 = vaddq_s16(v459, v216);
    v217 = vandq_s8(v473, vceqq_s16(v141, v140));
    v460 = vaddq_s16(v460, v217);
    v461 = vaddq_s16(v461, v217);
    v462 = vaddq_s16(v462, v217);
    v463 = vaddq_s16(v463, v217);
    v217.i64[0] = 0x8000800080008;
    v217.i64[1] = 0x8000800080008;
    v218.i64[0] = 0x3000300030003;
    v218.i64[1] = 0x3000300030003;
    v219.i64[0] = 0x2000200020002;
    v219.i64[1] = 0x2000200020002;
    v220 = vceqq_s16(vandq_s8(v72, v218), v219);
    v219.i64[0] = 0x10001000100010;
    v219.i64[1] = 0x10001000100010;
    v221 = vandq_s8(v220, v219);
    v219.i64[0] = 0x7000700070007;
    v219.i64[1] = 0x7000700070007;
    v222 = vaddq_s16(vmlaq_s16(vaddq_s16(vaddq_s16(vbicq_s8(v141, vceqzq_s16(vandq_s8(v72, v217))), vandq_s8(vaddq_s16(v72, v72), v217)), v221), v143, v219), vshlq_n_s16(vaddq_s16(vaddq_s16(v145, v142), v140), 3uLL));
    v223 = vpaddq_s16(v222, v222);
    if ((vpaddq_s16(v223, v223).i16[0] - 949) < 0xFFFFFFFFFFFFFBF8)
    {
      AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
      return 128;
    }

    else
    {
      v224 = (a1 & 0xFFFFFFFFFFFFFFF8);
      v225 = 8 * (a1 & 7);
      if (v225)
      {
        v226 = *v224 & ~(-1 << v225);
      }

      else
      {
        v226 = 0;
      }

      *a2 = 0;
      v230 = v464.i64[0];
      if (v141.i16[0])
      {
        v231 = ((v141.i8[0] - 1) & 0xF) << 20;
      }

      else
      {
        v231 = 0;
      }

      if (v141.i16[1])
      {
        v232 = ((v141.i8[2] - 1) & 0xF) << 24;
      }

      else
      {
        v232 = 0;
      }

      if (v141.i16[2])
      {
        v233 = (v141.u16[2] << 28) - 0x10000000;
      }

      else
      {
        v233 = 0;
      }

      if (v141.i16[3])
      {
        v234 = ((v141.i8[6] - 1) & 0xF) << 32;
      }

      else
      {
        v234 = 0;
      }

      v235 = (v72.i8[0] & 0x1F | (32 * (v72.i8[2] & 0x1F)) & 0x83FF | ((v72.i8[4] & 0x1F) << 10) | ((v72.i8[6] & 0x1F) << 15) | v231 | v232 | v233) + v234;
      v236 = (v235 << v225) | v226;
      if (v225 >= 0x1C)
      {
        *v224 = v236;
        v236 = v235 >> (-8 * (a1 & 7u));
      }

      v237 = v230 & 0x3FF | ((WORD1(v230) & 0x3FF) << 10) & 0xFFFFFFFFC00FFFFFLL | ((WORD2(v230) & 0x3FF) << 20) | ((HIWORD(v230) & 0x3FF) << 30);
      v238 = (v225 + 36) & 0x3C;
      v239 = v236 | (v237 << v238);
      if (v238 >= 0x18)
      {
        *(v224 + (((v225 + 36) >> 3) & 8)) = v239;
        v239 = v237 >> -v238;
      }

      v240 = v225 + 76;
      v241 = vsubq_s16(v470, v466);
      v242 = vsubq_s16(v470, v467);
      v243 = vsubq_s16(v470, v468);
      v244 = vsubq_s16(v470, v469);
      *v241.i8 = vqmovn_u16(v241);
      *v242.i8 = vqmovn_u16(v242);
      *v243.i8 = vqmovn_u16(v243);
      *v244.i8 = vqmovn_u16(v244);
      v245 = vtrn1q_s8(v241, v242);
      v246 = vtrn2q_s8(v241, v242);
      v247 = vtrn1q_s8(v243, v244);
      v248 = vtrn2q_s8(v243, v244);
      v249 = vzip1q_s16(v246, v248);
      v250 = vtrn2q_s16(v246, v248);
      v246.i64[0] = vzip1q_s32(vzip1q_s16(v245, v247), v249).u64[0];
      v250.i64[0] = vzip1q_s32(vtrn2q_s16(v245, v247), v250).u64[0];
      v243.i64[0] = 0x202020202020202;
      v243.i64[1] = 0x202020202020202;
      v251 = vandq_s8(vmovl_s16(vtst_s16(*v465.i8, 0x4000400040004)), v243);
      v243.i64[0] = 0xF8F8F8F8F8F8F8F8;
      v243.i64[1] = 0xF8F8F8F8F8F8F8F8;
      v245.i64[0] = -1;
      v245.i64[1] = -1;
      v252 = vshlq_u8(v245, vorrq_s8(v251, v243));
      v253 = vmovl_u8(vand_s8(*v252.i8, *v246.i8));
      v254 = vmovl_u8(vand_s8(*&vextq_s8(v252, v252, 8uLL), *v250.i8));
      v255 = vmovl_u8(*v251.i8);
      v256 = vmovl_high_u8(v251);
      v257 = vpaddq_s16(vshlq_u16(v253, vtrn1q_s16(0, v255)), vshlq_u16(v254, vtrn1q_s16(0, v256)));
      v258 = vpaddq_s16(v255, v256);
      v259 = vmovl_u16(*v258.i8);
      v260 = vmovl_high_u16(v258);
      v261 = vpaddq_s32(vshlq_u32(vmovl_u16(*v257.i8), vtrn1q_s32(0, v259)), vshlq_u32(vmovl_high_u16(v257), vtrn1q_s32(0, v260)));
      v262 = vpaddq_s32(v259, v260);
      v263.i64[0] = v261.u32[0];
      v263.i64[1] = v261.u32[1];
      v264 = v263;
      v263.i64[0] = v261.u32[2];
      v263.i64[1] = v261.u32[3];
      v265 = v263;
      v263.i64[0] = v262.u32[0];
      v263.i64[1] = v262.u32[1];
      v266 = v263;
      v263.i64[0] = v262.u32[2];
      v263.i64[1] = v262.u32[3];
      v267 = vpaddq_s64(vshlq_u64(v264, vzip1q_s64(0, v266)), vshlq_u64(v265, vzip1q_s64(0, v263)));
      v268 = vpaddq_s64(v266, v263);
      v269 = (v225 + 76) & 0x3C;
      v270 = (v267.i64[0] << v269) | v239;
      if ((v268.i64[0] + v269) >= 0x40)
      {
        *(v224 + ((v240 >> 3) & 0x18)) = v270;
        v270 = v267.i64[0] >> -v269;
      }

      v271 = v268.i64[0] + v240;
      v272 = v270 | (v267.i64[1] << v271);
      if ((v271 & 0x3F) + v268.i64[1] >= 0x40)
      {
        *(v224 + ((v271 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v272;
        v272 = v267.i64[1] >> -(v271 & 0x3F);
        if ((v271 & 0x3F) == 0)
        {
          v272 = 0;
        }
      }

      v273 = v271 + v268.i64[1];
      v274.i64[0] = 0x8000800080008;
      v274.i64[1] = 0x8000800080008;
      v275.i64[0] = -1;
      v275.i64[1] = -1;
      v276 = vandq_s8(vextq_s8(vtstq_s16(v465, v274), 0, 8uLL), v470);
      v277.i64[0] = 0xF000F000F000FLL;
      v277.i64[1] = 0xF000F000F000FLL;
      v278 = vandq_s8(vshlq_u16(v275, vaddq_s16(v276, v277)), v473);
      v279 = vmovl_u16(*v276.i8);
      v280 = vpaddq_s32(vshlq_u32(vmovl_u16(*v278.i8), vtrn1q_s32(0, v279)), vmovl_high_u16(v278));
      v281 = vpaddq_s32(v279, vmovl_high_u16(v276));
      v282.i64[0] = v280.u32[0];
      v282.i64[1] = v280.u32[1];
      v283 = v282;
      v282.i64[0] = v280.u32[2];
      v282.i64[1] = v280.u32[3];
      v284 = v282;
      v282.i64[0] = v281.u32[0];
      v282.i64[1] = v281.u32[1];
      v285 = v282;
      v282.i64[0] = v281.u32[2];
      v282.i64[1] = v281.u32[3];
      v286 = vpaddq_s64(vshlq_u64(v283, vzip1q_s64(0, v285)), vshlq_u64(v284, vzip1q_s64(0, v282)));
      v287 = vpaddq_s64(v285, v282);
      v288 = (v286.i64[0] << v273) | v272;
      if (v287.i64[0] + (v273 & 0x3F) >= 0x40)
      {
        *(v224 + ((v273 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v288;
        v288 = v286.i64[0] >> -(v273 & 0x3F);
        if ((v273 & 0x3F) == 0)
        {
          v288 = 0;
        }
      }

      v289 = v287.i64[0] + v273;
      v290 = v288 | (v286.i64[1] << v289);
      if ((v289 & 0x3F) + v287.i64[1] >= 0x40)
      {
        *(v224 + ((v289 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v290;
        v290 = v286.i64[1] >> -(v289 & 0x3F);
        if ((v289 & 0x3F) == 0)
        {
          v290 = 0;
        }
      }

      v291 = v289 + v287.i64[1];
      v292 = vextq_s8(0, v466, 8uLL);
      v293.i64[0] = 0xF000F000F000FLL;
      v293.i64[1] = 0xF000F000F000FLL;
      v294.i64[0] = -1;
      v294.i64[1] = -1;
      v295 = vandq_s8(vshlq_u16(v294, vaddq_s16(v292, v293)), v445);
      v296 = vmovl_u16(*v292.i8);
      v297 = vmovl_high_u16(v292);
      v298 = vpaddq_s32(vmovl_u16(*v295.i8), vshlq_u32(vmovl_high_u16(v295), vtrn1q_s32(0, v297)));
      v299 = vpaddq_s32(v296, v297);
      v300.i64[0] = v298.u32[0];
      v300.i64[1] = v298.u32[1];
      v301 = v300;
      v300.i64[0] = v298.u32[2];
      v300.i64[1] = v298.u32[3];
      v302 = v300;
      v300.i64[0] = v299.u32[0];
      v300.i64[1] = v299.u32[1];
      v303 = v300;
      v300.i64[0] = v299.u32[2];
      v300.i64[1] = v299.u32[3];
      v304 = vpaddq_s64(vshlq_u64(v301, vzip1q_s64(0, v303)), vshlq_u64(v302, vzip1q_s64(0, v300)));
      v305 = vpaddq_s64(v303, v300);
      v306 = (v304.i64[0] << v291) | v290;
      if (v305.i64[0] + (v291 & 0x3F) >= 0x40)
      {
        *(v224 + ((v291 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v306;
        v306 = v304.i64[0] >> -(v291 & 0x3F);
        if ((v291 & 0x3F) == 0)
        {
          v306 = 0;
        }
      }

      v307 = v305.i64[0] + v291;
      v308 = v306 | (v304.i64[1] << v307);
      if ((v307 & 0x3F) + v305.i64[1] >= 0x40)
      {
        *(v224 + ((v307 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v308;
        v308 = v304.i64[1] >> -(v307 & 0x3F);
        if ((v307 & 0x3F) == 0)
        {
          v308 = 0;
        }
      }

      v309 = v307 + v305.i64[1];
      v310.i64[0] = 0xF000F000F000FLL;
      v310.i64[1] = 0xF000F000F000FLL;
      v311.i64[0] = -1;
      v311.i64[1] = -1;
      v312 = vandq_s8(vshlq_u16(v311, vaddq_s16(v466, v310)), v447);
      v313 = vmovl_u16(*v466.i8);
      v314 = vmovl_high_u16(v466);
      v315 = vpaddq_s32(vshlq_u32(vmovl_u16(*v312.i8), vtrn1q_s32(0, v313)), vshlq_u32(vmovl_high_u16(v312), vtrn1q_s32(0, v314)));
      v316 = vpaddq_s32(v313, v314);
      v317.i64[0] = v315.u32[0];
      v317.i64[1] = v315.u32[1];
      v318 = v317;
      v317.i64[0] = v315.u32[2];
      v317.i64[1] = v315.u32[3];
      v319 = v317;
      v317.i64[0] = v316.u32[0];
      v317.i64[1] = v316.u32[1];
      v320 = v317;
      v317.i64[0] = v316.u32[2];
      v317.i64[1] = v316.u32[3];
      v321 = vpaddq_s64(vshlq_u64(v318, vzip1q_s64(0, v320)), vshlq_u64(v319, vzip1q_s64(0, v317)));
      v322 = vpaddq_s64(v320, v317);
      v323 = (v321.i64[0] << v309) | v308;
      if (v322.i64[0] + (v309 & 0x3F) >= 0x40)
      {
        *(v224 + ((v309 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v323;
        v323 = v321.i64[0] >> -(v309 & 0x3F);
        if ((v309 & 0x3F) == 0)
        {
          v323 = 0;
        }
      }

      v324 = v322.i64[0] + v309;
      v325 = v323 | (v321.i64[1] << v324);
      if ((v324 & 0x3F) + v322.i64[1] >= 0x40)
      {
        *(v224 + ((v324 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v325;
        v325 = v321.i64[1] >> -(v324 & 0x3F);
        if ((v324 & 0x3F) == 0)
        {
          v325 = 0;
        }
      }

      v326 = v324 + v322.i64[1];
      v327.i64[0] = 0xF000F000F000FLL;
      v327.i64[1] = 0xF000F000F000FLL;
      v328.i64[0] = -1;
      v328.i64[1] = -1;
      v329 = vandq_s8(vshlq_u16(v328, vaddq_s16(v466, v327)), v449);
      v330 = vmovl_u16(*v466.i8);
      v331 = vmovl_high_u16(v466);
      v332 = vpaddq_s32(vshlq_u32(vmovl_u16(*v329.i8), vtrn1q_s32(0, v330)), vshlq_u32(vmovl_high_u16(v329), vtrn1q_s32(0, v331)));
      v333 = vpaddq_s32(v330, v331);
      v334.i64[0] = v332.u32[0];
      v334.i64[1] = v332.u32[1];
      v335 = v334;
      v334.i64[0] = v332.u32[2];
      v334.i64[1] = v332.u32[3];
      v336 = v334;
      v334.i64[0] = v333.u32[0];
      v334.i64[1] = v333.u32[1];
      v337 = v334;
      v334.i64[0] = v333.u32[2];
      v334.i64[1] = v333.u32[3];
      v338 = vpaddq_s64(vshlq_u64(v335, vzip1q_s64(0, v337)), vshlq_u64(v336, vzip1q_s64(0, v334)));
      v339 = vpaddq_s64(v337, v334);
      v340 = (v338.i64[0] << v326) | v325;
      if (v339.i64[0] + (v326 & 0x3F) >= 0x40)
      {
        *(v224 + ((v326 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v340;
        v340 = v338.i64[0] >> -(v326 & 0x3F);
        if ((v326 & 0x3F) == 0)
        {
          v340 = 0;
        }
      }

      v341 = v339.i64[0] + v326;
      v342 = v340 | (v338.i64[1] << v341);
      if ((v341 & 0x3F) + v339.i64[1] >= 0x40)
      {
        *(v224 + ((v341 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v342;
        v342 = v338.i64[1] >> -(v341 & 0x3F);
        if ((v341 & 0x3F) == 0)
        {
          v342 = 0;
        }
      }

      v343 = v341 + v339.i64[1];
      v344.i64[0] = 0xF000F000F000FLL;
      v344.i64[1] = 0xF000F000F000FLL;
      v345.i64[0] = -1;
      v345.i64[1] = -1;
      v346 = vandq_s8(vshlq_u16(v345, vaddq_s16(v466, v344)), v451);
      v347 = vmovl_u16(*v466.i8);
      v348 = vmovl_high_u16(v466);
      v349 = vpaddq_s32(vshlq_u32(vmovl_u16(*v346.i8), vtrn1q_s32(0, v347)), vshlq_u32(vmovl_high_u16(v346), vtrn1q_s32(0, v348)));
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
      v357 = (v355.i64[0] << v343) | v342;
      if (v356.i64[0] + (v343 & 0x3F) >= 0x40)
      {
        *(v224 + ((v343 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v357;
        v357 = v355.i64[0] >> -(v343 & 0x3F);
        if ((v343 & 0x3F) == 0)
        {
          v357 = 0;
        }
      }

      v358 = v356.i64[1];
      v359 = v356.i64[0] + v343;
      v360 = (v356.i64[0] + v343) & 0x3F;
      v361 = v357 | (v355.i64[1] << v359);
      if ((v360 + v356.i64[1]) >= 0x40)
      {
        *(v224 + ((v359 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
        v361 = v355.i64[1] >> -v360;
        if (!v360)
        {
          v361 = 0;
        }
      }

      v362 = 0;
      v363.i64[0] = 0xF000F000F000FLL;
      v363.i64[1] = 0xF000F000F000FLL;
      v364.i64[0] = -1;
      v364.i64[1] = -1;
      v365 = v359 + v358;
      do
      {
        v366 = vandq_s8(vshlq_u16(v364, vaddq_s16(v467, v363)), *(&v452 + v362));
        v367 = vmovl_u16(*v467.i8);
        v368 = vmovl_high_u16(v467);
        v369 = vpaddq_s32(vshlq_u32(vmovl_u16(*v366.i8), vtrn1q_s32(0, v367)), vshlq_u32(vmovl_high_u16(v366), vtrn1q_s32(0, v368)));
        v370 = vpaddq_s32(v367, v368);
        v371.i64[0] = v369.u32[0];
        v371.i64[1] = v369.u32[1];
        v372 = v371;
        v371.i64[0] = v369.u32[2];
        v371.i64[1] = v369.u32[3];
        v373 = v371;
        v371.i64[0] = v370.u32[0];
        v371.i64[1] = v370.u32[1];
        v374 = v371;
        v371.i64[0] = v370.u32[2];
        v371.i64[1] = v370.u32[3];
        v375 = vpaddq_s64(vshlq_u64(v372, vzip1q_s64(0, v374)), vshlq_u64(v373, vzip1q_s64(0, v371)));
        v376 = vpaddq_s64(v374, v371);
        v377 = (v375.i64[0] << v365) | v361;
        if (v376.i64[0] + (v365 & 0x3F) >= 0x40)
        {
          *(v224 + ((v365 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v377;
          v377 = v375.i64[0] >> -(v365 & 0x3F);
          if ((v365 & 0x3F) == 0)
          {
            v377 = 0;
          }
        }

        v378 = v376.i64[0] + v365;
        v361 = v377 | (v375.i64[1] << v378);
        if ((v378 & 0x3F) + v376.i64[1] >= 0x40)
        {
          *(v224 + ((v378 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
          v361 = v375.i64[1] >> -(v378 & 0x3F);
          if ((v378 & 0x3F) == 0)
          {
            v361 = 0;
          }
        }

        v365 = v378 + v376.i64[1];
        v362 += 16;
      }

      while (v362 != 64);
      v379 = 0;
      v380.i64[0] = 0xF000F000F000FLL;
      v380.i64[1] = 0xF000F000F000FLL;
      v381.i64[0] = -1;
      v381.i64[1] = -1;
      do
      {
        v382 = vandq_s8(vshlq_u16(v381, vaddq_s16(v468, v380)), *(&v456 + v379));
        v383 = vmovl_u16(*v468.i8);
        v384 = vmovl_high_u16(v468);
        v385 = vpaddq_s32(vshlq_u32(vmovl_u16(*v382.i8), vtrn1q_s32(0, v383)), vshlq_u32(vmovl_high_u16(v382), vtrn1q_s32(0, v384)));
        v386 = vpaddq_s32(v383, v384);
        v387.i64[0] = v385.u32[0];
        v387.i64[1] = v385.u32[1];
        v388 = v387;
        v387.i64[0] = v385.u32[2];
        v387.i64[1] = v385.u32[3];
        v389 = v387;
        v387.i64[0] = v386.u32[0];
        v387.i64[1] = v386.u32[1];
        v390 = v387;
        v387.i64[0] = v386.u32[2];
        v387.i64[1] = v386.u32[3];
        v391 = vpaddq_s64(vshlq_u64(v388, vzip1q_s64(0, v390)), vshlq_u64(v389, vzip1q_s64(0, v387)));
        v392 = vpaddq_s64(v390, v387);
        v393 = (v391.i64[0] << v365) | v361;
        if (v392.i64[0] + (v365 & 0x3F) >= 0x40)
        {
          *(v224 + ((v365 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v393;
          v393 = v391.i64[0] >> -(v365 & 0x3F);
          if ((v365 & 0x3F) == 0)
          {
            v393 = 0;
          }
        }

        v394 = v392.i64[0] + v365;
        v361 = v393 | (v391.i64[1] << v394);
        if ((v394 & 0x3F) + v392.i64[1] >= 0x40)
        {
          *(v224 + ((v394 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
          v361 = v391.i64[1] >> -(v394 & 0x3F);
          if ((v394 & 0x3F) == 0)
          {
            v361 = 0;
          }
        }

        v365 = v394 + v392.i64[1];
        v379 += 16;
      }

      while (v379 != 64);
      v395 = 0;
      v396.i64[0] = 0xF000F000F000FLL;
      v396.i64[1] = 0xF000F000F000FLL;
      v397.i64[0] = -1;
      v397.i64[1] = -1;
      do
      {
        v398 = vandq_s8(vshlq_u16(v397, vaddq_s16(v469, v396)), *(&v460 + v395));
        v399 = vmovl_u16(*v469.i8);
        v400 = vmovl_high_u16(v469);
        v401 = vpaddq_s32(vshlq_u32(vmovl_u16(*v398.i8), vtrn1q_s32(0, v399)), vshlq_u32(vmovl_high_u16(v398), vtrn1q_s32(0, v400)));
        v402 = vpaddq_s32(v399, v400);
        v403.i64[0] = v401.u32[0];
        v403.i64[1] = v401.u32[1];
        v404 = v403;
        v403.i64[0] = v401.u32[2];
        v403.i64[1] = v401.u32[3];
        v405 = v403;
        v403.i64[0] = v402.u32[0];
        v403.i64[1] = v402.u32[1];
        v406 = v403;
        v403.i64[0] = v402.u32[2];
        v403.i64[1] = v402.u32[3];
        v407 = vpaddq_s64(vshlq_u64(v404, vzip1q_s64(0, v406)), vshlq_u64(v405, vzip1q_s64(0, v403)));
        v408 = vpaddq_s64(v406, v403);
        v409 = (v407.i64[0] << v365) | v361;
        if (v408.i64[0] + (v365 & 0x3F) >= 0x40)
        {
          *(v224 + ((v365 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v409;
          v409 = v407.i64[0] >> -(v365 & 0x3F);
          if ((v365 & 0x3F) == 0)
          {
            v409 = 0;
          }
        }

        v410 = v408.i64[0] + v365;
        v361 = v409 | (v407.i64[1] << v410);
        if ((v410 & 0x3F) + v408.i64[1] >= 0x40)
        {
          *(v224 + ((v410 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
          v361 = v407.i64[1] >> -(v410 & 0x3F);
          if ((v410 & 0x3F) == 0)
          {
            v361 = 0;
          }
        }

        v365 = v410 + v408.i64[1];
        v395 += 16;
      }

      while (v395 != 64);
      if ((v365 & 0x3F) != 0)
      {
        *(v224 + ((v365 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v361;
      }

      result = (v365 - v225 + 7) >> 3;
      *a2 |= result - 1;
    }
  }

  else
  {
    v227 = vld1q_dup_f64(a3->i64);
    v228 = vorrq_s8(vandq_s8(vshlq_u64(v227, xmmword_29D2F1440), xmmword_29D2F1470), vandq_s8(vshlq_u64(v227, xmmword_29D2F1450), xmmword_29D2F1460));
    *v228.i8 = vorr_s8(*v228.i8, *&vextq_s8(v228, v228, 8uLL));
    *a1 = v228.i32[0];
    *(a1 + 4) = v228.i8[4];
    *a2 = 4;
    return 5;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v96 = *MEMORY[0x29EDCA608];
  v12 = 0uLL;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  v21 = 0uLL;
  v22 = 0uLL;
  v23 = 0uLL;
  v24 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
  v27 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
  v30 = 0uLL;
  v31 = 0uLL;
  if (a6 && a5)
  {
    for (i = 0; i != a6; ++i)
    {
      v33 = 0;
      v34 = (a3 + i * a4);
      v35 = &v80 + 8 * (i & 0x3F);
      v36 = &v80 + 2 * ((4 * i) | 1u);
      v37 = &v80 + 2 * ((4 * i) | 2u);
      v38 = &v80 + 2 * ((4 * i) | 3u);
      do
      {
        v39 = v34[1];
        *&v35[v33 & 0x7F] = (*v34 >> 6) & 0x3FF03FF03FF03FFLL;
        *&v36[v33 & 0x7F] = (v39 >> 6) & 0x3FF03FF03FF03FFLL;
        v40 = (2 * v33) | 1u;
        v41 = v34[3];
        *(v35 + v40) = (v34[2] >> 6) & 0x3FF03FF03FF03FFLL;
        *(v36 + v40) = (v41 >> 6) & 0x3FF03FF03FF03FFLL;
        v42 = v34[5];
        *&v37[v33 & 0x7F] = (v34[4] >> 6) & 0x3FF03FF03FF03FFLL;
        *&v38[v33 & 0x7F] = (v42 >> 6) & 0x3FF03FF03FF03FFLL;
        v43 = (v34[6] >> 6) & 0x3FF03FF03FF03FFLL;
        v44 = (v34[7] >> 6) & 0x3FF03FF03FF03FFLL;
        v34 += 8;
        ++v33;
        *(v37 + v40) = v43;
        *(v38 + v40) = v44;
      }

      while (a5 != v33);
    }

    v31 = vmovl_u16(*&v80);
    v30 = vmovl_u16(*&v82);
    v29 = vmovl_u16(*(&v80 + 8));
    v28 = vmovl_u16(*(&v82 + 8));
    v27 = vmovl_u16(*&v84);
    v26 = vmovl_u16(*&v86);
    v25 = vmovl_u16(*(&v84 + 8));
    v24 = vmovl_u16(*(&v86 + 8));
    v23 = vmovl_u16(*&v81);
    v22 = vmovl_u16(*&v83);
    v21 = vmovl_u16(*(&v81 + 8));
    v20 = vmovl_u16(*(&v83 + 8));
    v19 = vmovl_u16(*&v85);
    v18 = vmovl_u16(*&v87);
    v17 = vmovl_u16(*(&v85 + 8));
    v16 = vmovl_u16(*(&v87 + 8));
    v15 = vmovl_u16(*&v88);
    v14 = vmovl_u16(*&v90);
    v13 = vmovl_u16(*(&v88 + 8));
    v12 = vmovl_u16(*(&v90 + 8));
  }

  v60 = v23;
  v61 = v22;
  v62 = v21;
  v63 = v20;
  v64 = v19;
  v65 = v18;
  v66 = v17;
  v67 = v16;
  v68 = v15;
  v69 = v14;
  v70 = v13;
  v71 = v12;
  v72 = v31;
  v73 = v30;
  v45 = 2 * (a6 & 0x7F);
  v46 = 4 * (a5 & 0x3F);
  v74 = v29;
  v75 = v28;
  v76 = v27;
  v77 = v26;
  v78 = v25;
  v79 = v24;
  v47 = 4 * (a5 != 0);
  v48 = 2 * (a6 != 0);
  v49 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1, &v72, a7, v47, v48);
  v72 = v60;
  v73 = v61;
  v74 = v62;
  v75 = v63;
  v76 = v64;
  v77 = v65;
  v50 = v45 - 2;
  if (v45 < 2)
  {
    v50 = 0;
  }

  if (a6 >= 2)
  {
    v51 = 2;
  }

  else
  {
    v51 = v50;
  }

  v78 = v66;
  v79 = v67;
  v52 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 32, &v72, a7, v47, v51);
  v72 = v68;
  v73 = v69;
  v74 = v70;
  v75 = v71;
  v76 = vmovl_u16(*&v92);
  v77 = vmovl_u16(*&v94);
  v78 = vmovl_u16(*(&v92 + 8));
  v79 = vmovl_u16(*(&v94 + 8));
  v53 = v46 - 4;
  if (v46 < 4)
  {
    v53 = 0;
  }

  if (a5 >= 2)
  {
    v54 = 4;
  }

  else
  {
    v54 = v53;
  }

  v55 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 64, &v72, a7, v54, v48);
  v72 = vmovl_u16(*&v89);
  v73 = vmovl_u16(*&v91);
  v74 = vmovl_u16(*(&v89 + 8));
  v75 = vmovl_u16(*(&v91 + 8));
  v76 = vmovl_u16(*&v93);
  v77 = vmovl_u16(*&v95);
  v78 = vmovl_u16(*(&v93 + 8));
  v79 = vmovl_u16(*(&v95 + 8));
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressLossyCompressedSubblockDQuad(a1 + 96, &v72, a7, v54, v51);
  if (v55)
  {
    v57 = 4;
  }

  else
  {
    v57 = 0;
  }

  if (v52)
  {
    v58 = 2;
  }

  else
  {
    v58 = 0;
  }

  if (result)
  {
    v59 = -8;
  }

  else
  {
    v59 = -16;
  }

  *a2 = v59 | v57 | v49 | v58;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(int16x8_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v658 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    v6 = a4;
    if (a4 < 0xF0)
    {
      if (a4 == 159)
      {
        v37.i64[0] = 0xA000A000A000ALL;
        v37.i64[1] = 0xA000A000A000ALL;
        v38 = vmovl_u16(*&vpaddq_s16(v37, v37));
        v37.i64[0] = vpaddq_s32(v38, v38).u64[0];
        v39.i64[0] = v37.u32[0];
        v39.i64[1] = v37.u32[1];
        v40 = v39;
        v41 = vaddvq_s64(v39);
        v42 = v41;
        v43 = 0uLL;
        if (v41 > 0x80)
        {
          v247 = 0uLL;
          v248 = 0uLL;
          v249 = 0uLL;
          v239 = 0uLL;
          v240 = 0uLL;
          v241 = 0uLL;
          v242 = 0uLL;
          v246 = 0uLL;
          v245 = 0uLL;
          v244 = 0uLL;
          v243 = 0uLL;
          v267 = 0uLL;
          v266 = 0uLL;
          v265 = 0uLL;
          v264 = 0uLL;
        }

        else
        {
          v44 = (a3 & 0xFFFFFFFFFFFFFFF8);
          v45 = vzip1q_s64(0, v40);
          v46 = 8 * (a3 & 7);
          v47 = v41 + v46;
          v48 = vaddq_s64(v45, vdupq_n_s64(v46));
          v49 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v48)), vshlq_u64(vdupq_lane_s64(*(a3 & 0xFFFFFFFFFFFFFFF8), 0), vnegq_s64(v48)));
          if (v47 >= 0x81)
          {
            v49 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v44[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v48)), vshlq_u64(vdupq_laneq_s64(v44[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v48))), v49);
          }

          v50 = v47 & 0x3F;
          v51 = (v44 + 8 * (v47 >> 6));
          v52 = vaddq_s64(v45, vdupq_n_s64(v50));
          v53 = v42 + v47;
          v54 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v51, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v52)), vshlq_u64(vdupq_lane_s64(v51->i64[0], 0), vnegq_s64(v52)));
          if (v42 + v50 >= 0x81)
          {
            v54 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v51[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v52)), vshlq_u64(vdupq_laneq_s64(v51[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v52))), v54);
          }

          v55 = v53 & 0x3F;
          v56 = (v44 + 8 * (v53 >> 6));
          v57 = vaddq_s64(v45, vdupq_n_s64(v55));
          v58 = v42 + v53;
          v59 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v56, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v57)), vshlq_u64(vdupq_lane_s64(v56->i64[0], 0), vnegq_s64(v57)));
          if (v42 + v55 >= 0x81)
          {
            v59 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v56[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v57)), vshlq_u64(vdupq_laneq_s64(v56[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v57))), v59);
          }

          v60 = vextq_s8(v38, v38, 8uLL).u64[0];
          v61 = v58 & 0x3F;
          v62 = (v44 + 8 * (v58 >> 6));
          v63 = vaddq_s64(v45, vdupq_n_s64(v61));
          v64 = v42 + v58;
          v65 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v62, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v63)), vshlq_u64(vdupq_lane_s64(v62->i64[0], 0), vnegq_s64(v63)));
          if (v42 + v61 >= 0x81)
          {
            v65 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v62[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v63)), vshlq_u64(vdupq_laneq_s64(v62[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v63))), v65);
          }

          v66 = v64 & 0x3F;
          v67 = (v44 + 8 * (v64 >> 6));
          v68 = vaddq_s64(v45, vdupq_n_s64(v66));
          v69 = v42 + v64;
          v70 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v67, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v68)), vshlq_u64(vdupq_lane_s64(v67->i64[0], 0), vnegq_s64(v68)));
          if (v42 + v66 >= 0x81)
          {
            v70 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v67[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v68)), vshlq_u64(vdupq_laneq_s64(v67[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v68))), v70);
          }

          v71 = vzip1_s32(*v38.i8, v60);
          v72 = v69 & 0x3F;
          v73 = (v44 + 8 * (v69 >> 6));
          v74 = vaddq_s64(v45, vdupq_n_s64(v72));
          v75 = v42 + v69;
          v76 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v73, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v74)), vshlq_u64(vdupq_lane_s64(v73->i64[0], 0), vnegq_s64(v74)));
          if (v42 + v72 >= 0x81)
          {
            v76 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v73[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v74)), vshlq_u64(vdupq_laneq_s64(v73[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v74))), v76);
          }

          v77.i64[0] = v71.u32[0];
          v77.i64[1] = v71.u32[1];
          v78 = v77;
          v79 = v75 & 0x3F;
          v80 = (v44 + 8 * (v75 >> 6));
          v81 = vaddq_s64(v45, vdupq_n_s64(v79));
          v82 = v42 + v75;
          v83 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v80, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v81)), vshlq_u64(vdupq_lane_s64(v80->i64[0], 0), vnegq_s64(v81)));
          if (v42 + v79 >= 0x81)
          {
            v83 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v80[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v81)), vshlq_u64(vdupq_laneq_s64(v80[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v81))), v83);
          }

          v84 = vnegq_s64(v78);
          v85 = v82 & 0x3F;
          v86 = (v44 + 8 * (v82 >> 6));
          v87 = vaddq_s64(v45, vdupq_n_s64(v85));
          v88 = v42 + v82;
          v89 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v86, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v87)), vshlq_u64(vdupq_lane_s64(v86->i64[0], 0), vnegq_s64(v87)));
          if (v42 + v85 >= 0x81)
          {
            v89 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v86[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v87)), vshlq_u64(vdupq_laneq_s64(v86[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v87))), v89);
          }

          v90 = vshlq_u64(v49, v84);
          v91 = vshlq_u64(v54, v84);
          v92 = vshlq_u64(v59, v84);
          v93 = vshlq_u64(v65, v84);
          v94 = vshlq_u64(v70, v84);
          v95 = vshlq_u64(v76, v84);
          v96 = vshlq_u64(v83, v84);
          v97 = vshlq_u64(v89, v84);
          v98 = v88 & 0x3F;
          v99 = (v44 + 8 * (v88 >> 6));
          v100 = vaddq_s64(v45, vdupq_n_s64(v98));
          v101 = v42 + v88;
          v102 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v99, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v100)), vshlq_u64(vdupq_lane_s64(v99->i64[0], 0), vnegq_s64(v100)));
          if (v42 + v98 >= 0x81)
          {
            v102 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v99[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v100)), vshlq_u64(vdupq_laneq_s64(v99[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v100))), v102);
          }

          v103 = vzip2q_s64(v49, v90);
          v104 = vzip1q_s64(v49, v90);
          v105 = vzip2q_s64(v54, v91);
          v106 = vzip1q_s64(v54, v91);
          v107 = vzip2q_s64(v59, v92);
          v108 = vzip1q_s64(v59, v92);
          v109 = vzip2q_s64(v65, v93);
          v110 = vzip1q_s64(v65, v93);
          v111 = vzip2q_s64(v70, v94);
          v112 = vzip1q_s64(v70, v94);
          v113 = vzip2q_s64(v76, v95);
          v114 = vzip1q_s64(v76, v95);
          v115 = vzip2q_s64(v83, v96);
          v116 = vzip1q_s64(v83, v96);
          v117 = vzip2q_s64(v89, v97);
          v118 = vzip1q_s64(v89, v97);
          v119 = vshlq_u64(v102, v84);
          v120 = vzip2q_s64(v102, v119);
          v121 = vzip1q_s64(v102, v119);
          v122 = (v44 + 8 * (v101 >> 6));
          v123 = vaddq_s64(v45, vdupq_n_s64(v101 & 0x3F));
          v124 = v42 + v101;
          v125 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v122, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v123)), vshlq_u64(vdupq_lane_s64(v122->i64[0], 0), vnegq_s64(v123)));
          if (v42 + (v101 & 0x3F) >= 0x81)
          {
            v125 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v122[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v123)), vshlq_u64(vdupq_laneq_s64(v122[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v123))), v125);
          }

          v126 = vuzp1q_s32(v104, v103);
          v127 = vuzp1q_s32(v106, v105);
          v128 = vuzp1q_s32(v108, v107);
          v129 = vuzp1q_s32(v110, v109);
          v130 = vuzp1q_s32(v112, v111);
          v131 = vuzp1q_s32(v114, v113);
          v132 = vuzp1q_s32(v116, v115);
          v133 = vuzp1q_s32(v118, v117);
          v134 = vuzp1q_s32(v121, v120);
          v135 = vshlq_u64(v125, v84);
          v136 = vuzp1q_s32(vzip1q_s64(v125, v135), vzip2q_s64(v125, v135));
          v137 = v42 + v124;
          v138 = v124 & 0x3F;
          v139 = vaddq_s64(v45, vdupq_n_s64(v138));
          v140 = (v44 + 8 * (v124 >> 6));
          v141 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v140, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v139)), vshlq_u64(vdupq_lane_s64(v140->i64[0], 0), vnegq_s64(v139)));
          if (v42 + v138 >= 0x81)
          {
            v141 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v140[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v139)), vshlq_u64(vdupq_laneq_s64(v140[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v139))), v141);
          }

          v142.i64[0] = 0x1000100010001;
          v142.i64[1] = 0x1000100010001;
          v143 = vshrq_n_u32(v126, 0xAuLL);
          v144 = vshrq_n_u32(v127, 0xAuLL);
          v145 = vshrq_n_u32(v128, 0xAuLL);
          v146 = vshrq_n_u32(v129, 0xAuLL);
          v147 = vshrq_n_u32(v130, 0xAuLL);
          v148 = vshrq_n_u32(v131, 0xAuLL);
          v149 = vshrq_n_u32(v132, 0xAuLL);
          v150 = vshrq_n_u32(v133, 0xAuLL);
          v151 = vshrq_n_u32(v134, 0xAuLL);
          v152 = vshrq_n_u32(v136, 0xAuLL);
          v153 = vshlq_u64(v141, v84);
          v154 = vuzp1q_s32(vzip1q_s64(v141, v153), vzip2q_s64(v141, v153));
          v155 = vshrq_n_u32(v154, 0xAuLL);
          v156 = v137 & 0x3F;
          v157 = (v44 + 8 * (v137 >> 6));
          v158 = vaddq_s64(v45, vdupq_n_s64(v156));
          v159 = v42 + v137;
          v160 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v157, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v158)), vshlq_u64(vdupq_lane_s64(v157->i64[0], 0), vnegq_s64(v158)));
          if (v42 + v156 >= 0x81)
          {
            v160 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v157[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v158)), vshlq_u64(vdupq_laneq_s64(v157[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v158))), v160);
          }

          v161 = vshlq_n_s16(v142, 0xAuLL);
          v162.i64[0] = -1;
          v162.i64[1] = -1;
          v163 = vzip2q_s32(v126, v143);
          v164 = vzip1q_s32(v126, v143);
          v165 = vzip2q_s32(v127, v144);
          v166 = vzip1q_s32(v127, v144);
          v167 = vzip2q_s32(v128, v145);
          v168 = vzip1q_s32(v128, v145);
          v169 = vzip2q_s32(v129, v146);
          v170 = vzip1q_s32(v129, v146);
          v171 = vzip2q_s32(v130, v147);
          v172 = vzip1q_s32(v130, v147);
          v173 = vzip2q_s32(v131, v148);
          v174 = vzip1q_s32(v131, v148);
          v175 = vzip2q_s32(v132, v149);
          v176 = vzip1q_s32(v132, v149);
          v177 = vzip2q_s32(v133, v150);
          v178 = vzip1q_s32(v133, v150);
          v179 = vzip2q_s32(v134, v151);
          v180 = vzip1q_s32(v134, v151);
          v181 = vzip2q_s32(v136, v152);
          v182 = vzip1q_s32(v136, v152);
          v183 = vzip2q_s32(v154, v155);
          v184 = vzip1q_s32(v154, v155);
          v185 = vshlq_u64(v160, v84);
          v186 = vuzp1q_s32(vzip1q_s64(v160, v185), vzip2q_s64(v160, v185));
          v187 = vshrq_n_u32(v186, 0xAuLL);
          v188 = vzip2q_s32(v186, v187);
          v189 = vzip1q_s32(v186, v187);
          v190 = (v44 + 8 * (v159 >> 6));
          v191 = vaddq_s64(v45, vdupq_n_s64(v159 & 0x3F));
          v192 = v42 + v159;
          v193 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v190, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v191)), vshlq_u64(vdupq_lane_s64(v190->i64[0], 0), vnegq_s64(v191)));
          if (v42 + (v159 & 0x3F) >= 0x81)
          {
            v162.i64[0] = -1;
            v162.i64[1] = -1;
            v193 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v190[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v191)), vshlq_u64(vdupq_laneq_s64(v190[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v191))), v193);
          }

          v194 = vaddq_s16(v161, v162);
          v195 = vuzp1q_s16(v164, v163);
          v196 = vuzp1q_s16(v166, v165);
          v197 = vuzp1q_s16(v168, v167);
          v198 = vuzp1q_s16(v170, v169);
          v199 = vuzp1q_s16(v172, v171);
          v200 = vuzp1q_s16(v174, v173);
          v201 = vuzp1q_s16(v176, v175);
          v202 = vuzp1q_s16(v178, v177);
          v203 = vuzp1q_s16(v180, v179);
          v204 = vuzp1q_s16(v182, v181);
          v205 = vuzp1q_s16(v184, v183);
          v206 = vuzp1q_s16(v189, v188);
          v207 = vshlq_u64(v193, v84);
          v208 = vuzp1q_s32(vzip1q_s64(v193, v207), vzip2q_s64(v193, v207));
          v209 = vshrq_n_u32(v208, 0xAuLL);
          v210 = vzip2q_s32(v208, v209);
          v211 = vzip1q_s32(v208, v209);
          v212 = v42 + v192;
          v213 = v192 & 0x3F;
          v214 = vaddq_s64(v45, vdupq_n_s64(v213));
          v215 = (v44 + 8 * (v192 >> 6));
          v216 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v215, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v214)), vshlq_u64(vdupq_lane_s64(v215->i64[0], 0), vnegq_s64(v214)));
          if (v42 + v213 >= 0x81)
          {
            v216 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v215[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v214)), vshlq_u64(vdupq_laneq_s64(v215[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v214))), v216);
          }

          v217 = vandq_s8(v194, v195);
          v218 = vandq_s8(v194, v196);
          v219 = vandq_s8(v194, v197);
          v220 = vandq_s8(v194, v198);
          v221 = vandq_s8(v194, v199);
          v222 = vandq_s8(v194, v200);
          v223 = vandq_s8(v194, v201);
          v224 = vandq_s8(v194, v202);
          v225 = vandq_s8(v194, v203);
          v226 = vandq_s8(v194, v204);
          v227 = vandq_s8(v194, v205);
          v228 = vandq_s8(v194, v206);
          v229 = vuzp1q_s16(v211, v210);
          v230 = vshlq_u64(v216, v84);
          v231 = vuzp1q_s32(vzip1q_s64(v216, v230), vzip2q_s64(v216, v230));
          v232 = vshrq_n_u32(v231, 0xAuLL);
          v233 = vuzp1q_s16(vzip1q_s32(v231, v232), vzip2q_s32(v231, v232));
          v234 = v212 & 0x3F;
          v235 = (v44 + 8 * (v212 >> 6));
          v236 = vaddq_s64(v45, vdupq_n_s64(v234));
          v237 = v42 + v212;
          v238 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v235, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v236)), vshlq_u64(vdupq_lane_s64(v235->i64[0], 0), vnegq_s64(v236)));
          if (v42 + v234 >= 0x81)
          {
            v238 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v235[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v236)), vshlq_u64(vdupq_laneq_s64(v235[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v236))), v238);
          }

          v239 = vshlq_n_s16(v217, 6uLL);
          v240 = vshlq_n_s16(v218, 6uLL);
          v241 = vshlq_n_s16(v219, 6uLL);
          v242 = vshlq_n_s16(v220, 6uLL);
          v243 = vshlq_n_s16(v221, 6uLL);
          v244 = vshlq_n_s16(v222, 6uLL);
          v245 = vshlq_n_s16(v223, 6uLL);
          v246 = vshlq_n_s16(v224, 6uLL);
          v43 = vshlq_n_s16(v225, 6uLL);
          v247 = vshlq_n_s16(v226, 6uLL);
          v248 = vshlq_n_s16(v227, 6uLL);
          v249 = vshlq_n_s16(v228, 6uLL);
          v250 = vandq_s8(v194, v229);
          v251 = vandq_s8(v194, v233);
          v252 = vshlq_u64(v238, v84);
          v253 = vuzp1q_s32(vzip1q_s64(v238, v252), vzip2q_s64(v238, v252));
          v254 = vshrq_n_u32(v253, 0xAuLL);
          v255 = vuzp1q_s16(vzip1q_s32(v253, v254), vzip2q_s32(v253, v254));
          v256 = (v44 + 8 * (v237 >> 6));
          v257 = vaddq_s64(v45, vdupq_n_s64(v237 & 0x3F));
          v258 = vandq_s8(v194, v255);
          v259 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v256, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v257)), vshlq_u64(vdupq_lane_s64(v256->i64[0], 0), vnegq_s64(v257)));
          if (v42 + (v237 & 0x3F) >= 0x81)
          {
            v259 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v256[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v257)), vshlq_u64(vdupq_laneq_s64(v256[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v257))), v259);
          }

          v260 = vshlq_u64(v259, v84);
          v261 = vuzp1q_s32(vzip1q_s64(v259, v260), vzip2q_s64(v259, v260));
          v262 = vshrq_n_u32(v261, 0xAuLL);
          v263 = vandq_s8(v194, vuzp1q_s16(vzip1q_s32(v261, v262), vzip2q_s32(v261, v262)));
          v264 = vshlq_n_s16(v250, 6uLL);
          v265 = vshlq_n_s16(v251, 6uLL);
          v266 = vshlq_n_s16(v258, 6uLL);
          v267 = vshlq_n_s16(v263, 6uLL);
        }

        *a1 = v239;
        a1[1] = v240;
        a1[2] = v241;
        a1[3] = v242;
        v291 = (a1 + a2);
        a1[4] = v243;
        a1[5] = v244;
        a1[6] = v245;
        a1[7] = v246;
        *v291 = v43;
        v291[1] = v247;
        v291[2] = v248;
        v291[3] = v249;
        v292 = (a1 + a2 + 64);
        result = 160;
        *v292 = v264;
        v292[1] = v265;
        v292[2] = v266;
        v292[3] = v267;
      }

      else if (a4 == 4)
      {
        v11 = vld1q_dup_f64(a3);
        v12 = vorrq_s8(vandq_s8(vshlq_u64(v11, xmmword_29D2F1400), xmmword_29D2F1430), vandq_s8(vshlq_u64(v11, xmmword_29D2F1410), xmmword_29D2F1420));
        v13 = vdupq_n_s64(*&vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)));
        *a1 = v13;
        a1[1] = v13;
        a1[2] = v13;
        a1[3] = v13;
        a1[4] = v13;
        a1[5] = v13;
        a1[6] = v13;
        a1[7] = v13;
        v14 = &a1->i8[a2];
        *v14 = v13;
        v14[1] = v13;
        v14[2] = v13;
        v14[3] = v13;
        v14[4] = v13;
        v14[5] = v13;
        v14[6] = v13;
        v14[7] = v13;
        return 5;
      }

      else
      {
        v628.i8[8] = 0;
        v628.i64[0] = (8 * (a3 & 7)) | 0x400;
        v627.i64[0] = 8 * (a3 & 7);
        v627.i64[1] = a3 & 0xFFFFFFFFFFFFFFF8;
        result = AGX::AppleCompressionGen2::readHeader<(AGX::AppleCompressionGen2::PixelFormat)19,AGX::AppleCompressionGen2::Vec<short>>(&v652, v657, &v651, &v627, a4);
        v270.i64[0] = 0x3000300030003;
        v270.i64[1] = 0x3000300030003;
        v271 = v652;
        v272 = vandq_s8(v652, v270);
        v273 = vbicq_s8(v657[0], vceqq_s16(v272, v270));
        v657[0] = v273;
        v653 = v273;
        v654 = v273;
        v655 = v273;
        v656 = v273;
        v274.i64[0] = 0x202020202020202;
        v274.i64[1] = 0x202020202020202;
        v275 = vandq_s8(vmovl_s16(vtst_s16(*v652.i8, 0x4000400040004)), v274);
        v276 = v627.i64[0];
        if (vmaxvq_s8(v275) < 1)
        {
          v293.i64[0] = -1;
          v293.i64[1] = -1;
          v294.i64[0] = -1;
          v294.i64[1] = -1;
          v295.i64[0] = -1;
          v295.i64[1] = -1;
          v296.i64[0] = -1;
          v296.i64[1] = -1;
          v287 = a2;
        }

        else
        {
          v277 = vmovl_u8(*&vpaddq_s8(v275, v275));
          v278 = vmovl_u16(*&vpaddq_s16(v277, v277));
          v279 = vpaddq_s32(v278, v278).u64[0];
          v280.i64[0] = v279;
          v280.i64[1] = HIDWORD(v279);
          v281 = v280;
          v282 = vaddvq_s64(v280);
          v283 = v282;
          v284 = v627.i64[0] + v282;
          if (v628.i64[0])
          {
            v285 = v628.i64[0] >= v284;
          }

          else
          {
            v285 = 1;
          }

          v286 = v285;
          v287 = a2;
          if (v282 <= 0x80 && (v286 & 1) != 0)
          {
            v269.i64[0] = 63;
            v288 = (v627.i64[1] + 8 * (v627.i64[0] >> 6));
            v289 = vaddq_s64(vdupq_lane_s64(vandq_s8(v627.u64[0], v269).i64[0], 0), vzip1q_s64(0, v281));
            v290 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v288, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v289)), vshlq_u64(vdupq_lane_s64(v288->i64[0], 0), vnegq_s64(v289)));
            if ((v627.i8[0] & 0x3F) + v283 >= 0x81)
            {
              v290 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v288[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v289)), vshlq_u64(vdupq_laneq_s64(v288[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v289))), v290);
            }

            v276 = v284;
          }

          else
          {
            v628.i8[8] = 1;
            v290 = 0uLL;
          }

          v297 = vzip1_s32(*v278.i8, *&vextq_s8(v278, v278, 8uLL));
          v298.i64[0] = v297.u32[0];
          v298.i64[1] = v297.u32[1];
          v299 = vshlq_u64(v290, vnegq_s64(v298));
          v300 = vuzp1q_s32(vzip1q_s64(v290, v299), vzip2q_s64(v290, v299));
          v301 = vshlq_u32(v300, vnegq_s32((*&v277 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
          v302 = vuzp1q_s16(vzip1q_s32(v300, v301), vzip2q_s32(v300, v301));
          v303 = vshlq_u16(v302, vnegq_s16((*&v275 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
          v304 = vuzp1q_s8(vzip1q_s16(v302, v303), vzip2q_s16(v302, v303));
          v303.i64[0] = 0x101010101010101;
          v303.i64[1] = 0x101010101010101;
          v305 = vshlq_s8(v303, v275);
          v303.i64[0] = -1;
          v303.i64[1] = -1;
          v306 = vqtbl1q_s8(vandq_s8(vaddq_s8(v305, v303), v304), xmmword_29D2F0F70);
          *v304.i8 = vdup_lane_s32(*v306.i8, 0);
          *v303.i8 = vdup_lane_s32(*v306.i8, 1);
          v307 = vdupq_laneq_s32(v306, 2).u64[0];
          v306.i64[0] = vdupq_laneq_s32(v306, 3).u64[0];
          v653 = vsubw_s8(v653, *v304.i8);
          v654 = vsubw_s8(v654, *v303.i8);
          v655 = vsubw_s8(v655, v307);
          v656 = vsubw_s8(v656, *v306.i8);
          v296 = vmovl_s8(vceqz_s8(*v304.i8));
          v295 = vmovl_s8(vceqz_s8(*v303.i8));
          v294 = vmovl_s8(vceqz_s8(v307));
          v293 = vmovl_s8(vceqz_s8(*v306.i8));
        }

        v308.i64[0] = 0x8000800080008;
        v308.i64[1] = 0x8000800080008;
        v309 = 0uLL;
        v310 = vandq_s8(vextq_s8(vtstq_s16(v652, v308), 0, 8uLL), v273);
        v311 = vmovl_u16(*&vpaddq_s16(v310, v310));
        v312 = vpaddq_s32(v311, v311).u64[0];
        v313.i64[0] = v312;
        v313.i64[1] = HIDWORD(v312);
        v314 = v313;
        v315 = vaddvq_s64(v313);
        if (v628.i64[0])
        {
          v316 = v628.i64[0] >= v276 + v315;
        }

        else
        {
          v316 = 1;
        }

        v317 = v316;
        if (v315 <= 0x80 && (v317 & 1) != 0)
        {
          v318 = vaddq_s64(vdupq_n_s64(v276 & 0x3F), vzip1q_s64(0, v314));
          v319 = (v627.i64[1] + 8 * (v276 >> 6));
          v309 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v319, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v318)), vshlq_u64(vdupq_lane_s64(v319->i64[0], 0), vnegq_s64(v318)));
          if ((v276 & 0x3F) + v315 >= 0x81)
          {
            v309 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v319[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v318)), vshlq_u64(vdupq_laneq_s64(v319[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v318))), v309);
          }

          v276 += v315;
        }

        else
        {
          v628.i8[8] = 1;
        }

        v320 = vzip1_s32(*v311.i8, *&vextq_s8(v311, v311, 8uLL));
        v321.i64[0] = v320.u32[0];
        v321.i64[1] = v320.u32[1];
        v322 = vshlq_u64(v309, vnegq_s64(v321));
        v323 = vuzp1q_s32(vzip1q_s64(v309, v322), vzip2q_s64(v309, v322));
        v324.i64[0] = 0xFFFF0000FFFFLL;
        v324.i64[1] = 0xFFFF0000FFFFLL;
        v325 = vshlq_u32(v323, vnegq_s32(vandq_s8(v310, v324)));
        v326 = vuzp1q_s16(vzip1q_s32(v323, v325), vzip2q_s32(v323, v325));
        v325.i64[0] = 0xF000F000F000FLL;
        v325.i64[1] = 0xF000F000F000FLL;
        v327.i64[0] = 0x10001000100010;
        v327.i64[1] = 0x10001000100010;
        v328 = vshlq_s16(vshlq_s16(v326, vsubq_s16(v327, v310)), vaddq_s16(v310, v325));
        v657[3] = v328;
        v329 = v652.i8[0] & 3;
        if (v329 == 2)
        {
          if (v628.i64[0])
          {
            v330 = v276 + 8;
            v331 = v276 + 16;
            if (v628.i64[0] >= v276 + 8)
            {
              v276 += 8;
            }

            else
            {
              v331 = v276 + 8;
            }

            if (v628.i64[0] >= v331)
            {
              v276 = v331;
            }

            if (v628.i64[0] < v330 || v628.i64[0] < v331)
            {
              v628.i8[8] = 1;
            }
          }

          else
          {
            v276 += 16;
          }
        }

        v332 = 0uLL;
        v333 = vextq_s8(0, v653, 8uLL);
        v334 = vmovl_u16(*&vpaddq_s16(v333, v333));
        v335 = vpaddq_s32(v334, v334).u64[0];
        v336.i64[0] = v335;
        v336.i64[1] = HIDWORD(v335);
        v337 = v336;
        v338 = vaddvq_s64(v336);
        v339 = v276 + v338;
        if (v628.i64[0])
        {
          v340 = v628.i64[0] >= v339;
        }

        else
        {
          v340 = 1;
        }

        v341 = v340;
        if (v338 <= 0x80 && (v341 & 1) != 0)
        {
          v342 = v276 & 0x3F;
          v343 = vaddq_s64(vdupq_n_s64(v342), vzip1q_s64(0, v337));
          v344 = v627.i64[1];
          v345 = (v627.i64[1] + 8 * (v276 >> 6));
          v332 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v345, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v343)), vshlq_u64(vdupq_lane_s64(v345->i64[0], 0), vnegq_s64(v343)));
          if (v342 + v338 >= 0x81)
          {
            v332 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v345[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v343)), vshlq_u64(vdupq_laneq_s64(v345[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v343))), v332);
          }

          v346 = v628.i8[8];
          v276 = v339;
        }

        else
        {
          v346 = 1;
          v344 = v627.i64[1];
        }

        v347 = vzip1_s32(*v334.i8, *&vextq_s8(v334, v334, 8uLL));
        v348.i64[0] = v347.u32[0];
        v348.i64[1] = v347.u32[1];
        v349 = vshlq_u64(v332, vnegq_s64(v348));
        v350 = vuzp1q_s32(vzip1q_s64(v332, v349), vzip2q_s64(v332, v349));
        v351.i64[0] = 0xFFFF0000FFFFLL;
        v351.i64[1] = 0xFFFF0000FFFFLL;
        v352 = vshlq_u32(v350, vnegq_s32(vandq_s8(v333, v351)));
        v353.i64[0] = 0xF000F000F000FLL;
        v353.i64[1] = 0xF000F000F000FLL;
        v354.i64[0] = 0x10001000100010;
        v354.i64[1] = 0x10001000100010;
        v355 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v350, v352), vzip2q_s32(v350, v352)), vsubq_s16(v354, v333)), vaddq_s16(v333, v353));
        v635 = v355;
        v356 = vmovl_u16(*&vpaddq_s16(v653, v653));
        v350.i64[0] = vpaddq_s32(v356, v356).u64[0];
        v348.i64[0] = v350.u32[0];
        v348.i64[1] = v350.u32[1];
        v357 = v348;
        v358 = vaddvq_s64(v348);
        v359 = v276 + v358;
        if (v628.i64[0])
        {
          v360 = v628.i64[0] >= v359;
        }

        else
        {
          v360 = 1;
        }

        v361 = v360;
        v362 = 0uLL;
        if (v358 <= 0x80 && v361)
        {
          v363 = v276 & 0x3F;
          v364 = vaddq_s64(vdupq_n_s64(v363), vzip1q_s64(0, v357));
          v365 = (v344 + 8 * (v276 >> 6));
          v366 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v365, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v364)), vshlq_u64(vdupq_lane_s64(v365->i64[0], 0), vnegq_s64(v364)));
          if (v363 + v358 >= 0x81)
          {
            v366 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v365[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v364)), vshlq_u64(vdupq_laneq_s64(v365[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v364))), v366);
          }
        }

        else
        {
          v346 = 1;
          v359 = v276;
          v366 = 0uLL;
        }

        v367 = vzip1_s32(*v356.i8, *&vextq_s8(v356, v356, 8uLL));
        v368.i64[0] = v367.u32[0];
        v368.i64[1] = v367.u32[1];
        v369 = vnegq_s64(v368);
        v370 = vshlq_u64(v366, v369);
        v371 = vuzp1q_s32(vzip1q_s64(v366, v370), vzip2q_s64(v366, v370));
        v372 = vnegq_s32(vandq_s8(v653, v351));
        v373 = vshlq_u32(v371, v372);
        v374 = vuzp1q_s16(vzip1q_s32(v371, v373), vzip2q_s32(v371, v373));
        v375 = vaddq_s16(v653, v353);
        v376 = vsubq_s16(v354, v653);
        v377 = vshlq_s16(vshlq_s16(v374, v376), v375);
        v636 = v377;
        v378 = v359 + v358;
        if (v628.i64[0])
        {
          v379 = v628.i64[0] >= v378;
        }

        else
        {
          v379 = 1;
        }

        v380 = v379;
        if (v358 <= 0x80 && v380)
        {
          v381 = v359 & 0x3F;
          v382 = vaddq_s64(vdupq_n_s64(v381), vzip1q_s64(0, v357));
          v383 = (v344 + 8 * (v359 >> 6));
          v362 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v383, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v382)), vshlq_u64(vdupq_lane_s64(v383->i64[0], 0), vnegq_s64(v382)));
          if (v381 + v358 >= 0x81)
          {
            v362 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v383[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v382)), vshlq_u64(vdupq_laneq_s64(v383[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v382))), v362);
          }
        }

        else
        {
          v346 = 1;
          v378 = v359;
        }

        v384 = vshlq_u64(v362, v369);
        v385 = vuzp1q_s32(vzip1q_s64(v362, v384), vzip2q_s64(v362, v384));
        v386 = vshlq_u32(v385, v372);
        v387 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v385, v386), vzip2q_s32(v385, v386)), v376), v375);
        v637 = v387;
        v388 = v378 + v358;
        if (v628.i64[0])
        {
          v389 = v628.i64[0] >= v388;
        }

        else
        {
          v389 = 1;
        }

        v390 = v389;
        v391 = 0uLL;
        if (v358 <= 0x80 && v390)
        {
          v392 = v378 & 0x3F;
          v393 = vaddq_s64(vdupq_n_s64(v392), vzip1q_s64(0, v357));
          v394 = (v344 + 8 * (v378 >> 6));
          v395 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v394, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v393)), vshlq_u64(vdupq_lane_s64(v394->i64[0], 0), vnegq_s64(v393)));
          if (v392 + v358 >= 0x81)
          {
            v395 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v394[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v393)), vshlq_u64(vdupq_laneq_s64(v394[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v393))), v395);
          }
        }

        else
        {
          v346 = 1;
          v388 = v378;
          v395 = 0uLL;
        }

        v396 = vshlq_u64(v395, v369);
        v397 = vuzp1q_s32(vzip1q_s64(v395, v396), vzip2q_s64(v395, v396));
        v398 = vshlq_u32(v397, v372);
        v399 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v397, v398), vzip2q_s32(v397, v398)), v376), v375);
        v638 = v399;
        v400 = vmovl_u16(*&vpaddq_s16(v654, v654));
        v401 = vpaddq_s32(v400, v400).u64[0];
        v402.i64[0] = v401;
        v402.i64[1] = HIDWORD(v401);
        v403 = v402;
        v404 = vaddvq_s64(v402);
        v405 = v404;
        v406 = v388 + v404;
        if (v628.i64[0])
        {
          v407 = v628.i64[0] >= v406;
        }

        else
        {
          v407 = 1;
        }

        v408 = v407;
        if (v404 <= 0x80 && v408)
        {
          v409 = v388 & 0x3F;
          v410 = vaddq_s64(vdupq_n_s64(v409), vzip1q_s64(0, v403));
          v411 = (v344 + 8 * (v388 >> 6));
          v391 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v411, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v410)), vshlq_u64(vdupq_lane_s64(v411->i64[0], 0), vnegq_s64(v410)));
          if (v409 + v405 >= 0x81)
          {
            v391 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v411[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v410)), vshlq_u64(vdupq_laneq_s64(v411[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v410))), v391);
          }
        }

        else
        {
          v346 = 1;
          v406 = v388;
        }

        v412 = vzip1_s32(*v400.i8, *&vextq_s8(v400, v400, 8uLL));
        v413.i64[0] = v412.u32[0];
        v413.i64[1] = v412.u32[1];
        v414 = vnegq_s64(v413);
        v415 = vshlq_u64(v391, v414);
        v416 = vuzp1q_s32(vzip1q_s64(v391, v415), vzip2q_s64(v391, v415));
        v417.i64[0] = 0xFFFF0000FFFFLL;
        v417.i64[1] = 0xFFFF0000FFFFLL;
        v418 = vnegq_s32(vandq_s8(v654, v417));
        v419 = vshlq_u32(v416, v418);
        v420 = vuzp1q_s16(vzip1q_s32(v416, v419), vzip2q_s32(v416, v419));
        v419.i64[0] = 0xF000F000F000FLL;
        v419.i64[1] = 0xF000F000F000FLL;
        v421 = vaddq_s16(v654, v419);
        v419.i64[0] = 0x10001000100010;
        v419.i64[1] = 0x10001000100010;
        v422 = vsubq_s16(v419, v654);
        v423 = vshlq_s16(vshlq_s16(v420, v422), v421);
        v639 = v423;
        v424 = v406 + v405;
        if (v628.i64[0])
        {
          v425 = v628.i64[0] >= v424;
        }

        else
        {
          v425 = 1;
        }

        v426 = v425;
        v427 = 0uLL;
        if (v405 <= 0x80 && v426)
        {
          v428 = v406 & 0x3F;
          v429 = vaddq_s64(vdupq_n_s64(v428), vzip1q_s64(0, v403));
          v430 = (v344 + 8 * (v406 >> 6));
          v431 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v430, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v429)), vshlq_u64(vdupq_lane_s64(v430->i64[0], 0), vnegq_s64(v429)));
          if (v428 + v405 >= 0x81)
          {
            v431 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v430[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v429)), vshlq_u64(vdupq_laneq_s64(v430[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v429))), v431);
          }
        }

        else
        {
          v346 = 1;
          v424 = v406;
          v431 = 0uLL;
        }

        v432 = vshlq_u64(v431, v414);
        v433 = vuzp1q_s32(vzip1q_s64(v431, v432), vzip2q_s64(v431, v432));
        v434 = vshlq_u32(v433, v418);
        v435 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v433, v434), vzip2q_s32(v433, v434)), v422), v421);
        v640 = v435;
        v436 = v424 + v405;
        if (v628.i64[0])
        {
          v437 = v628.i64[0] >= v436;
        }

        else
        {
          v437 = 1;
        }

        v438 = v437;
        if (v405 <= 0x80 && v438)
        {
          v439 = v424 & 0x3F;
          v440 = vaddq_s64(vdupq_n_s64(v439), vzip1q_s64(0, v403));
          v441 = (v344 + 8 * (v424 >> 6));
          v427 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v441, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v440)), vshlq_u64(vdupq_lane_s64(v441->i64[0], 0), vnegq_s64(v440)));
          if (v439 + v405 >= 0x81)
          {
            v427 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v441[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v440)), vshlq_u64(vdupq_laneq_s64(v441[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v440))), v427);
          }
        }

        else
        {
          v346 = 1;
          v436 = v424;
        }

        v442 = vshlq_u64(v427, v414);
        v443 = vuzp1q_s32(vzip1q_s64(v427, v442), vzip2q_s64(v427, v442));
        v444 = vshlq_u32(v443, v418);
        v445 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v443, v444), vzip2q_s32(v443, v444)), v422), v421);
        v641 = v445;
        v446 = v436 + v405;
        if (v628.i64[0])
        {
          v447 = v628.i64[0] >= v446;
        }

        else
        {
          v447 = 1;
        }

        v448 = v447;
        v449 = 0uLL;
        if (v405 <= 0x80 && v448)
        {
          v450 = v436 & 0x3F;
          v451 = vaddq_s64(vdupq_n_s64(v450), vzip1q_s64(0, v403));
          v452 = (v344 + 8 * (v436 >> 6));
          v453 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v452, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v451)), vshlq_u64(vdupq_lane_s64(v452->i64[0], 0), vnegq_s64(v451)));
          if (v450 + v405 >= 0x81)
          {
            v453 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v452[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v451)), vshlq_u64(vdupq_laneq_s64(v452[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v451))), v453);
          }
        }

        else
        {
          v346 = 1;
          v446 = v436;
          v453 = 0uLL;
        }

        v454 = vshlq_u64(v453, v414);
        v455 = vuzp1q_s32(vzip1q_s64(v453, v454), vzip2q_s64(v453, v454));
        v456 = vshlq_u32(v455, v418);
        v457 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v455, v456), vzip2q_s32(v455, v456)), v422), v421);
        v642 = v457;
        v458 = vmovl_u16(*&vpaddq_s16(v655, v655));
        v459 = vpaddq_s32(v458, v458).u64[0];
        v460.i64[0] = v459;
        v460.i64[1] = HIDWORD(v459);
        v461 = v460;
        v462 = vaddvq_s64(v460);
        v463 = v462;
        v464 = v446 + v462;
        if (v628.i64[0])
        {
          v465 = v628.i64[0] >= v464;
        }

        else
        {
          v465 = 1;
        }

        v466 = v465;
        if (v462 <= 0x80 && v466)
        {
          v467 = v446 & 0x3F;
          v468 = vaddq_s64(vdupq_n_s64(v467), vzip1q_s64(0, v461));
          v469 = (v344 + 8 * (v446 >> 6));
          v449 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v469, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v468)), vshlq_u64(vdupq_lane_s64(v469->i64[0], 0), vnegq_s64(v468)));
          if (v467 + v463 >= 0x81)
          {
            v449 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v469[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v468)), vshlq_u64(vdupq_laneq_s64(v469[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v468))), v449);
          }
        }

        else
        {
          v346 = 1;
          v464 = v446;
        }

        v470 = vzip1_s32(*v458.i8, *&vextq_s8(v458, v458, 8uLL));
        v471.i64[0] = v470.u32[0];
        v471.i64[1] = v470.u32[1];
        v472 = vnegq_s64(v471);
        v473 = vshlq_u64(v449, v472);
        v474 = vuzp1q_s32(vzip1q_s64(v449, v473), vzip2q_s64(v449, v473));
        v475.i64[0] = 0xFFFF0000FFFFLL;
        v475.i64[1] = 0xFFFF0000FFFFLL;
        v476 = vnegq_s32(vandq_s8(v655, v475));
        v477 = vshlq_u32(v474, v476);
        v478 = vuzp1q_s16(vzip1q_s32(v474, v477), vzip2q_s32(v474, v477));
        v477.i64[0] = 0xF000F000F000FLL;
        v477.i64[1] = 0xF000F000F000FLL;
        v479 = vaddq_s16(v655, v477);
        v477.i64[0] = 0x10001000100010;
        v477.i64[1] = 0x10001000100010;
        v480 = vsubq_s16(v477, v655);
        v481 = vshlq_s16(vshlq_s16(v478, v480), v479);
        v643 = v481;
        v482 = v464 + v463;
        if (v628.i64[0])
        {
          v483 = v628.i64[0] >= v482;
        }

        else
        {
          v483 = 1;
        }

        v484 = v483;
        v485 = 0uLL;
        if (v463 <= 0x80 && v484)
        {
          v486 = v464 & 0x3F;
          v487 = vaddq_s64(vdupq_n_s64(v486), vzip1q_s64(0, v461));
          v488 = (v344 + 8 * (v464 >> 6));
          v489 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v488, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v487)), vshlq_u64(vdupq_lane_s64(v488->i64[0], 0), vnegq_s64(v487)));
          if (v486 + v463 >= 0x81)
          {
            v489 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v488[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v487)), vshlq_u64(vdupq_laneq_s64(v488[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v487))), v489);
          }
        }

        else
        {
          v346 = 1;
          v482 = v464;
          v489 = 0uLL;
        }

        v490 = vshlq_u64(v489, v472);
        v491 = vuzp1q_s32(vzip1q_s64(v489, v490), vzip2q_s64(v489, v490));
        v492 = vshlq_u32(v491, v476);
        v493 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v491, v492), vzip2q_s32(v491, v492)), v480), v479);
        v644 = v493;
        v494 = v482 + v463;
        if (v628.i64[0])
        {
          v495 = v628.i64[0] >= v494;
        }

        else
        {
          v495 = 1;
        }

        v496 = v495;
        if (v463 <= 0x80 && v496)
        {
          v497 = v482 & 0x3F;
          v498 = vaddq_s64(vdupq_n_s64(v497), vzip1q_s64(0, v461));
          v499 = (v344 + 8 * (v482 >> 6));
          v485 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v499, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v498)), vshlq_u64(vdupq_lane_s64(v499->i64[0], 0), vnegq_s64(v498)));
          if (v497 + v463 >= 0x81)
          {
            v485 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v499[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v498)), vshlq_u64(vdupq_laneq_s64(v499[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v498))), v485);
          }
        }

        else
        {
          v346 = 1;
          v494 = v482;
        }

        v500 = vshlq_u64(v485, v472);
        v501 = vuzp1q_s32(vzip1q_s64(v485, v500), vzip2q_s64(v485, v500));
        v502 = vshlq_u32(v501, v476);
        v503 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v501, v502), vzip2q_s32(v501, v502)), v480), v479);
        v645 = v503;
        v504 = v494 + v463;
        if (v628.i64[0])
        {
          v505 = v628.i64[0] >= v504;
        }

        else
        {
          v505 = 1;
        }

        v506 = v505;
        v507 = 0uLL;
        if (v463 <= 0x80 && v506)
        {
          v508 = v494 & 0x3F;
          v509 = vaddq_s64(vdupq_n_s64(v508), vzip1q_s64(0, v461));
          v510 = (v344 + 8 * (v494 >> 6));
          v511 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v510, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v509)), vshlq_u64(vdupq_lane_s64(v510->i64[0], 0), vnegq_s64(v509)));
          if (v508 + v463 >= 0x81)
          {
            v511 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v510[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v509)), vshlq_u64(vdupq_laneq_s64(v510[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v509))), v511);
          }
        }

        else
        {
          v346 = 1;
          v504 = v494;
          v511 = 0uLL;
        }

        v512 = vshlq_u64(v511, v472);
        v513 = vuzp1q_s32(vzip1q_s64(v511, v512), vzip2q_s64(v511, v512));
        v514 = vshlq_u32(v513, v476);
        v515 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v513, v514), vzip2q_s32(v513, v514)), v480), v479);
        v646 = v515;
        v516 = vmovl_u16(*&vpaddq_s16(v656, v656));
        v517 = vpaddq_s32(v516, v516).u64[0];
        v518.i64[0] = v517;
        v518.i64[1] = HIDWORD(v517);
        v519 = v518;
        v520 = vaddvq_s64(v518);
        v521 = v520;
        v522 = v504 + v520;
        if (v628.i64[0])
        {
          v523 = v628.i64[0] >= v522;
        }

        else
        {
          v523 = 1;
        }

        v524 = v523;
        if (v520 <= 0x80 && v524)
        {
          v525 = v504 & 0x3F;
          v526 = vaddq_s64(vdupq_n_s64(v525), vzip1q_s64(0, v519));
          v527 = (v344 + 8 * (v504 >> 6));
          v507 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v527, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v526)), vshlq_u64(vdupq_lane_s64(v527->i64[0], 0), vnegq_s64(v526)));
          if (v525 + v521 >= 0x81)
          {
            v507 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v527[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v526)), vshlq_u64(vdupq_laneq_s64(v527[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v526))), v507);
          }
        }

        else
        {
          v346 = 1;
          v522 = v504;
        }

        v528 = vzip1_s32(*v516.i8, *&vextq_s8(v516, v516, 8uLL));
        v529.i64[0] = v528.u32[0];
        v529.i64[1] = v528.u32[1];
        v530 = vnegq_s64(v529);
        v531 = vshlq_u64(v507, v530);
        v532 = vuzp1q_s32(vzip1q_s64(v507, v531), vzip2q_s64(v507, v531));
        v531.i64[0] = 0xFFFF0000FFFFLL;
        v531.i64[1] = 0xFFFF0000FFFFLL;
        v533 = vnegq_s32(vandq_s8(v656, v531));
        v534 = vshlq_u32(v532, v533);
        v535 = vuzp1q_s16(vzip1q_s32(v532, v534), vzip2q_s32(v532, v534));
        v532.i64[0] = 0xF000F000F000FLL;
        v532.i64[1] = 0xF000F000F000FLL;
        v536 = vaddq_s16(v656, v532);
        v534.i64[0] = 0x10001000100010;
        v534.i64[1] = 0x10001000100010;
        v537 = vsubq_s16(v534, v656);
        v538 = vshlq_s16(vshlq_s16(v535, v537), v536);
        v647 = v538;
        v539 = v522 + v521;
        if (v628.i64[0])
        {
          v540 = v628.i64[0] >= v539;
        }

        else
        {
          v540 = 1;
        }

        v541 = v540;
        v542 = 0uLL;
        if (v521 <= 0x80 && v541)
        {
          v543 = v522 & 0x3F;
          v544 = vaddq_s64(vdupq_n_s64(v543), vzip1q_s64(0, v519));
          v545 = (v344 + 8 * (v522 >> 6));
          v546 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v545, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v544)), vshlq_u64(vdupq_lane_s64(v545->i64[0], 0), vnegq_s64(v544)));
          if (v543 + v521 >= 0x81)
          {
            v546 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v545[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v544)), vshlq_u64(vdupq_laneq_s64(v545[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v544))), v546);
          }
        }

        else
        {
          v346 = 1;
          v539 = v522;
          v546 = 0uLL;
        }

        v547 = vshlq_u64(v546, v530);
        v548 = vuzp1q_s32(vzip1q_s64(v546, v547), vzip2q_s64(v546, v547));
        v549 = vshlq_u32(v548, v533);
        v550 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v548, v549), vzip2q_s32(v548, v549)), v537), v536);
        v648 = v550;
        v551 = v539 + v521;
        if (v628.i64[0])
        {
          v552 = v628.i64[0] >= v551;
        }

        else
        {
          v552 = 1;
        }

        v553 = v552;
        if (v521 <= 0x80 && v553)
        {
          v554 = v539 & 0x3F;
          v555 = vaddq_s64(vdupq_n_s64(v554), vzip1q_s64(0, v519));
          v556 = (v344 + 8 * (v539 >> 6));
          v542 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v556, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v555)), vshlq_u64(vdupq_lane_s64(v556->i64[0], 0), vnegq_s64(v555)));
          if (v554 + v521 >= 0x81)
          {
            v542 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v556[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v555)), vshlq_u64(vdupq_laneq_s64(v556[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v555))), v542);
          }
        }

        else
        {
          v346 = 1;
          v551 = v539;
        }

        v557 = vshlq_u64(v542, v530);
        v558 = vuzp1q_s32(vzip1q_s64(v542, v557), vzip2q_s64(v542, v557));
        v559 = vshlq_u32(v558, v533);
        v560 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v558, v559), vzip2q_s32(v558, v559)), v537), v536);
        v649 = v560;
        v561 = v551 + v521;
        if (v628.i64[0])
        {
          v562 = v628.i64[0] >= v561;
        }

        else
        {
          v562 = 1;
        }

        v563 = v562;
        if (v521 > 0x80 || !v563)
        {
          goto LABEL_277;
        }

        v564 = vaddq_s64(vdupq_n_s64(v551 & 0x3F), vzip1q_s64(0, v519));
        v565 = (v344 + 8 * (v551 >> 6));
        v566 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v565, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v564)), vshlq_u64(vdupq_lane_s64(v565->i64[0], 0), vnegq_s64(v564)));
        if ((v551 & 0x3F) + v521 >= 0x81)
        {
          v566 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v565[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v564)), vshlq_u64(vdupq_laneq_s64(v565[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v564))), v566);
        }

        if ((v346 & 1) != 0 || v628.i64[0] + 8 * result - v561 - 1024 >= 9 || v329 == 2)
        {
LABEL_277:
          result = 0;
          v567 = vdupq_n_s64(0xFFFFF003FFuLL);
          *a1 = v567;
          *(a1 + v287) = v567;
        }

        else
        {
          v568 = vshlq_u64(v566, v530);
          v569 = vuzp1q_s32(vzip1q_s64(v566, v568), vzip2q_s64(v566, v568));
          v570 = vshlq_u32(v569, v533);
          v571 = vshlq_s16(vshlq_s16(vuzp1q_s16(vzip1q_s32(v569, v570), vzip2q_s32(v569, v570)), v537), v536);
          v572 = vaddq_s16(vandq_s8(v328, v296), v355);
          v573 = vdupq_lane_s64(v328.i64[0], 0);
          v574 = vandq_s8(v296, v573);
          v575 = vsubq_s16(v572, v574);
          v576 = vsubq_s16(v377, v574);
          v577 = vsubq_s16(v387, v574);
          v578 = vsubq_s16(v399, v574);
          v579 = vandq_s8(v295, v573);
          v580 = vsubq_s16(v423, v579);
          v581 = vsubq_s16(v435, v579);
          v582 = vsubq_s16(v445, v579);
          v583 = vsubq_s16(v457, v579);
          v584 = vandq_s8(v294, v573);
          v585 = vsubq_s16(v481, v584);
          v586 = vsubq_s16(v493, v584);
          v587 = vsubq_s16(v503, v584);
          v588 = vsubq_s16(v515, v584);
          v589 = vandq_s8(v293, v573);
          v590 = vsubq_s16(v538, v589);
          v635 = v572;
          v591 = vsubq_s16(v550, v589);
          v592 = vsubq_s16(v560, v589);
          v647 = v590;
          v648 = v591;
          v593 = vsubq_s16(v571, v589);
          v649 = v592;
          v650 = v593;
          v594.i64[0] = 0x1000100010001;
          v594.i64[1] = 0x1000100010001;
          if (vaddvq_s16(vceqq_s16(v272, v594)))
          {
            v595 = vnegq_s16(vandq_s8(v652, v594));
            v596.i64[0] = v578.i64[0];
            v597.i64[1] = v575.i64[1];
            v596.i64[1] = v575.i64[0];
            v597.i64[0] = v578.i64[1];
            v598 = vbslq_s8(v595, v597, v575);
            v599 = vbslq_s8(v595, v596, v578);
            v597.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
            v597.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
            v600 = vandq_s8(vqtbl4q_s8(*(&v576 - 1), v597), v595);
            v660.val[0] = vaddq_s16(v598, vandq_s8(vqtbl4q_s8(*(&v576 - 1), xmmword_29D2F10B0), v595));
            v660.val[1] = vaddq_s16(v576, vandq_s8(vqtbl4q_s8(*(&v576 - 1), xmmword_29D2F10C0), v595));
            v660.val[2] = vaddq_s16(v577, v600);
            v660.val[3] = vaddq_s16(v599, v600);
            v601 = vandq_s8(vqtbl4q_s8(v660, v597), v595);
            v575 = vaddq_s16(v660.val[0], vandq_s8(vqtbl4q_s8(v660, xmmword_29D2F10D0), v595));
            v576 = vaddq_s16(v660.val[1], vandq_s8(vqtbl4q_s8(v660, xmmword_29D2F10E0), v595));
            v635 = v575;
            v636 = v576;
            v577 = vaddq_s16(v660.val[2], v601);
            v578 = vaddq_s16(v660.val[3], v601);
            v659.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v580.i8, xmmword_29D2F10B0), v595), v580);
            v659.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v580.i8, xmmword_29D2F10F0), v595), v581);
            v659.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v580.i8, v597), v595), v582);
            v659.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v580.i8, xmmword_29D2F1100), v595), v583);
            v602 = vandq_s8(vqtbl4q_s8(v659, xmmword_29D2F10D0), v595);
            v603 = vandq_s8(vqtbl4q_s8(v659, v597), v595);
            v580 = vaddq_s16(v602, v659.val[0]);
            v581 = vaddq_s16(v659.val[1], v602);
            v582 = vaddq_s16(v659.val[2], v603);
            v583 = vaddq_s16(v659.val[3], v603);
            v659.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v585.i8, xmmword_29D2F0EB0), v595), v585);
            v659.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v585.i8, xmmword_29D2F0FB0), v595), v586);
            v659.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v585.i8, xmmword_29D2F10B0), v595), v587);
            v659.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(*v585.i8, xmmword_29D2F10C0), v595), v588);
            v604 = vandq_s8(vqtbl4q_s8(v659, v597), v595);
            v585 = vaddq_s16(v659.val[0], v604);
            v586 = vaddq_s16(v659.val[1], v604);
            v587 = vaddq_s16(v659.val[2], vandq_s8(vqtbl4q_s8(v659, xmmword_29D2F0FE0), v595));
            v588 = vaddq_s16(v659.val[3], vandq_s8(vqtbl4q_s8(v659, xmmword_29D2F1110), v595));
            v660.val[0] = v647;
            v660.val[1] = v648;
            v271 = v652;
            v660.val[2] = v649;
            v660.val[3] = v650;
            v659.val[0] = vaddq_s16(vandq_s8(vqtbl4q_s8(v660, xmmword_29D2F0EB0), v595), v647);
            v659.val[1] = vaddq_s16(vandq_s8(vqtbl4q_s8(v660, xmmword_29D2F1120), v595), v648);
            v637 = v577;
            v638 = v578;
            v659.val[2] = vaddq_s16(vandq_s8(vqtbl4q_s8(v660, xmmword_29D2F10B0), v595), v649);
            v659.val[3] = vaddq_s16(vandq_s8(vqtbl4q_s8(v660, xmmword_29D2F10C0), v595), v650);
            v605 = vandq_s8(vqtbl4q_s8(v659, v597), v595);
            v590 = vaddq_s16(v659.val[0], v605);
            v591 = vaddq_s16(v659.val[1], v605);
            v592 = vaddq_s16(v659.val[2], vandq_s8(vqtbl4q_s8(v659, xmmword_29D2F0FE0), v595));
            v593 = vaddq_s16(v659.val[3], vandq_s8(vqtbl4q_s8(v659, xmmword_29D2F1130), v595));
          }

          v606 = vaddq_s16(v651, v575);
          v607 = vaddq_s16(v576, v651);
          v608 = vaddq_s16(v577, v651);
          v609 = vaddq_s16(v578, v651);
          v610 = vaddq_s16(v580, v651);
          v611 = vaddq_s16(v581, v651);
          v612 = vaddq_s16(v582, v651);
          v613 = vaddq_s16(v583, v651);
          v614 = vaddq_s16(v585, v651);
          v615 = vaddq_s16(v586, v651);
          v616 = vaddq_s16(v587, v651);
          v617 = vaddq_s16(v588, v651);
          v618 = vaddq_s16(v590, v651);
          v619 = vaddq_s16(v591, v651);
          v620 = vaddq_s16(v592, v651);
          v621 = vaddq_s16(v593, v651);
          v622.i64[0] = 0x10001000100010;
          v622.i64[1] = 0x10001000100010;
          v623 = vceqzq_s16(vandq_s8(v271, v622));
          v624 = a1 + 4;
          *a1 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v606, xmmword_29D2F1140), v623), v606), 6uLL);
          a1[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v607, xmmword_29D2F1140), v623), v607), 6uLL);
          a1[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v608, xmmword_29D2F1140), v623), v608), 6uLL);
          a1[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v609, xmmword_29D2F1140), v623), v609), 6uLL);
          v625 = (a1 + v287);
          *v624 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v610, xmmword_29D2F1140), v623), v610), 6uLL);
          v624[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v611, xmmword_29D2F1140), v623), v611), 6uLL);
          v624[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v612, xmmword_29D2F1140), v623), v612), 6uLL);
          v624[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v613, xmmword_29D2F1140), v623), v613), 6uLL);
          *v625 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v614, xmmword_29D2F1140), v623), v614), 6uLL);
          v625[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v615, xmmword_29D2F1140), v623), v615), 6uLL);
          v625[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v616, xmmword_29D2F1140), v623), v616), 6uLL);
          v625[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v617, xmmword_29D2F1140), v623), v617), 6uLL);
          v625 += 4;
          *v625 = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v618, xmmword_29D2F1140), v623), v618), 6uLL);
          v625[1] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v619, xmmword_29D2F1140), v623), v619), 6uLL);
          v625[2] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v620, xmmword_29D2F1140), v623), v620), 6uLL);
          v625[3] = vshlq_n_s16(vaddq_s16(vbicq_s8(vqtbl1q_s8(v621, xmmword_29D2F1140), v623), v621), 6uLL);
        }
      }
    }

    else
    {
      if (a4)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(a3, &v627, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(a3, &v627, a5);
      }

      *v635.i8 = vmovn_s32(v627);
      v635.u64[1] = vmovn_s32(v629);
      *v637.i8 = vmovn_s32(v628);
      v637.u64[1] = vmovn_s32(v630);
      *v639.i8 = vmovn_s32(v631);
      v639.u64[1] = vmovn_s32(v633);
      *v641.i8 = vmovn_s32(v632);
      v641.u64[1] = vmovn_s32(v634);
      v15 = a3 + 32;
      if ((v6 & 2) != 0)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v15, &v627, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v15, &v627, a5);
      }

      *v636.i8 = vmovn_s32(v627);
      v636.u64[1] = vmovn_s32(v629);
      *v638.i8 = vmovn_s32(v628);
      v638.u64[1] = vmovn_s32(v630);
      *v640.i8 = vmovn_s32(v631);
      v640.u64[1] = vmovn_s32(v633);
      *v642.i8 = vmovn_s32(v632);
      v642.u64[1] = vmovn_s32(v634);
      v16 = a3 + 64;
      if ((v6 & 4) != 0)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v16, &v627, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v16, &v627, a5);
      }

      *v643.i8 = vmovn_s32(v627);
      v643.u64[1] = vmovn_s32(v629);
      *v645.i8 = vmovn_s32(v628);
      v645.u64[1] = vmovn_s32(v630);
      *v647.i8 = vmovn_s32(v631);
      v647.u64[1] = vmovn_s32(v633);
      v17 = &v635.i16[4];
      v18 = &v636;
      v19 = &v636.i16[4];
      *v649.i8 = vmovn_s32(v632);
      v649.u64[1] = vmovn_s32(v634);
      v20 = a3 + 96;
      if ((v6 & 8) != 0)
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockFallback(v20, &v627, a5);
      }

      else
      {
        AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressLossyCompressedSubblockDQuad(v20, &v627, a5);
      }

      v21 = 0;
      *v644.i8 = vmovn_s32(v627);
      v644.u64[1] = vmovn_s32(v629);
      *v646.i8 = vmovn_s32(v628);
      v646.u64[1] = vmovn_s32(v630);
      *v648.i8 = vmovn_s32(v631);
      v648.u64[1] = vmovn_s32(v633);
      v22 = &a1[4];
      v23 = 1;
      v24 = &v635;
      *v650.i8 = vmovn_s32(v632);
      v650.u64[1] = vmovn_s32(v634);
      do
      {
        v25 = v23;
        v26 = &v635.i16[16 * v21];
        v27 = (((v26[16] & 0x3FF) << 6) | (v26[17] << 22) | (v26[18] << 38)) & 0xFFC0FFC0FFC0 | (v26[19] << 54);
        *(v22 - 8) = (((v24->i16[0] & 0x3FF) << 6) | (v24->u16[1] << 22) | (v24->u16[2] << 38)) & 0xFFC0FFC0FFC0 | (v24->u16[3] << 54);
        *(v22 - 7) = v27;
        v28 = (((v26[20] & 0x3FF) << 6) | (v26[21] << 22) | (v26[22] << 38)) & 0xFFC0FFC0FFC0 | (v26[23] << 54);
        *(v22 - 6) = (((*v17 & 0x3FF) << 6) | (v17[1] << 22) | (v17[2] << 38)) & 0xFFC0FFC0FFC0 | (v17[3] << 54);
        *(v22 - 5) = v28;
        v29 = (((v26[48] & 0x3FF) << 6) | (v26[49] << 22) | (v26[50] << 38)) & 0xFFC0FFC0FFC0 | (v26[51] << 54);
        *(v22 - 4) = (((v26[32] & 0x3FF) << 6) | (v26[33] << 22) | (v26[34] << 38)) & 0xFFC0FFC0FFC0 | (v26[35] << 54);
        *(v22 - 3) = v29;
        v30 = (((v26[52] & 0x3FF) << 6) | (v26[53] << 22) | (v26[54] << 38)) & 0xFFC0FFC0FFC0 | (v26[55] << 54);
        *(v22 - 2) = (((v26[36] & 0x3FF) << 6) | (v26[37] << 22) | (v26[38] << 38)) & 0xFFC0FFC0FFC0 | (v26[39] << 54);
        *(v22 - 1) = v30;
        v31 = (((v26[24] & 0x3FF) << 6) | (v26[25] << 22) | (v26[26] << 38)) & 0xFFC0FFC0FFC0 | (v26[27] << 54);
        *v22 = (((v18->i16[0] & 0x3FF) << 6) | (v18->u16[1] << 22) | (v18->u16[2] << 38)) & 0xFFC0FFC0FFC0 | (v18->u16[3] << 54);
        v22[1] = v31;
        v32 = (((v26[28] & 0x3FF) << 6) | (v26[29] << 22) | (v26[30] << 38)) & 0xFFC0FFC0FFC0 | (v26[31] << 54);
        v22[2] = (((*v19 & 0x3FF) << 6) | (v19[1] << 22) | (v19[2] << 38)) & 0xFFC0FFC0FFC0 | (v19[3] << 54);
        v22[3] = v32;
        v33 = (((v26[56] & 0x3FF) << 6) | (v26[57] << 22) | (v26[58] << 38)) & 0xFFC0FFC0FFC0 | (v26[59] << 54);
        v22[4] = (((v26[40] & 0x3FF) << 6) | (v26[41] << 22) | (v26[42] << 38)) & 0xFFC0FFC0FFC0 | (v26[43] << 54);
        v22[5] = v33;
        v34 = v26[47];
        v35 = (((v26[44] & 0x3FF) << 6) | (v26[45] << 22) | (v26[46] << 38)) & 0xFFC0FFC0FFC0;
        v36 = (((v26[60] & 0x3FF) << 6) | (v26[61] << 22) | (v26[62] << 38)) & 0xFFC0FFC0FFC0 | (v26[63] << 54);
        v22[6] = v35 | (v34 << 54);
        v22[7] = v36;
        v22 = (v22 + a2);
        v24 = &v643;
        v17 = &v643.i16[4];
        v18 = &v644;
        v19 = &v644.i16[4];
        v21 = 4;
        v23 = 0;
      }

      while ((v25 & 1) != 0);
      return 128;
    }
  }

  else
  {
    result = 0;
    a1[6] = 0u;
    a1[7] = 0u;
    a1[4] = 0u;
    a1[5] = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
    v10 = &a1->i8[a2];
    *(v10 + 6) = 0u;
    *(v10 + 7) = 0u;
    *(v10 + 4) = 0u;
    *(v10 + 5) = 0u;
    *(v10 + 2) = 0u;
    *(v10 + 3) = 0u;
    *v10 = 0u;
    *(v10 + 1) = 0u;
  }

  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressMacroblock(unint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4, unsigned int a5, unsigned int a6, int a7)
{
  v8 = a6;
  v9 = a5;
  v11 = a3;
  v13 = result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(a3, a4, result, a2, a5, a6, a7);
    v11 += result;
  }

  else
  {
    *a4 = 0;
  }

  v14 = v9 - 2;
  if (v9 >= 3 && v8)
  {
    if (v8 >= 2)
    {
      v15 = 2;
    }

    else
    {
      v15 = v8;
    }

    if (v14 >= 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = v9 - 2;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 1, v13 + 8, a2, v16, v15, a7);
    v11 += result;
  }

  else
  {
    a4[1] = 0;
  }

  v17 = 2 * a2;
  v18 = v8 - 2;
  if (v9 && v8 >= 3)
  {
    if (v18 >= 2)
    {
      v19 = 2;
    }

    else
    {
      v19 = v8 - 2;
    }

    if (v9 >= 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = v9;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 2, (v13 + v17), a2, v20, v19, a7);
    v11 += result;
  }

  else
  {
    a4[2] = 0;
  }

  if (v9 < 3 || v8 < 3)
  {
    a4[3] = 0;
  }

  else
  {
    if (v18 >= 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = v8 - 2;
    }

    if (v14 >= 2)
    {
      v22 = 2;
    }

    else
    {
      v22 = v9 - 2;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 3, (v13 + v17 + 128), a2, v22, v21, a7);
    v11 += result;
  }

  v23 = v9 - 4;
  if (v9 >= 5 && v8)
  {
    if (v8 >= 2)
    {
      v24 = 2;
    }

    else
    {
      v24 = v8;
    }

    if (v23 >= 2)
    {
      v25 = 2;
    }

    else
    {
      v25 = v9 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 4, v13 + 16, a2, v25, v24, a7);
    v11 += result;
  }

  else
  {
    a4[4] = 0;
  }

  v26 = v9 - 6;
  if (v9 >= 7 && v8)
  {
    if (v8 >= 2)
    {
      v27 = 2;
    }

    else
    {
      v27 = v8;
    }

    if (v26 >= 2)
    {
      v28 = 2;
    }

    else
    {
      v28 = v9 - 6;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 5, v13 + 24, a2, v28, v27, a7);
    v11 += result;
  }

  else
  {
    a4[5] = 0;
    if (v9 < 5)
    {
      goto LABEL_68;
    }
  }

  if (v8 >= 3)
  {
    if (v18 >= 2)
    {
      v29 = 2;
    }

    else
    {
      v29 = v8 - 2;
    }

    if (v23 >= 2)
    {
      v30 = 2;
    }

    else
    {
      v30 = v9 - 4;
    }

    v31 = 2 * a2;
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 6, (v13 + 2 * a2 + 256), a2, v30, v29, a7);
    v11 += result;
    if (v9 < 7)
    {
      goto LABEL_79;
    }

    goto LABEL_69;
  }

LABEL_68:
  a4[6] = 0;
  v31 = 2 * a2;
  if (v9 < 7)
  {
LABEL_79:
    a4[7] = 0;
    return result;
  }

LABEL_69:
  if (v8 < 3)
  {
    goto LABEL_79;
  }

  if (v18 >= 2)
  {
    v32 = 2;
  }

  else
  {
    v32 = v8 - 2;
  }

  if (v26 >= 2)
  {
    v33 = 2;
  }

  else
  {
    v33 = v9 - 6;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::compressSubblock(v11, a4 + 7, (v13 + v31 + 384), a2, v33, v32, a7);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressMacroblock(int16x8_t *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v7 = a2 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1, 512, a2, *a3, a4);
  v8 = v7 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 8, 512, v7, a3[1], a4);
  v9 = v8 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 64, 512, v8, a3[2], a4);
  v10 = v9 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 72, 512, v9, a3[3], a4);
  v11 = v10 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 16, 512, v10, a3[4], a4);
  v12 = v11 + AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 24, 512, v11, a3[5], a4);
  v13 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 80, 512, v12, a3[6], a4);
  v14 = a3[7];

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>::decompressSubblock(a1 + 88, 512, v12 + v13, v14, a4);
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, double a5, int8x8_t a6)
{
  v10 = 8 * (a3 & 7);
  v11 = a3 & 0xFFFFFFFFFFFFFFF8;
  v12 = v10 + 12;
  v13 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v10;
  if (v10 >= 0x35)
  {
    v13 |= *(v11 + 8) << (-8 * (a3 & 7u));
  }

  v14 = (8 * (a3 & 7)) | 0x100;
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
    *a1 = 0;
    *(a1 + a2) = 0;
    *(a1 + 2 * a2) = 0;
    *(a1 + 3 * a2) = 0;
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
      v195 = vaddq_s8(v194, vandq_s8(vqtbl1q_s8(v194, xmmword_29D2F0D70), v192));
      v186.i64[0] = vaddq_s8(v195, vandq_s8(vqtbl1q_s8(v195, xmmword_29D2F0D80), v192)).u64[0];
      v196 = vaddq_s8(vandq_s8(vqtbl1q_s8(v187, xmmword_29D2F0D90), v192), v187);
      v187.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v196, xmmword_29D2F0DA0), v192), v196).u64[0];
      v197 = vaddq_s8(vandq_s8(vqtbl1q_s8(v188, xmmword_29D2F0DB0), v192), v188);
      v188.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v197, xmmword_29D2F0DC0), v192), v197).u64[0];
      v198 = vaddq_s8(vandq_s8(vqtbl1q_s8(v189, xmmword_29D2F0DD0), v192), v189);
      v189.i64[0] = vaddq_s8(vandq_s8(vqtbl1q_s8(v198, xmmword_29D2F0DE0), v192), v198).u64[0];
    }

    v199 = vadd_s8(v183, *v186.i8);
    v200 = vadd_s8(*v188.i8, v183);
    *a1 = vuzp1_s16(v199, v200);
    *(a1 + a2) = vuzp2_s16(v199, v200);
    v201 = (a1 + 2 * a2);
    v202 = vadd_s8(*v187.i8, v183);
    v203 = vadd_s8(*v189.i8, v183);
    *v201 = vuzp1_s16(v202, v203);
    *(v201 + a2) = vuzp2_s16(v202, v203);
  }

  return v143;
}