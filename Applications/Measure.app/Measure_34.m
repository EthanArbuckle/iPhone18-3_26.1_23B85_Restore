void sub_10026108C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  sub_100006D14(va);
  sub_100006D14(va1);
  sub_1001D8BF4(v5 - 80);
  _Unwind_Resume(a1);
}

void sub_1002610B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_100006D14(va);
  sub_1001D8BF4(v17 - 80);
  _Unwind_Resume(a1);
}

void sub_1002610CC(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, double a5)
{
  sub_1002ACE7C(v47, &off_100474188);
  if (*a3 != a1)
  {
    (*(**a3 + 152))(*a3, a2, a3, a4, a5);
    goto LABEL_74;
  }

  v10 = *a2;
  if (*a2 == &qword_1004BD540 && *(a2 + 8) == 47 && (!*(a2 + 128) || *(a2 + 312) == 0.0) && a1 == &qword_1004BD540 && *(a3 + 2) == 47 && (!a3[16] || *(a3 + 39) == 0.0))
  {
    sub_100260C18(a4, 47, (a3 + 2), a2 + 16, *(a2 + 304) / *(a3 + 38));
    goto LABEL_74;
  }

  *v43 = 1124007936;
  memset(&v43[4], 0, 60);
  v44 = &v43[8];
  v45 = v46;
  v46[0] = 0;
  v46[1] = 0;
  *v39 = 1124007936;
  memset(&v39[4], 0, 60);
  v40 = &v39[8];
  v41 = v42;
  v42[0] = 0;
  v42[1] = 0;
  if (v10 == &qword_1004BD538 && (!*(a2 + 128) || *(a2 + 312) == 0.0) && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a2 + 320)), vceqzq_f64(*(a2 + 336)))))) & 1) == 0)
  {
    v16 = (a2 + 16);
    if (v43 == (a2 + 16))
    {
      goto LABEL_53;
    }

    v17 = *(a2 + 72);
    if (v17)
    {
      atomic_fetch_add((v17 + 20), 1u);
      if (*&v43[56])
      {
        if (atomic_fetch_add((*&v43[56] + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(v43);
        }
      }
    }

    *&v43[56] = 0;
    memset(&v43[16], 0, 32);
    if (*v43 <= 0)
    {
      *v43 = *v16;
    }

    else
    {
      v18 = 0;
      v19 = v44;
      do
      {
        *&v19[4 * v18++] = 0;
      }

      while (v18 < *&v43[4]);
      *v43 = *v16;
      if (*&v43[4] > 2)
      {
        goto LABEL_51;
      }
    }

    if (*(a2 + 20) <= 2)
    {
      *&v43[4] = *(a2 + 20);
      *&v43[8] = *(a2 + 24);
      v24 = *(a2 + 88);
      v25 = v45;
      *v45 = *v24;
      v25[1] = v24[1];
LABEL_52:
      v26 = *(a2 + 48);
      *&v43[16] = *(a2 + 32);
      *&v43[32] = v26;
      v27 = *(a2 + 72);
      *&v43[48] = *(a2 + 64);
      *&v43[56] = v27;
LABEL_53:
      a5 = *(a2 + 304) * a5;
      v11 = *a3;
      if (*a3 != &qword_1004BD538)
      {
        goto LABEL_12;
      }

      goto LABEL_54;
    }

LABEL_51:
    sub_100269B58(v43, a2 + 16);
    goto LABEL_52;
  }

  (*(*v10 + 24))(v10, a2, v43, 0xFFFFFFFFLL);
  v11 = *a3;
  if (*a3 != &qword_1004BD538)
  {
LABEL_12:
    if (v11 == &qword_1004BD540 && *(a3 + 2) == 47 && (!a3[16] || *(a3 + 39) == 0.0))
    {
      v12 = a3 + 2;
      if (v39 == (a3 + 2))
      {
LABEL_47:
        v23 = 42;
        a5 = a5 / *(a3 + 38);
        goto LABEL_58;
      }

      v13 = a3[9];
      if (v13)
      {
        atomic_fetch_add((v13 + 20), 1u);
      }

      if (*&v39[56] && atomic_fetch_add((*&v39[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v39);
      }

      *&v39[56] = 0;
      memset(&v39[16], 0, 32);
      if (*v39 <= 0)
      {
        *v39 = *v12;
      }

      else
      {
        v14 = 0;
        v15 = v40;
        do
        {
          *&v15[4 * v14++] = 0;
        }

        while (v14 < *&v39[4]);
        *v39 = *v12;
        if (*&v39[4] > 2)
        {
          goto LABEL_45;
        }
      }

      if (*(a3 + 5) <= 2)
      {
        *&v39[4] = *(a3 + 5);
        *&v39[8] = a3[3];
        v20 = a3[11];
        v21 = v41;
        *v41 = *v20;
        v21[1] = v20[1];
LABEL_46:
        v22 = *(a3 + 3);
        *&v39[16] = *(a3 + 2);
        *&v39[32] = v22;
        *&v39[48] = *(a3 + 4);
        goto LABEL_47;
      }

LABEL_45:
      sub_100269B58(v39, (a3 + 2));
      goto LABEL_46;
    }

    goto LABEL_57;
  }

LABEL_54:
  if (a3[16] && *(a3 + 39) != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a3 + 20)), vceqzq_f64(*(a3 + 21)))))) & 1) != 0)
  {
LABEL_57:
    (*(*v11 + 24))(v11, a3, v39, 0xFFFFFFFFLL);
    v23 = 47;
    goto LABEL_58;
  }

  v32 = a3 + 2;
  if (v39 != (a3 + 2))
  {
    v33 = a3[9];
    if (v33)
    {
      atomic_fetch_add((v33 + 20), 1u);
    }

    if (*&v39[56] && atomic_fetch_add((*&v39[56] + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v39);
    }

    *&v39[56] = 0;
    memset(&v39[16], 0, 32);
    if (*v39 <= 0)
    {
      *v39 = *v32;
    }

    else
    {
      v34 = 0;
      v35 = v40;
      do
      {
        *&v35[4 * v34++] = 0;
      }

      while (v34 < *&v39[4]);
      *v39 = *v32;
      if (*&v39[4] > 2)
      {
        goto LABEL_91;
      }
    }

    if (*(a3 + 5) <= 2)
    {
      *&v39[4] = *(a3 + 5);
      *&v39[8] = a3[3];
      v36 = a3[11];
      v37 = v41;
      *v41 = *v36;
      v37[1] = v36[1];
LABEL_92:
      v38 = *(a3 + 3);
      *&v39[16] = *(a3 + 2);
      *&v39[32] = v38;
      *&v39[48] = *(a3 + 4);
      goto LABEL_93;
    }

LABEL_91:
    sub_100269B58(v39, (a3 + 2));
    goto LABEL_92;
  }

LABEL_93:
  v23 = 47;
  a5 = a5 / *(a3 + 38);
LABEL_58:
  sub_100260C18(a4, v23, v43, v39, a5);
  if (*&v39[56] && atomic_fetch_add((*&v39[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v39);
  }

  *&v39[56] = 0;
  memset(&v39[16], 0, 32);
  if (*&v39[4] >= 1)
  {
    v28 = 0;
    v29 = v40;
    do
    {
      *&v29[4 * v28++] = 0;
    }

    while (v28 < *&v39[4]);
  }

  if (v41 != v42)
  {
    j__free(v41);
  }

  if (*&v43[56] && atomic_fetch_add((*&v43[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v43);
  }

  *&v43[56] = 0;
  memset(&v43[16], 0, 32);
  if (*&v43[4] >= 1)
  {
    v30 = 0;
    v31 = v44;
    do
    {
      *&v31[4 * v30++] = 0;
    }

    while (v30 < *&v43[4]);
  }

  if (v45 != v46)
  {
    j__free(v45);
  }

LABEL_74:
  if (v48)
  {
    sub_1002ACC1C(v47);
  }
}

void sub_100261770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_100006D14(&a9);
  sub_100006D14(&a21);
  sub_1001D8BF4(v21 - 112);
  _Unwind_Resume(a1);
}

void sub_100261794(double a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_1002ACE7C(v19, &off_1004741A8);
  LODWORD(v15[0]) = 1124007936;
  memset(v15 + 4, 0, 32);
  memset(&v15[4] + 4, 0, 28);
  v16 = &v15[1];
  v17 = v18;
  v18[0] = 0;
  v18[1] = 0;
  (*(**a3 + 24))(*a3, a3, v15, 0xFFFFFFFFLL);
  LODWORD(v11[0]) = 1124007936;
  memset(v11 + 4, 0, 48);
  v11[3] = 0u;
  v12 = v11 + 8;
  v13 = v14;
  v14[0] = 0;
  v14[1] = 0;
  sub_100260C18(a4, 47, v15, v11, a1);
  if (*(&v11[3] + 1) && atomic_fetch_add((*(&v11[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v11);
  }

  *(&v11[3] + 1) = 0;
  memset(&v11[1], 0, 32);
  if (SDWORD1(v11[0]) >= 1)
  {
    v7 = 0;
    v8 = v12;
    do
    {
      *&v8[4 * v7++] = 0;
    }

    while (v7 < SDWORD1(v11[0]));
  }

  if (v13 != v14)
  {
    j__free(v13);
  }

  if (v15[7] && atomic_fetch_add((v15[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v15);
  }

  v15[7] = 0;
  memset(&v15[2], 0, 32);
  if (SHIDWORD(v15[0]) >= 1)
  {
    v9 = 0;
    v10 = v16;
    do
    {
      *(v10 + v9++) = 0;
    }

    while (v9 < SHIDWORD(v15[0]));
  }

  if (v17 != v18)
  {
    j__free(v17);
  }

  if (v20)
  {
    sub_1002ACC1C(v19);
  }
}

void sub_100261980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_100006D14(&a9);
  sub_100006D14(&a21);
  sub_1001D8BF4(v21 - 80);
  _Unwind_Resume(a1);
}

void sub_1002619A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100006D14(va);
  sub_1001D8BF4(v13 - 80);
  _Unwind_Resume(a1);
}

void sub_1002619C0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1002ACE7C(v17, &off_1004741C8);
  LODWORD(v13[0]) = 1124007936;
  memset(v13 + 4, 0, 32);
  memset(&v13[4] + 4, 0, 28);
  v14 = &v13[1];
  v15 = v16;
  v16[0] = 0;
  v16[1] = 0;
  (*(**a2 + 24))(*a2, a2, v13, 0xFFFFFFFFLL);
  LODWORD(v9[0]) = 1124007936;
  memset(v9 + 4, 0, 48);
  v9[3] = 0u;
  v10 = v9 + 8;
  v11 = v12;
  v12[0] = 0;
  v12[1] = 0;
  sub_100260C18(a3, 97, v13, v9, 1.0);
  if (*(&v9[3] + 1) && atomic_fetch_add((*(&v9[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v9);
  }

  *(&v9[3] + 1) = 0;
  memset(&v9[1], 0, 32);
  if (SDWORD1(v9[0]) >= 1)
  {
    v5 = 0;
    v6 = v10;
    do
    {
      *&v6[4 * v5++] = 0;
    }

    while (v5 < SDWORD1(v9[0]));
  }

  if (v11 != v12)
  {
    j__free(v11);
  }

  if (v13[7] && atomic_fetch_add((v13[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v13);
  }

  v13[7] = 0;
  memset(&v13[2], 0, 32);
  if (SHIDWORD(v13[0]) >= 1)
  {
    v7 = 0;
    v8 = v14;
    do
    {
      *(v8 + v7++) = 0;
    }

    while (v7 < SHIDWORD(v13[0]));
  }

  if (v15 != v16)
  {
    j__free(v15);
  }

  if (v18)
  {
    sub_1002ACC1C(v17);
  }
}

void sub_100261BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_100006D14(&a9);
  sub_100006D14(&a21);
  sub_1001D8BF4(v21 - 64);
  _Unwind_Resume(a1);
}

void sub_100261BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100006D14(va);
  sub_1001D8BF4(v13 - 64);
  _Unwind_Resume(a1);
}

void sub_100261BE0(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1002ACE7C(v11, &off_1004741E8);
  LODWORD(v7[0]) = 1124007936;
  memset(v7 + 4, 0, 32);
  memset(&v7[4] + 4, 0, 28);
  v8 = &v7[1];
  v9 = v10;
  v10[0] = 0;
  v10[1] = 0;
  (*(**a2 + 24))(*a2, a2, v7, 0xFFFFFFFFLL);
  sub_100261D34(a3, v7, 1.0);
  if (v7[7] && atomic_fetch_add((v7[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v7);
  }

  v7[7] = 0;
  memset(&v7[2], 0, 32);
  if (SHIDWORD(v7[0]) >= 1)
  {
    v5 = 0;
    v6 = v8;
    do
    {
      *(v6 + v5++) = 0;
    }

    while (v5 < SHIDWORD(v7[0]));
  }

  if (v9 != v10)
  {
    j__free(v9);
  }

  if (v12)
  {
    sub_1002ACC1C(v11);
  }
}

void sub_100261D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100006D14(&a9);
  sub_1001D8BF4(v9 - 48);
  _Unwind_Resume(a1);
}

void sub_100261D34(uint64_t a1, uint64_t a2, double a3)
{
  LODWORD(v24[0]) = 1124007936;
  memset(v24 + 4, 0, 48);
  v24[3] = 0u;
  v25 = v24 + 8;
  v26 = v27;
  v27[0] = 0;
  v27[1] = 0;
  LODWORD(v20[0]) = 1124007936;
  memset(v20 + 4, 0, 48);
  v20[3] = 0u;
  v21 = v20 + 8;
  v22 = v23;
  v23[0] = 0;
  v23[1] = 0;
  memset(v19, 0, sizeof(v19));
  sub_1002670C8(&v28, &qword_1004BD560, 0, a2, v24, v20, v19, a3, 0.0);
  *a1 = v28;
  *(a1 + 8) = v29;
  if (&v28 != a1)
  {
    v5 = *(a1 + 72);
    if (v5 && atomic_fetch_add((v5 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 16);
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) >= 1)
    {
      v6 = 0;
      v7 = *(a1 + 80);
      do
      {
        *(v7 + 4 * v6++) = 0;
      }

      while (v6 < *(a1 + 20));
    }

    v8 = *&v30[4];
    v9 = *&v30[16];
    *(a1 + 16) = *v30;
    *(a1 + 32) = v9;
    v10 = *&v30[48];
    *(a1 + 48) = *&v30[32];
    *(a1 + 64) = v10;
    v11 = *(a1 + 88);
    if (v11 == (a1 + 96))
    {
      v12 = v32;
      if (v8 <= 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      j__free(v11);
      *(a1 + 80) = a1 + 24;
      *(a1 + 88) = a1 + 96;
      v11 = (a1 + 96);
      v12 = v32;
      if (*&v30[4] <= 2)
      {
LABEL_10:
        *v11 = *v12;
        v11[1] = v12[1];
LABEL_13:
        *v30 = 1124007936;
        v4 = 0.0;
        memset(&v30[4], 0, 60);
        goto LABEL_14;
      }
    }

    *(a1 + 80) = v31;
    *(a1 + 88) = v12;
    v31 = &v30[8];
    v32 = &v33;
    goto LABEL_13;
  }

LABEL_14:
  v13 = sub_10025DAEC(a1 + 112, v34, v4);
  sub_10025DAEC(a1 + 208, v35, v13);
  v14 = v35[7];
  *(a1 + 304) = v35[6];
  *(a1 + 320) = v14;
  *(a1 + 336) = v35[8];
  sub_100008E50(&v28);
  if (*(&v20[3] + 1) && atomic_fetch_add((*(&v20[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v20);
  }

  *(&v20[3] + 1) = 0;
  memset(&v20[1], 0, 32);
  if (SDWORD1(v20[0]) >= 1)
  {
    v15 = 0;
    v16 = v21;
    do
    {
      *&v16[4 * v15++] = 0;
    }

    while (v15 < SDWORD1(v20[0]));
  }

  if (v22 != v23)
  {
    j__free(v22);
  }

  if (*(&v24[3] + 1) && atomic_fetch_add((*(&v24[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v24);
  }

  *(&v24[3] + 1) = 0;
  memset(&v24[1], 0, 32);
  if (SDWORD1(v24[0]) >= 1)
  {
    v17 = 0;
    v18 = v25;
    do
    {
      *&v18[4 * v17++] = 0;
    }

    while (v17 < SDWORD1(v24[0]));
  }

  if (v26 != v27)
  {
    j__free(v26);
  }
}

void sub_100262010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_100006D14(va);
  sub_100006D14(va1);
  _Unwind_Resume(a1);
}

void sub_10026202C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_100008E50(&a37);
  sub_100006D14(&a13);
  sub_100006D14(&a25);
  _Unwind_Resume(a1);
}

void sub_100262050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a3 != a1)
  {
    v7 = *(**a3 + 184);

    v7();
    return;
  }

  *v50 = 1124007936;
  memset(&v50[4], 0, 60);
  v51 = &v50[8];
  v52 = v53;
  v53[0] = 0;
  v53[1] = 0;
  *v46 = 1124007936;
  memset(&v46[4], 0, 60);
  v47 = &v46[8];
  v48 = v49;
  v49[0] = 0;
  v49[1] = 0;
  v8 = *a2;
  if (*a2 == &qword_1004BD560)
  {
    v10 = *(a2 + 304);
    if (v50 == (a2 + 16))
    {
      v9 = 1;
      v11 = *a3;
      if (*a3 == &qword_1004BD560)
      {
        goto LABEL_35;
      }

      goto LABEL_11;
    }

    v12 = *(a2 + 72);
    if (v12)
    {
      atomic_fetch_add((v12 + 20), 1u);
      if (*&v50[56])
      {
        if (atomic_fetch_add((*&v50[56] + 20), 0xFFFFFFFF) == 1)
        {
          sub_100269BC8(v50);
        }
      }
    }

    *&v50[56] = 0;
    memset(&v50[16], 0, 32);
    if (*v50 <= 0)
    {
      v15 = *(a2 + 20);
      *v50 = *(a2 + 16);
      if (v15 >= 3)
      {
LABEL_28:
        sub_100269B58(v50, a2 + 16);
        v9 = 1;
        goto LABEL_34;
      }
    }

    else
    {
      v13 = 0;
      v14 = v51;
      do
      {
        *&v14[4 * v13++] = 0;
      }

      while (v13 < *&v50[4]);
      v15 = *(a2 + 20);
      *v50 = *(a2 + 16);
      if (*&v50[4] > 2 || v15 >= 3)
      {
        goto LABEL_28;
      }
    }

    v9 = 1;
LABEL_33:
    *&v50[4] = v15;
    *&v50[8] = *(a2 + 24);
    v17 = *(a2 + 88);
    v18 = v52;
    *v52 = *v17;
    v18[1] = v17[1];
    goto LABEL_34;
  }

  if (v8 != &qword_1004BD538 || *(a2 + 128) && *(a2 + 312) != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a2 + 320)), vceqzq_f64(*(a2 + 336)))))) & 1) != 0)
  {
    (*(*v8 + 24))(v8, a2, v50, 0xFFFFFFFFLL);
    v9 = 0;
    v10 = 1.0;
    v11 = *a3;
    if (*a3 != &qword_1004BD560)
    {
      goto LABEL_11;
    }

LABEL_35:
    v9 |= 2u;
    v10 = v10 * *(a3 + 304);
    if (v46 == (a3 + 16))
    {
      goto LABEL_53;
    }

    v21 = *(a3 + 72);
    if (v21)
    {
      atomic_fetch_add((v21 + 20), 1u);
    }

    if (*&v46[56] && atomic_fetch_add((*&v46[56] + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v46);
    }

    *&v46[56] = 0;
    memset(&v46[16], 0, 32);
    if (*v46 > 0)
    {
      v22 = 0;
      v23 = v47;
      do
      {
        *&v23[4 * v22++] = 0;
      }

      while (v22 < *&v46[4]);
      v24 = *(a3 + 20);
      *v46 = *(a3 + 16);
      if (*&v46[4] > 2 || v24 >= 3)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    v24 = *(a3 + 20);
    *v46 = *(a3 + 16);
    if (v24 < 3)
    {
      goto LABEL_50;
    }

LABEL_51:
    sub_100269B58(v46, a3 + 16);
    goto LABEL_52;
  }

  v10 = *(a2 + 304);
  if (v50 == (a2 + 16))
  {
    v9 = 0;
    v11 = *a3;
    if (*a3 == &qword_1004BD560)
    {
      goto LABEL_35;
    }

    goto LABEL_11;
  }

  v34 = *(a2 + 72);
  if (v34)
  {
    atomic_fetch_add((v34 + 20), 1u);
    if (*&v50[56])
    {
      if (atomic_fetch_add((*&v50[56] + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(v50);
      }
    }
  }

  *&v50[56] = 0;
  memset(&v50[16], 0, 32);
  if (*v50 > 0)
  {
    v35 = 0;
    v36 = v51;
    do
    {
      *&v36[4 * v35++] = 0;
    }

    while (v35 < *&v50[4]);
    v15 = *(a2 + 20);
    *v50 = *(a2 + 16);
    if (*&v50[4] > 2 || v15 >= 3)
    {
      goto LABEL_90;
    }

    goto LABEL_108;
  }

  v15 = *(a2 + 20);
  *v50 = *(a2 + 16);
  if (v15 < 3)
  {
LABEL_108:
    v9 = 0;
    goto LABEL_33;
  }

LABEL_90:
  sub_100269B58(v50, a2 + 16);
  v9 = 0;
LABEL_34:
  v19 = *(a2 + 32);
  *&v50[24] = *(a2 + 40);
  *&v50[40] = *(a2 + 56);
  v20 = *(a2 + 72);
  *&v50[16] = v19;
  *&v50[56] = v20;
  v11 = *a3;
  if (*a3 == &qword_1004BD560)
  {
    goto LABEL_35;
  }

LABEL_11:
  if (v11 != &qword_1004BD538 || *(a3 + 128) && *(a3 + 312) != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a3 + 320)), vceqzq_f64(*(a3 + 336)))))) & 1) != 0)
  {
    (*(*v11 + 24))(v11, a3, v46, 0xFFFFFFFFLL);
    goto LABEL_53;
  }

  v10 = v10 * *(a3 + 304);
  if (v46 != (a3 + 16))
  {
    v38 = *(a3 + 72);
    if (v38)
    {
      atomic_fetch_add((v38 + 20), 1u);
    }

    if (*&v46[56] && atomic_fetch_add((*&v46[56] + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v46);
    }

    *&v46[56] = 0;
    memset(&v46[16], 0, 32);
    if (*v46 > 0)
    {
      v39 = 0;
      v40 = v47;
      do
      {
        *&v40[4 * v39++] = 0;
      }

      while (v39 < *&v46[4]);
      v24 = *(a3 + 20);
      *v46 = *(a3 + 16);
      if (*&v46[4] > 2 || v24 >= 3)
      {
        goto LABEL_51;
      }

LABEL_50:
      *&v46[4] = v24;
      *&v46[8] = *(a3 + 24);
      v26 = *(a3 + 88);
      v27 = v48;
      *v48 = *v26;
      v27[1] = v26[1];
LABEL_52:
      *&v46[16] = *(a3 + 32);
      *&v46[24] = *(a3 + 40);
      *&v46[40] = *(a3 + 56);
      *&v46[56] = *(a3 + 72);
      goto LABEL_53;
    }

    v24 = *(a3 + 20);
    *v46 = *(a3 + 16);
    if (v24 < 3)
    {
      goto LABEL_50;
    }

    goto LABEL_51;
  }

LABEL_53:
  LODWORD(v42[0]) = 1124007936;
  memset(v42 + 4, 0, 48);
  v42[3] = 0u;
  v43 = v42 + 8;
  v44 = v45;
  v45[0] = 0;
  v45[1] = 0;
  sub_100262808(a4, v9, v50, v46, v42, v10, 1.0);
  if (*(&v42[3] + 1) && atomic_fetch_add((*(&v42[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v42);
  }

  *(&v42[3] + 1) = 0;
  memset(&v42[1], 0, 32);
  if (SDWORD1(v42[0]) >= 1)
  {
    v28 = 0;
    v29 = v43;
    do
    {
      *&v29[4 * v28++] = 0;
    }

    while (v28 < SDWORD1(v42[0]));
  }

  if (v44 != v45)
  {
    j__free(v44);
  }

  if (*&v46[56] && atomic_fetch_add((*&v46[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v46);
  }

  *&v46[56] = 0;
  memset(&v46[16], 0, 32);
  if (*&v46[4] >= 1)
  {
    v30 = 0;
    v31 = v47;
    do
    {
      *&v31[4 * v30++] = 0;
    }

    while (v30 < *&v46[4]);
  }

  if (v48 != v49)
  {
    j__free(v48);
  }

  if (*&v50[56] && atomic_fetch_add((*&v50[56] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v50);
  }

  *&v50[56] = 0;
  memset(&v50[16], 0, 32);
  if (*&v50[4] >= 1)
  {
    v32 = 0;
    v33 = v51;
    do
    {
      *&v33[4 * v32++] = 0;
    }

    while (v32 < *&v50[4]);
  }

  if (v52 != v53)
  {
    j__free(v52);
  }
}

void sub_1002627C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_100006D14(&a9);
  sub_100006D14(&a21);
  sub_100006D14(&a33);
  _Unwind_Resume(a1);
}

void sub_1002627EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_100006D14(&a21);
  sub_100006D14(&a33);
  _Unwind_Resume(a1);
}

uint64_t sub_100262808(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  memset(v20, 0, sizeof(v20));
  sub_1002670C8(&v21, &qword_1004BD550, a2, a3, a4, a5, v20, a6, a7);
  *a1 = v21;
  *(a1 + 8) = v22;
  if (&v21 != a1)
  {
    v9 = *(a1 + 72);
    if (v9 && atomic_fetch_add((v9 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 16);
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) >= 1)
    {
      v10 = 0;
      v11 = *(a1 + 80);
      do
      {
        *(v11 + 4 * v10++) = 0;
      }

      while (v10 < *(a1 + 20));
    }

    v12 = *&v23[4];
    v13 = *&v23[16];
    *(a1 + 16) = *v23;
    *(a1 + 32) = v13;
    v14 = *&v23[48];
    *(a1 + 48) = *&v23[32];
    *(a1 + 64) = v14;
    v15 = *(a1 + 88);
    if (v15 == (a1 + 96))
    {
      v16 = v25;
      if (v12 <= 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      j__free(v15);
      *(a1 + 80) = a1 + 24;
      *(a1 + 88) = a1 + 96;
      v15 = (a1 + 96);
      v16 = v25;
      if (*&v23[4] <= 2)
      {
LABEL_10:
        *v15 = *v16;
        v15[1] = v16[1];
LABEL_13:
        *v23 = 1124007936;
        v8 = 0.0;
        memset(&v23[4], 0, 60);
        goto LABEL_14;
      }
    }

    *(a1 + 80) = v24;
    *(a1 + 88) = v16;
    v24 = &v23[8];
    v25 = &v26;
    goto LABEL_13;
  }

LABEL_14:
  v17 = sub_10025DAEC(a1 + 112, v27, v8);
  sub_10025DAEC(a1 + 208, v28, v17);
  v18 = v28[7];
  *(a1 + 304) = v28[6];
  *(a1 + 320) = v18;
  *(a1 + 336) = v28[8];
  return sub_100008E50(&v21);
}

void sub_1002629AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100008E50(va);
  _Unwind_Resume(a1);
}

void sub_1002629C0(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  LODWORD(v8[0]) = 1124007936;
  memset(v8 + 4, 0, 32);
  memset(&v8[4] + 4, 0, 28);
  v9 = &v8[1];
  v10 = v11;
  v11[0] = 0;
  v11[1] = 0;
  (*(**a2 + 24))(*a2, a2, v8, 0xFFFFFFFFLL);
  sub_100262AE4(a4, a3, v8);
  if (v8[7] && atomic_fetch_add((v8[7] + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v8);
  }

  v8[7] = 0;
  memset(&v8[2], 0, 32);
  if (SHIDWORD(v8[0]) >= 1)
  {
    v6 = 0;
    v7 = v9;
    do
    {
      *(v7 + v6++) = 0;
    }

    while (v6 < SHIDWORD(v8[0]));
  }

  if (v10 != v11)
  {
    j__free(v10);
  }
}

void sub_100262AE4(uint64_t a1, int a2, uint64_t a3)
{
  LODWORD(v24[0]) = 1124007936;
  memset(v24 + 4, 0, 48);
  v24[3] = 0u;
  v25 = v24 + 8;
  v26 = v27;
  v27[0] = 0;
  v27[1] = 0;
  LODWORD(v20[0]) = 1124007936;
  memset(v20 + 4, 0, 48);
  v20[3] = 0u;
  v21 = v20 + 8;
  v22 = v23;
  v23[0] = 0;
  v23[1] = 0;
  memset(v19, 0, sizeof(v19));
  sub_1002670C8(&v28, &qword_1004BD558, a2, a3, v24, v20, v19, 1.0, 0.0);
  *a1 = v28;
  *(a1 + 8) = v29;
  if (&v28 != a1)
  {
    v5 = *(a1 + 72);
    if (v5 && atomic_fetch_add((v5 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 16);
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) >= 1)
    {
      v6 = 0;
      v7 = *(a1 + 80);
      do
      {
        *(v7 + 4 * v6++) = 0;
      }

      while (v6 < *(a1 + 20));
    }

    v8 = *&v30[4];
    v9 = *&v30[16];
    *(a1 + 16) = *v30;
    *(a1 + 32) = v9;
    v10 = *&v30[48];
    *(a1 + 48) = *&v30[32];
    *(a1 + 64) = v10;
    v11 = *(a1 + 88);
    if (v11 == (a1 + 96))
    {
      v12 = v32;
      if (v8 <= 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      j__free(v11);
      *(a1 + 80) = a1 + 24;
      *(a1 + 88) = a1 + 96;
      v11 = (a1 + 96);
      v12 = v32;
      if (*&v30[4] <= 2)
      {
LABEL_10:
        *v11 = *v12;
        v11[1] = v12[1];
LABEL_13:
        *v30 = 1124007936;
        v4 = 0.0;
        memset(&v30[4], 0, 60);
        goto LABEL_14;
      }
    }

    *(a1 + 80) = v31;
    *(a1 + 88) = v12;
    v31 = &v30[8];
    v32 = &v33;
    goto LABEL_13;
  }

LABEL_14:
  v13 = sub_10025DAEC(a1 + 112, v34, v4);
  sub_10025DAEC(a1 + 208, v35, v13);
  v14 = v35[7];
  *(a1 + 304) = v35[6];
  *(a1 + 320) = v14;
  *(a1 + 336) = v35[8];
  sub_100008E50(&v28);
  if (*(&v20[3] + 1) && atomic_fetch_add((*(&v20[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v20);
  }

  *(&v20[3] + 1) = 0;
  memset(&v20[1], 0, 32);
  if (SDWORD1(v20[0]) >= 1)
  {
    v15 = 0;
    v16 = v21;
    do
    {
      *&v16[4 * v15++] = 0;
    }

    while (v15 < SDWORD1(v20[0]));
  }

  if (v22 != v23)
  {
    j__free(v22);
  }

  if (*(&v24[3] + 1) && atomic_fetch_add((*(&v24[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v24);
  }

  *(&v24[3] + 1) = 0;
  memset(&v24[1], 0, 32);
  if (SDWORD1(v24[0]) >= 1)
  {
    v17 = 0;
    v18 = v25;
    do
    {
      *&v18[4 * v17++] = 0;
    }

    while (v17 < SDWORD1(v24[0]));
  }

  if (v26 != v27)
  {
    j__free(v26);
  }
}

void sub_100262DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_100006D14(va);
  sub_100006D14(va1);
  _Unwind_Resume(a1);
}

void sub_100262DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_100008E50(&a37);
  sub_100006D14(&a13);
  sub_100006D14(&a25);
  _Unwind_Resume(a1);
}

int32x2_t sub_100262E04@<D0>(uint64_t a1@<X1>, int32x2_t *a2@<X8>)
{
  if (!*(a1 + 32))
  {
    goto LABEL_29;
  }

  v2 = *(a1 + 20);
  if (v2 >= 3)
  {
    v4 = *(a1 + 80);
    v5 = (v4 + 4);
    v6 = 1;
    v7 = v2 & 0x7FFFFFFE;
    v8 = 1;
    do
    {
      v6 *= *(v5 - 1);
      v8 *= *v5;
      v5 += 2;
      v7 -= 2;
    }

    while (v7);
    v3 = v8 * v6;
    v9 = v2 - (v2 & 0x7FFFFFFE);
    if (v9)
    {
      v10 = (v4 + 8 * ((v2 >> 1) & 0x3FFFFFFF));
      do
      {
        v11 = *v10++;
        v3 *= v11;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    v3 = *(a1 + 28) * *(a1 + 24);
  }

  if (v2 && v3)
  {
    result = vrev64_s32(**(a1 + 80));
    *a2 = result;
  }

  else
  {
LABEL_29:
    if (*(a1 + 128))
    {
      v13 = *(a1 + 116);
      if (v13 >= 3)
      {
        v15 = *(a1 + 176);
        v16 = (v15 + 4);
        v17 = 1;
        v18 = v13 & 0x7FFFFFFE;
        v19 = 1;
        do
        {
          v17 *= *(v16 - 1);
          v19 *= *v16;
          v16 += 2;
          v18 -= 2;
        }

        while (v18);
        v14 = v19 * v17;
        v20 = v13 - (v13 & 0x7FFFFFFE);
        if (v20)
        {
          v21 = (v15 + 8 * ((v13 >> 1) & 0x3FFFFFFF));
          do
          {
            v22 = *v21++;
            v14 *= v22;
            --v20;
          }

          while (v20);
        }
      }

      else
      {
        v14 = *(a1 + 124) * *(a1 + 120);
      }

      if (v14)
      {
        v23 = v13 == 0;
      }

      else
      {
        v23 = 1;
      }

      v24 = 272;
      if (v23)
      {
        v24 = 176;
      }

      result = vrev64_s32(**(a1 + v24));
      *a2 = result;
    }

    else
    {
      result = vrev64_s32(**(a1 + 176));
      *a2 = result;
    }
  }

  return result;
}

uint64_t sub_100262F4C(uint64_t a1, uint64_t a2)
{
  sub_1002ACE7C(v27, &off_100474208);
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v3 = *(a2 + 20);
  if (v3 >= 3)
  {
    v5 = *(a2 + 80);
    v6 = (v5 + 4);
    v7 = 1;
    v8 = v3 & 0x7FFFFFFE;
    v9 = 1;
    do
    {
      v7 *= *(v6 - 1);
      v9 *= *v6;
      v6 += 2;
      v8 -= 2;
    }

    while (v8);
    v4 = v9 * v7;
    v10 = v3 - (v3 & 0x7FFFFFFE);
    if (v10)
    {
      v11 = (v5 + 8 * ((v3 >> 1) & 0x3FFFFFFF));
      do
      {
        v12 = *v11++;
        v4 *= v12;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    v4 = *(a2 + 28) * *(a2 + 24);
  }

  if (v3 && v4)
  {
    v13 = (a2 + 16);
  }

  else
  {
LABEL_12:
    v13 = (a2 + 112);
    if (*(a2 + 128))
    {
      v14 = *(a2 + 116);
      if (v14 >= 3)
      {
        v16 = *(a2 + 176);
        v17 = (v16 + 4);
        v18 = 1;
        v19 = v14 & 0x7FFFFFFE;
        v20 = 1;
        do
        {
          v18 *= *(v17 - 1);
          v20 *= *v17;
          v17 += 2;
          v19 -= 2;
        }

        while (v19);
        v15 = v20 * v18;
        v21 = v14 - (v14 & 0x7FFFFFFE);
        if (v21)
        {
          v22 = (v16 + 8 * ((v14 >> 1) & 0x3FFFFFFF));
          do
          {
            v23 = *v22++;
            v15 *= v23;
            --v21;
          }

          while (v21);
        }
      }

      else
      {
        v15 = *(a2 + 124) * *(a2 + 120);
      }

      if (v15)
      {
        v24 = v14 == 0;
      }

      else
      {
        v24 = 1;
      }

      if (!v24)
      {
        v13 = (a2 + 208);
      }
    }
  }

  v25 = *v13;
  if (v28)
  {
    sub_1002ACC1C(v27);
  }

  return v25 & 0xFFF;
}

void sub_1002630AC(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  LODWORD(v24[0]) = 1124007936;
  memset(v24 + 4, 0, 48);
  v24[3] = 0u;
  v25 = v24 + 8;
  v26 = v27;
  v27[0] = 0;
  v27[1] = 0;
  LODWORD(v20[0]) = 1124007936;
  memset(v20 + 4, 0, 48);
  v20[3] = 0u;
  v21 = v20 + 8;
  v22 = v23;
  v23[0] = 0;
  v23[1] = 0;
  sub_1002670C8(&v28, &qword_1004BD540, a2, a3, v24, v20, a4, 1.0, 0.0);
  *a1 = v28;
  *(a1 + 8) = v29;
  if (&v28 != a1)
  {
    v6 = *(a1 + 72);
    if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 16);
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) >= 1)
    {
      v7 = 0;
      v8 = *(a1 + 80);
      do
      {
        *(v8 + 4 * v7++) = 0;
      }

      while (v7 < *(a1 + 20));
    }

    v9 = *&v30[4];
    v10 = *&v30[16];
    *(a1 + 16) = *v30;
    *(a1 + 32) = v10;
    v11 = *&v30[48];
    *(a1 + 48) = *&v30[32];
    *(a1 + 64) = v11;
    v12 = *(a1 + 88);
    if (v12 == (a1 + 96))
    {
      v13 = v32;
      if (v9 <= 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      j__free(v12);
      *(a1 + 80) = a1 + 24;
      *(a1 + 88) = a1 + 96;
      v12 = (a1 + 96);
      v13 = v32;
      if (*&v30[4] <= 2)
      {
LABEL_10:
        *v12 = *v13;
        v12[1] = v13[1];
LABEL_13:
        *v30 = 1124007936;
        v5 = 0.0;
        memset(&v30[4], 0, 60);
        goto LABEL_14;
      }
    }

    *(a1 + 80) = v31;
    *(a1 + 88) = v13;
    v31 = &v30[8];
    v32 = &v33;
    goto LABEL_13;
  }

LABEL_14:
  v14 = sub_10025DAEC(a1 + 112, v34, v5);
  sub_10025DAEC(a1 + 208, v35, v14);
  v15 = v35[7];
  *(a1 + 304) = v35[6];
  *(a1 + 320) = v15;
  *(a1 + 336) = v35[8];
  sub_100008E50(&v28);
  if (*(&v20[3] + 1) && atomic_fetch_add((*(&v20[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v20);
  }

  *(&v20[3] + 1) = 0;
  memset(&v20[1], 0, 32);
  if (SDWORD1(v20[0]) >= 1)
  {
    v16 = 0;
    v17 = v21;
    do
    {
      *&v17[4 * v16++] = 0;
    }

    while (v16 < SDWORD1(v20[0]));
  }

  if (v22 != v23)
  {
    j__free(v22);
  }

  if (*(&v24[3] + 1) && atomic_fetch_add((*(&v24[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v24);
  }

  *(&v24[3] + 1) = 0;
  memset(&v24[1], 0, 32);
  if (SDWORD1(v24[0]) >= 1)
  {
    v18 = 0;
    v19 = v25;
    do
    {
      *&v19[4 * v18++] = 0;
    }

    while (v18 < SDWORD1(v24[0]));
  }

  if (v26 != v27)
  {
    j__free(v26);
  }
}

void sub_100263388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_100006D14(&a9);
  sub_100006D14(&a21);
  _Unwind_Resume(a1);
}

void sub_1002633A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_100008E50(&a33);
  sub_100006D14(&a9);
  sub_100006D14(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_1002633C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*result == &qword_1004BD560 || v2 == &qword_1004BD558)
  {
    *a2 = *(result + 24);
  }

  else if (v2 == &qword_1004BD550)
  {
    v7 = *(result + 24);
    *a2 = *(result + 124);
    *(a2 + 4) = v7;
  }

  else if (v2 == &qword_1004BD568)
  {
    v8 = *(result + 28);
    *a2 = *(result + 124);
    *(a2 + 4) = v8;
  }

  else
  {
    v4 = result;
    result = sub_100267300();
    if (result == v2)
    {
      *a2 = vrev64_s32(**(v4 + 80));
    }

    else
    {
      result = *v4;
      if (*v4)
      {
        v6 = *(*result + 200);

        return v6();
      }

      else
      {
        *a2 = 0;
      }
    }
  }

  return result;
}

uint64_t sub_100263504(uint64_t a1)
{
  sub_1002ACE7C(v6, &off_100474228);
  v2 = *a1;
  if (sub_100267300() == v2)
  {
    v4 = *(a1 + 16) & 0xFFF;
    if (!v7)
    {
      return v4;
    }

    goto LABEL_11;
  }

  v3 = *a1;
  if (*a1 == &qword_1004BD548)
  {
    v4 = 0;
    if (!v7)
    {
      return v4;
    }

    goto LABEL_11;
  }

  if (v3)
  {
    v4 = (*(*v3 + 208))(v3, a1);
    if (!v7)
    {
      return v4;
    }

    goto LABEL_11;
  }

  v4 = 0xFFFFFFFFLL;
  if (v7)
  {
LABEL_11:
    sub_1002ACC1C(v6);
  }

  return v4;
}

__n128 sub_1002635F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == -1 || (v6 = *(a2 + 16), (v6 & 0xFFF) == a4))
  {
    v7 = (a2 + 16);
    if (a2 + 16 != a3)
    {
      v8 = *(a2 + 72);
      if (v8)
      {
        atomic_fetch_add((v8 + 20), 1u);
      }

      v9 = *(a3 + 56);
      if (v9 && atomic_fetch_add((v9 + 20), 0xFFFFFFFF) == 1)
      {
        sub_100269BC8(a3);
      }

      *(a3 + 56) = 0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      if (*(a3 + 4) <= 0)
      {
        *a3 = *v7;
        v13 = *(a2 + 20);
        if (v13 <= 2)
        {
LABEL_14:
          *(a3 + 4) = v13;
          *(a3 + 8) = *(a2 + 24);
          v14 = *(a2 + 88);
          v15 = *(a3 + 72);
          *v15 = *v14;
          v15[1] = v14[1];
LABEL_21:
          *(a3 + 16) = *(a2 + 32);
          *(a3 + 32) = *(a2 + 48);
          result = *(a2 + 64);
          *(a3 + 48) = result;
          return result;
        }
      }

      else
      {
        v10 = 0;
        v11 = *(a3 + 64);
        do
        {
          *(v11 + 4 * v10++) = 0;
          v12 = *(a3 + 4);
        }

        while (v10 < v12);
        *a3 = *v7;
        if (v12 <= 2)
        {
          v13 = *(a2 + 20);
          if (v13 <= 2)
          {
            goto LABEL_14;
          }
        }
      }

      sub_100269B58(a3, a2 + 16);
      goto LABEL_21;
    }
  }

  else
  {
    if (((v6 ^ a4) & 0xFF8) != 0)
    {
      v17 = 0;
      v18 = 0;
      qmemcpy(sub_1002A80E0(&v17, 59), "((((_type) & ((512 - 1) << 3)) >> 3) + 1) == e.a.channels()", 59);
      sub_1002A8980(-215, &v17, "assign", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matop.cpp", 1238);
    }

    LODWORD(v17) = 33619968;
    v18 = a3;
    v19 = 0;
    sub_10020EF14((a2 + 16), &v17, a4, 1.0, 0.0);
  }

  return result;
}

void sub_1002637D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void sub_1002637F0(uint64_t a1, uint64_t a2, _DWORD *a3, int a4)
{
  LODWORD(v35[0]) = 1124007936;
  memset(v35 + 4, 0, 48);
  v35[3] = 0u;
  v36 = v35 + 8;
  v37 = v38;
  v5 = a3 + 4;
  v38[0] = 0;
  v38[1] = 0;
  if (a4 == -1 || (*(a2 + 16) & 0xFFF) == a4)
  {
    v6 = a3 + 4;
    v7 = a3;
    v8 = (a2 + 320);
    if (*(a2 + 128))
    {
LABEL_4:
      v10 = *(a2 + 320);
      v9 = *(a2 + 336);
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v10), vceqzq_f64(v9))))) & 1) != 0 && v10.f64[1] == 0.0 && v9.f64[0] == 0.0 && v9.f64[1] == 0.0)
      {
        v34 = 0;
        v32 = 16842752;
        v33 = (a2 + 16);
        v31 = 0;
        v29 = 16842752;
        v30 = (a2 + 112);
        v11 = *(a2 + 304);
        v12 = *(a2 + 312);
        v26 = 33619968;
        v27 = v7;
        v28 = 0;
        sub_1001DD438(&v32, &v29, &v26, -1, v11, v12, v10.f64[0]);
      }

      else
      {
        v13 = *(a2 + 304);
        v14 = *(a2 + 312);
        if (v13 == 1.0)
        {
          if (v14 == 1.0)
          {
            v34 = 0;
            v15 = a2;
            v32 = 16842752;
            v33 = (a2 + 16);
            v31 = 0;
            v29 = 16842752;
            v30 = (a2 + 112);
            v26 = 33619968;
            v27 = v7;
            v28 = 0;
            v16 = sub_100276DA4();
            sub_1001DAF28(&v32, &v29, &v26, v16, -1);
          }

          else
          {
            v34 = 0;
            if (v14 == -1.0)
            {
              v15 = a2;
              v32 = 16842752;
              v33 = (a2 + 16);
              v31 = 0;
              v29 = 16842752;
              v30 = (a2 + 112);
              v26 = 33619968;
              v27 = v7;
              v28 = 0;
              v21 = sub_100276DA4();
              sub_1001DD10C(&v32, &v29, &v26, v21, -1);
            }

            else
            {
              v32 = 16842752;
              v33 = (a2 + 112);
              v15 = a2;
              v31 = 0;
              v29 = 16842752;
              v30 = (a2 + 16);
              v26 = 33619968;
              v27 = v7;
              v28 = 0;
              sub_100244D98(&v32, &v29, &v26, v14);
            }
          }
        }

        else if (v14 == 1.0)
        {
          v34 = 0;
          if (v13 == -1.0)
          {
            v32 = 16842752;
            v33 = (a2 + 112);
            v15 = a2;
            v31 = 0;
            v29 = 16842752;
            v30 = (a2 + 16);
            v26 = 33619968;
            v27 = v7;
            v28 = 0;
            v20 = sub_100276DA4();
            sub_1001DD10C(&v32, &v29, &v26, v20, -1);
          }

          else
          {
            v15 = a2;
            v32 = 16842752;
            v33 = (a2 + 16);
            v31 = 0;
            v29 = 16842752;
            v30 = (a2 + 112);
            v26 = 33619968;
            v27 = v7;
            v28 = 0;
            sub_100244D98(&v32, &v29, &v26, v13);
          }
        }

        else
        {
          v34 = 0;
          v15 = a2;
          v32 = 16842752;
          v33 = (a2 + 16);
          v31 = 0;
          v29 = 16842752;
          v30 = (a2 + 112);
          v26 = 33619968;
          v27 = v7;
          v28 = 0;
          sub_1001DD438(&v32, &v29, &v26, -1, v13, v14, 0.0);
        }

        if (v15[41] != 0.0 || v15[42] != 0.0 || v15[43] != 0.0)
        {
          v33 = v7;
          v34 = 0;
          v32 = 16842752;
          v29 = -1056833530;
          v30 = v8;
          v31 = 0x400000001;
          v26 = 33619968;
          v27 = v7;
          v28 = 0;
          v23 = sub_100276DA4();
          sub_1001DAF28(&v32, &v29, &v26, v23, -1);
        }
      }

      goto LABEL_37;
    }
  }

  else
  {
    v7 = v35;
    v6 = &v35[1];
    v8 = (a2 + 320);
    if (*(a2 + 128))
    {
      goto LABEL_4;
    }
  }

  if (*(a2 + 328) == 0.0 && *(a2 + 336) == 0.0 && *(a2 + 344) == 0.0)
  {
    v17 = *(a2 + 304);
    if (*v6 != *v5 || fabs(v17) != 1.0)
    {
      v32 = 33619968;
      v33 = a3;
      v34 = 0;
      sub_10020EF14((a2 + 16), &v32, a4, v17, *(a2 + 320));
      goto LABEL_39;
    }

    if (v17 == 1.0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = *(a2 + 304);
    if (v17 == 1.0)
    {
LABEL_19:
      v33 = (a2 + 16);
      v34 = 0;
      v32 = 16842752;
      v29 = -1056833530;
      v30 = v8;
      v31 = 0x400000001;
      v26 = 33619968;
      v27 = v7;
      v28 = 0;
      v18 = sub_100276DA4();
      sub_1001DAF28(&v32, &v29, &v26, v18, -1);
      goto LABEL_37;
    }
  }

  if (v17 == -1.0)
  {
    v32 = -1056833530;
    v33 = v8;
    v34 = 0x400000001;
    v30 = (a2 + 16);
    v31 = 0;
    v29 = 16842752;
    v26 = 33619968;
    v27 = v7;
    v28 = 0;
    v19 = sub_100276DA4();
    sub_1001DD10C(&v32, &v29, &v26, v19, -1);
  }

  else
  {
    v32 = 33619968;
    v33 = v7;
    v34 = 0;
    sub_10020EF14((a2 + 16), &v32, *(a2 + 16) & 0xFFF, v17, 0.0);
    v33 = v7;
    v34 = 0;
    v32 = 16842752;
    v29 = -1056833530;
    v30 = v8;
    v31 = 0x400000001;
    v26 = 33619968;
    v27 = v7;
    v28 = 0;
    v22 = sub_100276DA4();
    sub_1001DAF28(&v32, &v29, &v26, v22, -1);
  }

LABEL_37:
  if (*v6 != *v5)
  {
    v32 = 33619968;
    v33 = a3;
    v34 = 0;
    sub_10020EF14(v7, &v32, *a3 & 0xFFF, 1.0, 0.0);
  }

LABEL_39:
  if (*(&v35[3] + 1) && atomic_fetch_add((*(&v35[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v35);
  }

  *(&v35[3] + 1) = 0;
  memset(&v35[1], 0, 32);
  if (SDWORD1(v35[0]) >= 1)
  {
    v24 = 0;
    v25 = v36;
    do
    {
      *&v25[4 * v24++] = 0;
    }

    while (v24 < SDWORD1(v35[0]));
  }

  if (v37 != v38)
  {
    j__free(v37);
  }
}

void sub_100263E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100263F40(uint64_t a1, uint64_t *a2, double *a3, double *a4)
{
  sub_1002ACE7C(v9, &off_100474248);
  sub_100263FF4(a4, a2);
  v7 = a4[41];
  a4[40] = *a3 + a4[40];
  a4[41] = a3[1] + v7;
  v8 = a4[43];
  a4[42] = a3[2] + a4[42];
  a4[43] = a3[3] + v8;
  if (v10)
  {
    sub_1002ACC1C(v9);
  }
}

uint64_t sub_100263FF4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  if (a1 != a2)
  {
    v5 = a2[9];
    if (v5)
    {
      atomic_fetch_add((v5 + 20), 1u);
    }

    v6 = *(a1 + 72);
    if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 16);
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) <= 0)
    {
      *(a1 + 16) = *(a2 + 4);
      v10 = *(a2 + 5);
      if (v10 <= 2)
      {
LABEL_12:
        *(a1 + 20) = v10;
        *(a1 + 24) = a2[3];
        v11 = a2[11];
        v12 = *(a1 + 88);
        *v12 = *v11;
        v12[1] = v11[1];
        goto LABEL_15;
      }
    }

    else
    {
      v7 = 0;
      v8 = *(a1 + 80);
      do
      {
        *(v8 + 4 * v7++) = 0;
        v9 = *(a1 + 20);
      }

      while (v7 < v9);
      *(a1 + 16) = *(a2 + 4);
      if (v9 <= 2)
      {
        v10 = *(a2 + 5);
        if (v10 <= 2)
        {
          goto LABEL_12;
        }
      }
    }

    sub_100269B58(a1 + 16, (a2 + 2));
LABEL_15:
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 48) = *(a2 + 3);
    *(a1 + 64) = *(a2 + 4);
    v13 = a2[21];
    if (v13)
    {
      atomic_fetch_add((v13 + 20), 1u);
    }

    v14 = *(a1 + 168);
    if (v14 && atomic_fetch_add((v14 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 112);
    }

    *(a1 + 168) = 0;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    if (*(a1 + 116) <= 0)
    {
      *(a1 + 112) = *(a2 + 28);
      v18 = *(a2 + 29);
      if (v18 <= 2)
      {
LABEL_25:
        *(a1 + 116) = v18;
        *(a1 + 120) = a2[15];
        v19 = a2[23];
        v20 = *(a1 + 184);
        *v20 = *v19;
        v20[1] = v19[1];
        goto LABEL_28;
      }
    }

    else
    {
      v15 = 0;
      v16 = *(a1 + 176);
      do
      {
        *(v16 + 4 * v15++) = 0;
        v17 = *(a1 + 116);
      }

      while (v15 < v17);
      *(a1 + 112) = *(a2 + 28);
      if (v17 <= 2)
      {
        v18 = *(a2 + 29);
        if (v18 <= 2)
        {
          goto LABEL_25;
        }
      }
    }

    sub_100269B58(a1 + 112, (a2 + 14));
LABEL_28:
    *(a1 + 128) = *(a2 + 8);
    *(a1 + 144) = *(a2 + 9);
    *(a1 + 160) = *(a2 + 10);
    v21 = a2[33];
    if (v21)
    {
      atomic_fetch_add((v21 + 20), 1u);
    }

    v22 = *(a1 + 264);
    if (v22 && atomic_fetch_add((v22 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 208);
    }

    *(a1 + 264) = 0;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    if (*(a1 + 212) <= 0)
    {
      *(a1 + 208) = *(a2 + 52);
      v26 = *(a2 + 53);
      if (v26 <= 2)
      {
LABEL_38:
        *(a1 + 212) = v26;
        *(a1 + 216) = a2[27];
        v27 = a2[35];
        v28 = *(a1 + 280);
        *v28 = *v27;
        v28[1] = v27[1];
LABEL_41:
        *(a1 + 224) = *(a2 + 14);
        *(a1 + 240) = *(a2 + 15);
        *(a1 + 256) = *(a2 + 16);
        goto LABEL_42;
      }
    }

    else
    {
      v23 = 0;
      v24 = *(a1 + 272);
      do
      {
        *(v24 + 4 * v23++) = 0;
        v25 = *(a1 + 212);
      }

      while (v23 < v25);
      *(a1 + 208) = *(a2 + 52);
      if (v25 <= 2)
      {
        v26 = *(a2 + 53);
        if (v26 <= 2)
        {
          goto LABEL_38;
        }
      }
    }

    sub_100269B58(a1 + 208, (a2 + 26));
    goto LABEL_41;
  }

LABEL_42:
  v29 = *(a2 + 19);
  v30 = *(a2 + 21);
  *(a1 + 320) = *(a2 + 20);
  *(a1 + 336) = v30;
  *(a1 + 304) = v29;
  return a1;
}

void sub_1002642FC(uint64_t a1, float64x2_t *a2, uint64_t *a3, uint64_t a4)
{
  sub_1002ACE7C(v10, &off_100474268);
  sub_100263FF4(a4, a3);
  v7 = *(a4 + 320);
  *(a4 + 304) = vnegq_f64(*(a4 + 304));
  v8 = vsubq_f64(*a2, v7);
  v9 = vsubq_f64(a2[1], *(a4 + 336));
  *(a4 + 320) = v8;
  *(a4 + 336) = v9;
  if (v11)
  {
    sub_1002ACC1C(v10);
  }
}

void sub_100264398(double a1, uint64_t a2, uint64_t *a3, float64x2_t *a4)
{
  sub_1002ACE7C(v8, &off_100474288);
  sub_100263FF4(a4, a3);
  v6 = vmulq_n_f64(a4[20], a1);
  a4[19] = vmulq_n_f64(a4[19], a1);
  a4[20] = v6;
  a4[21] = vmulq_n_f64(a4[21], a1);
  if (v9)
  {
    sub_1002ACC1C(v8);
  }
}

void sub_100264418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_10026442C(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1002ACE7C(v14, &off_1004742A8);
  if (*a3 == &qword_1004BD538 && (!*(a3 + 128) || *(a3 + 312) == 0.0) && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a3 + 320)), vceqzq_f64(*(a3 + 336)))))) & 1) == 0)
  {
    LODWORD(v10[0]) = 1124007936;
    memset(v10 + 4, 0, 48);
    v10[3] = 0u;
    v11 = v10 + 8;
    v12 = v13;
    v13[0] = 0;
    v13[1] = 0;
    sub_100260C18(a4, 47, a3 + 16, v10, a1 / *(a3 + 304));
    if (*(&v10[3] + 1) && atomic_fetch_add((*(&v10[3] + 1) + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v10);
    }

    *(&v10[3] + 1) = 0;
    memset(&v10[1], 0, 32);
    if (SDWORD1(v10[0]) >= 1)
    {
      v8 = 0;
      v9 = v11;
      do
      {
        *&v9[4 * v8++] = 0;
      }

      while (v8 < SDWORD1(v10[0]));
    }

    if (v12 != v13)
    {
      j__free(v12);
    }
  }

  else
  {
    sub_100261794(a1, v7, a3, a4);
  }

  if (v15)
  {
    sub_1002ACC1C(v14);
  }
}

void sub_10026459C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100006D14(&a9);
  sub_1001D8BF4(v9 - 48);
  _Unwind_Resume(a1);
}

void sub_1002645D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1002ACE7C(v6, &off_1004742C8);
  if (*a2 == &qword_1004BD538 && (!*(a2 + 128) || *(a2 + 312) == 0.0) && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a2 + 320)), vceqzq_f64(*(a2 + 336)))))) & 1) == 0)
  {
    sub_100261D34(a3, a2 + 16, *(a2 + 304));
  }

  else
  {
    sub_100261BE0(v5, a2, a3);
  }

  if (v7)
  {
    sub_1002ACC1C(v6);
  }
}

void sub_1002646A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1002ACE7C(v15, &off_1004742E8);
  v6 = *(a2 + 128);
  v7 = *(a2 + 304);
  v8 = *(a2 + 312);
  if (!v6 || v8 == 0.0)
  {
    if (fabs(v7) == 1.0)
    {
      v12 = vmulq_n_f64(vnegq_f64(*(a2 + 320)), v7);
      v13 = vmulq_n_f64(vnegq_f64(*(a2 + 336)), v7);
      v14[0] = v12;
      v14[1] = v13;
      sub_1002630AC(a3, 97, a2 + 16, v14);
      goto LABEL_11;
    }

    if (!v6)
    {
LABEL_7:
      sub_1002619C0(v5, a2, a3);
      goto LABEL_11;
    }
  }

  v9 = v8 + v7;
  v10 = v8 * v7;
  if (v9 != 0.0 || v10 != -1.0)
  {
    goto LABEL_7;
  }

  sub_100260C18(a3, 97, a2 + 16, a2 + 112, 1.0);
LABEL_11:
  if (v16)
  {
    sub_1002ACC1C(v15);
  }
}

void sub_100264788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002647A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_1002647B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v27[0]) = 1124007936;
  memset(v27 + 4, 0, 48);
  v27[3] = 0u;
  v28 = v27 + 8;
  v29 = v30;
  v6 = (a3 + 16);
  v30[0] = 0;
  v30[1] = 0;
  if (a4 == -1 || (*(a2 + 16) & 0xFFF) == a4)
  {
    v7 = (a3 + 16);
    v8 = a3;
    v9 = *(a2 + 8);
    if (v9 != 47)
    {
      goto LABEL_4;
    }

LABEL_13:
    if (*(a2 + 128))
    {
      v26 = 0;
      LODWORD(v24) = 16842752;
      v25 = a2 + 16;
      v23 = 0;
      v21 = 16842752;
      v22 = (a2 + 112);
      v18 = 33619968;
      v19 = v8;
      v20 = 0;
      sub_1001DD2F4(&v24, &v21, &v18, -1, *(a2 + 304));
    }

    else
    {
      v12 = *(a2 + 304);
      v25 = a2 + 16;
      v26 = 0;
      LODWORD(v24) = 16842752;
      v21 = 33619968;
      v22 = v8;
      v23 = 0;
      sub_1001DD398(&v24, &v21, -1, v12);
    }

    goto LABEL_33;
  }

  v8 = v27;
  v7 = &v27[1];
  v9 = *(a2 + 8);
  if (v9 == 47)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (v9 == 42)
  {
    v26 = 0;
    LODWORD(v24) = 16842752;
    v25 = a2 + 16;
    v23 = 0;
    v21 = 16842752;
    v22 = (a2 + 112);
    v18 = 33619968;
    v19 = v8;
    v20 = 0;
    sub_1001DD250(&v24, &v21, &v18, -1, *(a2 + 304));
    goto LABEL_33;
  }

  v10 = *(a2 + 128);
  switch(v9)
  {
    case '|':
      if (v10)
      {
        v26 = 0;
        LODWORD(v24) = 16842752;
        v25 = a2 + 16;
        v23 = 0;
        v21 = 16842752;
        v22 = (a2 + 112);
      }

      else
      {
        v25 = a2 + 16;
        v26 = 0;
        LODWORD(v24) = 16842752;
        v21 = -1056833530;
        v22 = (a2 + 320);
        v23 = 0x400000001;
      }

      v18 = 33619968;
      v19 = v8;
      v20 = 0;
      v14 = sub_100276DA4();
      sub_1001DAA7C(&v24, &v21, &v18, v14);
      break;
    case '^':
      if (v10)
      {
        v26 = 0;
        LODWORD(v24) = 16842752;
        v25 = a2 + 16;
        v23 = 0;
        v21 = 16842752;
        v22 = (a2 + 112);
      }

      else
      {
        v25 = a2 + 16;
        v26 = 0;
        LODWORD(v24) = 16842752;
        v21 = -1056833530;
        v22 = (a2 + 320);
        v23 = 0x400000001;
      }

      v18 = 33619968;
      v19 = v8;
      v20 = 0;
      v13 = sub_100276DA4();
      sub_1001DAB24(&v24, &v21, &v18, v13);
      break;
    case '&':
      if (v10)
      {
        v26 = 0;
        LODWORD(v24) = 16842752;
        v25 = a2 + 16;
        v23 = 0;
        v21 = 16842752;
        v22 = (a2 + 112);
      }

      else
      {
        v25 = a2 + 16;
        v26 = 0;
        LODWORD(v24) = 16842752;
        v21 = -1056833530;
        v22 = (a2 + 320);
        v23 = 0x400000001;
      }

      v18 = 33619968;
      v19 = v8;
      v20 = 0;
      v11 = sub_100276DA4();
      sub_1001D9360(&v24, &v21, &v18, v11);
      break;
    default:
      if (v9 == 126 && !v10)
      {
        v25 = a2 + 16;
        v26 = 0;
        LODWORD(v24) = 16842752;
        v21 = 33619968;
        v22 = v8;
        v23 = 0;
        v15 = sub_100276DA4();
        sub_1001DABCC(&v24, &v21, v15);
        break;
      }

      if (v9 <= 96)
      {
        if (v9 == 77)
        {
          sub_1001DADA0(a2 + 16, a2 + 112, v8);
          break;
        }

        if (v9 == 78)
        {
          v25 = a2 + 16;
          v26 = 0;
          LODWORD(v24) = 16842752;
          v21 = -1056833530;
          v22 = (a2 + 320);
          v23 = 0x100000001;
          v18 = 33619968;
          v19 = v8;
          v20 = 0;
          sub_1001DAC70(&v24, &v21, &v18);
          break;
        }
      }

      else
      {
        switch(v9)
        {
          case 'a':
            if (v10)
            {
              v26 = 0;
              LODWORD(v24) = 16842752;
              v25 = a2 + 16;
              v23 = 0;
              v21 = 16842752;
              v22 = (a2 + 112);
              v18 = 33619968;
              v19 = v8;
              v20 = 0;
              sub_1001DD1B4(&v24, &v21, &v18);
              goto LABEL_33;
            }

            break;
          case 'n':
            v25 = a2 + 16;
            v26 = 0;
            LODWORD(v24) = 16842752;
            v21 = -1056833530;
            v22 = (a2 + 320);
            v23 = 0x100000001;
            v18 = 33619968;
            v19 = v8;
            v20 = 0;
            sub_1001DAD08(&v24, &v21, &v18);
            goto LABEL_33;
          case 'm':
            sub_1001DAE64(a2 + 16, a2 + 112, v8);
            goto LABEL_33;
        }
      }

      if (v9 != 97 || v10)
      {
        sub_1001FA81C(&v24, "Unknown operation");
        sub_1002A8980(-2, &v24, "assign", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matop.cpp", 1408);
      }

      v25 = a2 + 16;
      v26 = 0;
      LODWORD(v24) = 16842752;
      v21 = -1056833530;
      v22 = (a2 + 320);
      v23 = 0x400000001;
      v18 = 33619968;
      v19 = v8;
      v20 = 0;
      sub_1001DD1B4(&v24, &v21, &v18);
      break;
  }

LABEL_33:
  if (*v7 != *v6)
  {
    LODWORD(v24) = 33619968;
    v25 = a3;
    v26 = 0;
    sub_10020EF14(v8, &v24, a4, 1.0, 0.0);
  }

  if (*(&v27[3] + 1) && atomic_fetch_add((*(&v27[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v27);
  }

  *(&v27[3] + 1) = 0;
  memset(&v27[1], 0, 32);
  if (SDWORD1(v27[0]) >= 1)
  {
    v16 = 0;
    v17 = v28;
    do
    {
      *&v17[4 * v16++] = 0;
    }

    while (v16 < SDWORD1(v27[0]));
  }

  if (v29 != v30)
  {
    j__free(v29);
  }
}

void sub_100264DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1002A8124(va);
  JUMPOUT(0x100264BB4);
}

void sub_100264E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100264E78(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1002ACE7C(v9, &off_100474308);
  v8 = *(a3 + 8);
  if (v8 == 47 || v8 == 42)
  {
    sub_100263FF4(a4, a3);
    *(a4 + 304) = *(a4 + 304) * a1;
  }

  else
  {
    sub_100260E98(a1, v7, a3, a4);
  }

  if (v10)
  {
    sub_1002ACC1C(v9);
  }
}

void sub_100264F28(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1002ACE7C(v16, &off_100474328);
  if (*(a3 + 8) == 47 && (!*(a3 + 128) || *(a3 + 312) == 0.0))
  {
    LODWORD(v12[0]) = 1124007936;
    memset(v12 + 4, 0, 48);
    v12[3] = 0u;
    v13 = v12 + 8;
    v14 = v15;
    v15[0] = 0;
    v15[1] = 0;
    v8 = *(a3 + 304);
    memset(v11, 0, sizeof(v11));
    sub_10025F864(a4, a3 + 16, v12, v11, a1 / v8, 0.0);
    if (*(&v12[3] + 1) && atomic_fetch_add((*(&v12[3] + 1) + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v12);
    }

    *(&v12[3] + 1) = 0;
    memset(&v12[1], 0, 32);
    if (SDWORD1(v12[0]) >= 1)
    {
      v9 = 0;
      v10 = v13;
      do
      {
        *&v10[4 * v9++] = 0;
      }

      while (v9 < SDWORD1(v12[0]));
    }

    if (v14 != v15)
    {
      j__free(v14);
    }
  }

  else
  {
    sub_100261794(a1, v7, a3, a4);
  }

  if (v17)
  {
    sub_1002ACC1C(v16);
  }
}

void sub_100265074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100006D14(va);
  sub_1001D8BF4(v5 - 48);
  _Unwind_Resume(a1);
}

void sub_1002650A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v19[0]) = 1124007936;
  v6 = v19;
  memset(v19 + 4, 0, 48);
  v19[3] = 0u;
  v20 = v19 + 8;
  v21 = v22;
  v22[0] = 0;
  v22[1] = 0;
  v7 = a4 + 1;
  if ((a4 + 1) < 2)
  {
    v6 = a3;
  }

  if (*(a2 + 128))
  {
    v18 = 0;
    v16 = 16842752;
    v17 = a2 + 16;
    v15 = 0;
    v13 = 16842752;
    v14 = a2 + 112;
  }

  else
  {
    v17 = a2 + 16;
    v18 = 0;
    v16 = 16842752;
    v13 = -1056833530;
    v14 = a2 + 304;
    v15 = 0x100000001;
  }

  v10 = 33619968;
  v11 = v6;
  v12 = 0;
  sub_1001DD540(&v16, &v13, &v10, *(a2 + 8));
  if (v7 >= 2 && *&v19[1] != *(a3 + 16))
  {
    v16 = 33619968;
    v17 = a3;
    v18 = 0;
    sub_10020EF14(v19, &v16, a4, 1.0, 0.0);
  }

  if (*(&v19[3] + 1) && atomic_fetch_add((*(&v19[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v19);
  }

  *(&v19[3] + 1) = 0;
  memset(&v19[1], 0, 32);
  if (SDWORD1(v19[0]) >= 1)
  {
    v8 = 0;
    v9 = v20;
    do
    {
      *&v9[4 * v8++] = 0;
    }

    while (v8 < SDWORD1(v19[0]));
  }

  if (v21 != v22)
  {
    j__free(v21);
  }
}

void sub_10026525C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100265270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100265284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_10026529C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v19[0]) = 1124007936;
  memset(v19 + 4, 0, 48);
  v19[3] = 0u;
  v20 = v19 + 8;
  v21 = v22;
  v7 = (a3 + 16);
  v22[0] = 0;
  v22[1] = 0;
  if (a4 == -1 || (*(a2 + 16) & 0xFFF) == a4)
  {
    v8 = (a3 + 16);
    v9 = a3;
  }

  else
  {
    v9 = v19;
    v8 = &v19[1];
  }

  v17 = a2 + 16;
  v18 = 0;
  v16 = 16842752;
  v13 = 33619968;
  v14 = v9;
  v15 = 0;
  sub_10026EF8C(&v16, &v13);
  v10 = *(a2 + 304);
  if (*v8 != *v7 || v10 != 1.0)
  {
    v16 = 33619968;
    v17 = a3;
    v18 = 0;
    sub_10020EF14(v9, &v16, a4, v10, 0.0);
  }

  if (*(&v19[3] + 1) && atomic_fetch_add((*(&v19[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v19);
  }

  *(&v19[3] + 1) = 0;
  memset(&v19[1], 0, 32);
  if (SDWORD1(v19[0]) >= 1)
  {
    v11 = 0;
    v12 = v20;
    do
    {
      *&v12[4 * v11++] = 0;
    }

    while (v11 < SDWORD1(v19[0]));
  }

  if (v21 != v22)
  {
    j__free(v21);
  }
}

void sub_100265418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100265430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100265444(double a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  sub_1002ACE7C(v7, &off_100474348);
  sub_100263FF4(a4, a3);
  *(a4 + 304) = *(a4 + 304) * a1;
  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

void sub_1002654CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1002ACE7C(v13, &off_100474368);
  v5 = *(a2 + 304);
  if (v5 == 1.0)
  {
    sub_10026562C(a3, a2 + 16);
  }

  else
  {
    LODWORD(v9[0]) = 1124007936;
    memset(v9 + 4, 0, 48);
    v9[3] = 0u;
    v10 = v9 + 8;
    v11 = v12;
    v12[0] = 0;
    v12[1] = 0;
    memset(v8, 0, sizeof(v8));
    sub_10025F864(a3, a2 + 16, v9, v8, v5, 0.0);
    if (*(&v9[3] + 1) && atomic_fetch_add((*(&v9[3] + 1) + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v9);
    }

    *(&v9[3] + 1) = 0;
    memset(&v9[1], 0, 32);
    if (SDWORD1(v9[0]) >= 1)
    {
      v6 = 0;
      v7 = v10;
      do
      {
        *&v7[4 * v6++] = 0;
      }

      while (v6 < SDWORD1(v9[0]));
    }

    if (v11 != v12)
    {
      j__free(v11);
    }
  }

  if (v14)
  {
    sub_1002ACC1C(v13);
  }
}

void sub_1002655F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100006D14(va);
  sub_1001D8BF4(v5 - 48);
  _Unwind_Resume(a1);
}

void sub_10026562C(uint64_t a1, uint64_t a2)
{
  LODWORD(v23[0]) = 1124007936;
  memset(v23 + 4, 0, 48);
  v23[3] = 0u;
  v24 = v23 + 8;
  v25 = v26;
  v26[0] = 0;
  v26[1] = 0;
  LODWORD(v19[0]) = 1124007936;
  memset(v19 + 4, 0, 48);
  v19[3] = 0u;
  v20 = v19 + 8;
  v21 = v22;
  v22[0] = 0;
  v22[1] = 0;
  memset(v18, 0, sizeof(v18));
  sub_1002670C8(&v27, &qword_1004BD530, 0, a2, v23, v19, v18, 1.0, 0.0);
  *a1 = v27;
  *(a1 + 8) = v28;
  if (&v27 != a1)
  {
    v4 = *(a1 + 72);
    if (v4 && atomic_fetch_add((v4 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 16);
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) >= 1)
    {
      v5 = 0;
      v6 = *(a1 + 80);
      do
      {
        *(v6 + 4 * v5++) = 0;
      }

      while (v5 < *(a1 + 20));
    }

    v7 = *&v29[4];
    v8 = *&v29[16];
    *(a1 + 16) = *v29;
    *(a1 + 32) = v8;
    v9 = *&v29[48];
    *(a1 + 48) = *&v29[32];
    *(a1 + 64) = v9;
    v10 = *(a1 + 88);
    if (v10 == (a1 + 96))
    {
      v11 = v31;
      if (v7 <= 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      j__free(v10);
      *(a1 + 80) = a1 + 24;
      *(a1 + 88) = a1 + 96;
      v10 = (a1 + 96);
      v11 = v31;
      if (*&v29[4] <= 2)
      {
LABEL_10:
        *v10 = *v11;
        v10[1] = v11[1];
LABEL_13:
        *v29 = 1124007936;
        v3 = 0.0;
        memset(&v29[4], 0, 60);
        goto LABEL_14;
      }
    }

    *(a1 + 80) = v30;
    *(a1 + 88) = v11;
    v30 = &v29[8];
    v31 = &v32;
    goto LABEL_13;
  }

LABEL_14:
  v12 = sub_10025DAEC(a1 + 112, v33, v3);
  sub_10025DAEC(a1 + 208, v34, v12);
  v13 = v34[7];
  *(a1 + 304) = v34[6];
  *(a1 + 320) = v13;
  *(a1 + 336) = v34[8];
  sub_100008E50(&v27);
  if (*(&v19[3] + 1) && atomic_fetch_add((*(&v19[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v19);
  }

  *(&v19[3] + 1) = 0;
  memset(&v19[1], 0, 32);
  if (SDWORD1(v19[0]) >= 1)
  {
    v14 = 0;
    v15 = v20;
    do
    {
      *&v15[4 * v14++] = 0;
    }

    while (v14 < SDWORD1(v19[0]));
  }

  if (v21 != v22)
  {
    j__free(v21);
  }

  if (*(&v23[3] + 1) && atomic_fetch_add((*(&v23[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v23);
  }

  *(&v23[3] + 1) = 0;
  memset(&v23[1], 0, 32);
  if (SDWORD1(v23[0]) >= 1)
  {
    v16 = 0;
    v17 = v24;
    do
    {
      *&v17[4 * v16++] = 0;
    }

    while (v16 < SDWORD1(v23[0]));
  }

  if (v25 != v26)
  {
    j__free(v25);
  }
}

void sub_10026590C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_100006D14(va);
  sub_100006D14(va1);
  _Unwind_Resume(a1);
}

void sub_100265928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_100008E50(&a37);
  sub_100006D14(&a13);
  sub_100006D14(&a25);
  _Unwind_Resume(a1);
}

void sub_10026594C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v25[0]) = 1124007936;
  memset(v25 + 4, 0, 48);
  v25[3] = 0u;
  v26 = v25 + 8;
  v27 = v28;
  v6 = (a3 + 16);
  v28[0] = 0;
  v28[1] = 0;
  if (a4 == -1 || (*(a2 + 16) & 0xFFF) == a4)
  {
    v7 = (a3 + 16);
    v8 = a3;
  }

  else
  {
    v8 = v25;
    v7 = &v25[1];
  }

  v24 = 0;
  v22 = 16842752;
  v23 = a2 + 16;
  v21 = 0;
  v19 = 16842752;
  v20 = a2 + 112;
  v18 = 0;
  v16 = 16842752;
  v17 = a2 + 208;
  v9 = *(a2 + 304);
  v10 = *(a2 + 312);
  v13 = 33619968;
  v14 = v8;
  v15 = 0;
  sub_100243EB0(&v22, &v19, &v16, &v13, *(a2 + 8), v9, v10);
  if (*v7 != *v6)
  {
    v22 = 33619968;
    v23 = a3;
    v24 = 0;
    sub_10020EF14(v8, &v22, a4, 1.0, 0.0);
  }

  if (*(&v25[3] + 1) && atomic_fetch_add((*(&v25[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v25);
  }

  *(&v25[3] + 1) = 0;
  memset(&v25[1], 0, 32);
  if (SDWORD1(v25[0]) >= 1)
  {
    v11 = 0;
    v12 = v26;
    do
    {
      *&v12[4 * v11++] = 0;
    }

    while (v11 < SDWORD1(v25[0]));
  }

  if (v27 != v28)
  {
    j__free(v27);
  }
}

void sub_100265AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100265B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100265B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1002ACE7C(v15, &off_100474388);
  v8 = *a2;
  v9 = *a3;
  v10 = *(a2 + 304);
  v11 = 1.0;
  if (*a2 == &qword_1004BD530)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = *(a2 + 304);
  }

  v13 = *(a3 + 304);
  if (v9 != &qword_1004BD530)
  {
    v11 = *(a3 + 304);
  }

  if (v8 != &qword_1004BD550 || *(a2 + 224) && *(a2 + 312) != 0.0)
  {
    goto LABEL_9;
  }

  if (v9 == &qword_1004BD530)
  {
    goto LABEL_26;
  }

  if (v9 == &qword_1004BD538)
  {
    if (*(a3 + 128) && *(a3 + 312) != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a3 + 320)), vceqzq_f64(*(a3 + 336)))))) & 1) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

  if (v9 == &qword_1004BD560)
  {
LABEL_26:
    v14 = a2;
    goto LABEL_31;
  }

LABEL_9:
  if (v9 != &qword_1004BD550 || *(a3 + 224) && *(a3 + 312) != 0.0)
  {
    goto LABEL_12;
  }

  if (v8 != &qword_1004BD530)
  {
    if (v8 == &qword_1004BD538)
    {
      if (*(a2 + 128) && *(a2 + 312) != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a2 + 320)), vceqzq_f64(*(a2 + 336)))))) & 1) != 0)
      {
        goto LABEL_12;
      }
    }

    else if (v8 != &qword_1004BD560)
    {
LABEL_12:
      if (v9 == a1)
      {
        sub_10025F370(a1, a2, a3, a4);
      }

      else
      {
        (*(*v9 + 104))(v9, a2, a3, a4);
      }

      goto LABEL_32;
    }
  }

  v14 = a3;
  v9 = *a2;
  a3 = a2;
  v10 = v13;
  v11 = v12;
LABEL_31:
  sub_100262808(a4, *(v14 + 8) & 0xFFFFFFFB | (4 * (v9 == &qword_1004BD560)), v14 + 16, v14 + 112, a3 + 16, v10, v11);
LABEL_32:
  if (v16)
  {
    sub_1002ACC1C(v15);
  }
}

void sub_100265D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1002ACE7C(v15, &off_1004743A8);
  v8 = *a2;
  v9 = *a3;
  v10 = *(a2 + 304);
  v11 = 1.0;
  if (*a2 != &qword_1004BD530)
  {
    v11 = *(a2 + 304);
  }

  v12 = *(a3 + 304);
  if (v8 != &qword_1004BD550 || *(a2 + 224) && *(a2 + 312) != 0.0)
  {
    goto LABEL_6;
  }

  if (v9 == &qword_1004BD530)
  {
    goto LABEL_23;
  }

  if (v9 == &qword_1004BD538)
  {
    if (*(a3 + 128) && *(a3 + 312) != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a3 + 320)), vceqzq_f64(*(a3 + 336)))))) & 1) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  if (v9 == &qword_1004BD560)
  {
LABEL_23:
    v13 = *(a2 + 8) & 0xFFFFFFFB | (4 * (v9 == &qword_1004BD560));
    v11 = -v12;
    if (v9 == &qword_1004BD530)
    {
      v11 = -1.0;
    }

    v14 = a2;
    goto LABEL_30;
  }

LABEL_6:
  if (v9 != &qword_1004BD550 || *(a3 + 224) && *(a3 + 312) != 0.0)
  {
    goto LABEL_9;
  }

  if (v8 != &qword_1004BD530)
  {
    if (v8 == &qword_1004BD538)
    {
      if (*(a2 + 128) && *(a2 + 312) != 0.0 || (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(a2 + 320)), vceqzq_f64(*(a2 + 336)))))) & 1) != 0)
      {
        goto LABEL_9;
      }
    }

    else if (v8 != &qword_1004BD560)
    {
LABEL_9:
      if (v9 == a1)
      {
        sub_10025FCF4(a1, a2, a3, a4);
      }

      else
      {
        (*(*v9 + 120))(v9, a2, a3, a4);
      }

      goto LABEL_31;
    }
  }

  v13 = *(a3 + 8) & 0xFFFFFFFB | (4 * (v8 == &qword_1004BD560));
  v10 = -v12;
  v14 = a3;
  a3 = a2;
LABEL_30:
  sub_100262808(a4, v13, v14 + 16, v14 + 112, a3 + 16, v10, v11);
LABEL_31:
  if (v16)
  {
    sub_1002ACC1C(v15);
  }
}

void sub_100265FC0(double a1, uint64_t a2, uint64_t *a3, float64x2_t *a4)
{
  sub_1002ACE7C(v7, &off_1004743C8);
  sub_100263FF4(a4, a3);
  a4[19] = vmulq_n_f64(a4[19], a1);
  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

void sub_100266030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_100266044(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_1002ACE7C(v5, &off_1004743E8);
  sub_100263FF4(a3, a2);
  a3[2] = (*(a2 + 8) & 4 | (__rbit32(~*(a2 + 8)) >> 30)) ^ 4;
  sub_100268DD0(a3 + 4, a3 + 28);
  if (v6)
  {
    sub_1002ACC1C(v5);
  }
}

void sub_1002660DC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v17[0]) = 1124007936;
  memset(v17 + 4, 0, 48);
  v17[3] = 0u;
  v18 = v17 + 8;
  v19 = v20;
  v6 = (a3 + 16);
  v20[0] = 0;
  v20[1] = 0;
  if (a4 == -1 || (*(a2 + 16) & 0xFFF) == a4)
  {
    v7 = (a3 + 16);
    v8 = a3;
  }

  else
  {
    v8 = v17;
    v7 = &v17[1];
  }

  v15 = a2 + 16;
  v16 = 0;
  v14 = 16842752;
  v11 = 33619968;
  v12 = v8;
  v13 = 0;
  sub_100239A14(&v14, &v11, *(a2 + 8));
  if (*v7 != *v6)
  {
    v14 = 33619968;
    v15 = a3;
    v16 = 0;
    sub_10020EF14(v8, &v14, a4, 1.0, 0.0);
  }

  if (*(&v17[3] + 1) && atomic_fetch_add((*(&v17[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v17);
  }

  *(&v17[3] + 1) = 0;
  memset(&v17[1], 0, 32);
  if (SDWORD1(v17[0]) >= 1)
  {
    v9 = 0;
    v10 = v18;
    do
    {
      *&v10[4 * v9++] = 0;
    }

    while (v9 < SDWORD1(v17[0]));
  }

  if (v19 != v20)
  {
    j__free(v19);
  }
}

void sub_10026624C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100266264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100266278(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v5 = *a3;
  if (*a2 == &qword_1004BD558 && v5 == &qword_1004BD530)
  {
    sub_1002662F0(a4, *(a2 + 8), a2 + 16, (a3 + 2));
  }

  else if (v5 == a1)
  {
    sub_100262050(a1, a2, a3, a4);
  }

  else
  {
    (*(*v5 + 184))();
  }
}

void sub_1002662F0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v19[0]) = 1124007936;
  memset(v19 + 4, 0, 48);
  v19[3] = 0u;
  v20 = v19 + 8;
  v21 = v22;
  v22[0] = 0;
  v22[1] = 0;
  memset(v18, 0, sizeof(v18));
  sub_1002670C8(&v23, &qword_1004BD568, a2, a3, a4, v19, v18, 1.0, 1.0);
  *a1 = v23;
  *(a1 + 8) = v24;
  if (&v23 != a1)
  {
    v6 = *(a1 + 72);
    if (v6 && atomic_fetch_add((v6 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 16);
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) >= 1)
    {
      v7 = 0;
      v8 = *(a1 + 80);
      do
      {
        *(v8 + 4 * v7++) = 0;
      }

      while (v7 < *(a1 + 20));
    }

    v9 = *&v25[4];
    v10 = *&v25[16];
    *(a1 + 16) = *v25;
    *(a1 + 32) = v10;
    v11 = *&v25[48];
    *(a1 + 48) = *&v25[32];
    *(a1 + 64) = v11;
    v12 = *(a1 + 88);
    if (v12 == (a1 + 96))
    {
      v13 = v27;
      if (v9 <= 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      j__free(v12);
      *(a1 + 80) = a1 + 24;
      *(a1 + 88) = a1 + 96;
      v12 = (a1 + 96);
      v13 = v27;
      if (*&v25[4] <= 2)
      {
LABEL_10:
        *v12 = *v13;
        v12[1] = v13[1];
LABEL_13:
        *v25 = 1124007936;
        v5 = 0.0;
        memset(&v25[4], 0, 60);
        goto LABEL_14;
      }
    }

    *(a1 + 80) = v26;
    *(a1 + 88) = v13;
    v26 = &v25[8];
    v27 = &v28;
    goto LABEL_13;
  }

LABEL_14:
  v14 = sub_10025DAEC(a1 + 112, v29, v5);
  sub_10025DAEC(a1 + 208, v30, v14);
  v15 = v30[7];
  *(a1 + 304) = v30[6];
  *(a1 + 320) = v15;
  *(a1 + 336) = v30[8];
  sub_100008E50(&v23);
  if (*(&v19[3] + 1) && atomic_fetch_add((*(&v19[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v19);
  }

  *(&v19[3] + 1) = 0;
  memset(&v19[1], 0, 32);
  if (SDWORD1(v19[0]) >= 1)
  {
    v16 = 0;
    v17 = v20;
    do
    {
      *&v17[4 * v16++] = 0;
    }

    while (v16 < SDWORD1(v19[0]));
  }

  if (v21 != v22)
  {
    j__free(v21);
  }
}

void sub_100266534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100266548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_100008E50(va1);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100266564(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v20[0]) = 1124007936;
  memset(v20 + 4, 0, 48);
  v20[3] = 0u;
  v21 = v20 + 8;
  v22 = v23;
  v6 = (a3 + 16);
  v23[0] = 0;
  v23[1] = 0;
  if (a4 == -1 || (*(a2 + 16) & 0xFFF) == a4)
  {
    v7 = (a3 + 16);
    v8 = a3;
  }

  else
  {
    v8 = v20;
    v7 = &v20[1];
  }

  v19 = 0;
  v17 = 16842752;
  v18 = a2 + 16;
  v16 = 0;
  v14 = 16842752;
  v15 = a2 + 112;
  v11 = 33619968;
  v12 = v8;
  v13 = 0;
  sub_10023C0DC(&v17, &v14, &v11, *(a2 + 8));
  if (*v7 != *v6)
  {
    v17 = 33619968;
    v18 = a3;
    v19 = 0;
    sub_10020EF14(v8, &v17, a4, 1.0, 0.0);
  }

  if (*(&v20[3] + 1) && atomic_fetch_add((*(&v20[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v20);
  }

  *(&v20[3] + 1) = 0;
  memset(&v20[1], 0, 32);
  if (SDWORD1(v20[0]) >= 1)
  {
    v9 = 0;
    v10 = v21;
    do
    {
      *&v10[4 * v9++] = 0;
    }

    while (v9 < SDWORD1(v20[0]));
  }

  if (v22 != v23)
  {
    j__free(v22);
  }
}

void sub_1002666EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100266704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_100266718(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(a2 + 16);
  v6 = *(a2 + 20);
  v8 = v7 & 0xFFF;
  if (a4 == -1)
  {
    LOWORD(a4) = v8;
  }

  v9 = *(a2 + 80);
  if (v6 <= 2)
  {
    v10 = *(v9 + 4);
    v11 = a4 & 0xFFF;
    v13 = *(a3 + 4) <= 2 && *(a3 + 8) == *v9 && *(a3 + 12) == v10;
    if (!v13 || ((*a3 & 0xFFF) == v11 ? (v14 = *(a3 + 16) == 0) : (v14 = 1), v14))
    {
      __src.i32[0] = *v9;
      __src.i32[1] = v10;
      sub_100268ED0(a3, 2, __src.i64, v11);
    }

    v15 = *(a2 + 8);
    if (v15 != 73 || *(a2 + 20) > 2)
    {
      goto LABEL_22;
    }

LABEL_30:
    v18 = 50397184;
    v19 = a3;
    v20 = 0;
    __src = *(a2 + 304);
    v22 = 0uLL;
    sub_100276DB0(&v18, &__src);
    return;
  }

  sub_100268ED0(a3, v6, v9, a4);
  v15 = *(a2 + 8);
  if (v15 == 73 && *(a2 + 20) <= 2)
  {
    goto LABEL_30;
  }

LABEL_22:
  if (v15 == 49)
  {
    __src = *(a2 + 304);
    v22 = 0uLL;
    sub_10022CAFC(a3, &__src);
  }

  else
  {
    if (v15 != 48)
    {
      __src = 0uLL;
      qmemcpy(sub_1002A80E0(&__src, 31), "Invalid matrix initializer type", 31);
      sub_1002A8980(-2, __src.i64, "assign", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matop.cpp", 1643);
    }

    __src = 0u;
    v22 = 0u;
    sub_10022CAFC(a3, &__src);
  }
}

void sub_1002668CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002668FC(double a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  sub_1002ACE7C(v7, &off_100474408);
  sub_100263FF4(a4, a3);
  *(a4 + 304) = *(a4 + 304) * a1;
  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

void sub_100266984(int a1@<W0>, int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  sub_1002ACE7C(v9, &off_100474428);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1124007936;
  *(a4 + 20) = 0u;
  *(a4 + 36) = 0u;
  *(a4 + 52) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 96) = 0;
  *(a4 + 80) = a4 + 24;
  *(a4 + 88) = a4 + 96;
  *(a4 + 104) = 0;
  *(a4 + 112) = 1124007936;
  *(a4 + 116) = 0u;
  *(a4 + 132) = 0u;
  *(a4 + 148) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 192) = 0;
  *(a4 + 176) = a4 + 120;
  *(a4 + 184) = a4 + 192;
  *(a4 + 200) = 0;
  *(a4 + 208) = 1124007936;
  *(a4 + 256) = 0u;
  *(a4 + 244) = 0u;
  *(a4 + 228) = 0u;
  *(a4 + 212) = 0u;
  *(a4 + 272) = a4 + 216;
  *(a4 + 280) = a4 + 288;
  *(a4 + 288) = 0u;
  *(a4 + 304) = 0u;
  *(a4 + 320) = 0u;
  *(a4 + 336) = 0u;
  v8[0] = a2;
  v8[1] = a1;
  sub_100266AA4(a4, 48, v8, a3, 1.0);
  if (v10)
  {
    sub_1002ACC1C(v9);
  }
}

void sub_100266A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100008E50(v3);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_100266AA4(uint64_t a1, int a2, int *a3, unsigned int a4, double a5)
{
  v10 = sub_100267300();
  v11 = *a3;
  v40[0] = a3[1];
  v40[1] = v11;
  *&v41 = 4008636142;
  *(&v41 + 1) = 4008636142;
  v43 = 0;
  v44 = 0;
  v45 = v40;
  v46 = v47;
  v38 = a4 & 0xFFF | 0x42FF4000;
  v39 = 2;
  v47[0] = v11 * ((((a4 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (a4 & 7))) & 3));
  v47[1] = (((a4 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (a4 & 7))) & 3);
  *&v42 = v47[0] * v40[0] + 4008636142;
  *(&v42 + 1) = v42;
  LODWORD(v34[0]) = 1124007936;
  memset(v34 + 4, 0, 48);
  v34[3] = 0u;
  v35 = v34 + 8;
  v36 = v37;
  v37[0] = 0;
  v37[1] = 0;
  LODWORD(v30[0]) = 1124007936;
  memset(v30 + 4, 0, 48);
  v30[3] = 0u;
  v31 = v30 + 8;
  v32 = v33;
  v33[0] = 0;
  v33[1] = 0;
  memset(v29, 0, sizeof(v29));
  sub_1002670C8(&v48, v10, a2, &v38, v34, v30, v29, a5, 0.0);
  *a1 = v48;
  *(a1 + 8) = v49;
  if (&v48 != a1)
  {
    v13 = *(a1 + 72);
    if (v13 && atomic_fetch_add((v13 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(a1 + 16);
    }

    *(a1 + 72) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    if (*(a1 + 20) >= 1)
    {
      v14 = 0;
      v15 = *(a1 + 80);
      do
      {
        *(v15 + 4 * v14++) = 0;
      }

      while (v14 < *(a1 + 20));
    }

    v16 = *&v50[4];
    v17 = *&v50[16];
    *(a1 + 16) = *v50;
    *(a1 + 32) = v17;
    v18 = *&v50[48];
    *(a1 + 48) = *&v50[32];
    *(a1 + 64) = v18;
    v19 = *(a1 + 88);
    if (v19 == (a1 + 96))
    {
      v20 = v52;
      if (v16 <= 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      j__free(v19);
      *(a1 + 80) = a1 + 24;
      *(a1 + 88) = a1 + 96;
      v19 = (a1 + 96);
      v20 = v52;
      if (*&v50[4] <= 2)
      {
LABEL_10:
        *v19 = *v20;
        v19[1] = v20[1];
LABEL_13:
        *v50 = 1124007936;
        v12 = 0.0;
        memset(&v50[4], 0, 60);
        goto LABEL_14;
      }
    }

    *(a1 + 80) = v51;
    *(a1 + 88) = v20;
    v51 = &v50[8];
    v52 = &v53;
    goto LABEL_13;
  }

LABEL_14:
  v21 = sub_10025DAEC(a1 + 112, v54, v12);
  sub_10025DAEC(a1 + 208, v55, v21);
  v22 = v55[7];
  *(a1 + 304) = v55[6];
  *(a1 + 320) = v22;
  *(a1 + 336) = v55[8];
  sub_100008E50(&v48);
  if (*(&v30[3] + 1) && atomic_fetch_add((*(&v30[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v30);
  }

  *(&v30[3] + 1) = 0;
  memset(&v30[1], 0, 32);
  if (SDWORD1(v30[0]) >= 1)
  {
    v23 = 0;
    v24 = v31;
    do
    {
      *&v24[4 * v23++] = 0;
    }

    while (v23 < SDWORD1(v30[0]));
  }

  if (v32 != v33)
  {
    j__free(v32);
  }

  if (*(&v34[3] + 1) && atomic_fetch_add((*(&v34[3] + 1) + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v34);
  }

  *(&v34[3] + 1) = 0;
  memset(&v34[1], 0, 32);
  if (SDWORD1(v34[0]) >= 1)
  {
    v25 = 0;
    v26 = v35;
    do
    {
      *&v26[4 * v25++] = 0;
    }

    while (v25 < SDWORD1(v34[0]));
  }

  if (v36 != v37)
  {
    j__free(v36);
  }

  if (v44 && atomic_fetch_add((v44 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v38);
  }

  v44 = 0;
  v41 = 0u;
  v42 = 0u;
  if (v39 >= 1)
  {
    v27 = 0;
    v28 = v45;
    do
    {
      v28[v27++] = 0;
    }

    while (v27 < v39);
  }

  if (v46 != v47)
  {
    j__free(v46);
  }
}

void sub_100266E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_100006D14(&a13);
  sub_100006D14(&a25);
  sub_100006D14(&a37);
  _Unwind_Resume(a1);
}

void sub_100266EA8(uint64_t *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  sub_1002ACE7C(v7, &off_100474448);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1124007936;
  *(a3 + 20) = 0u;
  *(a3 + 36) = 0u;
  *(a3 + 52) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 96) = 0;
  *(a3 + 80) = a3 + 24;
  *(a3 + 88) = a3 + 96;
  *(a3 + 104) = 0;
  *(a3 + 112) = 1124007936;
  *(a3 + 116) = 0u;
  *(a3 + 132) = 0u;
  *(a3 + 148) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 192) = 0;
  *(a3 + 176) = a3 + 120;
  *(a3 + 184) = a3 + 192;
  *(a3 + 200) = 0;
  *(a3 + 208) = 1124007936;
  *(a3 + 256) = 0u;
  *(a3 + 244) = 0u;
  *(a3 + 228) = 0u;
  *(a3 + 212) = 0u;
  *(a3 + 272) = a3 + 216;
  *(a3 + 280) = a3 + 288;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 336) = 0u;
  v6 = *a1;
  sub_100266AA4(a3, 48, &v6, a2, 1.0);
  if (v8)
  {
    sub_1002ACC1C(v7);
  }
}

void sub_100266FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100008E50(v3);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002670C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, double a8, double a9)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  v15 = *a4;
  v16 = *(a4 + 16);
  *(a1 + 16) = *a4;
  *(a1 + 32) = v16;
  *(a1 + 48) = *(a4 + 32);
  v17 = *(a4 + 56);
  *(a1 + 64) = *(a4 + 48);
  *(a1 + 72) = v17;
  *(a1 + 96) = 0;
  *(a1 + 80) = a1 + 24;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  if (v17)
  {
    atomic_fetch_add((v17 + 20), 1u);
    if (*(a4 + 4) <= 2)
    {
LABEL_3:
      v18 = *(a4 + 72);
      v19 = *(a1 + 88);
      *v19 = *v18;
      v19[1] = v18[1];
      goto LABEL_6;
    }
  }

  else if (SDWORD1(v15) <= 2)
  {
    goto LABEL_3;
  }

  *(a1 + 20) = 0;
  sub_100269B58(a1 + 16, a4);
LABEL_6:
  v20 = *a5;
  *(a1 + 128) = *(a5 + 16);
  v21 = *(a5 + 32);
  v23 = *(a5 + 48);
  v22 = *(a5 + 56);
  *(a1 + 192) = 0;
  *(a1 + 144) = v21;
  *(a1 + 160) = v23;
  *(a1 + 168) = v22;
  *(a1 + 176) = a1 + 120;
  *(a1 + 184) = a1 + 192;
  *(a1 + 200) = 0;
  *(a1 + 112) = v20;
  if (v22)
  {
    atomic_fetch_add((v22 + 20), 1u);
    if (*(a5 + 4) <= 2)
    {
LABEL_8:
      v24 = *(a5 + 72);
      v25 = *(a1 + 184);
      *v25 = *v24;
      v25[1] = v24[1];
      goto LABEL_11;
    }
  }

  else if (SDWORD1(v20) <= 2)
  {
    goto LABEL_8;
  }

  *(a1 + 116) = 0;
  sub_100269B58(a1 + 112, a5);
LABEL_11:
  v26 = *a6;
  v27 = *(a6 + 16);
  *(a1 + 208) = *a6;
  *(a1 + 224) = v27;
  *(a1 + 240) = *(a6 + 32);
  v28 = *(a6 + 56);
  *(a1 + 256) = *(a6 + 48);
  *(a1 + 264) = v28;
  *(a1 + 272) = a1 + 216;
  *(a1 + 280) = a1 + 288;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  if (!v28)
  {
    if (SDWORD1(v26) <= 2)
    {
      goto LABEL_13;
    }

LABEL_15:
    *(a1 + 212) = 0;
    sub_100269B58(a1 + 208, a6);
    goto LABEL_16;
  }

  atomic_fetch_add((v28 + 20), 1u);
  if (*(a6 + 4) > 2)
  {
    goto LABEL_15;
  }

LABEL_13:
  v29 = *(a6 + 72);
  v30 = *(a1 + 280);
  *v30 = *v29;
  v30[1] = v29[1];
LABEL_16:
  *(a1 + 304) = a8;
  *(a1 + 312) = a9;
  *(a1 + 320) = *a7;
  *(a1 + 328) = a7[1];
  *(a1 + 336) = a7[2];
  *(a1 + 344) = a7[3];
  return a1;
}

void sub_1002672D0(_Unwind_Exception *a1)
{
  sub_100006D14(v2);
  sub_100006D14(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100267300()
{
  if (!qword_1004BD528)
  {
    v0 = sub_1002A814C();
    sub_1002A93EC(v0);
    if (!qword_1004BD528)
    {
      operator new();
    }

    sub_1002A93F4(v0);
  }

  return qword_1004BD528;
}

uint64_t sub_10026739C()
{
  qword_1004BD530 = off_100474478;
  __cxa_atexit(nullsub_5, &qword_1004BD530, &_mh_execute_header);
  qword_1004BD538 = off_100474588;
  __cxa_atexit(nullsub_6, &qword_1004BD538, &_mh_execute_header);
  qword_1004BD540 = off_100474688;
  __cxa_atexit(nullsub_7, &qword_1004BD540, &_mh_execute_header);
  qword_1004BD548 = off_100474788;
  __cxa_atexit(nullsub_8, &qword_1004BD548, &_mh_execute_header);
  qword_1004BD550 = off_100474888;
  __cxa_atexit(nullsub_9, &qword_1004BD550, &_mh_execute_header);
  qword_1004BD558 = off_100474988;
  __cxa_atexit(nullsub_10, &qword_1004BD558, &_mh_execute_header);
  qword_1004BD560 = off_100474A88;
  __cxa_atexit(nullsub_11, &qword_1004BD560, &_mh_execute_header);
  qword_1004BD568 = off_100474B88;

  return __cxa_atexit(nullsub_12, &qword_1004BD568, &_mh_execute_header);
}

uint64_t sub_100267598(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 16) && !*(a2 + 20))
  {
    return (*(*result + 32))();
  }

  return result;
}

void sub_1002675D0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return;
  }

  v8 = *(a2 + 24);
  if (a4 < 1)
  {
LABEL_13:
    memset(&v68[20], 0, 44);
    *&v68[4] = 0u;
    v69 = &v68[8];
    v70 = v71;
    v71[0] = 0;
    v71[1] = 0;
    *v68 = 1124007936;
    *&v68[16] = v8;
    *&v68[24] = v8;
    sub_100269568(v68, a4, v75, a7, 1);
    v12 = v69;
    if (*&v68[4] < 1)
    {
      v14 = 0;
    }

    else
    {
      v13 = 0;
      while (v69[v13] <= 1)
      {
        if (*&v68[4] == ++v13)
        {
          LODWORD(v13) = *&v68[4];
          break;
        }
      }

      v14 = v13;
    }

    v15 = v70;
    v16 = *&v68[4] - 1;
    v17 = v70 + 8 * *&v68[4] - 8;
    while (v16 > v14)
    {
      v18 = *v17 * v69[v16];
      v19 = *--v17;
      --v16;
      if (v18 < v19)
      {
        *v68 &= ~0x4000u;
        if (*&v68[4] < 3)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    *v68 = *v68 & 0xFFFFBFFF | 0x4000;
    if (*&v68[4] < 3)
    {
      goto LABEL_27;
    }

LABEL_26:
    *&v68[8] = -1;
LABEL_27:
    if (*&v68[56])
    {
      v20 = *(*&v68[56] + 24);
      *&v68[16] = v20;
      *&v68[24] = v20;
      if (v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *&v68[16];
      if (*&v68[16])
      {
LABEL_29:
        v21 = *v69;
        v22 = *&v68[24] + *v70 * v21;
        *&v68[40] = v22;
        if (v21 < 1)
        {
          *&v68[32] = v22;
        }

        else
        {
          v23 = (*&v68[4] - 1);
          v24 = v20 + *(v70 + v23) * v69[v23];
          *&v68[32] = v24;
          if (*&v68[4] >= 2)
          {
            do
            {
              v25 = *v12++;
              v26 = v25 - 1;
              v27 = *v15++;
              v24 += v27 * v26;
              --v23;
            }

            while (v23);
            *&v68[32] = v24;
          }
        }

LABEL_36:
        memset(&v64[28], 0, 32);
        *v64 = 0u;
        v65 = &v64[4];
        v66 = v67;
        v67[0] = 0;
        v67[1] = 0;
        v63 = 1124007936;
        *&v64[12] = a3;
        *&v64[20] = a3;
        sub_100269568(&v63, a4, v75, a8, 1);
        v28 = v65;
        if (*v64 < 1)
        {
          v30 = 0;
        }

        else
        {
          v29 = 0;
          while (v65[v29] <= 1)
          {
            if (*v64 == ++v29)
            {
              LODWORD(v29) = *v64;
              break;
            }
          }

          v30 = v29;
        }

        v31 = v66;
        v32 = *v64 - 1;
        v33 = v66 + 8 * *v64 - 8;
        while (v32 > v30)
        {
          v34 = *v33 * v65[v32];
          v35 = *--v33;
          --v32;
          if (v34 < v35)
          {
            v63 &= ~0x4000u;
            if (*v64 < 3)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          }
        }

        v63 = v63 & 0xFFFFBFFF | 0x4000;
        if (*v64 < 3)
        {
          goto LABEL_50;
        }

LABEL_49:
        *&v64[4] = -1;
LABEL_50:
        if (*&v64[52])
        {
          v36 = *(*&v64[52] + 24);
          *&v64[12] = v36;
          *&v64[20] = v36;
          if (v36)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v36 = *&v64[12];
          if (*&v64[12])
          {
LABEL_52:
            v37 = *v65;
            v38 = *&v64[20] + *v66 * v37;
            *&v64[36] = v38;
            if (v37 < 1)
            {
              *&v64[28] = v38;
            }

            else
            {
              v39 = (*v64 - 1);
              v40 = v36 + *(v66 + v39) * v65[v39];
              *&v64[28] = v40;
              if (*v64 >= 2)
              {
                do
                {
                  v41 = *v28++;
                  v42 = v41 - 1;
                  v43 = *v31++;
                  v40 += v43 * v42;
                  --v39;
                }

                while (v39);
                *&v64[28] = v40;
              }
            }

            goto LABEL_59;
          }
        }

        *&v64[28] = 0;
        *&v64[36] = 0;
LABEL_59:
        v74[0] = v68;
        v74[1] = &v63;
        v72 = 0;
        v73 = 0;
        v62 = 0;
        memset(v57, 0, sizeof(v57));
        v58 = 0;
        v59 = 0;
        __n = 0;
        v61 = 0;
        sub_10027762C(v57, v74, 0, &v72, 2);
        if (v59)
        {
          v44 = 0;
          v45 = __n;
          do
          {
            memcpy(v73, v72, v45);
            ++v44;
            sub_100267D14(v57);
          }

          while (v44 < v59);
        }

        if (*&v64[52])
        {
          if (atomic_fetch_add((*&v64[52] + 20), 0xFFFFFFFF) == 1)
          {
            v46 = *&v64[52];
            if (*&v64[52])
            {
              *&v64[52] = 0;
              v47 = *(v46 + 8);
              if (!v47)
              {
                v47 = *&v64[44];
                if (!*&v64[44])
                {
                  v47 = sub_100268CC8();
                }
              }

              (*(*v47 + 48))(v47, v46);
            }
          }
        }

        *&v64[52] = 0;
        memset(&v64[12], 0, 32);
        if (*v64 >= 1)
        {
          v48 = 0;
          v49 = v65;
          do
          {
            v49[v48++] = 0;
          }

          while (v48 < *v64);
        }

        if (v66 != v67)
        {
          j__free(v66);
        }

        if (*&v68[56])
        {
          if (atomic_fetch_add((*&v68[56] + 20), 0xFFFFFFFF) == 1)
          {
            v50 = *&v68[56];
            if (*&v68[56])
            {
              *&v68[56] = 0;
              v51 = *(v50 + 8);
              if (!v51)
              {
                v51 = *&v68[48];
                if (!*&v68[48])
                {
                  v51 = sub_100268CC8();
                }
              }

              (*(*v51 + 48))(v51, v50);
            }
          }
        }

        *&v68[56] = 0;
        memset(&v68[16], 0, 32);
        if (*&v68[4] >= 1)
        {
          v52 = 0;
          v53 = v69;
          do
          {
            v53[v52++] = 0;
          }

          while (v52 < *&v68[4]);
        }

        if (v70 != v71)
        {
          j__free(v70);
        }

        return;
      }
    }

    *&v68[32] = 0;
    *&v68[40] = 0;
    goto LABEL_36;
  }

  v9 = 0;
  while (1)
  {
    v11 = *(a5 + 8 * v9);
    if (v11 >> 31)
    {
      *v68 = 0;
      *&v68[8] = 0;
      qmemcpy(sub_1002A80E0(v68, 27), "sz[i] <= (size_t)2147483647", 27);
      sub_1002A8980(-215, v68, "download", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 77);
    }

    if (!v11)
    {
      break;
    }

    if (a6)
    {
      if (v9 <= a4 - 2)
      {
        v10 = *(a7 + 8 * v9);
      }

      else
      {
        v10 = 1;
      }

      v8 += v10 * *(a6 + 8 * v9);
    }

    v75[v9++] = v11;
    if (a4 == v9)
    {
      goto LABEL_13;
    }
  }
}

void sub_100267BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100267C58(uint64_t a1, int a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 20) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 64) = a1 + 8;
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = 0;
  *a1 = a4 & 0xFFF | 0x42FF0000;
  *(a1 + 16) = a5;
  *(a1 + 24) = a5;
  sub_100269568(a1, a2, a3, a6, 1);
  sub_100269A18(a1);
  return a1;
}

uint64_t sub_100267CC8(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  *(a1 + 56) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_10027762C(a1, a2, 0, a3, a4);
  return a1;
}

uint64_t *sub_100267D14(uint64_t *result)
{
  v1 = result[7];
  if (v1 < result[4] - 1)
  {
    v2 = v1 + 1;
    result[7] = v2;
    v3 = *(result + 12);
    if (v3 == 1)
    {
      v4 = result[2];
      if (v4)
      {
        v5 = *(result + 6);
        if (v5 >= 1)
        {
          v6 = 0;
          v7 = 8 * v5;
          do
          {
            if (*(v4 + v6))
            {
              *(v4 + v6) = *(*(*result + v6) + 16) + **(*(*result + v6) + 72) * v2;
            }

            v6 += 8;
          }

          while (v7 != v6);
        }
      }

      v26 = result[1];
      if (v26)
      {
        v27 = *(result + 6);
        if (v27 >= 1)
        {
          v28 = 0;
          v29 = (v26 + 16);
          v30 = 8 * v27;
          do
          {
            if (*v29)
            {
              *v29 = *(*(*result + v28) + 16) + **(*(*result + v28) + 72) * v2;
            }

            v28 += 8;
            v29 += 12;
          }

          while (v30 != v28);
        }
      }
    }

    else
    {
      v8 = *(result + 6);
      if (v8 >= 1)
      {
        v9 = *result;
        if (v2 <= 0 || v3 <= 0)
        {
          v31 = 0;
          v32 = 8 * v8;
          v33 = 16;
          do
          {
            v34 = *(*(v9 + v31) + 16);
            if (v34)
            {
              v35 = result[2];
              if (v35)
              {
                *(v35 + v31) = v34;
              }

              v36 = result[1];
              if (v36)
              {
                *(v36 + v33) = v34;
              }
            }

            v31 += 8;
            v33 += 96;
          }

          while (v32 != v31);
        }

        else
        {
          for (i = 0; i != v8; ++i)
          {
            v12 = *(v9 + 8 * i);
            v13 = v12[2];
            if (v13)
            {
              v14 = v12[9];
              v15 = (v12[8] + 4 * (v3 - 1));
              v16 = (v14 + 8 * (v3 - 1));
              v17 = v3;
              v18 = v2;
              do
              {
                v19 = *v15--;
                v20 = v18 / v19;
                v21 = v18 % v19;
                v22 = *v16--;
                v13 += v22 * v21;
                v23 = __OFSUB__(v17--, 1);
                if ((v17 < 0) ^ v23 | (v17 == 0))
                {
                  break;
                }

                v18 = v20;
              }

              while (v20 >= 1);
              v24 = result[2];
              if (v24)
              {
                *(v24 + 8 * i) = v13;
              }

              v25 = result[1];
              if (v25)
              {
                *(v25 + 96 * i + 16) = v13;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_100267EE0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return;
  }

  v8 = *(a2 + 24);
  if (a4 < 1)
  {
LABEL_13:
    memset(&v67[20], 0, 44);
    *&v67[4] = 0u;
    v68 = &v67[8];
    v69 = v70;
    v70[0] = 0;
    v70[1] = 0;
    *v67 = 1124007936;
    *&v67[16] = a3;
    *&v67[24] = a3;
    sub_100269568(v67, a4, v74, a8, 1);
    v12 = v68;
    if (*&v67[4] < 1)
    {
      v14 = 0;
    }

    else
    {
      v13 = 0;
      while (v68[v13] <= 1)
      {
        if (*&v67[4] == ++v13)
        {
          LODWORD(v13) = *&v67[4];
          break;
        }
      }

      v14 = v13;
    }

    v15 = v69;
    v16 = *&v67[4] - 1;
    v17 = v69 + 8 * *&v67[4] - 8;
    while (v16 > v14)
    {
      v18 = *v17 * v68[v16];
      v19 = *--v17;
      --v16;
      if (v18 < v19)
      {
        *v67 &= ~0x4000u;
        if (*&v67[4] < 3)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    *v67 = *v67 & 0xFFFFBFFF | 0x4000;
    if (*&v67[4] < 3)
    {
      goto LABEL_27;
    }

LABEL_26:
    *&v67[8] = -1;
LABEL_27:
    if (*&v67[56])
    {
      v20 = *(*&v67[56] + 24);
      *&v67[16] = v20;
      *&v67[24] = v20;
      if (v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *&v67[16];
      if (*&v67[16])
      {
LABEL_29:
        v21 = *v68;
        v22 = *&v67[24] + *v69 * v21;
        *&v67[40] = v22;
        if (v21 < 1)
        {
          *&v67[32] = v22;
        }

        else
        {
          v23 = (*&v67[4] - 1);
          v24 = v20 + *(v69 + v23) * v68[v23];
          *&v67[32] = v24;
          if (*&v67[4] >= 2)
          {
            do
            {
              v25 = *v12++;
              v26 = v25 - 1;
              v27 = *v15++;
              v24 += v27 * v26;
              --v23;
            }

            while (v23);
            *&v67[32] = v24;
          }
        }

LABEL_36:
        memset(&v63[28], 0, 32);
        *v63 = 0u;
        v64 = &v63[4];
        v65 = v66;
        v66[0] = 0;
        v66[1] = 0;
        v62 = 1124007936;
        *&v63[12] = v8;
        *&v63[20] = v8;
        sub_100269568(&v62, a4, v74, a7, 1);
        v28 = v64;
        if (*v63 < 1)
        {
          v30 = 0;
        }

        else
        {
          v29 = 0;
          while (v64[v29] <= 1)
          {
            if (*v63 == ++v29)
            {
              LODWORD(v29) = *v63;
              break;
            }
          }

          v30 = v29;
        }

        v31 = v65;
        v32 = *v63 - 1;
        v33 = v65 + 8 * *v63 - 8;
        while (v32 > v30)
        {
          v34 = *v33 * v64[v32];
          v35 = *--v33;
          --v32;
          if (v34 < v35)
          {
            v62 &= ~0x4000u;
            if (*v63 < 3)
            {
              goto LABEL_50;
            }

            goto LABEL_49;
          }
        }

        v62 = v62 & 0xFFFFBFFF | 0x4000;
        if (*v63 < 3)
        {
          goto LABEL_50;
        }

LABEL_49:
        *&v63[4] = -1;
LABEL_50:
        if (*&v63[52])
        {
          v36 = *(*&v63[52] + 24);
          *&v63[12] = v36;
          *&v63[20] = v36;
          if (v36)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v36 = *&v63[12];
          if (*&v63[12])
          {
LABEL_52:
            v37 = *v64;
            v38 = *&v63[20] + *v65 * v37;
            *&v63[36] = v38;
            if (v37 < 1)
            {
              *&v63[28] = v38;
            }

            else
            {
              v39 = (*v63 - 1);
              v40 = v36 + *(v65 + v39) * v64[v39];
              *&v63[28] = v40;
              if (*v63 >= 2)
              {
                do
                {
                  v41 = *v28++;
                  v42 = v41 - 1;
                  v43 = *v31++;
                  v40 += v43 * v42;
                  --v39;
                }

                while (v39);
                *&v63[28] = v40;
              }
            }

            goto LABEL_59;
          }
        }

        *&v63[28] = 0;
        *&v63[36] = 0;
LABEL_59:
        v73[0] = v67;
        v73[1] = &v62;
        v71 = 0;
        v72 = 0;
        v61 = 0;
        memset(v56, 0, sizeof(v56));
        v57 = 0;
        v58 = 0;
        __n = 0;
        v60 = 0;
        sub_10027762C(v56, v73, 0, &v71, 2);
        if (v58)
        {
          v44 = 0;
          v45 = __n;
          do
          {
            memcpy(v72, v71, v45);
            ++v44;
            sub_100267D14(v56);
          }

          while (v44 < v58);
        }

        if (*&v63[52])
        {
          if (atomic_fetch_add((*&v63[52] + 20), 0xFFFFFFFF) == 1)
          {
            v46 = *&v63[52];
            if (*&v63[52])
            {
              *&v63[52] = 0;
              v47 = *(v46 + 8);
              if (!v47)
              {
                v47 = *&v63[44];
                if (!*&v63[44])
                {
                  v47 = sub_100268CC8();
                }
              }

              (*(*v47 + 48))(v47, v46);
            }
          }
        }

        *&v63[52] = 0;
        memset(&v63[12], 0, 32);
        if (*v63 >= 1)
        {
          v48 = 0;
          v49 = v64;
          do
          {
            v49[v48++] = 0;
          }

          while (v48 < *v63);
        }

        if (v65 != v66)
        {
          j__free(v65);
        }

        if (*&v67[56])
        {
          if (atomic_fetch_add((*&v67[56] + 20), 0xFFFFFFFF) == 1)
          {
            v50 = *&v67[56];
            if (*&v67[56])
            {
              *&v67[56] = 0;
              v51 = *(v50 + 8);
              if (!v51)
              {
                v51 = *&v67[48];
                if (!*&v67[48])
                {
                  v51 = sub_100268CC8();
                }
              }

              (*(*v51 + 48))(v51, v50);
            }
          }
        }

        *&v67[56] = 0;
        memset(&v67[16], 0, 32);
        if (*&v67[4] >= 1)
        {
          v52 = 0;
          v53 = v68;
          do
          {
            v53[v52++] = 0;
          }

          while (v52 < *&v67[4]);
        }

        if (v69 != v70)
        {
          j__free(v69);
        }

        return;
      }
    }

    *&v67[32] = 0;
    *&v67[40] = 0;
    goto LABEL_36;
  }

  v9 = 0;
  while (1)
  {
    v11 = *(a5 + 8 * v9);
    if (v11 >> 31)
    {
      *v67 = 0;
      *&v67[8] = 0;
      qmemcpy(sub_1002A80E0(v67, 27), "sz[i] <= (size_t)2147483647", 27);
      sub_1002A8980(-215, v67, "upload", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 108);
    }

    if (!v11)
    {
      break;
    }

    if (a6)
    {
      if (v9 <= a4 - 2)
      {
        v10 = *(a7 + 8 * v9);
      }

      else
      {
        v10 = 1;
      }

      v8 += v10 * *(a6 + 8 * v9);
    }

    v74[v9++] = v11;
    if (a4 == v9)
    {
      goto LABEL_13;
    }
  }
}

void sub_100268508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100268570(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002ACE7C(v83, &off_100474D78);
  if (!a2 || !a3)
  {
    goto LABEL_92;
  }

  v15 = *(a2 + 24);
  v16 = *(a3 + 24);
  v66 = a4;
  if (a4 < 1)
  {
LABEL_19:
    memset(&v79[20], 0, 44);
    *&v79[4] = 0u;
    v80 = &v79[8];
    v81 = v82;
    v82[0] = 0;
    v82[1] = 0;
    *v79 = 1124007936;
    *&v79[16] = v15;
    *&v79[24] = v15;
    sub_100269568(v79, v66, v88, a7, 1);
    v24 = v80;
    if (*&v79[4] < 1)
    {
      v26 = 0;
    }

    else
    {
      v25 = 0;
      while (v80[v25] <= 1)
      {
        if (*&v79[4] == ++v25)
        {
          LODWORD(v25) = *&v79[4];
          break;
        }
      }

      v26 = v25;
    }

    v27 = v81;
    v28 = *&v79[4] - 1;
    v29 = v81 + 8 * *&v79[4] - 8;
    while (v28 > v26)
    {
      v30 = *v29 * v80[v28];
      v31 = *--v29;
      --v28;
      if (v30 < v31)
      {
        *v79 &= ~0x4000u;
        if (*&v79[4] < 3)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    *v79 = *v79 & 0xFFFFBFFF | 0x4000;
    if (*&v79[4] < 3)
    {
      goto LABEL_33;
    }

LABEL_32:
    *&v79[8] = -1;
LABEL_33:
    if (*&v79[56])
    {
      v32 = *(*&v79[56] + 24);
      *&v79[16] = v32;
      *&v79[24] = v32;
      if (v32)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v32 = *&v79[16];
      if (*&v79[16])
      {
LABEL_35:
        v33 = *v80;
        v34 = *&v79[24] + *v81 * v33;
        *&v79[40] = v34;
        if (v33 < 1)
        {
          *&v79[32] = v34;
        }

        else
        {
          v35 = (*&v79[4] - 1);
          v36 = v32 + *(v81 + v35) * v80[v35];
          *&v79[32] = v36;
          if (*&v79[4] >= 2)
          {
            do
            {
              v37 = *v24++;
              v38 = v37 - 1;
              v39 = *v27++;
              v36 += v39 * v38;
              --v35;
            }

            while (v35);
            *&v79[32] = v36;
          }
        }

LABEL_42:
        memset(&v75[28], 0, 32);
        *v75 = 0u;
        v76 = &v75[4];
        v77 = v78;
        v78[0] = 0;
        v78[1] = 0;
        v74 = 1124007936;
        *&v75[12] = v16;
        *&v75[20] = v16;
        sub_100269568(&v74, v66, v88, a9, 1);
        v40 = v76;
        if (*v75 < 1)
        {
          v42 = 0;
        }

        else
        {
          v41 = 0;
          while (v76[v41] <= 1)
          {
            if (*v75 == ++v41)
            {
              LODWORD(v41) = *v75;
              break;
            }
          }

          v42 = v41;
        }

        v43 = v77;
        v44 = *v75 - 1;
        v45 = v77 + 8 * *v75 - 8;
        while (v44 > v42)
        {
          v46 = *v45 * v76[v44];
          v47 = *--v45;
          --v44;
          if (v46 < v47)
          {
            v74 &= ~0x4000u;
            if (*v75 < 3)
            {
              goto LABEL_56;
            }

            goto LABEL_55;
          }
        }

        v74 = v74 & 0xFFFFBFFF | 0x4000;
        if (*v75 < 3)
        {
          goto LABEL_56;
        }

LABEL_55:
        *&v75[4] = -1;
LABEL_56:
        if (*&v75[52])
        {
          v48 = *(*&v75[52] + 24);
          *&v75[12] = v48;
          *&v75[20] = v48;
          if (v48)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v48 = *&v75[12];
          if (*&v75[12])
          {
LABEL_58:
            v49 = *v76;
            v50 = *&v75[20] + *v77 * v49;
            *&v75[36] = v50;
            if (v49 < 1)
            {
              *&v75[28] = v50;
            }

            else
            {
              v51 = (*v75 - 1);
              v52 = v48 + *(v77 + v51) * v76[v51];
              *&v75[28] = v52;
              if (*v75 >= 2)
              {
                do
                {
                  v53 = *v40++;
                  v54 = v53 - 1;
                  v55 = *v43++;
                  v52 += v55 * v54;
                  --v51;
                }

                while (v51);
                *&v75[28] = v52;
              }
            }

            goto LABEL_65;
          }
        }

        *&v75[28] = 0;
        *&v75[36] = 0;
LABEL_65:
        v87[0] = v79;
        v87[1] = &v74;
        v85 = 0;
        v86 = 0;
        v73 = 0;
        memset(v68, 0, sizeof(v68));
        v69 = 0;
        v70 = 0;
        __n = 0;
        v72 = 0;
        sub_10027762C(v68, v87, 0, &v85, 2);
        if (v70)
        {
          v56 = 0;
          v57 = __n;
          do
          {
            memcpy(v86, v85, v57);
            ++v56;
            sub_100267D14(v68);
          }

          while (v56 < v70);
        }

        if (*&v75[52])
        {
          if (atomic_fetch_add((*&v75[52] + 20), 0xFFFFFFFF) == 1)
          {
            v58 = *&v75[52];
            if (*&v75[52])
            {
              *&v75[52] = 0;
              v59 = *(v58 + 8);
              if (!v59)
              {
                v59 = *&v75[44];
                if (!*&v75[44])
                {
                  v59 = sub_100268CC8();
                }
              }

              (*(*v59 + 48))(v59, v58);
            }
          }
        }

        *&v75[52] = 0;
        memset(&v75[12], 0, 32);
        if (*v75 >= 1)
        {
          v60 = 0;
          v61 = v76;
          do
          {
            v61[v60++] = 0;
          }

          while (v60 < *v75);
        }

        if (v77 != v78)
        {
          j__free(v77);
        }

        if (*&v79[56])
        {
          if (atomic_fetch_add((*&v79[56] + 20), 0xFFFFFFFF) == 1)
          {
            v62 = *&v79[56];
            if (*&v79[56])
            {
              *&v79[56] = 0;
              v63 = *(v62 + 8);
              if (!v63)
              {
                v63 = *&v79[48];
                if (!*&v79[48])
                {
                  v63 = sub_100268CC8();
                }
              }

              (*(*v63 + 48))(v63, v62);
            }
          }
        }

        *&v79[56] = 0;
        memset(&v79[16], 0, 32);
        if (*&v79[4] >= 1)
        {
          v64 = 0;
          v65 = v80;
          do
          {
            v65[v64++] = 0;
          }

          while (v64 < *&v79[4]);
        }

        if (v81 != v82)
        {
          j__free(v81);
        }

        goto LABEL_92;
      }
    }

    *&v79[32] = 0;
    *&v79[40] = 0;
    goto LABEL_42;
  }

  v17 = 0;
  v18 = a4;
  v19 = a4 - 2;
  v20 = v18;
  while (1)
  {
    v22 = *(a5 + 8 * v17);
    if (v22 >> 31)
    {
      *v79 = 0;
      *&v79[8] = 0;
      qmemcpy(sub_1002A80E0(v79, 27), "sz[i] <= (size_t)2147483647", 27);
      sub_1002A8980(-215, v79, "copy", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 141);
    }

    if (!v22)
    {
      break;
    }

    if (a6)
    {
      if (v17 <= v19)
      {
        v23 = *(a7 + 8 * v17);
      }

      else
      {
        v23 = 1;
      }

      v15 += v23 * *(a6 + 8 * v17);
    }

    if (a8)
    {
      if (v17 <= v19)
      {
        v21 = *(a9 + 8 * v17);
      }

      else
      {
        v21 = 1;
      }

      v16 += v21 * *(a8 + 8 * v17);
    }

    v88[v17++] = v22;
    if (v20 == v17)
    {
      goto LABEL_19;
    }
  }

LABEL_92:
  if (v84)
  {
    sub_1002ACC1C(v83);
  }
}

void sub_100268BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100008E3C(exception_object);
}

uint64_t *sub_100268C84()
{
  if ((atomic_load_explicit(&qword_1004BD5C8, memory_order_acquire) & 1) == 0)
  {
    sub_1003C8524();
  }

  return &qword_1004BD5C0;
}

uint64_t sub_100268CC8()
{
  if (!qword_1004BD578)
  {
    v0 = sub_1002A814C();
    sub_1002A93EC(v0);
    if (!qword_1004BD578)
    {
      qword_1004BD578 = sub_100268D34();
    }

    sub_1002A93F4(v0);
  }

  return qword_1004BD578;
}

uint64_t sub_100268D34()
{
  if (!qword_1004BD580)
  {
    v0 = sub_1002A814C();
    sub_1002A93EC(v0);
    if (!qword_1004BD580)
    {
      operator new();
    }

    sub_1002A93F4(v0);
  }

  return qword_1004BD580;
}

int *sub_100268DD0(int *result, int *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  v4 = result[2];
  result[2] = a2[2];
  a2[2] = v4;
  v5 = result[3];
  result[3] = a2[3];
  a2[3] = v5;
  v6 = *(result + 2);
  *(result + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(result + 3);
  *(result + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(result + 4);
  *(result + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = *(result + 10);
  *(result + 10) = *(a2 + 10);
  *(a2 + 10) = v9;
  v10 = *(result + 14);
  *(result + 14) = *(a2 + 14);
  *(a2 + 14) = v10;
  v11 = *(result + 9);
  *(result + 9) = *(a2 + 9);
  v12 = result + 20;
  v13 = *(result + 10);
  *(a2 + 9) = v11;
  *(result + 10) = *(a2 + 10);
  *(a2 + 10) = v13;
  v14 = *(result + 11);
  *(result + 11) = *(a2 + 11);
  *(a2 + 11) = v14;
  if (*(result + 9) != a2 + 20)
  {
    if (v11 != v12)
    {
      return result;
    }

LABEL_5:
    *(a2 + 8) = a2 + 2;
    *(a2 + 9) = a2 + 20;
    return result;
  }

  *(result + 8) = result + 2;
  *(result + 9) = v12;
  if (*(a2 + 9) == v12)
  {
    goto LABEL_5;
  }

  return result;
}

char *sub_100268ED0(char *result, int a2, uint64_t *__src, __int16 a4)
{
  v4 = __src;
  v6 = result;
  if (a2 > 0x20 || !__src)
  {
    __dst[0] = 0;
    __dst[1] = 0;
    qmemcpy(sub_1002A80E0(__dst, 27), "0 <= d && d <= 32 && _sizes", 27);
    sub_1002A8980(-215, __dst, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 390);
  }

  v7 = a4 & 0xFFF;
  if (!*(result + 2))
  {
    goto LABEL_25;
  }

  v8 = *(result + 1);
  if (v8 == a2)
  {
    if (v7 != (*result & 0xFFF))
    {
      goto LABEL_25;
    }

    if (a2 == 2)
    {
      if (*(result + 2) == *__src && *(result + 3) == *(__src + 1))
      {
        return result;
      }
    }

    else if (a2 < 1)
    {
      LODWORD(v10) = 0;
      goto LABEL_22;
    }
  }

  else
  {
    if (a2 != 1 || v8 >= 3)
    {
      goto LABEL_25;
    }

    if (v7 != (*result & 0xFFF))
    {
      v9 = result + 64;
      if (*(result + 8) != __src)
      {
        goto LABEL_26;
      }

LABEL_29:
      result = memcpy(__dst, __src, 4 * a2);
      goto LABEL_30;
    }
  }

  v10 = 0;
  while (*(*(result + 8) + 4 * v10) == *(__src + v10))
  {
    if (a2 == ++v10)
    {
      goto LABEL_23;
    }
  }

LABEL_22:
  if (v10 == a2)
  {
LABEL_23:
    if (a2 > 1 || *(*(result + 8) + 4) == 1)
    {
      return result;
    }
  }

LABEL_25:
  v9 = result + 64;
  if (*(result + 8) != __src)
  {
LABEL_26:
    v11 = *(result + 7);
    if (!v11)
    {
      goto LABEL_37;
    }

LABEL_31:
    if (atomic_fetch_add((v11 + 20), 0xFFFFFFFF) == 1)
    {
      v12 = *(v6 + 56);
      if (v12)
      {
        *(v6 + 56) = 0;
        v13 = *(v12 + 8);
        if (!v13)
        {
          v13 = *(v6 + 48);
          if (!v13)
          {
            v13 = sub_100268CC8();
          }
        }

        result = (*(*v13 + 48))(v13, v12);
      }
    }

    goto LABEL_37;
  }

  if (a2 >= 1)
  {
    goto LABEL_29;
  }

LABEL_30:
  v4 = __dst;
  v11 = *(v6 + 56);
  if (v11)
  {
    goto LABEL_31;
  }

LABEL_37:
  *(v6 + 56) = 0;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  if (*(v6 + 4) >= 1)
  {
    v14 = 0;
    v15 = *v9;
    do
    {
      *(v15 + 4 * v14++) = 0;
    }

    while (v14 < *(v6 + 4));
  }

  if (a2)
  {
    *v6 = v7 | 0x42FF0000;
    sub_100269568(v6, a2, v4, 0, 1);
    v16 = *(v6 + 4);
    if (v16 >= 3)
    {
      v18 = (*v9 + 4);
      v19 = 1;
      v20 = v16 & 0x7FFFFFFE;
      v21 = 1;
      do
      {
        v19 *= *(v18 - 1);
        v21 *= *v18;
        v18 += 2;
        v20 -= 2;
      }

      while (v20);
      v17 = v21 * v19;
      v22 = v16 - (v16 & 0x7FFFFFFE);
      if (v22)
      {
        v23 = (*v9 + 8 * ((v16 >> 1) & 0x3FFFFFFF));
        do
        {
          v24 = *v23++;
          v17 *= v24;
          --v22;
        }

        while (v22);
      }
    }

    else
    {
      v17 = *(v6 + 12) * *(v6 + 8);
    }

    if (v17)
    {
      v25 = *(v6 + 48);
      v26 = sub_100268CC8();
      if (v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = v26;
      }

      v28 = (*(*v27 + 16))(v27, *(v6 + 4), *(v6 + 64), v7, 0, *(v6 + 72), 0, 0);
      *(v6 + 56) = v28;
      if (!v28)
      {
        v31 = 0;
        v32 = 0;
        v29 = sub_1002A80E0(&v31, 6);
        *(v29 + 4) = 12320;
        *v29 = 1025581173;
        sub_1002A8980(-215, &v31, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 430);
      }

      if (*(*(v6 + 72) + 8 * *(v6 + 4) - 8) != (((*v6 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*v6 & 7))) & 3))
      {
        v31 = 0;
        v32 = 0;
        qmemcpy(sub_1002A80E0(&v31, 146), "step[dims-1] == (size_t)(((((flags) & ((512 - 1) << 3)) >> 3) + 1) << ((((sizeof(size_t)/4+1)*16384|0x3a50) >> ((flags) & ((1 << 3) - 1))*2) & 3))", 146);
        sub_1002A8980(-215, &v31, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 438);
      }
    }

    v30 = *(v6 + 56);
    if (v30)
    {
      atomic_fetch_add((v30 + 20), 1u);
    }

    return sub_100269A18(v6);
  }

  return result;
}

void sub_10026935C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100269498(uint64_t result)
{
  v1 = *(result + 56);
  if (v1)
  {
    if (atomic_fetch_add((v1 + 20), 0xFFFFFFFF) == 1)
    {
      v2 = *(result + 56);
      if (v2)
      {
        *(result + 56) = 0;
        v3 = *(v2 + 8);
        if (!v3)
        {
          v3 = *(result + 48);
          if (!v3)
          {
            v4 = result;
            v5 = v2;
            v6 = sub_100268CC8();
            v2 = v5;
            v3 = v6;
            result = v4;
          }
        }

        v7 = result;
        (*(*v3 + 48))(v3, v2);
        result = v7;
      }
    }
  }

  *(result + 56) = 0;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  if (*(result + 4) >= 1)
  {
    v8 = 0;
    v9 = *(result + 64);
    do
    {
      *(v9 + 4 * v8++) = 0;
    }

    while (v8 < *(result + 4));
  }

  return result;
}

void sub_100269568(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2 >= 0x21)
  {
    v32 = 0;
    v33 = 0;
    qmemcpy(sub_1002A80E0(&v32, 25), "0 <= _dims && _dims <= 32", 25);
    sub_1002A8980(-215, &v32, "setSize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 284);
  }

  if (*(a1 + 4) != a2)
  {
    v10 = *(a1 + 72);
    if (v10 != (a1 + 80))
    {
      j__free(v10);
      *(a1 + 64) = a1 + 8;
      *(a1 + 72) = a1 + 80;
    }

    if (a2 >= 3)
    {
      v11 = 8 * a2;
      v12 = sub_1001D8FE8(v11 + 4 * (a2 + 1));
      *(a1 + 72) = v12;
      *&v12[v11] = a2;
      *(a1 + 64) = &v12[v11 + 4];
      *(a1 + 8) = -1;
    }
  }

  *(a1 + 4) = a2;
  if (a3)
  {
    v13 = (a2 - 1);
    if (a2 >= 1)
    {
      v30 = a2;
      v14 = *a1 & 7;
      v31 = (((*a1 >> 3) & 0x1FFu) + 1) << ((0xFA50u >> (2 * v14)) & 3);
      if (a4)
      {
        v15 = *(a3 + 4 * v13);
        if (v15 < 0)
        {
          v32 = 0;
          v33 = 0;
          v16 = sub_1002A80E0(&v32, 6);
          *v16 = 1027481715;
          *(v16 + 4) = 12320;
          sub_1002A8980(-215, &v32, "setSize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 310);
        }

        v17 = (0x88442211uLL >> (4 * v14)) & 0xF;
        *(*(a1 + 64) + 4 * v13) = v15;
        if (*(a4 + 8 * v13) % v17)
        {
          v32 = 0;
          v33 = 0;
          qmemcpy(sub_1002A80E0(&v32, 31), "Step must be a multiple of esz1", 31);
          sub_1002A8980(-13, &v32, "setSize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 317);
        }

        *(*(a1 + 72) + 8 * v13) = v31;
        if (v13)
        {
          v18 = a4 - 8;
          v19 = v13;
          do
          {
            v21 = *(a3 - 4 + 4 * v19);
            if (v21 < 0)
            {
              v32 = 0;
              v33 = 0;
              v22 = sub_1002A80E0(&v32, 6);
              *v22 = 1027481715;
              *(v22 + 4) = 12320;
              sub_1002A8980(-215, &v32, "setSize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 310);
            }

            *(*(a1 + 64) + 4 * v19 - 4) = v21;
            if (*(v18 + 8 * v19) % v17)
            {
              v32 = 0;
              v33 = 0;
              qmemcpy(sub_1002A80E0(&v32, 31), "Step must be a multiple of esz1", 31);
              sub_1002A8980(-13, &v32, "setSize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 317);
            }

            v23 = v31;
            if (v19 <= v13)
            {
              v23 = *(v18 + 8 * v19);
            }

            v20 = *(a1 + 72) + 8 * v19--;
            *(v20 - 8) = v23;
          }

          while (v19 + 1 > 1);
        }
      }

      else if (a5)
      {
        v24 = (((*a1 >> 3) & 0x1FFu) + 1) << ((0xFA50u >> (2 * v14)) & 3);
        do
        {
          v26 = *(a3 + 4 * v13);
          if (v26 < 0)
          {
            v32 = 0;
            v33 = 0;
            v27 = sub_1002A80E0(&v32, 6);
            *v27 = 1027481715;
            *(v27 + 4) = 12320;
            sub_1002A8980(-215, &v32, "setSize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 310);
          }

          *(*(a1 + 64) + 4 * v13) = v26;
          *(*(a1 + 72) + 8 * v13) = v24;
          v24 *= v26;
          v25 = v13-- <= 0;
        }

        while (!v25);
      }

      else
      {
        do
        {
          v28 = *(a3 + 4 * v13);
          if (v28 < 0)
          {
            v32 = 0;
            v33 = 0;
            v29 = sub_1002A80E0(&v32, 6);
            *v29 = 1027481715;
            *(v29 + 4) = 12320;
            sub_1002A8980(-215, &v32, "setSize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 310);
          }

          *(*(a1 + 64) + 4 * v13) = v28;
          v25 = v13-- <= 0;
        }

        while (!v25);
      }

      if (v30 == 1)
      {
        *(a1 + 4) = 2;
        *(a1 + 12) = 1;
        *(*(a1 + 72) + 8) = v31;
      }
    }
  }
}

void sub_1002699B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100269A18(uint64_t result)
{
  v1 = *(result + 4);
  v2 = *(result + 64);
  if (v1 < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = 0;
    while (v2[v3] <= 1)
    {
      if (v1 == ++v3)
      {
        LODWORD(v3) = *(result + 4);
        break;
      }
    }

    v4 = v3;
  }

  v5 = *(result + 72);
  v6 = v1 - 1;
  v7 = &v5[v1 - 1];
  while (v6 > v4)
  {
    v8 = *v7 * v2[v6];
    v9 = *--v7;
    --v6;
    if (v8 < v9)
    {
      *result &= ~0x4000u;
      if (v1 < 3)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  *result = *result & 0xFFFFBFFF | 0x4000;
  if (v1 < 3)
  {
    goto LABEL_15;
  }

LABEL_14:
  *(result + 8) = -1;
LABEL_15:
  v10 = *(result + 56);
  if (v10)
  {
    v11 = *(v10 + 24);
    *(result + 16) = v11;
    *(result + 24) = v11;
    if (v11)
    {
      goto LABEL_17;
    }

LABEL_22:
    *(result + 32) = 0;
    *(result + 40) = 0;
    return result;
  }

  v11 = *(result + 16);
  if (!v11)
  {
    goto LABEL_22;
  }

LABEL_17:
  v12 = *v2;
  v13 = *(result + 24) + *v5 * v12;
  *(result + 40) = v13;
  if (v12 < 1)
  {
    *(result + 32) = v13;
  }

  else
  {
    v14 = (v1 - 1);
    v15 = v11 + v5[v14] * v2[v14];
    *(result + 32) = v15;
    if (v1 >= 2)
    {
      do
      {
        v16 = *v2++;
        v17 = v16 - 1;
        v18 = *v5++;
        v15 += v18 * v17;
        --v14;
      }

      while (v14);
      *(result + 32) = v15;
    }
  }

  return result;
}

void sub_100269B58(uint64_t a1, uint64_t a2)
{
  sub_100269568(a1, *(a2 + 4), 0, 0, 0);
  if (*(a1 + 4) >= 1)
  {
    v4 = 0;
    v5 = *(a2 + 64);
    v6 = *(a2 + 72);
    v7 = *(a1 + 64);
    v8 = *(a1 + 72);
    do
    {
      *(v7 + 4 * v4) = *(v5 + 4 * v4);
      *(v8 + 8 * v4) = *(v6 + 8 * v4);
      ++v4;
    }

    while (v4 < *(a1 + 4));
  }
}

uint64_t sub_100269BC8(uint64_t result)
{
  v1 = *(result + 56);
  if (v1)
  {
    v2 = result;
    *(result + 56) = 0;
    v3 = *(v1 + 8);
    if (!v3)
    {
      v3 = *(v2 + 48);
      if (!v3)
      {
        v3 = sub_100268CC8();
      }
    }

    v4 = *(*v3 + 48);

    return v4();
  }

  return result;
}

uint64_t sub_100269C44(uint64_t a1, _DWORD *a2, int *a3, uint64_t *a4)
{
  *a1 = 1124007936;
  *(a1 + 4) = 0u;
  v8 = (a1 + 4);
  v9 = (a1 + 8);
  *(a1 + 48) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 20) = 0u;
  *(a1 + 64) = a1 + 8;
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = 0;
  v10 = a2[1];
  if (v10 < 2)
  {
    v44 = 0;
    v45 = 0;
    v11 = sub_1002A80E0(&v44, 11);
    *(v11 + 7) = 840973630;
    *v11 = *"m.dims >= 2";
    sub_1002A8980(-215, &v44, "Mat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 474);
  }

  if (v10 > 2)
  {
    bzero(v46, 0x440uLL);
    v44 = v46;
    v45 = v10;
    if (v10 > 0x88)
    {
      operator new[]();
    }

    v18 = *a4;
    v46[0] = *a3;
    v46[1] = v18;
    v19 = 2;
    do
    {
      v44[v19++] = 0x7FFFFFFF80000000;
    }

    while (v19 < a2[1]);
    sub_10026A400(v38, a2, v44);
    v21.n128_f64[0] = sub_10025DAEC(a1, v38, v20);
    if (v40)
    {
      if (atomic_fetch_add((v40 + 20), 0xFFFFFFFF) == 1)
      {
        v22 = v40;
        if (v40)
        {
          v40 = 0;
          v23 = *(v22 + 8);
          if (!v23)
          {
            v23 = v39;
            if (!v39)
            {
              v23 = sub_100268CC8();
            }
          }

          (*(*v23 + 48))(v23, v22, v21);
        }
      }
    }

    v40 = 0;
    memset(&v38[1], 0, 32);
    if (SDWORD1(v38[0]) >= 1)
    {
      v24 = 0;
      v25 = v41;
      do
      {
        *(v25 + 4 * v24++) = 0;
      }

      while (v24 < SDWORD1(v38[0]));
    }

    if (v42 != &v43)
    {
      j__free(v42);
    }

    if (v44 != v46 && v44 != 0)
    {
      operator delete[]();
    }

    return a1;
  }

  v12 = sub_10026A244(a1, a2);
  v13 = *a3;
  v14 = a3[1];
  if ((*a3 != 0x80000000 || v14 != 0x7FFFFFFF) && (v13 || v14 != *v9))
  {
    if (v13 < 0 || v13 > v14 || v14 > a2[2])
    {
      v44 = 0;
      v45 = 0;
      qmemcpy(sub_1002A80E0(&v44, 83), "0 <= _rowRange.start && _rowRange.start <= _rowRange.end && _rowRange.end <= m.rows", 83);
      sub_1002A8980(-215, &v44, "Mat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 492);
    }

    *(a1 + 8) = v14 - v13;
    *(a1 + 16) += *(a1 + 80) * v13;
    *a1 |= 0x8000u;
  }

  v15 = *a4;
  v16 = *(a4 + 1);
  if (*a4 == 0x80000000 && v16 == 0x7FFFFFFF || !v15 && v16 == *(a1 + 12))
  {
    v17 = *v9 < 1;
    if (*v9 == 1)
    {
LABEL_20:
      *a1 |= 0x4000u;
      goto LABEL_52;
    }
  }

  else
  {
    if (v15 < 0 || v15 > v16 || v16 > a2[3])
    {
      v44 = 0;
      v45 = 0;
      qmemcpy(sub_1002A80E0(&v44, 83), "0 <= _colRange.start && _colRange.start <= _colRange.end && _colRange.end <= m.cols", 83);
      sub_1002A8980(-215, &v44, "Mat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 501);
    }

    v27 = v16 - v15;
    *(a1 + 12) = v27;
    v28 = *(a1 + 4);
    if (v28 < 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = *(*(a1 + 72) + 8 * v28 - 8);
    }

    *(a1 + 16) += v29 * v15;
    if (v27 >= a2[3])
    {
      v30 = -32769;
    }

    else
    {
      v30 = -49153;
    }

    *a1 = v30 & *a1 | 0x8000;
    v17 = *v9 < 1;
    if (*v9 == 1)
    {
      goto LABEL_20;
    }
  }

  if (!v17)
  {
LABEL_52:
    if (*(a1 + 12) > 0)
    {
      return a1;
    }
  }

  v31 = *(a1 + 56);
  if (v31)
  {
    if (atomic_fetch_add((v31 + 20), 0xFFFFFFFF) == 1)
    {
      v32 = *(a1 + 56);
      if (v32)
      {
        *(a1 + 56) = 0;
        v33 = *(v32 + 8);
        if (!v33)
        {
          v33 = *(a1 + 48);
          if (!v33)
          {
            v34 = v32;
            v33 = sub_100268CC8();
            v32 = v34;
          }
        }

        (*(*v33 + 48))(v33, v32, v12);
      }
    }
  }

  *(a1 + 56) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  if (*(a1 + 4) >= 1)
  {
    v35 = 0;
    v36 = *(a1 + 64);
    do
    {
      *(v36 + 4 * v35++) = 0;
    }

    while (v35 < *v8);
  }

  *v9 = 0;
  return a1;
}

void sub_10026A18C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1002A8124(va);
  __cxa_begin_catch(a1);
  sub_100269498(v13);
  __cxa_rethrow();
}

__n128 sub_10026A244(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 56);
    if (v3)
    {
      atomic_fetch_add((v3 + 20), 1u);
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      if (atomic_fetch_add((v4 + 20), 0xFFFFFFFF) == 1)
      {
        v5 = *(a1 + 56);
        if (v5)
        {
          *(a1 + 56) = 0;
          v6 = *(v5 + 8);
          if (!v6)
          {
            v6 = *(a1 + 48);
            if (!v6)
            {
              v7 = a1;
              v8 = v5;
              v9 = sub_100268CC8();
              v5 = v8;
              v6 = v9;
              a1 = v7;
            }
          }

          v10 = a1;
          (*(*v6 + 48))(v6, v5);
          a1 = v10;
        }
      }
    }

    *(a1 + 56) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    if (*(a1 + 4) <= 0)
    {
      *a1 = *a2;
    }

    else
    {
      v11 = 0;
      v12 = *(a1 + 64);
      do
      {
        *(v12 + 4 * v11++) = 0;
        v13 = *(a1 + 4);
      }

      while (v11 < v13);
      *a1 = *a2;
      if (v13 >= 3)
      {
        v14 = *(a2 + 4);
        goto LABEL_19;
      }
    }

    v14 = *(a2 + 4);
    if (v14 <= 2)
    {
      *(a1 + 4) = v14;
      *(a1 + 8) = *(a2 + 8);
      v15 = *(a2 + 72);
      v16 = *(a1 + 72);
      *v16 = *v15;
      v16[1] = v15[1];
LABEL_22:
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      result = *(a2 + 48);
      *(a1 + 48) = result;
      return result;
    }

LABEL_19:
    v17 = a1;
    sub_100269568(a1, v14, 0, 0, 0);
    a1 = v17;
    if (*(v17 + 4) >= 1)
    {
      v18 = 0;
      v19 = *(a2 + 64);
      v20 = *(a2 + 72);
      v21 = *(v17 + 64);
      v22 = *(v17 + 72);
      do
      {
        *(v21 + 4 * v18) = *(v19 + 4 * v18);
        *(v22 + 8 * v18) = *(v20 + 8 * v18);
        ++v18;
      }

      while (v18 < *(v17 + 4));
    }

    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10026A400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 1124007936;
  *(a1 + 48) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 64) = a1 + 8;
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = 0;
  v5 = *(a2 + 4);
  if (!a3)
  {
    v26 = 0;
    v27 = 0;
    v6 = sub_1002A80E0(&v26, 6);
    *v6 = 1735287154;
    *(v6 + 4) = 29541;
    sub_1002A8980(-215, &v26, "Mat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 582);
  }

  if (v5 <= 0)
  {
    sub_10026A244(a1, a2);
  }

  else
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = *(a3 + 8 * i);
      v9 = v8 == 0x80000000 && HIDWORD(v8) == 0x7FFFFFFF;
      if (!v9 && ((v8 & 0x80000000) != 0 || v8 >= SHIDWORD(v8) || *(*(a2 + 64) + 4 * i) < SHIDWORD(v8)))
      {
        v26 = 0;
        v27 = 0;
        qmemcpy(sub_1002A80E0(&v26, 76), "r == Range::all() || (0 <= r.start && r.start < r.end && r.end <= m.size[i])", 76);
        sub_1002A8980(-215, &v26, "Mat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 586);
      }
    }

    sub_10026A244(a1, a2);
    for (j = 0; j != v5; ++j)
    {
      v11 = *(a3 + 8 * j);
      if (v11 != 0x80000000 || HIDWORD(v11) != 0x7FFFFFFF)
      {
        v13 = *(a1 + 64);
        if (v11)
        {
          v14 = 0;
        }

        else
        {
          v14 = *(v13 + 4 * j) == HIDWORD(v11);
        }

        if (!v14)
        {
          *(v13 + 4 * j) = HIDWORD(v11) - v11;
          *(a1 + 16) += *(*(a1 + 72) + 8 * j) * v11;
          *a1 |= 0x8000u;
        }
      }
    }
  }

  v15 = *(a1 + 4);
  v16 = v15;
  v17 = *(a1 + 64);
  if (v15 < 1)
  {
    v19 = 0;
  }

  else
  {
    v18 = 0;
    while (*(v17 + 4 * v18) <= 1)
    {
      if (v15 == ++v18)
      {
        LODWORD(v18) = *(a1 + 4);
        break;
      }
    }

    v19 = v18;
  }

  v20 = (*(a1 + 72) + 8 * v16 - 8);
  v21 = v16 - 1;
  while (v21 > v19)
  {
    v22 = *v20 * *(v17 + 4 * v21);
    v23 = *--v20;
    --v21;
    if (v22 < v23)
    {
      v24 = 0;
      goto LABEL_38;
    }
  }

  v24 = 0x4000;
LABEL_38:
  *a1 = *a1 & 0xFFFFBFFF | v24;
  return a1;
}

void sub_10026A6E4(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 4);
  if (v6 >= 3)
  {
    v25[0] = 0;
    v25[1] = 0;
    v7 = sub_1002A80E0(v25, 9);
    *(v7 + 8) = 50;
    *v7 = *"dims <= 2";
    sub_1002A8980(-215, v25, "diag", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 750);
  }

  *a3 = *a1;
  *(a3 + 4) = v6;
  *(a3 + 8) = *(a1 + 8);
  v8 = *(a1 + 32);
  *(a3 + 16) = *(a1 + 16);
  *(a3 + 32) = v8;
  v9 = *(a1 + 56);
  *(a3 + 48) = *(a1 + 48);
  *(a3 + 56) = v9;
  *(a3 + 80) = 0;
  *(a3 + 64) = a3 + 8;
  *(a3 + 72) = a3 + 80;
  *(a3 + 88) = 0;
  if (v9)
  {
    atomic_fetch_add((v9 + 20), 1u);
    v6 = *(a1 + 4);
  }

  if (v6 > 2)
  {
    *(a3 + 4) = 0;
    sub_100269568(a3, v6, 0, 0, 0);
    if (*(a3 + 4) >= 1)
    {
      v12 = 0;
      v13 = *(a1 + 64);
      v14 = *(a1 + 72);
      v15 = *(a3 + 64);
      v16 = *(a3 + 72);
      do
      {
        *(v15 + 4 * v12) = *(v13 + 4 * v12);
        *(v16 + 8 * v12) = *(v14 + 8 * v12);
        ++v12;
      }

      while (v12 < *(a3 + 4));
    }
  }

  else
  {
    v10 = *(a1 + 72);
    v11 = *(a3 + 72);
    *v11 = *v10;
    v11[1] = v10[1];
  }

  v17 = *(a1 + 4);
  if (v17 < 1)
  {
    v18 = 0;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = *(*(a1 + 72) + 8 * v17 - 8);
    if ((a2 & 0x80000000) == 0)
    {
LABEL_12:
      v19 = *(a1 + 12) - a2;
      if (*(a1 + 8) < v19)
      {
        v19 = *(a1 + 8);
      }

      v20 = *(a3 + 16) + v18 * a2;
      goto LABEL_19;
    }
  }

  v19 = *(a1 + 8) + a2;
  if (*(a1 + 12) < v19)
  {
    v19 = *(a1 + 12);
  }

  v20 = *(a3 + 16) - **(a1 + 72) * a2;
LABEL_19:
  *(a3 + 8) = v19;
  v21 = *(a3 + 64);
  v22 = *(a3 + 72);
  *v21 = v19;
  *(a3 + 12) = 1;
  v21[1] = 1;
  *(a3 + 16) = v20;
  if (v19 <= 1)
  {
    v18 = 0;
  }

  *v22 += v18;
  v23 = *a3 & 0xFFFFBFFF | ((*(a3 + 8) < 2) << 14);
  *a3 = v23;
  v24 = *(a1 + 64);
  if (v24[1] != 1 || *v24 != 1)
  {
    *a3 = v23 | 0x8000;
  }
}

void sub_10026A93C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    *v39 = 0uLL;
    *sub_1002A80E0(v39, 16) = *"(int)nelems >= 0";
    sub_1002A8980(-215, v39, "reserve", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 821);
  }

  if ((*(a1 + 1) & 0x80) != 0 || *(a1 + 16) + **(a1 + 72) * a2 > *(a1 + 40))
  {
    v4 = *(a1 + 64);
    v5 = *v4;
    if (*v4 < a2)
    {
      if (a2 <= 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = a2;
      }

      *v4 = v6;
      v7 = *(a1 + 4);
      if (v7 >= 3)
      {
        v9 = v4 + 1;
        v10 = 1;
        v11 = v7 & 0x7FFFFFFE;
        v12 = 1;
        do
        {
          v10 *= *(v9 - 1);
          v12 *= *v9;
          v9 += 2;
          v11 -= 2;
        }

        while (v11);
        v8 = v12 * v10;
        v13 = v7 - (v7 & 0x7FFFFFFE);
        if (v13)
        {
          v14 = &v4[(v7 >> 1) & 0x3FFFFFFF];
          do
          {
            v15 = *v14;
            v14 = (v14 + 4);
            v8 *= v15;
            --v13;
          }

          while (v13);
        }
      }

      else
      {
        v8 = *(a1 + 12) * *(a1 + 8);
      }

      if (v7 < 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = *(*(a1 + 72) + 8 * v7 - 8) * v8;
        if (v16 > 0x3F)
        {
LABEL_19:
          v17 = *a1;
          *v39 = 1124007936;
          memset(&v39[4], 0, 60);
          v40 = &v39[8];
          v41 = v42;
          v42[0] = 0;
          v42[1] = 0;
          sub_100268ED0(v39, v7, v4, v17 & 0xFFF);
          **(a1 + 64) = v5;
          if (v5 >= 1)
          {
            v27[0] = 0;
            v27[1] = v5;
            v43 = 0x7FFFFFFF80000000;
            sub_100269C44(v30, v39, v27, &v43);
            v27[0] = 33619968;
            v28 = v30;
            v29 = 0;
            sub_10022B754(a1, v27);
            if (v35)
            {
              if (atomic_fetch_add((v35 + 20), 0xFFFFFFFF) == 1)
              {
                v18 = v35;
                if (v35)
                {
                  v35 = 0;
                  v19 = *(v18 + 8);
                  if (!v19)
                  {
                    v19 = v34;
                    if (!v34)
                    {
                      v19 = sub_100268CC8();
                    }
                  }

                  (*(*v19 + 48))(v19, v18);
                }
              }
            }

            v35 = 0;
            v32 = 0u;
            v33 = 0u;
            if (v31 >= 1)
            {
              v20 = 0;
              v21 = v36;
              do
              {
                *(v21 + 4 * v20++) = 0;
              }

              while (v20 < v31);
            }

            if (v37 != &v38)
            {
              j__free(v37);
            }
          }

          v22 = sub_10026A244(a1, v39);
          **(a1 + 64) = v5;
          *(a1 + 32) = *(a1 + 16) + **(a1 + 72) * v5;
          if (*&v39[56])
          {
            if (atomic_fetch_add((*&v39[56] + 20), 0xFFFFFFFF) == 1)
            {
              v23 = *&v39[56];
              if (*&v39[56])
              {
                *&v39[56] = 0;
                v24 = *(v23 + 8);
                if (!v24)
                {
                  v24 = *&v39[48];
                  if (!*&v39[48])
                  {
                    v24 = sub_100268CC8();
                  }
                }

                (*(*v24 + 48))(v24, v23, v22);
              }
            }
          }

          *&v39[56] = 0;
          memset(&v39[16], 0, 32);
          if (*&v39[4] >= 1)
          {
            v25 = 0;
            v26 = v40;
            do
            {
              *&v26[4 * v25++] = 0;
            }

            while (v25 < *&v39[4]);
          }

          if (v41 != v42)
          {
            j__free(v41);
          }

          return;
        }
      }

      *v4 = (v16 + 63) * a2 / v16;
      LODWORD(v7) = *(a1 + 4);
      goto LABEL_19;
    }
  }
}

void sub_10026ACDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_100006D14(va);
  sub_100006D14(va1);
  _Unwind_Resume(a1);
}

void sub_10026AD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1002A8124(va);
  JUMPOUT(0x10026AD00);
}

void sub_10026AD20(uint64_t a1@<X0>, int a2@<W1>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (!a1)
  {
    goto LABEL_48;
  }

  v8 = *a1;
  v9 = *a1 & 0xFFFF0000;
  if (v9 != 1111687168)
  {
    if (v9 == 1111621632)
    {
      v10 = *(a1 + 36);
      if ((v10 & 0x80000000) == 0)
      {
        v11 = *(a1 + 32);
        if ((v11 & 0x80000000) == 0)
        {
          *a5 = 1124007936;
          *(a5 + 4) = 0u;
          *(a5 + 20) = 0u;
          *(a5 + 36) = 0u;
          *(a5 + 48) = 0u;
          *(a5 + 80) = 0;
          *(a5 + 64) = a5 + 8;
          *(a5 + 72) = a5 + 80;
          *(a5 + 88) = 0;
          if (a2)
          {
            *(a5 + 16) = 0;
            *(a5 + 24) = 0;
            *(a5 + 32) = 0;
            sub_10000A690(&__src, v11, v10, v8, *(a1 + 24), *(a1 + 4));
            LODWORD(v128) = 33619968;
            v129 = a5;
            v130 = 0;
            sub_10022B754(&__src, &v128);
            if (v124)
            {
              if (atomic_fetch_add((v124 + 20), 0xFFFFFFFF) == 1)
              {
                v12 = v124;
                if (v124)
                {
                  v124 = 0;
                  v13 = *(v12 + 8);
                  if (!v13)
                  {
                    v13 = v123;
                    if (!v123)
                    {
                      v13 = sub_100268CC8();
                    }
                  }

                  (*(*v13 + 48))(v13, v12);
                }
              }
            }

            v124 = 0;
            v121 = 0u;
            v122 = 0u;
            if (SHIDWORD(__src) >= 1)
            {
              v14 = 0;
              v15 = v125;
              do
              {
                *(v15 + v14++) = 0;
              }

              while (v14 < SHIDWORD(__src));
            }

            if (v126 != v127)
            {
              j__free(v126);
            }
          }

          else
          {
            *a5 = v8 & 0x4FFF | 0x42FF0000;
            *(a5 + 4) = 2;
            *(a5 + 8) = v11;
            *(a5 + 12) = v10;
            v35 = *(a1 + 24);
            *(a5 + 16) = v35;
            *(a5 + 24) = v35;
            v36 = (((v8 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v8 & 7))) & 3);
            v37 = v10 * v36;
            if (*(a1 + 4))
            {
              v37 = *(a1 + 4);
            }

            v38 = v35 + v37 * v11;
            *(a5 + 32) = v38 - v37 + v10 * v36;
            *(a5 + 40) = v38;
            *(a5 + 80) = v37;
            *(a5 + 88) = v36;
          }

          return;
        }
      }

LABEL_47:
      __src = 0;
      v120 = 0;
      v34 = sub_1002A80E0(&__src, 18);
      *(v34 + 16) = 25968;
      *v34 = *"Unknown array type";
      sub_1002A8980(-5, &__src, "cvarrToMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 985);
    }

    if (v8 == 144)
    {
      if (!*(a1 + 88))
      {
        goto LABEL_47;
      }

      if (!a3)
      {
        v64 = *(a1 + 48);
        if (v64)
        {
          if (*v64 >= 1)
          {
            sub_1001FA81C(&__src, "COI is not supported by the function");
            sub_1002A8980(-24, &__src, "cvarrToMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 961);
          }
        }
      }

      *a5 = 0x242FF0000;
      *(a5 + 24) = 0u;
      *(a5 + 40) = 0u;
      *(a5 + 8) = 0u;
      *(a5 + 56) = 0;
      *(a5 + 64) = a5 + 8;
      v20 = *(a1 + 96);
      *(a5 + 80) = v20;
      v21 = (a5 + 80);
      *(a5 + 72) = a5 + 80;
      *(a5 + 88) = 0;
      v22 = (0x43160520u >> (((*(a1 + 16) >> 2) & 0x3C) + ((*(a1 + 16) >> 31) & 0x14))) & 7;
      v23 = *(a1 + 48);
      v24 = *(a1 + 28);
      if (!v23)
      {
        if (v24)
        {
          __src = 0;
          v120 = 0;
          v65 = sub_1002A80E0(&__src, 19);
          *(v65 + 15) = 807419197;
          *v65 = *"img->dataOrder == 0";
          sub_1002A8980(-215, &__src, "iplImageToMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 706);
        }

        v66 = 8 * *(a1 + 8) - 8;
        v59 = (v66 | v22) + 1124007936;
        v61 = *(a1 + 40);
        v60 = *(a1 + 44);
        *(a5 + 8) = v60;
        *(a5 + 12) = v61;
        v67 = *(a1 + 88);
        *(a5 + 16) = v67;
        *(a5 + 24) = v67;
        v62 = (((v66 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * v22)) & 3);
        goto LABEL_99;
      }

      if (v24)
      {
        v25 = *v23;
        if (!*v23)
        {
          __src = 0;
          v120 = 0;
          qmemcpy(sub_1002A80E0(&__src, 41), "img->dataOrder == 0 || img->roi->coi != 0", 41);
          sub_1002A8980(-215, &__src, "iplImageToMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 715);
        }
      }

      else
      {
        v25 = *v23;
        if (!*v23)
        {
          goto LABEL_62;
        }

        v24 = *(a1 + 28);
      }

      if (v24 == 1)
      {
        v26 = 0;
        v27 = 1;
LABEL_63:
        v58 = v26 + v22;
        v59 = v26 + v22 + 1124007936;
        v60 = v23[4];
        *(a5 + 8) = v60;
        v61 = v23[3];
        *(a5 + 12) = v61;
        v62 = (((v58 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v58 & 7))) & 3);
        if (v27)
        {
          v63 = *v21 * (v25 - 1) * *(a1 + 44);
        }

        else
        {
          v63 = 0;
        }

        v82 = *(a1 + 88) + v63;
        v21 = *(a5 + 72);
        v20 = *v21;
        v67 = v82 + *v21 * v23[2] + v23[1] * v62;
        *(a5 + 16) = v67;
        *(a5 + 24) = v67;
LABEL_99:
        v83 = v67 + v20 * v60;
        v84 = v67 + v20 * (v60 - 1) + v62 * v61;
        *(a5 + 32) = v84;
        *(a5 + 40) = v83;
        if (v60 == 1 || v62 * v61 == v20)
        {
          v86 = 0x4000;
        }

        else
        {
          v86 = 0;
        }

        v87 = v86 | v59;
        *a5 = v87;
        v21[1] = v62;
        if (a2)
        {
          v88 = *(a5 + 4);
          __src = __PAIR64__(v88, v87);
          v120 = __PAIR64__(v61, v60);
          *&v121 = v67;
          *(&v121 + 1) = v67;
          *&v122 = v84;
          *(&v122 + 1) = v83;
          v89 = *(a5 + 56);
          v123 = *(a5 + 48);
          v124 = v89;
          v125 = &v120;
          v126 = v127;
          v127[0] = 0;
          v127[1] = 0;
          if (v89)
          {
            atomic_fetch_add((v89 + 20), 1u);
            v88 = *(a5 + 4);
          }

          if (v88 > 2)
          {
            HIDWORD(__src) = 0;
            sub_100269568(&__src, v88, 0, 0, 0);
            if (SHIDWORD(__src) >= 1)
            {
              v92 = 0;
              v93 = *(a5 + 64);
              v94 = *(a5 + 72);
              v95 = v125;
              v96 = v126;
              do
              {
                *(v95 + v92) = *(v93 + 4 * v92);
                v96[v92] = *(v94 + 8 * v92);
                ++v92;
              }

              while (v92 < SHIDWORD(__src));
            }
          }

          else
          {
            v90 = *(a5 + 72);
            v91 = v126;
            *v126 = *v90;
            v91[1] = v90[1];
          }

          v97 = *(a5 + 56);
          if (v97)
          {
            if (atomic_fetch_add((v97 + 20), 0xFFFFFFFF) == 1)
            {
              v98 = *(a5 + 56);
              if (v98)
              {
                *(a5 + 56) = 0;
                v99 = *(v98 + 8);
                if (!v99)
                {
                  v99 = *(a5 + 48);
                  if (!v99)
                  {
                    v99 = sub_100268CC8();
                  }
                }

                (*(*v99 + 48))(v99, v98);
              }
            }
          }

          *(a5 + 56) = 0;
          *(a5 + 16) = 0u;
          *(a5 + 32) = 0u;
          if (*(a5 + 4) >= 1)
          {
            v100 = 0;
            v101 = *(a5 + 64);
            do
            {
              *(v101 + 4 * v100++) = 0;
            }

            while (v100 < *(a5 + 4));
          }

          v102 = *(a1 + 48);
          if (v102 && (v103 = *v102) != 0 && *(a1 + 28) != 1)
          {
            *&v111 = (v103 - 1);
            v128 = v120;
            sub_100268ED0(a5, 2, &v128, __src & 0xFFF);
            sub_1002001E0(&__src, 1uLL, a5, 1uLL, &v111, 1uLL);
          }

          else
          {
            LODWORD(v128) = 33619968;
            v129 = a5;
            v130 = 0;
            sub_10022B754(&__src, &v128);
          }

          if (v124)
          {
            if (atomic_fetch_add((v124 + 20), 0xFFFFFFFF) == 1)
            {
              v104 = v124;
              if (v124)
              {
                v124 = 0;
                v105 = *(v104 + 8);
                if (!v105)
                {
                  v105 = v123;
                  if (!v123)
                  {
                    v105 = sub_100268CC8();
                  }
                }

                (*(*v105 + 48))(v105, v104);
              }
            }
          }

          v124 = 0;
          v121 = 0u;
          v122 = 0u;
          if (SHIDWORD(__src) >= 1)
          {
            v106 = 0;
            v107 = v125;
            do
            {
              *(v107 + v106++) = 0;
            }

            while (v106 < SHIDWORD(__src));
          }

          if (v126 != v127)
          {
            j__free(v126);
          }
        }

        return;
      }

LABEL_62:
      v27 = 0;
      v26 = 8 * *(a1 + 8) - 8;
      goto LABEL_63;
    }

    if (v9 != 1117323264)
    {
      goto LABEL_47;
    }

    v28 = *(a1 + 40);
    if (v28)
    {
      v29 = *(a1 + 44);
      if (v28 < 1 || (((v8 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v8 & 7))) & 3) != v29)
      {
        __src = 0;
        v120 = 0;
        qmemcpy(sub_1002A80E0(&__src, 152), "total > 0 && (((((seq->flags) & ((512 - 1) << 3)) >> 3) + 1) << ((((sizeof(size_t)/4+1)*16384|0x3a50) >> ((seq->flags) & ((1 << 3) - 1))*2) & 3)) == esz", 152);
        sub_1002A8980(-215, &__src, "cvarrToMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 970);
      }

      if ((a2 & 1) == 0 && (v30 = *(a1 + 88), *(v30 + 8) == v30))
      {
        sub_10000A690(a5, *(a1 + 40), 1, *a1 & 0xFFF, *(v30 + 24), 0);
      }

      else if (a4)
      {
        v31 = v29 * v28 + 7;
        v32 = v31 >> 3;
        if (*(a4 + 8) >= v31 >> 3)
        {
          *(a4 + 8) = v32;
          v33 = *a4;
        }

        else
        {
          v33 = (a4 + 16);
          if (*a4 == a4 + 16)
          {
            v33 = *a4;
          }

          else
          {
            if (*a4)
            {
              operator delete[]();
            }

            *a4 = v33;
          }

          *(a4 + 8) = v32;
          if (v31 >= 0x448)
          {
            operator new[]();
          }
        }

        sub_1002323E4(a1, v33, 0x3FFFFFFF00000000);
        sub_10000A690(a5, v28, 1, v8 & 0xFFF, v33, 0);
      }

      else
      {
        *a5 = 1124007936;
        *(a5 + 4) = 0u;
        *(a5 + 20) = 0u;
        *(a5 + 36) = 0u;
        *(a5 + 48) = 0u;
        *(a5 + 80) = 0;
        *(a5 + 64) = a5 + 8;
        *(a5 + 72) = a5 + 80;
        *(a5 + 88) = 0;
        __src = v28 | 0x100000000;
        sub_100268ED0(a5, 2, &__src, v8 & 0xFFF);
        sub_1002323E4(a1, *(a5 + 16), 0x3FFFFFFF00000000);
      }

      return;
    }

LABEL_48:
    *a5 = 1124007936;
    *(a5 + 4) = 0u;
    *(a5 + 20) = 0u;
    *(a5 + 36) = 0u;
    *(a5 + 48) = 0u;
    *(a5 + 80) = 0;
    *(a5 + 64) = a5 + 8;
    *(a5 + 72) = a5 + 80;
    *(a5 + 88) = 0;
    return;
  }

  v16 = *(a1 + 24);
  if (!v16)
  {
    goto LABEL_47;
  }

  *(a5 + 4) = 0u;
  v17 = (a5 + 4);
  *(a5 + 20) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 36) = 0u;
  *(a5 + 80) = 0;
  *(a5 + 64) = a5 + 8;
  *(a5 + 72) = a5 + 80;
  *(a5 + 88) = 0;
  *(a5 + 16) = v16;
  *(a5 + 24) = v16;
  *a5 = v8 & 0xFFF | 0x42FF0000;
  v18 = *(a1 + 4);
  if (v18 >= 1)
  {
    if (v18 <= 7)
    {
      v19 = 0;
LABEL_56:
      v46 = v18 - v19;
      v47 = 8 * v19;
      v48 = &__src + v19;
      v49 = &v128 + v19;
      v50 = (v47 + a1 + 36);
      do
      {
        v51 = *v50;
        *v49++ = *(v50 - 1);
        *v48++ = v51;
        v50 += 2;
        --v46;
      }

      while (v46);
      goto LABEL_58;
    }

    v19 = v18 & 0x7FFFFFF8;
    v39 = (a1 + 64);
    v40 = &v130;
    v41 = &v122;
    v42 = v19;
    do
    {
      v43 = v39 - 8;
      v131 = vld2q_f32(v43);
      v132 = vld2q_f32(v39);
      v40[-1] = v131.val[0];
      *v40 = v132.val[0];
      v44.i64[0] = v131.val[1].i32[0];
      v44.i64[1] = v131.val[1].i32[1];
      v45 = v44;
      v44.i64[0] = v131.val[1].i32[2];
      v44.i64[1] = v131.val[1].i32[3];
      v131.val[0] = v44;
      v44.i64[0] = v132.val[1].i32[0];
      v44.i64[1] = v132.val[1].i32[1];
      v131.val[1] = v44;
      v44.i64[0] = v132.val[1].i32[2];
      v44.i64[1] = v132.val[1].i32[3];
      *(v41 - 2) = v45;
      *(v41 - 1) = v131;
      v41[1] = v44;
      v41 += 4;
      v39 += 16;
      v40 += 2;
      v42 -= 8;
    }

    while (v42);
    if (v19 != v18)
    {
      goto LABEL_56;
    }
  }

LABEL_58:
  sub_100269568(a5, v18, &v128, &__src, 0);
  sub_100269A18(a5);
  if (!a2)
  {
    return;
  }

  v52 = *a5;
  v53 = *(a5 + 16);
  v111 = *a5;
  v112 = v53;
  v113 = *(a5 + 32);
  v54 = *(a5 + 56);
  v114 = *(a5 + 48);
  v115 = v54;
  v116 = &v111 + 8;
  v117 = v118;
  v118[0] = 0;
  v118[1] = 0;
  if (!v54)
  {
    v55 = DWORD1(v52);
    if (SDWORD1(v52) <= 2)
    {
      goto LABEL_61;
    }

LABEL_72:
    DWORD1(v111) = 0;
    sub_100269568(&v111, v55, 0, 0, 0);
    if (SDWORD1(v111) >= 1)
    {
      v68 = 0;
      v69 = *(a5 + 64);
      v70 = *(a5 + 72);
      v71 = v116;
      v72 = v117;
      do
      {
        *&v71[4 * v68] = *(v69 + 4 * v68);
        v72[v68] = *(v70 + 8 * v68);
        ++v68;
      }

      while (v68 < SDWORD1(v111));
    }

    goto LABEL_75;
  }

  atomic_fetch_add((v54 + 20), 1u);
  v55 = *v17;
  if (*v17 > 2)
  {
    goto LABEL_72;
  }

LABEL_61:
  v56 = *(a5 + 72);
  v57 = v117;
  *v117 = *v56;
  v57[1] = v56[1];
LABEL_75:
  v73 = *(a5 + 56);
  if (v73)
  {
    if (atomic_fetch_add((v73 + 20), 0xFFFFFFFF) == 1)
    {
      v74 = *(a5 + 56);
      if (v74)
      {
        *(a5 + 56) = 0;
        v75 = *(v74 + 8);
        if (!v75)
        {
          v75 = *(a5 + 48);
          if (!v75)
          {
            v75 = sub_100268CC8();
          }
        }

        (*(*v75 + 48))(v75, v74);
      }
    }
  }

  *(a5 + 56) = 0;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  if (*(a5 + 4) >= 1)
  {
    v76 = 0;
    v77 = *(a5 + 64);
    do
    {
      *(v77 + 4 * v76++) = 0;
    }

    while (v76 < *v17);
  }

  v108 = 33619968;
  v109 = a5;
  v110 = 0;
  sub_10022B754(&v111, &v108);
  if (v115)
  {
    if (atomic_fetch_add((v115 + 20), 0xFFFFFFFF) == 1)
    {
      v78 = v115;
      if (v115)
      {
        v115 = 0;
        v79 = *(v78 + 8);
        if (!v79)
        {
          v79 = v114;
          if (!v114)
          {
            v79 = sub_100268CC8();
          }
        }

        (*(*v79 + 48))(v79, v78);
      }
    }
  }

  v115 = 0;
  v112 = 0u;
  v113 = 0u;
  if (SDWORD1(v111) >= 1)
  {
    v80 = 0;
    v81 = v116;
    do
    {
      *&v81[4 * v80++] = 0;
    }

    while (v80 < SDWORD1(v111));
  }

  if (v117 != v118)
  {
    j__free(v117);
  }
}

void sub_10026BA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_100006D14(&a26);
  sub_100006D14(v26);
  _Unwind_Resume(a1);
}

void sub_10026BB90(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10026BBAC(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v3 = *(result + 4);
  if (v3 > 2 || !**(result + 72))
  {
    v17[0] = 0;
    v17[1] = 0;
    qmemcpy(sub_1002A80E0(v17, 24), "dims <= 2 && step[0] > 0", 24);
    sub_1002A8980(-215, v17, "locateROI", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 991);
  }

  if (v3 < 1)
  {
    v4 = 0;
    v11 = *(result + 16);
    v6 = *(result + 24);
    v7 = *(result + 32);
    v8 = v11 - v6;
    if (v11 != v6)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v4 = *(*(result + 72) + 8 * v3 - 8);
    v5 = *(result + 16);
    v6 = *(result + 24);
    v7 = *(result + 32);
    v8 = v5 - v6;
    if (v5 != v6)
    {
LABEL_5:
      v9 = **(result + 72);
      v10 = v8 / v9;
      v8 = (v8 - (v8 / v9) * v9) / v4;
      goto LABEL_9;
    }
  }

  LODWORD(v10) = 0;
  v9 = **(result + 72);
LABEL_9:
  *a3 = v8;
  a3[1] = v10;
  v12 = v7 - v6;
  v13 = *(result + 12) + v8;
  v14 = (v12 - v4 * v13) / v9;
  v15 = *(result + 8) + v10;
  if (v14 + 1 > v15)
  {
    v15 = v14 + 1;
  }

  v16 = (v12 - *(result + 80) * (v15 - 1)) / v4;
  if (v13 > v16)
  {
    LODWORD(v16) = *(result + 12) + v8;
  }

  *a2 = v16;
  a2[1] = v15;
  return result;
}

uint64_t sub_10026BD20(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v10 = *(a1 + 4);
  if (v10 > 2 || !**(a1 + 72))
  {
    v23[0] = 0;
    v23[1] = 0;
    qmemcpy(sub_1002A80E0(v23, 24), "dims <= 2 && step[0] > 0", 24);
    sub_1002A8980(-215, v23, "adjustROI", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1012);
  }

  v22 = 0;
  v23[0] = 0;
  if (v10 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(*(a1 + 72) + 8 * v10 - 8);
  }

  sub_10026BBAC(a1, v23, &v22);
  v12 = vrev64_s32(v22);
  v13 = vrev64_s32(v23[0]);
  v14 = vmin_s32(v13, vmax_s32(vsub_s32(v12, __PAIR64__(a4, a2)), 0));
  v15 = vmax_s32(vmin_s32(v13, vadd_s32(vadd_s32(v12, *(a1 + 8)), __PAIR64__(a5, a3))), 0);
  v16 = vsub_s32(vmin_s32(v14, v15), v12);
  *(a1 + 16) += *(a1 + 80) * v16.i32[0] + v11 * v16.i32[1];
  v17 = vabd_s32(v14, v15);
  *(a1 + 8) = v17;
  v18 = *(a1 + 64);
  *v18 = v17.i32[0];
  v19 = *(a1 + 12);
  v18[1] = v19;
  if (v11 * v19 == **(a1 + 72) || *(a1 + 8) == 1)
  {
    v20 = *a1 | 0x4000;
  }

  else
  {
    v20 = *a1 & 0xFFFFBFFF;
  }

  *a1 = v20;
  return a1;
}

void sub_10026BED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void sub_10026BEEC(int *a1, int a2, uint64_t *__src, unsigned __int16 a4, signed int a5, int a6, unsigned int a7)
{
  v12 = *a1;
  v13 = *a1 & 0x1F0000;
  v14 = a4 & 0xFFF;
  if (v13 >= 0xA0000)
  {
    if (v13 == 655360)
    {
      if ((a5 & 0x80000000) == 0)
      {
        v121 = 0;
        v122 = 0;
        v34 = sub_1002A80E0(&v121, 5);
        *v34 = 540811369;
        *(v34 + 4) = 48;
        sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2506);
      }

      v35 = *(a1 + 1);
      if (a6)
      {
        if ((*(v35 + 1) & 0x40) == 0)
        {
          if (*a1 >> 30)
          {
            v121 = 0;
            v122 = 0;
            qmemcpy(sub_1002A80E0(&v121, 28), "!fixedType() && !fixedSize()", 28);
            sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2512);
          }

          v36 = *(v35 + 32);
          if (v36 && atomic_fetch_add((v36 + 16), 0xFFFFFFFF) == 1)
          {
            sub_1002B086C(v35);
          }

          if (*(v35 + 4) >= 1)
          {
            v37 = 0;
            v38 = *(v35 + 48);
            do
            {
              *(v38 + 4 * v37++) = 0;
            }

            while (v37 < *(v35 + 4));
          }

          *(v35 + 32) = 0;
        }

        if (a2 == 2 && *(v35 + 4) == 2)
        {
          if (*(v35 + 32))
          {
            v40 = *(v35 + 8);
            v39 = *(v35 + 12);
            if (v39 * v40)
            {
              if ((*v35 & 0xFFF) == v14 && v40 == *(__src + 1) && v39 == *__src)
              {
                return;
              }
            }
          }
        }
      }

      v41 = *a1;
      if (*a1 < 0)
      {
        if (((*v35 ^ a4) & 0xFF8) != 0 || ((a7 >> v41) & 1) == 0)
        {
          if (v14 != (*v35 & 0xFFF))
          {
            v121 = 0;
            v122 = 0;
            qmemcpy(sub_1002A80E0(&v121, 42), "((mtype) & ((1 << 3)*512 - 1)) == m.type()", 42);
            sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2526);
          }
        }

        else
        {
          LOWORD(v14) = *v35 & 0xFFF;
        }
      }

      if ((v41 & 0x40000000) != 0)
      {
        if (*(v35 + 4) != a2)
        {
          v121 = 0;
          v122 = 0;
          v42 = sub_1002A80E0(&v121, 11);
          *(v42 + 7) = 1679834429;
          *v42 = *"m.dims == d";
          sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2530);
        }

        if (a2 >= 1)
        {
          v43 = 0;
          do
          {
            if (*(*(v35 + 48) + v43) != *(__src + v43))
            {
              v121 = 0;
              v122 = 0;
              qmemcpy(sub_1002A80E0(&v121, 21), "m.size[j] == sizes[j]", 21);
              sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2532);
            }

            v43 += 4;
          }

          while (4 * a2 != v43);
        }
      }

      goto LABEL_187;
    }

    if (v13 == 917504)
    {
      if (v14 != (*a1 & 0xFFF) && ((a4 & 0xFF8) != 0 || ((a7 >> *a1) & 1) == 0))
      {
        v121 = 0;
        v122 = 0;
        qmemcpy(sub_1002A80E0(&v121, 106), "mtype == type0 || (((((mtype) & ((512 - 1) << 3)) >> 3) + 1) == 1 && ((1 << type0) & fixedDepthMask) != 0)", 106);
        sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2551);
      }

      if (a2 != 2 || a1[5] * a1[4] != *(__src + 1) * *__src)
      {
        v121 = 0;
        v122 = 0;
        qmemcpy(sub_1002A80E0(&v121, 40), "d == 2 && sz.area() == sizes[0]*sizes[1]", 40);
        sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2552);
      }

      return;
    }
  }

  else
  {
    if (v13 == 0x10000)
    {
      if ((a5 & 0x80000000) == 0)
      {
        v121 = 0;
        v122 = 0;
        v23 = sub_1002A80E0(&v121, 5);
        *v23 = 540811369;
        *(v23 + 4) = 48;
        sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2472);
      }

      v24 = *(a1 + 1);
      if (a6)
      {
        if ((*(v24 + 1) & 0x40) == 0)
        {
          if (*a1 >> 30)
          {
            v121 = 0;
            v122 = 0;
            qmemcpy(sub_1002A80E0(&v121, 28), "!fixedType() && !fixedSize()", 28);
            sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2478);
          }

          v25 = *(v24 + 56);
          if (v25)
          {
            if (atomic_fetch_add((v25 + 20), 0xFFFFFFFF) == 1)
            {
              v26 = *(v24 + 56);
              if (v26)
              {
                *(v24 + 56) = 0;
                v27 = *(v26 + 8);
                if (!v27)
                {
                  v27 = *(v24 + 48);
                  if (!v27)
                  {
                    v28 = v26;
                    v27 = sub_100268CC8();
                    v26 = v28;
                  }
                }

                (*(*v27 + 48))(v27, v26);
              }
            }
          }

          *(v24 + 56) = 0;
          *(v24 + 16) = 0u;
          *(v24 + 32) = 0u;
          if (*(v24 + 4) >= 1)
          {
            v29 = 0;
            v30 = *(v24 + 64);
            do
            {
              *(v30 + 4 * v29++) = 0;
            }

            while (v29 < *(v24 + 4));
          }
        }

        if (a2 == 2 && *(v24 + 4) == 2 && *(v24 + 16) && (*v24 & 0xFFF) == v14 && *(v24 + 8) == *(__src + 1) && *(v24 + 12) == *__src)
        {
          return;
        }
      }

      v31 = *a1;
      if (*a1 < 0)
      {
        if (((*v24 ^ a4) & 0xFF8) != 0 || ((a7 >> v31) & 1) == 0)
        {
          if (v14 != (*v24 & 0xFFF))
          {
            v121 = 0;
            v122 = 0;
            qmemcpy(sub_1002A80E0(&v121, 42), "((mtype) & ((1 << 3)*512 - 1)) == m.type()", 42);
            sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2492);
          }
        }

        else
        {
          LOWORD(v14) = *v24 & 0xFFF;
        }
      }

      if ((v31 & 0x40000000) != 0)
      {
        if (*(v24 + 4) != a2)
        {
          v121 = 0;
          v122 = 0;
          v32 = sub_1002A80E0(&v121, 11);
          *(v32 + 7) = 1679834429;
          *v32 = *"m.dims == d";
          sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2496);
        }

        if (a2 >= 1)
        {
          v33 = 0;
          do
          {
            if (*(*(v24 + 64) + v33) != *(__src + v33))
            {
              v121 = 0;
              v122 = 0;
              qmemcpy(sub_1002A80E0(&v121, 21), "m.size[j] == sizes[j]", 21);
              sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2498);
            }

            v33 += 4;
          }

          while (4 * a2 != v33);
        }
      }

      goto LABEL_160;
    }

    if (v13 == 0x20000)
    {
      if ((a5 & 0x80000000) == 0)
      {
        v121 = 0;
        v122 = 0;
        v15 = sub_1002A80E0(&v121, 5);
        *v15 = 540811369;
        *(v15 + 4) = 48;
        sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2540);
      }

      if (v14 != (*a1 & 0xFFF) && ((a4 & 0xFF8) != 0 || ((a7 >> *a1) & 1) == 0))
      {
        v121 = 0;
        v122 = 0;
        qmemcpy(sub_1002A80E0(&v121, 106), "mtype == type0 || (((((mtype) & ((512 - 1) << 3)) >> 3) + 1) == 1 && ((1 << type0) & fixedDepthMask) != 0)", 106);
        sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2542);
      }

      if (a2 != 2 || ((v47 = a1[5], *__src != v47) || *(__src + 1) != a1[4]) && (!a6 || *__src != a1[4] || *(__src + 1) != v47))
      {
        v121 = 0;
        v122 = 0;
        qmemcpy(sub_1002A80E0(&v121, 129), "d == 2 && ((sizes[0] == sz.height && sizes[1] == sz.width) || (allowTransposed && sizes[0] == sz.width && sizes[1] == sz.height))", 129);
        sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2544);
      }

      return;
    }
  }

  if ((*a1 & 0x1F0000u) >= 0x50000)
  {
    if (v13 == 327680)
    {
      v48 = *(a1 + 1);
      if (a5 < 0)
      {
        if (a2 != 2 || (v58 = *__src, *__src != 1) && (v59 = *(__src + 1), v59 != 1) && v59 * v58)
        {
          sub_1001FA81C(&v121, "d == 2 && (sizes[0] == 1 || sizes[1] == 1 || sizes[0]*sizes[1] == 0)");
          sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2650);
        }

        v60 = *(__src + 1);
        v61 = v60 * v58;
        v62 = v58 + v60 - 1;
        if (v61 <= 0)
        {
          v62 = 0;
        }

        v63 = v62;
        v64 = 0xAAAAAAAAAAAAAAABLL * ((v48[1] - *v48) >> 5);
        if ((v12 & 0x40000000) != 0 && v64 != v62)
        {
          sub_1001FA81C(&v121, "!fixedSize() || len == len0");
          sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2653);
        }

        sub_1002732E4(*(a1 + 1), v62);
        if (*a1 < 0 && v64 < v63)
        {
          v65 = *a1 & 0xFFF;
          v66 = *v48;
          do
          {
            v67 = v66 + 96 * v64;
            if ((*v67 & 0xFFF) != v65)
            {
              if (*(v67 + 16))
              {
                v68 = *(v67 + 4);
                if (v68 >= 3)
                {
                  v70 = *(v67 + 64);
                  v71 = (v70 + 4);
                  v72 = v68 & 0x7FFFFFFE;
                  v73 = 1;
                  v74 = 1;
                  do
                  {
                    v73 *= *(v71 - 1);
                    v74 *= *v71;
                    v71 += 2;
                    v72 -= 2;
                  }

                  while (v72);
                  v69 = v74 * v73;
                  v75 = v68 - (v68 & 0x7FFFFFFE);
                  if (v75)
                  {
                    v76 = (v70 + 8 * ((v68 >> 1) & 0x3FFFFFFF));
                    do
                    {
                      v77 = *v76++;
                      v69 *= v77;
                      --v75;
                    }

                    while (v75);
                  }
                }

                else
                {
                  v69 = *(v67 + 12) * *(v67 + 8);
                }

                if (v68 && v69)
                {
                  v121 = 0;
                  v122 = 0;
                  v78 = sub_1002A80E0(&v121, 12);
                  *(v78 + 8) = 690518388;
                  *v78 = *"v[j].empty()";
                  sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2662);
                }
              }

              *(v66 + 96 * v64) = *(v66 + 96 * v64) & 0xFFFFF000 | v65;
            }

            ++v64;
          }

          while (v64 != v63);
        }

        return;
      }

      if ((-1431655765 * ((v48[1] - *v48) >> 5)) <= a5)
      {
        sub_1001FA81C(&v121, "i < (int)v.size()");
        sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2669);
      }

      v24 = *v48 + 96 * a5;
      if (a6)
      {
        if ((*(v24 + 1) & 0x40) == 0)
        {
          if (*a1 >> 30)
          {
            sub_1001FA81C(&v121, "!fixedType() && !fixedSize()");
            sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2676);
          }

          sub_100269498(v24);
        }

        if (a2 == 2)
        {
          v49 = *(v24 + 4) != 2 || *(v24 + 16) == 0;
          if (!v49 && (*v24 & 0xFFF) == v14 && *(v24 + 8) == *(__src + 1) && *(v24 + 12) == *__src)
          {
            return;
          }
        }
      }

      v50 = *a1;
      if (*a1 < 0)
      {
        if (((*v24 ^ a4) & 0xFF8) != 0 || ((a7 >> v50) & 1) == 0)
        {
          if (v14 != (*v24 & 0xFFF))
          {
            sub_1001FA81C(&v121, "((mtype) & ((1 << 3)*512 - 1)) == m.type()");
            sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2690);
          }
        }

        else
        {
          LOWORD(v14) = *v24 & 0xFFF;
        }
      }

      if ((v50 & 0x40000000) != 0)
      {
        if (*(v24 + 4) != a2)
        {
          sub_1001FA81C(&v121, "m.dims == d");
          sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2694);
        }

        if (a2 >= 1)
        {
          v51 = 0;
          do
          {
            if (*(*(v24 + 64) + v51) != *(__src + v51))
            {
              v121 = 0;
              v122 = 0;
              qmemcpy(sub_1002A80E0(&v121, 21), "m.size[j] == sizes[j]", 21);
              sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2696);
            }

            v51 += 4;
          }

          while (4 * a2 != v51);
        }
      }

      goto LABEL_160;
    }

    if (v13 != 720896)
    {
      if (v13 != 983040)
      {
        goto LABEL_161;
      }

      v44 = *(a1 + 1);
      if (a5 < 0)
      {
        if (a2 != 2 || (v79 = *__src, *__src != 1) && (v80 = *(__src + 1), v80 != 1) && v80 * v79)
        {
          sub_1001FA81C(&v121, "d == 2 && (sizes[0] == 1 || sizes[1] == 1 || sizes[0]*sizes[1] == 0)");
          sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2709);
        }

        v81 = *(__src + 1);
        v82 = v81 * v79;
        v83 = v79 + v81 - 1;
        if (v82 <= 0)
        {
          v84 = 0;
        }

        else
        {
          v84 = v83;
        }

        v85 = a1[5];
        if (v84 != v85)
        {
          sub_1001FA81C(&v121, "len == len0");
          sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2712);
        }

        if (*a1 < 0 && v85 < v84)
        {
          v86 = *a1 & 0xFFF;
          do
          {
            v87 = v44 + 96 * v85;
            if ((*v87 & 0xFFF) != v86)
            {
              if (*(v87 + 16))
              {
                v88 = *(v87 + 4);
                if (v88 >= 3)
                {
                  v90 = *(v87 + 64);
                  v91 = (v90 + 4);
                  v92 = v88 & 0x7FFFFFFE;
                  v93 = 1;
                  v94 = 1;
                  do
                  {
                    v93 *= *(v91 - 1);
                    v94 *= *v91;
                    v91 += 2;
                    v92 -= 2;
                  }

                  while (v92);
                  v89 = v94 * v93;
                  v95 = v88 - (v88 & 0x7FFFFFFE);
                  if (v95)
                  {
                    v96 = (v90 + 8 * ((v88 >> 1) & 0x3FFFFFFF));
                    do
                    {
                      v97 = *v96++;
                      v89 *= v97;
                      --v95;
                    }

                    while (v95);
                  }
                }

                else
                {
                  v89 = *(v87 + 12) * *(v87 + 8);
                }

                if (v88 && v89)
                {
                  v121 = 0;
                  v122 = 0;
                  v98 = sub_1002A80E0(&v121, 12);
                  *(v98 + 8) = 690518388;
                  *v98 = *"v[j].empty()";
                  sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2720);
                }
              }

              *v87 = *v87 & 0xFFFFF000 | v86;
            }

            ++v85;
          }

          while (v85 < v84);
        }

        return;
      }

      if (a1[5] <= a5)
      {
        sub_1001FA81C(&v121, "i < sz.height");
        sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2727);
      }

      v24 = v44 + 96 * a5;
      if (a6)
      {
        if ((*(v24 + 1) & 0x40) == 0)
        {
          if (*a1 >> 30)
          {
            sub_1001FA81C(&v121, "!fixedType() && !fixedSize()");
            sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2734);
          }

          sub_100269498(v24);
        }

        if (a2 == 2 && *(v24 + 4) == 2 && *(v24 + 16) && (*v24 & 0xFFF) == v14 && *(v24 + 8) == *(__src + 1) && *(v24 + 12) == *__src)
        {
          return;
        }
      }

      v45 = *a1;
      if (*a1 < 0)
      {
        if (((*v24 ^ a4) & 0xFF8) != 0 || ((a7 >> v45) & 1) == 0)
        {
          if (v14 != (*v24 & 0xFFF))
          {
            sub_1001FA81C(&v121, "((mtype) & ((1 << 3)*512 - 1)) == m.type()");
            sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2748);
          }
        }

        else
        {
          LOWORD(v14) = *v24 & 0xFFF;
        }
      }

      if ((v45 & 0x40000000) != 0)
      {
        if (*(v24 + 4) != a2)
        {
          sub_1001FA81C(&v121, "m.dims == d");
          sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2753);
        }

        if (a2 >= 1)
        {
          v46 = 0;
          do
          {
            if (*(*(v24 + 64) + v46) != *(__src + v46))
            {
              v121 = 0;
              v122 = 0;
              qmemcpy(sub_1002A80E0(&v121, 21), "m.size[j] == sizes[j]", 21);
              sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2755);
            }

            v46 += 4;
          }

          while (4 * a2 != v46);
        }
      }

LABEL_160:
      sub_100268ED0(v24, a2, __src, v14);
      return;
    }

    v52 = *(a1 + 1);
    if (a5 < 0)
    {
      if (a2 != 2 || (v99 = *__src, *__src != 1) && (v100 = *(__src + 1), v100 != 1) && v100 * v99)
      {
        sub_1001FA81C(&v121, "d == 2 && (sizes[0] == 1 || sizes[1] == 1 || sizes[0]*sizes[1] == 0)");
        sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2768);
      }

      v101 = *(__src + 1);
      v102 = v101 * v99;
      v103 = v99 + v101 - 1;
      if (v102 <= 0)
      {
        v103 = 0;
      }

      v104 = v103;
      v105 = 0xCCCCCCCCCCCCCCCDLL * ((v52[1] - *v52) >> 4);
      if ((v12 & 0x40000000) != 0 && v105 != v103)
      {
        sub_1001FA81C(&v121, "!fixedSize() || len == len0");
        sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2771);
      }

      sub_100273384(*(a1 + 1), v103);
      if (*a1 < 0 && v105 < v104)
      {
        v106 = *a1 & 0xFFF;
        v107 = *v52;
        do
        {
          v108 = v107 + 80 * v105;
          if ((*v108 & 0xFFF) != v106)
          {
            if (*(v108 + 32))
            {
              v109 = *(v108 + 4);
              if (v109 >= 3)
              {
                v111 = *(v108 + 48);
                v112 = (v111 + 4);
                v113 = v109 & 0x7FFFFFFE;
                v114 = 1;
                v115 = 1;
                do
                {
                  v114 *= *(v112 - 1);
                  v115 *= *v112;
                  v112 += 2;
                  v113 -= 2;
                }

                while (v113);
                v110 = v115 * v114;
                v116 = v109 - (v109 & 0x7FFFFFFE);
                if (v116)
                {
                  v117 = (v111 + 8 * ((v109 >> 1) & 0x3FFFFFFF));
                  do
                  {
                    v118 = *v117++;
                    v110 *= v118;
                    --v116;
                  }

                  while (v116);
                }
              }

              else
              {
                v110 = *(v108 + 12) * *(v108 + 8);
              }

              if (v109 && v110)
              {
                v121 = 0;
                v122 = 0;
                v119 = sub_1002A80E0(&v121, 12);
                *(v119 + 8) = 690518388;
                *v119 = *"v[j].empty()";
                sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2780);
              }
            }

            *(v107 + 80 * v105) = *(v107 + 80 * v105) & 0xFFFFF000 | v106;
          }

          ++v105;
        }

        while (v105 != v104);
      }

      return;
    }

    if ((-858993459 * ((v52[1] - *v52) >> 4)) <= a5)
    {
      sub_1001FA81C(&v121, "i < (int)v.size()");
      sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2787);
    }

    v35 = *v52 + 80 * a5;
    if (a6)
    {
      if ((*(v35 + 1) & 0x40) == 0)
      {
        if (*a1 >> 30)
        {
          sub_1001FA81C(&v121, "!fixedType() && !fixedSize()");
          sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2794);
        }

        sub_100276174(v35);
      }

      if (a2 == 2)
      {
        v53 = *(v35 + 4) != 2 || *(v35 + 32) == 0;
        if (!v53 && (*v35 & 0xFFF) == v14 && *(v35 + 8) == *(__src + 1) && *(v35 + 12) == *__src)
        {
          return;
        }
      }
    }

    v54 = *a1;
    if (*a1 < 0)
    {
      if (((*v35 ^ a4) & 0xFF8) != 0 || ((a7 >> v54) & 1) == 0)
      {
        if (v14 != (*v35 & 0xFFF))
        {
          sub_1001FA81C(&v121, "((mtype) & ((1 << 3)*512 - 1)) == m.type()");
          sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2808);
        }
      }

      else
      {
        LOWORD(v14) = *v35 & 0xFFF;
      }
    }

    if ((v54 & 0x40000000) != 0)
    {
      if (*(v35 + 4) != a2)
      {
        sub_1001FA81C(&v121, "m.dims == d");
        sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2812);
      }

      if (a2 >= 1)
      {
        v55 = 0;
        do
        {
          if (*(*(v35 + 48) + v55) != *(__src + v55))
          {
            v121 = 0;
            v122 = 0;
            qmemcpy(sub_1002A80E0(&v121, 21), "m.size[j] == sizes[j]", 21);
            sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2814);
          }

          v55 += 4;
        }

        while (4 * a2 != v55);
      }
    }

LABEL_187:
    sub_1002B018C(v35, a2, __src, v14, 0);
    return;
  }

  if (!v13)
  {
    v121 = 0;
    v122 = 0;
    qmemcpy(sub_1002A80E0(&v121, 44), "create() called for the missing output array", 44);
    sub_1002A8980(-27, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2640);
  }

  if (v13 != 196608 && v13 != 0x40000)
  {
LABEL_161:
    v121 = 0;
    v122 = 0;
    qmemcpy(sub_1002A80E0(&v121, 30), "Unknown/unsupported array type", 30);
    sub_1002A8980(-213, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2821);
  }

  if (a2 != 2 || (v16 = *__src, *__src != 1) && (v17 = *(__src + 1), v17 != 1) && v17 * v16)
  {
    v121 = 0;
    v122 = 0;
    qmemcpy(sub_1002A80E0(&v121, 68), "d == 2 && (sizes[0] == 1 || sizes[1] == 1 || sizes[0]*sizes[1] == 0)", 68);
    sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2558);
  }

  v18 = *(__src + 1);
  v19 = v18 * v16;
  v20 = v16 + v18 - 1;
  if (v19 <= 0)
  {
    v20 = 0;
  }

  v21 = v20;
  v22 = *(a1 + 1);
  if (v13 != 0x40000)
  {
    if ((a5 & 0x80000000) == 0)
    {
      sub_1001FA81C(&v121, "i < 0");
      sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2575);
    }

    goto LABEL_191;
  }

  if ((a5 & 0x80000000) == 0)
  {
    if ((-1431655765 * ((v22[1] - *v22) >> 3)) <= a5)
    {
      sub_1001FA81C(&v121, "i < (int)vv.size()");
      sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2571);
    }

    v22 = (*v22 + 24 * a5);
LABEL_191:
    v56 = *a1;
    if (v14 == (*a1 & 0xFFF))
    {
      v57 = *a1;
    }

    else if (((v56 ^ a4) & 0xFF8) != 0 || (v57 = *a1, ((a7 >> *a1) & 1) == 0))
    {
      sub_1001FA81C(&v121, "mtype == type0 || (((((mtype) & ((512 - 1) << 3)) >> 3) + 1) == ((((type0) & ((512 - 1) << 3)) >> 3) + 1) && ((1 << type0) & fixedDepthMask) != 0)");
      sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2578);
    }

    v120 = (((v56 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v56 & 7))) & 3);
    if ((v57 & 0x40000000) != 0 && (v22[1] - *v22) / v120 != v21)
    {
      sub_1001FA81C(&v121, "!fixedSize() || len == ((std::vector<uchar>*)v)->size() / esz");
      sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2581);
    }

    switch(v120)
    {
      case 1:
        sub_100276294(v22, v21);
        return;
      case 2:
        sub_1002763DC(v22, v21);
        return;
      case 3:
        sub_100276408(v22, v21);
        return;
      case 4:
        sub_100276440(v22, v21);
        return;
      case 5:
      case 7:
      case 9:
      case 10:
      case 11:
      case 13:
      case 14:
      case 15:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 33:
      case 34:
      case 35:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 91:
      case 92:
      case 93:
      case 94:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 117:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
        goto LABEL_302;
      case 6:
        sub_10027646C(v22, v21);
        return;
      case 8:
        sub_1002764A8(v22, v21);
        return;
      case 12:
        sub_1002764D4(v22, v21);
        return;
      case 16:
        sub_100276510(v22, v21);
        return;
      case 24:
        sub_10027653C(v22, v21);
        return;
      case 32:
        sub_100276578(v22, v21);
        return;
      case 36:
        sub_1002765A4(v22, v21);
        return;
      case 48:
        sub_1002765E8(v22, v21);
        return;
      case 64:
        sub_100276624(v22, v21);
        return;
      case 128:
        sub_100276650(v22, v21);
        return;
      default:
        if (v120 == 256)
        {
          sub_10027667C(v22, v21);
        }

        else
        {
          if (v120 != 512)
          {
LABEL_302:
            sub_1002A8688(&v121, "Vectors with element size %d are not supported. Please, modify OutputArray::create()\n", v120);
            sub_1002A8980(-5, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2633);
          }

          sub_1002766A8(v22, v21);
        }

        break;
    }

    return;
  }

  if ((*(a1 + 3) & 0x40) != 0 && 0xAAAAAAAAAAAAAAABLL * ((v22[1] - *v22) >> 3) != v20)
  {
    sub_1001FA81C(&v121, "!fixedSize() || len == vv.size()");
    sub_1002A8980(-215, &v121, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2567);
  }

  sub_1002761E4(*(a1 + 1), v20);
}

void sub_10026DA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void sub_10026E0C8(uint64_t a1@<X0>, signed int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 < 0 && (*a1 & 0x1F0000) == 0x10000)
  {
    v4 = *(a1 + 8);
    v5 = *v4;
    v6 = v4[1];
    *a3 = *v4;
    *(a3 + 16) = v6;
    *(a3 + 32) = v4[2];
    v7 = *(v4 + 7);
    *(a3 + 48) = *(v4 + 6);
    *(a3 + 56) = v7;
    *(a3 + 80) = 0;
    *(a3 + 64) = a3 + 8;
    *(a3 + 72) = a3 + 80;
    *(a3 + 88) = 0;
    if (v7)
    {
      atomic_fetch_add((v7 + 20), 1u);
      if (*(v4 + 1) <= 2)
      {
LABEL_5:
        v8 = *(v4 + 9);
        v9 = *(a3 + 72);
        *v9 = *v8;
        v9[1] = v8[1];
        return;
      }
    }

    else if (SDWORD1(v5) <= 2)
    {
      goto LABEL_5;
    }

    *(a3 + 4) = 0;
    sub_100269568(a3, *(v4 + 1), 0, 0, 0);
    if (*(a3 + 4) >= 1)
    {
      v11 = 0;
      v12 = *(v4 + 8);
      v13 = *(v4 + 9);
      v14 = *(a3 + 64);
      v15 = *(a3 + 72);
      do
      {
        *(v14 + 4 * v11) = *(v12 + 4 * v11);
        *(v15 + 8 * v11) = *(v13 + 8 * v11);
        ++v11;
      }

      while (v11 < *(a3 + 4));
    }
  }

  else
  {

    sub_1002703C0(a1, a2, a3);
  }
}