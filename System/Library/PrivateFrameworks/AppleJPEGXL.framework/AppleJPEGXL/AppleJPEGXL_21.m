void sub_240BC09AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49)
{
  sub_240B43AD0(&a29);
  sub_240B3CF1C(&a49);
  sub_240B43B14(v49 - 256);
  _Unwind_Resume(a1);
}

uint64_t sub_240BC09E8(uint64_t *a1, uint64_t *a2)
{
  v4 = 0;
  *(a2[3] + (*a2 >> 3)) = ((*a1 - 1) << (*a2 & 7)) | *(a2[3] + (*a2 >> 3));
  *a2 += 4;
  v6 = a1 + 1;
  v5 = *a1;
  while (!v5)
  {
LABEL_8:
    ++v4;
    v6 = (v6 + 68);
    if (v4 == 3)
    {
      return 0;
    }
  }

  v7 = 0;
  while (1)
  {
    v8 = 0.015625;
    if (v7)
    {
      v8 = 1.0;
    }

    if (sub_240C0EF60(a2, v8 * *(v6 + v7)))
    {
      return 1;
    }

    ++v7;
    v5 = *a1;
    if (v7 >= *a1)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_240BC0AC0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = a1 + 48;
  LOBYTE(v9) = 1;
  do
  {
    v9 = (*(v8 + v7 * 4) == *&dword_240C850C0[v7]) & v9;
    ++v7;
  }

  while (v7 != 3);
  sub_240B53650(v12, a2, 97);
  *(a2[3] + (*a2 >> 3)) = (v9 << (*a2 & 7)) | *(a2[3] + (*a2 >> 3));
  ++*a2;
  if (v9)
  {
LABEL_7:
    sub_240B536C8(v12, a2, a3, a4);
    return 0;
  }

  else
  {
    v10 = 0;
    while (!sub_240C0EF60(a2, *(v8 + v10) * 128.0))
    {
      v10 += 4;
      if (v10 == 12)
      {
        goto LABEL_7;
      }
    }

    return 1;
  }
}

void sub_240BC0BC8(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 12; i += 4)
  {
    v4 = a1 + i;
    *(v4 + 48) = 1.0 / *(a2 + i);
    *(v4 + 60) = *(a2 + i);
  }

  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  sub_240BC0AC0(a1, &v10, 0, 0);
  v5 = v10;
  v6 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) - v10;
  if (v6)
  {
    *(*(&v11 + 1) + (v10 >> 3)) = *(*(&v11 + 1) + (v10 >> 3));
    v5 = v10 + v6;
    *&v10 = v10 + v6;
  }

  v7 = *(&v11 + 1);
  v8[0] = *(&v11 + 1);
  v8[1] = v5 >> 3;
  sub_240B335C4(v9, v8);
  sub_240B68C38(a1, v9);
  *(&v11 + 1) = 0;
  if (v7)
  {
    atomic_fetch_add(&qword_27E519020, -*(v7 - 24));
    free(*(v7 - 32));
  }
}

void sub_240BC0CB4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  *(v1 - 40) = 0;
  if (v3)
  {
    atomic_fetch_add(&qword_27E519020, -*(v3 - 24));
    free(*(v3 - 32));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240BC0CE8(uint64_t a1, void **a2, void *a3)
{
  v5 = (a1 + 720);
  if (v5 != a2)
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = v7 - *a2;
    v9 = *(a1 + 720);
    if (*(a1 + 736) - v9 < v8)
    {
      v10 = 0xAF8AF8AF8AF8AF8BLL * (v8 >> 4);
      sub_240B3CB68(v5);
      if (v10 <= 0x75075075075075)
      {
        v11 = 0x5F15F15F15F15F16 * ((*(a1 + 736) - *(a1 + 720)) >> 4);
        if (v11 <= v10)
        {
          v11 = v10;
        }

        if (0xAF8AF8AF8AF8AF8BLL * ((*(a1 + 736) - *(a1 + 720)) >> 4) >= 0x3A83A83A83A83ALL)
        {
          v12 = 0x75075075075075;
        }

        else
        {
          v12 = v11;
        }

        if (v12 <= 0x75075075075075)
        {
          sub_240B68B8C(v12);
        }
      }

      sub_240B228BC();
    }

    v13 = *(a1 + 728);
    v14 = v13 - v9;
    if (v13 - v9 >= v8)
    {
      if (v6 != v7)
      {
        do
        {
          sub_240BA1FAC(v9, v6);
          v6 += 560;
          v9 += 560;
        }

        while (v6 != v7);
        v13 = *(a1 + 728);
      }

      while (v13 != v9)
      {
        v13 -= 560;
        sub_240B3CE44(v13);
      }

      *(a1 + 728) = v9;
    }

    else
    {
      if (v13 != v9)
      {
        v15 = v13 - v9;
        v16 = *a2;
        do
        {
          sub_240BA1FAC(v9, v16);
          v16 += 560;
          v9 += 560;
          v15 -= 560;
        }

        while (v15);
        v13 = *(a1 + 728);
      }

      *(a1 + 728) = sub_240BC11AC(&v6[v14], v7, v13);
    }
  }

  v40 = a1;
  *a1 = 0;
  v18 = *a2;
  v17 = a2[1];
  v41 = a2;
  if (v17 != *a2)
  {
    for (i = 0; i < 0xAF8AF8AF8AF8AF8BLL * ((v17 - v18) >> 4); ++i)
    {
      v20 = &v18[560 * i];
      if (*v20 == 7)
      {
        v21 = dword_240C85038[i];
        v22 = dword_240C8507C[i];
        LODWORD(v48) = 4;
        *(&v48 + 1) = i;
        v49 = 0;
        *&v50 = 0;
        v23 = sub_240B438A0(&v48, a3[60], a3[61]);
        v24 = a3[6];
        sub_240B64760(&v48, 8 * v21, 8 * v22, 8, 3);
        v25 = v55;
        if (v55)
        {
          sub_240B43B14(&v48);
          return v25;
        }

        *v43 = v48;
        v26 = (v24 + 88 * v23);
        *&v43[16] = v49;
        v48 = 0uLL;
        v49 = 0;
        *&v43[24] = v50;
        v44 = v51;
        v51 = 0;
        v50 = 0uLL;
        v45 = v52;
        v46 = v53;
        v47 = v54;
        sub_240B649A8(v26, v43);
        v56[0] = &v43[24];
        sub_240B37900(v56);
        v56[0] = v43;
        sub_240B379C0(v56);
        v27 = 0;
        for (j = 0; j != 3; ++j)
        {
          if (v22)
          {
            v29 = 0;
            v31 = *(*v26 + (j << 6) + 16);
            v30 = *(*v26 + (j << 6) + 24);
            v32 = v27;
            do
            {
              v33 = v32;
              v34 = v30;
              v35 = 8 * v21;
              if (v21)
              {
                do
                {
                  *v34++ = *(**(v20 + 28) + v33);
                  v33 += 4;
                  --v35;
                }

                while (v35);
              }

              ++v29;
              v30 = (v30 + v31);
              v32 += 32 * v21;
            }

            while (v29 != 8 * v22);
          }

          v27 += (v22 * v21) << 8;
        }

        sub_240B43B14(&v48);
        v18 = *v41;
        v17 = v41[1];
      }
    }
  }

  memset(v43, 0, sizeof(v43));
  sub_240BC0330(v40, v43, 0, 0, 0);
  v36 = *v43;
  v37 = ((*v43 + 7) & 0xFFFFFFFFFFFFFFF8) - *v43;
  if (v37)
  {
    *(*&v43[24] + (*v43 >> 3)) = *(*&v43[24] + (*v43 >> 3));
    v36 = *v43 + v37;
    *v43 += v37;
  }

  v56[0] = *&v43[24];
  v56[1] = (v36 >> 3);
  sub_240B335C4(&v48, v56);
  sub_240B67D50(v40, &v48);
  v38 = *&v43[24];
  *&v43[24] = 0;
  if (v38)
  {
    atomic_fetch_add(&qword_27E519020, -*(v38 - 24));
    free(*(v38 - 32));
  }

  return 0;
}

void *sub_240BC11AC(char *a1, char *a2, void *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v4 = a1;
  v5 = 0;
  v6 = a3;
  do
  {
    sub_240B68AE8(v6, v4);
    v4 += 560;
    v6 += 70;
    v5 -= 560;
  }

  while (v4 != a2);
  return v6;
}

float32x4_t sub_240BC1248(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  v7 = vdupq_n_s32(0x3B789536u);
  v8 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v7, a7, a1[2]), a6, a1[1]), a5, *a1);
  v9 = vmlaq_f32(vmlaq_f32(v7, a7, a1[5]), a6, a1[4]);
  v10 = vmlaq_f32(v7, a7, a1[8]);
  v11 = vmaxnmq_f32(v8, 0);
  v12 = vbicq_s8(vmlaq_s32(vdupq_n_s32(0x54800000u), vshrq_n_s32(v11, 0x17uLL), vdupq_n_s32(0xFFD55556)), vceqzq_s32(v11));
  v13 = vmulq_f32(v11, vdupq_n_s32(0xBEAAAAAB));
  v14 = 3;
  v15 = vdupq_n_s32(0x3FAAAAABu);
  do
  {
    v16 = vmulq_f32(v12, v12);
    v12 = vmlaq_f32(vmulq_f32(v12, v15), vmulq_f32(v16, v16), v13);
    --v14;
  }

  while (v14);
  v17 = vmaxnmq_f32(vmlaq_f32(v9, a5, a1[3]), 0);
  v18 = vbicq_s8(vmlaq_s32(vdupq_n_s32(0x54800000u), vshrq_n_s32(v17, 0x17uLL), vdupq_n_s32(0xFFD55556)), vceqzq_s32(v17));
  v19 = vmulq_f32(v17, vdupq_n_s32(0xBEAAAAAB));
  v20 = 3;
  v21 = vdupq_n_s32(0x3FAAAAABu);
  do
  {
    v22 = vmulq_f32(v18, v18);
    v18 = vmlaq_f32(vmulq_f32(v18, v21), vmulq_f32(v22, v22), v19);
    --v20;
  }

  while (v20);
  v23 = vmaxnmq_f32(vmlaq_f32(vmlaq_f32(v10, a6, a1[7]), a5, a1[6]), 0);
  v24 = vbicq_s8(vmlaq_s32(vdupq_n_s32(0x54800000u), vshrq_n_s32(v23, 0x17uLL), vdupq_n_s32(0xFFD55556)), vceqzq_s32(v23));
  v25 = vmulq_f32(v23, vdupq_n_s32(0xBEAAAAAB));
  v26 = 3;
  v27 = vdupq_n_s32(0x3FAAAAABu);
  do
  {
    v28 = vmulq_f32(v24, v24);
    v24 = vmlaq_f32(vmulq_f32(v24, v27), vmulq_f32(v28, v28), v25);
    --v26;
  }

  while (v26);
  v29 = vmulq_f32(v18, v18);
  v30 = vmlsq_f32(v18, vmulq_f32(v29, v29), v17);
  v31 = vdupq_n_s32(0x3EAAAAABu);
  v32 = vmlaq_f32(v18, v31, v30);
  v33 = vmlaq_f32(a1[10], v17, vmulq_f32(v32, v32));
  v34 = vmulq_f32(v12, v12);
  v35 = vmlaq_f32(v12, v31, vmlsq_f32(v12, vmulq_f32(v34, v34), v11));
  v36 = vmlaq_f32(a1[9], v11, vmulq_f32(v35, v35));
  v37 = vmulq_f32(v24, v24);
  v38 = vmlaq_f32(v24, v31, vmlsq_f32(v24, vmulq_f32(v37, v37), v23));
  result = vmlaq_f32(a1[11], v23, vmulq_f32(v38, v38));
  v37.i64[0] = 0x3F0000003F000000;
  v37.i64[1] = 0x3F0000003F000000;
  *a2 = vmulq_f32(vsubq_f32(v36, v33), v37);
  *a3 = vmulq_f32(vaddq_f32(v36, v33), v37);
  *a4 = result;
  return result;
}

BOOL sub_240BC144C(uint64_t a1, void *a2, unsigned int *a3)
{
  v10 = a3;
  v11 = a1;
  v4 = a3[1];
  v9 = *a3;
  v7[0] = &v10;
  v7[1] = &v9;
  v7[2] = &v8;
  v7[3] = &v11;
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v12[0] = 0;
    v12[1] = v12;
    v5 = v12;
  }

  return sub_240BC14B4(v5, v4, v7);
}

BOOL sub_240BC14B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  v6[0] = sub_240B2AC64;
  v6[1] = a3;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v6, sub_240BC1610, sub_240BC1564, 0, a2) != 0;
  }

  for (i = 0; i != v3; ++i)
  {
    sub_240BC1564(v6, i);
  }

  return 0;
}

void sub_240BC1564(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (**(v2 + 8))
  {
    v3 = 0;
    v4 = **v2;
    v5 = v4[2] * a2;
    v6 = (v4[3] + v5);
    v7 = (v4[8] + v5);
    v8 = (v4[13] + v5);
    v9 = v6;
    v10 = v7;
    v11 = v8;
    do
    {
      v12 = *v9++;
      v13 = v12;
      v14 = *v10++;
      v15 = v14;
      v16 = *v11++;
      sub_240BC1248(**(v2 + 24), v6, v7, v8, v13, v15, v16);
      v3 += 4;
      v6 = v9;
      v7 = v10;
      v8 = v11;
    }

    while (v3 < **(v2 + 8));
  }
}

uint64_t sub_240BC1610(unsigned int (**a1)(uint64_t), uint64_t a2)
{
  if ((*a1)(a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

BOOL sub_240BC1638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  v6[0] = sub_240B2AC64;
  v6[1] = a3;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v6, sub_240BC1980, sub_240BC16E8, 0, a2) != 0;
  }

  for (i = 0; i != v3; ++i)
  {
    sub_240BC16E8(v6, i);
  }

  return 0;
}

void sub_240BC16E8(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (**(v2 + 8))
  {
    v3 = 0;
    v4 = **v2;
    v5 = v4[2] * a2;
    v6 = (v4[3] + v5);
    v7 = (v4[8] + v5);
    v8 = (v4[13] + v5);
    v31 = vdupq_n_s32(0x3F522E0Fu);
    v32 = vdupq_n_s32(0x3D9E8391u);
    v29 = vdupq_n_s32(0x3BD5AFDEu);
    v30 = vdupq_n_s32(0x3F4BD0EAu);
    v27 = vdupq_n_s32(0x3E2661B1u);
    v28 = vdupq_n_s32(0xBD61CABC);
    v25 = vdupq_n_s32(0x3C2AFD55u);
    v26 = vdupq_n_s32(0x3EFF5C88u);
    v23 = vdupq_n_s32(0x3966B677u);
    v24 = vdupq_n_s32(0x3F89DA5Eu);
    v21 = vdupq_n_s32(0x3D25AEE6u);
    v22 = vdupq_n_s32(0x3E86C025u);
    v9 = v6;
    v10 = v7;
    v11 = v8;
    do
    {
      v12 = *v9++;
      v13.i64[0] = 0x8000000080000000;
      v13.i64[1] = 0x8000000080000000;
      v14 = vandq_s8(v12, v13);
      v15 = vabsq_f32(v12);
      v16 = *v10++;
      v17 = vandq_s8(v16, v13);
      v18 = vabsq_f32(v16);
      v19 = *v11++;
      v20 = vabsq_f32(v19);
      sub_240BC1248(**(v2 + 24), v6, v7, v8, vorrq_s8(v14, vabsq_f32(vbslq_s8(vcgtq_f32(v15, v21), vdivq_f32(vmlaq_f32(v23, v15, vmlaq_f32(v25, v15, vmlaq_f32(v27, v15, vmlaq_f32(v30, v31, v15)))), vmlaq_f32(v22, v15, vmlaq_f32(v24, v15, vmlaq_f32(v26, v15, vmlaq_f32(v28, v29, v15))))), vmulq_f32(v15, v32)))), vorrq_s8(v17, vabsq_f32(vbslq_s8(vcgtq_f32(v18, v21), vdivq_f32(vmlaq_f32(v23, v18, vmlaq_f32(v25, v18, vmlaq_f32(v27, v18, vmlaq_f32(v30, v31, v18)))), vmlaq_f32(v22, v18, vmlaq_f32(v24, v18, vmlaq_f32(v26, v18, vmlaq_f32(v28, v29, v18))))), vmulq_f32(v18, v32)))), vorrq_s8(vandq_s8(v19, v13), vabsq_f32(vbslq_s8(vcgtq_f32(v20, v21), vdivq_f32(vmlaq_f32(v23, v20, vmlaq_f32(v25, v20, vmlaq_f32(v27, v20, vmlaq_f32(v30, v31, v20)))), vmlaq_f32(v22, v20, vmlaq_f32(v24, v20, vmlaq_f32(v26, v20, vmlaq_f32(v28, v29, v20))))), vmulq_f32(v20, v32)))));
      v3 += 4;
      v6 = v9;
      v7 = v10;
      v8 = v11;
    }

    while (v3 < **(v2 + 8));
  }
}

uint64_t sub_240BC1980(unsigned int (**a1)(uint64_t), uint64_t a2)
{
  if ((*a1)(a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

BOOL sub_240BC19A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  v6[0] = sub_240B2AC64;
  v6[1] = a3;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v6, sub_240BC1D30, sub_240BC1A58, 0, a2) != 0;
  }

  for (i = 0; i != v3; ++i)
  {
    sub_240BC1A58(v6, i);
  }

  return 0;
}

void sub_240BC1A58(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (**(v2 + 16))
  {
    v3 = 0;
    v4 = 0;
    v5 = **v2;
    v6 = v5[2] * a2;
    v7 = v5[3] + v6;
    v8 = v5[8] + v6;
    v9 = v5[13] + v6;
    v10 = **(v2 + 8);
    v11 = v10[2] * a2;
    v12 = v10[3] + v11;
    v13 = v10[8] + v11;
    v14 = v10[13] + v11;
    v38 = vdupq_n_s32(0x3F522E0Fu);
    v39 = vdupq_n_s32(0x3D9E8391u);
    v37 = vdupq_n_s32(0x3F4BD0EAu);
    v35 = vdupq_n_s32(0xBD61CABC);
    v36 = vdupq_n_s32(0x3BD5AFDEu);
    v33 = vdupq_n_s32(0x3EFF5C88u);
    v34 = vdupq_n_s32(0x3E2661B1u);
    v31 = vdupq_n_s32(0x3F89DA5Eu);
    v32 = vdupq_n_s32(0x3C2AFD55u);
    v29 = vdupq_n_s32(0x3E86C025u);
    v30 = vdupq_n_s32(0x3966B677u);
    v28 = vdupq_n_s32(0x3D25AEE6u);
    do
    {
      v15 = *(v7 + v3);
      v16.i64[0] = 0x8000000080000000;
      v16.i64[1] = 0x8000000080000000;
      v17 = vandq_s8(v15, v16);
      v18 = vabsq_f32(v15);
      v19 = vorrq_s8(v17, vabsq_f32(vbslq_s8(vcgtq_f32(v18, v28), vdivq_f32(vmlaq_f32(v30, v18, vmlaq_f32(v32, v18, vmlaq_f32(v34, v18, vmlaq_f32(v37, v38, v18)))), vmlaq_f32(v29, v18, vmlaq_f32(v31, v18, vmlaq_f32(v33, v18, vmlaq_f32(v35, v36, v18))))), vmulq_f32(v18, v39))));
      v20 = *(v8 + v3);
      v21 = vandq_s8(v20, v16);
      v22 = vabsq_f32(v20);
      v23 = vorrq_s8(v21, vabsq_f32(vbslq_s8(vcgtq_f32(v22, v28), vdivq_f32(vmlaq_f32(v30, v22, vmlaq_f32(v32, v22, vmlaq_f32(v34, v22, vmlaq_f32(v37, v38, v22)))), vmlaq_f32(v29, v22, vmlaq_f32(v31, v22, vmlaq_f32(v33, v22, vmlaq_f32(v35, v36, v22))))), vmulq_f32(v22, v39))));
      v24 = *(v9 + v3);
      v25 = vandq_s8(v24, v16);
      v26 = vabsq_f32(v24);
      v27 = vorrq_s8(v25, vabsq_f32(vbslq_s8(vcgtq_f32(v26, v28), vdivq_f32(vmlaq_f32(v30, v26, vmlaq_f32(v32, v26, vmlaq_f32(v34, v26, vmlaq_f32(v37, v38, v26)))), vmlaq_f32(v29, v26, vmlaq_f32(v31, v26, vmlaq_f32(v33, v26, vmlaq_f32(v35, v36, v26))))), vmulq_f32(v26, v39))));
      *(v12 + v3) = v19;
      *(v13 + v3) = v23;
      *(v14 + v3) = v27;
      sub_240BC1248(**(v2 + 32), (v7 + v3), (v8 + v3), (v9 + v3), v19, v23, v27);
      v4 += 4;
      v3 += 16;
    }

    while (v4 < **(v2 + 16));
  }
}

uint64_t sub_240BC1D30(unsigned int (**a1)(uint64_t), uint64_t a2)
{
  if ((*a1)(a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

BOOL sub_240BC1D58(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4, _OWORD *a5, unsigned int *a6, float a7)
{
  v53 = *MEMORY[0x277D85DE8];
  v14 = sub_240B29FC8(*(a1 + 56) == 1);
  if (sub_240B4A210((v14 + 16), a1 + 16))
  {
    for (i = 0; i != 9; ++i)
    {
      *v15.i32 = (a7 / 255.0) * flt_240C850F0[i];
      v15 = vdupq_lane_s32(*v15.i8, 0);
      *&v48[2 * i] = v15;
    }

    *v17.i32 = -cbrtf(0.0037931);
    v50 = vdupq_lane_s32(v17, 0);
    v51 = v50;
    v52 = v50;
    if (a6)
    {
      sub_240B32D14(a4, a6);
    }

LABEL_6:
    result = sub_240BC144C(v48, a3, a4);
    goto LABEL_39;
  }

  v19 = *(a1 + 56);
  v22 = *(a1 + 28) == 1 && v19 <= 1 && *(a1 + 16) == 1 && *(a1 + 20) == 1;
  if (v22 && (*(a1 + 64) & 1) == 0 && *(a1 + 72) == 13)
  {
    for (j = 0; j != 9; ++j)
    {
      *v15.i32 = (a7 / 255.0) * flt_240C850F0[j];
      v15 = vdupq_lane_s32(*v15.i8, 0);
      *&v48[2 * j] = v15;
    }

    *v27.i32 = -cbrtf(0.0037931);
    v50 = vdupq_lane_s32(v27, 0);
    v51 = v50;
    v52 = v50;
    if (a6)
    {
      v44 = a4;
      v45 = v48;
      v28 = a4[1];
      v42 = *a4;
      v43 = a6;
      v36 = &v44;
      v37 = &v43;
      v38 = &v42;
      v39 = &v41;
      v40 = &v45;
      if (a3)
      {
        result = sub_240BC19A8(a3, v28, &v36);
      }

      else
      {
        v46 = 0;
        v47 = &v46;
        result = sub_240BC19A8(&v46, v28, &v36);
      }
    }

    else
    {
      v44 = a4;
      v45 = v48;
      v35 = a4[1];
      v43 = *a4;
      v36 = &v44;
      v37 = &v43;
      v38 = &v42;
      v39 = &v45;
      if (a3)
      {
        result = sub_240BC1638(a3, v35, &v36);
      }

      else
      {
        v46 = 0;
        v47 = &v46;
        result = sub_240BC1638(&v46, v35, &v36);
      }
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_27E516AA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E516AA8))
    {
      sub_240B29B14(&unk_27E516918, 9, 8);
      __cxa_atexit(sub_240B29EA4, &unk_27E516918, &dword_240ABC000);
      __cxa_guard_release(&qword_27E516AA8);
    }

    if (sub_240B4A210(&unk_27E516918 + 200 * (v19 == 1) + 16, a1 + 16))
    {
      for (k = 0; k != 9; ++k)
      {
        *v23.i32 = (a7 / 255.0) * flt_240C850CC[k];
        v23 = vdupq_lane_s32(*v23.i8, 0);
        *&v48[2 * k] = v23;
      }

      *v25.i32 = -cbrtf(0.0037931);
      v50 = vdupq_lane_s32(v25, 0);
      v51 = v50;
      v52 = v50;
      if (a6)
      {
        sub_240B32D14(a4, a6);
      }

      goto LABEL_6;
    }

    v48[0] = 0;
    v48[1] = 0;
    *&v29 = *a4;
    *(&v29 + 1) = HIDWORD(*a4);
    v49 = v29;
    if (a6)
    {
      v30 = a6;
    }

    else
    {
      v30 = a4;
    }

    sub_240BAD594(a1, a4, a2, v48, v14, a5, a3, v30, a7);
    if (a6)
    {
      sub_240B32D14(a6, a4);
    }

    for (m = 0; m != 9; ++m)
    {
      *v31.i32 = (a7 / 255.0) * flt_240C850F0[m];
      v31 = vdupq_lane_s32(*v31.i8, 0);
      *&v48[2 * m] = v31;
    }

    *v33.i32 = -cbrtf(0.0037931);
    v50 = vdupq_lane_s32(v33, 0);
    v51 = v50;
    v52 = v50;
    result = sub_240BC144C(v48, a3, a4);
  }

LABEL_39:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_240BC219C(void *result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = result;
  if (*(a2 + 64) == 1)
  {
    goto LABEL_2;
  }

  if (a3 <= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a3;
  }

  v9 = (a2 + 40);
  v8 = *(a2 + 40);
  v10 = v9[4];
  v11 = v9[2];
  v12 = v8 - v11;
  if (v10)
  {
    if (v8 != v11)
    {
LABEL_14:
      v25 = 0u;
      v26 = 0uLL;
      v16 = sub_240BC245C(a2, v8);
      v17 = v16[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        v19 = v16;
        do
        {
          v18 = v19[2];
          v20 = *v18 == v19;
          v19 = v18;
        }

        while (!v20);
      }

      if (v18 != (a2 + 8))
      {
        v21 = v18[4] - *v9;
        if (v21 < v7)
        {
          v7 = v21;
        }
      }

      sub_240B4ADF0(v16 + 6, v7);
      v22 = v16[8];
      if (v22)
      {
        v23 = v7;
      }

      else
      {
        v23 = 0;
      }

      v16[6] = v23;
      *(a2 + 65) = 1;
      *(v4 + 8) = 0;
      *v4 = v22;
      v4[1] = v7;
      v4[2] = 0;
      v4[3] = a2;
      *&v26 = 0;
      *(&v26 + 1) = a2;
      goto LABEL_30;
    }

    v27 = v7;
    result = (*(v10 + 8))(*v10, &v27);
    if (!v27 || (v13 = result) == 0)
    {
      *(a2 + 64) = 1;
LABEL_2:
      *(v4 + 8) = -1;
      return result;
    }

    if (v27 < a3)
    {
      (*(*(a2 + 72) + 16))(**(a2 + 72), 0);
      v8 = *(a2 + 40);
      goto LABEL_14;
    }

    v25 = 0u;
    v26 = 0u;
    sub_240BC245C(a2, *(a2 + 40));
    *(a2 + 65) = 1;
    v24 = v27;
    *&v26 = 0;
    *(&v26 + 1) = a2;
    *(v4 + 8) = 0;
    *v4 = v13;
    v4[1] = v24;
  }

  else
  {
    if (v12 + a3 >= **(a2 + 32))
    {
      goto LABEL_14;
    }

    v25 = 0u;
    v26 = 0uLL;
    sub_240BC245C(a2, v8);
    *(a2 + 65) = 1;
    v14 = **(a2 + 24) + v12;
    v15 = **(a2 + 32) - v12;
    *&v26 = 0;
    *(&v26 + 1) = a2;
    *(v4 + 8) = 0;
    *v4 = v14;
    v4[1] = v15;
  }

  v4[2] = 0;
  v4[3] = a2;
LABEL_30:
  v25 = 0uLL;
  return sub_240B96F0C(&v25);
}

void sub_240BC2420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    atomic_fetch_add(&qword_27E519020, -*(a12 - 24));
    free(*(a12 - 32));
  }

  _Unwind_Resume(exception_object);
}

void *sub_240BC245C(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_240BC2554(void *a1)
{
  v2 = a1[9];
  if (v2 && *(v2 + 24))
  {
    (*(v2 + 32))(*v2, a1[5]);
  }

  a1[6] = a1[5];

  sub_240BC25B0(a1);
}

void sub_240BC25B0(uint64_t a1)
{
  v2 = *(a1 + 48);
  for (i = *(a1 + 56); i < v2; i = *(a1 + 56))
  {
    v4 = *(a1 + 32);
    if (v4 && !*v4)
    {
      break;
    }

    v5 = *a1;
    v6 = *(*a1 + 32);
    v7 = *(*a1 + 40) + v6;
    if (*(*a1 + 48))
    {
      v8 = i - v6;
      if (v2 >= v7)
      {
        v2 = v7;
      }

      v9 = v2 - i;
      if (v4)
      {
        v10 = *v4 >= v9 ? v2 - i : *v4;
        memcpy(**(a1 + 24), (v5[8] + v8), v10);
        v11 = *(a1 + 24);
        **(a1 + 32) -= v10;
        *v11 += v10;
        *(a1 + 56) += v10;
      }

      else if ((sub_240BC2700(a1, (v5[8] + v8), v9) & 1) == 0)
      {
        return;
      }
    }

    else
    {
      if (v2 >= v7)
      {
        v2 = *(*a1 + 40) + v6;
      }

      *(a1 + 56) = v2;
      if (v4)
      {
        v12 = v2 - i;
        **(a1 + 24) += v12;
        **(a1 + 32) -= v12;
      }
    }

    if (v7 == *(a1 + 56))
    {
      sub_240BC27A8(a1, v5);
    }

    v13 = *(a1 + 72);
    if (v13)
    {
      if (!*(v13 + 24))
      {
        (*(v13 + 32))(*v13, *(a1 + 56));
      }
    }

    v2 = *(a1 + 48);
  }
}

uint64_t sub_240BC2700(uint64_t a1, const void *a2, size_t a3)
{
  v11 = a3;
  v6 = (*(*(a1 + 72) + 8))(**(a1 + 72), &v11);
  if (v6)
  {
    v7 = v11 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  if (v7)
  {
    *(a1 + 64) = 1;
  }

  else
  {
    if (v11 >= a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = v11;
    }

    v11 = v9;
    memcpy(v6, a2, v9);
    (*(*(a1 + 72) + 16))(**(a1 + 72), v11);
    *(a1 + 56) += v11;
  }

  return v8;
}

void sub_240BC27A8(void **a1, void *a2)
{
  v3 = a2[1];
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v31 = *v4 == v5;
      v5 = v4;
    }

    while (!v31);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v6 = a1[1];
  a1[2] = a1[2] - 1;
  v7 = *a2;
  if (*a2)
  {
    v8 = a2[1];
    if (!v8)
    {
      v9 = a2;
      goto LABEL_17;
    }

    do
    {
      v9 = v8;
      v8 = *v8;
    }

    while (v8);
  }

  else
  {
    v9 = a2;
  }

  v7 = v9[1];
  if (v7)
  {
LABEL_17:
    v11 = 0;
    v10 = v9[2];
    *(v7 + 16) = v10;
    goto LABEL_18;
  }

  v10 = v9[2];
  v11 = 1;
LABEL_18:
  v12 = *v10;
  if (*v10 == v9)
  {
    *v10 = v7;
    if (v9 == v6)
    {
      v12 = 0;
      v6 = v7;
    }

    else
    {
      v12 = v10[1];
    }
  }

  else
  {
    v10[1] = v7;
  }

  v13 = *(v9 + 24);
  if (v9 != a2)
  {
    v14 = a2[2];
    v9[2] = v14;
    v14[*v14 != a2] = v9;
    v16 = *a2;
    v15 = a2[1];
    *(v16 + 16) = v9;
    *v9 = v16;
    v9[1] = v15;
    if (v15)
    {
      *(v15 + 16) = v9;
    }

    *(v9 + 24) = *(a2 + 24);
    if (v6 == a2)
    {
      v6 = v9;
    }
  }

  if (!v6 || !v13)
  {
    goto LABEL_81;
  }

  if (!v11)
  {
    *(v7 + 24) = 1;
    goto LABEL_81;
  }

  while (1)
  {
    v17 = v12[2];
    v18 = *v17;
    v19 = *(v12 + 24);
    if (*v17 == v12)
    {
      break;
    }

    if ((v12[3] & 1) == 0)
    {
      *(v12 + 24) = 1;
      *(v17 + 24) = 0;
      v20 = v17[1];
      v21 = *v20;
      v17[1] = *v20;
      if (v21)
      {
        *(v21 + 16) = v17;
      }

      v22 = v17[2];
      v20[2] = v22;
      v22[*v22 != v17] = v20;
      *v20 = v17;
      v17[2] = v20;
      if (v6 == *v12)
      {
        v6 = v12;
      }

      v12 = *(*v12 + 8);
    }

    v23 = *v12;
    if (*v12 && *(v23 + 24) != 1)
    {
      v24 = v12[1];
      if (v24 && (v24[3] & 1) == 0)
      {
LABEL_67:
        v23 = v12;
      }

      else
      {
        *(v23 + 24) = 1;
        *(v12 + 24) = 0;
        v32 = v23[1];
        *v12 = v32;
        if (v32)
        {
          *(v32 + 16) = v12;
        }

        v33 = v12[2];
        v23[2] = v33;
        v33[*v33 != v12] = v23;
        v23[1] = v12;
        v12[2] = v23;
        v24 = v12;
      }

      v34 = v23[2];
      *(v23 + 24) = *(v34 + 24);
      *(v34 + 24) = 1;
      *(v24 + 24) = 1;
      v35 = *(v34 + 8);
      v36 = *v35;
      *(v34 + 8) = *v35;
      if (v36)
      {
        *(v36 + 16) = v34;
      }

      v37 = *(v34 + 16);
      v35[2] = v37;
      v37[*v37 != v34] = v35;
      *v35 = v34;
      goto LABEL_80;
    }

    v24 = v12[1];
    if (v24 && *(v24 + 24) != 1)
    {
      goto LABEL_67;
    }

    *(v12 + 24) = 0;
    v25 = v12[2];
    if (v25 == v6 || (v25[24] & 1) == 0)
    {
      goto LABEL_61;
    }

LABEL_59:
    v12 = *(*(v25 + 2) + 8 * (**(v25 + 2) == v25));
  }

  if ((v12[3] & 1) == 0)
  {
    *(v12 + 24) = 1;
    *(v17 + 24) = 0;
    v26 = v18[1];
    *v17 = v26;
    if (v26)
    {
      *(v26 + 16) = v17;
    }

    v27 = v17[2];
    v18[2] = v27;
    v27[*v27 != v17] = v18;
    v18[1] = v17;
    v17[2] = v18;
    v28 = v12[1];
    if (v6 == v28)
    {
      v6 = v12;
    }

    v12 = *v28;
  }

  v29 = *v12;
  if (*v12 && *(v29 + 24) != 1)
  {
    goto LABEL_76;
  }

  v30 = v12[1];
  if (!v30 || *(v30 + 24) == 1)
  {
    *(v12 + 24) = 0;
    v25 = v12[2];
    v31 = v25[24] != 1 || v25 == v6;
    if (v31)
    {
LABEL_61:
      v25[24] = 1;
      goto LABEL_81;
    }

    goto LABEL_59;
  }

  if (v29 && (v29[3] & 1) == 0)
  {
LABEL_76:
    v30 = v12;
    goto LABEL_77;
  }

  *(v30 + 24) = 1;
  *(v12 + 24) = 0;
  v38 = *v30;
  v12[1] = *v30;
  if (v38)
  {
    *(v38 + 16) = v12;
  }

  v39 = v12[2];
  v30[2] = v39;
  v39[*v39 != v12] = v30;
  *v30 = v12;
  v12[2] = v30;
  v29 = v12;
LABEL_77:
  v34 = v30[2];
  *(v30 + 24) = *(v34 + 24);
  *(v34 + 24) = 1;
  *(v29 + 24) = 1;
  v35 = *v34;
  v40 = *(*v34 + 8);
  *v34 = v40;
  if (v40)
  {
    *(v40 + 16) = v34;
  }

  v41 = *(v34 + 16);
  v35[2] = v41;
  v41[*v41 != v34] = v35;
  v35[1] = v34;
LABEL_80:
  *(v34 + 16) = v35;
LABEL_81:
  sub_240B22320(a2 + 8);

  operator delete(a2);
}

uint64_t sub_240BC2BA8(uint64_t a1, uint64_t a2, int a3, int8x8_t *a4)
{
  v4 = 0;
  v5 = a2 + 16;
  v6 = a2 + 8;
  if (a3)
  {
    v6 = 1;
  }

  else
  {
    v5 = a2 + 8;
  }

  a4->i32[0] = bswap32(v6);
  do
  {
    a4->i8[v4 + 4] = *(a1 + v4);
    ++v4;
  }

  while (v4 != 4);
  if (!a3)
  {
    return 8;
  }

  v7 = vdupq_n_s64(v5);
  a4[1] = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v7, xmmword_240C118D0), vshlq_u64(v7, xmmword_240C118C0)), vuzp1q_s32(vshlq_u64(v7, xmmword_240C118F0), vshlq_u64(v7, xmmword_240C118E0))));
  return 16;
}

uint64_t sub_240BC2C44(uint64_t a1)
{
  v399 = 0;
  v400 = 0;
  v401 = 0;
  v2 = (a1 + 80);
  v3 = *(a1 + 80);
  if (*(a1 + 2864))
  {
    goto LABEL_2;
  }

  __p[0] = 0;
  __p[1] = 0;
  v398 = 0;
  v20 = sub_240BC5BBC(a1, __p);
  v21 = *(a1 + 300);
  if (v21 == -1)
  {
    *(a1 + 300) = v20;
    v21 = v20;
  }

  if (v20 != 5 && v21 == 5 || v20 == -1)
  {
    *(a1 + 2852) = 129;
    goto LABEL_89;
  }

  if (*v3)
  {
    v33 = *(*v3 + 768);
  }

  else
  {
    v33 = 0;
  }

  v396 = 0;
  v394 = 0u;
  v395 = 0u;
  *__src = xmmword_240C11900;
  LOBYTE(v384) = 0;
  v382 = 0;
  sub_240B4ADF0(&v394 + 1, 2uLL);
  v385 = v396;
  *(&v394 + 1) = 2 * (*(&v395 + 1) != 0);
  v396 = &v382;
  **(&v395 + 1) = **(&v395 + 1) | 0xFFLL;
  v59 = v394;
  *&v394 = v394 + 8;
  *(*(&v395 + 1) + (v394 >> 3)) = (10 << (v59 & 7)) | *(*(&v395 + 1) + (v394 >> 3));
  *&v394 = v394 + 8;
  sub_240B536C8(&v382, &v394, 0, v33);
  if (sub_240C0EB88(a1 + 728, &v394, 0, v33))
  {
    goto LABEL_87;
  }

  if (sub_240C0EB88(a1 + 304, &v394, 0, v33))
  {
    goto LABEL_87;
  }

  *(a1 + 768) = *(a1 + 345);
  if (sub_240C0EB88(a1 + 760, &v394, 0, v33))
  {
    goto LABEL_87;
  }

  if (*(a1 + 361) != 1)
  {
    *__src = xmmword_240C11840;
    LOBYTE(v384) = 0;
    v382 = v394;
    v339 = *(&v394 + 1) + 1;
    sub_240B4ADF0(&v394 + 1, *(&v394 + 1) + 1);
    if (*(&v395 + 1))
    {
      v340 = v339;
    }

    else
    {
      v340 = 0;
    }

    v385 = v396;
    *(&v394 + 1) = v340;
    v396 = &v382;
    v341 = ((v394 + 7) & 0xFFFFFFFFFFFFFFF8) - v394;
    if (v341)
    {
      *(*(&v395 + 1) + (v394 >> 3)) = *(*(&v395 + 1) + (v394 >> 3));
      *&v394 = v394 + v341;
    }

    sub_240B536C8(&v382, &v394, 0, v33);
    v342 = v394 >> 3;
    sub_240B4ADF0(&v394 + 1, v394 >> 3);
    v343 = *(&v395 + 1);
    if (*(&v395 + 1))
    {
      v344 = v342;
    }

    else
    {
      v344 = 0;
    }

    v399 = v344;
    v400 = v395;
    *(&v394 + 1) = v344;
    *(&v395 + 1) = 0;
    v345 = v401;
    v401 = v343;
    if (v345)
    {
      atomic_fetch_add(&qword_27E519020, -*(v345 - 24));
      free(*(v345 - 32));
      v344 = v399;
    }

    *(&v394 + 1) = 0;
    *&v395 = 0;
    *(a1 + 184) += v344;
    if ((*(a1 + 297) & 1) != 0 || (v346 = *(a1 + 300), v346 != 5) && v346 != -1 || (*(a1 + 299) & 1) != 0 || *(a1 + 298) == 1)
    {
      sub_240BC219C(&v402, a1 + 104, 0x20uLL, 0);
      v42 = v405;
      if (v405)
      {
LABEL_636:
        v347 = *(&v395 + 1);
        *(&v395 + 1) = 0;
        if (v347)
        {
          atomic_fetch_add(&qword_27E519020, -*(v347 - 24));
          free(*(v347 - 32));
        }

        if (SHIBYTE(v398) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_175;
      }

      v348 = v402;
      v407 = v403;
      v406 = v402;
      v408 = v404;
      v402 = 0;
      v403.i64[0] = 0;
      *v406 = xmmword_240C85114;
      *&v348->__r_.__value_.__r.__words[2] = *"ftypjxl ";
      v406 += 32;
      v407 = vaddq_s64(v407, xmmword_240C11930);
      sub_240B96F0C(&v406);
      if (!v405)
      {
        sub_240B96F0C(&v402);
      }

      if (*(a1 + 300) != 5)
      {
        sub_240BC219C(&v402, a1 + 104, 9uLL, 0);
        v42 = v405;
        if (v405)
        {
          goto LABEL_636;
        }

        v407 = v403;
        v406 = v402;
        v408 = v404;
        v402 = 0;
        v403.i64[0] = 0;
        *v406 = 0x6C6C786A09000000;
        v352 = v406;
        v407 = vaddq_s64(v407, xmmword_240C11940);
        *(v406 + 8) = *(a1 + 300);
        v406 = v352 + 9;
        v407 = vaddq_s64(v407, xmmword_240C11950);
        sub_240B96F0C(&v406);
        if (!v405)
        {
          sub_240B96F0C(&v402);
        }
      }

      if ((*(a1 + 299) & 1) != 0 || *(a1 + 298) == 1 && !*v3 && !v3[4])
      {
        LODWORD(v406) = 1886156906;
        v402 = a1;
        v403.i64[0] = &v399;
        v42 = sub_240BC5D88(a1, &v406, v399 + 4, &v402);
        if (v42)
        {
          goto LABEL_636;
        }

        sub_240B4ADF0(&v399, 0);
        v399 = 0;
        if (*(a1 + 299))
        {
          v349 = *(a1 + 1984);
          v350 = *(a1 + 1992);
          v351 = *(a1 + 1984);
          if (v351 != v350)
          {
            LODWORD(v406) = 1685217898;
            v402 = a1;
            v403.i64[0] = a1 + 1984;
            v42 = sub_240BC5FB8(a1, &v406, v350 - v351, &v402);
            if (v42)
            {
              goto LABEL_636;
            }
          }
        }
      }
    }

    *(a1 + 2864) = 1;
    v353 = *(&v395 + 1);
    *(&v395 + 1) = 0;
    if (v353)
    {
      atomic_fetch_add(&qword_27E519020, -*(v353 - 24));
      free(*(v353 - 32));
    }

    if (SHIBYTE(v398) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_2:
    sub_240BC2554((a1 + 104));
    v4 = *v3;
    v5 = v3[4];
    if (!(*v3 | v5))
    {
      v7 = v3[2];
      v6 = v3[3];
      v3[2] = 0;
      *&v394 = v7;
      *(&v394 + 1) = v6;
      v8 = sub_240BC6130((*(a1 + 80) + 48), *(a1 + 88), *(a1 + 80));
      sub_240BC61DC(v2, v8);
      --*(a1 + 72);
      if (*(v7 + 32) != 1)
      {
        v41 = *(v7 + 16) - *(v7 + 8);
        v382 = a1;
        __src[0] = (v7 + 8);
        v42 = sub_240BC5FB8(a1, v7, v41, &v382);
        if (!v42)
        {
LABEL_55:
          sub_240BC6990(&v394, 0);
LABEL_56:
          v42 = 0;
          goto LABEL_175;
        }

LABEL_120:
        sub_240BC6990(&v394, 0);
        goto LABEL_175;
      }

      sub_240B57EEC(&v406, 4uLL);
      for (i = 0; i != 4; ++i)
      {
        *(v407.i64[1] + i) = *(v7 + i);
      }

      if (*(a1 + 2872) < 0)
      {
        v10 = 4;
      }

      else
      {
        v10 = *(a1 + 2872);
      }

      v12 = *(v7 + 8);
      v11 = *(v7 + 16);
      sub_240B12F94();
      if (v13)
      {
        v14 = v13;
        v15 = (v11 - v12);
        if (!*(v13 + 6980))
        {
          *(v13 + 4) = v10;
          *(v13 + 24) = v15;
        }

        sub_240B57EEC(&v382, 0x20000uLL);
        v402 = v15;
        v420[0] = v12;
        v419[0] = 0;
        while (1)
        {
          v417 = 0x20000;
          v414[0] = __src[1];
          v16 = sub_240B13328(v14, 2, &v402, v420, &v417, v414, v419);
          if (!v16)
          {
            break;
          }

          v17 = v414[0] - __src[1];
          v18 = v414[0] - __src[1] + v406;
          sub_240B4ADF0(&v406, v18);
          if (v407.i64[1])
          {
            v19 = v18;
          }

          else
          {
            v19 = 0;
          }

          v406 = v19;
          memcpy((v407.i64[1] + v19 - v17), __src[1], v17);
          if (*(v14 + 6972) == 2 && !*(v14 + 6936))
          {
            goto LABEL_92;
          }
        }

        sub_240BC6954("%s:%d: Brotli compression failed\n", "/Library/Caches/com.apple.xbs/Sources/AppleJPEGXL/lib/jxl/encode.cc", 489);
LABEL_92:
        v61 = __src[1];
        __src[1] = 0;
        if (v61)
        {
          atomic_fetch_add(&qword_27E519020, -*(v61 - 3));
          free(*(v61 - 4));
        }

        sub_240B1314C(v14);
        if (v16)
        {
          LODWORD(v420[0]) = 1651470946;
          v62 = v406;
          v63 = *(a1 + 144);
          if (v406 <= 0xFFFFFFF7)
          {
            v64 = 8;
          }

          else
          {
            v64 = 16;
          }

          v65 = v63 + v64;
          v66 = *(a1 + 176);
          if (v66)
          {
            v67 = v66[3];
            if (v67)
            {
              v67(*v66, v63 + v64);
              *(a1 + 160) = v65;
            }
          }

          *(a1 + 144) = v65;
          v42 = sub_240B96C94(a1 + 104, &v406);
          if (v42)
          {
            goto LABEL_118;
          }

          v68 = *(a1 + 144);
          v69 = *(a1 + 176);
          if (v69)
          {
            v70 = v69[3];
            if (v70)
            {
              v70(*v69, v63);
              *(a1 + 160) = v63;
            }
          }

          *(a1 + 144) = v63;
          v71 = v68 - v65;
          if (v68 - v65 <= v62)
          {
            sub_240BC219C(&v382, a1 + 104, v64, 0);
            v42 = v385;
            if (!v385)
            {
              v72 = v62 > 0xFFFFFFF7;
              v73 = v382;
              v74 = __src[0];
              v75 = __src[1];
              v404 = v384;
              v382 = 0;
              __src[0] = 0;
              v76 = sub_240BC2BA8(v420, v71, v72, v73);
              v402 = (v73 + v76);
              v403.i64[0] = v74 - v76;
              v403.i64[1] = v75 + v76;
              sub_240B96F0C(&v402);
              sub_240B96F0C(&v382);
              v77 = *(a1 + 176);
              if (v77)
              {
                v78 = v77[3];
                if (v78)
                {
                  v78(*v77, v68);
                  *(a1 + 160) = v68;
                }
              }

              *(a1 + 144) = v68;
              sub_240BC2554((a1 + 104));
              v79 = v407.i64[1];
              v407.i64[1] = 0;
              if (v79)
              {
                atomic_fetch_add(&qword_27E519020, -*(v79 - 24));
                free(*(v79 - 32));
              }

              goto LABEL_55;
            }

            goto LABEL_118;
          }
        }
      }

      else
      {
        sub_240BC6954("%s:%d: BrotliEncoderCreateInstance failed\n", "/Library/Caches/com.apple.xbs/Sources/AppleJPEGXL/lib/jxl/encode.cc", 469);
      }

      v42 = 1;
      *(a1 + 2852) = 1;
LABEL_118:
      v80 = v407.i64[1];
      v407.i64[1] = 0;
      if (v80)
      {
        atomic_fetch_add(&qword_27E519020, -*(v80 - 24));
        free(*(v80 - 32));
      }

      goto LABEL_120;
    }

    *v3 = 0;
    v24 = v3[1];
    v406 = v4;
    v407.i64[0] = v24;
    v3[4] = 0;
    v25 = v3[5];
    v26 = sub_240BC6130((*(a1 + 80) + 48), *(a1 + 88), *(a1 + 80));
    sub_240BC61DC(v2, v26);
    v27 = *(a1 + 64) - 1;
    *(a1 + 64) = v27;
    if (!v4)
    {
      goto LABEL_40;
    }

    v28 = *(v4 + 1176);
    v29 = *(v4 + 1184) - v28;
    if (v29)
    {
      v30 = 0;
      v31 = 1;
      while (*(v28 + v30))
      {
        v30 = v31;
        v232 = v29 > v31++;
        if (!v232)
        {
          goto LABEL_36;
        }
      }

      *(a1 + 2852) = 129;
      if (v5)
      {
        v25(v5);
      }

      sub_240BC68B8(&v406, 0);
      goto LABEL_115;
    }

LABEL_36:
    *(v4 + 72) = *(a1 + 345) ^ 1;
    if (*(a1 + 557) == 1)
    {
      v32 = *(v4 + 648);
    }

    else
    {
LABEL_40:
      v32 = 0;
    }

    v379 = v32;
    if (v27)
    {
      v34 = 0;
    }

    else
    {
      v34 = *(a1 + 2865);
    }

    v35 = *(a1 + 332);
    for (j = *(a1 + 632); j != *(a1 + 640); j += 96)
    {
      if (v35 <= *(j + 28))
      {
        v35 = *(j + 28);
      }
    }

    v37 = v35 + 3;
    if (v37 <= 0x18)
    {
      v38 = 24;
    }

    else
    {
      v38 = v37;
    }

    v39 = sub_240B57820(a1 + 728);
    v380 = v25;
    if (*(a1 + 736) == 1)
    {
      v40 = 8 * *(a1 + 740) + 8;
    }

    else
    {
      v40 = *(a1 + 744);
    }

    v43 = *(a1 + 624);
    if (*(a1 + 408) == 1)
    {
      v44 = v43 + 1;
    }

    else
    {
      v44 = v43 + 3;
    }

    v373 = v39 * v38 * v40 * v44;
    if (v373 <= 0x7FF7FFFBFLL)
    {
      v45 = 8;
    }

    else
    {
      v45 = 16;
    }

    v46 = *(a1 + 144);
    v47 = v34;
    v375 = v46;
    if ((*(a1 + 297) & 1) != 0 || (v48 = *(a1 + 300), v48 != 5) && v48 != -1 || (*(a1 + 299) & 1) != 0 || *(a1 + 298) == 1)
    {
      if (!v34 || *(a1 + 2856))
      {
        v45 |= 4uLL;
      }

      v49 = v45 + v46;
      v50 = *(a1 + 176);
      if (v50)
      {
        v51 = v50[3];
        if (v51)
        {
          v51(*v50, v45 + v46);
          *(a1 + 160) = v49;
        }
      }

      *(a1 + 144) = v49;
    }

    else
    {
      v49 = *(a1 + 144);
    }

    v42 = sub_240B96C94(a1 + 104, &v399);
    if (v42)
    {
LABEL_172:
      if (v5)
      {
        v380(v5);
      }

      sub_240BC68B8(&v406, 0);
      goto LABEL_175;
    }

    if (v4)
    {
      v52 = *(a1 + 184);
      v53 = *(v4 + 764);
      v55 = *(a1 + 208);
      v54 = *(a1 + 216);
      v56 = v47;
      if (v54 - v55 == 16 && *(v55 + 1) == v52)
      {
        *(a1 + 216) = v55;
        v54 = v55;
      }

      v57 = *(a1 + 224);
      if (v54 >= v57)
      {
        v86 = v54 - v55;
        v87 = (v54 - v55) >> 4;
        v88 = v87 + 1;
        if ((v87 + 1) >> 60)
        {
          sub_240B228BC();
        }

        v89 = v57 - v55;
        if (v89 >> 3 > v88)
        {
          v88 = v89 >> 3;
        }

        if (v89 >= 0x7FFFFFFFFFFFFFF0)
        {
          v90 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v90 = v88;
        }

        if (v90)
        {
          if (!(v90 >> 60))
          {
            operator new();
          }

          sub_240B2291C();
        }

        v98 = 16 * v87;
        *v98 = v53;
        *(v98 + 4) = v379;
        *(v98 + 8) = v52;
        v58 = 16 * v87 + 16;
        memcpy(0, v55, v86);
        *(a1 + 208) = 0;
        *(a1 + 216) = v58;
        *(a1 + 224) = 0;
        if (v55)
        {
          operator delete(v55);
        }

        v56 = v47;
      }

      else
      {
        *v54 = v53;
        *(v54 + 1) = v379;
        v58 = (v54 + 16);
        *(v54 + 1) = v52;
      }

      *(a1 + 216) = v58;
      v99 = *(v4 + 700);
      if (v99 >= 3)
      {
        *(a1 + 2852) = 129;
LABEL_171:
        v42 = 1;
        goto LABEL_172;
      }

      LOWORD(v382) = 256;
      HIDWORD(v382) = 0;
      __src[0] = 0;
      v388 = 0;
      v389 = 0;
      v390 = 2;
      v391 = 0;
      memset(v392, 0, 12);
      memset(v393, 0, sizeof(v393));
      LOWORD(__src[1]) = v56;
      v100 = *(v4 + 688);
      v384 = v99;
      v385 = v100;
      v386 = *(v4 + 696) != 0;
      v387 = *(v4 + 692);
      sub_240B566C0(v393[1].__r_.__value_.__r.__words, *(a1 + 624));
      v101 = *(v4 + 684);
      v102 = *(a1 + 624);
      v46 = v375;
      if (v102)
      {
        v103 = 0;
        v104 = *(v4 + 704);
        v105 = (*(v4 + 712) - v104) >> 4;
        v106 = (v393[1].__r_.__value_.__r.__words[0] + 20);
        do
        {
          v107 = v101;
          if (v103 < v105)
          {
            v107 = *(v104 + 16 * v103);
          }

          *(v106 - 3) = vzip1_s32(*v107.i8, *&vextq_s8(v107, v107, 8uLL));
          *v106 = v107.i32[1];
          *(v106 - 4) = v107.i32[3] != 0;
          ++v103;
          v106 += 10;
        }

        while (v102 != v103);
        v108 = *(v4 + 684);
      }

      else
      {
        v108 = *(v4 + 684);
      }

      v388 = *(v4 + 668);
      v390 = v108;
      v389 = v108 != 0;
      v391 = *(v4 + 752);
      LODWORD(v392[0]) = *(v4 + 760);
      *(v392 + 4) = v379;
      std::string::operator=(v393, (v4 + 728));
      if (sub_240B909DC(v4 + 8, &v382, a1 + 304, v4 + 776, a1 + 232, *(a1 + 24), a1 + 104, *(v4 + 768)))
      {
        *(a1 + 2852) = 1;
        v402 = &v393[1];
        sub_240B37840(&v402);
        if (SHIBYTE(v393[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v393[0].__r_.__value_.__l.__data_);
        }

        goto LABEL_171;
      }

      v402 = &v393[1];
      sub_240B37840(&v402);
      if (SHIBYTE(v393[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v393[0].__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v56 = v47;
      sub_240C02050(v5, v47, *(a1 + 24), sub_240BC69E4, (a1 + 104));
    }

    v81 = *(a1 + 144);
    v82 = v81 - v49;
    *(a1 + 184) += v82 - v399;
    if ((*(a1 + 297) & 1) != 0 || (v83 = *(a1 + 300), v83 != 5) && v83 != -1 || (*(a1 + 299) & 1) != 0 || *(a1 + 298) == 1)
    {
      v84 = *(a1 + 176);
      if (v84)
      {
        v85 = v84[3];
        if (v85)
        {
          v85(*v84, v46);
          *(a1 + 160) = v46;
        }
      }

      *(a1 + 144) = v46;
      sub_240B7D1B4(&v382, v45);
      if (v373 <= 0x7FF7FFFBFLL && v82 >= 0xFFFFFFF8)
      {
        v42 = 1;
        *(a1 + 2852) = 1;
        goto LABEL_148;
      }

      if (v56 && !*(a1 + 2856))
      {
        LODWORD(v402) = 1668053098;
        sub_240BC2BA8(&v402, v82, v373 > 0x7FF7FFFBFLL, v382);
      }

      else
      {
        LODWORD(v402) = 1886156906;
        sub_240BC2BA8(&v402, v82 + 4, v373 > 0x7FF7FFFBFLL, v382);
        v91 = *(a1 + 2856);
        *(a1 + 2856) = v91 + 1;
        if (v56)
        {
          LODWORD(v91) = v91 | 0x80000000;
        }

        *(v382 + v45 - 4) = bswap32(v91);
      }

      v42 = sub_240BA2B80(a1 + 104, &v382);
      if (v42)
      {
LABEL_148:
        v92 = v382;
        if (v382)
        {
          __src[0] = v382;
LABEL_150:
          operator delete(v92);
        }

        goto LABEL_172;
      }

      v111 = *(a1 + 176);
      if (v111)
      {
        v112 = v111[3];
        if (v112)
        {
          v112(*v111, v81);
          *(a1 + 160) = v81;
        }
      }

      *(a1 + 144) = v81;
      if (v382)
      {
        __src[0] = v382;
        operator delete(v382);
      }
    }

    sub_240BC2554((a1 + 104));
    if (v4)
    {
      sub_240B91460(a1 + 2008, v4 + 8);
    }

    if (v56)
    {
      for (k = *(a1 + 208); k != *(a1 + 216); k += 16)
      {
        if (*k)
        {
          v382 = 0;
          __src[0] = 0;
          __src[1] = 0;
          sub_240BC622C(a1 + 192, &v382);
          LODWORD(v420[0]) = 1768716394;
          v133 = v382;
          *&v394 = v382;
          *(&v394 + 1) = __src[0] - v382;
          v402 = a1;
          v403.i64[0] = &v394;
          v42 = sub_240BC6698(a1, v420, __src[0] - v382, &v402);
          if (!v42)
          {
            if (v133)
            {
              operator delete(v133);
            }

            break;
          }

          if (!v133)
          {
            goto LABEL_172;
          }

          v92 = v133;
          goto LABEL_150;
        }
      }
    }

    if (v5)
    {
      v380(v5);
    }

    sub_240BC68B8(&v406, 0);
    goto LABEL_56;
  }

  v94 = *(a1 + 384);
  v93 = *(a1 + 392);
  v95 = v94 - v93;
  if (v94 == v93)
  {
    goto LABEL_87;
  }

  v409[1] = 0;
  v409[0] = 0;
  v410 = 0;
  v96 = v93 - v94;
  v382 = 0;
  __src[0] = 0;
  __src[1] = 0;
  v402 = 0;
  v403 = 0uLL;
  if ((v93 - v94) >> 30)
  {
    v97 = 1;
    goto LABEL_613;
  }

  sub_240B4ADF0(v409, 9uLL);
  v114 = 0;
  v115 = v410;
  v116 = 9;
  if (!v410)
  {
    v116 = 0;
  }

  v409[0] = v116;
  LOBYTE(v117) = v96;
  if (v96 >= 0x80)
  {
    v118 = 0;
    v119 = v96;
    do
    {
      v114 = v118 + 1;
      *(v115 + v118) = v119 | 0x80;
      v117 = v119 >> 7;
      v120 = v119 >> 14;
      v119 >>= 7;
      ++v118;
    }

    while (v120);
  }

  v121 = v114 + 1;
  *(v115 + v114) = v117;
  sub_240B4ADF0(v409, v114 + 1);
  if (v410)
  {
    v122 = v121;
  }

  else
  {
    v122 = 0;
  }

  v409[0] = v122;
  v406 = 0;
  v407 = 0uLL;
  sub_240B4ADF0(&v406, 0x80uLL);
  v123 = v407.i64[1];
  v406 = 128;
  *(v407.i64[1] + 64) = xmmword_240C81A18;
  v123[5] = unk_240C81A28;
  v123[6] = xmmword_240C81A38;
  v123[7] = unk_240C81A48;
  *v123 = xmmword_240C819D8;
  v123[1] = *"RGB XYZ ";
  v123[2] = xmmword_240C819F8;
  v123[3] = unk_240C81A08;
  v124 = bswap32(v96);
  if (v96 >= 0x80)
  {
    v125 = 128;
  }

  else
  {
    v125 = v96;
  }

  *v123 = v124;
  if (!v96)
  {
    goto LABEL_208;
  }

  v381 = v96;
  v126 = 0;
  do
  {
    sub_240B594B8(v94, v381, v123, v126);
    sub_240B57E90(&v402, *(v94 + v126) - *(v123 + v126));
    ++v126;
  }

  while (v125 != v126);
  v127 = v381;
  if (v381 < 0x81)
  {
LABEL_208:
    sub_240B4ADF0(v409, v122 + 9);
    if (v410)
    {
      v128 = v122 + 9;
    }

    else
    {
      v128 = 0;
    }

    v409[0] = v128;
    *(v410 + v122) = 0;
    sub_240B4ADF0(v409, v122 + 1);
    if (v410)
    {
      v129 = v122 + 1;
    }

    else
    {
      v129 = 0;
    }

    v409[0] = v129;
    v130 = v402;
    if (v402)
    {
      v131 = v403.i64[1];
      do
      {
        v132 = *v131++;
        sub_240B57E90(v409, v132);
        v130 = (v130 - 1);
      }

      while (v130);
      v97 = 0;
    }

    else
    {
      v97 = 0;
    }

    goto LABEL_609;
  }

  memset(v420, 0, 24);
  memset(v419, 0, sizeof(v419));
  v418[0] = 0;
  v418[1] = 0;
  v416 = 128;
  v417 = v418;
  v374 = v94;
  v358 = v95;
  if (v381 >= 0x84)
  {
    v134 = *(v94 + 128);
    v416 = 132;
    sub_240B4ADF0(&v382, 9uLL);
    v135 = bswap32(v134);
    v136 = v135 + 1;
    v137 = __src[1];
    v138 = 9;
    if (!__src[1])
    {
      v138 = 0;
    }

    v382 = v138;
    v360 = v135;
    if (v135 < 0x7F)
    {
      v140 = 0;
      LOBYTE(v141) = v135 + 1;
    }

    else
    {
      v139 = 0;
      do
      {
        v140 = v139 + 1;
        v137[v139] = v136 | 0x80;
        v141 = v136 >> 7;
        v142 = v136 >> 14;
        v136 >>= 7;
        ++v139;
      }

      while (v142);
    }

    v143 = v140 + 1;
    v137[v140] = v141;
    sub_240B4ADF0(&v382, v140 + 1);
    v144 = __src[1] ? v143 : 0;
    v382 = v144;
    if (v134)
    {
      v378 = 0;
      v145 = 0;
      v146 = 0;
      v147 = 12 * v360 + 128;
      v357 = v94 + 4;
      v359 = v94 + 8;
      v356 = v94 + 12;
      v355 = v94 + 16;
      v354 = v94 + 20;
      do
      {
        v365 = v147;
        v367 = v145;
        v376 = v146;
        if (v416 + 12 > v127)
        {
          break;
        }

        v148 = 538976288;
        if (v416 + 4 <= v127)
        {
          v148 = *(v94 + v416);
        }

        LODWORD(v412[0]) = v148;
        if (v416 + 8 <= v127)
        {
          v149 = bswap32(*(v357 + v416));
        }

        else
        {
          v149 = 0;
        }

        v371 = *(v359 + v416);
        v416 += 12;
        v150 = v378;
        v151 = v378 >> 2;
        if (((v378 >> 2) + 1) >> 62)
        {
          sub_240B228BC();
        }

        if (v378 >> 2 != -1)
        {
          if (!(((v378 >> 2) + 1) >> 62))
          {
            operator new();
          }

          sub_240B2291C();
        }

        *(4 * v151) = v148;
        v378 = 4 * v151 + 4;
        memcpy(0, 0, v150);
        v363 = v149;
        v152 = v149;
        v414[0] = v149;
        sub_240B495E8(v420, v414);
        v153 = bswap32(v371);
        v414[0] = v153;
        sub_240B495E8(v419, v414);
        v154 = v418[0];
LABEL_251:
        if (!v154)
        {
LABEL_258:
          operator new();
        }

        while (1)
        {
          v155 = v154;
          v156 = v154[4];
          if (v156 > v152)
          {
            v154 = *v155;
            goto LABEL_251;
          }

          if (v156 >= v152)
          {
            break;
          }

          v154 = v155[1];
          if (!v154)
          {
            goto LABEL_258;
          }
        }

        v157 = 0;
        v155[5] = (v378 >> 2) - 1;
        while (LODWORD(v412[0]) != **(&off_278CB3178 + v157))
        {
          if (++v157 == 17)
          {
            v158 = 1;
            goto LABEL_263;
          }
        }

        v158 = v157 + 4;
LABEL_263:
        v159 = v412[0];
        if (LODWORD(v412[0]) == 1129469042)
        {
          if (v416 + 24 >= v381)
          {
            goto LABEL_321;
          }

          v160 = 538976288;
          if (v416 + 4 <= v381)
          {
            v160 = *(v374 + v416);
          }

          v161 = bswap32(v160);
          v221 = v161 >= 0x67545243;
          v162 = v161 > 0x67545243;
          v163 = !v221;
          v164 = 538976288;
          if (v416 + 16 <= v381)
          {
            v164 = *(v356 + v416);
          }

          v165 = v162 - v163;
          v166 = bswap32(v164);
          v221 = v166 >= 0x62545243;
          v167 = v166 > 0x62545243;
          v168 = !v221;
          if ((v167 - v168) | v165)
          {
            goto LABEL_321;
          }

          v169 = (v374 + v416 + 4);
          v170 = 1;
          v171 = 8;
          do
          {
            v172 = *(v169 - 12);
            v174 = v172 == v169[12] && v172 == *v169;
            v170 &= v174;
            ++v169;
            --v171;
          }

          while (v171);
          if (v170)
          {
            v416 += 24;
            v376 += 2;
            v158 = 2;
          }
        }

        if (LODWORD(v412[0]) == 1515804786 && v416 + 24 < v381)
        {
          v175 = 538976288;
          if (v416 + 4 <= v381)
          {
            v175 = *(v374 + v416);
          }

          v176 = bswap32(v175);
          v221 = v176 >= 0x6758595A;
          v177 = v176 > 0x6758595A;
          v178 = !v221;
          v179 = 538976288;
          if (v416 + 16 <= v381)
          {
            v179 = *(v356 + v416);
          }

          v180 = bswap32(v179);
          v221 = v180 >= 0x6258595A;
          v181 = v180 > 0x6258595A;
          v182 = !v221;
          if (v416 + 8 <= v381)
          {
            v183 = bswap32(*(v357 + v416));
          }

          else
          {
            v183 = 0;
          }

          if (v416 + 20 <= v381)
          {
            v184 = bswap32(*(v355 + v416));
          }

          else
          {
            v184 = 0;
          }

          v185 = v416 + 12 <= v381 && *(v359 + v416) == 335544320;
          v186 = v416 + 24 <= v381 && *(v354 + v416) == 335544320;
          v187 = (v181 - v182) | (v177 - v178);
          v189 = v371 == 335544320 && v187 == 0 && v185;
          if (v184 == v363 + 40 && v183 == v363 + 20 && v189 && v186)
          {
            v416 += 24;
            v376 += 2;
            v158 = 3;
          }
        }

LABEL_321:
        v190 = v367;
        if (v365 + v367 == v152)
        {
          v191 = v158;
        }

        else
        {
          v191 = v158 | 0x40;
        }

        v192 = vmaxv_u16(vmovn_s32(vceqq_s32(vdupq_n_s32(v412[0]), xmmword_240C11910)));
        v194 = (v412[0] & 0xFFFFFFEF) == 0x5A595862 || LODWORD(v412[0]) == 1768781164;
        if ((v194 | v192))
        {
          v190 = 20;
        }

        if (v190 == v153)
        {
          v195 = v191;
        }

        else
        {
          v195 = v191 | 0x80;
        }

        sub_240B57E90(&v382, v195);
        if (v158 == 1)
        {
          v196 = v402;
          v197 = (v402->__r_.__value_.__r.__words + 4);
          sub_240B4ADF0(&v402, v402->__r_.__value_.__r.__words + 4);
          if (v403.i64[1])
          {
            v198 = v197;
          }

          else
          {
            v198 = 0;
          }

          v402 = v198;
          *(&v196->__r_.__value_.__l.__data_ + v403.i64[1]) = v159;
        }

        if ((v195 & 0x40) != 0)
        {
          v199 = v382;
          v200 = v382 + 9;
          sub_240B4ADF0(&v382, v382 + 9);
          v201 = __src[1];
          if (__src[1])
          {
            v202 = v200;
          }

          else
          {
            v202 = 0;
          }

          v382 = v202;
          if (v363 < 0x80)
          {
            v204 = v199;
            LOBYTE(v205) = v152;
          }

          else
          {
            v203 = v152;
            do
            {
              v204 = v199 + 1;
              v199[v201] = v203 | 0x80;
              v205 = v203 >> 7;
              v206 = v203 >> 14;
              v203 >>= 7;
              ++v199;
            }

            while (v206);
          }

          v207 = v204 + 1;
          v204[v201] = v205;
          sub_240B4ADF0(&v382, (v204 + 1));
          if (__src[1])
          {
            v208 = v207;
          }

          else
          {
            v208 = 0;
          }

          v382 = v208;
        }

        if (v195 < 0)
        {
          v209 = v382;
          v210 = v382 + 9;
          sub_240B4ADF0(&v382, v382 + 9);
          v211 = __src[1];
          if (__src[1])
          {
            v212 = v210;
          }

          else
          {
            v212 = 0;
          }

          v382 = v212;
          if (v153 < 0x80)
          {
            v214 = v209;
            LOBYTE(v215) = v153;
          }

          else
          {
            v213 = v153;
            do
            {
              v214 = v209 + 1;
              v209[v211] = v213 | 0x80;
              v215 = v213 >> 7;
              v216 = v213 >> 14;
              v213 >>= 7;
              ++v209;
            }

            while (v216);
          }

          v217 = v214 + 1;
          v214[v211] = v215;
          sub_240B4ADF0(&v382, (v214 + 1));
          if (__src[1])
          {
            v218 = v217;
          }

          else
          {
            v218 = 0;
          }

          v382 = v218;
        }

        v146 = v376 + 1;
        v147 = v152;
        v145 = v153;
        v94 = v374;
        v127 = v381;
      }

      while (v376 + 1 < v360);
    }
  }

  sub_240B57E90(&v382, 0);
  v369 = 0;
  v372 = 0;
  v219 = 0;
  v377 = v416;
  v364 = v94 + 8;
  v366 = v94 + 4;
  do
  {
    v220 = v416;
    if (v416 > v127)
    {
      v319 = v382;
      v320 = v409[0];
      v321 = v409[0] + 9;
      sub_240B4ADF0(v409, v409[0] + 9);
      v322 = v410;
      if (v410)
      {
        v323 = v321;
      }

      else
      {
        v323 = 0;
      }

      v409[0] = v323;
      if (v319 < 0x80)
      {
        v325 = v320;
        LOBYTE(v326) = v319;
      }

      else
      {
        v324 = v319;
        do
        {
          v325 = v320 + 1;
          *(v322 + v320) = v324 | 0x80;
          v326 = v324 >> 7;
          v327 = v324 >> 14;
          v324 >>= 7;
          ++v320;
        }

        while (v327);
      }

      v328 = v325 + 1;
      *(v322 + v325) = v326;
      sub_240B4ADF0(v409, v325 + 1);
      if (v410)
      {
        v329 = v328;
      }

      else
      {
        v329 = 0;
      }

      v409[0] = v329;
      if (v319)
      {
        v330 = __src[1];
        do
        {
          v331 = *v330++;
          sub_240B57E90(v409, v331);
          --v319;
        }

        while (v319);
      }

      v332 = v402;
      if (v402)
      {
        v333 = v403.i64[1];
        do
        {
          v334 = *v333++;
          sub_240B57E90(v409, v334);
          v332 = (v332 - 1);
        }

        while (v332);
        v367 = 0;
      }

      else
      {
        v367 = 0;
      }

      break;
    }

    v414[0] = 0;
    v414[1] = 0;
    v415 = 0;
    v412[0] = 0;
    v412[1] = 0;
    v413 = 0;
    v221 = v416 <= v219 + v372 || v372 >= 0x3FFFFFFF;
    v222 = v378;
    if (!v221)
    {
      v222 = 0;
    }

    LODWORD(v378) = v222;
    v223 = v418[0];
    v224 = v418[0];
    if (!v418[0])
    {
LABEL_379:
      v226 = v416;
      goto LABEL_380;
    }

    while (1)
    {
      v225 = v224[4];
      if (v416 >= v225)
      {
        break;
      }

LABEL_378:
      v224 = *v224;
      if (!v224)
      {
        goto LABEL_379;
      }
    }

    if (v225 < v416)
    {
      ++v224;
      goto LABEL_378;
    }

    v226 = v416;
    if (v416 + 4 > v127)
    {
      goto LABEL_380;
    }

    while (1)
    {
      while (1)
      {
        v271 = v223;
        v272 = v223[4];
        if (v416 >= v272)
        {
          break;
        }

        v223 = *v271;
        if (!*v271)
        {
          goto LABEL_490;
        }
      }

      if (v272 >= v416)
      {
        break;
      }

      v223 = v271[1];
      if (!v223)
      {
LABEL_490:
        operator new();
      }
    }

    v226 = v416;
    v288 = 538976288;
    if (v416 + 4 <= v127)
    {
      v288 = *(v374 + v416);
    }

    v289 = v271[5];
    v219 = *(v420[0] + v289);
    v372 = *(v419[0] + 8 * v289);
    v290 = v372 - 9;
    LODWORD(v378) = v288;
    if (v288 == 1668639853 && v290 < 0x3FFFFFF6)
    {
      if (v416 + v372 > v127 || (v291 = (v374 + v416), *(v374 + v416 + 4)) || v291[5])
      {
        v243 = 1668639853;
        goto LABEL_421;
      }

      v362 = v219;
      if (v291[6] || v291[7])
      {
        v243 = 1668639853;
        goto LABEL_421;
      }

      sub_240B57E90(v414, 19);
      v226 += 8;
      v416 = v226;
      sub_240B57E90(v414, 2);
      sub_240BAD310(v372 - 8, v414);
      v316 = v372 - 8;
      do
      {
        sub_240B57E90(v412, *(v374 + v226++));
        --v316;
      }

      while (v316);
      v416 = v226;
      sub_240BAD3B4(v413, v372 - 8, 2uLL);
      v219 = v362;
    }

    v243 = 1987212643;
    if (v378 != 1987212643 || v290 >= 0x3FFFFFF6)
    {
      v127 = v381;
LABEL_380:
      if (v378 != 541213037 && v378 != 541147757)
      {
        goto LABEL_420;
      }

      v228 = v226 + 4;
      v229 = 538976288;
      if (v226 + 4 <= v127)
      {
        v229 = *(v374 + v226);
      }

      v230 = v226 + 12;
      if (v226 + 12 < v127 && (v229 == 1987212643 || v229 == 1952932726) && (v226 + 8 > v127 || !*(v366 + v226)) && v230 <= v127)
      {
        v231 = 2 * bswap32(*(v364 + v226));
        v232 = (v231 - 17) > 0xFFFFFEE || v230 + v231 > v127;
        if (!v232)
        {
          v361 = v219;
          v416 = v226 + 12;
          sub_240B57E90(v414, 4);
          sub_240B57E90(v414, 5);
          v292 = v414[0];
          sub_240B4ADF0(v414, v414[0] + 9);
          v293 = v415;
          if (v415)
          {
            v294 = v292 + 9;
          }

          else
          {
            v294 = 0;
          }

          v414[0] = v294;
          if (v231 < 0x80)
          {
            v296 = v292;
            LOBYTE(v297) = v231;
          }

          else
          {
            v295 = v231;
            do
            {
              v296 = v292 + 1;
              v292[v293] = v295 | 0x80;
              v297 = v295 >> 7;
              v298 = v295 >> 14;
              v295 >>= 7;
              ++v292;
            }

            while (v298);
          }

          v299 = v296 + 1;
          v296[v293] = v297;
          sub_240B4ADF0(v414, (v296 + 1));
          if (v415)
          {
            v300 = v299;
          }

          else
          {
            v300 = 0;
          }

          v414[0] = v300;
          if (sub_240BAD484(2uLL, 2uLL, 1, v231, v374, v381, &v416, v412))
          {
            v267 = 0;
            v367 = 1;
            v127 = v381;
            v219 = v361;
            goto LABEL_457;
          }

          v367 = 0;
          v226 = v416;
          v228 = v416 + 4;
          v220 = v230;
          v127 = v381;
          v219 = v361;
        }
      }

      if (v226 == v219 + 24 && v228 < v127)
      {
        v369 = v219 + bswap32(*(v374 + v226));
      }

      if (v226 != v369)
      {
LABEL_420:
        v243 = v378;
        goto LABEL_421;
      }

      if (v226 + 16 >= v127)
      {
        v243 = v378;
        v369 = v226;
        goto LABEL_421;
      }

      v233 = *(v374 + v219 + 8);
      v234 = *(v374 + v226 + 16);
      v235 = v234 * *(v374 + v219 + 9);
      if (*(v374 + v219 + 8))
      {
        v236 = (v374 + v226);
        v237 = v381;
        if (v226 < v381)
        {
          v237 = v226;
        }

        v238 = v358 + v237;
        v235 = v234 * *(v374 + v219 + 9);
        do
        {
          if (!v238)
          {
            break;
          }

          v239 = *v236++;
          v235 *= v239;
          ++v238;
          --v233;
        }

        while (v233);
      }

      if ((v234 - 1) > 1u || v235 - 65 >= 0xFFFFFBF || v235 + v226 > v381 || v226 <= 4 * v234 * *(v374 + v219 + 9))
      {
        v243 = v378;
        v369 = v226;
        goto LABEL_421;
      }

      v370 = v234 * *(v374 + v219 + 9);
      sub_240B57E90(v414, 4);
      v368 = v234;
      sub_240B57E90(v414, (v234 - 1) | (16 * (v370 != v234)) | 4);
      v281 = v414[0];
      if (v370 != v368)
      {
        sub_240B4ADF0(v414, v414[0] + 9);
        v282 = v415;
        if (v415)
        {
          v283 = v281 + 9;
        }

        else
        {
          v283 = 0;
        }

        v414[0] = v283;
        v284 = v370;
        if (v370 < 0x80)
        {
          v285 = v281;
          LOBYTE(v286) = v370;
        }

        else
        {
          do
          {
            v285 = v281 + 1;
            v281[v282] = v284 | 0x80;
            v286 = v284 >> 7;
            v287 = v284 >> 14;
            v284 >>= 7;
            ++v281;
          }

          while (v287);
        }

        v301 = v285 + 1;
        v285[v282] = v286;
        sub_240B4ADF0(v414, (v285 + 1));
        if (v415)
        {
          v281 = v301;
        }

        else
        {
          v281 = 0;
        }

        v414[0] = v281;
      }

      sub_240B4ADF0(v414, (v281 + 9));
      v302 = v415;
      if (v415)
      {
        v303 = v281 + 9;
      }

      else
      {
        v303 = 0;
      }

      v414[0] = v303;
      if (v235 < 0x80)
      {
        v305 = v281;
        LOBYTE(v306) = v235;
      }

      else
      {
        v304 = v235;
        do
        {
          v305 = v281 + 1;
          v281[v302] = v304 | 0x80;
          v306 = v304 >> 7;
          v307 = v304 >> 14;
          v304 >>= 7;
          ++v281;
        }

        while (v307);
      }

      v308 = v305 + 1;
      v305[v302] = v306;
      sub_240B4ADF0(v414, (v305 + 1));
      if (v415)
      {
        v244 = v308;
      }

      else
      {
        v244 = 0;
      }

      v414[0] = v244;
      if (sub_240BAD484(v370, v368, 1, v235, v374, v381, &v416, v412))
      {
        v267 = 0;
        v367 = 1;
        v369 = v226;
        goto LABEL_456;
      }

      v367 = 0;
      v369 = v226;
      goto LABEL_422;
    }

    if (v226 + v372 > v381)
    {
      goto LABEL_421;
    }

    v317 = (v374 + v226);
    if (*(v374 + v226 + 4))
    {
      goto LABEL_421;
    }

    if (v317[5])
    {
      goto LABEL_421;
    }

    if (v317[6])
    {
      goto LABEL_421;
    }

    if (v317[7])
    {
      goto LABEL_421;
    }

    if (v372 - 25 >= 0xFFFFFEF)
    {
      goto LABEL_421;
    }

    if (!v226)
    {
      goto LABEL_421;
    }

    v318 = v372 - 8;
    if (v226 + v372 - 8 > v381)
    {
      goto LABEL_421;
    }

    sub_240B57E90(v414, 21);
    v416 = v226 + 8;
    sub_240B57E90(v414, 4);
    sub_240B57E90(v414, 5);
    sub_240BAD310(v318, v414);
    v367 = sub_240BAD484(2uLL, 2uLL, 1, v318, v374, v381, &v416, v412);
    if (!v367)
    {
      v367 = 0;
LABEL_421:
      v244 = v414[0];
      LODWORD(v378) = v243;
LABEL_422:
      v127 = v381;
      if (v244)
      {
        v245 = v219;
        goto LABEL_426;
      }

      if (v412[0])
      {
LABEL_425:
        v245 = v219;
        v244 = 0;
        goto LABEL_426;
      }

      if (v378 == 543449703 && v372 - 9 < 0x3FFFFFF6 && v416 == v219 + 8 && v416 >= 0x11 && (v273 = v372 - 8, v372 - 8 + v416 <= v381))
      {
        v245 = v219;
        sub_240B57E90(v414, 4);
        sub_240B57E90(v414, 3);
        v274 = v414[0];
        sub_240B4ADF0(v414, v414[0] + 9);
        v275 = v415;
        if (v415)
        {
          v276 = v274 + 9;
        }

        else
        {
          v276 = 0;
        }

        v414[0] = v276;
        if (v273 < 0x80)
        {
          v278 = v274;
          LOBYTE(v279) = v372 - 8;
        }

        else
        {
          v277 = v372 - 8;
          do
          {
            v278 = v274 + 1;
            v274[v275] = v277 | 0x80;
            v279 = v277 >> 7;
            v280 = v277 >> 14;
            v277 >>= 7;
            ++v274;
          }

          while (v280);
        }

        v309 = v278 + 1;
        v278[v275] = v279;
        sub_240B4ADF0(v414, (v278 + 1));
        if (v415)
        {
          v244 = v309;
        }

        else
        {
          v244 = 0;
        }

        v414[0] = v244;
        if (sub_240BAD484(4uLL, 4uLL, 0, v273, v374, v381, &v416, v412))
        {
          v267 = 0;
          v367 = 1;
          LODWORD(v378) = 543449703;
          v127 = v381;
          goto LABEL_453;
        }

        if (v244)
        {
          v367 = 0;
          goto LABEL_565;
        }

        v367 = 0;
        if (!v412[0])
        {
          v127 = v381;
          v219 = v245;
          goto LABEL_545;
        }

LABEL_564:
        v244 = 0;
LABEL_565:
        v127 = v381;
LABEL_426:
        v232 = v220 > v377;
        v246 = v220 - v377;
        if (v232)
        {
          sub_240B57E90(&v382, 1);
          v247 = v382;
          v248 = v382 + 9;
          sub_240B4ADF0(&v382, v382 + 9);
          v249 = __src[1];
          if (__src[1])
          {
            v250 = v248;
          }

          else
          {
            v250 = 0;
          }

          v382 = v250;
          if (v246 < 0x80)
          {
            v252 = v247;
            LOBYTE(v253) = v246;
          }

          else
          {
            v251 = v246;
            do
            {
              v252 = v247 + 1;
              v247[v249] = v251 | 0x80;
              v253 = v251 >> 7;
              v254 = v251 >> 14;
              v251 >>= 7;
              ++v247;
            }

            while (v254);
          }

          v255 = v252 + 1;
          v252[v249] = v253;
          sub_240B4ADF0(&v382, (v252 + 1));
          if (__src[1])
          {
            v256 = v255;
          }

          else
          {
            v256 = 0;
          }

          v382 = v256;
          v257 = (v374 + v377);
          while (v246)
          {
            v258 = *v257++;
            --v246;
            sub_240B57E90(&v402, v258);
          }
        }

        if (v244)
        {
          v259 = v415;
          v260 = v244;
          do
          {
            v261 = *v259++;
            sub_240B57E90(&v382, v261);
            --v260;
          }

          while (v260);
          v262 = v244;
        }

        else
        {
          v262 = 0;
        }

        v263 = v412[0];
        if (v412[0])
        {
          v264 = v413;
          v265 = v412[0];
          do
          {
            v266 = *v264++;
            sub_240B57E90(&v402, v266);
            --v265;
          }

          while (v265);
          v262 = v244;
          v127 = v381;
        }

        v377 = v416;
        if (v262 | v263)
        {
          v267 = 1;
LABEL_453:
          v219 = v245;
          goto LABEL_457;
        }

        v268 = v416;
        v219 = v245;
      }

      else
      {
LABEL_545:
        v310 = v416;
        if (v416 + 20 <= v127)
        {
          if (v416 + 4 <= v127 && *(v374 + v416) == 542792024 && (v416 + 8 > v127 || !*(v366 + v416)))
          {
            v245 = v219;
            sub_240B57E90(v414, 10);
            v311 = 12;
            v310 += 8;
            do
            {
              v312 = *(v374 + v310++);
              sub_240B57E90(v412, v312);
              --v311;
            }

            while (v311);
            v416 = v310;
            v244 = v414[0];
            v127 = v381;
            v219 = v245;
            if (v414[0])
            {
              goto LABEL_426;
            }
          }

          if (v412[0])
          {
            goto LABEL_425;
          }
        }

        v313 = v127;
        v268 = v310 + 8;
        if (v310 + 8 > v313 || *(v366 + v310))
        {
LABEL_561:
          v268 = v310;
        }

        else
        {
          v314 = 538976288;
          if (v310 + 4 <= v381)
          {
            v314 = *(v374 + v310);
          }

          v315 = 0;
          v411 = v314;
          while (v411 != **(&off_278CB3200 + v315))
          {
            if (++v315 == 8)
            {
              goto LABEL_561;
            }
          }

          sub_240B57E90(v414, v315 | 0x10);
          v416 = v310 + 8;
          v244 = v414[0];
          if (v414[0])
          {
            v245 = v219;
            goto LABEL_565;
          }
        }

        if (v268 == v381)
        {
          v245 = v219;
          goto LABEL_564;
        }
      }

      v416 = v268 + 1;
      v267 = 1;
      goto LABEL_456;
    }

    v267 = 0;
    LODWORD(v378) = 1987212643;
LABEL_456:
    v127 = v381;
LABEL_457:
    v269 = v413;
    v413 = 0;
    if (v269)
    {
      atomic_fetch_add(&qword_27E519020, -*(v269 - 24));
      free(*(v269 - 32));
    }

    v270 = v415;
    v415 = 0;
    if (v270)
    {
      atomic_fetch_add(&qword_27E519020, -*(v270 - 3));
      free(*(v270 - 4));
    }
  }

  while ((v267 & 1) != 0);
  sub_240B8B3FC(v418[0]);
  if (v419[0])
  {
    operator delete(v419[0]);
  }

  v97 = v367;
  if (v420[0])
  {
    operator delete(v420[0]);
  }

LABEL_609:
  v335 = v407.i64[1];
  v407.i64[1] = 0;
  if (v335)
  {
    atomic_fetch_add(&qword_27E519020, -*(v335 - 24));
    free(*(v335 - 32));
  }

  v336 = v403.i64[1];
  v403.i64[1] = 0;
  if (v336)
  {
    atomic_fetch_add(&qword_27E519020, -*(v336 - 24));
    free(*(v336 - 32));
  }

LABEL_613:
  v337 = __src[1];
  __src[1] = 0;
  if (v337)
  {
    atomic_fetch_add(&qword_27E519020, -*(v337 - 3));
    free(*(v337 - 4));
  }

  if (!v97)
  {
    sub_240B8C03C(v420);
  }

  v338 = v410;
  v410 = 0;
  if (v338)
  {
    atomic_fetch_add(&qword_27E519020, -*(v338 - 24));
    free(*(v338 - 32));
  }

LABEL_87:
  *(a1 + 2852) = 1;
  v60 = *(&v395 + 1);
  *(&v395 + 1) = 0;
  if (v60)
  {
    atomic_fetch_add(&qword_27E519020, -*(v60 - 24));
    free(*(v60 - 32));
  }

LABEL_89:
  if (SHIBYTE(v398) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_115:
  v42 = 1;
LABEL_175:
  v109 = v401;
  v401 = 0;
  if (v109)
  {
    atomic_fetch_add(&qword_27E519020, -*(v109 - 24));
    free(*(v109 - 32));
  }

  return v42;
}

void sub_240BC57B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  v74 = *(v72 - 224);
  *(v72 - 224) = 0;
  if (v74)
  {
    atomic_fetch_add(&qword_27E519020, -*(v74 - 24));
    free(*(v74 - 32));
  }

  v75 = *(v72 - 200);
  *(v72 - 200) = 0;
  if (v75)
  {
    atomic_fetch_add(&qword_27E519020, -*(v75 - 24));
    free(*(v75 - 32));
  }

  sub_240B8B3FC(*(v72 - 160));
  v76 = *(v72 - 144);
  if (v76)
  {
    operator delete(v76);
  }

  v77 = *(v72 - 120);
  if (v77)
  {
    operator delete(v77);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a72)
  {
    atomic_fetch_add(&qword_27E519020, -*(a72 - 24));
    free(*(a72 - 32));
  }

  if (a68)
  {
    atomic_fetch_add(&qword_27E519020, -*(a68 - 24));
    free(*(a68 - 32));
  }

  if (a36)
  {
    atomic_fetch_add(&qword_27E519020, -*(a36 - 24));
    free(*(a36 - 32));
  }

  v78 = STACK[0x220];
  STACK[0x220] = 0;
  if (v78)
  {
    atomic_fetch_add(&qword_27E519020, -*(v78 - 24));
    free(*(v78 - 32));
  }

  if (a54)
  {
    atomic_fetch_add(&qword_27E519020, -*(a54 - 24));
    free(*(a54 - 32));
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a65)
  {
    atomic_fetch_add(&qword_27E519020, -*(a65 - 24));
    free(*(a65 - 32));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240BC5BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_240B57820(a1 + 728);
  if (*(a1 + 736) == 1)
  {
    v5 = 8 * *(a1 + 740) + 8;
  }

  else
  {
    v5 = *(a1 + 744);
  }

  if (*(a1 + 361) == 1)
  {
    v6 = *(a1 + 392) - *(a1 + 384);
  }

  else
  {
    v6 = 0;
  }

  if (v4 > 0x40000000 || ((v7 = v5, v8 = v5 > 0x40000000, v9 = v4 * v5, !v8) ? (v10 = v9 >= 0x10000000001) : (v10 = 1), v10))
  {
    v11 = 0xFFFFFFFFLL;
    if (!a2)
    {
      return v11;
    }

LABEL_14:
    v12 = "Too large image dimensions";
LABEL_15:
    MEMORY[0x245CCE410](a2, v12);
    return v11;
  }

  if (v6 >= 0x10000001)
  {
    v11 = 0xFFFFFFFFLL;
    if (!a2)
    {
      return v11;
    }

    v12 = "Too large ICC profile size";
    goto LABEL_15;
  }

  v14 = *(a1 + 624);
  if (v14 >= 0x101)
  {
    v11 = 0xFFFFFFFFLL;
    if (!a2)
    {
      return v11;
    }

    goto LABEL_22;
  }

  if ((*(a1 + 344) & 1) == 0)
  {
    v11 = 10;
    if (!a2)
    {
      return v11;
    }

    v12 = "Too high modular bit depth";
    goto LABEL_15;
  }

  if (v4 > 0x40000 || v7 > 0x40000 || v9 >= 0x10000001)
  {
    v11 = 10;
    if (!a2)
    {
      return v11;
    }

    goto LABEL_14;
  }

  if (v6 > 0x400000)
  {
    v11 = 10;
    if (!a2)
    {
      return v11;
    }

    v12 = "Too large ICC profile";
    goto LABEL_15;
  }

  if (v14 > 4)
  {
    v11 = 10;
    if (!a2)
    {
      return v11;
    }

LABEL_22:
    v12 = "Too many extra channels";
    goto LABEL_15;
  }

  v15 = *(a1 + 632);
  v16 = *(a1 + 640) - v15;
  if (!v16)
  {
    return 5;
  }

  v17 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 5);
  if (v17 <= 1)
  {
    v17 = 1;
  }

  v18 = (v15 + 12);
  v11 = 5;
  while (1)
  {
    v19 = *v18;
    v18 += 24;
    if (v19 == 4)
    {
      break;
    }

    if (!--v17)
    {
      return v11;
    }
  }

  v11 = 10;
  if (a2)
  {
    v12 = "CMYK channel not allowed";
    goto LABEL_15;
  }

  return v11;
}

uint64_t sub_240BC5D88(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v8 = *(a1 + 144);
  if (a3 <= 0xFFFFFFF7)
  {
    v9 = 8;
  }

  else
  {
    v9 = 16;
  }

  v10 = v8 + v9;
  v11 = *(a1 + 176);
  if (v11)
  {
    v12 = v11[3];
    if (v12)
    {
      v12(*v11, v8 + v9);
      *(a1 + 160) = v10;
    }
  }

  *(a1 + 144) = v10;
  v13 = *a4;
  sub_240BC219C(&v35, *a4 + 104, *a4[1] + 4, 0);
  result = v38;
  if (!v38)
  {
    v15 = v35;
    v34 = v37;
    v35 = 0;
    v16 = v15 + 4;
    v17 = v36;
    v36.i64[0] = 0;
    v18 = *(v13 + 2856);
    *(v13 + 2856) = v18 + 1;
    v15->i8[0] = BYTE3(v18);
    v15->i8[1] = BYTE2(v18);
    v15->i8[2] = BYTE1(v18);
    v15->i8[3] = v18;
    v31 = vaddq_s64(v17, xmmword_240C11960);
    v19 = a4[1];
    v20 = *v19;
    memcpy(v16, *(v19 + 16), *v19);
    v32 = &v16[v20];
    v21.i64[0] = v20;
    v21.i64[0] = vsubq_s64(v31, v21).u64[0];
    v21.i64[1] = vaddq_s64(v31, vdupq_n_s64(v20)).i64[1];
    v33 = v21;
    sub_240B96F0C(&v32);
    sub_240B96F0C(&v35);
    v22 = *(a1 + 144);
    v23 = *(a1 + 176);
    if (v23)
    {
      v24 = v23[3];
      if (v24)
      {
        v24(*v23, v8);
        *(a1 + 160) = v8;
      }
    }

    *(a1 + 144) = v8;
    if (v22 - v10 <= a3)
    {
      sub_240BC219C(&v35, a1 + 104, v9, 0);
      result = v38;
      if (!v38)
      {
        v25 = a3 > 0xFFFFFFF7;
        v26 = v35;
        v27 = v36;
        v34 = v37;
        v35 = 0;
        v36.i64[0] = 0;
        v28 = sub_240BC2BA8(a2, v22 - v10, v25, v26);
        v32 = v26 + v28;
        v33.i64[0] = v27.i64[0] - v28;
        v33.i64[1] = v27.i64[1] + v28;
        sub_240B96F0C(&v32);
        sub_240B96F0C(&v35);
        v29 = *(a1 + 176);
        if (v29)
        {
          v30 = v29[3];
          if (v30)
          {
            v30(*v29, v22);
            *(a1 + 160) = v22;
          }
        }

        *(a1 + 144) = v22;
        sub_240BC2554((a1 + 104));
        return 0;
      }
    }

    else
    {
      result = 1;
      *(a1 + 2852) = 1;
    }
  }

  return result;
}

uint64_t sub_240BC5FB8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 144);
  if (a3 <= 0xFFFFFFF7)
  {
    v9 = 8;
  }

  else
  {
    v9 = 16;
  }

  v10 = v8 + v9;
  v11 = *(a1 + 176);
  if (v11)
  {
    v12 = v11[3];
    if (v12)
    {
      v12(*v11, v8 + v9);
      *(a1 + 160) = v10;
    }
  }

  *(a1 + 144) = v10;
  result = sub_240BA2B80(*a4 + 104, *(a4 + 8));
  if (!result)
  {
    v14 = *(a1 + 144);
    v15 = *(a1 + 176);
    if (v15)
    {
      v16 = v15[3];
      if (v16)
      {
        v16(*v15, v8);
        *(a1 + 160) = v8;
      }
    }

    *(a1 + 144) = v8;
    v17 = v14 - v10;
    if (v14 - v10 <= a3)
    {
      sub_240BC219C(&v26, a1 + 104, v9, 0);
      result = v30;
      if (!v30)
      {
        v18 = a3 > 0xFFFFFFF7;
        v19 = v26;
        v20 = v27;
        v21 = v28;
        v25[3] = v29;
        v26 = 0;
        v27 = 0;
        v22 = sub_240BC2BA8(a2, v17, v18, v19);
        v25[0] = v19 + v22;
        v25[1] = v20 - v22;
        v25[2] = v21 + v22;
        sub_240B96F0C(v25);
        sub_240B96F0C(&v26);
        v23 = *(a1 + 176);
        if (v23)
        {
          v24 = v23[3];
          if (v24)
          {
            v24(*v23, v14);
            *(a1 + 160) = v14;
          }
        }

        *(a1 + 144) = v14;
        sub_240BC2554((a1 + 104));
        return 0;
      }
    }

    else
    {
      result = 1;
      *(a1 + 2852) = 1;
    }
  }

  return result;
}

void *sub_240BC6130(uint64_t *a1, uint64_t *a2, void *a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    do
    {
      v5 = a3;
      v6 = *v4;
      *v4 = 0;
      sub_240BC68B8(a3, v6);
      v5[1] = v4[1];
      v7 = v4[2];
      v4[2] = 0;
      sub_240BC6990(v5 + 2, v7);
      v5[3] = v4[3];
      v8 = v4[4];
      v4[4] = 0;
      v9 = v5[4];
      v5[4] = v8;
      if (v9)
      {
        (v5[5])();
      }

      v5[5] = v4[5];
      v4 += 6;
      a3 = v5 + 6;
    }

    while (v4 != a2);
    return v5 + 6;
  }

  return a3;
}

void *sub_240BC61DC(void *result, uint64_t a2)
{
  v3 = result;
  for (i = result[1]; i != a2; result = sub_240BC6B1C(i))
  {
    i -= 48;
  }

  v3[1] = a2;
  return result;
}

void sub_240BC622C(uint64_t a1, char **a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = 0;
  v7 = v5 - v4;
  if (v5 != v4)
  {
    v8 = 0;
    v9 = v7 >> 4;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    do
    {
      if (!v8 || *v4 == 1)
      {
        ++v6;
      }

      ++v8;
      v4 += 16;
    }

    while (v9 != v8);
  }

  v10 = (30 * v6 + 18);
  v11 = *a2;
  v12 = a2[1];
  v13 = (v12 - *a2);
  if (v10 <= v13)
  {
    if (v10 < v13)
    {
      v12 = &v11[v10];
      a2[1] = &v11[v10];
    }
  }

  else
  {
    sub_240B26918(a2, v10 - v13);
    v11 = *a2;
    v12 = a2[1];
  }

  LOBYTE(v14) = v6;
  if (v6 < 0x80)
  {
    v15 = 0;
LABEL_19:
    v11[v15++] = v14;
  }

  else
  {
    v15 = 0;
    v16 = v12 - v11;
    v17 = v6;
    while (1)
    {
      v18 = v15;
      if (v15 > v16)
      {
        break;
      }

      ++v15;
      v11[v18] = v17 | 0x80;
      v14 = v17 >> 7;
      v19 = v17 >> 14;
      v17 >>= 7;
      if (!v19)
      {
        if (v18 < v16)
        {
          goto LABEL_19;
        }

        break;
      }
    }
  }

  v20 = &v11[v15];
  *v20 = bswap32(*(a1 + 4));
  *(v20 + 1) = bswap32(*(a1 + 8));
  v21 = v15 + 8;
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  v24 = (v23 - v22) >> 4;
  if (v24 < 2)
  {
    v35 = 0;
    v27 = 0;
    v46 = *(v22 + 8);
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = -1;
    v29 = 1;
    do
    {
      if (*(v22 + 16 * v29) == 1)
      {
        v30 = *(v22 + 16 * v25 + 8);
        if (v28 != -1)
        {
          v30 -= *(v22 + 16 * v28 + 8);
        }

        v31 = a2[1] - *a2;
        if (v30 < 0x80)
        {
          v32 = v21;
          LOBYTE(v33) = v30;
LABEL_31:
          if (v32 <= v31)
          {
            v21 = v32 + 1;
            v11[v32] = v33;
          }

          else
          {
            v21 = v32;
          }
        }

        else
        {
          while (v21 <= v31)
          {
            v32 = v21 + 1;
            v11[v21] = v30 | 0x80;
            v33 = v30 >> 7;
            v34 = v30 >> 14;
            ++v21;
            v30 >>= 7;
            if (!v34)
            {
              goto LABEL_31;
            }
          }
        }

        v36 = v27;
        v37 = a2[1] - *a2;
        if (v27 < 0x80)
        {
          v38 = v21;
          LOBYTE(v39) = v36;
LABEL_39:
          if (v38 <= v37)
          {
            v21 = v38 + 1;
            v11[v38] = v39;
          }

          else
          {
            v21 = v38;
          }
        }

        else
        {
          while (v21 <= v37)
          {
            v38 = v21 + 1;
            v11[v21] = v36 | 0x80;
            v39 = v36 >> 7;
            v40 = v36 >> 14;
            ++v21;
            v36 >>= 7;
            if (!v40)
            {
              goto LABEL_39;
            }
          }
        }

        v41 = v29 - v25;
        v42 = a2[1] - *a2;
        if ((v29 - v25) < 0x80)
        {
          v43 = v21;
          LOBYTE(v44) = v29 - v25;
LABEL_47:
          if (v43 <= v42)
          {
            v21 = v43 + 1;
            v11[v43] = v44;
          }

          else
          {
            v21 = v43;
          }
        }

        else
        {
          while (v21 <= v42)
          {
            v43 = v21 + 1;
            v11[v21] = v41 | 0x80;
            v44 = v41 >> 7;
            v45 = v41 >> 14;
            ++v21;
            v41 >>= 7;
            if (!v45)
            {
              goto LABEL_47;
            }
          }
        }

        v22 = *(a1 + 16);
        v23 = *(a1 + 24);
        v27 = v26;
        v26 += *(v22 + 16 * v29 + 4);
        v35 = v29;
        v28 = v25;
        v25 = v29;
      }

      else
      {
        v35 = v25;
      }

      ++v29;
    }

    while (v29 < (v23 - v22) >> 4);
    v24 = (v23 - v22) >> 4;
    v46 = *(v22 + 16 * v35 + 8);
    if (v28 != -1)
    {
      v46 -= *(v22 + 16 * v28 + 8);
    }
  }

  v47 = a2[1] - *a2;
  if (v46 < 0x80)
  {
    v48 = v21;
    LOBYTE(v49) = v46;
LABEL_60:
    if (v48 <= v47)
    {
      v21 = v48 + 1;
      v11[v48] = v49;
    }

    else
    {
      v21 = v48;
    }
  }

  else
  {
    while (v21 <= v47)
    {
      v48 = v21 + 1;
      v11[v21] = v46 | 0x80;
      v49 = v46 >> 7;
      v50 = v46 >> 14;
      ++v21;
      v46 >>= 7;
      if (!v50)
      {
        goto LABEL_60;
      }
    }
  }

  v51 = v24 - v35;
  v52 = v27;
  v53 = a2[1] - *a2;
  if (v27 < 0x80)
  {
    v54 = v21;
    LOBYTE(v55) = v52;
LABEL_68:
    if (v54 <= v53)
    {
      v21 = v54 + 1;
      v11[v54] = v55;
    }

    else
    {
      v21 = v54;
    }
  }

  else
  {
    while (v21 <= v53)
    {
      v54 = v21 + 1;
      v11[v21] = v52 | 0x80;
      v55 = v52 >> 7;
      v56 = v52 >> 14;
      ++v21;
      v52 >>= 7;
      if (!v56)
      {
        goto LABEL_68;
      }
    }
  }

  v57 = v51;
  v58 = a2[1] - *a2;
  if (v51 < 0x80)
  {
    v59 = v21;
    LOBYTE(v60) = v57;
LABEL_76:
    if (v59 <= v58)
    {
      v21 = v59 + 1;
      v11[v59] = v60;
    }

    else
    {
      v21 = v59;
    }
  }

  else
  {
    while (v21 <= v58)
    {
      v59 = v21 + 1;
      v11[v21] = v57 | 0x80;
      v60 = v57 >> 7;
      v61 = v57 >> 14;
      ++v21;
      v57 >>= 7;
      if (!v61)
      {
        goto LABEL_76;
      }
    }
  }

  v62 = a2[1] - *a2;
  if (v21 <= v62)
  {
    if (v21 < v62)
    {
      a2[1] = &(*a2)[v21];
    }
  }

  else
  {

    sub_240B26918(a2, v21 - v62);
  }
}

uint64_t sub_240BC6698(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v7 = *(a1 + 144);
  if (a3 <= 0xFFFFFFF7)
  {
    v8 = 8;
  }

  else
  {
    v8 = 16;
  }

  v9 = v7 + v8;
  v10 = v7 + v8;
  v11 = *(a1 + 176);
  if (v11)
  {
    v12 = v11[3];
    if (v12)
    {
      v12(*v11, v7 + v8);
      *(a1 + 160) = v10;
    }
  }

  *(a1 + 144) = v10;
  v13 = a4[1];
  v14 = v13[1];
  if (v14)
  {
    v15 = 0;
    v16 = *a4;
    while (1)
    {
      v17 = v14 - v15;
      sub_240BC219C(&__dst, v16 + 104, 1uLL, v14 - v15);
      result = v35;
      if (v35)
      {
        break;
      }

      v19 = __dst;
      v29 = __dst;
      v30 = v33;
      v31 = v34;
      __dst = 0;
      *&v33 = 0;
      if (v30 < v17)
      {
        v17 = v30;
      }

      memcpy(v19, (*v13 + v15), v17);
      v29 += v17;
      *&v30 = v30 - v17;
      *(&v30 + 1) += v17;
      sub_240B96F0C(&v29);
      if (!v35)
      {
        sub_240B96F0C(&__dst);
      }

      v15 += v17;
      if (v15 >= v14)
      {
        v10 = *(a1 + 144);
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v20 = *(a1 + 176);
    if (v20)
    {
      v21 = v20[3];
      if (v21)
      {
        v21(*v20, v7);
        *(a1 + 160) = v7;
      }
    }

    *(a1 + 144) = v7;
    if (v10 - v9 <= a3)
    {
      sub_240BC219C(&__dst, a1 + 104, v8, 0);
      result = v35;
      if (!v35)
      {
        v22 = a3 > 0xFFFFFFF7;
        v23 = __dst;
        v24 = v33;
        v31 = v34;
        __dst = 0;
        *&v33 = 0;
        v25 = sub_240BC2BA8(a2, v10 - v9, v22, v23);
        v29 = v23 + v25;
        *&v30 = v24 - v25;
        *(&v30 + 1) = *(&v24 + 1) + v25;
        sub_240B96F0C(&v29);
        sub_240B96F0C(&__dst);
        v26 = *(a1 + 176);
        if (v26)
        {
          v27 = v26[3];
          if (v27)
          {
            v27(*v26, v10);
            *(a1 + 160) = v10;
          }
        }

        *(a1 + 144) = v10;
        sub_240BC2554((a1 + 104));
        return 0;
      }
    }

    else
    {
      result = 1;
      *(a1 + 2852) = 1;
    }
  }

  return result;
}

void *sub_240BC68B8(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    v4 = *(v2 + 1176);
    if (v4)
    {
      *(v2 + 1184) = v4;
      operator delete(v4);
    }

    v6 = (v2 + 1152);
    sub_240BA4110(&v6);
    sub_240B8D650(v2 + 848);
    if (*(v2 + 751) < 0)
    {
      operator delete(*(v2 + 728));
    }

    v5 = *(v2 + 704);
    if (v5)
    {
      *(v2 + 712) = v5;
      operator delete(v5);
    }

    sub_240B7BB60(v2 + 8);
    return (*(v3[1] + 16))(*v3[1], v2);
  }

  return result;
}

void *sub_240BC6990(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = result;
    v4 = *(v2 + 8);
    if (v4)
    {
      *(v2 + 16) = v4;
      operator delete(v4);
    }

    return (*(v3[1] + 16))(*v3[1], v2);
  }

  return result;
}

uint64_t sub_240BC69E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v7 = a2;
  v5[0] = &v6;
  v5[1] = &v7;
  if (!a1)
  {
    v8[0] = 0;
    v8[1] = v8;
    a1 = v8;
  }

  return sub_240BC6A2C(a1, a4, v5);
}

uint64_t sub_240BC6A2C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6[0] = sub_240B2AC64;
    v6[1] = a3;
    if (*result)
    {
      return (*result)(*(result + 8), v6, sub_240BC6AF4, sub_240BC6ADC, 0, a2);
    }

    else
    {
      v4 = 0;
      v5 = a2;
      do
      {
        result = (**a3)(**(a3 + 8), v4++);
      }

      while (v5 != v4);
    }
  }

  return result;
}

uint64_t sub_240BC6AF4(unsigned int (**a1)(uint64_t), uint64_t a2)
{
  if ((*a1)(a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void *sub_240BC6B1C(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(a1 + 40))();
  }

  sub_240BC6990((a1 + 16), 0);

  return sub_240BC68B8(a1, 0);
}

uint64_t JxlEncoderSetColorEncoding(uint64_t a1, int *a2)
{
  if ((*(a1 + 2867) & 1) == 0 || *(a1 + 2868) == 1)
  {
    goto LABEL_3;
  }

  if (sub_240B52E74(a1 + 368, a2))
  {
    result = 1;
    *(a1 + 2852) = 1;
    return result;
  }

  sub_240B25034(a1 + 352);
  v4 = *(a1 + 2700);
  if (*(a1 + 408) != 1)
  {
    if (v4 == 3)
    {
      goto LABEL_10;
    }

LABEL_3:
    *(a1 + 2852) = 129;
    return 1;
  }

  if (v4 != 1)
  {
    goto LABEL_3;
  }

LABEL_10:
  *(a1 + 2868) = 1;
  if (*(a1 + 2869))
  {
    return 0;
  }

  if (*(a1 + 416))
  {
    v5 = 255.0;
  }

  else
  {
    v6 = *(a1 + 424);
    v5 = 255.0;
    if (v6 == 18)
    {
      v5 = 1000.0;
    }

    if (v6 == 16)
    {
      v5 = 10000.0;
    }
  }

  result = 0;
  *(a1 + 604) = v5;
  return result;
}

uint64_t JxlEncoderSetICCProfile(uint64_t a1, char *a2, unint64_t a3)
{
  if ((*(a1 + 2867) & 1) == 0 || *(a1 + 2868) == 1)
  {
    v4 = 129;
LABEL_4:
    *(a1 + 2852) = v4;
    return 1;
  }

  if (!a3)
  {
    v4 = 4;
    goto LABEL_4;
  }

  __p[0] = 0;
  __p[1] = 0;
  v13 = 0;
  sub_240B51508(__p, a2, &a2[a3], a3);
  if (*(a1 + 296) != 1)
  {
    v8 = *(a1 + 384);
    if (v8)
    {
      *(a1 + 392) = v8;
      operator delete(v8);
      *(a1 + 384) = 0;
      *(a1 + 392) = 0;
      *(a1 + 400) = 0;
    }

    *(a1 + 384) = *__p;
    *(a1 + 400) = v13;
    __p[1] = 0;
    v13 = 0;
    __p[0] = 0;
    *(a1 + 380) = 0;
    *(a1 + 361) = 1;
LABEL_14:
    v9 = *(a1 + 2700);
    if (*(a1 + 408) == 1)
    {
      if (v9 != 1)
      {
        goto LABEL_16;
      }
    }

    else if (v9 != 3)
    {
      goto LABEL_16;
    }

    *(a1 + 2868) = 1;
    if ((*(a1 + 2869) & 1) == 0)
    {
      if (*(a1 + 416))
      {
        v10 = 255.0;
      }

      else
      {
        v11 = *(a1 + 424);
        v10 = 255.0;
        if (v11 == 18)
        {
          v10 = 1000.0;
        }

        if (v11 == 16)
        {
          v10 = 10000.0;
        }
      }

      *(a1 + 604) = v10;
    }

    if (!*(a1 + 2684) && *(a1 + 296) == 1)
    {
      sub_240B2A078(a1 + 352, *(a1 + 232), *(a1 + 240));
    }

    v5 = 0;
    goto LABEL_30;
  }

  v7 = sub_240B52D9C(a1 + 368, __p, *(a1 + 232), *(a1 + 240));
  *(a1 + 361) = !v7;
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_16:
  *(a1 + 2852) = 4;
  v5 = 1;
LABEL_30:
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_240BC6DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double JxlEncoderInitBasicInfo(uint64_t a1)
{
  *a1 = xmmword_240C11970;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0x300000001;
  *(a1 + 96) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *&result = 0x10000000ALL;
  *(a1 + 80) = xmmword_240C11980;
  return result;
}

double JxlEncoderInitFrameHeader(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_240C11990;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

void *JxlEncoderInitBlendInfo(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t JxlEncoderSetBasicInfo(uint64_t a1, uint64_t a2)
{
  if (sub_240B57890(a1 + 728, *(a2 + 4), *(a2 + 8)) || sub_240BC7174(*(a2 + 12), *(a2 + 16)))
  {
    goto LABEL_3;
  }

  v6 = *(a2 + 12);
  *(a1 + 332) = v6;
  v7 = *(a2 + 16);
  *(a1 + 336) = v7;
  *(a1 + 328) = v7 != 0;
  v8 = (!*(a2 + 36) || v6 <= 0xC) && *(a2 + 60) < 0xDu;
  *(a1 + 344) = v8;
  v9 = *(a2 + 96);
  if (*(a2 + 96) && *(a2 + 96) != *(a2 + 4))
  {
    if (v9 > 0x40000000)
    {
      goto LABEL_3;
    }

    v10 = *(a2 + 100);
    if (v10 > 0x40000000 || sub_240B57890(a1 + 560, v9, v10))
    {
      goto LABEL_3;
    }

    *(a1 + 558) = 1;
  }

  v11 = *(a2 + 56);
  *(a1 + 624) = v11;
  sub_240B5AAEC((a1 + 632), v11);
  v12 = *(a2 + 60);
  if (*(a2 + 56))
  {
    if (v12)
    {
      *&v31[4] = 0u;
      v32 = 0u;
      LODWORD(__p) = 0;
      HIDWORD(__p) = v12;
      *v31 = *(a2 + 64);
      if (JxlEncoderSetExtraChannelInfo(a1, 0, &__p))
      {
        goto LABEL_3;
      }
    }
  }

  else if (v12)
  {
    goto LABEL_3;
  }

  *(a1 + 345) = *(a2 + 36) == 0;
  v13 = *(a2 + 48);
  if ((v13 - 1) > 7)
  {
    goto LABEL_3;
  }

  *(a1 + 552) = v13;
  if ((*(a2 + 52) | 2) != 3)
  {
    goto LABEL_3;
  }

  v14 = *(a2 + 20);
  if (v14 != 0.0)
  {
    goto LABEL_23;
  }

  if (*(a1 + 2868) == 1)
  {
    if (*(a1 + 416))
    {
      v14 = 255.0;
    }

    else
    {
      v29 = *(a1 + 424);
      v14 = 255.0;
      if (v29 == 18)
      {
        v14 = 1000.0;
      }

      if (v29 == 16)
      {
        v14 = 10000.0;
      }
    }

LABEL_23:
    *(a1 + 604) = v14;
    *(a1 + 2869) = 1;
  }

  *(a1 + 608) = *(a2 + 24);
  *(a1 + 612) = *(a2 + 28) != 0;
  *(a1 + 616) = *(a2 + 32);
  v15 = *(a2 + 188);
  v17 = *(a2 + 160);
  v16 = *(a2 + 176);
  *(a1 + 2792) = *(a2 + 144);
  *(a1 + 2808) = v17;
  *(a1 + 2824) = v16;
  *(a1 + 2836) = v15;
  v19 = *(a2 + 112);
  v18 = *(a2 + 128);
  v20 = *(a2 + 96);
  *(a1 + 2728) = *(a2 + 80);
  *(a1 + 2744) = v20;
  *(a1 + 2760) = v19;
  *(a1 + 2776) = v18;
  v22 = *(a2 + 48);
  v21 = *(a2 + 64);
  v23 = *(a2 + 32);
  *(a1 + 2664) = *(a2 + 16);
  *(a1 + 2680) = v23;
  *(a1 + 2696) = v22;
  *(a1 + 2712) = v21;
  *(a1 + 2648) = *a2;
  *(a1 + 2867) = 1;
  v24 = *(a2 + 44);
  *(a1 + 557) = v24 != 0;
  if (!v24)
  {
    goto LABEL_28;
  }

  v25 = *(a2 + 84);
  if (!v25 || (v26 = *(a2 + 80)) == 0)
  {
LABEL_3:
    *(a1 + 2852) = 129;
    return 1;
  }

  *(a1 + 696) = v26;
  *(a1 + 700) = v25;
  *(a1 + 704) = *(a2 + 88);
  *(a1 + 708) = *(a2 + 92) != 0;
LABEL_28:
  __p = 0;
  *v31 = 0;
  *&v31[8] = 0;
  v27 = sub_240BC5BBC(a1, &__p);
  if (v27 == -1 || (v4 = 0, v28 = *(a1 + 300), v28 < v27) && v28 != -1)
  {
    *(a1 + 2852) = 129;
    v4 = 1;
  }

  if ((v31[15] & 0x80000000) != 0)
  {
    operator delete(__p);
  }

  return v4;
}

void sub_240BC7158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240BC7174(unsigned int a1, unsigned int a2)
{
  if (!a2)
  {
    if (a1 - 1 >= 0x18)
    {
      sub_240BC6954("%s:%d: Invalid value for bits_per_sample\n");
      return 1;
    }

    return 0;
  }

  if (a2 <= 8 && a2 + 24 >= a1 && a2 + 3 <= a1)
  {
    return 0;
  }

  sub_240BC6954("%s:%d: Invalid float description\n");
  return 1;
}

uint64_t JxlEncoderSetExtraChannelInfo(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (*(a1 + 624) <= a2 || sub_240BC7174(a3[1], a3[2]))
  {
    *(a1 + 2852) = 129;
    return 1;
  }

  else
  {
    v8 = *(a1 + 632) + 96 * a2;
    v9 = a3[1];
    *(v8 + 12) = *a3;
    v10 = *(a1 + 344);
    if (v9 >= 0xD)
    {
      v10 = 0;
    }

    *(a1 + 344) = v10;
    v11 = a3[2];
    v12 = a3[3];
    *(v8 + 28) = v9;
    *(v8 + 32) = v11;
    *(v8 + 24) = v11 != 0;
    *(v8 + 40) = v12;
    MEMORY[0x245CCE410](v8 + 48, &unk_240C888E1);
    *(v8 + 72) = a3[5] != 0;
    *(v8 + 92) = a3[10];
    *(v8 + 76) = a3[6];
    *(v8 + 80) = a3[7];
    *(v8 + 84) = a3[8];
    *(v8 + 88) = a3[9];
    __p[0] = 0;
    __p[1] = 0;
    v16 = 0;
    v13 = sub_240BC5BBC(a1, __p);
    if (v13 == -1 || (v6 = 0, v14 = *(a1 + 300), v14 < v13) && v14 != -1)
    {
      *(a1 + 2852) = 129;
      v6 = 1;
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v6;
}

void sub_240BC733C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double JxlEncoderInitExtraChannelInfo(int a1, uint64_t a2)
{
  *a2 = a1;
  *(a2 + 4) = 8;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  return result;
}

uint64_t JxlEncoderSetUpsamplingMode(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 > 3)
  {
    if (a2 != 4 && a2 != 8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (a2 == 1)
    {
      goto LABEL_40;
    }

    if (a2 != 2)
    {
      goto LABEL_8;
    }
  }

  if (a3 <= -2)
  {
LABEL_8:
    v5 = 129;
LABEL_11:
    a1[713] = v5;
    result = 1;
    goto LABEL_41;
  }

  if (a3 >= 2)
  {
    v5 = 128;
    goto LABEL_11;
  }

  v7 = 285;
  if (a2 == 4)
  {
    v7 = 230;
  }

  v8 = &a1[v7];
  if (a2 == 2)
  {
    v9 = a1 + 215;
  }

  else
  {
    v9 = &a1[v7];
  }

  if (a3)
  {
    if (a3 == -1)
    {
      result = 0;
      a1[214] &= ~(a2 >> 1);
      goto LABEL_41;
    }

    JxlEncoderSetUpsamplingMode(a1, a2, 0);
    if (a2 != 8)
    {
      if (a2 == 4)
      {
        result = 0;
        v8[19] = 0;
        v8[24] = 1056964608;
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    v13 = 0;
    v16 = xmmword_240C119A0;
    do
    {
      v9[*(&v16 + v13)] = 0;
      v13 += 4;
    }

    while (v13 != 16);
    result = 0;
    v9[54] = 1056964608;
    v9[124] = 1056964608;
  }

  else
  {
    v10 = 840;
    if (a2 == 4)
    {
      v10 = 220;
    }

    if (a2 == 2)
    {
      v11 = 60;
    }

    else
    {
      v11 = v10;
    }

    a1[214] |= a2 >> 1;
    bzero(v9, v11);
    if (a2 == 2)
    {
      result = 0;
      a1[224] = 1065353216;
      goto LABEL_41;
    }

    if (a2 == 4)
    {
      v14 = 0;
      *&v16 = 0x1800000013;
      DWORD2(v16) = 49;
      do
      {
        v9[*(&v16 + v14)] = 1065353216;
        v14 += 4;
      }

      while (v14 != 12);
      goto LABEL_40;
    }

    if (a2 != 8)
    {
LABEL_40:
      result = 0;
      goto LABEL_41;
    }

    for (i = 0; i != 10; ++i)
    {
      result = 0;
      v9[dword_240C85134[i]] = 1065353216;
    }
  }

LABEL_41:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

double JxlEncoderSetExtraChannelName(uint64_t a1, unint64_t a2, void *__src, size_t __n)
{
  if (*(a1 + 624) <= a2)
  {
    *(a1 + 2852) = 129;
  }

  else
  {
    if (__n >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_240B29A3C();
    }

    if (__n >= 0x17)
    {
      operator new();
    }

    HIBYTE(v10) = __n;
    if (__n)
    {
      memcpy(&__dst, __src, __n);
    }

    *(&__dst + __n) = 0;
    v7 = *(a1 + 632) + 96 * a2;
    if (*(v7 + 71) < 0)
    {
      operator delete(*(v7 + 48));
    }

    result = *&__dst;
    *(v7 + 48) = __dst;
    *(v7 + 64) = v10;
  }

  return result;
}

uint64_t JxlEncoderFrameSettingsCreate(uint64_t a1)
{
  v2 = (*(a1 + 8))(*a1, 784, 0x10F2000DE42B6F0);
  v3 = v2;
  if (v2)
  {
    bzero(v2, 0x310uLL);
    sub_240B94630(v3 + 16);
  }

  v5[0] = 0;
  v5[1] = a1;
  sub_240BC7C18(v5);
  return 0;
}

void sub_240BC79B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_240BC7C18(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_240BC79D4(uint64_t *result, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v5 = *result;
  v4 = result[1];
  v6 = (v4 - *result) >> 2;
  if (a2 <= v6)
  {
    if (a2 >= v6)
    {
      return result;
    }

    v12 = v5 + 4 * a2;
  }

  else
  {
    v7 = a2 - v6;
    v8 = result[2];
    if (v7 > (v8 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v9 = v8 - v5;
        v10 = (v8 - v5) >> 1;
        if (v10 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v11 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        sub_240B228D4(v11);
      }

      sub_240B228BC();
    }

    a4.i32[0] = *a3;
    v13 = (v7 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v14 = vdupq_n_s64(v13);
    v15 = v13 - ((v7 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v16 = (v4 + 8);
    v17 = -4;
    do
    {
      v18 = vdupq_n_s64(v17 + 4);
      v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_240C111D0)));
      if (vuzp1_s16(v19, a4).u8[0])
      {
        *(v16 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v19, a4).i8[2])
      {
        *(v16 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_240C111C0)))).i32[1])
      {
        *v16 = a4.i32[0];
        v16[1] = a4.i32[0];
      }

      v17 += 4;
      v16 += 4;
    }

    while (v15 != v17);
    v12 = v4 + 4 * v7;
  }

  result[1] = v12;
  return result;
}

void *sub_240BC7C18(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(v1 + 759) < 0)
    {
      operator delete(*(v1 + 736));
    }

    v3 = *(v1 + 712);
    if (v3)
    {
      *(v1 + 720) = v3;
      operator delete(v3);
    }

    sub_240B7BB60(v1 + 16);
    return (*(v2[1] + 16))(*v2[1], v1);
  }

  return result;
}

uint64_t JxlEncoderSetFrameLossless(_BYTE *a1, int a2)
{
  if (a2 && (v2 = *a1, *(*a1 + 2867) == 1) && *(v2 + 345) == 1)
  {
    *(v2 + 2852) = 129;
    return 1;
  }

  else
  {
    v3 = 0;
    a1[8] = a2 != 0;
  }

  return v3;
}

uint64_t JxlEncoderSetFrameDistance(float *a1, float a2)
{
  if (a2 >= 0.0 && a2 <= 25.0)
  {
    result = 0;
    if (a2 < 0.01 && a2 > 0.0)
    {
      a2 = 0.01;
    }

    a1[4] = a2;
  }

  else
  {
    *(*a1 + 2852) = 129;
    return 1;
  }

  return result;
}

uint64_t JxlEncoderSetExtraChannelDistance(uint64_t *a1, unint64_t a2, double a3)
{
  v4 = *(*a1 + 624);
  if (v4 > a2 && (*&a3 == -1.0 || (*&a3 >= 0.0 ? (v5 = *&a3 <= 25.0) : (v5 = 0), v5)))
  {
    if (*&a3 >= 0.01 || *&a3 <= 0.0)
    {
      v8 = *&a3;
    }

    else
    {
      v8 = 0.01;
    }

    v9 = a1[3];
    v10 = a1 + 3;
    if (a2 >= (a1[4] - v9) >> 2)
    {
      v11 = 0;
      sub_240BC79D4(v10, v4, &v11, *&a3);
      v9 = *v10;
    }

    result = 0;
    *(v9 + 4 * a2) = v8;
  }

  else
  {
    *(*a1 + 2852) = 129;
    return 1;
  }

  return result;
}

float JxlEncoderDistanceFromQuality(float a1)
{
  v1 = 0.0;
  if (a1 < 100.0)
  {
    if (a1 >= 30.0)
    {
      return (100.0 - a1) * 0.09 + 0.1;
    }

    else
    {
      return a1 * -1.15 + a1 * 0.0176666667 * a1 + 25.0;
    }
  }

  return v1;
}

uint64_t JxlEncoderFrameSettingsSetOption(uint64_t *a1, int a2, uint64_t a3)
{
  switch(a2)
  {
    case 0:
      if (*(*a1 + 2870) == 1)
      {
        if ((a3 - 12) <= 0xFFFFFFFFFFFFFFF4)
        {
LABEL_21:
          *(*a1 + 2852) = 128;
          return 1;
        }
      }

      else if ((a3 - 11) <= 0xFFFFFFFFFFFFFFF5)
      {
        goto LABEL_21;
      }

      result = 0;
      *(a1 + 16) = 10 - a3;
      return result;
    case 1:
      if (a3 >= 5)
      {
        goto LABEL_49;
      }

      result = 0;
      a1[9] = a3;
      return result;
    case 2:
      if ((a3 + 1) > 9 || ((1 << (a3 + 1)) & 0x22D) == 0)
      {
        goto LABEL_3;
      }

      result = 0;
      *(a1 + 99) = a3;
      return result;
    case 3:
      if ((a3 + 1) > 9 || ((1 << (a3 + 1)) & 0x22D) == 0)
      {
        goto LABEL_3;
      }

      result = 0;
      *(a1 + 100) = a3;
      return result;
    case 4:
      if (a3 > 1)
      {
        return 1;
      }

      result = 0;
      *(a1 + 404) = a3 == 1;
      return result;
    case 6:
    case 7:
    case 8:
    case 10:
    case 11:
    case 12:
    case 13:
    case 16:
    case 17:
    case 18:
    case 23:
    case 30:
    case 33:
    case 35:
    case 36:
    case 37:
      if ((a3 - 2) <= 0xFFFFFFFFFFFFFFFCLL)
      {
        goto LABEL_3;
      }

      switch(a2)
      {
        case 6:
          result = 0;
          *(a1 + 93) = a3;
          break;
        case 7:
          result = 0;
          *(a1 + 94) = a3;
          break;
        case 8:
          result = 0;
          *(a1 + 95) = a3;
          break;
        case 9:
          goto LABEL_11;
        case 10:
          result = 0;
          *(a1 + 96) = a3;
          break;
        case 11:
          result = 0;
          *(a1 + 84) = a3 == 1;
          break;
        case 12:
          result = 0;
          *(a1 + 132) = a3;
          break;
        case 13:
          result = 0;
          *(a1 + 106) = a3 == 1;
          break;
        case 14:
          goto LABEL_13;
        case 15:
          goto LABEL_40;
        case 16:
          result = 0;
          *(a1 + 92) = a3;
          break;
        case 17:
          result = 0;
          *(a1 + 104) = a3;
          break;
        case 18:
          result = 0;
          *(a1 + 105) = a3;
          break;
        case 19:
          goto LABEL_36;
        case 22:
          goto LABEL_28;
        case 23:
          result = 0;
          *(a1 + 392) = a3 == 1;
          break;
        case 24:
          goto LABEL_42;
        case 25:
          goto LABEL_47;
        case 26:
          goto LABEL_9;
        case 27:
          goto LABEL_45;
        case 29:
          goto LABEL_17;
        case 30:
          result = 0;
          v7 = a3 == -1 || a3 != 0;
          *(a1 + 201) = v7;
          break;
        case 31:
          goto LABEL_6;
        case 32:
          goto LABEL_38;
        case 33:
          result = 0;
          *(a1 + 202) = a3 != 0;
          break;
        case 34:
          goto LABEL_52;
        case 35:
          result = 0;
          *(a1 + 203) = a3 != 0;
          break;
        case 36:
          result = 0;
          *(a1 + 204) = a3 != 0;
          break;
        case 37:
          result = 0;
          *(a1 + 205) = a3 != 0;
          break;
        default:
          goto LABEL_49;
      }

      return result;
    case 9:
      if ((a3 - 4) <= 0xFFFFFFFFFFFFFFFALL)
      {
        goto LABEL_3;
      }

LABEL_11:
      result = 0;
      *(a1 + 25) = a3;
      return result;
    case 14:
      if (a3 <= -2)
      {
        goto LABEL_3;
      }

LABEL_13:
      result = 0;
      a1[14] = a3;
      return result;
    case 15:
      if (a3 <= -2)
      {
        goto LABEL_3;
      }

LABEL_40:
      result = 0;
      a1[15] = a3;
      return result;
    case 19:
      if ((a3 - 3) <= 0xFFFFFFFFFFFFFFFBLL)
      {
        goto LABEL_3;
      }

LABEL_36:
      result = 0;
      *(a1 + 32) = a3;
      return result;
    case 22:
      if ((a3 - 70914) < 0xFFFFFFFFFFFEEAFDLL)
      {
        goto LABEL_3;
      }

LABEL_28:
      result = 0;
      if (a3 == -1)
      {
        *(a1 + 97) = 1024;
      }

      else
      {
        *(a1 + 97) = a3;
      }

      return result;
    case 24:
      if ((a3 - 3) <= 0xFFFFFFFFFFFFFFFBLL)
      {
        goto LABEL_3;
      }

LABEL_42:
      result = 0;
      if (a3 == -1)
      {
        *(a1 + 20) = 0;
      }

      else
      {
        *(a1 + 20) = a3;
      }

      return result;
    case 25:
      if ((a3 - 42) <= 0xFFFFFFFFFFFFFFD4)
      {
        goto LABEL_3;
      }

LABEL_47:
      result = 0;
      *(a1 + 93) = a3;
      return result;
    case 26:
      if ((a3 - 4) <= 0xFFFFFFFFFFFFFFFALL)
      {
        goto LABEL_3;
      }

LABEL_9:
      result = 0;
      *(a1 + 22) = a3;
      return result;
    case 27:
      if ((a3 - 16) <= 0xFFFFFFFFFFFFFFEELL)
      {
        goto LABEL_3;
      }

LABEL_45:
      result = 0;
      *(a1 + 70) = a3;
      return result;
    case 29:
      if ((a3 - 12) <= 0xFFFFFFFFFFFFFFF2)
      {
        goto LABEL_3;
      }

LABEL_17:
      result = 0;
      if (a3 == -1)
      {
        *(a1 + 59) = 0;
      }

      else
      {
        *(a1 + 59) = a3;
      }

      return result;
    case 31:
LABEL_6:
      if (a3 >= 2)
      {
        goto LABEL_49;
      }

      result = 0;
      *(a1 + 772) = 1;
      return result;
    case 32:
      if ((a3 - 12) <= 0xFFFFFFFFFFFFFFF2)
      {
LABEL_3:
        v4 = *a1;
        v5 = 129;
LABEL_50:
        *(v4 + 2852) = v5;
        return 1;
      }

      else
      {
LABEL_38:
        result = 0;
        *(a1 + 17) = a3;
        *(*a1 + 2872) = a3;
      }

      return result;
    case 34:
      if ((a3 - 4) <= 0xFFFFFFFFFFFFFFFALL)
      {
        goto LABEL_49;
      }

LABEL_52:
      result = 0;
      *(a1 + 105) = a3;
      return result;
    case 38:
      if (a3 >= 2)
      {
        goto LABEL_49;
      }

      result = 0;
      *(a1 + 424) = a3;
      return result;
    default:
LABEL_49:
      v4 = *a1;
      v5 = 128;
      goto LABEL_50;
  }
}

uint64_t JxlEncoderFrameSettingsSetFloatOption(float *a1, int a2, float a3)
{
  if (a2 <= 19)
  {
    if ((a2 - 6) >= 0xE && a2 == 5)
    {
      if (a3 >= 0.0)
      {
        v3 = 0;
        a1[52] = a3;
        return v3;
      }

      return 1;
    }

    goto LABEL_8;
  }

  if (a2 > 0x26)
  {
    goto LABEL_21;
  }

  if (((1 << a2) & 0x7FEFC00000) != 0)
  {
LABEL_8:
    v4 = *a1;
    v5 = 128;
LABEL_9:
    *(v4 + 2852) = v5;
    return 1;
  }

  if (a2 == 21)
  {
    if (a3 < -1.0 || a3 > 100.0)
    {
      goto LABEL_33;
    }

    v3 = 0;
    if (a3 >= -0.5)
    {
      a1[96] = a3;
    }

    else
    {
      a1[96] = 80.0;
    }

    return v3;
  }

  if (a2 == 28)
  {
    if (a3 < -1.0 || a3 > 100.0)
    {
      goto LABEL_33;
    }

    v3 = 0;
    if (a3 >= -0.5)
    {
      a1[58] = a3 * 0.01;
    }

    else
    {
      a1[58] = 0.5;
    }
  }

  else
  {
LABEL_21:
    if (a2 != 20)
    {
      goto LABEL_8;
    }

    if (a3 < -1.0 || a3 > 100.0)
    {
LABEL_33:
      v4 = *a1;
      v5 = 129;
      goto LABEL_9;
    }

    v3 = 0;
    if (a3 >= -0.5)
    {
      a1[95] = a3;
    }

    else
    {
      a1[95] = 95.0;
    }
  }

  return v3;
}

char *JxlEncoderCreate(uint64_t *a1)
{
  if (a1)
  {
    v1 = a1[1];
    if ((v1 == 0) != (a1[2] == 0))
    {
      return 0;
    }

    v4 = *a1;
    if (v1)
    {
      v3 = (a1[1])(v4, 2880, 0x10F0040FCD377E1);
    }

    else
    {
      v3 = sub_240B5BFC8(v4, 2880, 0x10F0040FCD377E1);
    }
  }

  else
  {
    v3 = sub_240B5BFC8(0, 2880, 0x10F0040FCD377E1);
  }

  v2 = v3;
  if (v3)
  {
    bzero(v3, 0xB40uLL);
    *(v2 + 5) = 0;
    *(v2 + 4) = v2;
    *(v2 + 3) = 0u;
    *(v2 + 10) = 0;
    *(v2 + 88) = 0u;
    *(v2 + 7) = 0u;
    *(v2 + 13) = v2 + 112;
    *(v2 + 8) = 0u;
    *(v2 + 9) = 0u;
    *(v2 + 154) = 0u;
    *(v2 + 196) = 0x3E800000001;
    *(v2 + 26) = 0;
    *(v2 + 27) = 0;
    *(v2 + 28) = 0;
    sub_240B5B484((v2 + 304));
    sub_240B579D4(v2 + 91);
    sub_240B5B388((v2 + 760));
    *(v2 + 250) = 0;
    *(v2 + 124) = 0u;
    sub_240B94630((v2 + 2008));
  }

  return v2;
}

void sub_240BC8554(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v7 = *v5;
  if (*v5)
  {
    v2[249] = v7;
    operator delete(v7);
  }

  sub_240B4C100((v2 + 38));
  v8 = *v4;
  if (*v4)
  {
    v2[27] = v8;
    operator delete(v8);
  }

  sub_240BA3664(v3);
  sub_240BC8D5C(va);
  sub_240BC8DB0(va);
  sub_240BC8D24(v2 + 3, 0);
  _Unwind_Resume(a1);
}

void JxlEncoderReset(uint64_t a1)
{
  sub_240BC8D24((a1 + 24), 0);
  sub_240BC61DC((a1 + 80), *(a1 + 80));
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v3 = *(a1 + 40);
  for (i = *(a1 + 48); i != v3; sub_240BC7C18(i))
  {
    i -= 2;
  }

  *(a1 + 48) = v3;
  *(a1 + 184) = 0;
  *(a1 + 2864) = 0;
  *(a1 + 2856) = 0;
  bzero(&v13, 0x690uLL);
  sub_240B5B484(&v13);
  sub_240B579D4(&v44);
  sub_240B5B388(&v47);
  *(a1 + 312) = v14;
  *(a1 + 328) = v15;
  *(a1 + 336) = v16;
  *(a1 + 344) = v17;
  *(a1 + 360) = v19;
  *(a1 + 368) = v20;
  *(a1 + 373) = *(&v20 + 5);
  v4 = *(a1 + 384);
  if (v4)
  {
    *(a1 + 392) = v4;
    operator delete(v4);
    *(a1 + 384) = 0;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
  }

  *(a1 + 384) = *__p;
  *(a1 + 400) = v22;
  __p[1] = 0;
  v22 = 0;
  __p[0] = 0;
  *(a1 + 456) = v26;
  v5 = v24;
  *(a1 + 408) = v23;
  *(a1 + 424) = v5;
  *(a1 + 440) = v25;
  v6 = v29;
  *(a1 + 472) = v27;
  *(a1 + 488) = v28;
  *(a1 + 512) = v6;
  v7 = v31;
  *(a1 + 528) = v30;
  *(a1 + 544) = v7;
  LODWORD(v7) = v32[0];
  *(a1 + 555) = *(v32 + 3);
  *(a1 + 552) = v7;
  v8 = v33;
  *(a1 + 584) = v34;
  *(a1 + 568) = v8;
  v9 = v35;
  *(a1 + 616) = v36;
  *(a1 + 600) = v9;
  *(a1 + 624) = v37;
  sub_240B4B0EC((a1 + 632));
  *(a1 + 632) = v38;
  *(a1 + 640) = v39;
  v39 = 0uLL;
  v38 = 0;
  *(a1 + 664) = v40;
  v10 = v42[0];
  *(a1 + 680) = v41;
  *(a1 + 696) = v10;
  *(a1 + 701) = *(v42 + 5);
  *(a1 + 720) = v43;
  *(a1 + 712) = v42[2];
  *(a1 + 736) = v45;
  *(a1 + 752) = v46;
  *(a1 + 768) = v48;
  v11 = v52;
  *(a1 + 816) = v51;
  *(a1 + 832) = v11;
  *(a1 + 848) = v53;
  v12 = v50;
  *(a1 + 784) = v49;
  *(a1 + 800) = v12;
  memcpy((a1 + 856), v54, 0x464uLL);
  v13 = &unk_2852A1C90;
  v55 = &v38;
  sub_240B4B18C(&v55);
  v18 = &unk_2852A1CB8;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  bzero(&v13, 0x280uLL);
  sub_240B94630(&v13);
}

void sub_240BC8D0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_240B4C100(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_240BC8D24(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return (*(result[1] + 16))(*result[1]);
  }

  return result;
}

void sub_240BC8D5C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_240BC61DC(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_240BC8DB0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 2;
        sub_240BC7C18(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *JxlEncoderDestroy(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    v7 = result[2];
    sub_240B7BB60((result + 251));
    v3 = v1[248];
    if (v3)
    {
      v1[249] = v3;
      operator delete(v3);
    }

    v1[38] = &unk_2852A1C90;
    v8 = (v1 + 79);
    sub_240B4B18C(&v8);
    v1[44] = &unk_2852A1CB8;
    v4 = v1[48];
    if (v4)
    {
      v1[49] = v4;
      operator delete(v4);
    }

    v5 = v1[26];
    if (v5)
    {
      v1[27] = v5;
      operator delete(v5);
    }

    v6 = v1[22];
    v1[22] = 0;
    if (v6)
    {
      MEMORY[0x245CCE590](v6, 0x80C402FCC0CB6);
    }

    sub_240BA3610(v1[14]);
    v8 = (v1 + 10);
    sub_240BC8D5C(&v8);
    v8 = (v1 + 5);
    sub_240BC8DB0(&v8);
    sub_240BC8D24(v1 + 3, 0);

    return v7(v2, v1);
  }

  return result;
}

uint64_t JxlEncoderUseContainer(uint64_t a1, int a2)
{
  if (*(a1 + 2864) == 1)
  {
    *(a1 + 2852) = 129;
    return 1;
  }

  else
  {
    result = 0;
    *(a1 + 297) = a2 != 0;
  }

  return result;
}

uint64_t JxlEncoderStoreJPEGMetadata(uint64_t a1, int a2)
{
  if (*(a1 + 2864) == 1)
  {
    *(a1 + 2852) = 129;
    return 1;
  }

  else
  {
    result = 0;
    *(a1 + 299) = a2 != 0;
  }

  return result;
}

uint64_t JxlEncoderSetCodestreamLevel(uint64_t a1, int a2)
{
  v2 = 1;
  v3 = 128;
  v4 = 2852;
  if ((a2 + 1) <= 0xB && ((1 << (a2 + 1)) & 0x841) != 0)
  {
    v2 = *(a1 + 2864);
    v4 = 300;
    if (*(a1 + 2864))
    {
      v4 = 2852;
      v3 = 129;
    }

    else
    {
      v3 = a2;
    }
  }

  *(a1 + v4) = v3;
  return v2;
}

__n128 JxlEncoderSetCms(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 264) = *(a2 + 32);
  *(a1 + 280) = v4;
  *(a1 + 248) = v3;
  *(a1 + 232) = result;
  *(a1 + 296) = 1;
  return result;
}

uint64_t JxlEncoderSetParallelRunner(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (a1 + 24);
  if (*(a1 + 24))
  {
    v5 = 129;
LABEL_3:
    *(a1 + 2852) = v5;
    return 1;
  }

  v9 = (*(a1 + 8))(*a1, 16, 0xC0000D1025EB5);
  if (v9)
  {
    if (a2)
    {
      v10 = a3;
    }

    else
    {
      v10 = v9;
    }

    *v9 = a2;
    v9[1] = v10;
  }

  sub_240BC8D24(v4, v9);
  *(a1 + 32) = a1;
  if (!*(a1 + 24))
  {
    v5 = 1;
    goto LABEL_3;
  }

  return 0;
}

uint64_t JxlEncoderAddJPEGFrame()
{
  v0 = MEMORY[0x28223BE20]();
  __p[227] = *MEMORY[0x277D85DE8];
  if (*(*v0 + 2865) == 1)
  {
    *(*v0 + 2852) = 129;
  }

  else
  {
    v3 = v2;
    v4 = v1;
    v5 = v0;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    __dst = 0u;
    v14 = 0u;
    sub_240B5B484(v19);
    sub_240B579D4(v20);
    sub_240B5B388(&v21);
    sub_240B309B8(&v22, v19);
    v24 = 0;
    v23 = 0u;
    sub_240BCE214(&v23);
    __p[0] = v19;
    v6 = *(&v23 + 1);
    if (*(&v23 + 1) >= v24)
    {
      v7 = sub_240BCE2D4(&v23, __p);
    }

    else
    {
      sub_240B309B8(*(&v23 + 1), v19);
      v7 = v6 + 448;
    }

    *(&v23 + 1) = v7;
    if (v3 >= 2 && *v4 == 255 && v4[1] == 216)
    {
      v8 = v23;
      while (v7 != v8)
      {
        v7 -= 448;
        sub_240BCD904(v7);
      }

      *(&v23 + 1) = v8;
      sub_240BCE214(&v23);
      __p[0] = v19;
      v9 = *(&v23 + 1);
      if (*(&v23 + 1) >= v24)
      {
        v10 = sub_240BCE2D4(&v23, __p);
      }

      else
      {
        sub_240B309B8(*(&v23 + 1), v19);
        v10 = v9 + 448;
      }

      *(&v23 + 1) = v10;
      operator new();
    }

    *(*v5 + 2852) = 4;
    sub_240BCD6EC(&__dst);
  }

  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_240BCC08C(_Unwind_Exception *a1)
{
  if (v1)
  {
    operator delete(v1);
  }

  sub_240B8D650(&STACK[0xBA0]);
  sub_240BCD6EC(&STACK[0x290]);
  _Unwind_Resume(a1);
}

void sub_240BCC2C8(void *a1, int a2)
{
  if (a2)
  {
    sub_240B2234C(a1);
  }

  JUMPOUT(0x240BCC2C0);
}

uint64_t sub_240BCC2D8(uint64_t *a1, void *a2, unint64_t *a3)
{
  v6 = *a1;
  *a2 = sub_240B57820(*a1 + 728);
  if (*(v6 + 736) == 1)
  {
    LODWORD(v7) = 8 * *(v6 + 740) + 8;
  }

  else
  {
    LODWORD(v7) = *(v6 + 744);
  }

  v7 = v7;
  *a3 = v7;
  if (*(a1 + 168))
  {
    *a2 = *(a1 + 171);
    v7 = *(a1 + 172);
    *a3 = v7;
  }

  if (*(a1 + 404) == 1)
  {
    v8 = *(a1 + 99);
    *a2 = (v8 - 1 + *a2) / v8;
    v7 = (v8 - 1 + *a3) / v8;
    *a3 = v7;
  }

  if (*a2 && v7)
  {
    return 0;
  }

  *(v6 + 2852) = 129;
  return 1;
}

uint64_t JxlEncoderAddBox(uint64_t a1, uint64_t a2, char *a3, unint64_t a4, int a5)
{
  if ((*(a1 + 298) & 1) == 0 || *(a1 + 2866) == 1 || a5 && (*a2 == 30826 ? (v11 = *(a2 + 2) == 108) : (v11 = 0), v11 || *a2 == 1685217898 || *a2 == 1651470946))
  {
    *(a1 + 2852) = 129;
    return 1;
  }

  else
  {
    v12 = (*(a1 + 8))(*a1, 40, 0x1010000AB59948ELL);
    v13 = v12;
    if (v12)
    {
      *(v12 + 32) = 0;
      *v12 = 0u;
      *(v12 + 16) = 0u;
    }

    v20[0] = v12;
    v20[1] = a1;
    *v12 = *a2;
    sub_240B51508((v12 + 8), a3, &a3[a4], a4);
    *(v13 + 32) = a5 != 0;
    v21 = 0;
    v22 = a1;
    v23 = 0;
    v24 = a1;
    v25 = 0;
    v26 = sub_240BFA4C4;
    v20[0] = 0;
    sub_240BC6990(&v23, v13);
    v24 = a1;
    v14 = *(a1 + 88);
    if (v14 >= *(a1 + 96))
    {
      v18 = sub_240BCD9E0((a1 + 80), &v21);
      v19 = v25;
      *(a1 + 88) = v18;
      ++*(a1 + 72);
      v25 = 0;
      if (v19)
      {
        (v26)(v19, v17);
      }
    }

    else
    {
      v15 = v21;
      v21 = 0;
      *v14 = v15;
      v14[1] = v22;
      v14[3] = a1;
      v16 = v23;
      v14[4] = v25;
      v23 = 0;
      v14[2] = v16;
      v14[5] = v26;
      *(a1 + 88) = v14 + 6;
      ++*(a1 + 72);
      v25 = 0;
    }

    sub_240BC6990(&v23, 0);
    sub_240BC68B8(&v21, 0);
    sub_240BC6990(v20, 0);
    return 0;
  }
}

void sub_240BCC5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_240BCDBF0(&a11);
  sub_240BC6990(&a9, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_240BCC5CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  if (a1 == a2)
  {
    *(a1 + 264) = *(a2 + 264);
  }

  else
  {
    sub_240BCDCF4((a1 + 24), *(a2 + 24), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 3));
    v5 = *(a1 + 48);
    v6 = *(a2 + 48);
    v7 = *(a2 + 56);
    v8 = v7 - v6;
    v9 = *(a1 + 64);
    if (v9 - v5 < (v7 - v6))
    {
      v10 = v8 >> 2;
      if (v5)
      {
        *(a1 + 56) = v5;
        operator delete(v5);
        v9 = 0;
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        *(a1 + 64) = 0;
      }

      if (!(v10 >> 62))
      {
        v11 = v9 >> 1;
        if (v9 >> 1 <= v10)
        {
          v11 = v8 >> 2;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v12 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        sub_240B2287C(a1 + 48, v12);
      }

      sub_240B228BC();
    }

    v13 = *(a1 + 56);
    v14 = v13 - v5;
    if (v13 - v5 >= v8)
    {
      if (v7 != v6)
      {
        memmove(*(a1 + 48), *(a2 + 48), v7 - v6);
      }

      v16 = &v5[v8];
    }

    else
    {
      v15 = &v6[v14];
      if (v13 != v5)
      {
        memmove(*(a1 + 48), *(a2 + 48), v14);
        v13 = *(a1 + 56);
      }

      if (v7 != v15)
      {
        memmove(v13, v15, v7 - v15);
      }

      v16 = &v13[v7 - v15];
    }

    *(a1 + 56) = v16;
    sub_240BCDCF4((a1 + 72), *(a2 + 72), *(a2 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 80) - *(a2 + 72)) >> 3));
    v17 = *(a1 + 96);
    v18 = *(a2 + 96);
    v19 = *(a2 + 104);
    v20 = v19 - v18;
    v21 = *(a1 + 112);
    if (v21 - v17 < (v19 - v18))
    {
      v22 = 0xF0B7672A07A44C6BLL * (v20 >> 2);
      if (v17)
      {
        *(a1 + 104) = v17;
        operator delete(v17);
        v21 = 0;
        *(a1 + 96) = 0;
        *(a1 + 104) = 0;
        *(a1 + 112) = 0;
      }

      if (v22 <= 0xF4898D5F85BB39)
      {
        v23 = 0xF0B7672A07A44C6BLL * (v21 >> 2);
        v24 = 2 * v23;
        if (2 * v23 <= v22)
        {
          v24 = 0xF0B7672A07A44C6BLL * (v20 >> 2);
        }

        if (v23 >= 0x7A44C6AFC2DD9CLL)
        {
          v25 = 0xF4898D5F85BB39;
        }

        else
        {
          v25 = v24;
        }

        sub_240B8D3FC(a1 + 96, v25);
      }

      sub_240B228BC();
    }

    v26 = *(a1 + 104);
    v27 = v26 - v17;
    if (v26 - v17 >= v20)
    {
      if (v19 != v18)
      {
        memmove(*(a1 + 96), *(a2 + 96), v20 - 3);
      }

      v30 = &v17[v20];
    }

    else
    {
      v28 = &v18[v27];
      if (v26 != v17)
      {
        memmove(*(a1 + 96), *(a2 + 96), v27 - 3);
        v26 = *(a1 + 104);
      }

      v29 = v19 - v28;
      if (v19 != v28)
      {
        memmove(v26, v28, v29 - 3);
      }

      v30 = &v26[v29];
    }

    *(a1 + 104) = v30;
    v31 = *(a1 + 120);
    v32 = *(a2 + 120);
    v33 = *(a2 + 128);
    v34 = v33 - v32;
    v35 = *(a1 + 136);
    if (v35 - v31 < (v33 - v32))
    {
      v36 = 0xF128CFC4A33F128DLL * (v34 >> 4);
      if (v31)
      {
        *(a1 + 128) = v31;
        operator delete(v31);
        v35 = 0;
        *(a1 + 120) = 0;
        *(a1 + 128) = 0;
        *(a1 + 136) = 0;
      }

      if (v36 <= 0x3B5CC0ED7303B5)
      {
        v37 = 0xF128CFC4A33F128DLL * (v35 >> 4);
        v38 = 2 * v37;
        if (2 * v37 <= v36)
        {
          v38 = 0xF128CFC4A33F128DLL * (v34 >> 4);
        }

        if (v37 >= 0x1DAE6076B981DALL)
        {
          v39 = 0x3B5CC0ED7303B5;
        }

        else
        {
          v39 = v38;
        }

        sub_240B8D34C(a1 + 120, v39);
      }

      sub_240B228BC();
    }

    v40 = *(a1 + 128);
    v41 = v40 - v31;
    if (v40 - v31 >= v34)
    {
      if (v33 != v32)
      {
        memmove(*(a1 + 120), *(a2 + 120), v34 - 3);
      }

      v44 = &v31[v34];
    }

    else
    {
      v42 = &v32[v41];
      if (v40 != v31)
      {
        memmove(*(a1 + 120), *(a2 + 120), v41 - 3);
        v40 = *(a1 + 128);
      }

      v43 = v33 - v42;
      if (v33 != v42)
      {
        memmove(v40, v42, v43 - 3);
      }

      v44 = &v40[v43];
    }

    *(a1 + 128) = v44;
    v46 = (a1 + 144);
    v45 = *(a1 + 144);
    v48 = *(a2 + 144);
    v47 = *(a2 + 152);
    v49 = v47 - v48;
    v50 = *(a1 + 160);
    if (v50 - v45 < v47 - v48)
    {
      v51 = 0xAAAAAAAAAAAAAAABLL * (v49 >> 4);
      if (v45)
      {
        sub_240B8CE44((a1 + 144));
        operator delete(*v46);
        v50 = 0;
        *v46 = 0;
        *(a1 + 152) = 0;
        *(a1 + 160) = 0;
      }

      if (v51 <= 0x555555555555555)
      {
        v52 = 0xAAAAAAAAAAAAAAABLL * (v50 >> 4);
        v53 = 2 * v52;
        if (2 * v52 <= v51)
        {
          v53 = v51;
        }

        if (v52 >= 0x2AAAAAAAAAAAAAALL)
        {
          v54 = 0x555555555555555;
        }

        else
        {
          v54 = v53;
        }

        sub_240B8D108(a1 + 144, v54);
      }

      sub_240B228BC();
    }

    v55 = *(a1 + 152) - v45;
    if (v55 >= v49)
    {
      v56 = sub_240BCE014(*(a2 + 144), *(a2 + 152), v45);
      for (i = *(a1 + 152); i != v56; i -= 48)
      {
        v58 = *(i - 24);
        if (v58)
        {
          *(i - 16) = v58;
          operator delete(v58);
        }
      }

      *(a1 + 152) = v56;
    }

    else
    {
      sub_240BCE014(*(a2 + 144), (v48 + v55), v45);
      *(a1 + 152) = sub_240B8D158(a1 + 144, (v48 + v55), v47, *(a1 + 152));
    }

    v59 = (a1 + 168);
    v60 = *(a1 + 168);
    v62 = *(a2 + 168);
    v61 = *(a2 + 176);
    v63 = v61 - v62;
    v64 = *(a1 + 184);
    if (v64 - v60 < v61 - v62)
    {
      v65 = 0xEEEEEEEEEEEEEEEFLL * (v63 >> 3);
      if (v60)
      {
        v66 = *(a1 + 176);
        v67 = *(a1 + 168);
        if (v66 != v60)
        {
          do
          {
            v66 -= 15;
            sub_240B8CE94(v66);
          }

          while (v66 != v60);
          v67 = *v59;
        }

        *(a1 + 176) = v60;
        operator delete(v67);
        v64 = 0;
        *v59 = 0;
        *(a1 + 176) = 0;
        *(a1 + 184) = 0;
      }

      if (v65 <= 0x222222222222222)
      {
        v68 = 0xEEEEEEEEEEEEEEEFLL * (v64 >> 3);
        v69 = 2 * v68;
        if (2 * v68 <= v65)
        {
          v69 = v65;
        }

        if (v68 >= 0x111111111111111)
        {
          v70 = 0x222222222222222;
        }

        else
        {
          v70 = v69;
        }

        sub_240B8CEEC(a1 + 168, v70);
      }

      sub_240B228BC();
    }

    v71 = *(a1 + 176) - v60;
    if (v71 >= v63)
    {
      v72 = sub_240BCDE68(*(a2 + 168), *(a2 + 176), *(a1 + 168));
      for (j = *(a1 + 176); j != v72; sub_240B8CE94(j))
      {
        j -= 15;
      }

      *(a1 + 176) = v72;
    }

    else
    {
      sub_240BCDE68(*(a2 + 168), v62 + v71, *(a1 + 168));
      *(a1 + 176) = sub_240B8CF3C(a1 + 168, (v62 + v71), v61, *(a1 + 176));
    }

    sub_240B28A14((a1 + 192), *(a2 + 192), *(a2 + 200), *(a2 + 200) - *(a2 + 192));
    sub_240BCDCF4((a1 + 216), *(a2 + 216), *(a2 + 224), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 224) - *(a2 + 216)) >> 3));
    sub_240B28A14((a1 + 240), *(a2 + 240), *(a2 + 248), *(a2 + 248) - *(a2 + 240));
    *(a1 + 264) = *(a2 + 264);
    sub_240B28A14((a1 + 272), *(a2 + 272), *(a2 + 280), *(a2 + 280) - *(a2 + 272));
  }

  return a1;
}

uint64_t sub_240BCCCD0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_240B86714(a1 + 8, a2 + 8);
  v4 = *(a2 + 648);
  v5 = *(a2 + 664);
  v6 = *(a2 + 680);
  *(a1 + 696) = *(a2 + 696);
  *(a1 + 664) = v5;
  *(a1 + 680) = v6;
  *(a1 + 648) = v4;
  *(a1 + 704) = 0;
  *(a1 + 720) = 0;
  *(a1 + 712) = 0;
  v7 = *(a2 + 704);
  v8 = *(a2 + 712);
  if (v8 != v7)
  {
    sub_240B871C4(a1 + 704, (v8 - v7) >> 4);
  }

  v9 = (a1 + 728);
  if (*(a2 + 751) < 0)
  {
    sub_240B4B67C(v9, *(a2 + 728), *(a2 + 736));
  }

  else
  {
    v10 = *(a2 + 728);
    *(a1 + 744) = *(a2 + 744);
    *v9 = v10;
  }

  v11 = *(a2 + 752);
  *(a1 + 768) = *(a2 + 768);
  *(a1 + 752) = v11;
  return a1;
}

void sub_240BCCDBC(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 712) = v4;
    operator delete(v4);
  }

  sub_240B7BB60(v1 + 8);
  _Unwind_Resume(a1);
}

__n128 sub_240BCCDE4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = v2;
  *(a1 + 72) = &unk_2852A1938;
  v5 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v5;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a2 + 320) = 0;
  *(a2 + 328) = 0;
  *(a2 + 312) = 0;
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0;
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a2 + 352) = 0;
  *(a2 + 360) = 0;
  *(a2 + 344) = 0;
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = 0;
  *(a1 + 376) = *(a2 + 376);
  result = *(a2 + 384);
  *(a1 + 384) = result;
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  return result;
}

double sub_240BCCFC8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 16) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 16) = 0u;
  v3 = *(a2 + 104);
  v4 = *(a2 + 120);
  v5 = *(a2 + 136);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 136) = v5;
  *(a1 + 120) = v4;
  *(a1 + 104) = v3;
  v6 = *(a2 + 168);
  v7 = *(a2 + 184);
  v8 = *(a2 + 200);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 200) = v8;
  *(a1 + 184) = v7;
  *(a1 + 168) = v6;
  v9 = *(a2 + 40);
  v10 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v10;
  *(a1 + 40) = v9;
  v11 = *(a2 + 224);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v11;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 248) = 0;
  *(a2 + 232) = 0u;
  v12 = *(a2 + 256);
  v13 = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 256) = v12;
  *(a1 + 272) = v13;
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 320) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a2 + 328) = 0;
  *(a2 + 312) = 0u;
  v14 = *(a2 + 336);
  *(a1 + 341) = *(a2 + 341);
  *(a1 + 336) = v14;
  *(a1 + 352) = *(a2 + 352);
  v15 = *(a2 + 360);
  v16 = *(a2 + 376);
  v17 = *(a2 + 392);
  *(a1 + 401) = *(a2 + 401);
  *(a1 + 376) = v16;
  *(a1 + 392) = v17;
  *(a1 + 360) = v15;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 432) = *(a2 + 432);
  *(a2 + 440) = 0;
  *(a2 + 424) = 0u;
  *(a1 + 464) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 464) = *(a2 + 464);
  *(a2 + 464) = 0;
  *(a2 + 448) = 0u;
  *(a1 + 488) = 0;
  *(a1 + 472) = 0u;
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 480) = *(a2 + 480);
  *(a2 + 488) = 0;
  *(a2 + 472) = 0u;
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = *(a2 + 512);
  *(a2 + 520) = 0;
  *(a2 + 504) = 0u;
  *(a1 + 544) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = *(a2 + 544);
  *(a2 + 544) = 0;
  *(a2 + 528) = 0u;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
  *(a2 + 568) = 0;
  *(a2 + 552) = 0u;
  *(a1 + 592) = 0;
  *(a1 + 576) = 0u;
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  *(a2 + 592) = 0;
  *(a2 + 576) = 0u;
  *(a1 + 616) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 600) = *(a2 + 600);
  *(a1 + 608) = *(a2 + 608);
  *(a2 + 616) = 0;
  *(a2 + 600) = 0u;
  v18 = *(a2 + 624);
  *(a1 + 640) = *(a2 + 640);
  *(a1 + 624) = v18;
  v19 = *(a2 + 648);
  v20 = *(a2 + 664);
  v21 = *(a2 + 680);
  *(a1 + 696) = *(a2 + 696);
  *(a1 + 664) = v20;
  *(a1 + 680) = v21;
  *(a1 + 648) = v19;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 704) = *(a2 + 704);
  *(a1 + 720) = *(a2 + 720);
  *(a2 + 720) = 0;
  *(a2 + 704) = 0u;
  v22 = *(a2 + 728);
  *(a1 + 744) = *(a2 + 744);
  *(a1 + 728) = v22;
  *(a2 + 728) = 0;
  *(a2 + 736) = 0u;
  v23 = *(a2 + 752);
  *(a1 + 768) = *(a2 + 768);
  *(a1 + 752) = v23;
  v24 = *(a2 + 792);
  v25 = *(a2 + 808);
  v26 = *(a2 + 824);
  *(a1 + 840) = *(a2 + 840);
  *(a1 + 808) = v25;
  *(a1 + 824) = v26;
  *(a1 + 792) = v24;
  *(a1 + 776) = *(a2 + 776);
  *(a1 + 848) = &unk_2852A1938;
  v27 = *(a2 + 856);
  *(a1 + 864) = *(a2 + 864);
  *(a1 + 856) = v27;
  *(a1 + 872) = 0;
  *(a1 + 880) = 0u;
  *(a1 + 872) = *(a2 + 872);
  *(a1 + 880) = *(a2 + 880);
  *(a2 + 888) = 0;
  *(a2 + 872) = 0u;
  *(a1 + 912) = 0;
  *(a1 + 896) = 0u;
  *(a1 + 896) = *(a2 + 896);
  *(a1 + 912) = *(a2 + 912);
  *(a2 + 912) = 0;
  *(a2 + 896) = 0u;
  *(a1 + 936) = 0;
  *(a1 + 920) = 0u;
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 928) = *(a2 + 928);
  *(a2 + 936) = 0;
  *(a2 + 920) = 0u;
  *(a1 + 960) = 0;
  *(a1 + 944) = 0u;
  *(a1 + 944) = *(a2 + 944);
  *(a1 + 960) = *(a2 + 960);
  *(a2 + 960) = 0;
  *(a2 + 944) = 0u;
  *(a1 + 984) = 0;
  *(a1 + 968) = 0u;
  *(a1 + 968) = *(a2 + 968);
  *(a1 + 976) = *(a2 + 976);
  *(a2 + 984) = 0;
  *(a2 + 968) = 0u;
  *(a1 + 1008) = 0;
  *(a1 + 992) = 0u;
  *(a1 + 992) = *(a2 + 992);
  *(a1 + 1008) = *(a2 + 1008);
  *(a2 + 1008) = 0;
  *(a2 + 992) = 0u;
  *(a1 + 1032) = 0;
  *(a1 + 1016) = 0u;
  *(a1 + 1016) = *(a2 + 1016);
  *(a1 + 1024) = *(a2 + 1024);
  *(a2 + 1032) = 0;
  *(a2 + 1016) = 0u;
  *(a1 + 1056) = 0;
  *(a1 + 1040) = 0u;
  *(a1 + 1040) = *(a2 + 1040);
  *(a1 + 1056) = *(a2 + 1056);
  *(a2 + 1056) = 0;
  *(a2 + 1040) = 0u;
  *(a1 + 1080) = 0;
  *(a1 + 1064) = 0u;
  *(a1 + 1064) = *(a2 + 1064);
  *(a1 + 1072) = *(a2 + 1072);
  *(a2 + 1080) = 0;
  *(a2 + 1064) = 0u;
  *(a1 + 1104) = 0;
  *(a1 + 1088) = 0u;
  *(a1 + 1088) = *(a2 + 1088);
  *(a1 + 1104) = *(a2 + 1104);
  *(a2 + 1104) = 0;
  *(a2 + 1088) = 0u;
  *(a1 + 1112) = *(a2 + 1112);
  *(a1 + 1128) = 0u;
  *(a1 + 1120) = 0;
  *(a1 + 1120) = *(a2 + 1120);
  *(a1 + 1136) = *(a2 + 1136);
  *(a2 + 1136) = 0;
  *(a2 + 1120) = 0u;
  *(a1 + 1144) = *(a2 + 1144);
  *(a1 + 1152) = 0;
  *(a1 + 1160) = 0u;
  *(a1 + 1152) = *(a2 + 1152);
  *(a1 + 1168) = *(a2 + 1168);
  *(a2 + 1168) = 0;
  *(a2 + 1152) = 0u;
  *(a1 + 1192) = 0;
  *(a1 + 1176) = 0u;
  *(a1 + 1176) = *(a2 + 1176);
  *(a1 + 1184) = *(a2 + 1184);
  *(a2 + 1192) = 0;
  *(a2 + 1176) = 0u;
  return result;
}

uint64_t sub_240BCD4F0(uint64_t a1)
{
  v2 = *(a1 + 1176);
  if (v2)
  {
    *(a1 + 1184) = v2;
    operator delete(v2);
  }

  v5 = (a1 + 1152);
  sub_240BA4110(&v5);
  sub_240B8D650(a1 + 848);
  if (*(a1 + 751) < 0)
  {
    operator delete(*(a1 + 728));
  }

  v3 = *(a1 + 704);
  if (v3)
  {
    *(a1 + 712) = v3;
    operator delete(v3);
  }

  sub_240B7BB60(a1 + 8);
  return a1;
}

void sub_240BCD56C(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8) - *a1;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_240B26918(a1, v4);
  }

  else if (!v3)
  {
    *(a1 + 8) = *a1 + a2;
  }
}

void *sub_240BCD594(_BYTE *a1, uint64_t *a2)
{
  v4 = *a2;
  if (a1[8] == 1)
  {
    *(v4 + 76) = 1;
    *(v4 + 8) = 0;
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    if (v5 != v6)
    {
      bzero(v5, v6 - v5);
    }

    *(v4 + 72) = 1;
  }

  v7 = *a1;
  v16 = 0;
  v17 = v7;
  v18 = 0;
  v19 = v7;
  v20 = 0;
  v21 = sub_240BFA4C4;
  *a2 = 0;
  sub_240BC68B8(&v16, v4);
  v8 = a2[1];
  v17 = v8;
  v9 = *a1;
  v10 = *(*a1 + 88);
  if (v10 >= *(*a1 + 96))
  {
    v14 = sub_240BCD9E0((v9 + 80), &v16);
    v11 = v20;
  }

  else
  {
    v11 = 0;
    v10[1] = v8;
    v12 = v16;
    v13 = v18;
    v16 = 0;
    *v10 = v12;
    v18 = 0;
    v10[2] = v13;
    v10[3] = v19;
    v10[4] = v20;
    v10[5] = v21;
    v14 = (v10 + 6);
  }

  *(v9 + 88) = v14;
  ++*(*a1 + 64);
  v20 = 0;
  if (v11)
  {
    v21();
  }

  sub_240BC6990(&v18, 0);
  return sub_240BC68B8(&v16, 0);
}

uint64_t sub_240BCD6EC(uint64_t a1)
{
  v11 = (a1 + 2224);
  sub_240BCD860(&v11);
  v11 = (a1 + 2192);
  sub_240B30C38(&v11);
  *(a1 + 1992) = &unk_2852A1CB8;
  v2 = *(a1 + 2024);
  if (v2)
  {
    *(a1 + 2032) = v2;
    operator delete(v2);
  }

  for (i = 1976; i != 1856; i -= 40)
  {
    sub_240B22320((a1 + i));
  }

  if (*(a1 + 1863) < 0)
  {
    operator delete(*(a1 + 1840));
  }

  v4 = *(a1 + 1776);
  *(a1 + 1776) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(a1 + 96) = &unk_2852A1C90;
  v11 = (a1 + 424);
  sub_240B4B18C(&v11);
  *(a1 + 144) = &unk_2852A1CB8;
  v5 = *(a1 + 176);
  if (v5)
  {
    *(a1 + 184) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    *(a1 + 80) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    *(a1 + 56) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    *(a1 + 32) = v8;
    operator delete(v8);
  }

  v9 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v9;
    operator delete(v9);
  }

  return a1;
}

void sub_240BCD860(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_240BCD8B4(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_240BCD8B4(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = sub_240BCD904(i))
  {
    i -= 448;
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_240BCD904(uint64_t a1)
{
  v6 = (a1 + 416);
  sub_240B30C38(&v6);
  *(a1 + 216) = &unk_2852A1CB8;
  v2 = *(a1 + 248);
  if (v2)
  {
    *(a1 + 256) = v2;
    operator delete(v2);
  }

  for (i = 200; i != 80; i -= 40)
  {
    sub_240B22320((a1 + i));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  result = *a1;
  *a1 = 0;
  if (result)
  {
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

uint64_t sub_240BCD9E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 - *a1;
  v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 4) + 1;
  if (v5 > 0x555555555555555)
  {
    sub_240B228BC();
  }

  if (0x5555555555555556 * ((a1[2] - v2) >> 4) > v5)
  {
    v5 = 0x5555555555555556 * ((a1[2] - v2) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - v2) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v7 = 0x555555555555555;
  }

  else
  {
    v7 = v5;
  }

  v24 = a1;
  if (v7)
  {
    if (v7 <= 0x555555555555555)
    {
      operator new();
    }

    sub_240B2291C();
  }

  v8 = 16 * (v4 >> 4);
  v21 = 0;
  v22 = v8;
  v9 = *a2;
  *a2 = 0;
  *v8 = v9;
  *(v8 + 8) = *(a2 + 1);
  a2[2] = 0;
  *(v8 + 24) = a2[3];
  v10 = *(a2 + 2);
  a2[4] = 0;
  *(v8 + 32) = v10;
  v23 = (v8 + 48);
  v11 = v8 - v4;
  v27 = v8 - v4;
  v28 = (v8 - v4);
  v25[0] = a1;
  v25[1] = &v27;
  v25[2] = &v28;
  if (v2 == v3)
  {
    v26 = 1;
  }

  else
  {
    v12 = (16 * (v4 >> 4) - v4);
    v13 = v2;
    do
    {
      v14 = *v13;
      *v13 = 0;
      *v12 = v14;
      v12[1] = v13[1];
      v15 = v13[2];
      v13[2] = 0;
      v12[2] = v15;
      v12[3] = v13[3];
      v16 = v13[4];
      v13[4] = 0;
      v12[4] = v16;
      v12[5] = v13[5];
      v13 += 6;
      v12 += 6;
    }

    while (v13 != v3);
    v28 = v12;
    v26 = 1;
    do
    {
      sub_240BC6B1C(v2);
      v2 += 48;
    }

    while (v2 != v3);
  }

  sub_240BCDC98(v25);
  v17 = *a1;
  *a1 = v11;
  v18 = a1[2];
  v20 = v23;
  *(a1 + 1) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  sub_240BCDC44(&v21);
  return v20;
}

void sub_240BCDBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_240BCDC98(va1);
  sub_240BCDC44(va);
  _Unwind_Resume(a1);
}

uint64_t sub_240BCDBF0(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(a1 + 40))();
  }

  sub_240BC6990((a1 + 16), 0);
  sub_240BC68B8(a1, 0);
  return a1;
}

uint64_t sub_240BCDC44(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 48;
    sub_240BC6B1C(v3 - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_240BCDC98(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 48;
      sub_240BC6B1C(v3);
    }
  }

  return a1;
}

void sub_240BCDCF4(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3) < a4)
  {
    if (v9)
    {
      sub_240B31EE0(a1);
      operator delete(*a1);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x555555555555555)
      {
        v12 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v12 = v11;
      }

      sub_240B8D4AC(a1, v12);
    }

    sub_240B228BC();
  }

  v13 = a1[1] - v9;
  if (0xAAAAAAAAAAAAAAABLL * (v13 >> 3) >= a4)
  {
    v14 = sub_240BCE1B0(a2, a3, v9);
    v15 = a1[1];
    if (v15 != v14)
    {
      v16 = a1[1];
      do
      {
        v18 = *(v16 - 3);
        v16 -= 3;
        v17 = v18;
        if (v18)
        {
          *(v15 - 2) = v17;
          operator delete(v17);
        }

        v15 = v16;
      }

      while (v16 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    sub_240BCE1B0(a2, (a2 + v13), v9);
    a1[1] = sub_240B8D4FC(a1, (a2 + v13), a3, a1[1]);
  }
}

uint64_t sub_240BCDE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a3 + 72;
    do
    {
      *(v5 - 72) = *v4;
      v6 = *(v4 + 16);
      v7 = *(v4 + 32);
      v8 = *(v4 + 48);
      *(v5 - 8) = *(v4 + 64);
      *(v5 - 24) = v8;
      *(v5 - 40) = v7;
      *(v5 - 56) = v6;
      if (v4 != v5 - 72)
      {
        sub_240B343B0(v5, *(v4 + 72), *(v4 + 80), (*(v4 + 80) - *(v4 + 72)) >> 2);
        v9 = *(v5 + 24);
        v10 = *(v4 + 96);
        v11 = *(v4 + 104);
        v12 = v11 - v10;
        v13 = *(v5 + 40);
        if (v13 - v9 < (v11 - v10))
        {
          if (v9)
          {
            *(v5 + 32) = v9;
            operator delete(v9);
            v13 = 0;
            *(v5 + 24) = 0;
            *(v5 + 32) = 0;
            *(v5 + 40) = 0;
          }

          v14 = v12 >> 3;
          if (!((v12 >> 3) >> 61))
          {
            if (v13 >> 2 > v14)
            {
              v14 = v13 >> 2;
            }

            if (v13 >= 0x7FFFFFFFFFFFFFF8)
            {
              v15 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v15 = v14;
            }

            sub_240B3C80C(v5 + 24, v15);
          }

          sub_240B228BC();
        }

        v16 = *(v5 + 32);
        v17 = v16 - v9;
        if (v16 - v9 >= v12)
        {
          if (v11 != v10)
          {
            memmove(*(v5 + 24), *(v4 + 96), v11 - v10);
          }

          v20 = &v9[v12];
        }

        else
        {
          if (v16 != v9)
          {
            memmove(*(v5 + 24), *(v4 + 96), v16 - v9);
            v16 = *(v5 + 32);
          }

          v18 = (v10 + v17);
          v19 = v11 - (v10 + v17);
          if (v19)
          {
            memmove(v16, v18, v19);
          }

          v20 = &v16[v19];
        }

        *(v5 + 32) = v20;
      }

      v4 += 120;
      v5 += 120;
    }

    while (v4 != a2);
    return v5 - 72;
  }

  return a3;
}

uint64_t sub_240BCE014(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      *(a3 + 16) = *(v5 + 2);
      *a3 = v6;
      if (v5 != a3)
      {
        sub_240BCE08C((a3 + 24), *(v5 + 3), *(v5 + 4), (*(v5 + 4) - *(v5 + 3)) >> 1);
      }

      v5 += 3;
      a3 += 48;
    }

    while (v5 != a2);
  }

  return a3;
}

void *sub_240BCE08C(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_240B8D2B8(v6, v10);
    }

    sub_240B228BC();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

char **sub_240BCE1B0(char **a1, char **a2, char **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        sub_240B28A14(a3, *v5, v5[1], v5[1] - *v5);
      }

      v5 += 3;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

void *sub_240BCE214(void *result)
{
  if (result[2] == *result)
  {
    v1 = result[1] - *result;
    v2 = result;
    operator new();
  }

  return result;
}

void sub_240BCE2C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_240BCE560(va);
  _Unwind_Resume(a1);
}

uint64_t sub_240BCE2D4(uint64_t a1, uint64_t *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 6);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x92492492492492)
  {
    sub_240B228BC();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 6) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 6);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 6)) >= 0x49249249249249)
  {
    v5 = 0x92492492492492;
  }

  else
  {
    v5 = v3;
  }

  v15 = a1;
  if (v5)
  {
    if (v5 <= 0x92492492492492)
    {
      operator new();
    }

    sub_240B2291C();
  }

  v12 = 0;
  v13 = 448 * v2;
  v14 = (448 * v2);
  sub_240B309B8(448 * v2, *a2);
  *&v14 = 448 * v2 + 448;
  v6 = *(a1 + 8);
  v7 = 448 * v2 + *a1 - v6;
  sub_240BCE4A0(a1, *a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = *(a1 + 16);
  v11 = v14;
  *(a1 + 8) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  sub_240BCE560(&v12);
  return v11;
}

void sub_240BCE428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_240BCE560(va);
  _Unwind_Resume(a1);
}

uint64_t sub_240BCE43C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_240BCE4A0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      sub_240B7B5CC(a4, v6);
      v6 += 56;
      a4 = v11 + 448;
      v11 += 448;
    }

    while (v6 != a3);
    v9 = 1;
    do
    {
      sub_240BCD904(v5);
      v5 += 448;
    }

    while (v5 != a3);
  }

  return sub_240BCE5B4(v8);
}

uint64_t sub_240BCE560(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 448;
    sub_240BCD904(v3 - 448);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_240BCE5B4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 448;
      sub_240BCD904(v3);
    }
  }

  return a1;
}

uint64_t JxlEncoderUseBoxes(uint64_t a1)
{
  if (*(a1 + 2864) == 1)
  {
    *(a1 + 2852) = 129;
    return 1;
  }

  else
  {
    result = 0;
    *(a1 + 298) = 1;
  }

  return result;
}

uint64_t JxlEncoderAddImageFrame(uint64_t *a1, __int128 *a2, uint64_t a3, unint64_t a4)
{
  v75 = 0;
  v76 = 0;
  if (sub_240BCC2D8(a1, &v76, &v75))
  {
    v8 = *a1;
    v9 = 1;
    *(v8 + 2852) = 1;
  }

  else
  {
    v11 = v75;
    v10 = v76;
    sub_240BA3EBC(v45, v76, v75, *(*a1 + 624));
    v12 = v73;
    if (*(&v73 + 1) == v73 || (v77 = *a2, v78 = *(a2 + 2), sub_240BA3FD4(v73, &v77, *&v45[0], *(&v45[0] + 1)), *v12 = a3, v12[1] = a4, (v12[6] - 1) * v12[8] + v12[7] * v12[5] > a4))
    {
      *(*a1 + 2852) = 129;
      v9 = 1;
    }

    else
    {
      v15[2] = v45[2];
      v15[3] = v45[3];
      v16 = v46;
      v15[0] = v45[0];
      v15[1] = v45[1];
      v17[0] = &unk_2852A1938;
      v17[1] = v47[1];
      v18 = v48;
      v19 = v49;
      v20 = v50;
      v49 = 0uLL;
      v21 = v51;
      v22 = v52;
      v50 = 0;
      v51 = 0uLL;
      v52 = 0;
      v23 = v53;
      v53 = 0uLL;
      v25 = v55;
      v24 = v54;
      v26 = v56;
      v54 = 0;
      v55 = 0uLL;
      v56 = 0;
      v27 = v57;
      v57 = 0uLL;
      v29 = v59;
      v28 = v58;
      v30 = v60;
      v58 = 0;
      v59 = 0uLL;
      v60 = 0;
      v31 = v61;
      v61 = 0uLL;
      v32 = v62;
      v33 = v63;
      v62 = 0;
      v63 = 0;
      v13 = v64;
      v64 = 0uLL;
      v34 = v13;
      v35 = v65;
      v65 = 0uLL;
      v36 = v66;
      v37 = v67;
      v38 = v68;
      v66 = 0;
      v67 = 0;
      v68 = 0uLL;
      v39 = v69;
      v40 = v70;
      v41 = v71;
      v70 = 0;
      v71 = 0uLL;
      v42 = v72;
      v43 = v73;
      v44 = v74;
      v73 = 0uLL;
      v74 = 0;
      v9 = sub_240BCE940(a1, v10, v11, 0, v15);
      *&v77 = &v43;
      sub_240BA4110(&v77);
      sub_240B8D650(v17);
    }

    *&v77 = &v73;
    sub_240BA4110(&v77);
    sub_240B8D650(v47);
  }

  return v9;
}

void sub_240BCE924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  sub_240BA419C(&a9);
  sub_240BA419C(&a59);
  _Unwind_Resume(a1);
}

uint64_t sub_240BCE940(_BYTE *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v5 = a5;
  v66[109] = *MEMORY[0x277D85DE8];
  *v41 = xmmword_240C85160;
  *v42 = 0;
  if (*(a5 + 64) == 1)
  {
    (*(a5 + 24))(*(a5 + 16), v41);
  }

  else
  {
    sub_240BA2B68(a5, v41);
  }

  v10 = v41[0];
  v12 = LODWORD(v41[0]) == 2 || LODWORD(v41[0]) == 4;
  v13 = *a1;
  if ((*(*a1 + 2867) & 1) == 0 || *(v13 + 2865) == 1)
  {
    goto LABEL_12;
  }

  v17 = *(v13 + 2700);
  if (LODWORD(v41[0]) > 2)
  {
    if (v17 != 3)
    {
      goto LABEL_12;
    }
  }

  else if (v17 != 1)
  {
    goto LABEL_12;
  }

  v18 = a1[8];
  if (v18 == 1 && *(v13 + 345) == 1)
  {
    goto LABEL_12;
  }

  v19 = *(v13 + 624);
  if (v12 && v19 == 0)
  {
    goto LABEL_12;
  }

  for (i = *(v13 + 632); i != *(v13 + 640); i += 96)
  {
    if (!*(i + 12))
    {
      v22 = *(i + 28) != 0;
      if (v18)
      {
        goto LABEL_31;
      }

      goto LABEL_70;
    }
  }

  v22 = 0;
  if ((v18 & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_31:
  if ((a1[772] & 1) == 0 && !*(a1 + 168) && (*(v13 + 557) & 1) == 0 && *(a1 + 16) == 9)
  {
    v23 = *(a1 + 190);
    if (v23)
    {
      if (v23 == 2 && *(a1 + 191) != *(v13 + 332))
      {
        goto LABEL_70;
      }
    }

    else if ((a1[764] & 7) != 0)
    {
      goto LABEL_70;
    }

    v24 = a1[759];
    if (v24 < 0)
    {
      v24 = *(a1 + 93);
    }

    if (!v24)
    {
      v25 = v19 == 1 && v22;
      if (v25 || !v19)
      {
        v26 = *(v13 + 332);
        if (v26 <= 0x10 && HIDWORD(v41[0]) <= 5 && ((1 << SBYTE4(v41[0])) & 0x2C) != 0)
        {
          v27 = HIDWORD(v41[0]) == 3 || HIDWORD(v41[0]) == 5;
          v28 = v27;
          if (v26 < 9 != v28)
          {
            if (SLODWORD(v41[0]) > 2)
            {
              if (LODWORD(v41[0]) == 4)
              {
                goto LABEL_69;
              }

              if (LODWORD(v41[0]) != 3)
              {
                goto LABEL_70;
              }
            }

            else if (LODWORD(v41[0]) != 1)
            {
              if (LODWORD(v41[0]) != 2)
              {
                goto LABEL_70;
              }

LABEL_69:
              if (!v22)
              {
                goto LABEL_70;
              }

              goto LABEL_65;
            }

            if (v22)
            {
              goto LABEL_70;
            }

LABEL_65:
            v29 = sub_240BA2B68;
            v30 = sub_240BA2B3C;
            v31 = sub_240BA2B1C;
            v32 = sub_240BA2AE8;
            v33 = nullsub_31;
            if (*(v5 + 64) == 1)
            {
              v29 = *(v5 + 24);
              v30 = *(v5 + 32);
              v31 = *(v5 + 40);
              v32 = *(v5 + 48);
              v33 = *(v5 + 56);
              v5 = *(v5 + 16);
            }

            if (v26 <= 8)
            {
              v57 = v5;
              v58 = v29;
              v59 = v30;
              v60 = v31;
              v61 = v32;
              v62 = v33;
              v50 = a2;
              v51 = v26;
              v49 = a3;
              v43 = LODWORD(v41[0]);
              HIBYTE(v47) = LODWORD(v41[1]) == 2;
              sub_240B22DA4(&v48, 0x10000uLL);
              sub_240BFA640(&v63);
            }

            if (v26 <= 0xD)
            {
              v57 = v5;
              v58 = v29;
              v59 = v30;
              v60 = v31;
              v61 = v32;
              v62 = v33;
              v50 = a2;
              v51 = v26;
              v49 = a3;
              v43 = LODWORD(v41[0]);
              HIBYTE(v47) = LODWORD(v41[1]) == 2;
              sub_240B22DA4(&v48, 0x10000uLL);
              sub_240BFA640(&v63);
            }

            if (v26 == 14)
            {
              v57 = v5;
              v58 = v29;
              v59 = v30;
              v60 = v31;
              v61 = v32;
              v62 = v33;
              v50 = a3;
              v51 = a2;
              v49 = LODWORD(v41[0]);
              HIBYTE(v47) = LODWORD(v41[1]) == 2;
              sub_240B22DA4(&v48, 0x10000uLL);
              sub_240BFA640(&v63);
            }

            v44[0] = v5;
            v44[1] = v29;
            v45[0] = v30;
            v45[1] = v31;
            v46[0] = v32;
            v46[1] = v33;
            v65 = v26;
            v50 = a3;
            v51 = a2;
            v49 = LODWORD(v41[0]);
            LOBYTE(v43) = LODWORD(v41[1]) == 2;
            sub_240B22DA4(&v64, 0x10000uLL);
            sub_240BFA640(&v48);
          }
        }
      }
    }
  }

LABEL_70:
  if ((a4 & 1) == 0)
  {
    v34 = sub_240BD1764(v5);
    v13 = *a1;
    if ((v34 & 1) == 0)
    {
LABEL_12:
      *(v13 + 2852) = 129;
      v14 = 1;
      goto LABEL_13;
    }
  }

  if ((*(v13 + 2868) & 1) == 0)
  {
    sub_240B29BD0(&v52);
    if (HIDWORD(v41[0]) != 5 && HIDWORD(v41[0]))
    {
      v35 = sub_240B29F18(v10 < 3);
    }

    else
    {
      v35 = sub_240B29FC8(v10 < 3);
    }

    sub_240B52CFC(&v52, v35);
    sub_240B52CFC(*a1 + 352, &v52);
    *&v52 = &unk_2852A1CB8;
    if (__p)
    {
      v54 = __p;
      operator delete(__p);
    }

    v13 = *a1;
  }

  sub_240BCCCD0(&v52, (a1 + 8));
  sub_240BCCDE4(v55, v5);
  v55[25] = 0u;
  v56 = 0;
  v36 = (*(v13 + 8))(*v13, 1200, 0x10F20006947A222);
  v37 = v36;
  if (v36)
  {
    sub_240BCCFC8(v36, &v52);
  }

  v66[0] = v37;
  v66[1] = v13;
  sub_240BCD4F0(&v52);
  v38 = *a1;
  if (v37)
  {
    v39 = *(v38 + 632);
    v40 = *(v38 + 640);
    if (v39 != v40)
    {
      do
      {
        if (!v12 || *(v39 + 12))
        {
          LOBYTE(v52) = 0;
          sub_240B290C0(v37 + 1176, &v52);
        }

        else
        {
          LOBYTE(v52) = 1;
          sub_240B290C0(v37 + 1176, &v52);
          v12 = 0;
        }

        v39 += 96;
      }

      while (v39 != v40);
      v38 = *a1;
    }

    *(v37 + 408) = *(v38 + 300);
    sub_240BCD594(a1, v66);
    v14 = 0;
  }

  else
  {
    v14 = 1;
    *(v38 + 2852) = 1;
  }

  sub_240BC68B8(v66, 0);
LABEL_13:
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_240BD1604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = STACK[0x690];
  if (STACK[0x690])
  {
    STACK[0x698] = v36;
    operator delete(v36);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240BD1764(uint64_t *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64) == 1)
  {
    v12 = 0;
    v11 = xmmword_240C85160;
    (a1[3])(a1[2], &v11);
    v10 = 0;
    v2 = (a1[4])(a1[2], 0, 0, *a1, a1[1], &v10);
    *&v15 = &unk_2852A3870;
    *(&v15 + 1) = a1 + 2;
    v17 = &v15;
    v13 = v2;
    sub_240BA271C(v14, &v15);
    sub_240BA279C(&v15);
    if (!v13)
    {
      sub_240BA281C(&v13);
      sub_240BA279C(v14);
      result = 0;
      goto LABEL_11;
    }

    v3 = a1[47];
    v15 = v11;
    v16 = v12;
    sub_240BD1A10(v3, v13, &v15, *a1, a1[1], v10);
    sub_240BA281C(&v13);
    sub_240BA279C(v14);
    if (0xAAAAAAAAAAAAAAABLL * ((a1[48] - a1[47]) >> 5) >= 2)
    {
      v4 = 1;
      v5 = 96;
      do
      {
        (a1[5])(a1[2], v4 - 1, &v11);
        v6 = (a1[6])(a1[2], v4 - 1, 0, 0, *a1, a1[1], &v10);
        *&v15 = &off_2852A3900;
        *(&v15 + 1) = a1 + 2;
        v17 = &v15;
        v13 = v6;
        sub_240BA271C(v14, &v15);
        sub_240BA279C(&v15);
        if (v13)
        {
          v7 = a1[47];
          v15 = v11;
          v16 = v12;
          sub_240BD1A10(v7 + v5, v13, &v15, *a1, a1[1], v10);
        }

        sub_240BA281C(&v13);
        sub_240BA279C(v14);
        ++v4;
        v5 += 96;
      }

      while (v4 < 0xAAAAAAAAAAAAAAABLL * ((a1[48] - a1[47]) >> 5));
    }

    *(a1 + 64) = 0;
  }

  else
  {
    sub_240BA41E0(a1[47]);
  }

  result = 1;
LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240BD19D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_240BA281C(va);
  sub_240BA279C(v6 + 8);
  _Unwind_Resume(a1);
}

void sub_240BD1A10(uint64_t a1, char *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *a3;
  v15 = *(a3 + 2);
  sub_240BA3FD4(a1, &v14, a4, a5);
  v10 = *(a1 + 72);
  *a1 = 0;
  v11 = *(a1 + 64) * a5;
  v12 = *(a1 + 80) - v10;
  if (v11 <= v12)
  {
    if (v11 < v12)
    {
      *(a1 + 80) = v10 + v11;
    }
  }

  else
  {
    sub_240B26918((a1 + 72), v11 - v12);
  }

  if (a5)
  {
    v13 = 0;
    do
    {
      memcpy((*(a1 + 72) + *(a1 + 64) * v13++), a2, *(a1 + 64));
      a2 += a6;
    }

    while (a5 != v13);
  }
}

uint64_t sub_240BD1AE0(uint64_t a1, uint64_t a2)
{
  if (sub_240B516C4(*(a2 + 8), "ZN3jxlL21GetExtraChannelBufferER26JxlChunkedFrameInputSourcemmmmmPmEUlPKvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240BD1B38(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &off_2852A3900;
  a2[1] = v2;
  return result;
}

uint64_t sub_240BD1BD8(uint64_t a1, uint64_t a2)
{
  if (sub_240B516C4(*(a2 + 8), "ZN3jxlL14GetColorBufferER26JxlChunkedFrameInputSourcemmmmPmEUlPKvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240BD1C30(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2852A3870;
  a2[1] = v2;
  return result;
}

uint64_t sub_240BD1CC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v7 = a2;
  v5[0] = &v6;
  v5[1] = &v7;
  if (!a1)
  {
    v8[0] = 0;
    v8[1] = v8;
    a1 = v8;
  }

  return sub_240BD1D0C(a1, a4, v5);
}

uint64_t sub_240BD1D0C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6[0] = sub_240B2AC64;
    v6[1] = a3;
    if (*result)
    {
      return (*result)(*(result + 8), v6, sub_240BD1DD4, sub_240BD1DBC, 0, a2);
    }

    else
    {
      v4 = 0;
      v5 = a2;
      do
      {
        result = (**a3)(**(a3 + 8), v4++);
      }

      while (v5 != v4);
    }
  }

  return result;
}

uint64_t sub_240BD1DD4(unsigned int (**a1)(uint64_t), uint64_t a2)
{
  if ((*a1)(a2))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t JxlEncoderAddChunkedFrame(uint64_t *a1, int a2, __int128 *a3)
{
  v30 = 0;
  v31[0] = 0;
  v6 = sub_240BCC2D8(a1, v31, &v30);
  v7 = *a1;
  if (v6)
  {
    v8 = 1;
    *(v7 + 2852) = 1;
  }

  else
  {
    v9 = *(v7 + 176);
    v11 = v30;
    v10 = v31[0];
    sub_240BA3EBC(&v22, v31[0], v30, *(v7 + 624));
    v12 = a3[1];
    v23 = *a3;
    v24 = v12;
    v25 = a3[2];
    v26 = 1;
    v19 = 1;
    v18[2] = v12;
    v18[3] = v25;
    v18[0] = v22;
    v18[1] = v23;
    sub_240B8C8F0(v20, v27);
    v20[296] = v27[296];
    memset(v21, 0, 24);
    v31[1] = v21;
    v32 = 0;
    if (v29 != v28)
    {
      sub_240BA42C4(v21, 0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 5));
    }

    v13 = sub_240BCE940(a1, v10, v11, v9 != 0, v18);
    v33 = v21;
    sub_240BA4110(&v33);
    sub_240B8D650(v20);
    if (v13)
    {
      v8 = 1;
    }

    else
    {
      v14 = *(*(*a1 + 88) - 48);
      if (v14)
      {
        v15 = *(v14 + 1176);
        v16 = *(v14 + 1184);
        if (v15 != v16)
        {
          memset(v15, 1, v16 - v15);
        }
      }

      if (a2)
      {
        *(*a1 + 2865) = 257;
      }

      if (v9)
      {
        v8 = JxlEncoderFlushInput(*a1);
      }

      else
      {
        v8 = 0;
      }
    }

    v33 = &v28;
    sub_240BA4110(&v33);
    sub_240B8D650(v27);
  }

  return v8;
}

uint64_t JxlEncoderFlushInput(uint64_t a1)
{
  if (*(a1 + 176))
  {
    while (*(a1 + 80) != *(a1 + 88))
    {
      if (sub_240BC2C44(a1))
      {
        return 1;
      }
    }

    return 0;
  }

  else
  {
    *(a1 + 2852) = 129;
    return 1;
  }
}

uint64_t sub_240BD2118(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v3 -= 96;
    }
  }

  return a1;
}

uint64_t JxlEncoderSetExtraChannelBuffer(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  v5 = *a1;
  if (*(*a1 + 624) > a5 && *(v5 + 2867) == 1 && (*(v5 + 2868) & 1) != 0)
  {
    v6 = *(v5 + 88);
    if (*(v5 + 80) != v6 && *(v5 + 2865) != 1)
    {
      v9 = *(v6 - 48);
      v11 = 1;
      v12 = *(a2 + 4);
      v13 = *(a2 + 20);
      if (sub_240BA403C((v9 + 776), a5 + 1, a3, a4, &v11))
      {
        result = 0;
        *(*(v9 + 1176) + a5) = 1;
        return result;
      }

      v5 = *a1;
    }
  }

  *(v5 + 2852) = 129;
  return 1;
}

uint64_t JxlEncoderSetOutputProcessor(uint64_t a1, __int128 *a2)
{
  if (!*(a1 + 136) && *(a2 + 4) && *(a2 + 1) && *(a2 + 2))
  {
    v3 = *a2;
    v4 = a2[1];
    v5 = *(a2 + 4);
    operator new();
  }

  *(a1 + 2852) = 129;
  return 1;
}

uint64_t JxlEncoderProcessOutput(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 176))
  {
    *(a1 + 2852) = 129;
    return 1;
  }

  else
  {
    *(a1 + 128) = a2;
    *(a1 + 136) = a3;
    sub_240BC25B0(a1 + 104);
    while (1)
    {
      v5 = *(a1 + 80);
      v6 = *(a1 + 88);
      if (!*a3 || v5 == v6)
      {
        break;
      }

      if (sub_240BC2C44(a1))
      {
        return 1;
      }
    }

    if (v5 == v6)
    {
      return 2 * (*(a1 + 160) < *(a1 + 152));
    }

    else
    {
      return 2;
    }
  }
}

uint64_t JxlEncoderSetFrameHeader(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 10) < 4u)
  {
    v2 = *(a2 + 11);
    if (!v2 || 0xAAAAAAAAAAAAAAABLL * ((*(*a1 + 640) - *(*a1 + 632)) >> 5) > v2)
    {
      v3 = *a2;
      v4 = a2[1];
      v5 = a2[2];
      *(a1 + 704) = *(a2 + 6);
      *(a1 + 672) = v4;
      *(a1 + 688) = v5;
      *(a1 + 656) = v3;
      MEMORY[0x245CCE410](a1 + 736, &unk_240C888E1);
      return 0;
    }

    *(*a1 + 2852) = 129;
  }

  else
  {
    *(*a1 + 2852) = 129;
  }

  return 1;
}

__n128 JxlEncoderSetExtraChannelBlendInfo(void *a1, unint64_t a2, __n128 *a3)
{
  v3 = *(*a1 + 624);
  if (v3 <= a2)
  {
    *(*a1 + 2852) = 129;
    return result;
  }

  v4 = a1[90];
  v5 = a1[89];
  v6 = v4 - v5;
  if (v3 != (v4 - v5) >> 4)
  {
    v7 = v3 - (v6 >> 4);
    if (v3 <= v6 >> 4)
    {
      if (v3 >= v6 >> 4)
      {
LABEL_17:
        v5 = a1[89];
        goto LABEL_18;
      }

      v11 = (v5 + 16 * v3);
    }

    else
    {
      v8 = a1[91];
      if (v7 > (v8 - v4) >> 4)
      {
        v9 = (v8 - v5) >> 3;
        if (v9 <= v3)
        {
          v9 = *(*a1 + 624);
        }

        if ((v8 - v5) >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_240B2D470(v10);
      }

      v11 = &v4[2 * v7];
      v12 = 16 * v3 - 16 * (v6 >> 4);
      do
      {
        *v4 = 0;
        v4[1] = 0;
        v4 += 2;
        v12 -= 16;
      }

      while (v12);
    }

    a1[90] = v11;
    goto LABEL_17;
  }

LABEL_18:
  result = *a3;
  *(v5 + 16 * a2) = *a3;
  return result;
}

uint64_t JxlEncoderSetFrameName(uint64_t a1, char *a2)
{
  if (!a2)
  {
    a2 = &unk_240C888E1;
  }

  sub_240B26AA4(&__str, a2);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0 && __str.__r_.__value_.__l.__size_ >= 0x430)
  {
    *(*a1 + 2852) = 129;
    v3 = 1;
LABEL_9:
    operator delete(__str.__r_.__value_.__l.__data_);
    return v3;
  }

  std::string::operator=((a1 + 736), &__str);
  v3 = 0;
  result = 0;
  v5 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  v6 = __str.__r_.__value_.__r.__words[1];
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  *(a1 + 664) = v6;
  if (v5 < 0)
  {
    goto LABEL_9;
  }

  return result;
}