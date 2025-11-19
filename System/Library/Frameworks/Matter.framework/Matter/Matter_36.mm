unint64_t sub_23944BF9C(int8x16_t *a1)
{
  v1 = a1[1].i64[0];
  v2 = a1[1].u64[1];
  v3 = veorq_s8(*a1, xmmword_2395CAAE0);
  v4 = vorrq_s8(vorrq_s8(vorrq_s8(veorq_s8(*a1, xmmword_2395CAAF0), vextq_s8(v3, v3, 8uLL)), vdupq_n_s64(v1 ^ 0xFFFFFFFFFFFFFFuLL)), veorq_s8(vdupq_n_s64(v2), xmmword_2395CAB00));
  v3.i64[0] = -1;
  v3.i64[1] = -1;
  v5 = vaddq_s64(v4, v3);
  return (v5.i64[0] | ((vorrq_s8(vdupq_laneq_s64(*a1, 1), *a1).u64[0] | v1 | v2) - 1) | v5.i64[1]) >> 63;
}

void *sub_23944C01C(int64x2_t *a1, void *a2, void *a3, int64x2_t *a4, int64x2_t *a5, int64x2_t *a6)
{
  v70 = *MEMORY[0x277D85DE8];
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v63 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  memset(v49, 0, sizeof(v49));
  v40 = *a4;
  v42 = a4[1];
  sub_23944B4DC(&v63, a6);
  sub_23944B594(&v54, &v63);
  sub_23944B4DC(&v63, a5);
  sub_23944B594(&v52, &v63);
  sub_23944B6C0(&v63, a4, &v52);
  sub_23944B594(&v50, &v63);
  v44 = vdupq_n_s64(0x3FFFFFFFFFFFFFCuLL);
  v47 = vaddq_s64(vsubq_s64(v40, v54), xmmword_2395CAAD0);
  v48 = vaddq_s64(vsubq_s64(v42, v55), v44);
  v11 = v54.i64[1];
  v12 = v54.i64[0];
  v13 = v55.i64[1];
  v14 = v55.i64[0];
  v46[0] = 3 * (v54.i64[0] + v40.i64[0]);
  v46[1] = 3 * (v54.i64[1] + v40.i64[1]);
  v46[2] = 3 * (v55.i64[0] + v42.i64[0]);
  v46[3] = 3 * (v55.i64[1] + v42.i64[1]);
  sub_23944B6C0(&v63, &v47, v46);
  sub_23944B594(v49, &v63);
  sub_23944B4DC(&v63, v49);
  v41 = v51;
  v43 = v50;
  v63 = v63 - (8 * v50.i64[0]) + __PAIR128__(1, 256);
  v16 = (v64 - (8 * v50.i64[1])) >> 64;
  v15 = v64 - 8 * v50.i64[1];
  v17 = __CFADD__(v15, 0xFFFEFFFFFFFFFF00);
  v18 = v15 - 0x1000000000100;
  if (v17)
  {
    ++v16;
  }

  *&v64 = v18;
  *(&v64 + 1) = v16;
  v20 = (v65 - (8 * v51.i64[0])) >> 64;
  v19 = v65 - 8 * v51.i64[0];
  v17 = v19 >= 0x100;
  v21 = v19 - 256;
  if (v17)
  {
    ++v20;
  }

  *&v65 = v21;
  *(&v65 + 1) = v20;
  v23 = (v66 - (8 * v51.i64[1])) >> 64;
  v22 = v66 - 8 * v51.i64[1];
  v17 = v22 >= 0x100;
  v24 = v22 - 256;
  if (v17)
  {
    ++v23;
  }

  *&v66 = v24;
  *(&v66 + 1) = v23;
  sub_23944B594(a1, &v63);
  v25 = vaddq_s64(*a6, *a5);
  v26 = vaddq_s64(a6[1], a5[1]);
  v27 = v52 + v12;
  v28 = *(&v52 + 1) + v11;
  v29 = v53 + v14;
  v30 = *(&v53 + 1) + v13;
  v47 = v25;
  v48 = v26;
  sub_23944B4DC(&v63, &v47);
  v63 = v63 - v27 + __PAIR128__(1, 256);
  v31 = (v64 - v28) >> 64;
  if ((v64 - v28) >= 0x1000000000100)
  {
    ++v31;
  }

  *&v64 = v64 - v28 - 0x1000000000100;
  *(&v64 + 1) = v31;
  v32 = (v65 - v29) >> 64;
  if (v65 - v29 >= 0x100)
  {
    ++v32;
  }

  *&v65 = v65 - v29 - 256;
  *(&v65 + 1) = v32;
  v33 = (v66 - v30) >> 64;
  if ((v66 - v30) >= 0x100)
  {
    ++v33;
  }

  *&v66 = v66 - v30 - 256;
  *(&v66 + 1) = v33;
  sub_23944B594(a3, &v63);
  v34 = vaddq_s64(vsubq_s64(vshlq_n_s64(v41, 2uLL), a1[1]), v44);
  v50 = vaddq_s64(vsubq_s64(vshlq_n_s64(v43, 2uLL), *a1), xmmword_2395CAAD0);
  v51 = v34;
  sub_23944B6C0(&v63, v49, &v50);
  sub_23944B4DC(&v56, &v52);
  v35 = ((v63 - v56 * 8) >> 64) + 0x100000000000000;
  *&v63 = v63 - 8 * v56;
  *(&v63 + 1) = v35;
  v36 = v64 - v57 * 8;
  *&v64 = v64 - 8 * v57;
  *(&v64 + 1) = *(&v36 + 1) + 0xFFFFFFFFFFFFFFLL;
  v65 = v65 - v58 * 8 + __PAIR128__(0xFFFFFFFFFFFFFFLL, 0);
  v66 = v66 - v59 * 8 + __PAIR128__(0x100000000000000, 0);
  v67 = v67 - v60 * 8 + __PAIR128__(0xFFFEFFFFFFFFFFLL, 0);
  v68 = v68 - v61 * 8 + __PAIR128__(0xFFFFFFFFFFFFFFLL, 0);
  v37 = ((v69 - v62 * 8) >> 64) + 0xFFFFFFFFFFFFFFLL;
  *&v69 = v69 - 8 * v62;
  *(&v69 + 1) = v37;
  result = sub_23944B594(a2, &v63);
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23944C42C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = *a2 & 0xFFFFFFFFFFFFFFLL;
  v4 = (a1 + 96);
  *(a1 + 104) = (*a2 >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 112) = (*(a2 + 8) >> 48) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 120) = (*(a2 + 16) >> 40) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 128) = *(a2 + 72) & 0xFFFFFFFFFFFFFFLL;
  v5 = (a1 + 128);
  *(a1 + 136) = (*(a2 + 72) >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 144) = (*(a2 + 80) >> 48) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 152) = (*(a2 + 88) >> 40) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 160) = *(a2 + 144) & 0xFFFFFFFFFFFFFFLL;
  v6 = a1 + 160;
  *(a1 + 168) = (*(a2 + 144) >> 56) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 176) = (*(a2 + 152) >> 48) & 0xFFFFFFFFFFFFFFLL;
  *(a1 + 184) = (*(a2 + 160) >> 40) & 0xFFFFFFFFFFFFFFLL;
  v7 = 2;
  do
  {
    v8 = a1 + v3;
    if (v7)
    {
      sub_23944B888((v8 + 192), v8 + 224, v8 + 256, v4, v5, v6, 0, (v8 + 96), (v8 + 128), (v8 + 160));
    }

    else
    {
      sub_23944C01C((v8 + 192), (v8 + 224), (v8 + 256), (a1 + 96 * (v7 >> 1)), (a1 + 96 * (v7 >> 1) + 32), (a1 + 96 * (v7 >> 1) + 64));
    }

    ++v7;
    v3 += 96;
  }

  while (v3 != 1440);
}

uint64_t sub_23944C5B4(uint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  a4[4] = 0u;
  a4[5] = 0u;
  a4[2] = 0u;
  a4[3] = 0u;
  *a4 = 0u;
  a4[1] = 0u;
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      for (j = 0; j != 96; j += 8)
      {
        *(a4 + j) |= *(a3 + j) & ((((i ^ result) - 1) & ~result) >> 63);
      }

      a3 += 96;
    }
  }

  return result;
}

void *sub_23944C618(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v3 = a2[1];
  v4 = *a2 <= 0x100uLL;
  v8[0] = 256 - *a2;
  v8[1] = v4;
  v9 = 0xFFFEFFFFFFFFFF00 - __PAIR128__(v4, v3);
  v5 = a2[3];
  v10 = 0xFFFFFFFFFFFFFF00 - __PAIR128__(v2, a2[2]);
  v11 = 0xFFFFFFFFFFFFFF00 - __PAIR128__(v10, v5);
  result = sub_23944B594(a1, v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23944C6C0(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 328);
  if (v7 < 1)
  {
    v11 = 1;
  }

  else
  {
    v8 = 0;
    v9 = (a2 + 9);
    do
    {
      v10 = *v9++;
      v8 |= v10;
      --v7;
    }

    while (v7);
    v11 = v8 == 0;
  }

  if (v11)
  {
    sub_2394170F4(15, 0, 119, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/p256.c", 421);
    result = 0;
  }

  else
  {
    memset(v27, 0, sizeof(v27));
    v13 = a2[10];
    v28[0] = a2[9];
    v28[1] = v13;
    v36 = 0u;
    v37 = 0u;
    memset(v35, 0, sizeof(v35));
    memset(v34, 0, sizeof(v34));
    sub_23944DC28(&v36, v28);
    sub_23944D88C(&v36, &v36, v28);
    sub_23944DC28(v35, &v36);
    sub_23944D88C(v35, v35, v28);
    sub_23944DC28(v34, v35);
    v14 = 2;
    do
    {
      sub_23944DC28(v34, v34);
      --v14;
    }

    while (v14);
    memset(v33, 0, sizeof(v33));
    sub_23944D88C(v34, v34, v35);
    sub_23944DC28(v33, v34);
    v15 = 5;
    do
    {
      sub_23944DC28(v33, v33);
      --v15;
    }

    while (v15);
    memset(v32, 0, sizeof(v32));
    sub_23944D88C(v33, v33, v34);
    sub_23944DC28(v32, v33);
    v16 = 2;
    do
    {
      sub_23944DC28(v32, v32);
      --v16;
    }

    while (v16);
    memset(v31, 0, sizeof(v31));
    sub_23944D88C(v32, v32, v35);
    sub_23944DC28(v31, v32);
    v17 = 14;
    do
    {
      sub_23944DC28(v31, v31);
      --v17;
    }

    while (v17);
    memset(v30, 0, sizeof(v30));
    sub_23944D88C(v31, v31, v32);
    sub_23944DC28(v30, v31);
    sub_23944DC28(v30, v30);
    sub_23944D88C(v30, v30, &v36);
    memset(v29, 0, sizeof(v29));
    sub_23944DC28(v29, v30);
    v18 = 31;
    do
    {
      sub_23944DC28(v29, v29);
      --v18;
    }

    while (v18);
    sub_23944D88C(v29, v29, v28);
    v19 = 128;
    do
    {
      sub_23944DC28(v29, v29);
      --v19;
    }

    while (v19);
    sub_23944D88C(v29, v29, v30);
    v20 = 32;
    do
    {
      sub_23944DC28(v29, v29);
      --v20;
    }

    while (v20);
    sub_23944D88C(v29, v29, v30);
    v21 = 30;
    do
    {
      sub_23944DC28(v29, v29);
      --v21;
    }

    while (v21);
    sub_23944D88C(v29, v29, v31);
    sub_23944DC28(v29, v29);
    sub_23944DC28(v27, v29);
    if (a3)
    {
      v22 = a2[1];
      v36 = *a2;
      v37 = v22;
      sub_23944D88C(&v36, &v36, v27);
      v23 = v37;
      *a3 = v36;
      a3[1] = v23;
    }

    if (a4)
    {
      v24 = *(a2 + 88);
      v36 = *(a2 + 72);
      v37 = v24;
      sub_23944DC28(v27, v27);
      sub_23944D88C(&v36, &v36, v28);
      sub_23944D88C(&v36, &v36, v27);
      v25 = v37;
      *a4 = v36;
      a4[1] = v25;
    }

    result = 1;
  }

  v26 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_23944CA30(uint64_t a1, _OWORD *a2, __int128 *a3, _OWORD *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3[1];
  v23 = *a3;
  v24 = v5;
  v6 = *(a3 + 88);
  v21 = *(a3 + 72);
  v22 = v6;
  v7 = a3[10];
  v19 = a3[9];
  v20 = v7;
  v8 = a4[1];
  v18[0] = *a4;
  v18[1] = v8;
  v9 = *(a4 + 88);
  v17[0] = *(a4 + 72);
  v17[1] = v9;
  v10 = a4[10];
  v16[0] = a4[9];
  v16[1] = v10;
  sub_23944DF84(&v23, &v21, &v19, &v23, &v21, &v19, 0, v18, v17, v16);
  v11 = v24;
  *a2 = v23;
  a2[1] = v11;
  v12 = v22;
  *(a2 + 72) = v21;
  *(a2 + 88) = v12;
  result = *&v19;
  v14 = v20;
  a2[9] = v19;
  a2[10] = v14;
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_23944CB08(uint64_t a1, _OWORD *a2, __int128 *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3[1];
  v16 = *a3;
  v17 = v4;
  v5 = *(a3 + 88);
  v14 = *(a3 + 72);
  v15 = v5;
  v6 = a3[10];
  v12 = a3[9];
  v13 = v6;
  sub_23944EA54(&v16, &v14, &v12, &v16, &v14, &v12);
  v7 = v17;
  *a2 = v16;
  a2[1] = v7;
  v8 = v15;
  *(a2 + 72) = v14;
  *(a2 + 88) = v8;
  result = *&v12;
  v10 = v13;
  a2[9] = v12;
  a2[10] = v10;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_23944CBB0(uint64_t a1, int8x16_t *a2, _OWORD *a3, uint64_t a4)
{
  v84 = *MEMORY[0x277D85DE8];
  bzero(v79, 0x660uLL);
  v7 = a3[1];
  v81[0] = *a3;
  v81[1] = v7;
  v8 = *(a3 + 88);
  v82[0] = *(a3 + 72);
  v82[1] = v8;
  v9 = a3[9];
  v10 = a3[10];
  v11 = -1440;
  v12 = 2;
  v83[0] = v9;
  v83[1] = v10;
  do
  {
    v13 = &v79[v11];
    if (v12)
    {
      sub_23944DF84(v13 + 204, v13 + 208, v13 + 212, v81, v82, v83, 0, v13 + 192, v13 + 196, v13 + 200);
    }

    else
    {
      sub_23944EA54(v13 + 204, v13 + 208, v13 + 212, &v79[96 * (v12 >> 1)], &v79[96 * (v12 >> 1) + 32], &v79[96 * (v12 >> 1) + 64]);
    }

    ++v12;
    v11 += 96;
  }

  while (v11);
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v14 = 1;
  for (i = 255; i < 0x100; --i)
  {
    if (!v14)
    {
      sub_23944EA54(v73.i64, v75.i64, v77.i64, &v73, &v75, &v77);
    }

    if (-858993459 * i <= 0x33333333)
    {
      if (i <= 0xFB)
      {
        v16 = 32 * ((*(a4 + 8 * ((i + 4) >> 6)) >> (i + 4)) & 1);
        v17 = i + 3;
      }

      else
      {
        if (i != 252)
        {
          if (i > 0xFD)
          {
            v20 = 0;
            if (i == 255)
            {
LABEL_17:
              if ((i - 1) <= 0xFF)
              {
                v22 = (*(a4 + 8 * ((i - 1) >> 6)) >> (i - 1)) & 1;
              }

              else
              {
                v22 = 0;
              }

              v23 = 0;
              v24 = 0;
              v25 = 0;
              v26 = 0;
              v27 = (2 * ((*(a4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i) & 1)) | v22 | v20;
              v28 = (v20 >> 5) - 1;
              v29 = -(v20 >> 5);
              v30 = ((v27 ^ 0x3F) & v29 | v27 & v28) - (((v27 ^ 0x3F) & v29 | v27 & v28) >> 1);
              v31 = 0uLL;
              v32 = &v80;
              v33 = 17;
              v34 = 0uLL;
              v35 = 0uLL;
              v36 = 0uLL;
              do
              {
                v37 = v30-- != 0;
                v38 = v37;
                v39 = v38 << 63 >> 63;
                v26 = v26 & v39 | v32[-2].i64[0] & ~v39;
                v25 = v25 & v39 | v32[-2].i64[1] & ~v39;
                v24 = v24 & v39 | v32[-1].i64[0] & ~v39;
                v40 = vdupq_n_s64(v39);
                v41 = vdupq_n_s64(~v39);
                v34 = vorrq_s8(vandq_s8(v40, v34), vandq_s8(v41, v32[-3]));
                v31 = vorrq_s8(vandq_s8(v40, v31), vandq_s8(v41, v32[-4]));
                v23 = v23 & v39 | v32[-1].i64[1] & ~v39;
                v43 = *v32;
                v42 = v32[1];
                v32 += 6;
                v36 = vorrq_s8(vandq_s8(v36, v40), vandq_s8(v42, v41));
                v35 = vorrq_s8(vandq_s8(v35, v40), vandq_s8(v43, v41));
                --v33;
              }

              while (v33);
              v67 = v31;
              v68 = v34;
              v71 = v35;
              v72 = v36;
              v37 = __CFADD__(v25, -(-__PAIR128__(v32, v26) >> 64));
              v44 = v25 + -(-__PAIR128__(v32, v26) >> 64);
              v45 = v37;
              v37 = v44 == 0;
              v46 = -v44;
              v48 = (v45 + !v37);
              v47 = v24 + v48;
              v49 = __CFADD__(v24, v48);
              v37 = v47 == 0;
              v50 = -v47;
              v52 = (v49 + !v37);
              v51 = v23 + v52;
              v53 = __CFADD__(v23, v52);
              v37 = v51 == 0;
              v54 = -v51;
              if (v53 + !v37)
              {
                v55 = -1;
              }

              else
              {
                v55 = 0;
              }

              v56 = v55 - v26;
              v37 = __CFADD__(__CFADD__(-v26, v55), v46);
              v57 = __CFADD__(-v26, v55) + v46;
              v37 |= __CFADD__(v55, v57);
              v57 += v55;
              v58 = v54 + __CFADD__(v37, v50) + (v55 & 0xFFFFFFFF00000001);
              v59 = v29;
              v60 = v29 & v56;
              v61 = ~v29;
              v69.i64[0] = v61 & v26 | v60;
              v69.i64[1] = v59 & v57 | v61 & v25;
              v70.i64[0] = v59 & (v37 + v50) | v61 & v24;
              v70.i64[1] = v58 & v59 | v61 & v23;
              if (v14)
              {
                v14 = 0;
                v73 = v67;
                v74 = v68;
                v75 = v69;
                v76 = v70;
                v77 = v71;
                v78 = v72;
              }

              else
              {
                sub_23944DF84(v73.i64, v75.i64, v77.i64, &v73, &v75, &v77, 0, &v67, &v69, &v71);
              }

              continue;
            }

            v21 = 255;
LABEL_16:
            v20 |= 4 * ((*(a4 + 8 * (v21 >> 6)) >> v21) & 1);
            goto LABEL_17;
          }

          v18 = 0;
          v19 = 255;
LABEL_15:
          v20 = (8 * ((*(a4 + 8 * (v19 >> 6)) >> v19) & 1)) | v18;
          v21 = i + 1;
          goto LABEL_16;
        }

        v16 = 0;
        v17 = 255;
      }

      v18 = (16 * ((*(a4 + 8 * (v17 >> 6)) >> v17) & 1)) | v16;
      v19 = i + 2;
      goto LABEL_15;
    }
  }

  v62 = v74;
  *a2 = v73;
  a2[1] = v62;
  v63 = v76;
  *(a2 + 72) = v75;
  *(a2 + 88) = v63;
  result = *v77.i64;
  v65 = v78;
  a2[9] = v77;
  a2[10] = v65;
  v66 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_23944D014(uint64_t a1, _OWORD *a2, unint64_t *a3)
{
  v4 = 0;
  v25 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  for (i = 31; i < 0x20; --i)
  {
    if (v4)
    {
      sub_23944EA54(&v19, &v21, &v23, &v19, &v21, &v23);
    }

    v6 = a3[2];
    v7 = a3[3];
    v9 = *a3;
    v8 = a3[1];
    sub_23944F460((8 * ((v7 >> (i + 32)) & 1)) | (4 * ((v6 >> (i + 32)) & 1)) | (2 * ((v8 >> (i + 32)) & 1)) | (*a3 >> (i + 32)) & 1, &unk_2395CCE28, v16);
    if (v4)
    {
      sub_23944DF84(&v19, &v21, &v23, &v19, &v21, &v23, 1, v16, v17, v18);
    }

    else
    {
      v19 = v16[0];
      v20 = v16[1];
      v21 = v17[0];
      v22 = v17[1];
      v23 = v18[0];
      v24 = v18[1];
    }

    sub_23944F460((8 * ((v7 >> i) & 1)) | (4 * ((v6 >> i) & 1)) | (2 * ((v8 >> i) & 1)) | (v9 >> i) & 1, &unk_2395CCA68, v16);
    v4 = 1;
    sub_23944DF84(&v19, &v21, &v23, &v19, &v21, &v23, 1, v16, v17, v18);
  }

  v10 = v20;
  *a2 = v19;
  a2[1] = v10;
  v11 = v22;
  *(a2 + 72) = v21;
  *(a2 + 88) = v11;
  result = *&v23;
  v13 = v24;
  a2[9] = v23;
  a2[10] = v13;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_23944D1E0(uint64_t a1, _OWORD *a2, unint64_t *a3, _OWORD *a4, _DWORD *a5)
{
  v68 = *MEMORY[0x277D85DE8];
  v8 = a4[1];
  v65[0] = *a4;
  v65[1] = v8;
  v9 = *(a4 + 88);
  v66[0] = *(a4 + 72);
  v66[1] = v9;
  v10 = a4[10];
  v67[0] = a4[9];
  v67[1] = v10;
  sub_23944EA54(v62, v63, v64, v65, v66, v67);
  for (i = 0; i != 42; i += 6)
  {
    sub_23944DF84(&v67[i + 2], &v67[i + 4], &v67[i + 6], &v65[i], &v65[i + 2], &v67[i], 0, v62, v63, v64);
  }

  v12 = 256;
  sub_23943A184(a1, v61, a5, 0x100uLL, 4);
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v13 = 1;
  do
  {
    if (!v13)
    {
      sub_23944EA54(&v55, &v57, &v59, &v55, &v57, &v59);
    }

    if (v12 <= 0x1F)
    {
      v15 = a3[2];
      v14 = a3[3];
      v17 = *a3;
      v16 = a3[1];
      v18 = (8 * ((v14 >> (v12 + 32)) & 1)) | (4 * ((v15 >> (v12 + 32)) & 1)) | (2 * ((v16 >> (v12 + 32)) & 1)) | (*a3 >> (v12 + 32)) & 1;
      if (v18)
      {
        sub_23944DF84(&v55, &v57, &v59, &v55, &v57, &v59, 1, &qword_2395CCA68[8 * v18 + 112], &qword_2395CCA68[8 * v18 + 116], &xmmword_2395CBA58);
        v13 = 0;
      }

      v19 = (8 * ((v14 >> v12) & 1)) | (4 * ((v15 >> v12) & 1)) | (2 * ((v16 >> v12) & 1)) | (v17 >> v12) & 1;
      if (v19)
      {
        sub_23944DF84(&v55, &v57, &v59, &v55, &v57, &v59, 1, &qword_2395CCA68[8 * v19 - 8], &qword_2395CCA68[8 * v19 - 4], &xmmword_2395CBA58);
        v13 = 0;
      }
    }

    v20 = v61[v12];
    if (v61[v12])
    {
      if (v20 >= 0)
      {
        v21 = v61[v12];
      }

      else
      {
        v21 = -v20;
      }

      v22 = &v65[6 * (v21 >> 1)];
      v53 = 0u;
      v54 = 0u;
      if (v20 < 0)
      {
        v27 = *(v22 + 4);
        v28 = *(v22 + 5);
        v29 = v27 == 0;
        v30 = -v27;
        v31 = !v29 + 96;
        v29 = __CFADD__(v28, v31);
        v32 = v28 + v31;
        v33 = v29;
        v29 = v32 == 0;
        v34 = -v32;
        v35 = *(v22 + 6);
        v36 = *(v22 + 7);
        v38 = (v33 + !v29);
        v37 = v35 + v38;
        v39 = __CFADD__(v35, v38);
        v29 = v37 == 0;
        v40 = -v37;
        v42 = (v39 + !v29);
        v41 = v36 + v42;
        v43 = __CFADD__(v36, v42);
        v29 = v41 == 0;
        v44 = -v41;
        if (v43 + !v29)
        {
          v45 = -1;
        }

        else
        {
          v45 = 0;
        }

        v29 = __CFADD__(__CFADD__(v30, v45), v34);
        v46 = __CFADD__(v30, v45) + v34;
        *&v53 = v30 + v45;
        *(&v53 + 1) = v45 + v46;
        v54 = __PAIR128__(v45 & 0xFFFFFFFF00000001, v29 | __CFADD__(v45, v46)) + __PAIR128__(v44, v40);
        v23 = &v53;
        if (v13)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v23 = (v22 + 2);
        if (v13)
        {
LABEL_17:
          v24 = v22[1];
          v55 = *v22;
          v56 = v24;
          v25 = *(v23 + 1);
          v57 = *v23;
          v58 = v25;
          v26 = v22[5];
          v59 = v22[4];
          v60 = v26;
LABEL_32:
          v13 = 0;
          goto LABEL_33;
        }
      }

      sub_23944DF84(&v55, &v57, &v59, &v55, &v57, &v59, 0, v22, v23, v22 + 8);
      goto LABEL_32;
    }

LABEL_33:
    --v12;
  }

  while (v12 != -1);
  v47 = v56;
  *a2 = v55;
  a2[1] = v47;
  v48 = v58;
  *(a2 + 72) = v57;
  *(a2 + 88) = v48;
  result = *&v59;
  v50 = v60;
  a2[9] = v59;
  a2[10] = v50;
  v51 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23944D540(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v100 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 328);
  if (v3 < 1)
  {
    goto LABEL_66;
  }

  v7 = 0;
  v8 = 144;
  v9 = *(a1 + 328);
  do
  {
    v7 |= *(a2 + v8);
    v8 += 8;
    --v9;
  }

  while (v9);
  if (!v7)
  {
    goto LABEL_66;
  }

  v10 = a2[10];
  v99[0] = a2[9];
  v99[1] = v10;
  sub_23944D88C(v99, v99, v99);
  v11 = *(a3 + 1);
  v97 = *a3;
  v98 = v11;
  sub_23944D88C(&v97, &v97, v99);
  v12 = 0;
  v13 = a2[1];
  v95 = *a2;
  v14 = (v95 * 0xFFFFFFFF00000001) >> 64;
  v15 = (v95 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v16 = 0xFFFFFFFFLL * v95 + __CFADD__(-v95, v95) + v15;
  v17 = __CFADD__(__CFADD__(-v95, v95), v15) | __CFADD__(0xFFFFFFFFLL * v95, __CFADD__(-v95, v95) + v15) ? ((v95 * 0xFFFFFFFFuLL) >> 64) + 1 : (v95 * 0xFFFFFFFFuLL) >> 64;
  v34 = __CFADD__(v16, *(&v95 + 1));
  v18 = v16 + *(&v95 + 1);
  v19 = v34;
  v20 = 0xFFFFFFFF00000001 * v18;
  v21 = (__PAIR128__(0xFFFFFFFFLL, -1) * v18) >> 64;
  v22 = v19 + __CFADD__(-v18, v18) + v17;
  v34 = __CFADD__(v22, v21);
  v23 = v22 + v21;
  v24 = v34 - 0xFFFFFFFFLL * v95;
  v25 = __CFADD__(v34, 0xFFFFFFFF00000001 * v95);
  v34 = __CFADD__(v20, v14);
  v26 = v20 + v14;
  v27 = v34;
  v34 = __CFADD__((v18 * 0xFFFFFFFFFFFFFFFFLL) >> 64, 0xFFFFFFFFLL * v18);
  v96 = v13;
  v28 = (v18 * 0xFFFFFFFF00000001) >> 64;
  v29 = (v18 * 0xFFFFFFFFuLL) >> 64;
  v31 = v34 + v24;
  v34 = __CFADD__(v34, v24) | __CFADD__(v29, v31);
  v30 = v29 + v31;
  v32 = v25 + v34 + v26;
  v33 = __CFADD__(v34, v26) | __CFADD__(v25, v34 + v26) ? v27 + 1 : v27;
  v34 = __CFADD__(v23, v96);
  v35 = v23 + v96;
  v36 = v34;
  v37 = v34 + v30;
  v39 = __CFADD__(v34, v30);
  v34 = __CFADD__(v39, v32);
  v38 = v39 + v32;
  v40 = (v35 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v41 = v28 + v34 + v33;
  v42 = 0xFFFFFFFF * v35;
  v43 = (__PAIR128__(0xFFFFFFFFLL, -1) * v35) >> 64;
  v44 = 0xFFFFFFFF00000001 * v35;
  v45 = v36 + __CFADD__(-v35, v35) + v30;
  v34 = __CFADD__(__CFADD__(__CFADD__(-v35, v35), v37) | __CFADD__(v43, __CFADD__(-v35, v35) + v37), v38);
  v46 = (__CFADD__(__CFADD__(-v35, v35), v37) | __CFADD__(v43, __CFADD__(-v35, v35) + v37)) + v38;
  v47 = v34;
  v34 = __CFADD__(v44, v41);
  v48 = v44 + v41;
  v49 = v34;
  v50 = 0xFFFFFFFF * v35;
  v51 = (v35 * 0xFFFFFFFF00000001) >> 64;
  v52 = (v35 * 0xFFFFFFFFuLL) >> 64;
  v53 = v45 + v40 + v42;
  v34 = __CFADD__(__CFADD__(v40, v42), v46) | __CFADD__(v52, (__PAIR128__(v46, v40) + v50) >> 64);
  v54 = v52 + ((__PAIR128__(v46, v40) + v50) >> 64);
  v55 = v47 + v34 + v48;
  v56 = __CFADD__(v34, v48) | __CFADD__(v47, v34 + v48) ? v49 + 1 : v49;
  v57 = __CFADD__(v53, *(&v96 + 1));
  v58 = v53 + *(&v96 + 1);
  v59 = v57;
  v60 = v57 + v54;
  v62 = __CFADD__(v57, v54);
  v34 = __CFADD__(v62, v55);
  v61 = v62 + v55;
  v63 = (v58 * 0xFFFFFFFF00000001) >> 64;
  v64 = v51 + v34 + v56;
  v65 = 0xFFFFFFFF00000001 * v58;
  v66 = -v58;
  v67 = (__PAIR128__(0xFFFFFFFFLL, -1) * v58) >> 64;
  v68 = __CFADD__((v58 * 0xFFFFFFFFFFFFFFFFLL) >> 64, 0xFFFFFFFF * v58) ? ((v58 * 0xFFFFFFFFuLL) >> 64) + 1 : (v58 * 0xFFFFFFFFuLL) >> 64;
  v34 = __CFADD__(v66, v58);
  v69 = v59 + __CFADD__(v66, v58) + v54 + v67;
  v71 = __CFADD__(v34, v60) | __CFADD__(v67, v34 + v60);
  v70 = v68 + v71 + v61;
  v73 = __CFADD__(v71, v61) | __CFADD__(v68, v71 + v61);
  v72 = v64 + v73 + v65;
  v74 = __CFADD__(v73, v65) | __CFADD__(v64, v73 + v65) ? v63 + 1 : v63;
  v75 = v70 - (1 - __CFADD__(v69, 1));
  v76 = v74 - -((v72 - (1 - (__CFADD__(v75, 0xFFFFFFFF00000001) + BYTE8(v75)))) >> 64);
  if (1 == __CFADD__(v76, 0xFFFFFFFFLL) + BYTE8(v76))
  {
    v12 = -1;
    v77 = 0;
  }

  else
  {
    v77 = -1;
  }

  v78 = v12 & (v69 + 1) | v77 & v69;
  v79 = v12 & (v75 - 0xFFFFFFFF) | v77 & v70;
  v80 = v12 & (v72 - (1 - (__CFADD__(v75, 0xFFFFFFFF00000001) + BYTE8(v75)))) | v77 & v72;
  v81 = v12 & (v76 + 0xFFFFFFFF) | v74 & v77;
  *&v95 = v78;
  *(&v95 + 1) = v79;
  *&v96 = v80;
  *(&v96 + 1) = v81;
  v82 = v97 == v78 && *(&v97 + 1) == v79;
  v83 = v82 && v98 == v80;
  if (v83 && *(&v98 + 1) == v81)
  {
    goto LABEL_68;
  }

  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  if (sub_2394216D4(&v90, a3, *(a1 + 256), v3) || (sub_2394228F8(&v90, *(a1 + 328), *(a1 + 320), *(a1 + 328)) & 0x80000000) == 0)
  {
    goto LABEL_66;
  }

  v97 = v90;
  v98 = v91;
  sub_23944D88C(&v97, &v97, v99);
  v85 = v97 == v95 && *(&v97 + 1) == *(&v95 + 1);
  v86 = v85 && v98 == v96;
  if (v86 && *(&v98 + 1) == *(&v96 + 1))
  {
LABEL_68:
    result = 1;
  }

  else
  {
LABEL_66:
    result = 0;
  }

  v89 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *sub_23944D88C(uint64_t *result, unint64_t *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v6 = a3[2];
  v5 = a3[3];
  v7 = v5 * *a2;
  v8 = v6 * *a2;
  v9 = (v6 * *a2) >> 64;
  v11 = *a3;
  v10 = a3[1];
  v12 = (v10 * *a2) >> 64;
  v13 = v10 * *a2;
  v14 = (*a3 * *a2) >> 64;
  v15 = *a3 * *a2;
  v16 = 0xFFFFFFFF00000001 * v15;
  v17 = (v15 * 0xFFFFFFFFuLL) >> 64;
  v18 = (__PAIR128__(0xFFFFFFFFLL, -1) * v15) >> 64;
  if (__CFADD__((v15 * 0xFFFFFFFFFFFFFFFFLL) >> 64, 0xFFFFFFFF * v15))
  {
    ++v17;
  }

  v19 = v14 + v13;
  v31 = __CFADD__(__CFADD__(v14, v13), v12) | __CFADD__(v8, __CFADD__(v14, v13) + v12);
  v20 = v8 + __CFADD__(v14, v13) + v12;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v22 = v9 + v7 + v31 - 0xFFFFFFFF * v15;
  v23 = v13 + __CFADD__(-(v11 * v3), v15) + v14 + v18;
  v24 = v17 + (__CFADD__(__CFADD__(-(v11 * v3), v15), v19) | __CFADD__(v18, __CFADD__(-(v11 * v3), v15) + v19)) + v20;
  v25 = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v26 = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v27 = (v11 * v4) >> 64;
  v28 = v6 * v4 + __CFADD__(v27, v10 * v4) + ((v10 * v4) >> 64);
  v29 = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v30 = __PAIR128__(v10 * v4, v23) + v11 * v4;
  v31 = __CFADD__(__CFADD__(v23, v11 * v4), (__PAIR128__(v10, v11) * v4) >> 64) | __CFADD__(v24, __CFADD__(v23, v11 * v4) + ((__PAIR128__(v10, v11) * v4) >> 64));
  v32 = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  if (v31)
  {
    v33 = v28 + 1;
  }

  else
  {
    v33 = v6 * v4 + __CFADD__(v27, v10 * v4) + ((v10 * v4) >> 64);
  }

  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), v26);
  v34 = v22 + (__CFADD__(__CFADD__(v23, v11 * v4), (__PAIR128__(v10, v11) * v4) >> 64) | __CFADD__(v24, __CFADD__(v23, v11 * v4) + ((__PAIR128__(v10, v11) * v4) >> 64))) + v33;
  v35 = (v5 * v4) >> 64;
  v36 = v5 * v4;
  v37 = (v6 * v4) >> 64;
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), v29);
  v40 = v31;
  v31 = __CFADD__(v31, v37);
  v39 = v40 + v37;
  v38 = v31 | __CFADD__(v36, v39);
  v39 += v36;
  if (v38)
  {
    v41 = v35 + 1;
  }

  else
  {
    v41 = v35;
  }

  v42 = (v5 * v3) >> 64;
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), StatusReg);
  v45 = v38 + v9;
  v43 = __CFADD__(v38, v9) | __CFADD__(v7, v45);
  v44 = v7 + v45;
  if (v43)
  {
    v46 = v42 + 1;
  }

  else
  {
    v46 = v42;
  }

  v47 = (v15 * 0xFFFFFFFF00000001) >> 64;
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), v25);
  if (v43)
  {
    v48 = v22 + 1;
  }

  else
  {
    v48 = v22;
  }

  v50 = __CFADD__(v43, v44) | __CFADD__(v16, v43 + v44);
  v49 = v46 + v50 + v47;
  v53 = __CFADD__(v50, v47) | __CFADD__(v46, v50 + v47);
  v51 = __CFADD__(v53, v41);
  v52 = v53 + v41;
  v54 = __CFADD__(v53, v41);
  v55 = *(&v30 + 1) + v24;
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), v32);
  v57 = __CFADD__(v51, v28) | __CFADD__(v48, v51 + v28);
  v31 = __CFADD__(v57, v39);
  v56 = v57 + v39;
  v31 |= __CFADD__(v49, v56);
  v56 += v49;
  v58 = v31 + v52;
  v59 = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v60 = (v30 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v61 = (__PAIR128__(0xFFFFFFFFLL, -1) * v30) >> 64;
  v62 = v24 + __CFADD__(-v30, v30) + *(&v30 + 1);
  v31 = __CFADD__(__CFADD__(__CFADD__(-v30, v30), v55) | __CFADD__(v61, __CFADD__(-v30, v30) + v55), v34);
  v63 = (__CFADD__(__CFADD__(-v30, v30), v55) | __CFADD__(v61, __CFADD__(-v30, v30) + v55)) + v34;
  v64 = v31;
  v65 = (v30 * 0xFFFFFFFF00000001) >> 64;
  v66 = (v30 * 0xFFFFFFFFuLL) >> 64;
  v31 = __CFADD__(__CFADD__(v60, 0xFFFFFFFF * v30), v63) | __CFADD__(v66, (__PAIR128__(v63, v60) + (0xFFFFFFFF * v30)) >> 64);
  v67 = v66 + ((__PAIR128__(v63, v60) + (0xFFFFFFFF * v30)) >> 64);
  v68 = v64 + v31 - 0xFFFFFFFF * v30;
  if (__CFADD__(v31, 0xFFFFFFFF00000001 * v30) | __CFADD__(v64, v31 - 0xFFFFFFFF * v30))
  {
    v69 = 1;
  }

  else
  {
    v69 = 0;
  }

  v31 = __CFADD__(v68, v56);
  v70 = v68 + v56;
  v71 = v69 + v31 + v65;
  if (__CFADD__(v31, v65) | __CFADD__(v69, v31 + v65))
  {
    v72 = 1;
  }

  else
  {
    v72 = 0;
  }

  v73 = __CFADD__(v71, v58);
  v74 = v71 + v58;
  if (v73)
  {
    v75 = v72 + 1;
  }

  else
  {
    v75 = v72;
  }

  v76 = v62 + v60 + 0xFFFFFFFF * v30;
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), v59);
  v77 = v54 + v73 + v75;
  v79 = a2[2];
  v78 = a2[3];
  v80 = (v5 * v79) >> 64;
  v81 = v5 * v79;
  v82 = (v6 * v79) >> 64;
  v83 = v6 * v79;
  v84 = (v10 * v79) >> 64;
  v85 = v10 * v79;
  v86 = v11 * v79;
  v87 = (v11 * v79) >> 64;
  v88 = v87 + v85;
  v31 = __CFADD__(__CFADD__(v87, v85), v84) | __CFADD__(v83, __CFADD__(v87, v85) + v84);
  v89 = v83 + __CFADD__(v87, v85) + v84;
  v91 = v31 + v82;
  v31 = __CFADD__(v31, v82) | __CFADD__(v81, v91);
  v90 = v81 + v91;
  if (v31)
  {
    ++v80;
  }

  v92 = __PAIR128__(v87, v76) + __PAIR128__(v85, v86);
  v93 = ((__PAIR128__(v87, v76) + __PAIR128__(v85, v86)) >> 64) + v67;
  v95 = (__CFADD__(__CFADD__(v76, v86), v88) | __CFADD__(v67, __CFADD__(v76, v86) + v88)) + v89;
  v31 = __CFADD__(__CFADD__(__CFADD__(v76, v86), v88) | __CFADD__(v67, __CFADD__(v76, v86) + v88), v89) | __CFADD__(v70, v95);
  v94 = v70 + v95;
  v97 = v31 + v90;
  v31 = __CFADD__(v31, v90) | __CFADD__(v74, v97);
  v96 = v74 + v97;
  v98 = v80 + v31 + v77;
  v99 = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v100 = 0xFFFFFFFF00000001 * (v76 + v86);
  v101 = v67 + __CFADD__(-v92, v92) + *(&v92 + 1);
  v102 = (__CFADD__(__CFADD__(-v92, v92), v93) | __CFADD__((__PAIR128__(0xFFFFFFFFLL, -1) * (v76 + v86)) >> 64, __CFADD__(-v92, v92) + v93)) + v94;
  v31 = __CFADD__(((v76 + v86) * 0xFFFFFFFFFFFFFFFFLL) >> 64, 0xFFFFFFFF * (v76 + v86));
  v103 = (__PAIR128__(0xFFFFFFFFLL, -1) * (v76 + v86)) >> 64;
  v104 = ((v76 + v86) * 0xFFFFFFFF00000001) >> 64;
  v105 = ((v76 + v86) * 0xFFFFFFFFuLL) >> 64;
  v107 = v31;
  v31 = __CFADD__(v31, v102);
  v106 = v107 + v102;
  v31 |= __CFADD__(v105, v106);
  v106 += v105;
  v108 = *(&v92 + 1) + v31 + v100;
  if (__CFADD__(v31, v100) | __CFADD__(*(&v92 + 1), v31 + v100))
  {
    v109 = 1;
  }

  else
  {
    v109 = 0;
  }

  v31 = __CFADD__(v108, v96);
  v110 = v108 + v96;
  v111 = v109 + v31 + v104;
  if (__CFADD__(v31, v104) | __CFADD__(v109, v31 + v104))
  {
    v112 = 1;
  }

  else
  {
    v112 = 0;
  }

  v113 = __CFADD__(v111, v98);
  v114 = v111 + v98;
  if (v113)
  {
    v115 = v112 + 1;
  }

  else
  {
    v115 = v112;
  }

  v116 = v101 + v103;
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), v99);
  if (v113)
  {
    ++v115;
  }

  v117 = (v5 * v78) >> 64;
  v118 = v5 * v78;
  v119 = (v6 * v78) >> 64;
  v120 = v6 * v78;
  v121 = (v10 * v78) >> 64;
  v122 = v10 * v78;
  v123 = v11 * v78;
  v124 = (v11 * v78) >> 64;
  v125 = v124 + v122;
  v31 = __CFADD__(__CFADD__(v124, v122), v121) | __CFADD__(v120, __CFADD__(v124, v122) + v121);
  v126 = v120 + __CFADD__(v124, v122) + v121;
  v128 = v31 + v119;
  v31 = __CFADD__(v31, v119) | __CFADD__(v118, v128);
  v127 = v118 + v128;
  if (v31)
  {
    ++v117;
  }

  v31 = __CFADD__(v116, v123);
  v129 = v116 + v123;
  v130 = v122 + v31 + v124;
  v131 = v130 + v106;
  v133 = __CFADD__(v31, v125) | __CFADD__(v106, v31 + v125);
  v31 = __CFADD__(v133, v126);
  v132 = v133 + v126;
  v31 |= __CFADD__(v110, v132);
  v132 += v110;
  v135 = v31;
  v31 = __CFADD__(v31, v127);
  v134 = v135 + v127;
  v31 |= __CFADD__(v114, v134);
  v134 += v114;
  v136 = (v129 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v137 = v117 + v31 + v115;
  v138 = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v139 = 0xFFFFFFFF00000001 * v129;
  v140 = 0xFFFFFFFF * v129;
  v141 = (__PAIR128__(0xFFFFFFFFLL, -1) * v129) >> 64;
  v142 = v106 + __CFADD__(-v129, v129) + v130;
  v31 = __CFADD__(__CFADD__(__CFADD__(-v129, v129), v131) | __CFADD__(v141, __CFADD__(-v129, v129) + v131), v132);
  v143 = (__CFADD__(__CFADD__(-v129, v129), v131) | __CFADD__(v141, __CFADD__(-v129, v129) + v131)) + v132;
  v144 = v31;
  v31 = __CFADD__(v136, v140);
  v145 = v136 + v140;
  v146 = (v129 * 0xFFFFFFFF00000001) >> 64;
  v147 = (v129 * 0xFFFFFFFFuLL) >> 64;
  v149 = v31;
  v31 = __CFADD__(v31, v143);
  v148 = v149 + v143;
  v31 |= __CFADD__(v147, v148);
  v148 += v147;
  v151 = v31 + v139;
  v31 = __CFADD__(v31, v139) | __CFADD__(v144, v151);
  v150 = v144 + v151;
  v152 = v31;
  v31 = __CFADD__(v150, v134);
  v153 = v150 + v134;
  v154 = v152 + v31 + v146;
  if (__CFADD__(v31, v146) | __CFADD__(v152, v31 + v146))
  {
    v155 = 1;
  }

  else
  {
    v155 = 0;
  }

  v156 = __CFADD__(v154, v137);
  v157 = v154 + v137;
  if (v156)
  {
    ++v155;
  }

  v158 = v142 + v145;
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), v138);
  if (v156)
  {
    v159 = v155 + 1;
  }

  else
  {
    v159 = v155;
  }

  v161 = v148 - (1 - __CFADD__(v158, 1));
  v160 = (v148 - __PAIR128__(v140, (1 - __CFADD__(v158, 1)))) >> 64;
  v162 = v157 - __PAIR128__(v137, -((v153 - __PAIR128__(v160, (1 - (__CFADD__(v161, 0xFFFFFFFF00000001) + v160)))) >> 64));
  if (1 - (__CFADD__(v162, 0xFFFFFFFFLL) + BYTE8(v162)) + (v159 < (1 - (__CFADD__(v162, 0xFFFFFFFFLL) + BYTE8(v162)))))
  {
    v163 = 0;
  }

  else
  {
    v163 = -1;
  }

  if (1 - (__CFADD__(v162, 0xFFFFFFFFLL) + BYTE8(v162)) + (v159 < (1 - (__CFADD__(v162, 0xFFFFFFFFLL) + BYTE8(v162)))))
  {
    v164 = -1;
  }

  else
  {
    v164 = 0;
  }

  *result = v163 & (v158 + 1) | v164 & v158;
  result[1] = v163 & (v161 - 0xFFFFFFFF) | v164 & v148;
  result[2] = v163 & (v153 - (1 - (__CFADD__(v161, 0xFFFFFFFF00000001) + v160))) | v164 & v153;
  result[3] = v163 & (v162 + 0xFFFFFFFF) | v164 & v157;
  return result;
}

uint64_t *sub_23944DC28(uint64_t *result, unint64_t *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v5 = *a2;
  v4 = a2[1];
  v6 = (*a2 * v2) >> 64;
  v7 = *a2 * v2;
  v8 = (*a2 * v3) >> 64;
  v9 = *a2 * v3;
  v10 = (v5 * v4) >> 64;
  v11 = v5 * v4;
  v12 = v5 * v5;
  v13 = (v5 * v5) >> 64;
  v14 = (__PAIR128__(v4, v5) * v5) >> 64;
  v15 = v10 + __CFADD__(v13, v5 * v4) + v9;
  v16 = v8 + (__CFADD__(__CFADD__(v13, v5 * v4), v9) | __CFADD__(v10, __CFADD__(v13, v5 * v4) + v9)) + v7;
  if (__CFADD__(__CFADD__(__CFADD__(v13, v5 * v4), v9) | __CFADD__(v10, __CFADD__(v13, v5 * v4) + v9), v7) | __CFADD__(v8, (__CFADD__(__CFADD__(v13, v5 * v4), v9) | __CFADD__(v10, __CFADD__(v13, v5 * v4) + v9)) + v7))
  {
    v17 = v6 + 1;
  }

  else
  {
    v17 = v6;
  }

  v18 = (v12 * 0xFFFFFFFF00000001) >> 64;
  v19 = 0xFFFFFFFFLL * v12;
  v20 = (v12 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v21 = -(v5 * v5);
  v22 = v11 + __CFADD__(v21, v12) + v13;
  v23 = (__CFADD__(__CFADD__(v21, v12), v14) | __CFADD__((__PAIR128__(0xFFFFFFFFLL, -1) * v12) >> 64, __CFADD__(v21, v12) + v14)) + v15;
  v24 = __CFADD__(__CFADD__(__CFADD__(v21, v12), v14) | __CFADD__((__PAIR128__(0xFFFFFFFFLL, -1) * v12) >> 64, __CFADD__(v21, v12) + v14), v15);
  v72 = __CFADD__(v16, 0xFFFFFFFF00000001 * v12);
  v25 = v16 - 0xFFFFFFFFLL * v12;
  v26 = v72;
  v72 = __CFADD__(v18, v17);
  v27 = v18 + v17;
  v28 = v72;
  v29 = (v2 * v4) >> 64;
  v30 = v2 * v4;
  v31 = (v3 * v4) >> 64;
  v32 = v3 * v4;
  v33 = v4 * v4;
  v34 = __PAIR128__(v3 * v4, v10) + v4 * v4;
  v36 = __CFADD__(__CFADD__(v10, v4 * v4), v3 * v4) | __CFADD__((v4 * v4) >> 64, __CFADD__(v10, v4 * v4) + v3 * v4);
  v35 = v31 + v36 + v2 * v4;
  if (__CFADD__(v36, v2 * v4) | __CFADD__(v31, v36 + v2 * v4))
  {
    v37 = v29 + 1;
  }

  else
  {
    v37 = (v2 * v4) >> 64;
  }

  v72 = __CFADD__(v20, v19);
  v38 = (v12 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v39 = 0xFFFFFFFFLL * v12;
  v40 = (v12 * 0xFFFFFFFFuLL) >> 64;
  v41 = v22 + v20 + v19;
  v72 = __CFADD__(v72, v23) | __CFADD__(v40, (__PAIR128__(v23, v38) + v39) >> 64);
  v42 = v40 + ((__PAIR128__(v23, v38) + v39) >> 64);
  v44 = v72;
  v72 = __CFADD__(v72, v25);
  v43 = v44 + v25;
  v72 |= __CFADD__(v24, v43);
  v43 += v24;
  v46 = v72;
  v72 = __CFADD__(v72, v27);
  v45 = v46 + v27;
  v72 |= __CFADD__(v26, v45);
  v45 += v26;
  v48 = v72;
  v72 = __CFADD__(v72, v37);
  v47 = v48 + v37;
  v72 |= __CFADD__(v28, v47);
  v47 += v28;
  v49 = v72;
  v50 = __PAIR128__(v10, v41) + __PAIR128__(v33, v11);
  v51 = ((__PAIR128__(v10, v41) + __PAIR128__(v33, v11)) >> 64) + v42;
  v53 = (__CFADD__(__CFADD__(v41, v11), v34) | __CFADD__(v42, __CFADD__(v41, v11) + v34)) + *(&v34 + 1);
  v72 = __CFADD__(__CFADD__(__CFADD__(v41, v11), v34) | __CFADD__(v42, __CFADD__(v41, v11) + v34), *(&v34 + 1)) | __CFADD__(v43, v53);
  v52 = v43 + v53;
  v55 = v72;
  v72 = __CFADD__(v72, v35);
  v54 = v55 + v35;
  v72 |= __CFADD__(v45, v54);
  v54 += v45;
  v56 = v72 + v47;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v58 = 0xFFFFFFFF00000001 * (v41 + v11);
  v59 = (__PAIR128__(0xFFFFFFFFLL, -1) * (v41 + v11)) >> 64;
  v60 = v42 + __CFADD__(-v50, v50) + *(&v50 + 1);
  v61 = (__CFADD__(__CFADD__(-v50, v50), v51) | __CFADD__(v59, __CFADD__(-v50, v50) + v51)) + v52;
  v62 = __CFADD__(__CFADD__(__CFADD__(-v50, v50), v51) | __CFADD__(v59, __CFADD__(-v50, v50) + v51), v52);
  v63 = (v50 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v64 = (v50 * 0xFFFFFFFF00000001) >> 64;
  v65 = (v50 * 0xFFFFFFFFuLL) >> 64;
  v72 = __CFADD__(__CFADD__(v63, 0xFFFFFFFF * v50), v61) | __CFADD__(v65, (__PAIR128__(v61, v63) + (0xFFFFFFFF * v50)) >> 64);
  v66 = v65 + ((__PAIR128__(v61, v63) + (0xFFFFFFFF * v50)) >> 64);
  v67 = v62 + v72 + v58;
  if (__CFADD__(v72, v58) | __CFADD__(v62, v72 + v58))
  {
    v68 = 1;
  }

  else
  {
    v68 = 0;
  }

  v72 = __CFADD__(v67, v54);
  v69 = v67 + v54;
  v70 = v68 + v72 + v64;
  if (__CFADD__(v72, v64) | __CFADD__(v68, v72 + v64))
  {
    v71 = 1;
  }

  else
  {
    v71 = 0;
  }

  v72 = __CFADD__(v70, v56);
  v73 = v70 + v56;
  if (v72)
  {
    v74 = v71 + 1;
  }

  else
  {
    v74 = v71;
  }

  v75 = v60 + v63 + 0xFFFFFFFF * v50;
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), StatusReg);
  v76 = v49 + v72 + v74;
  v77 = (v2 * v3) >> 64;
  v78 = v2 * v3;
  v79 = (v3 * v3) >> 64;
  v80 = v3 * v3;
  v81 = v8 + v32;
  v72 = __CFADD__(__CFADD__(v8, v32), v80);
  v82 = __CFADD__(v8, v32) + v80;
  v72 |= __CFADD__(v31, v82);
  v82 += v31;
  v83 = v79 + v72 + v78;
  if (__CFADD__(v72, v78) | __CFADD__(v79, v72 + v78))
  {
    v84 = v77 + 1;
  }

  else
  {
    v84 = v77;
  }

  v85 = __PAIR128__(v8, v75) + __PAIR128__(v32, v9);
  v86 = ((__PAIR128__(v8, v75) + __PAIR128__(v32, v9)) >> 64) + v66;
  v88 = (__CFADD__(__CFADD__(v75, v9), v81) | __CFADD__(v66, __CFADD__(v75, v9) + v81)) + v82;
  v72 = __CFADD__(__CFADD__(__CFADD__(v75, v9), v81) | __CFADD__(v66, __CFADD__(v75, v9) + v81), v82) | __CFADD__(v69, v88);
  v87 = v69 + v88;
  v90 = v72 + v83;
  v72 = __CFADD__(v72, v83) | __CFADD__(v73, v90);
  v89 = v73 + v90;
  v91 = (v85 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
  v92 = v84 + v72 + v76;
  v93 = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v94 = 0xFFFFFFFF * v85;
  v95 = (__PAIR128__(0xFFFFFFFFLL, -1) * v85) >> 64;
  v72 = __CFADD__(__CFADD__(__CFADD__(-v85, v85), v86) | __CFADD__(v95, __CFADD__(-v85, v85) + v86), v87);
  v96 = (__CFADD__(__CFADD__(-v85, v85), v86) | __CFADD__(v95, __CFADD__(-v85, v85) + v86)) + v87;
  v97 = v72;
  v72 = __CFADD__(v91, v94);
  v98 = v91 + v94;
  v99 = (v85 * 0xFFFFFFFF00000001) >> 64;
  v100 = (v85 * 0xFFFFFFFFuLL) >> 64;
  v102 = v72;
  v72 = __CFADD__(v72, v96);
  v101 = v102 + v96;
  v72 |= __CFADD__(v100, v101);
  v101 += v100;
  v103 = v97 + v72 - 0xFFFFFFFF * v85;
  if (__CFADD__(v72, 0xFFFFFFFF00000001 * v85) | __CFADD__(v97, v72 - 0xFFFFFFFF * v85))
  {
    v104 = 1;
  }

  else
  {
    v104 = 0;
  }

  v72 = __CFADD__(v103, v89);
  v105 = v103 + v89;
  v106 = v104 + v72 + v99;
  if (__CFADD__(v72, v99) | __CFADD__(v104, v72 + v99))
  {
    v107 = 1;
  }

  else
  {
    v107 = 0;
  }

  v108 = __CFADD__(v106, v92);
  v109 = v106 + v92;
  if (v108)
  {
    ++v107;
  }

  v110 = v66 + __CFADD__(-v85, v85) + *(&v85 + 1) + v98;
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), v93);
  if (v108)
  {
    v111 = v107 + 1;
  }

  else
  {
    v111 = v107;
  }

  v112 = (v2 * v2) >> 64;
  v113 = v2 * v2;
  v114 = v6 + v30;
  v72 = __CFADD__(__CFADD__(v6, v30), v78) | __CFADD__(v29, __CFADD__(v6, v30) + v78);
  v115 = v29 + __CFADD__(v6, v30) + v78;
  v117 = v72;
  v72 = __CFADD__(v72, v113);
  v116 = v117 + v113;
  v72 |= __CFADD__(v77, v116);
  v116 += v77;
  if (v72)
  {
    ++v112;
  }

  v118 = __PAIR128__(v6, v110) + __PAIR128__(v30, v7);
  v119 = ((__PAIR128__(v6, v110) + __PAIR128__(v30, v7)) >> 64) + v101;
  v121 = (__CFADD__(__CFADD__(v110, v7), v114) | __CFADD__(v101, __CFADD__(v110, v7) + v114)) + v115;
  v72 = __CFADD__(__CFADD__(__CFADD__(v110, v7), v114) | __CFADD__(v101, __CFADD__(v110, v7) + v114), v115) | __CFADD__(v105, v121);
  v120 = v105 + v121;
  v123 = v72;
  v72 = __CFADD__(v72, v116);
  v122 = v123 + v116;
  v72 |= __CFADD__(v109, v122);
  v122 += v109;
  v124 = v112 + v72 + v111;
  v125 = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v126 = v101 + __CFADD__(-v118, v118) + *(&v118 + 1);
  v127 = (__CFADD__(__CFADD__(-v118, v118), v119) | __CFADD__((__PAIR128__(0xFFFFFFFFLL, -1) * v118) >> 64, __CFADD__(-v118, v118) + v119)) + v120;
  v128 = (v118 * 0xFFFFFFFF00000001) >> 64;
  v129 = (v118 * 0xFFFFFFFFuLL) >> 64;
  v72 = __CFADD__(__CFADD__((v118 * 0xFFFFFFFFFFFFFFFFLL) >> 64, 0xFFFFFFFF * v118), v127);
  v130 = __CFADD__((v118 * 0xFFFFFFFFFFFFFFFFLL) >> 64, 0xFFFFFFFF * v118) + v127;
  v72 |= __CFADD__(v129, v130);
  v130 += v129;
  v132 = v72 - 0xFFFFFFFF * v118;
  v131 = *(&v118 + 1) + v132;
  if (__CFADD__(v72, 0xFFFFFFFF00000001 * v118) | __CFADD__(*(&v118 + 1), v132))
  {
    v133 = 1;
  }

  else
  {
    v133 = 0;
  }

  v135 = v131 + v122;
  v72 = __CFADD__(__CFADD__(v131, v122), v128) | __CFADD__(v133, (__PAIR128__(v128, v131) + v122) >> 64);
  v134 = v133 + ((__PAIR128__(v128, v131) + v122) >> 64);
  v136 = v72;
  v137 = __CFADD__(v134, v124);
  v138 = v134 + v124;
  if (v137)
  {
    ++v136;
  }

  v139 = v126 + ((__PAIR128__(0xFFFFFFFFLL, -1) * v118) >> 64);
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), v125);
  if (v137)
  {
    ++v136;
  }

  v140 = v130 - __PAIR128__(0xFFFFFFFFLL * v118, (1 - __CFADD__(v139, 1)));
  v141 = v138 - -((v135 - __PAIR128__(v124, (1 - (__CFADD__(v140, 0xFFFFFFFF00000001) + BYTE8(v140))))) >> 64);
  v142 = -(v136 + (v136 < (1 - (__CFADD__(v141, 0xFFFFFFFFLL) + ((v138 - __PAIR128__(v125, -((v135 - __PAIR128__(v124, (1 - (__CFADD__(v140, 0xFFFFFFFF00000001) + BYTE8(v140))))) >> 64))) >> 64)))));
  v143 = v142 == 0;
  if (v142)
  {
    v144 = 0;
  }

  else
  {
    v144 = -1;
  }

  if (v143)
  {
    v145 = 0;
  }

  else
  {
    v145 = -1;
  }

  *result = v144 & (v139 + 1) | v145 & v139;
  result[1] = v144 & (v140 - 0xFFFFFFFF) | v145 & v130;
  result[2] = v144 & (v135 - (1 - (__CFADD__(v140, 0xFFFFFFFF00000001) + BYTE8(v140)))) | v145 & v135;
  result[3] = v144 & (v141 + 0xFFFFFFFF) | v145 & v138;
  return result;
}

void sub_23944DF84(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, unint64_t *a5, unint64_t *a6, int a7, unint64_t *a8, unint64_t *a9, unint64_t *a10)
{
  v222 = *MEMORY[0x277D85DE8];
  v218 = 0u;
  v219 = 0u;
  v12 = *a6;
  v13 = a6[1];
  v14 = a6[2];
  v15 = a6[3];
  v186 = v13 | *a6 | v14 | v15;
  v16 = *a10;
  v17 = a10[1];
  v19 = a10[2];
  v18 = a10[3];
  v188 = v17 | *a10 | v19 | v18;
  v214 = 0u;
  v215 = 0u;
  sub_23944DC28(&v214, a6);
  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v208 = 0u;
  v209 = 0u;
  if (a7)
  {
    v22 = a4;
    v23 = *(a4 + 1);
    *(&v25 + 1) = v13;
    *&v25 = v12;
    v24 = v25 >> 63;
    v212 = *a4;
    v213 = v23;
    *(&v25 + 1) = v14;
    *&v25 = v13;
    v26 = v25 >> 63;
    *(&v25 + 1) = v15;
    *&v25 = v14;
    v27 = v25 >> 63;
    v28 = v27 - __PAIR128__(v21, -((v26 - __PAIR128__(v20, (1 - __CFADD__(v24, 0xFFFFFFFF00000000)))) >> 64));
    if ((v15 < 0) + (v15 >> 63 < (1 - (__CFADD__(v28, 0xFFFFFFFFLL) + BYTE8(v28)))))
    {
      v29 = 0;
    }

    else
    {
      v29 = -1;
    }

    if ((v15 < 0) + (v15 >> 63 < (1 - (__CFADD__(v28, 0xFFFFFFFFLL) + BYTE8(v28)))))
    {
      v30 = -1;
    }

    else
    {
      v30 = 0;
    }

    *&v208 = v29 & ((2 * v12) | 1) | v30 & (2 * v12);
    *(&v208 + 1) = v29 & (v24 - 0x100000000) | v30 & v24;
    *&v209 = v29 & (v26 - (1 - __CFADD__(v24, 0xFFFFFFFF00000000))) | v30 & v26;
    *(&v209 + 1) = v29 & (v28 + 0xFFFFFFFF) | v30 & v27;
    v31 = a10;
    v32 = a5;
    v33 = *(a5 + 1);
    v210 = *a5;
    v211 = v33;
  }

  else
  {
    v220 = 0uLL;
    v221 = 0uLL;
    sub_23944DC28(&v220, a10);
    v34 = sub_23944D88C(&v212, a4, &v220);
    v36 = v16 + v12;
    v37 = v13 + __CFADD__(v16, v12) + v17;
    v38 = v14 + (__CFADD__(__CFADD__(v16, v12), v17) | __CFADD__(v13, __CFADD__(v16, v12) + v17)) + v19;
    v39 = v15 + (__CFADD__(__CFADD__(__CFADD__(v16, v12), v17) | __CFADD__(v13, __CFADD__(v16, v12) + v17), v19) | __CFADD__(v14, (__CFADD__(__CFADD__(v16, v12), v17) | __CFADD__(v13, __CFADD__(v16, v12) + v17)) + v19)) + v18;
    if (__CFADD__(__CFADD__(__CFADD__(__CFADD__(v16, v12), v17) | __CFADD__(v13, __CFADD__(v16, v12) + v17), v19) | __CFADD__(v14, (__CFADD__(__CFADD__(v16, v12), v17) | __CFADD__(v13, __CFADD__(v16, v12) + v17)) + v19), v18) | __CFADD__(v15, (__CFADD__(__CFADD__(__CFADD__(v16, v12), v17) | __CFADD__(v13, __CFADD__(v16, v12) + v17), v19) | __CFADD__(v14, (__CFADD__(__CFADD__(v16, v12), v17) | __CFADD__(v13, __CFADD__(v16, v12) + v17)) + v19)) + v18))
    {
      v40 = 1;
    }

    else
    {
      v40 = 0;
    }

    v41 = v37 - __PAIR128__(v35, (1 - __CFADD__(v36, 1)));
    v42 = v39 - __PAIR128__(v34, -((v38 - __PAIR128__(0xFFFFFFFF00000001, (1 - (__CFADD__(v41, 0xFFFFFFFF00000001) + BYTE8(v41))))) >> 64));
    v43 = -(v40 + (v40 < (1 - (__CFADD__(v42, 0xFFFFFFFFLL) + BYTE8(v42)))));
    v44 = v43 == 0;
    if (v43)
    {
      v45 = 0;
    }

    else
    {
      v45 = -1;
    }

    if (v44)
    {
      v46 = 0;
    }

    else
    {
      v46 = -1;
    }

    *&v208 = v45 & (v36 + 1) | v46 & v36;
    *(&v208 + 1) = v45 & (v41 - 0xFFFFFFFF) | v46 & v37;
    *&v209 = v45 & (v38 - (1 - (__CFADD__(v41, 0xFFFFFFFF00000001) + BYTE8(v41)))) | v46 & v38;
    *(&v209 + 1) = v45 & (v42 + 0xFFFFFFFF) | v46 & v39;
    sub_23944DC28(&v208, &v208);
    v47 = v208 - v214;
    v48 = *(&v214 + 1) + -((v208 - __PAIR128__(v214, v214)) >> 64);
    v49 = *(&v208 + 1) - v48;
    v56 = __CFADD__(v215, -((*(&v208 + 1) - __PAIR128__(v48, v48)) >> 64));
    v50 = v215 + -((*(&v208 + 1) - __PAIR128__(v48, v48)) >> 64);
    v51 = v56;
    v52 = v209 - v50;
    v56 = __CFADD__(*(&v215 + 1), -((v209 - __PAIR128__(v51, v50)) >> 64));
    v53 = *(&v215 + 1) + -((v209 - __PAIR128__(v51, v50)) >> 64);
    v54 = v56;
    v55 = *(&v209 + 1) - __PAIR128__(v54, v53);
    v56 = __CFADD__(__CFADD__(v47, *(&v55 + 1)), v49) | __CFADD__(DWORD2(v55), __CFADD__(v47, *(&v55 + 1)) + v49);
    v57 = DWORD2(v55) + __CFADD__(v47, *(&v55 + 1)) + v49;
    v58 = v55 + __CFADD__(v56, v52) + (*(&v55 + 1) & 0xFFFFFFFF00000001);
    v60 = ((v47 + *(&v55 + 1)) - __PAIR128__(v220, v220)) >> 64;
    v59 = v47 + *(&v55 + 1) - v220;
    v61 = v57 - __PAIR128__(*(&v220 + 1) + -v60, *(&v220 + 1) + -v60);
    v62 = (v56 + v52 - __PAIR128__(v221 + -BYTE8(v61), v221 + -BYTE8(v61))) >> 64;
    if (((v58 - __PAIR128__(*(&v221 + 1) + -v62, *(&v221 + 1) + -v62)) >> 64))
    {
      v63 = -1;
    }

    else
    {
      v63 = 0;
    }

    v64 = __CFADD__(v59, v63) + v61;
    *&v208 = v59 + v63;
    *(&v208 + 1) = v63 + v64;
    v209 = __PAIR128__(v63 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v59, v63), v61) | __CFADD__(v63, v64)) + __PAIR128__(v58 - (*(&v221 + 1) + -((v56 + v52 - __PAIR128__(v221 + -BYTE8(v61), v221 + -BYTE8(v61))) >> 64)), v56 + v52 - (v221 + -BYTE8(v61)));
    sub_23944D88C(&v210, a10, &v220);
    v32 = a5;
    sub_23944D88C(&v210, &v210, a5);
    v22 = a4;
    v31 = a10;
  }

  v216 = 0u;
  v217 = 0u;
  v206 = 0u;
  v207 = 0u;
  sub_23944D88C(&v206, a8, &v214);
  v65 = v206 - v212;
  v66 = *(&v212 + 1) + -((v206 - __PAIR128__(v212, v212)) >> 64);
  v67 = *(&v206 + 1) - v66;
  v56 = __CFADD__(v213, -((*(&v206 + 1) - __PAIR128__(v66, v66)) >> 64));
  v68 = v213 + -((*(&v206 + 1) - __PAIR128__(v66, v66)) >> 64);
  v69 = v56;
  v71 = v207 - v68;
  v70 = (v207 - __PAIR128__(v69, v68)) >> 64;
  v56 = __CFADD__(*(&v213 + 1), -v70);
  v72 = *(&v213 + 1) + -v70;
  v73 = v56;
  v74 = *(&v207 + 1) - v72;
  if (((*(&v207 + 1) - __PAIR128__(v73, v72)) >> 64))
  {
    v75 = -1;
  }

  else
  {
    v75 = 0;
  }

  v76 = v65 + v75;
  v77 = v75 + __CFADD__(v65, v75) + v67;
  v204[0] = v65 + v75;
  v204[1] = v77;
  v78 = __PAIR128__(v75 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v65, v75), v67) | __CFADD__(v75, __CFADD__(v65, v75) + v67)) + __PAIR128__(v74, v71);
  v205 = __PAIR128__(v75 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v65, v75), v67) | __CFADD__(v75, __CFADD__(v65, v75) + v67)) + __PAIR128__(v74, v71);
  sub_23944D88C(v216.i64, v204, &v208);
  memset(v203, 0, sizeof(v203));
  sub_23944D88C(v203, a6, &v214);
  v201 = 0u;
  v202 = 0u;
  v79 = sub_23944D88C(&v201, a9, v203);
  v81 = v201 - v210;
  v82 = *(&v210 + 1) + -((v201 - __PAIR128__(v210, v210)) >> 64);
  v83 = *(&v201 + 1) - v82;
  v56 = __CFADD__(v211, -((*(&v201 + 1) - __PAIR128__(v82, v82)) >> 64));
  v84 = v211 + -((*(&v201 + 1) - __PAIR128__(v82, v82)) >> 64);
  v85 = v56;
  v87 = v202 - v84;
  v86 = (v202 - __PAIR128__(v85, v84)) >> 64;
  v56 = __CFADD__(*(&v211 + 1), -v86);
  v88 = *(&v211 + 1) + -v86;
  v89 = v56;
  if (((*(&v202 + 1) - __PAIR128__(v89, v88)) >> 64))
  {
    v90 = -1;
  }

  else
  {
    v90 = 0;
  }

  v91 = v81 + v90;
  v92 = __CFADD__(v81, v90) + v83;
  v93 = __PAIR128__(v90 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v81, v90), v83) | __CFADD__(v90, v92)) + __PAIR128__(*(&v202 + 1) - v88, v87);
  *(&v95 + 1) = v90 + v92;
  *&v95 = v81 + v90;
  v94 = v95 >> 63;
  *(&v95 + 1) = (__CFADD__(__CFADD__(v81, v90), v83) | __CFADD__(v90, v92)) + v87;
  *&v95 = v90 + v92;
  v96 = v95 >> 63;
  v97 = v93 >> 63;
  v98 = v94 - 0x100000000;
  v99 = v96 - (1 - __CFADD__(v94, 0xFFFFFFFF00000000));
  v100 = v97 - __PAIR128__(v80, -((v96 - __PAIR128__(v79, (1 - __CFADD__(v94, 0xFFFFFFFF00000000)))) >> 64));
  if ((v93 < 0) + (*(&v93 + 1) >> 63 < (1 - (__CFADD__(v100, 0xFFFFFFFFLL) + BYTE8(v100)))))
  {
    v101 = 0;
  }

  else
  {
    v101 = -1;
  }

  v197 = v101 & ((2 * v91) | 1) | *(&v100 + 1) & (2 * v91);
  v198 = v101 & v98 | *(&v100 + 1) & v94;
  v199 = v101 & v99 | *(&v100 + 1) & v96;
  v200 = v101 & (v100 + 0xFFFFFFFF) | *(&v100 + 1) & v97;
  v102 = v77 | v76 | v78 | *(&v78 + 1) | v198 | v197 | v199 | v200;
  if (((v188 | -v188) & (v186 | -v186) & ~v102 & (v102 - 1) & 0x8000000000000000) == 0)
  {
    *(&v105 + 1) = v77;
    *&v105 = v76;
    v104 = v105 >> 63;
    v220 = 0u;
    v221 = 0u;
    *(&v105 + 1) = v78;
    *&v105 = v77;
    v106 = v105 >> 63;
    v107 = v78 >> 63;
    v108 = v107 - __PAIR128__(v99, -((v106 - __PAIR128__(v98, (1 - __CFADD__(v104, 0xFFFFFFFF00000000)))) >> 64));
    if (1 - (__CFADD__(v108, 0xFFFFFFFFLL) + BYTE8(v108)) + (*(&v78 + 1) >> 63 < (1 - (__CFADD__(v108, 0xFFFFFFFFLL) + BYTE8(v108)))))
    {
      v109 = 0;
    }

    else
    {
      v109 = -1;
    }

    if (1 - (__CFADD__(v108, 0xFFFFFFFFLL) + BYTE8(v108)) + (*(&v78 + 1) >> 63 < (1 - (__CFADD__(v108, 0xFFFFFFFFLL) + BYTE8(v108)))))
    {
      v110 = -1;
    }

    else
    {
      v110 = 0;
    }

    v196[0] = v109 & ((2 * v76) | 1) | v110 & (2 * v76);
    v196[1] = v109 & (v104 - 0x100000000) | v110 & v104;
    v196[2] = v109 & (v106 - (1 - __CFADD__(v104, 0xFFFFFFFF00000000))) | v110 & v106;
    v196[3] = v109 & (v108 + 0xFFFFFFFF) | v110 & v107;
    sub_23944DC28(v196, v196);
    v194 = 0u;
    v195 = 0u;
    sub_23944D88C(&v194, v204, v196);
    v192 = 0u;
    v193 = 0u;
    sub_23944D88C(&v192, &v212, v196);
    sub_23944DC28(&v220, &v197);
    v111 = v220 - v194;
    v112 = *(&v194 + 1) + -((v220 - __PAIR128__(v194, v194)) >> 64);
    v113 = *(&v220 + 1) - v112;
    v56 = __CFADD__(v195, -((*(&v220 + 1) - __PAIR128__(v112, v112)) >> 64));
    v114 = v195 + -((*(&v220 + 1) - __PAIR128__(v112, v112)) >> 64);
    v115 = v56;
    v117 = v221 - v114;
    v116 = (v221 - __PAIR128__(v115, v114)) >> 64;
    v56 = __CFADD__(*(&v195 + 1), -v116);
    v118 = *(&v195 + 1) + -v116;
    v119 = v56;
    if (((*(&v221 + 1) - __PAIR128__(v119, v118)) >> 64))
    {
      v120 = -1;
    }

    else
    {
      v120 = 0;
    }

    v121 = v111 + v120 - v192;
    v122 = v120 + __CFADD__(v111, v120) + v113 - __PAIR128__(*(&v192 + 1) + -(((v111 + v120) - __PAIR128__(v117, v192)) >> 64), *(&v192 + 1) + -(((v111 + v120) - __PAIR128__(v117, v192)) >> 64));
    v124 = ((__CFADD__(__CFADD__(v111, v120), v113) | __CFADD__(v120, __CFADD__(v111, v120) + v113)) + v117 - __PAIR128__(v193 + -BYTE8(v122), v193 + -BYTE8(v122))) >> 64;
    v123 = (__CFADD__(__CFADD__(v111, v120), v113) | __CFADD__(v120, __CFADD__(v111, v120) + v113)) + v117 - (v193 + -BYTE8(v122));
    v125 = ((__PAIR128__(v120 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v111, v120), v113) | __CFADD__(v120, __CFADD__(v111, v120) + v113)) + __PAIR128__(*(&v221 + 1) - v118, v117)) >> 64) - __PAIR128__(*(&v193 + 1) + -v124, *(&v193 + 1) + -v124);
    v126 = v125 + __CFADD__(__CFADD__(__CFADD__(v121, *(&v125 + 1)), v122) | __CFADD__(DWORD2(v125), __CFADD__(v121, *(&v125 + 1)) + v122), v123) + (*(&v125 + 1) & 0xFFFFFFFF00000001);
    LOBYTE(v124) = ((v121 + *(&v125 + 1)) - __PAIR128__(*(&v125 + 1) & 0xFFFFFFFF00000001, v192)) >> 64;
    v127 = v121 + *(&v125 + 1) - v192;
    v128 = DWORD2(v125) + __CFADD__(v121, *(&v125 + 1)) + v122 - (*(&v192 + 1) + -(((v121 + *(&v125 + 1)) - __PAIR128__(*(&v125 + 1) & 0xFFFFFFFF00000001, v192)) >> 64));
    LOBYTE(v124) = (DWORD2(v125) + __CFADD__(v121, *(&v125 + 1)) + v122 - __PAIR128__(*(&v192 + 1) + -v124, *(&v192 + 1) + -v124)) >> 64;
    v129 = (__CFADD__(__CFADD__(v121, *(&v125 + 1)), v122) | __CFADD__(DWORD2(v125), __CFADD__(v121, *(&v125 + 1)) + v122)) + v123 - (v193 + -v124);
    LOBYTE(v124) = ((__CFADD__(__CFADD__(v121, *(&v125 + 1)), v122) | __CFADD__(DWORD2(v125), __CFADD__(v121, *(&v125 + 1)) + v122)) + v123 - __PAIR128__(v193 + -v124, v193 + -v124)) >> 64;
    v130 = v126 - (*(&v193 + 1) + -v124);
    if (((v126 - __PAIR128__(*(&v193 + 1) + -v124, *(&v193 + 1) + -v124)) >> 64))
    {
      v131 = -1;
    }

    else
    {
      v131 = 0;
    }

    v132 = v127 + v131;
    v183 = (__CFADD__(__CFADD__(v127, v131), v128) | __CFADD__(v131, __CFADD__(v127, v131) + v128)) + v129;
    v185 = v131 + __CFADD__(v127, v131) + v128;
    v133 = __PAIR128__(v131 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v127, v131), v128) | __CFADD__(v131, __CFADD__(v127, v131) + v128)) + __PAIR128__(v130, v129);
    v179 = (__PAIR128__(v131 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v127, v131), v128) | __CFADD__(v131, __CFADD__(v127, v131) + v128)) + __PAIR128__(v130, v129)) >> 64;
    v135 = v192 - (v127 + v131);
    v134 = (v192 - __PAIR128__(v130, v127 + v131)) >> 64;
    v136 = *(&v192 + 1) - __PAIR128__(v185 + -v134, v185 + -v134);
    v137 = (v193 - __PAIR128__(v133 + -BYTE8(v136), v133 + -BYTE8(v136))) >> 64;
    if (((*(&v193 + 1) - __PAIR128__(*(&v133 + 1) + -v137, *(&v133 + 1) + -v137)) >> 64))
    {
      v138 = -1;
    }

    else
    {
      v138 = 0;
    }

    v139 = __CFADD__(v135, v138) + v136;
    *&v218 = v135 + v138;
    *(&v218 + 1) = v138 + v139;
    v219 = __PAIR128__(v138 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v135, v138), v136) | __CFADD__(v138, v139)) + __PAIR128__(*(&v193 + 1) - (*(&v133 + 1) + -((v193 - __PAIR128__(v133 + -BYTE8(v136), v133 + -BYTE8(v136))) >> 64)), v193 - (v133 + -BYTE8(v136)));
    sub_23944D88C(&v218, &v218, &v197);
    v190 = 0u;
    v191 = 0u;
    sub_23944D88C(&v190, &v210, &v194);
    v141 = v218 - v190;
    v142 = *(&v218 + 1) - (*(&v190 + 1) + -((v218 - __PAIR128__(v140, v190)) >> 64));
    v56 = __CFADD__(v191, -((*(&v218 + 1) - __PAIR128__(*(&v190 + 1) + -((v218 - __PAIR128__(v140, v190)) >> 64), *(&v190 + 1) + -((v218 - __PAIR128__(v140, v190)) >> 64))) >> 64));
    v143 = v191 + -((*(&v218 + 1) - __PAIR128__(*(&v190 + 1) + -((v218 - __PAIR128__(v140, v190)) >> 64), *(&v190 + 1) + -((v218 - __PAIR128__(v140, v190)) >> 64))) >> 64);
    v144 = v56;
    v145 = v219 - v143;
    v56 = __CFADD__(*(&v191 + 1), -((v219 - __PAIR128__(v144, v143)) >> 64));
    v146 = *(&v191 + 1) + -((v219 - __PAIR128__(v144, v143)) >> 64);
    v147 = v56;
    v148 = *(&v219 + 1) - __PAIR128__(v147, v146);
    v149 = __CFADD__(v141, *(&v148 + 1)) + v142;
    v151 = __CFADD__(__CFADD__(v141, *(&v148 + 1)), v142) | __CFADD__(DWORD2(v148), v149);
    v150 = v151 + v145;
    v152 = v148 + __CFADD__(v151, v145) + (*(&v148 + 1) & 0xFFFFFFFF00000001);
    v153 = v141 + *(&v148 + 1) - v190;
    v154 = DWORD2(v148) + v149 - (*(&v190 + 1) + -(((v141 + *(&v148 + 1)) - __PAIR128__(v190, v190)) >> 64));
    v56 = __CFADD__(v191, -((DWORD2(v148) + v149 - __PAIR128__(DWORD2(v148) + v149, *(&v190 + 1) + -(((v141 + *(&v148 + 1)) - __PAIR128__(v190, v190)) >> 64))) >> 64));
    v155 = v191 + -((DWORD2(v148) + v149 - __PAIR128__(DWORD2(v148) + v149, *(&v190 + 1) + -(((v141 + *(&v148 + 1)) - __PAIR128__(v190, v190)) >> 64))) >> 64);
    v156 = v56;
    v158 = v150 - v155;
    v157 = (v150 - __PAIR128__(v156, v155)) >> 64;
    v56 = __CFADD__(*(&v191 + 1), -v157);
    v159 = *(&v191 + 1) + -v157;
    v160 = v56;
    if (((v152 - __PAIR128__(v160, v159)) >> 64))
    {
      v161 = -1;
    }

    else
    {
      v161 = 0;
    }

    v162 = v153 + v161;
    v163 = v161 + __CFADD__(v153, v161) + v154;
    v164 = __PAIR128__(v161 & 0xFFFFFFFF00000001, __CFADD__(__CFADD__(v153, v161), v154) | __CFADD__(v161, __CFADD__(v153, v161) + v154)) + __PAIR128__(v152 - v159, v158);
    if (v186)
    {
      v165 = 0;
    }

    else
    {
      v165 = -1;
    }

    v166 = v22;
    if (v186)
    {
      v167 = -1;
    }

    else
    {
      v167 = 0;
    }

    v168 = a8[1] & v165 | v167 & v185;
    v169 = a8[2] & v165 | v167 & v183;
    v170 = a8[3] & v165;
    *&v220 = v165 & *a8 | v167 & v132;
    *(&v220 + 1) = v168;
    *&v221 = v169;
    *(&v221 + 1) = v170 | v167 & v179;
    sub_23944F400(a1, v188, v166, &v220);
    v171 = a9[1] & v165 | v167 & v163;
    v172 = a9[2] & v165 | v167 & v164;
    v173 = a9[3] & v165;
    *&v218 = *a9 & v165 | v167 & v162;
    *(&v218 + 1) = v171;
    *&v219 = v172;
    *(&v219 + 1) = v173 | *(&v164 + 1) & v167;
    sub_23944F400(a2, v188, v32, &v218);
    v174 = vdupq_n_s64(v167);
    v175 = vdupq_n_s64(v165);
    v176 = vorrq_s8(vandq_s8(v216, v174), vandq_s8(*v31, v175));
    v177 = vorrq_s8(vandq_s8(v217, v174), vandq_s8(v31[1], v175));
    v216 = v176;
    v217 = v177;
    sub_23944F400(a3, v188, a6, &v216);
    v178 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v103 = *MEMORY[0x277D85DE8];

    sub_23944EA54(a1, a2, a3, v22, v32, a6);
  }
}

uint64_t *sub_23944EA54(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  v253 = *MEMORY[0x277D85DE8];
  v251 = 0u;
  v252 = 0u;
  memset(v250, 0, sizeof(v250));
  memset(v249, 0, sizeof(v249));
  memset(v243, 0, sizeof(v243));
  sub_23944DC28(&v251, a6);
  sub_23944DC28(v250, a5);
  sub_23944D88C(v249, a4, v250);
  v12 = *a4;
  v13 = a4[1];
  v14 = v251;
  v16 = *a4 - v251;
  v17 = __CFADD__(*(&v251 + 1), -((*a4 - __PAIR128__(v15, v251)) >> 64));
  v18 = *(&v251 + 1) + -((*a4 - __PAIR128__(v15, v251)) >> 64);
  v19 = v17;
  v20 = v13 - v18;
  v21 = v252;
  v17 = __CFADD__(v252, -((v13 - __PAIR128__(v19, v18)) >> 64));
  v22 = v252 + -((v13 - __PAIR128__(v19, v18)) >> 64);
  v23 = v17;
  v24 = a4[2];
  v25 = a4[3];
  v26 = v24 - v22;
  v17 = __CFADD__(*(&v252 + 1), -((v24 - __PAIR128__(v23, v22)) >> 64));
  v27 = *(&v252 + 1) + -((v24 - __PAIR128__(v23, v22)) >> 64);
  v28 = v17;
  v29 = v25 - __PAIR128__(v28, v27);
  v30 = __CFADD__(v16, *(&v29 + 1)) + v20;
  v31 = __CFADD__(__CFADD__(v16, *(&v29 + 1)), v20) | __CFADD__(DWORD2(v29), v30);
  v245 = v16 + *(&v29 + 1);
  v246 = DWORD2(v29) + v30;
  v247 = v31 + v26;
  v248 = v29 + __CFADD__(v31, v26) + (*(&v29 + 1) & 0xFFFFFFFF00000001);
  v17 = __CFADD__(v251, v12);
  v32 = v251 + v12;
  v34 = v17;
  v17 = __CFADD__(v17, v13);
  v33 = v34 + v13;
  v35 = v17;
  v36 = v252 + v24;
  v37 = __CFADD__(v252, v24);
  v38 = *(&v252 + 1) + v25;
  v39 = __CFADD__(*(&v252 + 1), v25);
  v41 = v33 + *(&v251 + 1);
  v17 = __CFADD__(__CFADD__(v33, *(&v251 + 1)), v36) | __CFADD__(v35, (__PAIR128__(v36, v33) + *(&v251 + 1)) >> 64);
  v40 = v35 + ((__PAIR128__(v36, v33) + *(&v251 + 1)) >> 64);
  v43 = v17 + v38;
  v17 = __CFADD__(v17, v38) | __CFADD__(v37, v43);
  v42 = v37 + v43;
  if (v17)
  {
    v44 = v39 + 1;
  }

  else
  {
    v44 = v39;
  }

  v45 = v41 - __PAIR128__(v25, (1 - __CFADD__(v32, 1)));
  v46 = v42 - -((v40 - __PAIR128__(0xFFFFFFFF00000001, (1 - (__CFADD__(v45, 0xFFFFFFFF00000001) + BYTE8(v45))))) >> 64);
  v47 = -(v44 + (v44 < (1 - (__CFADD__(v46, 0xFFFFFFFFLL) + ((v42 - __PAIR128__(DWORD2(v29), -((v40 - __PAIR128__(0xFFFFFFFF00000001, (1 - (__CFADD__(v45, 0xFFFFFFFF00000001) + BYTE8(v45))))) >> 64))) >> 64)))));
  if (v47)
  {
    v48 = 0;
  }

  else
  {
    v48 = -1;
  }

  if (v47)
  {
    v49 = -1;
  }

  else
  {
    v49 = 0;
  }

  v50 = v48 & (v32 + 1) | v49 & v32;
  v51 = v48 & (v45 - 0xFFFFFFFF) | v49 & v41;
  v52 = v48 & (v40 - (1 - (__CFADD__(v45, 0xFFFFFFFF00000001) + BYTE8(v45)))) | v49 & v40;
  v53 = v48 & (v46 + 0xFFFFFFFF) | v49 & v42;
  *(&v55 + 1) = v51;
  *&v55 = v50;
  v54 = v55 >> 63;
  *(&v55 + 1) = v52;
  *&v55 = v51;
  v56 = v55 >> 63;
  *(&v55 + 1) = v53;
  *&v55 = v52;
  v57 = v55 >> 63;
  v58 = v56 - (1 - __CFADD__(v54, 0xFFFFFFFF00000000));
  v59 = v57 - -((v56 - __PAIR128__(v10, (1 - __CFADD__(v54, 0xFFFFFFFF00000000)))) >> 64);
  v60 = 1 - (__CFADD__(v59, 0xFFFFFFFFLL) + ((v57 - __PAIR128__(v11, -((v56 - __PAIR128__(v10, (1 - __CFADD__(v54, 0xFFFFFFFF00000000)))) >> 64))) >> 64));
  if ((v53 < 0) + (v53 >> 63 < v60))
  {
    v61 = 0;
  }

  else
  {
    v61 = -1;
  }

  if ((v53 < 0) + (v53 >> 63 < v60))
  {
    v62 = -1;
  }

  else
  {
    v62 = 0;
  }

  v63 = v61 & ((2 * v50) | 1) | v62 & (2 * v50);
  v64 = v61 & (v54 - 0x100000000) | v62 & v54;
  v65 = v61 & v58;
  v66 = v61 & v58 | v62 & v56;
  v67 = v61 & (v59 + 0xFFFFFFFF) | v62 & v57;
  v17 = __CFADD__(v63, v50);
  v68 = v63 + v50;
  v70 = v17;
  v17 = __CFADD__(v17, v51);
  v69 = v70 + v51;
  v71 = v17;
  v17 = __CFADD__(v69, v64);
  v72 = v69 + v64;
  v74 = v17;
  v17 = __CFADD__(v17, v52);
  v73 = v74 + v52;
  v17 |= __CFADD__(v71, v73);
  v73 += v71;
  v75 = v17;
  v17 = __CFADD__(v73, v66);
  v76 = v73 + v66;
  v78 = v17;
  v17 = __CFADD__(v17, v53);
  v77 = v78 + v53;
  v17 |= __CFADD__(v75, v77);
  v77 += v75;
  v79 = v17;
  v17 = __CFADD__(v77, v67);
  v80 = v77 + v67;
  if (v17)
  {
    ++v79;
  }

  v81 = v72 - __PAIR128__(v71, (1 - __CFADD__(v68, 1)));
  v82 = v80 - __PAIR128__(v65, -((v76 - __PAIR128__(v63, (1 - (__CFADD__(v81, 0xFFFFFFFF00000001) + BYTE8(v81))))) >> 64));
  if (v79 + (v79 < (1 - (__CFADD__(v82, 0xFFFFFFFFLL) + BYTE8(v82)))))
  {
    v83 = 0;
  }

  else
  {
    v83 = -1;
  }

  v244[0] = v83 & (v68 + 1) | v68 & *(&v82 + 1);
  v244[1] = v83 & (v81 - 0xFFFFFFFF) | *(&v82 + 1) & v72;
  v244[2] = v83 & (v76 - (1 - (__CFADD__(v81, 0xFFFFFFFF00000001) + BYTE8(v81)))) | *(&v82 + 1) & v76;
  v244[3] = v83 & (v82 + 0xFFFFFFFF) | *(&v82 + 1) & v80;
  sub_23944D88C(v243, &v245, v244);
  sub_23944DC28(a1, v243);
  v84 = v249[0] >> 63;
  v85 = *(v249 + 8) >> 63;
  v86 = v249[1] >> 63;
  v88 = v85 - (1 - __CFADD__(v84, 0xFFFFFFFF00000000));
  v91 = v86 - -((v85 - __PAIR128__(v87, (1 - __CFADD__(v84, 0xFFFFFFFF00000000)))) >> 64);
  v90 = (v86 - __PAIR128__(v89, -((v85 - __PAIR128__(v87, (1 - __CFADD__(v84, 0xFFFFFFFF00000000)))) >> 64))) >> 64;
  v92 = v91 + 0xFFFFFFFF;
  v93 = 1 - (__CFADD__(v91, 0xFFFFFFFFLL) + v90);
  if ((v249[1] < 0) + (*(&v249[1] + 1) >> 63 < v93))
  {
    v94 = 0;
  }

  else
  {
    v94 = -1;
  }

  if ((v249[1] < 0) + (*(&v249[1] + 1) >> 63 < v93))
  {
    v95 = -1;
  }

  else
  {
    v95 = 0;
  }

  v96 = v94 & ((2 * *&v249[0]) | 1) | v95 & (2 * *&v249[0]);
  v97 = v94 & (v84 - 0x100000000) | v95 & v84;
  v98 = v94 & v88 | v95 & v85;
  v99 = v94 & v92 | v95 & v86;
  *(&v101 + 1) = v97;
  *&v101 = v96;
  v100 = v101 >> 63;
  *(&v101 + 1) = v98;
  *&v101 = v97;
  v102 = v101 >> 63;
  *(&v101 + 1) = v99;
  *&v101 = v98;
  v103 = v101 >> 63;
  v104 = v102 - (1 - __CFADD__(v100, 0xFFFFFFFF00000000));
  v105 = v103 - __PAIR128__(v95, -((v102 - __PAIR128__(v92, (1 - __CFADD__(v100, 0xFFFFFFFF00000000)))) >> 64));
  v106 = v105 + 0xFFFFFFFF;
  if ((v99 < 0) + (v99 >> 63 < (1 - (__CFADD__(v105, 0xFFFFFFFFLL) + BYTE8(v105)))))
  {
    v107 = 0;
  }

  else
  {
    v107 = -1;
  }

  v108 = ((2 * v96) | 1) & v107 | *(&v105 + 1) & (2 * v96);
  *&v239[8] = v107 & v104 | *(&v105 + 1) & v102;
  *&v239[16] = v107 & v106 | *(&v105 + 1) & v103;
  *v239 = v107 & (v100 - 0x100000000) | *(&v105 + 1) & v100;
  *(&v110 + 1) = *v239;
  *&v110 = v108;
  v109 = v110 >> 63;
  v111 = *v239 >> 63;
  v112 = *&v239[8] >> 63;
  v113 = v111 - (1 - __CFADD__(v109, 0xFFFFFFFF00000000));
  v115 = v112 - -((v111 - __PAIR128__(v104, (1 - __CFADD__(v109, 0xFFFFFFFF00000000)))) >> 64);
  v114 = (v112 - __PAIR128__(v106, -((v111 - __PAIR128__(v104, (1 - __CFADD__(v109, 0xFFFFFFFF00000000)))) >> 64))) >> 64;
  v116 = v115 + 0xFFFFFFFF;
  v117 = 1 - (__CFADD__(v115, 0xFFFFFFFFLL) + v114);
  if ((*&v239[16] < 0) + (*&v239[16] >> 63 < v117))
  {
    v118 = 0;
  }

  else
  {
    v118 = -1;
  }

  if ((*&v239[16] < 0) + (*&v239[16] >> 63 < v117))
  {
    v119 = -1;
  }

  else
  {
    v119 = 0;
  }

  v120 = v119 & (2 * v108);
  v121 = v118 & (v109 - 0x100000000) | v119 & v109;
  v122 = v118 & v113 | v119 & v111;
  v123 = v118 & v116 | v119 & v112;
  v125 = (*a1 - __PAIR128__(((2 * v108) | 1) & v118 | v120, ((2 * v108) | 1) & v118 | v120)) >> 64;
  v124 = *a1 - (((2 * v108) | 1) & v118 | v120);
  LODWORD(v125) = -v125;
  v17 = __CFADD__(v121, v125);
  v126 = v121 + v125;
  v127 = v17;
  v128 = a1[1] - v126;
  v129 = -((a1[1] - __PAIR128__(v127, v126)) >> 64);
  v17 = __CFADD__(v122, v129);
  v130 = v122 + v129;
  v131 = v17;
  v132 = a1[2] - v130;
  v133 = -((a1[2] - __PAIR128__(v131, v130)) >> 64);
  v17 = __CFADD__(v123, v133);
  v134 = v123 + v133;
  v135 = v17;
  v136 = a1[3] - __PAIR128__(v135, v134);
  *a1 = v124 + *(&v136 + 1);
  a1[1] = DWORD2(v136) + __CFADD__(v124, *(&v136 + 1)) + v128;
  a1[2] = (__CFADD__(__CFADD__(v124, *(&v136 + 1)), v128) | __CFADD__(DWORD2(v136), __CFADD__(v124, *(&v136 + 1)) + v128)) + v132;
  a1[3] = v136 + __CFADD__(__CFADD__(__CFADD__(v124, *(&v136 + 1)), v128) | __CFADD__(DWORD2(v136), __CFADD__(v124, *(&v136 + 1)) + v128), v132) + (*(&v136 + 1) & 0xFFFFFFFF00000001);
  v137 = v250[0];
  v138 = v250[0] + v14;
  v139 = v250[1];
  v140 = v21 + (__CFADD__(__CFADD__(*&v250[0], v14), *(&v250[0] + 1)) | __CFADD__(*(&v14 + 1), __CFADD__(*&v250[0], v14) + *(&v250[0] + 1))) + *&v250[1];
  v141 = *(&v21 + 1) + (__CFADD__(__CFADD__(__CFADD__(*&v250[0], v14), *(&v250[0] + 1)) | __CFADD__(*(&v14 + 1), __CFADD__(*&v250[0], v14) + *(&v250[0] + 1)), v139) | __CFADD__(v21, (__CFADD__(__CFADD__(*&v250[0], v14), *(&v250[0] + 1)) | __CFADD__(*(&v14 + 1), __CFADD__(*&v250[0], v14) + *(&v250[0] + 1))) + v139)) + *(&v250[1] + 1);
  if (__CFADD__(__CFADD__(__CFADD__(__CFADD__(*&v250[0], v14), *(&v250[0] + 1)) | __CFADD__(*(&v14 + 1), __CFADD__(*&v250[0], v14) + *(&v250[0] + 1)), *&v250[1]) | __CFADD__(v21, (__CFADD__(__CFADD__(*&v250[0], v14), *(&v250[0] + 1)) | __CFADD__(*(&v14 + 1), __CFADD__(*&v250[0], v14) + *(&v250[0] + 1))) + *&v250[1]), *(&v250[1] + 1)) | __CFADD__(*(&v21 + 1), (__CFADD__(__CFADD__(__CFADD__(*&v250[0], v14), *(&v250[0] + 1)) | __CFADD__(*(&v14 + 1), __CFADD__(*&v250[0], v14) + *(&v250[0] + 1)), *&v250[1]) | __CFADD__(v21, (__CFADD__(__CFADD__(*&v250[0], v14), *(&v250[0] + 1)) | __CFADD__(*(&v14 + 1), __CFADD__(*&v250[0], v14) + *(&v250[0] + 1))) + *&v250[1])) + *(&v250[1] + 1)))
  {
    v142 = 1;
  }

  else
  {
    v142 = 0;
  }

  v143 = *(&v138 + 1) - __PAIR128__(v116, (1 - __CFADD__(v138, 1)));
  v145 = v141 - -((v140 - __PAIR128__(v119, (1 - (__CFADD__(v143, 0xFFFFFFFF00000001) + BYTE8(v143))))) >> 64);
  v144 = (v141 - __PAIR128__(v120, -((v140 - __PAIR128__(v119, (1 - (__CFADD__(v143, 0xFFFFFFFF00000001) + BYTE8(v143))))) >> 64))) >> 64;
  v146 = v145 + 0xFFFFFFFF;
  v147 = -(v142 + (v142 < (1 - (__CFADD__(v145, 0xFFFFFFFFLL) + v144))));
  v148 = v147 == 0;
  if (v147)
  {
    v149 = 0;
  }

  else
  {
    v149 = -1;
  }

  if (v148)
  {
    v150 = 0;
  }

  else
  {
    v150 = -1;
  }

  v151 = v149 & (v138 + 1) | v150 & v138;
  v152 = v149 & (v143 - 0xFFFFFFFF) | v150 & *(&v138 + 1);
  v153 = v149 & (v140 - (1 - (__CFADD__(v143, 0xFFFFFFFF00000001) + BYTE8(v143)))) | v150 & v140;
  v238 = v149 & v146 | v150 & v141;
  v154 = a6[1];
  v156 = (*a6 + *a5) >> 64;
  v155 = *a6 + *a5;
  v157 = __CFADD__(__CFADD__(*a6, *a5), a5[1]);
  v158 = a5[2];
  v159 = a5[3];
  v160 = a6[2];
  v161 = a6[3];
  v17 = __CFADD__(v160, v158);
  v162 = v160 + v158;
  v163 = v17;
  v17 = __CFADD__(v161, v159);
  v164 = v161 + v159;
  v165 = v17;
  v167 = v156 + v154;
  v17 = __CFADD__(__CFADD__(v156, v154), v162) | __CFADD__(v157, (__PAIR128__(v162, v156) + v154) >> 64);
  v166 = v157 + ((__PAIR128__(v162, v156) + v154) >> 64);
  v168 = v163 + v17 + v164;
  if (__CFADD__(v17, v164) | __CFADD__(v163, v17 + v164))
  {
    v169 = v165 + 1;
  }

  else
  {
    v169 = v165;
  }

  v170 = v167 - __PAIR128__(v165, (1 - __CFADD__(v155, 1)));
  v171 = v168 - __PAIR128__(v150, -((v166 - __PAIR128__(v146, (1 - (__CFADD__(v170, 0xFFFFFFFF00000001) + BYTE8(v170))))) >> 64));
  if (v169 + (v169 < (1 - (__CFADD__(v171, 0xFFFFFFFFLL) + BYTE8(v171)))))
  {
    v172 = 0;
  }

  else
  {
    v172 = -1;
  }

  v245 = v172 & (v155 + 1) | *(&v171 + 1) & v155;
  v246 = v172 & (v170 - 0xFFFFFFFF) | *(&v171 + 1) & v167;
  v247 = v172 & (v166 - (1 - (__CFADD__(v170, 0xFFFFFFFF00000001) + BYTE8(v170)))) | *(&v171 + 1) & v166;
  v248 = v172 & (v171 + 0xFFFFFFFF) | *(&v171 + 1) & v168;
  sub_23944DC28(a3, &v245);
  v176 = *a3 - v151;
  v177 = a3[1] - (v152 + -((*a3 - __PAIR128__(v175, v151)) >> 64));
  v17 = __CFADD__(v153, -((a3[1] - __PAIR128__(v152 + -((*a3 - __PAIR128__(v175, v151)) >> 64), v152 + -((*a3 - __PAIR128__(v175, v151)) >> 64))) >> 64));
  v178 = v153 + -((a3[1] - __PAIR128__(v152 + -((*a3 - __PAIR128__(v175, v151)) >> 64), v152 + -((*a3 - __PAIR128__(v175, v151)) >> 64))) >> 64);
  v179 = v17;
  v180 = a3[2] - v178;
  v17 = __CFADD__(v238, -((a3[2] - __PAIR128__(v179, v178)) >> 64));
  v181 = v238 + -((a3[2] - __PAIR128__(v179, v178)) >> 64);
  v182 = v17;
  v183 = a3[3] - __PAIR128__(v182, v181);
  v184 = __CFADD__(v176, *(&v183 + 1)) + v177;
  v185 = __CFADD__(__CFADD__(v176, *(&v183 + 1)), v177) | __CFADD__(DWORD2(v183), v184);
  *a3 = v176 + *(&v183 + 1);
  a3[1] = DWORD2(v183) + v184;
  a3[2] = v185 + v180;
  a3[3] = v183 + __CFADD__(v185, v180) + (*(&v183 + 1) & 0xFFFFFFFF00000001);
  v186 = a1[1];
  v187 = v108 - *a1;
  v17 = __CFADD__(v186, -((v108 - __PAIR128__(v185 + v180, *a1)) >> 64));
  v188 = v186 + -((v108 - __PAIR128__(v185 + v180, *a1)) >> 64);
  v189 = v17;
  v190 = *v239 - v188;
  v191 = a1[2];
  v192 = a1[3];
  v17 = __CFADD__(v191, -((*v239 - __PAIR128__(v189, v188)) >> 64));
  v193 = v191 + -((*v239 - __PAIR128__(v189, v188)) >> 64);
  v194 = v17;
  v196 = *&v239[8] - v193;
  v195 = (*&v239[8] - __PAIR128__(v194, v193)) >> 64;
  v17 = __CFADD__(v192, -v195);
  v197 = v192 + -v195;
  v198 = v17;
  v199 = *&v239[16] - __PAIR128__(v198, v197);
  v200 = __CFADD__(v187, *(&v199 + 1)) + v190;
  v201 = __CFADD__(__CFADD__(v187, *(&v199 + 1)), v190) | __CFADD__(DWORD2(v199), v200);
  *a2 = v187 + *(&v199 + 1);
  a2[1] = DWORD2(v199) + v200;
  a2[2] = v201 + v196;
  a2[3] = v199 + __CFADD__(v201, v196) + (*(&v199 + 1) & 0xFFFFFFFF00000001);
  v202 = v137 >> 63;
  *(&v204 + 1) = v139;
  *&v204 = *(&v137 + 1);
  v203 = v204 >> 63;
  v205 = v139 >> 63;
  v206 = v205 - -((v203 - __PAIR128__(v173, (1 - __CFADD__(v202, 0xFFFFFFFF00000000)))) >> 64);
  v207 = 1 - (__CFADD__(v206, 0xFFFFFFFFLL) + ((v205 - __PAIR128__(v174, -((v203 - __PAIR128__(v173, (1 - __CFADD__(v202, 0xFFFFFFFF00000000)))) >> 64))) >> 64));
  if ((v139 < 0) + (*(&v139 + 1) >> 63 < v207))
  {
    v208 = 0;
  }

  else
  {
    v208 = -1;
  }

  if ((v139 < 0) + (*(&v139 + 1) >> 63 < v207))
  {
    v209 = -1;
  }

  else
  {
    v209 = 0;
  }

  *&v250[0] = v208 & ((2 * v137) | 1) | v209 & (2 * v137);
  *(&v250[0] + 1) = v208 & (v202 - 0x100000000) | v209 & v202;
  *&v250[1] = v208 & (v203 - (1 - __CFADD__(v202, 0xFFFFFFFF00000000))) | v209 & v203;
  *(&v250[1] + 1) = v208 & (v206 + 0xFFFFFFFF) | v209 & v205;
  sub_23944DC28(v250, v250);
  result = sub_23944D88C(a2, v243, a2);
  v211 = v250[0] >> 63;
  v212 = *(v250 + 8) >> 63;
  v213 = v250[1] >> 63;
  v215 = v212 - (1 - __CFADD__(v211, 0xFFFFFFFF00000000));
  v217 = v213 - -((v212 - __PAIR128__(v214, (1 - __CFADD__(v211, 0xFFFFFFFF00000000)))) >> 64);
  v218 = 1 - (__CFADD__(v217, 0xFFFFFFFFLL) + ((v213 - __PAIR128__(v216, -((v212 - __PAIR128__(v214, (1 - __CFADD__(v211, 0xFFFFFFFF00000000)))) >> 64))) >> 64));
  if ((v250[1] < 0) + (*(&v250[1] + 1) >> 63 < v218))
  {
    v219 = 0;
  }

  else
  {
    v219 = -1;
  }

  if ((v250[1] < 0) + (*(&v250[1] + 1) >> 63 < v218))
  {
    v220 = -1;
  }

  else
  {
    v220 = 0;
  }

  v221 = v219 & (v211 - 0x100000000) | v220 & v211;
  v222 = v219 & v215 | v220 & v212;
  v223 = v219 & (v217 + 0xFFFFFFFF) | v220 & v213;
  v224 = *a2 - (v219 & ((2 * *&v250[0]) | 1) | v220 & (2 * *&v250[0]));
  v225 = -((*a2 - __PAIR128__(*a2, v219 & ((2 * *&v250[0]) | 1) | v220 & (2 * *&v250[0]))) >> 64);
  v17 = __CFADD__(v221, v225);
  v226 = v221 + v225;
  v227 = v17;
  v228 = a2[1] - v226;
  v229 = -((a2[1] - __PAIR128__(v227, v226)) >> 64);
  v17 = __CFADD__(v222, v229);
  v230 = v222 + v229;
  v231 = v17;
  v232 = a2[2] - v230;
  v233 = -((a2[2] - __PAIR128__(v231, v230)) >> 64);
  v17 = __CFADD__(v223, v233);
  v234 = v223 + v233;
  v235 = v17;
  v236 = a2[3] - __PAIR128__(v235, v234);
  *a2 = v224 + *(&v236 + 1);
  a2[1] = DWORD2(v236) + __CFADD__(v224, *(&v236 + 1)) + v228;
  a2[2] = (__CFADD__(__CFADD__(v224, *(&v236 + 1)), v228) | __CFADD__(DWORD2(v236), __CFADD__(v224, *(&v236 + 1)) + v228)) + v232;
  a2[3] = v236 + __CFADD__(__CFADD__(__CFADD__(v224, *(&v236 + 1)), v228) | __CFADD__(DWORD2(v236), __CFADD__(v224, *(&v236 + 1)) + v228), v232) + (*(&v236 + 1) & 0xFFFFFFFF00000001);
  v237 = *MEMORY[0x277D85DE8];
  return result;
}

int8x16_t sub_23944F400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (a2)
  {
    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a4 + 24) & v5 | *(a3 + 24) & v4;
  v7 = vandq_s8(*(a4 + 8), vdupq_n_s64(v5));
  v8 = vandq_s8(*(a3 + 8), vdupq_n_s64(v4));
  *a1 = v4 & *a3 | v5 & *a4;
  result = vorrq_s8(v7, v8);
  *(a1 + 8) = result;
  *(a1 + 24) = v6;
  return result;
}

double sub_23944F460(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = 0;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  v7 = (a3 + 2);
  v8 = a1 - 1;
  do
  {
    sub_23944F400(a3, v6 ^ v8, a2, a3);
    sub_23944F400(v7, v6++ ^ v8, a2 + 32, v7);
    a2 += 64;
  }

  while (v6 != 15);

  *&result = sub_23944F400((a3 + 4), a1, (a3 + 4), &xmmword_2395CBA58).u64[0];
  return result;
}

unint64_t *sub_23944F514(unint64_t *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 & (a3 << 62 >> 63);
  v5 = a4 & (a3 << 61 >> 63);
  v6 = a4 & (a3 << 60 >> 63);
  *result = ((((a4 & 0x1111111111111111) * (a3 & 0x1111111111111110)) ^ ((a4 & 0x8888888888888888) * (a3 & 0x2222222222222220)) ^ ((a4 & 0x4444444444444444) * (a3 & 0x4444444444444440)) ^ ((a4 & 0x2222222222222222) * (a3 & 0x8888888888888880))) & 0x1111111111111111 | (((a4 & 0x2222222222222222) * (a3 & 0x1111111111111110)) ^ ((a4 & 0x1111111111111111) * (a3 & 0x2222222222222220)) ^ ((a4 & 0x8888888888888888) * (a3 & 0x4444444444444440)) ^ ((a4 & 0x4444444444444444) * (a3 & 0x8888888888888880))) & 0x2222222222222222 | (((a4 & 0x4444444444444444) * (a3 & 0x1111111111111110)) ^ ((a4 & 0x2222222222222222) * (a3 & 0x2222222222222220)) ^ ((a4 & 0x1111111111111111) * (a3 & 0x4444444444444440)) ^ ((a4 & 0x8888888888888888) * (a3 & 0x8888888888888880))) & 0x4444444444444444 | (((a4 & 0x8888888888888888) * (a3 & 0x1111111111111110)) ^ ((a4 & 0x4444444444444444) * (a3 & 0x2222222222222220)) ^ ((a4 & 0x2222222222222222) * (a3 & 0x4444444444444440)) ^ ((a4 & 0x1111111111111111) * (a3 & 0x8888888888888880))) & 0x8888888888888888) ^ (a3 << 63 >> 63) & a4 ^ (2 * v4) ^ (4 * v5) ^ (8 * v6);
  *a2 = (((((a4 & 0x1111111111111111) * (a3 & 0x1111111111111110)) >> 64) ^ (((a4 & 0x8888888888888888) * (a3 & 0x2222222222222220)) >> 64) ^ (((a4 & 0x4444444444444444) * (a3 & 0x4444444444444440)) >> 64) ^ (((a4 & 0x2222222222222222) * (a3 & 0x8888888888888880)) >> 64)) & 0x1111111111111111 | ((((a4 & 0x2222222222222222) * (a3 & 0x1111111111111110)) >> 64) ^ (((a4 & 0x1111111111111111) * (a3 & 0x2222222222222220)) >> 64) ^ (((a4 & 0x8888888888888888) * (a3 & 0x4444444444444440)) >> 64) ^ (((a4 & 0x4444444444444444) * (a3 & 0x8888888888888880)) >> 64)) & 0x2222222222222222 | ((((a4 & 0x4444444444444444) * (a3 & 0x1111111111111110)) >> 64) ^ (((a4 & 0x2222222222222222) * (a3 & 0x2222222222222220)) >> 64) ^ (((a4 & 0x1111111111111111) * (a3 & 0x4444444444444440)) >> 64) ^ (((a4 & 0x8888888888888888) * (a3 & 0x8888888888888880)) >> 64)) & 0x4444444444444444 | ((((a4 & 0x8888888888888888) * (a3 & 0x1111111111111110)) >> 64) ^ (((a4 & 0x4444444444444444) * (a3 & 0x2222222222222220)) >> 64) ^ (((a4 & 0x2222222222222222) * (a3 & 0x4444444444444440)) >> 64) ^ (((a4 & 0x1111111111111111) * (a3 & 0x8888888888888880)) >> 64)) & 0x8888888888888888) ^ (v4 >> 63) ^ (v5 >> 62) ^ (v6 >> 61);
  return result;
}

void sub_23944F6C0()
{
  if ((qword_27DF78B30 + 1) > 1)
  {
    v0 = qword_27DF78B30 + 1;
  }

  else
  {
    v0 = 1;
  }

  qword_27DF78B30 = v0;
}

double sub_23944F6E0()
{
  qword_27DF78B38 = &unk_2395CD1E8;
  *&result = 0x1100000011;
  unk_27DF78B40 = xmmword_2395CAB10;
  return result;
}

uint64_t sub_23944F704(void *a1, uint64_t a2, int a3)
{
  if (*a1)
  {
    return 1;
  }

  v6 = sub_239421F2C(a2);
  v7 = v6;
  if (v6 && sub_2394223D0(v6, a3))
  {
    *a1 = v7;
    return 1;
  }

  else
  {
    sub_239421EC8(v7);
    return 0;
  }
}

uint64_t sub_23944F77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a4 + 16))
  {
    goto LABEL_2;
  }

  v9 = *(a3 + 32);
  v10 = *(a4 + 8);
  if (v10 > v9)
  {
    v11 = 0;
    v12 = v10 - v9;
    v13 = (*a4 + 8 * v9);
    do
    {
      v14 = *v13++;
      v11 |= v14;
      --v12;
    }

    while (v12);
    if (v11)
    {
LABEL_2:
      sub_2394170F4(4, 0, 68, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa_impl.c", 740);
      return 0;
    }
  }

  if (!sub_239425A2C(a1, a2, a3, a5))
  {
    return 0;
  }

  return sub_239425948(a1, a1, a3, a3, a5);
}

uint64_t sub_23944F850(unsigned int *a1, int a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a2 & 0x3F) != 0)
  {
    v8 = 68;
    v9 = 931;
LABEL_5:
    sub_2394170F4(4, 0, v8, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa_impl.c", v9);
    return 0;
  }

  if (a2 >= 0x3FFFFFF)
  {
    v8 = 128;
    v9 = 968;
    goto LABEL_5;
  }

  if (sub_239422B64(a3, 3))
  {
    v19 = 8 * a2;
  }

  else
  {
    v19 = 5 * a2;
  }

  sub_239422DA4(a7);
  result = sub_239422E50(a7);
  if (result)
  {
    v20 = result;
    result = sub_23942BFC8(a1, a2, 0, 1u);
    if (result)
    {
      v27 = a3;
      v21 = 0;
      v28 = 0;
      if (v19 <= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = v19;
      }

      v23 = v22 - 1;
      while (1)
      {
        if (a8)
        {
          result = (*(a8 + 8))(0, v21, a8);
          if (!result)
          {
            break;
          }
        }

        if (a4)
        {
          result = sub_23942A0FC(v20, a1, a4, a7);
          if (!result)
          {
            break;
          }

          if (sub_2394229D8(v20, a6) <= 0)
          {
            goto LABEL_22;
          }
        }

        if (sub_2394229D8(a1, a5) < 1)
        {
LABEL_22:
          result = sub_23942BFC8(a1, a2, 0, 1u);
          v21 = (v21 + 1);
          if (!result)
          {
            break;
          }
        }

        else
        {
          if (!sub_23942B1B8(a1))
          {
            v30 = 0;
            sub_239457D80(&stru_27DF76A28, sub_239422078);
            if (!sub_239421BFC(v20, a1, &qword_27DF777F0) || !sub_239427F1C(&v30, v20, v27, a7))
            {
              goto LABEL_36;
            }

            if (v30)
            {
              v29 = 0;
              if (!sub_23942B670(&v29, a1, 0, a7, 0, a8))
              {
                goto LABEL_36;
              }

              if (v29)
              {
                result = 1;
                break;
              }
            }
          }

          if (v28 == v23)
          {
            sub_2394170F4(4, 0, 141, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/rsa/rsa_impl.c", 1042);
LABEL_36:
            result = 0;
            break;
          }

          if (a8)
          {
            result = (*(a8 + 8))(2, (v28 + 1), a8);
            if (!result)
            {
              break;
            }
          }

          ++v28;
          v21 = (v21 + 1);
          v24 = sub_23942BFC8(a1, a2, 0, 1u);
          result = 0;
          if (!v24)
          {
            break;
          }
        }
      }
    }
  }

  if (!*(a7 + 40))
  {
    v25 = *(a7 + 8);
    v26 = *(a7 + 16) - 1;
    *(a7 + 16) = v26;
    *(a7 + 32) = *(v25 + 8 * v26);
  }

  return result;
}

void *sub_23944FB28(uint64_t a1, uint64_t a2)
{
  v4 = sub_2394500B0(0x30uLL);
  v5 = v4;
  if (v4)
  {
    v4[2] = 16;
    v6 = sub_2394500F0(0x10uLL, 8uLL);
    v5[1] = v6;
    if (v6)
    {
      v5[4] = a2;
      v5[5] = a1;
    }

    else
    {
      sub_239450144(v5);
      return 0;
    }
  }

  return v5;
}

void sub_23944FB98(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      for (i = 0; i < v2; ++i)
      {
        v4 = *(a1[1] + 8 * i);
        if (v4)
        {
          do
          {
            v5 = v4[1];
            sub_239450144(v4);
            v4 = v5;
          }

          while (v5);
          v2 = a1[2];
        }
      }
    }

    sub_239450144(a1[1]);

    sub_239450144(a1);
  }
}

uint64_t sub_23944FC1C(void *a1, uint64_t a2, uint64_t (*a3)(void, uint64_t), unsigned int (*a4)(void, void, uint64_t))
{
  v4 = sub_23944FC58(a1, 0, a2, a3, a4);
  if (*v4)
  {
    return **v4;
  }

  else
  {
    return 0;
  }
}

void *sub_23944FC58(void *a1, unsigned int *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t), unsigned int (*a5)(void, void, uint64_t))
{
  v9 = a4(a1[5], a3);
  if (a2)
  {
    *a2 = v9;
  }

  v10 = (a1[1] + 8 * (v9 % a1[2]));
  v11 = *v10;
  if (*v10 && a5(a1[4], *v11, a3))
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11 && a5(a1[4], *v11, a3));
    return v12 + 1;
  }

  return v10;
}

uint64_t sub_23944FD00(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int (*a4)(uint64_t, void))
{
  v4 = *(a1 + 8) + 8 * (a3 % *(a1 + 16));
  v5 = *v4;
  if (*v4)
  {
    if (a4(a2, *v5))
    {
      while (1)
      {
        v8 = v5;
        v5 = v5[1];
        if (!v5)
        {
          break;
        }

        if (!a4(a2, *v5))
        {
          v4 = (v8 + 1);
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (*v4)
      {
        return **v4;
      }
    }
  }

  return 0;
}

uint64_t sub_23944FD8C(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t), unsigned int (*a5)(void, void, uint64_t))
{
  v11 = 0;
  *a2 = 0;
  v8 = sub_23944FC58(a1, &v11, a3, a4, a5);
  v9 = v8;
  if (*v8)
  {
    *a2 = **v8;
    **v8 = a3;
  }

  else
  {
    result = sub_23945004C(0x18uLL);
    if (!result)
    {
      return result;
    }

    *(result + 16) = v11;
    *result = a3;
    *(result + 8) = 0;
    *v9 = result;
    ++*a1;
    sub_23944FE28(a1);
  }

  return 1;
}

void sub_23944FE28(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    v1 = *(a1 + 16);
    if (*a1 / v1 < 3)
    {
      if (v1 <= *a1 || v1 < 0x11)
      {
        return;
      }

      v3 = v1 >> 1;
      if (v3 <= 0x10)
      {
        v2 = 16;
      }

      else
      {
        v2 = v3;
      }
    }

    else
    {
      if (v1 < 1)
      {
        return;
      }

      v2 = 2 * v1;
    }

    sub_23944FFAC(a1, v2);
  }
}

uint64_t sub_23944FE7C(void *a1, uint64_t a2, uint64_t (*a3)(void, uint64_t), unsigned int (*a4)(void, void, uint64_t))
{
  v5 = sub_23944FC58(a1, 0, a2, a3, a4);
  v6 = *v5;
  if (!*v5)
  {
    return 0;
  }

  *v5 = v6[1];
  v7 = *v6;
  sub_239450144(v6);
  --*a1;
  sub_23944FE28(a1);
  return v7;
}

void sub_23944FEEC(uint64_t a1, void (*a2)(void, uint64_t), uint64_t a3)
{
  if (a1)
  {
    v6 = *(a1 + 24);
    if (v6 == -1)
    {
      v7 = -1;
    }

    else
    {
      v7 = v6 + 1;
      *(a1 + 24) = v6 + 1;
    }

    v8 = *(a1 + 16);
    if (v8)
    {
      for (i = 0; i < v8; ++i)
      {
        v10 = *(*(a1 + 8) + 8 * i);
        if (v10)
        {
          do
          {
            v11 = v10[1];
            a2(*v10, a3);
            v10 = v11;
          }

          while (v11);
          v8 = *(a1 + 16);
        }
      }

      v7 = *(a1 + 24);
    }

    if (v7 != -1)
    {
      *(a1 + 24) = v7 - 1;
    }

    sub_23944FE28(a1);
  }
}

void sub_23944FFAC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    v4 = sub_2394500B0(8 * a2);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 16);
      if (v6)
      {
        for (i = 0; i < v6; ++i)
        {
          v8 = *(*(a1 + 8) + 8 * i);
          if (v8)
          {
            do
            {
              v9 = *(v8 + 16) % a2;
              v10 = *(v8 + 8);
              *(v8 + 8) = v4[v9];
              v4[v9] = v8;
              v8 = v10;
            }

            while (v10);
            v6 = *(a1 + 16);
          }
        }
      }

      sub_239450144(*(a1 + 8));
      *(a1 + 8) = v5;
      *(a1 + 16) = a2;
    }
  }
}

void *sub_23945004C(unint64_t a1)
{
  if (a1 <= 0xFFFFFFFFFFFFFFF7 && (v2 = malloc_type_malloc(a1 + 8, 0xF23A33BEuLL)) != 0)
  {
    *v2 = a1;
    return v2 + 1;
  }

  else
  {
    sub_2394170F4(14, 0, 65, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/mem.c", 247);
    return 0;
  }
}

void *sub_2394500B0(unint64_t a1)
{
  v2 = sub_23945004C(a1);
  v3 = v2;
  if (a1 && v2)
  {
    bzero(v2, a1);
  }

  return v3;
}

void *sub_2394500F0(unint64_t a1, unint64_t a2)
{
  if (!a2 || is_mul_ok(a2, a1))
  {
    v4 = a2 * a1;

    return sub_2394500B0(v4);
  }

  else
  {
    sub_2394170F4(14, 0, 69, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/mem.c", 261);
    return 0;
  }
}

void sub_239450144(void *a1)
{
  if (a1)
  {
    v2 = (a1 - 1);
    v1 = *(a1 - 1);
    if (v1 != -8)
    {
      bzero(a1 - 1, v1 + 8);
    }

    free(v2);
  }
}

void sub_239450194(void *a1, size_t a2)
{
  if (a2)
  {
    bzero(a1, a2);
  }
}

void *sub_2394501A0(void *a1, unint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 - 1);
    v5 = sub_23945004C(a2);
    v6 = v5;
    if (v5)
    {
      if (v4 >= a2)
      {
        v7 = a2;
      }

      else
      {
        v7 = v4;
      }

      memcpy(v5, a1, v7);
      sub_239450144(a1);
    }

    return v6;
  }

  else
  {

    return sub_23945004C(a2);
  }
}

uint64_t sub_23945022C(char *a1, char *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v5 = *a1++;
    v4 = v5;
    v6 = *a2++;
    v3 |= v6 ^ v4;
    --a3;
  }

  while (a3);
  return v3;
}

uint64_t sub_23945025C(unsigned __int8 *a1, uint64_t a2)
{
  for (result = 2166136261; a2; --a2)
  {
    v4 = *a1++;
    result = 16777619 * (result ^ v4);
  }

  return result;
}

uint64_t sub_23945028C(const char *a1)
{
  v1 = a1;
  v2 = 2166136261;
  for (i = strlen(a1); i; --i)
  {
    v4 = *v1++;
    v2 = 16777619 * (v2 ^ v4);
  }

  return v2;
}

uint64_t sub_2394502DC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  result = 0;
  while (*(a1 + result))
  {
    if (a2 == ++result)
    {
      return a2;
    }
  }

  return result;
}

const char *sub_23945030C(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = strlen(result) + 1;

    return sub_239450350(v1, v2);
  }

  return result;
}

void *sub_239450350(const void *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = sub_23945004C(a2);
  if (!v4)
  {
    return 0;
  }

  return memcpy(v4, a1, a2);
}

uint64_t sub_2394503EC(_BYTE *a1, int a2)
{
  if ((a2 - 58) > 0xFFFFFFF5)
  {
    v2 = -48;
    goto LABEL_5;
  }

  if ((a2 - 97) < 6)
  {
    v2 = -87;
LABEL_5:
    *a1 = v2 + a2;
    return 1;
  }

  if ((a2 - 65) <= 5)
  {
    v2 = -55;
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_239450458(uint64_t result)
{
  if ((result - 65) >= 0x1A)
  {
    return result;
  }

  else
  {
    return result | 0x20;
  }
}

uint64_t sub_239450480(char *a1, char *a2)
{
  v2 = *a1;
  if ((v2 - 65) >= 0x1A)
  {
    v3 = *a1;
  }

  else
  {
    v3 = v2 | 0x20;
  }

  v4 = *a2;
  v5 = v4 | 0x20;
  if ((v4 - 65) >= 0x1A)
  {
    v5 = *a2;
  }

  if (v3 < v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = a1 + 1;
  v7 = a2 + 1;
  while (1)
  {
    if (v3 > v5)
    {
      return 1;
    }

    if (!v3)
    {
      break;
    }

    v8 = *v6++;
    v3 = v8;
    v9 = v8 | 0x20;
    v10 = (v8 - 65) >= 0x1A;
    v11 = *v7++;
    v5 = v11;
    if (!v10)
    {
      v3 = v9;
    }

    if ((v5 - 65) < 0x1A)
    {
      v5 |= 0x20u;
    }

    if (v3 < v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

uint64_t sub_23945050C(char *a1, char *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  for (i = a3 - 1; ; --i)
  {
    v5 = *a1++;
    v4 = v5;
    v6 = v5 | 0x20;
    v7 = (v5 - 65) >= 0x1A;
    v9 = *a2++;
    v8 = v9;
    if (!v7)
    {
      v4 = v6;
    }

    if ((v8 - 65) < 0x1A)
    {
      v8 |= 0x20u;
    }

    if (v4 < v8)
    {
      break;
    }

    if (v4 > v8)
    {
      return 1;
    }

    if (v4)
    {
      v10 = i == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_2394505A0(char **a1, const char *a2, va_list a3, int a4)
{
  if (a4)
  {
    v6 = MEMORY[0x277D86140];
  }

  else
  {
    v6 = sub_23945004C;
  }

  if (a4)
  {
    v7 = MEMORY[0x277D86138];
  }

  else
  {
    v7 = sub_239450144;
  }

  if (a4)
  {
    v8 = MEMORY[0x277D86168];
  }

  else
  {
    v8 = sub_2394501A0;
  }

  v9 = v6(64uLL);
  v10 = v9;
  if (!v9)
  {
    goto LABEL_19;
  }

  result = vsnprintf(v9, 0x40uLL, a2, a3);
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  if (result < 0x40)
  {
    v12 = 64;
  }

  else
  {
    v12 = (result + 1);
    v13 = v8(v10, v12);
    if (!v13)
    {
      goto LABEL_19;
    }

    v14 = v13;
    result = vsnprintf(v13, v12, a2, a3);
    v10 = v14;
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_19;
    }
  }

  if (v12 > result)
  {
    *a1 = v10;
    return result;
  }

LABEL_19:
  v7(v10);
  *a1 = 0;
  *__error() = 12;
  return 0xFFFFFFFFLL;
}

void *sub_23945071C(_BYTE *a1, size_t a2)
{
  v3 = 0;
  if (!a2)
  {
    goto LABEL_6;
  }

  while (a1[v3])
  {
    if (a2 == ++v3)
    {
      v3 = a2;
      break;
    }
  }

  if (v3 == -1)
  {
    sub_2394170F4(14, 0, 65, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/mem.c", 551);
    return 0;
  }

  else
  {
LABEL_6:
    v4 = sub_23945004C(v3 + 1);
    v5 = v4;
    if (v4)
    {
      if (v3)
      {
        memcpy(v4, a1, v3);
      }

      *(v5 + v3) = 0;
    }
  }

  return v5;
}

size_t sub_2394507BC(_BYTE *a1, char *__s, unint64_t a3)
{
  if (a3 < 2)
  {
    v4 = 0;
    if (!a3)
    {
      return strlen(__s) + v4;
    }
  }

  else
  {
    v3 = 0;
    v4 = a3 - 1;
    while (__s[v3])
    {
      a1[v3] = __s[v3];
      if (v4 == ++v3)
      {
        __s += v3;
        a1 += v3;
        goto LABEL_9;
      }
    }

    __s += v3;
    a1 += v3;
    v4 = v3;
  }

LABEL_9:
  *a1 = 0;
  return strlen(__s) + v4;
}

size_t sub_239450834(_BYTE *a1, char *a2, unint64_t a3)
{
  v3 = a3;
  if (a3)
  {
    for (i = 0; a1[i]; ++i)
    {
      if (!--a3)
      {
        a1 += v3;
        return sub_2394507BC(a1, a2, a3) + v3;
      }
    }

    a1 += i;
    v3 = i;
  }

  return sub_2394507BC(a1, a2, a3) + v3;
}

const char **sub_239450894(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 32))
  {
    sub_2393FDD60();
    v2 = v3;
    if (!v3)
    {
      sub_2394170F4(8, 0, 12, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/obj/obj.c", 113);
      return v2;
    }

    *v3 = 0;
    v3[1] = 0;
    v4 = sub_239450350(*(a1 + 24), *(a1 + 20));
    v2[3] = v4;
    v5 = *(a1 + 20);
    if (v5 && !v4)
    {
      v6 = 0;
LABEL_8:
      sub_239450144(v6);
      sub_239450144(0);
      sub_239450144(0);
      sub_239450144(v2);
      return 0;
    }

    *(v2 + 5) = v5;
    *(v2 + 4) = *(a1 + 16);
    v8 = *(a1 + 8);
    if (v8)
    {
      v6 = sub_23945030C(v8);
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v6 = 0;
    }

    v9 = *a1;
    if (!*a1 || (v9 = sub_23945030C(v9)) != 0)
    {
      *v2 = v9;
      v2[1] = v6;
      *(v2 + 8) = *(a1 + 32) | 0xD;
      return v2;
    }

    goto LABEL_8;
  }

  return a1;
}

uint64_t sub_239450998(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 20);
  v3 = *(a2 + 20);
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 > v3)
  {
    return 1;
  }

  if (v2)
  {
    return memcmp(*(a1 + 24), *(a2 + 24), v2);
  }

  return 0;
}

uint64_t sub_2394509D8(uint64_t result)
{
  if (result)
  {
    return *(result + 20) & ~(*(result + 20) >> 31);
  }

  return result;
}

unsigned __int16 *sub_2394509E8(unsigned __int16 *result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 4);
    if (!result)
    {
      sub_239457D1C(&stru_27DF76EE8);
      if (qword_27DF78BA0 && (v2 = sub_23944FC1C(qword_27DF78BA0, v1, sub_239451564, sub_239451570)) != 0)
      {
        v3 = v2;
        sub_239457D5C(&stru_27DF76EE8);
        v4 = (v3 + 16);
      }

      else
      {
        sub_239457D5C(&stru_27DF76EE8);
        result = bsearch(v1, &unk_2395CE498, 0x371uLL, 2uLL, sub_239450AD4);
        if (!result)
        {
          return result;
        }

        v5 = *result - 1;
        if (v5 >= 0x3C4)
        {
          abort();
        }

        v4 = &off_278A77798[5 * v5 + 2];
      }

      return *v4;
    }
  }

  return result;
}

uint64_t sub_239450AD4(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *a2 - 1;
  if (v3 >= 0x3C4)
  {
    abort();
  }

  return sub_239450998(a1, &off_278A77798[5 * v3]);
}

unsigned __int16 *sub_239450B14(void *a1)
{
  v3 = a1[1];
  if (v3 >> 31)
  {
    return 0;
  }

  v8 = v1;
  v9 = v2;
  v5 = 0u;
  v6 = 0u;
  *(&v6 + 1) = *a1;
  v7 = 0;
  DWORD1(v6) = v3;
  return sub_2394509E8(&v5);
}

unsigned __int16 *sub_239450B64(const void *a1)
{
  sub_239457D1C(&stru_27DF76EE8);
  if (qword_27DF78BA8 && (v7 = 0u, v8 = 0u, v6 = a1, (v2 = sub_23944FC1C(qword_27DF78BA8, &v6, sub_239451564, sub_239451570)) != 0))
  {
    v3 = v2;
    sub_239457D5C(&stru_27DF76EE8);
    return *(v3 + 16);
  }

  else
  {
    sub_239457D5C(&stru_27DF76EE8);
    result = bsearch(a1, &unk_2395CEB7A, 0x3B9uLL, 2uLL, sub_239450C54);
    if (result)
    {
      v5 = *result - 1;
      if (v5 >= 0x3C4)
      {
        abort();
      }

      return LODWORD(off_278A77798[5 * v5 + 2]);
    }
  }

  return result;
}

uint64_t sub_239450C54(const char *a1, unsigned __int16 *a2)
{
  v3 = *a2 - 1;
  if (v3 >= 0x3C4)
  {
    abort();
  }

  v4 = off_278A77798[5 * v3];

  return strcmp(a1, v4);
}

unsigned __int16 *sub_239450C98(const void *a1)
{
  sub_239457D1C(&stru_27DF76EE8);
  if (qword_27DF78BB0 && (v6[0] = 0, v7 = 0u, v8 = 0, v6[1] = a1, (v2 = sub_23944FC1C(qword_27DF78BB0, v6, sub_239451564, sub_239451570)) != 0))
  {
    v3 = v2;
    sub_239457D5C(&stru_27DF76EE8);
    return *(v3 + 16);
  }

  else
  {
    sub_239457D5C(&stru_27DF76EE8);
    result = bsearch(a1, &unk_2395CF2EC, 0x3B9uLL, 2uLL, sub_239450D8C);
    if (result)
    {
      v5 = *result - 1;
      if (v5 >= 0x3C4)
      {
        abort();
      }

      return LODWORD(off_278A77798[5 * v5 + 2]);
    }
  }

  return result;
}

uint64_t sub_239450D8C(const char *a1, unsigned __int16 *a2)
{
  v3 = *a2 - 1;
  if (v3 >= 0x3C4)
  {
    abort();
  }

  v4 = off_278A77798[5 * v3 + 1];

  return strcmp(a1, v4);
}

unsigned __int16 *sub_239450DD0(const char *a1)
{
  v1 = sub_239450E0C(a1, 0);
  v2 = sub_2394509E8(v1);
  sub_2393FDCD8(v1);
  return v2;
}

char **sub_239450E0C(const char *a1, int a2)
{
  if (!a2 && ((v4 = sub_239450B64(a1)) != 0 || (v4 = sub_239450C98(a1)) != 0))
  {

    return sub_239450F00(v4);
  }

  else
  {

    return sub_239451044(0, a1, 0, 0);
  }
}

uint64_t sub_239450E84(uint64_t *a1, unsigned int a2)
{
  result = sub_239450F00(a2);
  if (result)
  {
    v4 = result;
    memset(v5, 0, sizeof(v5));
    result = sub_239406A10(a1, v5, 6u);
    if (result)
    {
      result = sub_239406C48(v5, *(v4 + 24), *(v4 + 20));
      if (result)
      {
        return sub_239406758(a1) != 0;
      }
    }
  }

  return result;
}

char **sub_239450F00(unsigned int a1)
{
  if (!a1)
  {
    return off_278A77770;
  }

  if (a1 > 0x3C4)
  {
    sub_239457D1C(&stru_27DF76EE8);
    if (!qword_27DF78BB8 || (v7 = 0, v5 = 0u, v6 = 0u, LODWORD(v6) = a1, (v3 = sub_23944FC1C(qword_27DF78BB8, &v5, sub_239451564, sub_239451570)) == 0))
    {
      sub_239457D5C(&stru_27DF76EE8);
LABEL_10:
      sub_2394170F4(8, 0, 100, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/obj/obj.c", 373);
      return 0;
    }

    v2 = v3;
    sub_239457D5C(&stru_27DF76EE8);
  }

  else
  {
    v2 = &off_278A77798[5 * a1 - 5];
    if (!*(v2 + 4))
    {
      goto LABEL_10;
    }
  }

  return v2;
}

char **sub_239451004(unsigned int a1)
{
  result = sub_239450F00(a1);
  if (result)
  {
    return *result;
  }

  return result;
}

char **sub_239451024(unsigned int a1)
{
  result = sub_239450F00(a1);
  if (result)
  {
    return result[1];
  }

  return result;
}

const char **sub_239451044(uint64_t (*a1)(void), const char *a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  if (sub_2394065F4(v12, 0x20uLL) && (v8 = strlen(a2), sub_239407378(v12, a2, v8)) && sub_2394066A4(v12, &v14, &v13))
  {
    if (a1)
    {
      v9 = a1();
    }

    else
    {
      v9 = 0;
    }

    v10 = sub_2393FDC74(v9, v14, v13, a3, a4);
    sub_239450144(v14);
  }

  else
  {
    sub_2394170F4(8, 0, 101, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/obj/obj.c", 405);
    sub_239406688(v12);
    return 0;
  }

  return v10;
}

size_t sub_239451134(_BYTE *a1, int a2, uint64_t a3, int a4)
{
  if (a3 && *(a3 + 20))
  {
    if (a4 || (v13 = sub_2394509E8(a3)) == 0 || ((v14 = v13, (v15 = sub_239450F00(v13)) == 0) || (v11 = v15[1]) == 0) && ((v16 = sub_239450F00(v14)) == 0 || (v11 = *v16) == 0))
    {
      v7 = *(a3 + 20);
      v17[0] = *(a3 + 24);
      v17[1] = v7;
      v8 = sub_23940875C(v17);
      if (v8)
      {
        v9 = v8;
        v10 = sub_239451238(a1, v8, a2);
        sub_239450144(v9);
      }

      else
      {
        if (a2 >= 1)
        {
          *a1 = 0;
        }

        return 0xFFFFFFFFLL;
      }

      return v10;
    }
  }

  else
  {
    v11 = "";
  }

  return sub_239451238(a1, v11, a2);
}

size_t sub_239451238(_BYTE *a1, char *a2, int a3)
{
  result = sub_2394507BC(a1, a2, a3 & ~(a3 >> 31));
  if (result >> 31)
  {
    sub_2394170F4(8, 0, 69, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/obj/obj.c", 434);
    return 0xFFFFFFFFLL;
  }

  return result;
}

const char **sub_23945127C(const char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_239451044(sub_23945151C, a1, a2, a3);
  if (result)
  {
    v4 = result;
    *(result + 8) &= 0xFFFFFFF2;
    sub_239457D3C(&stru_27DF76EE8);
    if (!qword_27DF78BB8)
    {
      qword_27DF78BB8 = sub_23944FB28(sub_239451580, sub_239451588);
    }

    if (!qword_27DF78BA0)
    {
      qword_27DF78BA0 = sub_23944FB28(sub_239451598, sub_239450998);
    }

    v5 = qword_27DF78BA8;
    if (!qword_27DF78BA8)
    {
      v5 = sub_23944FB28(sub_2394515A8, sub_2394515B0);
      qword_27DF78BA8 = v5;
    }

    if (qword_27DF78BB0)
    {
      v6 = 0;
    }

    else
    {
      qword_27DF78BB0 = sub_23944FB28(sub_2394515BC, sub_2394515C4);
      v5 = qword_27DF78BA8;
      v6 = qword_27DF78BB0 == 0;
    }

    if (qword_27DF78BB8 && qword_27DF78BA0 && v5 && !v6)
    {
      v8 = 0;
      v7 = sub_23944FD8C(qword_27DF78BB8, &v8, v4, sub_239451564, sub_239451570);
      if (*(v4 + 20) && *(v4 + 24))
      {
        v8 = 0;
        v7 &= sub_23944FD8C(qword_27DF78BA0, &v8, v4, sub_239451564, sub_239451570);
      }

      if (*v4)
      {
        v8 = 0;
        v7 &= sub_23944FD8C(qword_27DF78BA8, &v8, v4, sub_239451564, sub_239451570);
      }

      if (*(v4 + 8))
      {
        v8 = 0;
        v7 &= sub_23944FD8C(qword_27DF78BB0, &v8, v4, sub_239451564, sub_239451570);
      }

      sub_239457D5C(&stru_27DF76EE8);
      if (v7)
      {
        return *(v4 + 16);
      }
    }

    else
    {
      sub_239457D5C(&stru_27DF76EE8);
    }

    return 0;
  }

  return result;
}

uint64_t sub_23945151C()
{
  sub_239457D3C(&unk_27DF76FB0);
  v0 = dword_27DF77078++;
  sub_239457D5C(&unk_27DF76FB0);
  return v0;
}

BOOL sub_2394515D0(int a1, _DWORD *a2, _DWORD *a3)
{
  if (a1 == 396)
  {
    v3 = &unk_2395D1294;
    result = 1;
    if (a2)
    {
LABEL_3:
      *a2 = v3[1];
    }
  }

  else
  {
    v5 = -1;
    v3 = &unk_2395D1294;
    do
    {
      if (v5 == 16)
      {
        return 0;
      }

      v6 = v3[3];
      v3 += 3;
      ++v5;
    }

    while (v6 != a1);
    result = v5 < 0x11;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  if (a3)
  {
    *a3 = v3[2];
  }

  return result;
}

BOOL sub_23945163C(_DWORD *a1, int a2, int a3)
{
  v3 = 0;
  v4 = 1;
  for (i = &dword_2395D129C; *(i - 1) != a2 || *i != a3; i += 3)
  {
    v4 = v3 < 0x11;
    if (++v3 == 18)
    {
      return 0;
    }
  }

  if (a1)
  {
    *a1 = *(i - 2);
  }

  return v4;
}

uint64_t sub_23945169C(uint64_t *a1, uint64_t a2, unsigned int *a3, unsigned int a4, uint64_t a5, unint64_t a6, const void *a7, size_t a8)
{
  v35 = *MEMORY[0x277D85DE8];
  v16 = sub_2393FFBE4(a3);
  if (v16)
  {
    v17 = v16;
    v18 = sub_2393CF9B4(a3);
    result = sub_23942C1AC(v34, v18);
    if (result)
    {
      memset(v33, 0, sizeof(v33));
      memset(v32, 0, sizeof(v32));
      memset(v31, 0, sizeof(v31));
      memset(v30, 0, sizeof(v30));
      memset(v29, 0, sizeof(v29));
      memset(v28, 0, sizeof(v28));
      memset(v27, 0, sizeof(v27));
      memset(v26, 0, sizeof(v26));
      memset(v25, 0, sizeof(v25));
      result = sub_239406A10(a1, v33, 0x20000010u);
      if (result)
      {
        result = sub_239406A10(v33, v32, 6u);
        if (result)
        {
          result = sub_239406C48(v32, &unk_2395D136C, 9uLL);
          if (result)
          {
            result = sub_239406A10(v33, v31, 0x20000010u);
            if (result)
            {
              result = sub_239406A10(v31, v30, 0x20000010u);
              if (result)
              {
                result = sub_239406A10(v30, v29, 6u);
                if (result)
                {
                  result = sub_239406C48(v29, asc_2395D1375, 9uLL);
                  if (result)
                  {
                    result = sub_239406A10(v30, v28, 0x20000010u);
                    if (result)
                    {
                      result = sub_239406A10(v28, v27, 4u);
                      if (result)
                      {
                        result = sub_239406C48(v27, a7, a8);
                        if (result)
                        {
                          result = sub_239406FE8(v28, a4);
                          if (result)
                          {
                            if (v17 != 37 || (v20 = sub_23942E7AC(a3), result = sub_239406FE8(v28, v20), result))
                            {
                              result = sub_239406A10(v31, v26, 0x20000010u);
                              if (result)
                              {
                                result = sub_239451970(v26, v17);
                                if (result)
                                {
                                  result = sub_239406A10(v26, v25, 4u);
                                  if (result)
                                  {
                                    v21 = sub_2393CF9B4(a3);
                                    result = sub_239406C48(v25, v34, v21);
                                    if (result)
                                    {
                                      result = sub_239406758(a1);
                                      if (result)
                                      {
                                        v22 = sub_2394315BC();
                                        v23 = sub_2393CF9B4(a3);
                                        result = sub_239451A24(a2, a3, v22, a4, a5, a6, a7, a8, v34, v23, 1);
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    sub_2394170F4(19, 0, 102, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/p5_pbev2.c", 170);
    result = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239451970(uint64_t *a1, int a2)
{
  v3 = 5;
  for (i = &unk_284BB9E48; i[3] != a2; i += 6)
  {
    if (!--v3)
    {
      sub_2394170F4(19, 0, 127, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/p5_pbev2.c", 142);
      return 0;
    }
  }

  memset(v6, 0, sizeof(v6));
  result = sub_239406A10(a1, v6, 6u);
  if (result)
  {
    result = sub_239406C48(v6, i, *(i + 9));
    if (result)
    {
      return sub_239406758(a1) != 0;
    }
  }

  return result;
}

BOOL sub_239451A24(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, int a11)
{
  v24 = *MEMORY[0x277D85DE8];
  if (sub_2393CF9B4(a2) == a10)
  {
    v19 = sub_23942E7AC(a2);
    v20 = sub_23941E018(a5, a6, a7, a8, a4, a3, v19, v23) && sub_23942DD48(a1, a2, 0, v23, a9, a11) != 0;
    sub_239450194(v23, 0x40uLL);
  }

  else
  {
    sub_2394170F4(19, 0, 107, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/p5_pbev2.c", 152);
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

BOOL sub_239451B5C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v30 = 0uLL;
  v29 = 0uLL;
  v28[0] = 0;
  v28[1] = 0;
  v27 = 0uLL;
  v26[0] = 0;
  v26[1] = 0;
  if (sub_239407F5C(a5, &v30, 536870928) && !*(a5 + 8) && sub_239407F5C(&v30, &v29, 536870928) && sub_239407F5C(&v30, &v27, 536870928) && !*(&v30 + 1) && sub_239407F5C(&v29, v28, 6) && sub_239407F5C(&v27, v26, 6))
  {
    if (sub_239407824(v28, asc_2395D1375, 9))
    {
      v12 = sub_239451F2C(v26);
      if (v12)
      {
        v13 = v12;
        v25 = 0uLL;
        v23 = 0;
        v24 = 0;
        v22 = 0;
        if (sub_239407F5C(&v29, &v25, 536870928) && !*(&v29 + 1) && sub_239407F5C(&v25, &v23, 4) && sub_239408120(&v25, &v22))
        {
          if (sub_239452DB4(v22))
          {
            if (sub_239408024(&v25, 2))
            {
              *&v21 = 0;
              if (!sub_239408120(&v25, &v21))
              {
                v9 = 104;
                v10 = 261;
                goto LABEL_4;
              }

              v14 = v21;
              if (v14 != sub_23942E7AC(v13))
              {
                v9 = 125;
                v10 = 266;
                goto LABEL_4;
              }
            }

            v15 = sub_2394315BC();
            if (*(&v25 + 1))
            {
              v21 = 0uLL;
              v20[0] = 0;
              v20[1] = 0;
              if (!sub_239407F5C(&v25, &v21, 536870928) || !sub_239407F5C(&v21, v20, 6) || *(&v25 + 1))
              {
                v9 = 104;
                v10 = 277;
                goto LABEL_4;
              }

              if (sub_239407824(v20, asc_2395D137E, 8))
              {
                v16 = sub_2394315BC();
              }

              else
              {
                if (!sub_239407824(v20, asc_2395D1386, 8))
                {
                  v9 = 130;
                  v10 = 288;
                  goto LABEL_4;
                }

                v16 = sub_2394316DC();
              }

              v17 = v16;
              v18 = 0;
              v19 = 0;
              if (!sub_239407F5C(&v21, &v18, 5) || v19 || *(&v21 + 1))
              {
                v9 = 104;
                v10 = 297;
                goto LABEL_4;
              }
            }

            else
            {
              v17 = v15;
            }

            v21 = 0uLL;
            if (sub_239407F5C(&v27, &v21, 4) && !*(&v27 + 1))
            {
              return sub_239451A24(a2, v13, v17, v22, a3, a4, v23, v24, v21, *(&v21 + 1), 0);
            }

            v9 = 130;
            v10 = 309;
          }

          else
          {
            v9 = 129;
            v10 = 252;
          }
        }

        else
        {
          v9 = 104;
          v10 = 247;
        }
      }

      else
      {
        v9 = 127;
        v10 = 236;
      }
    }

    else
    {
      v9 = 128;
      v10 = 229;
    }
  }

  else
  {
    v9 = 104;
    v10 = 223;
  }

LABEL_4:
  sub_2394170F4(19, 0, v9, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/p5_pbev2.c", v10);
  return 0;
}

uint64_t sub_239451F2C(uint64_t a1)
{
  v2 = &unk_284BB9E48;
  v3 = 5;
  while (!sub_239407824(a1, v2, v2[9]))
  {
    v2 += 24;
    if (!--v3)
    {
      return 0;
    }
  }

  v5 = *(v2 + 2);

  return v5();
}

uint64_t sub_239451FA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unsigned int a6, unint64_t a7, char *a8, uint64_t a9)
{
  v51 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    memset(v46, 0, sizeof(v46));
    sub_239431060(v46);
    v44 = 0;
    v45 = 0;
    if (a1)
    {
      memset(v48, 0, 48);
      if (!sub_2394065F4(v48, 2 * a2))
      {
        goto LABEL_20;
      }

      __src = a1;
      v50 = a2;
      if (a2)
      {
        while (1)
        {
          v47 = 0;
          if (!sub_239408D54(&__src, &v47) || !sub_23940915C(v48, v47))
          {
            break;
          }

          if (!v50)
          {
            goto LABEL_8;
          }
        }

        sub_2394170F4(19, 0, 131, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8.c", 90);
        goto LABEL_19;
      }

LABEL_8:
      if (!sub_23940915C(v48, 0) || !sub_2394066A4(v48, &v45, &v44))
      {
LABEL_19:
        sub_239406688(v48);
        goto LABEL_20;
      }
    }

    v16 = sub_239431058(a9);
    if (v16)
    {
      __memset_chk();
    }

    v17 = a4 + v16 - 1;
    if (v17 < a4 || (v18 = v16 - 1 + v44, __CFADD__(v16 - 1, v44)))
    {
      v19 = 151;
    }

    else
    {
      __dst = a8;
      v24 = v17 / v16 * v16;
      v25 = v18 / v16 * v16;
      if (!__CFADD__(v25, v24))
      {
        v43 = v25 + v24;
        v26 = sub_23945004C(v25 + v24);
        if (v43)
        {
          v27 = v26 == 0;
        }

        else
        {
          v27 = 0;
        }

        if (!v27)
        {
          v21 = v26;
          if (v17 != v17 % v16)
          {
            v28 = 0;
            do
            {
              *(v26 + v28) = *(a3 + v28 % a4);
              ++v28;
            }

            while (v28 < v24);
          }

          if (v18 != v18 % v16)
          {
            v29 = 0;
            do
            {
              *(v26 + v24 + v29) = *(v45 + v29 % v44);
              ++v29;
            }

            while (v29 < v25);
          }

          if (!a7)
          {
LABEL_70:
            v20 = 1;
            goto LABEL_22;
          }

          if (a6 <= 2)
          {
            v30 = 2;
          }

          else
          {
            v30 = a6;
          }

          if (v16 <= 1)
          {
            v31 = 1;
          }

          else
          {
            v31 = v16;
          }

          v47 = 0;
          if (sub_23943134C(v46, a9))
          {
            v32 = v30 - 1;
            while (sub_2394313C4(v46) && sub_2394313C4(v46) && sub_2394313E8(v46, &__src, &v47))
            {
              v33 = v32;
              if (a6 != 1)
              {
                while (sub_23943134C(v46, a9) && sub_2394313C4(v46) && sub_2394313E8(v46, &__src, &v47))
                {
                  if (!--v33)
                  {
                    goto LABEL_50;
                  }
                }

                break;
              }

LABEL_50:
              v34 = v47;
              if (a7 >= v47)
              {
                v35 = v47;
              }

              else
              {
                v35 = a7;
              }

              if (v47)
              {
                memcpy(__dst, &__src, v35);
              }

              a7 -= v35;
              if (!a7)
              {
                goto LABEL_70;
              }

              v36 = 0;
              __dst += v35;
              do
              {
                *(v48 + v36) = *(&__src + v36 % v34);
                ++v36;
              }

              while (v31 != v36);
              if (v43)
              {
                v37 = 0;
                v38 = v21;
                do
                {
                  v39 = 1;
                  v40 = v16 - 1;
                  do
                  {
                    v41 = v39 + *(v38 + v40) + *(v48 + v40);
                    *(v38 + v40) = v41;
                    v39 = v41 >> 8;
                    --v40;
                  }

                  while (v40 < v16);
                  v37 += v16;
                  v38 = (v38 + v16);
                }

                while (v37 < v43);
              }

              v47 = 0;
              if (!sub_23943134C(v46, a9))
              {
                break;
              }
            }
          }

LABEL_21:
          v20 = 0;
LABEL_22:
          sub_239450144(v21);
          sub_239450144(v45);
          sub_239431094(v46);
          goto LABEL_23;
        }

LABEL_20:
        v21 = 0;
        goto LABEL_21;
      }

      v19 = 158;
    }

    sub_2394170F4(19, 0, 69, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8.c", v19);
    goto LABEL_20;
  }

  sub_2394170F4(19, 0, 129, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8.c", 115);
  v20 = 0;
LABEL_23:
  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t sub_2394523EC(uint64_t *a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, const void *a7, size_t a8)
{
  v15 = 4;
  for (i = &dword_284BB9EC0; *i != a3 || !*(i + 2) || !*(i + 3); i += 10)
  {
    if (!--v15)
    {
      sub_2394170F4(19, 0, 119, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8.c", 337);
      return 0;
    }
  }

  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  result = sub_239406A10(a1, v21, 0x20000010u);
  if (result)
  {
    result = sub_239406A10(v21, v20, 6u);
    if (result)
    {
      result = sub_239406C48(v20, i + 1, *(i + 14));
      if (result)
      {
        result = sub_239406A10(v21, v19, 0x20000010u);
        if (result)
        {
          result = sub_239406A10(v19, v18, 4u);
          if (result)
          {
            result = sub_239406C48(v18, a7, a8);
            if (result)
            {
              result = sub_239406FE8(v19, a4);
              if (result)
              {
                result = sub_239406758(a1);
                if (result)
                {
                  return sub_239452584(i, a2, a4, a5, a6, a7, a8, 1);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_239452584(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, int a8)
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = (*(a1 + 16))();
  v17 = (*(a1 + 24))();
  v18 = sub_23942E7AC(v16);
  if (sub_239451FA8(a4, a5, a6, a7, 1, a3, v18, v24, v17) && (v19 = sub_2393CF9B4(v16), sub_239451FA8(a4, a5, a6, a7, 2, a3, v19, v23, v17)))
  {
    v20 = sub_23942DD48(a2, v16, 0, v24, v23, a8);
    sub_239450194(v24, 0x40uLL);
    sub_239450194(v23, 0x10uLL);
  }

  else
  {
    sub_2394170F4(19, 0, 110, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8.c", 245);
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t sub_2394526F4(void *a1, void *a2, __int128 *a3, uint64_t a4, uint64_t a5, char *a6, unint64_t a7)
{
  v26 = *MEMORY[0x277D85DE8];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  sub_23942DB08(v24);
  v23[0] = 0;
  v23[1] = 0;
  if (!sub_239407F5C(a3, v23, 6))
  {
    v16 = 104;
    v17 = 368;
LABEL_12:
    sub_2394170F4(19, 0, v16, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8.c", v17);
    v19 = 0;
    goto LABEL_13;
  }

  v14 = &dword_284BB9EC0;
  v15 = 4;
  while (!sub_239407824(v23, v14 + 4, *(v14 + 14)))
  {
    v14 += 10;
    if (!--v15)
    {
      v16 = 119;
      v17 = 380;
      goto LABEL_12;
    }
  }

  if (!(*(v14 + 4))(v14, v24, a4, a5, a3))
  {
    v16 = 109;
    v17 = 385;
    goto LABEL_12;
  }

  v18 = sub_23945004C(a7);
  if (!v18)
  {
LABEL_18:
    v19 = 0;
    goto LABEL_14;
  }

  if (a7 >> 31)
  {
    sub_2394170F4(19, 0, 69, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8.c", 395);
    goto LABEL_18;
  }

  v22 = 0;
  if (!sub_23942E3A4(v24, v18, &v22 + 1, a6, a7) || !sub_23942E56C(v24, v18 + SHIDWORD(v22), &v22))
  {
    goto LABEL_18;
  }

  *a1 = v18;
  *a2 = v22 + SHIDWORD(v22);
  v19 = 1;
LABEL_13:
  v18 = 0;
LABEL_14:
  sub_239450144(v18);
  sub_23942DB64(v24);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t sub_23945290C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v14 = 0uLL;
  v13 = 0uLL;
  v11 = 0;
  v12 = 0;
  if (!sub_239407F5C(a1, &v14, 536870928) || !sub_239407F5C(&v14, &v13, 536870928) || !sub_239407F5C(&v14, &v11, 4) || *(&v14 + 1))
  {
    sub_2394170F4(19, 0, 104, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8.c", 424);
    return 0;
  }

  v9 = 0;
  v10 = 0;
  if (!sub_2394526F4(&v10, &v9, &v13, a2, a3, v11, v12))
  {
    return 0;
  }

  v5 = v10;
  *&v8 = v10;
  *(&v8 + 1) = v9;
  v6 = sub_23941837C(&v8);
  sub_239450144(v5);
  return v6;
}

BOOL sub_2394529F4(uint64_t *a1, int a2, unsigned int *a3, uint64_t a4, unint64_t a5, char *a6, unint64_t a7, signed int a8, uint64_t a9)
{
  v33 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30 = 0;
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  sub_23942DB08(v31);
  if (a6)
  {
    v17 = 0;
  }

  else
  {
    if (!a7)
    {
      a7 = 8;
    }

    v21 = sub_23945004C(a7);
    v17 = v21;
    if (!v21 || !sub_23942C1AC(v21, a7))
    {
      goto LABEL_13;
    }

    a6 = v17;
  }

  memset(&v28[1], 0, 32);
  if (a8 < 1)
  {
    a8 = 2048;
  }

  v28[0] = 0uLL;
  if (sub_2394065F4(v28, 0x80uLL) && sub_2394184BC(v28, a9) && sub_2394066A4(v28, &v30, &v29))
  {
    memset(v27, 0, sizeof(v27));
    if (sub_239406A10(a1, v27, 0x20000010u))
    {
      if (a2 == -1)
      {
        if (!sub_23945169C(v27, v31, a3, a8, a4, a5, a6, a7))
        {
          goto LABEL_13;
        }
      }

      else if (!sub_2394523EC(v27, v31, a2, a8, a4, a5, a6, a7))
      {
        goto LABEL_13;
      }

      v22 = v29;
      v23 = v22 + sub_23942E708(v31);
      if (v23 >= v29)
      {
        memset(v26, 0, sizeof(v26));
        v24 = 0;
        v25 = 0;
        if (sub_239406A10(v27, v26, 4u) && sub_239406D58(v26, &v25, v23) && sub_23942E6E8(v31, v25, &v24 + 1, v30, v29) && sub_23942E6F8(v31, v25 + SHIDWORD(v24), &v24) && sub_239406E80(v26, v24 + SHIDWORD(v24)))
        {
          v18 = sub_239406758(a1) != 0;
          goto LABEL_14;
        }
      }

      else
      {
        sub_2394170F4(19, 0, 118, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8.c", 504);
      }
    }
  }

  else
  {
    sub_239406688(v28);
  }

LABEL_13:
  v18 = 0;
LABEL_14:
  sub_239450144(v30);
  sub_239450144(v17);
  sub_23942DB64(v31);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t sub_239452CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = 0uLL;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  if (sub_239407F5C(a5, &v16, 536870928) && sub_239407F5C(&v16, &v14, 4) && sub_239408120(&v16, &v13) && !*(&v16 + 1) && !*(a5 + 8))
  {
    if (sub_239452DB4(v13))
    {
      return sub_239452584(a1, a2, v13, a3, a4, v14, v15, 0);
    }

    v10 = 129;
    v11 = 270;
  }

  else
  {
    v10 = 104;
    v11 = 265;
  }

  sub_2394170F4(19, 0, v10, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8.c", v11);
  return 0;
}

uint64_t sub_239452DFC(uint64_t a1)
{
  v5 = 0;
  v1 = sub_2394018FC(a1, &v5, byte_278A80EE0);
  if ((v1 & 0x80000000) != 0)
  {
    return 0;
  }

  *&v4 = v5;
  *(&v4 + 1) = v1;
  v2 = sub_23941837C(&v4);
  if (!v2 || *(&v4 + 1))
  {
    sub_2394170F4(19, 0, 104, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8_x509.c", 115);
    sub_239417838(v2);
    v2 = 0;
  }

  sub_239450144(v5);
  return v2;
}

uint64_t sub_239452E98(uint64_t a1)
{
  memset(v10, 0, sizeof(v10));
  v8 = 0;
  v9 = 0;
  if (!sub_2394065F4(v10, 0) || !sub_2394184BC(v10, a1) || !sub_2394066A4(v10, &v9, &v8) || v8 < 0)
  {
    sub_239406688(v10);
    v4 = 105;
    v5 = 134;
    goto LABEL_9;
  }

  v7 = v9;
  v2 = sub_2394004F8(0, &v7, v8, byte_278A80EE0);
  if (!v2 || (v3 = v9, v7 != v9 + v8))
  {
    sub_2394026C0(v2, byte_278A80EE0);
    v4 = 104;
    v5 = 142;
LABEL_9:
    sub_2394170F4(19, 0, v4, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8_x509.c", v5);
    v2 = 0;
    v3 = v9;
  }

  sub_239450144(v3);
  return v2;
}

uint64_t sub_239452FA4(uint64_t a1, char *__s, int a3)
{
  if (__s && a3 == -1)
  {
    v5 = strlen(__s);
  }

  else
  {
    v5 = a3;
  }

  v12 = 0;
  v6 = sub_23946EC58(a1, &v12);
  if ((v6 & 0x80000000) != 0)
  {
    v9 = 0;
    v8 = 0;
  }

  else
  {
    *&v11 = v12;
    *(&v11 + 1) = v6;
    v7 = sub_23945290C(&v11, __s, v5);
    v8 = v7;
    if (v7 && !*(&v11 + 1))
    {
      v9 = sub_239452E98(v7);
    }

    else
    {
      v9 = 0;
    }
  }

  sub_239450144(v12);
  sub_239417838(v8);
  return v9;
}

uint64_t sub_23945306C(int a1, unsigned int *a2, char *__s, int a4, char *a5, unint64_t a6, signed int a7, uint64_t a8)
{
  if (__s && a4 == -1)
  {
    v15 = strlen(__s);
  }

  else
  {
    v15 = a4;
  }

  v16 = sub_239452DFC(a8);
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v22 = 0;
  v23 = 0;
  memset(v21, 0, sizeof(v21));
  if (sub_2394065F4(v21, 0x80uLL) && sub_2394529F4(v21, a1, a2, __s, v15, a5, a6, a7, v17) && sub_2394066A4(v21, &v23, &v22))
  {
    v20 = v23;
    v18 = sub_23946EC4C(0, &v20, v22);
    if (v18 && v20 == v23 + v22)
    {
      goto LABEL_14;
    }

    sub_2394170F4(19, 0, 68, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8_x509.c", 221);
    sub_23946EC70(v18);
  }

  else
  {
    sub_239406688(v21);
  }

  v18 = 0;
LABEL_14:
  sub_239450144(v23);
  sub_239417838(v17);
  return v18;
}

uint64_t sub_2394531D4(uint64_t *a1, uint64_t *a2, uint64_t a3, const char *a4)
{
  v34 = 0;
  v33 = 0uLL;
  v32 = 0uLL;
  v31 = 0uLL;
  v30 = 0uLL;
  v29[0] = 0;
  v29[1] = 0;
  v28 = 0uLL;
  v27[0] = 0;
  v27[1] = 0;
  v26 = 0;
  v8 = sub_239431484(a2);
  if (sub_2394060F0(a3, &v33, &v34))
  {
    *a1 = 0;
    v24 = 0u;
    v25 = 0u;
    if (sub_239407F5C(&v33, &v32, 536870928) && !*(&v33 + 1) && sub_239408120(&v32, &v26))
    {
      if (v26 > 2)
      {
        if (sub_239407F5C(&v32, &v30, 536870928))
        {
          if (*(&v32 + 1))
          {
            if (sub_239407F5C(&v32, &v31, 536870928))
            {
              if (sub_239407F5C(&v30, v29, 6) && sub_239407F5C(&v30, &v28, -1610612736))
              {
                if (sub_239407824(v29, asc_2395D138E, 9))
                {
                  if (sub_239407F5C(&v28, v27, 4))
                  {
                    *&v24 = a1;
                    *(&v24 + 1) = a2;
                    *&v25 = a4;
                    if (a4)
                    {
                      v13 = strlen(a4);
                    }

                    else
                    {
                      v13 = 0;
                    }

                    *(&v25 + 1) = v13;
                    v23 = 0uLL;
                    v22[0] = 0;
                    v22[1] = 0;
                    v21[0] = 0;
                    v21[1] = 0;
                    if (!sub_239407F5C(&v31, &v23, 536870928))
                    {
                      v9 = 100;
                      v10 = 665;
                      goto LABEL_8;
                    }

                    v14 = sub_23941292C(&v23);
                    if (!v14)
                    {
                      goto LABEL_9;
                    }

                    v15 = v14;
                    if (!sub_239407F5C(&v23, v21, 4) || !sub_239407F5C(&v31, v22, 4))
                    {
                      v9 = 100;
                      v10 = 676;
                      goto LABEL_8;
                    }

                    if (*(&v31 + 1))
                    {
                      v20 = 0;
                      if (!sub_239408120(&v31, &v20) || (v16 = v20, v20 - 100000001 < 0xFFFFFFFFFA0A1F00))
                      {
                        v9 = 100;
                        v10 = 686;
                        goto LABEL_8;
                      }
                    }

                    else
                    {
                      v16 = 1;
                    }

                    LODWORD(v20) = 0;
                    if (!sub_239453644(&v20, a4, v13, v22, v16, v15, v27, v21))
                    {
                      goto LABEL_9;
                    }

                    v17 = v20;
                    if (!v20 && !v13)
                    {
                      if (a4)
                      {
                        v18 = 0;
                      }

                      else
                      {
                        v18 = "";
                      }

                      *&v25 = v18;
                      if (!sub_239453644(&v20, v18, 0, v22, v16, v15, v27, v21))
                      {
                        goto LABEL_9;
                      }

                      v17 = v20;
                    }

                    if (v17)
                    {
                      v19 = sub_239453764(v27, &v24, sub_239453878);
                      sub_239450144(v34);
                      if (v19)
                      {
                        return 1;
                      }

                      goto LABEL_10;
                    }

                    v9 = 108;
                    v10 = 710;
                    goto LABEL_8;
                  }

                  v9 = 100;
                  v10 = 652;
                }

                else
                {
                  v9 = 114;
                  v10 = 647;
                }
              }

              else
              {
                v9 = 100;
                v10 = 640;
              }
            }

            else
            {
              v9 = 100;
              v10 = 631;
            }
          }

          else
          {
            v9 = 112;
            v10 = 626;
          }
        }

        else
        {
          v9 = 100;
          v10 = 621;
        }
      }

      else
      {
        v9 = 101;
        v10 = 616;
      }
    }

    else
    {
      v9 = 100;
      v10 = 611;
    }

LABEL_8:
    sub_2394170F4(19, 0, v9, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8_x509.c", v10);
LABEL_9:
    sub_239450144(v34);
LABEL_10:
    sub_239417838(*a1);
    *a1 = 0;
    while (sub_239431484(a2) > v8)
    {
      v11 = sub_2394579D8(a2);
      sub_23946EDF8(v11);
    }

    return 0;
  }

  sub_2394170F4(19, 0, 100, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8_x509.c", 599);
  return 0;
}

uint64_t sub_239453644(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v25 = *MEMORY[0x277D85DE8];
  v15 = *a4;
  v16 = a4[1];
  v17 = sub_2393FFBEC(a6);
  if (sub_239451FA8(a2, a3, v15, v16, 3, a5, v17, v24, a6) && (v22 = 0, v18 = sub_2393FFBEC(a6), sub_23943AAC0(a6, v24, v18, *a7, a7[1], v23, &v22)))
  {
    *a1 = sub_239407824(a8, v23, v22);
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  sub_239450194(v24, 0x40uLL);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t sub_239453764(uint64_t a1, uint64_t a2, unsigned int (*a3)(void *, uint64_t))
{
  v11 = 0;
  v10 = 0uLL;
  if (sub_2394060F0(a1, &v10, &v11))
  {
    v9 = 0uLL;
    if (!sub_239407F5C(&v10, &v9, 536870928) || *(&v10 + 1))
    {
      v6 = 260;
    }

    else
    {
      while (1)
      {
        if (!*(&v9 + 1))
        {
          v5 = 1;
          goto LABEL_13;
        }

        v8[0] = 0;
        v8[1] = 0;
        if (!sub_239407F5C(&v9, v8, 536870928))
        {
          break;
        }

        if (!a3(v8, a2))
        {
          goto LABEL_11;
        }
      }

      v6 = 267;
    }

    sub_2394170F4(19, 0, 100, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8_x509.c", v6);
LABEL_11:
    v5 = 0;
LABEL_13:
    sub_239450144(v11);
  }

  else
  {
    sub_2394170F4(19, 0, 100, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8_x509.c", 253);
    return 0;
  }

  return v5;
}

uint64_t sub_239453878(uint64_t a1, uint64_t a2)
{
  v21[0] = 0;
  v21[1] = 0;
  v20 = 0uLL;
  v19 = 0uLL;
  v18 = 0;
  if (!sub_239407F5C(a1, v21, 6) || !sub_239407F5C(a1, &v20, -1610612736) || *(a1 + 8))
  {
    sub_2394170F4(19, 0, 100, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8_x509.c", 490);
    v4 = 0;
    v5 = 0;
    goto LABEL_5;
  }

  if (sub_239407824(v21, asc_2395D13AD, 9))
  {
    v16 = 0;
    v17 = 0;
    v15 = 0uLL;
    v14[0] = 0;
    v14[1] = 0;
    v13 = 0uLL;
    v11 = 0;
    v12 = 0;
    v9 = 0;
    v10 = 0;
    if (sub_239407F5C(&v20, &v19, 536870928) && sub_239407F5C(&v19, &v16, 2) && sub_239407F5C(&v19, &v15, 536870928) && sub_239407F5C(&v15, v14, 6) && sub_239407F5C(&v15, &v13, 536870928) && sub_2394064B8(&v15, &v11, &v18, 0x80000000, 4))
    {
      if (sub_239407824(v14, asc_2395D138E, 9))
      {
        if (sub_2394526F4(&v10, &v9, &v13, *(a2 + 16), *(a2 + 24), v11, v12))
        {
          v8[0] = v10;
          v8[1] = v9;
          v5 = sub_239453764(v8, a2, sub_239454C70);
          sub_239450144(v10);
LABEL_19:
          v4 = v18;
          goto LABEL_5;
        }

LABEL_18:
        v5 = 0;
        goto LABEL_19;
      }

      v7 = 522;
    }

    else
    {
      v7 = 517;
    }

    sub_2394170F4(19, 0, 100, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8_x509.c", v7);
    goto LABEL_18;
  }

  if (sub_239407824(v21, asc_2395D138E, 9))
  {
    v16 = 0;
    v17 = 0;
    if (sub_239407F5C(&v20, &v16, 4))
    {
      v5 = sub_239453764(&v16, a2, sub_239454C70);
    }

    else
    {
      sub_2394170F4(19, 0, 100, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8_x509.c", 541);
      v5 = 0;
    }

    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

LABEL_5:
  sub_239450144(v4);
  return v5;
}

void *sub_239453AFC(void **a1, const void **a2, unint64_t a3)
{
  v6 = sub_23945004C(0x10uLL);
  if (v6)
  {
    v7 = sub_239450350(*a2, a3);
    *v6 = v7;
    if (v7)
    {
      v6[1] = a3;
      *a2 = *a2 + a3;
      if (a1)
      {
        sub_239453B84(*a1);
        *a1 = v6;
      }
    }

    else
    {
      sub_239450144(v6);
      return 0;
    }
  }

  return v6;
}

void sub_239453B84(void *a1)
{
  if (a1)
  {
    sub_239450144(*a1);

    sub_239450144(a1);
  }
}

void *sub_239453BC8(uint64_t a1, void **a2)
{
  v4 = sub_239405E68();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (!sub_239405F30(v4, 0x2000uLL) || (*v5 >= 0x7FFFFFFFuLL ? (LODWORD(v6) = 0x7FFFFFFF) : (v6 = *v5), v7 = sub_2394035E8(a1, *(v5 + 8), v6), (v7 & 0x80000000) != 0))
  {
LABEL_19:
    v12 = 0;
  }

  else
  {
    v8 = 0;
    while (v7)
    {
      v8 += v7;
      v9 = *v5;
      if (v8 >= *v5)
      {
        if (v9 > 0x40000 || !sub_239405F30(v5, 2 * v9))
        {
          goto LABEL_19;
        }

        v9 = *v5;
      }

      v10 = v9 - v8;
      if (v10 >= 0x7FFFFFFF)
      {
        v11 = 0x7FFFFFFF;
      }

      else
      {
        v11 = v10;
      }

      v7 = sub_2394035E8(a1, *(v5 + 8) + v8, v11);
      if ((v7 & 0x80000000) != 0)
      {
        if (!v8)
        {
          goto LABEL_19;
        }

        break;
      }
    }

    v14 = *(v5 + 8);
    v12 = sub_239453AFC(a2, &v14, v8);
  }

  sub_2393FFA58(v5);
  return v12;
}

void *sub_239453CCC(uint64_t a1, void **a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_239453BC8(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_239453D14(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  if (!(v2 >> 31))
  {
    if (!a2)
    {
      return v2;
    }

    v5 = *a2;
    if (*a2)
    {
      if (v2)
      {
        memcpy(v5, *a1, v2);
        v6 = *(a1 + 8);
        v5 = *a2;
      }

      else
      {
        v6 = 0;
      }

      *a2 = &v5[v6];
    }

    else
    {
      v7 = sub_239450350(*a1, v2);
      *a2 = v7;
      if (!v7)
      {
        return 0xFFFFFFFFLL;
      }
    }

    return *(a1 + 8);
  }

  sub_2394170F4(19, 0, 69, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8_x509.c", 834);
  return 0xFFFFFFFFLL;
}

void *sub_239453DC4(uint64_t a1, uint64_t a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_2394037E0(result, *a2, *(a2 + 8));
    sub_239403520(v4);
    return v5;
  }

  return result;
}

uint64_t sub_239453E0C(void *a1, const char *a2, uint64_t *a3, unint64_t **a4, unint64_t **a5)
{
  if (a5 && (v10 = *a5) != 0)
  {
    v11 = 0;
  }

  else
  {
    result = sub_2394574D8();
    if (!result)
    {
      return result;
    }

    v10 = result;
    v11 = 1;
  }

  v13 = a1[1];
  v18[0] = *a1;
  v18[1] = v13;
  if (sub_2394531D4(a3, v10, v18, a2))
  {
    *a4 = 0;
    v14 = sub_239431484(v10);
    if (*a3 && (v15 = v14) != 0)
    {
      v16 = v14 - 1;
      while (1)
      {
        v17 = sub_239457528(v10, v16);
        if (sub_239465F64(v17, *a3))
        {
          break;
        }

        sub_239416A38();
        if (--v16 >= v15)
        {
          goto LABEL_12;
        }
      }

      *a4 = v17;
      sub_239457700(v10, v16);
      if (!a5)
      {
        goto LABEL_18;
      }
    }

    else
    {
LABEL_12:
      if (!a5)
      {
LABEL_18:
        sub_239457574(v10, sub_239455184, sub_23946EDF8);
        return 1;
      }
    }

    *a5 = v10;
    return 1;
  }

  if (v11)
  {
    sub_2393FFA58(v10);
  }

  return 0;
}

uint64_t sub_239453F4C(void *a1, _BYTE *__s, int a3)
{
  if (__s)
  {
    if (a3 != -1 && (__s[a3] || a3 && memchr(__s, 0, a3)))
    {
      return 0;
    }
  }

  else if (a3)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  if (sub_239453E0C(a1, __s, &v7, &v6, 0))
  {
    sub_239417838(v7);
    sub_23946EDF8(v6);
    return 1;
  }

  sub_239416A38();
  return 0;
}

void *sub_239453FEC(char *__s, const char *a2, uint64_t a3, uint64_t a4, unint64_t *a5, int a6, int a7, unsigned int a8, unsigned int a9, int a10)
{
  v64 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v10 = a6;
  }

  else
  {
    v10 = 146;
  }

  if (a7)
  {
    v11 = a7;
  }

  else
  {
    v11 = 149;
  }

  if (a8)
  {
    v12 = a8;
  }

  else
  {
    v12 = 2048;
  }

  if (a9 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = a9;
  }

  if (a10 || (v13 & 0x80000000) != 0 || !(a3 | a4) && !sub_239431484(a5))
  {
    sub_2394170F4(19, 0, 132, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8_x509.c", 1143);
  }

  else
  {
    if (__s)
    {
      v19 = strlen(__s);
    }

    else
    {
      v19 = 0;
    }

    v57 = 0;
    if (!a3 || !a4 || sub_239465F64(a4, a3) && (v21 = sub_2394315BC(), sub_23946CD70(a4, v21, v63, &v57)))
    {
      memset(v56, 0, sizeof(v56));
      memset(v55, 0, sizeof(v55));
      memset(v54, 0, sizeof(v54));
      memset(v53, 0, sizeof(v53));
      memset(v52, 0, sizeof(v52));
      memset(v51, 0, sizeof(v51));
      memset(v50, 0, sizeof(v50));
      if (!sub_2394065F4(v56, 0) || !sub_239406A10(v56, v55, 0x20000010u) || !sub_239406FE8(v55, 3uLL) || !sub_239406A10(v55, v54, 0x20000010u) || !sub_239406A10(v54, v53, 6u) || !sub_239406C48(v53, asc_2395D138E, 9uLL) || !sub_239406A10(v54, v52, 0xA0000000) || !sub_239406A10(v52, v51, 4u) || !sub_239406A10(v51, v50, 0x20000010u))
      {
        goto LABEL_87;
      }

      if (a4 || sub_239431484(a5))
      {
        if (v11 < 0)
        {
          v61 = 0uLL;
          v62 = 0uLL;
          v60 = 0uLL;
          v48 = 0uLL;
          v49 = 0uLL;
          v46 = 0uLL;
          v47 = 0uLL;
          v44 = 0uLL;
          v45 = 0uLL;
          v42 = 0uLL;
          v43 = 0uLL;
          v41 = 0uLL;
          if (!sub_239406A10(v50, &v60, 0x20000010u) || !sub_239406A10(&v60, &v47, 6u) || !sub_239406C48(&v47, asc_2395D138E, 9uLL) || !sub_239406A10(&v60, &v44, 0xA0000000) || !sub_239406A10(&v44, &v41, 4u) || !sub_2394546E0(&v41, a4, a5, a2, v63, v57) || !sub_239406758(v50))
          {
            goto LABEL_87;
          }
        }

        else
        {
          v61 = 0uLL;
          v62 = 0uLL;
          v60 = 0uLL;
          if (!sub_2394065F4(&v60, 0) || !sub_2394546E0(&v60, a4, a5, a2, v63, v57))
          {
            sub_239406688(&v60);
            goto LABEL_87;
          }

          v22 = sub_239406940(&v60);
          v23 = sub_239406968(&v60);
          LODWORD(v22) = sub_2394547C0(v50, v11, __s, v19, v12, v22, v23);
          sub_239406688(&v60);
          if (!v22)
          {
LABEL_87:
            v20 = 0;
LABEL_88:
            sub_239450194(&v60, 0x40uLL);
            sub_239406688(v56);
            goto LABEL_89;
          }
        }
      }

      if (a3)
      {
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v41 = 0u;
        memset(v40, 0, sizeof(v40));
        memset(v39, 0, sizeof(v39));
        memset(v38, 0, sizeof(v38));
        memset(v37, 0, sizeof(v37));
        if (!sub_239406A10(v50, &v60, 0x20000010u) || !sub_239406A10(&v60, &v47, 6u) || !sub_239406C48(&v47, asc_2395D138E, 9uLL) || !sub_239406A10(&v60, &v44, 0xA0000000) || !sub_239406A10(&v44, &v41, 4u) || !sub_239406A10(&v41, v40, 0x20000010u) || !sub_239406A10(v40, v39, 0x20000010u) || !sub_239406A10(v39, v38, 6u))
        {
          goto LABEL_87;
        }

        if (v10 < 0)
        {
          if (!sub_239406C48(v38, asc_2395D1397, 0xBuLL) || !sub_239406A10(v39, v37, 0xA0000000) || !sub_2394184BC(v37, a3))
          {
            goto LABEL_87;
          }
        }

        else if (!sub_239406C48(v38, asc_2395D13A2, 0xBuLL) || !sub_239406A10(v39, v37, 0xA0000000) || !sub_2394529F4(v37, v10, 0, __s, v19, 0, 0, v12, a3))
        {
          goto LABEL_87;
        }

        if (a2)
        {
          v24 = strlen(a2);
        }

        else
        {
          v24 = 0;
        }

        if (!sub_239454A64(v39, a2, v24, v63, v57) || !sub_239406758(v50))
        {
          goto LABEL_87;
        }
      }

      v25 = sub_2394315BC();
      v36 = 0;
      if (sub_239406758(v51))
      {
        if (sub_23942C1AC(v59, 8uLL))
        {
          v26 = sub_2393FFBEC(v25);
          if (sub_239451FA8(__s, v19, v59, 8uLL, 3, v13, v26, &v60, v25))
          {
            v27 = sub_2393FFBEC(v25);
            v28 = sub_239406940(v51);
            v29 = sub_239406968(v51);
            if (sub_23943AAC0(v25, &v60, v27, v28, v29, v58, &v36))
            {
              memset(v35, 0, sizeof(v35));
              memset(v34, 0, sizeof(v34));
              memset(v33, 0, sizeof(v33));
              memset(v32, 0, sizeof(v32));
              if (sub_239406A10(v55, v35, 0x20000010u))
              {
                if (sub_239406A10(v35, v34, 0x20000010u) && sub_239412A20(v34, v25) && sub_239406A10(v34, v33, 4u) && sub_239406C48(v33, v58, v36) && sub_239406A10(v35, v32, 4u) && sub_239406C48(v32, v59, 8uLL) && sub_239406FE8(v35, v13))
                {
                  v20 = sub_23945004C(0x10uLL);
                  if (v20 && sub_2394066A4(v56, v20, v20 + 1))
                  {
                    goto LABEL_88;
                  }

                  sub_239450144(v20);
                }
              }
            }
          }
        }
      }

      goto LABEL_87;
    }
  }

  v20 = 0;
LABEL_89:
  v30 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t sub_2394546E0(uint64_t *a1, uint64_t *a2, unint64_t *a3, const char *a4, const void *a5, size_t a6)
{
  memset(v15, 0, sizeof(v15));
  result = sub_239406A10(a1, v15, 0x20000010u);
  if (result)
  {
    if (!a2 || (result = sub_239455190(v15, a2, a4, a5, a6), result))
    {
      if (sub_239431484(a3))
      {
        v13 = 0;
        while (1)
        {
          v14 = sub_239457528(a3, v13);
          result = sub_239455190(v15, v14, 0, 0, 0);
          if (!result)
          {
            break;
          }

          if (++v13 >= sub_239431484(a3))
          {
            return sub_239406758(a1);
          }
        }
      }

      else
      {
        return sub_239406758(a1);
      }
    }
  }

  return result;
}

BOOL sub_2394547C0(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, char *a6, size_t a7)
{
  v31 = *MEMORY[0x277D85DE8];
  if (sub_23942C1AC(v30, 8uLL))
  {
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    sub_23942DB08(v28);
    memset(v27, 0, sizeof(v27));
    memset(v26, 0, sizeof(v26));
    memset(v25, 0, sizeof(v25));
    memset(v24, 0, sizeof(v24));
    memset(v23, 0, sizeof(v23));
    memset(v22, 0, sizeof(v22));
    memset(v21, 0, sizeof(v21));
    if (sub_239406A10(a1, v27, 0x20000010u) && sub_239406A10(v27, v26, 6u) && sub_239406C48(v26, asc_2395D13AD, 9uLL) && sub_239406A10(v27, v25, 0xA0000000) && sub_239406A10(v25, v24, 0x20000010u) && sub_239406FE8(v24, 0) && sub_239406A10(v24, v23, 0x20000010u) && sub_239406A10(v23, v22, 6u) && sub_239406C48(v22, asc_2395D138E, 9uLL) && sub_2394523EC(v23, v28, a2, a5, a3, a4, v30, 8uLL) && sub_239406A10(v23, v21, 0x80000000))
    {
      v14 = sub_23942E708(v28);
      if (__CFADD__(a7, v14))
      {
        sub_2394170F4(19, 0, 118, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8_x509.c", 1097);
      }

      else
      {
        v19 = 0;
        v20 = 0;
        v16 = sub_239406D58(v21, &v20, a7 + v14);
        if (v16 && sub_23942E6E8(v28, v20, &v19 + 1, a6, a7) && sub_23942E6F8(v28, v20 + SHIDWORD(v19), &v19) && sub_239406E80(v21, v19 + SHIDWORD(v19)))
        {
          v15 = sub_239406758(a1) != 0;
LABEL_23:
          sub_23942DB64(v28);
          goto LABEL_24;
        }
      }
    }

    v15 = 0;
    goto LABEL_23;
  }

  v15 = 0;
LABEL_24:
  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t sub_239454A64(uint64_t *a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5)
{
  if (!a2 && !a5)
  {
    return 1;
  }

  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  memset(v15, 0, sizeof(v15));
  memset(v14, 0, sizeof(v14));
  result = sub_239406A10(a1, v18, 0x20000011u);
  if (result)
  {
    if (a3)
    {
      result = sub_239406A10(v18, v17, 0x20000010u);
      if (result)
      {
        result = sub_239406A10(v17, v16, 6u);
        if (result)
        {
          result = sub_239406C48(v16, asc_2395D13CB, 9uLL);
          if (result)
          {
            result = sub_239406A10(v17, v15, 0x20000011u);
            if (result)
            {
              result = sub_239406A10(v15, v14, 0x1Eu);
              if (result)
              {
                v12 = a2;
                v13 = a3;
                while (1)
                {
                  v11 = 0;
                  if (!sub_239408D54(&v12, &v11) || !sub_23940915C(v14, v11))
                  {
                    break;
                  }

                  if (!v13)
                  {
                    goto LABEL_15;
                  }
                }

                sub_2394170F4(19, 0, 131, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8_x509.c", 973);
                return 0;
              }
            }
          }
        }
      }
    }

    else
    {
LABEL_15:
      if (!a5 || (result = sub_239406A10(v18, v17, 0x20000010u), result) && (result = sub_239406A10(v17, v16, 6u), result) && (result = sub_239406C48(v16, &unk_2395D13D4, 9uLL), result) && (result = sub_239406A10(v17, v15, 0x20000011u), result) && (result = sub_239406A10(v15, v14, 4u), result) && (result = sub_239406C48(v14, a4, a5), result))
      {
        result = sub_2394074C8(v18);
        if (result)
        {
          return sub_239406758(a1) != 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_239454C70(uint64_t a1, uint64_t a2)
{
  v24[0] = 0;
  v24[1] = 0;
  v23 = 0uLL;
  v21 = 0;
  v22 = 0;
  if (!sub_239407F5C(a1, v24, 6) || !sub_239407F5C(a1, &v23, -1610612736))
  {
    v4 = 100;
    v5 = 373;
    goto LABEL_8;
  }

  if (*(a1 + 8))
  {
    if (!sub_239407F5C(a1, &v21, 536870929) || *(a1 + 8))
    {
      v4 = 100;
      v5 = 380;
LABEL_8:
      sub_2394170F4(19, 0, v4, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8_x509.c", v5);
      return 0;
    }
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v7 = sub_239407824(v24, asc_2395D1397, 11);
  if (!(v7 | sub_239407824(v24, asc_2395D13A2, 11)))
  {
    if (!sub_239407824(v24, asc_2395D13B6, 11))
    {
      return 1;
    }

    v20 = 0uLL;
    v19[0] = 0;
    v19[1] = 0;
    v18 = 0uLL;
    v16 = 0;
    v17 = 0;
    if (!sub_239407F5C(&v23, &v20, 536870928) || !sub_239407F5C(&v20, v19, 6) || !sub_239407F5C(&v20, &v18, -1610612736) || !sub_239407F5C(&v18, &v16, 4))
    {
      v4 = 100;
      v5 = 420;
      goto LABEL_8;
    }

    if (!sub_239407824(v19, asc_2395D13C1, 10))
    {
      return 1;
    }

    if (v17 < 0)
    {
      v4 = 100;
      v5 = 431;
      goto LABEL_8;
    }

    v15 = v16;
    v8 = sub_23946EEB4(0, &v15, v17);
    if (!v8)
    {
      v4 = 100;
      v5 = 438;
      goto LABEL_8;
    }

    v9 = v8;
    if (v15 == v16 + v17)
    {
      v13 = 0;
      v14 = 0;
      if (sub_239454FA0(&v21, &v14, &v13))
      {
        if (v13)
        {
          v12 = sub_23946F88C(v9, v14, v13);
          sub_239450144(v14);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_239450144(v14);
        }

        if (sub_2394579D0(*(a2 + 8), v9))
        {
          return 1;
        }
      }
    }

    else
    {
      sub_2394170F4(19, 0, 100, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8_x509.c", 443);
    }

LABEL_24:
    sub_23946EDF8(v9);
    return 0;
  }

  if (**a2)
  {
    v4 = 113;
    v5 = 390;
    goto LABEL_8;
  }

  if (v7)
  {
    v10 = sub_23941837C(&v23);
  }

  else
  {
    v10 = sub_23945290C(&v23, *(a2 + 16), *(a2 + 24));
  }

  v11 = v10;
  if (!v10)
  {
    return 0;
  }

  if (*(&v23 + 1))
  {
    sub_2394170F4(19, 0, 100, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8_x509.c", 403);
    sub_239417838(v11);
    return 0;
  }

  **a2 = v10;
  return 1;
}

uint64_t sub_239454FA0(uint64_t a1, void **a2, void *a3)
{
  *a2 = 0;
  *a3 = 0;
  if (!*(a1 + 8))
  {
    return 1;
  }

  while (1)
  {
    v14 = 0uLL;
    v13[0] = 0;
    v13[1] = 0;
    v12 = 0uLL;
    if (!sub_239407F5C(a1, &v14, 536870928) || !sub_239407F5C(&v14, v13, 6) || !sub_239407F5C(&v14, &v12, 536870929) || *(&v14 + 1))
    {
      v7 = 323;
LABEL_24:
      sub_2394170F4(19, 0, 100, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8_x509.c", v7);
      goto LABEL_25;
    }

    if (sub_239407824(v13, asc_2395D13CB, 9))
    {
      break;
    }

LABEL_17:
    if (!*(a1 + 8))
    {
      return 1;
    }
  }

  v10 = 0;
  v11 = 0;
  if (*a2 || !sub_239407F5C(&v12, &v10, 30) || *(&v12 + 1) || !v11)
  {
    v7 = 333;
    goto LABEL_24;
  }

  memset(v9, 0, sizeof(v9));
  if (sub_2394065F4(v9, v11))
  {
    while (v11)
    {
      v8 = 0;
      if (!sub_239408EC8(&v10, &v8) || !sub_239408FC4(v9, v8))
      {
        sub_2394170F4(19, 0, 131, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8_x509.c", 345);
        goto LABEL_21;
      }
    }

    if (sub_2394066A4(v9, a2, a3))
    {
      goto LABEL_17;
    }

LABEL_21:
    sub_239406688(v9);
  }

LABEL_25:
  sub_239450144(*a2);
  result = 0;
  *a2 = 0;
  *a3 = 0;
  return result;
}

uint64_t sub_239455190(uint64_t *a1, uint64_t *a2, const char *a3, const void *a4, size_t a5)
{
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  result = sub_239406A10(a1, v22, 0x20000010u);
  if (result)
  {
    result = sub_239406A10(v22, v21, 6u);
    if (result)
    {
      result = sub_239406C48(v21, asc_2395D13B6, 0xBuLL);
      if (result)
      {
        result = sub_239406A10(v22, v20, 0xA0000000);
        if (result)
        {
          result = sub_239406A10(v20, v19, 0x20000010u);
          if (result)
          {
            result = sub_239406A10(v19, v18, 6u);
            if (result)
            {
              result = sub_239406C48(v18, asc_2395D13C1, 0xAuLL);
              if (result)
              {
                result = sub_239406A10(v19, v17, 0xA0000000);
                if (result)
                {
                  result = sub_239406A10(v17, v16, 4u);
                  if (result)
                  {
                    v15 = 0;
                    v11 = sub_23946F1CC(a2, 0);
                    v14 = 0;
                    v12 = sub_23946FA0C(a2, &v14);
                    v13 = v14;
                    if (a3)
                    {
                      if (v14)
                      {
                        sub_2394170F4(19, 0, 133, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/pkcs8/pkcs8_x509.c", 1019);
                        return 0;
                      }

                      v13 = strlen(a3);
                    }

                    else
                    {
                      a3 = v12;
                    }

                    if ((v11 & 0x80000000) != 0)
                    {
                      return 0;
                    }

                    result = sub_239406C9C(v16, &v15, v11);
                    if (!result)
                    {
                      return result;
                    }

                    if ((sub_23946F1CC(a2, &v15) & 0x80000000) != 0)
                    {
                      return 0;
                    }

                    result = sub_239454A64(v22, a3, v13, a4, a5);
                    if (result)
                    {
                      return sub_239406758(a1) != 0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void *sub_239455394()
{
  v0 = sub_2394500B0(0xE0uLL);
  if (v0)
  {
    v1 = sub_23944FB28(sub_239455414, sub_239455438);
    *v0 = v1;
    if (v1)
    {
      sub_239457CF8((v0 + 1));
      sub_23942C1AC(v0 + 208, 0x10uLL);
    }

    else
    {
      sub_239450144(v0);
      return 0;
    }
  }

  return v0;
}

uint64_t sub_239455438(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 1;
  }

  if (v2)
  {
    return memcmp(*(a1 + 8), *(a2 + 8), v2);
  }

  return 0;
}

void sub_239455468(void *a1)
{
  if (a1)
  {
    v2 = (a1 + 1);
    sub_23944FB98(*a1);
    j__pthread_rwlock_destroy(v2);

    sub_239450144(a1);
  }
}

uint64_t sub_2394554C4(const void *a1, unint64_t a2, int a3, void **a4)
{
  if (!a4)
  {
    goto LABEL_6;
  }

  v17[2] = a2;
  v17[3] = 0;
  v17[0] = a4;
  v17[1] = a1;
  sub_239457D1C((a4 + 1));
  v8 = sub_23944FC1C(*a4, v17, sub_239455894, sub_2394558A0);
  v9 = v8;
  if (!a3 || !v8)
  {
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_16:
    sub_2394559F0((v8 + 24));
    sub_239457D5C((a4 + 1));
    return v9;
  }

  if (*(v8 + 28))
  {
    goto LABEL_16;
  }

LABEL_5:
  sub_239457D5C((a4 + 1));
LABEL_6:
  v10 = sub_2394500B0(0x20uLL);
  v9 = v10;
  if (v10)
  {
    if (a3)
    {
      v10[1] = a1;
      *(v10 + 7) = 1;
    }

    else
    {
      v15 = sub_239450350(a1, a2);
      *(v9 + 8) = v15;
      if (a2 && !v15)
      {
        sub_239450144(v9);
        return 0;
      }
    }

    *(v9 + 16) = a2;
    *(v9 + 24) = 1;
    if (a4)
    {
      *v9 = a4;
      sub_239457D3C((a4 + 1));
      v11 = sub_23944FC1C(*a4, v9, sub_239455894, sub_2394558A0);
      v12 = v11;
      if (a3 && v11)
      {
        if (!*(v11 + 28))
        {
          goto LABEL_13;
        }
      }

      else if (!v11)
      {
LABEL_13:
        v13 = *a4;
        v17[0] = 0;
        v14 = sub_23944FD8C(v13, v17, v9, sub_239455894, sub_2394558A0);
        sub_239457D5C((a4 + 1));
        if (!v14)
        {
          v12 = 0;
LABEL_22:
          sub_239455824(v9);
          return v12;
        }

        return v9;
      }

      sub_2394559F0((v11 + 24));
      sub_239457D5C((a4 + 1));
      goto LABEL_22;
    }
  }

  return v9;
}

void *sub_239455690(void *a1, unint64_t a2)
{
  v4 = sub_2394500B0(0x20uLL);
  if (v4)
  {
    v5 = sub_23945004C(a2);
    v4[1] = v5;
    if (!a2 || v5)
    {
      v4[2] = a2;
      *(v4 + 6) = 1;
      *a1 = v5;
    }

    else
    {
      sub_239450144(v4);
      return 0;
    }
  }

  return v4;
}

void sub_239455724(unsigned int *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *a1;
  if (!*a1)
  {
    if (!sub_239455A20(a1 + 6))
    {
      return;
    }

    goto LABEL_8;
  }

  sub_239457D3C((v2 + 1));
  if (sub_239455A20(a1 + 6))
  {
    if (sub_23944FC1C(*v2, a1, sub_239455894, sub_2394558A0) == a1)
    {
      sub_23944FE7C(*v2, a1, sub_239455894, sub_2394558A0);
    }

    sub_239457D5C((*a1 + 8));
LABEL_8:

    sub_239455824(a1);
    return;
  }

  v3 = (*a1 + 8);

  sub_239457D5C(v3);
}

void sub_239455824(void **a1)
{
  if (!*(a1 + 7))
  {
    sub_239450144(a1[1]);
  }

  sub_239450144(a1);
}

uint64_t sub_239455888(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  return result;
}

uint64_t sub_2394558B0(uint64_t result)
{
  if (result != -1)
  {
    abort();
  }

  atomic_store(1u, &unk_27DF78BC0);
  return result;
}

uint64_t sub_239455904(void *a1, size_t a2)
{
  result = CCRandomGenerateBytes(a1, a2);
  if (result)
  {
    abort();
  }

  return result;
}

int *sub_239455924(int *result, uint64_t a2, char *a3, _BYTE *a4)
{
  v4 = *result;
  v5 = result[1];
  if (a2)
  {
    v6 = result + 2;
    do
    {
      v4 = (v4 + 1);
      v7 = v6[v4];
      v5 = (v7 + v5);
      v8 = v6[v5];
      v6[v4] = v8;
      v6[v5] = v7;
      v9 = *a3++;
      *a4++ = v9 ^ v6[(v8 + v7)];
      --a2;
    }

    while (a2);
  }

  *result = v4;
  result[1] = v5;
  return result;
}

void *sub_239455978(void *result, int a2, uint64_t a3)
{
  v3 = 0;
  v4 = result + 1;
  *result = 0;
  v5 = xmmword_2395D13E0;
  v6.i64[0] = 0x400000004;
  v6.i64[1] = 0x400000004;
  do
  {
    *&v4[v3] = v5;
    v5 = vaddq_s32(v5, v6);
    v3 += 2;
  }

  while (v3 != 128);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *(v4 + v7);
    v11 = *(a3 + v9) + v10 + v8;
    v8 = v11;
    if (v9 + 1 == a2)
    {
      v9 = 0;
    }

    else
    {
      ++v9;
    }

    *(v4 + v7) = *(v4 + v11);
    *(v4 + v11) = v10;
    v7 += 4;
  }

  while (v7 != 1024);
  return result;
}

unsigned int *sub_2394559F0(unsigned int *result)
{
  v1 = atomic_load(result);
  if (v1 != -1)
  {
    for (i = v1; i != -1; v1 = i)
    {
      atomic_compare_exchange_strong(result, &i, v1 + 1);
      if (i == v1)
      {
        break;
      }
    }
  }

  return result;
}

BOOL sub_239455A20(unsigned int *a1)
{
  for (i = atomic_load(a1); ; i = v2)
  {
    if (i == -1)
    {
      return 0;
    }

    if (!i)
    {
      abort();
    }

    v2 = i;
    atomic_compare_exchange_strong(a1, &v2, i - 1);
    if (v2 == i)
    {
      break;
    }
  }

  return i == 1;
}

uint64_t *sub_239455A74(__int128 *a1)
{
  v2 = sub_23943EB7C();
  if (v2)
  {
    v8 = 0uLL;
    if (!sub_239407F5C(a1, &v8, 536870928) || (v3 = sub_239421E8C(), (v2[1] = v3) == 0) || !sub_239405234(&v8, v3) || (v4 = sub_239421E8C(), (v2[2] = v4) == 0) || !sub_239405234(&v8, v4) || *(&v8 + 1))
    {
      v5 = 100;
      v6 = 100;
      goto LABEL_11;
    }

    if (!sub_23943EBE8(v2))
    {
      v5 = 104;
      v6 = 106;
LABEL_11:
      sub_2394170F4(4, 0, v5, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/rsa_extra/rsa_asn1.c", v6);
      sub_23943F100(v2);
      return 0;
    }
  }

  return v2;
}

uint64_t *sub_239455B58(uint64_t a1, uint64_t a2)
{
  *&v4 = a1;
  *(&v4 + 1) = a2;
  v2 = sub_239455A74(&v4);
  if (!v2 || *(&v4 + 1))
  {
    sub_2394170F4(4, 0, 100, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/rsa_extra/rsa_asn1.c", 119);
    sub_23943F100(v2);
    return 0;
  }

  return v2;
}

uint64_t sub_239455BC4(uint64_t *a1, uint64_t a2)
{
  memset(v5, 0, sizeof(v5));
  if (sub_239406A10(a1, v5, 0x20000010u) && sub_239455C64(v5, *(a2 + 8)) && sub_239455C64(v5, *(a2 + 16)) && sub_239406758(a1))
  {
    return 1;
  }

  sub_2394170F4(4, 0, 121, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/rsa_extra/rsa_asn1.c", 132);
  return 0;
}

uint64_t sub_239455C64(uint64_t *a1, uint64_t *a2)
{
  if (a2)
  {

    return sub_2394052E0(a1, a2);
  }

  else
  {
    sub_2394170F4(4, a2, 144, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/rsa_extra/rsa_asn1.c", 84);
    return 0;
  }
}

uint64_t sub_239455CA8(void *a1, void *a2, uint64_t a3)
{
  memset(v7, 0, sizeof(v7));
  sub_2394065E4(v7);
  if (sub_2394065F4(v7, 0) && sub_239455BC4(v7, a3) && sub_2394066A4(v7, a1, a2))
  {
    return 1;
  }

  sub_2394170F4(4, 0, 121, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/rsa_extra/rsa_asn1.c", 145);
  sub_239406688(v7);
  return 0;
}

uint64_t *sub_239455D58(__int128 *a1)
{
  v2 = sub_23943EB7C();
  if (v2)
  {
    v11 = 0uLL;
    v10 = 0;
    if (sub_239407F5C(a1, &v11, 536870928) && sub_239408120(&v11, &v10))
    {
      if (v10)
      {
        v3 = 106;
        v4 = 171;
      }

      else
      {
        v6 = sub_239421E8C();
        v2[1] = v6;
        if (!v6)
        {
          goto LABEL_8;
        }

        if (!sub_239405234(&v11, v6))
        {
          goto LABEL_8;
        }

        v7 = sub_239421E8C();
        v2[2] = v7;
        if (!v7)
        {
          goto LABEL_8;
        }

        if (!sub_239405234(&v11, v7))
        {
          goto LABEL_8;
        }

        v8 = sub_239421E8C();
        v2[3] = v8;
        if (!v8)
        {
          goto LABEL_8;
        }

        if (!sub_239405234(&v11, v8))
        {
          goto LABEL_8;
        }

        v9 = sub_239421E8C();
        v2[4] = v9;
        if (!v9 || !sub_239405234(&v11, v9) || !sub_239414434(&v11, v2 + 5) || !sub_239414434(&v11, v2 + 6) || !sub_239414434(&v11, v2 + 7) || !sub_239414434(&v11, v2 + 8))
        {
          goto LABEL_8;
        }

        if (*(&v11 + 1))
        {
          v3 = 100;
          v4 = 187;
        }

        else
        {
          if (sub_23943EBE8(v2))
          {
            return v2;
          }

          v3 = 104;
          v4 = 192;
        }
      }
    }

    else
    {
      v3 = 100;
      v4 = 166;
    }

    sub_2394170F4(4, 0, v3, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/rsa_extra/rsa_asn1.c", v4);
LABEL_8:
    sub_23943F100(v2);
    return 0;
  }

  return v2;
}

uint64_t *sub_239455F08(uint64_t a1, uint64_t a2)
{
  *&v4 = a1;
  *(&v4 + 1) = a2;
  v2 = sub_239455D58(&v4);
  if (!v2 || *(&v4 + 1))
  {
    sub_2394170F4(4, 0, 100, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/rsa_extra/rsa_asn1.c", 208);
    sub_23943F100(v2);
    return 0;
  }

  return v2;
}

uint64_t sub_239455F74(uint64_t *a1, uint64_t **a2)
{
  memset(v5, 0, sizeof(v5));
  if (sub_239406A10(a1, v5, 0x20000010u) && sub_239406FE8(v5, 0) && sub_239455C64(v5, a2[1]) && sub_239455C64(v5, a2[2]) && sub_239455C64(v5, a2[3]) && sub_239455C64(v5, a2[4]) && sub_239455C64(v5, a2[5]) && sub_239455C64(v5, a2[6]) && sub_239455C64(v5, a2[7]) && sub_239455C64(v5, a2[8]) && sub_239406758(a1))
  {
    return 1;
  }

  sub_2394170F4(4, 0, 121, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/rsa_extra/rsa_asn1.c", 228);
  return 0;
}

uint64_t sub_239456084(void *a1, void *a2, uint64_t **a3)
{
  memset(v7, 0, sizeof(v7));
  sub_2394065E4(v7);
  if (sub_2394065F4(v7, 0) && sub_239455F74(v7, a3) && sub_2394066A4(v7, a1, a2))
  {
    return 1;
  }

  sub_2394170F4(4, 0, 121, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/rsa_extra/rsa_asn1.c", 241);
  sub_239406688(v7);
  return 0;
}

uint64_t *sub_239456134(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a3 < 0)
  {
    return 0;
  }

  *&v7 = *a2;
  *(&v7 + 1) = a3;
  v5 = sub_239455A74(&v7);
  if (v5)
  {
    if (a1)
    {
      sub_23943F100(*a1);
      *a1 = v5;
    }

    *a2 = v7;
  }

  return v5;
}

uint64_t sub_2394561A8(uint64_t a1, void **a2)
{
  memset(v5, 0, sizeof(v5));
  if (sub_2394065F4(v5, 0) && sub_239455BC4(v5, a1))
  {
    return sub_23940603C(v5, a2);
  }

  sub_239406688(v5);
  return 0xFFFFFFFFLL;
}

uint64_t *sub_23945621C(uint64_t *a1, void *a2, uint64_t a3)
{
  if (a3 < 0)
  {
    return 0;
  }

  *&v7 = *a2;
  *(&v7 + 1) = a3;
  v5 = sub_239455D58(&v7);
  if (v5)
  {
    if (a1)
    {
      sub_23943F100(*a1);
      *a1 = v5;
    }

    *a2 = v7;
  }

  return v5;
}

uint64_t sub_239456290(uint64_t **a1, void **a2)
{
  memset(v5, 0, sizeof(v5));
  if (sub_2394065F4(v5, 0) && sub_239455F74(v5, a1))
  {
    return sub_23940603C(v5, a2);
  }

  sub_239406688(v5);
  return 0xFFFFFFFFLL;
}

uint64_t *sub_239456304(uint64_t a1)
{
  v3 = 0;
  v4 = 0;
  if (!sub_239455CA8(&v4, &v3, a1))
  {
    return 0;
  }

  v1 = sub_239455B58(v4, v3);
  sub_239450144(v4);
  return v1;
}

uint64_t *sub_239456360(uint64_t **a1)
{
  v3 = 0;
  v4 = 0;
  if (!sub_239456084(&v4, &v3, a1))
  {
    return 0;
  }

  v1 = sub_239455F08(v4, v3);
  sub_239450144(v4);
  return v1;
}

uint64_t sub_2394563BC(_BYTE *a1, unint64_t a2, const void *a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v9 = a7;
  v42 = *MEMORY[0x277D85DE8];
  if (!a7)
  {
    v9 = sub_2394315BC();
  }

  if (a8)
  {
    v16 = a8;
  }

  else
  {
    v16 = v9;
  }

  v17 = sub_2393FFBEC(v9);
  v18 = 2 * v17;
  if (2 * v17 + 2 <= a2)
  {
    v40 = v16;
    v21 = a2 - 1;
    v22 = ~v18;
    if (a2 - 1 + ~v18 < a4)
    {
      v19 = 114;
      v20 = 106;
      goto LABEL_31;
    }

    if (v21 <= v18)
    {
      v19 = 126;
      v20 = 111;
      goto LABEL_31;
    }

    v23 = v17;
    v24 = &a1[v17];
    *a1 = 0;
    v25 = a1 + 1;
    v39 = v24;
    v26 = a5;
    v27 = (v24 + 1);
    if (!sub_239430E60(v26, a6, (v24 + 1), 0, v9))
    {
      goto LABEL_33;
    }

    if (v21 - a4 + v22)
    {
      bzero((v27 + v23), v21 - a4 + v22);
    }

    *(v27 + v21 - a4 + ~v23) = 1;
    if (a4)
    {
      memcpy(&v39[a2 - a4 - v23], a3, a4);
    }

    if (sub_23942C1AC(v25, v23))
    {
      v28 = sub_23945004C(v21 - v23);
      v29 = v28;
      if (v28 && sub_23943E270(v28, v21 - v23, v25, v23, v40))
      {
        if (v21 != v23)
        {
          if (v21 - v23 <= 1)
          {
            v30 = 1;
          }

          else
          {
            v30 = v21 - v23;
          }

          v31 = v29;
          v32 = v27;
          do
          {
            v33 = *v31++;
            *v32++ ^= v33;
            --v30;
          }

          while (v30);
        }

        if (sub_23943E270(v41, v23, v27, v21 - v23, v40))
        {
          if (v23)
          {
            v34 = v41;
            do
            {
              v35 = *v34++;
              *v25++ ^= v35;
              --v23;
            }

            while (v23);
          }

          v36 = 1;
          goto LABEL_35;
        }
      }
    }

    else
    {
LABEL_33:
      v29 = 0;
    }

    v36 = 0;
LABEL_35:
    sub_239450144(v29);
    goto LABEL_32;
  }

  v19 = 126;
  v20 = 100;
LABEL_31:
  sub_2394170F4(4, 0, v19, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/rsa_extra/rsa_crypt.c", v20);
  v36 = 0;
LABEL_32:
  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

uint64_t sub_23945663C(void *a1, unint64_t *a2, unint64_t a3, unsigned __int8 *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9)
{
  v9 = a8;
  v49 = *MEMORY[0x277D85DE8];
  if (!a8)
  {
    v9 = sub_2394315BC();
  }

  if (a9)
  {
    v16 = a9;
  }

  else
  {
    v16 = v9;
  }

  v17 = sub_2393FFBEC(v9);
  if (2 * v17 + 2 > a5)
  {
    v18 = 0;
LABEL_8:
    v19 = 133;
    v20 = 253;
LABEL_9:
    sub_2394170F4(4, 0, v19, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/rsa_extra/rsa_crypt.c", v20);
LABEL_27:
    sub_239450144(v18);
    result = 0;
    goto LABEL_28;
  }

  v21 = v17;
  v45 = a3;
  v22 = ~v17 + a5;
  v18 = sub_23945004C(v22);
  if (!v18)
  {
    goto LABEL_27;
  }

  v43 = a2;
  v44 = a1;
  v23 = (a4 + 1);
  v24 = &a4[v21 + 1];
  if (!sub_23943E270(v48, v21, v24, v22, v16))
  {
    goto LABEL_27;
  }

  if (v21)
  {
    v25 = v48;
    v26 = v21;
    do
    {
      v27 = *v23++;
      *v25++ ^= v27;
      --v26;
    }

    while (v26);
  }

  if (!sub_23943E270(v18, v22, v48, v21, v16))
  {
    goto LABEL_27;
  }

  if (v22)
  {
    v28 = v18;
    v29 = v22;
    do
    {
      v30 = *v24++;
      *v28++ ^= v30;
      --v29;
    }

    while (v29);
  }

  if (!sub_239430E60(a6, a7, v47, 0, v9))
  {
    goto LABEL_27;
  }

  v31 = sub_23945022C(v18, v47, v21);
  v32 = 0;
  v33 = (-v31 | v31 | -*a4) >> 63;
  v34 = -1;
  if (v21 >= v22)
  {
    v36 = v43;
  }

  else
  {
    v32 = 0;
    v35 = ~(2 * v21) + a5;
    v36 = v43;
    do
    {
      v37 = ((v18[v21] ^ 1) - 1) >> 63;
      v32 = v34 & v37 & v21 | v32 & ~(v34 & v37);
      v34 &= ~v37;
      if (v18[v21])
      {
        v38 = v34;
      }

      else
      {
        v38 = 0;
      }

      v33 |= v38;
      ++v21;
      --v35;
    }

    while (v35);
  }

  if (v34 | v33)
  {
    goto LABEL_8;
  }

  v41 = v32 + 1;
  v42 = v22 - v41;
  if (v22 - v41 > v45)
  {
    v19 = 113;
    v20 = 241;
    goto LABEL_9;
  }

  if (v22 != v41)
  {
    memcpy(v44, &v18[v41], v22 - v41);
  }

  *v36 = v42;
  sub_239450144(v18);
  result = 1;
LABEL_28:
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394568F0(size_t a1, void *a2, char *a3, uint64_t **a4, int a5)
{
  v12 = 0;
  v10 = sub_23943E78C(a4);
  if (sub_239456994(a4, &v12, a3, v10, a2, a1, a5))
  {
    result = v12;
    if (!(v12 >> 31))
    {
      return result;
    }

    sub_2394170F4(4, 0, 69, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/rsa_extra/rsa_crypt.c", 358);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_239456994(uint64_t a1, unint64_t *a2, char *a3, unint64_t a4, void *a5, size_t a6, int a7)
{
  if (!*(a1 + 8) || !*(a1 + 16))
  {
    v15 = 144;
    v16 = 382;
    goto LABEL_7;
  }

  if (sub_239440548(a1))
  {
    v14 = sub_23943E78C(a1);
    if (v14 > a4)
    {
      v15 = 135;
      v16 = 397;
LABEL_7:
      sub_2394170F4(4, 0, v15, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/rsa_extra/rsa_crypt.c", v16);
      return 0;
    }

    sub_239422D0C();
    if (!v19)
    {
      v17 = 0;
LABEL_29:
      sub_239450144(v19);
      return v17;
    }

    v20 = v19;
    sub_239422DA4(v19);
    v21 = sub_239422E50(v20);
    v27 = v20;
    v22 = sub_239422E50(v20);
    v23 = sub_23945004C(v14);
    v17 = 0;
    v28 = v23;
    if (!v21 || !v22 || !v23)
    {
LABEL_28:
      sub_239422F58(v27);
      sub_239422D38(v27);
      v19 = v28;
      goto LABEL_29;
    }

    switch(a7)
    {
      case 4:
        v24 = sub_2394563BC(v23, v14, a5, a6, 0, 0, 0, 0);
        break;
      case 3:
        v24 = sub_23943E1FC(v23, v14, a5, a6);
        break;
      case 1:
        v24 = sub_239456CC0(v23, v14, a5, a6);
        break;
      default:
        v25 = 143;
        v26 = 427;
        goto LABEL_26;
    }

    if (v24 < 1 || !sub_23942253C(v28, v14, v21))
    {
      goto LABEL_27;
    }

    if ((sub_239421468(v21, *(a1 + 8)) & 0x80000000) != 0)
    {
      if (!sub_239429C8C((a1 + 288), (a1 + 88), *(a1 + 8), v27) || !sub_2394253C4(v22, v21, *(a1 + 16), *(a1 + 288) + 24, v27, *(a1 + 288)))
      {
        goto LABEL_27;
      }

      if (sub_2394227EC(a3, v14, v22))
      {
        *a2 = v14;
        v17 = 1;
        goto LABEL_28;
      }

      v25 = 68;
      v26 = 453;
    }

    else
    {
      v25 = 115;
      v26 = 441;
    }

LABEL_26:
    sub_2394170F4(4, 0, v25, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/rsa_extra/rsa_crypt.c", v26);
LABEL_27:
    v17 = 0;
    goto LABEL_28;
  }

  return 0;
}

uint64_t sub_239456C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v7 = 0;
  sub_23943E78C(a4);
  if (sub_23943F9F8(a4, &v7, a3))
  {
    result = v7;
    if (!(v7 >> 31))
    {
      return result;
    }

    sub_2394170F4(4, 0, 69, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/rsa_extra/rsa_crypt.c", 373);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_239456CC0(uint64_t a1, unint64_t a2, const void *a3, size_t a4)
{
  if (a2 <= 0xA)
  {
    v4 = 126;
    v5 = 263;
LABEL_5:
    sub_2394170F4(4, 0, v4, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/rsa_extra/rsa_crypt.c", v5);
    return 0;
  }

  if (a2 - 11 < a4)
  {
    v4 = 114;
    v5 = 268;
    goto LABEL_5;
  }

  *a1 = 512;
  v11 = a1 + 2;
  v12 = a2 - 3;
  sub_23942C1AC((a1 + 2), a2 - 3 - a4);
  v13 = v12 - a4;
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      while (!*(v11 + i))
      {
        sub_23942C1AC((v11 + i), 1uLL);
      }
    }

    *(a1 + v13 + 2) = 0;
    if (!a4)
    {
      return 1;
    }
  }

  else
  {
    *(a1 + 2) = 0;
  }

  memcpy((a1 + a2 - a4), a3, a4);
  return 1;
}

uint64_t sub_239456DE8(uint64_t **a1, unint64_t *a2, char *a3, unint64_t a4, unsigned __int8 *a5, unint64_t a6, int a7)
{
  v14 = (*a1)[7];
  if (!v14)
  {
    v16 = sub_23943E78C(a1);
    v17 = v16;
    if (v16 > a4)
    {
      sub_2394170F4(4, 0, 135, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/rsa_extra/rsa_crypt.c", 478);
      return 0;
    }

    v19 = a3;
    if (a7 == 3 || (v19 = sub_23945004C(v16)) != 0)
    {
      if (v17 != a6)
      {
        v22 = 112;
        v23 = 493;
LABEL_18:
        sub_2394170F4(4, 0, v22, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/rsa_extra/rsa_crypt.c", v23);
        goto LABEL_19;
      }

      if (!sub_239440AB4(a1, v19, a5, a6))
      {
LABEL_19:
        v18 = 0;
        goto LABEL_20;
      }

      switch(a7)
      {
        case 4:
          if (!sub_23945663C(a3, a2, a6, v19, a6, 0, 0, 0, 0))
          {
LABEL_39:
            v22 = 136;
            v23 = 522;
            goto LABEL_18;
          }

          v18 = 1;
LABEL_27:
          sub_239450144(v19);
          return v18;
        case 3:
          *a2 = a6;
          return 1;
        case 1:
          if (v17)
          {
            if (v17 > 0xA)
            {
              v24 = 0;
              v25 = -1;
              v26 = 2;
              do
              {
                v27 = (v19[v26] - 1) >> 63;
                v28 = v24 & ~(v25 & v27);
                v24 = v25 & v27 & v26 | v28;
                v25 &= ~v27;
                ++v26;
              }

              while (a6 != v26);
              if (((9 - v24) | v28) < 0 && (((v19[1] ^ 2) - 1) & (*v19 - 1)) < 0 && v25 != -1)
              {
                v29 = v24 + 1;
                v30 = a6 >= v29;
                v31 = a6 - v29;
                if (v30)
                {
                  if (v31)
                  {
                    memcpy(a3, &v19[v29], v31);
                  }

                  *a2 = v31;
                  v18 = 1;
LABEL_20:
                  if (a7 == 3)
                  {
                    return v18;
                  }

                  goto LABEL_27;
                }

                v20 = 137;
                v21 = 340;
              }

              else
              {
                v20 = 137;
                v21 = 332;
              }
            }

            else
            {
              v20 = 126;
              v21 = 295;
            }
          }

          else
          {
            v20 = 120;
            v21 = 286;
          }

          sub_2394170F4(4, 0, v20, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/rsa_extra/rsa_crypt.c", v21);
          goto LABEL_39;
      }

      sub_2394170F4(4, 0, 143, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/rsa_extra/rsa_crypt.c", 516);
    }

    v18 = 0;
    goto LABEL_27;
  }

  return v14();
}

uint64_t sub_2394570E8(unint64_t a1, unsigned __int8 *a2, char *a3, uint64_t **a4, int a5)
{
  v12 = 0;
  v10 = sub_23943E78C(a4);
  if (sub_239456DE8(a4, &v12, a3, v10, a2, a1, a5))
  {
    result = v12;
    if (!(v12 >> 31))
    {
      return result;
    }

    sub_2394170F4(4, 0, 69, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/rsa_extra/rsa_crypt.c", 552);
  }

  return 0xFFFFFFFFLL;
}

size_t sub_23945718C(unint64_t a1, unsigned __int8 *a2, char *a3, uint64_t **a4, int a5)
{
  v12 = 0;
  v10 = sub_23943E78C(a4);
  if (sub_239440544(a4, &v12, a3, v10, a2, a1, a5))
  {
    result = v12;
    if (!(v12 >> 31))
    {
      return result;
    }

    sub_2394170F4(4, 0, 69, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/rsa_extra/rsa_crypt.c", 566);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_239457230(void *a1, uint64_t *a2, unint64_t a3)
{
  v3 = a3;
  v67 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v5 = *a1 ^ 0x736F6D6570736575;
  v6 = v4 ^ 0x646F72616E646F6DLL;
  v7 = *a1 ^ 0x6C7967656E657261;
  v8 = v4 ^ 0x7465646279746573;
  if (a3 >= 8)
  {
    do
    {
      v9 = *a2++;
      v10 = (v5 + v6) ^ __ROR8__(v6, 51);
      v11 = (v9 ^ v8) + v7;
      v12 = v11 ^ __ROR8__(v9 ^ v8, 48);
      v13 = v11 + v10;
      v14 = v12 + __ROR8__(v5 + v6, 32);
      v15 = v13 ^ __ROR8__(v10, 47);
      v16 = v14 ^ __ROR8__(v12, 43);
      v17 = v14 + v15;
      v18 = v16 + __ROR8__(v13, 32);
      v19 = v17 ^ __ROR8__(v15, 51);
      v20 = v18 ^ __ROR8__(v16, 48);
      v21 = v18 + v19;
      v22 = v20 + __ROR8__(v17, 32);
      v6 = v21 ^ __ROR8__(v19, 47);
      v8 = v22 ^ __ROR8__(v20, 43);
      v7 = __ROR8__(v21, 32);
      v5 = v22 ^ v9;
      a3 -= 8;
    }

    while (a3 > 7);
  }

  v66 = 0;
  if (a3)
  {
    __memcpy_chk();
  }

  HIBYTE(v66) = v3;
  v23 = *MEMORY[0x277D85DE8];
  v24 = (v66 ^ v8) + v7;
  v25 = (v5 + v6) ^ __ROR8__(v6, 51);
  v26 = v24 ^ __ROR8__(v66 ^ v8, 48);
  v27 = v24 + v25;
  v28 = v26 + __ROR8__(v5 + v6, 32);
  v29 = v27 ^ __ROR8__(v25, 47);
  v30 = v28 ^ __ROR8__(v26, 43);
  v31 = v28 + v29;
  v32 = v30 + __ROR8__(v27, 32);
  v33 = v31 ^ __ROR8__(v29, 51);
  v34 = v32 ^ __ROR8__(v30, 48);
  v35 = v32 + v33;
  v36 = v34 + __ROR8__(v31, 32);
  v37 = v35 ^ __ROR8__(v33, 47);
  v38 = v36 ^ __ROR8__(v34, 43);
  v39 = (v36 ^ v66) + v37;
  v40 = (__ROR8__(v35, 32) ^ 0xFFLL) + v38;
  v41 = v39 ^ __ROR8__(v37, 51);
  v42 = v40 ^ __ROR8__(v38, 48);
  v43 = v41 + v40;
  v44 = v42 + __ROR8__(v39, 32);
  v45 = v43 ^ __ROR8__(v41, 47);
  v46 = v44 ^ __ROR8__(v42, 43);
  v47 = v45 + v44;
  v48 = __ROR8__(v43, 32) + v46;
  v49 = v47 ^ __ROR8__(v45, 51);
  v50 = v48 ^ __ROR8__(v46, 48);
  v51 = v49 + v48;
  v52 = v50 + __ROR8__(v47, 32);
  v53 = v51 ^ __ROR8__(v49, 47);
  v54 = v52 ^ __ROR8__(v50, 43);
  v55 = v53 + v52;
  v56 = __ROR8__(v51, 32) + v54;
  v57 = v55 ^ __ROR8__(v53, 51);
  v58 = v56 ^ __ROR8__(v54, 48);
  v59 = v57 + v56;
  v60 = v58 + __ROR8__(v55, 32);
  v61 = v59 ^ __ROR8__(v57, 47);
  v62 = v60 ^ __ROR8__(v58, 43);
  v63 = __ROR8__(v59, 32) + v62;
  v64 = (v61 + v60) ^ __ROR8__(v61, 51);
  return __ROR8__(v63 ^ __ROR8__(v62, 48), 43) ^ __ROR8__(v64, 47) ^ __ROR8__(v64 + v63, 32) ^ (v64 + v63);
}

void *sub_239457478(uint64_t a1)
{
  v2 = sub_2394500B0(0x28uLL);
  if (v2)
  {
    v3 = sub_2394500F0(4uLL, 8uLL);
    v2[1] = v3;
    if (v3)
    {
      v2[3] = 4;
      v2[4] = a1;
    }

    else
    {
      sub_239450144(v2);
      return 0;
    }
  }

  return v2;
}

void sub_2394574E0(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (8 * v2)
      {
        bzero(a1[1], 8 * v2);
      }

      *a1 = 0;
      *(a1 + 4) = 0;
    }
  }
}

unint64_t *sub_239457528(unint64_t *result, unint64_t a2)
{
  if (result)
  {
    if (*result <= a2)
    {
      return 0;
    }

    else
    {
      return *(result[1] + 8 * a2);
    }
  }

  return result;
}

uint64_t sub_23945754C(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  if (!a1 || *a1 <= a2)
  {
    return 0;
  }

  *(a1[1] + 8 * a2) = a3;
  return a3;
}

void sub_239457574(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
{
  if (a1)
  {
    v4 = *a1;
    if (*a1)
    {
      v7 = 0;
      do
      {
        if (*(a1[1] + 8 * v7))
        {
          a2(a3);
          v4 = *a1;
        }

        ++v7;
      }

      while (v7 < v4);
    }

    sub_239450144(a1[1]);

    sub_239450144(a1);
  }
}

unint64_t *sub_23945761C(unint64_t *result, uint64_t a2, unint64_t a3)
{
  if (result)
  {
    v3 = result;
    v4 = *result;
    if (*result >= 0x7FFFFFFF)
    {
      sub_2394170F4(14, 0, 69, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/stack/stack.c", 179);
      return 0;
    }

    v7 = result[3];
    if (v7 <= v4 + 1)
    {
      result = sub_2394501A0(result[1], 16 * v7);
      if (!result)
      {
        return result;
      }

      v3[1] = result;
      v3[3] = 2 * v7;
      v4 = *v3;
    }

    v8 = v4 - a3;
    if (v4 <= a3)
    {
      v10 = (v3[1] + 8 * v4);
    }

    else
    {
      v9 = v3[1];
      if (8 * v8)
      {
        memmove((v9 + 8 * a3 + 8), (v9 + 8 * a3), 8 * v8);
        v9 = v3[1];
      }

      v10 = (v9 + 8 * a3);
    }

    *v10 = a2;
    result = (*v3 + 1);
    *v3 = result;
    *(v3 + 4) = 0;
  }

  return result;
}

uint64_t sub_239457700(uint64_t *a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *a1;
  if (*a1 <= a2)
  {
    return 0;
  }

  v4 = (a1[1] + 8 * a2);
  v5 = *v4;
  v6 = v3 - 1;
  v7 = 8 * (v3 + ~a2);
  if (v3 - 1 != a2 && v7 != 0)
  {
    memmove(v4, v4 + 1, v7);
    v6 = *a1 - 1;
  }

  *a1 = v6;
  return v5;
}

uint64_t sub_239457778(uint64_t *a1, uint64_t a2)
{
  if (!a1 || !*a1)
  {
    return 0;
  }

  v2 = 0;
  while (*(a1[1] + 8 * v2) != a2)
  {
    if (*a1 == ++v2)
    {
      return 0;
    }
  }

  return sub_239457700(a1, v2);
}

unint64_t *sub_2394577B4(unint64_t *result, uint64_t (*a2)(uint64_t, void, uint64_t), uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    if (*result)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        result = a2(a3, *(v4[1] + 8 * v8), a4);
        if (!result)
        {
          *(v4[1] + 8 * v9++) = *(v4[1] + 8 * v8);
        }

        ++v8;
      }

      while (v8 < *v4);
    }

    else
    {
      v9 = 0;
    }

    *v4 = v9;
  }

  return result;
}

uint64_t sub_23945784C(uint64_t result, void *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void))
{
  if (!result)
  {
    return result;
  }

  v6 = result;
  if (!*(result + 32))
  {
    if (*result)
    {
      v9 = 0;
      while (*(*(result + 8) + 8 * v9) != a3)
      {
        if (*result == ++v9)
        {
          return 0;
        }
      }

      goto LABEL_25;
    }

    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v8 = *result;
  if (*(result + 16) || v8 < 2)
  {
    if (v8)
    {
      v10 = 0;
      do
      {
        v9 = v10 + ((v8 - v10 - 1) >> 1);
        v11 = a4(v6[4], a3, *(v6[1] + 8 * v9));
        if (v11 < 1)
        {
          if (v11 < 0)
          {
            v8 = v10 + ((v8 - v10 - 1) >> 1);
          }

          else
          {
            if (v8 - v10 == 1)
            {
              goto LABEL_25;
            }

            v8 = v9 + 1;
          }
        }

        else
        {
          v10 = v9 + 1;
        }
      }

      while (v10 < v8);
    }

    return 0;
  }

  v9 = 0;
  while (a4(v6[4], a3, *(v6[1] + 8 * v9)))
  {
    if (++v9 >= *v6)
    {
      return 0;
    }
  }

LABEL_25:
  if (a2)
  {
    *a2 = v9;
  }

  return 1;
}

BOOL sub_239457980(uint64_t a1)
{
  if (!a1 || *(a1 + 16))
  {
    return 1;
  }

  if (*(a1 + 32))
  {
    return *a1 < 2uLL;
  }

  return 0;
}

uint64_t sub_2394579B4(uint64_t *a1)
{
  if (a1 && *a1)
  {
    return sub_239457700(a1, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2394579D8(uint64_t *a1)
{
  if (a1 && *a1)
  {
    return sub_239457700(a1, *a1 - 1);
  }

  else
  {
    return 0;
  }
}

void *sub_2394579F4(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_2394500B0(0x28uLL);
  if (v2)
  {
    v3 = sub_239450350(*(a1 + 8), 8 * *(a1 + 24));
    v2[1] = v3;
    if (v3)
    {
      *v2 = *a1;
      *(v2 + 4) = *(a1 + 16);
      v2[3] = *(a1 + 24);
      v2[4] = *(a1 + 32);
      return v2;
    }

    sub_239450144(0);
    sub_239450144(v2);
    return 0;
  }

  return v2;
}

uint64_t sub_239457A78(uint64_t result, uint64_t (*a2)(void, void, void))
{
  if (result)
  {
    v2 = result;
    if (*(result + 32))
    {
      if (!*(result + 16))
      {
        v3 = *result;
        if (*result >= 2uLL)
        {
          for (i = (*result - 2) >> 1; i < v3; --i)
          {
            result = sub_239457B34(v2, a2, i, v3);
            v3 = *v2;
          }

          v6 = v3 - 1;
          if (v3 != 1)
          {
            do
            {
              v7 = *(v2 + 8);
              v8 = *v7;
              *v7 = v7[v6];
              *(*(v2 + 8) + 8 * v6) = v8;
              result = sub_239457B34(v2, a2, 0, v6--);
            }

            while (v6);
          }
        }

        *(v2 + 16) = 1;
      }
    }
  }

  return result;
}

uint64_t sub_239457B34(uint64_t result, uint64_t (*a2)(void, void, void), unint64_t a3, unint64_t a4)
{
  v4 = (2 * a3) | 1;
  if (v4 < a4)
  {
    v6 = a3;
    v8 = result;
    v9 = 2 * a3;
    do
    {
      result = a2(*(v8 + 32), *(*(v8 + 8) + 8 * v6), *(*(v8 + 8) + 8 * v4));
      if (result >= 0)
      {
        v10 = v6;
      }

      else
      {
        v10 = v4;
      }

      if (v9 + 2 < a4)
      {
        result = a2(*(v8 + 32), *(*(v8 + 8) + 8 * v10), *(*(v8 + 8) + 8 * (v9 + 2)));
        if (result < 0)
        {
          v10 = v9 + 2;
        }
      }

      if (v6 == v10)
      {
        break;
      }

      v11 = *(v8 + 8);
      v12 = *(v11 + 8 * v6);
      *(v11 + 8 * v6) = *(v11 + 8 * v10);
      *(*(v8 + 8) + 8 * v10) = v12;
      v9 = 2 * v10;
      v4 = (2 * v10) | 1;
      v6 = v10;
    }

    while (v4 < a4);
  }

  return result;
}

uint64_t sub_239457C08(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result != a2)
  {
    *(a1 + 16) = 0;
  }

  *(a1 + 32) = a2;
  return result;
}

unint64_t *sub_239457C24(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v9 = sub_2394579F4(a1);
  v10 = v9;
  if (!v9)
  {
    return v10;
  }

  v11 = *v9;
  if (!*v9)
  {
    return v10;
  }

  v12 = 0;
  v13 = v9[1];
  while (!v13[v12])
  {
LABEL_7:
    if (++v12 >= v11)
    {
      return v10;
    }
  }

  *(v10[1] + 8 * v12) = a2(a3);
  v13 = v10[1];
  if (v13[v12])
  {
    v11 = *v10;
    goto LABEL_7;
  }

  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*(v10[1] + 8 * i))
      {
        a4(a5);
      }
    }

    v13 = v10[1];
  }

  sub_239450144(v13);
  sub_239450144(v10);
  return 0;
}

uint64_t sub_239457CF8(pthread_rwlock_t *a1)
{
  result = pthread_rwlock_init(a1, 0);
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t sub_239457D1C(pthread_rwlock_t *a1)
{
  result = pthread_rwlock_rdlock(a1);
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t sub_239457D3C(pthread_rwlock_t *a1)
{
  result = pthread_rwlock_wrlock(a1);
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t sub_239457D5C(pthread_rwlock_t *a1)
{
  result = pthread_rwlock_unlock(a1);
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t sub_239457D80(pthread_once_t *a1, void (*a2)(void))
{
  result = pthread_once(a1, a2);
  if (result)
  {
    abort();
  }

  return result;
}

void *sub_239457DA0(int a1)
{
  if (pthread_once(&stru_27DF77080, sub_239457E0C))
  {
    abort();
  }

  if (!dword_27DF78BC8)
  {
    return 0;
  }

  result = pthread_getspecific(qword_27DF78BD0);
  if (result)
  {
    return result[a1];
  }

  return result;
}

uint64_t sub_239457E0C()
{
  result = pthread_key_create(&qword_27DF78BD0, sub_239457F4C);
  dword_27DF78BC8 = result == 0;
  return result;
}

uint64_t sub_239457E4C(unsigned int a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (pthread_once(&stru_27DF77080, sub_239457E0C))
  {
    abort();
  }

  if (!dword_27DF78BC8)
  {
    goto LABEL_9;
  }

  v6 = pthread_getspecific(qword_27DF78BD0);
  if (!v6)
  {
    v8 = malloc_type_malloc(0x28uLL, 0x80040B8603338uLL);
    if (!v8)
    {
      goto LABEL_9;
    }

    v6 = v8;
    *(v8 + 4) = 0;
    *v8 = 0u;
    v8[1] = 0u;
    if (pthread_setspecific(qword_27DF78BD0, v8))
    {
      free(v6);
      goto LABEL_9;
    }
  }

  if (!pthread_mutex_lock(&stru_27DF77090))
  {
    *(&xmmword_27DF78BD8 + a1) = a3;
    pthread_mutex_unlock(&stru_27DF77090);
    *(v6 + a1) = a2;
    return 1;
  }

LABEL_9:
  a3(a2);
  return 0;
}

void sub_239457F4C(char *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1 && !pthread_mutex_lock(&stru_27DF77090))
  {
    v5[0] = xmmword_27DF78BD8;
    v5[1] = unk_27DF78BE8;
    v6 = qword_27DF78BF8;
    pthread_mutex_unlock(&stru_27DF77090);
    for (i = 0; i != 40; i += 8)
    {
      v3 = *(v5 + i);
      if (v3)
      {
        v3(*&a1[i]);
      }
    }

    free(a1);
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23945800C(int (*a1)(uint64_t, void **), uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v10 = a1(a3, 0);
  v11 = sub_23945004C(v10);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v15 = v11;
  a1(a3, &v15);
  v13 = sub_239430E60(v12, v10, a4, a5, a2);
  sub_239450144(v12);
  return v13;
}

uint64_t sub_2394580C0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v11 = 0;
  v8 = sub_2394018FC(a3, &v11, a1);
  if (!v11)
  {
    return 0;
  }

  v9 = sub_239430E60(v11, v8, a4, a5, a2);
  sub_239450144(v11);
  return v9;
}

uint64_t sub_23945814C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a4 + 4) == 3)
  {
    memset(v15, 0, sizeof(v15));
    sub_239431060(v15);
    if (sub_2394319AC(v15, 0, a7, 0, a6))
    {
      return sub_239458228(a1, a2, a3, a4, a5, v15);
    }

    sub_239431094(v15);
  }

  else
  {
    sub_2394170F4(12, 0, 191, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/a_sign.c", 73);
  }

  return 0;
}

uint64_t sub_239458228(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v20 = 0;
  if (*(a4 + 4) != 3)
  {
    v15 = 12;
    v16 = 191;
    v17 = 91;
LABEL_12:
    sub_2394170F4(v15, 0, v16, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/a_sign.c", v17);
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  if (a2 && !sub_239458508(a6, a2) || a3 && !sub_239458508(a6, a3) || (sub_2394018FC(a5, &v20, a1) & 0x80000000) != 0)
  {
    goto LABEL_13;
  }

  v11 = sub_239412CF0(a6[2]);
  v12 = sub_239417B7C(v11);
  v19 = v12;
  if ((v12 & 0x80000000) != 0)
  {
    v15 = 11;
    v16 = 69;
    v17 = 111;
    goto LABEL_12;
  }

  v13 = sub_23945004C(v12);
  if (!v13)
  {
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  if (!sub_239431E2C(a6, v13))
  {
    sub_2394170F4(11, 0, 6, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/a_sign.c", 121);
    goto LABEL_14;
  }

  sub_2393FFA9C(a4, v13, v19);
  v13 = 0;
  *(a4 + 16) = *(a4 + 16) & 0xFFFFFFFFFFFFFFF0 | 8;
  v14 = v19;
LABEL_15:
  sub_239431094(a6);
  sub_239450144(v20);
  sub_239450144(v13);
  return v14;
}

uint64_t sub_2394583A8(unsigned __int8 *a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  if (!a5)
  {
    v10 = 67;
    v11 = 75;
    goto LABEL_6;
  }

  v16 = 0;
  if (a3[1] != 3)
  {
    v16 = sub_2393FFBE4(a3);
    goto LABEL_8;
  }

  if (sub_2393FC02C(a3, &v16))
  {
LABEL_8:
    memset(v15, 0, sizeof(v15));
    v14 = 0;
    sub_239431060(v15);
    if (sub_23945867C(v15, a2, a5))
    {
      sub_2394018FC(a4, &v14, a1);
      if (v14)
      {
        sub_2393FFBF4(a3);
        if (sub_239431F00(v15))
        {
          v12 = 1;
LABEL_14:
          sub_239450144(v14);
          sub_239431094(v15);
          return v12;
        }

        sub_2394170F4(11, 0, 6, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/a_verify.c", 106);
      }
    }

    v12 = 0;
    goto LABEL_14;
  }

  v10 = 109;
  v11 = 82;
LABEL_6:
  sub_2394170F4(11, 0, v10, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/a_verify.c", v11);
  return 0;
}

uint64_t sub_239458508(uint64_t a1, uint64_t a2)
{
  v4 = sub_239412CF0(*(a1 + 16));
  if (!v4)
  {
    v10 = 108;
    v11 = 80;
LABEL_18:
    sub_2394170F4(12, 0, v10, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/algorithm.c", v11);
    return 0;
  }

  v5 = v4;
  if (sub_2393FFBEC(v4) != 6 || (v17[1] = 0, result = sub_23941D054(*(a1 + 16)), result))
  {
    if (sub_2393FFBEC(v5) == 949)
    {
      v7 = sub_239450F00(0x3B5u);
      v8 = a2;
      v9 = -1;
      return sub_23946BC38(v8, v7, v9, 0);
    }

    v12 = sub_239431484(a1);
    if (v12)
    {
      v13 = sub_2393FFBE4(v12);
      v17[0] = 0;
      if (v13 != 4)
      {
        v14 = v13;
        if (v13 != 257)
        {
          v15 = sub_2393FFBEC(v5);
          if (sub_23945163C(v17, v14, v15))
          {
            if (sub_2393FFBEC(v5) == 6)
            {
              v16 = 5;
            }

            else
            {
              v16 = -1;
            }

            v7 = sub_239450F00(v17[0]);
            v8 = a2;
            v9 = v16;
            return sub_23946BC38(v8, v7, v9, 0);
          }
        }
      }

      v10 = 111;
      v11 = 111;
    }

    else
    {
      v10 = 108;
      v11 = 103;
    }

    goto LABEL_18;
  }

  return result;
}

uint64_t sub_23945867C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2394509E8(*a2);
  v16 = 0;
  if (!sub_2394515D0(v6, &v16 + 1, &v16))
  {
    v8 = 12;
    v9 = 184;
    v10 = 128;
    goto LABEL_9;
  }

  v7 = v16;
  if (v7 != sub_2393FFBEC(a3))
  {
    v8 = 12;
    v9 = 189;
    v10 = 134;
    goto LABEL_9;
  }

  if (HIDWORD(v16))
  {
    if (HIDWORD(v16) == 257 || HIDWORD(v16) == 4)
    {
      v8 = 12;
      v9 = 111;
      v10 = 140;
LABEL_9:
      sub_2394170F4(v8, 0, v9, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/algorithm.c", v10);
      return 0;
    }

    v12 = *(a2 + 8);
    if (v12 && *v12 != 5)
    {
      v8 = 11;
      v9 = 136;
      v10 = 166;
      goto LABEL_9;
    }

    v13 = sub_239412798(SHIDWORD(v16));
    if (!v13)
    {
      v8 = 12;
      v9 = 183;
      v10 = 173;
      goto LABEL_9;
    }

    v14 = v13;
    v15 = a1;
    return sub_239431AE8(v15, 0, v14, 0, a3);
  }

  if (v6 == 949)
  {
    if (*(a2 + 8))
    {
      v8 = 11;
      v9 = 136;
      v10 = 151;
      goto LABEL_9;
    }

    v15 = a1;
    v14 = 0;
    return sub_239431AE8(v15, 0, v14, 0, a3);
  }

  if (v6 != 912)
  {
    v8 = 12;
    v9 = 184;
    v10 = 156;
    goto LABEL_9;
  }

  return sub_23945AFF8(a1, a2, a3);
}

uint64_t sub_239458844(char *a1, uint64_t a2)
{
  memset(v8, 0, sizeof(v8));
  if (sub_2394065F4(v8, 0) && sub_239458918(v8, a1, a2, 1, 0))
  {
    if (sub_239406968(v8) <= 0x10000)
    {
      v7 = sub_239406940(v8);
      v6 = sub_239406968(v8);
      v4 = sub_2394030A0(0, &v7, v6);
      sub_239406688(v8);
      return v4;
    }

    sub_2394170F4(12, 0, 177, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/asn1_gen.c", 115);
  }

  sub_239406688(v8);
  return 0;
}

uint64_t sub_239458918(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a5 > 50)
  {
    v5 = 131;
    v6 = 194;
LABEL_76:
    sub_2394170F4(12, 0, v5, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/asn1_gen.c", v6);
    return 0;
  }

  v9 = 0;
  while (1)
  {
    while (1)
    {
      v10 = *a2;
      if (*a2)
      {
        v11 = a2;
        do
        {
          if (!sub_23945046C(v10))
          {
            break;
          }

          v12 = *++v11;
          v10 = v12;
        }

        while (v12);
      }

      else
      {
        v11 = a2;
      }

      v13 = strchr(v11, 44);
      if (!v13)
      {
        goto LABEL_59;
      }

      v14 = v13;
      *&v62[0] = v11;
      *(&v62[0] + 1) = v13 - v11;
      LOBYTE(v61) = 0;
      v15 = v62[0];
      while (1)
      {
        v63 = v15;
        if (!sub_239407A68(&v63, &v61) || !sub_23945046C(v61))
        {
          break;
        }

        v15 = v63;
        v62[0] = v63;
        LOBYTE(v61) = 0;
      }

      v63 = 0uLL;
      if (sub_239407B8C(v62, &v63, 58))
      {
        sub_239407718(v62, 1uLL);
      }

      else
      {
        v63 = v62[0];
        v62[0] = 0uLL;
      }

      a2 = v14 + 1;
      if (!sub_239459348(&v63, "FORMAT") && !sub_239459348(&v63, "FORM"))
      {
        break;
      }

      if (sub_239459348(v62, "ASCII"))
      {
        a4 = 1;
      }

      else if (sub_239459348(v62, "UTF8"))
      {
        a4 = 2;
      }

      else if (sub_239459348(v62, "HEX"))
      {
        a4 = 3;
      }

      else
      {
        if (!sub_239459348(v62, "BITLIST"))
        {
          v5 = 182;
          v6 = 250;
          goto LABEL_76;
        }

        a4 = 4;
      }
    }

    if (!sub_239459348(&v63, "IMP") && !sub_239459348(&v63, "IMPLICIT"))
    {
      break;
    }

    if (v9)
    {
      v5 = 131;
      v6 = 256;
      goto LABEL_76;
    }

    v9 = sub_2394593B4(v62);
    if (!v9)
    {
      return 0;
    }
  }

  if (sub_239459348(&v63, "EXP") || sub_239459348(&v63, "EXPLICIT"))
  {
    if (v9)
    {
      v5 = 131;
      v6 = 268;
      goto LABEL_76;
    }

    v16 = sub_2394593B4(v62);
    if (v16)
    {
      v17 = v16 | 0x20000000;
LABEL_45:
      v19 = a3;
      v18 = a1;
      v20 = a2;
      v21 = 0;
      return sub_239459504(v18, v20, v19, v17, v21, a4, a5);
    }

    return 0;
  }

  if (sub_239459348(&v63, "OCTWRAP"))
  {
    if (v9)
    {
      v17 = v9;
    }

    else
    {
      v17 = 4;
    }

    goto LABEL_45;
  }

  if (sub_239459348(&v63, "BITWRAP"))
  {
    if (v9)
    {
      v17 = v9;
    }

    else
    {
      v17 = 3;
    }

    v19 = a3;
    v18 = a1;
    v20 = a2;
    v21 = 1;
    return sub_239459504(v18, v20, v19, v17, v21, a4, a5);
  }

  if (sub_239459348(&v63, "SEQWRAP"))
  {
    v23 = v9 | 0x20000000;
    v24 = 536870928;
    v25 = v9 == 0;
    goto LABEL_56;
  }

  if (sub_239459348(&v63, "SETWRAP"))
  {
    v23 = v9 | 0x20000000;
    v25 = v9 == 0;
    v24 = 536870929;
LABEL_56:
    if (v25)
    {
      v17 = v24;
    }

    else
    {
      v17 = v23;
    }

    goto LABEL_45;
  }

LABEL_59:
  v26 = strchr(v11, 58);
  v27 = v26;
  v63 = 0uLL;
  if (v26)
  {
    v28 = v26 - v11;
    v29 = v27 + 1;
  }

  else
  {
    v28 = strlen(v11);
    v29 = "";
  }

  *&v63 = v11;
  *(&v63 + 1) = v28;
  v30 = &dword_278A80F18;
  v31 = 33;
  while (!sub_239459348(&v63, *(v30 - 1)))
  {
    v30 += 4;
    if (!--v31)
    {
      goto LABEL_75;
    }
  }

  v32 = *v30;
  if (!v32)
  {
LABEL_75:
    v5 = 185;
    v6 = 356;
    goto LABEL_76;
  }

  memset(&v62[1], 0, 32);
  if (v9)
  {
    v33 = v32 & 0x20000000 | v9;
  }

  else
  {
    v33 = v32;
  }

  v62[0] = 0uLL;
  if (!sub_239406A10(a1, v62, v33))
  {
    return 0;
  }

  switch(v32)
  {
    case 1u:
      if (a4 != 1)
      {
        v5 = 161;
        v6 = 377;
        goto LABEL_76;
      }

      LODWORD(v61) = 0;
      if (!sub_239463790(v29, &v61))
      {
        v5 = 125;
        v6 = 382;
        goto LABEL_76;
      }

      if (v61)
      {
        v48 = 255;
      }

      else
      {
        v48 = 0;
      }

      if (!sub_239406ACC(v62, v48))
      {
        return 0;
      }

      return sub_239406758(a1) != 0;
    case 2u:
    case 0xAu:
      if (a4 != 1)
      {
        v5 = 139;
        v6 = 391;
        goto LABEL_76;
      }

      v41 = sub_23946359C(0, v29);
      if (!v41)
      {
        v5 = 130;
        v6 = 396;
        goto LABEL_76;
      }

      v42 = v41;
      v43 = sub_2393FC9F8(v41, 0);
      *&v61 = 0;
      if (v43 < 1 || (v44 = v43, !sub_239406C9C(v62, &v61, v43)) || sub_2393FC9F8(v42, &v61) != v44)
      {
        v35 = 0;
        goto LABEL_134;
      }

      goto LABEL_96;
    case 3u:
      if (a4 == 4)
      {
        v52 = sub_239402F28();
        if (!v52)
        {
          return 0;
        }

        v42 = v52;
        if (!sub_23940AA90(v29, 44, 1, sub_2394595AC, v52))
        {
          sub_2394170F4(12, 0, 151, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/x509/asn1_gen.c", 483);
          sub_239402ECC(v42);
          return 0;
        }

        v53 = sub_2393FC07C(v42, 0);
        *&v61 = 0;
        if (v53 >= 1 && (v54 = v53, sub_239406C9C(v62, &v61, v53)) && sub_2393FC07C(v42, &v61) == v54)
        {
LABEL_96:
          v35 = sub_239406758(a1) != 0;
        }

        else
        {
          v35 = 0;
        }

LABEL_134:
        sub_239402ECC(v42);
      }

      else
      {
        if (!sub_239406ACC(v62, 0))
        {
          return 0;
        }

LABEL_141:
        if (a4 != 3)
        {
          if (a4 == 1)
          {
            goto LABEL_143;
          }

          v5 = 124;
          v6 = 521;
          goto LABEL_76;
        }

        *&v61 = 0;
        v56 = sub_239463DB0(v29, &v61);
        if (!v56)
        {
          v5 = 128;
          v6 = 513;
          goto LABEL_76;
        }

        v57 = v56;
        if (sub_239406C48(v62, v56, v61))
        {
          v35 = sub_239406758(a1) != 0;
        }

        else
        {
          v35 = 0;
        }

        sub_239450144(v57);
      }

      return v35;
    case 4u:
      goto LABEL_141;
    case 5u:
      if (!*v29)
      {
        return sub_239406758(a1);
      }

      v5 = 133;
      v6 = 370;
      goto LABEL_76;
    case 6u:
      if (a4 != 1)
      {
        v5 = 165;
        v6 = 411;
        goto LABEL_76;
      }

      v49 = sub_239450E0C(v29, 0);
      if (!v49 || (v50 = v49, v51 = *(v49 + 5), !v51))
      {
        v5 = 134;
        v6 = 416;
        goto LABEL_76;
      }

      if (sub_239406C48(v62, v49[3], v51))
      {
        v35 = sub_239406758(a1) != 0;
      }

      else
      {
        v35 = 0;
      }

      sub_2393FDCD8(v50);
      return v35;
    case 7u:
    case 8u:
    case 9u:
    case 0xBu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x15u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Du:
      goto LABEL_105;
    case 0xCu:
    case 0x13u:
    case 0x14u:
    case 0x16u:
    case 0x1Cu:
    case 0x1Eu:
      if (a4 == 1)
      {
        v34 = 4097;
      }

      else
      {
        if (a4 != 2)
        {
          v5 = 127;
          v6 = 457;
          goto LABEL_76;
        }

        v34 = 4096;
      }

      *&v61 = 0;
      v47 = sub_2394004D8(v32);
      if (sub_2393FD314(&v61, v29, 0xFFFFFFFFFFFFFFFFLL, v34, v47, 0, 0x10000) < 1)
      {
        return 0;
      }

      if (sub_239406C48(v62, *(v61 + 8), *v61))
      {
        v35 = sub_239406758(a1) != 0;
      }

      else
      {
        v35 = 0;
      }

      sub_2393FFA58(v61);
      return v35;
    case 0x17u:
    case 0x18u:
      if (a4 != 1)
      {
        v5 = 176;
        v6 = 427;
        goto LABEL_76;
      }

      v45 = strlen(v29);
      *&v61 = v29;
      *(&v61 + 1) = v45;
      if (v32 == 23)
      {
        v46 = sub_239408CA4(&v61, 0, 0);
      }

      else
      {
        v46 = sub_2394089B4(&v61, 0, 0);
      }

      if (!v46)
      {
        v5 = 138;
        v6 = 438;
        goto LABEL_76;
      }

LABEL_143:
      v55 = strlen(v29);
      if (sub_239406C48(v62, v29, v55))
      {
        return sub_239406758(a1) != 0;
      }

      return 0;
    default:
      if (v32 - 536870928 >= 2)
      {
LABEL_105:
        v5 = 68;
        v6 = 558;
        goto LABEL_76;
      }

      if (!v27)
      {
        goto LABEL_88;
      }

      if (!a3)
      {
        v5 = 170;
        v6 = 528;
        goto LABEL_76;
      }

      v37 = sub_23945E07C(a3, v29);
      if (!v37)
      {
        v5 = 170;
        v6 = 533;
        goto LABEL_76;
      }

      v38 = v37;
      if (!sub_239431484(v37))
      {
        goto LABEL_88;
      }

      v39 = 0;
      break;
  }

  do
  {
    v40 = sub_239457528(v38, v39);
    if (!sub_239458918(v62, v40[2], a3, 1, (a5 + 1)))
    {
      return 0;
    }

    if (sub_239406968(v62) > 0x10000)
    {
      v5 = 177;
      v6 = 546;
      goto LABEL_76;
    }

    ++v39;
  }

  while (v39 < sub_239431484(v38));
LABEL_88:
  if (v32 != 536870929)
  {
    return sub_239406758(a1);
  }

  if (!sub_2394074C8(v62))
  {
    return 0;
  }

  return sub_239406758(a1) != 0;
}