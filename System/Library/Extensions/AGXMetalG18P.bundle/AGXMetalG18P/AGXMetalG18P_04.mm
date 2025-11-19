_OWORD *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(_OWORD *result, uint64_t a2, _OWORD *a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = 0;
  if (a5 && a6)
  {
    v7 = result[1];
    v8 = result[2];
    v9 = result[3];
    v10 = *(result + a2);
    v11 = *(result + a2 + 16);
    v12 = *(result + a2 + 32);
    v13 = *(result + a2 + 48);
    *a3 = *result;
    a3[1] = v7;
    a3[2] = v10;
    a3[3] = v11;
    a3[4] = v8;
    a3[5] = v9;
    a3[6] = v12;
    a3[7] = v13;
    a3 += 8;
    v6 = 127;
  }

  v14 = 0;
  v15 = 2 * a2;
  *a4 = v6;
  if (a5 && a6 >= 3)
  {
    v17 = *(result + v15 + 16);
    v16 = (result + v15 + a2);
    v18 = *(result + v15 + 32);
    v19 = *(result + v15 + 48);
    v20 = *v16;
    v21 = v16[1];
    v16 += 2;
    v22 = *v16;
    v23 = v16[1];
    *a3 = *(result + 2 * a2);
    a3[1] = v17;
    a3[2] = v20;
    a3[3] = v21;
    a3[4] = v18;
    a3[5] = v19;
    a3[6] = v22;
    a3[7] = v23;
    a3 += 8;
    v14 = 127;
  }

  v24 = 0;
  a4[1] = v14;
  if (a5 >= 5 && a6)
  {
    v26 = result[5];
    v25 = (result + a2 + 64);
    v27 = result[6];
    v28 = result[7];
    v29 = *v25;
    v30 = v25[1];
    v25 += 2;
    v31 = *v25;
    v32 = v25[1];
    *a3 = result[4];
    a3[1] = v26;
    a3[2] = v29;
    a3[3] = v30;
    a3[4] = v27;
    a3[5] = v28;
    a3[6] = v31;
    a3[7] = v32;
    a3 += 8;
    v24 = 127;
  }

  v33 = 0;
  a4[2] = v24;
  if (a5 >= 5 && a6 >= 3)
  {
    v34 = (result + v15);
    v36 = v34[4];
    v37 = v34[5];
    v35 = (v34 + a2 + 64);
    v34 += 6;
    v38 = *v34;
    v39 = v34[1];
    v40 = *v35;
    v41 = v35[1];
    v35 += 2;
    v42 = *v35;
    v43 = v35[1];
    *a3 = v36;
    a3[1] = v37;
    a3[2] = v40;
    a3[3] = v41;
    a3[4] = v38;
    a3[5] = v39;
    a3[6] = v42;
    a3[7] = v43;
    a3 += 8;
    v33 = 127;
  }

  v44 = 0;
  a4[3] = v33;
  if (a5 && a6 >= 5)
  {
    v45 = (result + 4 * a2);
    v46 = v45 + 2;
    v48 = *v45;
    v49 = v45[1];
    v47 = (v45 + a2);
    v50 = *v46;
    v51 = v46[1];
    v52 = *v47;
    v53 = v47[1];
    v47 += 2;
    v54 = *v47;
    v55 = v47[1];
    *a3 = v48;
    a3[1] = v49;
    a3[2] = v52;
    a3[3] = v53;
    a3[4] = v50;
    a3[5] = v51;
    a3[6] = v54;
    a3[7] = v55;
    a3 += 8;
    v44 = 127;
  }

  v56 = 0;
  a4[4] = v44;
  if (a5 && a6 >= 7)
  {
    v57 = (result + 6 * a2);
    v58 = v57 + 2;
    v60 = *v57;
    v61 = v57[1];
    v59 = (v57 + a2);
    v62 = *v58;
    v63 = v58[1];
    v64 = *v59;
    v65 = v59[1];
    v59 += 2;
    v66 = *v59;
    v67 = v59[1];
    *a3 = v60;
    a3[1] = v61;
    a3[2] = v64;
    a3[3] = v65;
    a3[4] = v62;
    a3[5] = v63;
    a3[6] = v66;
    a3[7] = v67;
    a3 += 8;
    v56 = 127;
  }

  v68 = 0;
  a4[5] = v56;
  if (a5 >= 5 && a6 >= 5)
  {
    v69 = (result + 4 * a2);
    v71 = v69[4];
    v72 = v69[5];
    v70 = (v69 + a2 + 64);
    v69 += 6;
    v73 = *v69;
    v74 = v69[1];
    v75 = *v70;
    v76 = v70[1];
    v70 += 2;
    v77 = *v70;
    v78 = v70[1];
    *a3 = v71;
    a3[1] = v72;
    a3[2] = v75;
    a3[3] = v76;
    a3[4] = v73;
    a3[5] = v74;
    a3[6] = v77;
    a3[7] = v78;
    a3 += 8;
    v68 = 127;
  }

  v79 = 0;
  a4[6] = v68;
  if (a5 >= 5 && a6 >= 7)
  {
    v80 = (result + 6 * a2);
    v82 = v80[4];
    v83 = v80[5];
    v81 = (v80 + a2 + 64);
    v80 += 6;
    v84 = *v80;
    v85 = v80[1];
    v86 = *v81;
    v87 = v81[1];
    v81 += 2;
    v88 = *v81;
    v89 = v81[1];
    *a3 = v82;
    a3[1] = v83;
    a3[2] = v86;
    a3[3] = v87;
    a3[4] = v84;
    a3[5] = v85;
    a3[6] = v88;
    a3[7] = v89;
    v79 = 127;
  }

  a4[7] = v79;
  return result;
}

int8x16_t *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  if (v6 == 127)
  {
    v9 = *(a2 + 16);
    v10 = *(a2 + 32);
    v11 = *(a2 + 48);
    v12 = *(a2 + 64);
    v13 = *(a2 + 80);
    v14 = *(a2 + 96);
    v15 = *(a2 + 112);
    *a1 = *a2;
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
    *(a1 + 48) = v13;
    *(a1 + 128) = v10;
    *(a1 + 144) = v11;
    *(a1 + 160) = v14;
    *(a1 + 176) = v15;
    v7 = 128;
  }

  else if (v6 == 3)
  {
    v8 = vld1q_dup_f32(a2);
    *a1 = v8;
    *(a1 + 16) = v8;
    *(a1 + 32) = v8;
    *(a1 + 48) = v8;
    *(a1 + 128) = v8;
    *(a1 + 144) = v8;
    *(a1 + 160) = v8;
    *(a1 + 176) = v8;
    v7 = 4;
  }

  else if (*a3)
  {
    v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(a1, 128, a2, v6);
  }

  else
  {
    v7 = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
  }

  v16 = a2 + v7;
  v17 = (a1 + 256);
  v18 = a3[1];
  if (a3[1])
  {
    if (v18 == 3)
    {
      v27 = vld1q_dup_f32(v16);
      *(a1 + 256) = v27;
      *(a1 + 272) = v27;
      *(a1 + 288) = v27;
      *(a1 + 304) = v27;
      *(a1 + 384) = v27;
      *(a1 + 400) = v27;
      *(a1 + 416) = v27;
      *(a1 + 432) = v27;
      v26 = 4;
    }

    else if (v18 == 127)
    {
      v19 = *(v16 + 16);
      v20 = *(v16 + 32);
      v21 = *(v16 + 48);
      v22 = *(v16 + 64);
      v23 = *(v16 + 80);
      v24 = *(v16 + 96);
      v25 = *(v16 + 112);
      *v17 = *v16;
      *(a1 + 272) = v19;
      *(a1 + 288) = v22;
      *(a1 + 304) = v23;
      *(a1 + 384) = v20;
      *(a1 + 400) = v21;
      *(a1 + 416) = v24;
      *(a1 + 432) = v25;
      v26 = 128;
    }

    else
    {
      v26 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v17, 128, v16, v18);
    }
  }

  else
  {
    v26 = 0;
    *(a1 + 288) = 0u;
    *(a1 + 304) = 0u;
    *v17 = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 384) = 0u;
    *(a1 + 400) = 0u;
    *(a1 + 416) = 0u;
    *(a1 + 432) = 0u;
  }

  v28 = v16 + v26;
  v29 = (a1 + 64);
  v30 = a3[2];
  if (a3[2])
  {
    if (v30 == 3)
    {
      v39 = vld1q_dup_f32(v28);
      *(a1 + 64) = v39;
      *(a1 + 80) = v39;
      *(a1 + 96) = v39;
      *(a1 + 112) = v39;
      *(a1 + 192) = v39;
      *(a1 + 208) = v39;
      *(a1 + 224) = v39;
      *(a1 + 240) = v39;
      v38 = 4;
    }

    else if (v30 == 127)
    {
      v31 = *(v28 + 16);
      v32 = *(v28 + 32);
      v33 = *(v28 + 48);
      v34 = *(v28 + 64);
      v35 = *(v28 + 80);
      v36 = *(v28 + 96);
      v37 = *(v28 + 112);
      *v29 = *v28;
      *(a1 + 80) = v31;
      *(a1 + 96) = v34;
      *(a1 + 112) = v35;
      *(a1 + 192) = v32;
      *(a1 + 208) = v33;
      *(a1 + 224) = v36;
      *(a1 + 240) = v37;
      v38 = 128;
    }

    else
    {
      v38 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v29, 128, v28, v30);
    }
  }

  else
  {
    v38 = 0;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *v29 = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 192) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
  }

  v40 = v28 + v38;
  v41 = (a1 + 320);
  v42 = a3[3];
  if (a3[3])
  {
    if (v42 == 3)
    {
      v51 = vld1q_dup_f32(v40);
      *(a1 + 320) = v51;
      *(a1 + 336) = v51;
      *(a1 + 352) = v51;
      *(a1 + 368) = v51;
      *(a1 + 448) = v51;
      *(a1 + 464) = v51;
      *(a1 + 480) = v51;
      *(a1 + 496) = v51;
      v50 = 4;
    }

    else if (v42 == 127)
    {
      v43 = *(v40 + 16);
      v44 = *(v40 + 32);
      v45 = *(v40 + 48);
      v46 = *(v40 + 64);
      v47 = *(v40 + 80);
      v48 = *(v40 + 96);
      v49 = *(v40 + 112);
      *v41 = *v40;
      *(a1 + 336) = v43;
      *(a1 + 352) = v46;
      *(a1 + 368) = v47;
      *(a1 + 448) = v44;
      *(a1 + 464) = v45;
      *(a1 + 480) = v48;
      *(a1 + 496) = v49;
      v50 = 128;
    }

    else
    {
      v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v41, 128, v40, v42);
    }
  }

  else
  {
    v50 = 0;
    *(a1 + 352) = 0u;
    *(a1 + 368) = 0u;
    *v41 = 0u;
    *(a1 + 336) = 0u;
    *(a1 + 448) = 0u;
    *(a1 + 464) = 0u;
    *(a1 + 480) = 0u;
    *(a1 + 496) = 0u;
  }

  v52 = v40 + v50;
  v53 = (a1 + 512);
  v54 = a3[4];
  if (a3[4])
  {
    if (v54 == 3)
    {
      v63 = vld1q_dup_f32(v52);
      *(a1 + 512) = v63;
      *(a1 + 528) = v63;
      *(a1 + 544) = v63;
      *(a1 + 560) = v63;
      *(a1 + 640) = v63;
      *(a1 + 656) = v63;
      *(a1 + 672) = v63;
      *(a1 + 688) = v63;
      v62 = 4;
    }

    else if (v54 == 127)
    {
      v55 = *(v52 + 16);
      v56 = *(v52 + 32);
      v57 = *(v52 + 48);
      v58 = *(v52 + 64);
      v59 = *(v52 + 80);
      v60 = *(v52 + 96);
      v61 = *(v52 + 112);
      *v53 = *v52;
      *(a1 + 528) = v55;
      *(a1 + 544) = v58;
      *(a1 + 560) = v59;
      *(a1 + 640) = v56;
      *(a1 + 656) = v57;
      *(a1 + 672) = v60;
      *(a1 + 688) = v61;
      v62 = 128;
    }

    else
    {
      v62 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v53, 128, v52, v54);
    }
  }

  else
  {
    v62 = 0;
    *(a1 + 544) = 0u;
    *(a1 + 560) = 0u;
    *v53 = 0u;
    *(a1 + 528) = 0u;
    *(a1 + 640) = 0u;
    *(a1 + 656) = 0u;
    *(a1 + 672) = 0u;
    *(a1 + 688) = 0u;
  }

  v64 = v52 + v62;
  v65 = (a1 + 768);
  v66 = a3[5];
  if (a3[5])
  {
    if (v66 == 3)
    {
      v75 = vld1q_dup_f32(v64);
      *(a1 + 768) = v75;
      *(a1 + 784) = v75;
      *(a1 + 800) = v75;
      *(a1 + 816) = v75;
      *(a1 + 896) = v75;
      *(a1 + 912) = v75;
      *(a1 + 928) = v75;
      *(a1 + 944) = v75;
      v74 = 4;
    }

    else if (v66 == 127)
    {
      v67 = *(v64 + 16);
      v68 = *(v64 + 32);
      v69 = *(v64 + 48);
      v70 = *(v64 + 64);
      v71 = *(v64 + 80);
      v72 = *(v64 + 96);
      v73 = *(v64 + 112);
      *v65 = *v64;
      *(a1 + 784) = v67;
      *(a1 + 800) = v70;
      *(a1 + 816) = v71;
      *(a1 + 896) = v68;
      *(a1 + 912) = v69;
      *(a1 + 928) = v72;
      *(a1 + 944) = v73;
      v74 = 128;
    }

    else
    {
      v74 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v65, 128, v64, v66);
    }
  }

  else
  {
    v74 = 0;
    *(a1 + 800) = 0u;
    *(a1 + 816) = 0u;
    *v65 = 0u;
    *(a1 + 784) = 0u;
    *(a1 + 896) = 0u;
    *(a1 + 912) = 0u;
    *(a1 + 928) = 0u;
    *(a1 + 944) = 0u;
  }

  v76 = v64 + v74;
  v77 = (a1 + 576);
  v78 = a3[6];
  if (a3[6])
  {
    if (v78 == 3)
    {
      v87 = vld1q_dup_f32(v76);
      *(a1 + 576) = v87;
      *(a1 + 592) = v87;
      *(a1 + 608) = v87;
      *(a1 + 624) = v87;
      *(a1 + 704) = v87;
      *(a1 + 720) = v87;
      *(a1 + 736) = v87;
      *(a1 + 752) = v87;
      v86 = 4;
    }

    else if (v78 == 127)
    {
      v79 = *(v76 + 16);
      v80 = *(v76 + 32);
      v81 = *(v76 + 48);
      v82 = *(v76 + 64);
      v83 = *(v76 + 80);
      v84 = *(v76 + 96);
      v85 = *(v76 + 112);
      *v77 = *v76;
      *(a1 + 592) = v79;
      *(a1 + 608) = v82;
      *(a1 + 624) = v83;
      *(a1 + 704) = v80;
      *(a1 + 720) = v81;
      *(a1 + 736) = v84;
      *(a1 + 752) = v85;
      v86 = 128;
    }

    else
    {
      v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v77, 128, v76, v78);
    }
  }

  else
  {
    v86 = 0;
    *(a1 + 608) = 0u;
    *(a1 + 624) = 0u;
    *v77 = 0u;
    *(a1 + 592) = 0u;
    *(a1 + 704) = 0u;
    *(a1 + 720) = 0u;
    *(a1 + 736) = 0u;
    *(a1 + 752) = 0u;
  }

  result = (a1 + 832);
  v89 = a3[7];
  if (!a3[7])
  {
    v98 = 0uLL;
    *(a1 + 864) = 0u;
    *(a1 + 880) = 0u;
    *result = 0u;
    *(a1 + 848) = 0u;
    goto LABEL_56;
  }

  v90 = v76 + v86;
  if (v89 == 3)
  {
    v98 = vld1q_dup_f32(v90);
    *(a1 + 832) = v98;
    *(a1 + 848) = v98;
    *(a1 + 864) = v98;
    *(a1 + 880) = v98;
LABEL_56:
    *(a1 + 960) = v98;
    *(a1 + 976) = v98;
    *(a1 + 992) = v98;
    *(a1 + 1008) = v98;
    return result;
  }

  if (v89 == 127)
  {
    v91 = *(v90 + 16);
    v92 = *(v90 + 32);
    v93 = *(v90 + 48);
    v94 = *(v90 + 64);
    v95 = *(v90 + 80);
    v96 = *(v90 + 96);
    v97 = *(v90 + 112);
    *result = *v90;
    *(a1 + 848) = v91;
    *(a1 + 864) = v94;
    *(a1 + 880) = v95;
    *(a1 + 960) = v92;
    *(a1 + 976) = v93;
    *(a1 + 992) = v96;
    *(a1 + 1008) = v97;
  }

  else
  {

    return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 128, v90, v89);
  }

  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(int8x16_t *a1, char *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v6 = vdupq_lane_s32(*a3, 0);
  v7 = vsubq_s8(*a3, v6);
  v8 = vsubq_s8(*(a3 + 16), v6);
  v508 = *(a3 + a4);
  v9 = vsubq_s8(v508, v6);
  v498 = *(a3 + a4 + 16);
  v10 = vsubq_s8(v498, v6);
  v11 = vsubq_s8(*(a3 + 32), v6);
  v12 = vsubq_s8(*(a3 + 48), v6);
  v13 = vsubq_s8(*(a3 + a4 + 32), v6);
  v499 = *(a3 + a4 + 48);
  v14 = vqtbl1q_s8(vmaxq_s8(v7, v8), xmmword_29D2F0F70);
  v15 = vqtbl1q_s8(vminq_s8(v7, v8), xmmword_29D2F0F70);
  v16 = vpmaxq_s8(v14, v14);
  v17 = vpminq_s8(v15, v15);
  v18 = vpmaxq_s8(v16, v16);
  v19 = vpminq_s8(v17, v17);
  v20 = vzip1q_s8(v18, v19);
  v21.i64[0] = 0x808080808080808;
  v21.i64[1] = 0x808080808080808;
  v22 = vbicq_s8(vsubq_s8(v21, vclsq_s8(v20)), vceqzq_s8(v20));
  v23 = vpmaxq_s8(v22, v22);
  v24 = vqtbl1q_s8(vmaxq_s8(v9, v10), xmmword_29D2F0F70);
  v25 = vqtbl1q_s8(vminq_s8(v9, v10), xmmword_29D2F0F70);
  v26 = vpmaxq_s8(v24, v24);
  v27 = vpminq_s8(v25, v25);
  v28 = vpmaxq_s8(v26, v26);
  v29 = vpminq_s8(v27, v27);
  v30 = vmaxq_s8(v18, v28);
  v31 = vminq_s8(v19, v29);
  v32 = vzip1q_s8(v28, v29);
  v33 = vbicq_s8(vsubq_s8(v21, vclsq_s8(v32)), vceqzq_s8(v32));
  v34 = vpmaxq_s8(v33, v33);
  v35 = vqtbl1q_s8(vmaxq_s8(v11, v12), xmmword_29D2F0F70);
  v36 = vqtbl1q_s8(vminq_s8(v11, v12), xmmword_29D2F0F70);
  v37 = vpmaxq_s8(v35, v35);
  v38 = vpminq_s8(v36, v36);
  v39 = vpmaxq_s8(v37, v37);
  v40 = vpminq_s8(v38, v38);
  v41 = vmaxq_s8(v30, v39);
  v42 = vminq_s8(v31, v40);
  v43 = vzip1q_s8(v39, v40);
  v44 = vbicq_s8(vsubq_s8(v21, vclsq_s8(v43)), vceqzq_s8(v43));
  v45 = vpmaxq_s8(v44, v44);
  v511 = vsubq_s8(v499, v6);
  v46 = vqtbl1q_s8(vmaxq_s8(v13, v511), xmmword_29D2F0F70);
  v47 = vqtbl1q_s8(vminq_s8(v13, v511), xmmword_29D2F0F70);
  v48 = vpmaxq_s8(v46, v46);
  v49 = vpminq_s8(v47, v47);
  v50 = vpmaxq_s8(v48, v48);
  v51 = vpminq_s8(v49, v49);
  v52 = vmaxq_s8(v41, v50);
  v53 = vminq_s8(v42, v51);
  v54 = vzip1q_s8(v50, v51);
  v55 = vbicq_s8(vsubq_s8(v21, vclsq_s8(v54)), vceqzq_s8(v54));
  v56 = vpmaxq_s8(v55, v55);
  v57 = vmaxq_s8(vmaxq_s8(v23, v34), vmaxq_s8(v45, v56));
  v58 = vclzq_s8(vsubq_s8(v52, v53));
  v59 = vsubq_s8(v21, v58);
  v60 = vminq_s8(v59, v57);
  v61 = vmaxvq_s8(v60);
  v63 = a5 < 2 || a6 == 0;
  if (!v61)
  {
    a1->i32[0] = *a3;
    v160 = 3;
    result = 4;
    goto LABEL_91;
  }

  v493 = *a3;
  v494 = *(a3 + 16);
  v496 = *(a3 + a4 + 32);
  v497 = *(a3 + 32);
  v495 = *(a3 + 48);
  v64.i64[0] = -1;
  v64.i64[1] = -1;
  v65.i64[0] = 0x707070707070707;
  v65.i64[1] = 0x707070707070707;
  v66 = vcgtq_s8(v57, v59);
  v506 = vandq_s8(vsubq_s8(vshlq_s8(v64, vsubq_s8(v65, v58)), v53), v66);
  v67.i64[0] = 0x303030303030303;
  v67.i64[1] = 0x303030303030303;
  v488 = vmaxq_s8(vminq_s8(vsubq_s8(v60, v23), v67), 0);
  v491 = vmaxq_s8(vminq_s8(vsubq_s8(v60, v34), v67), 0);
  v68 = vmaxq_s8(vminq_s8(vsubq_s8(v60, v45), v67), 0);
  v69 = vmaxq_s8(vminq_s8(vsubq_s8(v60, v56), v67), 0);
  v70.i64[0] = 0x404040404040404;
  v70.i64[1] = 0x404040404040404;
  v71 = vorrq_s8(vbicq_s8(v70, vceqq_s8(vaddq_s8(v69, v68), vnegq_s8(vaddq_s8(v488, v491)))), vorrq_s8(vandq_s8(vceqzq_s8(v60), v67), vandq_s8(v66, v21)));
  v72 = vsubq_s8(v7, vqtbl1q_s8(v7, xmmword_29D2F1010));
  v73 = vsubq_s8(v8, vqtbl1q_s8(v8, xmmword_29D2F1010));
  v74 = vsubq_s8(v9, vqtbl1q_s8(v9, xmmword_29D2F1010));
  v75 = vsubq_s8(v10, vqtbl1q_s8(v10, xmmword_29D2F1010));
  v76 = vsubq_s8(v11, vqtbl1q_s8(v11, xmmword_29D2F1010));
  v77 = vsubq_s8(v12, vqtbl1q_s8(v12, xmmword_29D2F1010));
  v502 = v11;
  v509 = v7;
  v510 = v8;
  v78 = vsubq_s8(v13, vqtbl1q_s8(v13, xmmword_29D2F1010));
  v79 = vsubq_s8(v511, vqtbl1q_s8(v511, xmmword_29D2F1010));
  v80 = vqtbl1q_s8(vmaxq_s8(v72, v73), xmmword_29D2F0F70);
  v81 = vqtbl1q_s8(vminq_s8(v72, v73), xmmword_29D2F0F70);
  v82 = vpmaxq_s8(v80, v80);
  v83 = vpminq_s8(v81, v81);
  v84 = vpmaxq_s8(v82, v82);
  v85 = vpminq_s8(v83, v83);
  v86 = vzip1q_s8(v84, v85);
  v87 = vbicq_s8(vsubq_s8(v21, vclsq_s8(v86)), vceqzq_s8(v86));
  v88 = vpmaxq_s8(v87, v87);
  v504 = v13;
  v89 = vqtbl1q_s8(vmaxq_s8(v74, v75), xmmword_29D2F0F70);
  v90 = vqtbl1q_s8(vminq_s8(v74, v75), xmmword_29D2F0F70);
  v91 = vpmaxq_s8(v89, v89);
  v92 = vpminq_s8(v90, v90);
  v93 = vpmaxq_s8(v91, v91);
  v94 = vpminq_s8(v92, v92);
  v95 = vmaxq_s8(v84, v93);
  v96 = vminq_s8(v85, v94);
  v97 = vzip1q_s8(v93, v94);
  v98 = vbicq_s8(vsubq_s8(v21, vclsq_s8(v97)), vceqzq_s8(v97));
  v99 = vpmaxq_s8(v98, v98);
  v100 = vqtbl1q_s8(vmaxq_s8(v76, v77), xmmword_29D2F0F70);
  v101 = vqtbl1q_s8(vminq_s8(v76, v77), xmmword_29D2F0F70);
  v102 = vpmaxq_s8(v100, v100);
  v103 = vpminq_s8(v101, v101);
  v104 = vpmaxq_s8(v102, v102);
  v105 = vpminq_s8(v103, v103);
  v106 = vmaxq_s8(v95, v104);
  v107 = vzip1q_s8(v104, v105);
  v108 = vbicq_s8(vsubq_s8(v21, vclsq_s8(v107)), vceqzq_s8(v107));
  v500 = v10;
  v109 = vpmaxq_s8(v108, v108);
  v489 = v9;
  v110 = vqtbl1q_s8(vmaxq_s8(v78, v79), xmmword_29D2F0F70);
  v111 = vqtbl1q_s8(vminq_s8(v78, v79), xmmword_29D2F0F70);
  v112 = vpmaxq_s8(v110, v110);
  v113 = vpminq_s8(v111, v111);
  v114 = vpmaxq_s8(v112, v112);
  v115 = vpminq_s8(v113, v113);
  v116 = vmaxq_s8(v106, v114);
  v117 = vminq_s8(vminq_s8(v96, v105), v115);
  v118 = vzip1q_s8(v114, v115);
  v119 = vbicq_s8(vsubq_s8(v21, vclsq_s8(v118)), vceqzq_s8(v118));
  v120 = vpmaxq_s8(v119, v119);
  v121 = vmaxq_s8(vmaxq_s8(v88, v99), vmaxq_s8(v109, v120));
  v122 = vclzq_s8(vsubq_s8(v116, v117));
  v123 = vsubq_s8(v21, v122);
  v124 = vcgtq_s8(v121, v123);
  v125 = vminq_s8(v123, v121);
  v121.i64[0] = 0x1010101010101010;
  v121.i64[1] = 0x1010101010101010;
  v126 = v12;
  v127.i64[0] = 0x1818181818181818;
  v127.i64[1] = 0x1818181818181818;
  v128 = vorrq_s8(vandq_s8(vceqzq_s8(v125), v67), vbslq_s8(v124, v127, v121));
  v129 = vmaxq_s8(vminq_s8(vsubq_s8(v125, v88), v67), 0);
  v130 = vmaxq_s8(vminq_s8(vsubq_s8(v125, v99), v67), 0);
  v131 = vmaxq_s8(vminq_s8(vsubq_s8(v125, v109), v67), 0);
  v132 = vmaxq_s8(vminq_s8(vsubq_s8(v125, v120), v67), 0);
  v133 = vsubq_s8(v125, v129);
  v134 = vsubq_s8(v125, v130);
  v135 = vsubq_s8(v125, v131);
  v136 = vsubq_s8(v125, v132);
  v137.i64[0] = 0x404040404040404;
  v137.i64[1] = 0x404040404040404;
  v138 = vorrq_s8(v128, vbicq_s8(v137, vceqq_s8(vaddq_s8(v132, v131), vnegq_s8(vaddq_s8(v129, v130)))));
  v139 = vmovl_u8(*v138.i8);
  v130.i64[0] = 0x8000800080008;
  v130.i64[1] = 0x8000800080008;
  v140.i64[0] = 0x2000200020002;
  v140.i64[1] = 0x2000200020002;
  v141 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v135.i8, *v134.i8), *v136.i8), 3uLL), *v133.i8, 0x707070707070707), vandq_s8(vshll_n_u8(*v138.i8, 1uLL), v130)), vbicq_s8(vmovl_s8(*v125.i8), vceqzq_s16((*&v139 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8))))), vandq_s8(vceqq_s16((*&v139 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v140), v130));
  v142 = vceqq_s16((*&vmovl_u8(*v71.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v140);
  v143 = vsubq_s8(v60, v488);
  v144 = vsubq_s8(v60, v491);
  v145 = vsubq_s8(v60, v69);
  v146 = vandq_s8(v142, v130);
  v147 = vsubq_s8(v60, v68);
  v148 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddw_s8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v147.i8, *v144.i8), *v145.i8), 3uLL), *v143.i8, 0x707070707070707), vbic_s8(*v60.i8, vcgt_u8(0x808080808080808, *v71.i8))), (*&vshll_n_u8(*v71.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9))), v146), v141)), 0);
  if (vaddlvq_s8(v148))
  {
    v149.i64[0] = 0x707070707070707;
    v149.i64[1] = 0x707070707070707;
    v150 = vsubq_s8(v149, v122);
    v151.i64[0] = -1;
    v151.i64[1] = -1;
    v6 = vbslq_s8(v148, vsubq_s8(v6, vqtbl1q_s8(v6, xmmword_29D2F1010)), v6);
    v509 = vbslq_s8(v148, v72, v509);
    v510 = vbslq_s8(v148, v73, v510);
    v152 = vbslq_s8(v148, v75, v500);
    v153 = vbslq_s8(v148, v76, v502);
    v154 = vbslq_s8(v148, v78, v504);
    v511 = vbslq_s8(v148, v79, v511);
    v143 = vbslq_s8(v148, v133, v143);
    v492 = vbslq_s8(v148, v134, v144);
    v147 = vbslq_s8(v148, v135, v147);
    v145 = vbslq_s8(v148, v136, v145);
    v155 = vbslq_s8(v148, vandq_s8(vsubq_s8(vshlq_s8(v151, v150), v117), v124), v506);
    v60 = vbslq_s8(v148, v125, v60);
    v156 = vbslq_s8(v148, v138, v71);
    v157 = vbslq_s8(v148, v77, v126);
    v158 = vbslq_s8(v148, v74, v489);
    if (v63)
    {
LABEL_10:
      v159 = v492;
      goto LABEL_16;
    }
  }

  else
  {
    v492 = v144;
    v154 = v504;
    v155 = v506;
    v157 = v126;
    v152 = v500;
    v153 = v502;
    v158 = v489;
    v156 = v71;
    if (v63)
    {
      goto LABEL_10;
    }
  }

  v490 = v157;
  v505 = v154;
  v507 = v155;
  v501 = v152;
  v503 = v153;
  v513 = *a3;
  v171 = vsubq_s8(v493, vqtbl2q_s8(*a3, xmmword_29D2F0F80));
  v162 = vsubq_s8(v494, vqtbl2q_s8(*a3, xmmword_29D2F1030));
  v512 = *(a3 + a4);
  v512.val[1].i32[3] = v513.val[1].i32[3];
  v163 = vqtbl2q_s8(v512, xmmword_29D2F1040);
  v164 = vsubq_s8(v508, vqtbl2q_s8(v512, xmmword_29D2F0FA0));
  v165 = vsubq_s8(v498, v163);
  v514 = *(a3 + 32);
  v514.val[1].i32[3] = v513.val[1].i32[3];
  v512.val[0] = vqtbl2q_s8(v514, xmmword_29D2F0F80);
  v166 = vsubq_s8(v497, vqtbl2q_s8(v514, xmmword_29D2F1050));
  v515 = *(a3 + a4 + 32);
  v515.val[1].i32[3] = v513.val[1].i32[3];
  v167 = vsubq_s8(v495, v512.val[0]);
  v168 = vsubq_s8(v496, vqtbl2q_s8(v515, xmmword_29D2F1060));
  v169 = vsubq_s8(v499, vqtbl2q_s8(v515, xmmword_29D2F0F80));
  v170 = v162;
  v170.i32[3] = v171.i32[0];
  v171.i32[0] = v162.i32[3];
  v172 = vqtbl1q_s8(vmaxq_s8(v171, v170), xmmword_29D2F0F70);
  v515.val[0] = vqtbl1q_s8(vminq_s8(v171, v170), xmmword_29D2F0F70);
  v173 = vpmaxq_s8(v172, v172);
  v515.val[0] = vpminq_s8(v515.val[0], v515.val[0]);
  v174 = vpmaxq_s8(v173, v173);
  v515.val[0] = vpminq_s8(v515.val[0], v515.val[0]);
  v515.val[1] = vzip1q_s8(v174, v515.val[0]);
  v175.i64[0] = 0x808080808080808;
  v175.i64[1] = 0x808080808080808;
  v515.val[1] = vbicq_s8(vsubq_s8(v175, vclsq_s8(v515.val[1])), vceqzq_s8(v515.val[1]));
  v176 = v60;
  v177 = vpmaxq_s8(v515.val[1], v515.val[1]);
  v515.val[1] = vqtbl1q_s8(vmaxq_s8(v164, v165), xmmword_29D2F0F70);
  v178 = vqtbl1q_s8(vminq_s8(v164, v165), xmmword_29D2F0F70);
  v515.val[1] = vpmaxq_s8(v515.val[1], v515.val[1]);
  v179 = vpminq_s8(v178, v178);
  v515.val[1] = vpmaxq_s8(v515.val[1], v515.val[1]);
  v180 = vpminq_s8(v179, v179);
  v181 = vmaxq_s8(v174, v515.val[1]);
  v515.val[0] = vminq_s8(v515.val[0], v180);
  v515.val[1] = vzip1q_s8(v515.val[1], v180);
  v515.val[1] = vbicq_s8(vsubq_s8(v175, vclsq_s8(v515.val[1])), vceqzq_s8(v515.val[1]));
  v182 = vpmaxq_s8(v515.val[1], v515.val[1]);
  v515.val[1] = vqtbl1q_s8(vmaxq_s8(v166, v167), xmmword_29D2F0F70);
  v183 = vqtbl1q_s8(vminq_s8(v166, v167), xmmword_29D2F0F70);
  v515.val[1] = vpmaxq_s8(v515.val[1], v515.val[1]);
  v184 = vpminq_s8(v183, v183);
  v515.val[1] = vpmaxq_s8(v515.val[1], v515.val[1]);
  v185 = vpminq_s8(v184, v184);
  v186 = vmaxq_s8(v181, v515.val[1]);
  v515.val[0] = vminq_s8(v515.val[0], v185);
  v515.val[1] = vzip1q_s8(v515.val[1], v185);
  v515.val[1] = vbicq_s8(vsubq_s8(v175, vclsq_s8(v515.val[1])), vceqzq_s8(v515.val[1]));
  v187 = vpmaxq_s8(v515.val[1], v515.val[1]);
  v515.val[1] = vqtbl1q_s8(vmaxq_s8(v168, v169), xmmword_29D2F0F70);
  v188 = vqtbl1q_s8(vminq_s8(v168, v169), xmmword_29D2F0F70);
  v515.val[1] = vpmaxq_s8(v515.val[1], v515.val[1]);
  v189 = vpminq_s8(v188, v188);
  v515.val[1] = vpmaxq_s8(v515.val[1], v515.val[1]);
  v190 = vpminq_s8(v189, v189);
  v191 = vmaxq_s8(v186, v515.val[1]);
  v192 = vminq_s8(v515.val[0], v190);
  v515.val[1] = vzip1q_s8(v515.val[1], v190);
  v515.val[1] = vbicq_s8(vsubq_s8(v175, vclsq_s8(v515.val[1])), vceqzq_s8(v515.val[1]));
  v193 = vpmaxq_s8(v515.val[1], v515.val[1]);
  v194 = vmaxq_s8(vmaxq_s8(v177, v182), vmaxq_s8(v187, v193));
  v195 = vclzq_s8(vsubq_s8(v191, v192));
  v196 = vsubq_s8(v175, v195);
  v197 = vcgtq_s8(v194, v196);
  v198 = vminq_s8(v196, v194);
  v175.i64[0] = 0x909090909090909;
  v175.i64[1] = 0x909090909090909;
  v199.i64[0] = 0x202020202020202;
  v199.i64[1] = 0x202020202020202;
  v200 = vorrq_s8(vandq_s8(vceqzq_s8(v198), v199), vsubq_s8(vandq_s8(v197, v175), vmvnq_s8(v197)));
  v194.i64[0] = 0x303030303030303;
  v194.i64[1] = 0x303030303030303;
  v201 = vmaxq_s8(vminq_s8(vsubq_s8(v198, v177), v194), 0);
  v202 = v145;
  v203 = vmaxq_s8(vminq_s8(vsubq_s8(v198, v182), v194), 0);
  v204 = vmaxq_s8(vminq_s8(vsubq_s8(v198, v187), v194), 0);
  v205 = vmaxq_s8(vminq_s8(vsubq_s8(v198, v193), v194), 0);
  v206 = vsubq_s8(v198, v201);
  v207 = vsubq_s8(v198, v203);
  v208 = vsubq_s8(v198, v204);
  v209 = vsubq_s8(v198, v205);
  v194.i64[0] = 0x404040404040404;
  v194.i64[1] = 0x404040404040404;
  v210 = vorrq_s8(v200, vbicq_s8(v194, vceqq_s8(vaddq_s8(v205, v204), vnegq_s8(vaddq_s8(v201, v203)))));
  v211 = vmovl_s8(*v156.i8);
  v203.i64[0] = 0x8000800080008;
  v203.i64[1] = 0x8000800080008;
  v212 = vbicq_s8(vmovl_s8(*v176.i8), vceqzq_s16(vandq_s8(v211, v203)));
  v213.i64[0] = 0x3000300030003;
  v213.i64[1] = 0x3000300030003;
  v214 = vandq_s8(v211, v213);
  v213.i64[0] = 0x2000200020002;
  v213.i64[1] = 0x2000200020002;
  v215 = vaddq_s16(vaddq_s16(v212, vandq_s8(vshll_n_s8(*v156.i8, 1uLL), v203)), vandq_s8(vceqq_s16(v214, v213), v203));
  v145 = v202;
  v159 = v492;
  v216 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(v215, *v143.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v147.i8, *v492.i8), *v202.i8), 3uLL)), vaddw_s8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v208.i8, *v207.i8), *v209.i8), 3uLL), *v206.i8, 0x707070707070707), vand_s8(vadd_s8(*v210.i8, *v210.i8), 0x808080808080808)), vbic_s8(*v198.i8, vcgt_u8(0x808080808080808, *v210.i8))))), 0);
  if (vaddlvq_s8(v216))
  {
    v217.i64[0] = 0x707070707070707;
    v217.i64[1] = 0x707070707070707;
    v218 = vsubq_s8(v217, v195);
    v217.i64[0] = -1;
    v217.i64[1] = -1;
    v219 = vandq_s8(vsubq_s8(vshlq_s8(v217, v218), v192), v197);
    v6.i32[0] = vbslq_s8(v216, vextq_s8(v494, v494, 0xCuLL), v6).u32[0];
    v509 = vbslq_s8(v216, v171, v509);
    v158 = vbslq_s8(v216, v164, v158);
    v152 = vbslq_s8(v216, v165, v501);
    v153 = vbslq_s8(v216, v166, v503);
    v157 = vbslq_s8(v216, v167, v490);
    v154 = vbslq_s8(v216, v168, v505);
    v510 = vbslq_s8(v216, v170, v510);
    v511 = vbslq_s8(v216, v169, v511);
    v143 = vbslq_s8(v216, v206, v143);
    v159 = vbslq_s8(v216, v207, v492);
    v147 = vbslq_s8(v216, v208, v147);
    v145 = vbslq_s8(v216, v209, v202);
    v155 = vbslq_s8(v216, v219, v507);
    v60 = vbslq_s8(v216, v198, v176);
    v156 = vbslq_s8(v216, v210, v156);
  }

  else
  {
    v152 = v501;
    v153 = v503;
    v60 = v176;
    v154 = v505;
    v155 = v507;
    v157 = v490;
  }

LABEL_16:
  v220 = vmovl_s8(*v156.i8);
  v221.i64[0] = 0x8000800080008;
  v221.i64[1] = 0x8000800080008;
  v222 = vbicq_s8(vmovl_s8(*v60.i8), vceqzq_s16(vandq_s8(v220, v221)));
  v223.i64[0] = 0x3000300030003;
  v223.i64[1] = 0x3000300030003;
  v224 = vandq_s8(v220, v223);
  v223.i64[0] = 0x2000200020002;
  v223.i64[1] = 0x2000200020002;
  v225 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v147.i8, *v159.i8), *v145.i8), 3uLL), *v143.i8, 0x707070707070707), vandq_s8(vshll_n_s8(*v156.i8, 1uLL), v221)), v222), vandq_s8(vceqq_s16(v224, v223), v221));
  v226 = vpaddq_s16(v225, v225);
  v227 = vpaddq_s16(v226, v226).u64[0];
  if ((v227.i16[0] + 71) > 0x3FF)
  {
    *a1 = v493;
    a1[1] = v494;
    a1[2] = v508;
    a1[3] = v498;
    a1[4] = v497;
    a1[5] = v495;
    v231 = a1 + 6;
    v160 = 127;
    result = 128;
    *v231 = v496;
    v231[1] = v499;
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
    v232 = vzip1_s8(*v60.i8, v227);
    v233 = vadd_s16(v232, 0xFF00FF00FF00FFLL);
    v234 = vmovl_u16(vceqz_s16((*&v232 & 0xFF00FF00FF00FFLL)));
    v235.i64[0] = v234.u32[0];
    v235.i64[1] = v234.u32[1];
    v236 = vshrq_n_s64(vshlq_n_s64(v235, 0x38uLL), 0x38uLL);
    v235.i64[0] = v234.u32[2];
    v235.i64[1] = v234.u32[3];
    v237 = vshrq_n_s64(vshlq_n_s64(v235, 0x38uLL), 0x38uLL);
    v238 = vshlq_u32(vmovl_u16(vand_s8(v233, 0x7000700070007)), xmmword_29D2F1070);
    v235.i64[0] = v238.u32[0];
    v235.i64[1] = v238.u32[1];
    v239 = v235;
    v235.i64[0] = v238.u32[2];
    v235.i64[1] = v238.u32[3];
    v240 = vorrq_s8(vbicq_s8(v239, v236), vbicq_s8(v235, v237));
    v241 = *&vorr_s8(*v240.i8, *&vextq_s8(v240, v240, 8uLL)) | (32 * (v156.i8[1] & 0x1F)) | ((v156.i8[3] & 0x1F) << 15) | ((v156.i8[2] & 0x1F) << 10) | v156.i8[0] & 0x1F;
    v242 = v230 | (v241 << v229);
    if (v229 >= 0x20)
    {
      *v228 = v242;
      v242 = v241 >> (-8 * (a1 & 7u));
    }

    v243 = v6.u8[0] | (v6.u8[1] << 8) | (v6.u8[2] << 16) & 0xFFFFFFFF00FFFFFFLL | (v6.u8[3] << 24);
    v244 = (v229 + 32) & 0x38;
    v245 = v242 | (v243 << v244);
    if (v244 >= 0x20)
    {
      *(v228 + (((v229 + 32) >> 3) & 8)) = v245;
      v245 = v243 >> -v244;
    }

    v246 = vsubq_s8(v60, v143);
    v247 = vsubq_s8(v60, v159);
    v248 = vsubq_s8(v60, v147);
    v249 = vsubq_s8(v60, v145);
    v250 = vtrn1q_s8(v246, v247);
    v251 = vtrn2q_s8(v246, v247);
    v252 = vtrn1q_s8(v248, v249);
    v253 = vtrn2q_s8(v248, v249);
    v254 = vzip1q_s16(v251, v253);
    v255 = vtrn2q_s16(v251, v253);
    v253.i64[0] = vzip1q_s32(vzip1q_s16(v250, v252), v254).u64[0];
    v255.i64[0] = vzip1q_s32(vtrn2q_s16(v250, v252), v255).u64[0];
    v249.i64[0] = 0x202020202020202;
    v249.i64[1] = 0x202020202020202;
    v256 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(*v156.i8), 0x4000400040004)), v249);
    v249.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v249.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v250.i64[0] = -1;
    v250.i64[1] = -1;
    v257 = vshlq_u8(v250, vorrq_s8(v256, v249));
    v258 = vmovl_u8(vand_s8(*v257.i8, *v253.i8));
    v259 = vmovl_u8(vand_s8(*&vextq_s8(v257, v257, 8uLL), *v255.i8));
    v260 = vmovl_u8(*v256.i8);
    v261 = vmovl_high_u8(v256);
    v262 = vpaddq_s16(vshlq_u16(v258, vtrn1q_s16(0, v260)), vshlq_u16(v259, vtrn1q_s16(0, v261)));
    v263 = vpaddq_s16(v260, v261);
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
    v274 = (v272.i64[0] << v229) | v245;
    if (v273.i64[0] + v229 >= 0x40)
    {
      v228[1] = v274;
      v274 = v272.i64[0] >> (-8 * (a1 & 7u));
      if (!v229)
      {
        v274 = 0;
      }
    }

    v275 = vceqq_s8(v60, v143);
    v276 = v273.i64[0] + (v229 | 0x40);
    v277 = v274 | (v272.i64[1] << v276);
    if ((v276 & 0x3F) + v273.i64[1] >= 0x40)
    {
      *(v228 + ((v276 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v277;
      v277 = v272.i64[1] >> -(v276 & 0x3F);
      if ((v276 & 0x3F) == 0)
      {
        v277 = 0;
      }
    }

    v278 = vandq_s8(v155, v275);
    v279 = v276 + v273.i64[1];
    v280.i64[0] = 0x808080808080808;
    v280.i64[1] = 0x808080808080808;
    v281.i64[0] = -1;
    v281.i64[1] = -1;
    v282 = vandq_s8(vextq_s8(vtstq_s8(v156, v280), 0, 0xCuLL), v60);
    v283.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v283.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v284 = vandq_s8(vshlq_u8(v281, vaddq_s8(v282, v283)), v155);
    v285 = vmovl_u8(*v282.i8);
    v286 = vpaddq_s16(vshlq_u16(vmovl_u8(*v284.i8), vtrn1q_s16(0, v285)), vmovl_high_u8(v284));
    v287 = vpaddq_s16(v285, vmovl_high_u8(v282));
    v288 = vmovl_u16(*v287.i8);
    v289 = vmovl_high_u16(v287);
    v290 = vpaddq_s32(vshlq_u32(vmovl_u16(*v286.i8), vtrn1q_s32(0, v288)), vshlq_u32(vmovl_high_u16(v286), vtrn1q_s32(0, v289)));
    v291 = vpaddq_s32(v288, v289);
    v292.i64[0] = v290.u32[0];
    v292.i64[1] = v290.u32[1];
    v293 = v292;
    v292.i64[0] = v290.u32[2];
    v292.i64[1] = v290.u32[3];
    v294 = v292;
    v292.i64[0] = v291.u32[0];
    v292.i64[1] = v291.u32[1];
    v295 = v292;
    v292.i64[0] = v291.u32[2];
    v292.i64[1] = v291.u32[3];
    v296 = vpaddq_s64(vshlq_u64(v293, vzip1q_s64(0, v295)), vshlq_u64(v294, vzip1q_s64(0, v292)));
    v297 = vpaddq_s64(v295, v292);
    v298 = (v296.i64[0] << v279) | v277;
    if (v297.i64[0] + (v279 & 0x3F) >= 0x40)
    {
      *(v228 + ((v279 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v298;
      v298 = v296.i64[0] >> -(v279 & 0x3F);
      if ((v279 & 0x3F) == 0)
      {
        v298 = 0;
      }
    }

    v299 = vaddq_s8(v278, v509);
    v300 = v297.i64[0] + v279;
    v301 = v298 | (v296.i64[1] << v300);
    if ((v300 & 0x3F) + v297.i64[1] >= 0x40)
    {
      *(v228 + ((v300 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v301;
      v301 = v296.i64[1] >> -(v300 & 0x3F);
      if ((v300 & 0x3F) == 0)
      {
        v301 = 0;
      }
    }

    v302 = v300 + v297.i64[1];
    v303 = vextq_s8(0, v143, 0xCuLL);
    v304.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v304.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v305.i64[0] = -1;
    v305.i64[1] = -1;
    v306 = vandq_s8(vshlq_u8(v305, vaddq_s8(v303, v304)), v299);
    v307 = vmovl_u8(*v303.i8);
    v308 = vmovl_high_u8(v303);
    v309 = vpaddq_s16(vshlq_u16(vmovl_u8(*v306.i8), vtrn1q_s16(0, v307)), vshlq_u16(vmovl_high_u8(v306), vtrn1q_s16(0, v308)));
    v310 = vpaddq_s16(v307, v308);
    v311 = vmovl_u16(*v310.i8);
    v312 = vmovl_high_u16(v310);
    v313 = vpaddq_s32(vshlq_u32(vmovl_u16(*v309.i8), vtrn1q_s32(0, v311)), vshlq_u32(vmovl_high_u16(v309), vtrn1q_s32(0, v312)));
    v314 = vpaddq_s32(v311, v312);
    v315.i64[0] = v313.u32[0];
    v315.i64[1] = v313.u32[1];
    v316 = v315;
    v315.i64[0] = v313.u32[2];
    v315.i64[1] = v313.u32[3];
    v317 = v315;
    v315.i64[0] = v314.u32[0];
    v315.i64[1] = v314.u32[1];
    v318 = v315;
    v315.i64[0] = v314.u32[2];
    v315.i64[1] = v314.u32[3];
    v319 = vpaddq_s64(vshlq_u64(v316, vzip1q_s64(0, v318)), vshlq_u64(v317, vzip1q_s64(0, v315)));
    v320 = vpaddq_s64(v318, v315);
    v321 = (v319.i64[0] << v302) | v301;
    if (v320.i64[0] + (v302 & 0x3F) >= 0x40)
    {
      *(v228 + ((v302 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v321;
      v321 = v319.i64[0] >> -(v302 & 0x3F);
      if ((v302 & 0x3F) == 0)
      {
        v321 = 0;
      }
    }

    v322 = vceqq_s8(v60, v159);
    v323 = vaddq_s8(v510, v278);
    v324 = v320.i64[0] + v302;
    v325 = v321 | (v319.i64[1] << v324);
    if ((v324 & 0x3F) + v320.i64[1] >= 0x40)
    {
      *(v228 + ((v324 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v325;
      v325 = v319.i64[1] >> -(v324 & 0x3F);
      if ((v324 & 0x3F) == 0)
      {
        v325 = 0;
      }
    }

    v326 = vandq_s8(v155, v322);
    v327 = v324 + v320.i64[1];
    v328.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v328.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v329.i64[0] = -1;
    v329.i64[1] = -1;
    v330 = vandq_s8(vshlq_u8(v329, vaddq_s8(v143, v328)), v323);
    v331 = vmovl_u8(*v143.i8);
    v332 = vmovl_high_u8(v143);
    v333 = vpaddq_s16(vshlq_u16(vmovl_u8(*v330.i8), vtrn1q_s16(0, v331)), vshlq_u16(vmovl_high_u8(v330), vtrn1q_s16(0, v332)));
    v334 = vpaddq_s16(v331, v332);
    v335 = vmovl_u16(*v334.i8);
    v336 = vmovl_high_u16(v334);
    v337 = vpaddq_s32(vshlq_u32(vmovl_u16(*v333.i8), vtrn1q_s32(0, v335)), vshlq_u32(vmovl_high_u16(v333), vtrn1q_s32(0, v336)));
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
    v345 = (v343.i64[0] << v327) | v325;
    if (v344.i64[0] + (v327 & 0x3F) >= 0x40)
    {
      *(v228 + ((v327 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v345;
      v345 = v343.i64[0] >> -(v327 & 0x3F);
      if ((v327 & 0x3F) == 0)
      {
        v345 = 0;
      }
    }

    v346 = vaddq_s8(v158, v326);
    v347 = v344.i64[0] + v327;
    v348 = v345 | (v343.i64[1] << v347);
    if ((v347 & 0x3F) + v344.i64[1] >= 0x40)
    {
      *(v228 + ((v347 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v348;
      v348 = v343.i64[1] >> -(v347 & 0x3F);
      if ((v347 & 0x3F) == 0)
      {
        v348 = 0;
      }
    }

    v349 = v347 + v344.i64[1];
    v350.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v350.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v351.i64[0] = -1;
    v351.i64[1] = -1;
    v352 = vshlq_u8(v351, vaddq_s8(v159, v350));
    v353 = vandq_s8(v352, v346);
    v354 = vmovl_u8(*v353.i8);
    v355 = vmovl_high_u8(v353);
    v356 = vmovl_u8(*v159.i8);
    v357 = vmovl_high_u8(v159);
    v358 = vtrn1q_s16(0, v356);
    v359 = vtrn1q_s16(0, v357);
    v360 = vpaddq_s16(vshlq_u16(v354, v358), vshlq_u16(v355, v359));
    v361 = vpaddq_s16(v356, v357);
    v362 = vmovl_u16(*v360.i8);
    v363 = vmovl_high_u16(v360);
    v364 = vmovl_u16(*v361.i8);
    v365 = vmovl_high_u16(v361);
    v366 = vtrn1q_s32(0, v364);
    v367 = vtrn1q_s32(0, v365);
    v368 = vpaddq_s32(vshlq_u32(v362, v366), vshlq_u32(v363, v367));
    v369 = vpaddq_s32(v364, v365);
    v370.i64[0] = v368.u32[0];
    v370.i64[1] = v368.u32[1];
    v371 = v370;
    v370.i64[0] = v368.u32[2];
    v370.i64[1] = v368.u32[3];
    v372 = v370;
    v370.i64[0] = v369.u32[0];
    v370.i64[1] = v369.u32[1];
    v373 = v370;
    v370.i64[0] = v369.u32[2];
    v370.i64[1] = v369.u32[3];
    v374 = vzip1q_s64(0, v373);
    v375 = vzip1q_s64(0, v370);
    v376 = vpaddq_s64(vshlq_u64(v371, v374), vshlq_u64(v372, v375));
    v377 = vpaddq_s64(v373, v370);
    v378 = (v376.i64[0] << v349) | v348;
    if (v377.i64[0] + (v349 & 0x3F) >= 0x40)
    {
      *(v228 + ((v349 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v378;
      if ((v349 & 0x3F) != 0)
      {
        v378 = v376.i64[0] >> -(v349 & 0x3F);
      }

      else
      {
        v378 = 0;
      }
    }

    v379 = vceqq_s8(v60, v147);
    v380 = vaddq_s8(v152, v326);
    v381 = v377.i64[0] + v349;
    v382 = v378 | (v376.i64[1] << v381);
    if ((v381 & 0x3F) + v377.i64[1] >= 0x40)
    {
      *(v228 + ((v381 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v382;
      v382 = v376.i64[1] >> -(v381 & 0x3F);
      if ((v381 & 0x3F) == 0)
      {
        v382 = 0;
      }
    }

    v383 = vandq_s8(v155, v379);
    v384 = v381 + v377.i64[1];
    v385 = vandq_s8(v352, v380);
    v386 = vpaddq_s16(vshlq_u16(vmovl_u8(*v385.i8), v358), vshlq_u16(vmovl_high_u8(v385), v359));
    v387 = vpaddq_s32(vshlq_u32(vmovl_u16(*v386.i8), v366), vshlq_u32(vmovl_high_u16(v386), v367));
    v388.i64[0] = v387.u32[0];
    v388.i64[1] = v387.u32[1];
    v389 = v388;
    v388.i64[0] = v387.u32[2];
    v388.i64[1] = v387.u32[3];
    v390 = vpaddq_s64(vshlq_u64(v389, v374), vshlq_u64(v388, v375));
    v391 = (v390.i64[0] << v384) | v382;
    if (v377.i64[0] + (v384 & 0x3F) >= 0x40)
    {
      *(v228 + ((v384 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v391;
      v391 = v390.i64[0] >> -(v384 & 0x3F);
      if ((v384 & 0x3F) == 0)
      {
        v391 = 0;
      }
    }

    v392 = vaddq_s8(v153, v383);
    v393 = v377.i64[0] + v384;
    v394 = (v377.i64[0] + v384) & 0x3F;
    v395 = v391 | (v390.i64[1] << v393);
    if ((v393 & 0x3F) + v377.i64[1] >= 0x40)
    {
      *(v228 + ((v393 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v395;
      v395 = v390.i64[1] >> -v394;
      if (!v394)
      {
        v395 = 0;
      }
    }

    v396 = v393 + v377.i64[1];
    v397.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v397.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v398.i64[0] = -1;
    v398.i64[1] = -1;
    v399 = vshlq_u8(v398, vaddq_s8(v147, v397));
    v400 = vandq_s8(v399, v392);
    v401 = vmovl_u8(*v400.i8);
    v402 = vmovl_high_u8(v400);
    v403 = vmovl_u8(*v147.i8);
    v404 = vmovl_high_u8(v147);
    v405 = vtrn1q_s16(0, v403);
    v406 = vtrn1q_s16(0, v404);
    v407 = vpaddq_s16(vshlq_u16(v401, v405), vshlq_u16(v402, v406));
    v408 = vpaddq_s16(v403, v404);
    v409 = vmovl_u16(*v407.i8);
    v410 = vmovl_high_u16(v407);
    v411 = vmovl_u16(*v408.i8);
    v412 = vmovl_high_u16(v408);
    v413 = vtrn1q_s32(0, v411);
    v414 = vtrn1q_s32(0, v412);
    v415 = vpaddq_s32(vshlq_u32(v409, v413), vshlq_u32(v410, v414));
    v416 = vpaddq_s32(v411, v412);
    v417.i64[0] = v415.u32[0];
    v417.i64[1] = v415.u32[1];
    v418 = v417;
    v417.i64[0] = v415.u32[2];
    v417.i64[1] = v415.u32[3];
    v419 = v417;
    v417.i64[0] = v416.u32[0];
    v417.i64[1] = v416.u32[1];
    v420 = v417;
    v417.i64[0] = v416.u32[2];
    v417.i64[1] = v416.u32[3];
    v421 = vzip1q_s64(0, v420);
    v422 = vzip1q_s64(0, v417);
    v423 = vpaddq_s64(vshlq_u64(v418, v421), vshlq_u64(v419, v422));
    v424 = vpaddq_s64(v420, v417);
    v425 = (v423.i64[0] << v396) | v395;
    if (v424.i64[0] + (v396 & 0x3F) >= 0x40)
    {
      *(v228 + ((v396 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v425;
      if ((v396 & 0x3F) != 0)
      {
        v425 = v423.i64[0] >> -(v396 & 0x3F);
      }

      else
      {
        v425 = 0;
      }
    }

    v426 = vceqq_s8(v60, v145);
    v427 = vaddq_s8(v157, v383);
    v428 = v424.i64[0] + v396;
    v429 = v425 | (v423.i64[1] << v428);
    if ((v428 & 0x3F) + v424.i64[1] >= 0x40)
    {
      *(v228 + ((v428 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v429;
      v429 = v423.i64[1] >> -(v428 & 0x3F);
      if ((v428 & 0x3F) == 0)
      {
        v429 = 0;
      }
    }

    v430 = vandq_s8(v155, v426);
    v431 = v428 + v424.i64[1];
    v432 = vandq_s8(v399, v427);
    v433 = vpaddq_s16(vshlq_u16(vmovl_u8(*v432.i8), v405), vshlq_u16(vmovl_high_u8(v432), v406));
    v434 = vpaddq_s32(vshlq_u32(vmovl_u16(*v433.i8), v413), vshlq_u32(vmovl_high_u16(v433), v414));
    v435.i64[0] = v434.u32[0];
    v435.i64[1] = v434.u32[1];
    v436 = v435;
    v435.i64[0] = v434.u32[2];
    v435.i64[1] = v434.u32[3];
    v437 = vpaddq_s64(vshlq_u64(v436, v421), vshlq_u64(v435, v422));
    v438 = (v437.i64[0] << v431) | v429;
    if (v424.i64[0] + (v431 & 0x3F) >= 0x40)
    {
      *(v228 + ((v431 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v438;
      v438 = v437.i64[0] >> -(v431 & 0x3F);
      if ((v431 & 0x3F) == 0)
      {
        v438 = 0;
      }
    }

    v439 = vaddq_s8(v154, v430);
    v440 = v424.i64[0] + v431;
    v441 = (v424.i64[0] + v431) & 0x3F;
    v442 = v438 | (v437.i64[1] << v440);
    if ((v440 & 0x3F) + v424.i64[1] >= 0x40)
    {
      *(v228 + ((v440 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v442;
      v442 = v437.i64[1] >> -v441;
      if (!v441)
      {
        v442 = 0;
      }
    }

    v443 = v440 + v424.i64[1];
    v444.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v444.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v445.i64[0] = -1;
    v445.i64[1] = -1;
    v446 = vshlq_u8(v445, vaddq_s8(v145, v444));
    v447 = vandq_s8(v446, v439);
    v448 = vmovl_u8(*v447.i8);
    v449 = vmovl_high_u8(v447);
    v450 = vmovl_u8(*v145.i8);
    v451 = vmovl_high_u8(v145);
    v452 = vtrn1q_s16(0, v450);
    v453 = vtrn1q_s16(0, v451);
    v454 = vpaddq_s16(vshlq_u16(v448, v452), vshlq_u16(v449, v453));
    v455 = vpaddq_s16(v450, v451);
    v456 = vmovl_u16(*v454.i8);
    v457 = vmovl_high_u16(v454);
    v458 = vmovl_u16(*v455.i8);
    v459 = vmovl_high_u16(v455);
    v460 = vtrn1q_s32(0, v458);
    v461 = vtrn1q_s32(0, v459);
    v462 = vpaddq_s32(vshlq_u32(v456, v460), vshlq_u32(v457, v461));
    v463 = vpaddq_s32(v458, v459);
    v464.i64[0] = v462.u32[0];
    v464.i64[1] = v462.u32[1];
    v465 = v464;
    v464.i64[0] = v462.u32[2];
    v464.i64[1] = v462.u32[3];
    v466 = v464;
    v464.i64[0] = v463.u32[0];
    v464.i64[1] = v463.u32[1];
    v467 = v464;
    v464.i64[0] = v463.u32[2];
    v464.i64[1] = v463.u32[3];
    v468 = vzip1q_s64(0, v467);
    v469 = vzip1q_s64(0, v464);
    v470 = vpaddq_s64(vshlq_u64(v465, v468), vshlq_u64(v466, v469));
    v471 = vpaddq_s64(v467, v464);
    v472 = (v470.i64[0] << v443) | v442;
    if (v471.i64[0] + (v443 & 0x3F) > 0x3F)
    {
      *(v228 + ((v443 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v472;
      if ((v443 & 0x3F) != 0)
      {
        v472 = v470.i64[0] >> -(v443 & 0x3F);
      }

      else
      {
        v472 = 0;
      }
    }

    v473 = vaddq_s8(v511, v430);
    v474 = v471.i64[0] + v443;
    v475 = v472 | (v470.i64[1] << v474);
    if ((v474 & 0x3F) + v471.i64[1] >= 0x40)
    {
      *(v228 + ((v474 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v475;
      v475 = v470.i64[1] >> -(v474 & 0x3F);
      if ((v474 & 0x3F) == 0)
      {
        v475 = 0;
      }
    }

    v476 = v474 + v471.i64[1];
    v477 = vandq_s8(v446, v473);
    v478 = vpaddq_s16(vshlq_u16(vmovl_u8(*v477.i8), v452), vshlq_u16(vmovl_high_u8(v477), v453));
    v479 = vpaddq_s32(vshlq_u32(vmovl_u16(*v478.i8), v460), vshlq_u32(vmovl_high_u16(v478), v461));
    v480.i64[0] = v479.u32[0];
    v480.i64[1] = v479.u32[1];
    v481 = v480;
    v480.i64[0] = v479.u32[2];
    v480.i64[1] = v479.u32[3];
    v482 = vpaddq_s64(vshlq_u64(v481, v468), vshlq_u64(v480, v469));
    v483 = (v482.i64[0] << v476) | v475;
    if (v471.i64[0] + (v476 & 0x3F) >= 0x40)
    {
      *(v228 + ((v476 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v483;
      v483 = v482.i64[0] >> -(v476 & 0x3F);
      if ((v476 & 0x3F) == 0)
      {
        v483 = 0;
      }
    }

    v484 = v471.i64[0] + v476;
    v485 = (v471.i64[0] + v476) & 0x3F;
    v486 = v483 | (v482.i64[1] << (v471.i8[0] + v476));
    if ((v485 + v471.i64[1]) >= 0x40)
    {
      *(v228 + ((v484 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v486;
      v486 = v482.i64[1] >> -v485;
      if (!v485)
      {
        v486 = 0;
      }
    }

    v487 = v484 + v471.i64[1];
    if ((v487 & 0x3F) != 0)
    {
      *(v228 + ((v487 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v486;
    }

    result = (v487 - v229 + 7) >> 3;
    v160 = *a2 | (result - 1);
  }

LABEL_91:
  *a2 = v160;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(uint64_t result, uint64_t a2, int8x16_t *a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = a6;
  v7 = a5;
  v9 = a3;
  v11 = result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
    v9 = (v9 + result);
  }

  else
  {
    *a4 = 0;
  }

  v12 = 2 * a2;
  v13 = v6 - 2;
  if (v7 && v6 >= 3)
  {
    if (v13 >= 2)
    {
      v14 = 2;
    }

    else
    {
      v14 = v6 - 2;
    }

    if (v7 >= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = v7;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + v12, a2, v15, v14);
    v9 = (v9 + result);
  }

  else
  {
    a4[1] = 0;
  }

  v16 = v7 - 4;
  if (v7 >= 5 && v6)
  {
    if (v6 >= 2)
    {
      v17 = 2;
    }

    else
    {
      v17 = v6;
    }

    if (v16 >= 4)
    {
      v18 = 4;
    }

    else
    {
      v18 = v7 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + 64, a2, v18, v17);
    v9 = (v9 + result);
  }

  else
  {
    a4[2] = 0;
    if (v7 < 5)
    {
      goto LABEL_37;
    }
  }

  if (v6 >= 3)
  {
    if (v13 >= 2)
    {
      v19 = 2;
    }

    else
    {
      v19 = v6 - 2;
    }

    if (v16 >= 4)
    {
      v20 = 4;
    }

    else
    {
      v20 = v7 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, v11 + v12 + 64, a2, v20, v19);
    v9 = (v9 + result);
    v21 = v6 - 4;
    goto LABEL_38;
  }

LABEL_37:
  a4[3] = 0;
  v21 = v6 - 4;
  if (!v7)
  {
    goto LABEL_46;
  }

LABEL_38:
  if (v6 < 5)
  {
LABEL_46:
    a4[4] = 0;
    v24 = v6 - 6;
    if (!v7)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

  if (v21 >= 2)
  {
    v22 = 2;
  }

  else
  {
    v22 = v21;
  }

  if (v7 >= 4)
  {
    v23 = 4;
  }

  else
  {
    v23 = v7;
  }

  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 4 * a2, a2, v23, v22);
  v9 = (v9 + result);
  v24 = v6 - 6;
LABEL_47:
  if (v6 >= 7)
  {
    if (v24 >= 2)
    {
      v25 = 2;
    }

    else
    {
      v25 = v24;
    }

    if (v7 >= 4)
    {
      v26 = 4;
    }

    else
    {
      v26 = v7;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 6 * a2, a2, v26, v25);
    v9 = (v9 + result);
    if (v7 < 5)
    {
      goto LABEL_65;
    }

    goto LABEL_57;
  }

LABEL_56:
  a4[5] = 0;
  if (v7 < 5)
  {
    goto LABEL_65;
  }

LABEL_57:
  if (v6 >= 5)
  {
    if (v21 >= 2)
    {
      v27 = 2;
    }

    else
    {
      v27 = v21;
    }

    if (v16 >= 4)
    {
      v28 = 4;
    }

    else
    {
      v28 = v7 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, v11 + 4 * a2 + 64, a2, v28, v27);
    v9 = (v9 + result);
    goto LABEL_66;
  }

LABEL_65:
  a4[6] = 0;
  if (v7 < 5)
  {
LABEL_76:
    a4[7] = 0;
    return result;
  }

LABEL_66:
  if (v6 < 7)
  {
    goto LABEL_76;
  }

  if (v24 >= 2)
  {
    v29 = 2;
  }

  else
  {
    v29 = v24;
  }

  if (v16 >= 4)
  {
    v30 = 4;
  }

  else
  {
    v30 = v7 - 4;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, v11 + 6 * a2 + 64, a2, v30, v29);
}

double AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(void *a1, uint64_t a2)
{
  v2 = 8 * ((&v15 + 4) & 7);
  v15 |= 255 << v2;
  v3 = (v2 + 8) & 0x38;
  if (v3 - v2 + ((v2 + 8) & 0x40) + 8 <= 0x20)
  {
    v4 = v3 + 8;
    v5 = (v3 + 8) & 0x38;
    v6 = (v4 >> 6) + ((v2 + 8) >> 6);
    if (v5 - v2 + (v6 << 6) + 8 <= 0x20)
    {
      *(&v15 + v6) |= 255 << v5;
      v7 = v5 + 8;
      v8 = (v5 + 8) & 0x38;
      v9 = v6 + (v7 >> 6);
      if (v8 - v2 + (v9 << 6) + 8 <= 0x20)
      {
        v10 = 0;
        v11 = 8;
        do
        {
          v12 = 64 - v8;
          if (64 - v8 >= v11)
          {
            v12 = v11;
          }

          *(&v15 + v9) |= ((0xFFFFFFFFFFFFFFFFLL >> v10) & ~(-1 << v12)) << v8;
          v10 += v12;
          v13 = v12 + v8;
          v9 += v13 >> 6;
          v8 = v13 & 0x3F;
          v11 -= v12;
        }

        while (v11);
      }
    }
  }

  result = 0.0;
  *a1 = 0;
  *(a1 + a2) = 0;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(int8x16_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = 8 * (a3 & 7);
  v5 = a3 & 0xFFFFFFFFFFFFFFF8;
  v6 = v4 + 32;
  v7 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v4;
  if (v4 >= 0x21)
  {
    v7 |= *(v5 + 8) << (-8 * (a3 & 7u));
  }

  v8 = vdupq_n_s64(v7);
  v9 = vmovn_s64(vshlq_u64(v8, xmmword_29D2F0F40));
  v10.i16[0] = v7;
  v10.i16[1] = v7 >> 5;
  v10.i16[2] = v9.i16[0];
  v10.i16[3] = v9.i16[2];
  *v8.i8 = vand_s8(vmovn_s64(vshlq_u64(v8, xmmword_29D2F0F50)), 0x700000007);
  v8.i16[1] = v8.i16[2];
  v8.i16[2] = (v7 >> 26) & 7;
  v8.i16[3] = v7 >> 29;
  v11 = vuzp1_s8(vand_s8(v10, 0x1F001F001F001FLL), *v8.i8);
  *v8.i8 = vadd_s16(*v8.i8, 0x1000100010001);
  v12 = vuzp1_s8(*v8.i8, *v8.i8);
  v13 = v4 | 0x40;
  v14 = v6 & 0x38;
  v15 = (v5 + ((v6 >> 3) & 8));
  v16 = *v15 >> (v6 & 0x38);
  if (v14 >= 0x21)
  {
    v16 |= v15[1] << -v14;
  }

  v17 = (8 * (a3 & 7)) | 0x400;
  v18 = vdupq_lane_s32(v11, 0);
  v19.i64[0] = 0x303030303030303;
  v19.i64[1] = 0x303030303030303;
  v295 = vandq_s8(v18, v19);
  v20 = vbicq_s8(vdupq_lane_s32(v12, 0), vceqq_s8(v295, v19));
  v21.i64[0] = 0x202020202020202;
  v21.i64[1] = 0x202020202020202;
  v22 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(v11), 0x4000400040004)), v21);
  if (vmaxvq_s8(v22) < 1)
  {
    v30 = 0;
    v51.i64[0] = -1;
    v51.i64[1] = -1;
    v293 = v51;
    v294 = v51;
    v48 = v20;
    v49 = v20;
    v50 = v20;
    v290 = v51;
    v291 = v51;
    v47 = v20;
  }

  else
  {
    v23 = vmovl_u8(*&vpaddq_s8(v22, v22));
    v24 = vmovl_u16(*&vpaddq_s16(v23, v23));
    v25 = vpaddq_s32(v24, v24).u64[0];
    v26.i64[0] = v25;
    v26.i64[1] = HIDWORD(v25);
    v27 = v26;
    v28 = vaddvq_s64(v26);
    v29 = v28 <= 0x80 && v17 >= v28 + v13;
    v30 = !v29;
    v31 = 0uLL;
    if (v29)
    {
      v32 = vaddq_s64(vzip1q_s64(0, v27), vdupq_n_s64(v4));
      v31 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(v5 + 8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v32)), vshlq_u64(vdupq_lane_s64(*(v5 + 8), 0), vnegq_s64(v32)));
      if (v28 + v4 >= 0x81)
      {
        v31 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(*(v5 + 24), 0), vsubq_s64(vdupq_n_s64(0x80uLL), v32)), vshlq_u64(vdupq_laneq_s64(*(v5 + 24), 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v32))), v31);
      }

      v13 += v28;
    }

    v33 = vzip1_s32(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
    v34.i64[0] = v33.u32[0];
    v34.i64[1] = v33.u32[1];
    v35 = vshlq_u64(v31, vnegq_s64(v34));
    v36 = vuzp1q_s32(vzip1q_s64(v31, v35), vzip2q_s64(v31, v35));
    v37 = vshlq_u32(v36, vnegq_s32((*&v23 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v38 = vuzp1q_s16(vzip1q_s32(v36, v37), vzip2q_s32(v36, v37));
    v39 = vshlq_u16(v38, vnegq_s16((*&v22 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
    v40 = vuzp1q_s8(vzip1q_s16(v38, v39), vzip2q_s16(v38, v39));
    v39.i64[0] = 0x101010101010101;
    v39.i64[1] = 0x101010101010101;
    v41 = vshlq_s8(v39, v22);
    v39.i64[0] = -1;
    v39.i64[1] = -1;
    v42 = vqtbl1q_s8(vandq_s8(vaddq_s8(v41, v39), v40), xmmword_29D2F0F70);
    v43 = vdupq_lane_s32(*v42.i8, 0);
    v44 = vdupq_lane_s32(*v42.i8, 1);
    v45 = vdupq_laneq_s32(v42, 2);
    v46 = vdupq_laneq_s32(v42, 3);
    v47 = vsubq_s8(v20, v43);
    v48 = vsubq_s8(v20, v44);
    v49 = vsubq_s8(v20, v45);
    v50 = vsubq_s8(v20, v46);
    v294 = vceqzq_s8(v43);
    v290 = vceqzq_s8(v44);
    v291 = vceqzq_s8(v45);
    v293 = vceqzq_s8(v46);
  }

  v52.i64[0] = 0x808080808080808;
  v52.i64[1] = 0x808080808080808;
  v53 = 0uLL;
  v54 = vandq_s8(vextq_s8(vtstq_s8(v18, v52), 0, 0xCuLL), v20);
  v55 = vmovl_u8(*&vpaddq_s8(v54, v54));
  v56 = vmovl_u16(*&vpaddq_s16(v55, v55));
  v57 = vpaddq_s32(v56, v56).u64[0];
  v58.i64[0] = v57;
  v58.i64[1] = HIDWORD(v57);
  v59 = v58;
  v60 = vaddvq_s64(v58);
  v61 = v60 + v13;
  if (v60 <= 0x80 && v17 >= v61)
  {
    v63 = v13 & 0x3F;
    v64 = vaddq_s64(vzip1q_s64(0, v59), vdupq_n_s64(v63));
    v65 = (v5 + 8 * (v13 >> 6));
    v53 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v65, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v64)), vshlq_u64(vdupq_lane_s64(v65->i64[0], 0), vnegq_s64(v64)));
    if (v60 + v63 >= 0x81)
    {
      v53 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v65[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v64)), vshlq_u64(vdupq_laneq_s64(v65[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v64))), v53);
    }

    v13 = v61;
  }

  else
  {
    v30 = 1;
  }

  v66 = v18.i8[0] & 3;
  if (v66 == 2)
  {
    if (v17 < v13 + 4)
    {
      v30 = 1;
    }

    else
    {
      v13 += 4;
    }

    v67 = v17 < v13 + 4;
    if (v17 >= v13 + 4)
    {
      v13 += 4;
    }

    v30 |= v67;
  }

  v68 = 0uLL;
  v69 = vextq_s8(0, v47, 0xCuLL);
  v70 = vmovl_u8(*&vpaddq_s8(v69, v69));
  v71 = vmovl_u16(*&vpaddq_s16(v70, v70));
  v72 = vpaddq_s32(v71, v71).u64[0];
  v73.i64[0] = v72;
  v73.i64[1] = HIDWORD(v72);
  v74 = v73;
  v75 = vaddvq_s64(v73);
  v76 = v75 + v13;
  if (v75 <= 0x80 && v17 >= v76)
  {
    v79 = v13 & 0x3F;
    v80 = vaddq_s64(vzip1q_s64(0, v74), vdupq_n_s64(v79));
    v81 = (v5 + 8 * (v13 >> 6));
    v78 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v81, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v80)), vshlq_u64(vdupq_lane_s64(v81->i64[0], 0), vnegq_s64(v80)));
    if (v75 + v79 >= 0x81)
    {
      v78 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v81[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v80)), vshlq_u64(vdupq_laneq_s64(v81[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v80))), v78);
    }

    v13 = v76;
  }

  else
  {
    v30 = 1;
    v78 = 0uLL;
  }

  v82 = vmovl_u8(*&vpaddq_s8(v47, v47));
  v83 = vmovl_u16(*&vpaddq_s16(v82, v82));
  v84 = vpaddq_s32(v83, v83).u64[0];
  v85.i64[0] = v84;
  v85.i64[1] = HIDWORD(v84);
  v86 = v85;
  v87 = vaddvq_s64(v85);
  v88 = v87 + v13;
  if (v87 <= 0x80 && v17 >= v88)
  {
    v90 = v13 & 0x3F;
    v91 = vaddq_s64(vzip1q_s64(0, v86), vdupq_n_s64(v90));
    v92 = (v5 + 8 * (v13 >> 6));
    v68 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v92, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v91)), vshlq_u64(vdupq_lane_s64(v92->i64[0], 0), vnegq_s64(v91)));
    if (v87 + v90 >= 0x81)
    {
      v68 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v92[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v91)), vshlq_u64(vdupq_laneq_s64(v92[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v91))), v68);
    }

    v13 = v88;
  }

  else
  {
    v30 = 1;
  }

  v93 = vmovl_u8(*&vpaddq_s8(v48, v48));
  v94 = vmovl_u16(*&vpaddq_s16(v93, v93));
  v95 = vpaddq_s32(v94, v94).u64[0];
  v96.i64[0] = v95;
  v96.i64[1] = HIDWORD(v95);
  v97 = v96;
  v98 = vaddvq_s64(v96);
  v99 = v98 + v13;
  v100 = 0uLL;
  if (v98 <= 0x80 && v17 >= v99)
  {
    v103 = v13 & 0x3F;
    v104 = vaddq_s64(vzip1q_s64(0, v97), vdupq_n_s64(v103));
    v105 = (v5 + 8 * (v13 >> 6));
    v102 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v105, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v104)), vshlq_u64(vdupq_lane_s64(v105->i64[0], 0), vnegq_s64(v104)));
    if (v98 + v103 >= 0x81)
    {
      v102 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v105[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v104)), vshlq_u64(vdupq_laneq_s64(v105[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v104))), v102);
    }

    v13 = v99;
  }

  else
  {
    v30 = 1;
    v102 = 0uLL;
  }

  v106 = v98 + v13;
  if (v98 <= 0x80 && v17 >= v106)
  {
    v108 = v13 & 0x3F;
    v109 = vaddq_s64(vzip1q_s64(0, v97), vdupq_n_s64(v108));
    v110 = (v5 + 8 * (v13 >> 6));
    v100 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v110, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v109)), vshlq_u64(vdupq_lane_s64(v110->i64[0], 0), vnegq_s64(v109)));
    if (v98 + v108 >= 0x81)
    {
      v100 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v110[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v109)), vshlq_u64(vdupq_laneq_s64(v110[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v109))), v100);
    }

    v13 = v106;
  }

  else
  {
    v30 = 1;
  }

  v111 = vmovl_u8(*&vpaddq_s8(v49, v49));
  v112 = vmovl_u16(*&vpaddq_s16(v111, v111));
  v113 = vpaddq_s32(v112, v112).u64[0];
  v114.i64[0] = v113;
  v114.i64[1] = HIDWORD(v113);
  v115 = v114;
  v116 = vaddvq_s64(v114);
  v117 = v116 + v13;
  v118 = 0uLL;
  if (v116 <= 0x80 && v17 >= v117)
  {
    v121 = v13 & 0x3F;
    v122 = vaddq_s64(vzip1q_s64(0, v115), vdupq_n_s64(v121));
    v123 = (v5 + 8 * (v13 >> 6));
    v120 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v123, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v122)), vshlq_u64(vdupq_lane_s64(v123->i64[0], 0), vnegq_s64(v122)));
    if (v116 + v121 >= 0x81)
    {
      v120 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v123[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v122)), vshlq_u64(vdupq_laneq_s64(v123[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v122))), v120);
    }

    v13 = v117;
    if (v116 > 0x80)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v30 = 1;
    v120 = 0uLL;
    if (v116 > 0x80)
    {
      goto LABEL_78;
    }
  }

  v124 = v116 + v13;
  if (v17 < v116 + v13)
  {
LABEL_78:
    v124 = v13;
    v30 = 1;
    goto LABEL_79;
  }

  v125 = v13 & 0x3F;
  v126 = vaddq_s64(vzip1q_s64(0, v115), vdupq_n_s64(v125));
  v127 = (v5 + 8 * (v13 >> 6));
  v118 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v127, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v126)), vshlq_u64(vdupq_lane_s64(v127->i64[0], 0), vnegq_s64(v126)));
  if (v116 + v125 >= 0x81)
  {
    v118 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v127[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v126)), vshlq_u64(vdupq_laneq_s64(v127[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v126))), v118);
  }

LABEL_79:
  v292 = v50;
  v128 = vmovl_u8(*&vpaddq_s8(v50, v50));
  v129 = vmovl_u16(*&vpaddq_s16(v128, v128));
  v130 = vpaddq_s32(v129, v129).u64[0];
  v131.i64[0] = v130;
  v131.i64[1] = HIDWORD(v130);
  v132 = v131;
  v133 = vaddvq_s64(v131);
  v134 = v133;
  if (v133 > 0x80 || (v135 = v133 + v124, v17 < v133 + v124))
  {
    v135 = v124;
    v30 = 1;
    v139 = 0uLL;
  }

  else
  {
    v136 = v124 & 0x3F;
    v137 = vaddq_s64(vzip1q_s64(0, v132), vdupq_n_s64(v136));
    v138 = (v5 + 8 * (v124 >> 6));
    v139 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v138, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v137)), vshlq_u64(vdupq_lane_s64(v138->i64[0], 0), vnegq_s64(v137)));
    if (v134 + v136 >= 0x81)
    {
      v139 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v138[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v137)), vshlq_u64(vdupq_laneq_s64(v138[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v137))), v139);
    }
  }

  if (v134 > 0x80 || v17 < v134 + v135)
  {
    goto LABEL_93;
  }

  v140 = vaddq_s64(vzip1q_s64(0, v132), vdupq_n_s64(v135 & 0x3F));
  v141 = (v5 + 8 * (v135 >> 6));
  v142 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
  if (v134 + (v135 & 0x3F) >= 0x81)
  {
    v142 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v142);
  }

  if ((v30 & 1) != 0 || v17 + 8 * (a4 + 1) - (v134 + v135) - 1024 >= 9 || v66 == 2)
  {
LABEL_93:
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
    return 0;
  }

  else
  {
    v144 = vzip1_s32(*v56.i8, *&vextq_s8(v56, v56, 8uLL));
    v145 = vzip1_s32(*v71.i8, *&vextq_s8(v71, v71, 8uLL));
    v146 = vzip1_s32(*v83.i8, *&vextq_s8(v83, v83, 8uLL));
    v147 = vzip1_s32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
    v148 = vzip1_s32(*v112.i8, *&vextq_s8(v112, v112, 8uLL));
    v149 = vzip1_s32(*v129.i8, *&vextq_s8(v129, v129, 8uLL));
    v150.i64[0] = v144.u32[0];
    v150.i64[1] = v144.u32[1];
    v151 = vshlq_u64(v53, vnegq_s64(v150));
    v152 = vzip2q_s64(v53, v151);
    v153 = vzip1q_s64(v53, v151);
    v150.i64[0] = v145.u32[0];
    v150.i64[1] = v145.u32[1];
    v154 = vshlq_u64(v78, vnegq_s64(v150));
    v155 = vzip2q_s64(v78, v154);
    v156 = vzip1q_s64(v78, v154);
    v150.i64[0] = v146.u32[0];
    v150.i64[1] = v146.u32[1];
    v157 = vshlq_u64(v68, vnegq_s64(v150));
    v158 = vzip2q_s64(v68, v157);
    v159 = vzip1q_s64(v68, v157);
    v150.i64[0] = v147.u32[0];
    v150.i64[1] = v147.u32[1];
    v160 = vnegq_s64(v150);
    v161 = vshlq_u64(v102, v160);
    v162 = vzip2q_s64(v102, v161);
    v163 = vzip1q_s64(v102, v161);
    v164 = vshlq_u64(v100, v160);
    v165 = vzip2q_s64(v100, v164);
    v166 = vzip1q_s64(v100, v164);
    v150.i64[0] = v148.u32[0];
    v150.i64[1] = v148.u32[1];
    v167 = vnegq_s64(v150);
    v168 = vshlq_u64(v120, v167);
    v169 = vzip2q_s64(v120, v168);
    v170 = vzip1q_s64(v120, v168);
    v171 = vshlq_u64(v118, v167);
    v172 = vzip2q_s64(v118, v171);
    v173 = vzip1q_s64(v118, v171);
    v150.i64[0] = v149.u32[0];
    v150.i64[1] = v149.u32[1];
    v174 = vnegq_s64(v150);
    v175 = vshlq_u64(v139, v174);
    v176 = vzip2q_s64(v139, v175);
    v177 = vzip1q_s64(v139, v175);
    v178 = vuzp1q_s32(v153, v152);
    v179 = vuzp1q_s32(v156, v155);
    v180 = vuzp1q_s32(v159, v158);
    v181 = vuzp1q_s32(v163, v162);
    v182 = vnegq_s32((*&v55 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v183 = vnegq_s32((*&v93 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v184 = vuzp1q_s32(v166, v165);
    v185 = vuzp1q_s32(v170, v169);
    v186 = vnegq_s32((*&v111 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v187 = vuzp1q_s32(v173, v172);
    v188 = vuzp1q_s32(v177, v176);
    v189 = vnegq_s32((*&v128 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v190 = vshlq_u32(v178, v182);
    v191 = vshlq_u32(v181, v183);
    v192 = vshlq_u32(v184, v183);
    v193 = vshlq_u32(v185, v186);
    v194 = vshlq_u32(v187, v186);
    v195 = vshlq_u32(v188, v189);
    v196 = vuzp1q_s16(vzip1q_s32(v178, v190), vzip2q_s32(v178, v190));
    v197 = vuzp1q_s16(vzip1q_s32(v181, v191), vzip2q_s32(v181, v191));
    v198 = vuzp1q_s16(vzip1q_s32(v184, v192), vzip2q_s32(v184, v192));
    v199 = vuzp1q_s16(vzip1q_s32(v185, v193), vzip2q_s32(v185, v193));
    v200 = vnegq_s16((*&v48 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v201 = vuzp1q_s16(vzip1q_s32(v187, v194), vzip2q_s32(v187, v194));
    v202 = vuzp1q_s16(vzip1q_s32(v188, v195), vzip2q_s32(v188, v195));
    v203 = vshlq_u16(v196, vnegq_s16((*&v54 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v204 = vshlq_u16(v197, v200);
    v205 = vshlq_u16(v198, v200);
    v206 = vzip2q_s16(v196, v203);
    v207 = vzip1q_s16(v196, v203);
    v208 = vuzp1q_s8(vzip1q_s16(v198, v205), vzip2q_s16(v198, v205));
    v205.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v205.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v203.i64[0] = 0x808080808080808;
    v203.i64[1] = 0x808080808080808;
    v209 = vsubq_s8(v203, v54);
    v210 = vaddq_s8(v54, v205);
    v211.i64[0] = 0x808080808080808;
    v211.i64[1] = 0x808080808080808;
    v212 = vshlq_s8(vuzp1q_s8(v207, v206), v209);
    v209.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v209.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v213 = vsubq_s8(v211, v48);
    v214 = vaddq_s8(v48, v209);
    v215 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v197, v204), vzip2q_s16(v197, v204)), v213);
    v216 = vshlq_s8(v208, v213);
    v217 = vnegq_s16((*&v49 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v218 = vshlq_s8(v212, v210);
    v219 = vshlq_s8(v215, v214);
    v220 = vshlq_s8(v216, v214);
    v221 = vdupq_lane_s32(*v218.i8, 0);
    v222 = vandq_s8(v290, v221);
    v223 = vsubq_s8(v219, v222);
    v224 = vsubq_s8(v220, v222);
    v225 = vshlq_u16(v199, v217);
    v226 = vshlq_u16(v201, v217);
    v227 = vuzp1q_s8(vzip1q_s16(v199, v225), vzip2q_s16(v199, v225));
    v222.i64[0] = 0x808080808080808;
    v222.i64[1] = 0x808080808080808;
    v199.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v199.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v228 = vsubq_s8(v222, v49);
    v229 = vaddq_s8(v49, v199);
    v230 = vshlq_s8(v227, v228);
    v231 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v201, v226), vzip2q_s16(v201, v226)), v228);
    v232 = vnegq_s16((*&v292 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v233 = vshlq_s8(v231, v229);
    v234 = vandq_s8(v291, v221);
    v235 = vsubq_s8(vshlq_s8(v230, v229), v234);
    v236 = vsubq_s8(v233, v234);
    v237 = vshlq_u16(v202, v232);
    v238 = vzip2q_s16(v202, v237);
    v239 = vzip1q_s16(v202, v237);
    v202.i64[0] = 0x808080808080808;
    v202.i64[1] = 0x808080808080808;
    v240 = vuzp1q_s8(v239, v238);
    v238.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v238.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v241 = vsubq_s8(v202, v292);
    v242 = vaddq_s8(v292, v238);
    v243 = vshlq_u64(v142, v174);
    v244 = vuzp1q_s32(vzip1q_s64(v142, v243), vzip2q_s64(v142, v243));
    v245 = vshlq_u32(v244, v189);
    v246 = vuzp1q_s16(vzip1q_s32(v244, v245), vzip2q_s32(v244, v245));
    v247 = vshlq_u16(v246, v232);
    v248 = vshlq_s8(vshlq_s8(v240, v241), v242);
    v249 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v246, v247), vzip2q_s16(v246, v247)), v241), v242);
    v250 = vandq_s8(v293, v221);
    v251 = vsubq_s8(v248, v250);
    v252 = vsubq_s8(v249, v250);
    v253 = vshlq_u32(v179, vnegq_s32((*&v70 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v254 = vshlq_u32(v180, vnegq_s32((*&v82 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v255 = vuzp1q_s16(vzip1q_s32(v179, v253), vzip2q_s32(v179, v253));
    *v248.i8 = vmovn_s64(vshlq_u64(vdupq_n_s64(v16), xmmword_29D2F0F60));
    v256 = vuzp1q_s16(vzip1q_s32(v180, v254), vzip2q_s32(v180, v254));
    v257 = vshlq_u16(v255, vnegq_s16((*&v69 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v258 = vshlq_u16(v256, vnegq_s16((*&v47 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v259 = vzip2q_s16(v255, v257);
    v260 = vzip1q_s16(v255, v257);
    v261 = vzip2q_s16(v256, v258);
    v262 = vzip1q_s16(v256, v258);
    v258.i16[0] = v16;
    v263 = v248.i8[4];
    v258.i8[2] = v248.i8[0];
    v264 = vuzp1q_s8(v260, v259);
    v260.i64[0] = 0x808080808080808;
    v260.i64[1] = 0x808080808080808;
    v265 = vuzp1q_s8(v262, v261);
    v261.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v261.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v266 = vshlq_s8(vshlq_s8(v265, vsubq_s8(v260, v47)), vaddq_s8(v47, v261));
    v267 = vaddq_s8(vandq_s8(v218, v294), vshlq_s8(vshlq_s8(v264, vsubq_s8(v260, v69)), vaddq_s8(v69, v261)));
    v268 = vandq_s8(v294, v221);
    v269.i64[0] = 0x101010101010101;
    v269.i64[1] = 0x101010101010101;
    v270 = vsubq_s8(v267, v268);
    v271 = vsubq_s8(v266, v268);
    v258.i8[3] = v263;
    v272 = vdupq_lane_s32(*v258.i8, 0);
    if (vaddlvq_s8(vceqq_s8(v295, v269)))
    {
      v273 = vnegq_s8(vandq_s8(v18, v269));
      v274 = v271;
      v274.i32[3] = v270.i32[0];
      v275 = v270;
      v275.i32[0] = v271.i32[3];
      v296.val[0] = vbslq_s8(v273, v275, v270);
      v296.val[1] = vbslq_s8(v273, v274, v271);
      v274.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
      v274.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
      v297.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(v296, xmmword_29D2F0F80), v273), v296.val[0]);
      v297.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(v296, v274), v273), v296.val[1]);
      v270 = vaddq_s8(vandq_s8(vqtbl2q_s8(v297, xmmword_29D2F0F90), v273), v297.val[0]);
      v271 = vaddq_s8(vandq_s8(vqtbl2q_s8(v297, v274), v273), v297.val[1]);
      v297.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v223.i8, xmmword_29D2F0FA0), v273), v223);
      v297.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v223.i8, xmmword_29D2F0FB0), v273), v224);
      v223 = vaddq_s8(vandq_s8(vqtbl2q_s8(v297, xmmword_29D2F0FC0), v273), v297.val[0]);
      v224 = vaddq_s8(vandq_s8(vqtbl2q_s8(v297, v274), v273), v297.val[1]);
      v297.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v235.i8, xmmword_29D2F0FD0), v273), v235);
      v297.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v235.i8, xmmword_29D2F0F80), v273), v236);
      v235 = vaddq_s8(vandq_s8(vqtbl2q_s8(v297, v274), v273), v297.val[0]);
      v236 = vaddq_s8(vandq_s8(vqtbl2q_s8(v297, xmmword_29D2F0FE0), v273), v297.val[1]);
      v296.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v251.i8, xmmword_29D2F0FF0), v273), v251);
      v296.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v251.i8, xmmword_29D2F0F80), v273), v252);
      v251 = vaddq_s8(vandq_s8(vqtbl2q_s8(v296, v274), v273), v296.val[0]);
      v252 = vaddq_s8(vandq_s8(vqtbl2q_s8(v296, xmmword_29D2F1000), v273), v296.val[1]);
    }

    v276 = vaddq_s8(v270, v272);
    v277 = vaddq_s8(v271, v272);
    v278 = vaddq_s8(v223, v272);
    v279 = vaddq_s8(v224, v272);
    v280 = vaddq_s8(v235, v272);
    v281 = vaddq_s8(v236, v272);
    v282 = vaddq_s8(v251, v272);
    v283 = vaddq_s8(v252, v272);
    v284.i64[0] = 0x1010101010101010;
    v284.i64[1] = 0x1010101010101010;
    v285 = v18.i8[1];
    v286 = vtstq_s8(v18, v284);
    if ((v285 & 0x10) != 0)
    {
      v286.i8[1] = v286.i8[2];
      v286.i8[2] = 0;
      v286 = vdupq_lane_s32(*v286.i8, 0);
      v287 = xmmword_29D2F1020;
    }

    else
    {
      v287 = xmmword_29D2F1010;
    }

    v288 = a1 + 2;
    *a1 = vaddq_s8(vandq_s8(vqtbl1q_s8(v276, v287), v286), v276);
    a1[1] = vaddq_s8(vandq_s8(vqtbl1q_s8(v277, v287), v286), v277);
    v289 = (a1 + a2);
    *v288 = vaddq_s8(vandq_s8(vqtbl1q_s8(v278, v287), v286), v278);
    v288[1] = vaddq_s8(vandq_s8(vqtbl1q_s8(v279, v287), v286), v279);
    *v289 = vaddq_s8(vandq_s8(vqtbl1q_s8(v280, v287), v286), v280);
    v289[1] = vaddq_s8(vandq_s8(vqtbl1q_s8(v281, v287), v286), v281);
    v289 += 2;
    *v289 = vaddq_s8(vandq_s8(vqtbl1q_s8(v282, v287), v286), v282);
    v289[1] = vaddq_s8(vandq_s8(vqtbl1q_s8(v283, v287), v286), v283);
    return a4 + 1;
  }
}

_OWORD *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(_OWORD *result, uint64_t a2, _OWORD *a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = 0;
  if (a5 && a6)
  {
    v7 = result[1];
    v8 = result[2];
    v9 = result[3];
    v10 = *(result + a2);
    v11 = *(result + a2 + 16);
    v12 = *(result + a2 + 32);
    v13 = *(result + a2 + 48);
    *a3 = *result;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v9;
    a3[4] = v10;
    a3[5] = v11;
    a3[6] = v12;
    a3[7] = v13;
    a3 += 8;
    v6 = 127;
  }

  v14 = 0;
  *a4 = v6;
  if (a5 >= 3 && a6)
  {
    v16 = result[5];
    v15 = (result + a2 + 64);
    v17 = result[6];
    v18 = result[7];
    v19 = *v15;
    v20 = v15[1];
    v15 += 2;
    v21 = *v15;
    v22 = v15[1];
    *a3 = result[4];
    a3[1] = v16;
    a3[2] = v17;
    a3[3] = v18;
    a3[4] = v19;
    a3[5] = v20;
    a3[6] = v21;
    a3[7] = v22;
    a3 += 8;
    v14 = 127;
  }

  v23 = 0;
  v24 = 2 * a2;
  a4[1] = v14;
  if (a5 && a6 >= 3)
  {
    v26 = *(result + v24 + 16);
    v25 = (result + v24 + a2);
    v27 = *(result + v24 + 32);
    v28 = *(result + v24 + 48);
    v29 = *v25;
    v30 = v25[1];
    v25 += 2;
    v31 = *v25;
    v32 = v25[1];
    *a3 = *(result + 2 * a2);
    a3[1] = v26;
    a3[2] = v27;
    a3[3] = v28;
    a3[4] = v29;
    a3[5] = v30;
    a3[6] = v31;
    a3[7] = v32;
    a3 += 8;
    v23 = 127;
  }

  v33 = 0;
  a4[2] = v23;
  if (a5 >= 3 && a6 >= 3)
  {
    v34 = (result + v24 + 64);
    v36 = *v34;
    v37 = *(result + v24 + 80);
    v35 = (v34 + a2);
    v38 = *(result + v24 + 96);
    v39 = *(result + v24 + 112);
    v40 = *v35;
    v41 = v35[1];
    v35 += 2;
    v42 = *v35;
    v43 = v35[1];
    *a3 = v36;
    a3[1] = v37;
    a3[2] = v38;
    a3[3] = v39;
    a3[4] = v40;
    a3[5] = v41;
    a3[6] = v42;
    a3[7] = v43;
    a3 += 8;
    v33 = 127;
  }

  v44 = 0;
  a4[3] = v33;
  if (a5 >= 5 && a6)
  {
    v46 = result[9];
    v45 = (result + a2 + 128);
    v47 = result[10];
    v48 = result[11];
    v49 = *v45;
    v50 = v45[1];
    v45 += 2;
    v51 = *v45;
    v52 = v45[1];
    *a3 = result[8];
    a3[1] = v46;
    a3[2] = v47;
    a3[3] = v48;
    a3[4] = v49;
    a3[5] = v50;
    a3[6] = v51;
    a3[7] = v52;
    a3 += 8;
    v44 = 127;
  }

  v53 = 0;
  a4[4] = v44;
  if (a5 >= 7 && a6)
  {
    v55 = result[13];
    v54 = (result + a2 + 192);
    v56 = result[14];
    v57 = result[15];
    v58 = *v54;
    v59 = v54[1];
    v54 += 2;
    v60 = *v54;
    v61 = v54[1];
    *a3 = result[12];
    a3[1] = v55;
    a3[2] = v56;
    a3[3] = v57;
    a3[4] = v58;
    a3[5] = v59;
    a3[6] = v60;
    a3[7] = v61;
    a3 += 8;
    v53 = 127;
  }

  v62 = 0;
  a4[5] = v53;
  if (a5 >= 5 && a6 >= 3)
  {
    v63 = (result + v24 + 128);
    v65 = *v63;
    v66 = *(result + v24 + 144);
    v64 = (v63 + a2);
    v67 = *(result + v24 + 160);
    v68 = *(result + v24 + 176);
    v69 = *v64;
    v70 = v64[1];
    v64 += 2;
    v71 = *v64;
    v72 = v64[1];
    *a3 = v65;
    a3[1] = v66;
    a3[2] = v67;
    a3[3] = v68;
    a3[4] = v69;
    a3[5] = v70;
    a3[6] = v71;
    a3[7] = v72;
    a3 += 8;
    v62 = 127;
  }

  v73 = 0;
  a4[6] = v62;
  if (a5 >= 7 && a6 >= 3)
  {
    v74 = (result + v24);
    v76 = v74[12];
    v77 = v74[13];
    v75 = (v74 + a2 + 192);
    v74 += 14;
    v78 = *v74;
    v79 = v74[1];
    v80 = *v75;
    v81 = v75[1];
    v75 += 2;
    v82 = *v75;
    v83 = v75[1];
    *a3 = v76;
    a3[1] = v77;
    a3[2] = v78;
    a3[3] = v79;
    a3[4] = v80;
    a3[5] = v81;
    a3[6] = v82;
    a3[7] = v83;
    v73 = 127;
  }

  a4[7] = v73;
  return result;
}

int8x16_t *AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressMacroblock(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  if (v6 == 127)
  {
    v9 = *(a2 + 16);
    v10 = *(a2 + 32);
    v11 = *(a2 + 48);
    v12 = *(a2 + 64);
    v13 = *(a2 + 80);
    v14 = *(a2 + 96);
    v15 = *(a2 + 112);
    *a1 = *a2;
    *(a1 + 16) = v9;
    *(a1 + 32) = v10;
    *(a1 + 48) = v11;
    *(a1 + 256) = v12;
    *(a1 + 272) = v13;
    *(a1 + 288) = v14;
    *(a1 + 304) = v15;
    v7 = 128;
  }

  else if (v6 == 3)
  {
    v8 = vld1q_dup_f32(a2);
    *a1 = v8;
    *(a1 + 16) = v8;
    *(a1 + 32) = v8;
    *(a1 + 48) = v8;
    *(a1 + 256) = v8;
    *(a1 + 272) = v8;
    *(a1 + 288) = v8;
    *(a1 + 304) = v8;
    v7 = 4;
  }

  else if (*a3)
  {
    v7 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(a1, 256, a2, v6);
  }

  else
  {
    v7 = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 256) = 0u;
    *(a1 + 272) = 0u;
    *(a1 + 288) = 0u;
    *(a1 + 304) = 0u;
  }

  v16 = a2 + v7;
  v17 = (a1 + 64);
  v18 = a3[1];
  if (a3[1])
  {
    if (v18 == 3)
    {
      v27 = vld1q_dup_f32(v16);
      *(a1 + 64) = v27;
      *(a1 + 80) = v27;
      *(a1 + 96) = v27;
      *(a1 + 112) = v27;
      *(a1 + 320) = v27;
      *(a1 + 336) = v27;
      *(a1 + 352) = v27;
      *(a1 + 368) = v27;
      v26 = 4;
    }

    else if (v18 == 127)
    {
      v19 = *(v16 + 16);
      v20 = *(v16 + 32);
      v21 = *(v16 + 48);
      v22 = *(v16 + 64);
      v23 = *(v16 + 80);
      v24 = *(v16 + 96);
      v25 = *(v16 + 112);
      *v17 = *v16;
      *(a1 + 80) = v19;
      *(a1 + 96) = v20;
      *(a1 + 112) = v21;
      *(a1 + 320) = v22;
      *(a1 + 336) = v23;
      *(a1 + 352) = v24;
      *(a1 + 368) = v25;
      v26 = 128;
    }

    else
    {
      v26 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v17, 256, v16, v18);
    }
  }

  else
  {
    v26 = 0;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *v17 = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 320) = 0u;
    *(a1 + 336) = 0u;
    *(a1 + 352) = 0u;
    *(a1 + 368) = 0u;
  }

  v28 = v16 + v26;
  v29 = (a1 + 512);
  v30 = a3[2];
  if (a3[2])
  {
    if (v30 == 3)
    {
      v39 = vld1q_dup_f32(v28);
      *(a1 + 512) = v39;
      *(a1 + 528) = v39;
      *(a1 + 544) = v39;
      *(a1 + 560) = v39;
      *(a1 + 768) = v39;
      *(a1 + 784) = v39;
      *(a1 + 800) = v39;
      *(a1 + 816) = v39;
      v38 = 4;
    }

    else if (v30 == 127)
    {
      v31 = *(v28 + 16);
      v32 = *(v28 + 32);
      v33 = *(v28 + 48);
      v34 = *(v28 + 64);
      v35 = *(v28 + 80);
      v36 = *(v28 + 96);
      v37 = *(v28 + 112);
      *v29 = *v28;
      *(a1 + 528) = v31;
      *(a1 + 544) = v32;
      *(a1 + 560) = v33;
      *(a1 + 768) = v34;
      *(a1 + 784) = v35;
      *(a1 + 800) = v36;
      *(a1 + 816) = v37;
      v38 = 128;
    }

    else
    {
      v38 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v29, 256, v28, v30);
    }
  }

  else
  {
    v38 = 0;
    *(a1 + 544) = 0u;
    *(a1 + 560) = 0u;
    *v29 = 0u;
    *(a1 + 528) = 0u;
    *(a1 + 768) = 0u;
    *(a1 + 784) = 0u;
    *(a1 + 800) = 0u;
    *(a1 + 816) = 0u;
  }

  v40 = v28 + v38;
  v41 = (a1 + 576);
  v42 = a3[3];
  if (a3[3])
  {
    if (v42 == 3)
    {
      v51 = vld1q_dup_f32(v40);
      *(a1 + 576) = v51;
      *(a1 + 592) = v51;
      *(a1 + 608) = v51;
      *(a1 + 624) = v51;
      *(a1 + 832) = v51;
      *(a1 + 848) = v51;
      *(a1 + 864) = v51;
      *(a1 + 880) = v51;
      v50 = 4;
    }

    else if (v42 == 127)
    {
      v43 = *(v40 + 16);
      v44 = *(v40 + 32);
      v45 = *(v40 + 48);
      v46 = *(v40 + 64);
      v47 = *(v40 + 80);
      v48 = *(v40 + 96);
      v49 = *(v40 + 112);
      *v41 = *v40;
      *(a1 + 592) = v43;
      *(a1 + 608) = v44;
      *(a1 + 624) = v45;
      *(a1 + 832) = v46;
      *(a1 + 848) = v47;
      *(a1 + 864) = v48;
      *(a1 + 880) = v49;
      v50 = 128;
    }

    else
    {
      v50 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v41, 256, v40, v42);
    }
  }

  else
  {
    v50 = 0;
    *(a1 + 608) = 0u;
    *(a1 + 624) = 0u;
    *v41 = 0u;
    *(a1 + 592) = 0u;
    *(a1 + 832) = 0u;
    *(a1 + 848) = 0u;
    *(a1 + 864) = 0u;
    *(a1 + 880) = 0u;
  }

  v52 = v40 + v50;
  v53 = (a1 + 128);
  v54 = a3[4];
  if (a3[4])
  {
    if (v54 == 3)
    {
      v63 = vld1q_dup_f32(v52);
      *(a1 + 128) = v63;
      *(a1 + 144) = v63;
      *(a1 + 160) = v63;
      *(a1 + 176) = v63;
      *(a1 + 384) = v63;
      *(a1 + 400) = v63;
      *(a1 + 416) = v63;
      *(a1 + 432) = v63;
      v62 = 4;
    }

    else if (v54 == 127)
    {
      v55 = *(v52 + 16);
      v56 = *(v52 + 32);
      v57 = *(v52 + 48);
      v58 = *(v52 + 64);
      v59 = *(v52 + 80);
      v60 = *(v52 + 96);
      v61 = *(v52 + 112);
      *v53 = *v52;
      *(a1 + 144) = v55;
      *(a1 + 160) = v56;
      *(a1 + 176) = v57;
      *(a1 + 384) = v58;
      *(a1 + 400) = v59;
      *(a1 + 416) = v60;
      *(a1 + 432) = v61;
      v62 = 128;
    }

    else
    {
      v62 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v53, 256, v52, v54);
    }
  }

  else
  {
    v62 = 0;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *v53 = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 384) = 0u;
    *(a1 + 400) = 0u;
    *(a1 + 416) = 0u;
    *(a1 + 432) = 0u;
  }

  v64 = v52 + v62;
  v65 = (a1 + 192);
  v66 = a3[5];
  if (a3[5])
  {
    if (v66 == 3)
    {
      v75 = vld1q_dup_f32(v64);
      *(a1 + 192) = v75;
      *(a1 + 208) = v75;
      *(a1 + 224) = v75;
      *(a1 + 240) = v75;
      *(a1 + 448) = v75;
      *(a1 + 464) = v75;
      *(a1 + 480) = v75;
      *(a1 + 496) = v75;
      v74 = 4;
    }

    else if (v66 == 127)
    {
      v67 = *(v64 + 16);
      v68 = *(v64 + 32);
      v69 = *(v64 + 48);
      v70 = *(v64 + 64);
      v71 = *(v64 + 80);
      v72 = *(v64 + 96);
      v73 = *(v64 + 112);
      *v65 = *v64;
      *(a1 + 208) = v67;
      *(a1 + 224) = v68;
      *(a1 + 240) = v69;
      *(a1 + 448) = v70;
      *(a1 + 464) = v71;
      *(a1 + 480) = v72;
      *(a1 + 496) = v73;
      v74 = 128;
    }

    else
    {
      v74 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v65, 256, v64, v66);
    }
  }

  else
  {
    v74 = 0;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *v65 = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 448) = 0u;
    *(a1 + 464) = 0u;
    *(a1 + 480) = 0u;
    *(a1 + 496) = 0u;
  }

  v76 = v64 + v74;
  v77 = (a1 + 640);
  v78 = a3[6];
  if (a3[6])
  {
    if (v78 == 3)
    {
      v87 = vld1q_dup_f32(v76);
      *(a1 + 640) = v87;
      *(a1 + 656) = v87;
      *(a1 + 672) = v87;
      *(a1 + 688) = v87;
      *(a1 + 896) = v87;
      *(a1 + 912) = v87;
      *(a1 + 928) = v87;
      *(a1 + 944) = v87;
      v86 = 4;
    }

    else if (v78 == 127)
    {
      v79 = *(v76 + 16);
      v80 = *(v76 + 32);
      v81 = *(v76 + 48);
      v82 = *(v76 + 64);
      v83 = *(v76 + 80);
      v84 = *(v76 + 96);
      v85 = *(v76 + 112);
      *v77 = *v76;
      *(a1 + 656) = v79;
      *(a1 + 672) = v80;
      *(a1 + 688) = v81;
      *(a1 + 896) = v82;
      *(a1 + 912) = v83;
      *(a1 + 928) = v84;
      *(a1 + 944) = v85;
      v86 = 128;
    }

    else
    {
      v86 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(v77, 256, v76, v78);
    }
  }

  else
  {
    v86 = 0;
    *(a1 + 672) = 0u;
    *(a1 + 688) = 0u;
    *v77 = 0u;
    *(a1 + 656) = 0u;
    *(a1 + 896) = 0u;
    *(a1 + 912) = 0u;
    *(a1 + 928) = 0u;
    *(a1 + 944) = 0u;
  }

  result = (a1 + 704);
  v89 = a3[7];
  if (!a3[7])
  {
    v98 = 0uLL;
    *(a1 + 736) = 0u;
    *(a1 + 752) = 0u;
    *result = 0u;
    *(a1 + 720) = 0u;
    goto LABEL_56;
  }

  v90 = v76 + v86;
  if (v89 == 3)
  {
    v98 = vld1q_dup_f32(v90);
    *(a1 + 704) = v98;
    *(a1 + 720) = v98;
    *(a1 + 736) = v98;
    *(a1 + 752) = v98;
LABEL_56:
    *(a1 + 960) = v98;
    *(a1 + 976) = v98;
    *(a1 + 992) = v98;
    *(a1 + 1008) = v98;
    return result;
  }

  if (v89 == 127)
  {
    v91 = *(v90 + 16);
    v92 = *(v90 + 32);
    v93 = *(v90 + 48);
    v94 = *(v90 + 64);
    v95 = *(v90 + 80);
    v96 = *(v90 + 96);
    v97 = *(v90 + 112);
    *result = *v90;
    *(a1 + 720) = v91;
    *(a1 + 736) = v92;
    *(a1 + 752) = v93;
    *(a1 + 960) = v94;
    *(a1 + 976) = v95;
    *(a1 + 992) = v96;
    *(a1 + 1008) = v97;
  }

  else
  {

    return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::decompressLosslessCompressedSubblock(result, 256, v90, v89);
  }

  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(int8x16_t *a1, char *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v6 = vdupq_lane_s32(*a3, 0);
  v7 = vsubq_s8(*a3, v6);
  v8 = vsubq_s8(*(a3 + 16), v6);
  v517 = *(a3 + 32);
  v9 = vsubq_s8(v517, v6);
  v503 = *(a3 + 48);
  v10 = vsubq_s8(v503, v6);
  v516 = *(a3 + a4);
  v11 = vsubq_s8(v516, v6);
  v502 = *(a3 + a4 + 16);
  v12 = vsubq_s8(v502, v6);
  v13 = vsubq_s8(*(a3 + a4 + 32), v6);
  v14 = vsubq_s8(*(a3 + a4 + 48), v6);
  v15 = vqtbl1q_s8(vmaxq_s8(v7, v8), xmmword_29D2F0F70);
  v16 = vqtbl1q_s8(vminq_s8(v7, v8), xmmword_29D2F0F70);
  v17 = vpmaxq_s8(v15, v15);
  v18 = vpminq_s8(v16, v16);
  v19 = vpmaxq_s8(v17, v17);
  v20 = vpminq_s8(v18, v18);
  v21 = vzip1q_s8(v19, v20);
  v22.i64[0] = 0x808080808080808;
  v22.i64[1] = 0x808080808080808;
  v23 = vbicq_s8(vsubq_s8(v22, vclsq_s8(v21)), vceqzq_s8(v21));
  v24 = vpmaxq_s8(v23, v23);
  v25 = vqtbl1q_s8(vmaxq_s8(v9, v10), xmmword_29D2F0F70);
  v26 = vqtbl1q_s8(vminq_s8(v9, v10), xmmword_29D2F0F70);
  v27 = vpmaxq_s8(v25, v25);
  v28 = vpminq_s8(v26, v26);
  v29 = vpmaxq_s8(v27, v27);
  v30 = vpminq_s8(v28, v28);
  v31 = vmaxq_s8(v19, v29);
  v32 = vminq_s8(v20, v30);
  v33 = vzip1q_s8(v29, v30);
  v34 = vbicq_s8(vsubq_s8(v22, vclsq_s8(v33)), vceqzq_s8(v33));
  v35 = vpmaxq_s8(v34, v34);
  v36 = vqtbl1q_s8(vmaxq_s8(v11, v12), xmmword_29D2F0F70);
  v37 = vqtbl1q_s8(vminq_s8(v11, v12), xmmword_29D2F0F70);
  v38 = vpmaxq_s8(v36, v36);
  v39 = vpminq_s8(v37, v37);
  v40 = vpmaxq_s8(v38, v38);
  v41 = vpminq_s8(v39, v39);
  v42 = vmaxq_s8(v31, v40);
  v43 = vminq_s8(v32, v41);
  v44 = vzip1q_s8(v40, v41);
  v45 = vbicq_s8(vsubq_s8(v22, vclsq_s8(v44)), vceqzq_s8(v44));
  v46 = vpmaxq_s8(v45, v45);
  v47 = vqtbl1q_s8(vmaxq_s8(v13, v14), xmmword_29D2F0F70);
  v48 = vqtbl1q_s8(vminq_s8(v13, v14), xmmword_29D2F0F70);
  v49 = vpmaxq_s8(v47, v47);
  v50 = vpminq_s8(v48, v48);
  v51 = vpmaxq_s8(v49, v49);
  v52 = vpminq_s8(v50, v50);
  v53 = vmaxq_s8(v42, v51);
  v54 = vminq_s8(v43, v52);
  v55 = vzip1q_s8(v51, v52);
  v56 = vbicq_s8(vsubq_s8(v22, vclsq_s8(v55)), vceqzq_s8(v55));
  v57 = vpmaxq_s8(v56, v56);
  v58 = vmaxq_s8(vmaxq_s8(v24, v35), vmaxq_s8(v46, v57));
  v59 = vclzq_s8(vsubq_s8(v53, v54));
  v60 = vsubq_s8(v22, v59);
  v61 = vminq_s8(v60, v58);
  v62 = vmaxvq_s8(v61);
  if (a5)
  {
    v63 = a6 == 0;
  }

  else
  {
    v63 = 1;
  }

  v64 = v63;
  if (!v62)
  {
    a1->i32[0] = *a3;
    v165 = 3;
    result = 4;
    goto LABEL_91;
  }

  v496 = *(a3 + a4 + 48);
  v497 = *a3;
  v498 = *(a3 + 16);
  v501 = *(a3 + a4 + 32);
  v65.i64[0] = -1;
  v65.i64[1] = -1;
  v66.i64[0] = 0x707070707070707;
  v66.i64[1] = 0x707070707070707;
  v67 = vcgtq_s8(v58, v60);
  v512 = vandq_s8(vsubq_s8(vshlq_s8(v65, vsubq_s8(v66, v59)), v54), v67);
  v68.i64[0] = 0x303030303030303;
  v68.i64[1] = 0x303030303030303;
  v499 = vmaxq_s8(vminq_s8(vsubq_s8(v61, v24), v68), 0);
  v519 = vmaxq_s8(vminq_s8(vsubq_s8(v61, v35), v68), 0);
  v69 = vmaxq_s8(vminq_s8(vsubq_s8(v61, v46), v68), 0);
  v70 = vmaxq_s8(vminq_s8(vsubq_s8(v61, v57), v68), 0);
  v71.i64[0] = 0x404040404040404;
  v71.i64[1] = 0x404040404040404;
  v494 = vorrq_s8(vbicq_s8(v71, vceqq_s8(vaddq_s8(v70, v69), vnegq_s8(vaddq_s8(v499, v519)))), vorrq_s8(vandq_s8(vceqzq_s8(v61), v68), vandq_s8(v67, v22)));
  v72 = vsubq_s8(v8, vqtbl1q_s8(v8, xmmword_29D2F1010));
  v73 = vsubq_s8(v9, vqtbl1q_s8(v9, xmmword_29D2F1010));
  v74 = vsubq_s8(v10, vqtbl1q_s8(v10, xmmword_29D2F1010));
  v75 = vsubq_s8(v11, vqtbl1q_s8(v11, xmmword_29D2F1010));
  v76 = vsubq_s8(v12, vqtbl1q_s8(v12, xmmword_29D2F1010));
  v504 = v9;
  v77 = vsubq_s8(v13, vqtbl1q_s8(v13, xmmword_29D2F1010));
  v78 = vsubq_s8(v14, vqtbl1q_s8(v14, xmmword_29D2F1010));
  v518 = v8;
  v493 = vsubq_s8(v7, vqtbl1q_s8(v7, xmmword_29D2F1010));
  v79 = vqtbl1q_s8(vmaxq_s8(v493, v72), xmmword_29D2F0F70);
  v80 = vqtbl1q_s8(vminq_s8(v493, v72), xmmword_29D2F0F70);
  v81 = vpmaxq_s8(v79, v79);
  v82 = vpminq_s8(v80, v80);
  v83 = vpmaxq_s8(v81, v81);
  v84 = vpminq_s8(v82, v82);
  v85 = v7;
  v86 = vzip1q_s8(v83, v84);
  v87 = vbicq_s8(vsubq_s8(v22, vclsq_s8(v86)), vceqzq_s8(v86));
  v88 = vpmaxq_s8(v87, v87);
  v506 = v10;
  v508 = v11;
  v89 = vqtbl1q_s8(vmaxq_s8(v73, v74), xmmword_29D2F0F70);
  v90 = vqtbl1q_s8(vminq_s8(v73, v74), xmmword_29D2F0F70);
  v91 = vpmaxq_s8(v89, v89);
  v92 = vpminq_s8(v90, v90);
  v93 = vpmaxq_s8(v91, v91);
  v94 = vpminq_s8(v92, v92);
  v95 = vmaxq_s8(v83, v93);
  v96 = vminq_s8(v84, v94);
  v97 = vzip1q_s8(v93, v94);
  v98 = vbicq_s8(vsubq_s8(v22, vclsq_s8(v97)), vceqzq_s8(v97));
  v99 = vpmaxq_s8(v98, v98);
  v100 = vqtbl1q_s8(vmaxq_s8(v75, v76), xmmword_29D2F0F70);
  v101 = vqtbl1q_s8(vminq_s8(v75, v76), xmmword_29D2F0F70);
  v102 = vpmaxq_s8(v100, v100);
  v103 = vpminq_s8(v101, v101);
  v104 = vpmaxq_s8(v102, v102);
  v105 = vpminq_s8(v103, v103);
  v106 = vmaxq_s8(v95, v104);
  v107 = vminq_s8(v96, v105);
  v108 = vzip1q_s8(v104, v105);
  v109 = vbicq_s8(vsubq_s8(v22, vclsq_s8(v108)), vceqzq_s8(v108));
  v514 = v14;
  v110 = vpmaxq_s8(v109, v109);
  v111 = vqtbl1q_s8(vmaxq_s8(v77, v78), xmmword_29D2F0F70);
  v112 = vqtbl1q_s8(vminq_s8(v77, v78), xmmword_29D2F0F70);
  v113 = vpmaxq_s8(v111, v111);
  v114 = vpminq_s8(v112, v112);
  v115 = vpmaxq_s8(v113, v113);
  v510 = v13;
  v116 = vpminq_s8(v114, v114);
  v117 = vmaxq_s8(v106, v115);
  v118 = vminq_s8(v107, v116);
  v119 = vzip1q_s8(v115, v116);
  v120 = vbicq_s8(vsubq_s8(v22, vclsq_s8(v119)), vceqzq_s8(v119));
  v121 = vpmaxq_s8(v120, v120);
  v122 = vmaxq_s8(vmaxq_s8(v88, v99), vmaxq_s8(v110, v121));
  v123 = vclzq_s8(vsubq_s8(v117, v118));
  v124 = vsubq_s8(v22, v123);
  v125 = vcgtq_s8(v122, v124);
  v126 = vminq_s8(v124, v122);
  v124.i64[0] = 0x1010101010101010;
  v124.i64[1] = 0x1010101010101010;
  v127 = v12;
  v128.i64[0] = 0x1818181818181818;
  v128.i64[1] = 0x1818181818181818;
  v129 = vorrq_s8(vandq_s8(vceqzq_s8(v126), v68), vbslq_s8(v125, v128, v124));
  v130 = vmaxq_s8(vminq_s8(vsubq_s8(v126, v88), v68), 0);
  v131 = vmaxq_s8(vminq_s8(vsubq_s8(v126, v99), v68), 0);
  v132 = vmaxq_s8(vminq_s8(vsubq_s8(v126, v110), v68), 0);
  v133 = vmaxq_s8(vminq_s8(vsubq_s8(v126, v121), v68), 0);
  v134 = vsubq_s8(v126, v130);
  v135 = vsubq_s8(v126, v131);
  v136 = vsubq_s8(v126, v132);
  v137 = vsubq_s8(v126, v133);
  v138.i64[0] = 0x404040404040404;
  v138.i64[1] = 0x404040404040404;
  v139 = vorrq_s8(v129, vbicq_s8(v138, vceqq_s8(vaddq_s8(v133, v132), vnegq_s8(vaddq_s8(v130, v131)))));
  v140 = vmovl_u8(*v139.i8);
  v141.i64[0] = 0x8000800080008;
  v141.i64[1] = 0x8000800080008;
  v131.i64[0] = 0x2000200020002;
  v131.i64[1] = 0x2000200020002;
  v142 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v136.i8, *v135.i8), *v137.i8), 3uLL), *v134.i8, 0x707070707070707), vandq_s8(vshll_n_u8(*v139.i8, 1uLL), v141)), vbicq_s8(vmovl_s8(*v126.i8), vceqzq_s16((*&v140 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8))))), vandq_s8(vceqq_s16((*&v140 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v131), v141));
  v143 = vceqq_s16((*&vmovl_u8(*v494.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v131);
  v144 = vsubq_s8(v61, v519);
  v145 = vsubq_s8(v61, v69);
  v146 = vsubq_s8(v61, v70);
  v147 = vandq_s8(v143, v141);
  v148 = v146;
  v520 = v145;
  *v146.i8 = vadd_s8(*v145.i8, *v144.i8);
  v149 = v494;
  v150 = vsubq_s8(v61, v499);
  v151 = v61;
  v152 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddw_s8(vmlal_s8(vshll_n_s8(vadd_s8(*v146.i8, *v148.i8), 3uLL), *v150.i8, 0x707070707070707), vbic_s8(*v61.i8, vcgt_u8(0x808080808080808, *v494.i8))), (*&vshll_n_u8(*v494.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9))), v147), v142)), 0);
  if (vaddlvq_s8(v152))
  {
    v153.i64[0] = 0x707070707070707;
    v153.i64[1] = 0x707070707070707;
    v154 = vsubq_s8(v153, v123);
    v155.i64[0] = -1;
    v155.i64[1] = -1;
    v156 = vandq_s8(vsubq_s8(vshlq_s8(v155, v154), v118), v125);
    v6 = vbslq_s8(v152, vsubq_s8(v6, vqtbl1q_s8(v6, xmmword_29D2F1010)), v6);
    v500 = vbslq_s8(v152, v493, v85);
    v518 = vbslq_s8(v152, v72, v518);
    v157 = vbslq_s8(v152, v74, v506);
    v158 = vbslq_s8(v152, v75, v508);
    v159 = vbslq_s8(v152, v77, v510);
    v150 = vbslq_s8(v152, v134, v150);
    v160 = vbslq_s8(v152, v135, v144);
    v520 = vbslq_s8(v152, v136, v520);
    v148 = vbslq_s8(v152, v137, v148);
    v161 = vbslq_s8(v152, v156, v512);
    v151 = vbslq_s8(v152, v126, v61);
    v149 = vbslq_s8(v152, v139, v494);
    v162 = vbslq_s8(v152, v78, v514);
    v163 = vbslq_s8(v152, v76, v127);
    v164 = vbslq_s8(v152, v73, v504);
    if (v64)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v500 = v85;
    v161 = v512;
    v162 = v514;
    v158 = v508;
    v159 = v510;
    v163 = v127;
    v164 = v504;
    v157 = v506;
    v160 = v144;
    if (v64)
    {
      goto LABEL_16;
    }
  }

  v495 = v163;
  v511 = v159;
  v513 = v161;
  v505 = v164;
  v507 = v157;
  v515 = v162;
  v509 = v158;
  v522 = *a3;
  v176 = vsubq_s8(v497, vqtbl2q_s8(*a3, xmmword_29D2F0F80));
  v167 = vsubq_s8(v498, vqtbl2q_s8(*a3, xmmword_29D2F1030));
  v521 = *(a3 + 32);
  v521.val[1].i32[3] = v522.val[1].i32[3];
  v168 = vqtbl2q_s8(v521, xmmword_29D2F1040);
  v169 = vsubq_s8(v517, vqtbl2q_s8(v521, xmmword_29D2F0FA0));
  v170 = vsubq_s8(v503, v168);
  v523 = *(a3 + a4);
  v523.val[1].i32[3] = v522.val[1].i32[3];
  v521.val[0] = vqtbl2q_s8(v523, xmmword_29D2F0F80);
  v171 = vsubq_s8(v516, vqtbl2q_s8(v523, xmmword_29D2F1050));
  v524 = *(a3 + a4 + 32);
  v524.val[1].i32[3] = v522.val[1].i32[3];
  v172 = vsubq_s8(v502, v521.val[0]);
  v173 = vsubq_s8(v501, vqtbl2q_s8(v524, xmmword_29D2F1060));
  v174 = vsubq_s8(v496, vqtbl2q_s8(v524, xmmword_29D2F0F80));
  v175 = v167;
  v175.i32[3] = v176.i32[0];
  v176.i32[0] = v167.i32[3];
  v177 = vqtbl1q_s8(vmaxq_s8(v176, v175), xmmword_29D2F0F70);
  v524.val[0] = vqtbl1q_s8(vminq_s8(v176, v175), xmmword_29D2F0F70);
  v178 = vpmaxq_s8(v177, v177);
  v524.val[0] = vpminq_s8(v524.val[0], v524.val[0]);
  v179 = vpmaxq_s8(v178, v178);
  v524.val[0] = vpminq_s8(v524.val[0], v524.val[0]);
  v524.val[1] = vzip1q_s8(v179, v524.val[0]);
  v180 = v160;
  v181.i64[0] = 0x808080808080808;
  v181.i64[1] = 0x808080808080808;
  v524.val[1] = vbicq_s8(vsubq_s8(v181, vclsq_s8(v524.val[1])), vceqzq_s8(v524.val[1]));
  v182 = vpmaxq_s8(v524.val[1], v524.val[1]);
  v524.val[1] = vqtbl1q_s8(vmaxq_s8(v169, v170), xmmword_29D2F0F70);
  v183 = vqtbl1q_s8(vminq_s8(v169, v170), xmmword_29D2F0F70);
  v524.val[1] = vpmaxq_s8(v524.val[1], v524.val[1]);
  v184 = vpminq_s8(v183, v183);
  v524.val[1] = vpmaxq_s8(v524.val[1], v524.val[1]);
  v185 = vpminq_s8(v184, v184);
  v186 = vmaxq_s8(v179, v524.val[1]);
  v524.val[0] = vminq_s8(v524.val[0], v185);
  v524.val[1] = vzip1q_s8(v524.val[1], v185);
  v524.val[1] = vbicq_s8(vsubq_s8(v181, vclsq_s8(v524.val[1])), vceqzq_s8(v524.val[1]));
  v187 = vpmaxq_s8(v524.val[1], v524.val[1]);
  v524.val[1] = vqtbl1q_s8(vmaxq_s8(v171, v172), xmmword_29D2F0F70);
  v188 = vqtbl1q_s8(vminq_s8(v171, v172), xmmword_29D2F0F70);
  v524.val[1] = vpmaxq_s8(v524.val[1], v524.val[1]);
  v189 = vpminq_s8(v188, v188);
  v524.val[1] = vpmaxq_s8(v524.val[1], v524.val[1]);
  v190 = vpminq_s8(v189, v189);
  v191 = vmaxq_s8(v186, v524.val[1]);
  v524.val[0] = vminq_s8(v524.val[0], v190);
  v524.val[1] = vzip1q_s8(v524.val[1], v190);
  v524.val[1] = vbicq_s8(vsubq_s8(v181, vclsq_s8(v524.val[1])), vceqzq_s8(v524.val[1]));
  v192 = vpmaxq_s8(v524.val[1], v524.val[1]);
  v524.val[1] = vqtbl1q_s8(vmaxq_s8(v173, v174), xmmword_29D2F0F70);
  v193 = vqtbl1q_s8(vminq_s8(v173, v174), xmmword_29D2F0F70);
  v524.val[1] = vpmaxq_s8(v524.val[1], v524.val[1]);
  v194 = vpminq_s8(v193, v193);
  v524.val[1] = vpmaxq_s8(v524.val[1], v524.val[1]);
  v195 = vpminq_s8(v194, v194);
  v196 = vmaxq_s8(v191, v524.val[1]);
  v197 = vminq_s8(v524.val[0], v195);
  v524.val[1] = vzip1q_s8(v524.val[1], v195);
  v524.val[1] = vbicq_s8(vsubq_s8(v181, vclsq_s8(v524.val[1])), vceqzq_s8(v524.val[1]));
  v198 = v148;
  v199 = vpmaxq_s8(v524.val[1], v524.val[1]);
  v200 = vmaxq_s8(vmaxq_s8(v182, v187), vmaxq_s8(v192, v199));
  v201 = vclzq_s8(vsubq_s8(v196, v197));
  v202 = vsubq_s8(v181, v201);
  v203 = vcgtq_s8(v200, v202);
  v204 = vminq_s8(v202, v200);
  v181.i64[0] = 0x909090909090909;
  v181.i64[1] = 0x909090909090909;
  v205.i64[0] = 0x202020202020202;
  v205.i64[1] = 0x202020202020202;
  v206 = vorrq_s8(vandq_s8(vceqzq_s8(v204), v205), vsubq_s8(vandq_s8(v203, v181), vmvnq_s8(v203)));
  v200.i64[0] = 0x303030303030303;
  v200.i64[1] = 0x303030303030303;
  v207 = vmaxq_s8(vminq_s8(vsubq_s8(v204, v182), v200), 0);
  v208 = vmaxq_s8(vminq_s8(vsubq_s8(v204, v187), v200), 0);
  v209 = vmaxq_s8(vminq_s8(vsubq_s8(v204, v192), v200), 0);
  v210 = vmaxq_s8(vminq_s8(vsubq_s8(v204, v199), v200), 0);
  v211 = vsubq_s8(v204, v207);
  v212 = vsubq_s8(v204, v208);
  v213 = vsubq_s8(v204, v209);
  v214 = vsubq_s8(v204, v210);
  v215 = vceqq_s8(vaddq_s8(v210, v209), vnegq_s8(vaddq_s8(v207, v208)));
  v210.i64[0] = 0x404040404040404;
  v210.i64[1] = 0x404040404040404;
  v216 = vorrq_s8(v206, vbicq_s8(v210, v215));
  v217 = vmovl_s8(*v149.i8);
  v208.i64[0] = 0x8000800080008;
  v208.i64[1] = 0x8000800080008;
  v218 = vbicq_s8(vmovl_s8(*v151.i8), vceqzq_s16(vandq_s8(v217, v208)));
  v219.i64[0] = 0x3000300030003;
  v219.i64[1] = 0x3000300030003;
  v220 = vandq_s8(v217, v219);
  v219.i64[0] = 0x2000200020002;
  v219.i64[1] = 0x2000200020002;
  v221 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v218, vandq_s8(vshll_n_s8(*v149.i8, 1uLL), v208)), vandq_s8(vceqq_s16(v220, v219), v208)), *v150.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v520.i8, *v180.i8), *v198.i8), 3uLL)), vaddw_s8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v213.i8, *v212.i8), *v214.i8), 3uLL), *v211.i8, 0x707070707070707), vand_s8(vadd_s8(*v216.i8, *v216.i8), 0x808080808080808)), vbic_s8(*v204.i8, vcgt_u8(0x808080808080808, *v216.i8))))), 0);
  if (vaddlvq_s8(v221))
  {
    v222.i64[0] = 0x707070707070707;
    v222.i64[1] = 0x707070707070707;
    v223 = vsubq_s8(v222, v201);
    v222.i64[0] = -1;
    v222.i64[1] = -1;
    v224 = vandq_s8(vsubq_s8(vshlq_s8(v222, v223), v197), v203);
    v6.i32[0] = vbslq_s8(v221, vextq_s8(v498, v498, 0xCuLL), v6).u32[0];
    v500 = vbslq_s8(v221, v176, v500);
    v518 = vbslq_s8(v221, v175, v518);
    v164 = vbslq_s8(v221, v169, v505);
    v157 = vbslq_s8(v221, v170, v507);
    v158 = vbslq_s8(v221, v171, v509);
    v163 = vbslq_s8(v221, v172, v495);
    v159 = vbslq_s8(v221, v173, v511);
    v162 = vbslq_s8(v221, v174, v515);
    v150 = vbslq_s8(v221, v211, v150);
    v160 = vbslq_s8(v221, v212, v180);
    v520 = vbslq_s8(v221, v213, v520);
    v148 = vbslq_s8(v221, v214, v198);
    v161 = vbslq_s8(v221, v224, v513);
    v151 = vbslq_s8(v221, v204, v151);
    v149 = vbslq_s8(v221, v216, v149);
  }

  else
  {
    v157 = v507;
    v158 = v509;
    v148 = v198;
    v161 = v513;
    v162 = v515;
    v164 = v505;
    v159 = v511;
    v163 = v495;
    v160 = v180;
  }

LABEL_16:
  v225 = vmovl_s8(*v149.i8);
  v226.i64[0] = 0x8000800080008;
  v226.i64[1] = 0x8000800080008;
  v227 = vbicq_s8(vmovl_s8(*v151.i8), vceqzq_s16(vandq_s8(v225, v226)));
  v228.i64[0] = 0x3000300030003;
  v228.i64[1] = 0x3000300030003;
  v229 = vandq_s8(v225, v228);
  v228.i64[0] = 0x2000200020002;
  v228.i64[1] = 0x2000200020002;
  v230 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v520.i8, *v160.i8), *v148.i8), 3uLL), *v150.i8, 0x707070707070707), vandq_s8(vshll_n_s8(*v149.i8, 1uLL), v226)), v227), vandq_s8(vceqq_s16(v229, v228), v226));
  v231 = vpaddq_s16(v230, v230);
  v232 = vpaddq_s16(v231, v231).u64[0];
  if ((v232.i16[0] + 71) > 0x3FF)
  {
    *a1 = v497;
    a1[1] = v498;
    a1[2] = v517;
    a1[3] = v503;
    a1[4] = v516;
    a1[5] = v502;
    v236 = a1 + 6;
    v165 = 127;
    result = 128;
    *v236 = v501;
    v236[1] = v496;
  }

  else
  {
    v233 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v234 = 8 * (a1 & 7);
    if (v234)
    {
      v235 = *v233 & ~(-1 << v234);
    }

    else
    {
      v235 = 0;
    }

    *a2 = 0;
    v237 = vzip1_s8(*v151.i8, v232);
    v238 = vadd_s16(v237, 0xFF00FF00FF00FFLL);
    v239 = vmovl_u16(vceqz_s16((*&v237 & 0xFF00FF00FF00FFLL)));
    v240.i64[0] = v239.u32[0];
    v240.i64[1] = v239.u32[1];
    v241 = vshrq_n_s64(vshlq_n_s64(v240, 0x38uLL), 0x38uLL);
    v240.i64[0] = v239.u32[2];
    v240.i64[1] = v239.u32[3];
    v242 = vshrq_n_s64(vshlq_n_s64(v240, 0x38uLL), 0x38uLL);
    v243 = vshlq_u32(vmovl_u16(vand_s8(v238, 0x7000700070007)), xmmword_29D2F1070);
    v240.i64[0] = v243.u32[0];
    v240.i64[1] = v243.u32[1];
    v244 = v240;
    v240.i64[0] = v243.u32[2];
    v240.i64[1] = v243.u32[3];
    v245 = vorrq_s8(vbicq_s8(v244, v241), vbicq_s8(v240, v242));
    v246 = *&vorr_s8(*v245.i8, *&vextq_s8(v245, v245, 8uLL)) | (32 * (v149.i8[1] & 0x1F)) | ((v149.i8[3] & 0x1F) << 15) | ((v149.i8[2] & 0x1F) << 10) | v149.i8[0] & 0x1F;
    v247 = v235 | (v246 << v234);
    if (v234 >= 0x20)
    {
      *v233 = v247;
      v247 = v246 >> (-8 * (a1 & 7u));
    }

    v248 = v6.u8[0] | (v6.u8[1] << 8) | (v6.u8[2] << 16) & 0xFFFFFFFF00FFFFFFLL | (v6.u8[3] << 24);
    v249 = (v234 + 32) & 0x38;
    v250 = v247 | (v248 << v249);
    if (v249 >= 0x20)
    {
      *(v233 + (((v234 + 32) >> 3) & 8)) = v250;
      v250 = v248 >> -v249;
    }

    v251 = vsubq_s8(v151, v150);
    v252 = vsubq_s8(v151, v160);
    v253 = vsubq_s8(v151, v520);
    v254 = vsubq_s8(v151, v148);
    v255 = vtrn1q_s8(v251, v252);
    v256 = vtrn2q_s8(v251, v252);
    v257 = vtrn1q_s8(v253, v254);
    v258 = vtrn2q_s8(v253, v254);
    v259 = vzip1q_s16(v256, v258);
    v260 = vtrn2q_s16(v256, v258);
    v258.i64[0] = vzip1q_s32(vzip1q_s16(v255, v257), v259).u64[0];
    v260.i64[0] = vzip1q_s32(vtrn2q_s16(v255, v257), v260).u64[0];
    v254.i64[0] = 0x202020202020202;
    v254.i64[1] = 0x202020202020202;
    v261 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(*v149.i8), 0x4000400040004)), v254);
    v254.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v254.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v255.i64[0] = -1;
    v255.i64[1] = -1;
    v262 = vshlq_u8(v255, vorrq_s8(v261, v254));
    v263 = vmovl_u8(vand_s8(*v262.i8, *v258.i8));
    v264 = vmovl_u8(vand_s8(*&vextq_s8(v262, v262, 8uLL), *v260.i8));
    v265 = vmovl_u8(*v261.i8);
    v266 = vmovl_high_u8(v261);
    v267 = vpaddq_s16(vshlq_u16(v263, vtrn1q_s16(0, v265)), vshlq_u16(v264, vtrn1q_s16(0, v266)));
    v268 = vpaddq_s16(v265, v266);
    v269 = vmovl_u16(*v268.i8);
    v270 = vmovl_high_u16(v268);
    v271 = vpaddq_s32(vshlq_u32(vmovl_u16(*v267.i8), vtrn1q_s32(0, v269)), vshlq_u32(vmovl_high_u16(v267), vtrn1q_s32(0, v270)));
    v272 = vpaddq_s32(v269, v270);
    v273.i64[0] = v271.u32[0];
    v273.i64[1] = v271.u32[1];
    v274 = v273;
    v273.i64[0] = v271.u32[2];
    v273.i64[1] = v271.u32[3];
    v275 = v273;
    v273.i64[0] = v272.u32[0];
    v273.i64[1] = v272.u32[1];
    v276 = v273;
    v273.i64[0] = v272.u32[2];
    v273.i64[1] = v272.u32[3];
    v277 = vpaddq_s64(vshlq_u64(v274, vzip1q_s64(0, v276)), vshlq_u64(v275, vzip1q_s64(0, v273)));
    v278 = vpaddq_s64(v276, v273);
    v279 = (v277.i64[0] << v234) | v250;
    if (v278.i64[0] + v234 >= 0x40)
    {
      v233[1] = v279;
      v279 = v277.i64[0] >> (-8 * (a1 & 7u));
      if (!v234)
      {
        v279 = 0;
      }
    }

    v280 = vceqq_s8(v151, v150);
    v281 = v278.i64[0] + (v234 | 0x40);
    v282 = v279 | (v277.i64[1] << v281);
    if ((v281 & 0x3F) + v278.i64[1] >= 0x40)
    {
      *(v233 + ((v281 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v282;
      v282 = v277.i64[1] >> -(v281 & 0x3F);
      if ((v281 & 0x3F) == 0)
      {
        v282 = 0;
      }
    }

    v283 = vandq_s8(v161, v280);
    v284 = v281 + v278.i64[1];
    v285.i64[0] = 0x808080808080808;
    v285.i64[1] = 0x808080808080808;
    v286.i64[0] = -1;
    v286.i64[1] = -1;
    v287 = vandq_s8(vextq_s8(vtstq_s8(v149, v285), 0, 0xCuLL), v151);
    v288.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v288.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v289 = vandq_s8(vshlq_u8(v286, vaddq_s8(v287, v288)), v161);
    v290 = vmovl_u8(*v287.i8);
    v291 = vpaddq_s16(vshlq_u16(vmovl_u8(*v289.i8), vtrn1q_s16(0, v290)), vmovl_high_u8(v289));
    v292 = vpaddq_s16(v290, vmovl_high_u8(v287));
    v293 = vmovl_u16(*v292.i8);
    v294 = vmovl_high_u16(v292);
    v295 = vpaddq_s32(vshlq_u32(vmovl_u16(*v291.i8), vtrn1q_s32(0, v293)), vshlq_u32(vmovl_high_u16(v291), vtrn1q_s32(0, v294)));
    v296 = vpaddq_s32(v293, v294);
    v297.i64[0] = v295.u32[0];
    v297.i64[1] = v295.u32[1];
    v298 = v297;
    v297.i64[0] = v295.u32[2];
    v297.i64[1] = v295.u32[3];
    v299 = v297;
    v297.i64[0] = v296.u32[0];
    v297.i64[1] = v296.u32[1];
    v300 = v297;
    v297.i64[0] = v296.u32[2];
    v297.i64[1] = v296.u32[3];
    v301 = vpaddq_s64(vshlq_u64(v298, vzip1q_s64(0, v300)), vshlq_u64(v299, vzip1q_s64(0, v297)));
    v302 = vpaddq_s64(v300, v297);
    v303 = (v301.i64[0] << v284) | v282;
    if (v302.i64[0] + (v284 & 0x3F) >= 0x40)
    {
      *(v233 + ((v284 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v303;
      v303 = v301.i64[0] >> -(v284 & 0x3F);
      if ((v284 & 0x3F) == 0)
      {
        v303 = 0;
      }
    }

    v304 = vaddq_s8(v283, v500);
    v305 = v302.i64[0] + v284;
    v306 = v303 | (v301.i64[1] << v305);
    if ((v305 & 0x3F) + v302.i64[1] >= 0x40)
    {
      *(v233 + ((v305 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v306;
      v306 = v301.i64[1] >> -(v305 & 0x3F);
      if ((v305 & 0x3F) == 0)
      {
        v306 = 0;
      }
    }

    v307 = v305 + v302.i64[1];
    v308 = vextq_s8(0, v150, 0xCuLL);
    v309.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v309.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v310.i64[0] = -1;
    v310.i64[1] = -1;
    v311 = vandq_s8(vshlq_u8(v310, vaddq_s8(v308, v309)), v304);
    v312 = vmovl_u8(*v308.i8);
    v313 = vmovl_high_u8(v308);
    v314 = vpaddq_s16(vshlq_u16(vmovl_u8(*v311.i8), vtrn1q_s16(0, v312)), vshlq_u16(vmovl_high_u8(v311), vtrn1q_s16(0, v313)));
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
    v326 = (v324.i64[0] << v307) | v306;
    if (v325.i64[0] + (v307 & 0x3F) >= 0x40)
    {
      *(v233 + ((v307 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v326;
      v326 = v324.i64[0] >> -(v307 & 0x3F);
      if ((v307 & 0x3F) == 0)
      {
        v326 = 0;
      }
    }

    v327 = vceqq_s8(v151, v160);
    v328 = vaddq_s8(v518, v283);
    v329 = v325.i64[0] + v307;
    v330 = v326 | (v324.i64[1] << v329);
    if ((v329 & 0x3F) + v325.i64[1] >= 0x40)
    {
      *(v233 + ((v329 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v330;
      v330 = v324.i64[1] >> -(v329 & 0x3F);
      if ((v329 & 0x3F) == 0)
      {
        v330 = 0;
      }
    }

    v331 = vandq_s8(v161, v327);
    v332 = v329 + v325.i64[1];
    v333.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v333.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v334.i64[0] = -1;
    v334.i64[1] = -1;
    v335 = vandq_s8(vshlq_u8(v334, vaddq_s8(v150, v333)), v328);
    v336 = vmovl_u8(*v150.i8);
    v337 = vmovl_high_u8(v150);
    v338 = vpaddq_s16(vshlq_u16(vmovl_u8(*v335.i8), vtrn1q_s16(0, v336)), vshlq_u16(vmovl_high_u8(v335), vtrn1q_s16(0, v337)));
    v339 = vpaddq_s16(v336, v337);
    v340 = vmovl_u16(*v339.i8);
    v341 = vmovl_high_u16(v339);
    v342 = vpaddq_s32(vshlq_u32(vmovl_u16(*v338.i8), vtrn1q_s32(0, v340)), vshlq_u32(vmovl_high_u16(v338), vtrn1q_s32(0, v341)));
    v343 = vpaddq_s32(v340, v341);
    v344.i64[0] = v342.u32[0];
    v344.i64[1] = v342.u32[1];
    v345 = v344;
    v344.i64[0] = v342.u32[2];
    v344.i64[1] = v342.u32[3];
    v346 = v344;
    v344.i64[0] = v343.u32[0];
    v344.i64[1] = v343.u32[1];
    v347 = v344;
    v344.i64[0] = v343.u32[2];
    v344.i64[1] = v343.u32[3];
    v348 = vpaddq_s64(vshlq_u64(v345, vzip1q_s64(0, v347)), vshlq_u64(v346, vzip1q_s64(0, v344)));
    v349 = vpaddq_s64(v347, v344);
    v350 = (v348.i64[0] << v332) | v330;
    if (v349.i64[0] + (v332 & 0x3F) >= 0x40)
    {
      *(v233 + ((v332 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v350;
      v350 = v348.i64[0] >> -(v332 & 0x3F);
      if ((v332 & 0x3F) == 0)
      {
        v350 = 0;
      }
    }

    v351 = vaddq_s8(v164, v331);
    v352 = v349.i64[0] + v332;
    v353 = v350 | (v348.i64[1] << v352);
    if ((v352 & 0x3F) + v349.i64[1] >= 0x40)
    {
      *(v233 + ((v352 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v353;
      v353 = v348.i64[1] >> -(v352 & 0x3F);
      if ((v352 & 0x3F) == 0)
      {
        v353 = 0;
      }
    }

    v354 = v352 + v349.i64[1];
    v355.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v355.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v356.i64[0] = -1;
    v356.i64[1] = -1;
    v357 = vshlq_u8(v356, vaddq_s8(v160, v355));
    v358 = vandq_s8(v357, v351);
    v359 = vmovl_u8(*v358.i8);
    v360 = vmovl_high_u8(v358);
    v361 = vmovl_u8(*v160.i8);
    v362 = vmovl_high_u8(v160);
    v363 = vtrn1q_s16(0, v361);
    v364 = vtrn1q_s16(0, v362);
    v365 = vpaddq_s16(vshlq_u16(v359, v363), vshlq_u16(v360, v364));
    v366 = vpaddq_s16(v361, v362);
    v367 = vmovl_u16(*v365.i8);
    v368 = vmovl_high_u16(v365);
    v369 = vmovl_u16(*v366.i8);
    v370 = vmovl_high_u16(v366);
    v371 = vtrn1q_s32(0, v369);
    v372 = vtrn1q_s32(0, v370);
    v373 = vpaddq_s32(vshlq_u32(v367, v371), vshlq_u32(v368, v372));
    v374 = vpaddq_s32(v369, v370);
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
    v379 = vzip1q_s64(0, v378);
    v380 = vzip1q_s64(0, v375);
    v381 = vpaddq_s64(vshlq_u64(v376, v379), vshlq_u64(v377, v380));
    v382 = vpaddq_s64(v378, v375);
    v383 = (v381.i64[0] << v354) | v353;
    if (v382.i64[0] + (v354 & 0x3F) >= 0x40)
    {
      *(v233 + ((v354 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v383;
      if ((v354 & 0x3F) != 0)
      {
        v383 = v381.i64[0] >> -(v354 & 0x3F);
      }

      else
      {
        v383 = 0;
      }
    }

    v384 = vceqq_s8(v151, v520);
    v385 = vaddq_s8(v157, v331);
    v386 = v382.i64[0] + v354;
    v387 = v383 | (v381.i64[1] << v386);
    if ((v386 & 0x3F) + v382.i64[1] >= 0x40)
    {
      *(v233 + ((v386 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v387;
      v387 = v381.i64[1] >> -(v386 & 0x3F);
      if ((v386 & 0x3F) == 0)
      {
        v387 = 0;
      }
    }

    v388 = vandq_s8(v161, v384);
    v389 = v386 + v382.i64[1];
    v390 = vandq_s8(v357, v385);
    v391 = vpaddq_s16(vshlq_u16(vmovl_u8(*v390.i8), v363), vshlq_u16(vmovl_high_u8(v390), v364));
    v392 = vpaddq_s32(vshlq_u32(vmovl_u16(*v391.i8), v371), vshlq_u32(vmovl_high_u16(v391), v372));
    v393.i64[0] = v392.u32[0];
    v393.i64[1] = v392.u32[1];
    v394 = v393;
    v393.i64[0] = v392.u32[2];
    v393.i64[1] = v392.u32[3];
    v395 = vpaddq_s64(vshlq_u64(v394, v379), vshlq_u64(v393, v380));
    v396 = (v395.i64[0] << v389) | v387;
    if (v382.i64[0] + (v389 & 0x3F) >= 0x40)
    {
      *(v233 + ((v389 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v396;
      v396 = v395.i64[0] >> -(v389 & 0x3F);
      if ((v389 & 0x3F) == 0)
      {
        v396 = 0;
      }
    }

    v397 = vaddq_s8(v158, v388);
    v398 = v382.i64[0] + v389;
    v399 = (v382.i64[0] + v389) & 0x3F;
    v400 = v396 | (v395.i64[1] << v398);
    if ((v398 & 0x3F) + v382.i64[1] >= 0x40)
    {
      *(v233 + ((v398 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v400;
      v400 = v395.i64[1] >> -v399;
      if (!v399)
      {
        v400 = 0;
      }
    }

    v401 = v398 + v382.i64[1];
    v402.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v402.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v403.i64[0] = -1;
    v403.i64[1] = -1;
    v404 = vshlq_u8(v403, vaddq_s8(v520, v402));
    v405 = vandq_s8(v404, v397);
    v406 = vmovl_u8(*v405.i8);
    v407 = vmovl_high_u8(v405);
    v408 = vmovl_u8(*v520.i8);
    v409 = vmovl_high_u8(v520);
    v410 = vtrn1q_s16(0, v408);
    v411 = vtrn1q_s16(0, v409);
    v412 = vpaddq_s16(vshlq_u16(v406, v410), vshlq_u16(v407, v411));
    v413 = vpaddq_s16(v408, v409);
    v414 = vmovl_u16(*v412.i8);
    v415 = vmovl_high_u16(v412);
    v416 = vmovl_u16(*v413.i8);
    v417 = vmovl_high_u16(v413);
    v418 = vtrn1q_s32(0, v416);
    v419 = vtrn1q_s32(0, v417);
    v420 = vpaddq_s32(vshlq_u32(v414, v418), vshlq_u32(v415, v419));
    v421 = vpaddq_s32(v416, v417);
    v422.i64[0] = v420.u32[0];
    v422.i64[1] = v420.u32[1];
    v423 = v422;
    v422.i64[0] = v420.u32[2];
    v422.i64[1] = v420.u32[3];
    v424 = v422;
    v422.i64[0] = v421.u32[0];
    v422.i64[1] = v421.u32[1];
    v425 = v422;
    v422.i64[0] = v421.u32[2];
    v422.i64[1] = v421.u32[3];
    v426 = vzip1q_s64(0, v425);
    v427 = vzip1q_s64(0, v422);
    v428 = vpaddq_s64(vshlq_u64(v423, v426), vshlq_u64(v424, v427));
    v429 = vpaddq_s64(v425, v422);
    v430 = (v428.i64[0] << v401) | v400;
    if (v429.i64[0] + (v401 & 0x3F) >= 0x40)
    {
      *(v233 + ((v401 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v430;
      if ((v401 & 0x3F) != 0)
      {
        v430 = v428.i64[0] >> -(v401 & 0x3F);
      }

      else
      {
        v430 = 0;
      }
    }

    v431 = vceqq_s8(v151, v148);
    v432 = vaddq_s8(v163, v388);
    v433 = v429.i64[0] + v401;
    v434 = v430 | (v428.i64[1] << v433);
    if ((v433 & 0x3F) + v429.i64[1] >= 0x40)
    {
      *(v233 + ((v433 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v434;
      v434 = v428.i64[1] >> -(v433 & 0x3F);
      if ((v433 & 0x3F) == 0)
      {
        v434 = 0;
      }
    }

    v435 = vandq_s8(v161, v431);
    v436 = v433 + v429.i64[1];
    v437 = vandq_s8(v404, v432);
    v438 = vpaddq_s16(vshlq_u16(vmovl_u8(*v437.i8), v410), vshlq_u16(vmovl_high_u8(v437), v411));
    v439 = vpaddq_s32(vshlq_u32(vmovl_u16(*v438.i8), v418), vshlq_u32(vmovl_high_u16(v438), v419));
    v440.i64[0] = v439.u32[0];
    v440.i64[1] = v439.u32[1];
    v441 = v440;
    v440.i64[0] = v439.u32[2];
    v440.i64[1] = v439.u32[3];
    v442 = vpaddq_s64(vshlq_u64(v441, v426), vshlq_u64(v440, v427));
    v443 = (v442.i64[0] << v436) | v434;
    if (v429.i64[0] + (v436 & 0x3F) >= 0x40)
    {
      *(v233 + ((v436 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v443;
      v443 = v442.i64[0] >> -(v436 & 0x3F);
      if ((v436 & 0x3F) == 0)
      {
        v443 = 0;
      }
    }

    v444 = vaddq_s8(v159, v435);
    v445 = v429.i64[0] + v436;
    v446 = (v429.i64[0] + v436) & 0x3F;
    v447 = v443 | (v442.i64[1] << v445);
    if ((v445 & 0x3F) + v429.i64[1] >= 0x40)
    {
      *(v233 + ((v445 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v447;
      v447 = v442.i64[1] >> -v446;
      if (!v446)
      {
        v447 = 0;
      }
    }

    v448 = v445 + v429.i64[1];
    v449.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v449.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v450.i64[0] = -1;
    v450.i64[1] = -1;
    v451 = vshlq_u8(v450, vaddq_s8(v148, v449));
    v452 = vandq_s8(v451, v444);
    v453 = vmovl_u8(*v452.i8);
    v454 = vmovl_high_u8(v452);
    v455 = vmovl_u8(*v148.i8);
    v456 = vmovl_high_u8(v148);
    v457 = vtrn1q_s16(0, v455);
    v458 = vtrn1q_s16(0, v456);
    v459 = vpaddq_s16(vshlq_u16(v453, v457), vshlq_u16(v454, v458));
    v460 = vpaddq_s16(v455, v456);
    v461 = vmovl_u16(*v459.i8);
    v462 = vmovl_high_u16(v459);
    v463 = vmovl_u16(*v460.i8);
    v464 = vmovl_high_u16(v460);
    v465 = vtrn1q_s32(0, v463);
    v466 = vtrn1q_s32(0, v464);
    v467 = vpaddq_s32(vshlq_u32(v461, v465), vshlq_u32(v462, v466));
    v468 = vpaddq_s32(v463, v464);
    v469.i64[0] = v467.u32[0];
    v469.i64[1] = v467.u32[1];
    v470 = v469;
    v469.i64[0] = v467.u32[2];
    v469.i64[1] = v467.u32[3];
    v471 = v469;
    v469.i64[0] = v468.u32[0];
    v469.i64[1] = v468.u32[1];
    v472 = v469;
    v469.i64[0] = v468.u32[2];
    v469.i64[1] = v468.u32[3];
    v473 = vzip1q_s64(0, v472);
    v474 = vzip1q_s64(0, v469);
    v475 = vpaddq_s64(vshlq_u64(v470, v473), vshlq_u64(v471, v474));
    v476 = vpaddq_s64(v472, v469);
    v477 = (v475.i64[0] << v448) | v447;
    if (v476.i64[0] + (v448 & 0x3F) > 0x3F)
    {
      *(v233 + ((v448 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v477;
      if ((v448 & 0x3F) != 0)
      {
        v477 = v475.i64[0] >> -(v448 & 0x3F);
      }

      else
      {
        v477 = 0;
      }
    }

    v478 = vaddq_s8(v162, v435);
    v479 = v476.i64[0] + v448;
    v480 = v477 | (v475.i64[1] << v479);
    if ((v479 & 0x3F) + v476.i64[1] >= 0x40)
    {
      *(v233 + ((v479 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v480;
      v480 = v475.i64[1] >> -(v479 & 0x3F);
      if ((v479 & 0x3F) == 0)
      {
        v480 = 0;
      }
    }

    v481 = v479 + v476.i64[1];
    v482 = vandq_s8(v451, v478);
    v483 = vpaddq_s16(vshlq_u16(vmovl_u8(*v482.i8), v457), vshlq_u16(vmovl_high_u8(v482), v458));
    v484 = vpaddq_s32(vshlq_u32(vmovl_u16(*v483.i8), v465), vshlq_u32(vmovl_high_u16(v483), v466));
    v485.i64[0] = v484.u32[0];
    v485.i64[1] = v484.u32[1];
    v486 = v485;
    v485.i64[0] = v484.u32[2];
    v485.i64[1] = v484.u32[3];
    v487 = vpaddq_s64(vshlq_u64(v486, v473), vshlq_u64(v485, v474));
    v488 = (v487.i64[0] << v481) | v480;
    if (v476.i64[0] + (v481 & 0x3F) >= 0x40)
    {
      *(v233 + ((v481 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v488;
      v488 = v487.i64[0] >> -(v481 & 0x3F);
      if ((v481 & 0x3F) == 0)
      {
        v488 = 0;
      }
    }

    v489 = v476.i64[0] + v481;
    v490 = (v476.i64[0] + v481) & 0x3F;
    v491 = v488 | (v487.i64[1] << (v476.i8[0] + v481));
    if ((v490 + v476.i64[1]) >= 0x40)
    {
      *(v233 + ((v489 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v491;
      v491 = v487.i64[1] >> -v490;
      if (!v490)
      {
        v491 = 0;
      }
    }

    v492 = v489 + v476.i64[1];
    if ((v492 & 0x3F) != 0)
    {
      *(v233 + ((v492 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v491;
    }

    result = (v492 - v234 + 7) >> 3;
    v165 = *a2 | (result - 1);
  }

LABEL_91:
  *a2 = v165;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressMacroblock(uint64_t result, uint64_t a2, int8x16_t *a3, char *a4, unsigned int a5, unsigned int a6)
{
  v6 = a6;
  v7 = a5;
  v9 = a3;
  v11 = result;
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

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(a3, a4, result, a2, a5, a6);
    v9 = (v9 + result);
  }

  else
  {
    *a4 = 0;
  }

  v12 = v7 - 2;
  if (v7 >= 3 && v6)
  {
    if (v6 >= 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = v6;
    }

    if (v12 >= 2)
    {
      v14 = 2;
    }

    else
    {
      v14 = v7 - 2;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 1, v11 + 64, a2, v14, v13);
    v9 = (v9 + result);
  }

  else
  {
    a4[1] = 0;
  }

  v15 = 2 * a2;
  v16 = v6 - 2;
  if (v7 && v6 >= 3)
  {
    if (v16 >= 2)
    {
      v17 = 2;
    }

    else
    {
      v17 = v6 - 2;
    }

    if (v7 >= 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = v7;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 2, v11 + v15, a2, v18, v17);
    v9 = (v9 + result);
    if (v7 < 3)
    {
      goto LABEL_38;
    }
  }

  else
  {
    a4[2] = 0;
    if (v7 < 3)
    {
      goto LABEL_38;
    }
  }

  if (v6 >= 3)
  {
    if (v16 >= 2)
    {
      v19 = 2;
    }

    else
    {
      v19 = v6 - 2;
    }

    if (v12 >= 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = v7 - 2;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 3, v11 + v15 + 64, a2, v20, v19);
    v9 = (v9 + result);
    goto LABEL_39;
  }

LABEL_38:
  a4[3] = 0;
LABEL_39:
  v21 = v7 - 4;
  if (v7 >= 5 && v6)
  {
    if (v6 >= 2)
    {
      v22 = 2;
    }

    else
    {
      v22 = v6;
    }

    if (v21 >= 2)
    {
      v23 = 2;
    }

    else
    {
      v23 = v7 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 4, v11 + 128, a2, v23, v22);
    v9 = (v9 + result);
  }

  else
  {
    a4[4] = 0;
  }

  v24 = v7 - 6;
  if (v7 >= 7 && v6)
  {
    if (v6 >= 2)
    {
      v25 = 2;
    }

    else
    {
      v25 = v6;
    }

    if (v24 >= 2)
    {
      v26 = 2;
    }

    else
    {
      v26 = v7 - 6;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 5, v11 + 192, a2, v26, v25);
    v9 = (v9 + result);
  }

  else
  {
    a4[5] = 0;
    if (v7 < 5)
    {
      goto LABEL_68;
    }
  }

  if (v6 >= 3)
  {
    if (v16 >= 2)
    {
      v27 = 2;
    }

    else
    {
      v27 = v6 - 2;
    }

    if (v21 >= 2)
    {
      v28 = 2;
    }

    else
    {
      v28 = v7 - 4;
    }

    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 6, v11 + v15 + 128, a2, v28, v27);
    v9 = (v9 + result);
    if (v7 < 7)
    {
      goto LABEL_79;
    }

    goto LABEL_69;
  }

LABEL_68:
  a4[6] = 0;
  if (v7 < 7)
  {
LABEL_79:
    a4[7] = 0;
    return result;
  }

LABEL_69:
  if (v6 < 3)
  {
    goto LABEL_79;
  }

  if (v16 >= 2)
  {
    v29 = 2;
  }

  else
  {
    v29 = v6 - 2;
  }

  if (v24 >= 2)
  {
    v30 = 2;
  }

  else
  {
    v30 = v7 - 6;
  }

  return AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::compressSubblock(v9, a4 + 7, v11 + v15 + 192, a2, v30, v29);
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressSubblock(unint64_t a1, _BYTE *a2, int64x2_t *a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v7 = a5 >= 4 && a6 >= 2;
  v9 = *a3;
  v10 = a3[1];
  v8 = (a3 + 2 * a4);
  v11 = !v7;
  v12 = *(a3 + a4);
  v13 = *(&a3[1] + a4);
  v14 = vzip1q_s64(v9, v12);
  v15 = vzip2q_s64(v9, v12);
  v16 = vzip1q_s64(v10, v13);
  v18 = *v8;
  v19 = v8[1];
  v17 = (v8 + a4);
  v20 = v17[1];
  v21 = vzip2q_s64(v10, v13);
  v22 = vzip2q_s64(v18, *v17);
  v23 = vzip1q_s64(v19, v20);
  v24 = vdupq_lane_s32(*v14.i8, 0);
  v25 = vzip2q_s64(v19, v20);
  v26 = vsubq_s8(v14, v24);
  v27 = vsubq_s8(v15, v24);
  v512 = vzip1q_s64(v18, *v17);
  v28 = vsubq_s8(v512, v24);
  v29 = vsubq_s8(v22, v24);
  v30 = vsubq_s8(v16, v24);
  v31 = vsubq_s8(v21, v24);
  v32 = vsubq_s8(v23, v24);
  v33 = vsubq_s8(v25, v24);
  v34 = vqtbl1q_s8(vmaxq_s8(v26, v27), xmmword_29D2F0F70);
  v35 = vqtbl1q_s8(vminq_s8(v26, v27), xmmword_29D2F0F70);
  v36 = vpmaxq_s8(v34, v34);
  v37 = vpminq_s8(v35, v35);
  v38 = vpmaxq_s8(v36, v36);
  v39 = vpminq_s8(v37, v37);
  v40 = vzip1q_s8(v38, v39);
  v41.i64[0] = 0x808080808080808;
  v41.i64[1] = 0x808080808080808;
  v42 = vbicq_s8(vsubq_s8(v41, vclsq_s8(v40)), vceqzq_s8(v40));
  v43 = vpmaxq_s8(v42, v42);
  v44 = vqtbl1q_s8(vmaxq_s8(v28, v29), xmmword_29D2F0F70);
  v45 = vqtbl1q_s8(vminq_s8(v28, v29), xmmword_29D2F0F70);
  v46 = vpmaxq_s8(v44, v44);
  v47 = vpminq_s8(v45, v45);
  v48 = vpmaxq_s8(v46, v46);
  v49 = vpminq_s8(v47, v47);
  v50 = vmaxq_s8(v38, v48);
  v51 = vminq_s8(v39, v49);
  v52 = vzip1q_s8(v48, v49);
  v53 = vbicq_s8(vsubq_s8(v41, vclsq_s8(v52)), vceqzq_s8(v52));
  v54 = vpmaxq_s8(v53, v53);
  v55 = vqtbl1q_s8(vmaxq_s8(v30, v31), xmmword_29D2F0F70);
  v56 = vqtbl1q_s8(vminq_s8(v30, v31), xmmword_29D2F0F70);
  v57 = vpmaxq_s8(v55, v55);
  v58 = vpminq_s8(v56, v56);
  v59 = vpmaxq_s8(v57, v57);
  v60 = vpminq_s8(v58, v58);
  v61 = vmaxq_s8(v50, v59);
  v62 = vminq_s8(v51, v60);
  v63 = vzip1q_s8(v59, v60);
  v64 = vbicq_s8(vsubq_s8(v41, vclsq_s8(v63)), vceqzq_s8(v63));
  v65 = vpmaxq_s8(v64, v64);
  v66 = vqtbl1q_s8(vmaxq_s8(v32, v33), xmmword_29D2F0F70);
  v67 = vqtbl1q_s8(vminq_s8(v32, v33), xmmword_29D2F0F70);
  v68 = vpmaxq_s8(v66, v66);
  v69 = vpminq_s8(v67, v67);
  v70 = vpmaxq_s8(v68, v68);
  v71 = vpminq_s8(v69, v69);
  v72 = vmaxq_s8(v61, v70);
  v73 = vminq_s8(v62, v71);
  v74 = vzip1q_s8(v70, v71);
  v75 = vbicq_s8(vsubq_s8(v41, vclsq_s8(v74)), vceqzq_s8(v74));
  v76 = vpmaxq_s8(v75, v75);
  v77 = vmaxq_s8(vmaxq_s8(v43, v54), vmaxq_s8(v65, v76));
  v78 = vclzq_s8(vsubq_s8(v72, v73));
  v79 = vsubq_s8(v41, v78);
  v80 = vminq_s8(v79, v77);
  if (!vmaxvq_s8(v80))
  {
    *a1 = a3->i32[0];
    *a2 = 3;
    return 4;
  }

  v491 = v22;
  v492 = v25;
  v493 = v21;
  v494 = v23;
  v495 = v16;
  v81.i64[0] = -1;
  v81.i64[1] = -1;
  v82.i64[0] = 0x707070707070707;
  v82.i64[1] = 0x707070707070707;
  v83 = vcgtq_s8(v77, v79);
  v514 = vandq_s8(vsubq_s8(vshlq_s8(v81, vsubq_s8(v82, v78)), v73), v83);
  v81.i64[0] = 0x303030303030303;
  v81.i64[1] = 0x303030303030303;
  v506 = vmaxq_s8(vminq_s8(vsubq_s8(v80, v43), v81), 0);
  v508 = vmaxq_s8(vminq_s8(vsubq_s8(v80, v65), v81), 0);
  v510 = vmaxq_s8(vminq_s8(vsubq_s8(v80, v54), v81), 0);
  v84 = vmaxq_s8(vminq_s8(vsubq_s8(v80, v76), v81), 0);
  v85.i64[0] = 0x404040404040404;
  v85.i64[1] = 0x404040404040404;
  v86 = vorrq_s8(vbicq_s8(v85, vceqq_s8(vaddq_s8(v84, v508), vnegq_s8(vaddq_s8(v506, v510)))), vorrq_s8(vandq_s8(vceqzq_s8(v80), v81), vandq_s8(v83, v41)));
  v87 = vsubq_s8(v32, vqtbl1q_s8(v32, xmmword_29D2F1010));
  v88 = vsubq_s8(v33, vqtbl1q_s8(v33, xmmword_29D2F1010));
  v502 = vsubq_s8(v27, vqtbl1q_s8(v27, xmmword_29D2F1010));
  v504 = vsubq_s8(v26, vqtbl1q_s8(v26, xmmword_29D2F1010));
  v89 = vqtbl1q_s8(vmaxq_s8(v504, v502), xmmword_29D2F0F70);
  v90 = vqtbl1q_s8(vminq_s8(v504, v502), xmmword_29D2F0F70);
  v91 = vpmaxq_s8(v89, v89);
  v92 = vpminq_s8(v90, v90);
  v93 = vpmaxq_s8(v91, v91);
  v94 = vpminq_s8(v92, v92);
  v95 = vzip1q_s8(v93, v94);
  v96 = vbicq_s8(vsubq_s8(v41, vclsq_s8(v95)), vceqzq_s8(v95));
  v97 = vpmaxq_s8(v96, v96);
  v518 = v32;
  v520 = v33;
  v499 = vsubq_s8(v28, vqtbl1q_s8(v28, xmmword_29D2F1010));
  v500 = vsubq_s8(v29, vqtbl1q_s8(v29, xmmword_29D2F1010));
  v98 = vqtbl1q_s8(vmaxq_s8(v499, v500), xmmword_29D2F0F70);
  v99 = vqtbl1q_s8(vminq_s8(v499, v500), xmmword_29D2F0F70);
  v100 = vpmaxq_s8(v98, v98);
  v101 = vpminq_s8(v99, v99);
  v102 = vpmaxq_s8(v100, v100);
  v103 = vpminq_s8(v101, v101);
  v104 = vmaxq_s8(v93, v102);
  v105 = vminq_s8(v94, v103);
  v106 = vzip1q_s8(v102, v103);
  v107 = vbicq_s8(vsubq_s8(v41, vclsq_s8(v106)), vceqzq_s8(v106));
  v108 = vpmaxq_s8(v107, v107);
  v516 = v31;
  v496 = vsubq_s8(v31, vqtbl1q_s8(v31, xmmword_29D2F1010));
  v497 = vsubq_s8(v30, vqtbl1q_s8(v30, xmmword_29D2F1010));
  v109 = vqtbl1q_s8(vmaxq_s8(v497, v496), xmmword_29D2F0F70);
  v110 = vqtbl1q_s8(vminq_s8(v497, v496), xmmword_29D2F0F70);
  v111 = vpmaxq_s8(v109, v109);
  v112 = vpminq_s8(v110, v110);
  v113 = vpmaxq_s8(v111, v111);
  v114 = vpminq_s8(v112, v112);
  v115 = vmaxq_s8(v104, v113);
  v116 = vminq_s8(v105, v114);
  v117 = vzip1q_s8(v113, v114);
  v118 = vbicq_s8(vsubq_s8(v41, vclsq_s8(v117)), vceqzq_s8(v117));
  v119 = vpmaxq_s8(v118, v118);
  v120 = vqtbl1q_s8(vmaxq_s8(v87, v88), xmmword_29D2F0F70);
  v121 = vqtbl1q_s8(vminq_s8(v87, v88), xmmword_29D2F0F70);
  v122 = vpmaxq_s8(v120, v120);
  v123 = vpminq_s8(v121, v121);
  v124 = vpmaxq_s8(v122, v122);
  v125 = vpminq_s8(v123, v123);
  v126 = vmaxq_s8(v115, v124);
  v127 = vminq_s8(v116, v125);
  v128 = vzip1q_s8(v124, v125);
  v129 = vbicq_s8(vsubq_s8(v41, vclsq_s8(v128)), vceqzq_s8(v128));
  v130 = vpmaxq_s8(v129, v129);
  v131 = vmaxq_s8(vmaxq_s8(v97, v108), vmaxq_s8(v119, v130));
  v132 = vclzq_s8(vsubq_s8(v126, v127));
  v133 = vsubq_s8(v41, v132);
  v134 = vcgtq_s8(v131, v133);
  v135 = vminq_s8(v133, v131);
  v131.i64[0] = 0x1010101010101010;
  v131.i64[1] = 0x1010101010101010;
  v136.i64[0] = 0x1818181818181818;
  v136.i64[1] = 0x1818181818181818;
  v137 = vorrq_s8(vandq_s8(vceqzq_s8(v135), v81), vbslq_s8(v134, v136, v131));
  v138 = vmaxq_s8(vminq_s8(vsubq_s8(v135, v97), v81), 0);
  v139 = vmaxq_s8(vminq_s8(vsubq_s8(v135, v108), v81), 0);
  v140 = vmaxq_s8(vminq_s8(vsubq_s8(v135, v119), v81), 0);
  v141 = v30;
  v142 = vmaxq_s8(vminq_s8(vsubq_s8(v135, v130), v81), 0);
  v143 = vsubq_s8(v135, v138);
  v144 = vsubq_s8(v135, v139);
  v145 = vsubq_s8(v135, v140);
  v146 = vsubq_s8(v135, v142);
  v147.i64[0] = 0x404040404040404;
  v147.i64[1] = 0x404040404040404;
  v148 = vorrq_s8(v137, vbicq_s8(v147, vceqq_s8(vaddq_s8(v142, v140), vnegq_s8(vaddq_s8(v138, v139)))));
  v149 = vmovl_u8(*v148.i8);
  v139.i64[0] = 0x8000800080008;
  v139.i64[1] = 0x8000800080008;
  v150 = v28;
  v140.i64[0] = 0x2000200020002;
  v140.i64[1] = 0x2000200020002;
  v151 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v145.i8, *v144.i8), *v146.i8), 3uLL), *v143.i8, 0x707070707070707), vandq_s8(vshll_n_u8(*v148.i8, 1uLL), v139)), vbicq_s8(vmovl_s8(*v135.i8), vceqzq_s16((*&v149 & __PAIR128__(0xFFE8FFE8FFE8FFE8, 0xFFE8FFE8FFE8FFE8))))), vandq_s8(vceqq_s16((*&v149 & __PAIR128__(0xFFE3FFE3FFE3FFE3, 0xFFE3FFE3FFE3FFE3)), v140), v139));
  v152 = vsubq_s8(v80, v506);
  v153 = vsubq_s8(v80, v510);
  v154 = vsubq_s8(v80, v508);
  v155 = vsubq_s8(v80, v84);
  v156 = vandq_s8(vceqq_s16((*&vmovl_u8(*v86.i8) & __PAIR128__(0xFFF3FFF3FFF3FFF3, 0xFFF3FFF3FFF3FFF3)), v140), v139);
  v139.i8[1] = 8;
  v139.i8[3] = 8;
  v139.i8[5] = 8;
  v139.i8[7] = 8;
  v157 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vaddq_s16(vaddw_s8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v154.i8, *v153.i8), *v155.i8), 3uLL), *v152.i8, 0x707070707070707), vbic_s8(*v80.i8, vcgt_u8(*v139.i8, *v86.i8))), (*&vshll_n_u8(*v86.i8, 1uLL) & __PAIR128__(0xFFE9FFE9FFE9FFE9, 0xFFE9FFE9FFE9FFE9))), v156), v151)), 0);
  if (vaddlvq_s8(v157))
  {
    v158.i64[0] = 0x707070707070707;
    v158.i64[1] = 0x707070707070707;
    v159.i64[0] = -1;
    v159.i64[1] = -1;
    v160 = vandq_s8(vsubq_s8(vshlq_s8(v159, vsubq_s8(v158, v132)), v127), v134);
    v24 = vbslq_s8(v157, vsubq_s8(v24, vqtbl1q_s8(v24, xmmword_29D2F1010)), v24);
    v509 = vbslq_s8(v157, v504, v26);
    v511 = vbslq_s8(v157, v502, v27);
    v29 = vbslq_s8(v157, v500, v29);
    v161 = vbslq_s8(v157, v497, v141);
    v162 = vbslq_s8(v157, v496, v516);
    v163 = vbslq_s8(v157, v87, v518);
    v152 = vbslq_s8(v157, v143, v152);
    v153 = vbslq_s8(v157, v144, v153);
    v164 = vbslq_s8(v157, v145, v154);
    v155 = vbslq_s8(v157, v146, v155);
    v165 = vbslq_s8(v157, v160, v514);
    v80 = vbslq_s8(v157, v135, v80);
    v86 = vbslq_s8(v157, v148, v86);
    v166 = vbslq_s8(v157, v88, v520);
    v167 = vbslq_s8(v157, v499, v150);
    if (v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v509 = v26;
    v511 = v27;
    v163 = v518;
    v166 = v520;
    v165 = v514;
    v162 = v516;
    v161 = v141;
    v167 = v150;
    v164 = v154;
    if (v11)
    {
      goto LABEL_16;
    }
  }

  v503 = v167;
  v505 = v29;
  v507 = v161;
  v515 = v165;
  v517 = v162;
  v519 = v163;
  v521 = v166;
  v501 = v155;
  v498 = v164;
  v178 = vsubq_s8(v14, vqtbl2q_s8(*v14.i8, xmmword_29D2F0F80));
  v169 = vsubq_s8(v15, vqtbl2q_s8(*v14.i8, xmmword_29D2F1030));
  v522.val[0] = v512;
  v522.val[1] = v491;
  v522.val[1].i32[3] = v15.i32[3];
  v170 = vsubq_s8(v512, vqtbl2q_s8(v522, xmmword_29D2F0FA0));
  v171 = vsubq_s8(v491, vqtbl2q_s8(v522, xmmword_29D2F1040));
  v522.val[0] = v495;
  v522.val[1] = v493;
  v522.val[1].i32[3] = v15.i32[3];
  v172 = vqtbl2q_s8(v522, xmmword_29D2F0F80);
  v173 = vsubq_s8(v495, vqtbl2q_s8(v522, xmmword_29D2F1050));
  v522.val[0] = v494;
  v522.val[1] = v492;
  v522.val[1].i32[3] = v15.i32[3];
  v174 = vsubq_s8(v493, v172);
  v175 = vsubq_s8(v494, vqtbl2q_s8(v522, xmmword_29D2F1060));
  v176 = vsubq_s8(v492, vqtbl2q_s8(v522, xmmword_29D2F0F80));
  v177 = v169;
  v177.i32[3] = v178.i32[0];
  v178.i32[0] = v169.i32[3];
  v179 = vqtbl1q_s8(vmaxq_s8(v178, v177), xmmword_29D2F0F70);
  v180 = vqtbl1q_s8(vminq_s8(v178, v177), xmmword_29D2F0F70);
  v181 = vpmaxq_s8(v179, v179);
  v182 = vpminq_s8(v180, v180);
  v183 = vpmaxq_s8(v181, v181);
  v184 = vpminq_s8(v182, v182);
  v522.val[0] = vzip1q_s8(v183, v184);
  v185.i64[0] = 0x808080808080808;
  v185.i64[1] = 0x808080808080808;
  v522.val[0] = vbicq_s8(vsubq_s8(v185, vclsq_s8(v522.val[0])), vceqzq_s8(v522.val[0]));
  v186 = vpmaxq_s8(v522.val[0], v522.val[0]);
  v513 = v171;
  v522.val[0] = vqtbl1q_s8(vmaxq_s8(v170, v171), xmmword_29D2F0F70);
  v522.val[1] = vqtbl1q_s8(vminq_s8(v170, v171), xmmword_29D2F0F70);
  v522.val[0] = vpmaxq_s8(v522.val[0], v522.val[0]);
  v522.val[1] = vpminq_s8(v522.val[1], v522.val[1]);
  v522.val[0] = vpmaxq_s8(v522.val[0], v522.val[0]);
  v522.val[1] = vpminq_s8(v522.val[1], v522.val[1]);
  v187 = vmaxq_s8(v183, v522.val[0]);
  v188 = vminq_s8(v184, v522.val[1]);
  v522.val[0] = vzip1q_s8(v522.val[0], v522.val[1]);
  v522.val[0] = vbicq_s8(vsubq_s8(v185, vclsq_s8(v522.val[0])), vceqzq_s8(v522.val[0]));
  v189 = vpmaxq_s8(v522.val[0], v522.val[0]);
  v522.val[0] = vqtbl1q_s8(vmaxq_s8(v173, v174), xmmword_29D2F0F70);
  v522.val[1] = vqtbl1q_s8(vminq_s8(v173, v174), xmmword_29D2F0F70);
  v522.val[0] = vpmaxq_s8(v522.val[0], v522.val[0]);
  v522.val[1] = vpminq_s8(v522.val[1], v522.val[1]);
  v522.val[0] = vpmaxq_s8(v522.val[0], v522.val[0]);
  v522.val[1] = vpminq_s8(v522.val[1], v522.val[1]);
  v190 = vmaxq_s8(v187, v522.val[0]);
  v191 = vminq_s8(v188, v522.val[1]);
  v522.val[0] = vzip1q_s8(v522.val[0], v522.val[1]);
  v522.val[0] = vbicq_s8(vsubq_s8(v185, vclsq_s8(v522.val[0])), vceqzq_s8(v522.val[0]));
  v192 = vpmaxq_s8(v522.val[0], v522.val[0]);
  v522.val[0] = vqtbl1q_s8(vmaxq_s8(v175, v176), xmmword_29D2F0F70);
  v522.val[1] = vqtbl1q_s8(vminq_s8(v175, v176), xmmword_29D2F0F70);
  v522.val[0] = vpmaxq_s8(v522.val[0], v522.val[0]);
  v522.val[1] = vpminq_s8(v522.val[1], v522.val[1]);
  v522.val[0] = vpmaxq_s8(v522.val[0], v522.val[0]);
  v522.val[1] = vpminq_s8(v522.val[1], v522.val[1]);
  v193 = vmaxq_s8(v190, v522.val[0]);
  v194 = vminq_s8(v191, v522.val[1]);
  v522.val[0] = vzip1q_s8(v522.val[0], v522.val[1]);
  v522.val[0] = vbicq_s8(vsubq_s8(v185, vclsq_s8(v522.val[0])), vceqzq_s8(v522.val[0]));
  v195 = vpmaxq_s8(v522.val[0], v522.val[0]);
  v196 = vmaxq_s8(vmaxq_s8(v186, v189), vmaxq_s8(v192, v195));
  v197 = vclzq_s8(vsubq_s8(v193, v194));
  v198 = vsubq_s8(v185, v197);
  v199 = vcgtq_s8(v196, v198);
  v200 = vminq_s8(v198, v196);
  v185.i64[0] = 0x909090909090909;
  v185.i64[1] = 0x909090909090909;
  v201.i64[0] = 0x202020202020202;
  v201.i64[1] = 0x202020202020202;
  v202 = vorrq_s8(vandq_s8(vceqzq_s8(v200), v201), vsubq_s8(vandq_s8(v199, v185), vmvnq_s8(v199)));
  v185.i64[0] = 0x303030303030303;
  v185.i64[1] = 0x303030303030303;
  v203 = vmaxq_s8(vminq_s8(vsubq_s8(v200, v186), v185), 0);
  v204 = vmaxq_s8(vminq_s8(vsubq_s8(v200, v189), v185), 0);
  v205 = vmaxq_s8(vminq_s8(vsubq_s8(v200, v192), v185), 0);
  v206 = vmaxq_s8(vminq_s8(vsubq_s8(v200, v195), v185), 0);
  v207 = vsubq_s8(v200, v203);
  v208 = vsubq_s8(v200, v204);
  v209 = vsubq_s8(v200, v205);
  v210 = vsubq_s8(v200, v206);
  v211 = vceqq_s8(vaddq_s8(v206, v205), vnegq_s8(vaddq_s8(v203, v204)));
  v205.i64[0] = 0x404040404040404;
  v205.i64[1] = 0x404040404040404;
  v212 = vorrq_s8(v202, vbicq_s8(v205, v211));
  v213.i64[0] = 0x3000300030003;
  v213.i64[1] = 0x3000300030003;
  v214 = vmovl_s8(*v86.i8);
  v206.i64[0] = 0x8000800080008;
  v206.i64[1] = 0x8000800080008;
  v215 = vbicq_s8(vmovl_s8(*v80.i8), vceqzq_s16(vandq_s8(v214, v206)));
  v216 = vandq_s8(v214, v213);
  v213.i64[0] = 0x2000200020002;
  v213.i64[1] = 0x2000200020002;
  v217 = vdupq_lane_s32(vqmovn_u16(vcgtq_s16(vaddq_s16(vmlal_s8(vaddq_s16(vaddq_s16(v215, vandq_s8(vshll_n_s8(*v86.i8, 1uLL), v206)), vandq_s8(vceqq_s16(v216, v213), v206)), *v152.i8, 0x707070707070707), vshll_n_s8(vadd_s8(vadd_s8(*v498.i8, *v153.i8), *v501.i8), 3uLL)), vaddw_s8(vaddw_u8(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v209.i8, *v208.i8), *v210.i8), 3uLL), *v207.i8, 0x707070707070707), vand_s8(vadd_s8(*v212.i8, *v212.i8), 0x808080808080808)), vbic_s8(*v200.i8, vcgt_u8(0x808080808080808, *v212.i8))))), 0);
  if (vaddlvq_s8(v217))
  {
    v218.i64[0] = 0x707070707070707;
    v218.i64[1] = 0x707070707070707;
    v219 = vsubq_s8(v218, v197);
    v218.i64[0] = -1;
    v218.i64[1] = -1;
    v220 = vandq_s8(vsubq_s8(vshlq_s8(v218, v219), v194), v199);
    v24.i32[0] = vbslq_s8(v217, vextq_s8(v15, v15, 0xCuLL), v24).u32[0];
    v221 = vbslq_s8(v217, v178, v509);
    v222 = vbslq_s8(v217, v177, v511);
    v167 = vbslq_s8(v217, v170, v503);
    v29 = vbslq_s8(v217, v513, v505);
    v161 = vbslq_s8(v217, v173, v507);
    v162 = vbslq_s8(v217, v174, v517);
    v163 = vbslq_s8(v217, v175, v519);
    v166 = vbslq_s8(v217, v176, v521);
    v152 = vbslq_s8(v217, v207, v152);
    v153 = vbslq_s8(v217, v208, v153);
    v223 = vbslq_s8(v217, v209, v498);
    v155 = vbslq_s8(v217, v210, v501);
    v165 = vbslq_s8(v217, v220, v515);
    v80 = vbslq_s8(v217, v200, v80);
    v86 = vbslq_s8(v217, v212, v86);
    v164 = v223;
    goto LABEL_17;
  }

  v163 = v519;
  v166 = v521;
  v165 = v515;
  v162 = v517;
  v29 = v505;
  v161 = v507;
  v155 = v501;
  v167 = v503;
  v164 = v498;
LABEL_16:
  v221 = v509;
  v222 = v511;
LABEL_17:
  v224 = vmovl_s8(*v86.i8);
  v225.i64[0] = 0x8000800080008;
  v225.i64[1] = 0x8000800080008;
  v226 = vbicq_s8(vmovl_s8(*v80.i8), vceqzq_s16(vandq_s8(v224, v225)));
  v227.i64[0] = 0x3000300030003;
  v227.i64[1] = 0x3000300030003;
  v228 = vandq_s8(v224, v227);
  v227.i64[0] = 0x2000200020002;
  v227.i64[1] = 0x2000200020002;
  v229 = vaddq_s16(vaddq_s16(vaddq_s16(vmlal_s8(vshll_n_s8(vadd_s8(vadd_s8(*v164.i8, *v153.i8), *v155.i8), 3uLL), *v152.i8, 0x707070707070707), vandq_s8(vshll_n_s8(*v86.i8, 1uLL), v225)), v226), vandq_s8(vceqq_s16(v228, v227), v225));
  v230 = vpaddq_s16(v229, v229);
  v231 = vpaddq_s16(v230, v230).u64[0];
  if ((v231.i16[0] - 449) < 0xFFFFFFFFFFFFFDF8)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(a1, a2, a3, a4, a5, a6, a7);
    return 64;
  }

  else
  {
    v232 = (a1 & 0xFFFFFFFFFFFFFFF8);
    v233 = 8 * (a1 & 7);
    if (v233)
    {
      v234 = *v232 & ~(-1 << v233);
    }

    else
    {
      v234 = 0;
    }

    *a2 = 0;
    v235 = vzip1_s8(*v80.i8, v231);
    v236 = vadd_s16(v235, 0xFF00FF00FF00FFLL);
    v237 = vmovl_u16(vceqz_s16((*&v235 & 0xFF00FF00FF00FFLL)));
    v238.i64[0] = v237.u32[0];
    v238.i64[1] = v237.u32[1];
    v239 = vshrq_n_s64(vshlq_n_s64(v238, 0x38uLL), 0x38uLL);
    v238.i64[0] = v237.u32[2];
    v238.i64[1] = v237.u32[3];
    v240 = vshrq_n_s64(vshlq_n_s64(v238, 0x38uLL), 0x38uLL);
    v241 = vshlq_u32(vmovl_u16(vand_s8(v236, 0x7000700070007)), xmmword_29D2F1070);
    v238.i64[0] = v241.u32[0];
    v238.i64[1] = v241.u32[1];
    v242 = v238;
    v238.i64[0] = v241.u32[2];
    v238.i64[1] = v241.u32[3];
    v243 = vorrq_s8(vbicq_s8(v242, v239), vbicq_s8(v238, v240));
    v244 = *&vorr_s8(*v243.i8, *&vextq_s8(v243, v243, 8uLL)) | (32 * (v86.i8[1] & 0x1F)) | ((v86.i8[3] & 0x1F) << 15) | ((v86.i8[2] & 0x1F) << 10) | v86.i8[0] & 0x1F;
    v245 = v234 | (v244 << v233);
    if (v233 >= 0x20)
    {
      *v232 = v245;
      v245 = v244 >> (-8 * (a1 & 7u));
    }

    v246 = v24.u8[0] | (v24.u8[1] << 8) | (v24.u8[2] << 16) & 0xFFFFFFFF00FFFFFFLL | (v24.u8[3] << 24);
    v247 = (v233 + 32) & 0x38;
    v248 = v245 | (v246 << v247);
    if (v247 >= 0x20)
    {
      *(v232 + (((v233 + 32) >> 3) & 8)) = v248;
      v248 = v246 >> -v247;
    }

    v249 = vsubq_s8(v80, v152);
    v250 = vsubq_s8(v80, v153);
    v251 = vsubq_s8(v80, v164);
    v252 = vsubq_s8(v80, v155);
    v253 = vtrn1q_s8(v249, v250);
    v254 = vtrn2q_s8(v249, v250);
    v255 = vtrn1q_s8(v251, v252);
    v256 = vtrn2q_s8(v251, v252);
    v257 = vzip1q_s16(v254, v256);
    v258 = vtrn2q_s16(v254, v256);
    v256.i64[0] = vzip1q_s32(vzip1q_s16(v253, v255), v257).u64[0];
    v258.i64[0] = vzip1q_s32(vtrn2q_s16(v253, v255), v258).u64[0];
    v252.i64[0] = 0x202020202020202;
    v252.i64[1] = 0x202020202020202;
    v259 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(*v86.i8), 0x4000400040004)), v252);
    v252.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v252.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v253.i64[0] = -1;
    v253.i64[1] = -1;
    v260 = vshlq_u8(v253, vorrq_s8(v259, v252));
    v261 = vmovl_u8(vand_s8(*v260.i8, *v256.i8));
    v262 = vmovl_u8(vand_s8(*&vextq_s8(v260, v260, 8uLL), *v258.i8));
    v263 = vmovl_u8(*v259.i8);
    v264 = vmovl_high_u8(v259);
    v265 = vpaddq_s16(vshlq_u16(v261, vtrn1q_s16(0, v263)), vshlq_u16(v262, vtrn1q_s16(0, v264)));
    v266 = vpaddq_s16(v263, v264);
    v267 = vmovl_u16(*v266.i8);
    v268 = vmovl_high_u16(v266);
    v269 = vpaddq_s32(vshlq_u32(vmovl_u16(*v265.i8), vtrn1q_s32(0, v267)), vshlq_u32(vmovl_high_u16(v265), vtrn1q_s32(0, v268)));
    v270 = vpaddq_s32(v267, v268);
    v271.i64[0] = v269.u32[0];
    v271.i64[1] = v269.u32[1];
    v272 = v271;
    v271.i64[0] = v269.u32[2];
    v271.i64[1] = v269.u32[3];
    v273 = v271;
    v271.i64[0] = v270.u32[0];
    v271.i64[1] = v270.u32[1];
    v274 = v271;
    v271.i64[0] = v270.u32[2];
    v271.i64[1] = v270.u32[3];
    v275 = vpaddq_s64(vshlq_u64(v272, vzip1q_s64(0, v274)), vshlq_u64(v273, vzip1q_s64(0, v271)));
    v276 = vpaddq_s64(v274, v271);
    v277 = (v275.i64[0] << v233) | v248;
    if (v276.i64[0] + v233 >= 0x40)
    {
      v232[1] = v277;
      v277 = v275.i64[0] >> (-8 * (a1 & 7u));
      if (!v233)
      {
        v277 = 0;
      }
    }

    v278 = vceqq_s8(v80, v152);
    v279 = v276.i64[0] + (v233 | 0x40);
    v280 = v277 | (v275.i64[1] << v279);
    if ((v279 & 0x3F) + v276.i64[1] >= 0x40)
    {
      *(v232 + ((v279 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v280;
      v280 = v275.i64[1] >> -(v279 & 0x3F);
      if ((v279 & 0x3F) == 0)
      {
        v280 = 0;
      }
    }

    v281 = vandq_s8(v165, v278);
    v282 = v279 + v276.i64[1];
    v283.i64[0] = 0x808080808080808;
    v283.i64[1] = 0x808080808080808;
    v284.i64[0] = -1;
    v284.i64[1] = -1;
    v285 = vandq_s8(vextq_s8(vtstq_s8(v86, v283), 0, 0xCuLL), v80);
    v286.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v286.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v287 = vandq_s8(vshlq_u8(v284, vaddq_s8(v285, v286)), v165);
    v288 = vmovl_u8(*v285.i8);
    v289 = vpaddq_s16(vshlq_u16(vmovl_u8(*v287.i8), vtrn1q_s16(0, v288)), vmovl_high_u8(v287));
    v290 = vpaddq_s16(v288, vmovl_high_u8(v285));
    v291 = vmovl_u16(*v290.i8);
    v292 = vmovl_high_u16(v290);
    v293 = vpaddq_s32(vshlq_u32(vmovl_u16(*v289.i8), vtrn1q_s32(0, v291)), vshlq_u32(vmovl_high_u16(v289), vtrn1q_s32(0, v292)));
    v294 = vpaddq_s32(v291, v292);
    v295.i64[0] = v293.u32[0];
    v295.i64[1] = v293.u32[1];
    v296 = v295;
    v295.i64[0] = v293.u32[2];
    v295.i64[1] = v293.u32[3];
    v297 = v295;
    v295.i64[0] = v294.u32[0];
    v295.i64[1] = v294.u32[1];
    v298 = v295;
    v295.i64[0] = v294.u32[2];
    v295.i64[1] = v294.u32[3];
    v299 = vpaddq_s64(vshlq_u64(v296, vzip1q_s64(0, v298)), vshlq_u64(v297, vzip1q_s64(0, v295)));
    v300 = vpaddq_s64(v298, v295);
    v301 = (v299.i64[0] << v282) | v280;
    if (v300.i64[0] + (v282 & 0x3F) >= 0x40)
    {
      *(v232 + ((v282 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v301;
      v301 = v299.i64[0] >> -(v282 & 0x3F);
      if ((v282 & 0x3F) == 0)
      {
        v301 = 0;
      }
    }

    v302 = vaddq_s8(v281, v221);
    v303 = v300.i64[0] + v282;
    v304 = v301 | (v299.i64[1] << v303);
    if ((v303 & 0x3F) + v300.i64[1] >= 0x40)
    {
      *(v232 + ((v303 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v304;
      v304 = v299.i64[1] >> -(v303 & 0x3F);
      if ((v303 & 0x3F) == 0)
      {
        v304 = 0;
      }
    }

    v305 = v303 + v300.i64[1];
    v306 = vextq_s8(0, v152, 0xCuLL);
    v307.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v307.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v308.i64[0] = -1;
    v308.i64[1] = -1;
    v309 = vandq_s8(vshlq_u8(v308, vaddq_s8(v306, v307)), v302);
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
    v324 = (v322.i64[0] << v305) | v304;
    if (v323.i64[0] + (v305 & 0x3F) >= 0x40)
    {
      *(v232 + ((v305 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v324;
      v324 = v322.i64[0] >> -(v305 & 0x3F);
      if ((v305 & 0x3F) == 0)
      {
        v324 = 0;
      }
    }

    v325 = vceqq_s8(v80, v153);
    v326 = vaddq_s8(v222, v281);
    v327 = v323.i64[0] + v305;
    v328 = v324 | (v322.i64[1] << v327);
    if ((v327 & 0x3F) + v323.i64[1] >= 0x40)
    {
      *(v232 + ((v327 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v328;
      v328 = v322.i64[1] >> -(v327 & 0x3F);
      if ((v327 & 0x3F) == 0)
      {
        v328 = 0;
      }
    }

    v329 = vandq_s8(v165, v325);
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
      *(v232 + ((v330 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v348;
      v348 = v346.i64[0] >> -(v330 & 0x3F);
      if ((v330 & 0x3F) == 0)
      {
        v348 = 0;
      }
    }

    v349 = vaddq_s8(v167, v329);
    v350 = v347.i64[0] + v330;
    v351 = v348 | (v346.i64[1] << v350);
    if ((v350 & 0x3F) + v347.i64[1] >= 0x40)
    {
      *(v232 + ((v350 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v351;
      v351 = v346.i64[1] >> -(v350 & 0x3F);
      if ((v350 & 0x3F) == 0)
      {
        v351 = 0;
      }
    }

    v352 = v350 + v347.i64[1];
    v353.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v353.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v354.i64[0] = -1;
    v354.i64[1] = -1;
    v355 = vshlq_u8(v354, vaddq_s8(v153, v353));
    v356 = vandq_s8(v355, v349);
    v357 = vmovl_u8(*v356.i8);
    v358 = vmovl_high_u8(v356);
    v359 = vmovl_u8(*v153.i8);
    v360 = vmovl_high_u8(v153);
    v361 = vtrn1q_s16(0, v359);
    v362 = vtrn1q_s16(0, v360);
    v363 = vpaddq_s16(vshlq_u16(v357, v361), vshlq_u16(v358, v362));
    v364 = vpaddq_s16(v359, v360);
    v365 = vmovl_u16(*v363.i8);
    v366 = vmovl_high_u16(v363);
    v367 = vmovl_u16(*v364.i8);
    v368 = vmovl_high_u16(v364);
    v369 = vtrn1q_s32(0, v367);
    v370 = vtrn1q_s32(0, v368);
    v371 = vpaddq_s32(vshlq_u32(v365, v369), vshlq_u32(v366, v370));
    v372 = vpaddq_s32(v367, v368);
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
    v377 = vzip1q_s64(0, v376);
    v378 = vzip1q_s64(0, v373);
    v379 = vpaddq_s64(vshlq_u64(v374, v377), vshlq_u64(v375, v378));
    v380 = vpaddq_s64(v376, v373);
    v381 = (v379.i64[0] << v352) | v351;
    if (v380.i64[0] + (v352 & 0x3F) >= 0x40)
    {
      *(v232 + ((v352 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v381;
      if ((v352 & 0x3F) != 0)
      {
        v381 = v379.i64[0] >> -(v352 & 0x3F);
      }

      else
      {
        v381 = 0;
      }
    }

    v382 = vceqq_s8(v80, v164);
    v383 = vaddq_s8(v29, v329);
    v384 = v380.i64[0] + v352;
    v385 = v381 | (v379.i64[1] << v384);
    if ((v384 & 0x3F) + v380.i64[1] >= 0x40)
    {
      *(v232 + ((v384 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v385;
      v385 = v379.i64[1] >> -(v384 & 0x3F);
      if ((v384 & 0x3F) == 0)
      {
        v385 = 0;
      }
    }

    v386 = vandq_s8(v165, v382);
    v387 = v384 + v380.i64[1];
    v388 = vandq_s8(v355, v383);
    v389 = vpaddq_s16(vshlq_u16(vmovl_u8(*v388.i8), v361), vshlq_u16(vmovl_high_u8(v388), v362));
    v390 = vpaddq_s32(vshlq_u32(vmovl_u16(*v389.i8), v369), vshlq_u32(vmovl_high_u16(v389), v370));
    v391.i64[0] = v390.u32[0];
    v391.i64[1] = v390.u32[1];
    v392 = v391;
    v391.i64[0] = v390.u32[2];
    v391.i64[1] = v390.u32[3];
    v393 = vpaddq_s64(vshlq_u64(v392, v377), vshlq_u64(v391, v378));
    v394 = (v393.i64[0] << v387) | v385;
    if (v380.i64[0] + (v387 & 0x3F) >= 0x40)
    {
      *(v232 + ((v387 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v394;
      v394 = v393.i64[0] >> -(v387 & 0x3F);
      if ((v387 & 0x3F) == 0)
      {
        v394 = 0;
      }
    }

    v395 = vaddq_s8(v161, v386);
    v396 = v380.i64[0] + v387;
    v397 = (v380.i64[0] + v387) & 0x3F;
    v398 = v394 | (v393.i64[1] << v396);
    if ((v396 & 0x3F) + v380.i64[1] >= 0x40)
    {
      *(v232 + ((v396 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v398;
      v398 = v393.i64[1] >> -v397;
      if (!v397)
      {
        v398 = 0;
      }
    }

    v399 = v396 + v380.i64[1];
    v400.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v400.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v401.i64[0] = -1;
    v401.i64[1] = -1;
    v402 = vshlq_u8(v401, vaddq_s8(v164, v400));
    v403 = vandq_s8(v402, v395);
    v404 = vmovl_u8(*v403.i8);
    v405 = vmovl_high_u8(v403);
    v406 = vmovl_u8(*v164.i8);
    v407 = vmovl_high_u8(v164);
    v408 = vtrn1q_s16(0, v406);
    v409 = vtrn1q_s16(0, v407);
    v410 = vpaddq_s16(vshlq_u16(v404, v408), vshlq_u16(v405, v409));
    v411 = vpaddq_s16(v406, v407);
    v412 = vmovl_u16(*v410.i8);
    v413 = vmovl_high_u16(v410);
    v414 = vmovl_u16(*v411.i8);
    v415 = vmovl_high_u16(v411);
    v416 = vtrn1q_s32(0, v414);
    v417 = vtrn1q_s32(0, v415);
    v418 = vpaddq_s32(vshlq_u32(v412, v416), vshlq_u32(v413, v417));
    v419 = vpaddq_s32(v414, v415);
    v420.i64[0] = v418.u32[0];
    v420.i64[1] = v418.u32[1];
    v421 = v420;
    v420.i64[0] = v418.u32[2];
    v420.i64[1] = v418.u32[3];
    v422 = v420;
    v420.i64[0] = v419.u32[0];
    v420.i64[1] = v419.u32[1];
    v423 = v420;
    v420.i64[0] = v419.u32[2];
    v420.i64[1] = v419.u32[3];
    v424 = vzip1q_s64(0, v423);
    v425 = vzip1q_s64(0, v420);
    v426 = vpaddq_s64(vshlq_u64(v421, v424), vshlq_u64(v422, v425));
    v427 = vpaddq_s64(v423, v420);
    v428 = (v426.i64[0] << v399) | v398;
    if (v427.i64[0] + (v399 & 0x3F) >= 0x40)
    {
      *(v232 + ((v399 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v428;
      if ((v399 & 0x3F) != 0)
      {
        v428 = v426.i64[0] >> -(v399 & 0x3F);
      }

      else
      {
        v428 = 0;
      }
    }

    v429 = vceqq_s8(v80, v155);
    v430 = vaddq_s8(v162, v386);
    v431 = v427.i64[0] + v399;
    v432 = v428 | (v426.i64[1] << v431);
    if ((v431 & 0x3F) + v427.i64[1] >= 0x40)
    {
      *(v232 + ((v431 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v432;
      v432 = v426.i64[1] >> -(v431 & 0x3F);
      if ((v431 & 0x3F) == 0)
      {
        v432 = 0;
      }
    }

    v433 = vandq_s8(v165, v429);
    v434 = v431 + v427.i64[1];
    v435 = vandq_s8(v402, v430);
    v436 = vpaddq_s16(vshlq_u16(vmovl_u8(*v435.i8), v408), vshlq_u16(vmovl_high_u8(v435), v409));
    v437 = vpaddq_s32(vshlq_u32(vmovl_u16(*v436.i8), v416), vshlq_u32(vmovl_high_u16(v436), v417));
    v438.i64[0] = v437.u32[0];
    v438.i64[1] = v437.u32[1];
    v439 = v438;
    v438.i64[0] = v437.u32[2];
    v438.i64[1] = v437.u32[3];
    v440 = vpaddq_s64(vshlq_u64(v439, v424), vshlq_u64(v438, v425));
    v441 = (v440.i64[0] << v434) | v432;
    if (v427.i64[0] + (v434 & 0x3F) >= 0x40)
    {
      *(v232 + ((v434 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v441;
      v441 = v440.i64[0] >> -(v434 & 0x3F);
      if ((v434 & 0x3F) == 0)
      {
        v441 = 0;
      }
    }

    v442 = vaddq_s8(v163, v433);
    v443 = v427.i64[0] + v434;
    v444 = (v427.i64[0] + v434) & 0x3F;
    v445 = v441 | (v440.i64[1] << v443);
    if ((v443 & 0x3F) + v427.i64[1] >= 0x40)
    {
      *(v232 + ((v443 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v445;
      v445 = v440.i64[1] >> -v444;
      if (!v444)
      {
        v445 = 0;
      }
    }

    v446 = v443 + v427.i64[1];
    v447.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v447.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v448.i64[0] = -1;
    v448.i64[1] = -1;
    v449 = vshlq_u8(v448, vaddq_s8(v155, v447));
    v450 = vandq_s8(v449, v442);
    v451 = vmovl_u8(*v450.i8);
    v452 = vmovl_high_u8(v450);
    v453 = vmovl_u8(*v155.i8);
    v454 = vmovl_high_u8(v155);
    v455 = vtrn1q_s16(0, v453);
    v456 = vtrn1q_s16(0, v454);
    v457 = vpaddq_s16(vshlq_u16(v451, v455), vshlq_u16(v452, v456));
    v458 = vpaddq_s16(v453, v454);
    v459 = vmovl_u16(*v457.i8);
    v460 = vmovl_high_u16(v457);
    v461 = vmovl_u16(*v458.i8);
    v462 = vmovl_high_u16(v458);
    v463 = vtrn1q_s32(0, v461);
    v464 = vtrn1q_s32(0, v462);
    v465 = vpaddq_s32(vshlq_u32(v459, v463), vshlq_u32(v460, v464));
    v466 = vpaddq_s32(v461, v462);
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
    v471 = vzip1q_s64(0, v470);
    v472 = vzip1q_s64(0, v467);
    v473 = vpaddq_s64(vshlq_u64(v468, v471), vshlq_u64(v469, v472));
    v474 = vpaddq_s64(v470, v467);
    v475 = (v473.i64[0] << v446) | v445;
    if (v474.i64[0] + (v446 & 0x3F) > 0x3F)
    {
      *(v232 + ((v446 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v475;
      if ((v446 & 0x3F) != 0)
      {
        v475 = v473.i64[0] >> -(v446 & 0x3F);
      }

      else
      {
        v475 = 0;
      }
    }

    v476 = vaddq_s8(v166, v433);
    v477 = v474.i64[0] + v446;
    v478 = v475 | (v473.i64[1] << v477);
    if ((v477 & 0x3F) + v474.i64[1] >= 0x40)
    {
      *(v232 + ((v477 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v478;
      v478 = v473.i64[1] >> -(v477 & 0x3F);
      if ((v477 & 0x3F) == 0)
      {
        v478 = 0;
      }
    }

    v479 = v477 + v474.i64[1];
    v480 = vandq_s8(v449, v476);
    v481 = vpaddq_s16(vshlq_u16(vmovl_u8(*v480.i8), v455), vshlq_u16(vmovl_high_u8(v480), v456));
    v482 = vpaddq_s32(vshlq_u32(vmovl_u16(*v481.i8), v463), vshlq_u32(vmovl_high_u16(v481), v464));
    v483.i64[0] = v482.u32[0];
    v483.i64[1] = v482.u32[1];
    v484 = v483;
    v483.i64[0] = v482.u32[2];
    v483.i64[1] = v482.u32[3];
    v485 = vpaddq_s64(vshlq_u64(v484, v471), vshlq_u64(v483, v472));
    v486 = (v485.i64[0] << v479) | v478;
    if (v474.i64[0] + (v479 & 0x3F) >= 0x40)
    {
      *(v232 + ((v479 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v486;
      v486 = v485.i64[0] >> -(v479 & 0x3F);
      if ((v479 & 0x3F) == 0)
      {
        v486 = 0;
      }
    }

    v487 = v474.i64[0] + v479;
    v488 = (v474.i64[0] + v479) & 0x3F;
    v489 = v486 | (v485.i64[1] << (v474.i8[0] + v479));
    if ((v488 + v474.i64[1]) >= 0x40)
    {
      *(v232 + ((v487 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v489;
      v489 = v485.i64[1] >> -v488;
      if (!v488)
      {
        v489 = 0;
      }
    }

    v490 = v487 + v474.i64[1];
    if ((v490 & 0x3F) != 0)
    {
      *(v232 + ((v490 >> 3) & 0x1FFFFFFFFFFFFFF8)) = v489;
    }

    result = (v490 - v233 + 7) >> 3;
    *a2 |= result - 1;
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblock(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  v105 = *MEMORY[0x29EDCA608];
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  if (a6 && a5)
  {
    if (a5 > 1)
    {
      v20 = a5 & 0x7E;
      if (a5 == v20)
      {
        v21 = 0;
        v22 = &v98;
        v23 = (a3 + 4);
        do
        {
          v24 = v23;
          v25 = v22;
          v26 = a5;
          do
          {
            v27 = *v24;
            *(v25 - 4) = *(v24 - 1);
            *v25 = v27;
            v25 += 2;
            v24 += 2;
            v26 -= 2;
          }

          while (v26);
          ++v21;
          v22 = (v22 + 4);
          v23 = (v23 + a4);
        }

        while (v21 != a6);
      }

      else
      {
        v28 = 0;
        v29 = &v98;
        v30 = (a3 + 4);
        v31 = &v97 + 2 * ((a5 >> 1) & 0x3F);
        do
        {
          v32 = v30;
          v33 = v29;
          v34 = a5 & 0x7E;
          do
          {
            v35 = *v32;
            *(v33 - 4) = *(v32 - 1);
            *v33 = v35;
            v33 += 2;
            v32 += 2;
            v34 -= 2;
          }

          while (v34);
          v36 = (a3 + v28 * a4 + 4 * v20);
          v37 = v31;
          v38 = a5 - v20;
          do
          {
            v39 = *v36++;
            *v37++ = v39;
            --v38;
          }

          while (v38);
          ++v28;
          v29 = (v29 + 4);
          v30 = (v30 + a4);
          v31 = (v31 + 4);
        }

        while (v28 != a6);
      }
    }

    else
    {
      v11 = 0;
      if (a6 < 2)
      {
        goto LABEL_9;
      }

      if (a4 != 1)
      {
        goto LABEL_9;
      }

      v11 = a6 & 0xFE;
      v12 = (a3 + 1);
      v13 = &v97 + 1;
      v14 = v11;
      do
      {
        v15 = *(v12 - 1);
        v16 = *v12;
        v12 = (v12 + 2);
        *(v13 - 1) = v15;
        *v13 = v16;
        v13 += 2;
        v14 -= 2;
      }

      while (v14);
      if (v11 != a6)
      {
LABEL_9:
        v17 = a6 - v11;
        v18 = &v97 + v11;
        v19 = (a3 + v11 * a4);
        do
        {
          *v18++ = *v19;
          v19 = (v19 + a4);
          --v17;
        }

        while (v17);
      }
    }
  }

  v40 = vmovl_u8(v97).u64[0];
  v41 = vmovl_u16(v40);
  v40.i32[0] = v98;
  v42 = vmovl_u16(*&vmovl_u8(v40));
  v89 = v41;
  v90 = v42;
  v42.i32[0] = DWORD1(v97);
  v42.i64[0] = vmovl_u8(*v42.i8).u64[0];
  v43 = vmovl_u16(*v42.i8);
  v42.i32[0] = DWORD1(v98);
  v44 = vmovl_u16(*&vmovl_u8(*v42.i8));
  v91 = v43;
  v92 = v44;
  v44.i32[0] = v99;
  v44.i64[0] = vmovl_u8(*v44.i8).u64[0];
  v45 = vmovl_u16(*v44.i8);
  v44.i32[0] = v100;
  v46 = vmovl_u16(*&vmovl_u8(*v44.i8));
  v93 = v45;
  v94 = v46;
  v46.i32[0] = DWORD1(v99);
  v46.i64[0] = vmovl_u8(*v46.i8).u64[0];
  v47 = vmovl_u16(*v46.i8);
  v46.i32[0] = DWORD1(v100);
  v95 = v47;
  v96 = vmovl_u16(*&vmovl_u8(*v46.i8));
  if (a5 >= 4)
  {
    v48 = 4;
  }

  else
  {
    v48 = a5;
  }

  if (a5 >= 4)
  {
    v49 = a5 - 4;
  }

  else
  {
    v49 = 0;
  }

  if (a6 >= 2)
  {
    v50 = 2;
  }

  else
  {
    v50 = a6;
  }

  if (a6 >= 2)
  {
    v51 = a6 - 2;
  }

  else
  {
    v51 = 0;
  }

  v52 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1, &v89, a7, v48, v50);
  v53.i32[0] = DWORD2(v97);
  v54 = vmovl_u8(v53).u64[0];
  v55 = vmovl_u16(v54);
  v54.i32[0] = DWORD2(v98);
  v56 = vmovl_u16(*&vmovl_u8(v54));
  v89 = v55;
  v90 = v56;
  v56.i32[0] = HIDWORD(v97);
  v56.i64[0] = vmovl_u8(*v56.i8).u64[0];
  v57 = vmovl_u16(*v56.i8);
  v56.i32[0] = HIDWORD(v98);
  v58 = vmovl_u16(*&vmovl_u8(*v56.i8));
  v91 = v57;
  v92 = v58;
  v58.i32[0] = DWORD2(v99);
  v58.i64[0] = vmovl_u8(*v58.i8).u64[0];
  v59 = vmovl_u16(*v58.i8);
  v58.i32[0] = DWORD2(v100);
  v60 = vmovl_u16(*&vmovl_u8(*v58.i8));
  v93 = v59;
  v94 = v60;
  v60.i32[0] = HIDWORD(v99);
  v60.i64[0] = vmovl_u8(*v60.i8).u64[0];
  v61 = vmovl_u16(*v60.i8);
  v60.i32[0] = HIDWORD(v100);
  v95 = v61;
  v96 = vmovl_u16(*&vmovl_u8(*v60.i8));
  if (a6 >= 4)
  {
    v62 = 2;
  }

  else
  {
    v62 = v51;
  }

  v63 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 16, &v89, a7, v48, v62);
  v64.i32[0] = v101;
  v65 = vmovl_u8(v64).u64[0];
  v66 = vmovl_u16(v65);
  v65.i32[0] = v102;
  v67 = vmovl_u16(*&vmovl_u8(v65));
  v89 = v66;
  v90 = v67;
  v67.i32[0] = DWORD1(v101);
  v67.i64[0] = vmovl_u8(*v67.i8).u64[0];
  v68 = vmovl_u16(*v67.i8);
  v67.i32[0] = DWORD1(v102);
  v69 = vmovl_u16(*&vmovl_u8(*v67.i8));
  v91 = v68;
  v92 = v69;
  v69.i32[0] = v103;
  v69.i64[0] = vmovl_u8(*v69.i8).u64[0];
  v70 = vmovl_u16(*v69.i8);
  v69.i32[0] = v104;
  v71 = vmovl_u16(*&vmovl_u8(*v69.i8));
  v93 = v70;
  v94 = v71;
  v71.i32[0] = DWORD1(v103);
  v71.i64[0] = vmovl_u8(*v71.i8).u64[0];
  v72 = vmovl_u16(*v71.i8);
  v71.i32[0] = DWORD1(v104);
  v95 = v72;
  v96 = vmovl_u16(*&vmovl_u8(*v71.i8));
  if (a5 >= 8)
  {
    v73 = 4;
  }

  else
  {
    v73 = v49;
  }

  v74 = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 32, &v89, a7, v73, v50);
  v75.i32[0] = DWORD2(v101);
  v76 = vmovl_u8(v75).u64[0];
  v77 = vmovl_u16(v76);
  v76.i32[0] = DWORD2(v102);
  v78 = vmovl_u16(*&vmovl_u8(v76));
  v89 = v77;
  v90 = v78;
  v78.i32[0] = HIDWORD(v101);
  v78.i64[0] = vmovl_u8(*v78.i8).u64[0];
  v79 = vmovl_u16(*v78.i8);
  v78.i32[0] = HIDWORD(v102);
  v80 = vmovl_u16(*&vmovl_u8(*v78.i8));
  v91 = v79;
  v92 = v80;
  v80.i32[0] = DWORD2(v103);
  v80.i64[0] = vmovl_u8(*v80.i8).u64[0];
  v81 = vmovl_u16(*v80.i8);
  v80.i32[0] = DWORD2(v104);
  v82 = vmovl_u16(*&vmovl_u8(*v80.i8));
  v93 = v81;
  v94 = v82;
  v82.i32[0] = HIDWORD(v103);
  v82.i64[0] = vmovl_u8(*v82.i8).u64[0];
  v83 = vmovl_u16(*v82.i8);
  v82.i32[0] = HIDWORD(v104);
  v95 = v83;
  v96 = vmovl_u16(*&vmovl_u8(*v82.i8));
  result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(a1 + 48, &v89, a7, v73, v62);
  if (v74)
  {
    v85 = 4;
  }

  else
  {
    v85 = 0;
  }

  if (v63)
  {
    v86 = 2;
  }

  else
  {
    v86 = 0;
  }

  if (result)
  {
    v87 = -8;
  }

  else
  {
    v87 = -16;
  }

  *a2 = v87 | v85 | v52 | v86;
  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::compressLossyCompressedSubblockDQuad(unint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5)
{
  v342 = *MEMORY[0x29EDCA608];
  v329[0] = 0;
  v329[1] = 0;
  memset_pattern16(&__b, &unk_29D2F2690, 0x10uLL);
  memset_pattern16(v328, &unk_29D2F26A0, 0x10uLL);
  v9 = 0;
  if (a4)
  {
    v10 = a5 < 2;
  }

  else
  {
    v10 = 1;
  }

  v311 = v10;
  v11 = a4 < 2 || a5 == 0;
  v309 = v11;
  v12 = a4 < 2 || a5 < 2;
  v307 = v12;
  v13 = a4 < 3 || a5 == 0;
  v305 = v13;
  v14 = a4 < 3 || a5 < 2;
  v15 = a4 < 4 || a5 == 0;
  v16 = a4 < 4 || a5 < 2;
  v17 = a2 + 64;
  do
  {
    v18 = (v17 + v9 * 4);
    v19 = *(a2 + v9 * 4);
    if (a3 == 1)
    {
      v28 = &v331[v9];
      if (v19 == 129)
      {
        v19 = 0;
      }

      else
      {
        v19 ^= 0x80u;
      }

      *v28 = v19;
      v29 = *(v18 - 12);
      if (v29 == 129)
      {
        v21 = 0;
      }

      else
      {
        v21 = v29 ^ 0x80;
      }

      v28[4] = v21;
      v30 = *(v18 - 8);
      v22 = v30 ^ 0x80;
      if (v30 == 129)
      {
        v22 = 0;
      }

      v28[8] = v22;
      v31 = *(v18 - 4);
      if (v31 == 129)
      {
        v23 = 0;
      }

      else
      {
        v23 = v31 ^ 0x80;
      }

      v28[12] = v23;
      if (*v18 == 129)
      {
        v24 = 0;
      }

      else
      {
        v24 = *v18 ^ 0x80;
      }

      v28[16] = v24;
      v32 = v18[4];
      if (v32 == 129)
      {
        v25 = 0;
      }

      else
      {
        v25 = v32 ^ 0x80;
      }

      v28[20] = v25;
      v33 = v18[8];
      v26 = v33 ^ 0x80;
      if (v33 == 129)
      {
        v26 = 0;
      }

      v28[24] = v26;
      v34 = v18[12];
      v27 = v34 ^ 0x80;
      if (v34 == 129)
      {
        v27 = 0;
      }

      v28[28] = v27;
    }

    else
    {
      if (a3 == 3)
      {
        v19 ^= 0x80u;
        v20 = &v331[v9];
        *v20 = v19;
        v21 = *(v17 + v9 * 4 - 48) ^ 0x80;
        v20[4] = v21;
        v22 = *(v17 + v9 * 4 - 32) ^ 0x80;
        v20[8] = v22;
        v23 = *(v17 + v9 * 4 - 16) ^ 0x80;
        v20[12] = v23;
        v24 = *(v17 + v9 * 4) ^ 0x80;
        v20[16] = v24;
        v25 = *(v17 + v9 * 4 + 16) ^ 0x80;
        v20[20] = v25;
        v26 = *(v17 + v9 * 4 + 32) ^ 0x80;
        v20[24] = v26;
        v27 = *(v17 + v9 * 4 + 48) ^ 0x80;
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
    if (v309)
    {
      v36 = v19;
      if (v311)
      {
        goto LABEL_66;
      }

LABEL_60:
      if (v22 < v36)
      {
        v336[v9] = 2;
        v337[v9] = v22;
        v36 = v22;
      }

      if (v19 >= v22)
      {
        v38 = &v336[v9 + 4];
      }

      else
      {
        v38 = &v331[v9 + 8];
      }

      v19 = *v38;
      *v35 = *v38;
      goto LABEL_66;
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
    if (!v311)
    {
      goto LABEL_60;
    }

LABEL_66:
    if (v307)
    {
      if (v13)
      {
        goto LABEL_68;
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

      if (v19 >= v23)
      {
        v39 = &v336[v9 + 4];
      }

      else
      {
        v39 = &v331[v9 + 12];
      }

      v19 = *v39;
      *v35 = *v39;
      if (v13)
      {
LABEL_68:
        if (v15)
        {
          goto LABEL_69;
        }

        goto LABEL_83;
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
LABEL_69:
      if (v14)
      {
        goto LABEL_70;
      }

      goto LABEL_88;
    }

LABEL_83:
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
LABEL_70:
      if (v16)
      {
        goto LABEL_98;
      }

LABEL_93:
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
      goto LABEL_98;
    }

LABEL_88:
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
      goto LABEL_93;
    }

LABEL_98:
    v44 = __clz(v19 - v36);
    v45 = v19 - v36;
    if (v19 == v36)
    {
      if (v36)
      {
        v46 = v36 != 255;
      }

      else
      {
        v46 = 0;
      }
    }

    else
    {
      v46 = 33 - v44;
    }

    *(&v332 + v9 * 4) = v46;
    if ((a3 | 2) == 3)
    {
      v47 = 0;
      if (v19 >= 0x80 && v36 <= 0x7F)
      {
        v47 = kDQuadParamTable[10 * v46 + 8] == 0;
      }

      if (v46 <= 5)
      {
LABEL_110:
        if (!v47)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v47 = 0;
      if (v46 <= 5)
      {
        goto LABEL_110;
      }
    }

    v48 = kDQuadParamTable[10 * v46 + 4] - v47;
    if (v47)
    {
      v49 = 0;
    }

    else
    {
      v49 = -2;
    }

    v50 = v36 & ~(-1 << (8 - v48));
    if (v48 >= 8)
    {
      v51 = 0;
    }

    else
    {
      v51 = v50;
    }

    v52 = v51 + v49;
    v53 = __clz(v52 + v45);
    if (v52 >= 1 && v53 < v44)
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
  v58 = 0x30u;
  while (2)
  {
    v60 = *(v326 + v58);
    v61 = v331[v58 / 4 + 20];
    v62 = &kDQuadParamTable[160 * v60 + 10 * v61];
    v63 = *(v62 + 1);
    v65 = v62[4];
    v64 = v62[5];
    *(&v315 + v58) = v65;
    v66 = &v318 + v58;
    *(&v314 + v58) = v64;
    v67 = *(&v316 + v58) - *(&v318 + v58);
    if (v67 < 0)
    {
      v69 = &kDQuadParamTable[160 * v60 + 10 * v61];
      if (v69[7] < (*(&v318 + v58) - *(&v316 + v58)))
      {
        *(v66 - 12) = --v64;
        if (!v69[8])
        {
          v68 = -1;
LABEL_136:
          *(&v315 + v58) = v68 + v65;
        }
      }
    }

    else if (v67)
    {
      v64 += v67;
      *(v66 - 12) = v64;
      v68 = v67;
      goto LABEL_136;
    }

    if (v60 == 5 && v61 == 1)
    {
      v55 |= v67 < 2;
    }

    if (a3 == 4)
    {
      v70 = 1 << (v336[v58 / 4] - 1);
      if (v60 == 3)
      {
        v71 = -31745;
      }

      else
      {
        v71 = -1;
      }

      if (v60 == 4)
      {
        v72 = -2139095041;
      }

      else
      {
        v72 = v71;
      }

      if (v57)
      {
        if (v309)
        {
          goto LABEL_151;
        }

LABEL_165:
        v76 = *(&v330[6] + v58);
        v78 = (v76 | v72) == 0xFFFFFFFF || v76 == v70;
        v55 |= v78;
        if (!v311)
        {
          goto LABEL_172;
        }

LABEL_152:
        if (v307)
        {
          goto LABEL_153;
        }

LABEL_179:
        v82 = v331[v58 / 4];
        v84 = (v82 | v72) == 0xFFFFFFFF || v82 == v70;
        v55 |= v84;
        if (!v305)
        {
          goto LABEL_186;
        }

LABEL_154:
        if (v15)
        {
          goto LABEL_155;
        }

LABEL_193:
        v88 = v331[v58 / 4 + 8];
        v90 = (v88 | v72) == 0xFFFFFFFF || v88 == v70;
        v55 |= v90;
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
        v73 = *(&v330[5] + v58);
        v75 = (v73 | v72) == 0xFFFFFFFF || v73 == v70;
        v55 |= v75;
        if (!v309)
        {
          goto LABEL_165;
        }

LABEL_151:
        if (v311)
        {
          goto LABEL_152;
        }

LABEL_172:
        v79 = *(&v330[7] + v58);
        v81 = (v79 | v72) == 0xFFFFFFFF || v79 == v70;
        v55 |= v81;
        if (!v307)
        {
          goto LABEL_179;
        }

LABEL_153:
        if (v305)
        {
          goto LABEL_154;
        }

LABEL_186:
        v85 = v331[v58 / 4 + 4];
        v87 = (v85 | v72) == 0xFFFFFFFF || v85 == v70;
        v55 |= v87;
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
        v91 = v331[v58 / 4 + 12];
        v93 = (v91 | v72) == 0xFFFFFFFF || v91 == v70;
        v55 |= v93;
        if (!v16)
        {
LABEL_207:
          v94 = v331[v58 / 4 + 16];
          v96 = (v94 | v72) == 0xFFFFFFFF || v94 == v70;
          v55 |= v96;
        }
      }
    }

    if (v63 >> v64 > 1 << *(&AGX::AppleCompressionGen2::PixelFormatInfo<(AGX::AppleCompressionGen2::PixelFormat)15,(AGXTextureFootprint)3>::lossyFallBackInfo + v58))
    {
      v59 = 1;
    }

    else
    {
      v59 = v57;
    }

    v55 |= v59;
    v58 += 4;
    if (v58 != 64)
    {
      continue;
    }

    break;
  }

  v97 = 0;
  v316 = 0;
  v317 = 0;
  v314 = 0u;
  v315 = 0u;
  memset(v313, 0, sizeof(v313));
  v98 = v331;
  v99 = v330;
  do
  {
    v100 = 0;
    v101 = 0;
    v102 = *(&__b + v97);
    if (v102 >= *(&v322 + v97))
    {
      v103 = *(&v322 + v97);
    }

    else
    {
      v103 = *(&__b + v97);
    }

    *(&v322 + v97) = v103;
    v104 = -1 << v102;
    v105 = &kDQuadParamTable[160 * *(v329 + v97) + 10 * *(&v332 + v97)];
    if (v105[5])
    {
      v106 = v102;
    }

    else
    {
      v106 = 0;
    }

    if (v106 >= *(&v318 + v97))
    {
      v106 = *(&v318 + v97);
    }

    *(&v318 + v97) = v106;
    v107 = *(v105 + 1);
    v108 = v337[v97] & (-1 << (v102 - v103));
    *(&v316 + v97) = v108;
    v109 = v107 >> v106;
    v110 = &v331[v97];
    v111 = *v110 - v108;
    v112 = &v330[2 * v97];
    if (v57)
    {
      v111 = 0;
    }

    v113 = v110[4] - v108;
    if (v309)
    {
      v113 = 0;
    }

    *v112 = v111;
    v112[1] = v113;
    v114 = v110[8] - v108;
    if (v311)
    {
      v114 = 0;
    }

    v115 = v110[12] - v108;
    if (v307)
    {
      v115 = 0;
    }

    v112[2] = v114;
    v112[3] = v115;
    v116 = v110[16] - v108;
    if (v305)
    {
      v116 = 0;
    }

    v117 = v110[20] - v108;
    if (v15)
    {
      v117 = 0;
    }

    v112[4] = v116;
    v112[5] = v117;
    v118 = v110[24] - v108;
    if (v14)
    {
      v118 = 0;
    }

    v119 = v110[28] - v108;
    if (v16)
    {
      v119 = 0;
    }

    v112[6] = v118;
    v112[7] = v119;
    if (v109 <= 1)
    {
      v120 = 1;
    }

    else
    {
      v120 = v109;
    }

    v121 = 4 * v336[v97];
    v122 = v313 + 28 * v97;
    v123 = &byte_29D2F3081;
    do
    {
      if (v121 != v100)
      {
        if (v106)
        {
          v124 = *(v99 + v100) / v120;
        }

        else
        {
          LODWORD(v124) = 0;
        }

        *&v122[4 * v101] = v124;
        if (v109 >= 2)
        {
          v125 = *(v99 + v100);
          if (v125)
          {
            if (v125 / v120 * v120 == v125 && ((v125 / v120) & 1) != 0)
            {
              if (v108 || v124 != 1)
              {
                if ((a3 | 2) != 3 || (v127 = v98[v100], v128 = v328[v97], v127 != v128) && ((a3 | 2) != 3 || v120 + v128 != v127))
                {
                  LODWORD(v124) = v124 - 1;
                  *&v122[4 * v101] = v124;
                }
              }

              else
              {
                LODWORD(v124) = 1;
              }
            }
          }
        }

        if (v124 >> v106 || (v98[v100] ^ v104) == 0xFFFFFFFF)
        {
          *&v122[4 * v101] = ~(-1 << v106);
        }

        if (*v123 >= a5 || *(v123 - 1) >= a4)
        {
          *&v122[4 * v101] = 0;
        }

        ++v101;
      }

      v100 += 4;
      v123 += 2;
    }

    while (v100 != 32);
    ++v97;
    v99 += 2;
    ++v98;
  }

  while (v97 != 4);
  v129 = (a1 & 0xFFFFFFFFFFFFFFF8);
  v130 = 8 * (a1 & 7);
  *a1 = 0;
  *(a1 + 8) = 0;
  if (v55)
  {
    v131 = 0;
    v132 = 0;
    v133 = __b;
    v134 = v339;
    v135 = __b - 4;
    v136 = v339 - 4;
    v138 = v340;
    v137 = v341;
    v139 = v340 - 4;
    v140 = v341 - 4;
    v141 = 8 * (a1 & 7);
    while (1)
    {
      v142 = &AGX::AppleCompressionGen2::kSampleOffsets + 2 * v131;
      v143 = v142[1] < a5 && a4 > *v142;
      v144 = !v143;
      if (v143)
      {
        v145 = v331[4 * v131] >> 4;
        if (v135 > 0x100)
        {
          goto LABEL_291;
        }
      }

      else
      {
        v145 = 0;
        if (v135 > 0x100)
        {
          goto LABEL_291;
        }
      }

      if (v133 != 4 && (v141 - v130 + (v132 << 6) + v135) <= 0x80)
      {
        v146 = 0;
        v147 = v133 - 4;
        do
        {
          v148 = 64 - v141;
          if (64 - v141 >= v147)
          {
            v148 = v147;
          }

          v129[v132] |= ((v145 >> v146) & ~(-1 << v148)) << v141;
          v146 += v148;
          v149 = v148 + v141;
          v132 += v149 >> 6;
          v141 = v149 & 0x3F;
          v147 -= v148;
        }

        while (v147);
      }

LABEL_291:
      v150 = &v331[4 * v131];
      if (v144)
      {
        v151 = 0;
        if (v136 > 0x100)
        {
          goto LABEL_301;
        }
      }

      else
      {
        v151 = v150[1] >> 4;
        if (v136 > 0x100)
        {
          goto LABEL_301;
        }
      }

      if (v134 != 4 && (v141 - v130 + (v132 << 6) + v136) <= 0x80)
      {
        v152 = 0;
        v153 = v134 - 4;
        do
        {
          v154 = 64 - v141;
          if (64 - v141 >= v153)
          {
            v154 = v153;
          }

          v129[v132] |= ((v151 >> v152) & ~(-1 << v154)) << v141;
          v152 += v154;
          v155 = v154 + v141;
          v132 += v155 >> 6;
          v141 = v155 & 0x3F;
          v153 -= v154;
        }

        while (v153);
      }

LABEL_301:
      if (v144)
      {
        v156 = 0;
        if (v139 > 0x100)
        {
          goto LABEL_311;
        }
      }

      else
      {
        v156 = v150[2] >> 4;
        if (v139 > 0x100)
        {
          goto LABEL_311;
        }
      }

      if (v138 != 4 && (v141 - v130 + (v132 << 6) + v139) <= 0x80)
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

          v129[v132] |= ((v156 >> v157) & ~(-1 << v159)) << v141;
          v157 += v159;
          v160 = v159 + v141;
          v132 += v160 >> 6;
          v141 = v160 & 0x3F;
          v158 -= v159;
        }

        while (v158);
      }

LABEL_311:
      if (v144)
      {
        v161 = 0;
        if (v140 <= 0x100)
        {
          goto LABEL_315;
        }
      }

      else
      {
        v161 = v150[3] >> 4;
        if (v140 <= 0x100)
        {
LABEL_315:
          if (v137 != 4 && (v141 - v130 + (v132 << 6) + v140) <= 0x80)
          {
            v162 = 0;
            v163 = v137 - 4;
            do
            {
              v164 = 64 - v141;
              if (64 - v141 >= v163)
              {
                v164 = v163;
              }

              v129[v132] |= ((v161 >> v162) & ~(-1 << v164)) << v141;
              v162 += v164;
              v165 = v164 + v141;
              v132 += v165 >> 6;
              v141 = v165 & 0x3F;
              v163 -= v164;
            }

            while (v163);
          }
        }
      }

      if (++v131 == 8)
      {
        return v55 & 1;
      }
    }
  }

  v166 = v332;
  if (v337[0] | v332)
  {
    if (v332 <= 2)
    {
      v167 = 0;
      v310 = 0;
      v168 = v332 + 1;
      goto LABEL_326;
    }

    v170 = 0;
    v168 = 0;
    v169 = 0;
    v167 = (v332 + 6) & 7;
    v310 = 1;
  }

  else
  {
    v167 = 0;
    v310 = 0;
    v168 = 0;
LABEL_326:
    v169 = 1;
    v170 = 2;
  }

  v171 = (v167 << v130) | *v129;
  *v129 = v171;
  v172 = v130 | 3;
  v173 = v333;
  if (v337[1] | v333)
  {
    if (v333 < 3)
    {
      v174 = 0;
      v308 = 0;
      v175 = v333 + 1;
      goto LABEL_332;
    }

    v312 = 0;
    v175 = 0;
    v176 = 0;
    v174 = (v333 + 6) & 7;
    v308 = 1;
  }

  else
  {
    v174 = 0;
    v308 = 0;
    v175 = 0;
LABEL_332:
    v176 = 1;
    v312 = 2;
  }

  if ((v172 - v130) <= 0x7D)
  {
    *v129 = (v174 << v172) | v171;
    v172 = v130 | 6;
  }

  v177 = v334;
  if (v337[2] | v334)
  {
    if (v334 < 3)
    {
      v178 = 0;
      v306 = 0;
      v179 = v334 + 1;
      goto LABEL_340;
    }

    v181 = 0;
    v179 = 0;
    v180 = 0;
    v178 = v334 - 2;
    v306 = 1;
  }

  else
  {
    v178 = 0;
    v306 = 0;
    v179 = 0;
LABEL_340:
    v180 = 1;
    v181 = 2;
  }

  if ((v172 - v130 - 126) >= 0xFFFFFFFFFFFFFF7FLL)
  {
    v182 = 0;
    v183 = 0;
    v184 = 3;
    do
    {
      v185 = 64 - v172;
      if (64 - v172 >= v184)
      {
        v185 = v184;
      }

      v129[v182] |= ((v178 >> v183) & ~(-1 << v185)) << v172;
      v183 += v185;
      v186 = v185 + v172;
      v182 += v186 >> 6;
      v172 = v186 & 0x3F;
      v184 -= v185;
    }

    while (v184);
  }

  else
  {
    v182 = 0;
  }

  v187 = v335;
  v188 = v337[3] | v335;
  v189 = v335 - 2;
  if (v335 >= 3)
  {
    v190 = 1;
  }

  else
  {
    v189 = 0;
    v190 = 0;
  }

  if (v335 >= 3)
  {
    v191 = 0;
  }

  else
  {
    v191 = 2;
  }

  if (v335 < 3)
  {
    v192 = v335 + 1;
  }

  else
  {
    v192 = 0;
  }

  if (v188)
  {
    v193 = v190;
  }

  else
  {
    v189 = 0;
    v193 = 0;
  }

  if (v188)
  {
    v194 = v191;
  }

  else
  {
    v194 = 2;
  }

  if (v188)
  {
    v195 = v192;
  }

  else
  {
    v195 = 0;
  }

  if (v188)
  {
    v196 = v335 < 3;
  }

  else
  {
    v196 = 1;
  }

  if ((v172 - v130 + (v182 << 6) + 3) <= 0x80)
  {
    v197 = 0;
    v198 = 3;
    do
    {
      v199 = 64 - v172;
      if (64 - v172 >= v198)
      {
        v199 = v198;
      }

      v129[v182] |= ((v189 >> v197) & ~(-1 << v199)) << v172;
      v197 += v199;
      v200 = v199 + v172;
      v182 += v200 >> 6;
      v172 = v200 & 0x3F;
      v198 -= v199;
    }

    while (v198);
  }

  if (!v169)
  {
    v206 = 12;
    if (!v176)
    {
      goto LABEL_394;
    }

    goto LABEL_385;
  }

  v201 = v170;
  v202 = v310;
  if (v172 - v130 + (v182 << 6) + v170 > 0x80)
  {
    v202 = 1;
  }

  if ((v202 & 1) == 0)
  {
    v203 = 0;
    do
    {
      v204 = 64 - v172;
      if (64 - v172 >= v201)
      {
        v204 = v201;
      }

      v129[v182] |= ((v168 >> v203) & ~(-1 << v204)) << v172;
      v203 += v204;
      v205 = v204 + v172;
      v182 += v205 >> 6;
      v172 = v205 & 0x3F;
      v201 -= v204;
    }

    while (v201);
  }

  v206 = v170 | 0xC;
  if (v176)
  {
LABEL_385:
    v207 = v312;
    if (v172 - v130 + (v182 << 6) + v312 > 0x80)
    {
      v208 = 1;
    }

    else
    {
      v208 = v308;
    }

    if ((v208 & 1) == 0)
    {
      v209 = 0;
      do
      {
        v210 = 64 - v172;
        if (64 - v172 >= v207)
        {
          v210 = v207;
        }

        v129[v182] |= ((v175 >> v209) & ~(-1 << v210)) << v172;
        v209 += v210;
        v211 = v210 + v172;
        v182 += v211 >> 6;
        v172 = v211 & 0x3F;
        v207 -= v210;
      }

      while (v207);
    }

    v206 += v312;
  }

LABEL_394:
  if (v180)
  {
    v213 = v181;
    v214 = v306;
    if (v172 - v130 + (v182 << 6) + v181 > 0x80)
    {
      v214 = 1;
    }

    if ((v214 & 1) == 0)
    {
      v215 = 0;
      do
      {
        v216 = 64 - v172;
        if (64 - v172 >= v213)
        {
          v216 = v213;
        }

        v129[v182] |= ((v179 >> v215) & ~(-1 << v216)) << v172;
        v215 += v216;
        v217 = v216 + v172;
        v182 += v217 >> 6;
        v172 = v217 & 0x3F;
        v213 -= v216;
      }

      while (v213);
    }

    v206 += v181;
    if (v196)
    {
      goto LABEL_406;
    }

LABEL_396:
    v212 = __b;
    if (v166)
    {
      goto LABEL_419;
    }

LABEL_415:
    if (v212 == 2 || v212 >= 0x10)
    {
      goto LABEL_419;
    }

    v223 = v339;
    if (!v173)
    {
      goto LABEL_528;
    }

LABEL_427:
    v230 = v323;
    if (v323 <= 0x100 && v323 && v172 - v130 + (v182 << 6) + v323 <= 0x80)
    {
      v231 = 0;
      v232 = (HIDWORD(v316) >> (v223 - v323));
      v233 = v323;
      do
      {
        v234 = 64 - v172;
        if (64 - v172 >= v233)
        {
          v234 = v233;
        }

        v129[v182] |= ((v232 >> v231) & ~(-1 << v234)) << v172;
        v231 += v234;
        v235 = v234 + v172;
        v182 += v235 >> 6;
        v172 = v235 & 0x3F;
        v233 -= v234;
      }

      while (v233);
    }

    v206 += v230;
  }

  else
  {
    if (!v196)
    {
      goto LABEL_396;
    }

LABEL_406:
    if ((v172 - v130 + (v182 << 6) + v194) > 0x80)
    {
      v218 = 1;
    }

    else
    {
      v218 = v193;
    }

    if ((v218 & 1) == 0)
    {
      v219 = 0;
      v220 = v194;
      do
      {
        v221 = 64 - v172;
        if (64 - v172 >= v220)
        {
          v221 = v220;
        }

        v129[v182] |= ((v195 >> v219) & ~(-1 << v221)) << v172;
        v219 += v221;
        v222 = v221 + v172;
        v182 += v222 >> 6;
        v172 = v222 & 0x3F;
        v220 -= v221;
      }

      while (v220);
    }

    v206 += v194;
    v212 = __b;
    if (!v166)
    {
      goto LABEL_415;
    }

LABEL_419:
    v224 = v322;
    if (v322 <= 0x100 && v322 && v172 - v130 + (v182 << 6) + v322 <= 0x80)
    {
      v225 = 0;
      v226 = v316 >> (v212 - v322);
      v227 = v322;
      do
      {
        v228 = 64 - v172;
        if (64 - v172 >= v227)
        {
          v228 = v227;
        }

        v129[v182] |= ((v226 >> v225) & ~(-1 << v228)) << v172;
        v225 += v228;
        v229 = v228 + v172;
        v182 += v229 >> 6;
        v172 = v229 & 0x3F;
        v227 -= v228;
      }

      while (v227);
    }

    v206 += v224;
    v223 = v339;
    if (v173)
    {
      goto LABEL_427;
    }

LABEL_528:
    if (v223 == 2 || v223 >= 0x10)
    {
      goto LABEL_427;
    }
  }

  if (v177 || v340 == 2 || v340 >= 0x10)
  {
    v236 = v324;
    if (v324 <= 0x100 && v324 && v172 - v130 + (v182 << 6) + v324 <= 0x80)
    {
      v237 = 0;
      v238 = v317 >> (v340 - v324);
      v239 = v324;
      do
      {
        v240 = 64 - v172;
        if (64 - v172 >= v239)
        {
          v240 = v239;
        }

        v129[v182] |= ((v238 >> v237) & ~(-1 << v240)) << v172;
        v237 += v240;
        v241 = v240 + v172;
        v182 += v241 >> 6;
        v172 = v241 & 0x3F;
        v239 -= v240;
      }

      while (v239);
    }

    v206 += v236;
  }

  if (v187 || v341 == 2 || v341 >= 0x10)
  {
    v242 = v325;
    if (v325 <= 0x100 && v325 && v172 - v130 + (v182 << 6) + v325 <= 0x80)
    {
      v243 = 0;
      v244 = (HIDWORD(v317) >> (v341 - v325));
      v245 = v325;
      do
      {
        v246 = 64 - v172;
        if (64 - v172 >= v245)
        {
          v246 = v245;
        }

        v129[v182] |= ((v244 >> v243) & ~(-1 << v246)) << v172;
        v243 += v246;
        v247 = v246 + v172;
        v182 += v247 >> 6;
        v172 = v247 & 0x3F;
        v245 -= v246;
      }

      while (v245);
    }

    v206 += v242;
  }

  v248 = v318;
  if (v318)
  {
    if ((v172 - v130 + (v182 << 6) + 3) <= 0x80)
    {
      v249 = 0;
      v250 = v336[0];
      v251 = 3;
      do
      {
        v252 = 64 - v172;
        if (64 - v172 >= v251)
        {
          v252 = v251;
        }

        v129[v182] |= ((v250 >> v249) & ~(-1 << v252)) << v172;
        v249 += v252;
        v253 = v252 + v172;
        v182 += v253 >> 6;
        v172 = v253 & 0x3F;
        v251 -= v252;
      }

      while (v251);
    }

    v206 += 3;
  }

  v254 = v319;
  if (v319)
  {
    if ((v172 - v130 + (v182 << 6) + 3) <= 0x80)
    {
      v255 = 0;
      v256 = v336[1];
      v257 = 3;
      do
      {
        v258 = 64 - v172;
        if (64 - v172 >= v257)
        {
          v258 = v257;
        }

        v129[v182] |= ((v256 >> v255) & ~(-1 << v258)) << v172;
        v255 += v258;
        v259 = v258 + v172;
        v182 += v259 >> 6;
        v172 = v259 & 0x3F;
        v257 -= v258;
      }

      while (v257);
    }

    v206 += 3;
  }

  v260 = v320;
  if (v320)
  {
    if ((v172 - v130 + (v182 << 6) + 3) <= 0x80)
    {
      v261 = 0;
      v262 = v336[2];
      v263 = 3;
      do
      {
        v264 = 64 - v172;
        if (64 - v172 >= v263)
        {
          v264 = v263;
        }

        v129[v182] |= ((v262 >> v261) & ~(-1 << v264)) << v172;
        v261 += v264;
        v265 = v264 + v172;
        v182 += v265 >> 6;
        v172 = v265 & 0x3F;
        v263 -= v264;
      }

      while (v263);
    }

    v206 += 3;
  }

  v266 = v321;
  if (v321)
  {
    if ((v172 - v130 + (v182 << 6) + 3) <= 0x80)
    {
      v267 = 0;
      v268 = v336[3];
      v269 = 3;
      do
      {
        v270 = 64 - v172;
        if (64 - v172 >= v269)
        {
          v270 = v269;
        }

        v129[v182] |= ((v268 >> v267) & ~(-1 << v270)) << v172;
        v267 += v270;
        v271 = v270 + v172;
        v182 += v271 >> 6;
        v172 = v271 & 0x3F;
        v269 -= v270;
      }

      while (v269);
    }

    v206 += 3;
  }

  v272 = 128 - v206;
  v273 = (128 - v206) / 7u;
  v274 = v272 % 7;
  if ((v274 - 257) >= 0xFFFFFF00 && v172 - v130 + (v182 << 6) + v274 <= 0x80)
  {
    do
    {
      v275 = 64 - v172;
      if (64 - v172 >= v274)
      {
        v275 = v274;
      }

      v276 = v275 + v172;
      v182 += v276 >> 6;
      v172 = v276 & 0x3F;
      v274 -= v275;
    }

    while (v274);
  }

  v277 = 0;
  while (2)
  {
    if (v248 && v248 <= 0x100 && v172 - v130 + (v182 << 6) + v248 <= 0x80)
    {
      v278 = 0;
      v279 = *(v313 + v277);
      v280 = v248;
      do
      {
        v281 = 64 - v172;
        if (64 - v172 >= v280)
        {
          v281 = v280;
        }

        v129[v182] |= ((v279 >> v278) & ~(-1 << v281)) << v172;
        v278 += v281;
        v282 = v281 + v172;
        v182 += v282 >> 6;
        v172 = v282 & 0x3F;
        v280 -= v281;
      }

      while (v280);
    }

    v283 = v313 + v277;
    if (!v254)
    {
      v289 = v248;
      if (!v260)
      {
        goto LABEL_512;
      }

      goto LABEL_505;
    }

    if (v254 <= 0x100 && v172 - v130 + (v182 << 6) + v254 <= 0x80)
    {
      v284 = 0;
      v285 = v283[7];
      v286 = v254;
      do
      {
        v287 = 64 - v172;
        if (64 - v172 >= v286)
        {
          v287 = v286;
        }

        v129[v182] |= ((v285 >> v284) & ~(-1 << v287)) << v172;
        v284 += v287;
        v288 = v287 + v172;
        v182 += v288 >> 6;
        v172 = v288 & 0x3F;
        v286 -= v287;
      }

      while (v286);
    }

    v289 = v254 + v248;
    if (v260)
    {
LABEL_505:
      if (v260 <= 0x100 && v172 - v130 + (v182 << 6) + v260 <= 0x80)
      {
        v290 = 0;
        v291 = v283[14];
        v292 = v260;
        do
        {
          v293 = 64 - v172;
          if (64 - v172 >= v292)
          {
            v293 = v292;
          }

          v129[v182] |= ((v291 >> v290) & ~(-1 << v293)) << v172;
          v290 += v293;
          v294 = v293 + v172;
          v182 += v294 >> 6;
          v172 = v294 & 0x3F;
          v292 -= v293;
        }

        while (v292);
      }

      v289 += v260;
    }

LABEL_512:
    if (v266)
    {
      if (v266 <= 0x100 && v172 - v130 + (v182 << 6) + v266 <= 0x80)
      {
        v295 = 0;
        v296 = v283[21];
        v297 = v266;
        do
        {
          v298 = 64 - v172;
          if (64 - v172 >= v297)
          {
            v298 = v297;
          }

          v129[v182] |= ((v296 >> v295) & ~(-1 << v298)) << v172;
          v295 += v298;
          v299 = v298 + v172;
          v182 += v299 >> 6;
          v172 = v299 & 0x3F;
          v297 -= v298;
        }

        while (v297);
      }

      v289 += v266;
    }

    v300 = v273 - v289;
    if (v300 && v300 <= 0x100 && v172 - v130 + (v182 << 6) + v300 <= 0x80)
    {
      do
      {
        v301 = 64 - v172;
        if (64 - v172 >= v300)
        {
          v301 = v300;
        }

        v302 = v301 + v172;
        v182 += v302 >> 6;
        v172 = v302 & 0x3F;
        v300 -= v301;
      }

      while (v300);
    }

    if (++v277 != 7)
    {
      continue;
    }

    return v55 & 1;
  }
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::deriveLossyDQuadBitSharing(unsigned int *a1, unsigned int *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = *a2;
  v5 = a1[1];
  v6 = kDQuadParamTable[160 * *a1 + 6 + 10 * *a2];
  *a4 = v6;
  *a3 = v6;
  v7 = a2[1];
  v8 = v7 >= v4;
  if (v7 <= v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = a2[1];
  }

  v10 = v7 < v4;
  if (v7 < v4)
  {
    v4 = a2[1];
  }

  v11 = kDQuadParamTable[160 * v5 + 6 + 10 * v7];
  a4[1] = v11;
  a3[1] = v11;
  v12 = a2[2];
  if (v12 >= v4)
  {
    v13 = v4;
  }

  else
  {
    v13 = a2[2];
  }

  if (v12 < v4)
  {
    v10 = 2;
  }

  v14 = v12 > v9;
  if (v12 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = a2[2];
  }

  if (v12 > v9)
  {
    v8 = 2;
  }

  v17 = a1[2];
  result = a1[3];
  v18 = kDQuadParamTable[160 * v17 + 6 + 10 * v12];
  a4[2] = v18;
  a3[2] = v18;
  v19 = a2[3];
  if (v14 || v19 > v15)
  {
    v21 = -2;
  }

  else
  {
    v21 = 1;
  }

  if (v19 <= v15)
  {
    v22 = v8;
  }

  else
  {
    v22 = 3;
  }

  if (v19 >= v13)
  {
    v23 = v10;
  }

  else
  {
    v23 = 3;
  }

  v24 = kDQuadParamTable[160 * result + 6 + 10 * v19];
  a4[3] = v24;
  a3[3] = v24;
  v25 = a2[v22];
  v26 = a2[v23];
  v27 = v22 + v21;
  v28 = v22 - 1;
  if (!v22)
  {
    v28 = 2;
  }

  if (v27 == v23)
  {
    v27 = v28;
  }

  v29 = a2[v27];
  v30 = a2[6 - (v22 + v23) - v27];
  v31 = v29 > v30;
  if (v29 <= v30)
  {
    v32 = v27;
  }

  else
  {
    v32 = 6 - (v22 + v23) - v27;
  }

  if (!v31)
  {
    v27 = 6 - (v22 + v23) - v27;
  }

  v33 = a2[v32];
  if (v25 - v33 <= 1 && v26 <= 1)
  {
    a4[v23] = 0;
    v38 = 1431655766 * a3[v23];
    a4[v32] += HIDWORD(v38) + (v38 >> 63);
    v39 = 1431655766 * (a3[v23] + 1);
    a4[v27] += HIDWORD(v39) + (v39 >> 63);
    v40 = 1431655766 * (a3[v23] + 2);
    v41 = HIDWORD(v40) + (v40 >> 63);
    v42 = a4[v22];
LABEL_51:
    a4[v22] = v41 + v42;
    return result;
  }

  v35 = a2[v27];
  if (v25 - v35 <= 1 && v26 <= 1)
  {
    a4[v23] = 0;
    v43 = a3[v32] & (a3[v32] >> 31);
    a4[v32] = v43;
    a4[v27] += (a3[v23] - v43 + a3[v32]) / 2;
    a4[v22] += (a3[v23] + a3[v32] - a4[v32] + 1) / 2;
    return result;
  }

  if (v35 - v26 > 1)
  {
    if (v35 - v26 != 2)
    {
      goto LABEL_59;
    }

    v37 = a3[v22];
  }

  else
  {
    v37 = a3[v22];
    if ((v37 & 0x80000000) == 0)
    {
      goto LABEL_59;
    }

    if (a3[v27] > 0)
    {
      goto LABEL_56;
    }
  }

  if (v37 <= -2 && a3[v27] >= 1)
  {
LABEL_56:
    v44 = 0;
    a4[v23] = 0;
    a4[v32] = 0;
    if (a3[v32] + a3[v23] >= 6)
    {
      v44 = a3[v27];
    }

    a4[v27] = v44;
    v41 = a3[v23] - v44 + a3[v32];
    v42 = a3[v27] + a4[v22];
    goto LABEL_51;
  }

LABEL_59:
  if (!v26 || a3[v23] < 1 || a3[v32] < 1 || (a3[v27] & 0x80000000) != 0 || a3[v22] > -2)
  {
    if (v25 != v26 && a3[v23] >= 1)
    {
      a4[v23] = 0;
      a4[v22] += a3[v23];
    }

    if (v35 != v33 && a3[v32] >= 1)
    {
      a4[v32] = 0;
      a4[v27] += a3[v32];
    }
  }

  else
  {
    a4[v23] = 0;
    a4[v32] = 0;
    a4[v27] = a3[v27];
    a4[v22] += a3[v32] + a3[v23];
  }

  return result;
}

uint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLosslessCompressedSubblock(int64x2_t *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = 8 * (a3 & 7);
  v5 = a3 & 0xFFFFFFFFFFFFFFF8;
  v6 = v4 + 32;
  v7 = *(a3 & 0xFFFFFFFFFFFFFFF8) >> v4;
  if (v4 >= 0x21)
  {
    v7 |= *(v5 + 8) << (-8 * (a3 & 7u));
  }

  v8 = vdupq_n_s64(v7);
  v9 = vmovn_s64(vshlq_u64(v8, xmmword_29D2F0F40));
  v10.i16[0] = v7;
  v10.i16[1] = v7 >> 5;
  v10.i16[2] = v9.i16[0];
  v10.i16[3] = v9.i16[2];
  *v8.i8 = vand_s8(vmovn_s64(vshlq_u64(v8, xmmword_29D2F0F50)), 0x700000007);
  v8.i16[1] = v8.i16[2];
  v8.i16[2] = (v7 >> 26) & 7;
  v8.i16[3] = v7 >> 29;
  v11 = vuzp1_s8(vand_s8(v10, 0x1F001F001F001FLL), *v8.i8);
  *v8.i8 = vadd_s16(*v8.i8, 0x1000100010001);
  v12 = vuzp1_s8(*v8.i8, *v8.i8);
  v13 = v4 | 0x40;
  v14 = v6 & 0x38;
  v15 = (v5 + ((v6 >> 3) & 8));
  v16 = *v15 >> (v6 & 0x38);
  if (v14 >= 0x21)
  {
    v16 |= v15[1] << -v14;
  }

  v17 = (8 * (a3 & 7)) | 0x200;
  v18 = vdupq_lane_s32(v11, 0);
  v19.i64[0] = 0x303030303030303;
  v19.i64[1] = 0x303030303030303;
  v306 = vandq_s8(v18, v19);
  v20 = vbicq_s8(vdupq_lane_s32(v12, 0), vceqq_s8(v306, v19));
  v21.i64[0] = 0x202020202020202;
  v21.i64[1] = 0x202020202020202;
  v22 = vandq_s8(vmovl_s16(vtst_s16(*&vmovl_u8(v11), 0x4000400040004)), v21);
  if (vmaxvq_s8(v22) < 1)
  {
    v30 = 0;
    v51.i64[0] = -1;
    v51.i64[1] = -1;
    v304 = v51;
    v305 = v51;
    v48 = v20;
    v49 = v20;
    v50 = v20;
    v301 = v51;
    v302 = v51;
    v47 = v20;
  }

  else
  {
    v23 = vmovl_u8(*&vpaddq_s8(v22, v22));
    v24 = vmovl_u16(*&vpaddq_s16(v23, v23));
    v25 = vpaddq_s32(v24, v24).u64[0];
    v26.i64[0] = v25;
    v26.i64[1] = HIDWORD(v25);
    v27 = v26;
    v28 = vaddvq_s64(v26);
    v29 = v28 <= 0x80 && v17 >= v28 + v13;
    v30 = !v29;
    v31 = 0uLL;
    if (v29)
    {
      v32 = vaddq_s64(vzip1q_s64(0, v27), vdupq_n_s64(v4));
      v31 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*(v5 + 8), 1), vsubq_s64(vdupq_n_s64(0x40uLL), v32)), vshlq_u64(vdupq_lane_s64(*(v5 + 8), 0), vnegq_s64(v32)));
      if (v28 + v4 >= 0x81)
      {
        v31 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(*(v5 + 24), 0), vsubq_s64(vdupq_n_s64(0x80uLL), v32)), vshlq_u64(vdupq_laneq_s64(*(v5 + 24), 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v32))), v31);
      }

      v13 += v28;
    }

    v33 = vzip1_s32(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
    v34.i64[0] = v33.u32[0];
    v34.i64[1] = v33.u32[1];
    v35 = vshlq_u64(v31, vnegq_s64(v34));
    v36 = vuzp1q_s32(vzip1q_s64(v31, v35), vzip2q_s64(v31, v35));
    v37 = vshlq_u32(v36, vnegq_s32((*&v23 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v38 = vuzp1q_s16(vzip1q_s32(v36, v37), vzip2q_s32(v36, v37));
    v39 = vshlq_u16(v38, vnegq_s16((*&v22 & __PAIR128__(0xFCFFFCFFFCFFFCFFLL, 0xFCFFFCFFFCFFFCFFLL))));
    v40 = vuzp1q_s8(vzip1q_s16(v38, v39), vzip2q_s16(v38, v39));
    v39.i64[0] = 0x101010101010101;
    v39.i64[1] = 0x101010101010101;
    v41 = vshlq_s8(v39, v22);
    v39.i64[0] = -1;
    v39.i64[1] = -1;
    v42 = vqtbl1q_s8(vandq_s8(vaddq_s8(v41, v39), v40), xmmword_29D2F0F70);
    v43 = vdupq_lane_s32(*v42.i8, 0);
    v44 = vdupq_lane_s32(*v42.i8, 1);
    v45 = vdupq_laneq_s32(v42, 2);
    v46 = vdupq_laneq_s32(v42, 3);
    v47 = vsubq_s8(v20, v43);
    v48 = vsubq_s8(v20, v44);
    v49 = vsubq_s8(v20, v45);
    v50 = vsubq_s8(v20, v46);
    v305 = vceqzq_s8(v43);
    v301 = vceqzq_s8(v44);
    v302 = vceqzq_s8(v45);
    v304 = vceqzq_s8(v46);
  }

  v52.i64[0] = 0x808080808080808;
  v52.i64[1] = 0x808080808080808;
  v53 = 0uLL;
  v54 = vandq_s8(vextq_s8(vtstq_s8(v18, v52), 0, 0xCuLL), v20);
  v55 = vmovl_u8(*&vpaddq_s8(v54, v54));
  v56 = vmovl_u16(*&vpaddq_s16(v55, v55));
  v57 = vpaddq_s32(v56, v56).u64[0];
  v58.i64[0] = v57;
  v58.i64[1] = HIDWORD(v57);
  v59 = v58;
  v60 = vaddvq_s64(v58);
  v61 = v60 + v13;
  if (v60 <= 0x80 && v17 >= v61)
  {
    v63 = v13 & 0x3F;
    v64 = vaddq_s64(vzip1q_s64(0, v59), vdupq_n_s64(v63));
    v65 = (v5 + 8 * (v13 >> 6));
    v53 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v65, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v64)), vshlq_u64(vdupq_lane_s64(v65->i64[0], 0), vnegq_s64(v64)));
    if (v60 + v63 >= 0x81)
    {
      v53 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v65[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v64)), vshlq_u64(vdupq_laneq_s64(v65[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v64))), v53);
    }

    v13 = v61;
  }

  else
  {
    v30 = 1;
  }

  v66 = v18.i8[0] & 3;
  if (v66 == 2)
  {
    if (v17 < v13 + 4)
    {
      v30 = 1;
    }

    else
    {
      v13 += 4;
    }

    v67 = v17 < v13 + 4;
    if (v17 >= v13 + 4)
    {
      v13 += 4;
    }

    v30 |= v67;
  }

  v68 = 0uLL;
  v69 = vextq_s8(0, v47, 0xCuLL);
  v70 = vmovl_u8(*&vpaddq_s8(v69, v69));
  v71 = vmovl_u16(*&vpaddq_s16(v70, v70));
  v72 = vpaddq_s32(v71, v71).u64[0];
  v73.i64[0] = v72;
  v73.i64[1] = HIDWORD(v72);
  v74 = v73;
  v75 = vaddvq_s64(v73);
  v76 = v75 + v13;
  if (v75 <= 0x80 && v17 >= v76)
  {
    v79 = v13 & 0x3F;
    v80 = vaddq_s64(vzip1q_s64(0, v74), vdupq_n_s64(v79));
    v81 = (v5 + 8 * (v13 >> 6));
    v78 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v81, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v80)), vshlq_u64(vdupq_lane_s64(v81->i64[0], 0), vnegq_s64(v80)));
    if (v75 + v79 >= 0x81)
    {
      v78 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v81[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v80)), vshlq_u64(vdupq_laneq_s64(v81[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v80))), v78);
    }

    v13 = v76;
  }

  else
  {
    v30 = 1;
    v78 = 0uLL;
  }

  v82 = vmovl_u8(*&vpaddq_s8(v47, v47));
  v83 = vmovl_u16(*&vpaddq_s16(v82, v82));
  v84 = vpaddq_s32(v83, v83).u64[0];
  v85.i64[0] = v84;
  v85.i64[1] = HIDWORD(v84);
  v86 = v85;
  v87 = vaddvq_s64(v85);
  v88 = v87 + v13;
  if (v87 <= 0x80 && v17 >= v88)
  {
    v90 = v13 & 0x3F;
    v91 = vaddq_s64(vzip1q_s64(0, v86), vdupq_n_s64(v90));
    v92 = (v5 + 8 * (v13 >> 6));
    v68 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v92, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v91)), vshlq_u64(vdupq_lane_s64(v92->i64[0], 0), vnegq_s64(v91)));
    if (v87 + v90 >= 0x81)
    {
      v68 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v92[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v91)), vshlq_u64(vdupq_laneq_s64(v92[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v91))), v68);
    }

    v13 = v88;
  }

  else
  {
    v30 = 1;
  }

  v93 = vmovl_u8(*&vpaddq_s8(v48, v48));
  v94 = vmovl_u16(*&vpaddq_s16(v93, v93));
  v95 = vpaddq_s32(v94, v94).u64[0];
  v96.i64[0] = v95;
  v96.i64[1] = HIDWORD(v95);
  v97 = v96;
  v98 = vaddvq_s64(v96);
  v99 = v98 + v13;
  v100 = 0uLL;
  if (v98 <= 0x80 && v17 >= v99)
  {
    v103 = v13 & 0x3F;
    v104 = vaddq_s64(vzip1q_s64(0, v97), vdupq_n_s64(v103));
    v105 = (v5 + 8 * (v13 >> 6));
    v102 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v105, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v104)), vshlq_u64(vdupq_lane_s64(v105->i64[0], 0), vnegq_s64(v104)));
    if (v98 + v103 >= 0x81)
    {
      v102 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v105[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v104)), vshlq_u64(vdupq_laneq_s64(v105[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v104))), v102);
    }

    v13 = v99;
  }

  else
  {
    v30 = 1;
    v102 = 0uLL;
  }

  v106 = v98 + v13;
  if (v98 <= 0x80 && v17 >= v106)
  {
    v108 = v13 & 0x3F;
    v109 = vaddq_s64(vzip1q_s64(0, v97), vdupq_n_s64(v108));
    v110 = (v5 + 8 * (v13 >> 6));
    v100 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v110, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v109)), vshlq_u64(vdupq_lane_s64(v110->i64[0], 0), vnegq_s64(v109)));
    if (v98 + v108 >= 0x81)
    {
      v100 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v110[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v109)), vshlq_u64(vdupq_laneq_s64(v110[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v109))), v100);
    }

    v13 = v106;
  }

  else
  {
    v30 = 1;
  }

  v111 = vmovl_u8(*&vpaddq_s8(v49, v49));
  v112 = vmovl_u16(*&vpaddq_s16(v111, v111));
  v113 = vpaddq_s32(v112, v112).u64[0];
  v114.i64[0] = v113;
  v114.i64[1] = HIDWORD(v113);
  v115 = v114;
  v116 = vaddvq_s64(v114);
  v117 = v116 + v13;
  v118 = 0uLL;
  if (v116 <= 0x80 && v17 >= v117)
  {
    v121 = v13 & 0x3F;
    v122 = vaddq_s64(vzip1q_s64(0, v115), vdupq_n_s64(v121));
    v123 = (v5 + 8 * (v13 >> 6));
    v120 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v123, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v122)), vshlq_u64(vdupq_lane_s64(v123->i64[0], 0), vnegq_s64(v122)));
    if (v116 + v121 >= 0x81)
    {
      v120 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v123[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v122)), vshlq_u64(vdupq_laneq_s64(v123[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v122))), v120);
    }

    v13 = v117;
    if (v116 > 0x80)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v30 = 1;
    v120 = 0uLL;
    if (v116 > 0x80)
    {
      goto LABEL_78;
    }
  }

  v124 = v116 + v13;
  if (v17 < v116 + v13)
  {
LABEL_78:
    v124 = v13;
    v30 = 1;
    goto LABEL_79;
  }

  v125 = v13 & 0x3F;
  v126 = vaddq_s64(vzip1q_s64(0, v115), vdupq_n_s64(v125));
  v127 = (v5 + 8 * (v13 >> 6));
  v118 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v127, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v126)), vshlq_u64(vdupq_lane_s64(v127->i64[0], 0), vnegq_s64(v126)));
  if (v116 + v125 >= 0x81)
  {
    v118 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v127[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v126)), vshlq_u64(vdupq_laneq_s64(v127[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v126))), v118);
  }

LABEL_79:
  v303 = v50;
  v128 = vmovl_u8(*&vpaddq_s8(v50, v50));
  v129 = vmovl_u16(*&vpaddq_s16(v128, v128));
  v130 = vpaddq_s32(v129, v129).u64[0];
  v131.i64[0] = v130;
  v131.i64[1] = HIDWORD(v130);
  v132 = v131;
  v133 = vaddvq_s64(v131);
  v134 = v133;
  if (v133 > 0x80 || (v135 = v133 + v124, v17 < v133 + v124))
  {
    v135 = v124;
    v30 = 1;
    v139 = 0uLL;
  }

  else
  {
    v136 = v124 & 0x3F;
    v137 = vaddq_s64(vzip1q_s64(0, v132), vdupq_n_s64(v136));
    v138 = (v5 + 8 * (v124 >> 6));
    v139 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v138, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v137)), vshlq_u64(vdupq_lane_s64(v138->i64[0], 0), vnegq_s64(v137)));
    if (v134 + v136 >= 0x81)
    {
      v139 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v138[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v137)), vshlq_u64(vdupq_laneq_s64(v138[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v137))), v139);
    }
  }

  if (v134 > 0x80 || v17 < v134 + v135)
  {
    goto LABEL_93;
  }

  v140 = vaddq_s64(vzip1q_s64(0, v132), vdupq_n_s64(v135 & 0x3F));
  v141 = (v5 + 8 * (v135 >> 6));
  v142 = vorrq_s8(vshlq_u64(vdupq_laneq_s64(*v141, 1), vsubq_s64(vdupq_n_s64(0x40uLL), v140)), vshlq_u64(vdupq_lane_s64(v141->i64[0], 0), vnegq_s64(v140)));
  if (v134 + (v135 & 0x3F) >= 0x81)
  {
    v142 = vorrq_s8(vorrq_s8(vshlq_u64(vdupq_lane_s64(v141[1].i64[0], 0), vsubq_s64(vdupq_n_s64(0x80uLL), v140)), vshlq_u64(vdupq_laneq_s64(v141[1], 1), vsubq_s64(vdupq_n_s64(0xC0uLL), v140))), v142);
  }

  if ((v30 & 1) != 0 || v17 + 8 * (a4 + 1) - (v134 + v135) - 512 >= 9 || v66 == 2)
  {
LABEL_93:
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>::writeErrorColorToSubblock(a1, a2);
    return 0;
  }

  else
  {
    v144 = vzip1_s32(*v56.i8, *&vextq_s8(v56, v56, 8uLL));
    v145 = vzip1_s32(*v71.i8, *&vextq_s8(v71, v71, 8uLL));
    v146 = vzip1_s32(*v83.i8, *&vextq_s8(v83, v83, 8uLL));
    v147 = vzip1_s32(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
    v148 = vzip1_s32(*v112.i8, *&vextq_s8(v112, v112, 8uLL));
    v149 = vzip1_s32(*v129.i8, *&vextq_s8(v129, v129, 8uLL));
    v150.i64[0] = v144.u32[0];
    v150.i64[1] = v144.u32[1];
    v151 = vshlq_u64(v53, vnegq_s64(v150));
    v152 = vzip2q_s64(v53, v151);
    v153 = vzip1q_s64(v53, v151);
    v150.i64[0] = v145.u32[0];
    v150.i64[1] = v145.u32[1];
    v154 = vshlq_u64(v78, vnegq_s64(v150));
    v155 = vzip2q_s64(v78, v154);
    v156 = vzip1q_s64(v78, v154);
    v150.i64[0] = v146.u32[0];
    v150.i64[1] = v146.u32[1];
    v157 = vshlq_u64(v68, vnegq_s64(v150));
    v158 = vzip2q_s64(v68, v157);
    v159 = vzip1q_s64(v68, v157);
    v150.i64[0] = v147.u32[0];
    v150.i64[1] = v147.u32[1];
    v160 = vnegq_s64(v150);
    v161 = vshlq_u64(v102, v160);
    v162 = vzip2q_s64(v102, v161);
    v163 = vzip1q_s64(v102, v161);
    v164 = vshlq_u64(v100, v160);
    v165 = vzip2q_s64(v100, v164);
    v166 = vzip1q_s64(v100, v164);
    v150.i64[0] = v148.u32[0];
    v150.i64[1] = v148.u32[1];
    v167 = vnegq_s64(v150);
    v168 = vshlq_u64(v120, v167);
    v169 = vzip2q_s64(v120, v168);
    v170 = vzip1q_s64(v120, v168);
    v171 = vshlq_u64(v118, v167);
    v172 = vzip2q_s64(v118, v171);
    v173 = vzip1q_s64(v118, v171);
    v150.i64[0] = v149.u32[0];
    v150.i64[1] = v149.u32[1];
    v174 = vnegq_s64(v150);
    v175 = vshlq_u64(v139, v174);
    v176 = vzip2q_s64(v139, v175);
    v177 = vzip1q_s64(v139, v175);
    v178 = vuzp1q_s32(v153, v152);
    v179 = vuzp1q_s32(v156, v155);
    v180 = vuzp1q_s32(v159, v158);
    v181 = vuzp1q_s32(v163, v162);
    v182 = vnegq_s32((*&v55 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v183 = vnegq_s32((*&v93 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v184 = vuzp1q_s32(v166, v165);
    v185 = vuzp1q_s32(v170, v169);
    v186 = vnegq_s32((*&v111 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v187 = vuzp1q_s32(v173, v172);
    v188 = vuzp1q_s32(v177, v176);
    v189 = vnegq_s32((*&v128 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)));
    v190 = vshlq_u32(v178, v182);
    v191 = vshlq_u32(v181, v183);
    v192 = vshlq_u32(v184, v183);
    v193 = vshlq_u32(v185, v186);
    v194 = vshlq_u32(v187, v186);
    v195 = vshlq_u32(v188, v189);
    v196 = vuzp1q_s16(vzip1q_s32(v178, v190), vzip2q_s32(v178, v190));
    v197 = vuzp1q_s16(vzip1q_s32(v181, v191), vzip2q_s32(v181, v191));
    v198 = vuzp1q_s16(vzip1q_s32(v184, v192), vzip2q_s32(v184, v192));
    v199 = vuzp1q_s16(vzip1q_s32(v185, v193), vzip2q_s32(v185, v193));
    v200 = vnegq_s16((*&v48 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v201 = vuzp1q_s16(vzip1q_s32(v187, v194), vzip2q_s32(v187, v194));
    v202 = vuzp1q_s16(vzip1q_s32(v188, v195), vzip2q_s32(v188, v195));
    v203 = vshlq_u16(v196, vnegq_s16((*&v54 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v204 = vshlq_u16(v197, v200);
    v205 = vshlq_u16(v198, v200);
    v206 = vzip2q_s16(v196, v203);
    v207 = vzip1q_s16(v196, v203);
    v208 = vuzp1q_s8(vzip1q_s16(v198, v205), vzip2q_s16(v198, v205));
    v205.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v205.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v203.i64[0] = 0x808080808080808;
    v203.i64[1] = 0x808080808080808;
    v209 = vsubq_s8(v203, v54);
    v210 = vaddq_s8(v54, v205);
    v211.i64[0] = 0x808080808080808;
    v211.i64[1] = 0x808080808080808;
    v212 = vshlq_s8(vuzp1q_s8(v207, v206), v209);
    v209.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v209.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v213 = vsubq_s8(v211, v48);
    v214 = vaddq_s8(v48, v209);
    v215 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v197, v204), vzip2q_s16(v197, v204)), v213);
    v216 = vshlq_s8(v208, v213);
    v217 = vnegq_s16((*&v49 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v218 = vshlq_s8(v212, v210);
    v219 = vshlq_s8(v215, v214);
    v220 = vshlq_s8(v216, v214);
    v221 = vdupq_lane_s32(*v218.i8, 0);
    v222 = vandq_s8(v301, v221);
    v223 = vsubq_s8(v219, v222);
    v224 = vsubq_s8(v220, v222);
    v225 = vshlq_u16(v199, v217);
    v226 = vshlq_u16(v201, v217);
    v227 = vuzp1q_s8(vzip1q_s16(v199, v225), vzip2q_s16(v199, v225));
    v222.i64[0] = 0x808080808080808;
    v222.i64[1] = 0x808080808080808;
    v199.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v199.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v228 = vsubq_s8(v222, v49);
    v229 = vaddq_s8(v49, v199);
    v230 = vshlq_s8(v227, v228);
    v231 = vshlq_s8(vuzp1q_s8(vzip1q_s16(v201, v226), vzip2q_s16(v201, v226)), v228);
    v232 = vnegq_s16((*&v303 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v233 = vshlq_s8(v231, v229);
    v234 = vandq_s8(v302, v221);
    v235 = vsubq_s8(vshlq_s8(v230, v229), v234);
    v236 = vsubq_s8(v233, v234);
    v237 = vshlq_u16(v202, v232);
    v238 = vzip2q_s16(v202, v237);
    v239 = vzip1q_s16(v202, v237);
    v202.i64[0] = 0x808080808080808;
    v202.i64[1] = 0x808080808080808;
    v240 = vuzp1q_s8(v239, v238);
    v238.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v238.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v241 = vsubq_s8(v202, v303);
    v242 = vaddq_s8(v303, v238);
    v243 = vshlq_u64(v142, v174);
    v244 = vuzp1q_s32(vzip1q_s64(v142, v243), vzip2q_s64(v142, v243));
    v245 = vshlq_u32(v244, v189);
    v246 = vuzp1q_s16(vzip1q_s32(v244, v245), vzip2q_s32(v244, v245));
    v247 = vshlq_u16(v246, v232);
    v248 = vshlq_s8(vshlq_s8(v240, v241), v242);
    v249 = vshlq_s8(vshlq_s8(vuzp1q_s8(vzip1q_s16(v246, v247), vzip2q_s16(v246, v247)), v241), v242);
    v250 = vandq_s8(v304, v221);
    v251 = vsubq_s8(v248, v250);
    v252 = vsubq_s8(v249, v250);
    v253 = vshlq_u32(v179, vnegq_s32((*&v70 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v254 = vshlq_u32(v180, vnegq_s32((*&v82 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL))));
    v255 = vuzp1q_s16(vzip1q_s32(v179, v253), vzip2q_s32(v179, v253));
    *v248.i8 = vmovn_s64(vshlq_u64(vdupq_n_s64(v16), xmmword_29D2F0F60));
    v256 = vuzp1q_s16(vzip1q_s32(v180, v254), vzip2q_s32(v180, v254));
    v257 = vshlq_u16(v255, vnegq_s16((*&v69 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v258 = vshlq_u16(v256, vnegq_s16((*&v47 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL))));
    v259 = vzip2q_s16(v255, v257);
    v260 = vzip1q_s16(v255, v257);
    v261 = vzip2q_s16(v256, v258);
    v262 = vzip1q_s16(v256, v258);
    v258.i16[0] = v16;
    v263 = v248.i8[4];
    v258.i8[2] = v248.i8[0];
    v264 = vuzp1q_s8(v260, v259);
    v260.i64[0] = 0x808080808080808;
    v260.i64[1] = 0x808080808080808;
    v265 = vuzp1q_s8(v262, v261);
    v261.i64[0] = 0xF8F8F8F8F8F8F8F8;
    v261.i64[1] = 0xF8F8F8F8F8F8F8F8;
    v266 = vshlq_s8(vshlq_s8(v265, vsubq_s8(v260, v47)), vaddq_s8(v47, v261));
    v267 = vaddq_s8(vandq_s8(v218, v305), vshlq_s8(vshlq_s8(v264, vsubq_s8(v260, v69)), vaddq_s8(v69, v261)));
    v268 = vandq_s8(v305, v221);
    v269.i64[0] = 0x101010101010101;
    v269.i64[1] = 0x101010101010101;
    v270 = vsubq_s8(v267, v268);
    v271 = vsubq_s8(v266, v268);
    v258.i8[3] = v263;
    v272 = vdupq_lane_s32(*v258.i8, 0);
    if (vaddlvq_s8(vceqq_s8(v306, v269)))
    {
      v273 = vnegq_s8(vandq_s8(v18, v269));
      v274 = v271;
      v274.i32[3] = v270.i32[0];
      v275 = v270;
      v275.i32[0] = v271.i32[3];
      v307.val[0] = vbslq_s8(v273, v275, v270);
      v307.val[1] = vbslq_s8(v273, v274, v271);
      v274.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
      v274.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
      v308.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(v307, xmmword_29D2F0F80), v273), v307.val[0]);
      v308.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(v307, v274), v273), v307.val[1]);
      v270 = vaddq_s8(vandq_s8(vqtbl2q_s8(v308, xmmword_29D2F0F90), v273), v308.val[0]);
      v271 = vaddq_s8(vandq_s8(vqtbl2q_s8(v308, v274), v273), v308.val[1]);
      v308.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v223.i8, xmmword_29D2F0FA0), v273), v223);
      v308.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v223.i8, xmmword_29D2F0FB0), v273), v224);
      v223 = vaddq_s8(vandq_s8(vqtbl2q_s8(v308, xmmword_29D2F0FC0), v273), v308.val[0]);
      v224 = vaddq_s8(vandq_s8(vqtbl2q_s8(v308, v274), v273), v308.val[1]);
      v308.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v235.i8, xmmword_29D2F0FD0), v273), v235);
      v308.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v235.i8, xmmword_29D2F0F80), v273), v236);
      v235 = vaddq_s8(vandq_s8(vqtbl2q_s8(v308, v274), v273), v308.val[0]);
      v236 = vaddq_s8(vandq_s8(vqtbl2q_s8(v308, xmmword_29D2F0FE0), v273), v308.val[1]);
      v307.val[0] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v251.i8, xmmword_29D2F0FF0), v273), v251);
      v307.val[1] = vaddq_s8(vandq_s8(vqtbl2q_s8(*v251.i8, xmmword_29D2F0F80), v273), v252);
      v251 = vaddq_s8(vandq_s8(vqtbl2q_s8(v307, v274), v273), v307.val[0]);
      v252 = vaddq_s8(vandq_s8(vqtbl2q_s8(v307, xmmword_29D2F1000), v273), v307.val[1]);
    }

    v276 = vaddq_s8(v270, v272);
    v277 = vaddq_s8(v271, v272);
    v278 = vaddq_s8(v223, v272);
    v279 = vaddq_s8(v224, v272);
    v280 = vaddq_s8(v235, v272);
    v281 = vaddq_s8(v236, v272);
    v282 = vaddq_s8(v251, v272);
    v283 = vaddq_s8(v252, v272);
    v284.i64[0] = 0x1010101010101010;
    v284.i64[1] = 0x1010101010101010;
    v285 = v18.i8[1];
    v286 = vtstq_s8(v18, v284);
    if ((v285 & 0x10) != 0)
    {
      v286.i8[1] = v286.i8[2];
      v286.i8[2] = 0;
      v286 = vdupq_lane_s32(*v286.i8, 0);
      v287 = xmmword_29D2F1020;
    }

    else
    {
      v287 = xmmword_29D2F1010;
    }

    v288 = vaddq_s8(vandq_s8(vqtbl1q_s8(v276, v287), v286), v276);
    v289 = vaddq_s8(vandq_s8(vqtbl1q_s8(v277, v287), v286), v277);
    v290 = vaddq_s8(vandq_s8(vqtbl1q_s8(v278, v287), v286), v278);
    v291 = vaddq_s8(vandq_s8(vqtbl1q_s8(v279, v287), v286), v279);
    v292 = vaddq_s8(vandq_s8(vqtbl1q_s8(v280, v287), v286), v280);
    v293 = vaddq_s8(vandq_s8(vqtbl1q_s8(v281, v287), v286), v281);
    v294 = vzip2q_s64(v288, v289);
    v295.i64[0] = v288.i64[0];
    v295.i64[1] = v289.i64[0];
    v288.i64[0] = v292.i64[0];
    v288.i64[1] = v293.i64[0];
    v296 = (a1 + a2);
    *a1 = v295;
    a1[1] = v288;
    v297 = (a1 + 2 * a2);
    v298 = vaddq_s8(vandq_s8(vqtbl1q_s8(v282, v287), v286), v282);
    v299 = vaddq_s8(vandq_s8(vqtbl1q_s8(v283, v287), v286), v283);
    *v296 = v294;
    v296[1] = vzip2q_s64(v292, v293);
    v292.i64[0] = v290.i64[0];
    v292.i64[1] = v291.i64[0];
    v295.i64[0] = v298.i64[0];
    v295.i64[1] = v299.i64[0];
    *v297 = v292;
    v297[1] = v295;
    v300 = (v297 + a2);
    *v300 = vzip2q_s64(v290, v291);
    v300[1] = vzip2q_s64(v298, v299);
    return a4 + 1;
  }
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblock(_OWORD *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v67 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(a3, &v59, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(a3, &v59, a5);
  }

  v57 = v60;
  v58 = v59;
  v55 = v62;
  v56 = v61;
  v53 = v64;
  v54 = v63;
  v51 = v66;
  v52 = v65;
  v10 = a3 + 16;
  if ((a4 & 2) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v10, &v59, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v10, &v59, a5);
  }

  v49 = v60;
  v50 = v59;
  v47 = v62;
  v48 = v61;
  v45 = v64;
  v46 = v63;
  v43 = v66;
  v44 = v65;
  v11 = a3 + 32;
  if ((a4 & 4) != 0)
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v11, &v59, a5);
  }

  else
  {
    AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v11, &v59, a5);
  }

  v41 = v60;
  v42 = v59;
  v39 = v62;
  v40 = v61;
  v37 = v64;
  v38 = v63;
  v35 = v66;
  v36 = v65;
  v12 = a3 + 48;
  if ((a4 & 8) != 0)
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(v12, &v59, a5);
  }

  else
  {
    result = AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(v12, &v59, a5);
  }

  v14 = vmovn_s32(v43);
  v15 = vmovn_s32(v59);
  v16 = vmovn_s32(v60);
  v17 = vmovn_s32(v61);
  v18 = vmovn_s32(v62);
  v19 = vmovn_s32(v63);
  v20 = vmovn_s32(v64);
  v21 = vmovn_s32(v65);
  LODWORD(v22) = vuzp1_s8(vmovn_s32(v58), v14).u32[0];
  DWORD1(v22) = vuzp1_s8(vmovn_s32(v57), v14).u32[0];
  DWORD2(v22) = vuzp1_s8(vmovn_s32(v54), v14).u32[0];
  HIDWORD(v22) = vuzp1_s8(vmovn_s32(v53), v14).u32[0];
  LODWORD(v23) = vuzp1_s8(vmovn_s32(v42), v14).u32[0];
  DWORD1(v23) = vuzp1_s8(vmovn_s32(v41), v14).u32[0];
  DWORD2(v23) = vuzp1_s8(vmovn_s32(v38), v14).u32[0];
  v24 = vmovn_s32(v66);
  HIDWORD(v23) = vuzp1_s8(vmovn_s32(v37), v14).u32[0];
  *a1 = v22;
  a1[1] = v23;
  v25 = (a1 + a2);
  LODWORD(v26) = vuzp1_s8(vmovn_s32(v56), v14).u32[0];
  DWORD1(v26) = vuzp1_s8(vmovn_s32(v55), v14).u32[0];
  DWORD2(v26) = vuzp1_s8(vmovn_s32(v52), v14).u32[0];
  HIDWORD(v26) = vuzp1_s8(vmovn_s32(v51), v14).u32[0];
  LODWORD(v27) = vuzp1_s8(vmovn_s32(v40), v14).u32[0];
  DWORD1(v27) = vuzp1_s8(vmovn_s32(v39), v14).u32[0];
  DWORD2(v27) = vuzp1_s8(vmovn_s32(v36), v14).u32[0];
  HIDWORD(v27) = vuzp1_s8(vmovn_s32(v35), v14).u32[0];
  *v25 = v26;
  v25[1] = v27;
  LODWORD(v28) = vuzp1_s8(vmovn_s32(v50), v14).u32[0];
  DWORD1(v28) = vuzp1_s8(vmovn_s32(v49), v14).u32[0];
  DWORD2(v28) = vuzp1_s8(vmovn_s32(v46), v14).u32[0];
  v29 = (a1 + a2 + a2);
  HIDWORD(v28) = vuzp1_s8(vmovn_s32(v45), v14).u32[0];
  LODWORD(v30) = vuzp1_s8(v15, v14).u32[0];
  DWORD1(v30) = vuzp1_s8(v16, v14).u32[0];
  DWORD2(v30) = vuzp1_s8(v19, v14).u32[0];
  HIDWORD(v30) = vuzp1_s8(v20, v14).u32[0];
  *v29 = v28;
  v29[1] = v30;
  LODWORD(v31) = vuzp1_s8(vmovn_s32(v48), v14).u32[0];
  DWORD1(v31) = vuzp1_s8(vmovn_s32(v47), v14).u32[0];
  DWORD2(v31) = vuzp1_s8(vmovn_s32(v44), v14).u32[0];
  v32 = vuzp1_s8(v14, v14);
  HIDWORD(v31) = v32.i32[0];
  *&v33 = vuzp1_s8(v17, v32);
  DWORD1(v33) = vuzp1_s8(v18, *&v33).u32[0];
  DWORD2(v33) = vuzp1_s8(v21, *&v33).u32[0];
  HIDWORD(v33) = vuzp1_s8(v24, *&v33).u32[0];
  v34 = (v29 + a2);
  *v34 = v31;
  v34[1] = v33;
  return result;
}

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockFallback(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = 8 * (a1 & 7);
  v5 = a3 & 0xFFFFFFFD;
  v6 = ((a3 & 0xFFFFFFFD) == 1) << 7;
  if (a3 == 4)
  {
    v7 = 0;
    v8 = 0;
    v9 = 8 * (a1 & 7);
    while (1)
    {
      result = v9 - v4 + (v8 << 6) - 125;
      v12 = (a2 + 16 * v7);
      if (result < 0xFFFFFFFFFFFFFF7FLL)
      {
        break;
      }

      v13 = 0;
      v14 = 0;
      v15 = 4;
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
      result = (16 * (v13 & 0xF)) ^ v6;
      *(a2 + 16 * v7) = result;
      if ((v9 - v4 + (v8 << 6) - 125) < 0xFFFFFFFFFFFFFF7FLL)
      {
        goto LABEL_4;
      }

      v18 = 0;
      v19 = 0;
      v20 = 4;
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
      result = v9 - v4 + (v8 << 6) - 125;
      v12[1] = (16 * (v18 & 0xF)) ^ v6;
      if (result >= 0xFFFFFFFFFFFFFF7FLL)
      {
        v23 = 0;
        v24 = 0;
        v25 = 4;
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
        result = v9 - v4 + (v8 << 6) - 125;
        v12[2] = (16 * (v23 & 0xF)) ^ v6;
        if (result >= 0xFFFFFFFFFFFFFF7FLL)
        {
          v28 = 0;
          result = 0;
          v29 = 4;
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
          v10 = 16 * (v28 & 0xF);
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
    if ((v34 - v4 + (v33 << 6) - 125) >= 0xFFFFFFFFFFFFFF7FLL)
    {
      v37 = 0;
      v38 = 0;
      v39 = 4;
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
      v36 = 16 * (v37 & 0xF);
      if ((v36 != 128 || v5 != 1) && v36 != 0)
      {
        if (v36 == 240)
        {
          v36 = 255;
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
    if ((v34 - v4 + (v33 << 6) - 125) >= 0xFFFFFFFFFFFFFF7FLL)
    {
      v45 = 0;
      v46 = 0;
      v47 = 4;
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
      v44 = 16 * (v45 & 0xF);
      if ((v44 != 128 || v5 != 1) && v44 != 0)
      {
        if (v44 == 240)
        {
          v44 = 255;
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
    if ((v34 - v4 + (v33 << 6) - 125) >= 0xFFFFFFFFFFFFFF7FLL)
    {
      v53 = 0;
      v54 = 0;
      v55 = 4;
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
      v52 = 16 * (v53 & 0xF);
      if ((v52 != 128 || v5 != 1) && v52 != 0)
      {
        if (v52 == 240)
        {
          v52 = 255;
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
    if ((v34 - v4 + (v33 << 6) - 125) < 0xFFFFFFFFFFFFFF7FLL)
    {
      v35 = 0;
    }

    else
    {
      v60 = 0;
      v61 = 0;
      v62 = 4;
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
      v35 = 16 * (v60 & 0xF);
      if ((v35 != 128 || v5 != 1) && v35 != 0)
      {
        v67 = v35 - (v60 & 1) + 8;
        if (v35 == 240)
        {
          v35 = 255;
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

unint64_t AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::decompressLossyCompressedSubblockDQuad(uint64_t a1, uint64_t a2, int a3)
{
  v275 = *MEMORY[0x29EDCA608];
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = 8 * (a1 & 7);
  v6 = *(a1 & 0xFFFFFFFFFFFFFFF8);
  v7 = (v6 >> v5) & 7;
  v8 = v5 | 3;
  v9 = (v6 >> (v5 | 3u)) & 7;
  v10 = (v5 | 6) - v5;
  if ((v5 | 3uLL) - v5 <= 0x7D)
  {
    v11 = (8 * (a1 & 7)) | 6;
  }

  else
  {
    v10 = v8 - v5;
    v11 = (8 * (a1 & 7)) | 3;
  }

  if ((v8 - v5) <= 0x7D)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  if ((v10 - 126) >= 0xFFFFFFFFFFFFFF7FLL)
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
    if ((v11 - v5 + (v15 << 6) + 3) <= 0x80)
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
  v272[0] = 8;
  v24 = 2 * (v7 == 0);
  if (!v7 && (v10 + v14 + v24) <= 0x80)
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
    v256 = 0;
    v29 = v7 + 2;
  }

  else
  {
    v256 = dword_29D2F26B0[v23];
    v29 = *(&xmmword_29D2F1D80 + v23);
  }

  v30 = 0;
  v274[0] = v29;
  v273[0] = 0;
  v272[1] = 8;
  v31 = 2 * (v12 == 0);
  if (!v12 && (v11 - v5 + (v15 << 6) + v31) <= 0x80)
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
    v255 = 0;
    v36 = v12 + 2;
  }

  else
  {
    v255 = dword_29D2F26B0[v30];
    v36 = *(&xmmword_29D2F1D80 + v30);
  }

  v37 = 0;
  v274[1] = v36;
  v273[1] = 0;
  v272[2] = 8;
  v38 = 2 * (v13 == 0);
  if (!v13 && (v11 - v5 + (v15 << 6) + v38) <= 0x80)
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
    v254 = 0;
    v44 = v43 + 2;
  }

  else
  {
    v254 = dword_29D2F26B0[v37];
    v44 = *(&xmmword_29D2F1D80 + v37);
  }

  v45 = 0;
  v274[2] = v44;
  v273[2] = 0;
  v272[3] = 8;
  v258 = v38;
  v259 = v31;
  v257 = 2 * (v16 == 0);
  if (!v16 && (v11 - v5 + (v15 << 6) + 2) <= 0x80)
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
    v253 = 0;
    v51 = v50 + 2;
  }

  else
  {
    v253 = dword_29D2F26B0[v45];
    v51 = *(&xmmword_29D2F1D80 + v45);
  }

  v52 = v51;
  v274[3] = v51;
  v273[3] = 0;
  v270 = 0;
  v271 = 0;
  v268 = 0;
  v269 = 0;
  AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>::deriveLossyDQuadBitSharing(v273, v274, &v270, &v268);
  v53 = &kDQuadParamTable[10 * v29];
  v54 = v53[4];
  v55 = v53[5];
  v56 = v268 - v270;
  if (v268 - v270 >= 0)
  {
    v57 = v55;
    v58 = v36;
    v59 = v44;
    v60 = v258;
    v61 = v259;
    v62 = v257;
    if (!v56)
    {
      goto LABEL_69;
    }

    v57 = v56 + v55;
    goto LABEL_63;
  }

  v63 = &kDQuadParamTable[10 * v29];
  v58 = v36;
  if (v63[7] >= v270 - v268)
  {
    v57 = v55;
    v59 = v44;
  }

  else
  {
    v57 = v55 - 1;
    v59 = v44;
    if (!v63[8])
    {
      v56 = -1;
      v60 = v258;
      v61 = v259;
      v62 = v257;
LABEL_63:
      v54 += v56;
      goto LABEL_69;
    }
  }

  v60 = v258;
  v61 = v259;
  v62 = v257;
LABEL_69:
  if (v54 >= 8)
  {
    v64 = 8;
  }

  else
  {
    v64 = v54;
  }

  v267[0] = v64;
  LODWORD(v65) = 8 * (v55 != 0);
  if (v65 >= v57)
  {
    v65 = v57;
  }

  else
  {
    v65 = v65;
  }

  v266[0] = v65;
  v66 = &kDQuadParamTable[10 * v58];
  v67 = v66[4];
  v68 = v66[5];
  v69 = HIDWORD(v268) - HIDWORD(v270);
  if (HIDWORD(v268) - HIDWORD(v270) >= 0)
  {
    LODWORD(v70) = v68;
    if (!v69)
    {
      goto LABEL_83;
    }

    LODWORD(v70) = v69 + v68;
    goto LABEL_78;
  }

  v71 = &kDQuadParamTable[10 * v58];
  if (v71[7] >= HIDWORD(v270) - HIDWORD(v268))
  {
    LODWORD(v70) = v68;
  }

  else
  {
    LODWORD(v70) = v68 - 1;
    if (!v71[8])
    {
      v69 = -1;
LABEL_78:
      v67 += v69;
    }
  }

LABEL_83:
  if (v67 >= 8)
  {
    v72 = 8;
  }

  else
  {
    v72 = v67;
  }

  v267[1] = v72;
  v73 = 8 * (v68 != 0);
  if (v73 >= v70)
  {
    v70 = v70;
  }

  else
  {
    v70 = v73;
  }

  v266[1] = v70;
  v74 = &kDQuadParamTable[10 * v59];
  v76 = v74[4];
  v75 = v74[5];
  v77 = v269 - v271;
  if (v269 - v271 >= 0)
  {
    LODWORD(v78) = v75;
    if (!v77)
    {
      goto LABEL_97;
    }

    LODWORD(v78) = v77 + v75;
    goto LABEL_92;
  }

  v79 = &kDQuadParamTable[10 * v59];
  if (v79[7] >= v271 - v269)
  {
    LODWORD(v78) = v75;
  }

  else
  {
    LODWORD(v78) = v75 - 1;
    if (!v79[8])
    {
      v77 = -1;
LABEL_92:
      v76 += v77;
    }
  }

LABEL_97:
  v80 = (v24 | 0xC) + v61 + v60;
  if (v76 >= 8)
  {
    v81 = 8;
  }

  else
  {
    v81 = v76;
  }

  v267[2] = v81;
  v82 = 8 * (v75 != 0);
  if (v82 >= v78)
  {
    v78 = v78;
  }

  else
  {
    v78 = v82;
  }

  v266[2] = v78;
  v83 = &kDQuadParamTable[10 * v52];
  v85 = v83[4];
  v84 = v83[5];
  v86 = HIDWORD(v269) - HIDWORD(v271);
  if (HIDWORD(v269) - HIDWORD(v271) >= 0)
  {
    v87 = v84;
    if (!v86)
    {
      goto LABEL_111;
    }

    v87 = v86 + v84;
    goto LABEL_106;
  }

  v88 = &kDQuadParamTable[10 * v52];
  if (v88[7] >= HIDWORD(v271) - HIDWORD(v269))
  {
    v87 = v84;
  }

  else
  {
    v87 = v84 - 1;
    if (!v88[8])
    {
      v86 = -1;
LABEL_106:
      v85 += v86;
    }
  }

LABEL_111:
  if (v85 >= 8)
  {
    v89 = 8;
  }

  else
  {
    v89 = v85;
  }

  v267[3] = v89;
  LODWORD(v90) = 8 * (v84 != 0);
  if (v90 >= v87)
  {
    v90 = v87;
  }

  else
  {
    v90 = v90;
  }

  v266[3] = v90;
  v91 = v80 + v62;
  v264 = 0;
  v265 = 0;
  if (!v29)
  {
    LODWORD(v264) = v256;
    if (v58)
    {
      goto LABEL_125;
    }

LABEL_148:
    HIDWORD(v264) = v255;
    if (v59)
    {
      goto LABEL_132;
    }

LABEL_149:
    LODWORD(v265) = v254;
    if (v52)
    {
      goto LABEL_139;
    }

    goto LABEL_150;
  }

  v92 = 0;
  if (v54 && (v11 - v5 + (v15 << 6) + v64) <= 0x80)
  {
    v92 = 0;
    v93 = 0;
    v94 = v64;
    do
    {
      v95 = 64 - v11;
      if (64 - v11 >= v94)
      {
        v95 = v94;
      }

      v92 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v95)) << v93;
      v93 += v95;
      v96 = v95 + v11;
      v15 += v96 >> 6;
      v11 = v96 & 0x3F;
      v94 -= v95;
    }

    while (v94);
  }

  LODWORD(v264) = v92 << (8 - v64);
  v91 += v64;
  if (!v58)
  {
    goto LABEL_148;
  }

LABEL_125:
  v97 = 0;
  if (v67 && (v11 - v5 + (v15 << 6) + v72) <= 0x80)
  {
    v97 = 0;
    v98 = 0;
    v99 = v72;
    do
    {
      v100 = 64 - v11;
      if (64 - v11 >= v99)
      {
        v100 = v99;
      }

      v97 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v100)) << v98;
      v98 += v100;
      v15 += (v100 + v11) >> 6;
      v11 = (v100 + v11) & 0x3F;
      v99 -= v100;
    }

    while (v99);
  }

  HIDWORD(v264) = v97 << (8 - v72);
  v91 += v72;
  if (!v59)
  {
    goto LABEL_149;
  }

LABEL_132:
  v101 = 0;
  if (v76 && (v11 - v5 + (v15 << 6) + v81) <= 0x80)
  {
    v101 = 0;
    v102 = 0;
    v103 = v81;
    do
    {
      v104 = 64 - v11;
      if (64 - v11 >= v103)
      {
        v104 = v103;
      }

      v101 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v104)) << v102;
      v102 += v104;
      v15 += (v104 + v11) >> 6;
      v11 = (v104 + v11) & 0x3F;
      v103 -= v104;
    }

    while (v103);
  }

  LODWORD(v265) = v101 << (8 - v81);
  v91 += v81;
  if (v52)
  {
LABEL_139:
    v105 = 0;
    if (v85 && (v11 - v5 + (v15 << 6) + v89) <= 0x80)
    {
      v105 = 0;
      v106 = 0;
      v107 = v89;
      do
      {
        v108 = 64 - v11;
        if (64 - v11 >= v107)
        {
          v108 = v107;
        }

        v105 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v108)) << v106;
        v106 += v108;
        v15 += (v108 + v11) >> 6;
        v11 = (v108 + v11) & 0x3F;
        v107 -= v108;
      }

      while (v107);
    }

    HIDWORD(v265) = v105 << (8 - v89);
    v91 += v89;
    v262 = 0;
    v263 = 0;
    if (!v65)
    {
      goto LABEL_158;
    }

    goto LABEL_151;
  }

LABEL_150:
  HIDWORD(v265) = v253;
  v262 = 0;
  v263 = 0;
  if (v65)
  {
LABEL_151:
    if ((v11 - v5 + (v15 << 6) + 3) <= 0x80)
    {
      v109 = 0;
      v110 = 0;
      v111 = 3;
      do
      {
        v112 = 64 - v11;
        if (64 - v11 >= v111)
        {
          v112 = v111;
        }

        v109 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v112)) << v110;
        v110 += v112;
        v15 += (v112 + v11) >> 6;
        v11 = (v112 + v11) & 0x3F;
        v111 -= v112;
      }

      while (v111);
    }

    else
    {
      v109 = 0;
    }

    LODWORD(v262) = v109;
    v91 += 3;
  }

LABEL_158:
  if (v70)
  {
    if ((v11 - v5 + (v15 << 6) + 3) <= 0x80)
    {
      v113 = 0;
      v114 = 0;
      v115 = 3;
      do
      {
        v116 = 64 - v11;
        if (64 - v11 >= v115)
        {
          v116 = v115;
        }

        v113 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v116)) << v114;
        v114 += v116;
        v15 += (v116 + v11) >> 6;
        v11 = (v116 + v11) & 0x3F;
        v115 -= v116;
      }

      while (v115);
    }

    else
    {
      v113 = 0;
    }

    HIDWORD(v262) = v113;
    v91 += 3;
  }

  if (v78)
  {
    if ((v11 - v5 + (v15 << 6) + 3) <= 0x80)
    {
      v117 = 0;
      v118 = 0;
      v119 = 3;
      do
      {
        v120 = 64 - v11;
        if (64 - v11 >= v119)
        {
          v120 = v119;
        }

        v117 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v120)) << v118;
        v118 += v120;
        v15 += (v120 + v11) >> 6;
        v11 = (v120 + v11) & 0x3F;
        v119 -= v120;
      }

      while (v119);
    }

    else
    {
      v117 = 0;
    }

    LODWORD(v263) = v117;
    v91 += 3;
  }

  if (v90)
  {
    if ((v11 - v5 + (v15 << 6) + 3) <= 0x80)
    {
      v121 = 0;
      v122 = 0;
      v123 = 3;
      do
      {
        v124 = 64 - v11;
        if (64 - v11 >= v123)
        {
          v124 = v123;
        }

        v121 |= ((*(v4 + 8 * v15) >> v11) & ~(-1 << v124)) << v122;
        v122 += v124;
        v15 += (v124 + v11) >> 6;
        v11 = (v124 + v11) & 0x3F;
        v123 -= v124;
      }

      while (v123);
    }

    else
    {
      v121 = 0;
    }

    HIDWORD(v263) = v121;
    v91 += 3;
  }

  v125 = 0;
  v126 = a3 & 0xFFFFFFFD;
  v127 = 128 - v91;
  v128 = (((37 * (128 - v91)) >> 8) + (((0x80 - v91 - ((37 * (128 - v91)) >> 8)) & 0xFE) >> 1)) >> 2;
  v129 = (v11 | (v15 << 6)) + -7 * v128 + v127;
  memset(v261, 0, sizeof(v261));
  do
  {
    v132 = v129 >> 6;
    v133 = v129 & 0x3F;
    if (v65)
    {
      if (v133 - v5 + (v129 & 0xFFFFFFFFFFFFFFC0) + v65 <= 0x80)
      {
        v134 = 0;
        v135 = 0;
        v136 = v65;
        do
        {
          v137 = 64 - v133;
          if (64 - v133 >= v136)
          {
            v137 = v136;
          }

          v134 |= ((*(v4 + 8 * v132) >> v133) & ~(-1 << v137)) << v135;
          v135 += v137;
          v138 = v137 + v133;
          v132 += v138 >> 6;
          v133 = v138 & 0x3F;
          v136 -= v137;
        }

        while (v136);
      }

      else
      {
        v134 = 0;
      }

      *(v261 + v125) = v134;
    }

    v139 = v261 + v125;
    if (!v70)
    {
      v131 = v65;
      if (!v78)
      {
        goto LABEL_211;
      }

LABEL_204:
      if (v133 - v5 + (v132 << 6) + v78 <= 0x80)
      {
        v145 = 0;
        v146 = 0;
        v147 = v78;
        do
        {
          v148 = 64 - v133;
          if (64 - v133 >= v147)
          {
            v148 = v147;
          }

          v145 |= ((*(v4 + 8 * v132) >> v133) & ~(-1 << v148)) << v146;
          v146 += v148;
          v149 = v148 + v133;
          v132 += v149 >> 6;
          v133 = v149 & 0x3F;
          v147 -= v148;
        }

        while (v147);
      }

      else
      {
        v145 = 0;
      }

      v139[14] = v145;
      v131 += v78;
      goto LABEL_211;
    }

    if (v133 - v5 + (v132 << 6) + v70 <= 0x80)
    {
      v140 = 0;
      v141 = 0;
      v142 = v70;
      do
      {
        v143 = 64 - v133;
        if (64 - v133 >= v142)
        {
          v143 = v142;
        }

        v140 |= ((*(v4 + 8 * v132) >> v133) & ~(-1 << v143)) << v141;
        v141 += v143;
        v144 = v143 + v133;
        v132 += v144 >> 6;
        v133 = v144 & 0x3F;
        v142 -= v143;
      }

      while (v142);
    }

    else
    {
      v140 = 0;
    }

    v139[7] = v140;
    v131 = v70 + v65;
    if (v78)
    {
      goto LABEL_204;
    }

LABEL_211:
    if (v90)
    {
      if (v133 - v5 + (v132 << 6) + v90 > 0x80)
      {
        v130 = 0;
      }

      else
      {
        v130 = 0;
        v150 = 0;
        v151 = v90;
        do
        {
          v152 = 64 - v133;
          if (64 - v133 >= v151)
          {
            v152 = v151;
          }

          v130 |= ((*(v4 + 8 * v132) >> v133) & ~(-1 << v152)) << v150;
          v150 += v152;
          v153 = v152 + v133;
          v132 += v153 >> 6;
          v133 = v153 & 0x3F;
          v151 -= v152;
        }

        while (v151);
      }

      v139[21] = v130;
      v131 += v90;
    }

    v129 = (v133 | (v132 << 6)) + v128 - v131;
    ++v125;
  }

  while (v125 != 7);
  v154 = 0;
  v155 = 0;
  v156 = a2 + 112;
  do
  {
    v161 = *&kDQuadParamTable[160 * v273[v154 / 4] + 2 + 10 * v274[v154 / 4]];
    v162 = v266[v154 / 4];
    if (v161 >> v162 <= 1)
    {
      result = 1;
    }

    else
    {
      result = v161 >> v162;
    }

    v163 = v272[v154 / 4];
    v164 = result >> 1;
    if (result >> 1 >= (1 << (v163 - v267[v154 / 4])) >> 1)
    {
      v165 = (1 << (v163 - v267[v154 / 4])) >> 1;
    }

    else
    {
      v165 = result >> 1;
    }

    v166 = (1 << (v163 - 1));
    v167 = *(&v264 + v154);
    v168 = v166 - v167;
    v169 = 1 << v163;
    v170 = (1 << v163) + 0xFFFFFFFFLL;
    if (v167)
    {
      v171 = v165;
    }

    else
    {
      v171 = 0;
    }

    v172 = v167 == v166;
    v173 = v163 == 16;
    if (v163 == 16)
    {
      v174 = 31744;
    }

    else
    {
      v174 = 2139095040;
    }

    if (v163 == 16)
    {
      v175 = 64512;
    }

    else
    {
      v175 = 4286578688;
    }

    v176 = 2143289344;
    if (v173)
    {
      v176 = 32256;
    }

    v177 = 65024;
    if (!v173)
    {
      v177 = 4290772992;
    }

    v178 = (v175 - 1);
    if (v162)
    {
      v179 = v161 + v167;
      v180 = -1 << v162;
      v181 = *(&v262 + v154);
      v182 = v168 / result;
      if (!v181)
      {
        v190 = 0;
        v185 = v171;
        v184 = v167 == v166;
        goto LABEL_288;
      }

      v183 = *(v261 + v155);
      v184 = v182 == v183;
      if (v167 | v183)
      {
        if (v179 >= v169 && (v180 ^ v183) == 0xFFFFFFFFFFFFFFFFLL)
        {
          v190 = 1;
          v185 = v169 - 1;
          goto LABEL_288;
        }

        v185 = v164 + result * v183;
      }

      else
      {
        v185 = 0;
      }

      v190 = 1;
LABEL_288:
      v193 = v185 + v167;
      v194 = v193;
      if (a3 == 4)
      {
        v195 = v193 < v174 || v193 >= v176;
        v194 = (v174 - 1);
        if (v195)
        {
          v196 = v193 < v176 || v193 >= v166;
          v194 = v166;
          if (v196)
          {
            if (v193 < v177 && v193 >= v175)
            {
              v194 = (v175 - 1);
            }

            else
            {
              v194 = v193;
            }
          }
        }
      }

      if (v194 >= v169)
      {
        v198 = v169 - 1;
      }

      else
      {
        v198 = v194;
      }

      if (v184)
      {
        v199 = 0;
      }

      else
      {
        v199 = v198 ^ v166;
      }

      if (v126 != 1)
      {
        v199 = v198;
      }

      *(a2 + v154) = v199;
      if (v181 == 1)
      {
        v200 = v171;
        v201 = v167 == v166;
      }

      else
      {
        v202 = *((v261 | (4 * v190)) + v155);
        v201 = v182 == v202;
        if (v167 | v202)
        {
          if (v179 < v169 || (v200 = v169 - 1, (v180 ^ v202) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v200 = v164 + result * v202;
          }
        }

        else
        {
          v200 = 0;
        }

        ++v190;
      }

      v203 = v200 + v167;
      v204 = v203;
      if (a3 == 4)
      {
        v205 = v203 < v174 || v203 >= v176;
        v204 = (v174 - 1);
        if (v205)
        {
          v206 = v203 < v176 || v203 >= v166;
          v204 = v166;
          if (v206)
          {
            if (v203 < v177 && v203 >= v175)
            {
              v204 = (v175 - 1);
            }

            else
            {
              v204 = v203;
            }
          }
        }
      }

      if (v204 >= v169)
      {
        v208 = v169 - 1;
      }

      else
      {
        v208 = v204;
      }

      if (v201)
      {
        v209 = 0;
      }

      else
      {
        v209 = v208 ^ v166;
      }

      if (v126 != 1)
      {
        v209 = v208;
      }

      *(v156 + v154 - 96) = v209;
      if (v181 == 2)
      {
        v210 = v171;
        v211 = v167 == v166;
      }

      else
      {
        v212 = *((v261 | (4 * v190)) + v155);
        v211 = v182 == v212;
        if (v167 | v212)
        {
          if (v179 < v169 || (v210 = v169 - 1, (v180 ^ v212) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v210 = v164 + result * v212;
          }
        }

        else
        {
          v210 = 0;
        }

        ++v190;
      }

      v213 = v210 + v167;
      v214 = v213;
      if (a3 == 4)
      {
        if (v213 < v174 || (v214 = (v174 - 1), v213 >= v176))
        {
          if (v213 < v176 || (v214 = v166, v213 >= v166))
          {
            if (v213 < v177 && v213 >= v175)
            {
              v214 = (v175 - 1);
            }

            else
            {
              v214 = v213;
            }
          }
        }
      }

      if (v214 >= v169)
      {
        v216 = v169 - 1;
      }

      else
      {
        v216 = v214;
      }

      if (v211)
      {
        v217 = 0;
      }

      else
      {
        v217 = v216 ^ v166;
      }

      if (v126 != 1)
      {
        v217 = v216;
      }

      *(v156 + v154 - 80) = v217;
      if (v181 == 3)
      {
        v218 = v171;
        v219 = v167 == v166;
      }

      else
      {
        v220 = *(v261 + 4 * v190 + v155);
        v219 = v182 == v220;
        if (v167 | v220)
        {
          if (v179 < v169 || (v218 = v169 - 1, (v180 ^ v220) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v218 = v164 + result * v220;
          }
        }

        else
        {
          v218 = 0;
        }

        ++v190;
      }

      v221 = v218 + v167;
      v222 = v221;
      if (a3 == 4)
      {
        if (v221 < v174 || (v222 = (v174 - 1), v221 >= v176))
        {
          if (v221 < v176 || (v222 = v166, v221 >= v166))
          {
            if (v221 < v177 && v221 >= v175)
            {
              v222 = (v175 - 1);
            }

            else
            {
              v222 = v221;
            }
          }
        }
      }

      if (v222 >= v169)
      {
        v224 = v169 - 1;
      }

      else
      {
        v224 = v222;
      }

      if (v219)
      {
        v225 = 0;
      }

      else
      {
        v225 = v224 ^ v166;
      }

      if (v126 != 1)
      {
        v225 = v224;
      }

      *(v156 + v154 - 64) = v225;
      if (v181 == 4)
      {
        v226 = v171;
        v227 = v167 == v166;
      }

      else
      {
        v228 = *(v261 + 4 * v190 + v155);
        v227 = v182 == v228;
        if (v167 | v228)
        {
          if (v179 < v169 || (v226 = v169 - 1, (v180 ^ v228) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v226 = v164 + result * v228;
          }
        }

        else
        {
          v226 = 0;
        }

        ++v190;
      }

      v229 = v226 + v167;
      v230 = v229;
      if (a3 == 4)
      {
        if (v229 < v174 || (v230 = (v174 - 1), v229 >= v176))
        {
          if (v229 < v176 || (v230 = v166, v229 >= v166))
          {
            if (v229 < v177 && v229 >= v175)
            {
              v230 = (v175 - 1);
            }

            else
            {
              v230 = v229;
            }
          }
        }
      }

      if (v230 >= v169)
      {
        v232 = v169 - 1;
      }

      else
      {
        v232 = v230;
      }

      if (v227)
      {
        v233 = 0;
      }

      else
      {
        v233 = v232 ^ v166;
      }

      if (v126 != 1)
      {
        v233 = v232;
      }

      *(v156 + v154 - 48) = v233;
      if (v181 == 5)
      {
        v234 = v171;
        v235 = v167 == v166;
      }

      else
      {
        v236 = *(v261 + 4 * v190 + v155);
        v235 = v182 == v236;
        if (v167 | v236)
        {
          if (v179 < v169 || (v234 = v169 - 1, (v180 ^ v236) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v234 = v164 + result * v236;
          }
        }

        else
        {
          v234 = 0;
        }

        ++v190;
      }

      v237 = v234 + v167;
      v238 = v237;
      if (a3 == 4)
      {
        if (v237 < v174 || (v238 = (v174 - 1), v237 >= v176))
        {
          if (v237 < v176 || (v238 = v166, v237 >= v166))
          {
            if (v237 < v177 && v237 >= v175)
            {
              v238 = (v175 - 1);
            }

            else
            {
              v238 = v237;
            }
          }
        }
      }

      if (v238 >= v169)
      {
        v240 = v169 - 1;
      }

      else
      {
        v240 = v238;
      }

      if (v235)
      {
        v241 = 0;
      }

      else
      {
        v241 = v240 ^ v166;
      }

      if (v126 != 1)
      {
        v241 = v240;
      }

      *(v156 + v154 - 32) = v241;
      if (v181 == 6)
      {
        v242 = v171;
        v243 = v167 == v166;
      }

      else
      {
        v244 = *(v261 + 4 * v190 + v155);
        v243 = v182 == v244;
        if (v167 | v244)
        {
          if (v179 < v169 || (v242 = v169 - 1, (v180 ^ v244) != 0xFFFFFFFFFFFFFFFFLL))
          {
            v242 = v164 + result * v244;
          }
        }

        else
        {
          v242 = 0;
        }

        ++v190;
      }

      v245 = v242 + v167;
      v246 = v245;
      if (a3 == 4)
      {
        if (v245 < v174 || (v246 = (v174 - 1), v245 >= v176))
        {
          if (v245 < v176 || (v246 = v166, v245 >= v166))
          {
            if (v245 < v177 && v245 >= v175)
            {
              v246 = (v175 - 1);
            }

            else
            {
              v246 = v245;
            }
          }
        }
      }

      if (v246 >= v169)
      {
        v248 = v169 - 1;
      }

      else
      {
        v248 = v246;
      }

      if (v243)
      {
        v249 = 0;
      }

      else
      {
        v249 = v248 ^ v166;
      }

      if (v126 != 1)
      {
        v249 = v248;
      }

      *(v156 + v154 - 16) = v249;
      if (v181 != 7)
      {
        v250 = *(v261 + 4 * v190 + v155);
        v172 = v182 == v250;
        if (v167 | v250)
        {
          if (v179 >= v169 && (v180 ^ v250) == 0xFFFFFFFFFFFFFFFFLL)
          {
            v171 = v169 - 1;
          }

          else
          {
            v171 = v164 + result * v250;
          }
        }

        else
        {
          v171 = 0;
        }
      }

      v251 = v171 + v167;
      result = v171 + v167;
      if (a3 == 4)
      {
        if (v251 < v174 || (result = (v174 - 1), v251 >= v176))
        {
          if (v251 < v176 || (result = v166, v251 >= v166))
          {
            if (v251 < v177 && v251 >= v175)
            {
              result = (v175 - 1);
            }

            else
            {
              result = v171 + v167;
            }
          }
        }
      }

      if (result >= v169)
      {
        v159 = v169 - 1;
      }

      else
      {
        v159 = result;
      }

      v160 = v159 ^ v166;
      if (v172)
      {
        v160 = 0;
      }

      if (v126 == 1)
      {
        v159 = v160;
      }

      goto LABEL_232;
    }

    v187 = v176 <= v167 && v167 < v166;
    v189 = v167 >= v175 && v177 > v167;
    if (a3 == 4)
    {
      if (v167 < v174 || v176 <= v167)
      {
        if (v187)
        {
          if (v169 <= v166)
          {
            v159 = v170;
          }

          else
          {
            v159 = v166;
          }
        }

        else
        {
          if (v189)
          {
            v252 = v178;
          }

          else
          {
            v252 = *(&v264 + v154);
          }

          if (v252 >= v169)
          {
            v159 = v170;
          }

          else
          {
            v159 = v252;
          }
        }
      }

      else if (v169 <= (v174 - 1))
      {
        v159 = v170;
      }

      else
      {
        v159 = v174 - 1;
      }
    }

    else
    {
      if (v169 <= v167)
      {
        v159 = v169 - 1;
      }

      else
      {
        v159 = *(&v264 + v154);
      }

      v191 = v159 ^ v166;
      if (result > v168)
      {
        v191 = 0;
      }

      if (v126 == 1)
      {
        v159 = v191;
      }
    }

    v192 = v156 + v154;
    *(v192 - 112) = v159;
    *(v192 - 96) = v159;
    *(v192 - 80) = v159;
    *(v192 - 64) = v159;
    *(v192 - 48) = v159;
    *(v192 - 32) = v159;
    *(v192 - 16) = v159;
LABEL_232:
    *(v156 + v154) = v159;
    v155 += 28;
    v154 += 4;
  }

  while (v155 != 112);
  return result;
}