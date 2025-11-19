void sub_240B84488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void *sub_240B844BC(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_240B228BC();
  }

  return result;
}

void sub_240B84584(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7)
{
  sub_240B53650(v15, a5, 46 * ((*(a1 + 8) - *a1) >> 3) + 0x20000);
  v14 = sub_240B83DA0(a1, a2, a3, a4, a5);
  sub_240B536C8(v15, a5, a6, a7);
  if (a7)
  {
    *(a7 + 40 * a6 + 8) += v14;
  }
}

uint64_t sub_240B8464C(uint64_t result, uint64_t a2, _BYTE *a3, _BYTE *a4, char a5)
{
  *result = 0x400000002;
  *(result + 12) = 2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = -1;
  *(result + 48) = 256;
  *(result + 51) = 0;
  *(result + 50) = a5;
  v5 = *(a2 + 48);
  if (v5 < 3)
  {
    if (v5 == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    *(result + 8) = v7;
  }

  else
  {
    *result = 1;
    *(result + 12) = v5 < 9;
    if (*(a2 + 56) < 3uLL)
    {
      v6 = 0;
    }

    else
    {
      if (v5 > 6)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      if (*(a2 + 68) != 1)
      {
        v6 = 0;
      }
    }

    *(result + 8) = v6;
    if (a3 != a4 && *a3 || v5 <= 5 && (*(a2 + 68) & 1) != 0)
    {
      *(result + 4) = 2;
    }

    else
    {
      *(result + 4) = 0;
    }
  }

  v8 = *(a2 + 56);
  if (v8)
  {
    *(result + 40) = 12;
    if (*(a2 + 352))
    {
      if (v5 >= 2)
      {
        v9 = 2;
      }

      else
      {
        v9 = 3;
      }

      if (v5 > 5)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      *(result + 8) = v10;
      if (v8 != 1)
      {
        *(result + 4) = 1;
        *(result + 48) = 1;
      }
    }
  }

  return result;
}

uint64_t sub_240B8479C(uint64_t a1, uint64_t a2, __int128 *a3, float *a4)
{
  if (!*(a1 + 88))
  {
    return 1;
  }

  v8 = *(a2 + 96);
  if (!v8)
  {
    v9 = *(a2 + 416);
    if (v9 == *(a2 + 424))
    {
      v8 = 0;
    }

    else
    {
      v8 = *v9;
    }
  }

  if (*(a1 + 96) != v8)
  {
    return 1;
  }

  v10 = *(a2 + 100);
  if (!v10)
  {
    v11 = *(a2 + 416);
    if (v11 == *(a2 + 424))
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v11 + 4);
    }
  }

  if (*(a1 + 104) != v10)
  {
    return 1;
  }

  v76 = 0;
  sub_240B84FBC(v72, *(a2 + 88));
  sub_240B309B8(v66, v72);
  v12 = sub_240B29FC8(*(a2 + 272) == 1);
  if (!sub_240BADC90(a2, v12, (a1 + 24), v66, &v76))
  {
    sub_240B23590(&v61, *(a1 + 96), *(a1 + 104));
    v13 = v65;
    if (v65)
    {
      goto LABEL_54;
    }

    v57 = v61;
    v15 = v63;
    v63 = 0;
    v58 = v62;
    v59 = v15;
    v60 = v64;
    v16 = *(a1 + 88);
    v17 = *(v16 + 8);
    if (v17 < 8 || (v18 = *(v16 + 16), v18 <= 7))
    {
      if (v57)
      {
        v19 = DWORD1(v57);
        if (DWORD1(v57))
        {
          do
          {
            bzero(v15, 4 * v57);
            v15 = (v15 + v58);
            --v19;
          }

          while (v19);
        }
      }

LABEL_22:
      if (a4)
      {
        if (DWORD1(v57))
        {
          v20 = 0;
          v21 = v59;
          v22 = 0.0;
          do
          {
            v23 = v21;
            v24 = v57;
            if (v57)
            {
              do
              {
                v25 = *v23++;
                v26 = v25;
                if (v22 < v25)
                {
                  v22 = v26;
                }

                --v24;
              }

              while (v24);
            }

            ++v20;
            v21 = (v21 + v58);
          }

          while (v20 != DWORD1(v57));
        }

        else
        {
          v22 = 0.0;
        }

        *a4 = v22;
      }

      v15 = v59;
      v13 = 0;
      if (a3)
      {
        v34 = *a3;
        *a3 = v57;
        v57 = v34;
        v35 = v58;
        v36 = *(a3 + 3);
        v58 = *(a3 + 2);
        *(a3 + 2) = v35;
        *(a3 + 3) = v15;
        v15 = v36;
      }

      goto LABEL_49;
    }

    v27 = v76;
    sub_240B2A11C(v89, v17, v18);
    v13 = v91;
    if (v91)
    {
LABEL_49:
      v59 = 0;
      if (v15)
      {
        atomic_fetch_add(&qword_27E519020, -*(v15 - 3));
        free(*(v15 - 4));
      }

      if (!v65)
      {
        v37 = v63;
        v63 = 0;
        if (v37)
        {
          atomic_fetch_add(&qword_27E519020, -*(v37 - 3));
          free(*(v37 - 4));
        }
      }

      goto LABEL_54;
    }

    sub_240B2A358(v88, v89);
    atomic_exchange((v16 + 560), 1u);
    v13 = sub_240B71B98((v27 + 96), v16 + 24, v16 + 440, v16 + 568, v88);
    if (!v13)
    {
      atomic_store(0, (v16 + 560));
      v13 = sub_240B727E4(v16, v88, &v57);
      if (!v13)
      {
        v28 = *(v16 + 608);
        if (!v28 || (v29 = *(v28 + 8), v29 < 8) || (v30 = *(v28 + 16), v30 < 8))
        {
LABEL_37:
          v13 = 0;
          goto LABEL_38;
        }

        sub_240B2A11C(v85, v29, v30);
        v13 = v87;
        if (!v87)
        {
          sub_240B2A358(v84, v85);
          sub_240B725A0(v81, (v27 + 96));
          v13 = v83;
          if (v83)
          {
            for (i = 26; i != -4; i -= 10)
            {
              sub_240B22320(&v84[i]);
            }

            if (!v87)
            {
              v41 = v86;
              v42 = -120;
              do
              {
                sub_240B22320(v41);
                v41 -= 5;
                v42 += 40;
              }

              while (v42);
            }

            goto LABEL_38;
          }

          sub_240B2A358(v80, v81);
          v43 = *(v16 + 608);
          atomic_exchange((v43 + 560), 1u);
          v13 = sub_240B71B98(v80, v16 + 24, v43 + 440, *(v16 + 608) + 568, v84);
          if (v13)
          {
            for (j = 26; j != -4; j -= 10)
            {
              sub_240B22320(&v80[j]);
            }

            if (!v83)
            {
              v45 = v82;
              v46 = -120;
              do
              {
                sub_240B22320(v45);
                v45 -= 5;
                v46 += 40;
              }

              while (v46);
            }

            for (k = 26; k != -4; k -= 10)
            {
              sub_240B22320(&v84[k]);
            }

            if (!v87)
            {
              v48 = v86;
              v49 = -120;
              do
              {
                sub_240B22320(v48);
                v48 -= 5;
                v49 += 40;
              }

              while (v49);
            }

            goto LABEL_38;
          }

          atomic_store(0, (*(v16 + 608) + 560));
          v79 = 0;
          v77 = 0u;
          v78 = 0u;
          v13 = sub_240B727E4(*(v16 + 608), v84, &v77);
          v50 = *(&v78 + 1);
          if (!v13)
          {
            sub_240B73100(v78, *(&v78 + 1), &v57);
          }

          *(&v78 + 1) = 0;
          if (v50)
          {
            atomic_fetch_add(&qword_27E519020, -*(v50 - 24));
            free(*(v50 - 32));
          }

          for (m = 26; m != -4; m -= 10)
          {
            sub_240B22320(&v80[m]);
          }

          if (!v83)
          {
            v52 = v82;
            v53 = -120;
            do
            {
              sub_240B22320(v52);
              v52 -= 5;
              v53 += 40;
            }

            while (v53);
          }

          for (n = 26; n != -4; n -= 10)
          {
            sub_240B22320(&v84[n]);
          }

          if (!v87)
          {
            v55 = v86;
            v56 = -120;
            do
            {
              sub_240B22320(v55);
              v55 -= 5;
              v56 += 40;
            }

            while (v56);
          }

          if (v13)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }
      }
    }

LABEL_38:
    for (ii = 26; ii != -4; ii -= 10)
    {
      sub_240B22320(&v88[ii]);
    }

    if (!v91)
    {
      v32 = &v90;
      v33 = -120;
      do
      {
        sub_240B22320(v32);
        v32 -= 5;
        v33 += 40;
      }

      while (v33);
    }

    if (!v13)
    {
      goto LABEL_22;
    }

    v15 = v59;
    goto LABEL_49;
  }

  v13 = 1;
LABEL_54:
  v89[0] = &v71;
  sub_240B30C38(v89);
  v68 = &unk_2852A1CB8;
  if (__p)
  {
    v70 = __p;
    operator delete(__p);
  }

  for (jj = 25; jj != 10; jj -= 5)
  {
    sub_240B22320(&v66[jj]);
  }

  if (v67 < 0)
  {
    operator delete(v66[8]);
  }

  v39 = v66[0];
  v66[0] = 0;
  if (v39)
  {
    (*(*v39 + 1))(v39);
  }

  v72[0] = &unk_2852A1C90;
  v66[0] = &v75;
  sub_240B4B18C(v66);
  v72[6] = &unk_2852A1CB8;
  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  return v13;
}

void sub_240B84E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, ...)
{
  va_start(va, a13);
  v15 = STACK[0x3E8];
  STACK[0x3E8] = 0;
  if (v15)
  {
    atomic_fetch_add(&qword_27E519020, -*(v15 - 24));
    free(*(v15 - 32));
  }

  for (i = 104; i != -16; i -= 40)
  {
    sub_240B22320((&STACK[0x3F8] + i));
  }

  if (!LODWORD(STACK[0x4E8]))
  {
    v17 = &STACK[0x4D8];
    v18 = -120;
    do
    {
      sub_240B22320(v17);
      v17 -= 5;
      v18 += 40;
    }

    while (v18);
  }

  for (j = 104; j != -16; j -= 40)
  {
    sub_240B22320((&STACK[0x4F0] + j));
  }

  if (!LODWORD(STACK[0x5E0]))
  {
    v20 = &STACK[0x5D0];
    v21 = -120;
    do
    {
      sub_240B22320(v20);
      v20 -= 5;
      v21 += 40;
    }

    while (v21);
  }

  for (k = 104; k != -16; k -= 40)
  {
    sub_240B22320((&STACK[0x5E8] + k));
  }

  if (!*(v13 - 72))
  {
    v23 = (v13 - 88);
    v24 = -120;
    do
    {
      sub_240B22320(v23);
      v23 -= 5;
      v24 += 40;
    }

    while (v24);
  }

  if (a5)
  {
    atomic_fetch_add(&qword_27E519020, -*(a5 - 24));
    free(*(a5 - 32));
  }

  if (!a13)
  {
    if (a11)
    {
      atomic_fetch_add(&qword_27E519020, -*(a11 - 24));
      free(*(a11 - 32));
    }
  }

  sub_240B51314(va);
  sub_240B4B064(&STACK[0x220]);
  _Unwind_Resume(a1);
}

uint64_t sub_240B84FBC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2852A1C90;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = &unk_2852A1288;
  v4 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v4;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = &unk_2852A1CB8;
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 64);
  v6 = *(a2 + 69);
  *(a1 + 80) = 0;
  v7 = a1 + 80;
  *(a1 + 69) = v6;
  *(a1 + 64) = v5;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_240B28D90(a1 + 80, *(a2 + 80), *(a2 + 88), *(a2 + 88) - *(a2 + 80));
  v8 = *(a2 + 104);
  v9 = *(a2 + 120);
  v10 = *(a2 + 136);
  *(v7 + 72) = *(a2 + 152);
  *(v7 + 56) = v10;
  *(v7 + 40) = v9;
  *(v7 + 24) = v8;
  *(v7 + 80) = &unk_2852A1260;
  *(v7 + 88) = *(a2 + 168);
  *(v7 + 96) = &unk_2852A1A10;
  *(v7 + 104) = *(a2 + 184);
  *(v7 + 120) = &unk_2852A1260;
  *(v7 + 128) = *(a2 + 208);
  *(v7 + 136) = &unk_2852A1260;
  *(v7 + 144) = *(a2 + 224);
  *(v7 + 152) = &unk_2852A1260;
  *(v7 + 160) = *(a2 + 240);
  v11 = *(a2 + 248);
  *(v7 + 171) = *(a2 + 251);
  *(v7 + 168) = v11;
  *(v7 + 176) = &unk_2852A2248;
  v12 = *(a2 + 280);
  *(v7 + 184) = *(a2 + 264);
  *(v7 + 200) = v12;
  *(v7 + 208) = &unk_2852A21D0;
  v13 = *(a2 + 296);
  *(v7 + 232) = *(a2 + 312);
  *(v7 + 216) = v13;
  *(v7 + 240) = *(a2 + 320);
  *(v7 + 256) = 0;
  *(v7 + 264) = 0;
  *(v7 + 248) = 0;
  v14 = *(a2 + 328);
  v15 = *(a2 + 336);
  if (v15 != v14)
  {
    sub_240B4B5D4(v7 + 248, 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 5));
  }

  *(a1 + 352) = &unk_2852A1C68;
  v16 = *(a2 + 376);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 376) = v16;
  *(a1 + 384) = &unk_2852A1B40;
  v17 = *(a2 + 392);
  *(a1 + 397) = *(a2 + 397);
  *(a1 + 392) = v17;
  v18 = *(a2 + 408);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 408) = v18;
  return a1;
}

void sub_240B852DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 336) = v12;
  sub_240B4B18C(&a9);
  *v13 = v10;
  v15 = *v11;
  if (*v11)
  {
    *(v9 + 88) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240B85310(uint64_t a1, uint64_t a2)
{
  sub_240B84FBC(v15, *(a2 + 88));
  sub_240B309B8(v9, v15);
  v4 = sub_240B29FC8(*(a2 + 272) == 1);
  v19 = 0;
  if (!sub_240BADC90(a2, v4, (a1 + 24), v9, &v19))
  {
    sub_240B7218C(&v8, (v19 + 96));
  }

  v8 = &v14;
  sub_240B30C38(&v8);
  v11 = &unk_2852A1CB8;
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  for (i = 25; i != 10; i -= 5)
  {
    sub_240B22320(&v9[i]);
  }

  if (v10 < 0)
  {
    operator delete(v9[8]);
  }

  v6 = v9[0];
  v9[0] = 0;
  if (v6)
  {
    (*(*v6 + 1))(v6);
  }

  v15[0] = &unk_2852A1C90;
  v9[0] = &v18;
  sub_240B4B18C(v9);
  v15[6] = &unk_2852A1CB8;
  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  return 1;
}

void sub_240B85534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_240B51314(&a11);
  sub_240B4B064(&a67);
  _Unwind_Resume(a1);
}

void sub_240B8555C(void *a1)
{
  *a1 = &unk_2852A1960;
  v2 = a1[11];
  a1[11] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x245CCE590);
}

void *sub_240B855EC(void *a1)
{
  *a1 = &unk_2852A1960;
  v2 = a1[11];
  a1[11] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_240B8565C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v103 = *MEMORY[0x277D85DE8];
  v97 = a6;
  v96 = a7;
  *(a6 + 5264) = powf(1.25, *(a1 + 68) + -2.0);
  *(a6 + 5268) = powf(1.25, *(a1 + 72) + -2.0);
  v9 = *(a6 + 4232);
  v10 = *(a6 + 4224);
  v11 = (v9 - v10) >> 3;
  v12 = *(a1 + 112);
  if (v11 < v12)
  {
    if (v12 > (*(a6 + 4240) - v10) >> 3)
    {
      v101 = (a6 + 4224);
      sub_240B7BF5C(v12);
    }

    if (v11 < v12)
    {
      v13 = *(a6 + 120);
      sub_240B3B11C();
    }
  }

  v14 = a6;
  if (v11 > v12)
  {
    v15 = (a6 + 4232);
    do
    {
      v18 = *(v9 - 8);
      v17 = (v9 - 8);
      v16 = v18;
      *v17 = 0;
      if (v18)
      {
        (*(*v16 + 8))(v16);
        v12 = *(a1 + 112);
      }

      *v15 = v17;
      v14 = v97;
      v15 = (v97 + 4232);
      v9 = *(v97 + 4232);
    }

    while (v12 < (v9 - *(v97 + 4224)) >> 3);
  }

  if (*(v14 + 4209) == 1)
  {
    v19 = *(a6 + 984);
    v20 = llroundf(*(v14 + 4940) * v19);
    v21 = v20 / v19;
    *(a6 + 984) = v20;
    sub_240B6A130(a6 + 952);
    for (i = 0; i != 12; i += 4)
    {
      *(&v98 + i) = (1.0 / v21) * *(a6 + 268 + i);
    }

    sub_240BC0BC8(a6 + 208, &v98);
    sub_240B6A130(a6 + 952);
  }

  sub_240B2A11C(v93, *(a6 + 72), *(a6 + 80));
  v23 = v95;
  if (!v95)
  {
    sub_240B2A358(v92, v93);
    v24 = *(a6 + 120);
    *&v98 = &v97;
    *(&v98 + 1) = a2;
    v99 = a3;
    v100 = v92;
    if (a5)
    {
      v25 = sub_240B8664C(a5, v24, &v98);
    }

    else
    {
      v80 = 0;
      v81 = &v80;
      v25 = sub_240B8664C(&v80, v24, &v98);
    }

    v23 = v25;
    if (!v25)
    {
      if ((*(a1 + 24) & 0x20) != 0)
      {
        sub_240B86714(&v80, v97 + 4544);
        v87 = 0;
        v91 = 0x100000001;
        v90 = 1;
        v33 = v89 == 1;
        v88 = 0;
        --v89;
        if (v33)
        {
          v86 = 1;
          v36 = v85;
          if (v85 <= 2)
          {
            v36 = 2;
          }

          v85 = v36 - 1;
          v34 = 0.02;
        }

        else
        {
          v82 = 1;
          v83 = *(a6 + 952);
          v84 = *(a6 + 960);
          v34 = 0.1;
        }

        LODWORD(v80) = fmaxf(*(v97 + 4544) * v34, 0.001);
        sub_240B309B8(v70, *a6);
        v37 = sub_240B29FC8(*(*a6 + 104) == 1);
        sub_240B598DC(v70, v92, v37);
        v38 = *(v72 + 328);
        v39 = *(v72 + 336);
        if (v38 != v39)
        {
          memset(v69, 0, 24);
          sub_240B86B24(v69, 0xAAAAAAAAAAAAAAABLL * ((v39 - v38) >> 5));
          if (*(v72 + 336) != *(v72 + 328))
          {
            v40 = 0;
            while (1)
            {
              v41 = v73;
              if (!v73)
              {
                if (v78 == *(&v78 + 1))
                {
                  v41 = 0;
                }

                else
                {
                  v41 = *v78;
                }
              }

              v42 = v74;
              if (!v74)
              {
                if (v78 == *(&v78 + 1))
                {
                  v42 = 0;
                }

                else
                {
                  v42 = *(v78 + 4);
                }
              }

              sub_240B23590(&v98, v41, v42);
              v23 = v102;
              if (v102)
              {
                break;
              }

              v43 = v100;
              v44 = v101;
              v100 = 0;
              v45 = *(&v69[0] + 1);
              if (*(&v69[0] + 1) >= *&v69[1])
              {
                v47 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v69[0] + 1) - *&v69[0]) >> 3);
                v48 = v47 + 1;
                if (v47 + 1 > 0x666666666666666)
                {
                  sub_240B228BC();
                }

                if (0x999999999999999ALL * ((*&v69[1] - *&v69[0]) >> 3) > v48)
                {
                  v48 = 0x999999999999999ALL * ((*&v69[1] - *&v69[0]) >> 3);
                }

                if (0xCCCCCCCCCCCCCCCDLL * ((*&v69[1] - *&v69[0]) >> 3) >= 0x333333333333333)
                {
                  v49 = 0x666666666666666;
                }

                else
                {
                  v49 = v48;
                }

                v68 = v69;
                if (v49)
                {
                  sub_240B59980(v49);
                }

                v50 = 8 * ((*(&v69[0] + 1) - *&v69[0]) >> 3);
                v65 = 0;
                v66 = v50;
                *(&v67 + 1) = 0;
                *v50 = v98;
                *(v50 + 16) = v99;
                *(v50 + 24) = v43;
                *(v50 + 32) = v44;
                *&v67 = 40 * v47 + 40;
                v51 = 40 * v47 + *&v69[0] - *(&v69[0] + 1);
                sub_240B59A2C(*&v69[0], *(&v69[0] + 1), v51);
                v52 = *&v69[0];
                v53 = *&v69[1];
                *&v69[0] = v51;
                v63 = v67;
                *(v69 + 8) = v67;
                *&v67 = v52;
                *(&v67 + 1) = v53;
                v65 = v52;
                v66 = v52;
                sub_240B599D8(&v65);
                v46 = v63;
              }

              else
              {
                **(&v69[0] + 1) = v98;
                v45[2] = v99;
                v45[3] = v43;
                v45[4] = v44;
                v46 = v45 + 5;
              }

              *(&v69[0] + 1) = v46;
              if (*(v46 - 10) && *(v46 - 9))
              {
                v54 = 0;
                do
                {
                  bzero((*(v46 - 2) + *(v46 - 3) * v54++), 4 * *(v46 - 10));
                }

                while (v54 < *(v46 - 9));
              }

              if (!v102)
              {
                v55 = v100;
                v100 = 0;
                if (v55)
                {
                  atomic_fetch_add(&qword_27E519020, -*(v55 - 3));
                  free(*(v55 - 4));
                }
              }

              if (++v40 >= 0xAAAAAAAAAAAAAAABLL * ((*(v72 + 336) - *(v72 + 328)) >> 5))
              {
                goto LABEL_69;
              }
            }

            *&v98 = v69;
            sub_240B30C38(&v98);
            *&v98 = &v78;
            sub_240B30C38(&v98);
            v75 = &unk_2852A1CB8;
            if (__p)
            {
              v77 = __p;
              operator delete(__p);
            }

            for (j = 25; j != 10; j -= 5)
            {
              sub_240B22320(&v70[j]);
            }

            if (v71 < 0)
            {
              operator delete(v70[8]);
            }

            v57 = v70[0];
            v70[0] = 0;
            if (v57)
            {
              (*(*v57 + 8))(v57);
            }

            sub_240B7BB60(&v80);
            goto LABEL_20;
          }

LABEL_69:
          sub_240B30E18(&v78);
          v78 = v69[0];
          v79 = *&v69[1];
          memset(v69, 0, 24);
          *&v98 = v69;
          sub_240B30C38(&v98);
        }

        operator new();
      }

      LOBYTE(v70[0]) = 0;
      *&v98 = v70;
      *(&v98 + 1) = &v97;
      v99 = &v96;
      v100 = a1;
      v101 = v92;
      v31 = *(a6 + 128);
      if (a5)
      {
        v32 = sub_240B86C80(a5, v31, &v98);
      }

      else
      {
        v80 = 0;
        v81 = &v80;
        v32 = sub_240B86C80(&v80, v31, &v98);
      }

      v23 = v32;
      if (!v32)
      {
        v35 = atomic_load(v70);
        if (v35)
        {
          v23 = 1;
        }

        else if ((*(a1 + 24) & 0x80) != 0 || (v23 = sub_240B2ACE4(a6 + 952, (a6 + 1632), a5), !v23))
        {
          LOBYTE(v70[0]) = 0;
          *&v98 = &v97;
          *(&v98 + 1) = &v96;
          v99 = v70;
          v58 = *(a6 + 128);
          if (a5)
          {
            v59 = sub_240B86D30(a5, v58, &v98);
          }

          else
          {
            v80 = 0;
            v81 = &v80;
            v59 = sub_240B86D30(&v80, v58, &v98);
          }

          v23 = v59;
          if (!v59)
          {
            v60 = atomic_load(v70);
            v23 = v60 & 1;
          }
        }
      }
    }

LABEL_20:
    for (k = 104; k != -16; k -= 40)
    {
      sub_240B22320(&v92[k]);
    }

    if (!v95)
    {
      v27 = &v94;
      v28 = -120;
      do
      {
        sub_240B22320(v27);
        v27 -= 5;
        v28 += 40;
      }

      while (v28);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
  return v23;
}

void sub_240B86474(_Unwind_Exception *a1)
{
  for (i = 104; i != -16; i -= 40)
  {
    sub_240B22320((&STACK[0x7D0] + i));
  }

  if (!LODWORD(STACK[0x8C0]))
  {
    v3 = &STACK[0x8B0];
    v4 = -120;
    do
    {
      sub_240B22320(v3);
      v3 -= 5;
      v4 += 40;
    }

    while (v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_240B865D4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL sub_240B8664C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v7[0] = sub_240B2AC64;
  v7[1] = a3;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v7, sub_240B87270, sub_240B87254, 0, a2) != 0;
  }

  v5 = 0;
  v6 = a2;
  do
  {
    sub_240BA5E9C(v5++, **a3, *(a3 + 8), **(a3 + 16), *(*(a3 + 16) + 8), *(a3 + 24));
  }

  while (v6 != v5);
  return 0;
}

uint64_t sub_240B86714(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_240B29978(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  v4 = *(a2 + 32);
  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 32) = v4;
  v6 = *(a2 + 80);
  v7 = *(a2 + 96);
  v8 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v8;
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  v9 = *(a2 + 144);
  v10 = *(a2 + 160);
  v11 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v10;
  *(a1 + 176) = v11;
  *(a1 + 144) = v9;
  v12 = *(a2 + 200);
  v13 = *(a2 + 216);
  *(a1 + 224) = 0;
  *(a1 + 216) = v13;
  *(a1 + 200) = v12;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  sub_240B86FB8(a1 + 224, *(a2 + 224), *(a2 + 232), (*(a2 + 232) - *(a2 + 224)) >> 2);
  v14 = *(a2 + 248);
  v15 = *(a2 + 264);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 264) = v15;
  *(a1 + 248) = v14;
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = 0;
  sub_240B3C84C(a1 + 304, *(a2 + 304), *(a2 + 312), (*(a2 + 312) - *(a2 + 304)) >> 3);
  v16 = *(a2 + 328);
  *(a1 + 333) = *(a2 + 333);
  *(a1 + 328) = v16;
  *(a1 + 344) = *(a2 + 344);
  v17 = *(a2 + 352);
  v18 = *(a2 + 368);
  v19 = *(a2 + 384);
  *(a1 + 393) = *(a2 + 393);
  *(a1 + 368) = v18;
  *(a1 + 384) = v19;
  *(a1 + 352) = v17;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 416) = 0;
  sub_240B29978(a1 + 416, *(a2 + 416), *(a2 + 424), (*(a2 + 424) - *(a2 + 416)) >> 2);
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  sub_240B29978(a1 + 440, *(a2 + 440), *(a2 + 448), (*(a2 + 448) - *(a2 + 440)) >> 2);
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  v21 = *(a2 + 464);
  v20 = *(a2 + 472);
  if (v20 != v21)
  {
    sub_240B87204(a1 + 464, 0xCCCCCCCCCCCCCCCDLL * ((v20 - v21) >> 3));
  }

  *(a1 + 488) = *(a2 + 488);
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 496) = 0;
  v22 = *(a2 + 496);
  v23 = *(a2 + 504);
  if (v23 != v22)
  {
    sub_240B87074(a1 + 496, 0xF0B7672A07A44C6BLL * ((v23 - v22) >> 3));
  }

  *(a1 + 536) = 0;
  *(a1 + 520) = 0u;
  sub_240B6D768(a1 + 520, *(a2 + 520), *(a2 + 528), (*(a2 + 528) - *(a2 + 520)) >> 3);
  *(a1 + 560) = 0;
  *(a1 + 544) = 0u;
  v24 = *(a2 + 544);
  v25 = *(a2 + 552);
  if (v25 != v24)
  {
    sub_240B87034(a1 + 544, (v25 - v24) >> 5);
  }

  *(a1 + 584) = 0;
  *(a1 + 568) = 0u;
  sub_240B3C84C(a1 + 568, *(a2 + 568), *(a2 + 576), (*(a2 + 576) - *(a2 + 568)) >> 3);
  *(a1 + 608) = 0;
  *(a1 + 592) = 0u;
  sub_240B3C84C(a1 + 592, *(a2 + 592), *(a2 + 600), (*(a2 + 600) - *(a2 + 592)) >> 3);
  v26 = *(a2 + 616);
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 616) = v26;
  return a1;
}

void sub_240B86A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v15 = *v13;
  if (*v13)
  {
    v9[69] = v15;
    operator delete(v15);
  }

  v16 = *v12;
  if (*v12)
  {
    v9[66] = v16;
    operator delete(v16);
  }

  sub_240B4BC78(&a9);
  v17 = v9[58];
  if (v17)
  {
    v9[59] = v17;
    operator delete(v17);
  }

  v18 = v9[55];
  if (v18)
  {
    v9[56] = v18;
    operator delete(v18);
  }

  v19 = v9[52];
  if (v19)
  {
    v9[53] = v19;
    operator delete(v19);
  }

  sub_240B43AD0((v11 - 24));
  v20 = *v10;
  if (*v10)
  {
    v9[2] = v20;
    operator delete(v20);
  }

  _Unwind_Resume(a1);
}

void sub_240B86B04()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 232) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x240B86AECLL);
}

void *sub_240B86B24(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_240B59980(a2);
    }

    sub_240B228BC();
  }

  return result;
}

uint64_t *sub_240B86BE4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_240B22320((v2 + 24));
    MEMORY[0x245CCE590](v2, 0x1030C4046C9F5C0);
  }

  return a1;
}

uint64_t sub_240B86C34(uint64_t a1)
{
  v3 = (a1 + 112);
  sub_240B37840(&v3);
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  return a1;
}

BOOL sub_240B86C80(uint64_t a1, uint64_t a2, uint64_t a3)
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
    return (*a1)(*(a1 + 8), v6, sub_240B86F90, sub_240B86EC0, 0, a2) != 0;
  }

  for (i = 0; i != v3; ++i)
  {
    sub_240B86EC0(v6, i);
  }

  return 0;
}

BOOL sub_240B86D30(uint64_t a1, uint64_t a2, uint64_t a3)
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
    return (*a1)(*(a1 + 8), v6, sub_240B86E98, sub_240B86DE0, 0, a2) != 0;
  }

  for (i = 0; i != v3; ++i)
  {
    sub_240B86DE0(v6, i);
  }

  return 0;
}

uint64_t sub_240B86DE0(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = **v2;
  v4 = a2;
  v5 = *(v3 + 104);
  v6 = *(v3 + 136);
  v7 = v6 * (a2 / v5);
  v8 = *(v3 + 72);
  v9 = *(v3 + 80);
  v15[0] = v6 * (a2 % v5);
  v15[1] = v7;
  v10 = v8 - v15[0];
  if (v8 < v15[0])
  {
    v10 = 0;
  }

  if (v15[0] + v6 <= v8)
  {
    v10 = v6;
  }

  v11 = v7 + v6;
  v12 = v9 >= v7;
  v13 = v9 - v7;
  if (!v12)
  {
    v13 = 0;
  }

  if (v11 <= v9)
  {
    v13 = v6;
  }

  v15[2] = v10;
  v15[3] = v13;
  if (*(v3 + 4208) == 1)
  {
    v4 = *(v3 + 4216);
  }

  result = sub_240BB8058(*v2[1], v15, v4, 0, v3);
  if (result)
  {
    atomic_store(1u, v2[2]);
  }

  return result;
}

uint64_t sub_240B86E98(unsigned int (**a1)(uint64_t), uint64_t a2)
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

uint64_t sub_240B86EC0(uint64_t result, int a2)
{
  v2 = *(result + 8);
  v3 = atomic_load(*v2);
  if ((v3 & 1) == 0)
  {
    v4 = **(v2 + 8);
    v5 = a2;
    v6 = *(v4 + 104);
    v7 = *(v4 + 136);
    v8 = v7 * (a2 / v6);
    v9 = *(v4 + 72);
    v10 = *(v4 + 80);
    v15[0] = v7 * (a2 % v6);
    v15[1] = v8;
    v11 = v9 - v15[0];
    if (v9 < v15[0])
    {
      v11 = 0;
    }

    if (v15[0] + v7 <= v9)
    {
      v11 = v7;
    }

    v12 = v8 + v7;
    v13 = v10 >= v8;
    v14 = v10 - v8;
    if (!v13)
    {
      v14 = 0;
    }

    if (v12 <= v10)
    {
      v14 = v7;
    }

    v15[2] = v11;
    v15[3] = v14;
    if (*(v4 + 4208) == 1)
    {
      v5 = *(v4 + 4216);
    }

    result = sub_240BB7520(**(v2 + 16), *(v2 + 24), *(v2 + 32), v15, v5, *(v4 + 4592) < 7, v4);
    if (result)
    {
      atomic_store(1u, *v2);
    }
  }

  return result;
}

uint64_t sub_240B86F90(unsigned int (**a1)(uint64_t), uint64_t a2)
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

uint64_t sub_240B86FB8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_240B2287C(result, a4);
  }

  return result;
}

void sub_240B87018(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B87034(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_240B6D90C(a2);
  }

  sub_240B228BC();
}

void sub_240B87074(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x7A44C6AFC2DD9DLL)
  {
    sub_240B6A7EC(a2);
  }

  sub_240B228BC();
}

void *sub_240B870C8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      v7 = v6[1];
      v8 = v4;
      if (v7 != *v6)
      {
        sub_240B871C4(v4, (v7 - *v6) >> 4);
      }

      memcpy(v4 + 3, v6 + 3, 0x200uLL);
      v6 += 67;
      v4 += 67;
      v13 = v8 + 67;
    }

    while (v6 != a3);
  }

  v11 = 1;
  sub_240B6A984(v10);
  return v4;
}

void sub_240B871A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_240B6A984(&a9);
  _Unwind_Resume(a1);
}

void sub_240B871C4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_240B2D470(a2);
  }

  sub_240B228BC();
}

void sub_240B87204(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_240B5C5D8(a2);
  }

  sub_240B228BC();
}

uint64_t sub_240B87270(unsigned int (**a1)(uint64_t), uint64_t a2)
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

uint64_t sub_240B87298(float32x4_t *a1, float32x4_t *a2, unint64_t a3, int a4, float a5)
{
  if (!a3)
  {
    return 0;
  }

  v5 = 0;
  if (a4)
  {
    v6 = 0uLL;
    v7 = vdupq_n_s32(0x3C430C31u);
    v8 = 0uLL;
    do
    {
      v9 = *a1++;
      v10 = v9;
      v11 = vmulq_f32(v9, v7);
      v12 = *a2++;
      v6 = vmlaq_f32(v6, v11, v11);
      v8 = vmlaq_f32(v8, vsubq_f32(vmulq_n_f32(v10, a5), v12), v11);
      v5 += 4;
    }

    while (v5 < a3);
    v13 = -vaddv_f32(*&vpaddq_f32(v8, v8)) / (vaddv_f32(*&vpaddq_f32(v6, v6)) + ((a3 * 0.000000001) * 0.5));
  }

  else
  {
    v13 = 0.0;
    v15 = vdupq_n_s32(0x42C80000u);
    v16 = vdupq_n_s32(0x3C430C31u);
    v17 = vdupq_n_s32(0x3F2AAAABu);
    __asm { FMOV            V16.4S, #1.0 }

    do
    {
      v22 = 0;
      v23 = v13 + 100.0;
      v24 = v13 + -100.0;
      v25 = a1;
      v26 = a2;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      do
      {
        v30 = *v25++;
        v31 = vmulq_f32(v30, v16);
        v32 = vmulq_n_f32(v30, a5);
        v33 = *v26++;
        v34 = vsubq_f32(v32, v33);
        v35 = vmlaq_n_f32(v34, v31, v13);
        v36 = vmlaq_n_f32(v34, v31, v23);
        v37 = vmlaq_n_f32(v34, v31, v24);
        v38 = vabsq_f32(v35);
        v39 = vmulq_f32(v31, v17);
        v40 = vmulq_f32(v39, vaddq_f32(v38, _Q16));
        v41 = vmulq_f32(v39, vaddq_f32(vabsq_f32(v36), _Q16));
        v42 = vmulq_f32(v39, vaddq_f32(vabsq_f32(v37), _Q16));
        v43 = vbslq_s8(vcltzq_f32(v37), vsubq_f32(0, v42), v42);
        v44 = vcgeq_f32(v38, v15);
        v27 = vaddq_f32(v27, vbicq_s8(vbslq_s8(vcltzq_f32(v35), vsubq_f32(0, v40), v40), v44));
        v28 = vaddq_f32(v28, vbicq_s8(vbslq_s8(vcltzq_f32(v36), vsubq_f32(0, v41), v41), v44));
        v29 = vaddq_f32(v29, vbicq_s8(v43, v44));
        v22 += 4;
      }

      while (v22 < a3);
      v45 = (((a3 * 0.000000002) * v13) + vaddv_f32(*&vpaddq_f32(v27, v27))) / (((((v23 * (a3 * 0.000000002)) + vaddv_f32(*&vpaddq_f32(v28, v28))) - ((v24 * (a3 * 0.000000002)) + vaddv_f32(*&vpaddq_f32(v29, v29)))) / 200.0) + 0.85);
      v13 = v13 - fminf(fmaxf(v45, -20.0), 20.0);
      ++v5;
    }

    while (fabsf(v45) >= 0.003 && v5 != 20);
  }

  if (v13 >= 2.6)
  {
    v47 = v13 + -2.6;
  }

  else
  {
    v47 = 0.0;
    if (v13 <= -2.6)
    {
      v47 = v13 + 2.6;
    }
  }

  return fmaxf(fminf(roundf(v47), 127.0), -128.0);
}

void sub_240B88A78()
{
  v0 = MEMORY[0x28223BE20]();
  v164 = *MEMORY[0x277D85DE8];
  v8 = v3;
  v9 = v2;
  v10 = v1;
  switch(v0)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
      v2->i32[0] = v1->i32[0];
      break;
    case 4:
      v100.i32[0] = v1->i32[0];
      v100.f32[1] = v1->f32[1] * 0.90176;
      v101.i32[0] = v1[4].i32[0];
      v101.f32[1] = v1[4].f32[1] * 0.90176;
      v102 = vmul_f32(v101, vdup_n_s32(0x3F66DA05u));
      v103 = vadd_f32(v100, v102);
      v104 = vsub_f32(v100, v102);
      v102.i32[0] = vdup_lane_s32(v103, 1).u32[0];
      v105 = vzip1_s32(v103, v104);
      v102.i32[1] = v104.i32[1];
      *v2->f32 = vadd_f32(v105, v102);
      *&v2->f32[v3] = vsub_f32(v105, v102);
      break;
    case 5:
      v47 = 0;
      v135 = 0u;
      v134 = 0u;
      v133 = 0u;
      v132 = 0u;
      do
      {
        v48 = *v10;
        v10 += 8;
        *(&v132 + v47) = vmulq_f32(vmulq_n_f32(v48, *(&xmmword_240C117C0 + v47)), xmmword_240C117C0);
        ++v47;
      }

      while (v47 != 4);
      v49 = 0;
      v122 = vaddq_f32(v132, v134);
      v123 = vsubq_f32(v132, v134);
      v50 = vaddq_f32(v133, v135);
      v51 = vmulq_f32(v133, vdupq_n_s32(0x3FB504F3u));
      v52 = vaddq_f32(v51, v50);
      v53 = vsubq_f32(v51, v50);
      v124 = v52;
      v125 = v53;
      v54 = 1;
      do
      {
        v55 = v54;
        v53.i32[0] = dword_240C123D8[v49];
        v56 = &v122 + v49;
        v57 = *v56;
        v58 = v56[2];
        *(&v118 + v49) = vmlaq_n_f32(*v56, v58, v53.f32[0]);
        *(&v118 + ((16 * v49) ^ 0x30)) = vmlsq_lane_f32(v57, v58, *v53.f32, 0);
        v49 = 1;
        v54 = 0;
      }

      while ((v55 & 1) != 0);
      v59 = 0;
      v60 = vzip1q_s32(v118, v120);
      v61 = vzip1q_s32(v119, v121);
      v62 = vzip2q_s32(v118, v120);
      v63 = vzip2q_s32(v119, v121);
      v64 = vzip1q_s32(v60, v61);
      v65 = vzip2q_s32(v60, v61);
      v66 = vzip1q_s32(v62, v63);
      v122 = vaddq_f32(v64, v66);
      v123 = vsubq_f32(v64, v66);
      v67 = vaddq_f32(v65, vzip2q_s32(v62, v63));
      v68 = vmulq_f32(v65, vdupq_n_s32(0x3FB504F3u));
      v69 = vaddq_f32(v68, v67);
      v70 = vsubq_f32(v68, v67);
      v124 = v69;
      v125 = v70;
      v71 = 1;
      do
      {
        v70.i32[0] = dword_240C123D8[v59];
        v72 = v71;
        v73 = &v122 + v59;
        v74 = v73[2];
        v75 = vmlsq_lane_f32(*v73, v74, *v70.f32, 0);
        *(v2 + 4 * v59 * v3) = vmlaq_n_f32(*v73, v74, v70.f32[0]);
        *(v2 + 4 * (v59 ^ 3) * v3) = v75;
        v59 = 1;
        v71 = 0;
      }

      while ((v72 & 1) != 0);
      break;
    case 6:
      v4.i32[0] = v1->i32[0];
      v5.f32[0] = v1->f32[1] * 0.90176;
      v2->i32[0] = vadd_f32(v4, v5).u32[0];
      v2->i32[v3] = vsub_f32(v4, v5).u32[0];
      break;
    case 7:
      v4.i32[0] = v1->i32[0];
      v5.f32[0] = v1->f32[1] * 0.90176;
      *v2->f32 = vzip1_s32(vadd_f32(v4, v5), vsub_f32(v4, v5));
      break;
    case 8:
      v118 = vmulq_f32(*v1, xmmword_240C117C0);
      v132 = v118;
      sub_240B89964(1, &v132, v3, v2, &v119, *v118.i8, 0.00624292809, v6, v7);
      break;
    case 9:
      v132 = vmulq_f32(*v1, xmmword_240C117C0);
      v118 = v132;
      sub_240B89964(1, v118.i32, 1, &v132, &v119, *v132.f32, 0.00624292809, v6, v7);
      v118 = v132;
      *v9 = v132;
      break;
    case 10:
      v87 = 0;
      v133 = 0u;
      v132 = 0u;
      v88 = 1;
      do
      {
        v89 = v88;
        *(&v132 + v87) = vmulq_f32(vmulq_n_f32(v1[8 * v87], flt_240C123E0[v87]), xmmword_240C117C0);
        v87 = 1;
        v88 = 0;
      }

      while ((v89 & 1) != 0);
      v118 = vaddq_f32(v132, v133);
      v119 = vsubq_f32(v132, v133);
      v90 = &v118;
      v91 = &v132;
      v92 = 1;
      do
      {
        v93 = 0;
        v94 = v92;
        do
        {
          v91->i32[0] = v90->i32[v93];
          v91 = (v91 + 8);
          ++v93;
        }

        while (v93 != 4);
        v92 = 0;
        v91 = &v132.i32[1];
        v90 = &v119;
      }

      while ((v94 & 1) != 0);
      sub_240B89A08(2, &v132, v3, v2, &v120);
      break;
    case 11:
      v23 = 0;
      v133 = 0u;
      v132 = 0u;
      v24 = 1;
      do
      {
        v25 = v24;
        *(&v132 + v23) = vmulq_f32(vmulq_n_f32(v1[8 * v23], flt_240C123E0[v23]), xmmword_240C117C0);
        v23 = 1;
        v24 = 0;
      }

      while ((v25 & 1) != 0);
      v26 = &v132;
      v27 = &v118;
      v28 = 1;
      do
      {
        v29 = 0;
        v30 = v28;
        do
        {
          v27->i32[0] = v26->i32[v29];
          v27 = (v27 + 8);
          ++v29;
        }

        while (v29 != 4);
        v28 = 0;
        v27 = (v118.i64 + 4);
        v26 = &v133;
      }

      while ((v30 & 1) != 0);
      sub_240B89A08(2, &v118, 2, &v132, &v120);
      v165 = vld2q_f32(v132.f32);
      *v9 = vaddq_f32(v165.val[0], v165.val[1]);
      *(v9 + 4 * v8) = vsubq_f32(v165.val[0], v165.val[1]);
      break;
    case 18:
      v42 = 0;
      v147 = 0u;
      v146 = 0u;
      v145 = 0u;
      v144 = 0u;
      v143 = 0u;
      v142 = 0u;
      v141 = 0u;
      v140 = 0u;
      v139 = 0u;
      v138 = 0u;
      v137 = 0u;
      v136 = 0u;
      v135 = 0u;
      v134 = 0u;
      v43 = &v132;
      v133 = 0u;
      v132 = 0u;
      do
      {
        v44 = 0;
        v45 = xmmword_240C847B0 + v42;
        v46 = vld1q_dup_f32(v45);
        do
        {
          v43[v44] = vmulq_f32(vmulq_f32(v10[v44], v46), xmmword_240C847B0[v44]);
          ++v44;
        }

        while (v44 != 2);
        ++v42;
        v43 += 2;
        v10 += 16;
      }

      while (v42 != 8);
      v112 = v3;
      v113 = v2;
      v116 = 8;
      v117 = &v132;
      v114 = 8;
      v115 = &v118;
      sub_240B3F2E8(sub_240B89D9C, &v116, &v114, 8, v127);
      v116 = 8;
      v117 = &v118;
      v114 = 8;
      v115 = &v132;
      sub_240B3F9C8(&v116, &v114);
      v116 = 8;
      v117 = &v132;
      v17 = v127;
      v16 = sub_240B89D9C;
      goto LABEL_49;
    case 19:
      v82 = 0;
      v139 = 0u;
      v138 = 0u;
      v137 = 0u;
      v136 = 0u;
      v135 = 0u;
      v134 = 0u;
      v83 = &v132;
      v133 = 0u;
      v132 = 0u;
      do
      {
        v84 = 0;
        v85 = &xmmword_240C117C0 + v82;
        v86 = vld1q_dup_f32(v85);
        do
        {
          v83[v84] = vmulq_f32(vmulq_f32(v10[v84], v86), xmmword_240C847B0[v84]);
          ++v84;
        }

        while (v84 != 2);
        ++v82;
        v83 += 2;
        v10 += 16;
      }

      while (v82 != 4);
      v116 = 8;
      v117 = &v132;
      v114 = 8;
      v115 = &v118;
      sub_240B3F2E8(sub_240B89E10, &v116, &v114, 8, v126);
      v116 = 8;
      v117 = &v118;
      v114 = 4;
      v115 = &v132;
      sub_240B3F300(&v116, &v114);
      sub_240B3F3A8(&v132, 4, v9, v8, v126);
      break;
    case 20:
      v31 = 0;
      v139 = 0u;
      v138 = 0u;
      v137 = 0u;
      v136 = 0u;
      v135 = 0u;
      v134 = 0u;
      v32 = &v132;
      v133 = 0u;
      v132 = 0u;
      do
      {
        v33 = 0;
        v34 = &xmmword_240C117C0 + v31;
        v35 = vld1q_dup_f32(v34);
        do
        {
          v32[v33] = vmulq_f32(vmulq_f32(v10[v33], v35), xmmword_240C847B0[v33]);
          ++v33;
        }

        while (v33 != 2);
        ++v31;
        v32 += 2;
        v10 += 16;
      }

      while (v31 != 4);
      v112 = v3;
      v113 = v2;
      v116 = 8;
      v117 = &v132;
      v114 = 4;
      v115 = &v118;
      sub_240B3F300(&v116, &v114);
      v36 = sub_240B3F3A8(&v118, 4, &v132, 4, v126);
      v116 = 4;
      v117 = &v132;
      v114 = 8;
      v115 = &v118;
      sub_240B404FC(&v116, &v114, v36);
      v116 = 8;
      v117 = &v118;
      v16 = sub_240B89E10;
      v17 = v126;
      goto LABEL_49;
    case 21:
      v37 = &v132;
      bzero(&v132, 0x400uLL);
      for (i = 0; i != 16; ++i)
      {
        v39 = 0;
        v40 = xmmword_240C847D0 + i;
        v41 = vld1q_dup_f32(v40);
        do
        {
          v37[v39] = vmulq_f32(vmulq_f32(v10[v39], v41), xmmword_240C847D0[v39]);
          ++v39;
        }

        while (v39 != 4);
        v37 += 4;
        v10 += 32;
      }

      v112 = v8;
      v113 = v9;
      v116 = 16;
      v117 = &v132;
      v114 = 16;
      v115 = &v118;
      sub_240B3F2E8(sub_240B89D28, &v116, &v114, 16, v129);
      v116 = 16;
      v117 = &v118;
      v114 = 16;
      v115 = &v132;
      sub_240B3F62C(&v116, &v114);
      v116 = 16;
      v117 = &v132;
      v17 = v129;
      v16 = sub_240B89D28;
      goto LABEL_68;
    case 22:
      v76 = 0;
      v163 = 0u;
      v162 = 0u;
      v161 = 0u;
      v160 = 0u;
      v159 = 0u;
      v158 = 0u;
      v157 = 0u;
      v156 = 0u;
      v155 = 0u;
      v154 = 0u;
      v153 = 0u;
      v152 = 0u;
      v151 = 0u;
      v150 = 0u;
      v149 = 0u;
      v148 = 0u;
      v147 = 0u;
      v146 = 0u;
      v145 = 0u;
      v144 = 0u;
      v143 = 0u;
      v142 = 0u;
      v141 = 0u;
      v140 = 0u;
      v139 = 0u;
      v138 = 0u;
      v137 = 0u;
      v136 = 0u;
      v135 = 0u;
      v134 = 0u;
      v77 = &v132;
      v133 = 0u;
      v132 = 0u;
      do
      {
        v78 = 0;
        v79 = xmmword_240C847B0 + v76;
        v80 = vld1q_dup_f32(v79);
        do
        {
          v77[v78] = vmulq_f32(vmulq_f32(v10[v78], v80), xmmword_240C847D0[v78]);
          ++v78;
        }

        while (v78 != 4);
        ++v76;
        v77 += 4;
        v10 += 32;
      }

      while (v76 != 8);
      v112 = v3;
      v113 = v2;
      v116 = 16;
      v117 = &v132;
      v114 = 16;
      v115 = &v118;
      sub_240B3F2E8(sub_240B89D9C, &v116, &v114, 16, v128);
      v116 = 16;
      v117 = &v118;
      v114 = 8;
      v115 = &v132;
      sub_240B3F714(&v116, &v114);
      v116 = 8;
      v117 = &v132;
      v16 = sub_240B89D28;
      v17 = v128;
LABEL_49:
      v81 = 8;
      goto LABEL_77;
    case 23:
      v95 = 0;
      v163 = 0u;
      v162 = 0u;
      v161 = 0u;
      v160 = 0u;
      v159 = 0u;
      v158 = 0u;
      v157 = 0u;
      v156 = 0u;
      v155 = 0u;
      v154 = 0u;
      v153 = 0u;
      v152 = 0u;
      v151 = 0u;
      v150 = 0u;
      v149 = 0u;
      v148 = 0u;
      v147 = 0u;
      v146 = 0u;
      v145 = 0u;
      v144 = 0u;
      v143 = 0u;
      v142 = 0u;
      v141 = 0u;
      v140 = 0u;
      v139 = 0u;
      v138 = 0u;
      v137 = 0u;
      v136 = 0u;
      v135 = 0u;
      v134 = 0u;
      v96 = &v132;
      v133 = 0u;
      v132 = 0u;
      do
      {
        v97 = 0;
        v98 = xmmword_240C847B0 + v95;
        v99 = vld1q_dup_f32(v98);
        do
        {
          v96[v97] = vmulq_f32(vmulq_f32(v10[v97], v99), xmmword_240C847D0[v97]);
          ++v97;
        }

        while (v97 != 4);
        ++v95;
        v96 += 4;
        v10 += 32;
      }

      while (v95 != 8);
      v112 = v3;
      v113 = v2;
      v116 = 16;
      v117 = &v132;
      v114 = 8;
      v115 = &v118;
      sub_240B3F714(&v116, &v114);
      v116 = 8;
      v117 = &v118;
      v114 = 8;
      v115 = &v132;
      sub_240B3F2E8(sub_240B89D28, &v116, &v114, 8, v128);
      v116 = 8;
      v117 = &v132;
      v114 = 16;
      v115 = &v118;
      sub_240B3F7FC(&v116, &v114);
      v116 = 16;
      v117 = &v118;
      v16 = sub_240B89D9C;
      v17 = v128;
      goto LABEL_68;
    case 24:
      v18 = &v132;
      bzero(&v132, 0x1000uLL);
      for (j = 0; j != 32; ++j)
      {
        v20 = 0;
        v21 = xmmword_240C84810 + j;
        v22 = vld1q_dup_f32(v21);
        do
        {
          v18[v20] = vmulq_f32(vmulq_f32(v10[v20], v22), xmmword_240C84810[v20]);
          ++v20;
        }

        while (v20 != 8);
        v18 += 8;
        v10 += 64;
      }

      v112 = v8;
      v113 = v9;
      v116 = 32;
      v117 = &v132;
      v114 = 32;
      v115 = &v118;
      sub_240B3F2E8(sub_240B89AAC, &v116, &v114, 32, v131);
      v116 = 32;
      v117 = &v118;
      v114 = 32;
      v115 = &v132;
      sub_240B3F2E8(sub_240B89C44, &v116, &v114, 32, 32);
      v116 = 32;
      v117 = &v132;
      v17 = v131;
      v16 = sub_240B89AAC;
      goto LABEL_76;
    case 25:
      v11 = &v132;
      bzero(&v132, 0x800uLL);
      for (k = 0; k != 16; ++k)
      {
        v13 = 0;
        v14 = xmmword_240C847D0 + k;
        v15 = vld1q_dup_f32(v14);
        do
        {
          v11[v13] = vmulq_f32(vmulq_f32(v10[v13], v15), xmmword_240C84810[v13]);
          ++v13;
        }

        while (v13 != 8);
        v11 += 8;
        v10 += 64;
      }

      v112 = v8;
      v113 = v9;
      v116 = 32;
      v117 = &v132;
      v114 = 32;
      v115 = &v118;
      sub_240B3F2E8(sub_240B89D28, &v116, &v114, 32, v130);
      v116 = 32;
      v117 = &v118;
      v114 = 16;
      v115 = &v132;
      sub_240B3F2E8(sub_240B89C44, &v116, &v114, 16, 32);
      v116 = 16;
      v117 = &v132;
      v16 = sub_240B89AAC;
      v17 = v130;
LABEL_68:
      v81 = 16;
      goto LABEL_77;
    case 26:
      v106 = &v132;
      bzero(&v132, 0x800uLL);
      for (m = 0; m != 16; ++m)
      {
        v108 = 0;
        v109 = xmmword_240C847D0 + m;
        v110 = vld1q_dup_f32(v109);
        do
        {
          v106[v108] = vmulq_f32(vmulq_f32(v10[v108], v110), xmmword_240C84810[v108]);
          ++v108;
        }

        while (v108 != 8);
        v106 += 8;
        v10 += 64;
      }

      v112 = v8;
      v113 = v9;
      v116 = 32;
      v117 = &v132;
      v114 = 16;
      v115 = &v118;
      sub_240B3F2E8(sub_240B89C44, &v116, &v114, 16, 32);
      v116 = 16;
      v117 = &v118;
      v114 = 16;
      v115 = &v132;
      sub_240B3F2E8(sub_240B89AAC, &v116, &v114, 16, v130);
      v116 = 16;
      v117 = &v132;
      v114 = 32;
      v115 = &v118;
      sub_240B3F2E8(sub_240B89C44, &v116, &v114, 32, 16);
      v116 = 32;
      v117 = &v118;
      v16 = sub_240B89D28;
      v17 = v130;
LABEL_76:
      v81 = 32;
LABEL_77:
      sub_240B3F2E8(v16, &v116, &v112, v81, v17);
      break;
    default:
      break;
  }

  v111 = *MEMORY[0x277D85DE8];
}

float sub_240B89964(uint64_t a1, __int32 *a2, uint64_t a3, uint64_t a4, int32x4_t *a5, float32x2_t a6, double a7, double a8, float32x2_t a9)
{
  v9 = 0;
  a6.i32[0] = *a2;
  LODWORD(a7) = a2[a1];
  a9.i32[0] = a2[2 * a1];
  *v10.i8 = vadd_f32(a6, a9);
  v11 = vsub_f32(a6, a9);
  v10.u64[1] = v11;
  v11.f32[0] = *&a7 + *&a2[3 * a1];
  *&a7 = *&a7 * 1.4142;
  v12 = vsub_f32(*&a7, v11);
  *v13.i8 = vadd_f32(*&a7, v11);
  v13.u64[1] = v12;
  v14 = vuzp1q_s32(v10, v13);
  *a5 = v14;
  v15 = 1;
  do
  {
    v16 = v15;
    v14.i32[0] = dword_240C123D8[v9];
    v17 = &a5->i32[v9];
    v18 = vld1_dup_f32(v17);
    v17 += 2;
    v19 = vld1_dup_f32(v17);
    *(a4 + 4 * v9 * a3) = vmla_n_f32(v18, v19, *v14.i32).u32[0];
    *(a4 + 4 * (v9 ^ 3) * a3) = vmls_lane_f32(v18, v19, *v14.i8, 0).u32[0];
    v9 = 1;
    v15 = 0;
  }

  while ((v16 & 1) != 0);
  return *v14.i32;
}

float32_t sub_240B89A08(uint64_t a1, float32x2_t *a2, uint64_t a3, uint64_t a4, float32x2_t *a5)
{
  v5 = 0;
  v6 = a2[a1];
  v7 = *(a2 + 4 * a1);
  v8 = *(a2 + 12 * a1);
  v9 = vadd_f32(*a2, v6);
  v10 = vsub_f32(*a2, v6);
  *a5 = v9;
  a5[1] = v10;
  v11 = vadd_f32(v7, v8);
  v12 = vmul_f32(v7, vdup_n_s32(0x3FB504F3u));
  v13 = vadd_f32(v12, v11);
  v14 = vsub_f32(v12, v11);
  a5[2] = v13;
  a5[3] = v14;
  v15 = 1;
  do
  {
    v14.i32[0] = dword_240C123D8[v5];
    v16 = v15;
    v17 = &a5[v5];
    v18 = v17[2];
    v19 = vmls_lane_f32(*v17, v18, v14, 0);
    *(a4 + 4 * v5 * a3) = vmla_n_f32(*v17, v18, v14.f32[0]);
    *(a4 + 4 * (v5 ^ 3) * a3) = v19;
    v5 = 1;
    v15 = 0;
  }

  while ((v16 & 1) != 0);
  return v14.f32[0];
}

void sub_240B89AAC(uint64_t *a1, uint64_t *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    v9 = 0;
    v10 = a4 + 16;
    v32 = a4 + 31;
    v31 = vdupq_n_s32(0x3FB504F3u);
    do
    {
      v11 = 0;
      v13 = *a1;
      v12 = a1[1];
      v14 = *a2;
      v15 = a2[1];
      v16 = (v12 + v8);
      v17 = 8 * *a1;
      do
      {
        a4[v11++] = *v16;
        v16 = (v16 + v17);
      }

      while (v11 != 16);
      v18 = v12 + 4 * v13;
      for (i = 16; i != 32; ++i)
      {
        a4[i] = *(v18 + v8);
        v18 += v17;
      }

      sub_240B3FFF4(a4, 4, a4, 4, a4 + 32);
      v20 = -15;
      v21 = v32;
      v22 = v32;
      do
      {
        v23 = v22[-1];
        --v22;
        *v21 = vaddq_f32(*v21, v23);
        v21 = v22;
      }

      while (!__CFADD__(v20++, 1));
      *v10 = vmulq_f32(*v10, v31);
      sub_240B3FFF4(v10, 4, v10, 4, a4 + 32);
      v26 = 0;
      v27 = v15 + 124 * v14;
      v28 = v10;
      do
      {
        v25.f32[0] = dword_240C83FEC[v26];
        v29 = v28[-16];
        v30 = *v28++;
        *(v15 + v8) = vmlaq_n_f32(v29, v30, v25.f32[0]);
        *(v27 + v8) = vmlsq_lane_f32(v29, v30, v25, 0);
        ++v26;
        v27 -= 4 * v14;
        v15 += 4 * v14;
      }

      while (v26 != 16);
      v9 += 4;
      v8 += 16;
    }

    while (v9 < a3);
  }
}

void sub_240B89D28(uint64_t *a1, uint64_t *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      sub_240B3FFF4((a1[1] + v8), *a1, (a2[1] + v8), *a2, a4);
      v8 += 16;
    }
  }
}

void sub_240B89D9C(uint64_t *a1, uint64_t *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      sub_240B3F3A8((a1[1] + v8), *a1, (a2[1] + v8), *a2, a4);
      v8 += 16;
    }
  }
}

void sub_240B89E10(uint64_t *a1, uint64_t *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      sub_240B40454((a1[1] + v8), *a1, a2[1] + v8, *a2, a4);
      v8 += 16;
    }
  }
}

uint64_t sub_240B89E84(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  v9 = 8;
  v10 = a3;
  sub_240B3F2E8(sub_240B8A50C, a1, &v9, 8, &a3[8]);
  v9 = 8;
  v10 = a3;
  v7 = 4;
  v8 = a2;
  sub_240B3F300(&v9, &v7);
  v9 = 4;
  v10 = a3;
  sub_240B41588(4, a2, &v9, a3 + 8);
  v9 = 4;
  v10 = a3;
  v7 = 8;
  v8 = a2;
  return sub_240B404FC(&v9, &v7, v5);
}

void sub_240B89F28(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v7 = 0;
    v8 = 0;
    v9 = &a4[256];
    v10 = a4 + 384;
    v11 = a4 + 385;
    v12 = a4 + 1;
    v29 = vdupq_n_s32(0x3B800000u);
    v30 = vdupq_n_s32(0x3FB504F3u);
    do
    {
      v13 = 0;
      v14 = (a1[1] + v7);
      v15 = 4 * *a1;
      do
      {
        a4[v13++] = *v14;
        v14 = (v14 + v15);
      }

      while (v13 != 256);
      v16 = a4;
      for (i = 255; i != 127; --i)
      {
        v16[256] = vaddq_f32(*v16, a4[i]);
        ++v16;
      }

      sub_240B776C4(v9, a4 + 512);
      v18 = a4;
      for (j = 255; j != 127; --j)
      {
        v18[384] = vsubq_f32(*v18, a4[j]);
        ++v18;
      }

      for (k = 0; k != 128; ++k)
      {
        v10[k] = vmulq_n_f32(v10[k], dword_240C845B0[k]);
      }

      sub_240B776C4(v10, a4 + 512);
      *v10 = vmlaq_f32(*v11, v30, *v10);
      v21 = 126;
      v22 = v11;
      v23 = v11;
      do
      {
        v24 = v23[1];
        ++v23;
        *v22 = vaddq_f32(*v22, v24);
        v22 = v23;
        --v21;
      }

      while (v21);
      v25 = a4;
      do
      {
        *v25 = *(v9 + v21);
        v25 += 2;
        v21 += 16;
      }

      while (v21 != 2048);
      v26 = 0;
      v27 = v12;
      do
      {
        *v27 = v10[v26];
        v27 += 2;
        ++v26;
      }

      while (v26 != 128);
      for (m = 0; m != 256; ++m)
      {
        *(a2[1] + 4 * *a2 * m + 4 * v8) = vmulq_f32(a4[m], v29);
      }

      v8 += 4;
      v7 += 16;
    }

    while (v8 < a3);
  }
}

void sub_240B8A124(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      v10 = 0;
      v11 = (a1[1] + v8);
      v12 = 4 * *a1;
      do
      {
        a4[v10++] = *v11;
        v11 = (v11 + v12);
      }

      while (v10 != 128);
      sub_240B776C4(a4, a4 + 128);
      v13 = 0;
      v14.i64[0] = 0x3C0000003C000000;
      v14.i64[1] = 0x3C0000003C000000;
      do
      {
        *(a2[1] + 4 * *a2 * v13 + 4 * i) = vmulq_f32(a4[v13], v14);
        ++v13;
      }

      while (v13 != 128);
      v8 += 16;
    }
  }
}

void sub_240B8A1E4(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    v9 = 0;
    v14 = vdupq_n_s32(0x3C800000u);
    do
    {
      v10 = 0;
      v11 = (a1[1] + v8);
      v12 = 4 * *a1;
      do
      {
        a4[v10++] = *v11;
        v11 = (v11 + v12);
      }

      while (v10 != 64);
      sub_240B777F8(a4, a4 + 64);
      for (i = 0; i != 64; ++i)
      {
        *(a2[1] + 4 * *a2 * i + 4 * v9) = vmulq_f32(a4[i], v14);
      }

      v9 += 4;
      v8 += 16;
    }

    while (v9 < a3);
  }
}

void sub_240B8A2B8(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      v10 = 0;
      v11 = (a1[1] + v8);
      v12 = 4 * *a1;
      do
      {
        a4[v10++] = *v11;
        v11 = (v11 + v12);
      }

      while (v10 != 32);
      sub_240B77928(a4, a4 + 32);
      v13 = 0;
      v14.i64[0] = 0x3D0000003D000000;
      v14.i64[1] = 0x3D0000003D000000;
      do
      {
        *(a2[1] + 4 * *a2 * v13 + 4 * i) = vmulq_f32(a4[v13], v14);
        ++v13;
      }

      while (v13 != 32);
      v8 += 16;
    }
  }
}

void sub_240B8A378(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      v10 = 0;
      v11 = (a1[1] + v8);
      v12 = 4 * *a1;
      do
      {
        a4[v10++] = *v11;
        v11 = (v11 + v12);
      }

      while (v10 != 8);
      sub_240B41928(a4, a4 + 8);
      v13 = 0;
      v14.i64[0] = 0x3E0000003E000000;
      v14.i64[1] = 0x3E0000003E000000;
      do
      {
        *(a2[1] + 4 * *a2 * v13 + 4 * i) = vmulq_f32(a4[v13], v14);
        ++v13;
      }

      while (v13 != 8);
      v8 += 16;
    }
  }
}

void sub_240B8A438(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    v9 = 0;
    v14 = vdupq_n_s32(0x3D800000u);
    do
    {
      v10 = 0;
      v11 = (a1[1] + v8);
      v12 = 4 * *a1;
      do
      {
        a4[v10++] = *v11;
        v11 = (v11 + v12);
      }

      while (v10 != 16);
      sub_240B417F4(a4, a4 + 16);
      for (i = 0; i != 16; ++i)
      {
        *(a2[1] + 4 * *a2 * i + 4 * v9) = vmulq_f32(a4[i], v14);
      }

      v9 += 4;
      v8 += 16;
    }

    while (v9 < a3);
  }
}

void *sub_240B8A50C(void *result, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v4 = 0;
    v5 = 0;
    v6 = vdupq_n_s32(0x3F0A8BD4u);
    v7 = vdupq_n_s32(0x3FA73D75u);
    v8 = vdupq_n_s32(0x3FB504F3u);
    __asm { FMOV            V3.4S, #0.25 }

    do
    {
      v14 = 0;
      v15 = (result[1] + v4);
      v16 = 4 * *result;
      do
      {
        a4[v14++] = *v15;
        v15 = (v15 + v16);
      }

      while (v14 != 4);
      v17 = 0;
      v18 = *a4;
      v19 = a4[1];
      v21 = a4[2];
      v20 = a4[3];
      v22 = vaddq_f32(*a4, v20);
      v23 = vaddq_f32(v19, v21);
      v24 = vaddq_f32(v22, v23);
      v25 = vsubq_f32(v22, v23);
      a4[4] = v24;
      a4[5] = v25;
      v26 = vmulq_f32(vsubq_f32(v18, v20), v6);
      v27 = vmulq_f32(vsubq_f32(v19, v21), v7);
      v28 = vaddq_f32(v26, v27);
      v29 = vsubq_f32(v26, v27);
      a4[7] = v29;
      a4[2] = v25;
      a4[3] = v29;
      v30 = vmlaq_f32(v29, v8, v28);
      a4[6] = v30;
      *a4 = v24;
      a4[1] = v30;
      do
      {
        *(a2[1] + 4 * *a2 * v17 + 4 * v5) = vmulq_f32(a4[v17], _Q3);
        ++v17;
      }

      while (v17 != 4);
      v5 += 4;
      v4 += 16;
    }

    while (v5 < a3);
  }

  return result;
}

uint64_t sub_240B8A5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, void *a11)
{
  v11 = MEMORY[0x28223BE20]();
  v111 = v12;
  v109 = v13;
  v15 = v14;
  v17 = v16;
  v103 = v18;
  v128[512] = *MEMORY[0x277D85DE8];
  v104 = v19;
  v20 = v19[2];
  v21 = (v11[5] + 1388544 * a10);
  v23 = *v22;
  v24 = v22[1];
  v25 = v22[2];
  v26 = v22[3] + v24;
  v101 = a11[2];
  v102 = a11[3];
  v99 = a11[7];
  v100 = a11[8];
  v28 = v11[2];
  v27 = v11[3];
  bzero(v128, 0x1000uLL);
  bzero(v127, 0x1000uLL);
  bzero(v126, 0x1000uLL);
  v110 = v26;
  v29 = v24 >= v26;
  v30 = 0;
  if (!v29)
  {
    v31 = v23 + v24 * (v20 >> 3);
    v32 = 2 * v28 + 4 * v31;
    v33 = v28 + 4 * v31;
    v34 = v25 + v23;
    v114 = v17;
    v115 = v15;
    v112 = v17 + 72;
    v113 = v25 + v23;
    v35 = (v27 + 3 * v28 + 4 * v31);
    v36 = v20 >> 3;
    v37 = (v27 + v32);
    v38 = (v27 + 4 * v31);
    v39 = (v27 + v33);
    v121 = v24;
    v116 = v23;
    while (1)
    {
      v107 = v37;
      v108 = v35;
      v105 = v39;
      v106 = v38;
      if (v23 < v34)
      {
        break;
      }

LABEL_45:
      v35 = &v108[v36];
      v37 = &v107[v36];
      v39 = &v105[v36];
      v38 = &v106[v36];
      if (++v121 == v110)
      {
        goto LABEL_46;
      }
    }

    v40 = v103[2];
    v41 = v40 * (v104[1] + 8 * v121);
    v119 = v103[3] + v41 + 4 * *v104;
    v120 = v103[8] + v41 + 4 * *v104;
    v117 = v40 >> 2;
    v118 = v103[13] + v41 + 4 * *v104;
    v124 = v39;
    v125 = v38;
    v122 = v35;
    v123 = v37;
    v42 = v23;
    while (v15)
    {
      v43 = *(*(v15 + 24) + *(v15 + 16) * v121 + v42);
      if (v43)
      {
        v44 = v43 >> 1;
        goto LABEL_9;
      }

LABEL_44:
      ++v42;
      ++v122;
      ++v123;
      ++v124;
      ++v125;
      if (v42 == v34)
      {
        goto LABEL_45;
      }
    }

    v44 = 0;
LABEL_9:
    v45 = byte_240C87EA0[v44];
    sub_240B8750C(v44, v120 + 32 * v42, v117, v21, &v21[53248]);
    sub_240B88A78();
    sub_240B8750C(v44, v119 + 32 * v42, v117, &v21[0x4000], &v21[53248]);
    sub_240B88A78();
    sub_240B8750C(v44, v118 + 32 * v42, v117, &v21[0x8000], &v21[53248]);
    sub_240B88A78();
    if (v15)
    {
      v46 = *(v111 + 64);
      v47 = *(v111 + 44) * *(v111 + 36);
      v48 = 1.0 / (*(v46 + 60) * v47);
      v49 = 1.0 / (*(v46 + 68) * v47);
    }

    else
    {
      v48 = 1.0;
      v49 = 1.0;
    }

    v50 = 0;
    v51 = *(v114 + 40);
    v52 = (v112 + 24 * v44);
    v53 = v51 + 4 * *v52;
    v54 = v51 + 4 * v52[2];
    v55 = byte_240C87EBB[v44];
    if (v45 <= 1)
    {
      v56 = 1;
    }

    else
    {
      v56 = v45;
    }

    if (v55 <= 1)
    {
      v57 = 1;
    }

    else
    {
      v57 = byte_240C87EBB[v44];
    }

    v58 = 4 * v45;
    v59 = v126;
    v60 = v127;
    v61 = v128;
    v63 = v124;
    v62 = v125;
    v65 = v122;
    v64 = v123;
    do
    {
      v66 = v61;
      v67 = v60;
      v68 = v59;
      v69 = v62;
      v70 = v63;
      v71 = v64;
      v72 = v65;
      v73 = v56;
      do
      {
        v74 = *v66++;
        v75 = v74;
        *v69++ = v48 * v74;
        v76 = *v67++;
        *v70++ = v48 * v76;
        *v71++ = v49 * v75;
        v77 = *v68++;
        *v72++ = v49 * v77;
        --v73;
      }

      while (v73);
      ++v50;
      v65 = (v65 + v36 * 4);
      v64 = (v64 + v36 * 4);
      v63 = (v63 + v36 * 4);
      v62 = (v62 + v36 * 4);
      v59 = (v59 + v58);
      v60 = (v60 + v58);
      v61 = (v61 + v58);
    }

    while (v50 != v57);
    v23 = v116;
    v34 = v113;
    if (v116 + v45 > v113)
    {
      v15 = v115;
    }

    else
    {
      v15 = v115;
      if (v24 + v55 <= v110)
      {
        if (v55 >= v45)
        {
          v78 = v45;
        }

        else
        {
          v78 = v55;
        }

        if (v55 <= v45)
        {
          v79 = v45;
        }

        else
        {
          v79 = v55;
        }

        if (v78)
        {
          v80 = 0;
          v81 = v21;
          do
          {
            v82 = v81;
            for (i = v79; i; --i)
            {
              v82[0x4000].i32[0] = 0;
              v82[0x8000].i32[0] = 0;
              v82->i32[0] = 0;
              v82 = (v82 + 4);
            }

            ++v80;
            v81 += 2 * v79;
          }

          while (v80 != v78);
        }

        v84 = 1.0;
        v85 = 1.0;
        if (v109)
        {
          v85 = *(*(v109 + 24) + *(v109 + 16) * v121 + 4 * v42);
        }

        if (v115)
        {
          v84 = v85 * (*(v111 + 44) * 128.0);
        }

        v86 = (v45 * v55) << 6;
        if (v86)
        {
          v87 = 0;
          v88 = 0;
          v89 = &v21[v30];
          do
          {
            v90 = v21[v87 + 0x4000];
            v91 = v21[v87 + 0x8000];
            v92 = v21[v87];
            v93 = vmulq_n_f32(*(v53 + v87 * 16), v84);
            v94 = vmulq_n_f32(*(v54 + v87 * 16), v84);
            v89[v87 + 49152] = vmulq_f32(v92, v93);
            v89[v87 + 50176] = vmulq_f32(v90, v93);
            v89[v87 + 51200] = vmulq_f32(v92, v94);
            v89[v87 + 52224] = vmulq_f32(v91, v94);
            ++v30;
            v88 += 4;
            ++v87;
          }

          while (v88 < v86);
        }
      }
    }

    goto LABEL_44;
  }

LABEL_46:
  v95 = (v24 >> 3);
  v96 = v100 + v99 * v95;
  *(v102 + v101 * v95 + (v23 >> 3)) = sub_240B87298(v21 + 49152, v21 + 50176, v30 * 4, a9, 0.0);
  result = sub_240B87298(v21 + 51200, v21 + 52224, v30 * 4, a9, 1.0);
  *(v96 + (v23 >> 3)) = result;
  v98 = *MEMORY[0x277D85DE8];
  return result;
}

float sub_240B8ABB4(uint64_t a1, float result)
{
  *(a1 + 32) = 0;
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *a1;
    v5 = *(a1 + 8);
    v6 = v5 - *a1;
    if (v5 == *a1)
    {
      v23 = 0uLL;
    }

    else
    {
      v7 = 0;
      *v2.i32 = v3;
      v8 = vdupq_n_s32(0xC0D55555);
      v9 = vdupq_n_s32(0x3F3E11C7u);
      v10 = vdupq_n_s32(0x3FB6E02Bu);
      v11 = vdupq_n_s32(0x3E32458Cu);
      v12 = vdupq_n_s32(0x3F813CEDu);
      v13 = vdupq_n_s32(0xB5F85AB0);
      v14 = vdupq_n_s32(0x3F7D8625u);
      v15 = vdupq_lane_s32(v2, 0);
      v16 = v6 >> 2;
      v17.i64[0] = 0x7F0000007FLL;
      v17.i64[1] = 0x7F0000007FLL;
      __asm { FMOV            V20.4S, #-1.0 }

      v23 = 0uLL;
      do
      {
        v24 = *v4++;
        v25 = vcvtq_f32_s32(v24);
        v26 = vmulq_n_f32(v25, 1.0 / v3);
        v27 = vaddq_s32(v26, v8);
        v28 = vaddq_f32(vsubq_s32(v26, vandq_s8(v27, v17)), _Q20);
        v23 = vaddq_f32(v23, vbicq_s8(vsubq_f32(0, vmulq_f32(vaddq_f32(vdivq_f32(vmlaq_f32(v13, v28, vmlaq_f32(v10, v9, v28)), vmlaq_f32(v14, v28, vmlaq_f32(v12, v11, v28))), vcvtq_f32_s32(vshrq_n_s32(v27, 0x17uLL))), v25)), vceqq_f32(v15, v25)));
        v7 += 4;
      }

      while (v7 < v16);
    }

    result = vaddv_f32(*&vpaddq_f32(v23, v23)) + 0.0;
    *(a1 + 32) = result;
  }

  return result;
}

float sub_240B8ACD4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v4 = *(a1 + 24);
  result = 0.0;
  if (v4)
  {
    v6 = *(a2 + 24);
    if (v6)
    {
      v7 = *a1;
      v8 = (*(a1 + 8) - *a1) >> 2;
      v9 = *a2;
      v10 = *(a2 + 8) - *a2;
      v11 = v10 >> 2;
      if (v8 <= v10 >> 2)
      {
        v12 = v10 >> 2;
      }

      else
      {
        v12 = (*(a1 + 8) - *a1) >> 2;
      }

      if (v12)
      {
        v13 = 0;
        *&a4 = (v6 + v4);
        v14 = 1.0 / *&a4;
        v15 = vdupq_lane_s32(*&a4, 0);
        v16 = vdupq_n_s32(0xC0D55555);
        v17.i64[0] = 0x7F0000007FLL;
        v17.i64[1] = 0x7F0000007FLL;
        __asm { FMOV            V5.4S, #-1.0 }

        v23 = vdupq_n_s32(0x3F3E11C7u);
        v24 = vdupq_n_s32(0x3FB6E02Bu);
        v25 = vdupq_n_s32(0x3E32458Cu);
        v26 = vdupq_n_s32(0x3F813CEDu);
        v27 = vdupq_n_s32(0xB5F85AB0);
        v28 = vdupq_n_s32(0x3F7D8625u);
        v29 = 0uLL;
        do
        {
          v30 = 0uLL;
          if (v8 > v13)
          {
            v30 = *v7;
          }

          v31 = 0uLL;
          if (v11 > v13)
          {
            v31 = *v9;
          }

          v32 = vcvtq_f32_s32(vaddq_s32(v31, v30));
          v33 = vmulq_n_f32(v32, v14);
          v34 = vaddq_s32(v33, v16);
          v35 = vaddq_f32(vsubq_s32(v33, vandq_s8(v34, v17)), _Q5);
          v29 = vaddq_f32(v29, vbicq_s8(vsubq_f32(0, vmulq_f32(vaddq_f32(vdivq_f32(vmlaq_f32(v27, v35, vmlaq_f32(v24, v23, v35)), vmlaq_f32(v28, v35, vmlaq_f32(v26, v25, v35))), vcvtq_f32_s32(vshrq_n_s32(v34, 0x17uLL))), v32)), vceqq_f32(v15, v32)));
          v13 += 4;
          ++v9;
          ++v7;
        }

        while (v13 < v12);
      }

      else
      {
        v29 = 0uLL;
      }

      return (vaddv_f32(*&vpaddq_f32(v29, v29)) - *(a1 + 32)) - *(a2 + 32);
    }
  }

  return result;
}

float sub_240B8AE40(uint64_t a1, int32x4_t **a2)
{
  if (!*(a1 + 24))
  {
    return 0.0;
  }

  v2 = a2[3];
  if (!v2)
  {
    return INFINITY;
  }

  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = v4 - *a1;
  if (v4 == *a1)
  {
    v17 = 0uLL;
  }

  else
  {
    v6 = 0;
    v7 = 1.0 / v2;
    v8 = v5 >> 2;
    v9 = vdupq_n_s32(0xC0D55555);
    v10 = vdupq_n_s32(0x3F3E11C7u);
    v11 = vdupq_n_s32(0x3FB6E02Bu);
    v12 = vdupq_n_s32(0x3E32458Cu);
    v13 = vdupq_n_s32(0x3F813CEDu);
    v14 = vdupq_n_s32(0xB5F85AB0);
    v15 = vdupq_n_s32(0x3F7D8625u);
    v16 = *a2;
    v17 = 0uLL;
    v18.i64[0] = 0x7F0000007FLL;
    v18.i64[1] = 0x7F0000007FLL;
    __asm { FMOV            V18.4S, #-1.0 }

    do
    {
      v24 = 0uLL;
      if ((a2[1] - *a2) >> 2 > v6)
      {
        v24 = *v16;
      }

      v25 = *v3++;
      v26 = vmulq_n_f32(vcvtq_f32_s32(v24), v7);
      v27 = vaddq_s32(v26, v9);
      v28 = vaddq_f32(vsubq_s32(v26, vandq_s8(v27, v18)), _Q18);
      v17 = vmlsq_f32(v17, vbicq_s8(vbslq_s8(vceqzq_s32(v24), v18, vaddq_f32(vdivq_f32(vmlaq_f32(v14, v28, vmlaq_f32(v11, v10, v28)), vmlaq_f32(v15, v28, vmlaq_f32(v13, v12, v28))), vcvtq_f32_s32(vshrq_n_s32(v27, 0x17uLL)))), vceqzq_s32(v25)), vcvtq_f32_s32(v25));
      v6 += 4;
      ++v16;
    }

    while (v6 < v8);
  }

  return vaddv_f32(*&vpaddq_f32(v17, v17)) - *(a1 + 32);
}

void sub_240B8AF90(uint64_t *a1, int **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 - *a2;
  if (v6 > (a1[1] - *a1))
  {
    sub_240B245C8(a1, v6 >> 2);
    v4 = *a2;
    v5 = a2[1];
    v6 = v5 - *a2;
  }

  if (v5 != v4)
  {
    v7 = v6 >> 2;
    v8 = *a1;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      v9 = *v4++;
      *v8++ += v9;
      --v7;
    }

    while (v7);
  }

  a1[3] += a2[3];
}

uint64_t sub_240B8B020(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = result;
    v6 = v3 >> 1;
    v7 = result + 16 * (v3 >> 1);
    v8 = (a2 - 16);
    result = sub_240B8B110(v7, a2 - 16);
    if (result)
    {
      v9 = *(a2 - 16);
      v10 = *(a2 - 12);
      v11 = *(a2 - 8);
      v12 = *(a2 - 4);
      *v8 = *v7;
      if (v3 >= 2)
      {
        v13 = v7;
        while (1)
        {
          v14 = v6 - 1;
          v6 = (v6 - 1) >> 1;
          v7 = v5 + 16 * v6;
          if (v9 >= *v7)
          {
            if (*v7 < v9)
            {
              break;
            }

            v15 = *(v7 + 4);
            if (v10 >= v15)
            {
              if (v15 < v10)
              {
                break;
              }

              v16 = *(v7 + 8);
              if (v11 >= v16 && (v16 < v11 || v12 >= *(v7 + 12)))
              {
                break;
              }
            }
          }

          *v13 = *v7;
          v13 = (v5 + 16 * v6);
          if (v14 <= 1)
          {
            goto LABEL_17;
          }
        }

        v7 = v13;
      }

LABEL_17:
      *v7 = v9;
      *(v7 + 4) = v10;
      *(v7 + 8) = v11;
      *(v7 + 12) = v12;
    }
  }

  return result;
}

uint64_t sub_240B8B110(uint64_t a1, uint64_t a2)
{
  if (*a2 < *a1)
  {
    return 1;
  }

  if (*a1 < *a2)
  {
    return 0;
  }

  v3 = *(a1 + 4);
  v4 = *(a2 + 4);
  if (v4 < v3)
  {
    return 1;
  }

  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  v8 = v5 >= v6 && *(a2 + 12) < *(a1 + 12);
  v9 = v6 < v5 || v8;
  if (v3 >= v4)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

void sub_240B8B174(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 - *a1;
  v6 = 0xCCCCCCCCCCCCCCCDLL * (v5 >> 3);
  v7 = a2 - v6;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      v12 = v4 + 40 * a2;
      if (v3 != v12)
      {
        v13 = a1[1];
        do
        {
          v15 = *(v13 - 40);
          v13 -= 40;
          v14 = v15;
          if (v15)
          {
            *(v3 - 32) = v14;
            operator delete(v14);
          }

          v3 = v13;
        }

        while (v13 != v12);
      }

      a1[1] = v12;
    }
  }

  else
  {
    v8 = a1[2];
    if (0xCCCCCCCCCCCCCCCDLL * ((v8 - v3) >> 3) < v7)
    {
      if (a2 <= 0x666666666666666)
      {
        v9 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - v4) >> 3);
        v10 = 0x999999999999999ALL * ((v8 - v4) >> 3);
        if (v10 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x333333333333333)
        {
          v11 = 0x666666666666666;
        }

        else
        {
          v11 = v10;
        }

        sub_240B837BC(v11);
      }

      sub_240B228BC();
    }

    v16 = v3 + 40 * v7;
    v17 = 40 * a2 - 8 * (v5 >> 3);
    do
    {
      *(v3 + 32) = 0;
      *v3 = 0uLL;
      *(v3 + 16) = 0uLL;
      v3 += 40;
      v17 -= 40;
    }

    while (v17);
    a1[1] = v16;
  }
}

uint64_t *sub_240B8B31C(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_240B8B3FC(void *a1)
{
  if (a1)
  {
    sub_240B8B3FC(*a1);
    sub_240B8B3FC(a1[1]);

    operator delete(a1);
  }
}

uint64_t *sub_240B8B448(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t *sub_240B8B5E4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (v3)
    {
      v3(a1[2], *(v2 - 16));
    }

    else
    {
      free(*(v2 - 16));
    }
  }

  return a1;
}

char *sub_240B8B638(char *result, char *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    v6 = result;
    if (a3 == 2)
    {
      if (*(a2 - 1) < *(result + 1))
      {
        v7 = *result;
        *result = *(a2 - 1);
        *(a2 - 1) = v7;
      }
    }

    else if (a3 > 128)
    {
      v20 = a4;
      v21 = a3 >> 1;
      v22 = &result[8 * (a3 >> 1)];
      v23 = a3 >> 1;
      if (a3 <= a5)
      {
        sub_240B8B848(result, v22, v23, a4);
        v24 = &v20[v21];
        result = sub_240B8B848(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), v24);
        v25 = &v20[a3];
        v26 = v24;
        while (v26 != v25)
        {
          v27 = *(v26 + 1) < *(v20 + 1);
          if (*(v26 + 1) >= *(v20 + 1))
          {
            v28 = v20;
          }

          else
          {
            v28 = v26;
          }

          v20 += *(v26 + 1) >= *(v20 + 1);
          v26 += v27;
          *v6 = *v28;
          v6 += 8;
          if (v20 == v24)
          {
            while (v26 != v25)
            {
              v30 = *v26++;
              *v6 = v30;
              v6 += 8;
            }

            return result;
          }
        }

        while (v20 != v24)
        {
          v29 = *v20++;
          *v6 = v29;
          v6 += 8;
        }
      }

      else
      {
        sub_240B8B638(result, v22, v23, a4, a5);
        sub_240B8B638(&v6[8 * (a3 >> 1)], a2, a3 - (a3 >> 1), v20, a5);

        return sub_240B8BA10(v6, &v6[8 * (a3 >> 1)], a2, a3 >> 1, a3 - (a3 >> 1), v20, a5);
      }
    }

    else if (result != a2)
    {
      v9 = result + 8;
      if (result + 8 != a2)
      {
        v10 = 0;
        v11 = result;
        do
        {
          v12 = *(v11 + 3);
          v13 = *(v11 + 1);
          v11 = v9;
          if (v12 < v13)
          {
            v14 = *v9;
            v15 = HIDWORD(*v11);
            v16 = v10;
            while (1)
            {
              *&result[v16 + 8] = *&result[v16];
              if (!v16)
              {
                break;
              }

              v17 = *&result[v16 - 4];
              v16 -= 8;
              if (v17 <= v15)
              {
                v18 = &result[v16 + 8];
                goto LABEL_16;
              }
            }

            v18 = result;
LABEL_16:
            *v18 = v14;
          }

          v9 = v11 + 8;
          v10 += 8;
        }

        while (v11 + 8 != a2);
      }
    }
  }

  return result;
}

uint64_t sub_240B8B848(uint64_t result, uint64_t a2, unint64_t a3, void *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = result;
    if (a3 == 1)
    {
LABEL_10:
      *v4 = *v6;
      return result;
    }

    if (a3 == 2)
    {
      v8 = *(a2 - 4);
      v9 = *(result + 4);
      v10 = v8 >= v9;
      if (v8 >= v9)
      {
        v11 = result;
      }

      else
      {
        v11 = (a2 - 8);
      }

      *a4 = *v11;
      v4 = a4 + 1;
      if (v10)
      {
        v6 = a2 - 8;
      }

      goto LABEL_10;
    }

    if (a3 > 8)
    {
      v19 = result + 8 * (a3 >> 1);
      sub_240B8B638(result, v19, a3 >> 1, a4, a3 >> 1);
      result = sub_240B8B638(v6 + 8 * (a3 >> 1), a2, a3 - (a3 >> 1), &v4[a3 >> 1], a3 - (a3 >> 1));
      v20 = v6 + 8 * (a3 >> 1);
      while (v20 != a2)
      {
        v21 = *(v20 + 4) >= *(v6 + 4);
        if (*(v20 + 4) >= *(v6 + 4))
        {
          v22 = v6;
        }

        else
        {
          v22 = v20;
        }

        v20 += 8 * (*(v20 + 4) < *(v6 + 4));
        v6 += 8 * v21;
        *v4++ = *v22;
        if (v6 == v19)
        {
          while (v20 != a2)
          {
            v24 = *v20;
            v20 += 8;
            *v4++ = v24;
          }

          return result;
        }
      }

      while (v6 != v19)
      {
        v23 = *v6;
        v6 += 8;
        *v4++ = v23;
      }
    }

    else if (result != a2)
    {
      v12 = result + 8;
      *a4 = *result;
      if (result + 8 != a2)
      {
        v13 = 0;
        v14 = a4;
        do
        {
          v15 = v6;
          v16 = v14;
          v6 = v12;
          v17 = ++v14;
          if (*(v15 + 12) < *(v16 + 1))
          {
            v16[1] = *v16;
            v17 = a4;
            if (v16 != a4)
            {
              v18 = v13;
              while (1)
              {
                v17 = (a4 + v18);
                if (*(v15 + 12) >= *(a4 + v18 - 4))
                {
                  break;
                }

                *v17 = *(v17 - 1);
                v18 -= 8;
                if (!v18)
                {
                  v17 = a4;
                  break;
                }
              }
            }
          }

          v12 = v6 + 8;
          *v17 = *v6;
          v13 += 8;
        }

        while (v6 + 8 != a2);
      }
    }
  }

  return result;
}

char *sub_240B8BA10(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (a5)
  {
    v8 = a5;
    v11 = result;
    while (v8 > a7 && a4 > a7)
    {
      if (!a4)
      {
        return result;
      }

      while (*(a2 + 1) >= *(v11 + 1))
      {
        v11 += 8;
        if (!--a4)
        {
          return result;
        }
      }

      if (a4 >= v8)
      {
        if (a4 == 1)
        {
          v71 = *v11;
          *v11 = *a2;
          *a2 = v71;
          return result;
        }

        v20 = a4 / 2;
        v15 = &v11[8 * (a4 / 2)];
        if (a3 == a2)
        {
          v13 = a2;
        }

        else
        {
          v21 = (a3 - a2) >> 3;
          v13 = a2;
          do
          {
            v22 = v21 >> 1;
            v23 = &v13[8 * (v21 >> 1)];
            v24 = *(v23 + 1);
            v25 = v23 + 8;
            v21 += ~(v21 >> 1);
            if (v24 < *(v15 + 1))
            {
              v13 = v25;
            }

            else
            {
              v21 = v22;
            }
          }

          while (v21);
        }

        v12 = (v13 - a2) >> 3;
      }

      else
      {
        v12 = v8 / 2;
        v13 = &a2[8 * (v8 / 2)];
        if (a2 == v11)
        {
          v15 = v11;
        }

        else
        {
          v14 = (a2 - v11) >> 3;
          v15 = v11;
          do
          {
            v16 = v14 >> 1;
            v17 = &v15[8 * (v14 >> 1)];
            v18 = *(v17 + 1);
            v19 = v17 + 8;
            v14 += ~(v14 >> 1);
            if (*(v13 + 1) < v18)
            {
              v14 = v16;
            }

            else
            {
              v15 = v19;
            }
          }

          while (v14);
        }

        v20 = (v15 - v11) >> 3;
      }

      v26 = v13;
      if (v15 != a2)
      {
        v26 = v15;
        if (a2 != v13)
        {
          v27 = v15 + 8;
          if (v15 + 8 == a2)
          {
            v72 = *v15;
            v74 = v20;
            v34 = v13 - a2;
            v76 = a6;
            v35 = a3;
            v36 = v12;
            memmove(v15, v15 + 8, v13 - a2);
            v12 = v36;
            v20 = v74;
            a6 = v76;
            a3 = v35;
            v26 = &v15[v34];
            *v26 = v72;
          }

          else
          {
            v28 = a2 + 8;
            if (a2 + 8 == v13)
            {
              v37 = *(v13 - 1);
              v26 = v15 + 8;
              if (v13 - 8 != v15)
              {
                v75 = v20;
                v77 = a6;
                v38 = a3;
                v39 = v12;
                v73 = *(v13 - 1);
                memmove(v15 + 8, v15, v13 - 8 - v15);
                v12 = v39;
                v37 = v73;
                v20 = v75;
                a3 = v38;
                a6 = v77;
              }

              *v15 = v37;
            }

            else
            {
              v29 = a2 - v15;
              v30 = (a2 - v15) >> 3;
              v31 = v13 - a2;
              if (v30 == (v13 - a2) >> 3)
              {
                do
                {
                  v32 = *(v27 - 1);
                  *(v27 - 1) = *(v28 - 1);
                  *(v28 - 1) = v32;
                  if (v27 == a2)
                  {
                    break;
                  }

                  v27 += 8;
                  v33 = v28 == v13;
                  v28 += 8;
                }

                while (!v33);
                v26 = a2;
              }

              else
              {
                v40 = v31 >> 3;
                v41 = (a2 - v15) >> 3;
                do
                {
                  v42 = v41;
                  v41 = v40;
                  v40 = v42 % v40;
                }

                while (v40);
                v43 = &v15[8 * v41];
                do
                {
                  v45 = *(v43 - 1);
                  v43 -= 8;
                  v44 = v45;
                  v46 = &v43[v29];
                  v47 = v43;
                  do
                  {
                    v48 = v47;
                    v47 = v46;
                    *v48 = *v46;
                    v49 = __OFSUB__(v30, (v13 - v46) >> 3);
                    v51 = v30 - ((v13 - v46) >> 3);
                    v50 = (v51 < 0) ^ v49;
                    v46 = &v15[8 * v51];
                    if (v50)
                    {
                      v46 = v47 + v29;
                    }
                  }

                  while (v46 != v43);
                  *v47 = v44;
                }

                while (v43 != v15);
                v26 = &v15[v31];
              }
            }
          }
        }
      }

      a4 -= v20;
      v8 -= v12;
      if (v20 + v12 >= a4 + v8)
      {
        v55 = a4;
        v56 = v12;
        v53 = a6;
        result = sub_240B8BA10(v26, v13, a3, v55, v8, a6, a7);
        v13 = v15;
        v8 = v56;
        a4 = v20;
        a3 = v26;
      }

      else
      {
        v52 = v11;
        v53 = a6;
        v54 = a3;
        result = sub_240B8BA10(v52, v15, v26, v20, v12, a6, a7);
        a3 = v54;
        v11 = v26;
      }

      a2 = v13;
      a6 = v53;
      if (!v8)
      {
        return result;
      }
    }

    if (a4 <= v8)
    {
      if (v11 != a2)
      {
        v66 = a6;
        v67 = v11;
        do
        {
          v68 = *v67;
          v67 += 8;
          *v66 = v68;
          v66 += 8;
        }

        while (v67 != a2);
        while (a2 != a3)
        {
          v69 = *(a2 + 1) < *(a6 + 1);
          if (*(a2 + 1) >= *(a6 + 1))
          {
            v70 = a6;
          }

          else
          {
            v70 = a2;
          }

          a6 += 8 * (*(a2 + 1) >= *(a6 + 1));
          a2 += 8 * v69;
          *v11 = *v70;
          v11 += 8;
          if (a6 == v66)
          {
            return result;
          }
        }

        return memmove(v11, a6, v66 - a6);
      }
    }

    else if (a2 != a3)
    {
      v57 = a6;
      v58 = a2;
      do
      {
        v59 = *v58;
        v58 += 8;
        *v57 = v59;
        v57 += 8;
      }

      while (v58 != a3);
      while (a2 != v11)
      {
        v60 = *(v57 - 1);
        v61 = *(a2 - 1);
        v62 = v60 >= v61;
        if (v60 >= v61)
        {
          v63 = v57;
        }

        else
        {
          v63 = a2;
        }

        if (v62)
        {
          v57 -= 8;
        }

        else
        {
          a2 -= 8;
        }

        *(a3 - 1) = *(v63 - 1);
        a3 -= 8;
        if (v57 == a6)
        {
          return result;
        }
      }

      if (v57 != a6)
      {
        v64 = -8;
        do
        {
          v65 = *(v57 - 1);
          v57 -= 8;
          *&a3[v64] = v65;
          v64 -= 8;
        }

        while (v57 != a6);
      }
    }
  }

  return result;
}

void sub_240B8BFD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  sub_240B8C428(&a17);
  v24 = *(v22 - 96);
  if (v24)
  {
    operator delete(v24);
  }

  a17 = v22 - 72;
  sub_240B31E8C(&a17);
  _Unwind_Resume(a1);
}

void sub_240B8C03C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_240B8C0B8(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_240B22DA4(v52, a3);
  v8 = a3 + 1;
  sub_240B22DA4(__p, a3 + 1);
  v9 = __p[0];
  v10 = v52[0];
  if (a3 == -1 || (bzero(__p[0], 4 * a3 + 4), a3))
  {
    v11 = 0;
    do
    {
      v12 = *(a1 + 4 * v11);
      v13 = 0;
      v14 = (v12 + 1);
      if (v12 != -1)
      {
        v15 = v12 + 1;
        do
        {
          v13 += v9[v15];
          v15 &= v15 - 1;
        }

        while (v15);
      }

      v10[v11] = v12 - v13;
      if (v8 > v14)
      {
        do
        {
          ++v9[v14];
          v14 = (v14 & -v14) + v14;
        }

        while (v8 > v14);
      }

      ++v11;
    }

    while (v11 != a3);
  }

  if (a3 >= a2)
  {
    v16 = a2;
  }

  else
  {
    v16 = a3;
  }

  v17 = a3;
  while (v17 > a2)
  {
    v18 = v17 - 1;
    if (*(v52[0] + --v17))
    {
      v16 = v18 + 1;
      break;
    }
  }

  v20 = __clz(a3);
  v21 = (((-1 << (v20 ^ 0x1F)) + a3) >> (v20 ^ 0x1F)) - v20 + 32;
  if (!a3)
  {
    v21 = 0;
  }

  if (v21 >= 7)
  {
    v22 = 7;
  }

  else
  {
    v22 = v21;
  }

  v23 = v16 - a2;
  v24 = *(a4 + 8);
  v25 = *(a4 + 16);
  if (v24 >= v25)
  {
    v27 = (v24 - *a4) >> 3;
    v28 = v27 + 1;
    if ((v27 + 1) >> 61)
    {
      sub_240B228BC();
    }

    v29 = v25 - *a4;
    if (v29 >> 2 > v28)
    {
      v28 = v29 >> 2;
    }

    if (v29 >= 0x7FFFFFFFFFFFFFF8)
    {
      v30 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v30 = v28;
    }

    if (v30)
    {
      sub_240B299F4(v30);
    }

    v31 = (8 * v27);
    *v31 = 2 * v22;
    v31[1] = v23;
    v26 = (8 * v27 + 8);
    v32 = *(a4 + 8) - *a4;
    v33 = (8 * v27 - v32);
    memcpy(v33, *a4, v32);
    v34 = *a4;
    *a4 = v33;
    *(a4 + 8) = v26;
    *(a4 + 16) = 0;
    if (v34)
    {
      operator delete(v34);
    }
  }

  else
  {
    *v24 = 2 * v22;
    v24[1] = v23;
    v26 = v24 + 2;
  }

  *(a4 + 8) = v26;
  if (v16 > a2)
  {
    v35 = 0;
    do
    {
      v36 = __clz(v35);
      v37 = (((-1 << (v36 ^ 0x1F)) + v35) >> (v36 ^ 0x1F)) - v36 + 32;
      if (v35)
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      if (v38 >= 7)
      {
        v39 = 7;
      }

      else
      {
        v39 = v38;
      }

      v40 = *(a4 + 16);
      if (v26 >= v40)
      {
        v42 = (v26 - *a4) >> 3;
        if ((v42 + 1) >> 61)
        {
          sub_240B228BC();
        }

        v43 = v40 - *a4;
        v44 = v43 >> 2;
        if (v43 >> 2 <= (v42 + 1))
        {
          v44 = v42 + 1;
        }

        if (v43 >= 0x7FFFFFFFFFFFFFF8)
        {
          v45 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v45 = v44;
        }

        if (v45)
        {
          sub_240B299F4(v45);
        }

        v46 = (8 * v42);
        v47 = *(v52[0] + a2);
        *v46 = 2 * v39;
        v46[1] = v47;
        v26 = (8 * v42 + 8);
        v48 = *(a4 + 8) - *a4;
        v49 = v46 - v48;
        memcpy(v46 - v48, *a4, v48);
        v50 = *a4;
        *a4 = v49;
        *(a4 + 8) = v26;
        *(a4 + 16) = 0;
        if (v50)
        {
          operator delete(v50);
        }
      }

      else
      {
        v41 = *(v52[0] + a2);
        *v26 = 2 * v39;
        v26[1] = v41;
        v26 += 2;
      }

      *(a4 + 8) = v26;
      v35 = *(v52[0] + a2++);
    }

    while (v16 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v52[0])
  {
    v52[1] = v52[0];
    operator delete(v52[0]);
  }
}

void sub_240B8C3EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240B8C428(uint64_t a1)
{
  v4 = (a1 + 104);
  sub_240B30C38(&v4);
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v4 = a1;
  sub_240B7BC3C(&v4);
  return a1;
}

void sub_240B8C480()
{
  atomic_fetch_add_explicit(&qword_27E5165E0, 1uLL, memory_order_relaxed);
  v0 = malloc_type_malloc(0x40100uLL, 0xF0EBF2FBuLL);
  if (v0)
  {
    v1 = v0 & 0xFFFFFFFFFFFFFF80;
    v2 = (v0 & 0xFFFFFFFFFFFFFF80) + 256;
    *(v1 + 240) = v0;
    *(v1 + 248) = 0x40000;
  }

  else
  {
    v2 = 0;
  }

  v3[4] = 0;
  v3[5] = 0;
  v3[3] = v2;
  sub_240B8C03C(v3);
}

void sub_240B8C860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  sub_240B8C428(&a20);
  v28 = *(v26 - 184);
  if (v28)
  {
    operator delete(v28);
  }

  if (v25)
  {
    *(v26 - 152) = v25;
    operator delete(v25);
  }

  a20 = v26 - 136;
  sub_240B31E8C(&a20);
  sub_240B786A0((v26 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_240B8C8F0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2852A1938;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_240B8CCE4(a1 + 24, *(a2 + 24), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v6 = *(a2 + 48);
  v5 = *(a2 + 56);
  if (v5 != v6)
  {
    sub_240B2287C(a1 + 48, (v5 - v6) >> 2);
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_240B8CCE4(a1 + 72, *(a2 + 72), *(a2 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 80) - *(a2 + 72)) >> 3));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v8 = *(a2 + 96);
  v7 = *(a2 + 104);
  if (v7 != v8)
  {
    sub_240B8D3FC(a1 + 96, 0xF0B7672A07A44C6BLL * ((v7 - v8) >> 2));
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v10 = *(a2 + 120);
  v9 = *(a2 + 128);
  if (v9 != v10)
  {
    sub_240B8D34C(a1 + 120, 0xF128CFC4A33F128DLL * ((v9 - v10) >> 4));
  }

  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v11 = *(a2 + 144);
  v12 = *(a2 + 152);
  if (v12 != v11)
  {
    sub_240B8D108(a1 + 144, 0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 4));
  }

  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v13 = *(a2 + 168);
  v14 = *(a2 + 176);
  if (v14 != v13)
  {
    sub_240B8CEEC(a1 + 168, 0xEEEEEEEEEEEEEEEFLL * ((v14 - v13) >> 3));
  }

  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  sub_240B28D90(a1 + 192, *(a2 + 192), *(a2 + 200), *(a2 + 200) - *(a2 + 192));
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  sub_240B8CCE4(a1 + 216, *(a2 + 216), *(a2 + 224), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 224) - *(a2 + 216)) >> 3));
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  sub_240B28D90(a1 + 240, *(a2 + 240), *(a2 + 248), *(a2 + 248) - *(a2 + 240));
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0;
  sub_240B28D90(a1 + 272, *(a2 + 272), *(a2 + 280), *(a2 + 280) - *(a2 + 272));
  return a1;
}

void sub_240B8CBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10, void **a11)
{
  v11[22] = v15;
  sub_240B8CD6C(&a11);
  a11 = v14;
  sub_240B8CDF0(&a11);
  v17 = *v13;
  if (*v13)
  {
    v11[16] = v17;
    operator delete(v17);
  }

  v18 = *v12;
  if (*v12)
  {
    v11[13] = v18;
    operator delete(v18);
  }

  sub_240B31E8C(&a11);
  v19 = *a9;
  if (*a9)
  {
    v11[7] = v19;
    operator delete(v19);
  }

  a11 = a10;
  sub_240B31E8C(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_240B8CCE4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_240B8D4AC(result, a4);
  }

  return result;
}

void sub_240B8CD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_240B31E8C(&a9);
  _Unwind_Resume(a1);
}

void sub_240B8CD6C(void ***a1)
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
        v4 -= 15;
        sub_240B8CE94(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_240B8CDF0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_240B8CE44(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_240B8CE44(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 48)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void sub_240B8CE94(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;

    operator delete(v3);
  }
}

void sub_240B8CEEC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    sub_240B8D0B0(a2);
  }

  sub_240B228BC();
}

void *sub_240B8CF3C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    v7 = (a4 + 96);
    do
    {
      v8 = v6[2];
      v9 = v6[3];
      v10 = *(v6 + 8);
      v12 = *v6;
      v11 = v6[1];
      *(v7 - 3) = 0;
      v13 = v7 - 3;
      *(v7 - 6) = v12;
      *(v7 - 4) = v10;
      *(v7 - 3) = v9;
      *(v7 - 4) = v8;
      *(v7 - 5) = v11;
      v13[1] = 0;
      v13[2] = 0;
      sub_240B86FB8((v7 - 3), *(v6 + 9), *(v6 + 10), (*(v6 + 10) - *(v6 + 9)) >> 2);
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      sub_240B8D034(v7, *(v6 + 12), *(v6 + 13), (*(v6 + 13) - *(v6 + 12)) >> 3);
      v6 = (v6 + 120);
      v7 += 15;
    }

    while (v6 != a3);
    return v7 - 12;
  }

  return v4;
}

void sub_240B8CFF8(_Unwind_Exception *exception_object)
{
  while (v2 != v1)
  {
    v2 -= 15;
    sub_240B8CE94(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240B8D034(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_240B3C80C(result, a4);
  }

  return result;
}

void sub_240B8D094(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B8D0B0(unint64_t a1)
{
  if (a1 < 0x222222222222223)
  {
    operator new();
  }

  sub_240B2291C();
}

void sub_240B8D108(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_240B8D2F4(a2);
  }

  sub_240B228BC();
}

uint64_t sub_240B8D158(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v6 = *v5;
      *(v4 + 16) = *(v5 + 2);
      *(v4 + 24) = 0;
      *v4 = v6;
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      v8 = *(v5 + 3);
      v7 = *(v5 + 4);
      if (v7 != v8)
      {
        sub_240B8D2B8(v4 + 24, (v7 - v8) >> 1);
      }

      v5 += 3;
      v4 += 48;
      v13 = v4;
    }

    while (v5 != a3);
  }

  v11 = 1;
  sub_240B8D258(v10);
  return v4;
}

void sub_240B8D234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 32) = v12;
    operator delete(v12);
  }

  sub_240B8D258(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_240B8D258(uint64_t a1)
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

      v3 -= 48;
    }
  }

  return a1;
}

void sub_240B8D2B8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_240B29578(a2);
  }

  sub_240B228BC();
}

void sub_240B8D2F4(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  sub_240B2291C();
}

void sub_240B8D34C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x3B5CC0ED7303B6)
  {
    sub_240B8D3A0(a2);
  }

  sub_240B228BC();
}

void sub_240B8D3A0(unint64_t a1)
{
  if (a1 < 0x3B5CC0ED7303B6)
  {
    operator new();
  }

  sub_240B2291C();
}

void sub_240B8D3FC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xF4898D5F85BB3ALL)
  {
    sub_240B8D450(a2);
  }

  sub_240B228BC();
}

void sub_240B8D450(unint64_t a1)
{
  if (a1 < 0xF4898D5F85BB3ALL)
  {
    operator new();
  }

  sub_240B2291C();
}

void sub_240B8D4AC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_240B32588(a2);
  }

  sub_240B228BC();
}

void *sub_240B8D4FC(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_240B28D90(v4, *v6, v6[1], v6[1] - *v6);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_240B8D5AC(v8);
  return v4;
}

uint64_t sub_240B8D5AC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v2 - 16) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

void sub_240B8D618(uint64_t a1)
{
  sub_240B8D650(a1);

  JUMPOUT(0x245CCE590);
}

uint64_t sub_240B8D650(uint64_t a1)
{
  *a1 = &unk_2852A1938;
  v2 = *(a1 + 272);
  if (v2)
  {
    *(a1 + 280) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 240);
  if (v3)
  {
    *(a1 + 248) = v3;
    operator delete(v3);
  }

  v9 = (a1 + 216);
  sub_240B31E8C(&v9);
  v4 = *(a1 + 192);
  if (v4)
  {
    *(a1 + 200) = v4;
    operator delete(v4);
  }

  v9 = (a1 + 168);
  sub_240B8CD6C(&v9);
  v9 = (a1 + 144);
  sub_240B8CDF0(&v9);
  v5 = *(a1 + 120);
  if (v5)
  {
    *(a1 + 128) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    *(a1 + 104) = v6;
    operator delete(v6);
  }

  v9 = (a1 + 72);
  sub_240B31E8C(&v9);
  v7 = *(a1 + 48);
  if (v7)
  {
    *(a1 + 56) = v7;
    operator delete(v7);
  }

  v9 = (a1 + 24);
  sub_240B31E8C(&v9);
  return a1;
}

unsigned __int8 **sub_240B8D74C(unsigned __int8 **result, uint64_t a2, unint64_t *a3)
{
  if (a2 != 1)
  {
    v4 = result;
    v5 = *result;
    v6 = result[1];
    if (*result == v6)
    {
      memset(v25, 0, 24);
    }

    else
    {
      v7 = v5 + 1;
      if (v5 + 1 != v6)
      {
        v8 = *v5;
        v9 = v5 + 1;
        do
        {
          v11 = *v9++;
          v10 = v11;
          v12 = v8 >= v11;
          if (v8 <= v11)
          {
            v8 = v10;
          }

          if (!v12)
          {
            v5 = v7;
          }

          v7 = v9;
        }

        while (v9 != v6);
      }

      v13 = *v5 + 1;
      sub_240B7D1B4(&__p, v13);
      v14 = 0;
      do
      {
        *(__p + v14) = v14;
        ++v14;
      }

      while (v13 != v14);
      sub_240B7D1B4(v25, v4[1] - *v4);
      v15 = *v4;
      if (v4[1] != *v4)
      {
        v16 = 0;
        do
        {
          v17 = v23 - __p;
          if (v23 == __p)
          {
            *(v25[0] + v16) = 0;
            v21 = __p;
            v20 = *__p;
          }

          else
          {
            v18 = 0;
            v19 = v15[v16];
            if (v17 <= 1)
            {
              v17 = 1;
            }

            while (*(__p + v18) != v19)
            {
              if (v17 == ++v18)
              {
                *(v25[0] + v16) = v17;
                v20 = *(__p + v17);
                goto LABEL_24;
              }
            }

            *(v25[0] + v16) = v18;
            v21 = __p;
            v20 = *(__p + v18);
            if (v18)
            {
              v17 = v18;
              do
              {
LABEL_24:
                *(__p + v17) = *(__p + v17 - 1);
                --v17;
              }

              while (v17);
              v21 = __p;
            }
          }

          *v21 = v20;
          ++v16;
          v15 = *v4;
        }

        while (v16 < v4[1] - *v4);
      }

      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }
    }

    sub_240B8C03C(v24);
  }

  *(a3[3] + (*a3 >> 3)) = (1 << (*a3 & 7)) | *(a3[3] + (*a3 >> 3));
  v3 = *a3 + 1;
  *a3 = v3;
  *(a3[3] + (v3 >> 3)) = *(a3[3] + (v3 >> 3));
  *a3 += 2;
  return result;
}

void sub_240B8DF80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  a14 = &a22;
  sub_240B7BC3C(&a14);
  a22 = v27 - 160;
  sub_240B31E8C(&a22);
  a22 = v27 - 136;
  sub_240B31E8C(&a22);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void sub_240B8E080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a2;
    v5[0] = sub_240B2AC64;
    v5[1] = a3;
    if (*a1)
    {
      (*a1)(*(a1 + 8), v5, sub_240B8E1E4, sub_240B8E11C, 0, a2);
    }

    else
    {
      for (i = 0; i != v3; ++i)
      {
        sub_240B8E11C(v5, i);
      }
    }
  }
}

float32x4_t sub_240B8E11C(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  v3 = *v2;
  if (**v2)
  {
    v4 = 0;
    v5 = (v3[3] + v3[2] * a2);
    v6 = (v3[8] + v3[7] * a2);
    v7 = (v3[13] + v3[12] * a2);
    v8 = v2[1];
    v9 = (*(v8 + 3) + *(v8 + 2) * a2);
    v10 = (*(v8 + 8) + *(v8 + 7) * a2);
    v11 = (*(v8 + 13) + *(v8 + 12) * a2);
    v12 = (*(v2[2] + 3) + *(v2[2] + 2) * a2);
    do
    {
      v13 = *v5++;
      v14 = v13;
      v15 = *v9++;
      v16 = vsubq_f32(v14, v15);
      v17 = *v6++;
      v18 = v17;
      v19 = *v10++;
      v20 = v19;
      v21 = *v7++;
      v22 = v21;
      v23 = vsubq_f32(v18, v20);
      v24 = *v11++;
      v25 = vsubq_f32(v22, v24);
      result = vaddq_f32(vmulq_f32(vmulq_f32(v16, v16), *v2[4]), vaddq_f32(vmulq_f32(vmulq_f32(v23, v23), *v2[5]), vmulq_f32(vmulq_f32(v25, v25), *v2[6])));
      *v12++ = result;
      v4 += 4;
    }

    while (v4 < **v2);
  }

  return result;
}

uint64_t sub_240B8E1E4(unsigned int (**a1)(uint64_t), uint64_t a2)
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

void *sub_240B8E20C(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    sub_240B3C80C(result, a3);
  }

  return result;
}

void sub_240B8E274(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_240B8E290(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_240B3C80C(result, (v2 - *a2) >> 3);
  }

  return result;
}

void sub_240B8E2F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240B8E314(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 88;
    v4 = *(v2 - 56);
    if (v4)
    {
      *(v2 - 48) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 88;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **sub_240B8E378(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 7);
        if (v5)
        {
          *(v3 - 6) = v5;
          operator delete(v5);
        }

        v3 -= 88;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_240B8E3E4(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  while (2)
  {
    v166 = (a2 - 176);
    v167 = (a2 - 88);
    v165 = (a2 - 264);
    v7 = a1;
    v173 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v7;
          v8 = a2 - v7;
          v9 = 0x2E8BA2E8BA2E8BA3 * ((a2 - v7) >> 3);
          v10 = v9 - 2;
          if (v9 > 2)
          {
            switch(v9)
            {
              case 3:

                sub_240B8F8C0(a1, (a1 + 88), v167);
                return;
              case 4:
                sub_240B8F8C0(a1, (a1 + 88), (a1 + 176));
                if (*(a2 - 12) > *(a1 + 252))
                {
                  v222 = *(a1 + 176);
                  v233 = *(a1 + 192);
                  v67 = *(a1 + 208);
                  v68 = *(a1 + 224);
                  *(a1 + 208) = 0;
                  *(a1 + 216) = 0;
                  *(a1 + 224) = 0;
                  v200 = *(a1 + 232);
                  v211 = *(a1 + 248);
                  v69 = v167[1];
                  *(a1 + 176) = *v167;
                  *(a1 + 192) = v69;
                  *(a1 + 208) = *(a2 - 56);
                  *(a1 + 224) = *(a2 - 40);
                  *(a2 - 48) = 0;
                  *(a2 - 40) = 0;
                  *(a2 - 56) = 0;
                  v70 = *(a2 - 32);
                  *(a1 + 248) = *(a2 - 16);
                  *(a1 + 232) = v70;
                  *v167 = v222;
                  v167[1] = v233;
                  v71 = *(a2 - 56);
                  if (v71)
                  {
                    *(a2 - 48) = v71;
                    v178 = v67;
                    operator delete(v71);
                    v67 = v178;
                  }

                  *(a2 - 56) = v67;
                  *(a2 - 40) = v68;
                  *(a2 - 32) = v200;
                  *(a2 - 16) = v211;
                  if (*(a1 + 252) > *(a1 + 164))
                  {
                    v223 = *(a1 + 88);
                    v234 = *(a1 + 104);
                    v72 = *(a1 + 136);
                    v201 = *(a1 + 144);
                    v212 = *(a1 + 160);
                    v73 = *(a1 + 192);
                    *(a1 + 88) = *(a1 + 176);
                    *(a1 + 104) = v73;
                    v74 = *(a1 + 208);
                    v75 = *(a1 + 216);
                    v76 = *(a1 + 224);
                    v77 = *(a1 + 248);
                    *(a1 + 144) = *(a1 + 232);
                    *(a1 + 160) = v77;
                    *(a1 + 176) = v223;
                    *(a1 + 192) = v234;
                    v78 = *(a1 + 120);
                    *(a1 + 120) = v74;
                    *(a1 + 128) = v75;
                    *(a1 + 136) = v76;
                    *(a1 + 208) = v78;
                    *(a1 + 224) = v72;
                    LODWORD(v78) = *(a1 + 164);
                    LODWORD(v77) = *(a1 + 76);
                    *(a1 + 248) = v212;
                    *(a1 + 232) = v201;
                    if (*&v78 > *&v77)
                    {
                      v224 = *a1;
                      v235 = *(a1 + 16);
                      v79 = *(a1 + 48);
                      v202 = *(a1 + 56);
                      v213 = *(a1 + 72);
                      v80 = *(a1 + 104);
                      *a1 = *(a1 + 88);
                      *(a1 + 16) = v80;
                      v81 = *(a1 + 144);
                      *(a1 + 72) = *(a1 + 160);
                      *(a1 + 56) = v81;
                      *(a1 + 104) = v235;
                      *(a1 + 88) = v224;
                      v82 = *(a1 + 32);
                      *(a1 + 32) = v74;
                      *(a1 + 40) = v75;
                      *(a1 + 48) = v76;
                      *(a1 + 120) = v82;
                      *(a1 + 136) = v79;
                      *(a1 + 144) = v202;
                      *(a1 + 160) = v213;
                    }
                  }
                }

                return;
              case 5:

                sub_240B8FBE0(a1, a1 + 88, a1 + 176, (a1 + 264), v167);
                return;
            }
          }

          else
          {
            if (v9 < 2)
            {
              return;
            }

            if (v9 == 2)
            {
              if (*(a2 - 12) > *(a1 + 76))
              {
                v221 = *a1;
                v232 = *(a1 + 16);
                v62 = *(a1 + 32);
                v63 = *(a1 + 48);
                *(a1 + 32) = 0;
                *(a1 + 40) = 0;
                *(a1 + 48) = 0;
                v199 = *(a1 + 56);
                v210 = *(a1 + 72);
                v64 = v167[1];
                *a1 = *v167;
                *(a1 + 16) = v64;
                *(a1 + 32) = *(a2 - 56);
                *(a1 + 48) = *(a2 - 40);
                *(a2 - 48) = 0;
                *(a2 - 40) = 0;
                *(a2 - 56) = 0;
                v65 = *(a2 - 32);
                *(a1 + 72) = *(a2 - 16);
                *(a1 + 56) = v65;
                *v167 = v221;
                v167[1] = v232;
                v66 = *(a2 - 56);
                if (v66)
                {
                  *(a2 - 48) = v66;
                  v177 = v62;
                  operator delete(v66);
                  v62 = v177;
                }

                *(a2 - 56) = v62;
                *(a2 - 40) = v63;
                *(a2 - 32) = v199;
                *(a2 - 16) = v210;
              }

              return;
            }
          }

          if (v8 <= 2111)
          {
            v83 = (a1 + 88);
            v85 = a1 == a2 || v83 == a2;
            if (a4)
            {
              if (!v85)
              {
                v86 = 0;
                v87 = a1;
                do
                {
                  v88 = v83;
                  v89 = *(v87 + 164);
                  if (v89 > *(v87 + 76))
                  {
                    v225 = *v83;
                    v236 = v83[1];
                    v90 = *(v87 + 120);
                    v91 = *(v87 + 144);
                    v179 = *(v87 + 128);
                    *(v87 + 120) = 0;
                    *(v87 + 128) = 0;
                    *(v87 + 136) = 0;
                    v203 = v91;
                    v214 = *(v87 + 160);
                    v92 = v86;
                    v93 = *(v87 + 168);
                    while (1)
                    {
                      v94 = a1 + v92;
                      v95 = *(a1 + v92 + 16);
                      *(v94 + 88) = *(a1 + v92);
                      *(v94 + 104) = v95;
                      v96 = *(a1 + v92 + 120);
                      if (v96)
                      {
                        *(v94 + 128) = v96;
                        operator delete(v96);
                        *(v94 + 128) = 0;
                        *(v94 + 136) = 0;
                      }

                      *(v94 + 120) = *(v94 + 32);
                      *(v94 + 136) = *(v94 + 48);
                      *(v94 + 40) = 0;
                      *(v94 + 48) = 0;
                      *(v94 + 32) = 0;
                      v97 = *(v94 + 72);
                      *(v94 + 144) = *(v94 + 56);
                      *(v94 + 160) = v97;
                      if (!v92)
                      {
                        break;
                      }

                      v98 = (a1 + v92);
                      v99 = *(a1 + v92 - 12);
                      v92 -= 88;
                      if (v89 <= v99)
                      {
                        v100 = a1 + v92 + 88;
                        v101 = v98 + 7;
                        goto LABEL_105;
                      }
                    }

                    v98 = a1;
                    v101 = (a1 + 56);
                    v100 = a1;
LABEL_105:
                    *v100 = v225;
                    *(v100 + 16) = v236;
                    v102 = v98[4];
                    if (v102)
                    {
                      *(v100 + 40) = v102;
                      operator delete(v102);
                      v98[5] = 0;
                      v98[6] = 0;
                    }

                    v98[4] = v90;
                    *(v100 + 40) = v179;
                    *(v101 + 4) = v214;
                    *v101 = v203;
                    *(v100 + 76) = v89;
                    *(v100 + 80) = v93;
                    a2 = v173;
                  }

                  v83 = (v88 + 88);
                  v86 += 88;
                  v87 = v88;
                }

                while ((v88 + 88) != a2);
              }
            }

            else if (!v85)
            {
              do
              {
                v153 = v83;
                v154 = *(a1 + 164);
                if (v154 > *(a1 + 76))
                {
                  v228 = *v83;
                  v239 = v83[1];
                  v183 = *(a1 + 120);
                  v155 = *(a1 + 136);
                  *(a1 + 120) = 0;
                  *(a1 + 128) = 0;
                  *(a1 + 136) = 0;
                  v206 = *(a1 + 144);
                  v217 = *(a1 + 160);
                  v156 = v83;
                  v157 = *(a1 + 168);
                  do
                  {
                    v158 = v156;
                    v159 = *(v156 - 72);
                    *v156 = *(v156 - 88);
                    v156[1] = v159;
                    v160 = *(v156 + 4);
                    if (v160)
                    {
                      *(v156 + 5) = v160;
                      operator delete(v160);
                      *(v156 + 5) = 0;
                      *(v156 + 6) = 0;
                    }

                    v156[2] = *(v156 - 56);
                    *(v156 + 6) = *(v156 - 5);
                    *(v156 - 6) = 0;
                    *(v156 - 5) = 0;
                    *(v156 - 7) = 0;
                    v161 = *(v156 - 1);
                    *(v156 + 56) = *(v156 - 2);
                    v156 = (v156 - 88);
                    v162 = *(v158 - 25);
                    *(v158 + 72) = v161;
                  }

                  while (v154 > v162);
                  *v156 = v228;
                  *(v158 - 72) = v239;
                  v163 = *(v158 - 7);
                  if (v163)
                  {
                    *(v158 - 6) = v163;
                    operator delete(v163);
                  }

                  v164 = v158 - 2;
                  *(v158 - 56) = v183;
                  *(v158 - 5) = v155;
                  *(v164 + 4) = v217;
                  *v164 = v206;
                  *(v158 - 3) = v154;
                  *(v158 - 1) = v157;
                  a2 = v173;
                }

                v83 = (v153 + 88);
                a1 = v153;
              }

              while ((v153 + 88) != a2);
            }

            return;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v103 = v10 >> 1;
              v104 = v10 >> 1;
              do
              {
                v105 = v104;
                if (v103 >= v104)
                {
                  v106 = (2 * v104) | 1;
                  v107 = a1 + 88 * v106;
                  if (2 * v105 + 2 < v9 && *(v107 + 76) > *(v107 + 164))
                  {
                    v107 += 88;
                    v106 = 2 * v105 + 2;
                  }

                  v108 = a1 + 88 * v105;
                  v109 = *(v108 + 76);
                  if (*(v107 + 76) <= v109)
                  {
                    v226 = *v108;
                    v237 = *(v108 + 16);
                    v180 = *(v108 + 32);
                    v110 = *(v108 + 48);
                    *(v108 + 40) = 0;
                    *(v108 + 48) = 0;
                    *(v108 + 32) = 0;
                    v215 = *(v108 + 72);
                    v204 = *(v108 + 56);
                    v169 = *(v108 + 80);
                    v172 = v110;
                    do
                    {
                      v111 = v108;
                      v108 = v107;
                      v112 = *(v107 + 16);
                      *v111 = *v107;
                      *(v111 + 16) = v112;
                      v113 = *(v111 + 32);
                      if (v113)
                      {
                        *(v111 + 40) = v113;
                        operator delete(v113);
                        *(v111 + 32) = 0;
                        *(v111 + 40) = 0;
                        *(v111 + 48) = 0;
                      }

                      *(v111 + 32) = *(v108 + 32);
                      *(v111 + 48) = *(v108 + 48);
                      *(v108 + 32) = 0;
                      *(v108 + 40) = 0;
                      *(v108 + 48) = 0;
                      v114 = *(v108 + 56);
                      *(v111 + 72) = *(v108 + 72);
                      *(v111 + 56) = v114;
                      if (v103 < v106)
                      {
                        break;
                      }

                      v115 = 2 * v106;
                      v106 = (2 * v106) | 1;
                      v107 = a1 + 88 * v106;
                      v116 = v115 + 2;
                      if (v116 < v9 && *(v107 + 76) > *(v107 + 164))
                      {
                        v107 += 88;
                        v106 = v116;
                      }
                    }

                    while (*(v107 + 76) <= v109);
                    *v108 = v226;
                    *(v108 + 16) = v237;
                    v117 = *(v108 + 32);
                    if (v117)
                    {
                      *(v108 + 40) = v117;
                      operator delete(v117);
                    }

                    *(v108 + 32) = v180;
                    *(v108 + 48) = v172;
                    *(v108 + 56) = v204;
                    *(v108 + 72) = v215;
                    *(v108 + 76) = v109;
                    *(v108 + 80) = v169;
                  }
                }

                v104 = v105 - 1;
              }

              while (v105);
              v118 = 0x2E8BA2E8BA2E8BA3 * (v8 >> 3);
              v119 = v173;
              do
              {
                v120 = 0;
                v121 = v119;
                v205 = *a1;
                v216 = *(a1 + 16);
                v122 = *(a1 + 40);
                v174 = *(a1 + 48);
                v181 = *(a1 + 32);
                *(a1 + 40) = 0;
                *(a1 + 48) = 0;
                *(a1 + 32) = 0;
                v123 = *(a1 + 56);
                v124 = a1;
                v192 = v123;
                v195 = *(a1 + 72);
                do
                {
                  v125 = v124 + 88 * v120;
                  v126 = v125 + 88;
                  if (2 * v120 + 2 >= v118)
                  {
                    v120 = (2 * v120) | 1;
                  }

                  else
                  {
                    v127 = *(v125 + 164);
                    v128 = *(v125 + 252);
                    v129 = v125 + 176;
                    if (v127 <= v128)
                    {
                      v120 = (2 * v120) | 1;
                    }

                    else
                    {
                      v126 = v129;
                      v120 = 2 * v120 + 2;
                    }
                  }

                  v130 = *(v126 + 16);
                  *v124 = *v126;
                  *(v124 + 16) = v130;
                  v131 = *(v124 + 32);
                  if (v131)
                  {
                    *(v124 + 40) = v131;
                    operator delete(v131);
                    *(v124 + 32) = 0;
                    *(v124 + 40) = 0;
                    *(v124 + 48) = 0;
                  }

                  v132 = (v126 + 32);
                  *(v124 + 32) = *(v126 + 32);
                  *(v124 + 48) = *(v126 + 48);
                  *(v126 + 32) = 0;
                  *(v126 + 40) = 0;
                  *(v126 + 48) = 0;
                  v133 = *(v126 + 56);
                  *(v124 + 72) = *(v126 + 72);
                  *(v124 + 56) = v133;
                  v124 = v126;
                }

                while (v120 <= ((v118 - 2) >> 1));
                v119 = (v119 - 88);
                if (v126 == (v121 - 88))
                {
                  *v126 = v205;
                  *(v126 + 16) = v216;
                  v151 = *(v126 + 32);
                  if (v151)
                  {
                    *(v126 + 40) = v151;
                    operator delete(v151);
                  }

                  *(v126 + 32) = v181;
                  *(v126 + 40) = v122;
                  *(v126 + 48) = v174;
                  *(v126 + 56) = v192;
                  *(v126 + 72) = v195;
                }

                else
                {
                  v134 = *(v121 - 72);
                  *v126 = *v119;
                  *(v126 + 16) = v134;
                  v135 = *(v126 + 32);
                  if (v135)
                  {
                    *(v126 + 40) = v135;
                    operator delete(v135);
                    *v132 = 0;
                    *(v126 + 40) = 0;
                    *(v126 + 48) = 0;
                  }

                  *(v126 + 32) = *(v121 - 56);
                  *(v126 + 48) = *(v121 - 5);
                  *(v121 - 6) = 0;
                  *(v121 - 5) = 0;
                  *(v121 - 7) = 0;
                  v136 = *(v121 - 2);
                  *(v126 + 72) = *(v121 - 1);
                  *(v126 + 56) = v136;
                  *v119 = v205;
                  *(v121 - 72) = v216;
                  v137 = *(v121 - 7);
                  if (v137)
                  {
                    *(v121 - 6) = v137;
                    operator delete(v137);
                  }

                  v138 = v121 - 2;
                  *(v121 - 7) = v181;
                  *(v121 - 6) = v122;
                  *(v121 - 5) = v174;
                  *v138 = v192;
                  v138[1] = v195;
                  v139 = v126 + 88 - a1;
                  if (v139 >= 89)
                  {
                    v140 = (0x2E8BA2E8BA2E8BA3 * (v139 >> 3) - 2) >> 1;
                    v141 = a1 + 88 * v140;
                    v142 = *(v126 + 76);
                    if (*(v141 + 76) > v142)
                    {
                      v227 = *v126;
                      v238 = *(v126 + 16);
                      v143 = *(v126 + 32);
                      v144 = *(v126 + 48);
                      *(v126 + 40) = 0;
                      *(v126 + 48) = 0;
                      *v132 = 0;
                      v182 = v143;
                      v186 = *(v126 + 56);
                      v189 = *(v126 + 72);
                      v145 = *(v126 + 80);
                      do
                      {
                        v146 = v141;
                        v147 = *(v141 + 16);
                        *v126 = *v141;
                        *(v126 + 16) = v147;
                        v148 = *(v126 + 32);
                        if (v148)
                        {
                          *(v126 + 40) = v148;
                          operator delete(v148);
                          *(v126 + 32) = 0;
                          *(v126 + 40) = 0;
                          *(v126 + 48) = 0;
                        }

                        *(v126 + 32) = *(v146 + 32);
                        *(v126 + 48) = *(v146 + 48);
                        *(v146 + 32) = 0;
                        *(v146 + 40) = 0;
                        *(v146 + 48) = 0;
                        v149 = *(v146 + 56);
                        *(v126 + 72) = *(v146 + 72);
                        *(v126 + 56) = v149;
                        if (!v140)
                        {
                          break;
                        }

                        v140 = (v140 - 1) >> 1;
                        v141 = a1 + 88 * v140;
                        v126 = v146;
                      }

                      while (*(v141 + 76) > v142);
                      *v146 = v227;
                      *(v146 + 16) = v238;
                      v150 = *(v146 + 32);
                      if (v150)
                      {
                        *(v146 + 40) = v150;
                        operator delete(v150);
                      }

                      *(v146 + 32) = v182;
                      *(v146 + 48) = v144;
                      *(v146 + 56) = v186;
                      *(v146 + 72) = v189;
                      *(v146 + 76) = v142;
                      *(v146 + 80) = v145;
                      v119 = (v121 - 88);
                    }
                  }
                }
              }

              while (v118-- > 2);
            }

            return;
          }

          v11 = v9 >> 1;
          v12 = a1 + 88 * (v9 >> 1);
          if (v8 < 0x2C01)
          {
            sub_240B8F8C0(v12, a1, v167);
          }

          else
          {
            sub_240B8F8C0(a1, v12, v167);
            v13 = 88 * v11;
            sub_240B8F8C0((a1 + 88), (v13 + a1 - 88), v166);
            sub_240B8F8C0((a1 + 176), (a1 + 88 + v13), v165);
            sub_240B8F8C0((v13 + a1 - 88), v12, (a1 + 88 + v13));
            v218 = *a1;
            v229 = *(a1 + 16);
            v14 = *(a1 + 48);
            v15 = *(a1 + 32);
            *(a1 + 40) = 0;
            *(a1 + 48) = 0;
            *(a1 + 32) = 0;
            v196 = *(a1 + 56);
            v207 = *(a1 + 72);
            v16 = *(v12 + 16);
            *a1 = *v12;
            *(a1 + 16) = v16;
            *(a1 + 32) = *(v12 + 32);
            *(a1 + 48) = *(v12 + 48);
            *(v12 + 32) = 0;
            *(v12 + 40) = 0;
            *(v12 + 48) = 0;
            v17 = *(v12 + 56);
            *(a1 + 72) = *(v12 + 72);
            *(a1 + 56) = v17;
            *v12 = v218;
            *(v12 + 16) = v229;
            *(v12 + 32) = v15;
            *(v12 + 48) = v14;
            *(v12 + 72) = v207;
            *(v12 + 56) = v196;
          }

          --a3;
          if (a4)
          {
            break;
          }

          v18 = *(a1 + 76);
          if (*(a1 - 12) > v18)
          {
            goto LABEL_17;
          }

          v191 = *a1;
          v194 = *(a1 + 16);
          v171 = *(a1 + 32);
          v42 = *(a1 + 48);
          *(a1 + 40) = 0;
          *(a1 + 48) = 0;
          *(a1 + 32) = 0;
          v185 = *(a1 + 56);
          v188 = *(a1 + 72);
          if (v18 <= *(a2 - 12))
          {
            v45 = a1 + 88;
            do
            {
              v7 = v45;
              if (v45 >= a2)
              {
                break;
              }

              v46 = *(v45 + 76);
              v45 += 88;
            }

            while (v18 <= v46);
          }

          else
          {
            v43 = a1;
            do
            {
              v7 = v43 + 88;
              v44 = *(v43 + 164);
              v43 += 88;
            }

            while (v18 <= v44);
          }

          if (v7 < a2)
          {
            v47 = v173;
            do
            {
              a2 = v47 - 88;
              v48 = *(v47 - 12);
              v47 -= 88;
            }

            while (v18 > v48);
          }

          v49 = *(a1 + 80);
          while (v7 < a2)
          {
            v220 = *v7;
            v231 = *(v7 + 16);
            v50 = *(v7 + 32);
            v51 = *(v7 + 48);
            *(v7 + 32) = 0;
            *(v7 + 40) = 0;
            *(v7 + 48) = 0;
            v198 = *(v7 + 56);
            v209 = *(v7 + 72);
            v52 = *(a2 + 16);
            *v7 = *a2;
            *(v7 + 16) = v52;
            *(v7 + 32) = *(a2 + 32);
            *(v7 + 48) = *(a2 + 48);
            *(a2 + 32) = 0;
            *(a2 + 40) = 0;
            *(a2 + 48) = 0;
            v53 = *(a2 + 56);
            *(v7 + 72) = *(a2 + 72);
            *(v7 + 56) = v53;
            *a2 = v220;
            *(a2 + 16) = v231;
            v54 = *(a2 + 32);
            if (v54)
            {
              *(a2 + 40) = v54;
              v176 = v50;
              operator delete(v54);
              v50 = v176;
            }

            *(a2 + 32) = v50;
            *(a2 + 48) = v51;
            *(a2 + 56) = v198;
            *(a2 + 72) = v209;
            do
            {
              v55 = *(v7 + 164);
              v7 += 88;
            }

            while (v18 <= v55);
            do
            {
              v56 = *(a2 - 12);
              a2 -= 88;
            }

            while (v18 > v56);
          }

          v57 = (v7 - 88);
          a2 = v173;
          if (v7 - 88 != a1)
          {
            v58 = *(v7 - 72);
            *a1 = *v57;
            *(a1 + 16) = v58;
            v59 = *(a1 + 32);
            if (v59)
            {
              *(a1 + 40) = v59;
              operator delete(v59);
              *(a1 + 32) = 0;
              *(a1 + 40) = 0;
              *(a1 + 48) = 0;
            }

            *(a1 + 32) = *(v7 - 56);
            *(a1 + 48) = *(v7 - 40);
            *(v7 - 56) = 0;
            *(v7 - 48) = 0;
            *(v7 - 40) = 0;
            v60 = *(v7 - 32);
            *(a1 + 72) = *(v7 - 16);
            *(a1 + 56) = v60;
          }

          *v57 = v191;
          *(v7 - 72) = v194;
          v61 = *(v7 - 56);
          if (v61)
          {
            *(v7 - 48) = v61;
            operator delete(v61);
          }

          a4 = 0;
          *(v7 - 56) = v171;
          *(v7 - 40) = v42;
          *(v7 - 16) = v188;
          *(v7 - 32) = v185;
          *(v7 - 12) = v18;
          *(v7 - 8) = v49;
        }

        v18 = *(a1 + 76);
LABEL_17:
        v190 = *a1;
        v193 = *(a1 + 16);
        v170 = *(a1 + 32);
        v19 = *(a1 + 48);
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
        v184 = *(a1 + 56);
        v187 = *(a1 + 72);
        v20 = a1;
        v21 = *(a1 + 80);
        do
        {
          v22 = v20;
          v20 += 88;
        }

        while (*(v22 + 164) > v18);
        v23 = v173;
        if (v22 == a1)
        {
          v26 = v173;
          while (v20 < v26)
          {
            v24 = v26 - 88;
            v27 = *(v26 - 12);
            v26 -= 88;
            if (v27 > v18)
            {
              goto LABEL_27;
            }
          }

          v24 = v26;
        }

        else
        {
          do
          {
            v24 = v23 - 88;
            v25 = *(v23 - 12);
            v23 -= 88;
          }

          while (v25 <= v18);
        }

LABEL_27:
        v7 = v20;
        if (v20 < v24)
        {
          v28 = v24;
          do
          {
            v219 = *v7;
            v230 = *(v7 + 16);
            v29 = *(v7 + 32);
            v30 = *(v7 + 48);
            *(v7 + 32) = 0;
            *(v7 + 40) = 0;
            *(v7 + 48) = 0;
            v197 = *(v7 + 56);
            v208 = *(v7 + 72);
            v31 = *(v28 + 16);
            *v7 = *v28;
            *(v7 + 16) = v31;
            *(v7 + 32) = *(v28 + 32);
            *(v7 + 48) = *(v28 + 48);
            *(v28 + 32) = 0;
            *(v28 + 40) = 0;
            *(v28 + 48) = 0;
            v32 = *(v28 + 56);
            *(v7 + 72) = *(v28 + 72);
            *(v7 + 56) = v32;
            *v28 = v219;
            *(v28 + 16) = v230;
            v33 = *(v28 + 32);
            if (v33)
            {
              *(v28 + 40) = v33;
              v175 = v29;
              operator delete(v33);
              v29 = v175;
            }

            *(v28 + 32) = v29;
            *(v28 + 48) = v30;
            *(v28 + 56) = v197;
            *(v28 + 72) = v208;
            do
            {
              v34 = *(v7 + 164);
              v7 += 88;
            }

            while (v34 > v18);
            do
            {
              v35 = *(v28 - 12);
              v28 -= 88;
            }

            while (v35 <= v18);
          }

          while (v7 < v28);
        }

        v36 = (v7 - 88);
        if (v7 - 88 != a1)
        {
          v37 = *(v7 - 72);
          *a1 = *v36;
          *(a1 + 16) = v37;
          v38 = *(a1 + 32);
          if (v38)
          {
            *(a1 + 40) = v38;
            operator delete(v38);
            *(a1 + 32) = 0;
            *(a1 + 40) = 0;
            *(a1 + 48) = 0;
          }

          *(a1 + 32) = *(v7 - 56);
          *(a1 + 48) = *(v7 - 40);
          *(v7 - 56) = 0;
          *(v7 - 48) = 0;
          *(v7 - 40) = 0;
          v39 = *(v7 - 32);
          *(a1 + 72) = *(v7 - 16);
          *(a1 + 56) = v39;
        }

        *v36 = v190;
        *(v7 - 72) = v193;
        v40 = *(v7 - 56);
        if (v40)
        {
          *(v7 - 48) = v40;
          operator delete(v40);
        }

        *(v7 - 56) = v170;
        *(v7 - 40) = v19;
        *(v7 - 16) = v187;
        *(v7 - 32) = v184;
        *(v7 - 12) = v18;
        *(v7 - 8) = v21;
        a2 = v173;
        if (v20 >= v24)
        {
          break;
        }

LABEL_44:
        sub_240B8E3E4(a1, v7 - 88, a3, a4 & 1);
        a4 = 0;
      }

      v41 = sub_240B90070(a1, v7 - 88);
      if (sub_240B90070(v7, v173))
      {
        break;
      }

      if (!v41)
      {
        goto LABEL_44;
      }
    }

    a2 = v7 - 88;
    if (!v41)
    {
      continue;
    }

    break;
  }
}

_OWORD *sub_240B8F33C(_OWORD *a1)
{
  v2 = 0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  do
  {
    v3 = a1 + v2;
    v4 = *(a1 + v2 + 16);
    v5 = *(a1 + v2 + 24);
    v6 = v5 - v4;
    if ((v5 - v4) > 0x3FF)
    {
      if (v6 == 1024)
      {
        goto LABEL_9;
      }

      v8 = v4 + 1024;
    }

    else
    {
      v7 = *(v3 + 4);
      if (v7 - v5 < (1024 - v6))
      {
        operator new();
      }

      bzero(*(a1 + v2 + 24), 1024 - v6);
      v8 = v5 + 1024 - v6;
    }

    *(v3 + 3) = v8;
LABEL_9:
    sub_240B245C8((a1 + v2 + 88), 0x400uLL);
    v2 += 24;
  }

  while (v2 != 72);
  return a1;
}

void sub_240B8F494(_Unwind_Exception *exception_object)
{
  v3 = (v1 + 144);
  v4 = -72;
  while (1)
  {
    v5 = *(v3 - 1);
    if (v5)
    {
      *v3 = v5;
      operator delete(v5);
    }

    v3 -= 3;
    v4 += 24;
    if (!v4)
    {
      v6 = (v1 + 72);
      v7 = -72;
      while (1)
      {
        v8 = *(v6 - 1);
        if (v8)
        {
          *v6 = v8;
          operator delete(v8);
        }

        v6 -= 3;
        v7 += 24;
        if (!v7)
        {
          _Unwind_Resume(exception_object);
        }
      }
    }
  }
}

uint64_t sub_240B8F4E8(uint64_t a1)
{
  v1 = 0xD37A6F4DE9BD37A7 * ((*(a1 + 8) - *a1) >> 3);
  v2 = v1 + 1;
  if (v1 + 1 > 0x1642C8590B21642)
  {
    sub_240B228BC();
  }

  if (0xA6F4DE9BD37A6F4ELL * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0xA6F4DE9BD37A6F4ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xD37A6F4DE9BD37A7 * ((*(a1 + 16) - *a1) >> 3) >= 0xB21642C8590B21)
  {
    v4 = 0x1642C8590B21642;
  }

  else
  {
    v4 = v2;
  }

  v15 = a1;
  if (v4)
  {
    sub_240B8F724(v4);
  }

  v12 = 0;
  v13 = 184 * v1;
  v14 = 184 * v1;
  v5 = sub_240B8F33C((184 * v1));
  v5[20] = 0;
  v5[21] = 0;
  v5[22] = 0;
  *&v14 = v14 + 184;
  v6 = *(a1 + 8);
  v7 = v13 + *a1 - v6;
  sub_240B8F780(a1, *a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = *(a1 + 16);
  v11 = v14;
  *(a1 + 8) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  sub_240B8F870(&v12);
  return v11;
}

void sub_240B8F614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_240B8F870(va);
  _Unwind_Resume(a1);
}

void sub_240B8F628(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; sub_240B8F6A4(i))
    {
      i -= 23;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void sub_240B8F6A4(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    a1[21] = v2;
    operator delete(v2);
  }

  v3 = a1 + 18;
  v4 = -72;
  do
  {
    v5 = *(v3 - 1);
    if (v5)
    {
      *v3 = v5;
      operator delete(v5);
    }

    v3 -= 3;
    v4 += 24;
  }

  while (v4);
  v6 = a1 + 9;
  v7 = -72;
  do
  {
    v8 = *(v6 - 1);
    if (v8)
    {
      *v6 = v8;
      operator delete(v8);
    }

    v6 -= 3;
    v7 += 24;
  }

  while (v7);
}

void sub_240B8F724(unint64_t a1)
{
  if (a1 < 0x1642C8590B21643)
  {
    operator new();
  }

  sub_240B2291C();
}

void sub_240B8F780(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = 0;
      *a4 = *v6;
      do
      {
        v8 = (a4 + v7 * 8);
        v9 = &v6[v7];
        v8[2] = 0;
        v8[3] = 0;
        v8[4] = 0;
        *(v8 + 1) = *&v6[v7 + 2];
        v8[4] = v6[v7 + 4];
        v9[2] = 0;
        v9[3] = 0;
        v9[4] = 0;
        v7 += 3;
      }

      while (v7 != 9);
      for (i = 0; i != 9; i += 3)
      {
        v11 = (a4 + i * 8);
        v12 = &v6[i];
        v11[11] = 0;
        v11[12] = 0;
        v11[13] = 0;
        *(v11 + 11) = *&v6[i + 11];
        v11[13] = v6[i + 13];
        v12[11] = 0;
        v12[12] = 0;
        v12[13] = 0;
      }

      *(a4 + 160) = 0;
      *(a4 + 168) = 0;
      *(a4 + 176) = 0;
      *(a4 + 160) = *(v6 + 10);
      *(a4 + 176) = v6[22];
      v6[20] = 0;
      v6[21] = 0;
      v6[22] = 0;
      v6 += 23;
      a4 += 184;
    }

    while (v6 != a3);
    do
    {
      sub_240B8F6A4(v5);
      v5 += 23;
    }

    while (v5 != a3);
  }
}

uint64_t sub_240B8F870(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 184;
    sub_240B8F6A4((v3 - 184));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_240B8F8C0(__int128 *a1, __int128 *a2, __int128 *a3)
{
  result.n128_u32[0] = *(a2 + 19);
  v7 = *(a3 + 19);
  if (result.n128_f32[0] <= *(a1 + 19))
  {
    if (v7 > result.n128_f32[0])
    {
      v45 = *a2;
      v50 = a2[1];
      v13 = a2 + 2;
      v14 = a2[2];
      v15 = *(a2 + 6);
      *(a2 + 4) = 0;
      *(a2 + 5) = 0;
      *(a2 + 6) = 0;
      v37 = *(a2 + 56);
      v41 = *(a2 + 72);
      v16 = a3[1];
      *a2 = *a3;
      a2[1] = v16;
      a2[2] = a3[2];
      *(a2 + 6) = *(a3 + 6);
      *(a3 + 4) = 0;
      *(a3 + 5) = 0;
      *(a3 + 6) = 0;
      v17 = *(a3 + 72);
      *(a2 + 56) = *(a3 + 56);
      *(a2 + 72) = v17;
      *a3 = v45;
      a3[1] = v50;
      v18 = *(a3 + 4);
      if (v18)
      {
        *(a3 + 5) = v18;
        v34 = v14;
        operator delete(v18);
        v14 = v34;
      }

      a3[2] = v14;
      *(a3 + 6) = v15;
      result = v37;
      *(a3 + 56) = v37;
      *(a3 + 72) = v41;
      result.n128_u32[0] = *(a2 + 19);
      if (result.n128_f32[0] > *(a1 + 19))
      {
        v46 = *a1;
        v51 = a1[1];
        v19 = a1[2];
        v20 = *(a1 + 6);
        *(a1 + 4) = 0;
        *(a1 + 5) = 0;
        *(a1 + 6) = 0;
        v38 = *(a1 + 56);
        v42 = *(a1 + 72);
        v21 = a2[1];
        *a1 = *a2;
        a1[1] = v21;
        a1[2] = a2[2];
        *(a1 + 6) = *(a2 + 6);
        *v13 = 0;
        *(a2 + 5) = 0;
        *(a2 + 6) = 0;
        v22 = *(a2 + 72);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 72) = v22;
        *a2 = v46;
        a2[1] = v51;
        v23 = *(a2 + 4);
        if (v23)
        {
          *(a2 + 5) = v23;
          v35 = v19;
          operator delete(v23);
          v19 = v35;
        }

        a2[2] = v19;
        *(a2 + 6) = v20;
        result = v38;
        *(a2 + 56) = v38;
        *(a2 + 72) = v42;
      }
    }
  }

  else
  {
    if (v7 > result.n128_f32[0])
    {
      v44 = *a1;
      v49 = a1[1];
      v8 = a1[2];
      v9 = *(a1 + 6);
      *(a1 + 5) = 0;
      *(a1 + 6) = 0;
      *(a1 + 4) = 0;
      v36 = *(a1 + 56);
      v40 = *(a1 + 72);
      v10 = a3[1];
      *a1 = *a3;
      a1[1] = v10;
      a1[2] = a3[2];
      *(a1 + 6) = *(a3 + 6);
      *(a3 + 4) = 0;
      *(a3 + 5) = 0;
      *(a3 + 6) = 0;
      v11 = *(a3 + 72);
      *(a1 + 56) = *(a3 + 56);
      *(a1 + 72) = v11;
      *a3 = v44;
      a3[1] = v49;
      v12 = *(a3 + 4);
      if (v12)
      {
        *(a3 + 5) = v12;
        v33 = v8;
        operator delete(v12);
        v8 = v33;
      }

      a3[2] = v8;
      *(a3 + 6) = v9;
LABEL_19:
      result = v36;
      *(a3 + 56) = v36;
      *(a3 + 72) = v40;
      return result;
    }

    v47 = *a1;
    v52 = a1[1];
    v24 = *(a1 + 4);
    v25 = *(a1 + 5);
    v26 = *(a1 + 6);
    *(a1 + 5) = 0;
    *(a1 + 6) = 0;
    *(a1 + 4) = 0;
    v39 = *(a1 + 56);
    v43 = *(a1 + 72);
    v27 = a2[1];
    *a1 = *a2;
    a1[1] = v27;
    a1[2] = a2[2];
    *(a1 + 6) = *(a2 + 6);
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 6) = 0;
    v28 = *(a2 + 72);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = v28;
    *a2 = v47;
    a2[1] = v52;
    v29 = *(a2 + 4);
    if (v29)
    {
      *(a2 + 5) = v29;
      operator delete(v29);
    }

    *(a2 + 4) = v24;
    *(a2 + 5) = v25;
    *(a2 + 6) = v26;
    result = v39;
    *(a2 + 56) = v39;
    *(a2 + 72) = v43;
    result.n128_u32[0] = *(a3 + 19);
    if (result.n128_f32[0] > *(a2 + 19))
    {
      v48 = *a2;
      v53 = a2[1];
      *(a2 + 5) = 0;
      *(a2 + 6) = 0;
      *(a2 + 4) = 0;
      v36 = *(a2 + 56);
      v40 = *(a2 + 72);
      v30 = a3[1];
      *a2 = *a3;
      a2[1] = v30;
      a2[2] = a3[2];
      *(a2 + 6) = *(a3 + 6);
      *(a3 + 4) = 0;
      *(a3 + 5) = 0;
      *(a3 + 6) = 0;
      v31 = *(a3 + 72);
      *(a2 + 56) = *(a3 + 56);
      *(a2 + 72) = v31;
      *a3 = v48;
      a3[1] = v53;
      v32 = *(a3 + 4);
      if (v32)
      {
        *(a3 + 5) = v32;
        operator delete(v32);
      }

      *(a3 + 4) = v24;
      *(a3 + 5) = v25;
      *(a3 + 6) = v26;
      goto LABEL_19;
    }
  }

  return result;
}

__n128 sub_240B8FBE0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  result = sub_240B8F8C0(a1, a2, a3);
  if (*(a4 + 19) > *(a3 + 76))
  {
    v67 = *a3;
    v74 = *(a3 + 16);
    v11 = *(a3 + 32);
    v12 = *(a3 + 48);
    *(a3 + 32) = 0;
    *(a3 + 40) = 0;
    *(a3 + 48) = 0;
    v53 = *(a3 + 56);
    v60 = *(a3 + 72);
    v13 = a4[1];
    *a3 = *a4;
    *(a3 + 16) = v13;
    *(a3 + 32) = a4[2];
    *(a3 + 48) = *(a4 + 6);
    *(a4 + 4) = 0;
    *(a4 + 5) = 0;
    *(a4 + 6) = 0;
    v14 = *(a4 + 72);
    *(a3 + 56) = *(a4 + 56);
    *(a3 + 72) = v14;
    *a4 = v67;
    a4[1] = v74;
    v15 = *(a4 + 4);
    if (v15)
    {
      *(a4 + 5) = v15;
      v46 = v11;
      operator delete(v15);
      v11 = v46;
    }

    a4[2] = v11;
    *(a4 + 6) = v12;
    result = v53;
    *(a4 + 56) = v53;
    *(a4 + 72) = v60;
    if (*(a3 + 76) > *(a2 + 76))
    {
      v68 = *a2;
      v75 = *(a2 + 16);
      v16 = *(a2 + 32);
      v17 = *(a2 + 48);
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      v54 = *(a2 + 56);
      v61 = *(a2 + 72);
      v18 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v18;
      *(a2 + 32) = *(a3 + 32);
      *(a2 + 48) = *(a3 + 48);
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 48) = 0;
      v19 = *(a3 + 72);
      *(a2 + 56) = *(a3 + 56);
      *(a2 + 72) = v19;
      *a3 = v68;
      *(a3 + 16) = v75;
      v20 = *(a3 + 32);
      if (v20)
      {
        *(a3 + 40) = v20;
        v47 = v16;
        operator delete(v20);
        v16 = v47;
      }

      *(a3 + 32) = v16;
      *(a3 + 48) = v17;
      result = v54;
      *(a3 + 56) = v54;
      *(a3 + 72) = v61;
      if (*(a2 + 76) > *(a1 + 76))
      {
        v69 = *a1;
        v76 = *(a1 + 16);
        v21 = *(a1 + 32);
        v22 = *(a1 + 48);
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *(a1 + 48) = 0;
        v55 = *(a1 + 56);
        v62 = *(a1 + 72);
        v23 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v23;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 48) = *(a2 + 48);
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        *(a2 + 48) = 0;
        v24 = *(a2 + 72);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 72) = v24;
        *a2 = v69;
        *(a2 + 16) = v76;
        v25 = *(a2 + 32);
        if (v25)
        {
          *(a2 + 40) = v25;
          v48 = v21;
          operator delete(v25);
          v21 = v48;
        }

        *(a2 + 32) = v21;
        *(a2 + 48) = v22;
        result = v55;
        *(a2 + 56) = v55;
        *(a2 + 72) = v62;
      }
    }
  }

  result.n128_u32[0] = *(a5 + 19);
  if (result.n128_f32[0] > *(a4 + 19))
  {
    v70 = *a4;
    v77 = a4[1];
    v26 = a4[2];
    v27 = *(a4 + 6);
    *(a4 + 4) = 0;
    *(a4 + 5) = 0;
    *(a4 + 6) = 0;
    v56 = *(a4 + 56);
    v63 = *(a4 + 72);
    v28 = a5[1];
    *a4 = *a5;
    a4[1] = v28;
    a4[2] = a5[2];
    *(a4 + 6) = *(a5 + 6);
    *(a5 + 4) = 0;
    *(a5 + 5) = 0;
    *(a5 + 6) = 0;
    v29 = *(a5 + 72);
    *(a4 + 56) = *(a5 + 56);
    *(a4 + 72) = v29;
    *a5 = v70;
    a5[1] = v77;
    v30 = *(a5 + 4);
    if (v30)
    {
      *(a5 + 5) = v30;
      v49 = v26;
      operator delete(v30);
      v26 = v49;
    }

    a5[2] = v26;
    *(a5 + 6) = v27;
    result = v56;
    *(a5 + 56) = v56;
    *(a5 + 72) = v63;
    result.n128_u32[0] = *(a4 + 19);
    if (result.n128_f32[0] > *(a3 + 76))
    {
      v71 = *a3;
      v78 = *(a3 + 16);
      v31 = *(a3 + 32);
      v32 = *(a3 + 48);
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 48) = 0;
      v57 = *(a3 + 56);
      v64 = *(a3 + 72);
      v33 = a4[1];
      *a3 = *a4;
      *(a3 + 16) = v33;
      *(a3 + 32) = a4[2];
      *(a3 + 48) = *(a4 + 6);
      *(a4 + 4) = 0;
      *(a4 + 5) = 0;
      *(a4 + 6) = 0;
      v34 = *(a4 + 72);
      *(a3 + 56) = *(a4 + 56);
      *(a3 + 72) = v34;
      *a4 = v71;
      a4[1] = v78;
      v35 = *(a4 + 4);
      if (v35)
      {
        *(a4 + 5) = v35;
        v50 = v31;
        operator delete(v35);
        v31 = v50;
      }

      a4[2] = v31;
      *(a4 + 6) = v32;
      result = v57;
      *(a4 + 56) = v57;
      *(a4 + 72) = v64;
      result.n128_u32[0] = *(a3 + 76);
      if (result.n128_f32[0] > *(a2 + 76))
      {
        v72 = *a2;
        v79 = *(a2 + 16);
        v36 = *(a2 + 32);
        v37 = *(a2 + 48);
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        *(a2 + 48) = 0;
        v58 = *(a2 + 56);
        v65 = *(a2 + 72);
        v38 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v38;
        *(a2 + 32) = *(a3 + 32);
        *(a2 + 48) = *(a3 + 48);
        *(a3 + 32) = 0;
        *(a3 + 40) = 0;
        *(a3 + 48) = 0;
        v39 = *(a3 + 72);
        *(a2 + 56) = *(a3 + 56);
        *(a2 + 72) = v39;
        *a3 = v72;
        *(a3 + 16) = v79;
        v40 = *(a3 + 32);
        if (v40)
        {
          *(a3 + 40) = v40;
          v51 = v36;
          operator delete(v40);
          v36 = v51;
        }

        *(a3 + 32) = v36;
        *(a3 + 48) = v37;
        result = v58;
        *(a3 + 56) = v58;
        *(a3 + 72) = v65;
        result.n128_u32[0] = *(a2 + 76);
        if (result.n128_f32[0] > *(a1 + 76))
        {
          v73 = *a1;
          v80 = *(a1 + 16);
          v41 = *(a1 + 32);
          v42 = *(a1 + 48);
          *(a1 + 32) = 0;
          *(a1 + 40) = 0;
          *(a1 + 48) = 0;
          v59 = *(a1 + 56);
          v66 = *(a1 + 72);
          v43 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v43;
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 48) = *(a2 + 48);
          *(a2 + 32) = 0;
          *(a2 + 40) = 0;
          *(a2 + 48) = 0;
          v44 = *(a2 + 72);
          *(a1 + 56) = *(a2 + 56);
          *(a1 + 72) = v44;
          *a2 = v73;
          *(a2 + 16) = v80;
          v45 = *(a2 + 32);
          if (v45)
          {
            *(a2 + 40) = v45;
            v52 = v41;
            operator delete(v45);
            v41 = v52;
          }

          *(a2 + 32) = v41;
          *(a2 + 48) = v42;
          result = v59;
          *(a2 + 56) = v59;
          *(a2 + 72) = v66;
        }
      }
    }
  }

  return result;
}

BOOL sub_240B90070(uint64_t a1, uint64_t a2)
{
  v4 = 0x2E8BA2E8BA2E8BA3 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_240B8F8C0(a1, (a1 + 88), (a2 - 88));
        break;
      case 4:
        sub_240B8F8C0(a1, (a1 + 88), (a1 + 176));
        if (*(a2 - 12) > *(a1 + 252))
        {
          v55 = *(a1 + 176);
          v59 = *(a1 + 192);
          v31 = *(a1 + 208);
          v32 = *(a1 + 224);
          *(a1 + 208) = 0;
          *(a1 + 216) = 0;
          *(a1 + 224) = 0;
          v47 = *(a1 + 232);
          v51 = *(a1 + 248);
          v33 = *(a2 - 72);
          *(a1 + 176) = *(a2 - 88);
          *(a1 + 192) = v33;
          *(a1 + 208) = *(a2 - 56);
          *(a1 + 224) = *(a2 - 40);
          *(a2 - 56) = 0;
          *(a2 - 48) = 0;
          *(a2 - 40) = 0;
          v34 = *(a2 - 16);
          *(a1 + 232) = *(a2 - 32);
          *(a1 + 248) = v34;
          *(a2 - 88) = v55;
          *(a2 - 72) = v59;
          v35 = *(a2 - 56);
          if (v35)
          {
            *(a2 - 48) = v35;
            v44 = v31;
            operator delete(v35);
            v31 = v44;
          }

          *(a2 - 56) = v31;
          *(a2 - 40) = v32;
          *(a2 - 32) = v47;
          *(a2 - 16) = v51;
          if (*(a1 + 252) > *(a1 + 164))
          {
            v56 = *(a1 + 88);
            v60 = *(a1 + 104);
            v36 = *(a1 + 136);
            v48 = *(a1 + 144);
            v52 = *(a1 + 160);
            v37 = *(a1 + 192);
            *(a1 + 88) = *(a1 + 176);
            *(a1 + 104) = v37;
            v38 = *(a1 + 208);
            *(a1 + 136) = *(a1 + 224);
            v39 = *(a1 + 248);
            *(a1 + 144) = *(a1 + 232);
            *(a1 + 160) = v39;
            *(a1 + 176) = v56;
            *(a1 + 192) = v60;
            v40 = *(a1 + 120);
            *(a1 + 120) = v38;
            *(a1 + 208) = v40;
            *(a1 + 224) = v36;
            *(a1 + 248) = v52;
            LODWORD(v40) = *(a1 + 164);
            LODWORD(v39) = *(a1 + 76);
            *(a1 + 232) = v48;
            if (*&v40 > *&v39)
            {
              sub_240B9047C(a1, (a1 + 88));
            }
          }
        }

        return 1;
      case 5:
        sub_240B8FBE0(a1, a1 + 88, a1 + 176, (a1 + 264), (a2 - 88));
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 12) > *(a1 + 76))
    {
      v53 = *a1;
      v57 = *(a1 + 16);
      v5 = *(a1 + 32);
      v6 = *(a1 + 48);
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      v45 = *(a1 + 56);
      v49 = *(a1 + 72);
      v7 = *(a2 - 72);
      *a1 = *(a2 - 88);
      *(a1 + 16) = v7;
      *(a1 + 32) = *(a2 - 56);
      *(a1 + 48) = *(a2 - 40);
      *(a2 - 56) = 0;
      *(a2 - 48) = 0;
      *(a2 - 40) = 0;
      v8 = (a2 - 32);
      v9 = *(a2 - 16);
      *(a1 + 56) = *(a2 - 32);
      *(a1 + 72) = v9;
      *(a2 - 88) = v53;
      *(a2 - 72) = v57;
      v10 = *(a2 - 56);
      if (v10)
      {
        *(a2 - 48) = v10;
        v42 = v5;
        operator delete(v10);
        v5 = v42;
      }

      *(a2 - 56) = v5;
      *(a2 - 40) = v6;
      *v8 = v45;
      *(a2 - 16) = v49;
    }

    return 1;
  }

LABEL_13:
  v11 = a1 + 176;
  sub_240B8F8C0(a1, (a1 + 88), (a1 + 176));
  v12 = a1 + 264;
  if (a1 + 264 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = *(v12 + 76);
    if (v15 > *(v11 + 76))
    {
      v54 = *v12;
      v58 = *(v12 + 16);
      v16 = *(v12 + 32);
      v17 = *(v12 + 40);
      *(v12 + 32) = 0;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      v43 = v17;
      v46 = *(v12 + 56);
      v50 = *(v12 + 72);
      v18 = v13;
      v19 = *(v12 + 80);
      while (1)
      {
        v20 = a1 + v18;
        v21 = (a1 + v18 + 264);
        v22 = *(a1 + v18 + 192);
        *v21 = *(a1 + v18 + 176);
        v21[1] = v22;
        v23 = *(a1 + v18 + 296);
        if (v23)
        {
          *(v20 + 304) = v23;
          operator delete(v23);
          *(v20 + 304) = 0;
          *(v20 + 312) = 0;
        }

        *(v20 + 296) = *(v20 + 208);
        *(v20 + 312) = *(v20 + 224);
        *(v20 + 216) = 0;
        *(v20 + 224) = 0;
        *(v20 + 208) = 0;
        v24 = *(v20 + 248);
        *(v20 + 320) = *(v20 + 232);
        *(v20 + 336) = v24;
        if (v18 == -176)
        {
          break;
        }

        v25 = a1 + v18;
        v26 = *(a1 + v18 + 164);
        v18 -= 88;
        if (v15 <= v26)
        {
          v27 = (v25 + 208);
          v28 = a1 + v18 + 264;
          v29 = v25 + 232;
          goto LABEL_23;
        }
      }

      v27 = (a1 + 32);
      v29 = a1 + 56;
      v28 = a1;
LABEL_23:
      *v28 = v54;
      *(v28 + 16) = v58;
      v30 = *v27;
      if (*v27)
      {
        *(v28 + 40) = v30;
        operator delete(v30);
      }

      *v27 = v16;
      *(v28 + 40) = v43;
      *v29 = v46;
      *(v29 + 16) = v50;
      *(v28 + 76) = v15;
      *(v28 + 80) = v19;
      if (++v14 == 8)
      {
        return v12 + 88 == a2;
      }
    }

    v11 = v12;
    v13 += 88;
    v12 += 88;
    if (v12 == a2)
    {
      return 1;
    }
  }
}

__n128 sub_240B9047C(__int128 *a1, __int128 *a2)
{
  v12 = *a1;
  v13 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 6);
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  *(a1 + 6) = 0;
  v10 = *(a1 + 56);
  v11 = *(a1 + 72);
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  a1[2] = a2[2];
  *(a1 + 6) = *(a2 + 6);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  v6 = *(a2 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = v6;
  *a2 = v12;
  a2[1] = v13;
  v7 = *(a2 + 4);
  if (v7)
  {
    *(a2 + 5) = v7;
    v9 = v3;
    operator delete(v7);
    v3 = v9;
  }

  a2[2] = v3;
  *(a2 + 6) = v4;
  result = v10;
  *(a2 + 56) = v10;
  *(a2 + 72) = v11;
  return result;
}

uint64_t sub_240B9052C(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_240B90560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7, void *a8, double a9, uint64_t a10)
{
  v22 = a2;
  v23 = a1;
  v21 = a4;
  v10 = a6[1];
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      if ((a5 - 17) < 0xFFFFFFFFFFFFFFF8)
      {
        return 1;
      }
    }

    else if (v10 != 5)
    {
      goto LABEL_8;
    }

    result = 2;
    goto LABEL_13;
  }

  if (!v10)
  {
    result = 4;
    goto LABEL_13;
  }

  if (v10 == 2)
  {
    result = 1;
    if ((a5 - 9) < 0xFFFFFFFFFFFFFFF8)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_8:
  result = 0;
LABEL_13:
  v12 = result * *a6;
  v19 = result * a7;
  v20 = v12;
  if (v10 == 2)
  {
    v13 = (257 << a5) - 257;
  }

  else
  {
    v13 = ~(-1 << a5);
  }

  v18 = 1.0 / v13;
  v17 = a6[2] < 2;
  v16 = 0;
  v15[0] = &v21;
  v15[1] = &v19;
  v15[2] = &a10;
  v15[3] = &v23;
  v15[4] = &v22;
  v15[5] = &v20;
  v15[6] = a6;
  v15[7] = &v17;
  v15[8] = &v18;
  v15[9] = &v16;
  if (a8)
  {
    v14 = a8;
  }

  else
  {
    v24[0] = 0;
    v24[1] = v24;
    v14 = v24;
  }

  *&a9 = 1.0 / v13;
  result = sub_240B906A8(v14, a3, v15, a9, 1.0);
  if (!result)
  {
    atomic_load(&v16);
  }

  return result;
}

BOOL sub_240B906A8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, float a5)
{
  if (!a2)
  {
    return 0;
  }

  v5 = a2;
  v8[0] = sub_240B2AC64;
  v8[1] = a3;
  if (*a1)
  {
    return (*a1)(*(a1 + 8), v8, sub_240B909B4, sub_240B90758, 0, a2) != 0;
  }

  for (i = 0; i != v5; ++i)
  {
    sub_240B90758(v8, i, a4, a5);
  }

  return 0;
}

uint64_t sub_240B90758(uint64_t result, unsigned int a2, double a3, float a4)
{
  v4 = *(result + 8);
  v5 = **v4 * a2;
  v6 = **(v4 + 8);
  v7 = (*(**(v4 + 16) + 24) + *(**(v4 + 16) + 16) * a2);
  v8 = **(v4 + 24);
  v9 = **(v4 + 32);
  v10 = **(v4 + 40);
  v11 = *(*(v4 + 48) + 4);
  v12 = **(v4 + 56);
  v13 = **(v4 + 64);
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      if (**(v4 + 56))
      {
        if (v9)
        {
          v22 = v6 + v5 + v8 + 1;
          do
          {
            LOWORD(a4) = *(v22 - 1);
            a4 = v13 * LODWORD(a4);
            *v7++ = a4;
            v22 += v10;
            --v9;
          }

          while (v9);
        }
      }

      else if (v9)
      {
        v30 = v6 + v5 + v8 + 1;
        do
        {
          *v7++ = v13 * __rev16(*(v30 - 1));
          v30 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      if (v11 != 5)
      {
        goto LABEL_18;
      }

      if (**(v4 + 56))
      {
        if (v9)
        {
          v15 = (v6 + v5 + v8 + 1);
          do
          {
            v16 = *v15;
            v17 = v16 << 8;
            v18 = (v16 >> 2) & 0x1F;
            v19 = (*(v15 - 1) | (*v15 << 8)) & 0x3FF;
            if (v18)
            {
              LODWORD(v20) = ((v17 << 16) & 0x80000000 | (v18 << 23) | (v19 << 13)) + 939524096;
            }

            else
            {
              v21 = vcvts_n_f32_u32(v19, 0xAuLL) * 0.000061035;
              v20 = -v21;
              if ((v17 & 0x8000u) == 0)
              {
                v20 = v21;
              }
            }

            v15 += v10;
            *v7++ = v20;
            --v9;
          }

          while (v9);
        }
      }

      else if (v9)
      {
        v23 = (v6 + v5 + v8 + 1);
        do
        {
          v24 = *(v23 - 1);
          v25 = v24 << 8;
          v26 = (v24 >> 2) & 0x1F;
          v27 = *v23 | (v24 << 8) & 0x3FF;
          if (v26)
          {
            LODWORD(v28) = ((v25 << 16) & 0x80000000 | (v26 << 23) | (v27 << 13)) + 939524096;
          }

          else
          {
            v29 = vcvts_n_f32_u32(v27, 0xAuLL) * 0.000061035;
            v28 = -v29;
            if ((v25 & 0x8000u) == 0)
            {
              v28 = v29;
            }
          }

          v23 += v10;
          *v7++ = v28;
          --v9;
        }

        while (v9);
      }
    }
  }

  else
  {
    v14 = (v8 + v6 + v5);
    if (v11)
    {
      if (v11 == 2)
      {
        for (; v9; --v9)
        {
          *v7++ = v13 * (*v14 | (*v14 << 8));
          v14 = (v14 + v10);
        }

        return result;
      }

LABEL_18:
      atomic_fetch_add(*(v4 + 72), 1uLL);
      return result;
    }

    if (**(v4 + 56))
    {
      for (; v9; --v9)
      {
        *v7++ = *v14;
        v14 = (v14 + v10);
      }
    }

    else
    {
      for (; v9; --v9)
      {
        *v7++ = bswap32(*v14);
        v14 = (v14 + v10);
      }
    }
  }

  return result;
}

uint64_t sub_240B909B4(unsigned int (**a1)(uint64_t), uint64_t a2)
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

BOOL sub_240B909DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v123[1] = *MEMORY[0x277D85DE8];
  v113 = a8;
  v114 = a3;
  sub_240B86714(&v96, a1);
  if (v99 == 9)
  {
    v99 = 8;
    goto LABEL_14;
  }

  if (v99 != -1)
  {
LABEL_14:
    if (v110 != v109 && v110 - v109 != 32)
    {
      goto LABEL_90;
    }

    if (v112 != v111 && v112 - v111 != 12)
    {
      goto LABEL_90;
    }

    if ((v101 & 1) == 0 && v96 == 0.0)
    {
      v96 = 0.001;
    }

    if (v108 == -1.0)
    {
      v108 = v96;
    }

    v16 = v105;
    if (v105 <= 0)
    {
      v16 = 1;
      v105 = 1;
      if ((v107 & 1) == 0 && v96 >= 20.0)
      {
        v16 = 2;
        v105 = 2;
        v17 = (v96 + -20.0) * 0.25 + 6.0;
        v96 = v17;
      }
    }

    v18 = v106;
    if (v106 <= 0)
    {
      v106 = v16;
      v18 = v16;
    }

    if (v96 < 0.0)
    {
      goto LABEL_90;
    }

    v19 = v104;
    if ((v104 & 0x80000000) != 0)
    {
      if (v104 != -1)
      {
        goto LABEL_90;
      }

      v19 = 0;
      v104 = 0;
    }

    if (v18 >= v16)
    {
      if (v16 <= 1 && *(a2 + 17) != 1)
      {
LABEL_78:
        v59 = *(a2 + 8);
        if (v59 + v19 <= 4 && (v96 == 0.0 || v96 >= 0.001))
        {
          v60 = *(a4 + 368);
          if (v60 == 1)
          {
            v102 = 0;
            v103 = 0;
            v101 = 0;
          }

          v57 = 1;
          if (*a4 && *(a4 + 8) && (!v60 || v100))
          {
            if (sub_240B91728(&v96, v59, *(v114 + 320), a4))
            {
              sub_240B9184C();
            }

            sub_240B93770();
          }

          goto LABEL_91;
        }

LABEL_90:
        v57 = 1;
        goto LABEL_91;
      }
    }

    else
    {
      v106 = v16;
    }

    v19 = 0;
    v104 = 0;
    goto LABEL_78;
  }

  if (v101 != 1 || (v96 == 0.0 ? (v13 = v100 == 0) : (v13 = 1), v13))
  {
LABEL_13:
    v99 = 0;
    goto LABEL_14;
  }

  for (i = v97; i != v98; ++i)
  {
    if (*i > 0.0)
    {
      goto LABEL_13;
    }
  }

  v66 = a6;
  v95 = 0uLL;
  v94 = 0;
  v92 = 0;
  __p = 0;
  v93 = 0;
  sub_240B86714(v80, a1);
  v20 = 0;
  v81 = 0;
  v85 = 4;
  v123[0] = 0x42A0000000000000;
  do
  {
    v67 = v20;
    v21 = 0;
    v89 = *(v123 + v20);
    v122 = 0x42BE000000000000;
    do
    {
      v68 = v21;
      v22 = 0;
      v88 = *(&v123[-1] + v21);
      v120 = 0x40000000000;
      v121 = 70000;
      do
      {
        v69 = v22;
        v23 = 0;
        v90 = *(&v120 + v22);
        v118 = 0x2FFFFFFFFLL;
        v119 = 3;
        do
        {
          v70 = v23;
          if (*(&v118 + v23) == -1)
          {
            v24 = 0.0;
          }

          else
          {
            v87 = *(&v118 + v23);
            v24 = 1.0;
          }

          v25 = 0;
          v84 = v24;
          v117 = 0xF00000000;
          v26 = v95;
          do
          {
            v27 = 0;
            v71 = v25;
            v86 = *(&v117 + v25);
            v115 = 0xFFFFFFFF00000000;
            v116 = 3;
            do
            {
              v28 = 0;
              v82 = *(&v115 + v27);
              v29 = -1;
              do
              {
                v30 = v28;
                v83 = v29;
                if (v26 >= *(&v95 + 1))
                {
                  v31 = 0xCCCCCCCCCCCCCCCDLL * ((v26 - v94) >> 7);
                  v32 = v31 + 1;
                  if (v31 + 1 > 0x66666666666666)
                  {
                    sub_240B228BC();
                  }

                  if (0x999999999999999ALL * ((*(&v95 + 1) - v94) >> 7) > v32)
                  {
                    v32 = 0x999999999999999ALL * ((*(&v95 + 1) - v94) >> 7);
                  }

                  if (0xCCCCCCCCCCCCCCCDLL * ((*(&v95 + 1) - v94) >> 7) >= 0x33333333333333)
                  {
                    v33 = 0x66666666666666;
                  }

                  else
                  {
                    v33 = v32;
                  }

                  v76 = &v94;
                  if (v33)
                  {
                    if (v33 <= 0x66666666666666)
                    {
                      operator new();
                    }

                    sub_240B2291C();
                  }

                  v73 = 0;
                  v74 = 640 * v31;
                  v75 = 640 * v31;
                  sub_240B86714(640 * v31, v80);
                  *&v75 = v75 + 640;
                  v34 = v95;
                  v35 = v94;
                  v36 = v74 + v94 - v95;
                  if (v94 != v95)
                  {
                    v37 = v94;
                    v38 = v74 + v94 - v95;
                    do
                    {
                      *v38 = *v37;
                      *(v38 + 8) = 0;
                      *(v38 + 16) = 0uLL;
                      *(v38 + 8) = *(v37 + 8);
                      *(v38 + 24) = *(v37 + 24);
                      *(v37 + 24) = 0;
                      *(v37 + 8) = 0uLL;
                      v39 = *(v37 + 128);
                      v41 = *(v37 + 80);
                      v40 = *(v37 + 96);
                      *(v38 + 112) = *(v37 + 112);
                      *(v38 + 128) = v39;
                      *(v38 + 80) = v41;
                      *(v38 + 96) = v40;
                      v43 = *(v37 + 160);
                      v42 = *(v37 + 176);
                      v44 = *(v37 + 144);
                      *(v38 + 192) = *(v37 + 192);
                      *(v38 + 160) = v43;
                      *(v38 + 176) = v42;
                      *(v38 + 144) = v44;
                      v45 = *(v37 + 32);
                      v46 = *(v37 + 64);
                      *(v38 + 48) = *(v37 + 48);
                      *(v38 + 64) = v46;
                      *(v38 + 32) = v45;
                      v47 = *(v37 + 216);
                      *(v38 + 200) = *(v37 + 200);
                      *(v38 + 216) = v47;
                      *(v38 + 224) = 0;
                      *(v38 + 232) = 0uLL;
                      *(v38 + 224) = *(v37 + 224);
                      *(v38 + 240) = *(v37 + 240);
                      *(v37 + 240) = 0;
                      *(v37 + 224) = 0uLL;
                      v48 = *(v37 + 248);
                      v49 = *(v37 + 264);
                      *(v38 + 280) = *(v37 + 280);
                      *(v38 + 264) = v49;
                      *(v38 + 248) = v48;
                      *(v38 + 288) = *(v37 + 288);
                      *(v38 + 312) = 0uLL;
                      *(v38 + 304) = 0;
                      *(v38 + 304) = *(v37 + 304);
                      *(v38 + 320) = *(v37 + 320);
                      *(v37 + 320) = 0;
                      *(v37 + 304) = 0uLL;
                      v50 = *(v37 + 328);
                      *(v38 + 333) = *(v37 + 333);
                      *(v38 + 328) = v50;
                      *(v38 + 344) = *(v37 + 344);
                      v51 = *(v37 + 352);
                      v52 = *(v37 + 368);
                      v53 = *(v37 + 384);
                      *(v38 + 393) = *(v37 + 393);
                      *(v38 + 368) = v52;
                      *(v38 + 384) = v53;
                      *(v38 + 352) = v51;
                      *(v38 + 416) = 0;
                      *(v38 + 424) = 0uLL;
                      *(v38 + 416) = *(v37 + 416);
                      *(v38 + 432) = *(v37 + 432);
                      *(v37 + 432) = 0;
                      *(v37 + 416) = 0uLL;
                      *(v38 + 456) = 0;
                      *(v38 + 440) = 0uLL;
                      *(v38 + 440) = *(v37 + 440);
                      *(v38 + 448) = *(v37 + 448);
                      *(v37 + 456) = 0;
                      *(v37 + 440) = 0uLL;
                      *(v38 + 480) = 0;
                      *(v38 + 464) = 0uLL;
                      *(v38 + 464) = *(v37 + 464);
                      *(v38 + 480) = *(v37 + 480);
                      *(v37 + 480) = 0;
                      *(v37 + 464) = 0uLL;
                      *(v38 + 488) = *(v37 + 488);
                      *(v38 + 504) = 0uLL;
                      *(v38 + 496) = 0;
                      *(v38 + 496) = *(v37 + 496);
                      *(v38 + 512) = *(v37 + 512);
                      *(v37 + 512) = 0;
                      *(v37 + 496) = 0uLL;
                      *(v38 + 536) = 0;
                      *(v38 + 520) = 0uLL;
                      *(v38 + 520) = *(v37 + 520);
                      *(v38 + 528) = *(v37 + 528);
                      *(v37 + 536) = 0;
                      *(v37 + 520) = 0uLL;
                      *(v38 + 560) = 0;
                      *(v38 + 544) = 0uLL;
                      *(v38 + 544) = *(v37 + 544);
                      *(v38 + 560) = *(v37 + 560);
                      *(v37 + 560) = 0;
                      *(v37 + 544) = 0uLL;
                      *(v38 + 584) = 0;
                      *(v38 + 568) = 0uLL;
                      *(v38 + 568) = *(v37 + 568);
                      *(v38 + 576) = *(v37 + 576);
                      *(v37 + 584) = 0;
                      *(v37 + 568) = 0uLL;
                      *(v38 + 608) = 0;
                      *(v38 + 592) = 0uLL;
                      *(v38 + 592) = *(v37 + 592);
                      *(v38 + 608) = *(v37 + 608);
                      *(v37 + 608) = 0;
                      *(v37 + 592) = 0uLL;
                      v54 = *(v37 + 616);
                      *(v38 + 632) = *(v37 + 632);
                      *(v38 + 616) = v54;
                      v37 += 640;
                      v38 += 640;
                    }

                    while (v37 != v34);
                    do
                    {
                      v35 = sub_240B7BB60(v35) + 640;
                    }

                    while (v35 != v34);
                  }

                  v55 = v94;
                  v56 = *(&v95 + 1);
                  v94 = v36;
                  v72 = v75;
                  v95 = v75;
                  *&v75 = v55;
                  *(&v75 + 1) = v56;
                  v73 = v55;
                  v74 = v55;
                  sub_240BA36B0(&v73);
                  v26 = v72;
                }

                else
                {
                  sub_240B86714(v26, v80);
                  v26 += 640;
                }

                v29 = 0;
                *&v95 = v26;
                v28 = 1;
              }

              while ((v30 & 1) == 0);
              v27 += 4;
            }

            while (v27 != 12);
            v25 = v71 + 4;
          }

          while (v71 != 4);
          v23 = v70 + 4;
        }

        while (v70 != 8);
        v22 = v69 + 4;
      }

      while (v69 != 8);
      v21 = v68 + 4;
    }

    while (v68 != 4);
    v20 = v67 + 4;
  }

  while (v67 != 4);
  sub_240B38D70(&__p, 0xCCCCCCCCCCCCCCCDLL * ((v26 - v94) >> 7));
  LOBYTE(v120) = 0;
  v73 = &v120;
  v74 = &v94;
  *&v75 = a2;
  *(&v75 + 1) = &v114;
  v76 = a4;
  v77 = a5;
  v78 = &v113;
  p_p = &__p;
  v57 = sub_240B91420(v66, -858993459 * ((v95 - v94) >> 7), &v73);
  if (v57)
  {
    goto LABEL_72;
  }

  v58 = atomic_load(&v120);
  if ((v58 & 1) == 0)
  {
    v63 = 0xCCCCCCCCCCCCCCCDLL * ((v95 - v94) >> 7);
    if (v63 < 2)
    {
      v64 = 0;
    }

    else
    {
      v64 = 0;
      for (j = 1; j != v63; ++j)
      {
        if (*(__p + v64) > *(__p + j))
        {
          v64 = j;
        }
      }
    }

    sub_240B91460(&v96, v94 + 640 * v64);
    sub_240B7BB60(v80);
    if (__p)
    {
      v92 = __p;
      operator delete(__p);
    }

    v80[0] = &v94;
    sub_240B916A4(v80);
    goto LABEL_14;
  }

  v57 = 1;
LABEL_72:
  sub_240B7BB60(v80);
  if (__p)
  {
    v92 = __p;
    operator delete(__p);
  }

  v80[0] = &v94;
  sub_240B916A4(v80);
LABEL_91:
  sub_240B7BB60(&v96);
  v61 = *MEMORY[0x277D85DE8];
  return v57;
}

void sub_240B913A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_240B7BB60(&a30);
  v31 = STACK[0x328];
  if (STACK[0x328])
  {
    STACK[0x330] = v31;
    operator delete(v31);
  }

  a30 = &STACK[0x340];
  sub_240B916A4(&a30);
  sub_240B7BB60(&STACK[0x358]);
  _Unwind_Resume(a1);
}

BOOL sub_240B91420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {

    return sub_240BA33EC(a1, a2, a3);
  }

  else
  {
    v6[2] = v3;
    v6[3] = v4;
    v6[0] = 0;
    v6[1] = v6;
    return sub_240BA33EC(v6, a2, a3);
  }
}

uint64_t sub_240B91460(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 == a2)
  {
    v19 = *(a2 + 32);
    v20 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v20;
    *(a1 + 32) = v19;
    v21 = *(a2 + 80);
    v22 = *(a2 + 96);
    v23 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v23;
    *(a1 + 80) = v21;
    *(a1 + 96) = v22;
    v24 = *(a2 + 144);
    v25 = *(a2 + 160);
    v26 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 160) = v25;
    *(a1 + 176) = v26;
    *(a1 + 144) = v24;
    v27 = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 200) = v27;
    v28 = *(a2 + 248);
    v29 = *(a2 + 264);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 264) = v29;
    *(a1 + 248) = v28;
    *(a1 + 288) = *(a2 + 288);
    v30 = *(a2 + 328);
    *(a1 + 333) = *(a2 + 333);
    *(a1 + 328) = v30;
    *(a1 + 344) = *(a2 + 344);
    v31 = *(a2 + 352);
    v32 = *(a2 + 368);
    v33 = *(a2 + 384);
    *(a1 + 393) = *(a2 + 393);
    *(a1 + 368) = v32;
    *(a1 + 384) = v33;
    *(a1 + 352) = v31;
  }

  else
  {
    sub_240B343B0((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
    v4 = *(a2 + 32);
    v5 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v5;
    *(a1 + 32) = v4;
    v6 = *(a2 + 80);
    v7 = *(a2 + 96);
    v8 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v8;
    *(a1 + 80) = v6;
    *(a1 + 96) = v7;
    v9 = *(a2 + 144);
    v10 = *(a2 + 160);
    v11 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 160) = v10;
    *(a1 + 176) = v11;
    *(a1 + 144) = v9;
    v12 = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 200) = v12;
    sub_240B343B0((a1 + 224), *(a2 + 224), *(a2 + 232), (*(a2 + 232) - *(a2 + 224)) >> 2);
    v13 = *(a2 + 248);
    v14 = *(a2 + 264);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 264) = v14;
    *(a1 + 248) = v13;
    *(a1 + 288) = *(a2 + 288);
    sub_240BA2C68((a1 + 304), *(a2 + 304), *(a2 + 312), (*(a2 + 312) - *(a2 + 304)) >> 3);
    v15 = *(a2 + 328);
    *(a1 + 333) = *(a2 + 333);
    *(a1 + 328) = v15;
    *(a1 + 344) = *(a2 + 344);
    v16 = *(a2 + 352);
    v17 = *(a2 + 368);
    v18 = *(a2 + 384);
    *(a1 + 393) = *(a2 + 393);
    *(a1 + 368) = v17;
    *(a1 + 384) = v18;
    *(a1 + 352) = v16;
    sub_240B343B0((a1 + 416), *(a2 + 416), *(a2 + 424), (*(a2 + 424) - *(a2 + 416)) >> 2);
    sub_240B343B0((a1 + 440), *(a2 + 440), *(a2 + 448), (*(a2 + 448) - *(a2 + 440)) >> 2);
    sub_240BA2D94((a1 + 464), *(a2 + 464), *(a2 + 472), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 472) - *(a2 + 464)) >> 3));
  }

  sub_240BA2EF4(a1 + 488, a2 + 488);
  v34 = *(a2 + 616);
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 616) = v34;
  return a1;
}

void sub_240B916A4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_240B7BB60(v4 - 640);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

BOOL sub_240B91728(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *(a1 + 404);
  if (!v4)
  {
    return 0;
  }

  if (v4 == -1)
  {
    v7 = *(a1 + 48);
    if (v7 < 1)
    {
      return 0;
    }

    v8 = *a1;
    v9 = v7 > 2 || v8 <= 0.5;
    if (!v9 || v7 == 3 && v8 >= 3.0)
    {
      return 0;
    }
  }

  if (*a4 <= 0x800uLL && *(a4 + 8) < 0x801uLL || (*(a4 + 368) & 1) != 0)
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 77) != 1 && *(a1 + 79) != 1)
  {
    result = 0;
    if (!*(a1 + 112) && !a2)
    {
      result = 0;
      if (*(a1 + 380) == 1 && *(a1 + 384) == 1)
      {
        if ((*(a1 + 32) & 1) == 0)
        {
          if (sub_240B97DD0(a1) && *(a1 + 352) <= 0)
          {
            v11 = *(a1 + 68);
            return *(a1 + 64) == v11;
          }

          if (!a3)
          {
            v11 = *(a1 + 68);
            if ((v11 & 1) == 0)
            {
              return *(a1 + 64) == v11;
            }
          }
        }

        return 0;
      }
    }
  }

  return result;
}

void sub_240B9184C()
{
  MEMORY[0x28223BE20]();
  sub_240B50E0C(v0);
  v1 = 256;
  v2 = 0u;
  v3 = 0u;
  v4 = 0u;
  v5 = 0;
  v6 = 1;
  memcpy(v7, &unk_240C83BC8, sizeof(v7));
  sub_240B94630(&v8);
}

void sub_240B9342C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  STACK[0x1E40] = 0;
  if (v54)
  {
    atomic_fetch_add(&qword_27E519020, -*(v54 - 24));
    free(*(v54 - 32));
  }

  v56 = STACK[0x1E18];
  STACK[0x1E18] = 0;
  if (v56)
  {
    atomic_fetch_add(&qword_27E519020, -*(v56 - 24));
    free(*(v56 - 32));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a51)
  {
    atomic_fetch_add(&qword_27E519020, -*(a51 - 24));
    free(*(a51 - 32));
  }

  if (a54)
  {
    atomic_fetch_add(&qword_27E519020, -*(a54 - 24));
    free(*(a54 - 32));
  }

  if (a42)
  {
    operator delete(a42);
  }

  if (STACK[0x200])
  {
    operator delete(STACK[0x200]);
  }

  sub_240B7B9D4(&STACK[0x218]);
  if (a23)
  {
    (*(*a23 + 8))(a23);
  }

  sub_240B56CA4(&STACK[0x700]);
  sub_240B96DF4(&STACK[0x940]);
  _Unwind_Resume(a1);
}

void sub_240B93770()
{
  MEMORY[0x28223BE20]();
  sub_240B50E0C(v0);
  v1 = 256;
  v2 = 0u;
  v3 = 0u;
  v4 = 0u;
  v5 = 0;
  v6 = 1;
  memcpy(v7, &unk_240C83BC8, sizeof(v7));
  sub_240B94630(&v8);
}

void sub_240B944C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  v31 = *(v29 - 232);
  if (v31)
  {
    *(v29 - 224) = v31;
    operator delete(v31);
  }

  v32 = *(v29 - 176);
  if (v32)
  {
    *(v29 - 168) = v32;
    operator delete(v32);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    atomic_fetch_add(&qword_27E519020, -*(a26 - 24));
    free(*(a26 - 32));
  }

  sub_240B7B9D4(&a28);
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  sub_240B56CA4(&STACK[0x580]);
  a28 = &STACK[0x7C0];
  sub_240B30C38(&a28);
  sub_240B96DF4(&STACK[0x7D8]);
  _Unwind_Resume(a1);
}

void sub_240B94630(uint64_t a1)
{
  v2 = *MEMORY[0x277D85DE8];
  *a1 = 1065353216;
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 36) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0xFFFFFFFF00000003;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  *(a1 + 84) = -1;
  *(a1 + 88) = -1;
  *(a1 + 72) = -1;
  *(a1 + 80) = -1;
  *(a1 + 90) = 0;
  *(a1 + 96) = -1;
  *(a1 + 104) = -1;
  *(a1 + 109) = -1;
  *(a1 + 184) = 0;
  *(a1 + 185) = 16843009;
  *(a1 + 189) = 1;
  *(a1 + 192) = 0;
  *(a1 + 200) = xmmword_240C11540;
  *(a1 + 216) = 1056964608;
  *(a1 + 224) = 0;
  v1 = a1 + 224;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  sub_240B43818();
}

void sub_240B94804(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B94820(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; sub_240B7BEFC(i))
    {
      --i;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void sub_240B9489C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_240BA1E88(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_240B94A54(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void *a6, uint64_t a7)
{
  *(a7 + 560) = *(a5 + 17);
  *(a7 + 392) = *(a5 + 16);
  *(a7 + 400) = *a5;
  *(a7 + 16) = *(a5 + 4);
  std::string::operator=((a7 + 80), (a5 + 88));
  v14 = *a4;
  *(a7 + 112) = *a4;
  *(a7 + 208 + 4 * (v14 - 1)) = 0;
  if (v14 != 1)
  {
    v15 = v14 - 1;
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = a4 + 1;
      do
      {
        v20 = v19[3 * v17 + 2];
        *(a7 + 208 + 4 * v17) = v19[3 * v17 + 1];
        if (v20 - 2 >= 0xFFFFFFFFFFFFFFFDLL)
        {
          v17 = ++v18;
        }

        else
        {
          *(a7 + 120 + 4 * v16) = v20;
          *(a7 + 164 + 4 * v16) = v18;
          v17 = (v18 + 1);
          v18 = v17;
          if (v19[3 * v17 + 2] < v20)
          {
            *(a7 + 116) = ++v16;
          }
        }
      }

      while (v15 > v17);
    }
  }

  v21 = *(a3 + 68);
  if (v21 == 1)
  {
    *(a7 + 12) = 1;
    if (a2 < 0x191 && a1 < 0x191)
    {
      v21 = 2;
    }

    if (*(a3 + 72) != -1)
    {
      v21 = *(a3 + 72);
    }

    *(a7 + 64) = v21;
    if (!a6)
    {
      v23 = *(a3 + 64);
      *(a7 + 32) = v23;
LABEL_19:
      v24 = 1;
      goto LABEL_24;
    }
  }

  else if (!a6)
  {
    v23 = *(a3 + 64);
    *(a7 + 32) = v23;
    if (*(a7 + 60))
    {
      return 1;
    }

    result = 1;
    if (*(a7 + 61))
    {
      return result;
    }

    goto LABEL_19;
  }

  *(a7 + 12) = 0;
  *(a7 + 68) = 0x200000002;
  if (sub_240BD30B0(a6[18], a6[19], a7 + 40) || sub_240BD324C(a6, (a7 + 32)))
  {
    return 1;
  }

  v24 = 0;
  v23 = *(a7 + 32);
LABEL_24:
  if (v23 != 2 && (*(a7 + 60) || *(a7 + 61)))
  {
    return 1;
  }

  v25 = *(a3 + 77);
  if (*(a3 + 77))
  {
    if (v25 == 1)
    {
      v26 = *(a3 + 192);
LABEL_38:
      v28 = 1;
      goto LABEL_39;
    }

    LOBYTE(v25) = *a3 >= 99.0;
  }

  v26 = *(a3 + 192);
  if ((v25 & 1) != 0 || v26 > 0.0 || *(a3 + 424) - *(a3 + 416) == 32)
  {
    goto LABEL_38;
  }

  v28 = 0;
LABEL_39:
  v29 = *(a3 + 112);
  v30 = *(a3 + 68);
  if (v30)
  {
    v31 = 1;
  }

  else
  {
    v31 = v29 <= 0;
  }

  v32 = v28 | 0x20;
  if (v31)
  {
    v32 = v28;
  }

  *(a7 + 24) = v32;
  v33 = *(a7 + 12);
  if (v33 && v26 == 0.0)
  {
    if (*(a3 + 416) == *(a3 + 424))
    {
      *(a7 + 24) = v32 & 0x20;
    }

    v34 = 0;
    v35 = *(a3 + 80);
  }

  else
  {
    v34 = 0;
    v35 = *(a3 + 80);
    if (!v33 && *(a3 + 48) <= 5)
    {
      v34 = *(a3 + 56) < 4uLL;
    }
  }

  if (v35 == 1)
  {
    v34 = 1;
  }

  else if (!v35)
  {
    v34 = 0;
  }

  *(a7 + 425) = v34;
  v36 = *(a3 + 84);
  if (v36 != -1)
  {
    *(a7 + 452) = v36;
    goto LABEL_59;
  }

  *(a7 + 452) = 0;
  if (v33 != 1)
  {
    v38 = *(a3 + 56);
    v39 = v38 == 2;
    if (v38 > 2)
    {
      goto LABEL_78;
    }

    v40 = 0;
    v41 = v39;
    v42 = *a3;
    v43 = 4 * v41;
    do
    {
      if (v42 >= *&a333[v43])
      {
        *(a7 + 452) = ++v40;
      }

      v43 += 4;
    }

    while (v43 != 12);
LABEL_59:
    if (v33 != 1)
    {
      goto LABEL_78;
    }
  }

  if ((v30 & 1) == 0 || (sub_240B97DD0(a3) & 1) == 0)
  {
    v37 = *a3;
    if (*a3 < 1.0)
    {
      v37 = 1.0;
    }

    *(a7 + 536) = v37;
  }

  if (*(a3 + 376) == 1)
  {
    *(a7 + 536) = 1065353216;
  }

LABEL_78:
  v44 = *(a5 + 8);
  *(a7 + 404) = v44;
  if (v44 > 2)
  {
    return 1;
  }

  if (v29 >= 1)
  {
    result = 1;
    if (*(a3 + 384) != 1 || *(a3 + 380) != 1)
    {
      return result;
    }

    v45 = (a3 + 384);
    v46 = 1;
    v47 = 1;
    goto LABEL_85;
  }

  v47 = *(a3 + 380);
  v57 = v47 - 1;
  if ((v47 - 1) > 7 || ((0x8Bu >> v57) & 1) == 0)
  {
    return 1;
  }

  v58 = *(a3 + 384);
  result = 1;
  if (v58 <= 8 && ((1 << v58) & 0x116) != 0)
  {
    v46 = dword_240C83E88[v57];
    v45 = (a3 + 384);
LABEL_85:
    if (*(a5 + 4) != 1)
    {
      v48 = *(a5 + 48);
      *(a7 + 296) = v48;
      if (!*(a3 + 388))
      {
        v46 = 1;
      }

      v49 = v46 * a1;
      *(a7 + 260) = v49;
      v50 = v46 * a2;
      *(a7 + 264) = v50;
      if (v48 || sub_240B3CD44(a7) != v49 || sub_240B56664(a7) != v50)
      {
        *(a7 + 256) = 1;
      }
    }

    *(a7 + 268) = v47;
    v51 = *(a7 + 408);
    *(a7 + 280) = *(a7 + 272);
    v52 = 0xAAAAAAAAAAAAAAABLL * ((*(v51 + 336) - *(v51 + 328)) >> 5);
    v72 = *v45;
    sub_240B2B4A8((a7 + 272), v52, &v72);
    *(a7 + 396) = *(a5 + 24);
    v53 = *(a5 + 56);
    if ((v53 & 1) != 0 || *(a7 + 256) == 1)
    {
      v54 = *(a5 + 44);
      if (v54 == -1)
      {
        v56 = *(v51 + 328);
        v55 = *(v51 + 336);
        v59 = 0xAAAAAAAAAAAAAAABLL * ((v55 - v56) >> 5);
        if (v59 < 2)
        {
LABEL_106:
          v54 = 0;
        }

        else
        {
          v54 = 0;
          v60 = 12;
          while (*(v56 + v60))
          {
            ++v54;
            v60 += 96;
            if (v59 == v54)
            {
              goto LABEL_106;
            }
          }
        }
      }

      else
      {
        v56 = *(v51 + 328);
        v55 = *(v51 + 336);
      }

      *(a7 + 316) = v54;
      if (v53)
      {
        v61 = *(a5 + 60);
      }

      else
      {
        v61 = 0;
      }

      *(a7 + 312) = v61;
      *(a7 + 324) = *(a5 + 32);
      *(a7 + 320) = *(a5 + 40);
      if (v55 != v56)
      {
        v62 = 0;
        v63 = 0;
        v64 = 12;
        do
        {
          v65 = *(a5 + 112);
          v66 = *(a7 + 344);
          if (v63 >= 0xCCCCCCCCCCCCCCCDLL * ((*(a5 + 120) - v65) >> 3))
          {
            v69 = (v66 + v62);
            v70 = *(a5 + 60);
            if (*(v56 + v64) != 4 && v54 != v63)
            {
              v70 = 1;
            }

            if (!*(a5 + 56))
            {
              v70 = 0;
            }

            v69[2] = v70;
            v69[3] = v54;
            v69[5] = 1;
          }

          else
          {
            v67 = v66 + v62;
            v68 = *(v65 + v62 + 8);
            *(v67 + 17) = *(v65 + v62 + 17);
            *(v67 + 8) = v68;
            v56 = *(v51 + 328);
            v55 = *(v51 + 336);
          }

          ++v63;
          v62 += 40;
          v64 += 96;
        }

        while (v63 < 0xAAAAAAAAAAAAAAABLL * ((v55 - v56) >> 5));
      }
    }

    *(a7 + 376) = *(a5 + 76);
    result = 0;
    if ((v24 & 1) == 0)
    {
      *(a7 + 24) = *(a7 + 24) & 0xFFFFFFFFFFFFFF5FLL | 0x80;
    }
  }

  return result;
}

uint64_t sub_240B95048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10, __int128 *a11, uint64_t a12, void *a13, uint64_t a14, unint64_t **a15, void *a16)
{
  *a14 = a3;
  if (*(a14 + 4208) == 1)
  {
    sub_240B3CD70((a14 + 8), a8, a9, *(a12 + 64), 0, 0, *(a12 + 12) == 1, 1uLL);
  }

  else
  {
    sub_240B3CC4C(v153, a12);
    v20 = v156;
    *(a14 + 88) = v157;
    v21 = v159;
    *(a14 + 104) = v158;
    *(a14 + 120) = v21;
    *(a14 + 136) = v160;
    v22 = v153[0];
    *(a14 + 24) = v153[1];
    v23 = v155;
    *(a14 + 40) = __p;
    *(a14 + 56) = v23;
    *(a14 + 72) = v20;
    *(a14 + 8) = v22;
  }

  *(a14 + 1256) = a14;
  sub_240B221C8(&v191, *(a14 + 72), *(a14 + 80));
  v24 = v196;
  if (v196)
  {
    return v24;
  }

  v26 = v192;
  v25 = v193;
  v193 = 0;
  v27 = v194;
  v153[0] = v195;
  *(a14 + 152) = v191;
  v28 = *(a14 + 176);
  *(a14 + 168) = v26;
  *(a14 + 176) = v25;
  if (v28)
  {
    atomic_fetch_add(&qword_27E519020, -*(v28 - 24));
    free(*(v28 - 32));
  }

  *(a14 + 184) = v27;
  *(a14 + 192) = v153[0];
  sub_240B3AC2C(&v186, *(a14 + 72), *(a14 + 80));
  v24 = v190;
  if (!v190)
  {
    v122 = a1;
    v29 = v187;
    v30 = v188;
    v188 = 0;
    v31 = v189;
    *(a14 + 1024) = v186;
    *(a14 + 1040) = v29;
    v32 = *(a14 + 1048);
    *(a14 + 1048) = v30;
    if (v32)
    {
      atomic_fetch_add(&qword_27E519020, -*(v32 - 24));
      free(*(v32 - 32));
    }

    *(a14 + 1056) = v31;
    sub_240B22220(&v181, *(a14 + 72), *(a14 + 80));
    v24 = v185;
    if (v185)
    {
      goto LABEL_115;
    }

    v33 = v183;
    v183 = 0;
    v34 = v184;
    *(a14 + 1080) = v182;
    *(a14 + 1064) = v181;
    v35 = *(a14 + 1088);
    *(a14 + 1088) = v33;
    if (v35)
    {
      atomic_fetch_add(&qword_27E519020, -*(v35 - 24));
      free(*(v35 - 32));
    }

    *(a14 + 1096) = v34;
    sub_240B23694(&v169, *(a14 + 8), *(a14 + 16), 1);
    v24 = v180;
    if (v180)
    {
      goto LABEL_112;
    }

    v36 = v172;
    v37 = v175;
    v38 = v171;
    v39 = v170;
    v171 = 0;
    v175 = 0;
    v116 = v176;
    v118 = v37;
    *(a14 + 1104) = v169;
    *(a14 + 1120) = v39;
    sub_240B2453C((a14 + 1128), v38);
    *(a14 + 1136) = v36;
    *(a14 + 1144) = v173;
    *(a14 + 1160) = v174;
    sub_240B2453C((a14 + 1168), v118);
    *(a14 + 1176) = v116;
    *(a14 + 1216) = v179;
    v40 = v177;
    *(a14 + 1200) = v178;
    *(a14 + 1184) = v40;
    *(a14 + 1560) = 393984;
    if (!*(a12 + 12))
    {
      sub_240B245C8((a14 + 1568), 393984 * *(a12 + 112));
    }

    sub_240B22220(&v164, *(a14 + 72), *(a14 + 80));
    v24 = v168;
    if (v168)
    {
LABEL_112:
      sub_240B6701C(&v169);
      if (!v185)
      {
        v86 = v183;
        v183 = 0;
        if (v86)
        {
          atomic_fetch_add(&qword_27E519020, -*(v86 - 24));
          free(*(v86 - 32));
        }
      }

LABEL_115:
      if (!v190)
      {
        v87 = v188;
        v188 = 0;
        if (v87)
        {
          atomic_fetch_add(&qword_27E519020, -*(v87 - 24));
          free(*(v87 - 32));
        }
      }

      goto LABEL_118;
    }

    v41 = v166;
    v166 = 0;
    v42 = v167;
    *(a14 + 1608) = v165;
    *(a14 + 1592) = v164;
    sub_240B2453C((a14 + 1616), v41);
    *(a14 + 1624) = v42;
    sub_240B2A11C(v161, *(a14 + 72), *(a14 + 80));
    v24 = v163;
    if (v163)
    {
LABEL_109:
      if (!v168)
      {
        v85 = v166;
        v166 = 0;
        if (v85)
        {
          atomic_fetch_add(&qword_27E519020, -*(v85 - 24));
          free(*(v85 - 32));
        }
      }

      goto LABEL_112;
    }

    sub_240B2A358(v153, v161);
    sub_240B30D80(a14 + 1632, v153);
    for (i = 13; i != -2; i -= 5)
    {
      sub_240B22320(&v153[0].i64[i]);
    }

    *(a14 + 1752) = a14 + 1632;
    v45 = *(a3 + 328);
    v44 = *(a3 + 336);
    if (v45 == v44)
    {
      v47 = 0;
LABEL_29:
      v111 = 0;
    }

    else
    {
      v46 = *(a3 + 328);
      v47 = v46;
      do
      {
        if (!*(v47 + 12))
        {
          goto LABEL_25;
        }

        v47 += 96;
      }

      while (v47 != v44);
      v47 = 0;
LABEL_25:
      while (*(v46 + 12) != 4)
      {
        v46 += 96;
        if (v46 == v44)
        {
          goto LABEL_29;
        }
      }

      v111 = v46;
    }

    v119 = *(a3 + 320);
    sub_240B9766C(v153, a3 + 48);
    v110 = v47;
    v48 = *(a14 + 4208);
    v49 = *a4;
    v50 = *(a4 + 8);
    v152[0] = a6;
    v152[1] = a7;
    v152[2] = a8;
    v152[3] = a9;
    v51 = v48 == 0;
    v52 = 8;
    if (v51)
    {
      v52 = 0;
    }

    if (a6 >= v52)
    {
      v53 = a6 - v52;
    }

    else
    {
      v53 = 0;
    }

    if (a7 >= v52)
    {
      v54 = a7 - v52;
    }

    else
    {
      v54 = 0;
    }

    if (a8 + a6 + v52 < v49)
    {
      v49 = a8 + a6 + v52;
    }

    v55 = a9 + a7 + v52;
    if (v55 >= v50)
    {
      v55 = v50;
    }

    v108 = v54;
    v109 = v53;
    v115 = v55 - v54;
    v117 = v49 - v53;
    sub_240B2A11C(v149, (v49 - v53 + 7) & 0xFFFFFFF8, (v55 - v54 + 7) & 0xFFFFFFF8);
    v24 = v151;
    if (v151)
    {
LABEL_104:
      v153[0].i64[0] = &unk_2852A1CB8;
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      if (!v163)
      {
        v83 = &v162;
        v84 = -120;
        do
        {
          sub_240B22320(v83);
          v83 -= 5;
          v84 += 40;
        }

        while (v84);
      }

      goto LABEL_109;
    }

    v104 = 0xAAAAAAAAAAAAAAABLL * ((v110 - v45) >> 5);
    v106 = 0xAAAAAAAAAAAAAAABLL * ((v111 - v45) >> 5);
    sub_240B2A358(v148, v149);
    for (j = 0; j != 30; j += 10)
    {
      v57 = &v148[j];
      *v57 = v117;
      v57[1] = v115;
    }

    sub_240B977BC(&v146, v119);
    v58 = v146;
    v113 = v147;
    if (v146 != v147)
    {
      while (1)
      {
        sub_240B23590(&v130, v117, v115);
        v24 = v134;
        if (v134)
        {
          goto LABEL_99;
        }

        v59 = v132;
        v120 = v133;
        v132 = 0;
        *v58 = v130;
        *(v58 + 16) = v131;
        v60 = v58 + 24;
        sub_240B2453C((v58 + 24), v59);
        *(v58 + 32) = v120;
        if (!v134)
        {
          v61 = v132;
          v132 = 0;
          if (v61)
          {
            atomic_fetch_add(&qword_27E519020, -*(v61 - 3));
            free(*(v61 - 4));
          }
        }

        v58 += 40;
        if (v60 + 16 == v113)
        {
          v58 = v146;
          break;
        }
      }
    }

    v114 = v58 + 40 * v104;
    if (v110)
    {
      v62 = (v58 + 40 * v104);
    }

    else
    {
      v62 = 0;
    }

    if (v111)
    {
      v63 = v58 + 40 * v106;
    }

    else
    {
      v63 = 0;
    }

    v145 = 0;
    v64 = nullsub_31;
    v65 = sub_240BA2AE8;
    v66 = sub_240BA2B1C;
    v67 = sub_240BA2B3C;
    v68 = sub_240BA2B68;
    if (*(a4 + 64) == 1)
    {
      v69 = *(a4 + 16);
      v68 = *(a4 + 24);
      v67 = *(a4 + 32);
      v66 = *(a4 + 40);
      v65 = *(a4 + 48);
      v64 = *(a4 + 56);
    }

    else
    {
      v69 = a4;
    }

    v121 = v62;
    v112 = v63;
    if (*(a4 + 368))
    {
      v70 = 0;
    }

    else
    {
      *&v130 = v69;
      *(&v130 + 1) = v68;
      v102 = v68;
      v103 = v67;
      v131 = v67;
      v132 = v66;
      v105 = v66;
      v107 = v65;
      v133 = v65;
      v134 = v64;
      v71 = v64;
      *&v137 = v109;
      *(&v137 + 1) = v108;
      *&v138 = v117;
      *(&v138 + 1) = v115;
      v24 = sub_240B97884(&v130, &v137, a2, a3, a11, v148, v62, &v145);
      if (v24)
      {
        goto LABEL_99;
      }

      v70 = v145;
      v64 = v71;
      v66 = v105;
      v65 = v107;
      v68 = v102;
      v67 = v103;
    }

    *&v130 = v69;
    *(&v130 + 1) = v68;
    v131 = v67;
    v132 = v66;
    v133 = v65;
    v134 = v64;
    *&v137 = v109;
    *(&v137 + 1) = v108;
    *&v138 = v117;
    *(&v138 + 1) = v115;
    v24 = sub_240B97B7C(&v130, &v137, a2, a3, v70, a11, &v146);
    if (v24)
    {
      goto LABEL_99;
    }

    *(a14 + 1256) = a14;
    sub_240B91460(a14 + 4544, v122);
    v72 = 0;
    v144 = 0;
    v73 = 0;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v137 = 0u;
    v74 = a5;
    if (!a5)
    {
      if (*(a12 + 32) || *(a2 + 1) != 1)
      {
        v72 = 0;
      }

      else
      {
        v72 = 0;
        if (!*(a12 + 12) && *(v122 + 48) <= 2)
        {
          sub_240B2A11C(&v130, v117, v115);
          v24 = v136;
          if (v136)
          {
            goto LABEL_97;
          }

          sub_240B2A358(&v127, &v130);
          sub_240B30D80(&v137, &v127);
          for (k = 104; k != -16; k -= 40)
          {
            sub_240B22320((&v127 + k));
          }

          if (!v136)
          {
            v76 = &v135;
            v77 = -120;
            do
            {
              sub_240B22320(v76);
              v76 -= 5;
              v77 += 40;
            }

            while (v77);
          }

          v72 = &v137;
        }

        sub_240BC1D58(v153, v112, a11, v148, a10, v72, *(a3 + 300));
      }

      if (*(v122 + 68) == 1)
      {
        v78 = sub_240B97DD0(v122);
      }

      else
      {
        v78 = 0;
      }

      if (v121)
      {
        if ((*(v110 + 72) & 1) == 0 && !*(a12 + 16) && !*(v122 + 116) && *(v122 + 384) == *(v122 + 380))
        {
          sub_240B97E30(v148, *(v114 + 16), *(v114 + 24), v78);
          if (v72)
          {
            sub_240B97E30(v72, *(v114 + 16), *(v114 + 24), v78);
          }
        }
      }

      sub_240C105C8(v148, v73);
      v74 = 0;
    }

    v127 = a6 - v109;
    v128 = a7 - v108;
    *&v129 = (a8 + 7) & 0xFFFFFFFFFFFFFFF8;
    *(&v129 + 1) = (a9 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (!v74 && (*(a14 + 4209) & 1) != 0)
    {
      sub_240B98048(v122, v148, &v127, a12);
    }

    sub_240B98344(v122, *(a14 + 4208), v74 != 0, v148, *(a14 + 8), *(a14 + 16), a12, (a14 + 1224));
    v24 = sub_240B99108(*(v122 + 48), *(v122 + 388), a12, v74 != 0, v148);
    if (!v24)
    {
      if (*(v122 + 384) != 1 && (*(v122 + 388) & 1) == 0)
      {
        v90 = v146;
        v91 = v147;
        if (v146 != v147)
        {
          do
          {
            sub_240C107A4(&v130, v90, *(v122 + 384));
            v24 = v134;
            if (v134)
            {
              goto LABEL_97;
            }

            v92 = v132;
            v93 = v133;
            v132 = 0;
            *v90 = v130;
            *(v90 + 16) = v131;
            v94 = v90 + 24;
            sub_240B2453C((v90 + 24), v92);
            *(v90 + 32) = v93;
            if (!v134)
            {
              v95 = v132;
              v132 = 0;
              if (v95)
              {
                atomic_fetch_add(&qword_27E519020, -*(v95 - 3));
                free(*(v95 - 4));
              }
            }

            v90 += 40;
          }

          while (v94 + 16 != v91);
        }
      }

      if ((*(a14 + 4208) & 1) == 0)
      {
        v127 = 0;
        v128 = 0;
        *&v96 = v148[0];
        *(&v96 + 1) = v148[1];
        v129 = v96;
      }

      v97 = v122;
      if (*(a12 + 12))
      {
        goto LABEL_161;
      }

      sub_240B9A67C((a14 + 5184), *(a14 + 4272));
      v99 = *(a14 + 5184);
      v100 = *(a14 + 5192);
      while (v99 != v100)
      {
        sub_240B81C8C(v99, *(a14 + 120));
        v99 += 22;
      }

      v101 = a5 ? sub_240B9A990(a5, a12, a11, a13, a14) : sub_240B9BD9C(a12, v72, v148, &v127, a10, a11, a13, a14, a16);
      v97 = v122;
      v24 = v101;
      if (!v101)
      {
        sub_240B9D414(a14, (a14 + 8));
        if ((*(a14 + 4208) & 1) == 0)
        {
          *(a14 + 4200) = 1;
          sub_240B38D70((a14 + 5208), *(a14 + 120));
        }

        v24 = sub_240B9DD94(a12, a11, a14);
        if (!v24)
        {
LABEL_161:
          if ((*(v97 + 68) & 1) == 0 && v146 == v147 || (v24 = sub_240BAF358(a13, a12, a3, v148, &v146, &v127, (a14 + 8), v152, a14, a10, a11, a16, *(v97 + 68)), !v24))
          {
            if (*(a14 + 4208))
            {
              goto LABEL_137;
            }

            if (*(v122 + 48) >= 1 && sub_240B97DD0(v122) && !*(v122 + 352) && *(v122 + 464) == *(v122 + 472) || (v24 = sub_240BB3E4C(a13, a11), !v24) && (v24 = sub_240BB686C(a13, a11), !v24))
            {
              *(a12 + 24) = *(a12 + 24) & 0xFFFFFFFFFFFFFFEDLL | (2 * (*(a14 + 1264) != *(a14 + 1272))) | (16 * (*(a14 + 1440) != *(a14 + 1448)));
LABEL_137:
              v24 = sub_240B9DE54(a12, a14, a13, a11, a15, a16);
              if (!v24)
              {
                if (*(a14 + 4208) == 1)
                {
                  v98 = *(a14 + 4216);
                  LODWORD(v130) = 1;
                  *(&v130 + 1) = 0;
                  v131 = v98;
                  v132 = 0;
                  sub_240BB6E50(a13, &v130);
                  LODWORD(v130) = 3;
                  *(&v130 + 1) = 0;
                  v131 = v98;
                  v132 = 0;
                  sub_240BB6E50(a13, &v130);
                  sub_240BB6F50(a13);
                }

                v24 = 0;
              }
            }
          }
        }
      }
    }

LABEL_97:
    for (m = 104; m != -16; m -= 40)
    {
      sub_240B22320((&v137 + m));
    }

LABEL_99:
    *&v130 = &v146;
    sub_240B30C38(&v130);
    for (n = 26; n != -4; n -= 10)
    {
      sub_240B22320(&v148[n]);
    }

    if (!v151)
    {
      v81 = &v150;
      v82 = -120;
      do
      {
        sub_240B22320(v81);
        v81 -= 5;
        v82 += 40;
      }

      while (v82);
    }

    goto LABEL_104;
  }

LABEL_118:
  if (!v196)
  {
    v88 = v193;
    v193 = 0;
    if (v88)
    {
      atomic_fetch_add(&qword_27E519020, -*(v88 - 24));
      free(*(v88 - 32));
    }
  }

  return v24;
}