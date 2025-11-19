uint64_t DITHERRGBA32M(unsigned int a1, int a2, int a3)
{
  v3 = ((a1 >> 8) & 0xFF00FF) * a3 + 65537 + (((((a1 >> 8) & 0xFF00FF) * a3) >> 8) & 0xFF00FF);
  v4 = (a1 & 0xFF00FF) * a3 + 65537 + ((((a1 & 0xFF00FF) * a3) >> 8) & 0xFF00FF);
  v5 = *(&pixel_dither_lookup + ((v4 >> 7) & 0x1FELL)) + a2;
  return (4 * (*(&pixel_dither_lookup + ((v3 >> 23) & 0x1FELL)) + a2)) & 0x7C00 | ((*(&pixel_dither_lookup + ((v3 >> 7) & 0x1FELL)) + a2) >> 8) & 0x1F | (((v5 >> 10) & 7) << 24) & 0x7FFFFFF | (BYTE1(v5) << 27) | ((*(&pixel_dither_lookup + ((v4 >> 23) & 0x1FELL)) + a2) >> 3) & 0x3E0;
}

uint64_t PDAM(unsigned int a1, char a2, char a3)
{
  v3 = ~a3 >> 3;
  v4 = ((a1 | (a1 << 11)) & 0x1F001F) * v3;
  v5 = (((a2 & 0xF8) << 13) | (a1 >> 10) & 0x1F) * v3;
  v6 = (a1 & 0x7FFFFFF | ((a2 & 0xF8) >> 3 << 27)) - (((v4 + 65537 + ((v4 >> 5) & 0x1F001F)) >> 16) & 0x3E0 | ((v4 + 65537 + ((v4 >> 5) & 0x1F001F)) >> 5) & 0x1F | ((((v5 + 65537 + ((v5 >> 5) & 0x1F001F)) >> 5) & 0x1F) << 10) & 0x7FFFFFF | (((v5 + 65537 + ((v5 >> 5) & 0x1F001F)) >> 21) << 27));
  return v6 | (v6 >> 29 << 24);
}

uint64_t PDM(unsigned int a1, char a2)
{
  v2 = ~a2 >> 3;
  v3 = ((a1 | (a1 << 11)) & 0x1F001F) * v2;
  return (a1 - ((33 * ((a1 >> 10) & 0x1F) * v2 + 32) & 0x7C00 | ((v3 + 65537 + ((v3 >> 5) & 0x1F001F)) >> 16) & 0x3E0 | ((v3 + 65537 + ((v3 >> 5) & 0x1F001F)) >> 5) & 0x1F));
}

uint64_t PDAMplusDAM(unsigned int a1, char a2, unsigned int a3, unsigned int a4, char a5, unsigned int a6)
{
  v6 = ((a1 | (a1 << 11)) & 0x1F001F) * (a3 >> 3) + ((a4 | (a4 << 11)) & 0x1F001F) * (a6 >> 3);
  v7 = (((a2 & 0xF8) << 13) | (a1 >> 10) & 0x1F) * (a3 >> 3) + (((a5 & 0xF8) << 13) | (a4 >> 10) & 0x1F) * (a6 >> 3);
  return ((v6 + 65537 + ((v6 >> 5) & 0x1F001F)) >> 16) & 0x3E0 | ((v6 + 65537 + ((v6 >> 5) & 0x1F001F)) >> 5) & 0x1F | ((((v7 + 65537 + ((v7 >> 5) & 0x1F001F)) >> 5) & 0x1F) << 10) & 0xFFFFFF | (((v7 + 65537 + ((v7 >> 5) & 0x1F001F)) >> 21) << 27) | ((((v7 + 65537 + ((v7 >> 5) & 0x1F001F)) >> 23) & 7) << 24);
}

uint64_t PDMplusDM(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = ((a1 | (a1 << 11)) & 0x1F001F) * (a2 >> 3) + ((a3 | (a3 << 11)) & 0x1F001F) * (a4 >> 3);
  v5 = ((a1 >> 10) & 0x1F) * (a2 >> 3) + ((a3 >> 10) & 0x1F) * (a4 >> 3);
  return ((v5 & 0x3E0) + 32 * v5 + 32) & 0x7C00 | ((v4 + 65537 + ((v4 >> 5) & 0x1F001F)) >> 16) & 0x3E0 | ((v4 + 65537 + ((v4 >> 5) & 0x1F001F)) >> 5) & 0x1F;
}

uint64_t PDAplusDAM(int a1, char a2, unsigned int a3, char a4, unsigned int a5)
{
  v5 = ((a3 | (a3 << 11)) & 0x1F001F) * (a5 >> 3);
  v6 = (((a4 & 0xF8) << 13) | (a3 >> 10) & 0x1F) * (a5 >> 3);
  v7 = (a1 & 0x7FFFFFF | ((a2 & 0xF8) >> 3 << 27)) + (((v5 + 65537 + ((v5 >> 5) & 0x1F001F)) >> 16) & 0x3E0 | ((v5 + 65537 + ((v5 >> 5) & 0x1F001F)) >> 5) & 0x1F | ((((v6 + 65537 + ((v6 >> 5) & 0x1F001F)) >> 5) & 0x1F) << 10) & 0x7FFFFFF | (((v6 + 65537 + ((v6 >> 5) & 0x1F001F)) >> 21) << 27));
  return v7 | (v7 >> 29 << 24);
}

uint64_t PDAplusdDA(int a1, unsigned int a2, int a3, unsigned int a4)
{
  v4 = 1057 * (a2 >> 3) - a1;
  v5 = v4 >> 5;
  v6 = 1057 * (a4 >> 3) - a3;
  v7 = (v6 & 0x7C1F) + (v4 & 0x7C1F);
  v8 = ((a4 >> 3) & 0xFFFF83FF | (((v6 >> 5) & 0x1F) << 10)) + ((a2 >> 3) & 0xFFFF83FF | ((v5 & 0x1F) << 10));
  v9 = (30 * ((v8 >> 5) & 0xFFFFFC1F | v7 & 0x8020)) | (15 * ((v8 >> 5) & 0xFFFFFC1F | v7 & 0x8020));
  return (1057 * ((v9 | v8) & 0x1F) - (((v9 | v8) >> 5) & 0x3E0 | (v7 | (v9 >> 5)) & 0x7C1F)) | ((((v9 | v8) >> 2) & 7) << 24) | ((v9 | v8) << 27);
}

uint64_t PDApluslDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = (a3 & 0x7C1F) + (a1 & 0x7C1F);
  v5 = ((a4 >> 3) & 0xFFFF83FF | (((a3 >> 5) & 0x1F) << 10)) + ((a2 >> 3) & 0xFFFF83FF | (((a1 >> 5) & 0x1F) << 10));
  v6 = (v5 >> 5) & 0xFFFFFC1F | v4 & 0x8020;
  return (v4 | (((30 * v6) | (15 * v6)) >> 5)) & 0x7C1F | (((30 * v6) | (15 * v6) | v5) >> 5) & 0x3E0 | (((30 * v6) | (15 * v6) | v5) << 27) | (((((30 * v6) | (15 * v6) | v5) >> 2) & 7) << 24);
}

uint64_t PDAmultiplyPDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = vand_s8(__PAIR64__(a1, a3), 0x1F0000001FLL);
  v5 = vorr_s8(vshl_n_s32(v4, 3uLL), vshr_n_u32(v4, 2uLL));
  v6 = vand_s8(vdup_n_s32(a1), 0x3E000007C00);
  v7 = a2 & 0xF8 | (a2 >> 5);
  v8 = a4 & 0xF8 | (a4 >> 5);
  v9 = vand_s8(vdup_n_s32(a3), 0x3E000007C00);
  v10 = vorr_s8(vshl_u32(v9, 0xFFFFFFFEFFFFFFF9), vshl_u32(v9, 0xFFFFFFF9FFFFFFF4));
  v11 = v5.i32[0];
  v12 = ((v8 ^ 0xFF) + v5.i32[0]) * v5.i32[1];
  v13 = COERCE_DOUBLE(vmul_s32(vadd_s32(vdup_n_s32(v8 ^ 0xFFu), v10), vorr_s8(vshl_u32(v6, 0xFFFFFFFEFFFFFFF9), vshl_u32(v6, 0xFFFFFFF9FFFFFFF4))));
  v14 = COERCE_DOUBLE(vmla_s32(*&v13, v10, vdup_n_s32(v7 ^ 0xFFu)));
  if (v7 == 255)
  {
    *&v15 = v13;
  }

  else
  {
    v12 += (v7 ^ 0xFF) * v11;
    *&v15 = v14;
  }

  v16 = 255 * (v8 + v7) - v8 * v7;
  v17.i32[0] = vdup_lane_s32(v15, 1).u32[0];
  v18 = v15.i32[0] + 128;
  if (v15.i32[0] >> 7 >= 0x1FD)
  {
    v18 = 65152;
  }

  v19 = v18 + (v18 >> 8);
  if (v16 >= 65152)
  {
    v20 = 65152;
  }

  else
  {
    v20 = v16 + 128;
  }

  v17.i32[1] = v12;
  v21 = vdup_n_s32(0xFE80u);
  v22 = vbsl_s8(vcgt_u32(v21, v17), vadd_s32(v17, 0x8000000080), v21);
  v23 = vand_s8(vshl_u32(vsra_n_u32(v22, v22, 8uLL), 0xFFFFFFF5FFFFFFFALL), 0x1F000003E0);
  return ((v20 + (v20 >> 8)) >> 8 << 24) & 0xF8000000 | (((v20 + (v20 >> 8)) >> 8) >> 5 << 24) | (v19 >> 1) & 0x7C00 | v23.i32[0] | v23.i32[1];
}

uint64_t PDAscreenPDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = vdup_n_s32(a3);
  v5 = vand_s8(__PAIR64__(a1, a3), vdup_n_s32(0x3E0u));
  v6 = vorr_s8(vshl_u32(v5, 0xFFFFFFFEFFFFFFF9), vshl_u32(v5, 0xFFFFFFF9FFFFFFFELL));
  v7 = vand_s8(vdup_n_s32(a1), 0x1F00007C00);
  v8.i32[0] = vshl_u32(v7, 0xFFFFFFFDFFFFFFF4).u32[0];
  v8.i32[1] = vshl_u32(v7, 0x30000000CLL).i32[1];
  v9 = (v6.i32[1] ^ 0xFF) * v6.i32[0] - v6.i32[1] + (v6.i32[1] << 8);
  v10 = 255 * ((a4 & 0xF8 | (a4 >> 5)) + (a2 & 0xF8 | (a2 >> 5))) - (a4 & 0xF8 | (a4 >> 5)) * (a2 & 0xF8 | (a2 >> 5));
  v11 = v9 + 128;
  if (v9 >> 7 >= 0x1FD)
  {
    v11 = 65152;
  }

  v12 = v11 + (v11 >> 8);
  if (v10 >= 65152)
  {
    v13 = 65152;
  }

  else
  {
    v13 = v10 + 128;
  }

  v14 = vorr_s8(vshl_u32(v7, 0xFFFFFFFEFFFFFFF9), v8);
  v15 = vand_s8(v4, 0x1F00007C00);
  v16.i32[0] = vshl_u32(v15, 0xFFFFFFFDFFFFFFF4).u32[0];
  v16.i32[1] = vshl_u32(v15, 0x30000000CLL).i32[1];
  v17 = vmla_s32(vmul_s32(v14, 0xFF000000FFLL), vorr_s8(vshl_u32(v15, 0xFFFFFFFEFFFFFFF9), v16), veor_s8(v14, 0xFF000000FFLL));
  v18 = vdup_n_s32(0xFE80u);
  v19 = vbsl_s8(vcgt_u32(v18, v17), vadd_s32(v17, 0x8000000080), v18);
  v20 = vand_s8(vshl_u32(vsra_n_u32(v19, v19, 8uLL), 0xFFFFFFF5FFFFFFFFLL), 0x1F00007C00);
  return v20.i32[0] | (v12 >> 6) & 0x3E0 | v20.i32[1] | (((v13 + (v13 >> 8)) >> 8) >> 3 << 27) | ((v13 + (v13 >> 8)) >> 8 << 19) & 0x7000000;
}

uint64_t PDAoverlayPDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = ((a1 & 0x7C00) >> 7) & 0xFFFFFFF8 | (a1 >> 12) & 7;
  v5 = ((a1 & 0x3E0) >> 2) & 0xFFFFFFF8 | (a1 >> 7) & 7;
  v6 = (a1 >> 2) & 7 | (8 * (a1 & 0x1F));
  v7 = a2 & 0xF8 | (a2 >> 5);
  v8 = ((a3 & 0x7C00) >> 7) & 0xFFFFFFF8 | (a3 >> 12) & 7;
  v9 = ((a3 & 0x3E0) >> 2) & 0xFFFFFFF8 | (a3 >> 7) & 7;
  v10 = (a3 >> 2) & 7 | (8 * (a3 & 0x1F));
  v11 = a4 & 0xF8 | (a4 >> 5);
  if (v8 >= v11)
  {
    v8 = a4 & 0xF8 | (a4 >> 5);
  }

  if (v4 >= v7)
  {
    v4 = a2 & 0xF8 | (a2 >> 5);
  }

  v12 = 2 * v4 * v8;
  if (v9 >= v11)
  {
    v9 = a4 & 0xF8 | (a4 >> 5);
  }

  if (v5 >= v7)
  {
    v5 = a2 & 0xF8 | (a2 >> 5);
  }

  v13 = 2 * v5 * v9;
  if (v10 >= v11)
  {
    v10 = a4 & 0xF8 | (a4 >> 5);
  }

  if (v6 >= v7)
  {
    v6 = a2 & 0xF8 | (a2 >> 5);
  }

  v14 = 2 * v6 * v10;
  v15 = v11 * v7;
  v16 = (v7 + 1) >> 1;
  v17 = v11 + 255;
  v18 = v7 + 255;
  v19 = (v11 + 255) * v4 + v8 * (v7 + 255) - (v11 * v7 + v12);
  v20 = v11 ^ 0xFF;
  v21 = v7 ^ 0xFF;
  v22 = v8 * (v7 ^ 0xFF) + (v11 ^ 0xFF) * v4 + v12;
  if (v4 < v16)
  {
    v23 = v22;
  }

  else
  {
    v23 = v19;
  }

  v24 = v17 * v5 + v9 * v18 - (v15 + v13);
  v25 = v9 * v21 + v20 * v5 + v13;
  if (v5 < v16)
  {
    v26 = v25;
  }

  else
  {
    v26 = v24;
  }

  if (v6 < v16)
  {
    v27 = v10 * v21 + v20 * v6 + v14;
  }

  else
  {
    v27 = v17 * v6 + v10 * v18 - (v15 + v14);
  }

  v28.i32[0] = 255 * (v11 + v7) - v15;
  v28.i32[1] = v23;
  v28.i64[1] = __PAIR64__(v27, v26);
  v29.i64[0] = 0x8000000080;
  v29.i64[1] = 0x8000000080;
  v30 = vdupq_n_s32(0xFE80u);
  v31 = vbslq_s8(vcgtq_s32(v30, v28), vaddq_s32(v28, v29), v30);
  v29.i32[1] = 8;
  v29.i64[1] = 0x800000008;
  v29.i32[0] = v31.i32[0] >> 8;
  v30.i32[0] = vaddq_s32(v31, v29).u32[0];
  v32 = vshlq_u32(v31, vnegq_s32(v29));
  v33 = vaddq_s32(v32, v31);
  v32.i32[0] = v30.i32[0];
  v31.i32[0] = 8;
  v34 = vshlq_s32(v32, vnegq_s32(v31));
  v35 = vshlq_u32(v33, xmmword_18439C870);
  v35.i32[0] = vshlq_u32(v34, xmmword_18439C860).u32[0];
  v36 = vandq_s8(v35, xmmword_18439C880);
  v37 = (v34.i32[0] << 19) & 0x7000000;
  *v34.i8 = vorr_s8(*v36.i8, *&vextq_s8(v36, v36, 8uLL));
  return v34.i32[0] | v37 | v34.i32[1];
}

uint64_t PDAlightenPDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = (a1 >> 2) & 7 | (8 * (a1 & 0x1F));
  v5 = vand_s8(__PAIR64__(a1, a3), 0x3E000007C00);
  v6 = (a3 >> 2) & 7 | (8 * (a3 & 0x1F));
  v7 = vrev64_s32(vand_s8(__PAIR64__(a1, a3), 0x7C00000003E0));
  v8 = vorr_s8(vshl_u32(v7, 0xFFFFFFFEFFFFFFF9), vshl_u32(v7, 0xFFFFFFF9FFFFFFF4));
  v7.i32[0] = a2 & 0xFFFFFFF8;
  v7.i32[1] = a4 & 0xFFFFFFF8;
  v9 = vsra_n_u32(v7, __PAIR64__(a4, a2), 5uLL);
  v10 = vmin_u32(v8, v9);
  v11 = vrev64_s32(v9);
  v12 = vmin_u32(vorr_s8(vshl_u32(v5, 0xFFFFFFFEFFFFFFF9), vshl_u32(v5, 0xFFFFFFF9FFFFFFF4)), v11);
  v13 = COERCE_DOUBLE(vmax_u32(vmul_s32(v9, v12), vmul_s32(v10, v11)));
  v14 = v9.i32[1];
  if (v6 >= v9.i32[1])
  {
    v6 = v9.u32[1];
  }

  v15 = v9.i32[0];
  if (v4 >= v9.i32[0])
  {
    v4 = v9.i32[0];
  }

  v16 = v9.i32[1] * v4;
  if (v6 * v9.i32[0] > v9.i32[1] * v4)
  {
    v16 = v6 * v9.i32[0];
  }

  v17 = COERCE_DOUBLE(vmla_s32(*&v13, vdup_n_s32(v9.i32[1] ^ 0xFFu), __PAIR64__(v12.u32[1], v10.u32[0])));
  v18 = v16 + (v9.i32[1] ^ 0xFF) * v4;
  if (v9.i32[1] == 255)
  {
    v18 = v16;
  }

  else
  {
    v13 = v17;
  }

  v12.i32[1] = v10.i32[1];
  v19 = COERCE_DOUBLE(vmla_s32(*&v13, v12, vdup_n_s32(v9.i32[0] ^ 0xFFu)));
  v20 = v18 + v6 * (v15 ^ 0xFF);
  if (v15 == 255)
  {
    *&v21 = v13;
  }

  else
  {
    v18 = v20;
    *&v21 = v19;
  }

  v22 = 255 * (v14 + v15) - v14 * v15;
  v23 = v18 + 128;
  if (v18 >> 7 >= 0x1FD)
  {
    v23 = 65152;
  }

  v24 = v23 + (v23 >> 8);
  if (v22 >= 65152)
  {
    v25 = 65152;
  }

  else
  {
    v25 = v22 + 128;
  }

  v26 = vdup_n_s32(0xFE80u);
  v27 = vbsl_s8(vcgt_u32(v26, v21), vadd_s32(v21, 0x8000000080), v26);
  v28 = vand_s8(vshl_u32(vsra_n_u32(v27, v27, 8uLL), 0xFFFFFFFAFFFFFFFFLL), 0x3E000007C00);
  return ((v25 + (v25 >> 8)) >> 8 << 24) & 0xF8000000 | (((v25 + (v25 >> 8)) >> 8) >> 5 << 24) | (v24 >> 11) | v28.i32[0] | v28.i32[1];
}

uint64_t PDAdarkenPDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = (a1 >> 2) & 7 | (8 * (a1 & 0x1F));
  v5 = vand_s8(__PAIR64__(a1, a3), 0x3E000007C00);
  v6 = (a3 >> 2) & 7 | (8 * (a3 & 0x1F));
  v7 = vrev64_s32(vand_s8(__PAIR64__(a1, a3), 0x7C00000003E0));
  v8 = vorr_s8(vshl_u32(v7, 0xFFFFFFFEFFFFFFF9), vshl_u32(v7, 0xFFFFFFF9FFFFFFF4));
  v7.i32[0] = a2 & 0xFFFFFFF8;
  v7.i32[1] = a4 & 0xFFFFFFF8;
  v9 = vsra_n_u32(v7, __PAIR64__(a4, a2), 5uLL);
  v10 = vmin_u32(v8, v9);
  v11 = vrev64_s32(v9);
  v12 = vmin_u32(vorr_s8(vshl_u32(v5, 0xFFFFFFFEFFFFFFF9), vshl_u32(v5, 0xFFFFFFF9FFFFFFF4)), v11);
  v13 = COERCE_DOUBLE(vmin_u32(vmul_s32(v9, v12), vmul_s32(v10, v11)));
  v14 = v9.i32[1];
  if (v6 >= v9.i32[1])
  {
    v6 = v9.u32[1];
  }

  v15 = v9.i32[0];
  if (v4 >= v9.i32[0])
  {
    v4 = v9.i32[0];
  }

  v16 = v9.i32[1] * v4;
  if (v6 * v9.i32[0] < v9.i32[1] * v4)
  {
    v16 = v6 * v9.i32[0];
  }

  v17 = COERCE_DOUBLE(vmla_s32(*&v13, vdup_n_s32(v9.i32[1] ^ 0xFFu), __PAIR64__(v12.u32[1], v10.u32[0])));
  v18 = v16 + (v9.i32[1] ^ 0xFF) * v4;
  if (v9.i32[1] == 255)
  {
    v18 = v16;
  }

  else
  {
    v13 = v17;
  }

  v12.i32[1] = v10.i32[1];
  v19 = COERCE_DOUBLE(vmla_s32(*&v13, v12, vdup_n_s32(v9.i32[0] ^ 0xFFu)));
  v20 = v18 + v6 * (v15 ^ 0xFF);
  if (v15 == 255)
  {
    *&v21 = v13;
  }

  else
  {
    v18 = v20;
    *&v21 = v19;
  }

  v22 = 255 * (v14 + v15) - v14 * v15;
  v23 = v18 + 128;
  if (v18 >> 7 >= 0x1FD)
  {
    v23 = 65152;
  }

  v24 = v23 + (v23 >> 8);
  if (v22 >= 65152)
  {
    v25 = 65152;
  }

  else
  {
    v25 = v22 + 128;
  }

  v26 = vdup_n_s32(0xFE80u);
  v27 = vbsl_s8(vcgt_u32(v26, v21), vadd_s32(v21, 0x8000000080), v26);
  v28 = vand_s8(vshl_u32(vsra_n_u32(v27, v27, 8uLL), 0xFFFFFFFAFFFFFFFFLL), 0x3E000007C00);
  return ((v25 + (v25 >> 8)) >> 8 << 24) & 0xF8000000 | (((v25 + (v25 >> 8)) >> 8) >> 5 << 24) | (v24 >> 11) | v28.i32[0] | v28.i32[1];
}

uint64_t PDAcolordodgePDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = a2 & 0xF8 | (a2 >> 5);
  v5 = ((a3 & 0x7C00) >> 7) & 0xFFFFFFF8 | (a3 >> 12) & 7;
  v6 = ((a3 & 0x3E0) >> 2) & 0xFFFFFFF8 | (a3 >> 7) & 7;
  v7 = a4 & 0xF8 | (a4 >> 5);
  v8 = v7 * v7;
  if ((((a1 & 0x7C00) >> 7) & 0xFFFFFFF8 | (a1 >> 12) & 7) >= v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = ((a1 & 0x7C00) >> 7) & 0xFFFFFFF8 | (a1 >> 12) & 7;
  }

  if (v5 >= v7)
  {
    v10 = a4 & 0xF8 | (a4 >> 5);
  }

  else
  {
    v10 = ((a3 & 0x7C00) >> 7) & 0xFFFFFFF8 | (a3 >> 12) & 7;
  }

  if (v9)
  {
    if (v5 >= v7)
    {
      v11 = 65025;
    }

    else
    {
      v11 = (v8 * v9) / (v7 - v10);
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = (a1 >> 2) & 7 | (8 * (a1 & 0x1F));
  v13 = (a3 >> 2) & 7 | (8 * (a3 & 0x1F));
  if ((((a1 & 0x3E0) >> 2) & 0xFFFFFFF8 | (a1 >> 7) & 7) >= v4)
  {
    v14 = v4;
  }

  else
  {
    v14 = ((a1 & 0x3E0) >> 2) & 0xFFFFFFF8 | (a1 >> 7) & 7;
  }

  if (v6 >= v7)
  {
    v15 = a4 & 0xF8 | (a4 >> 5);
  }

  else
  {
    v15 = ((a3 & 0x3E0) >> 2) & 0xFFFFFFF8 | (a3 >> 7) & 7;
  }

  if (v14)
  {
    if (v6 >= v7)
    {
      v16 = 65025;
    }

    else
    {
      v16 = (v8 * v14) / (v7 - v15);
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 >= v4)
  {
    v17 = v4;
  }

  else
  {
    v17 = v12;
  }

  if (v13 >= v7)
  {
    v18 = a4 & 0xF8 | (a4 >> 5);
  }

  else
  {
    v18 = (a3 >> 2) & 7 | (8 * (a3 & 0x1F));
  }

  if (v17)
  {
    if (v13 >= v7)
    {
      v19 = 65025;
    }

    else
    {
      v19 = (v8 * v17) / (v7 - v18);
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = v11 + (v7 ^ 0xFF) * v9;
  v21 = v16 + (v7 ^ 0xFF) * v14;
  if (v7 == 255)
  {
    v22 = v16;
  }

  else
  {
    v19 += (v7 ^ 0xFF) * v17;
    v22 = v21;
  }

  if (v7 == 255)
  {
    v20 = v11;
  }

  v23 = v20 + v10 * (v4 ^ 0xFF);
  v24 = v22 + v15 * (v4 ^ 0xFF);
  v25 = v19 + v18 * (v4 ^ 0xFF);
  if (v4 == 255)
  {
    v25 = v19;
    v26 = v22;
  }

  else
  {
    v26 = v24;
  }

  if (v4 == 255)
  {
    v23 = v20;
  }

  v27 = 255 * (v7 + v4) - v7 * v4;
  if (v23 >= v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = v23;
  }

  if (v26 >= v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = v26;
  }

  if (v25 >= v27)
  {
    v30 = v27;
  }

  else
  {
    v30 = v25;
  }

  v31.i64[0] = __PAIR64__(v30, v27);
  v31.i64[1] = __PAIR64__(v28, v29);
  v32.i64[0] = 0x8000000080;
  v32.i64[1] = 0x8000000080;
  v33 = vdupq_n_s32(0xFE80u);
  v34 = vbslq_s8(vcgtq_s32(v33, v31), vaddq_s32(v31, v32), v33);
  v32.i32[1] = 8;
  v32.i64[1] = 0x800000008;
  v32.i32[0] = v34.i32[0] >> 8;
  v33.i32[0] = vaddq_s32(v34, v32).u32[0];
  v35 = vshlq_u32(v34, vnegq_s32(v32));
  v36 = vaddq_s32(v35, v34);
  v35.i32[0] = v33.i32[0];
  v34.i32[0] = 8;
  v37 = vshlq_s32(v35, vnegq_s32(v34));
  v38 = vshlq_u32(v36, xmmword_18439C8A0);
  v38.i32[0] = vshlq_u32(v37, xmmword_18439C890).u32[0];
  v39 = vandq_s8(v38, xmmword_18439C8B0);
  v40 = (v37.i32[0] << 19) & 0x7000000;
  *v37.i8 = vorr_s8(*v39.i8, *&vextq_s8(v39, v39, 8uLL));
  return v37.i32[0] | v40 | v37.i32[1];
}

uint64_t PDAcolorburnPDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = (a1 >> 2) & 7 | (8 * (a1 & 0x1F));
  v5 = vand_s8(vdup_n_s32(a1), 0x7C00000003E0);
  v6 = vorr_s8(vshl_u32(v5, 0xFFFFFFF9FFFFFFFELL), vshl_u32(v5, 0xFFFFFFF4FFFFFFF9));
  v7 = vand_s8(vdup_n_s32(a3), 0x7C00000003E0);
  v8 = (a3 >> 2) & 7 | (8 * (a3 & 0x1F));
  v9.i32[0] = a4 & 0xFFFFFFF8;
  v9.i32[1] = a2 & 0xFFFFFFF8;
  v10 = vsra_n_u32(v9, __PAIR64__(a2, a4), 5uLL);
  v11 = v10.u32[1];
  v12 = v10.i32[0];
  v13 = v10.i32[0] * v10.i32[1];
  v14 = vmin_u32(vorr_s8(vshl_u32(v7, 0xFFFFFFF9FFFFFFFELL), vshl_u32(v7, 0xFFFFFFF4FFFFFFF9)), vdup_lane_s32(v10, 0));
  v15 = vmin_u32(v6, vdup_lane_s32(v10, 1));
  if (v8 >= v10.i32[0])
  {
    v8 = v10.i32[0];
  }

  if (v4 >= v10.i32[1])
  {
    v16 = v10.i32[1];
  }

  else
  {
    v16 = (a1 >> 2) & 7 | (8 * (a1 & 0x1F));
  }

  v17 = COERCE_DOUBLE(vdup_n_s32(v13));
  v18 = ~v12;
  v19 = COERCE_DOUBLE(vmla_s32(*&v17, vdup_n_s32(v18), v15));
  v20 = v13 + v16 * v18;
  if (v12 == 255)
  {
    v20 = v13;
  }

  else
  {
    v17 = v19;
  }

  v21 = ~v11;
  v22 = COERCE_DOUBLE(vmla_s32(*&v17, v14, vdup_n_s32(v21)));
  v23 = v20 + v8 * v21;
  if (v11 == 0xFF)
  {
    v23 = v20;
  }

  else
  {
    v17 = v22;
  }

  v24 = HIDWORD(v17);
  if (v6.i32[1] < v11)
  {
    if (v14.i32[1])
    {
      v24 = (HIDWORD(v17) - (v12 * v12 * (v11 - v15.i32[1])) / v14.i32[1]) & ~((HIDWORD(v17) - (v12 * v12 * (v11 - v15.i32[1])) / v14.i32[1]) >> 31);
    }

    else
    {
      v24 = 0;
    }
  }

  v25 = LODWORD(v17);
  if (v6.i32[0] < v11)
  {
    v25 = (LODWORD(v17) - (v12 * v12 * (v11 - v15.i32[0])) / v14.i32[0]) & ~((LODWORD(v17) - (v12 * v12 * (v11 - v15.i32[0])) / v14.i32[0]) >> 31);
    if (!v14.i32[0])
    {
      v25 = 0;
    }
  }

  v26 = (v23 - (v12 * v12 * (v11 - v16)) / v8) & ~((v23 - (v12 * v12 * (v11 - v16)) / v8) >> 31);
  if (v8)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v4 < v11)
  {
    v28 = v27;
  }

  else
  {
    v28 = v23;
  }

  v29 = 255 * (v12 + v11) - v13;
  v30 = vadd_s32(__PAIR64__(v25, v24), 0x8000000080);
  v31 = vdup_n_s32(0xFE80u);
  v32 = vcgt_u32(v31, __PAIR64__(v25, v24));
  if (v28 >> 7 >= 0x1FD)
  {
    v33 = 65152;
  }

  else
  {
    v33 = v28 + 128;
  }

  v34 = v33 + (v33 >> 8);
  if (v29 >= 65152)
  {
    v35 = 65152;
  }

  else
  {
    v35 = v29 + 128;
  }

  v36 = vbsl_s8(v32, v30, v31);
  v37 = vand_s8(vshl_u32(vsra_n_u32(v36, v36, 8uLL), 0xFFFFFFFAFFFFFFFFLL), 0x3E000007C00);
  return ((v35 + (v35 >> 8)) >> 8 << 24) & 0xF8000000 | (((v35 + (v35 >> 8)) >> 8) >> 5 << 24) | v37.i32[0] | v37.i32[1] | (v34 >> 11);
}

uint64_t PDAhardlightPDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = ((a1 & 0x7C00) >> 7) & 0xFFFFFFF8 | (a1 >> 12) & 7;
  v5 = ((a1 & 0x3E0) >> 2) & 0xFFFFFFF8 | (a1 >> 7) & 7;
  v6 = (a1 >> 2) & 7 | (8 * (a1 & 0x1F));
  v7 = a2 & 0xF8 | (a2 >> 5);
  v8 = ((a3 & 0x7C00) >> 7) & 0xFFFFFFF8 | (a3 >> 12) & 7;
  v9 = ((a3 & 0x3E0) >> 2) & 0xFFFFFFF8 | (a3 >> 7) & 7;
  v10 = (a3 >> 2) & 7 | (8 * (a3 & 0x1F));
  v11 = a4 & 0xF8 | (a4 >> 5);
  if (v8 >= v11)
  {
    v8 = a4 & 0xF8 | (a4 >> 5);
  }

  if (v4 >= v7)
  {
    v4 = a2 & 0xF8 | (a2 >> 5);
  }

  v12 = 2 * v4 * v8;
  if (v9 >= v11)
  {
    v9 = a4 & 0xF8 | (a4 >> 5);
  }

  if (v5 >= v7)
  {
    v5 = a2 & 0xF8 | (a2 >> 5);
  }

  v13 = 2 * v5 * v9;
  if (v10 >= v11)
  {
    v10 = a4 & 0xF8 | (a4 >> 5);
  }

  if (v6 >= v7)
  {
    v6 = a2 & 0xF8 | (a2 >> 5);
  }

  v14 = 2 * v6 * v10;
  v15 = v11 * v7;
  v16 = (v11 + 1) >> 1;
  v17 = v11 ^ 0xFF;
  v18 = v7 ^ 0xFF;
  v19 = v8 * (v7 ^ 0xFF) + (v11 ^ 0xFF) * v4 + v12;
  v20 = v11 + 255;
  v21 = v7 + 255;
  v22 = (v11 + 255) * v4 + v8 * (v7 + 255) - (v11 * v7 + v12);
  if (v8 <= v16)
  {
    v22 = v19;
  }

  v23 = v9 * v18 + v17 * v5 + v13;
  v24 = v20 * v5 + v9 * v21 - (v15 + v13);
  if (v9 <= v16)
  {
    v24 = v23;
  }

  v25 = v10 * v18 + v17 * v6 + v14;
  v26 = v20 * v6 + v10 * v21 - (v15 + v14);
  if (v10 <= v16)
  {
    v26 = v25;
  }

  v27.i32[0] = 255 * (v11 + v7) - v15;
  v27.i32[1] = v22;
  v27.i64[1] = __PAIR64__(v26, v24);
  v28.i64[0] = 0x8000000080;
  v28.i64[1] = 0x8000000080;
  v29 = vdupq_n_s32(0xFE80u);
  v30 = vbslq_s8(vcgtq_s32(v29, v27), vaddq_s32(v27, v28), v29);
  v28.i32[1] = 8;
  v28.i64[1] = 0x800000008;
  v28.i32[0] = v30.i32[0] >> 8;
  v29.i32[0] = vaddq_s32(v30, v28).u32[0];
  v31 = vshlq_u32(v30, vnegq_s32(v28));
  v32 = vaddq_s32(v31, v30);
  v31.i32[0] = v29.i32[0];
  v30.i32[0] = 8;
  v33 = vshlq_s32(v31, vnegq_s32(v30));
  v34 = vshlq_u32(v32, xmmword_18439C870);
  v34.i32[0] = vshlq_u32(v33, xmmword_18439C860).u32[0];
  v35 = vandq_s8(v34, xmmword_18439C880);
  v36 = (v33.i32[0] << 19) & 0x7000000;
  *v33.i8 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
  return v33.i32[0] | v36 | v33.i32[1];
}

uint64_t PDAsoftlightPDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = ((a1 & 0x7C00) >> 7) & 0xFFFFFFF8 | (a1 >> 12) & 7;
  v5 = a2 & 0xF8 | (a2 >> 5);
  v6 = ((a3 & 0x7C00) >> 7) & 0xFFFFFFF8 | (a3 >> 12) & 7;
  v7 = ((a3 & 0x3E0) >> 2) & 0xFFFFFFF8 | (a3 >> 7) & 7;
  v8 = (a3 >> 2) & 7 | (8 * (a3 & 0x1F));
  v9 = a4 & 0xF8 | (a4 >> 5);
  if (v6 >= v9)
  {
    v6 = a4 & 0xF8 | (a4 >> 5);
  }

  if (v4 >= v5)
  {
    v4 = a2 & 0xF8 | (a2 >> 5);
  }

  if (v5)
  {
    v10 = (a1 >> 2) & 7 | (8 * (a1 & 0x1F));
    v11 = ((a1 & 0x3E0) >> 2) & 0xFFFFFFF8 | (a1 >> 7) & 7;
    v12 = (v4 * v4 * (2 * v6 - v9)) / v5;
    v13 = (2 * v4 * v6 - v12) & ~((2 * v4 * v6 - v12) >> 31);
    if (v7 >= v9)
    {
      v7 = a4 & 0xF8 | (a4 >> 5);
    }

    if (v11 >= v5)
    {
      v11 = a2 & 0xF8 | (a2 >> 5);
    }

    v14 = (v11 * v11 * (2 * v7 - v9)) / v5;
    v15 = (2 * v11 * v7 - v14) & ~((2 * v11 * v7 - v14) >> 31);
    if (v8 >= v9)
    {
      v8 = a4 & 0xF8 | (a4 >> 5);
    }

    if (v10 >= v5)
    {
      v10 = a2 & 0xF8 | (a2 >> 5);
    }

    v16 = (v10 * v10 * (2 * v8 - v9)) / v5;
    v17 = (2 * v10 * v8 - v16) & ~((2 * v10 * v8 - v16) >> 31);
  }

  else
  {
    v10 = 0;
    v15 = 0;
    v13 = 0;
    v11 = 0;
    v17 = 0;
    if (v7 >= v9)
    {
      v7 = a4 & 0xF8 | (a4 >> 5);
    }

    if (v8 >= v9)
    {
      v8 = a4 & 0xF8 | (a4 >> 5);
    }
  }

  v18 = v13 + (v9 ^ 0xFF) * v4;
  v19 = v15 + v11 * (v9 ^ 0xFF);
  v20 = v17 + v10 * (v9 ^ 0xFF);
  if (v9 == 255)
  {
    v20 = v17;
    v19 = v15;
    v18 = v13;
  }

  v21 = v18 + v6 * (v5 ^ 0xFF);
  v22 = v19 + v7 * (v5 ^ 0xFF);
  v23 = v20 + v8 * (v5 ^ 0xFF);
  if (v5 == 255)
  {
    v23 = v20;
    v22 = v19;
    v21 = v18;
  }

  v24 = 255 * (v9 + v5) - v9 * v5;
  v25 = v21 + 128;
  if (v21 >> 7 >= 0x1FD)
  {
    v25 = 65152;
  }

  v26 = v25 + (v25 >> 8);
  v27 = v22 + 128;
  if (v22 >> 7 >= 0x1FD)
  {
    v27 = 65152;
  }

  v28 = v27 + (v27 >> 8);
  if (v23 >> 7 >= 0x1FD)
  {
    v29 = 65152;
  }

  else
  {
    v29 = v23 + 128;
  }

  v30 = v29 + (v29 >> 8);
  if (v24 >= 65152)
  {
    v31 = 65152;
  }

  else
  {
    v31 = v24 + 128;
  }

  return ((v31 + (v31 >> 8)) >> 8 << 24) & 0xF8000000 | (((v31 + (v31 >> 8)) >> 8) >> 5 << 24) | (v30 >> 11) | (v28 >> 6) & 0x3E0 | (v26 >> 1) & 0x7C00;
}

uint64_t PDAdifferencePDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = vand_s8(vdup_n_s32(a1), 0x7C000000001FLL);
  v5.i32[0] = vshl_u32(v4, 0xC00000003).u32[0];
  v5.i32[1] = vshl_u32(v4, 0xFFFFFFF4FFFFFFFDLL).i32[1];
  v6 = vand_s8(vdup_n_s32(a3), 0x7C000000001FLL);
  v7.i32[0] = vshl_u32(v6, 0xC00000003).u32[0];
  v7.i32[1] = vshl_u32(v6, 0xFFFFFFF4FFFFFFFDLL).i32[1];
  v8 = vorr_s8(vshl_u32(v4, 0xFFFFFFF9FFFFFFFELL), v5);
  v5.i32[0] = a2 & 0xFFFFFFF8;
  v5.i32[1] = a4 & 0xFFFFFFF8;
  v9 = vsra_n_u32(v5, __PAIR64__(a4, a2), 5uLL);
  v10 = vand_s8(__PAIR64__(a3, a1), vdup_n_s32(0x3E0u));
  v11 = vmin_u32(vorr_s8(vshl_u32(v10, 0xFFFFFFF9FFFFFFFELL), vshl_u32(v10, 0xFFFFFFFEFFFFFFF9)), v9);
  v12 = v11.i32[1];
  v13 = v9.i32[1] * v11.i32[0];
  v14 = 255 * (v11.i32[1] + v11.i32[0]);
  v15 = vmin_u32(vorr_s8(vshl_u32(v6, 0xFFFFFFF9FFFFFFFELL), v7), vdup_lane_s32(v9, 1));
  v16 = vmin_u32(v8, vdup_lane_s32(v9, 0));
  v17 = vadd_s32(v15, v16);
  v18 = __PAIR64__(v15.u32[1], v16.u32[0]);
  v19 = vrev64_s32(v9);
  v15.i32[1] = v16.i32[1];
  v20 = vmul_s32(v9, v15);
  v21 = v9.i32[0] * v12;
  v23 = v13 - v21;
  v22 = v13 - v21 < 0;
  v24 = v14 - v21 - v13;
  if (v22)
  {
    v25 = -v23;
  }

  else
  {
    v25 = v23;
  }

  v26 = v24 + v25;
  v27 = vmul_s32(v18, v19);
  v28 = vaba_s32(vsub_s32(vsub_s32(vmul_s32(v17, 0xFF000000FFLL), v20), v27), v27, v20);
  v29 = 255 * (v9.i32[1] + v9.i32[0]) - v9.i32[1] * v9.i32[0];
  if (v26 >= 65152)
  {
    v30 = 65152;
  }

  else
  {
    v30 = v26 + 128;
  }

  v31 = v30 + (v30 >> 8);
  v32 = vdup_n_s32(0xFE80u);
  v33 = vbsl_s8(vcgt_s32(v32, v28), vadd_s32(v28, 0x8000000080), v32);
  v34 = vsra_n_u32(v33, v33, 8uLL);
  if (v29 >= 65152)
  {
    v35 = 65152;
  }

  else
  {
    v35 = v29 + 128;
  }

  v36 = vand_s8(vshl_u32(v34, -11), 0x7C000000001FLL);
  return ((v35 + (v35 >> 8)) >> 8 << 24) & 0xF8000000 | (((v35 + (v35 >> 8)) >> 8) >> 5 << 24) | (v31 >> 6) & 0x3E0 | v36.i32[0] | v36.i32[1];
}

uint64_t PDAexclusionPDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = vand_s8(vdup_n_s32(a1), 0x1F00007C00);
  v5.i32[0] = vshl_u32(v4, 0xFFFFFFFDFFFFFFF4).u32[0];
  v5.i32[1] = vshl_u32(v4, 0x30000000CLL).i32[1];
  v6 = vand_s8(vdup_n_s32(a3), 0x1F00007C00);
  v7.i32[0] = vshl_u32(v6, 0xFFFFFFFDFFFFFFF4).u32[0];
  v7.i32[1] = vshl_u32(v6, 0x30000000CLL).i32[1];
  v8.i32[0] = a4 & 0xFFFFFFF8;
  v8.i32[1] = a2 & 0xFFFFFFF8;
  v9 = vsra_n_u32(v8, __PAIR64__(a2, a4), 5uLL);
  v10 = vand_s8(__PAIR64__(a1, a3), vdup_n_s32(0x3E0u));
  v11 = vmin_u32(vorr_s8(vshl_u32(v10, 0xFFFFFFFEFFFFFFF9), vshl_u32(v10, 0xFFFFFFF9FFFFFFFELL)), v9);
  v12 = vzip2_s32(v9, v11);
  v13 = 2 * v11.i32[1];
  v14 = vzip1_s32(v9, v11);
  v15 = vadd_s32(v14, v12);
  v12.i32[1] = v14.i32[1];
  v14.i32[1] = v13;
  v16 = vmls_s32(vmul_s32(v15, 0xFF000000FFLL), v14, v12);
  v17 = v16.i32[1] + 128;
  v18 = vdup_n_s32(0xFE80u);
  v19 = vcgt_s32(v18, v16);
  if ((v19.i8[4] & 1) == 0)
  {
    v17 = 65152;
  }

  v20 = v17 + (v17 >> 8);
  if (v19.i8[0])
  {
    v21 = v16.i32[0] + 128;
  }

  else
  {
    v21 = 65152;
  }

  v22 = vorr_s8(vshl_u32(v4, 0xFFFFFFFEFFFFFFF9), v5);
  v23 = vmin_u32(vorr_s8(vshl_u32(v6, 0xFFFFFFFEFFFFFFF9), v7), vdup_lane_s32(v9, 0));
  v24 = vmin_u32(v22, vdup_lane_s32(v9, 1));
  v25 = vmul_s32(vadd_s32(v23, v24), 0xFF000000FFLL);
  v26 = vmul_s32(v24, v23);
  v27 = vsub_s32(v25, vadd_s32(v26, v26));
  v28 = vbsl_s8(vcgt_s32(v18, v27), vadd_s32(v27, 0x8000000080), v18);
  v29 = vand_s8(vshl_u32(vsra_n_u32(v28, v28, 8uLL), 0xFFFFFFF5FFFFFFFFLL), 0x1F00007C00);
  return v29.i32[0] | (v20 >> 6) & 0x3E0 | v29.i32[1] | (((v21 + (v21 >> 8)) >> 8) >> 3 << 27) | ((v21 + (v21 >> 8)) >> 8 << 19) & 0x7000000;
}

uint64_t PDAhuePDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = vand_s8(vdup_n_s32(a1), 0x3E000007C00);
  v5 = a2 & 0xF8 | (a2 >> 5);
  v6 = vand_s8(vdup_n_s32(a3), 0x3E000007C00);
  v7 = vorr_s8(vshl_u32(v6, 0xFFFFFFFEFFFFFFF9), vshl_u32(v6, 0xFFFFFFF9FFFFFFF4));
  v8 = a4 & 0xF8 | (a4 >> 5);
  v9 = vdup_n_s32(v8);
  v10 = vdup_n_s32(v5);
  v11 = vmin_u32(vorr_s8(vshl_u32(v4, 0xFFFFFFFEFFFFFFF9), vshl_u32(v4, 0xFFFFFFF9FFFFFFF4)), v10);
  if (((a3 >> 2) & 7 | (8 * (a3 & 0x1F))) >= v8)
  {
    v12 = a4 & 0xF8 | (a4 >> 5);
  }

  else
  {
    v12 = (a3 >> 2) & 7 | (8 * (a3 & 0x1F));
  }

  if (((a1 >> 2) & 7 | (8 * (a1 & 0x1F))) >= v5)
  {
    v13 = a2 & 0xF8 | (a2 >> 5);
  }

  else
  {
    v13 = (a1 >> 2) & 7 | (8 * (a1 & 0x1F));
  }

  if (v8 == 255)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v15 = vmul_s32(vdup_n_s32(v8 ^ 0xFF), v11);
    v16 = vmla_s32(0x8000000080, v9, v11);
    v11 = vshr_n_u32(vsra_n_u32(v16, v16, 8uLL), 8uLL);
    v14 = (v8 ^ 0xFF) * v13;
    v13 = (v8 * v13 + 128 + ((v8 * v13 + 128) >> 8)) >> 8;
  }

  v17 = vmin_u32(v7, v9);
  if (v5 != 255)
  {
    v15 = vmla_s32(v15, v17, vdup_n_s32(v5 ^ 0xFF));
    v18 = vmla_s32(0x8000000080, v17, v10);
    v17 = vshr_n_u32(vsra_n_u32(v18, v18, 8uLL), 8uLL);
    v14 += v12 * (v5 ^ 0xFF);
    v12 = (v12 * v5 + 128 + ((v12 * v5 + 128) >> 8)) >> 8;
  }

  v55 = v17;
  v56 = v12;
  v19 = v17.i32[0];
  v20 = v17.i32[0] < v17.i32[1];
  if (v17.i32[0] >= v17.i32[1])
  {
    v21 = v17.u32[1];
  }

  else
  {
    v21 = v17.i32[0];
  }

  if (v17.i32[0] <= v17.i32[1])
  {
    v19 = v17.u32[1];
  }

  if (v12 <= v19)
  {
    v22 = 2;
  }

  else
  {
    v22 = v17.i32[0] < v17.i32[1];
  }

  if (v12 <= v19)
  {
    v23 = v17.i32[0] < v17.i32[1];
  }

  else
  {
    v23 = 2;
  }

  v24 = v12 >= v21;
  if (v12 >= v21)
  {
    v25 = v17.i32[0] >= v17.i32[1];
  }

  else
  {
    v25 = 2;
  }

  if (v12 >= v21)
  {
    v26 = v22;
  }

  else
  {
    v26 = v17.i32[0] >= v17.i32[1];
  }

  if (v24)
  {
    v20 = v23;
  }

  v27 = v55.i32[v20];
  v28 = v55.i32[v25];
  v29 = __OFSUB__(v27, v28);
  v30 = v27 - v28;
  if ((v30 < 0) ^ v29 | (v30 == 0))
  {
    v55.i32[v20] = 0;
    v55.i32[v26] = 0;
  }

  else
  {
    v31 = v11.u32[1];
    if (v11.i32[0] >= v11.i32[1])
    {
      v32 = v11.u32[1];
    }

    else
    {
      v32 = v11.i32[0];
    }

    if (v11.i32[0] > v11.i32[1])
    {
      v31 = v11.i32[0];
    }

    if (v13 <= v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = v13;
    }

    if (v13 >= v32)
    {
      v31 = v33;
    }

    else
    {
      v32 = v13;
    }

    v34 = v31 - v32;
    v55.i32[v20] = v34;
    v55.i32[v26] = ((v55.i32[v26] - v55.i32[v25]) * ((v34 << 16) / v30) + 0x8000) >> 16;
  }

  v35 = (v8 * v5 + 128 + ((v8 * v5 + 128) >> 8)) >> 8;
  v55.i32[v25] = 0;
  v36 = vmul_s32(vsub_s32(v11, v55), 0x970000004DLL);
  v37 = v36.i32[0] + v36.i32[1] + 28 * (v13 - v56);
  v38 = (v37 + 128) >> 8;
  v39 = vadd_s32(vdup_n_s32(v38), v55);
  v40 = v56 + v38;
  if (v37 != v37)
  {
    v41 = vcgt_s32(vdup_lane_s32(v55, 1), v55).u8[0];
    v42 = (v41 & 1) != 0 ? v39.i32[0] : v39.i32[1];
    v43 = (v41 & 1) != 0 ? v39.i32[1] : v39.i32[0];
    v44 = v40 <= v43 ? v43 : v56 + v38;
    if (v40 >= v42)
    {
      v43 = v44;
    }

    else
    {
      v42 = v56 + v38;
    }

    if (v43 > v35 || v42 < 0)
    {
      v45 = (77 * v39.i32[0] + 151 * v39.i32[1] + 28 * v40 + 128) >> 8;
      if ((v38 & 0x80000000) != 0)
      {
        v46 = v45 - v42;
        if (v45 == v42)
        {
          goto LABEL_67;
        }

        v47 = (77 * v39.i32[0] + 151 * v39.i32[1] + 28 * v40 + 128) >> 8;
      }

      else
      {
        v46 = v43 - v45;
        if (v43 == v45)
        {
          goto LABEL_67;
        }

        v47 = v35 - v45;
      }

      v48 = vdup_n_s32(v45);
      v49 = (v47 << 16) / v46;
      v40 = v45 + ((v49 * (v40 - v45) + 0x8000) >> 16);
      v39 = vsra_n_s32(v48, vmla_s32(0x800000008000, vdup_n_s32(v49), vsub_s32(v39, v48)), 0x10uLL);
    }
  }

LABEL_67:
  v50 = v14 + 128;
  if (v14 >> 7 >= 0x1FD)
  {
    v50 = 65152;
  }

  v51 = vdup_n_s32(0xFE80u);
  v52 = vbsl_s8(vcgt_u32(v51, v15), vadd_s32(v15, 0x8000000080), v51);
  v53 = vand_s8(vshl_u32(vsra_n_u32(v39, vsra_n_u32(v52, v52, 8uLL), 8uLL), 0x200000007), 0x3E000007C00);
  return ((v8 + v5 - v35) << 24) & 0xF8000000 | ((v8 + v5 - v35) >> 5 << 24) | ((v40 + ((v50 + (v50 >> 8)) >> 8)) >> 3) | v53.i32[0] | v53.i32[1];
}

uint64_t PDAsaturationPDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = vand_s8(vdup_n_s32(a1), 0x3E000007C00);
  v5 = a2 & 0xF8 | (a2 >> 5);
  v6 = vand_s8(vdup_n_s32(a3), 0x3E000007C00);
  v7 = vorr_s8(vshl_u32(v6, 0xFFFFFFFEFFFFFFF9), vshl_u32(v6, 0xFFFFFFF9FFFFFFF4));
  v8 = a4 & 0xF8 | (a4 >> 5);
  v9 = vdup_n_s32(v8);
  v10 = vdup_n_s32(v5);
  v11 = vmin_u32(vorr_s8(vshl_u32(v4, 0xFFFFFFFEFFFFFFF9), vshl_u32(v4, 0xFFFFFFF9FFFFFFF4)), v10);
  if (((a3 >> 2) & 7 | (8 * (a3 & 0x1F))) >= v8)
  {
    v12 = a4 & 0xF8 | (a4 >> 5);
  }

  else
  {
    v12 = (a3 >> 2) & 7 | (8 * (a3 & 0x1F));
  }

  if (((a1 >> 2) & 7 | (8 * (a1 & 0x1F))) >= v5)
  {
    v13 = a2 & 0xF8 | (a2 >> 5);
  }

  else
  {
    v13 = (a1 >> 2) & 7 | (8 * (a1 & 0x1F));
  }

  if (v8 == 255)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v15 = vmul_s32(vdup_n_s32(v8 ^ 0xFF), v11);
    v16 = vmla_s32(0x8000000080, v9, v11);
    v11 = vshr_n_u32(vsra_n_u32(v16, v16, 8uLL), 8uLL);
    v14 = (v8 ^ 0xFF) * v13;
    v13 = (v8 * v13 + 128 + ((v8 * v13 + 128) >> 8)) >> 8;
  }

  v17 = vmin_u32(v7, v9);
  if (v5 != 255)
  {
    v15 = vmla_s32(v15, v17, vdup_n_s32(v5 ^ 0xFF));
    v18 = vmla_s32(0x8000000080, v17, v10);
    v17 = vshr_n_u32(vsra_n_u32(v18, v18, 8uLL), 8uLL);
    v14 += v12 * (v5 ^ 0xFF);
    v12 = (v12 * v5 + 128 + ((v12 * v5 + 128) >> 8)) >> 8;
  }

  v53 = v11;
  v54 = v13;
  v19 = v11.i32[0];
  if (v11.i32[0] >= v11.i32[1])
  {
    v20 = v11.u32[1];
  }

  else
  {
    v20 = v11.i32[0];
  }

  if (v11.i32[0] <= v11.i32[1])
  {
    v19 = v11.u32[1];
  }

  if (v13 <= v19)
  {
    v21 = 2;
  }

  else
  {
    v21 = v11.i32[0] < v11.i32[1];
  }

  if (v13 <= v19)
  {
    v22 = v11.i32[0] < v11.i32[1];
  }

  else
  {
    v22 = 2;
  }

  if (v13 >= v20)
  {
    v23 = v11.i32[0] >= v11.i32[1];
  }

  else
  {
    v23 = 2;
  }

  if (v13 >= v20)
  {
    v24 = v22;
  }

  else
  {
    v21 = v11.i32[0] >= v11.i32[1];
    v24 = v11.i32[0] < v11.i32[1];
  }

  v25 = v53.i32[v24];
  v26 = v53.i32[v23];
  v27 = __OFSUB__(v25, v26);
  v28 = v25 - v26;
  if ((v28 < 0) ^ v27 | (v28 == 0))
  {
    v53.i32[v24] = 0;
    v53.i32[v21] = 0;
  }

  else
  {
    v29 = v17.u32[1];
    if (v17.i32[0] >= v17.i32[1])
    {
      v30 = v17.u32[1];
    }

    else
    {
      v30 = v17.i32[0];
    }

    if (v17.i32[0] > v17.i32[1])
    {
      v29 = v17.i32[0];
    }

    if (v12 <= v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = v12;
    }

    if (v12 >= v30)
    {
      v12 = v30;
      v29 = v31;
    }

    v32 = v29 - v12;
    v53.i32[v24] = v32;
    v53.i32[v21] = ((v53.i32[v21] - v53.i32[v23]) * ((v32 << 16) / v28) + 0x8000) >> 16;
  }

  v33 = (v8 * v5 + 128 + ((v8 * v5 + 128) >> 8)) >> 8;
  v53.i32[v23] = 0;
  v34 = vmul_s32(vsub_s32(v11, v53), 0x970000004DLL);
  v35 = v34.i32[0] + v34.i32[1] + 28 * (v13 - v54);
  v36 = (v35 + 128) >> 8;
  v37 = vadd_s32(vdup_n_s32(v36), v53);
  v38 = v54 + v36;
  if (v35 != v35)
  {
    v39 = vcgt_s32(vdup_lane_s32(v53, 1), v53).u8[0];
    v40 = (v39 & 1) != 0 ? v37.i32[0] : v37.i32[1];
    v41 = (v39 & 1) != 0 ? v37.i32[1] : v37.i32[0];
    v42 = v38 <= v41 ? v41 : v54 + v36;
    if (v38 >= v40)
    {
      v41 = v42;
    }

    else
    {
      v40 = v54 + v36;
    }

    if (v41 > v33 || v40 < 0)
    {
      v43 = (77 * v37.i32[0] + 151 * v37.i32[1] + 28 * v38 + 128) >> 8;
      if ((v36 & 0x80000000) != 0)
      {
        v44 = v43 - v40;
        if (v43 == v40)
        {
          goto LABEL_63;
        }

        v45 = (77 * v37.i32[0] + 151 * v37.i32[1] + 28 * v38 + 128) >> 8;
      }

      else
      {
        v44 = v41 - v43;
        if (v41 == v43)
        {
          goto LABEL_63;
        }

        v45 = v33 - v43;
      }

      v46 = vdup_n_s32(v43);
      v47 = (v45 << 16) / v44;
      v38 = v43 + ((v47 * (v38 - v43) + 0x8000) >> 16);
      v37 = vsra_n_s32(v46, vmla_s32(0x800000008000, vdup_n_s32(v47), vsub_s32(v37, v46)), 0x10uLL);
    }
  }

LABEL_63:
  v48 = v14 + 128;
  if (v14 >> 7 >= 0x1FD)
  {
    v48 = 65152;
  }

  v49 = vdup_n_s32(0xFE80u);
  v50 = vbsl_s8(vcgt_u32(v49, v15), vadd_s32(v15, 0x8000000080), v49);
  v51 = vand_s8(vshl_u32(vsra_n_u32(v37, vsra_n_u32(v50, v50, 8uLL), 8uLL), 0x200000007), 0x3E000007C00);
  return ((v8 + v5 - v33) << 24) & 0xF8000000 | ((v8 + v5 - v33) >> 5 << 24) | ((v38 + ((v48 + (v48 >> 8)) >> 8)) >> 3) | v51.i32[0] | v51.i32[1];
}

uint64_t PDAluminosityPDA(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v4 = vand_s8(vdup_n_s32(a1), 0x7C00000003E0);
  v5 = a2 & 0xF8 | (a2 >> 5);
  v6 = vand_s8(vdup_n_s32(a3), 0x7C00000003E0);
  v7 = vorr_s8(vshl_u32(v6, 0xFFFFFFF9FFFFFFFELL), vshl_u32(v6, 0xFFFFFFF4FFFFFFF9));
  v8 = a4 & 0xF8 | (a4 >> 5);
  v9 = vdup_n_s32(v8);
  v10 = vdup_n_s32(v5);
  v11 = vmin_u32(vorr_s8(vshl_u32(v4, 0xFFFFFFF9FFFFFFFELL), vshl_u32(v4, 0xFFFFFFF4FFFFFFF9)), v10);
  if (((a3 >> 2) & 7 | (8 * (a3 & 0x1F))) >= v8)
  {
    v12 = a4 & 0xF8 | (a4 >> 5);
  }

  else
  {
    v12 = (a3 >> 2) & 7 | (8 * (a3 & 0x1F));
  }

  if (((a1 >> 2) & 7 | (8 * (a1 & 0x1F))) >= v5)
  {
    v13 = a2 & 0xF8 | (a2 >> 5);
  }

  else
  {
    v13 = (a1 >> 2) & 7 | (8 * (a1 & 0x1F));
  }

  if (v8 == 255)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v15 = vmul_s32(vdup_n_s32(v8 ^ 0xFF), v11);
    v16 = vmla_s32(0x8000000080, v9, v11);
    v11 = vshr_n_u32(vsra_n_u32(v16, v16, 8uLL), 8uLL);
    v14 = (v8 ^ 0xFF) * v13;
    v13 = (v8 * v13 + 128 + ((v8 * v13 + 128) >> 8)) >> 8;
  }

  v17 = vmin_u32(v7, v9);
  if (v5 != 255)
  {
    v15 = vmla_s32(v15, v17, vdup_n_s32(v5 ^ 0xFF));
    v18 = vmla_s32(0x8000000080, v17, v10);
    v17 = vshr_n_u32(vsra_n_u32(v18, v18, 8uLL), 8uLL);
    v14 += v12 * (v5 ^ 0xFF);
    v12 = (v12 * v5 + 128 + ((v12 * v5 + 128) >> 8)) >> 8;
  }

  v19 = vmul_s32(vsub_s32(v17, v11), 0x4D00000097);
  v20 = (v8 * v5 + 128 + ((v8 * v5 + 128) >> 8)) >> 8;
  v21 = v19.i32[0] + 28 * (v12 - v13) + v19.i32[1];
  v22 = (v21 + 128) >> 8;
  v23 = vadd_s32(vdup_n_s32(v22), v11);
  v24 = v13 + v22;
  if (v21 != v21)
  {
    v25 = vcgt_u32(v11, vdup_lane_s32(v11, 1)).u8[0];
    v26 = (v25 & 1) != 0 ? v23.i32[1] : v23.i32[0];
    v27 = (v25 & 1) != 0 ? v23.i32[0] : v23.i32[1];
    v28 = v24 <= v27 ? v27 : v24;
    if (v24 >= v26)
    {
      v27 = v28;
    }

    else
    {
      v26 = v24;
    }

    if (v27 > v20 || v26 < 0)
    {
      v29 = (77 * v23.i32[1] + 151 * v23.i32[0] + 28 * v24 + 128) >> 8;
      if ((v22 & 0x80000000) != 0)
      {
        v30 = v29 - v26;
        if (v29 == v26)
        {
          goto LABEL_33;
        }

        v31 = (77 * v23.i32[1] + 151 * v23.i32[0] + 28 * v24 + 128) >> 8;
      }

      else
      {
        v30 = v27 - v29;
        if (v27 == v29)
        {
          goto LABEL_33;
        }

        v31 = v20 - v29;
      }

      v32 = vdup_n_s32(v29);
      v33 = (v31 << 16) / v30;
      v24 = v29 + ((v33 * (v24 - v29) + 0x8000) >> 16);
      v23 = vsra_n_s32(v32, vmla_s32(0x800000008000, vdup_n_s32(v33), vsub_s32(v23, v32)), 0x10uLL);
    }
  }

LABEL_33:
  v34 = v8 + v5 - v20;
  v35 = v14 + 128;
  if (v14 >> 7 >= 0x1FD)
  {
    v35 = 65152;
  }

  v36 = vdup_n_s32(0xFE80u);
  v37 = vbsl_s8(vcgt_u32(v36, v15), vadd_s32(v15, 0x8000000080), v36);
  v38 = vand_s8(vshl_u32(vsra_n_u32(v23, vsra_n_u32(v37, v37, 8uLL), 8uLL), 0x700000002), 0x7C00000003E0);
  return (v34 << 24) & 0xF8000000 | (v34 >> 5 << 24) | ((v24 + ((v35 + (v35 >> 8)) >> 8)) >> 3) | v38.i32[0] | v38.i32[1];
}

void rgb555_shade_axial_RGB(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 280);
  v6 = *(a1 + 296) + ((*(a1 + 288) * (*(*(a1 + 272) + 4) * a3)) + (v5 * (*(*(a1 + 272) + 4) * a2)));
  v7 = a1 + 368;
  v8 = *(a1 + 368);
  v9 = (a3 >> 4) & 0xF0;
  v10 = v8 + v9;
  if (v8)
  {
    v11 = v8 + v9;
  }

  else
  {
    v11 = a1 + 368;
  }

  if (v8)
  {
    v12 = 15;
  }

  else
  {
    v12 = 0;
  }

  v14 = *(a1 + 336);
  v15 = *(a1 + 344);
  v16 = *(a1 + 304);
  v17 = *(a1 + 308);
  v18 = *(a1 + 320);
  v19 = *(a1 + 324);
  v22 = a1 + 144;
  v20 = *(a1 + 144);
  v21 = *(v22 + 8);
  v23 = *(a1 + 376);
  v24 = *(a1 + 360);
  if (v5 != 0.0)
  {
    if (v8)
    {
      v30 = (a2 >> 8) & 0xF;
    }

    else
    {
      LOBYTE(v30) = 0;
    }

    while (1)
    {
      v31 = v18;
      if (v6 >= v16)
      {
        v31 = v19;
        if (v6 <= v17)
        {
          v31 = (v15 * (v6 - v14));
        }
      }

      if ((v31 & 0x80000000) == 0)
      {
        break;
      }

      v32 = v23;
      if (v23)
      {
        goto LABEL_38;
      }

LABEL_39:
      LOBYTE(v30) = (v30 + 1) & v12;
      v6 = v5 + v6;
      v21 = (v21 + 4);
      *v20 = v32;
      v20 = (v20 + 1);
      if (!--a4)
      {
        return;
      }
    }

    v32 = (v24 + 2 * (4 * v31));
LABEL_38:
    v33 = vaddw_u16(vdupq_n_s32(*(v11 + v30)), *v32);
    LODWORD(v32) = v33.i32[3] >> 8;
    v34 = vshlq_u32(v33, xmmword_18439C8C0);
    v35 = vextq_s8(v34, vshlq_u32(v33, xmmword_18439C8D0), 0xCuLL);
    v35.i32[1] = v34.i32[0];
    v36 = vandq_s8(v35, xmmword_18439C8E0);
    *v36.i8 = vorr_s8(*v36.i8, *&vextq_s8(v36, v36, 8uLL));
    v21->i32[0] = v36.i32[0] | v36.i32[1] | (v32 << 27);
    LOBYTE(v32) = -1;
    goto LABEL_39;
  }

  if (v8)
  {
    v25 = v10;
  }

  else
  {
    v25 = v7;
  }

  if (v8)
  {
    LODWORD(v26) = ((a2 >> 8) + 1) & 0xF;
  }

  else
  {
    LODWORD(v26) = 0;
  }

  if (v8)
  {
    LODWORD(v27) = (a2 >> 8) & 0xF;
  }

  else
  {
    LODWORD(v27) = 0;
  }

  if (v8)
  {
    v28 = 15;
  }

  else
  {
    v28 = 0;
  }

  if (v6 >= v16)
  {
    v18 = v19;
    if (v6 <= v17)
    {
      v18 = (v15 * (v6 - v14));
    }
  }

  if ((v18 & 0x80000000) == 0 || v23)
  {
    v37 = (v24 + 2 * (4 * v18));
    if (v18 < 0)
    {
      v38 = v23;
    }

    else
    {
      v38 = v37;
    }

    v39 = vmovl_u16(*v38);
    if (v8)
    {
      v40 = vdup_lane_s32(*v39.i8, 0);
      v41 = vdup_lane_s32(*v39.i8, 1);
      v42 = vdup_laneq_s32(v39, 2);
      v43 = a4 + 4;
      v44 = vdup_n_s32(0x3E0u);
      v45 = vdup_laneq_s32(v39, 3);
      do
      {
        v46 = (v25 + v27);
        v27 = (v27 + 1) & v28;
        v4.i8[0] = *v46;
        v4.i8[4] = *(v25 + v26);
        v47 = vand_s8(v4, 0xFF000000FFLL);
        v48 = vadd_s32(v40, v47);
        v49 = vadd_s32(v41, v47);
        v50 = vadd_s32(v42, v47);
        v51 = vadd_s32(v45, v47);
        v52 = vorr_s8(vorr_s8(vorr_s8(vand_s8(vshl_u32(v51, 0x130000000ELL), 0xF800000007000000), vand_s8(vshl_u32(v51, 0xE00000013), 0x7000000F8000000)), vorr_s8(vand_s8(vshl_n_s32(v48, 2uLL), 0x7C0000007C00), vand_s8(vshr_n_u32(v49, 3uLL), v44))), vand_s8(vshr_n_u32(v50, 8uLL), 0x1F0000001FLL));
        *v21 = v52;
        v26 = (v26 + 1) & v28;
        v52.i8[0] = *(v25 + v27);
        v52.i8[4] = *(v25 + v26);
        v53 = vand_s8(v52, 0xFF000000FFLL);
        v54 = vadd_s32(v40, v53);
        v55 = vadd_s32(v41, v53);
        v56 = vadd_s32(v42, v53);
        v57 = vadd_s32(v45, v53);
        v4 = vorr_s8(vorr_s8(vorr_s8(vand_s8(vshl_u32(v57, 0x130000000ELL), 0xF800000007000000), vand_s8(vshl_u32(v57, 0xE00000013), 0x7000000F8000000)), vorr_s8(vand_s8(vshl_n_s32(v54, 2uLL), 0x7C0000007C00), vand_s8(vshr_n_u32(v55, 3uLL), v44))), vand_s8(vshr_n_u32(v56, 8uLL), 0x1F0000001FLL));
        v21[1] = v4;
        *v20++ = -1;
        v21 += 2;
        v43 -= 4;
      }

      while (v43 > 4);
    }

    else
    {
      v58 = vshlq_u32(v39, xmmword_18439C8D0);
      v59 = vshlq_u32(v39, xmmword_18439C8C0);
      v60 = vzip2q_s32(vextq_s8(v58, v58, 0xCuLL), v59);
      v60.i32[1] = v59.i32[0];
      v61 = vandq_s8(v60, xmmword_18439C8F0);
      *v61.i8 = vorr_s8(*v61.i8, *&vextq_s8(v61, v61, 8uLL));
      v62 = vdupq_n_s32(v61.i32[0] | v61.i32[1] | (v39.i32[3] >> 8 << 27));
      v63 = a4 + 4;
      do
      {
        *v21->i8 = v62;
        v21 += 2;
        *v20++ = -1;
        v63 -= 4;
      }

      while (v63 > 4);
    }
  }

  else
  {
    if (a4 >= 4)
    {
      v29 = 4;
    }

    else
    {
      v29 = a4;
    }

    bzero(v20, ((a4 - v29 + 3) & 0xFFFFFFFC) + 4);
  }
}

unint64_t rgb555_shade_custom_RGB(unint64_t result, uint64_t a2, uint64_t a3, int a4, double a5, int32x4_t a6)
{
  v6 = *(*(result + 272) + 4);
  _S2 = v6 * a2;
  v8 = v6 * a3;
  _D0 = *(result + 280);
  *a6.i32 = *(result + 296) + ((*(result + 288) * v8) + (_D0.f32[0] * _S2));
  v10 = result + 368;
  v11 = *(result + 368);
  if (v11)
  {
    v10 = v11 + ((a3 >> 4) & 0xF0);
  }

  v12 = 15;
  if (!v11)
  {
    v12 = 0;
  }

  __asm { FMLA            S3, S2, V0.S[1] }

  v18 = *(result + 300) + _S3;
  v19 = *(result + 304);
  v20 = *(result + 336);
  v21 = *(result + 348);
  v22 = *(result + 344);
  v23 = *(result + 356);
  v24 = *(result + 376);
  v25 = *(result + 360);
  v26 = 4 * *(result + 48);
  v28 = *(result + 144);
  v27 = *(result + 152);
  if (v11)
  {
    v29 = (a2 >> 8) & 0xF;
  }

  else
  {
    v29 = 0;
  }

  *&a6.i32[1] = v18;
  do
  {
    v30 = vzip1q_s32(a6, a6);
    if ((vmaxv_u16(vtrn2_s16(vrev32_s16(vmovn_s32(vcgtq_f32(v19, v30))), vmovn_s32(vcgtq_f32(v30, v19)))) & 1) == 0)
    {
      v31 = (v25 + 2 * v26 * (v23 * (*&a6.i32[1] - v21)) + 8 * (v22 * (*a6.i32 - v20)));
LABEL_13:
      v32 = vaddw_u16(vdupq_n_s32(*(v10 + v29)), *v31);
      LODWORD(v31) = v32.i32[3] >> 8;
      v33 = vshlq_u32(v32, xmmword_18439C8C0);
      v34 = vextq_s8(v33, vshlq_u32(v32, xmmword_18439C8D0), 0xCuLL);
      v34.i32[1] = v33.i32[0];
      v35 = vandq_s8(v34, xmmword_18439C8E0);
      *v35.i8 = vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
      result = HIDWORD(v35.i64[0]);
      *v27 = v35.i32[0] | v35.i32[1] | (v31 << 27);
      LOBYTE(v31) = -1;
      goto LABEL_14;
    }

    v31 = v24;
    if (v24)
    {
      goto LABEL_13;
    }

LABEL_14:
    v29 = (v29 + 1) & v12;
    *a6.i8 = vadd_f32(_D0, *a6.i8);
    ++v27;
    *v28++ = v31;
    --a4;
  }

  while (a4);
  return result;
}

void rgb555_shade_conic_RGB(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a1 + 280);
  v5 = *(*(a1 + 272) + 4);
  v6 = v5 * a2;
  v7 = v5 * a3;
  v8 = *(a1 + 296) + ((*(a1 + 288) * v7) + (v4 * v6));
  v9 = *(a1 + 368);
  if (v9)
  {
    v10 = v9 + ((a3 >> 4) & 0xF0);
  }

  else
  {
    v10 = a1 + 368;
  }

  if (v9)
  {
    v11 = 15;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 284);
  v13 = *(a1 + 300) + ((v7 * *(a1 + 292)) + (v12 * v6));
  v33 = *(a1 + 336);
  v34 = *(a1 + 304);
  v15 = *(a1 + 344);
  v16 = *(a1 + 360);
  v18 = *(a1 + 144);
  v17 = *(a1 + 152);
  if (v9)
  {
    v19 = (a2 >> 8) & 0xF;
  }

  else
  {
    v19 = 0;
  }

  v32 = *(a1 + 308) - *(a1 + 304);
  do
  {
    v20 = v15 * ((v34 + (((atan2f(v13, v8) * 0.15915) + 0.5) * v32)) - v33);
    v21 = vcvtms_s32_f32(v20);
    v22 = ceilf(v20);
    v23 = ((v20 - floorf(v20)) * 255.0) + 0.5;
    v24 = vcvtms_s32_f32(v15 + v20);
    v25 = ceilf(v20 - v15);
    if (v20 < 0.0)
    {
      v21 = v24;
    }

    if (v20 <= v15)
    {
      v26 = v22;
    }

    else
    {
      v26 = v25;
    }

    v27 = vsraq_n_u32(vdupq_n_s32(*(v10 + v19)), vmlaq_s32(vmulq_s32(vdupq_n_s32(v23), vmovl_u16(*(v16 + 8 * v26))), vdupq_n_s32(255 - v23), vmovl_u16(*(v16 + 2 * (4 * v21)))), 8uLL);
    v28 = vshlq_u32(v27, xmmword_18439C8C0);
    v29 = vextq_s8(v28, vshlq_u32(v27, xmmword_18439C8D0), 0xCuLL);
    v29.i32[1] = v28.i32[0];
    v30 = v27.u32[3];
    v31 = vandq_s8(v29, xmmword_18439C8E0);
    *v31.i8 = vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
    *v17++ = v31.i32[0] | v31.i32[1] | (v30 >> 8 << 27);
    v19 = (v19 + 1) & v11;
    v8 = v4 + v8;
    v13 = v12 + v13;
    *v18++ = -1;
    --a4;
  }

  while (a4);
}

void rgb555_shade_radial_RGB(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v5 = *(a1 + 280);
  v6 = *(a1 + 284);
  v7 = *(*(a1 + 272) + 4);
  v8 = v7 * a2;
  v9 = v7 * a3;
  v10 = *(a1 + 296) + ((*(a1 + 288) * v9) + (v5 * v8));
  v11 = *(a1 + 300) + ((v9 * *(a1 + 292)) + (v6 * v8));
  v13 = *(a1 + 400);
  v14 = *(a1 + 336);
  v15 = *(a1 + 344);
  v16 = *(a1 + 304);
  v17 = *(a1 + 308);
  v18 = *(a1 + 324);
  v19 = v13[2];
  v20 = v13[4];
  v21 = v13[5];
  v22 = v13[7];
  v25 = a1 + 144;
  v23 = *(a1 + 144);
  v24 = *(v25 + 8);
  v26 = *(a1 + 376);
  v27 = *(a1 + 360);
  v28 = (a2 >> 8) & 0xF;
  if (v19 != 0.0 || v22 != 0.0 || v6 != 0.0)
  {
    v38 = *(a1 + 320);
    v39 = v13[3];
    v40 = v13[6];
    v41 = v13[8];
    v42 = a1 + 368;
    v43 = *(a1 + 368);
    v44 = v43 + ((a3 >> 4) & 0xF0);
    v32 = v43 == 0;
    v45 = 15;
    if (v32)
    {
      v45 = 0;
      v28 = 0;
    }

    else
    {
      v42 = v44;
    }

    v46 = -v40;
    v47 = v17 - v16;
    while (1)
    {
      v48 = v46 + ((v10 + v10) * v19);
      v49 = ((v11 * v11) + (v10 * v10)) - v22;
      if (v21 == 0.0)
      {
        v56 = v49 / v48;
      }

      else
      {
        v50 = ((v21 * -4.0) * v49) + (v48 * v48);
        if (v50 < 0.0)
        {
          goto LABEL_51;
        }

        v51 = sqrtf(v50);
        v52 = v41 * (v48 - v51);
        v53 = v48 + v51;
        v54 = v41 * v53;
        v55 = (v41 * v53) <= v52;
        if ((v41 * v53) <= v52)
        {
          v56 = v41 * v53;
        }

        else
        {
          v56 = v52;
        }

        if (v55)
        {
          v54 = v52;
        }

        if (v54 < 0.0)
        {
          v57 = v54 < v39;
LABEL_37:
          v58 = v38;
          if (v57)
          {
            goto LABEL_51;
          }

LABEL_38:
          if ((v58 & 0x80000000) == 0)
          {
            goto LABEL_50;
          }

          goto LABEL_51;
        }

        if (v54 <= 1.0)
        {
          v59 = v16 + (v54 * v47);
          goto LABEL_49;
        }

        if ((v18 & 0x80000000) == 0)
        {
          v58 = v18;
          if (v54 <= v20)
          {
LABEL_50:
            v60 = (v27 + 2 * (4 * v58));
LABEL_52:
            v61 = vaddw_u16(vdupq_n_s32(*(v42 + v28)), *v60);
            LODWORD(v60) = v61.i32[3] >> 8;
            v62 = vshlq_u32(v61, xmmword_18439C8C0);
            v63 = vextq_s8(v62, vshlq_u32(v61, xmmword_18439C8D0), 0xCuLL);
            v63.i32[1] = v62.i32[0];
            v64 = vandq_s8(v63, xmmword_18439C8E0);
            *v64.i8 = vorr_s8(*v64.i8, *&vextq_s8(v64, v64, 8uLL));
            v24->i32[0] = v64.i32[0] | v64.i32[1] | (v60 << 27);
            LOBYTE(v60) = -1;
            goto LABEL_53;
          }
        }
      }

      if (v56 < 0.0)
      {
        v57 = v56 < v39;
        goto LABEL_37;
      }

      if (v56 > 1.0)
      {
        v58 = v18;
        if (v56 > v20)
        {
          goto LABEL_51;
        }

        goto LABEL_38;
      }

      v59 = v16 + (v56 * v47);
LABEL_49:
      v58 = (v15 * (v59 - v14));
      if ((v58 & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

LABEL_51:
      v60 = v26;
      if (v26)
      {
        goto LABEL_52;
      }

LABEL_53:
      v28 = (v28 + 1) & v45;
      v10 = v5 + v10;
      v11 = v6 + v11;
      v24 = (v24 + 4);
      *v23++ = v60;
      if (!--a4)
      {
        return;
      }
    }
  }

  v29 = a1 + 368;
  v30 = *(a1 + 368);
  LODWORD(v31) = (BYTE1(a2) + 1) & 0xF;
  v32 = v30 == 0;
  if (v30)
  {
    v33 = v30 + ((a3 >> 4) & 0xF0);
  }

  else
  {
    v33 = v29;
  }

  if (v32)
  {
    LODWORD(v31) = 0;
    LODWORD(a2) = 0;
  }

  else
  {
    LODWORD(a2) = (a2 >> 8) & 0xF;
  }

  if (v32)
  {
    v34 = 0;
  }

  else
  {
    v34 = 15;
  }

  v35 = v11 * v11;
  v36 = -v21;
  if (v35 <= -v21)
  {
    v65 = fabsf(v13[8]);
    v66 = v21 * -4.0;
    v67 = v17 - v16;
    v68 = a4 + 2;
    while (1)
    {
      v69 = v35 + (v10 * v10);
      v70 = v5 + v10;
      v71 = v35 + (v70 * v70);
      if (v69 <= v36 || v71 <= v36)
      {
        v73 = sqrtf(v66 * v71);
        v74 = v65 * sqrtf(v66 * v69);
        v75 = v65 * v73;
        v76 = (v15 * ((v16 + (v74 * v67)) - v14));
        v77 = (v15 * ((v16 + ((v65 * v73) * v67)) - v14));
        if (v74 > 1.0 || v75 > 1.0)
        {
          if (v74 <= 1.0)
          {
            if (v76 < 0)
            {
              goto LABEL_79;
            }

            v79 = (4 * v76);
          }

          else if (v74 > v20 || (v79 = (4 * v18), v18 < 0))
          {
LABEL_79:
            v87 = v26;
            if (v26)
            {
LABEL_80:
              v97 = vaddw_u16(vdupq_n_s32(*(v33 + a2)), *v87);
              LODWORD(v87) = v97.i32[3] >> 8;
              v98 = vshlq_u32(v97, xmmword_18439C8C0);
              v99 = vextq_s8(v98, vshlq_u32(v97, xmmword_18439C8D0), 0xCuLL);
              v99.i32[1] = v98.i32[0];
              v100 = vandq_s8(v99, xmmword_18439C8E0);
              *v100.i8 = vorr_s8(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
              v24->i32[0] = v100.i32[0] | v100.i32[1] | (v87 << 27);
              LOBYTE(v87) = -1;
            }

            if (v75 <= 1.0)
            {
              if (v77 < 0)
              {
                goto LABEL_88;
              }

              v101 = (4 * v77);
            }

            else if (v75 > v20 || (v101 = (4 * v18), v18 < 0))
            {
LABEL_88:
              if (!v26)
              {
                v109 = 0;
                goto LABEL_92;
              }

              v102 = *v26;
              v103 = v31;
              goto LABEL_90;
            }

            v102 = *(v27 + 2 * v101);
            v103 = v31;
LABEL_90:
            v81 = vaddw_u16(vdupq_n_s32(*(v33 + v103)), v102);
            goto LABEL_91;
          }

          v87 = (v27 + 2 * v79);
          goto LABEL_80;
        }

        v81 = vaddw_u16(vdupq_n_s32(*(v33 + v31)), *(v27 + 8 * v77));
        v82 = vaddw_u16(vdupq_n_s32(*(v33 + a2)), *(v27 + 8 * v76));
        v83 = v82.i32[3] >> 8;
        v84 = vshlq_u32(v82, xmmword_18439C8C0);
        v85 = vextq_s8(v84, vshlq_u32(v82, xmmword_18439C8D0), 0xCuLL);
        v85.i32[1] = v84.i32[0];
        v86 = vandq_s8(v85, xmmword_18439C8E0);
        *v86.i8 = vorr_s8(*v86.i8, *&vextq_s8(v86, v86, 8uLL));
        LODWORD(v87) = v86.i32[0] | v86.i32[1] | (v83 << 27);
      }

      else
      {
        if (v18 < 0)
        {
          if (!v26)
          {
            v109 = 0;
            LOBYTE(v87) = 0;
            goto LABEL_92;
          }

          v80 = *v26;
        }

        else
        {
          v80 = *(v27 + 2 * (4 * v18));
        }

        v88 = vmovl_u16(v80);
        v89 = *(v33 + a2);
        v90 = v88.i32[2] + v89;
        v81 = vaddw_u16(vdupq_n_s32(*(v33 + v31)), v80);
        v88.i32[2] = v88.i32[3];
        v91 = vaddq_s32(vdupq_n_s32(v89), v88);
        v92 = vshlq_u32(v91, xmmword_18439C900);
        v93 = vextq_s8(v92, v92, 4uLL);
        v94 = vandq_s8(vzip2q_s32(v93, vzip1q_s32(v93, vshlq_u32(v91, xmmword_18439C910))), xmmword_18439C920);
        v95 = (v90 >> 8) & 0x1F;
        v96 = vorr_s8(*v94.i8, *&vextq_s8(v94, v94, 8uLL));
        LODWORD(v87) = v96.i32[0] | v95 | v96.i32[1];
      }

      v24->i32[0] = v87;
      LOBYTE(v87) = -1;
LABEL_91:
      v104 = v81;
      v104.i32[2] = v81.i32[3];
      v105 = vshlq_u32(v104, xmmword_18439C900);
      v106 = vextq_s8(v105, v105, 4uLL);
      v107 = vandq_s8(vzip2q_s32(v106, vzip1q_s32(v106, vshlq_u32(v81, xmmword_18439C910))), xmmword_18439C920);
      v108 = vorr_s8(*v107.i8, *&vextq_s8(v107, v107, 8uLL));
      v24->i32[1] = v108.i32[0] | (v81.i32[2] >> 8) & 0x1F | v108.i32[1];
      v109 = -1;
LABEL_92:
      v10 = v5 + v70;
      LOBYTE(a2) = (a2 + 1) & v34;
      LOBYTE(v31) = (v31 + 1) & v34;
      ++v24;
      *v23 = v87;
      v23[1] = v109;
      v23 += 2;
      v68 -= 2;
      if (v68 <= 2)
      {
        return;
      }
    }
  }

  if (v26 || (v18 & 0x80000000) == 0)
  {
    v110 = (v27 + 2 * (4 * v18));
    if (v18 >= 0)
    {
      v111 = v110;
    }

    else
    {
      v111 = v26;
    }

    v112 = vdup_n_s32(v111[3]);
    v113 = vdup_n_s32(*v111);
    v114 = vdup_n_s32(v111[1]);
    v115 = vdup_n_s32(v111[2]);
    v116 = a4 + 4;
    v117 = vdup_n_s32(0x3E0u);
    do
    {
      v118 = (v33 + a2);
      a2 = (a2 + 1) & v34;
      v4.i8[0] = *v118;
      v4.i8[4] = *(v33 + v31);
      v119 = vand_s8(v4, 0xFF000000FFLL);
      v120 = vadd_s32(v113, v119);
      v121 = vadd_s32(v114, v119);
      v122 = vadd_s32(v115, v119);
      v123 = vadd_s32(v112, v119);
      v124 = vorr_s8(vorr_s8(vorr_s8(vand_s8(vshl_u32(v123, 0x130000000ELL), 0xF800000007000000), vand_s8(vshl_u32(v123, 0xE00000013), 0x7000000F8000000)), vorr_s8(vand_s8(vshl_n_s32(v120, 2uLL), 0x7C0000007C00), vand_s8(vshr_n_u32(v121, 3uLL), v117))), vand_s8(vshr_n_u32(v122, 8uLL), 0x1F0000001FLL));
      *v24 = v124;
      v31 = (v31 + 1) & v34;
      v124.i8[0] = *(v33 + a2);
      v124.i8[4] = *(v33 + v31);
      v125 = vand_s8(v124, 0xFF000000FFLL);
      v126 = vadd_s32(v113, v125);
      v127 = vadd_s32(v114, v125);
      v128 = vadd_s32(v115, v125);
      v129 = vadd_s32(v112, v125);
      v4 = vorr_s8(vorr_s8(vorr_s8(vand_s8(vshl_u32(v129, 0x130000000ELL), 0xF800000007000000), vand_s8(vshl_u32(v129, 0xE00000013), 0x7000000F8000000)), vorr_s8(vand_s8(vshl_n_s32(v126, 2uLL), 0x7C0000007C00), vand_s8(vshr_n_u32(v127, 3uLL), v117))), vand_s8(vshr_n_u32(v128, 8uLL), 0x1F0000001FLL));
      v24[1] = v4;
      *v23 = -1;
      v23 += 4;
      v24 += 2;
      v116 -= 4;
    }

    while (v116 > 4);
  }

  else
  {
    if (a4 >= 4)
    {
      v37 = 4;
    }

    else
    {
      v37 = a4;
    }

    bzero(v23, ((a4 - v37 + 3) & 0xFFFFFFFC) + 4);
  }
}

uint64_t rgb555_image(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  memset(v50, 0, 512);
  if (*(a2 + 12))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a3 + 8) >= 1.0;
  }

  v8 = *(*(v6 + 56) + 16 * *a2 + 8 * v7 + 4 * (*(a2 + 6) == 0));
  if (v8 > 28)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 1) < 1 || *(a2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_image_initialize(a2, a3, &v33, v50) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = *a3;
  *(&v33 + 1) = __PAIR64__(*v6, *a3);
  if (v18 == 67449684)
  {
    if (!v44 && (~DWORD1(v34) & 0xC3) == 0)
    {
      v17.n128_u32[0] = *(a3 + 8);
      if (v17.n128_f32[0] >= 1.0 && !*(a3 + 24))
      {
        if ((BYTE4(v34) & 4) != 0)
        {
          v17.n128_u64[0] = *(a3 + 32);
          *(a2 + 8) = v17.n128_u64[0];
        }

        rgb555_mark(a1, v17);
        return 1;
      }
    }

    *&v33 = rgb555_sample_rgb555;
    goto LABEL_46;
  }

  v19 = SAMPLEINDEX(v18, v10, v11, v12, v13, v14, v15, v16);
  if (!v19)
  {
    return 0xFFFFFFFFLL;
  }

  if (v19 > 0xB)
  {
    goto LABEL_28;
  }

  if (v19 > 6)
  {
    switch(v19)
    {
      case 7u:
        v20 = 0;
        v21 = 32;
        break;
      case 9u:
        v20 = 0;
        v21 = 40;
        break;
      case 8u:
        v20 = 0;
        v21 = 8;
        goto LABEL_29;
      default:
        goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v19 == 2)
  {
    if (!*(a2 + 12))
    {
      v20 = 0;
      v21 = 16;
      goto LABEL_29;
    }

LABEL_28:
    v21 = 255;
    v20 = 1;
    goto LABEL_29;
  }

  if (v19 != 5)
  {
    if (v19 == 6)
    {
      v20 = 0;
      v21 = 0;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v20 = 0;
  v21 = 24;
LABEL_29:
  *&v33 = rgb555_image_sample[v19 + 1];
  if (v33)
  {
    if (!*(a3 + 5) || (v22 = *a3, (HIWORD(*a3) & 0x3Fu) <= (*(v6 + 2) & 0x3Fu)))
    {
      DWORD2(v33) = 67449684;
      goto LABEL_45;
    }
  }

  else
  {
    v22 = *a3;
  }

  if ((HIWORD(v22) & 0x3F) > 8u)
  {
    if ((v22 & 0x3F0000) >> 16 > 0x10)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v23 = RGB8_image_sample;
    *&v33 = *&RGB8_image_sample[2 * v19 + 2];
    if (v33)
    {
      goto LABEL_43;
    }
  }

  v23 = RGB16_image_sample;
  *&v33 = *&RGB16_image_sample[2 * v19 + 2];
  if (!v33)
  {
LABEL_40:
    v23 = RGBF_image_sample;
    *&v33 = *&RGBF_image_sample[2 * v19 + 2];
    if (v33)
    {
      v24 = 16;
      goto LABEL_42;
    }

    return 0xFFFFFFFFLL;
  }

  v24 = 8;
LABEL_42:
  LODWORD(v34) = v24;
LABEL_43:
  DWORD2(v33) = *v23;
  if (*(a3 + 5))
  {
    *(&v43 + 1) = pixel_dither_noise;
  }

LABEL_45:
  if ((v20 & 1) != 0 || (v8 - 1) > 1 || (BYTE4(v34) & 7) != 3 || a2[2] != 5 && a2[2] || v19 > 0xB)
  {
    goto LABEL_46;
  }

  HIDWORD(v26) = v21;
  LODWORD(v26) = v21;
  v25 = v26 >> 3;
  if (v25 > 2)
  {
    if (v25 == 3)
    {
      DWORD2(v33) = *a3;
      v27 = rgb555_image_mark_RGB24;
      goto LABEL_74;
    }

    if (v25 == 4)
    {
      DWORD2(v33) = *a3;
      v27 = rgb555_image_mark_rgb32;
      goto LABEL_74;
    }

    if (v25 != 5)
    {
      goto LABEL_46;
    }

    DWORD2(v33) = *a3;
    v28 = rgb555_image_mark_rgb32;
LABEL_72:
    v29 = v28;
    v30 = a2;
    v31 = v8;
    v32 = 8;
LABEL_75:
    rgb555_image_mark_image(v30, &v33, v31, v32, v29);
    return 1;
  }

  switch(v25)
  {
    case 0:
      DWORD2(v33) = *a3;
      v27 = rgb555_image_mark_RGB32;
      goto LABEL_74;
    case 1:
      DWORD2(v33) = *a3;
      v28 = rgb555_image_mark_RGB32;
      goto LABEL_72;
    case 2:
      DWORD2(v33) = *a3;
      v27 = rgb555_image_mark_W8;
LABEL_74:
      v29 = v27;
      v30 = a2;
      v31 = v8;
      v32 = 0;
      goto LABEL_75;
  }

LABEL_46:
  rgb555_image_mark(a2, &v33, v8, v17);
  return 1;
}

uint64_t rgb555_mark(uint64_t a1, __n128 a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v797 = *MEMORY[0x1E69E9840];
  v5 = *v3;
  v6 = *(v3 + 96);
  v7 = *(v3 + 48);
  v8 = *(*(*v2 + 56) + 16 * *v3 + 8 * (v6 == 0) + 4 * (v7 == 0));
  if (v8 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v3;
  v11 = *(v3 + 4);
  v12 = v11 - 1;
  if (v11 < 1)
  {
    return 0;
  }

  v13 = *(v3 + 8);
  v14 = (v13 - 1);
  if (v13 < 1)
  {
    return 0;
  }

  v15 = *(v3 + 136);
  v704 = v3;
  if ((v5 & 0xFF0000) == 0x50000 || !v15)
  {
    v706 = *(*(*v2 + 56) + 16 * *v3 + 8 * (v6 == 0) + 4 * (v7 == 0));
    if ((*v3 & 0xFF00) == 0x400)
    {
      v796[0] = *(v3 + 4);
      v786[0] = v13;
      if (v6)
      {
        v17 = *v6;
      }

      else
      {
        v17 = 255;
      }

      v30 = **(v3 + 88);
      v31 = *(v3 + 12);
      v32 = *(v3 + 16);
      v33 = *(v3 + 28) >> 1;
      if (v7)
      {
        __b = *(v3 + 32);
        v774 = (v7 + __b * v32 + v31);
        v752 = 1;
      }

      else
      {
        v774 = 0;
        __b = 0;
        v752 = 0;
      }

      v40 = ~v17;
      v41 = *(v3 + 40) + 2 * v32 * v33 + 2 * v31;
      v750 = v41;
      if (v15)
      {
        shape_enum_clip_alloc(v2, v3, v15, 1, 1, 1, *(v3 + 104), *(v3 + 108), v11, v13);
        v43 = v42;
        v44 = v774;
        v782 = __b;
        v45 = v41;
        if (v42)
        {
          goto LABEL_350;
        }

        return 1;
      }

      v778 = 0;
      if (v7)
      {
        v46 = v11;
      }

      else
      {
        v46 = 0;
      }

      v44 = v774;
      v782 = __b - v46;
      v47 = v41;
      v48 = v11;
      v45 = v41;
LABEL_74:
      v781 = v33 - v48;
      v714 = v11;
      switch(v8)
      {
        case 0:
          v76 = v45;
          v77 = v781 + v11;
          v78 = v786[0];
          v79 = v786[0] - 1;
          v80 = &v47[2 * ((v77 * v79) & (v77 >> 63))];
          if (v77 < 0)
          {
            v77 = -v77;
          }

          v81 = v11;
          CGBlt_fillBytes(2 * v11, v786[0], 0, v80, 2 * v77);
          if (!v7)
          {
            goto LABEL_201;
          }

          v82 = v782 + v81;
          v44 += (v82 * v79) & (v82 >> 63);
          if (v82 >= 0)
          {
            v83 = v782 + v81;
          }

          else
          {
            v83 = -v82;
          }

          v84 = v81;
          v85 = v78;
          v86 = 0;
          goto LABEL_200;
        case 1:
          v76 = v45;
          v130 = v11;
          v131 = v781 + v11;
          if (v131 < 0)
          {
            v47 += 2 * v131 * (v786[0] - 1);
            v131 = -v131;
          }

          v132 = 0;
          v133 = *(v704 + 88);
          if (v133)
          {
            v132 = *v133;
          }

          v134 = v786[0];
          v135 = v47;
          v136 = v11;
          CGBlt_fillBytes(2 * v11, v786[0], v132, v135, 2 * v131);
          if (v7)
          {
            v85 = v134;
            v137 = *(v704 + 96);
            if (!v137)
            {
              v137 = &PIXELALPHAPLANARCONSTANT_18034;
            }

            v44 += ((v782 + v130) * (v134 - 1)) & ((v782 + v130) >> 63);
            if (v782 + v130 >= 0)
            {
              v83 = v782 + v130;
            }

            else
            {
              v83 = -(v782 + v130);
            }

            v86 = *v137;
            v84 = v136;
LABEL_200:
            v782 = v83;
            CGBlt_fillBytes(v84, v85, v86, v44, v83);
          }

LABEL_201:
          v8 = v706;
          v45 = v76;
          goto LABEL_348;
        case 2:
          v737 = v33;
          v112 = 4 * v752;
          if (v7)
          {
            do
            {
              v113 = v796[0];
              if (v796[0] >= 4)
              {
                v114 = (v796[0] >> 2) + 1;
                do
                {
                  v115 = PDAplusDAM(v30, v17, *v47, *v44, ~v17);
                  *v47 = v115;
                  *v44 = BYTE3(v115);
                  v116 = PDAplusDAM(v30, v17, *(v47 + 1), v44[1], ~v17);
                  *(v47 + 1) = v116;
                  v44[1] = BYTE3(v116);
                  v117 = PDAplusDAM(v30, v17, *(v47 + 2), v44[2], ~v17);
                  *(v47 + 2) = v117;
                  v44[2] = BYTE3(v117);
                  v118 = PDAplusDAM(v30, v17, *(v47 + 3), v44[3], ~v17);
                  *(v47 + 3) = v118;
                  v44[3] = HIBYTE(v118);
                  v47 += 8;
                  v44 += v112;
                  --v114;
                }

                while (v114 > 1);
                v113 = v796[0] & 3;
              }

              if (v113 >= 1)
              {
                v119 = v113 + 1;
                do
                {
                  v120 = PDAplusDAM(v30, v17, *v47, *v44, ~v17);
                  *v47 = v120;
                  v47 += 2;
                  *v44 = HIBYTE(v120);
                  v44 += v752;
                  --v119;
                }

                while (v119 > 1);
              }

              v47 += 2 * v781;
              v44 += v782;
              --v786[0];
            }

            while (v786[0]);
            goto LABEL_346;
          }

          v181 = v786[0];
          v749 = v11 & 3;
          v747 = (v11 >> 2) + 1;
          do
          {
            if (v11 < 4)
            {
              v183 = v11;
            }

            else
            {
              v182 = v747;
              do
              {
                *v47 = PDplusDM(v30, *v47, ~v17);
                *(v47 + 1) = PDplusDM(v30, *(v47 + 1), ~v17);
                *(v47 + 2) = PDplusDM(v30, *(v47 + 2), ~v17);
                *(v47 + 3) = PDplusDM(v30, *(v47 + 3), ~v17);
                v47 += 8;
                v44 += v112;
                --v182;
              }

              while (v182 > 1);
              v183 = v749;
              LODWORD(v11) = v714;
            }

            if (v183 >= 1)
            {
              v184 = v183 + 1;
              do
              {
                *v47 = PDplusDM(v30, *v47, ~v17);
                v47 += 2;
                --v184;
              }

              while (v184 > 1);
              v44 += v183 * v752;
              v8 = v706;
              LODWORD(v11) = v714;
            }

            v47 += 2 * v781;
            v44 += v782;
            --v181;
          }

          while (v181);
          goto LABEL_345;
        case 3:
          do
          {
            v124 = v796[0];
            do
            {
              v125 = *v44;
              if (v125 > 7)
              {
                if (v125 < 0xF8)
                {
                  v127 = PDAM(v30, v17, v125);
                  *v47 = v127;
                  v126 = HIBYTE(v127);
                }

                else
                {
                  *v47 = v30;
                  LOBYTE(v126) = v17;
                }
              }

              else
              {
                LOBYTE(v126) = 0;
                *v47 = 0;
              }

              *v44 = v126;
              v47 += 2;
              v44 += v752;
              --v124;
            }

            while (v124);
            v47 += 2 * v781;
            v44 += v782;
            --v786[0];
          }

          while (v786[0]);
          goto LABEL_347;
        case 4:
          do
          {
            v98 = v796[0];
            do
            {
              v99 = *v44;
              if (v99 < 0xF8)
              {
                if (v99 > 7)
                {
                  v101 = PDAM(v30, v17, ~v99);
                  *v47 = v101;
                  v100 = HIBYTE(v101);
                }

                else
                {
                  *v47 = v30;
                  LOBYTE(v100) = v17;
                }
              }

              else
              {
                LOBYTE(v100) = 0;
                *v47 = 0;
              }

              *v44 = v100;
              v47 += 2;
              v44 += v752;
              --v98;
            }

            while (v98);
            v47 += 2 * v781;
            v44 += v782;
            --v786[0];
          }

          while (v786[0]);
          goto LABEL_347;
        case 5:
          do
          {
            v144 = v796[0];
            do
            {
              v145 = PDAMplusDAM(v30, v17, *v44, *v47, *v44, ~v17);
              *v47 = v145;
              v47 += 2;
              *v44 = HIBYTE(v145);
              v44 += v752;
              --v144;
            }

            while (v144);
            v47 += 2 * v781;
            v44 += v782;
            --v786[0];
          }

          while (v786[0]);
          goto LABEL_347;
        case 6:
          goto LABEL_246;
        case 7:
          if (v7)
          {
            do
            {
              v128 = v796[0];
              do
              {
                v129 = PDAM(*v47, *v44, v17);
                *v47 = v129;
                v47 += 2;
                *v44 = HIBYTE(v129);
                v44 += v752;
                --v128;
              }

              while (v128);
              v47 += 2 * v781;
              v44 += v782;
              --v786[0];
            }

            while (v786[0]);
            goto LABEL_347;
          }

          v737 = v33;
          v185 = v786[0];
          v186 = v752 + v752 * (v11 - 1);
          do
          {
            v187 = v11;
            do
            {
              *v47 = PDM(*v47, v17);
              v47 += 2;
              --v187;
            }

            while (v187);
            v47 += 2 * v781;
            v44 += v186 + v782;
            --v185;
            LODWORD(v11) = v714;
          }

          while (v185);
          goto LABEL_345;
        case 8:
          if (v7)
          {
            do
            {
              v161 = v796[0];
              do
              {
                v162 = PDAM(*v47, *v44, v40);
                *v47 = v162;
                v47 += 2;
                *v44 = HIBYTE(v162);
                v44 += v752;
                --v161;
              }

              while (v161);
              v47 += 2 * v781;
              v44 += v782;
              --v786[0];
            }

            while (v786[0]);
            goto LABEL_347;
          }

          v737 = v33;
          v188 = v786[0];
          v189 = v752 + v752 * (v11 - 1);
          do
          {
            v190 = v11;
            do
            {
              *v47 = PDM(*v47, v40);
              v47 += 2;
              --v190;
            }

            while (v190);
            v47 += 2 * v781;
            v44 += v189 + v782;
            --v188;
            LODWORD(v11) = v714;
          }

          while (v188);
          goto LABEL_345;
        case 9:
          do
          {
            v104 = v796[0];
            do
            {
              v105 = PDAMplusDAM(v30, v17, *v44 ^ 0xFFu, *v47, *v44, v17);
              *v47 = v105;
              v47 += 2;
              *v44 = HIBYTE(v105);
              v44 += v752;
              --v104;
            }

            while (v104);
            v47 += 2 * v781;
            v44 += v782;
            --v786[0];
          }

          while (v786[0]);
          goto LABEL_347;
        case 10:
          do
          {
            v159 = v796[0];
            do
            {
              v160 = PDAMplusDAM(v30, v17, *v44 ^ 0xFFu, *v47, *v44, ~v17);
              *v47 = v160;
              v47 += 2;
              *v44 = HIBYTE(v160);
              v44 += v752;
              --v159;
            }

            while (v159);
            v47 += 2 * v781;
            v44 += v782;
            --v786[0];
          }

          while (v786[0]);
          goto LABEL_347;
        case 11:
          if (v7)
          {
            do
            {
              v96 = v796[0];
              do
              {
                v97 = PDAplusdDA(*v47, *v44, v30, v17);
                *v47 = v97;
                v47 += 2;
                *v44 = HIBYTE(v97);
                v44 += v752;
                --v96;
              }

              while (v96);
              v47 += 2 * v781;
              v44 += v782;
              --v786[0];
            }

            while (v786[0]);
          }

          else
          {
            v737 = v33;
            v175 = v786[0];
            v176 = v752 + v752 * (v11 - 1);
            do
            {
              v177 = v11;
              do
              {
                *v47 = PDplusdDA(*v47, v30, v17);
                v47 += 2;
                --v177;
              }

              while (v177);
              v47 += 2 * v781;
              v44 += v176 + v782;
              --v175;
              LODWORD(v11) = v714;
            }

            while (v175);
LABEL_345:
            v786[0] = 0;
LABEL_346:
            v33 = v737;
          }

          goto LABEL_347;
        case 12:
          if (v7)
          {
            do
            {
              v102 = v796[0];
              do
              {
                v103 = PDApluslDA(*v47, *v44, v30, v17);
                *v47 = v103;
                v47 += 2;
                *v44 = HIBYTE(v103);
                v44 += v752;
                --v102;
              }

              while (v102);
              v47 += 2 * v781;
              v44 += v782;
              --v786[0];
            }

            while (v786[0]);
            goto LABEL_347;
          }

          v178 = v786[0];
          do
          {
            v179 = v11;
            do
            {
              v180 = ((*v47 | (*v47 << 15)) & 0x1F07C1F) + ((v30 | (v30 << 15)) & 0x1F07C1F);
              *v47 = (((15 * ((v180 >> 5) & 0x100401)) | v180 | (30 * ((v180 >> 5) & 0x100401))) >> 15) & 0x3E0 | ((15 * ((v180 >> 5) & 0x401)) | v180 | (30 * ((v180 >> 5) & 0x401))) & 0x7C1F;
              v47 += 2;
              --v179;
            }

            while (v179);
            v47 += 2 * v781;
            v44 += v752 + v752 * (v11 - 1) + v782;
            --v178;
          }

          while (v178);
          v786[0] = 0;
          goto LABEL_348;
        case 13:
          if (v17 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v149 = v796[0];
            do
            {
              if (v7)
              {
                v150 = *v44;
                if (v150 > 7)
                {
                  v151 = PDAmultiplyPDA(*v47, v150, v30, v17);
                  *v47 = v151;
                  *v44 = HIBYTE(v151);
                }

                else
                {
                  *v47 = v30;
                  *v44 = v17;
                }
              }

              else
              {
                *v47 = PDAmultiplyPDA(*v47, 0xFFu, v30, v17);
              }

              v47 += 2;
              v44 += v752;
              --v149;
            }

            while (v149);
            v47 += 2 * v781;
            v44 += v782;
            --v786[0];
          }

          while (v786[0]);
          goto LABEL_347;
        case 14:
          if (v17 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v93 = v796[0];
            do
            {
              if (v7)
              {
                v94 = *v44;
                if (v94 > 7)
                {
                  v95 = PDAscreenPDA(*v47, v94, v30, v17);
                  *v47 = v95;
                  *v44 = HIBYTE(v95);
                }

                else
                {
                  *v47 = v30;
                  *v44 = v17;
                }
              }

              else
              {
                *v47 = PDAscreenPDA(*v47, 0xFFu, v30, v17);
              }

              v47 += 2;
              v44 += v752;
              --v93;
            }

            while (v93);
            v47 += 2 * v781;
            v44 += v782;
            --v786[0];
          }

          while (v786[0]);
          goto LABEL_347;
        case 15:
          if (v17 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v121 = v796[0];
            do
            {
              if (v7)
              {
                v122 = *v44;
                if (v122 > 7)
                {
                  v123 = PDAoverlayPDA(*v47, v122, v30, v17);
                  *v47 = v123;
                  *v44 = HIBYTE(v123);
                }

                else
                {
                  *v47 = v30;
                  *v44 = v17;
                }
              }

              else
              {
                *v47 = PDAoverlayPDA(*v47, 0xFFu, v30, v17);
              }

              v47 += 2;
              v44 += v752;
              --v121;
            }

            while (v121);
            v47 += 2 * v781;
            v44 += v782;
            --v786[0];
          }

          while (v786[0]);
          goto LABEL_347;
        case 16:
          if (v17 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v90 = v796[0];
            do
            {
              if (v7)
              {
                v91 = *v44;
                if (v91 > 7)
                {
                  v92 = PDAdarkenPDA(*v47, v91, v30, v17);
                  *v47 = v92;
                  *v44 = HIBYTE(v92);
                }

                else
                {
                  *v47 = v30;
                  *v44 = v17;
                }
              }

              else
              {
                *v47 = PDAdarkenPDA(*v47, 0xFFu, v30, v17);
              }

              v47 += 2;
              v44 += v752;
              --v90;
            }

            while (v90);
            v47 += 2 * v781;
            v44 += v782;
            --v786[0];
          }

          while (v786[0]);
          goto LABEL_347;
        case 17:
          if (v17 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v138 = v796[0];
            do
            {
              if (v7)
              {
                v139 = *v44;
                if (v139 > 7)
                {
                  v140 = PDAlightenPDA(*v47, v139, v30, v17);
                  *v47 = v140;
                  *v44 = HIBYTE(v140);
                }

                else
                {
                  *v47 = v30;
                  *v44 = v17;
                }
              }

              else
              {
                *v47 = PDAlightenPDA(*v47, 0xFFu, v30, v17);
              }

              v47 += 2;
              v44 += v752;
              --v138;
            }

            while (v138);
            v47 += 2 * v781;
            v44 += v782;
            --v786[0];
          }

          while (v786[0]);
          goto LABEL_347;
        case 18:
          if (v17 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v156 = v796[0];
            do
            {
              if (v7)
              {
                v157 = *v44;
                if (v157 > 7)
                {
                  v158 = PDAcolordodgePDA(*v47, v157, v30, v17);
                  *v47 = v158;
                  *v44 = HIBYTE(v158);
                }

                else
                {
                  *v47 = v30;
                  *v44 = v17;
                }
              }

              else
              {
                *v47 = PDAcolordodgePDA(*v47, 0xFFu, v30, v17);
              }

              v47 += 2;
              v44 += v752;
              --v156;
            }

            while (v156);
            v47 += 2 * v781;
            v44 += v782;
            --v786[0];
          }

          while (v786[0]);
          goto LABEL_347;
        case 19:
          if (v17 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v166 = v796[0];
            do
            {
              if (v7)
              {
                v167 = *v44;
                if (v167 > 7)
                {
                  v168 = PDAcolorburnPDA(*v47, v167, v30, v17);
                  *v47 = v168;
                  *v44 = HIBYTE(v168);
                }

                else
                {
                  *v47 = v30;
                  *v44 = v17;
                }
              }

              else
              {
                *v47 = PDAcolorburnPDA(*v47, 0xFFu, v30, v17);
              }

              v47 += 2;
              v44 += v752;
              --v166;
            }

            while (v166);
            v47 += 2 * v781;
            v44 += v782;
            --v786[0];
          }

          while (v786[0]);
          goto LABEL_347;
        case 20:
          if (v17 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v141 = v796[0];
            do
            {
              if (v7)
              {
                v142 = *v44;
                if (v142 > 7)
                {
                  v143 = PDAsoftlightPDA(*v47, v142, v30, v17);
                  *v47 = v143;
                  *v44 = HIBYTE(v143);
                }

                else
                {
                  *v47 = v30;
                  *v44 = v17;
                }
              }

              else
              {
                *v47 = PDAsoftlightPDA(*v47, 0xFFu, v30, v17);
              }

              v47 += 2;
              v44 += v752;
              --v141;
            }

            while (v141);
            v47 += 2 * v781;
            v44 += v782;
            --v786[0];
          }

          while (v786[0]);
          goto LABEL_347;
        case 21:
          if (v17 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v146 = v796[0];
            do
            {
              if (v7)
              {
                v147 = *v44;
                if (v147 > 7)
                {
                  v148 = PDAhardlightPDA(*v47, v147, v30, v17);
                  *v47 = v148;
                  *v44 = HIBYTE(v148);
                }

                else
                {
                  *v47 = v30;
                  *v44 = v17;
                }
              }

              else
              {
                *v47 = PDAhardlightPDA(*v47, 0xFFu, v30, v17);
              }

              v47 += 2;
              v44 += v752;
              --v146;
            }

            while (v146);
            v47 += 2 * v781;
            v44 += v782;
            --v786[0];
          }

          while (v786[0]);
          goto LABEL_347;
        case 22:
          if (v17 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v163 = v796[0];
            do
            {
              if (v7)
              {
                v164 = *v44;
                if (v164 > 7)
                {
                  v165 = PDAdifferencePDA(*v47, v164, v30, v17);
                  *v47 = v165;
                  *v44 = HIBYTE(v165);
                }

                else
                {
                  *v47 = v30;
                  *v44 = v17;
                }
              }

              else
              {
                *v47 = PDAdifferencePDA(*v47, 0xFFu, v30, v17);
              }

              v47 += 2;
              v44 += v752;
              --v163;
            }

            while (v163);
            v47 += 2 * v781;
            v44 += v782;
            --v786[0];
          }

          while (v786[0]);
          goto LABEL_347;
        case 23:
          if (v17 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v169 = v796[0];
            do
            {
              if (v7)
              {
                v170 = *v44;
                if (v170 > 7)
                {
                  v171 = PDAexclusionPDA(*v47, v170, v30, v17);
                  *v47 = v171;
                  *v44 = HIBYTE(v171);
                }

                else
                {
                  *v47 = v30;
                  *v44 = v17;
                }
              }

              else
              {
                *v47 = PDAexclusionPDA(*v47, 0xFFu, v30, v17);
              }

              v47 += 2;
              v44 += v752;
              --v169;
            }

            while (v169);
            v47 += 2 * v781;
            v44 += v782;
            --v786[0];
          }

          while (v786[0]);
          goto LABEL_347;
        case 24:
          if (v17 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v109 = v796[0];
            do
            {
              if (v7)
              {
                v110 = *v44;
                if (v110 > 7)
                {
                  v111 = PDAhuePDA(*v47, v110, v30, v17);
                  *v47 = v111;
                  *v44 = HIBYTE(v111);
                }

                else
                {
                  *v47 = v30;
                  *v44 = v17;
                }
              }

              else
              {
                *v47 = PDAhuePDA(*v47, 0xFFu, v30, v17);
              }

              v47 += 2;
              v44 += v752;
              --v109;
            }

            while (v109);
            v47 += 2 * v781;
            v44 += v782;
            --v786[0];
          }

          while (v786[0]);
          goto LABEL_347;
        case 25:
          if (v17 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v106 = v796[0];
            do
            {
              if (v7)
              {
                v107 = *v44;
                if (v107 > 7)
                {
                  v108 = PDAsaturationPDA(*v47, v107, v30, v17);
                  *v47 = v108;
                  *v44 = HIBYTE(v108);
                }

                else
                {
                  *v47 = v30;
                  *v44 = v17;
                }
              }

              else
              {
                *v47 = PDAsaturationPDA(*v47, 0xFFu, v30, v17);
              }

              v47 += 2;
              v44 += v752;
              --v106;
            }

            while (v106);
            v47 += 2 * v781;
            v44 += v782;
            --v786[0];
          }

          while (v786[0]);
          goto LABEL_347;
        case 26:
          if (v17 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v172 = v796[0];
            do
            {
              if (v7)
              {
                v173 = *v44;
                if (v173 > 7)
                {
                  v174 = PDAluminosityPDA(v30, v17, *v47, v173);
                  *v47 = v174;
                  *v44 = HIBYTE(v174);
                }

                else
                {
                  *v47 = v30;
                  *v44 = v17;
                }
              }

              else
              {
                *v47 = PDAluminosityPDA(v30, v17, *v47, 0xFFu);
              }

              v47 += 2;
              v44 += v752;
              --v172;
            }

            while (v172);
            v47 += 2 * v781;
            v44 += v782;
            --v786[0];
          }

          while (v786[0]);
          goto LABEL_347;
        case 27:
          if (v17 < 8)
          {
            goto LABEL_348;
          }

          do
          {
            v87 = v796[0];
            do
            {
              if (v7)
              {
                v88 = *v44;
                if (v88 > 7)
                {
                  v89 = PDAluminosityPDA(*v47, v88, v30, v17);
                  *v47 = v89;
                  *v44 = HIBYTE(v89);
                }

                else
                {
                  *v47 = v30;
                  *v44 = v17;
                }
              }

              else
              {
                *v47 = PDAluminosityPDA(*v47, 0xFFu, v30, v17);
              }

              v47 += 2;
              v44 += v752;
              --v87;
            }

            while (v87);
            v47 += 2 * v781;
            v44 += v782;
            --v786[0];
          }

          while (v786[0]);
          goto LABEL_347;
        default:
          goto LABEL_348;
      }

      while (1)
      {
LABEL_246:
        v152 = v796[0];
        do
        {
          v153 = *v44;
          if (v153 > 7)
          {
            if (v153 > 0xF7)
            {
              goto LABEL_252;
            }

            v155 = PDAplusDAM(*v47, v153, v30, v17, ~v153);
            *v47 = v155;
            v154 = HIBYTE(v155);
          }

          else
          {
            *v47 = v30;
            LOBYTE(v154) = v17;
          }

          *v44 = v154;
LABEL_252:
          v47 += 2;
          v44 += v752;
          --v152;
        }

        while (v152);
        v47 += 2 * v781;
        v44 += v782;
        if (!--v786[0])
        {
LABEL_347:
          v45 = v750;
LABEL_348:
          v43 = v778;
          if (v778)
          {
            v785 = 0;
LABEL_350:
            if (shape_enum_clip_next(v43, &v785 + 1, &v785, v796, v786))
            {
              v778 = v43;
              v47 = (v45 + 2 * v33 * v785 + 2 * SHIDWORD(v785));
              v48 = v796[0];
              if (v7)
              {
                v44 = &v774[__b * v785 + SHIDWORD(v785)];
              }

              v191 = v782;
              if (v7)
              {
                v191 = (__b - v796[0]);
              }

              v782 = v191;
              LODWORD(v11) = v796[0];
              goto LABEL_74;
            }

            v60 = v43;
LABEL_1083:
            free(v60);
          }

          return 1;
        }
      }
    }

    v796[0] = *(v3 + 4);
    v786[0] = v13;
    v18 = *(v3 + 88);
    v19 = *(v3 + 12);
    v20 = *(v3 + 16);
    v21 = *(v3 + 28) >> 1;
    if (v7)
    {
      v702 = *(v3 + 32);
      v703 = (v7 + v702 * v20 + v19);
      v22 = 0xFFFFFFFFLL;
    }

    else
    {
      v702 = 0;
      v703 = 0;
      v22 = 0;
    }

    v701 = *(v3 + 40) + 2 * v20 * v21 + 2 * v19;
    v34 = *(v3 + 104);
    v35 = *(v3 + 108);
    v36 = *(v3 + 56);
    v37 = BYTE1(v5);
    v688 = v36;
    v689 = *(v3 + 60);
    if (v37 == 3)
    {
      v783 = *(v3 + 104);
      v49 = v11;
      v50 = v22;
      v2 = rgb555_colorlookup(3, v18, v6);
      v18 = v2;
      if (v6)
      {
        v51 = 0;
        v6 = (v2 + 512);
        v52 = 16;
        LODWORD(v39) = 1;
      }

      else
      {
        v52 = 0;
        LODWORD(v39) = 0;
        v51 = 1;
      }

      v58 = 16;
      LODWORD(v712) = 16;
      LOBYTE(v22) = v50;
      v59 = 16;
      v11 = v49;
      v34 = v783;
    }

    else
    {
      if (v37 == 1)
      {
        v38 = *(v3 + 60);
        v712 = *(v3 + 76) >> 1;
        if (v6)
        {
          v710 = *(v3 + 80);
          v6 += v710 * v38 + v36;
          LODWORD(v39) = -1;
        }

        else
        {
          v710 = 0;
          LODWORD(v39) = 0;
        }

        v18 += v38 * v712 + v36;
        if (v712 == v21)
        {
          v61 = (v701 - v18) >> 1;
          if (v61 >= 1)
          {
            if (v61 <= v11)
            {
              v701 += 2 * v12;
              v703 += v22 & v12;
              v6 += v39 & v12;
              v705 = -1;
              v712 = *(v3 + 28) >> 1;
              v18 += v12;
              goto LABEL_52;
            }

            v62 = v21 * v14;
            v63 = &v18[v21 * v14];
            if (v701 <= &v63[v11 - 1])
            {
              v21 = -v21;
              v75 = &v703[v702 * v14];
              v702 = -v702;
              v703 = v75;
              v22 &= 1u;
              v6 += v710 * v14;
              v710 = -v710;
              LODWORD(v39) = v39 & 1;
              v705 = 1;
              v18 = v63;
              v712 = v21;
              v701 += 2 * v62;
              goto LABEL_52;
            }
          }
        }

        v22 &= 1u;
        LODWORD(v39) = v39 & 1;
        v705 = 1;
LABEL_52:
        if (v15)
        {
          v711 = v18;
          v751 = v22;
          v746 = 0;
          v736 = 0;
          v753 = -1;
          v775 = v39;
          v59 = v712;
          v52 = v710;
          v64 = v705;
          goto LABEL_60;
        }

        v65 = v705 * v11;
        v732 = v702 - v22 * v11;
        v66 = -1;
        v52 = v710;
        v59 = v712;
LABEL_71:
        v736 = 0;
        v709 = 0;
        v746 = 0;
        v748 = v6;
        v59 -= v65;
        v713 = v11;
        v52 -= v39 * v11;
        v780 = v18;
        v784 = v6;
        __ba = v703;
        v779 = v701;
        while (2)
        {
          v751 = v22;
          v775 = v39;
          v711 = v18;
          v734 = v59;
          v735 = v21 - v65;
          v733 = v52;
          v707 = v6;
          v708 = v21;
          switch(v8)
          {
            case 0:
              v753 = v66;
              v192 = v735 - v713;
              v193 = &v779[-2 * v713 + 2];
              if (v705 >= 0)
              {
                v193 = v779;
                v192 = v735 + v713;
              }

              v194 = v786[0];
              v195 = v786[0] - 1;
              v196 = (v193 + 2 * ((v192 * v195) & (v192 >> 63)));
              if (v192 < 0)
              {
                v192 = -v192;
              }

              v197 = v22;
              CGBlt_fillBytes(2 * v713, v786[0], 0, v196, 2 * v192);
              if (v197)
              {
                v198 = v732 - v713;
                v199 = &__ba[-v713 + 1];
                if (v705 >= 0)
                {
                  v199 = __ba;
                  v198 = v732 + v713;
                }

                v200 = (v198 * v195) & (v198 >> 63);
                if (v198 >= 0)
                {
                  v201 = v198;
                }

                else
                {
                  v201 = -v198;
                }

                __ba = &v199[v200];
                v732 = v201;
                CGBlt_fillBytes(v713, v194, 0, &v199[v200], v201);
              }

              goto LABEL_1126;
            case 1:
              v381 = *(v10 + 1);
              if ((v381 - 2) < 2)
              {
                if (v713 >= 16 && (2 * v712) <= 0x40)
                {
                  v4.i32[0] = 2 * v712;
                  v382 = vcnt_s8(v4);
                  v382.i16[0] = vaddlv_u8(v382);
                  if (v382.i32[0] <= 1u)
                  {
                    v753 = v66;
                    v383 = v786[0];
                    CGSFillDRAM64(v779, 2 * (v713 + v735), 2 * v713, v786[0], v18, 2 * v59, 2 * v712, v710, 2 * v688, v689);
                    if (!v751)
                    {
                      goto LABEL_1054;
                    }

                    v68 = v709;
                    if (v775)
                    {
                      CGSFillDRAM64(__ba, v713 + v732, v713, v383, v6, v52, v712, v710, v688, v689);
                      if (!v709)
                      {
                        return 1;
                      }
                    }

                    else
                    {
                      CGBlt_fillBytes(v713, v383, -1, __ba, v713 + v732);
                      if (!v709)
                      {
                        return 1;
                      }
                    }

                    goto LABEL_1055;
                  }
                }

LABEL_960:
                if (v22)
                {
                  v580 = 2 * v705;
                  if (v39)
                  {
                    do
                    {
                      v581 = v796[0];
                      do
                      {
                        *v779 = *v780;
                        *__ba = *v784;
                        __ba += v22;
                        v582 = &v780[v705];
                        if (v582 >= v66)
                        {
                          v583 = -v712;
                        }

                        else
                        {
                          v583 = 0;
                        }

                        v780 = &v582[v583];
                        v784 += v39 + v583;
                        v779 += v580;
                        --v581;
                      }

                      while (v581);
                      if (v736)
                      {
                        v584 = &v746[v59];
                        if (v584 >= v736)
                        {
                          v585 = -(v52 * v710);
                        }

                        else
                        {
                          v585 = 0;
                        }

                        v586 = &v748[v52 + v585];
                        if (v584 >= v736)
                        {
                          v587 = -(v59 * v710);
                        }

                        else
                        {
                          v587 = 0;
                        }

                        v66 += 2 * v587 + 2 * v59;
                        v746 = &v584[v587];
                        v748 += v52 + v585;
                        v780 = v746;
                        v784 = v586;
                      }

                      else
                      {
                        v780 += v59;
                        v784 += v52;
                      }

                      v779 += 2 * v735;
                      __ba += v732;
                      --v786[0];
                    }

                    while (v786[0]);
                  }

                  else
                  {
                    do
                    {
                      v677 = v796[0];
                      do
                      {
                        *v779 = *v780;
                        *__ba = -1;
                        __ba += v22;
                        v678 = &v780[v705];
                        if (v678 >= v66)
                        {
                          v679 = -v712;
                        }

                        else
                        {
                          v679 = 0;
                        }

                        v780 = &v678[v679];
                        v784 += v679;
                        v779 += v580;
                        --v677;
                      }

                      while (v677);
                      if (v736)
                      {
                        v680 = &v746[v59];
                        if (v680 >= v736)
                        {
                          v681 = -(v52 * v710);
                        }

                        else
                        {
                          v681 = 0;
                        }

                        v682 = &v748[v52 + v681];
                        if (v680 >= v736)
                        {
                          v683 = -(v59 * v710);
                        }

                        else
                        {
                          v683 = 0;
                        }

                        v66 += 2 * v683 + 2 * v59;
                        v746 = &v680[v683];
                        v748 += v52 + v681;
                        v780 = v746;
                        v784 = v682;
                      }

                      else
                      {
                        v780 += v59;
                        v784 += v52;
                      }

                      v779 += 2 * v735;
                      __ba += v732;
                      --v786[0];
                    }

                    while (v786[0]);
                  }

LABEL_1160:
                  v753 = v66;
                }

                else
                {
                  v668 = v786[0];
                  v669 = (v786[0] - 1) + 1;
                  do
                  {
                    v670 = v713;
                    do
                    {
                      *v779 = *v780;
                      v671 = &v780[v705];
                      if (v671 >= v66)
                      {
                        v672 = -v712;
                      }

                      else
                      {
                        v672 = 0;
                      }

                      v780 = &v671[v672];
                      v784 += v39 + v672;
                      v779 += 2 * v705;
                      --v670;
                    }

                    while (v670);
                    if (v736)
                    {
                      v673 = &v746[v59];
                      if (v673 >= v736)
                      {
                        v674 = -(v52 * v710);
                      }

                      else
                      {
                        v674 = 0;
                      }

                      v675 = &v748[v52 + v674];
                      if (v673 >= v736)
                      {
                        v676 = -(v59 * v710);
                      }

                      else
                      {
                        v676 = 0;
                      }

                      v66 += 2 * v676 + 2 * v59;
                      v746 = &v673[v676];
                      v748 += v52 + v674;
                      v780 = v746;
                      v784 = v675;
                    }

                    else
                    {
                      v780 += v59;
                      v784 += v52;
                    }

                    v779 += 2 * v735;
                    --v668;
                  }

                  while (v668);
                  v753 = v66;
                  v610 = &__ba[v732 * v669];
LABEL_1144:
                  __ba = v610;
                  v786[0] = 0;
                }

                goto LABEL_1054;
              }

              if (v381 != 1)
              {
                goto LABEL_960;
              }

              v753 = v66;
              v560 = v21;
              v561 = v59 - v713;
              v562 = 2 * v713 - 2;
              v563 = (v780 - v562);
              v564 = v735 - v713;
              v565 = &v779[-v562];
              if (v705 >= 0)
              {
                v563 = v780;
                v565 = v779;
                v561 = v59 + v713;
                v564 = v735 + v713;
              }

              v566 = v786[0];
              v567 = v786[0] - 1;
              v568 = &v563[(v561 * v567) & (v561 >> 63)];
              if (v561 >= 0)
              {
                v569 = v561;
              }

              else
              {
                v569 = -v561;
              }

              if (v564 >= 0)
              {
                LODWORD(v570) = v564;
              }

              else
              {
                v570 = -v564;
              }

              v571 = v569;
              CGBlt_copyBytes(2 * v713, v786[0], v568, &v565[2 * ((v564 * v567) & (v564 >> 63))], 2 * v569, 2 * v570);
              if (!v751)
              {
                goto LABEL_1167;
              }

              if (v775)
              {
                v572 = v733 - v713;
                v573 = &v784[-v713 + 1];
                v574 = v732 - v713;
                v575 = &__ba[-v713 + 1];
                if (v705 >= 0)
                {
                  v573 = v784;
                  v575 = __ba;
                  v572 = v733 + v713;
                  v574 = v732 + v713;
                }

                v576 = (v572 * v567) & (v572 >> 63);
                if (v572 >= 0)
                {
                  v577 = v572;
                }

                else
                {
                  v577 = -v572;
                }

                v578 = (v574 * v567) & (v574 >> 63);
                if (v574 >= 0)
                {
                  v579 = v574;
                }

                else
                {
                  v579 = -v574;
                }

                v784 = &v573[v576];
                __ba = &v575[v578];
                v732 = v579;
                CGBlt_copyBytes(v713, v566, &v573[v576], &v575[v578], v577, v579);
                v21 = v560;
                v52 = v577;
              }

              else
              {
                v684 = v732 - v713;
                v685 = &__ba[-v713 + 1];
                if (v705 >= 0)
                {
                  v685 = __ba;
                  v684 = v732 + v713;
                }

                v686 = (v684 * v567) & (v684 >> 63);
                if (v684 >= 0)
                {
                  v687 = v684;
                }

                else
                {
                  v687 = -v684;
                }

                __ba = &v685[v686];
                v732 = v687;
                CGBlt_fillBytes(v713, v566, -1, &v685[v686], v687);
LABEL_1167:
                v21 = v560;
                v52 = v733;
              }

              v59 = v571;
              goto LABEL_1054;
            case 2:
              v321 = v705;
              v694 = -(v52 * v710);
              v322 = 2 * v705;
              if (v22)
              {
                v323 = v22;
                v324 = v39;
                while (1)
                {
                  v325 = v796[0];
                  do
                  {
                    v326 = *v784;
                    if (v326 < 0xF8)
                    {
                      if (v326 < 8)
                      {
                        goto LABEL_571;
                      }

                      v328 = v66;
                      v329 = PDAplusDAM(*v780, v326, *v779, *__ba, v326 ^ 0xFF);
                      v322 = 2 * v705;
                      v321 = v705;
                      v66 = v328;
                      *v779 = v329;
                      v327 = HIBYTE(v329);
                    }

                    else
                    {
                      *v779 = *v780;
                      LOBYTE(v327) = *v784;
                    }

                    *__ba = v327;
LABEL_571:
                    __ba += v323;
                    v330 = &v780[v321];
                    if (v330 >= v66)
                    {
                      v331 = -v712;
                    }

                    else
                    {
                      v331 = 0;
                    }

                    v780 = &v330[v331];
                    v784 += v324 + v331;
                    v779 += v322;
                    --v325;
                  }

                  while (v325);
                  if (v736)
                  {
                    v52 = v733;
                    v332 = &v746[v59];
                    v333 = v694;
                    if (v332 < v736)
                    {
                      v333 = 0;
                    }

                    v334 = &v748[v733 + v333];
                    v335 = -(v59 * v710);
                    if (v332 < v736)
                    {
                      v335 = 0;
                    }

                    v66 += 2 * v335 + 2 * v59;
                    v746 = &v332[v335];
                    v748 += v733 + v333;
                    v780 = v746;
                    v784 = v334;
                  }

                  else
                  {
                    v52 = v733;
                    v780 += v59;
                    v784 += v733;
                  }

                  __ba += v732;
                  v779 += 2 * v735;
                  if (!--v786[0])
                  {
                    goto LABEL_1051;
                  }
                }
              }

              v611 = v39;
              v612 = v786[0];
              v691 = (v786[0] - 1) + 1;
LABEL_1014:
              v613 = v713;
              while (1)
              {
                v614 = *v784;
                if (v614 >= 0xF8)
                {
                  break;
                }

                if (v614 >= 8)
                {
                  v616 = v66;
                  v615 = PDplusDM(*v780, *v779, v614 ^ 0xFF);
                  v322 = 2 * v705;
                  v321 = v705;
                  v66 = v616;
                  goto LABEL_1019;
                }

LABEL_1020:
                v617 = &v780[v321];
                if (v617 >= v66)
                {
                  v618 = -v712;
                }

                else
                {
                  v618 = 0;
                }

                v780 = &v617[v618];
                v784 += v611 + v618;
                v779 += v322;
                if (!--v613)
                {
                  if (v736)
                  {
                    v52 = v733;
                    v619 = &v746[v59];
                    v620 = v694;
                    if (v619 < v736)
                    {
                      v620 = 0;
                    }

                    v621 = &v748[v733 + v620];
                    v622 = -(v59 * v710);
                    if (v619 < v736)
                    {
                      v622 = 0;
                    }

                    v66 += 2 * v622 + 2 * v59;
                    v746 = &v619[v622];
                    v748 += v733 + v620;
                    v780 = v746;
                    v784 = v621;
                  }

                  else
                  {
                    v52 = v733;
                    v780 += v59;
                    v784 += v733;
                  }

                  v779 += 2 * v735;
                  v786[0] = --v612;
                  if (!v612)
                  {
                    goto LABEL_1104;
                  }

                  goto LABEL_1014;
                }
              }

              v615 = *v780;
LABEL_1019:
              *v779 = v615;
              goto LABEL_1020;
            case 3:
              v349 = v705;
              v350 = v22;
              v690 = -(v52 * v710);
              v695 = -(v59 * v710);
              v351 = 2 * v705;
              if (v39)
              {
                v352 = v39;
                v741 = v22;
                do
                {
                  v353 = v796[0];
                  do
                  {
                    v354 = *__ba;
                    if (v354 > 7)
                    {
                      v356 = *v780;
                      if (v354 < 0xF8)
                      {
                        v357 = v349;
                        v358 = v66;
                        v359 = PDAM(v356, *v784, v354);
                        v351 = 2 * v705;
                        v66 = v358;
                        v349 = v357;
                        v350 = v741;
                        *v779 = v359;
                        v355 = HIBYTE(v359);
                      }

                      else
                      {
                        *v779 = v356;
                        LOBYTE(v355) = *v784;
                      }
                    }

                    else
                    {
                      LOBYTE(v355) = 0;
                      *v779 = 0;
                    }

                    *__ba = v355;
                    __ba += v350;
                    v360 = &v780[v349];
                    if (v360 >= v66)
                    {
                      v361 = -v712;
                    }

                    else
                    {
                      v361 = 0;
                    }

                    v780 = &v360[v361];
                    v784 += v352 + v361;
                    v779 += v351;
                    --v353;
                  }

                  while (v353);
                  if (v736)
                  {
                    v52 = v733;
                    v362 = &v746[v734];
                    v363 = v690;
                    if (v362 < v736)
                    {
                      v363 = 0;
                    }

                    v364 = &v748[v733 + v363];
                    v365 = v695;
                    if (v362 < v736)
                    {
                      v365 = 0;
                    }

                    v66 += 2 * v365 + 2 * v734;
                    v746 = &v362[v365];
                    v748 += v733 + v363;
                    v780 = v746;
                    v784 = v364;
                  }

                  else
                  {
                    v52 = v733;
                    v780 += v734;
                    v784 += v733;
                  }

                  __ba += v732;
                  v779 += 2 * v735;
                  --v786[0];
                }

                while (v786[0]);
              }

              else
              {
                v623 = v786[0];
                do
                {
                  v700 = v623;
                  v624 = v713;
                  do
                  {
                    v625 = *__ba;
                    if (v625 >= 8)
                    {
                      v626 = *v780;
                      if (v625 <= 0xF7)
                      {
                        v627 = v66;
                        LOWORD(v626) = PDM(v626, v625);
                        v351 = 2 * v705;
                        v66 = v627;
                      }
                    }

                    else
                    {
                      LOWORD(v626) = 0;
                    }

                    *v779 = v626;
                    __ba += v350;
                    v628 = &v780[v705];
                    if (v628 >= v66)
                    {
                      v629 = -v712;
                    }

                    else
                    {
                      v629 = 0;
                    }

                    v780 = &v628[v629];
                    v784 += v629;
                    v779 += v351;
                    --v624;
                  }

                  while (v624);
                  if (v736)
                  {
                    v52 = v733;
                    v630 = &v746[v59];
                    v631 = v690;
                    if (v630 < v736)
                    {
                      v631 = 0;
                    }

                    v632 = &v748[v733 + v631];
                    v633 = -(v59 * v710);
                    if (v630 < v736)
                    {
                      v633 = 0;
                    }

                    v66 += 2 * v633 + 2 * v59;
                    v746 = &v630[v633];
                    v748 += v733 + v631;
                    v780 = v746;
                    v784 = v632;
                  }

                  else
                  {
                    v52 = v733;
                    v780 += v59;
                    v784 += v733;
                  }

                  __ba += v732;
                  v779 += 2 * v735;
                  v623 = v700 - 1;
                  v786[0] = v700 - 1;
                }

                while (v700 != 1);
              }

              goto LABEL_1051;
            case 4:
              v254 = v22;
              v255 = v39;
              v718 = -(v52 * v710);
              do
              {
                v256 = v796[0];
                v757 = v66;
                do
                {
                  v257 = *__ba;
                  if (v257 < 0xF8)
                  {
                    if (v257 > 7)
                    {
                      if (v39)
                      {
                        v259 = *v784;
                      }

                      else
                      {
                        v259 = -1;
                      }

                      v260 = PDAM(*v780, v259, ~v257);
                      *v779 = v260;
                      v258 = HIBYTE(v260);
                      v66 = v757;
                      LODWORD(v39) = v775;
                    }

                    else if (v39)
                    {
                      LOBYTE(v258) = *v784;
                    }

                    else
                    {
                      LOBYTE(v258) = -1;
                    }
                  }

                  else
                  {
                    LOBYTE(v258) = 0;
                    *v779 = 0;
                  }

                  *__ba = v258;
                  __ba += v254;
                  v261 = &v780[v705];
                  if (v261 >= v66)
                  {
                    v262 = -v712;
                  }

                  else
                  {
                    v262 = 0;
                  }

                  v780 = &v261[v262];
                  v784 += v255 + v262;
                  v779 += 2 * v705;
                  --v256;
                }

                while (v256);
                if (v736)
                {
                  v52 = v733;
                  v263 = &v746[v59];
                  v264 = v718;
                  if (v263 < v736)
                  {
                    v264 = 0;
                  }

                  v265 = &v748[v733 + v264];
                  v266 = -(v59 * v710);
                  if (v263 < v736)
                  {
                    v266 = 0;
                  }

                  v66 += 2 * v266 + 2 * v59;
                  v746 = &v263[v266];
                  v748 += v733 + v264;
                  v780 = v746;
                  v784 = v265;
                }

                else
                {
                  v52 = v733;
                  v780 += v59;
                  v784 += v733;
                }

                __ba += v732;
                v779 += 2 * v735;
                --v786[0];
              }

              while (v786[0]);
              goto LABEL_1051;
            case 5:
              v410 = v22;
              v39 = v39;
              v764 = -(v59 * v710);
              v742 = -(v52 * v710);
              v411 = 2 * v705;
              v412 = -v712;
              do
              {
                v413 = v796[0];
                do
                {
                  v414 = v66;
                  v415 = v39;
                  v416 = v411;
                  v417 = v412;
                  v418 = PDAMplusDAM(*v780, *v784, *__ba, *v779, *__ba, *v784 ^ 0xFFu);
                  v412 = v417;
                  v411 = v416;
                  v39 = v415;
                  v66 = v414;
                  *v779 = v418;
                  *__ba = BYTE3(v418);
                  v419 = &__ba[v410];
                  v420 = &v780[v705];
                  if (v420 >= v414)
                  {
                    v421 = v417;
                  }

                  else
                  {
                    v421 = 0;
                  }

                  v780 = &v420[v421];
                  v784 += v415 + v421;
                  __ba += v410;
                  v779 += v416;
                  --v413;
                }

                while (v413);
                if (v736)
                {
                  v59 = v734;
                  v422 = &v746[v734];
                  v423 = v742;
                  if (v422 < v736)
                  {
                    v423 = 0;
                  }

                  v424 = &v748[v733 + v423];
                  v425 = v764;
                  if (v422 < v736)
                  {
                    v425 = 0;
                  }

                  v66 = v414 + 2 * v425 + 2 * v734;
                  v746 = &v422[v425];
                  v748 += v733 + v423;
                  v780 = v746;
                  v784 = v424;
                }

                else
                {
                  v59 = v734;
                  v780 += v734;
                  v784 += v733;
                }

                __ba = &v419[v732];
                v779 += 2 * v735;
                --v786[0];
              }

              while (v786[0]);
              goto LABEL_826;
            case 6:
              v452 = v22;
              v453 = v39;
              v726 = -(v52 * v710);
              while (1)
              {
                v454 = v796[0];
                v767 = v66;
                do
                {
                  v455 = *__ba;
                  if (v455 > 7)
                  {
                    if (v455 > 0xF7)
                    {
                      goto LABEL_776;
                    }

                    if (v39)
                    {
                      v457 = *v784;
                    }

                    else
                    {
                      v457 = -1;
                    }

                    v458 = PDAplusDAM(*v779, v455, *v780, v457, ~v455);
                    *v779 = v458;
                    v456 = HIBYTE(v458);
                    v66 = v767;
                    LODWORD(v39) = v775;
                  }

                  else
                  {
                    *v779 = *v780;
                    if (v39)
                    {
                      LOBYTE(v456) = *v784;
                    }

                    else
                    {
                      LOBYTE(v456) = -1;
                    }
                  }

                  *__ba = v456;
LABEL_776:
                  __ba += v452;
                  v459 = &v780[v705];
                  if (v459 >= v66)
                  {
                    v460 = -v712;
                  }

                  else
                  {
                    v460 = 0;
                  }

                  v780 = &v459[v460];
                  v784 += v453 + v460;
                  v779 += 2 * v705;
                  --v454;
                }

                while (v454);
                if (v736)
                {
                  v52 = v733;
                  v461 = &v746[v59];
                  v462 = v726;
                  if (v461 < v736)
                  {
                    v462 = 0;
                  }

                  v463 = &v748[v733 + v462];
                  v464 = -(v59 * v710);
                  if (v461 < v736)
                  {
                    v464 = 0;
                  }

                  v66 += 2 * v464 + 2 * v59;
                  v746 = &v461[v464];
                  v748 += v733 + v462;
                  v780 = v746;
                  v784 = v463;
                }

                else
                {
                  v52 = v733;
                  v780 += v59;
                  v784 += v733;
                }

                __ba += v732;
                v779 += 2 * v735;
                if (!--v786[0])
                {
                  goto LABEL_1051;
                }
              }

            case 7:
              v366 = v705;
              v696 = -(v52 * v710);
              if (v22)
              {
                v367 = v22;
                v368 = v39;
                v369 = -v712;
                while (1)
                {
                  v370 = v796[0];
                  do
                  {
                    v371 = *v784;
                    if (v371 > 7)
                    {
                      if (v371 > 0xF7)
                      {
                        goto LABEL_636;
                      }

                      v373 = v66;
                      v374 = PDAM(*v779, *__ba, v371);
                      v369 = -v712;
                      v366 = v705;
                      v66 = v373;
                      *v779 = v374;
                      v372 = HIBYTE(v374);
                    }

                    else
                    {
                      LOBYTE(v372) = 0;
                      *v779 = 0;
                    }

                    *__ba = v372;
LABEL_636:
                    __ba += v367;
                    v375 = &v780[v366];
                    if (v375 >= v66)
                    {
                      v376 = v369;
                    }

                    else
                    {
                      v376 = 0;
                    }

                    v780 = &v375[v376];
                    v784 += v368 + v376;
                    v779 += 2 * v705;
                    --v370;
                  }

                  while (v370);
                  if (v736)
                  {
                    v52 = v733;
                    v377 = &v746[v59];
                    v378 = v696;
                    if (v377 < v736)
                    {
                      v378 = 0;
                    }

                    v379 = &v748[v733 + v378];
                    v380 = -(v59 * v710);
                    if (v377 < v736)
                    {
                      v380 = 0;
                    }

                    v66 += 2 * v380 + 2 * v59;
                    v746 = &v377[v380];
                    v748 += v733 + v378;
                    v780 = v746;
                    v784 = v379;
                  }

                  else
                  {
                    v52 = v733;
                    v780 += v59;
                    v784 += v733;
                  }

                  __ba += v732;
                  v779 += 2 * v735;
                  if (!--v786[0])
                  {
                    goto LABEL_1051;
                  }
                }
              }

              v644 = v39;
              v645 = v786[0];
              v691 = (v786[0] - 1) + 1;
LABEL_1086:
              v744 = v645;
              v646 = v713;
              while (1)
              {
                v647 = *v784;
                if (v647 < 8)
                {
                  break;
                }

                if (v647 <= 0xF7)
                {
                  v649 = v66;
                  v648 = PDM(*v779, v647);
                  v366 = v705;
                  v66 = v649;
                  goto LABEL_1091;
                }

LABEL_1092:
                v650 = &v780[v366];
                if (v650 >= v66)
                {
                  v651 = -v712;
                }

                else
                {
                  v651 = 0;
                }

                v780 = &v650[v651];
                v784 += v644 + v651;
                v779 += 2 * v705;
                if (!--v646)
                {
                  if (v736)
                  {
                    v52 = v733;
                    v652 = &v746[v59];
                    v653 = v696;
                    if (v652 < v736)
                    {
                      v653 = 0;
                    }

                    v654 = &v748[v733 + v653];
                    v655 = -(v59 * v710);
                    if (v652 < v736)
                    {
                      v655 = 0;
                    }

                    v66 += 2 * v655 + 2 * v59;
                    v746 = &v652[v655];
                    v748 += v733 + v653;
                    v780 = v746;
                    v784 = v654;
                  }

                  else
                  {
                    v52 = v733;
                    v780 += v59;
                    v784 += v733;
                  }

                  v779 += 2 * v735;
                  v645 = v744 - 1;
                  v786[0] = v744 - 1;
                  if (v744 == 1)
                  {
LABEL_1104:
                    v753 = v66;
                    __ba += v732 * v691;
                    goto LABEL_1052;
                  }

                  goto LABEL_1086;
                }
              }

              v648 = 0;
LABEL_1091:
              *v779 = v648;
              goto LABEL_1092;
            case 8:
              v492 = v59;
              v493 = v705;
              v697 = -(v52 * v710);
              v699 = -(v492 * v710);
              if (!v22)
              {
                v656 = v39;
                v657 = v786[0];
                v692 = (v786[0] - 1) + 1;
                while (1)
                {
                  v745 = v657;
                  v658 = v713;
                  do
                  {
                    v659 = *v784;
                    if (v659 <= 0xF7)
                    {
                      if (v659 < 8)
                      {
                        goto LABEL_1112;
                      }

                      v661 = v66;
                      v660 = PDM(*v779, ~v659);
                      v66 = v661;
                    }

                    else
                    {
                      v660 = 0;
                    }

                    *v779 = v660;
LABEL_1112:
                    v662 = &v780[v705];
                    if (v662 >= v66)
                    {
                      v663 = -v712;
                    }

                    else
                    {
                      v663 = 0;
                    }

                    v780 = &v662[v663];
                    v784 += v656 + v663;
                    v779 += 2 * v705;
                    --v658;
                  }

                  while (v658);
                  if (v736)
                  {
                    v664 = &v746[v734];
                    v665 = -(v52 * v710);
                    if (v664 < v736)
                    {
                      v665 = 0;
                    }

                    v666 = &v748[v52 + v665];
                    v667 = v699;
                    if (v664 < v736)
                    {
                      v667 = 0;
                    }

                    v66 += 2 * v667 + 2 * v734;
                    v746 = &v664[v667];
                    v748 += v52 + v665;
                    v780 = v746;
                    v784 = v666;
                  }

                  else
                  {
                    v780 += v734;
                    v784 += v52;
                  }

                  v779 += 2 * v735;
                  v657 = v745 - 1;
                  v786[0] = v745 - 1;
                  if (v745 == 1)
                  {
                    v753 = v66;
                    __ba += v732 * v692;
                    v8 = v706;
                    goto LABEL_1125;
                  }
                }
              }

              v494 = v22;
              v495 = v39;
              do
              {
                v496 = v796[0];
                do
                {
                  v497 = *v784;
                  if (v497 < 0xF8)
                  {
                    if (v497 < 8)
                    {
                      goto LABEL_835;
                    }

                    v499 = v66;
                    v500 = PDAM(*v779, *__ba, ~v497);
                    v66 = v499;
                    v493 = v705;
                    *v779 = v500;
                    v498 = HIBYTE(v500);
                  }

                  else
                  {
                    LOBYTE(v498) = 0;
                    *v779 = 0;
                  }

                  *__ba = v498;
LABEL_835:
                  __ba += v494;
                  v501 = &v780[v493];
                  if (v501 >= v66)
                  {
                    v502 = -v712;
                  }

                  else
                  {
                    v502 = 0;
                  }

                  v780 = &v501[v502];
                  v784 += v495 + v502;
                  v779 += 2 * v705;
                  --v496;
                }

                while (v496);
                if (v736)
                {
                  v52 = v733;
                  v503 = &v746[v734];
                  v504 = v697;
                  if (v503 < v736)
                  {
                    v504 = 0;
                  }

                  v505 = &v748[v733 + v504];
                  v506 = v699;
                  if (v503 < v736)
                  {
                    v506 = 0;
                  }

                  v66 += 2 * v506 + 2 * v734;
                  v746 = &v503[v506];
                  v748 += v733 + v504;
                  v780 = v746;
                  v784 = v505;
                }

                else
                {
                  v52 = v733;
                  v780 += v734;
                  v784 += v733;
                }

                __ba += v732;
                v779 += 2 * v735;
                --v786[0];
              }

              while (v786[0]);
LABEL_1051:
              v753 = v66;
LABEL_1052:
              v8 = v706;
              v6 = v707;
              v10 = v704;
              v21 = v708;
LABEL_1053:
              v59 = v734;
LABEL_1054:
              v68 = v709;
              if (!v709)
              {
                return 1;
              }

LABEL_1055:
              v785 = 0;
LABEL_1056:
              if (!shape_enum_clip_next(v68, &v785 + 1, &v785, v796, v786))
              {
                v60 = v68;
                goto LABEL_1083;
              }

              v709 = v68;
              if (v736)
              {
                v779 = (v701 + 2 * v21 * v785 + 2 * SHIDWORD(v785));
                v18 = v711;
                v69 = (v785 + *(v10 + 60)) % v710;
                v65 = v796[0];
                v70 = (HIDWORD(v785) + *(v10 + 56)) % v712;
                v634 = &v711[v59 * v69];
                v635 = &v634[v70];
                v66 = &v634[v712];
                v22 = v751;
                v636 = __ba;
                if (v751)
                {
                  v636 = &v703[v702 * v785 + SHIDWORD(v785)];
                }

                __ba = v636;
                v637 = v732;
                if (v751)
                {
                  v637 = v702 - v796[0];
                }

                v732 = v637;
                if (v775)
                {
                  LODWORD(v39) = v775;
                }

                else
                {
                  LODWORD(v39) = 0;
                }

                v638 = v748;
                if (v775)
                {
                  v638 = &v6[v52 * v69 + v70];
                }

                v746 = v635;
                v748 = v638;
                v639 = v784;
                if (v775)
                {
                  v639 = &v6[v52 * v69 + v70];
                }

                v780 = v635;
                v784 = v639;
                v713 = v796[0];
LABEL_357:
                v688 = v70;
                v689 = v69;
              }

              else
              {
                v640 = SHIDWORD(v785) * v705;
                v713 = v796[0];
                v779 = (v701 + 2 * v21 * v785 + 2 * v640);
                v65 = v796[0] * v705;
                v18 = v711;
                v780 = &v711[v785 * v712 + v640];
                v59 = v712 - v796[0] * v705;
                v22 = v751;
                v641 = __ba;
                if (v751)
                {
                  v641 = &v703[v702 * v785 + SHIDWORD(v785) * v705];
                }

                __ba = v641;
                v642 = v732;
                if (v751)
                {
                  v642 = v702 - v796[0] * v705;
                }

                v732 = v642;
                if (v775)
                {
                  LODWORD(v39) = v775;
                }

                else
                {
                  LODWORD(v39) = 0;
                }

                v736 = 0;
                v643 = v784;
                if (v775)
                {
                  v643 = &v6[v785 * v710 + v640];
                }

                v784 = v643;
                if (v775)
                {
                  v52 = v710 - v65;
                }

                v66 = v753;
              }

              continue;
            case 9:
              v279 = v22;
              v39 = v39;
              v758 = -(v59 * v710);
              v740 = -(v52 * v710);
              v280 = 2 * v705;
              v281 = -v712;
              do
              {
                v282 = v796[0];
                do
                {
                  v283 = v66;
                  v284 = v39;
                  v285 = v280;
                  v286 = v281;
                  v287 = PDAMplusDAM(*v780, *v784, *__ba ^ 0xFFu, *v779, *__ba, *v784);
                  v281 = v286;
                  v280 = v285;
                  v39 = v284;
                  v66 = v283;
                  *v779 = v287;
                  *__ba = BYTE3(v287);
                  v288 = &__ba[v279];
                  v289 = &v780[v705];
                  if (v289 >= v283)
                  {
                    v290 = v286;
                  }

                  else
                  {
                    v290 = 0;
                  }

                  v780 = &v289[v290];
                  v784 += v284 + v290;
                  __ba += v279;
                  v779 += v285;
                  --v282;
                }

                while (v282);
                if (v736)
                {
                  v59 = v734;
                  v291 = &v746[v734];
                  v292 = v740;
                  if (v291 < v736)
                  {
                    v292 = 0;
                  }

                  v293 = &v748[v733 + v292];
                  v294 = v758;
                  if (v291 < v736)
                  {
                    v294 = 0;
                  }

                  v66 = v283 + 2 * v294 + 2 * v734;
                  v746 = &v291[v294];
                  v748 += v733 + v292;
                  v780 = v746;
                  v784 = v293;
                }

                else
                {
                  v59 = v734;
                  v780 += v734;
                  v784 += v733;
                }

                __ba = &v288[v732];
                v779 += 2 * v735;
                --v786[0];
              }

              while (v786[0]);
              goto LABEL_826;
            case 10:
              v478 = v22;
              v39 = v39;
              v769 = -(v59 * v710);
              v743 = -(v52 * v710);
              v479 = 2 * v705;
              do
              {
                v480 = v796[0];
                do
                {
                  v481 = v66;
                  v482 = v39;
                  v483 = v479;
                  v484 = PDAMplusDAM(*v780, *v784, *__ba ^ 0xFFu, *v779, *__ba, *v784 ^ 0xFFu);
                  v479 = v483;
                  v39 = v482;
                  v66 = v481;
                  *v779 = v484;
                  *__ba = BYTE3(v484);
                  v485 = &__ba[v478];
                  v486 = &v780[v705];
                  if (v486 >= v481)
                  {
                    v487 = -v712;
                  }

                  else
                  {
                    v487 = 0;
                  }

                  v780 = &v486[v487];
                  v784 += v482 + v487;
                  __ba += v478;
                  v779 += v483;
                  --v480;
                }

                while (v480);
                if (v736)
                {
                  v59 = v734;
                  v488 = &v746[v734];
                  v489 = v743;
                  if (v488 < v736)
                  {
                    v489 = 0;
                  }

                  v490 = &v748[v733 + v489];
                  v491 = v769;
                  if (v488 < v736)
                  {
                    v491 = 0;
                  }

                  v66 = v481 + 2 * v491 + 2 * v734;
                  v746 = &v488[v491];
                  v748 += v733 + v489;
                  v780 = v746;
                  v784 = v490;
                }

                else
                {
                  v59 = v734;
                  v780 += v734;
                  v784 += v733;
                }

                __ba = &v485[v732];
                v779 += 2 * v735;
                --v786[0];
              }

              while (v786[0]);
LABEL_826:
              v753 = v66;
              v8 = v706;
              v10 = v704;
              v21 = v708;
              v52 = v733;
              goto LABEL_1054;
            case 11:
              v693 = -(v52 * v710);
              v738 = 2 * v705;
              if (v22)
              {
                v241 = v22;
                v242 = v39;
                do
                {
                  v243 = v796[0];
                  v244 = v66;
                  do
                  {
                    if (v39)
                    {
                      v245 = *v784;
                    }

                    else
                    {
                      v245 = 255;
                    }

                    v246 = PDAplusdDA(*v779, *__ba, *v780, v245);
                    *v779 = v246;
                    *__ba = BYTE3(v246);
                    v247 = &__ba[v241];
                    LODWORD(v39) = v775;
                    v248 = &v780[v705];
                    if (v248 >= v244)
                    {
                      v249 = -v712;
                    }

                    else
                    {
                      v249 = 0;
                    }

                    v780 = &v248[v249];
                    v784 += v242 + v249;
                    __ba += v241;
                    v779 += v738;
                    --v243;
                  }

                  while (v243);
                  v66 = v244;
                  if (v736)
                  {
                    v52 = v733;
                    v250 = &v746[v59];
                    v251 = v693;
                    if (v250 < v736)
                    {
                      v251 = 0;
                    }

                    v252 = &v748[v733 + v251];
                    v253 = -(v59 * v710);
                    if (v250 < v736)
                    {
                      v253 = 0;
                    }

                    v66 = v244 + 2 * v253 + 2 * v59;
                    v746 = &v250[v253];
                    v748 += v733 + v251;
                    v780 = v746;
                    v784 = v252;
                  }

                  else
                  {
                    v52 = v733;
                    v780 += v59;
                    v784 += v733;
                  }

                  __ba = &v247[v732];
                  v779 += 2 * v735;
                  --v786[0];
                }

                while (v786[0]);
                goto LABEL_1051;
              }

              v588 = v39;
              v589 = v786[0];
              v590 = (v786[0] - 1) + 1;
              do
              {
                v591 = v713;
                v592 = v66;
                do
                {
                  if (v39)
                  {
                    v593 = *v784;
                  }

                  else
                  {
                    v593 = 255;
                  }

                  *v779 = PDplusdDA(*v779, *v780, v593);
                  LODWORD(v39) = v775;
                  v594 = &v780[v705];
                  if (v594 >= v592)
                  {
                    v595 = -v712;
                  }

                  else
                  {
                    v595 = 0;
                  }

                  v780 = &v594[v595];
                  v784 += v588 + v595;
                  v779 += v738;
                  --v591;
                }

                while (v591);
                v66 = v592;
                if (v736)
                {
                  v596 = &v746[v59];
                  v597 = v693;
                  if (v596 < v736)
                  {
                    v597 = 0;
                  }

                  v598 = &v748[v733 + v597];
                  v599 = -(v59 * v710);
                  if (v596 < v736)
                  {
                    v599 = 0;
                  }

                  v66 = v592 + 2 * v599 + 2 * v59;
                  v746 = &v596[v599];
                  v748 += v733 + v597;
                  v780 = v746;
                  v784 = v598;
                }

                else
                {
                  v780 += v59;
                  v784 += v733;
                }

                v8 = v706;
                v779 += 2 * v735;
                v786[0] = --v589;
              }

              while (v589);
              v753 = v66;
              __ba += v732 * v590;
LABEL_1125:
              v10 = v704;
              v6 = v707;
LABEL_1126:
              v21 = v708;
              v52 = v733;
              goto LABEL_1053;
            case 12:
              if (!v22)
              {
                v600 = v786[0];
                v601 = (v786[0] - 1) + 1;
                do
                {
                  v602 = v713;
                  do
                  {
                    v603 = ((*v780 | (*v780 << 15)) & 0x1F07C1F) + ((*v779 | (*v779 << 15)) & 0x1F07C1F);
                    *v779 = (((15 * ((v603 >> 5) & 0x100401)) | v603 | (30 * ((v603 >> 5) & 0x100401))) >> 15) & 0x3E0 | ((15 * ((v603 >> 5) & 0x401)) | v603 | (30 * ((v603 >> 5) & 0x401))) & 0x7C1F;
                    v604 = &v780[v705];
                    if (v604 >= v66)
                    {
                      v605 = -v712;
                    }

                    else
                    {
                      v605 = 0;
                    }

                    v780 = &v604[v605];
                    v784 += v39 + v605;
                    v779 += 2 * v705;
                    --v602;
                  }

                  while (v602);
                  if (v736)
                  {
                    v606 = &v746[v59];
                    if (v606 >= v736)
                    {
                      v607 = -(v52 * v710);
                    }

                    else
                    {
                      v607 = 0;
                    }

                    v608 = &v748[v52 + v607];
                    if (v606 >= v736)
                    {
                      v609 = -(v59 * v710);
                    }

                    else
                    {
                      v609 = 0;
                    }

                    v66 += 2 * v609 + 2 * v59;
                    v746 = &v606[v609];
                    v748 += v52 + v607;
                    v780 = v746;
                    v784 = v608;
                  }

                  else
                  {
                    v780 += v59;
                    v784 += v52;
                  }

                  v779 += 2 * v735;
                  --v600;
                }

                while (v600);
                v753 = v66;
                v610 = &__ba[v732 * v601];
                goto LABEL_1144;
              }

              v739 = v22;
              v267 = v39;
              v698 = -(v52 * v710);
              do
              {
                v268 = v796[0];
                v269 = v66;
                do
                {
                  if (v39)
                  {
                    v270 = *v784;
                  }

                  else
                  {
                    v270 = 255;
                  }

                  v271 = PDApluslDA(*v779, *__ba, *v780, v270);
                  *v779 = v271;
                  *__ba = BYTE3(v271);
                  v272 = &__ba[v739];
                  LODWORD(v39) = v775;
                  v273 = &v780[v705];
                  if (v273 >= v269)
                  {
                    v274 = -v712;
                  }

                  else
                  {
                    v274 = 0;
                  }

                  v780 = &v273[v274];
                  v784 += v267 + v274;
                  __ba += v739;
                  v779 += 2 * v705;
                  --v268;
                }

                while (v268);
                v66 = v269;
                if (v736)
                {
                  v52 = v733;
                  v275 = &v746[v59];
                  v276 = v698;
                  if (v275 < v736)
                  {
                    v276 = 0;
                  }

                  v277 = &v748[v733 + v276];
                  v278 = -(v59 * v710);
                  if (v275 < v736)
                  {
                    v278 = 0;
                  }

                  v66 = v269 + 2 * v278 + 2 * v59;
                  v746 = &v275[v278];
                  v748 += v733 + v276;
                  v780 = v746;
                  v784 = v277;
                }

                else
                {
                  v52 = v733;
                  v780 += v59;
                  v784 += v733;
                }

                __ba = &v272[v732];
                v779 += 2 * v735;
                --v786[0];
              }

              while (v786[0]);
              goto LABEL_1051;
            case 13:
              v439 = v22;
              v440 = v39;
              v725 = -(v52 * v710);
              while (1)
              {
                v441 = v796[0];
                v766 = v66;
                do
                {
                  if (v39)
                  {
                    v442 = *v784;
                    if (v442 < 8)
                    {
                      goto LABEL_751;
                    }

                    if (v22)
                    {
                      goto LABEL_746;
                    }
                  }

                  else
                  {
                    v442 = 255;
                    if (v22)
                    {
LABEL_746:
                      v443 = *__ba;
                      if (v443 > 7)
                      {
                        v445 = PDAmultiplyPDA(*v779, v443, *v780, v442);
                        v66 = v766;
                        LODWORD(v39) = v775;
                        LODWORD(v22) = v751;
                        *v779 = v445;
                        *__ba = HIBYTE(v445);
                      }

                      else
                      {
                        *v779 = *v780;
                        *__ba = v442;
                      }

                      goto LABEL_751;
                    }
                  }

                  v444 = PDAmultiplyPDA(*v779, 0xFFu, *v780, v442);
                  v66 = v766;
                  LODWORD(v39) = v775;
                  LODWORD(v22) = v751;
                  *v779 = v444;
LABEL_751:
                  __ba += v439;
                  v446 = &v780[v705];
                  if (v446 >= v66)
                  {
                    v447 = -v712;
                  }

                  else
                  {
                    v447 = 0;
                  }

                  v780 = &v446[v447];
                  v784 += v440 + v447;
                  v779 += 2 * v705;
                  --v441;
                }

                while (v441);
                if (v736)
                {
                  v52 = v733;
                  v448 = &v746[v59];
                  v449 = v725;
                  if (v448 < v736)
                  {
                    v449 = 0;
                  }

                  v450 = &v748[v733 + v449];
                  v451 = -(v59 * v710);
                  if (v448 < v736)
                  {
                    v451 = 0;
                  }

                  v66 += 2 * v451 + 2 * v59;
                  v746 = &v448[v451];
                  v748 += v733 + v449;
                  v780 = v746;
                  v784 = v450;
                }

                else
                {
                  v52 = v733;
                  v780 += v59;
                  v784 += v733;
                }

                __ba += v732;
                v779 += 2 * v735;
                if (!--v786[0])
                {
                  goto LABEL_1051;
                }
              }

            case 14:
              v228 = v22;
              v229 = v39;
              v717 = -(v52 * v710);
              while (1)
              {
                v230 = v796[0];
                v756 = v66;
                do
                {
                  if (v39)
                  {
                    v231 = *v784;
                    if (v231 < 8)
                    {
                      goto LABEL_426;
                    }

                    if (v22)
                    {
                      goto LABEL_421;
                    }
                  }

                  else
                  {
                    v231 = 255;
                    if (v22)
                    {
LABEL_421:
                      v232 = *__ba;
                      if (v232 > 7)
                      {
                        v234 = PDAscreenPDA(*v779, v232, *v780, v231);
                        v66 = v756;
                        LODWORD(v39) = v775;
                        LODWORD(v22) = v751;
                        *v779 = v234;
                        *__ba = HIBYTE(v234);
                      }

                      else
                      {
                        *v779 = *v780;
                        *__ba = v231;
                      }

                      goto LABEL_426;
                    }
                  }

                  v233 = PDAscreenPDA(*v779, 0xFFu, *v780, v231);
                  v66 = v756;
                  LODWORD(v39) = v775;
                  LODWORD(v22) = v751;
                  *v779 = v233;
LABEL_426:
                  __ba += v228;
                  v235 = &v780[v705];
                  if (v235 >= v66)
                  {
                    v236 = -v712;
                  }

                  else
                  {
                    v236 = 0;
                  }

                  v780 = &v235[v236];
                  v784 += v229 + v236;
                  v779 += 2 * v705;
                  --v230;
                }

                while (v230);
                if (v736)
                {
                  v52 = v733;
                  v237 = &v746[v59];
                  v238 = v717;
                  if (v237 < v736)
                  {
                    v238 = 0;
                  }

                  v239 = &v748[v733 + v238];
                  v240 = -(v59 * v710);
                  if (v237 < v736)
                  {
                    v240 = 0;
                  }

                  v66 += 2 * v240 + 2 * v59;
                  v746 = &v237[v240];
                  v748 += v733 + v238;
                  v780 = v746;
                  v784 = v239;
                }

                else
                {
                  v52 = v733;
                  v780 += v59;
                  v784 += v733;
                }

                __ba += v732;
                v779 += 2 * v735;
                if (!--v786[0])
                {
                  goto LABEL_1051;
                }
              }

            case 15:
              v336 = v22;
              v337 = v39;
              v721 = -(v52 * v710);
              while (1)
              {
                v338 = v796[0];
                v761 = v66;
                do
                {
                  if (v39)
                  {
                    v339 = *v784;
                    if (v339 < 8)
                    {
                      goto LABEL_594;
                    }

                    if (v22)
                    {
                      goto LABEL_589;
                    }
                  }

                  else
                  {
                    v339 = 255;
                    if (v22)
                    {
LABEL_589:
                      v340 = *__ba;
                      if (v340 > 7)
                      {
                        v342 = PDAoverlayPDA(*v779, v340, *v780, v339);
                        v66 = v761;
                        LODWORD(v39) = v775;
                        LODWORD(v22) = v751;
                        *v779 = v342;
                        *__ba = HIBYTE(v342);
                      }

                      else
                      {
                        *v779 = *v780;
                        *__ba = v339;
                      }

                      goto LABEL_594;
                    }
                  }

                  v341 = PDAoverlayPDA(*v779, 0xFFu, *v780, v339);
                  v66 = v761;
                  LODWORD(v39) = v775;
                  LODWORD(v22) = v751;
                  *v779 = v341;
LABEL_594:
                  __ba += v336;
                  v343 = &v780[v705];
                  if (v343 >= v66)
                  {
                    v344 = -v712;
                  }

                  else
                  {
                    v344 = 0;
                  }

                  v780 = &v343[v344];
                  v784 += v337 + v344;
                  v779 += 2 * v705;
                  --v338;
                }

                while (v338);
                if (v736)
                {
                  v52 = v733;
                  v345 = &v746[v59];
                  v346 = v721;
                  if (v345 < v736)
                  {
                    v346 = 0;
                  }

                  v347 = &v748[v733 + v346];
                  v348 = -(v59 * v710);
                  if (v345 < v736)
                  {
                    v348 = 0;
                  }

                  v66 += 2 * v348 + 2 * v59;
                  v746 = &v345[v348];
                  v748 += v733 + v346;
                  v780 = v746;
                  v784 = v347;
                }

                else
                {
                  v52 = v733;
                  v780 += v59;
                  v784 += v733;
                }

                __ba += v732;
                v779 += 2 * v735;
                if (!--v786[0])
                {
                  goto LABEL_1051;
                }
              }

            case 16:
              v215 = v22;
              v216 = v39;
              v716 = -(v52 * v710);
              while (1)
              {
                v217 = v796[0];
                v755 = v66;
                do
                {
                  if (v39)
                  {
                    v218 = *v784;
                    if (v218 < 8)
                    {
                      goto LABEL_403;
                    }

                    if (v22)
                    {
                      goto LABEL_398;
                    }
                  }

                  else
                  {
                    v218 = 255;
                    if (v22)
                    {
LABEL_398:
                      v219 = *__ba;
                      if (v219 > 7)
                      {
                        v221 = PDAdarkenPDA(*v779, v219, *v780, v218);
                        v66 = v755;
                        LODWORD(v39) = v775;
                        LODWORD(v22) = v751;
                        *v779 = v221;
                        *__ba = HIBYTE(v221);
                      }

                      else
                      {
                        *v779 = *v780;
                        *__ba = v218;
                      }

                      goto LABEL_403;
                    }
                  }

                  v220 = PDAdarkenPDA(*v779, 0xFFu, *v780, v218);
                  v66 = v755;
                  LODWORD(v39) = v775;
                  LODWORD(v22) = v751;
                  *v779 = v220;
LABEL_403:
                  __ba += v215;
                  v222 = &v780[v705];
                  if (v222 >= v66)
                  {
                    v223 = -v712;
                  }

                  else
                  {
                    v223 = 0;
                  }

                  v780 = &v222[v223];
                  v784 += v216 + v223;
                  v779 += 2 * v705;
                  --v217;
                }

                while (v217);
                if (v736)
                {
                  v52 = v733;
                  v224 = &v746[v59];
                  v225 = v716;
                  if (v224 < v736)
                  {
                    v225 = 0;
                  }

                  v226 = &v748[v733 + v225];
                  v227 = -(v59 * v710);
                  if (v224 < v736)
                  {
                    v227 = 0;
                  }

                  v66 += 2 * v227 + 2 * v59;
                  v746 = &v224[v227];
                  v748 += v733 + v225;
                  v780 = v746;
                  v784 = v226;
                }

                else
                {
                  v52 = v733;
                  v780 += v59;
                  v784 += v733;
                }

                __ba += v732;
                v779 += 2 * v735;
                if (!--v786[0])
                {
                  goto LABEL_1051;
                }
              }

            case 17:
              v384 = v22;
              v385 = v39;
              v722 = -(v52 * v710);
              while (1)
              {
                v386 = v796[0];
                v762 = v66;
                do
                {
                  if (v39)
                  {
                    v387 = *v784;
                    if (v387 < 8)
                    {
                      goto LABEL_667;
                    }

                    if (v22)
                    {
                      goto LABEL_662;
                    }
                  }

                  else
                  {
                    v387 = 255;
                    if (v22)
                    {
LABEL_662:
                      v388 = *__ba;
                      if (v388 > 7)
                      {
                        v390 = PDAlightenPDA(*v779, v388, *v780, v387);
                        v66 = v762;
                        LODWORD(v39) = v775;
                        LODWORD(v22) = v751;
                        *v779 = v390;
                        *__ba = HIBYTE(v390);
                      }

                      else
                      {
                        *v779 = *v780;
                        *__ba = v387;
                      }

                      goto LABEL_667;
                    }
                  }

                  v389 = PDAlightenPDA(*v779, 0xFFu, *v780, v387);
                  v66 = v762;
                  LODWORD(v39) = v775;
                  LODWORD(v22) = v751;
                  *v779 = v389;
LABEL_667:
                  __ba += v384;
                  v391 = &v780[v705];
                  if (v391 >= v66)
                  {
                    v392 = -v712;
                  }

                  else
                  {
                    v392 = 0;
                  }

                  v780 = &v391[v392];
                  v784 += v385 + v392;
                  v779 += 2 * v705;
                  --v386;
                }

                while (v386);
                if (v736)
                {
                  v52 = v733;
                  v393 = &v746[v59];
                  v394 = v722;
                  if (v393 < v736)
                  {
                    v394 = 0;
                  }

                  v395 = &v748[v733 + v394];
                  v396 = -(v59 * v710);
                  if (v393 < v736)
                  {
                    v396 = 0;
                  }

                  v66 += 2 * v396 + 2 * v59;
                  v746 = &v393[v396];
                  v748 += v733 + v394;
                  v780 = v746;
                  v784 = v395;
                }

                else
                {
                  v52 = v733;
                  v780 += v59;
                  v784 += v733;
                }

                __ba += v732;
                v779 += 2 * v735;
                if (!--v786[0])
                {
                  goto LABEL_1051;
                }
              }

            case 18:
              v465 = v22;
              v466 = v39;
              v727 = -(v52 * v710);
              while (1)
              {
                v467 = v796[0];
                v768 = v66;
                do
                {
                  if (v39)
                  {
                    v468 = *v784;
                    if (v468 < 8)
                    {
                      goto LABEL_799;
                    }

                    if (v22)
                    {
                      goto LABEL_794;
                    }
                  }

                  else
                  {
                    v468 = 255;
                    if (v22)
                    {
LABEL_794:
                      v469 = *__ba;
                      if (v469 > 7)
                      {
                        v471 = PDAcolordodgePDA(*v779, v469, *v780, v468);
                        v66 = v768;
                        LODWORD(v39) = v775;
                        LODWORD(v22) = v751;
                        *v779 = v471;
                        *__ba = HIBYTE(v471);
                      }

                      else
                      {
                        *v779 = *v780;
                        *__ba = v468;
                      }

                      goto LABEL_799;
                    }
                  }

                  v470 = PDAcolordodgePDA(*v779, 0xFFu, *v780, v468);
                  v66 = v768;
                  LODWORD(v39) = v775;
                  LODWORD(v22) = v751;
                  *v779 = v470;
LABEL_799:
                  __ba += v465;
                  v472 = &v780[v705];
                  if (v472 >= v66)
                  {
                    v473 = -v712;
                  }

                  else
                  {
                    v473 = 0;
                  }

                  v780 = &v472[v473];
                  v784 += v466 + v473;
                  v779 += 2 * v705;
                  --v467;
                }

                while (v467);
                if (v736)
                {
                  v52 = v733;
                  v474 = &v746[v59];
                  v475 = v727;
                  if (v474 < v736)
                  {
                    v475 = 0;
                  }

                  v476 = &v748[v733 + v475];
                  v477 = -(v59 * v710);
                  if (v474 < v736)
                  {
                    v477 = 0;
                  }

                  v66 += 2 * v477 + 2 * v59;
                  v746 = &v474[v477];
                  v748 += v733 + v475;
                  v780 = v746;
                  v784 = v476;
                }

                else
                {
                  v52 = v733;
                  v780 += v59;
                  v784 += v733;
                }

                __ba += v732;
                v779 += 2 * v735;
                if (!--v786[0])
                {
                  goto LABEL_1051;
                }
              }

            case 19:
              v520 = v22;
              v521 = v39;
              v729 = -(v52 * v710);
              while (1)
              {
                v522 = v796[0];
                v771 = v66;
                do
                {
                  if (v39)
                  {
                    v523 = *v784;
                    if (v523 < 8)
                    {
                      goto LABEL_881;
                    }

                    if (v22)
                    {
                      goto LABEL_876;
                    }
                  }

                  else
                  {
                    v523 = 255;
                    if (v22)
                    {
LABEL_876:
                      v524 = *__ba;
                      if (v524 > 7)
                      {
                        v526 = PDAcolorburnPDA(*v779, v524, *v780, v523);
                        v66 = v771;
                        LODWORD(v39) = v775;
                        LODWORD(v22) = v751;
                        *v779 = v526;
                        *__ba = HIBYTE(v526);
                      }

                      else
                      {
                        *v779 = *v780;
                        *__ba = v523;
                      }

                      goto LABEL_881;
                    }
                  }

                  v525 = PDAcolorburnPDA(*v779, 0xFFu, *v780, v523);
                  v66 = v771;
                  LODWORD(v39) = v775;
                  LODWORD(v22) = v751;
                  *v779 = v525;
LABEL_881:
                  __ba += v520;
                  v527 = &v780[v705];
                  if (v527 >= v66)
                  {
                    v528 = -v712;
                  }

                  else
                  {
                    v528 = 0;
                  }

                  v780 = &v527[v528];
                  v784 += v521 + v528;
                  v779 += 2 * v705;
                  --v522;
                }

                while (v522);
                if (v736)
                {
                  v52 = v733;
                  v529 = &v746[v59];
                  v530 = v729;
                  if (v529 < v736)
                  {
                    v530 = 0;
                  }

                  v531 = &v748[v733 + v530];
                  v532 = -(v59 * v710);
                  if (v529 < v736)
                  {
                    v532 = 0;
                  }

                  v66 += 2 * v532 + 2 * v59;
                  v746 = &v529[v532];
                  v748 += v733 + v530;
                  v780 = v746;
                  v784 = v531;
                }

                else
                {
                  v52 = v733;
                  v780 += v59;
                  v784 += v733;
                }

                __ba += v732;
                v779 += 2 * v735;
                if (!--v786[0])
                {
                  goto LABEL_1051;
                }
              }

            case 20:
              v397 = v22;
              v398 = v39;
              v723 = -(v52 * v710);
              while (1)
              {
                v399 = v796[0];
                v763 = v66;
                do
                {
                  if (v39)
                  {
                    v400 = *v784;
                    if (v400 < 8)
                    {
                      goto LABEL_690;
                    }

                    if (v22)
                    {
                      goto LABEL_685;
                    }
                  }

                  else
                  {
                    v400 = 255;
                    if (v22)
                    {
LABEL_685:
                      v401 = *__ba;
                      if (v401 > 7)
                      {
                        v403 = PDAsoftlightPDA(*v779, v401, *v780, v400);
                        v66 = v763;
                        LODWORD(v39) = v775;
                        LODWORD(v22) = v751;
                        *v779 = v403;
                        *__ba = HIBYTE(v403);
                      }

                      else
                      {
                        *v779 = *v780;
                        *__ba = v400;
                      }

                      goto LABEL_690;
                    }
                  }

                  v402 = PDAsoftlightPDA(*v779, 0xFFu, *v780, v400);
                  v66 = v763;
                  LODWORD(v39) = v775;
                  LODWORD(v22) = v751;
                  *v779 = v402;
LABEL_690:
                  __ba += v397;
                  v404 = &v780[v705];
                  if (v404 >= v66)
                  {
                    v405 = -v712;
                  }

                  else
                  {
                    v405 = 0;
                  }

                  v780 = &v404[v405];
                  v784 += v398 + v405;
                  v779 += 2 * v705;
                  --v399;
                }

                while (v399);
                if (v736)
                {
                  v52 = v733;
                  v406 = &v746[v59];
                  v407 = v723;
                  if (v406 < v736)
                  {
                    v407 = 0;
                  }

                  v408 = &v748[v733 + v407];
                  v409 = -(v59 * v710);
                  if (v406 < v736)
                  {
                    v409 = 0;
                  }

                  v66 += 2 * v409 + 2 * v59;
                  v746 = &v406[v409];
                  v748 += v733 + v407;
                  v780 = v746;
                  v784 = v408;
                }

                else
                {
                  v52 = v733;
                  v780 += v59;
                  v784 += v733;
                }

                __ba += v732;
                v779 += 2 * v735;
                if (!--v786[0])
                {
                  goto LABEL_1051;
                }
              }

            case 21:
              v426 = v22;
              v427 = v39;
              v724 = -(v52 * v710);
              while (1)
              {
                v428 = v796[0];
                v765 = v66;
                do
                {
                  if (v39)
                  {
                    v429 = *v784;
                    if (v429 < 8)
                    {
                      goto LABEL_728;
                    }

                    if (v22)
                    {
                      goto LABEL_723;
                    }
                  }

                  else
                  {
                    v429 = 255;
                    if (v22)
                    {
LABEL_723:
                      v430 = *__ba;
                      if (v430 > 7)
                      {
                        v432 = PDAhardlightPDA(*v779, v430, *v780, v429);
                        v66 = v765;
                        LODWORD(v39) = v775;
                        LODWORD(v22) = v751;
                        *v779 = v432;
                        *__ba = HIBYTE(v432);
                      }

                      else
                      {
                        *v779 = *v780;
                        *__ba = v429;
                      }

                      goto LABEL_728;
                    }
                  }

                  v431 = PDAhardlightPDA(*v779, 0xFFu, *v780, v429);
                  v66 = v765;
                  LODWORD(v39) = v775;
                  LODWORD(v22) = v751;
                  *v779 = v431;
LABEL_728:
                  __ba += v426;
                  v433 = &v780[v705];
                  if (v433 >= v66)
                  {
                    v434 = -v712;
                  }

                  else
                  {
                    v434 = 0;
                  }

                  v780 = &v433[v434];
                  v784 += v427 + v434;
                  v779 += 2 * v705;
                  --v428;
                }

                while (v428);
                if (v736)
                {
                  v52 = v733;
                  v435 = &v746[v59];
                  v436 = v724;
                  if (v435 < v736)
                  {
                    v436 = 0;
                  }

                  v437 = &v748[v733 + v436];
                  v438 = -(v59 * v710);
                  if (v435 < v736)
                  {
                    v438 = 0;
                  }

                  v66 += 2 * v438 + 2 * v59;
                  v746 = &v435[v438];
                  v748 += v733 + v436;
                  v780 = v746;
                  v784 = v437;
                }

                else
                {
                  v52 = v733;
                  v780 += v59;
                  v784 += v733;
                }

                __ba += v732;
                v779 += 2 * v735;
                if (!--v786[0])
                {
                  goto LABEL_1051;
                }
              }

            case 22:
              v507 = v22;
              v508 = v39;
              v728 = -(v52 * v710);
              while (1)
              {
                v509 = v796[0];
                v770 = v66;
                do
                {
                  if (v39)
                  {
                    v510 = *v784;
                    if (v510 < 8)
                    {
                      goto LABEL_858;
                    }

                    if (v22)
                    {
                      goto LABEL_853;
                    }
                  }

                  else
                  {
                    v510 = 255;
                    if (v22)
                    {
LABEL_853:
                      v511 = *__ba;
                      if (v511 > 7)
                      {
                        v513 = PDAdifferencePDA(*v779, v511, *v780, v510);
                        v66 = v770;
                        LODWORD(v39) = v775;
                        LODWORD(v22) = v751;
                        *v779 = v513;
                        *__ba = HIBYTE(v513);
                      }

                      else
                      {
                        *v779 = *v780;
                        *__ba = v510;
                      }

                      goto LABEL_858;
                    }
                  }

                  v512 = PDAdifferencePDA(*v779, 0xFFu, *v780, v510);
                  v66 = v770;
                  LODWORD(v39) = v775;
                  LODWORD(v22) = v751;
                  *v779 = v512;
LABEL_858:
                  __ba += v507;
                  v514 = &v780[v705];
                  if (v514 >= v66)
                  {
                    v515 = -v712;
                  }

                  else
                  {
                    v515 = 0;
                  }

                  v780 = &v514[v515];
                  v784 += v508 + v515;
                  v779 += 2 * v705;
                  --v509;
                }

                while (v509);
                if (v736)
                {
                  v52 = v733;
                  v516 = &v746[v59];
                  v517 = v728;
                  if (v516 < v736)
                  {
                    v517 = 0;
                  }

                  v518 = &v748[v733 + v517];
                  v519 = -(v59 * v710);
                  if (v516 < v736)
                  {
                    v519 = 0;
                  }

                  v66 += 2 * v519 + 2 * v59;
                  v746 = &v516[v519];
                  v748 += v733 + v517;
                  v780 = v746;
                  v784 = v518;
                }

                else
                {
                  v52 = v733;
                  v780 += v59;
                  v784 += v733;
                }

                __ba += v732;
                v779 += 2 * v735;
                if (!--v786[0])
                {
                  goto LABEL_1051;
                }
              }

            case 23:
              v533 = v22;
              v534 = v39;
              v730 = -(v52 * v710);
              while (1)
              {
                v535 = v796[0];
                v772 = v66;
                do
                {
                  if (v39)
                  {
                    v536 = *v784;
                    if (v536 < 8)
                    {
                      goto LABEL_904;
                    }

                    if (v22)
                    {
                      goto LABEL_899;
                    }
                  }

                  else
                  {
                    v536 = 255;
                    if (v22)
                    {
LABEL_899:
                      v537 = *__ba;
                      if (v537 > 7)
                      {
                        v539 = PDAexclusionPDA(*v779, v537, *v780, v536);
                        v66 = v772;
                        LODWORD(v39) = v775;
                        LODWORD(v22) = v751;
                        *v779 = v539;
                        *__ba = HIBYTE(v539);
                      }

                      else
                      {
                        *v779 = *v780;
                        *__ba = v536;
                      }

                      goto LABEL_904;
                    }
                  }

                  v538 = PDAexclusionPDA(*v779, 0xFFu, *v780, v536);
                  v66 = v772;
                  LODWORD(v39) = v775;
                  LODWORD(v22) = v751;
                  *v779 = v538;
LABEL_904:
                  __ba += v533;
                  v540 = &v780[v705];
                  if (v540 >= v66)
                  {
                    v541 = -v712;
                  }

                  else
                  {
                    v541 = 0;
                  }

                  v780 = &v540[v541];
                  v784 += v534 + v541;
                  v779 += 2 * v705;
                  --v535;
                }

                while (v535);
                if (v736)
                {
                  v52 = v733;
                  v542 = &v746[v59];
                  v543 = v730;
                  if (v542 < v736)
                  {
                    v543 = 0;
                  }

                  v544 = &v748[v733 + v543];
                  v545 = -(v59 * v710);
                  if (v542 < v736)
                  {
                    v545 = 0;
                  }

                  v66 += 2 * v545 + 2 * v59;
                  v746 = &v542[v545];
                  v748 += v733 + v543;
                  v780 = v746;
                  v784 = v544;
                }

                else
                {
                  v52 = v733;
                  v780 += v59;
                  v784 += v733;
                }

                __ba += v732;
                v779 += 2 * v735;
                if (!--v786[0])
                {
                  goto LABEL_1051;
                }
              }

            case 24:
              v308 = v22;
              v309 = v39;
              v720 = -(v52 * v710);
              while (1)
              {
                v310 = v796[0];
                v760 = v66;
                do
                {
                  if (v39)
                  {
                    v311 = *v784;
                    if (v311 < 8)
                    {
                      goto LABEL_550;
                    }

                    if (v22)
                    {
                      goto LABEL_545;
                    }
                  }

                  else
                  {
                    v311 = 255;
                    if (v22)
                    {
LABEL_545:
                      v312 = *__ba;
                      if (v312 > 7)
                      {
                        v314 = PDAhuePDA(*v779, v312, *v780, v311);
                        v66 = v760;
                        LODWORD(v39) = v775;
                        LODWORD(v22) = v751;
                        *v779 = v314;
                        *__ba = HIBYTE(v314);
                      }

                      else
                      {
                        *v779 = *v780;
                        *__ba = v311;
                      }

                      goto LABEL_550;
                    }
                  }

                  v313 = PDAhuePDA(*v779, 0xFFu, *v780, v311);
                  v66 = v760;
                  LODWORD(v39) = v775;
                  LODWORD(v22) = v751;
                  *v779 = v313;
LABEL_550:
                  __ba += v308;
                  v315 = &v780[v705];
                  if (v315 >= v66)
                  {
                    v316 = -v712;
                  }

                  else
                  {
                    v316 = 0;
                  }

                  v780 = &v315[v316];
                  v784 += v309 + v316;
                  v779 += 2 * v705;
                  --v310;
                }

                while (v310);
                if (v736)
                {
                  v52 = v733;
                  v317 = &v746[v59];
                  v318 = v720;
                  if (v317 < v736)
                  {
                    v318 = 0;
                  }

                  v319 = &v748[v733 + v318];
                  v320 = -(v59 * v710);
                  if (v317 < v736)
                  {
                    v320 = 0;
                  }

                  v66 += 2 * v320 + 2 * v59;
                  v746 = &v317[v320];
                  v748 += v733 + v318;
                  v780 = v746;
                  v784 = v319;
                }

                else
                {
                  v52 = v733;
                  v780 += v59;
                  v784 += v733;
                }

                __ba += v732;
                v779 += 2 * v735;
                if (!--v786[0])
                {
                  goto LABEL_1051;
                }
              }

            case 25:
              v295 = v22;
              v296 = v39;
              v719 = -(v52 * v710);
              while (1)
              {
                v297 = v796[0];
                v759 = v66;
                do
                {
                  if (v39)
                  {
                    v298 = *v784;
                    if (v298 < 8)
                    {
                      goto LABEL_527;
                    }

                    if (v22)
                    {
                      goto LABEL_522;
                    }
                  }

                  else
                  {
                    v298 = 255;
                    if (v22)
                    {
LABEL_522:
                      v299 = *__ba;
                      if (v299 > 7)
                      {
                        v301 = PDAsaturationPDA(*v779, v299, *v780, v298);
                        v66 = v759;
                        LODWORD(v39) = v775;
                        LODWORD(v22) = v751;
                        *v779 = v301;
                        *__ba = HIBYTE(v301);
                      }

                      else
                      {
                        *v779 = *v780;
                        *__ba = v298;
                      }

                      goto LABEL_527;
                    }
                  }

                  v300 = PDAsaturationPDA(*v779, 0xFFu, *v780, v298);
                  v66 = v759;
                  LODWORD(v39) = v775;
                  LODWORD(v22) = v751;
                  *v779 = v300;
LABEL_527:
                  __ba += v295;
                  v302 = &v780[v705];
                  if (v302 >= v66)
                  {
                    v303 = -v712;
                  }

                  else
                  {
                    v303 = 0;
                  }

                  v780 = &v302[v303];
                  v784 += v296 + v303;
                  v779 += 2 * v705;
                  --v297;
                }

                while (v297);
                if (v736)
                {
                  v52 = v733;
                  v304 = &v746[v59];
                  v305 = v719;
                  if (v304 < v736)
                  {
                    v305 = 0;
                  }

                  v306 = &v748[v733 + v305];
                  v307 = -(v59 * v710);
                  if (v304 < v736)
                  {
                    v307 = 0;
                  }

                  v66 += 2 * v307 + 2 * v59;
                  v746 = &v304[v307];
                  v748 += v733 + v305;
                  v780 = v746;
                  v784 = v306;
                }

                else
                {
                  v52 = v733;
                  v780 += v59;
                  v784 += v733;
                }

                __ba += v732;
                v779 += 2 * v735;
                if (!--v786[0])
                {
                  goto LABEL_1051;
                }
              }

            case 26:
              v546 = v22;
              v547 = v39;
              v731 = -(v52 * v710);
              while (1)
              {
                v548 = v796[0];
                v773 = v66;
                do
                {
                  if (v39)
                  {
                    v549 = *v784;
                    if (v549 < 8)
                    {
                      goto LABEL_927;
                    }

                    if (v22)
                    {
                      goto LABEL_922;
                    }
                  }

                  else
                  {
                    v549 = 255;
                    if (v22)
                    {
LABEL_922:
                      v550 = *__ba;
                      v551 = *v780;
                      if (v550 > 7)
                      {
                        v553 = PDAluminosityPDA(v551, v549, *v779, v550);
                        v66 = v773;
                        LODWORD(v39) = v775;
                        LODWORD(v22) = v751;
                        *v779 = v553;
                        *__ba = HIBYTE(v553);
                      }

                      else
                      {
                        *v779 = v551;
                        *__ba = v549;
                      }

                      goto LABEL_927;
                    }
                  }

                  v552 = PDAluminosityPDA(*v780, v549, *v779, 0xFFu);
                  v66 = v773;
                  LODWORD(v39) = v775;
                  LODWORD(v22) = v751;
                  *v779 = v552;
LABEL_927:
                  __ba += v546;
                  v554 = &v780[v705];
                  if (v554 >= v66)
                  {
                    v555 = -v712;
                  }

                  else
                  {
                    v555 = 0;
                  }

                  v780 = &v554[v555];
                  v784 += v547 + v555;
                  v779 += 2 * v705;
                  --v548;
                }

                while (v548);
                if (v736)
                {
                  v52 = v733;
                  v556 = &v746[v59];
                  v557 = v731;
                  if (v556 < v736)
                  {
                    v557 = 0;
                  }

                  v558 = &v748[v733 + v557];
                  v559 = -(v59 * v710);
                  if (v556 < v736)
                  {
                    v559 = 0;
                  }

                  v66 += 2 * v559 + 2 * v59;
                  v746 = &v556[v559];
                  v748 += v733 + v557;
                  v780 = v746;
                  v784 = v558;
                }

                else
                {
                  v52 = v733;
                  v780 += v59;
                  v784 += v733;
                }

                __ba += v732;
                v779 += 2 * v735;
                if (!--v786[0])
                {
                  goto LABEL_1051;
                }
              }

            case 27:
              v202 = v22;
              v203 = v39;
              v715 = -(v52 * v710);
              break;
            default:
              goto LABEL_1160;
          }

          break;
        }

LABEL_371:
        v204 = v796[0];
        v754 = v66;
        while (1)
        {
          if (v39)
          {
            v205 = *v784;
            if (v205 < 8)
            {
              goto LABEL_380;
            }

            if (!v22)
            {
              goto LABEL_378;
            }
          }

          else
          {
            v205 = 255;
            if (!v22)
            {
LABEL_378:
              v207 = PDAluminosityPDA(*v779, 0xFFu, *v780, v205);
              v66 = v754;
              LODWORD(v39) = v775;
              LODWORD(v22) = v751;
              *v779 = v207;
              goto LABEL_380;
            }
          }

          v206 = *__ba;
          if (v206 > 7)
          {
            v208 = PDAluminosityPDA(*v779, v206, *v780, v205);
            v66 = v754;
            LODWORD(v39) = v775;
            LODWORD(v22) = v751;
            *v779 = v208;
            *__ba = HIBYTE(v208);
          }

          else
          {
            *v779 = *v780;
            *__ba = v205;
          }

LABEL_380:
          __ba += v202;
          v209 = &v780[v705];
          if (v209 >= v66)
          {
            v210 = -v712;
          }

          else
          {
            v210 = 0;
          }

          v780 = &v209[v210];
          v784 += v203 + v210;
          v779 += 2 * v705;
          if (!--v204)
          {
            if (v736)
            {
              v52 = v733;
              v211 = &v746[v59];
              v212 = v715;
              if (v211 < v736)
              {
                v212 = 0;
              }

              v213 = &v748[v733 + v212];
              v214 = -(v59 * v710);
              if (v211 < v736)
              {
                v214 = 0;
              }

              v66 += 2 * v214 + 2 * v59;
              v746 = &v211[v214];
              v748 += v733 + v212;
              v780 = v746;
              v784 = v213;
            }

            else
            {
              v52 = v733;
              v780 += v59;
              v784 += v733;
            }

            __ba += v732;
            v779 += 2 * v735;
            if (!--v786[0])
            {
              goto LABEL_1051;
            }

            goto LABEL_371;
          }
        }
      }

      LODWORD(v712) = *(v3 + 64);
      v58 = *(v3 + 68);
      v59 = *(v3 + 76) >> 1;
      if (v6)
      {
        v51 = 0;
        v52 = *(v3 + 80);
        LODWORD(v39) = 1;
      }

      else
      {
        v52 = 0;
        LODWORD(v39) = 0;
        v51 = 1;
      }
    }

    LODWORD(v710) = v58;
    v736 = &v18[v59 * v58];
    v22 &= 1u;
    if (v15)
    {
      v753 = v18;
      v775 = v39;
      v751 = v22;
      v64 = 1;
      v746 = v18;
      v711 = v18;
LABEL_60:
      v705 = v64;
      shape_enum_clip_alloc(v2, v3, v15, v64, v21, 1, v34, v35, v11, v13);
      v68 = v67;
      v748 = v6;
      v784 = v6;
      __ba = v703;
      v732 = v702;
      if (!v67)
      {
        return 1;
      }

      goto LABEL_1056;
    }

    v732 = v702 - (v22 * v11);
    if (v18)
    {
      v69 = v689 % v58;
      v70 = v688 % v712;
      v71 = &v18[v59 * v69];
      v66 = &v71[v712];
      v709 = 0;
      v72 = (v51 & 1) == 0;
      v705 = 1;
      if (v51)
      {
        v73 = v6;
      }

      else
      {
        LODWORD(v39) = 1;
        v73 = &v6[v52 * v69 + v70];
      }

      v746 = &v71[v70];
      v748 = v73;
      if (v72)
      {
        v74 = &v6[v52 * v69 + v70];
      }

      else
      {
        v74 = v6;
      }

      v780 = &v71[v70];
      v784 = v74;
      __ba = v703;
      v779 = v701;
      v713 = v11;
      v65 = v11;
      goto LABEL_357;
    }

    v66 = 0;
    v705 = 1;
    v65 = v11;
    goto LABEL_71;
  }

  v16 = *(v3 + 128);
  if ((v16 | 8) == 8)
  {
    if ((*v3 & 0xFF00) == 0x400)
    {
      rgb555_mark_constmask(v3, v8);
    }

    else
    {
      rgb555_mark_pixelmask(v3, v8);
    }
  }

  else
  {
    v23 = *(v3 + 112);
    v24 = *(v3 + 116);
    v25 = (v23 + 15) & 0xFFFFFFF0;
    v26 = v25 * v24;
    if (v26 <= 4096)
    {
      v28 = v796;
      v29 = v3;
    }

    else
    {
      v27 = malloc_type_malloc(v26, 0x97CEE3C3uLL);
      if (!v27)
      {
        return 1;
      }

      v28 = v27;
      v29 = v704;
      v15 = *(v704 + 136);
      v16 = *(v704 + 128);
    }

    CGSConvertBitsToMask(v15, *(v29 + 124), v28, v25, v23, v24, v16);
    v53 = *(v29 + 112);
    v792 = *(v29 + 96);
    v793 = v53;
    v54 = *(v29 + 144);
    v794 = *(v29 + 128);
    v795 = v54;
    v55 = *(v29 + 48);
    v788 = *(v29 + 32);
    v789 = v55;
    v56 = *(v29 + 80);
    v790 = *(v29 + 64);
    v791 = v56;
    v57 = *(v29 + 16);
    *v786 = *v29;
    v787 = v57;
    HIDWORD(v793) = (v23 + 15) & 0xFFFFFFF0;
    *(&v794 + 1) = v28;
    if (BYTE1(v786[0]) << 8 == 1024)
    {
      rgb555_mark_constmask(v786, v8);
    }

    else
    {
      rgb555_mark_pixelmask(v786, v8);
    }

    if (v28 != v796)
    {
      v60 = v28;
      goto LABEL_1083;
    }
  }

  return 1;
}

void rgb555_image_mark_image(uint64_t a1, uint64_t a2, int a3, int a4, void (*a5)(void, void))
{
  v83[1] = *MEMORY[0x1E69E9840];
  v8.n128_u64[1] = 0;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v80 = 0u;
  v79 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v74 = 0u;
  v8.n128_u64[0] = *(a2 + 184);
  v8.n128_f32[0] = (v8.n128_f32[0] * 255.0) + 0.5;
  v70[0] = a3;
  v70[1] = a4;
  LOBYTE(v71) = v8.n128_f32[0];
  v9 = *(a1 + 28) >> 1;
  *&v72 = v9;
  if (*(a1 + 48))
  {
    v10 = *(a1 + 32);
  }

  else
  {
    v10 = 0;
  }

  *&v74 = 0;
  v73 = v10;
  v11 = *(a2 + 120);
  v12 = *(a2 + 20);
  v13 = HIBYTE(v12);
  v14 = BYTE2(v12);
  if (v11)
  {
    v15 = *(a2 + 24);
    v16 = (a2 + 104);
    v17 = (a2 + 72);
    v18 = (a2 + 88);
    v19 = v13;
  }

  else
  {
    v15 = *(a2 + 8) >> 25;
    v16 = (a2 + 96);
    v17 = (a2 + 64);
    v18 = (a2 + 80);
    v11 = *(a2 + 112);
    v19 = v14;
  }

  v20 = *v18;
  v21 = *v17;
  v22 = *v16;
  v23 = v19;
  *(&v75 + 1) = v19;
  *(&v74 + 1) = v22;
  *(&v79 + 1) = v15;
  *(&v78 + 1) = v20;
  *(&v77 + 1) = v21;
  *(&v76 + 1) = v11;
  v24 = *(a2 + 128);
  if (v24)
  {
    v25 = *(a2 + 8) >> 25;
    v26 = (a2 + 96);
    v27 = (a2 + 64);
    v28 = (a2 + 80);
    v13 = v14;
  }

  else
  {
    v25 = *(a2 + 24);
    v26 = (a2 + 104);
    v27 = (a2 + 72);
    v28 = (a2 + 88);
    v24 = *(a2 + 136);
  }

  v69 = &v65;
  v29 = *v28;
  v30 = *v27;
  v31 = *v26;
  *&v76 = v13;
  *&v75 = v31;
  *&v80 = v25;
  *&v79 = v29;
  *&v78 = v30;
  *&v77 = v24;
  v32 = *(a1 + 4);
  v33 = MEMORY[0x1EEE9AC00](16 * v32, v8);
  v68 = &v65 - v35 - 15;
  if (v36 <= 0xFFFFFFFFFFFFFFELL)
  {
    v38 = &v65 - v35 - 15;
  }

  else
  {
    v38 = 0;
  }

  if (v36 - 0xFFFFFFFFFFFFFFFLL >= 0xF000000000000402)
  {
    v66 = v34;
    v67 = a5;
    v39 = v37;
    v33 = malloc_type_malloc(v33, 0xC166A778uLL);
    v34 = v66;
    v37 = v39;
    a5 = v67;
    v38 = v33;
  }

  *(&v80 + 1) = v38;
  if (v38)
  {
    if (*(a2 + 176))
    {
      if (v32 >= 1)
      {
        v40 = (v38 + 8);
        v41 = v37 - v22;
        do
        {
          if (((v22 - v34) | v41) < 0)
          {
            v45 = 0;
          }

          else
          {
            v42 = ((v22 & ~(-1 << v23)) >> (v23 - 4)) & 0xF;
            v43 = weights_21890[v42];
            if (v42 - 7 >= 9)
            {
              v44 = -v15;
            }

            else
            {
              v44 = v15;
            }

            v45 = v43 & 0xF | (16 * v44);
          }

          *(v40 - 1) = v15 * (v22 >> v23);
          *v40 = v45;
          v40 += 2;
          v22 += v11;
          v41 -= v11;
          --v32;
        }

        while (v32);
      }
    }

    else if (v32 >= 1)
    {
      v46 = v38 + 8;
      do
      {
        *(v46 - 1) = v15 * (v22 >> v23);
        *v46 = 0;
        v46 += 2;
        v22 += v11;
        --v32;
      }

      while (v32);
    }

    v47 = v38;
    v48 = *(a1 + 4);
    v49 = *(a1 + 8);
    v81 = v49;
    v82 = v48;
    v50 = *(a1 + 136);
    if (v50)
    {
      v51 = *(a1 + 104);
      LODWORD(v83[0]) = *(a1 + 108);
      HIDWORD(v83[0]) = v51;
      shape_enum_clip_alloc(v33, v34, v50, 1, 1, 1, v51, v83[0], v48, v49);
      v53 = v52;
      if (v52)
      {
        goto LABEL_42;
      }
    }

    v54 = 0;
    v55 = 0;
    v53 = 0;
    v83[0] = 0;
    while (1)
    {
      v56 = *(a1 + 16) + v55;
      v57 = *(a1 + 48);
      v58 = *(a1 + 12) + v54;
      v59 = v57 + v10 * v56 + v58;
      if (!v57)
      {
        v59 = 0;
      }

      *(&v71 + 1) = *(a1 + 40) + 2 * v9 * v56 + 2 * v58;
      *(&v72 + 1) = v59;
      if (*(a2 + 168))
      {
        v60 = -v58 < 0;
        v61 = -v58 & 0xF;
        v62 = v58 & 0xF;
        if (!v60)
        {
          v62 = -v61;
        }

        v60 = -v56 < 0;
        v63 = -v56 & 0xF;
        v64 = v56 & 0xF;
        if (!v60)
        {
          v64 = -v63;
        }

        *(&v73 + 1) = v62;
        *&v74 = v64;
      }

      a5(a2, v70);
      if (!v53)
      {
        break;
      }

LABEL_42:
      if (!shape_enum_clip_next(v53, v83 + 1, v83, &v82, &v81))
      {
        free(v53);
        break;
      }

      v55 = v83[0];
      v54 = HIDWORD(v83[0]);
      v9 = v72;
      v10 = v73;
    }

    if (v47 != v68)
    {
      free(v47);
    }
  }
}

uint64_t rgb555_image_mark_rgb32(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v139 = result;
  if (*(result + 40))
  {
    v7 = 0;
  }

  else
  {
    v7 = 255;
  }

  v144 = v7;
  v8 = *(a2 + 2);
  v9 = *(a2 + 4);
  if (v9)
  {
    v129 = *(a2 + 5) - a5;
  }

  else
  {
    v129 = 0;
  }

  v10 = a2[1];
  v128 = *a2;
  v127 = *(a2 + 3) - a5;
  v143 = v9 != 0;
  v12 = *(a2 + 19);
  v11 = *(a2 + 20);
  v13 = *(a2 + 11);
  v124 = *(a2 + 13);
  v14 = *(a2 + 9) + v124 * a4;
  v122 = *(a2 + 6);
  v131 = *(a2 + 7);
  v15 = *(result + 32);
  v16 = v15 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v17 = *(result + 168);
  v142 = v10;
  v125 = v13;
  v126 = v12;
  v123 = v17;
  if (*(result + 176))
  {
    v136 = 0;
    v18 = 0;
    v121 = *(a2 + 15);
    v119 = ~(-1 << v13);
    v120 = *(a2 + 17);
    v118 = v13 - 4;
    v117 = -v12;
    v19 = (v16 - 4);
    v140 = 32 - v10;
    v115 = v11 + 16 * a3 + 8;
    v116 = a5;
    while (1)
    {
      if (((v120 - v14) | (v14 - v121)) < 0)
      {
        v24 = 0;
        v137 = 0;
      }

      else
      {
        v20 = ((v14 & v119) >> v118) & 0xF;
        v21 = weights_21890[v20];
        v22 = (v20 - 7) >= 9;
        v23 = v117;
        if (!v22)
        {
          v23 = v12;
        }

        v137 = v23;
        v24 = v21 & 0xF;
      }

      if (v17)
      {
        v25 = v17 + 16 * v131;
        v136 = v25 + 16;
        v18 = (v25 + v122);
        v26 = (v131 + 1) & 0xF;
        if (v131 + 1 <= 0)
        {
          v26 = -(-(v131 + 1) & 0xF);
        }

        v131 = v26;
      }

      v27 = *(v139 + 32) + (v14 >> v13) * v12;
      v134 = a6;
      v132 = v14;
      if (v128 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v28 = v115;
        v29 = v116;
        while (1)
        {
          v30 = *(v28 - 1);
          v31 = *v28;
          v32 = v27 + v30;
          if (v19 >= v27 + v30)
          {
            v33 = (v27 + v30);
          }

          else
          {
            v33 = v19;
          }

          if (v33 < v15)
          {
            v33 = v15;
          }

          v34 = *v33;
          v35 = v31 & 0xF;
          if ((v31 & 0xF) != 0)
          {
            break;
          }

          if (v24)
          {
            v46 = (v32 + v137);
            if (v19 < v32 + v137)
            {
              v46 = v19;
            }

            if (v46 < v15)
            {
              v46 = v15;
            }

            v47 = BLEND8_21892[v24];
            v44 = v34 - ((v47 & v34) >> v24);
            v45 = (v47 & *v46) >> v24;
            goto LABEL_49;
          }

LABEL_50:
          v48 = (v34 << v10) | (v34 >> v140);
          v49 = v48 | v144;
          if (v18)
          {
            v50 = *v18;
            if ((v18 + 1) < v136)
            {
              ++v18;
            }

            else
            {
              v18 -= 15;
            }

            if (v6 == 255)
            {
              result = DITHERRGBA32(v49, v50);
            }

            else
            {
              result = DITHERRGBA32M(v49, v50, v6);
            }

            LOBYTE(v10) = v142;
          }

          else
          {
            v51 = (v48 >> 17) & 0x7C00 | (v48 >> 14) & 0x3E0 | (v48 >> 11) & 0xFFFFFF | ((v49 >> 3) << 27) | (v49 >> 5 << 24);
            v52 = ((v48 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v48 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v53 = (v49 & 0xFF00FF) * v6 + 65537 + ((((v49 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v54 = (v52 >> 17) & 0x7C00 | (v52 >> 11) & 0xFFFFFF | ((v53 >> 11) << 27) | ((v49 * v6 + 1 + ((v49 * v6) >> 8)) >> 13 << 24) | (32 * (v53 >> 27));
            if (v6 == 255)
            {
              result = v51;
            }

            else
            {
              result = v54;
            }

            v18 = 0;
          }

          *v8 = result;
          if (v9)
          {
            *v9 = BYTE3(result);
          }

          v28 += 2;
          ++v8;
          v9 += v143;
          if (!--v29)
          {
            goto LABEL_120;
          }
        }

        v36 = (v32 + (v31 >> 4));
        if (v19 < v36)
        {
          v36 = v19;
        }

        if (v36 < v15)
        {
          v36 = v15;
        }

        v37 = *v36;
        if (v24)
        {
          v38 = (v32 + v137);
          if (v19 >= v38)
          {
            v39 = v38;
          }

          else
          {
            v39 = v19;
          }

          if (v39 < v15)
          {
            v39 = v15;
          }

          v40 = *v39;
          v41 = (v38 + (v31 >> 4));
          if (v19 < v41)
          {
            v41 = v19;
          }

          if (v41 < v15)
          {
            v41 = v15;
          }

          v42 = BLEND8_21892[v24];
          v34 = v34 - ((v42 & v34) >> v24) + ((v42 & v40) >> v24);
          v37 = v37 - ((v42 & v37) >> v24) + ((v42 & *v41) >> v24);
        }

        v43 = BLEND8_21892[*v28 & 0xF];
        v44 = v34 - ((v43 & v34) >> v35);
        v45 = (v43 & v37) >> v35;
LABEL_49:
        v34 = v44 + v45;
        goto LABEL_50;
      }

LABEL_120:
      v12 = v126;
      v8 += v127;
      v9 += v129;
      LOBYTE(v13) = v125;
      v14 = v132 + v124;
      a6 = v134 - 1;
      v17 = v123;
      if (v134 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_120;
    }

    v56 = v115;
    v55 = v116;
    while (1)
    {
      v57 = *(v56 - 1);
      v58 = *v56;
      v59 = v27 + v57;
      if (v19 >= v27 + v57)
      {
        v60 = (v27 + v57);
      }

      else
      {
        v60 = v19;
      }

      if (v60 < v15)
      {
        v60 = v15;
      }

      v61 = *v60;
      v62 = v58 & 0xF;
      if ((v58 & 0xF) != 0)
      {
        v63 = (v59 + (v58 >> 4));
        if (v19 < v63)
        {
          v63 = v19;
        }

        if (v63 < v15)
        {
          v63 = v15;
        }

        v64 = *v63;
        if (v24)
        {
          v65 = (v59 + v137);
          if (v19 >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = v19;
          }

          if (v66 < v15)
          {
            v66 = v15;
          }

          v67 = *v66;
          v68 = (v65 + (v58 >> 4));
          if (v19 < v68)
          {
            v68 = v19;
          }

          if (v68 < v15)
          {
            v68 = v15;
          }

          v69 = BLEND8_21892[v24];
          v61 = v61 - ((v69 & v61) >> v24) + ((v69 & v67) >> v24);
          v64 = v64 - ((v69 & v64) >> v24) + ((v69 & *v68) >> v24);
        }

        v70 = BLEND8_21892[*v56 & 0xF];
        v71 = v61 - ((v70 & v61) >> v62);
        v72 = (v70 & v64) >> v62;
      }

      else
      {
        if (!v24)
        {
          goto LABEL_97;
        }

        v73 = (v59 + v137);
        if (v19 < v59 + v137)
        {
          v73 = v19;
        }

        if (v73 < v15)
        {
          v73 = v15;
        }

        v74 = BLEND8_21892[v24];
        v71 = v61 - ((v74 & v61) >> v24);
        v72 = (v74 & *v73) >> v24;
      }

      v61 = v71 + v72;
LABEL_97:
      v75 = (v61 << v10) | (v61 >> v140);
      v76 = v75 | v144;
      if (v18)
      {
        v77 = *v18;
        if ((v18 + 1) < v136)
        {
          ++v18;
        }

        else
        {
          v18 -= 15;
        }

        if (v6 == 255)
        {
          result = DITHERRGBA32(v76, v77);
        }

        else
        {
          result = DITHERRGBA32M(v76, v77, v6);
        }

        LOBYTE(v10) = v142;
      }

      else
      {
        v78 = (v75 >> 17) & 0x7C00 | (v75 >> 14) & 0x3E0 | (v75 >> 11) & 0xFFFFFF | ((v76 >> 3) << 27) | (v76 >> 5 << 24);
        v79 = ((v75 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v75 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
        v80 = (v76 & 0xFF00FF) * v6 + 65537 + ((((v76 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
        v81 = (v79 >> 17) & 0x7C00 | (v79 >> 11) & 0xFFFFFF | ((v80 >> 11) << 27) | ((v76 * v6 + 1 + ((v76 * v6) >> 8)) >> 13 << 24) | (32 * (v80 >> 27));
        if (v6 == 255)
        {
          result = v78;
        }

        else
        {
          result = v81;
        }

        v18 = 0;
      }

      v82 = result >> 27;
      if (v9)
      {
        if (result >> 27 == 31)
        {
          v83 = BYTE3(result);
          *v8 = result;
LABEL_118:
          *v9 = v83;
          goto LABEL_119;
        }

        if (v82)
        {
          result = PDAplusDAM(result, SBYTE3(result), *v8, *v9, BYTE3(result) ^ 0xFF);
          LOBYTE(v10) = v142;
          *v8 = result;
          v83 = BYTE3(result);
          goto LABEL_118;
        }
      }

      else
      {
        if (result >> 27 == 31)
        {
          goto LABEL_115;
        }

        if (v82)
        {
          result = PDplusDM(result, *v8, ~result >> 24);
          LOBYTE(v10) = v142;
LABEL_115:
          *v8 = result;
        }
      }

LABEL_119:
      v56 += 2;
      ++v8;
      v9 += v143;
      if (!--v55)
      {
        goto LABEL_120;
      }
    }
  }

  v84 = 0;
  v85 = 0;
  v141 = (v11 + 16 * a3);
  v86 = v16 - 4;
  v87 = 32 - v10;
  v138 = a5;
  do
  {
    if (v17)
    {
      v88 = v17 + 16 * v131;
      v84 = v88 + 16;
      v85 = (v88 + v122);
      v89 = (v131 + 1) & 0xF;
      if (v131 + 1 <= 0)
      {
        v89 = -(-(v131 + 1) & 0xF);
      }

      v131 = v89;
    }

    v90 = *(v139 + 32) + (v14 >> v13) * v12;
    v135 = a6;
    v133 = v14;
    if (v128 != 1)
    {
      v102 = v141;
      v103 = v138;
      if (a5 < 1)
      {
        goto LABEL_178;
      }

      while (1)
      {
        v104 = *v102;
        v102 += 2;
        v105 = (v90 + v104);
        if (v86 < v90 + v104)
        {
          v105 = v86;
        }

        if (v105 < *(v139 + 32))
        {
          v105 = *(v139 + 32);
        }

        v106 = (*v105 << v10) | (*v105 >> v87);
        v107 = v106 | v144;
        if (v85)
        {
          v108 = *v85;
          if ((v85 + 1) < v84)
          {
            ++v85;
          }

          else
          {
            v85 -= 15;
          }

          if (v6 == 255)
          {
            result = DITHERRGBA32(v107, v108);
          }

          else
          {
            result = DITHERRGBA32M(v107, v108, v6);
          }

          LOBYTE(v10) = v142;
        }

        else
        {
          v109 = (v106 >> 17) & 0x7C00 | (v106 >> 14) & 0x3E0 | (v106 >> 11) & 0xFFFFFF | ((v107 >> 3) << 27) | (v107 >> 5 << 24);
          v110 = ((v106 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v106 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v111 = (v107 & 0xFF00FF) * v6 + 65537 + ((((v107 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v112 = (v110 >> 17) & 0x7C00 | (v110 >> 11) & 0xFFFFFF | ((v111 >> 11) << 27) | ((v107 * v6 + 1 + ((v107 * v6) >> 8)) >> 13 << 24) | (32 * (v111 >> 27));
          if (v6 == 255)
          {
            result = v109;
          }

          else
          {
            result = v112;
          }

          v85 = 0;
        }

        v113 = result >> 27;
        if (v9)
        {
          if (result >> 27 == 31)
          {
            v114 = BYTE3(result);
            *v8 = result;
LABEL_176:
            *v9 = v114;
            goto LABEL_177;
          }

          if (v113)
          {
            result = PDAplusDAM(result, SBYTE3(result), *v8, *v9, BYTE3(result) ^ 0xFF);
            LOBYTE(v10) = v142;
            *v8 = result;
            v114 = BYTE3(result);
            goto LABEL_176;
          }
        }

        else
        {
          if (result >> 27 == 31)
          {
            goto LABEL_173;
          }

          if (v113)
          {
            result = PDplusDM(result, *v8, ~result >> 24);
            LOBYTE(v10) = v142;
LABEL_173:
            *v8 = result;
          }
        }

LABEL_177:
        ++v8;
        v9 += v143;
        if (!--v103)
        {
          goto LABEL_178;
        }
      }
    }

    if (a5 >= 1)
    {
      v91 = v141;
      v92 = v138;
      do
      {
        v93 = *v91;
        v91 += 2;
        v94 = (v90 + v93);
        if (v86 < v90 + v93)
        {
          v94 = v86;
        }

        if (v94 < *(v139 + 32))
        {
          v94 = *(v139 + 32);
        }

        v95 = (*v94 << v10) | (*v94 >> v87);
        v96 = v95 | v144;
        if (v85)
        {
          v97 = *v85;
          if ((v85 + 1) < v84)
          {
            ++v85;
          }

          else
          {
            v85 -= 15;
          }

          if (v6 == 255)
          {
            result = DITHERRGBA32(v96, v97);
          }

          else
          {
            result = DITHERRGBA32M(v96, v97, v6);
          }

          LOBYTE(v10) = v142;
        }

        else
        {
          v98 = (v95 >> 17) & 0x7C00 | (v95 >> 14) & 0x3E0 | (v95 >> 11) & 0xFFFFFF | ((v96 >> 3) << 27) | (v96 >> 5 << 24);
          v99 = ((v95 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v95 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v100 = (v96 & 0xFF00FF) * v6 + 65537 + ((((v96 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v101 = (v99 >> 17) & 0x7C00 | (v99 >> 11) & 0xFFFFFF | ((v100 >> 11) << 27) | ((v96 * v6 + 1 + ((v96 * v6) >> 8)) >> 13 << 24) | (32 * (v100 >> 27));
          if (v6 == 255)
          {
            result = v98;
          }

          else
          {
            result = v101;
          }

          v85 = 0;
        }

        *v8 = result;
        if (v9)
        {
          *v9 = BYTE3(result);
        }

        ++v8;
        v9 += v143;
        --v92;
      }

      while (v92);
    }

LABEL_178:
    v12 = v126;
    v8 += v127;
    v9 += v129;
    LOBYTE(v13) = v125;
    v14 = v133 + v124;
    a6 = v135 - 1;
    v17 = v123;
  }

  while (v135 != 1);
  return result;
}

uint64_t rgb555_image_mark_RGB32(uint64_t result, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *(a2 + 8);
  v141 = result;
  if (*(result + 40))
  {
    v7 = 0;
  }

  else
  {
    v7 = 255;
  }

  v146 = v7;
  v8 = *(a2 + 2);
  v9 = *(a2 + 4);
  if (v9)
  {
    v131 = *(a2 + 5) - a5;
  }

  else
  {
    v131 = 0;
  }

  v10 = a2[1];
  v130 = *a2;
  v129 = *(a2 + 3) - a5;
  v145 = v9 != 0;
  v12 = *(a2 + 19);
  v11 = *(a2 + 20);
  v13 = *(a2 + 11);
  v126 = *(a2 + 13);
  v14 = *(a2 + 9) + v126 * a4;
  v124 = *(a2 + 6);
  v133 = *(a2 + 7);
  v15 = *(result + 32);
  v16 = v15 + (*(result + 260) - 1) * *(result + 24) + (((*(result + 8) >> 22) * *(result + 256)) >> 3);
  v17 = *(result + 168);
  v144 = v10;
  v127 = v13;
  v128 = v12;
  v125 = v17;
  if (*(result + 176))
  {
    v138 = 0;
    v18 = 0;
    v123 = *(a2 + 15);
    v121 = ~(-1 << v13);
    v122 = *(a2 + 17);
    v120 = v13 - 4;
    v119 = -v12;
    v19 = (v16 - 4);
    v142 = 32 - v10;
    v117 = v11 + 16 * a3 + 8;
    v118 = a5;
    while (1)
    {
      if (((v122 - v14) | (v14 - v123)) < 0)
      {
        v24 = 0;
        v139 = 0;
      }

      else
      {
        v20 = ((v14 & v121) >> v120) & 0xF;
        v21 = weights_21890[v20];
        v22 = (v20 - 7) >= 9;
        v23 = v119;
        if (!v22)
        {
          v23 = v12;
        }

        v139 = v23;
        v24 = v21 & 0xF;
      }

      if (v17)
      {
        v25 = v17 + 16 * v133;
        v138 = v25 + 16;
        v18 = (v25 + v124);
        v26 = (v133 + 1) & 0xF;
        if (v133 + 1 <= 0)
        {
          v26 = -(-(v133 + 1) & 0xF);
        }

        v133 = v26;
      }

      v27 = *(v141 + 32) + (v14 >> v13) * v12;
      v136 = a6;
      v134 = v14;
      if (v130 != 1)
      {
        break;
      }

      if (a5 >= 1)
      {
        v28 = v117;
        v29 = v118;
        while (1)
        {
          v30 = *(v28 - 1);
          v31 = *v28;
          v32 = v27 + v30;
          if (v19 >= v27 + v30)
          {
            v33 = (v27 + v30);
          }

          else
          {
            v33 = v19;
          }

          if (v33 < v15)
          {
            v33 = v15;
          }

          v34 = bswap32(*v33);
          v35 = v31 & 0xF;
          if ((v31 & 0xF) != 0)
          {
            break;
          }

          if (v24)
          {
            v46 = (v32 + v139);
            if (v19 < v32 + v139)
            {
              v46 = v19;
            }

            if (v46 < v15)
            {
              v46 = v15;
            }

            v47 = BLEND8_21892[v24];
            v44 = v34 - ((v47 & v34) >> v24);
            v45 = (bswap32(*v46) & v47) >> v24;
            goto LABEL_49;
          }

LABEL_50:
          v48 = (v34 << v10) | (v34 >> v142);
          v49 = v48 | v146;
          if (v18)
          {
            v50 = *v18;
            if ((v18 + 1) < v138)
            {
              ++v18;
            }

            else
            {
              v18 -= 15;
            }

            if (v6 == 255)
            {
              result = DITHERRGBA32(v49, v50);
            }

            else
            {
              result = DITHERRGBA32M(v49, v50, v6);
            }

            LOBYTE(v10) = v144;
          }

          else
          {
            v51 = (v48 >> 17) & 0x7C00 | (v48 >> 14) & 0x3E0 | (v48 >> 11) & 0xFFFFFF | ((v49 >> 3) << 27) | (v49 >> 5 << 24);
            v52 = ((v48 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v48 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v53 = (v49 & 0xFF00FF) * v6 + 65537 + ((((v49 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
            v54 = (v52 >> 17) & 0x7C00 | (v52 >> 11) & 0xFFFFFF | ((v53 >> 11) << 27) | ((v49 * v6 + 1 + ((v49 * v6) >> 8)) >> 13 << 24) | (32 * (v53 >> 27));
            if (v6 == 255)
            {
              result = v51;
            }

            else
            {
              result = v54;
            }

            v18 = 0;
          }

          *v8 = result;
          if (v9)
          {
            *v9 = BYTE3(result);
          }

          v28 += 2;
          ++v8;
          v9 += v145;
          if (!--v29)
          {
            goto LABEL_120;
          }
        }

        v36 = (v32 + (v31 >> 4));
        if (v19 < v36)
        {
          v36 = v19;
        }

        if (v36 < v15)
        {
          v36 = v15;
        }

        v37 = bswap32(*v36);
        if (v24)
        {
          v38 = (v32 + v139);
          if (v19 >= v38)
          {
            v39 = v38;
          }

          else
          {
            v39 = v19;
          }

          if (v39 < v15)
          {
            v39 = v15;
          }

          v40 = bswap32(*v39);
          v41 = (v38 + (v31 >> 4));
          if (v19 < v41)
          {
            v41 = v19;
          }

          if (v41 < v15)
          {
            v41 = v15;
          }

          v42 = BLEND8_21892[v24];
          v34 = v34 - ((v42 & v34) >> v24) + ((v42 & v40) >> v24);
          v37 = v37 - ((v42 & v37) >> v24) + ((bswap32(*v41) & v42) >> v24);
        }

        v43 = BLEND8_21892[*v28 & 0xF];
        v44 = v34 - ((v43 & v34) >> v35);
        v45 = (v43 & v37) >> v35;
LABEL_49:
        v34 = v44 + v45;
        goto LABEL_50;
      }

LABEL_120:
      v12 = v128;
      v8 += v129;
      v9 += v131;
      LOBYTE(v13) = v127;
      v14 = v134 + v126;
      a6 = v136 - 1;
      v17 = v125;
      if (v136 == 1)
      {
        return result;
      }
    }

    if (a5 < 1)
    {
      goto LABEL_120;
    }

    v56 = v117;
    v55 = v118;
    while (1)
    {
      v57 = *(v56 - 1);
      v58 = *v56;
      v59 = v27 + v57;
      if (v19 >= v27 + v57)
      {
        v60 = (v27 + v57);
      }

      else
      {
        v60 = v19;
      }

      if (v60 < v15)
      {
        v60 = v15;
      }

      v61 = bswap32(*v60);
      v62 = v58 & 0xF;
      if ((v58 & 0xF) != 0)
      {
        v63 = (v59 + (v58 >> 4));
        if (v19 < v63)
        {
          v63 = v19;
        }

        if (v63 < v15)
        {
          v63 = v15;
        }

        v64 = bswap32(*v63);
        if (v24)
        {
          v65 = (v59 + v139);
          if (v19 >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = v19;
          }

          if (v66 < v15)
          {
            v66 = v15;
          }

          v67 = bswap32(*v66);
          v68 = (v65 + (v58 >> 4));
          if (v19 < v68)
          {
            v68 = v19;
          }

          if (v68 < v15)
          {
            v68 = v15;
          }

          v69 = BLEND8_21892[v24];
          v61 = v61 - ((v69 & v61) >> v24) + ((v69 & v67) >> v24);
          v64 = v64 - ((v69 & v64) >> v24) + ((bswap32(*v68) & v69) >> v24);
        }

        v70 = BLEND8_21892[*v56 & 0xF];
        v71 = v61 - ((v70 & v61) >> v62);
        v72 = (v70 & v64) >> v62;
      }

      else
      {
        if (!v24)
        {
          goto LABEL_97;
        }

        v73 = (v59 + v139);
        if (v19 < v59 + v139)
        {
          v73 = v19;
        }

        if (v73 < v15)
        {
          v73 = v15;
        }

        v74 = BLEND8_21892[v24];
        v71 = v61 - ((v74 & v61) >> v24);
        v72 = (bswap32(*v73) & v74) >> v24;
      }

      v61 = v71 + v72;
LABEL_97:
      v75 = (v61 << v10) | (v61 >> v142);
      v76 = v75 | v146;
      if (v18)
      {
        v77 = *v18;
        if ((v18 + 1) < v138)
        {
          ++v18;
        }

        else
        {
          v18 -= 15;
        }

        if (v6 == 255)
        {
          result = DITHERRGBA32(v76, v77);
        }

        else
        {
          result = DITHERRGBA32M(v76, v77, v6);
        }

        LOBYTE(v10) = v144;
      }

      else
      {
        v78 = (v75 >> 17) & 0x7C00 | (v75 >> 14) & 0x3E0 | (v75 >> 11) & 0xFFFFFF | ((v76 >> 3) << 27) | (v76 >> 5 << 24);
        v79 = ((v75 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v75 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
        v80 = (v76 & 0xFF00FF) * v6 + 65537 + ((((v76 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
        v81 = (v79 >> 17) & 0x7C00 | (v79 >> 11) & 0xFFFFFF | ((v80 >> 11) << 27) | ((v76 * v6 + 1 + ((v76 * v6) >> 8)) >> 13 << 24) | (32 * (v80 >> 27));
        if (v6 == 255)
        {
          result = v78;
        }

        else
        {
          result = v81;
        }

        v18 = 0;
      }

      v82 = result >> 27;
      if (v9)
      {
        if (result >> 27 == 31)
        {
          v83 = BYTE3(result);
          *v8 = result;
LABEL_118:
          *v9 = v83;
          goto LABEL_119;
        }

        if (v82)
        {
          result = PDAplusDAM(result, SBYTE3(result), *v8, *v9, BYTE3(result) ^ 0xFF);
          LOBYTE(v10) = v144;
          *v8 = result;
          v83 = BYTE3(result);
          goto LABEL_118;
        }
      }

      else
      {
        if (result >> 27 == 31)
        {
          goto LABEL_115;
        }

        if (v82)
        {
          result = PDplusDM(result, *v8, ~result >> 24);
          LOBYTE(v10) = v144;
LABEL_115:
          *v8 = result;
        }
      }

LABEL_119:
      v56 += 2;
      ++v8;
      v9 += v145;
      if (!--v55)
      {
        goto LABEL_120;
      }
    }
  }

  v84 = 0;
  v85 = 0;
  v143 = (v11 + 16 * a3);
  v86 = (v16 - 4);
  v87 = 32 - v10;
  v140 = a5;
  do
  {
    if (v17)
    {
      v88 = v17 + 16 * v133;
      v84 = v88 + 16;
      v85 = (v88 + v124);
      v89 = (v133 + 1) & 0xF;
      if (v133 + 1 <= 0)
      {
        v89 = -(-(v133 + 1) & 0xF);
      }

      v133 = v89;
    }

    v90 = *(v141 + 32) + (v14 >> v13) * v12;
    v137 = a6;
    v135 = v14;
    if (v130 != 1)
    {
      v103 = v143;
      v104 = v140;
      if (a5 < 1)
      {
        goto LABEL_178;
      }

      while (1)
      {
        v105 = *v103;
        v103 += 2;
        v106 = (v90 + v105);
        if (v86 < v90 + v105)
        {
          v106 = v86;
        }

        if (v106 < *(v141 + 32))
        {
          v106 = *(v141 + 32);
        }

        v107 = bswap32(*v106);
        v108 = (v107 << v10) | (v107 >> v87);
        v109 = v108 | v146;
        if (v85)
        {
          v110 = *v85;
          if ((v85 + 1) < v84)
          {
            ++v85;
          }

          else
          {
            v85 -= 15;
          }

          if (v6 == 255)
          {
            result = DITHERRGBA32(v109, v110);
          }

          else
          {
            result = DITHERRGBA32M(v109, v110, v6);
          }

          LOBYTE(v10) = v144;
        }

        else
        {
          v111 = (v108 >> 17) & 0x7C00 | (v108 >> 14) & 0x3E0 | (v108 >> 11) & 0xFFFFFF | ((v109 >> 3) << 27) | (v109 >> 5 << 24);
          v112 = ((v108 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v108 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v113 = (v109 & 0xFF00FF) * v6 + 65537 + ((((v109 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v114 = (v112 >> 17) & 0x7C00 | (v112 >> 11) & 0xFFFFFF | ((v113 >> 11) << 27) | ((v109 * v6 + 1 + ((v109 * v6) >> 8)) >> 13 << 24) | (32 * (v113 >> 27));
          if (v6 == 255)
          {
            result = v111;
          }

          else
          {
            result = v114;
          }

          v85 = 0;
        }

        v115 = result >> 27;
        if (v9)
        {
          if (result >> 27 == 31)
          {
            v116 = BYTE3(result);
            *v8 = result;
LABEL_176:
            *v9 = v116;
            goto LABEL_177;
          }

          if (v115)
          {
            result = PDAplusDAM(result, SBYTE3(result), *v8, *v9, BYTE3(result) ^ 0xFF);
            LOBYTE(v10) = v144;
            *v8 = result;
            v116 = BYTE3(result);
            goto LABEL_176;
          }
        }

        else
        {
          if (result >> 27 == 31)
          {
            goto LABEL_173;
          }

          if (v115)
          {
            result = PDplusDM(result, *v8, ~result >> 24);
            LOBYTE(v10) = v144;
LABEL_173:
            *v8 = result;
          }
        }

LABEL_177:
        ++v8;
        v9 += v145;
        if (!--v104)
        {
          goto LABEL_178;
        }
      }
    }

    if (a5 >= 1)
    {
      v91 = v143;
      v92 = v140;
      do
      {
        v93 = *v91;
        v91 += 2;
        v94 = (v90 + v93);
        if (v86 < v90 + v93)
        {
          v94 = v86;
        }

        if (v94 < *(v141 + 32))
        {
          v94 = *(v141 + 32);
        }

        v95 = bswap32(*v94);
        v96 = (v95 << v10) | (v95 >> v87);
        v97 = v96 | v146;
        if (v85)
        {
          v98 = *v85;
          if ((v85 + 1) < v84)
          {
            ++v85;
          }

          else
          {
            v85 -= 15;
          }

          if (v6 == 255)
          {
            result = DITHERRGBA32(v97, v98);
          }

          else
          {
            result = DITHERRGBA32M(v97, v98, v6);
          }

          LOBYTE(v10) = v144;
        }

        else
        {
          v99 = (v96 >> 17) & 0x7C00 | (v96 >> 14) & 0x3E0 | (v96 >> 11) & 0xFFFFFF | ((v97 >> 3) << 27) | (v97 >> 5 << 24);
          v100 = ((v96 >> 8) & 0xFF00FF) * v6 + 65537 + (((((v96 >> 8) & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v101 = (v97 & 0xFF00FF) * v6 + 65537 + ((((v97 & 0xFF00FF) * v6) >> 8) & 0xFF00FF);
          v102 = (v100 >> 17) & 0x7C00 | (v100 >> 11) & 0xFFFFFF | ((v101 >> 11) << 27) | ((v97 * v6 + 1 + ((v97 * v6) >> 8)) >> 13 << 24) | (32 * (v101 >> 27));
          if (v6 == 255)
          {
            result = v99;
          }

          else
          {
            result = v102;
          }

          v85 = 0;
        }

        *v8 = result;
        if (v9)
        {
          *v9 = BYTE3(result);
        }

        ++v8;
        v9 += v145;
        --v92;
      }

      while (v92);
    }

LABEL_178:
    v12 = v128;
    v8 += v129;
    v9 += v131;
    LOBYTE(v13) = v127;
    v14 = v135 + v126;
    a6 = v137 - 1;
    v17 = v125;
  }

  while (v137 != 1);
  return result;
}