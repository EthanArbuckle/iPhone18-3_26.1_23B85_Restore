uint64_t sub_23942DD04(uint64_t a1)
{
  sub_23942DB64(a1);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  return 1;
}

uint64_t sub_23942DD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, int a6)
{
  if (a6 == -1)
  {
    v10 = *(a1 + 28);
  }

  else
  {
    v10 = a6 != 0;
    *(a1 + 28) = v10;
  }

  v11 = *a1;
  if (!a2)
  {
    if (v11)
    {
      goto LABEL_16;
    }

    v14 = 114;
    v15 = 183;
    goto LABEL_26;
  }

  if (v11)
  {
    sub_23942DB64(a1);
    *(a1 + 28) = v10;
  }

  *a1 = a2;
  v12 = *(a2 + 16);
  if (v12)
  {
    result = sub_23945004C(v12);
    *(a1 + 16) = result;
    if (!result)
    {
      *a1 = 0;
      return result;
    }

    v11 = *a1;
  }

  else
  {
    *(a1 + 16) = 0;
    v11 = a2;
  }

  *(a1 + 24) = *(a2 + 8);
  *(a1 + 32) = 0;
  if ((*(v11 + 21) & 2) != 0)
  {
    if (sub_23942DF3C(a1))
    {
      v11 = *a1;
      goto LABEL_16;
    }

    *a1 = 0;
    v14 = 107;
    v15 = 178;
LABEL_26:
    sub_2394170F4(30, 0, v14, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/cipher/cipher.c", v15);
    return 0;
  }

LABEL_16:
  v16 = *(v11 + 20);
  if ((v16 & 0x100) != 0)
  {
    goto LABEL_35;
  }

  result = 0;
  v17 = v16 & 0x3F;
  if (v17 > 2)
  {
    if ((v17 - 4) < 2)
    {
      *(a1 + 104) = 0;
      if (!a5)
      {
        goto LABEL_35;
      }

      v18 = sub_23942DFE4(a1);
      if (!v18)
      {
        goto LABEL_35;
      }

      v19 = v18;
      v20 = (a1 + 52);
      v21 = a5;
      goto LABEL_34;
    }

    if (v17 != 3)
    {
      return result;
    }

    *(a1 + 104) = 0;
  }

  else if (v17 < 2)
  {
    goto LABEL_35;
  }

  if (a5)
  {
    v22 = sub_23942DFE4(a1);
    if (v22)
    {
      memcpy((a1 + 36), a5, v22);
    }
  }

  v23 = sub_23942DFE4(a1);
  if (!v23)
  {
    goto LABEL_35;
  }

  v19 = v23;
  v20 = (a1 + 52);
  v21 = (a1 + 36);
LABEL_34:
  memcpy(v20, v21, v19);
LABEL_35:
  v24 = *a1;
  if (!a4 && (*(v24 + 20) & 0x80) == 0 || (result = (*(v24 + 24))(a1, a4, a5, v10), result))
  {
    *(a1 + 100) = 0;
    *(a1 + 108) = 0;
    result = 1;
    *(a1 + 144) = 0;
  }

  return result;
}

uint64_t sub_23942DF3C(uint64_t a1)
{
  if (*a1)
  {
    v1 = *(*a1 + 48);
    if (v1)
    {
      result = v1();
      if (result != -1)
      {
        return result;
      }

      v3 = 105;
      v4 = 631;
    }

    else
    {
      v3 = 104;
      v4 = 625;
    }
  }

  else
  {
    v3 = 114;
    v4 = 620;
  }

  sub_2394170F4(30, 0, v3, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/cipher/cipher.c", v4);
  return 0;
}

uint64_t sub_23942DFE4(uint64_t a1)
{
  v1 = *a1;
  if ((*(*a1 + 20) & 0x3F) == 6)
  {
    if (sub_23942DF3C(a1) == 1)
    {
      return 0;
    }

    v1 = *a1;
  }

  return *(v1 + 12);
}

uint64_t sub_23942E05C(int *a1, uint64_t a2, int *a3, char *__src, size_t __n)
{
  if (a1[36])
  {
    v5 = 66;
    v6 = 259;
LABEL_13:
    sub_2394170F4(30, 0, v5, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/cipher/cipher.c", v6);
    return 0;
  }

  v7 = __n;
  a1[36] = 1;
  v9 = *a1;
  v10 = *(*a1 + 4);
  if (v10 >= 2 && (v10 ^ 0x7FFFFFFF) < __n)
  {
    v5 = 69;
    v6 = 271;
    goto LABEL_13;
  }

  v12 = __src;
  v14 = a2;
  if ((*(v9 + 21) & 4) != 0)
  {
    v20 = (*(v9 + 32))(a1, a2, __src, __n);
    if (v20 < 0)
    {
      return 0;
    }

    *a3 = v20;
    goto LABEL_34;
  }

  if (__n <= 0)
  {
    *a3 = 0;
    if (__n)
    {
      return 0;
    }

    goto LABEL_34;
  }

  v15 = a1[25];
  if (!v15)
  {
    if (((v10 + 0x7FFFFFFF) & __n) != 0)
    {
      v10 = 0;
      goto LABEL_26;
    }

    result = (*(v9 + 32))(a1, a2, __src, __n);
    if (!result)
    {
      *a3 = 0;
      return result;
    }

    *a3 = v7;
LABEL_34:
    a1[36] = 0;
    return 1;
  }

  v16 = v10 - v15;
  v17 = a1 + 17;
  v18 = __n - (v10 - v15);
  if (__n < v10 - v15)
  {
    memcpy(v17 + v15, __src, __n);
    a1[25] += v7;
    *a3 = 0;
    goto LABEL_34;
  }

  v21 = v16;
  if (v10 != v15)
  {
    memcpy(v17 + v15, __src, v16);
    v9 = *a1;
  }

  result = (*(v9 + 32))(a1, v14, a1 + 17, v10);
  if (!result)
  {
    return result;
  }

  v12 += v21;
  v14 += v10;
  v7 = v18;
LABEL_26:
  *a3 = v10;
  v22 = (*(*a1 + 4) - 1) & v7;
  v23 = (v7 - v22);
  if (v23 < 1)
  {
LABEL_29:
    if (v22)
    {
      memcpy(a1 + 17, &v12[v23], v22);
    }

    a1[25] = v22;
    goto LABEL_34;
  }

  result = (*(*a1 + 32))(a1, v14, v12, v23);
  if (result)
  {
    *a3 += v23;
    goto LABEL_29;
  }

  return result;
}

uint64_t sub_23942E288(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  if (*(a1 + 36))
  {
    v3 = 66;
    v4 = 352;
LABEL_3:
    sub_2394170F4(30, 0, v3, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/cipher/cipher.c", v4);
    return 0;
  }

  v9 = *a1;
  if ((*(*a1 + 21) & 4) != 0)
  {
    v11 = (*(v9 + 32))(a1, a2, 0, 0);
    if (v11 < 0)
    {
      return 0;
    }

    *a3 = v11;
    return 1;
  }

  v10 = *(v9 + 4);
  if (v10 == 1)
  {
    goto LABEL_7;
  }

  v12 = *(a1 + 25);
  if ((*(a1 + 33) & 8) != 0)
  {
    if (v12)
    {
      v3 = 106;
      v4 = 378;
      goto LABEL_3;
    }

LABEL_7:
    *a3 = 0;
    return 1;
  }

  if (v10 > v12)
  {
    memset(a1 + v12 + 68, v10 - v12, (v10 + ~v12) + 1);
  }

  result = (*(v9 + 32))(a1, a2, a1 + 68, v10);
  if (result)
  {
    *a3 = v10;
    return 1;
  }

  return result;
}

uint64_t sub_23942E3A4(int *a1, void *a2, int *a3, char *__src, size_t __n)
{
  if (a1[36])
  {
    v5 = 66;
    v6 = 402;
LABEL_21:
    sub_2394170F4(30, 0, v5, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/cipher/cipher.c", v6);
    return 0;
  }

  v9 = *a1;
  v10 = *(*a1 + 4);
  if (v10 >= 2 && (v10 ^ 0x7FFFFFFF) < __n)
  {
    v5 = 69;
    v6 = 410;
    goto LABEL_21;
  }

  v14 = a2;
  if ((*(v9 + 21) & 4) != 0)
  {
    v17 = (*(v9 + 32))(a1, a2, __src, __n);
    v18 = v17 & ~(v17 >> 31);
    result = v17 >= 0;
    *a3 = v18;
    return result;
  }

  if (__n <= 0)
  {
    *a3 = 0;
    return __n == 0;
  }

  if ((*(a1 + 33) & 8) != 0)
  {

    return sub_23942E05C(a1, a2, a3, __src, __n);
  }

  else
  {
    v15 = a1[27];
    if (v15)
    {
      if (v10)
      {
        memcpy(a2, a1 + 28, v10);
      }

      v14 += v10;
    }

    result = sub_23942E05C(a1, v14, a3, __src, __n);
    if (result)
    {
      if (v10 < 2 || a1[25])
      {
        a1[27] = 0;
        if (!v15)
        {
          return 1;
        }
      }

      else
      {
        *a3 -= v10;
        a1[27] = 1;
        memcpy(a1 + 28, (v14 + *a3), v10);
        if (!v15)
        {
          return 1;
        }
      }

      *a3 += v10;
      return 1;
    }
  }

  return result;
}

uint64_t sub_23942E56C(uint64_t *a1, _BYTE *a2, _DWORD *a3)
{
  *a3 = 0;
  if (*(a1 + 36))
  {
    v3 = 66;
    v4 = 469;
LABEL_3:
    sub_2394170F4(30, 0, v3, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/cipher/cipher.c", v4);
    return 0;
  }

  v7 = *a1;
  if ((*(*a1 + 21) & 4) != 0)
  {
    v9 = (*(v7 + 32))();
    if (v9 < 0)
    {
      return 0;
    }

    *a3 = v9;
  }

  else if ((*(a1 + 33) & 8) != 0)
  {
    if (*(a1 + 25))
    {
      v3 = 106;
      v4 = 486;
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *(v7 + 4);
    if (v8 >= 2)
    {
      if (*(a1 + 25) || !*(a1 + 27))
      {
        v3 = 123;
        v4 = 495;
        goto LABEL_3;
      }

      v10 = (a1 + 14);
      v11 = v8 - 1;
      v12 = *(a1 + v8 + 111);
      if (*(a1 + v8 + 111))
      {
        v13 = v8 < v12;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        v3 = 101;
        v4 = 504;
        goto LABEL_3;
      }

      v14 = *(a1 + v11 + 112);
      do
      {
        if (v10[v11] != v12)
        {
          v3 = 101;
          v4 = 510;
          goto LABEL_3;
        }

        --v11;
        --v14;
      }

      while (v14);
      v15 = v8 - v12;
      if (v15 >= 1)
      {
        v16 = v15;
        do
        {
          v17 = *v10++;
          *a2++ = v17;
          --v16;
        }

        while (v16);
      }

      *a3 = v15;
    }
  }

  return 1;
}

uint64_t sub_23942E6E8(int *a1, uint64_t a2, int *a3, char *__src, size_t __n)
{
  if (a1[7])
  {
    return sub_23942E05C(a1, a2, a3, __src, __n);
  }

  else
  {
    return sub_23942E3A4(a1, a2, a3, __src, __n);
  }
}

uint64_t sub_23942E6F8(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  if (*(a1 + 7))
  {
    return sub_23942E288(a1, a2, a3);
  }

  else
  {
    return sub_23942E56C(a1, a2, a3);
  }
}

uint64_t sub_23942E74C(_DWORD *a1, int a2)
{
  if (a1[6] != a2)
  {
    if (!a2 || (*(*a1 + 20) & 0x40) == 0)
    {
      sub_2394170F4(30, 0, 110, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/cipher/cipher.c", 653);
      return 0;
    }

    a1[6] = a2;
  }

  return 1;
}

uint64_t sub_23942E7C0(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, int a5)
{
  if (a2)
  {
    *(a1 + 144) = 0;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return sub_23942DD48(a1, a2, a3, a3, a4, a5);
}

uint64_t sub_23942E7F0(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  if (a2)
  {
    *(a1 + 144) = 0;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return sub_23942DD48(a1, a2, a3, a3, a4, 1);
}

uint64_t sub_23942E820(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  if (a2)
  {
    *(a1 + 144) = 0;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return sub_23942DD48(a1, a2, a3, a3, a4, 0);
}

uint64_t *(*sub_23942E85C(uint64_t a1, uint64_t a2, uint64_t *(**a3)(uint64_t a1, uint64_t a2, uint64_t a3), _OWORD *a4, int a5))(uint64_t *result, uint64_t a2, unint64_t a3, uint64_t a4, _OWORD *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  sub_23941F384(a4, 8 * a5, a1);
  if (a2)
  {
    *(a2 + 256) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 272) = sub_23941F1D4;
    v13 = 0;
    v14 = 0;
    sub_23941F1D4(&v13, &v13, a1);
    v8 = bswap64(v13);
    *(&v10 + 1) = v8;
    *&v10 = bswap64(v14);
    v9 = v10 >> 63;
    *(&v10 + 1) = v10;
    *&v10 = v8;
    *a2 = (v8 >> 63) & 0xC200000000000000 ^ v9;
    *(a2 + 8) = v10 >> 63;
    *(a2 + 256) = sub_23943C85C;
    *(a2 + 264) = sub_23943C8D8;
    *(a2 + 280) &= ~1u;
  }

  if (a3)
  {
    *a3 = sub_23941F1D4;
  }

  v11 = *MEMORY[0x277D85DE8];
  return sub_23941FF90;
}

uint64_t sub_23942E994(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t *, unint64_t *, uint64_t))
{
  v11 = *MEMORY[0x277D85DE8];
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 272) = a3;
  v9 = 0;
  v10 = 0;
  result = a3(&v9, &v9, a2);
  v5 = bswap64(v9);
  *(&v7 + 1) = v5;
  *&v7 = bswap64(v10);
  v6 = v7 >> 63;
  *(&v7 + 1) = v7;
  *&v7 = v5;
  *a1 = (v5 >> 63) & 0xC200000000000000 ^ v6;
  *(a1 + 8) = v7 >> 63;
  *(a1 + 256) = sub_23943C85C;
  *(a1 + 264) = sub_23943C8D8;
  *(a1 + 280) &= ~1u;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_23942EAB4()
{
  unk_27DF77838 = 0u;
  xmmword_27DF77810 = xmmword_2395CA8B0;
  *&result = 0x200000108;
  qword_27DF77820 = 0x200000108;
  qword_27DF77828 = sub_239447C68;
  qword_27DF77830 = sub_239447D20;
  return result;
}

double sub_23942EB3C()
{
  unk_27DF77878 = 0u;
  xmmword_27DF77850 = xmmword_2395CA8C0;
  *&result = 0x500000108;
  qword_27DF77860 = 0x500000108;
  qword_27DF77868 = sub_239447C68;
  qword_27DF77870 = sub_239447D84;
  return result;
}

double sub_23942EBC4()
{
  unk_27DF778B8 = 0u;
  xmmword_27DF77890 = xmmword_2395CA8D0;
  *&result = 0x400000108;
  qword_27DF778A0 = 0x400000108;
  qword_27DF778A8 = sub_239447C68;
  qword_27DF778B0 = sub_239447DE4;
  return result;
}

double sub_23942EC4C()
{
  xmmword_27DF778D0 = xmmword_2395CA8E0;
  *&result = 0x1F86000002A8;
  qword_27DF778E0 = 0x1F86000002A8;
  qword_27DF778E8 = sub_239447E1C;
  qword_27DF778F0 = sub_239447F3C;
  qword_27DF778F8 = sub_23944805C;
  qword_27DF77900 = sub_2394480C0;
  return result;
}

double sub_23942ECE8()
{
  unk_27DF77938 = 0u;
  xmmword_27DF77910 = xmmword_2395CA8F0;
  *&result = 0x200000108;
  qword_27DF77920 = 0x200000108;
  qword_27DF77928 = sub_239447C68;
  qword_27DF77930 = sub_239447D20;
  return result;
}

double sub_23942ED70()
{
  unk_27DF77978 = 0u;
  xmmword_27DF77950 = xmmword_2395CA900;
  *&result = 0x500000108;
  qword_27DF77960 = 0x500000108;
  qword_27DF77968 = sub_239447C68;
  qword_27DF77970 = sub_239447D84;
  return result;
}

double sub_23942EDF8()
{
  unk_27DF779B8 = 0u;
  xmmword_27DF77990 = xmmword_2395CA910;
  *&result = 0x400000108;
  qword_27DF779A0 = 0x400000108;
  qword_27DF779A8 = sub_239447C68;
  qword_27DF779B0 = sub_239447DE4;
  return result;
}

double sub_23942EE80()
{
  xmmword_27DF779D0 = xmmword_2395CA920;
  *&result = 0x1F86000002A8;
  qword_27DF779E0 = 0x1F86000002A8;
  qword_27DF779E8 = sub_239447E1C;
  qword_27DF779F0 = sub_239447F3C;
  qword_27DF779F8 = sub_23944805C;
  qword_27DF77A00 = sub_2394480C0;
  return result;
}

double sub_23942EF1C()
{
  unk_27DF77A38 = 0u;
  xmmword_27DF77A10 = xmmword_2395CA930;
  *&result = 0x200000108;
  qword_27DF77A20 = 0x200000108;
  qword_27DF77A28 = sub_239447C68;
  qword_27DF77A30 = sub_239447D20;
  return result;
}

double sub_23942EFA4()
{
  unk_27DF77A78 = 0u;
  xmmword_27DF77A50 = xmmword_2395CA940;
  *&result = 0x500000108;
  qword_27DF77A60 = 0x500000108;
  qword_27DF77A68 = sub_239447C68;
  qword_27DF77A70 = sub_239447D84;
  return result;
}

double sub_23942F02C()
{
  unk_27DF77AB8 = 0u;
  xmmword_27DF77A90 = xmmword_2395CA950;
  *&result = 0x400000108;
  qword_27DF77AA0 = 0x400000108;
  qword_27DF77AA8 = sub_239447C68;
  qword_27DF77AB0 = sub_239447DE4;
  return result;
}

double sub_23942F0B4()
{
  xmmword_27DF77AD0 = xmmword_2395CA960;
  *&result = 0x1F86000002A8;
  qword_27DF77AE0 = 0x1F86000002A8;
  qword_27DF77AE8 = sub_239447E1C;
  qword_27DF77AF0 = sub_239447F3C;
  qword_27DF77AF8 = sub_23944805C;
  qword_27DF77B00 = sub_2394480C0;
  return result;
}

double sub_23942F1F8()
{
  xmmword_27DF77BC0 = 0u;
  unk_27DF77BD0 = 0u;
  xmmword_27DF77BE0 = 0u;
  qword_27DF77BF0 = 0;
  *&result = 269487120;
  dword_27DF77BB0 = 269487120;
  dword_27DF77BB4 = 1;
  qword_27DF77BB8 = sub_239448574;
  *(&xmmword_27DF77BC0 + 1) = nullsub_847;
  qword_27DF77BD8 = sub_2394485CC;
  *&xmmword_27DF77BE0 = sub_239448604;
  return result;
}

double sub_23942F2A0()
{
  xmmword_27DF77C08 = 0u;
  unk_27DF77C18 = 0u;
  xmmword_27DF77C28 = 0u;
  qword_27DF77C38 = 0;
  *&result = 269487128;
  dword_27DF77BF8 = 269487128;
  dword_27DF77BFC = 1;
  qword_27DF77C00 = sub_239448574;
  *(&xmmword_27DF77C08 + 1) = nullsub_847;
  qword_27DF77C20 = sub_2394485CC;
  *&xmmword_27DF77C28 = sub_239448604;
  return result;
}

double sub_23942F348()
{
  xmmword_27DF77C50 = 0u;
  unk_27DF77C60 = 0u;
  xmmword_27DF77C70 = 0u;
  qword_27DF77C80 = 0;
  *&result = 269487136;
  dword_27DF77C40 = 269487136;
  dword_27DF77C44 = 1;
  qword_27DF77C48 = sub_239448574;
  *(&xmmword_27DF77C50 + 1) = nullsub_847;
  qword_27DF77C68 = sub_2394485CC;
  *&xmmword_27DF77C70 = sub_239448604;
  return result;
}

double sub_23942F3F0()
{
  xmmword_27DF77C98 = 0u;
  unk_27DF77CA8 = 0u;
  xmmword_27DF77CB8 = 0u;
  qword_27DF77CC8 = 0;
  *&result = 471597072;
  dword_27DF77C88 = 471597072;
  dword_27DF77C8C = 1;
  qword_27DF77C90 = sub_239448B00;
  *(&xmmword_27DF77C98 + 1) = nullsub_847;
  qword_27DF77CB0 = sub_239448B94;
  *&xmmword_27DF77CB8 = sub_239448CF4;
  return result;
}

double sub_23942F498()
{
  xmmword_27DF77CE0 = 0u;
  unk_27DF77CF0 = 0u;
  xmmword_27DF77D00 = 0u;
  qword_27DF77D10 = 0;
  *&result = 471597088;
  dword_27DF77CD0 = 471597088;
  dword_27DF77CD4 = 1;
  qword_27DF77CD8 = sub_239448B00;
  *(&xmmword_27DF77CE0 + 1) = nullsub_847;
  qword_27DF77CF8 = sub_239448B94;
  *&xmmword_27DF77D00 = sub_239448CF4;
  return result;
}

double sub_23942F540()
{
  xmmword_27DF77D28 = 0u;
  unk_27DF77D38 = 0u;
  xmmword_27DF77D48 = 0u;
  qword_27DF77D58 = 0;
  *&result = 269487120;
  dword_27DF77D18 = 269487120;
  dword_27DF77D1C = 1;
  qword_27DF77D20 = sub_239448D84;
  *(&xmmword_27DF77D28 + 1) = nullsub_847;
  qword_27DF77D40 = sub_239448DDC;
  *&xmmword_27DF77D48 = sub_239448604;
  return result;
}

double sub_23942F5E8()
{
  xmmword_27DF77D70 = 0u;
  unk_27DF77D80 = 0u;
  xmmword_27DF77D90 = 0u;
  qword_27DF77DA0 = 0;
  *&result = 269487136;
  dword_27DF77D60 = 269487136;
  dword_27DF77D64 = 1;
  qword_27DF77D68 = sub_239448D84;
  *(&xmmword_27DF77D70 + 1) = nullsub_847;
  qword_27DF77D88 = sub_239448DDC;
  *&xmmword_27DF77D90 = sub_239448604;
  return result;
}

double sub_23942F690()
{
  xmmword_27DF77DB8 = 0u;
  unk_27DF77DC8 = 0u;
  xmmword_27DF77DD8 = 0u;
  qword_27DF77DE8 = 0;
  *&result = 269487120;
  dword_27DF77DA8 = 269487120;
  dword_27DF77DAC = 1;
  qword_27DF77DB0 = sub_239448E8C;
  *(&xmmword_27DF77DB8 + 1) = nullsub_847;
  qword_27DF77DD0 = sub_239448EEC;
  *&xmmword_27DF77DD8 = sub_239448604;
  return result;
}

double sub_23942F738()
{
  xmmword_27DF77E00 = 0u;
  unk_27DF77E10 = 0u;
  xmmword_27DF77E20 = 0u;
  qword_27DF77E30 = 0;
  *&result = 269487136;
  dword_27DF77DF0 = 269487136;
  dword_27DF77DF4 = 1;
  qword_27DF77DF8 = sub_239448E8C;
  *(&xmmword_27DF77E00 + 1) = nullsub_847;
  qword_27DF77E18 = sub_239448EEC;
  *&xmmword_27DF77E20 = sub_239448604;
  return result;
}

double sub_23942F7E0()
{
  xmmword_27DF77E38 = 0u;
  *algn_27DF77E48 = 0u;
  xmmword_27DF77E58 = 0u;
  *&qword_27DF77E68 = 0u;
  qword_27DF77E78 = 0;
  *&result = 67374352;
  LODWORD(xmmword_27DF77E38) = 67374352;
  *(&xmmword_27DF77E38 + 1) = sub_239448FBC;
  qword_27DF77E50 = nullsub_848;
  *(&xmmword_27DF77E58 + 1) = sub_239448FC8;
  qword_27DF77E68 = sub_239449174;
  return result;
}

double sub_23942F880()
{
  xmmword_27DF77E80 = 0u;
  unk_27DF77E90 = 0u;
  xmmword_27DF77EA0 = 0u;
  *&qword_27DF77EB0 = 0u;
  qword_27DF77EC0 = 0;
  *&result = 134745360;
  LODWORD(xmmword_27DF77E80) = 134745360;
  *(&xmmword_27DF77E80 + 1) = sub_2394498F0;
  qword_27DF77E98 = nullsub_848;
  *(&xmmword_27DF77EA0 + 1) = sub_239448FC8;
  qword_27DF77EB0 = sub_239449174;
  return result;
}

double sub_23942F920()
{
  xmmword_27DF77EC8 = 0u;
  *algn_27DF77ED8 = 0u;
  xmmword_27DF77EE8 = 0u;
  *&qword_27DF77EF8 = 0u;
  qword_27DF77F08 = 0;
  *&result = 269487376;
  LODWORD(xmmword_27DF77EC8) = 269487376;
  *(&xmmword_27DF77EC8 + 1) = sub_2394498F8;
  qword_27DF77EE0 = nullsub_848;
  *(&xmmword_27DF77EE8 + 1) = sub_239448FC8;
  qword_27DF77EF8 = sub_239449174;
  return result;
}

BOOL sub_23942F988(_BYTE *a1, uint64_t a2, uint64_t a3, char *a4, size_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a3 == 32)
  {
    sub_239457D80(&stru_27DF76AB8, sub_23942EF1C);
    v10 = &xmmword_27DF77A10;
  }

  else
  {
    if (a3 != 16)
    {
      v11 = 0;
      goto LABEL_11;
    }

    sub_239457D80(&stru_27DF76A38, sub_23942EAB4);
    v10 = &xmmword_27DF77810;
  }

  memset(v15, 0, sizeof(v15));
  v11 = sub_23942FAD8(v15, a2, a3, v10) && sub_23942FCD8(v15, a4, a5) && sub_23942FE00(v15, a1, &v14) != 0;
  sub_23942FEEC(v15);
LABEL_11:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_23942FAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = *(a4 + 4);
  v5 = v4 == 16 || v4 == 8;
  if (v5 && *(a4 + 8) == a3)
  {
    result = sub_23942DD48(a1, a4, a3, a2, &unk_2395CAC84, 1);
    if (result)
    {
      result = (*(*a1 + 32))(a1, v34, &unk_2395CAC84, v4);
      if (result)
      {
        result = sub_23942DD48(a1, 0, v8, 0, &unk_2395CAC84, 1);
        if (result)
        {
          v9 = a1 + 152;
          v10 = v34[0];
          if (v4 == 16)
          {
            v11 = 0;
            v12 = v34[0];
            do
            {
              v13 = v34[v11 + 1];
              HIDWORD(v14) = v12;
              LODWORD(v14) = v13 << 24;
              *(v9 + v11) = v14 >> 31;
              v12 = v13;
              ++v11;
            }

            while (v11 != 15);
            v15 = (v10 >> 7) & 0xFFFFFF87 ^ (2 * v34[15]);
            *(a1 + 167) = v15;
            v16 = (a1 + 168);
            v17 = *(a1 + 152);
            v18 = 15;
            v19 = 183;
            v20 = v17;
            do
            {
              v21 = *(v16 - 15);
              HIDWORD(v22) = v20;
              LODWORD(v22) = v21 << 24;
              *v16++ = v22 >> 31;
              v20 = v21;
              --v18;
            }

            while (v18);
            v23 = -121;
          }

          else
          {
            v25 = 0;
            v26 = v34[0];
            do
            {
              v27 = v34[v25 + 1];
              HIDWORD(v28) = v26;
              LODWORD(v28) = v27 << 24;
              *(v9 + v25) = v28 >> 31;
              v26 = v27;
              ++v25;
            }

            while (v25 != 7);
            v15 = (v10 >> 7) & 0x1B ^ (2 * v34[7]);
            *(a1 + 159) = v15;
            v29 = (a1 + 168);
            v17 = *(a1 + 152);
            v30 = 7;
            v19 = 175;
            v31 = v17;
            do
            {
              v32 = *(v29 - 15);
              HIDWORD(v33) = v31;
              LODWORD(v33) = v32 << 24;
              *v29++ = v33 >> 31;
              v31 = v32;
              --v30;
            }

            while (v30);
            v23 = 27;
          }

          *(a1 + v19) = v23 & (v17 >> 7) ^ (2 * v15);
          *(a1 + 200) = 0;
          result = 1;
        }
      }
    }
  }

  else
  {
    result = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23942FCD8(unsigned int *a1, char *__src, size_t __n)
{
  v3 = __n;
  v4 = __src;
  v12 = *MEMORY[0x277D85DE8];
  v6 = *(*a1 + 4);
  v7 = a1[50];
  if (!v7)
  {
LABEL_12:
    while (v3 > v6)
    {
      result = (*(*a1 + 32))(a1, v11, v4, v6);
      if (!result)
      {
        goto LABEL_17;
      }

      v4 += v6;
      v3 -= v6;
    }

    if (v3)
    {
      memcpy(a1 + 46, v4, v3);
    }

    a1[50] = v3;
    goto LABEL_16;
  }

  if (v6 - v7 >= __n)
  {
    v8 = __n;
  }

  else
  {
    v8 = v6 - v7;
  }

  if (v8)
  {
    memcpy(a1 + v7 + 184, __src, v8);
    LODWORD(v7) = a1[50];
  }

  a1[50] = v7 + v8;
  v3 -= v8;
  if (!v3)
  {
LABEL_16:
    result = 1;
    goto LABEL_17;
  }

  result = (*(*a1 + 32))(a1, v11, a1 + 46, v6);
  if (result)
  {
    v4 += v8;
    goto LABEL_12;
  }

LABEL_17:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23942FE00(unsigned int *a1, _BYTE *a2, void *a3)
{
  v3 = *(*a1 + 4);
  *a3 = v3;
  if (!a2)
  {
    return 1;
  }

  v6 = a1[50];
  if (v6 == v3)
  {
    v7 = 38;
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *(a1 + v6 + 184) = 0x80;
    v9 = a1[50];
    if (v3 != v9 + 1)
    {
      bzero(a1 + v9 + 185, v3 - (v9 + 1));
    }

    v7 = 42;
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  v10 = v3;
  v11 = a1;
  v12 = a2;
  do
  {
    *v12++ = LOBYTE(v11[v7]) ^ *(v11 + 184);
    v11 = (v11 + 1);
    --v10;
  }

  while (v10);
LABEL_11:
  v13 = *(*a1 + 32);

  return v13(a1, a2, a2, v3);
}

void sub_23942FEEC(uint64_t a1)
{
  sub_23942DB64(a1);
  sub_239450194((a1 + 152), 0x10uLL);
  sub_239450194((a1 + 168), 0x10uLL);

  sub_239450194((a1 + 184), 0x10uLL);
}

double sub_23942FF40()
{
  v0 = sub_23945004C(0xD0uLL);
  if (v0)
  {
    v0[18] = 0;
    result = 0.0;
    *(v0 + 7) = 0u;
    *(v0 + 8) = 0u;
    *(v0 + 5) = 0u;
    *(v0 + 6) = 0u;
    *(v0 + 3) = 0u;
    *(v0 + 4) = 0u;
    *(v0 + 1) = 0u;
    *(v0 + 2) = 0u;
    *v0 = 0u;
  }

  return result;
}

void sub_23942FF7C(void *a1)
{
  if (a1)
  {
    sub_23942FEEC(a1);

    sub_239450144(a1);
  }
}

uint64_t sub_23942FFBC(uint64_t a1, uint64_t a2)
{
  result = sub_23942DC04(a1, a2);
  if (result)
  {
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    return 1;
  }

  return result;
}

uint64_t sub_239430028(uint64_t *a1)
{
  v2 = *a1;
  if (*(v2 + 16) || (v5 = *(v2 + 8), v5 < 1) || (v6 = *v2, (**v2 & 1) == 0) || sub_239422114(v2) > 0x2710)
  {
    v3 = 69;
LABEL_3:
    sub_2394170F4(5, 0, 106, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/dh/check.c", v3);
    return 0;
  }

  v7 = a1[2];
  if (v7 && (*(v7 + 16) || sub_2394228F8(*v7, *(v7 + 8), v6, v5) > 0))
  {
    v3 = 75;
    goto LABEL_3;
  }

  v8 = a1[1];
  if (*(v8 + 16))
  {
    goto LABEL_12;
  }

  v9 = *(v8 + 8);
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = 0;
  v11 = 0;
  v12 = *v8;
  do
  {
    v11 |= v12[v10++];
  }

  while (v9 != v10);
  if (!v11 || (sub_2394228F8(v12, v9, v6, v5) & 0x80000000) == 0)
  {
LABEL_12:
    v3 = 82;
    goto LABEL_3;
  }

  return 1;
}

uint64_t sub_239430130(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  if (!sub_239430028(a1))
  {
    return 0;
  }

  v6 = sub_23945004C(0x30uLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  *(v6 + 26) = 0u;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  sub_239422DA4(v6);
  sub_239457D80(&stru_27DF76A28, sub_239422078);
  if (sub_2394229D8(a2, &qword_27DF777F0) <= 0)
  {
    *a3 |= 1u;
  }

  v8 = sub_239422E50(v7);
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = v8;
  if (!sub_239421F90(v8, *a1) || !sub_2394219A4(v9, 1uLL))
  {
    goto LABEL_16;
  }

  if ((sub_2394229D8(a2, v9) & 0x80000000) == 0)
  {
    *a3 |= 2u;
  }

  v10 = a1[2];
  if (!v10)
  {
    goto LABEL_14;
  }

  if (!sub_2394253C4(v9, a2, v10, *a1, v7, 0))
  {
LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  if (!sub_239422B0C(v9))
  {
    *a3 |= 4u;
  }

LABEL_14:
  v11 = 1;
LABEL_17:
  if (!*(v7 + 40))
  {
    v12 = *(v7 + 8);
    v13 = *(v7 + 16) - 1;
    *(v7 + 16) = v13;
    *(v7 + 32) = *(v12 + 8 * v13);
  }

  sub_239422D38(v7);
  return v11;
}

uint64_t sub_239430294(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  if (!sub_239430028(a1))
  {
    return 0;
  }

  v4 = sub_23945004C(0x30uLL);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  *(v4 + 26) = 0u;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  sub_239422DA4(v4);
  v6 = sub_239422E50(v5);
  if (!v6)
  {
    goto LABEL_45;
  }

  v7 = v6;
  v8 = sub_239422E50(v5);
  if (!v8)
  {
    goto LABEL_45;
  }

  v9 = *(a1 + 8);
  if (!*(a1 + 16))
  {
    if (sub_239422B64(*(a1 + 8), 2))
    {
      v18 = *(*a1 + 8);
      if (v18 >= 1)
      {
        v19 = v18 + 1;
        v20 = (**a1 + 8 * v18 - 8);
        do
        {
          v21 = *v20--;
          v22 = __umodti3();
          --v19;
        }

        while (v19 > 1);
        if (!(v22 ^ 0xB | v23))
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      if (!sub_239422B64(v9, 5))
      {
        v16 = 4;
        goto LABEL_33;
      }

      v24 = *(*a1 + 8);
      if (v24 >= 1)
      {
        v25 = v24 + 1;
        v26 = (**a1 + 8 * v24 - 8);
        do
        {
          v27 = *v26--;
          v28 = __umodti3();
          --v25;
        }

        while (v25 > 1);
        if ((v28 & 0xB) == 3)
        {
          goto LABEL_34;
        }
      }
    }

    v16 = 8;
    goto LABEL_33;
  }

  v10 = v8;
  sub_239457D80(&stru_27DF76A28, sub_239422078);
  if (sub_2394229D8(v9, &qword_27DF777F0) < 1)
  {
    goto LABEL_8;
  }

  v11 = *a1;
  v12 = *(a1 + 8);
  if ((sub_2394229D8(v12, *a1) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  if (!sub_2394253C4(v7, v12, *(a1 + 16), v11, v5, 0))
  {
    goto LABEL_45;
  }

  if (!sub_239422B0C(v7))
  {
LABEL_8:
    *a2 |= 8u;
  }

  v13 = *(a1 + 16);
  v38 = 0;
  v14 = sub_23942B670(&v38, v13, 64, v5, 0, 0);
  v15 = v38;
  if (!v14)
  {
    v15 = -1;
  }

  if (v15 < 0)
  {
    goto LABEL_45;
  }

  if (!v15)
  {
    *a2 |= 0x10u;
  }

  if (!sub_239422F7C(v7, v10, *a1, *(a1 + 16), v5))
  {
    goto LABEL_45;
  }

  if (!sub_239422B0C(v10))
  {
    v16 = 32;
LABEL_33:
    *a2 |= v16;
  }

LABEL_34:
  v29 = *a1;
  v39 = 0;
  v30 = sub_23942B670(&v39, v29, 64, v5, 0, 0);
  v31 = v39;
  if (!v30)
  {
    v31 = -1;
  }

  if ((v31 & 0x80000000) == 0)
  {
    if (!v31)
    {
      v34 = 1;
      goto LABEL_51;
    }

    if (*(a1 + 16))
    {
LABEL_52:
      v17 = 1;
      goto LABEL_46;
    }

    if (sub_239426E30(v7, *a1))
    {
      v40 = 0;
      v32 = sub_23942B670(&v40, v7, 64, v5, 0, 0);
      v33 = v40;
      if (!v32)
      {
        v33 = -1;
      }

      if ((v33 & 0x80000000) == 0)
      {
        if (!v33)
        {
          v34 = 2;
LABEL_51:
          *a2 |= v34;
          goto LABEL_52;
        }

        goto LABEL_52;
      }
    }
  }

LABEL_45:
  v17 = 0;
LABEL_46:
  if (!*(v5 + 40))
  {
    v35 = *(v5 + 8);
    v36 = *(v5 + 16) - 1;
    *(v5 + 16) = v36;
    *(v5 + 32) = *(v35 + 8 * v36);
  }

  sub_239422D38(v5);
  return v17;
}

void *sub_2394305DC()
{
  v0 = sub_2394500B0(0x108uLL);
  v1 = v0;
  if (v0)
  {
    sub_239457CF8((v0 + 6));
    *(v1 + 65) = 1;
  }

  return v1;
}

void sub_23943061C(uint64_t a1)
{
  if (a1 && sub_239455A20((a1 + 260)))
  {
    sub_239425AB8(*(a1 + 248));
    sub_239421EC8(*a1);
    sub_239421EC8(*(a1 + 8));
    sub_239421EC8(*(a1 + 16));
    sub_239421EC8(*(a1 + 24));
    sub_239421EC8(*(a1 + 32));
    j__pthread_rwlock_destroy((a1 + 48));

    sub_239450144(a1);
  }
}

uint64_t sub_2394306A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    sub_239421EC8(*(a1 + 24));
    *(a1 + 24) = a2;
  }

  if (a3)
  {
    sub_239421EC8(*(a1 + 32));
    *(a1 + 32) = a3;
  }

  return 1;
}

void *sub_2394306F8(void *result, void *a2, void *a3, void *a4)
{
  if (a2)
  {
    *a2 = *result;
  }

  if (a3)
  {
    *a3 = result[2];
  }

  if (a4)
  {
    *a4 = result[1];
  }

  return result;
}

uint64_t sub_239430720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (!(a2 | v5) || !(a4 | *(a1 + 8)))
  {
    return 0;
  }

  if (a2)
  {
    sub_239421EC8(v5);
    *a1 = a2;
  }

  if (a3)
  {
    sub_239421EC8(*(a1 + 16));
    *(a1 + 16) = a3;
  }

  if (a4)
  {
    sub_239421EC8(*(a1 + 8));
    *(a1 + 8) = a4;
  }

  sub_239425AB8(*(a1 + 248));
  *(a1 + 248) = 0;
  return 1;
}

uint64_t sub_2394307BC(uint64_t a1)
{
  if (!sub_239430028(a1))
  {
    return 0;
  }

  v2 = sub_23945004C(0x30uLL);
  v3 = v2;
  if (!v2)
  {
    v7 = 0;
    v5 = 0;
    goto LABEL_16;
  }

  *(v2 + 26) = 0u;
  *v2 = 0u;
  v2[1] = 0u;
  v4 = *(a1 + 32);
  v5 = v4;
  if (!v4)
  {
    v6 = sub_23945004C(0x18uLL);
    v5 = v6;
    if (!v6)
    {
      v7 = 0;
      goto LABEL_16;
    }

    v6[1] = 0;
    v6[2] = 0;
    *v6 = 0;
    *(v6 + 5) = 1;
  }

  v7 = *(a1 + 24);
  if (!v7)
  {
    v8 = sub_23945004C(0x18uLL);
    v7 = v8;
    if (!v8)
    {
LABEL_16:
      v9 = 0;
      goto LABEL_17;
    }

    v8[1] = 0;
    v8[2] = 0;
    *v8 = 0;
    *(v8 + 5) = 1;
  }

  if (!sub_239429C8C((a1 + 248), (a1 + 48), *a1, v3))
  {
    goto LABEL_16;
  }

  if (v4)
  {
    v9 = 0;
  }

  else
  {
    v12 = *(a1 + 16);
    if (v12)
    {
      v9 = 0;
      if (!sub_239427A14(v5, 1uLL, v12))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v13 = sub_23945004C(0x18uLL);
      v9 = v13;
      if (!v13)
      {
        goto LABEL_17;
      }

      v13[1] = 0;
      v13[2] = 0;
      *v13 = 0;
      *(v13 + 5) = 1;
      v14 = *(a1 + 40);
      v15 = *a1;
      if (v14 && v14 < sub_239422114(*a1) - 1)
      {
        if (!sub_239429B0C(v9, v14))
        {
          goto LABEL_17;
        }
      }

      else if (!sub_239426E30(v9, v15))
      {
        goto LABEL_17;
      }

      if (!sub_239427A14(v5, 1uLL, v9))
      {
        goto LABEL_17;
      }
    }
  }

  if (!sub_239426160(v7, *(a1 + 8), v5, *a1, v3, *(a1 + 248)))
  {
LABEL_17:
    sub_2394170F4(5, 0, 3, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/dh/dh.c", 282);
    if (!*(a1 + 24))
    {
      sub_239421EC8(v7);
    }

    v10 = 0;
    goto LABEL_20;
  }

  *(a1 + 24) = v7;
  *(a1 + 32) = v5;
  v10 = 1;
LABEL_20:
  if (!*(a1 + 32))
  {
    sub_239421EC8(v5);
  }

  sub_239421EC8(v9);
  sub_239422D38(v3);
  return v10;
}

uint64_t sub_2394309C0(char *a1, uint64_t a2, uint64_t **a3)
{
  v6 = sub_23945004C(0x30uLL);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  *(v6 + 26) = 0u;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  sub_239422DA4(v6);
  v8 = sub_239422114(*a3);
  v9 = sub_239422E50(v7);
  if (v9 && (v10 = v9, sub_239430AC8(a3, v9, a2, v7)))
  {
    if (sub_2394227EC(a1, (v8 + 7) >> 3, v10))
    {
      v11 = (v8 + 7) >> 3;
    }

    else
    {
      v11 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v11 = 0xFFFFFFFFLL;
  }

  if (!*(v7 + 40))
  {
    v12 = *(v7 + 8);
    v13 = *(v7 + 16) - 1;
    *(v7 + 16) = v13;
    *(v7 + 32) = *(v12 + 8 * v13);
  }

  sub_239422D38(v7);
  return v11;
}

uint64_t sub_239430AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_239430028(a1);
  if (result)
  {
    if (*(a1 + 32))
    {
      v16 = 0;
      if (sub_239430130(a1, a3, &v16) && !v16)
      {
        sub_239422DA4(a4);
        result = sub_239422E50(a4);
        if (!result)
        {
          goto LABEL_18;
        }

        v9 = result;
        result = sub_239429C8C((a1 + 248), (a1 + 48), *a1, a4);
        if (!result)
        {
          goto LABEL_18;
        }

        if (sub_239426160(a2, a3, *(a1 + 32), *a1, a4, *(a1 + 248)) && sub_239421F90(v9, *a1) && sub_2394219A4(v9, 1uLL))
        {
          v18 = 1;
          v17[2] = 0x200000000;
          v17[0] = &v18;
          v17[1] = 0x100000001;
          if (sub_2394229D8(a2, v17) >= 1 && sub_2394229D8(a2, v9))
          {
            result = 1;
            goto LABEL_18;
          }

          v12 = 101;
          v13 = 334;
        }

        else
        {
          v12 = 3;
          v13 = 327;
        }

        sub_2394170F4(5, 0, v12, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/dh/dh.c", v13);
        result = 0;
LABEL_18:
        if (!*(a4 + 40))
        {
          v14 = *(a4 + 8);
          v15 = *(a4 + 16) - 1;
          *(a4 + 16) = v15;
          *(a4 + 32) = *(v14 + 8 * v15);
        }

        return result;
      }

      v10 = 101;
      v11 = 309;
    }

    else
    {
      v10 = 103;
      v11 = 303;
    }

    sub_2394170F4(5, 0, v10, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/dh/dh.c", v11);
    return 0;
  }

  return result;
}

uint64_t sub_239430C94(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23945004C(0x30uLL);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  *(v6 + 26) = 0u;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  sub_239422DA4(v6);
  v8 = sub_239422E50(v7);
  if (v8 && (v9 = v8, sub_239430AC8(a3, v8, a2, v7)))
  {
    v10 = (sub_239422114(v9) + 7) >> 3;
    sub_2394226C4(a1, v10, *v9, *(v9 + 2));
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

  if (!*(v7 + 40))
  {
    v11 = *(v7 + 8);
    v12 = *(v7 + 16) - 1;
    *(v7 + 16) = v12;
    *(v7 + 32) = *(v11 + 8 * v12);
  }

  sub_239422D38(v7);
  return v10;
}

uint64_t sub_239430D70(uint64_t **a1, uint64_t a2, unint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  *a3 = -1;
  v6 = *(a6 + 4);
  if (v6 > a4)
  {
    return 0;
  }

  v13 = (sub_239422114(*a1) + 7) >> 3;
  v14 = sub_23945004C(v13);
  v15 = v14;
  v18 = 0;
  if (v14 && sub_2394309C0(v14, a5, a1) == v13 && (sub_239430E60(v15, v13, a2, &v18, a6) ? (v16 = v6 == v18) : (v16 = 0), v16))
  {
    *a3 = v6;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  sub_239450144(v15);
  return v7;
}

uint64_t sub_239430E60(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  *v11 = 0u;
  v12 = 0u;
  v9 = sub_23943134C(v11, a5);
  if (v9)
  {
    (*(v11[0] + 3))(v11, a1, a2);
    sub_2394313E8(v11, a3, a4);
  }

  sub_239450144(v11[1]);
  if (*(&v12 + 1))
  {
    (**(&v12 + 1))(v12);
  }

  return v9;
}

uint64_t sub_239430F28()
{
  v0 = sub_23945004C(0x18uLL);
  v1 = v0;
  if (v0)
  {
    v0[1] = 0;
    v0[2] = 0;
    *v0 = 0;
    *(v0 + 5) = 1;
  }

  v2 = sub_23945004C(0x18uLL);
  v3 = v2;
  if (v2)
  {
    v2[1] = 0;
    v2[2] = 0;
    *v2 = 0;
    *(v2 + 5) = 1;
  }

  v4 = sub_23945004C(0x18uLL);
  v5 = v4;
  if (v4)
  {
    v4[1] = 0;
    v4[2] = 0;
    *v4 = 0;
    *(v4 + 5) = 1;
  }

  v6 = sub_2394305DC();
  v7 = v6;
  if (!v1 || !v3 || !v5 || !v6 || (sub_23942224C(v1, &unk_2395CAC98, 32), !sub_239426E30(v3, v1)) || !sub_239421600(v5, 1uLL) || (*(v5 + 16) = 0, **v5 = 2, *(v5 + 8) = 1, !sub_239430720(v7, v1, v3, v5)))
  {
    sub_239421EC8(v1);
    sub_239421EC8(v3);
    sub_239421EC8(v5);
    sub_23943061C(v7);
    return 0;
  }

  return v7;
}

double sub_239431060(_OWORD *a1)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_23943106C()
{
  v0 = sub_23945004C(0x20uLL);
  if (v0)
  {
    result = 0.0;
    *v0 = 0u;
    v0[1] = 0u;
  }

  return result;
}

uint64_t sub_239431094(uint64_t a1)
{
  sub_239450144(*(a1 + 8));
  v2 = *(a1 + 24);
  if (v2)
  {
    (*v2)(*(a1 + 16));
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  return 1;
}

double sub_2394310DC(uint64_t a1)
{
  sub_239450194(*(a1 + 8), *(*a1 + 44));
  sub_239450144(*(a1 + 8));
  v2 = *(a1 + 24);
  if (v2)
  {
    (*v2)(*(a1 + 16));
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void sub_239431130(uint64_t a1)
{
  if (a1)
  {
    sub_239450144(*(a1 + 8));
    v2 = *(a1 + 24);
    if (v2)
    {
      (*v2)(*(a1 + 16));
    }

    *a1 = 0u;
    *(a1 + 16) = 0u;

    sub_239450144(a1);
  }
}

uint64_t sub_2394311C8(void *a1, uint64_t *a2)
{
  if (!a2)
  {
    goto LABEL_11;
  }

  if (!a2[2])
  {
    v6 = *a2;
    if (*a2)
    {
      v5 = 0;
LABEL_8:
      if (*a1 == v6)
      {
        v7 = a1[1];
        a1[1] = 0;
        goto LABEL_14;
      }

      v8 = sub_23945004C(*(v6 + 44));
      if (v8)
      {
        v7 = v8;
        goto LABEL_14;
      }

      if (v5)
      {
        (*a2[3])(v5);
      }

      return 0;
    }

LABEL_11:
    sub_2394170F4(29, 0, 100, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/digest/digest.c", 138);
    return 0;
  }

  result = (*(a2[3] + 8))();
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *a2;
  if (*a2)
  {
    goto LABEL_8;
  }

  v7 = 0;
LABEL_14:
  sub_239450144(a1[1]);
  v9 = a1[3];
  if (v9)
  {
    (*v9)(a1[2]);
  }

  *a1 = 0u;
  *(a1 + 1) = 0u;
  *a1 = *a2;
  a1[1] = v7;
  if (*a2)
  {
    v10 = *(*a2 + 44);
    if (v10)
    {
      memcpy(v7, a2[1], v10);
    }
  }

  a1[2] = v5;
  a1[3] = a2[3];
  return 1;
}

double sub_2394312EC(uint64_t a1, _OWORD *a2)
{
  sub_239450144(*(a1 + 8));
  v4 = *(a1 + 24);
  if (v4)
  {
    (*v4)(*(a1 + 16));
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v6;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

uint64_t sub_239431340(void *a1, uint64_t *a2)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  return sub_2394311C8(a1, a2);
}

uint64_t sub_23943134C(uint64_t *a1, uint64_t a2)
{
  if (*a1 == a2)
  {
    v3 = *a1;
  }

  else
  {
    v3 = a2;
    result = sub_23945004C(*(a2 + 44));
    if (!result)
    {
      return result;
    }

    v5 = result;
    sub_239450144(a1[1]);
    *a1 = v3;
    a1[1] = v5;
  }

  (*(v3 + 16))(a1);
  return 1;
}

uint64_t sub_2394313B8(uint64_t *a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  return sub_23943134C(a1, a2);
}

uint64_t sub_2394313E8(void **a1, uint64_t a2, _DWORD *a3)
{
  (*(*a1 + 4))(a1);
  if (a3)
  {
    *a3 = *(*a1 + 1);
  }

  sub_239450194(a1[1], *(*a1 + 11));
  return 1;
}

uint64_t sub_239431438(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_2394313E8(a1, a2, a3);
  sub_239450144(*(a1 + 8));
  v4 = *(a1 + 24);
  if (v4)
  {
    (*v4)(*(a1 + 16));
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  return 1;
}

uint64_t sub_239431484(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

double sub_2394314D4()
{
  qword_27DF77F10 = 0x1000000101;
  dword_27DF77F18 = 0;
  qword_27DF77F20 = sub_239449900;
  qword_27DF77F28 = sub_239449924;
  qword_27DF77F30 = sub_23944992C;
  *&result = 0x5C00000040;
  qword_27DF77F38 = 0x5C00000040;
  return result;
}

double sub_239431564()
{
  qword_27DF77F40 = 0x1000000004;
  dword_27DF77F48 = 0;
  qword_27DF77F50 = sub_23944993C;
  qword_27DF77F58 = sub_239449960;
  qword_27DF77F60 = sub_239449968;
  *&result = 0x5C00000040;
  qword_27DF77F68 = 0x5C00000040;
  return result;
}

double sub_2394315F4()
{
  qword_27DF77F70 = 0x1400000040;
  dword_27DF77F78 = 0;
  qword_27DF77F80 = sub_239449978;
  qword_27DF77F88 = sub_2394499A4;
  qword_27DF77F90 = sub_2394499AC;
  *&result = 0x6000000040;
  qword_27DF77F98 = 0x6000000040;
  return result;
}

double sub_239431684()
{
  qword_27DF77FA0 = 0x1C000002A3;
  dword_27DF77FA8 = 0;
  qword_27DF77FB0 = sub_2394499BC;
  qword_27DF77FB8 = sub_2394499F0;
  qword_27DF77FC0 = sub_2394499F8;
  *&result = 0x7000000040;
  qword_27DF77FC8 = 0x7000000040;
  return result;
}

double sub_239431714()
{
  qword_27DF77FD0 = 0x20000002A0;
  dword_27DF77FD8 = 0;
  qword_27DF77FE0 = sub_239449A08;
  qword_27DF77FE8 = sub_239449A3C;
  qword_27DF77FF0 = sub_239449A44;
  *&result = 0x7000000040;
  qword_27DF77FF8 = 0x7000000040;
  return result;
}

double sub_2394317A4()
{
  qword_27DF78000 = 0x30000002A1;
  dword_27DF78008 = 0;
  qword_27DF78010 = sub_239449A58;
  qword_27DF78018 = sub_239449A98;
  qword_27DF78020 = sub_239449AA0;
  *&result = 0xD800000080;
  qword_27DF78028 = 0xD800000080;
  return result;
}

double sub_239431834()
{
  qword_27DF78030 = 0x40000002A2;
  dword_27DF78038 = 0;
  qword_27DF78040 = sub_239449AB0;
  qword_27DF78048 = sub_239449AF0;
  qword_27DF78050 = sub_239449AF8;
  *&result = 0xD800000080;
  qword_27DF78058 = 0xD800000080;
  return result;
}

double sub_2394318C4()
{
  qword_27DF78060 = 0x20000003C2;
  dword_27DF78068 = 0;
  qword_27DF78070 = sub_239449B0C;
  qword_27DF78078 = sub_239449B4C;
  qword_27DF78080 = sub_239449B54;
  *&result = 0xD800000080;
  qword_27DF78088 = 0xD800000080;
  return result;
}

double sub_239431954()
{
  qword_27DF78090 = 0x2400000072;
  dword_27DF78098 = 0;
  qword_27DF780A0 = sub_239449B64;
  qword_27DF780A8 = sub_239449BAC;
  qword_27DF780B0 = sub_239449C00;
  *&result = 0xBC00000040;
  qword_27DF780B8 = 0xBC00000040;
  return result;
}

uint64_t sub_2394319B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (!*(a1 + 16))
  {
    result = sub_239418D78(a5, a4);
    *(a1 + 16) = result;
    if (!result)
    {
      return result;
    }
  }

  sub_239457D80(&stru_27DF76C78, sub_239449C48);
  *(a1 + 24) = &qword_27DF780C0;
  v11 = *(a1 + 16);
  if (a6 == 1)
  {
    result = sub_23941925C(v11);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = sub_239419170(v11);
    if (!result)
    {
      return result;
    }
  }

  if (!a3)
  {
    v13 = 56;
    if (!a6)
    {
      v13 = 40;
    }

    if (*(**(a1 + 16) + v13))
    {
      sub_2394170F4(6, 0, 119, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/digestsign/digestsign.c", 109);
      return 0;
    }

    goto LABEL_18;
  }

  result = sub_239418058(*(a1 + 16));
  if (result)
  {
    v12 = 56;
    if (!a6)
    {
      v12 = 40;
    }

    if (!*(**(a1 + 16) + v12) || (result = sub_23943134C(a1, a3), result))
    {
LABEL_18:
      if (a2)
      {
        *a2 = *(a1 + 16);
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_239431AF0(void **a1)
{
  if (*(*a1[2] + 40))
  {
    ((*a1)[3])(a1);
    return 1;
  }

  else
  {
    sub_2394170F4(6, 0, 125, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/digestsign/digestsign.c", 135);
    return 0;
  }
}

uint64_t sub_239431B48(void **a1)
{
  if (*(*a1[2] + 56))
  {
    ((*a1)[3])(a1);
    return 1;
  }

  else
  {
    sub_2394170F4(6, 0, 125, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/digestsign/digestsign.c", 144);
    return 0;
  }
}

uint64_t sub_239431BA0(uint64_t *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1[2];
  if (!*(*v3 + 40))
  {
    sub_2394170F4(6, 0, 125, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/digestsign/digestsign.c", 154);
    v5 = 0;
LABEL_12:
    v9 = *MEMORY[0x277D85DE8];
    return v5;
  }

  if (a2)
  {
    *v10 = 0u;
    v11 = 0u;
    if (sub_2394311C8(v10, a1))
    {
      (*(v10[0] + 4))(v10, v12);
      v4 = *(v10[0] + 1);
      sub_239450194(v10[1], *(v10[0] + 11));
      v5 = sub_2394191D4(a1[2]) != 0;
    }

    else
    {
      v5 = 0;
    }

    sub_239450144(v10[1]);
    if (*(&v11 + 1))
    {
      (**(&v11 + 1))(v11);
    }

    goto LABEL_12;
  }

  v6 = *(*a1 + 4);
  v7 = *MEMORY[0x277D85DE8];

  return sub_2394191D4(v3);
}

BOOL sub_239431D10(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(**(a1 + 16) + 56))
  {
    *v6 = 0u;
    v7 = 0u;
    if (sub_2394311C8(v6, a1))
    {
      (*(v6[0] + 4))(v6, v8);
      v2 = *(v6[0] + 1);
      sub_239450194(v6[1], *(v6[0] + 11));
      v3 = sub_2394192C0(*(a1 + 16)) != 0;
    }

    else
    {
      v3 = 0;
    }

    sub_239450144(v6[1]);
    if (*(&v7 + 1))
    {
      (**(&v7 + 1))(v7);
    }
  }

  else
  {
    sub_2394170F4(6, 0, 125, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/digestsign/digestsign.c", 186);
    v3 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_239431E2C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  if (*(*v4 + 40))
  {
    if (!a2 || sub_239431AF0(a1))
    {

      return sub_239431BA0(a1, a2);
    }

    return 0;
  }

  v6 = *(*v4 + 48);
  if (!v6)
  {
    sub_2394170F4(6, 0, 125, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/digestsign/digestsign.c", 228);
    return 0;
  }

  return v6();
}

uint64_t sub_239431F00(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(*v2 + 56))
  {
    if (sub_239431B48(a1))
    {

      return sub_239431D10(a1);
    }

    return 0;
  }

  v4 = *(*v2 + 64);
  if (!v4)
  {
    sub_2394170F4(6, 0, 125, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/digestsign/digestsign.c", 255);
    return 0;
  }

  return v4();
}

uint64_t sub_239431FD0(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a4[2];
  if (!v4)
  {
    v9 = 27;
    v10 = 101;
    v11 = 87;
    goto LABEL_12;
  }

  v8 = *a4;
  if (!sub_2394321AC(*a4, *a3))
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    __n = 0;
    if (!sub_23943228C(v8, v16, (a3 + 1), v4 + 24) || !sub_239432318(v8, __src, &__n, 0x42uLL, v16))
    {
      v9 = 27;
      v10 = 102;
      v11 = 103;
      goto LABEL_12;
    }

    v12 = __ROR8__(a2 - 28, 2);
    if (v12 > 4)
    {
      if (v12 == 5)
      {
        sub_239432550(__src, __n, a1);
        goto LABEL_20;
      }

      if (v12 == 9)
      {
        sub_239432620(__src, __n, a1);
        goto LABEL_20;
      }
    }

    else
    {
      if (!v12)
      {
        sub_2394323F0(__src, __n, a1);
        goto LABEL_20;
      }

      if (v12 == 1)
      {
        sub_2394324A0(__src, __n, a1);
LABEL_20:
        result = 1;
        goto LABEL_13;
      }
    }

    v9 = 27;
    v10 = 103;
    v11 = 122;
    goto LABEL_12;
  }

  v9 = 15;
  v10 = 106;
  v11 = 93;
LABEL_12:
  sub_2394170F4(v9, 0, v10, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ecdh/ecdh.c", v11);
  result = 0;
LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394321AC(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  v4 = *(a1 + 512);
  if (v4 != *(a2 + 512))
  {
    return 1;
  }

  if (v4)
  {
    return 0;
  }

  if (*a1 != *a2 || !*(a1 + 532) || !*(a2 + 532) || sub_2394229D8(a1 + 256, a2 + 256) || sub_2394229D8(a1 + 320, a2 + 320) || sub_23945022C((a1 + 360), (a2 + 360), 8 * *(a1 + 328)) || sub_23945022C((a1 + 432), (a2 + 432), 8 * *(a1 + 328)))
  {
    return 1;
  }

  else
  {
    return sub_239434114(a1, a1 + 16, a2 + 16) ^ 1;
  }
}

uint64_t sub_23943228C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 && a4)
  {
    (*(*a1 + 32))(a1);
    if (sub_239434A6C(a1, a2))
    {
      return 1;
    }

    v7 = 68;
    v8 = 846;
  }

  else
  {
    v7 = 67;
    v8 = 837;
  }

  sub_2394170F4(15, 0, v7, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec.c", v8);
  return 0;
}

uint64_t sub_239432318(uint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4, uint64_t a5)
{
  v10 = (sub_239422114(a1 + 40) + 7) >> 3;
  if (v10 <= a4)
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    result = (**a1)(a1, a5, v12, 0);
    if (result)
    {
      (*(*a1 + 104))(a1, a2, a3, v12);
      *a3 = v10;
      return 1;
    }
  }

  else
  {
    sub_2394170F4(15, 0, 100, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec.c", 996);
    return 0;
  }

  return result;
}

_DWORD *sub_2394323F0(int8x16_t *__src, size_t __n, _DWORD *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(&v6[8], 0, 76);
  *v6 = xmmword_2395CA970;
  *&v6[4] = xmmword_2395CA980;
  v6[27] = 28;
  sub_239444788(v6, __src, __n);
  sub_2394454B4(a3, 0x1CuLL, v6);
  sub_239450194(v6, 0x70uLL);
  v4 = *MEMORY[0x277D85DE8];
  return a3;
}

_DWORD *sub_2394324A0(int8x16_t *__src, size_t __n, _DWORD *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(&v6[8], 0, 76);
  *v6 = xmmword_2395CA990;
  *&v6[4] = xmmword_2395CA9A0;
  v7 = 32;
  sub_239444788(v6, __src, __n);
  sub_2394454B4(a3, v7, v6);
  sub_239450194(v6, 0x70uLL);
  v4 = *MEMORY[0x277D85DE8];
  return a3;
}

void *sub_239432550(unint64_t *__src, size_t __n, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v6[0] = xmmword_2395CA9B0;
  v6[1] = xmmword_2395CA9C0;
  v6[2] = xmmword_2395CA9D0;
  v6[3] = xmmword_2395CA9E0;
  v7 = 0;
  v8 = 0;
  v17 = 0x3000000000;
  sub_23943325C(v6, __src, __n);
  sub_239445738(a3, 0x30uLL, v6);
  sub_239450194(v6, 0xD8uLL);
  v4 = *MEMORY[0x277D85DE8];
  return a3;
}

void *sub_239432620(unint64_t *__src, size_t __n, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v6[0] = xmmword_2395CA9F0;
  v6[1] = xmmword_2395CAA00;
  v6[2] = xmmword_2395CAA10;
  v6[3] = xmmword_2395CAA20;
  v7 = 0;
  v8 = 0;
  v17 = 0x4000000000;
  sub_23943325C(v6, __src, __n);
  sub_239445738(a3, HIDWORD(v17), v6);
  sub_239450194(v6, 0xD8uLL);
  v4 = *MEMORY[0x277D85DE8];
  return a3;
}

void *sub_2394326F0()
{
  v0 = sub_23945004C(0x10uLL);
  if (v0)
  {
    v1 = sub_23945004C(0x18uLL);
    if (v1)
    {
      v1[1] = 0;
      v1[2] = 0;
      *v1 = 0;
      *(v1 + 5) = 1;
    }

    *v0 = v1;
    v2 = sub_23945004C(0x18uLL);
    if (!v2)
    {
      v0[1] = 0;
LABEL_8:
      sub_2394136CC(v0);
      return 0;
    }

    v2[1] = 0;
    v2[2] = 0;
    *v2 = 0;
    *(v2 + 5) = 1;
    v0[1] = v2;
    if (!*v0)
    {
      goto LABEL_8;
    }
  }

  return v0;
}

uint64_t sub_23943277C(unsigned __int8 *a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (!a3 || ((v4 = *a4, v5 = *(a4 + 8), *a4) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v21 = 101;
    v22 = 156;
  }

  else
  {
    v37 = 0;
    memset(__dst, 0, sizeof(__dst));
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    v8 = *a3;
    v9 = *(v8 + 8);
    if (!v9)
    {
      goto LABEL_20;
    }

    v12 = 0;
    v13 = *v8;
    do
    {
      v14 = *v13++;
      v12 |= v14;
      --v9;
    }

    while (v9);
    if (!v12)
    {
      goto LABEL_20;
    }

    if (!sub_239432A10(v4, __dst, v8))
    {
      goto LABEL_20;
    }

    v15 = a3[1];
    v16 = *(v15 + 8);
    if (!v16)
    {
      goto LABEL_20;
    }

    v17 = 0;
    v18 = *v15;
    do
    {
      v19 = *v18++;
      v17 |= v19;
      --v16;
    }

    while (v16);
    if (v17 && sub_239432A10(v4, v34, v15))
    {
      if ((*(*v4 + 144))(v4, v28, v34))
      {
        sub_239432A94(v4, v26, a1, a2);
        sub_239425F5C(v32, v26, v28, v4[66], (v4 + 58));
        sub_239425F5C(v30, __dst, v28, v4[66], (v4 + 58));
        v25 = 0;
        memset(v24, 0, sizeof(v24));
        v20 = *(*v4 + 56);
        if (v20)
        {
          v20(v4, v24, v32, v5 + 8, v30);
        }

        else if (!(*(*v4 + 64))(v4, v24, v32, v5 + 8, v30, 1))
        {
          v21 = 15;
          v22 = 186;
          goto LABEL_21;
        }

        if ((*(*v4 + 152))(v4, v24, __dst))
        {
          return 1;
        }

        v21 = 100;
        v22 = 191;
      }

      else
      {
        v21 = 68;
        v22 = 171;
      }
    }

    else
    {
LABEL_20:
      v21 = 100;
      v22 = 165;
    }
  }

LABEL_21:
  sub_2394170F4(26, 0, v21, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ecdsa/ecdsa.c", v22);
  return 0;
}

uint64_t sub_239432A10(uint64_t a1, void *__dst, uint64_t a3)
{
  if (sub_2394222A0(__dst, *(a1 + 264), a3) && sub_2394228F8(__dst, *(a1 + 264), *(a1 + 256), *(a1 + 264)) < 0)
  {
    return 1;
  }

  sub_2394170F4(15, 0, 133, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/scalar.c", 32);
  return 0;
}

uint64_t sub_239432A94(uint64_t a1, unint64_t *a2, unsigned __int8 *a3, unint64_t a4)
{
  v13[9] = *MEMORY[0x277D85DE8];
  v8 = sub_239422114((a1 + 256));
  v9 = v8;
  v10 = v8;
  if ((v8 + 7) >> 3 < a4)
  {
    a4 = (v8 + 7) >> 3;
  }

  sub_2394224A4(a2, *(a1 + 264), a3, a4);
  if (v10 < 8 * a4)
  {
    sub_23942C66C(a2, a2, 8 - (v9 & 7), *(a1 + 264));
  }

  result = sub_23942390C(a2, 0, *(a1 + 256), v13, *(a1 + 264));
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239432B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 && a3 && a5)
  {
    v5 = *(*a1 + 56);
    if (v5)
    {
      v5();
      return 1;
    }

    else
    {
      v7 = *(*a1 + 64);

      return v7();
    }
  }

  else
  {
    sub_2394170F4(15, 0, 67, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec.c", 809);
    return 0;
  }
}

uint64_t *sub_239432C18(unsigned __int8 *a1, unint64_t a2, uint64_t *a3, unsigned __int8 *a4, unint64_t a5)
{
  v7 = a3[5];
  if (v7 && *(v7 + 40))
  {
    v8 = 103;
    v9 = 276;
LABEL_9:
    sub_2394170F4(26, 0, v8, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ecdsa/ecdsa.c", v9);
    return 0;
  }

  v10 = *a3;
  if (!*a3 || (v11 = a3[2]) == 0)
  {
    v8 = 67;
    v9 = 282;
    goto LABEL_9;
  }

  v15 = 0;
  memset(v14, 0, sizeof(v14));
  if (sub_239432CF0(v10, v14, a4, a5))
  {
    return sub_239432D98(v10, &v13, (v11 + 24), v14, a1, a2);
  }

  return 0;
}

uint64_t sub_239432CF0(uint64_t a1, unint64_t *a2, unsigned __int8 *a3, unint64_t a4)
{
  if ((sub_239422114((a1 + 256)) + 7) >> 3 != a4)
  {
    v8 = 68;
    goto LABEL_5;
  }

  sub_2394224A4(a2, *(a1 + 264), a3, a4);
  if ((sub_2394228F8(a2, *(a1 + 264), *(a1 + 256), *(a1 + 264)) & 0x80000000) == 0)
  {
    v8 = 75;
LABEL_5:
    sub_2394170F4(15, 0, 133, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/scalar.c", v8);
    return 0;
  }

  return 1;
}

uint64_t *sub_239432D98(uint64_t a1, _DWORD *a2, unint64_t *a3, uint64_t a4, unsigned __int8 *a5, unint64_t a6)
{
  *a2 = 0;
  if (sub_239422114((a1 + 256)) <= 0x9F)
  {
    sub_2394170F4(26, 0, 112, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ecdsa/ecdsa.c", 214);
    return 0;
  }

  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  if (!sub_239435A44(a1, v32, a4) || !sub_239435E34(a1, v30, v32))
  {
    return 0;
  }

  v12 = *(a1 + 264);
  if (v12 < 1)
  {
    v17 = 1;
  }

  else
  {
    v13 = 0;
    v14 = v30;
    v15 = *(a1 + 264);
    do
    {
      v16 = *v14++;
      v13 |= v16;
      --v15;
    }

    while (v15);
    v17 = v13 == 0;
  }

  if (v17)
  {
    goto LABEL_17;
  }

  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_239425F5C(v28, v30, *(a1 + 232), v12, a1 + 232);
  sub_239425F5C(v28, a3, v28, *(a1 + 264), a1 + 232);
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  sub_239432A94(a1, v26, a5, a6);
  sub_239438D78(a1, v28, v28, v26);
  (*(*a1 + 136))(a1, v26, a4);
  sub_239425E7C(v26, *(a1 + 264), v26, *(a1 + 264), a1 + 232);
  sub_239425F5C(v28, v28, v26, *(a1 + 264), a1 + 232);
  v18 = *(a1 + 264);
  if (v18 < 1)
  {
    v22 = 1;
  }

  else
  {
    v19 = 0;
    v20 = v28;
    do
    {
      v21 = *v20++;
      v19 |= v21;
      --v18;
    }

    while (v18);
    v22 = v19 == 0;
  }

  if (v22)
  {
LABEL_17:
    v23 = 0;
    *a2 = 1;
  }

  else
  {
    v24 = sub_2394326F0();
    v23 = v24;
    if (!v24 || !sub_2394221F0(*v24, v30, *(a1 + 264)) || !sub_2394221F0(v23[1], v28, *(a1 + 264)))
    {
      sub_2394136CC(v23);
      return 0;
    }
  }

  return v23;
}

uint64_t *sub_239433008(unint64_t *a1, size_t a2, uint64_t *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3[5];
  if (v5 && *(v5 + 40))
  {
    v6 = 103;
    v7 = 312;
LABEL_14:
    sub_2394170F4(26, 0, v6, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ecdsa/ecdsa.c", v7);
    goto LABEL_15;
  }

  v8 = *a3;
  if (!*a3 || (v9 = a3[2]) == 0)
  {
    v6 = 67;
    v7 = 318;
    goto LABEL_14;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v22[0] = xmmword_2395CA9F0;
  v22[1] = xmmword_2395CAA00;
  v22[2] = xmmword_2395CAA10;
  v22[3] = xmmword_2395CAA20;
  v23 = 0;
  v24 = 0;
  v10 = 8 * *(v8 + 264);
  v33 = 0x4000000000;
  sub_23943325C(v22, (v9 + 24), v10);
  sub_23943325C(v22, a1, a2);
  sub_239445738(v21, HIDWORD(v33), v22);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  if (!sub_23942C260(&v16, 1uLL, *(v8 + 256), *(v8 + 264), v21))
  {
LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  v11 = 33;
  while (1)
  {
    v15 = 0;
    v12 = sub_239432D98(v8, &v15, (v9 + 24), &v16, a1, a2);
    if (v12 || !v15)
    {
      break;
    }

    if (!--v11)
    {
      sub_2394170F4(26, 0, 106, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ecdsa/ecdsa.c", 364);
      break;
    }

    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    if (!sub_23942C260(&v16, 1uLL, *(v8 + 256), *(v8 + 264), v21))
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_23943321C(uint64_t a1)
{
  *a1 = xmmword_2395CA9F0;
  *(a1 + 16) = xmmword_2395CAA00;
  *(a1 + 32) = xmmword_2395CAA10;
  *(a1 + 48) = xmmword_2395CAA20;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 208) = 0x4000000000;
  return 1;
}

uint64_t sub_23943325C(unint64_t a1, unint64_t *__src, size_t __n)
{
  if (__n)
  {
    v3 = __n;
    v4 = __src;
    v6 = (a1 + 80);
    *(a1 + 64) += __PAIR128__(__n >> 61, 8 * __n);
    v7 = *(a1 + 208);
    if (v7)
    {
      v8 = 128 - v7;
      v9 = __n - (128 - v7);
      if (__n < 128 - v7)
      {
        memcpy(v6 + v7, __src, __n);
        LODWORD(v3) = *(a1 + 208) + v3;
LABEL_12:
        *(a1 + 208) = v3;
        return 1;
      }

      if (v7 != 128)
      {
        memcpy(v6 + v7, __src, 128 - v7);
      }

      *(a1 + 208) = 0;
      v4 = (v4 + v8);
      sub_239445824(a1, v6, 1);
      v3 = v9;
    }

    if (v3 >= 0x80)
    {
      sub_239445824(a1, v4, v3 >> 7);
      v10 = v4 + v3;
      v3 &= 0x7Fu;
      v4 = &v10[-v3];
    }

    if (v3)
    {
      memcpy(v6, v4, v3);
      goto LABEL_12;
    }
  }

  return 1;
}

double sub_2394333B8()
{
  qword_27DF782C8 = "NIST P-224";
  unk_27DF782D0 = 0x4812B000002C9;
  byte_27DF782D8 = 33;
  byte_27DF782DD = 5;
  sub_23942224C(&unk_27DF78210, &unk_2395CB8B8, 4);
  sub_23942224C(&unk_27DF781F8, &unk_2395CB8D8, 4);
  qword_27DF78228 = -1;
  sub_23942224C(&unk_27DF781D0, &unk_2395CB8F8, 4);
  sub_23942224C(&unk_27DF781B8, &unk_2395CB918, 4);
  qword_27DF781E8 = 0xD6E242706A1FC2EBLL;
  sub_239457D80(&stru_27DF76DB8, sub_239438AB0);
  xmmword_27DF780E0 = xmmword_2395CB938;
  unk_27DF780F0 = unk_2395CB948;
  unk_27DF78128 = xmmword_2395CB958;
  unk_27DF78138 = unk_2395CB968;
  qword_27DF78170 = 1;
  xmmword_27DF78280 = xmmword_2395CB978;
  unk_27DF78290 = unk_2395CB988;
  qword_27DF780D0 = &qword_27DF789F0;
  *algn_27DF780D8 = &qword_27DF780D0;
  sub_239449C74(&qword_27DF780D0);
  *&result = 0x100000001;
  qword_27DF782E4 = 0x100000001;
  return result;
}

double sub_239433520()
{
  dword_27DF784F0 = 415;
  qword_27DF784E8 = "NIST P-256";
  qword_27DF784F4 = 0x701033DCE48862ALL;
  byte_27DF784FD = 8;
  sub_23942224C(&unk_27DF78430, &unk_2395CB998, 4);
  sub_23942224C(&unk_27DF78418, &unk_2395CB9B8, 4);
  qword_27DF78448 = 1;
  sub_23942224C(&unk_27DF783F0, &unk_2395CB9D8, 4);
  sub_23942224C(&unk_27DF783D8, &unk_2395CB9F8, 4);
  qword_27DF78408 = 0xCCD1C8AAEE00BC4FLL;
  sub_239457D80(&stru_27DF76DC8, sub_239438BC4);
  qword_27DF782F0 = &qword_27DF78A90;
  *algn_27DF782F8 = &qword_27DF782F0;
  xmmword_27DF78300 = xmmword_2395CBA18;
  unk_27DF78310 = unk_2395CBA28;
  unk_27DF78348 = xmmword_2395CBA38;
  unk_27DF78358 = unk_2395CBA48;
  xmmword_27DF78390 = xmmword_2395CBA58;
  unk_27DF783A0 = unk_2395CBA68;
  xmmword_27DF784A0 = xmmword_2395CBA78;
  unk_27DF784B0 = unk_2395CBA88;
  sub_239449C74(&qword_27DF782F0);
  *&result = 0x100000001;
  qword_27DF78504 = 0x100000001;
  return result;
}

double sub_23943369C()
{
  qword_27DF78708 = "NIST P-384";
  unk_27DF78710 = 0x4812B000002CBLL;
  byte_27DF78718 = 34;
  byte_27DF7871D = 5;
  sub_23942224C(&unk_27DF78650, &unk_2395CBAA0, 6);
  sub_23942224C(&unk_27DF78638, &unk_2395CBAD0, 6);
  qword_27DF78668 = 0x100000001;
  sub_23942224C(&unk_27DF78610, &unk_2395CBB00, 6);
  sub_23942224C(&unk_27DF785F8, &unk_2395CBB30, 6);
  qword_27DF78628 = 0x6ED46089E88FDC45;
  sub_239457D80(&stru_27DF76DA8, sub_2394380D8);
  qword_27DF78510 = &qword_27DF78950;
  *algn_27DF78518 = &qword_27DF78510;
  xmmword_27DF78520 = xmmword_2395CBB60;
  unk_27DF78530 = unk_2395CBB70;
  xmmword_27DF78540 = xmmword_2395CBB80;
  unk_27DF78568 = xmmword_2395CBB90;
  unk_27DF78578 = unk_2395CBBA0;
  unk_27DF78588 = xmmword_2395CBBB0;
  xmmword_27DF785B0 = xmmword_2395CBBC0;
  unk_27DF785C0 = unk_2395CBBD0;
  xmmword_27DF785D0 = xmmword_2395CBBE0;
  xmmword_27DF786C0 = xmmword_2395CBBF0;
  unk_27DF786D0 = unk_2395CBC00;
  xmmword_27DF786E0 = xmmword_2395CBC10;
  sub_239449C74(&qword_27DF78510);
  *&result = 0x100000001;
  qword_27DF78724 = 0x100000001;
  return result;
}

double sub_23943382C()
{
  qword_27DF78928 = "NIST P-521";
  unk_27DF78930 = 0x4812B000002CCLL;
  byte_27DF78938 = 35;
  byte_27DF7893D = 5;
  sub_23942224C(&unk_27DF78870, &unk_2395CBC28, 9);
  sub_23942224C(&unk_27DF78858, &unk_2395CBC70, 9);
  qword_27DF78888 = 1;
  sub_23942224C(&unk_27DF78830, &unk_2395CBCB8, 9);
  sub_23942224C(&unk_27DF78818, &unk_2395CBD00, 9);
  qword_27DF78848 = 0x1D2F5CCD79A995C7;
  sub_239457D80(&stru_27DF76DA8, sub_2394380D8);
  qword_27DF78730 = &qword_27DF78950;
  *algn_27DF78738 = &qword_27DF78730;
  qword_27DF78780 = 116;
  xmmword_27DF78740 = xmmword_2395CBD48;
  unk_27DF78750 = unk_2395CBD58;
  xmmword_27DF78760 = xmmword_2395CBD68;
  unk_27DF78770 = unk_2395CBD78;
  qword_27DF787C8 = 480;
  unk_27DF78788 = xmmword_2395CBD90;
  unk_27DF78798 = unk_2395CBDA0;
  unk_27DF787A8 = xmmword_2395CBDB0;
  unk_27DF787B8 = unk_2395CBDC0;
  qword_27DF78810 = 0;
  xmmword_27DF787D0 = xmmword_2395CBE20;
  unk_27DF787E0 = *algn_2395CBE30;
  xmmword_27DF787F0 = xmmword_2395CBE40;
  unk_27DF78800 = unk_2395CBE50;
  qword_27DF78920 = 77;
  xmmword_27DF788E0 = xmmword_2395CBDD8;
  unk_27DF788F0 = unk_2395CBDE8;
  xmmword_27DF78900 = xmmword_2395CBDF8;
  unk_27DF78910 = unk_2395CBE08;
  sub_239449C74(&qword_27DF78730);
  *&result = 0x100000001;
  qword_27DF78944 = 0x100000001;
  return result;
}

uint64_t sub_2394339A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_239422114(a1) - 529 <= 0xFFFFFDE7)
  {
    sub_2394170F4(15, 0, 110, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec.c", 229);
    return 0;
  }

  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v10 = sub_23945004C(0x30uLL);
    if (!v10)
    {
      return 0;
    }

    v9 = v10;
    *(v10 + 26) = 0u;
    *v10 = 0u;
    v10[1] = 0u;
    a4 = v10;
  }

  sub_239422DA4(a4);
  v11 = sub_239422E50(a4);
  v12 = sub_239422E50(a4);
  v8 = 0;
  if (v11)
  {
    v13 = v12;
    if (v12)
    {
      if (sub_239423800(v11, a2, a1, a4) && sub_239423800(v13, a3, a1, a4))
      {
        v14 = sub_2394500B0(0x220uLL);
        v8 = v14;
        if (!v14)
        {
          return v8;
        }

        *(v14 + 135) = 1;
        sub_239457D80(&stru_27DF76DA8, sub_2394380D8);
        *(v8 + 296) = 0u;
        *(v8 + 312) = 0u;
        *(v8 + 328) = 0u;
        *(v8 + 344) = 0u;
        *(v8 + 312) = 0;
        *(v8 + 232) = 0u;
        *(v8 + 264) = 0u;
        *(v8 + 280) = 0u;
        *(v8 + 232) = 0;
        *(v8 + 296) = 0;
        *(v8 + 304) = 0;
        *(v8 + 320) = 0;
        *(v8 + 328) = 0;
        *(v8 + 336) = 0;
        *(v8 + 248) = 0u;
        *(v8 + 240) = 0;
        *(v8 + 248) = 0;
        *(v8 + 256) = 0;
        *(v8 + 264) = 0;
        *(v8 + 272) = 0;
        *v8 = &qword_27DF78950;
        *(v8 + 8) = v8;
        if (sub_239433BAC(v8, a1, v11, v13, a4))
        {
          goto LABEL_16;
        }

        sub_239433D18(v8);
      }

      v8 = 0;
    }
  }

LABEL_16:
  if (!*(a4 + 40))
  {
    v15 = *(a4 + 8);
    v16 = *(a4 + 16) - 1;
    *(a4 + 16) = v16;
    *(a4 + 32) = *(v15 + 8 * v16);
  }

  sub_239422D38(v9);
  return v8;
}

uint64_t sub_239433BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_239422114(a2) >= 3 && *(a2 + 8) >= 1 && (**a2 & 1) != 0)
  {
    sub_239422DA4(a5);
    result = sub_239422E50(a5);
    if (result)
    {
      v11 = result;
      result = sub_23942989C((a1 + 296), a2, a5);
      if (result)
      {
        result = sub_239435414(a1, a1 + 360, a3);
        if (result)
        {
          result = sub_239435414(a1, a1 + 432, a4);
          if (result)
          {
            sub_239457D80(&stru_27DF76A28, sub_239422078);
            result = sub_239435414(a1, a1 + 160, &qword_27DF777F0);
            if (result)
            {
              result = sub_239421F90(v11, a3);
              if (result)
              {
                result = sub_2394217D4(v11, 3uLL);
                if (result)
                {
                  *(a1 + 528) = sub_2394229D8(v11, a1 + 320) == 0;
                  result = 1;
                }
              }
            }
          }
        }
      }
    }

    if (!*(a5 + 40))
    {
      v12 = *(a5 + 8);
      v13 = *(a5 + 16) - 1;
      *(a5 + 16) = v13;
      *(a5 + 32) = *(v12 + 8 * v13);
    }
  }

  else
  {
    sub_2394170F4(15, 0, 110, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/simple.c", 96);
    return 0;
  }

  return result;
}

void sub_239433D18(uint64_t a1)
{
  if (a1 && !*(a1 + 512) && sub_239455A20((a1 + 540)))
  {
    sub_239421EC8((a1 + 232));
    sub_239421EC8((a1 + 256));
    sub_239421EC8((a1 + 296));
    sub_239421EC8((a1 + 320));

    sub_239450144(a1);
  }
}

uint64_t sub_239433D90(uint64_t a1, void *a2, uint64_t *a3, unsigned int *a4)
{
  if (!*(a1 + 512) && !*(a1 + 532) && *a2 == a1)
  {
    if (sub_239422114(a3) - 529 <= 0xFFFFFDE7)
    {
      v6 = 112;
      v7 = 287;
      goto LABEL_5;
    }

    if (!sub_239422B0C(a4))
    {
      v6 = 131;
      v7 = 293;
      goto LABEL_5;
    }

    v12 = sub_23945004C(0x18uLL);
    v13 = v12;
    if (v12)
    {
      v12[1] = 0;
      v12[2] = 0;
      *v12 = 0;
      *(v12 + 5) = 1;
      if (sub_239424670(v12, a3))
      {
        if (sub_2394229D8(v13, a1 + 320) <= 0)
        {
          sub_2394170F4(15, 0, 112, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec.c", 309);
        }

        else
        {
          v19 = 0u;
          memset(v20, 0, sizeof(v20));
          v17 = 0u;
          v18 = 0u;
          v16 = 0u;
          if ((**a1)(a1, (a2 + 1), &v16, v20 + 8) && sub_23942989C((a1 + 232), a3, 0))
          {
            *(a1 + 536) = sub_2394229D8(a1 + 320, a3) > 0;
            v14 = v19;
            *(a1 + 48) = v18;
            *(a1 + 64) = v14;
            *(a1 + 80) = *&v20[0];
            v15 = v17;
            *(a1 + 16) = v16;
            *(a1 + 32) = v15;
            *(a1 + 104) = *(&v20[1] + 8);
            *(a1 + 120) = *(&v20[2] + 8);
            *(a1 + 136) = *(&v20[3] + 8);
            *(a1 + 152) = *(&v20[4] + 1);
            *(a1 + 88) = *(v20 + 8);
            v8 = 1;
            *(a1 + 532) = 1;
LABEL_19:
            sub_239421EC8(v13);
            return v8;
          }
        }
      }
    }

    v8 = 0;
    goto LABEL_19;
  }

  v6 = 66;
  v7 = 282;
LABEL_5:
  sub_2394170F4(15, 0, v6, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec.c", v7);
  return 0;
}

uint64_t *sub_239433FAC(int a1)
{
  if (a1 > 714)
  {
    if (a1 != 715)
    {
      if (a1 == 716)
      {
        sub_239457D80(&stru_27DF76CB8, sub_23943382C);
        return &qword_27DF78730;
      }

      goto LABEL_8;
    }

    sub_239457D80(&stru_27DF76CA8, sub_23943369C);
    return &qword_27DF78510;
  }

  else
  {
    if (a1 != 415)
    {
      if (a1 == 713)
      {
        sub_239457D80(&stru_27DF76C88, sub_2394333B8);
        return &qword_27DF780D0;
      }

LABEL_8:
      sub_2394170F4(15, 0, 123, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec.c", 342);
      return 0;
    }

    sub_239457D80(&stru_27DF76C98, sub_239433520);
    return &qword_27DF782F0;
  }
}

uint64_t sub_2394340A8(uint64_t a1)
{
  if (a1 && !*(a1 + 512))
  {
    sub_2394559F0((a1 + 540));
  }

  return a1;
}

uint64_t sub_239434114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 96);
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v29 = 0;
  v8 = (a3 + 144);
  memset(v28, 0, sizeof(v28));
  v7(a1, v28, a3 + 144);
  v6(a1, v34, a2, v28);
  v9 = (a2 + 144);
  v7(a1, v30, a2 + 144);
  v6(a1, v32, a3, v30);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  sub_239423980(v34, v34, v32, *(a1 + 320), &v36, *(a1 + 328));
  v10 = *(a1 + 328);
  if (v10 < 1)
  {
    v14 = -1;
  }

  else
  {
    v11 = 0;
    v12 = v34;
    do
    {
      v13 = *v12++;
      v11 |= v13;
      --v10;
    }

    while (v10);
    v14 = v11 == 0;
  }

  v6(a1, v28, v28, v8);
  v6(a1, v34, a2 + 72, v28);
  v6(a1, v30, v30, (a2 + 144));
  v6(a1, v32, a3 + 72, v30);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  sub_239423980(v34, v34, v32, *(a1 + 320), &v36, *(a1 + 328));
  v15 = *(a1 + 328);
  if (v15 < 1)
  {
    return 1;
  }

  v16 = 0;
  v17 = v34;
  v18 = *(a1 + 328);
  do
  {
    v19 = *v17++;
    v16 |= v19;
    --v18;
  }

  while (v18);
  v20 = 0;
  v21 = *(a1 + 328);
  do
  {
    v22 = *v9++;
    v20 |= v22;
    --v21;
  }

  while (v21);
  if (v16)
  {
    v23 = 0;
  }

  else
  {
    v23 = v14;
  }

  do
  {
    v24 = *v8++;
    v21 |= v24;
    --v15;
  }

  while (v15);
  v25 = v23 & (v21 != 0);
  if (v20)
  {
    v26 = v25;
  }

  else
  {
    v26 = ~(v21 != 0);
  }

  return v26 & 1;
}

uint64_t sub_239434338(uint64_t a1)
{
  if (*(a1 + 532))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239434380(uint64_t a1, uint64_t a2)
{
  v3 = 1;
  if (!sub_239421600(a2, 1uLL))
  {
    return 0;
  }

  *(a2 + 16) = 0;
  **a2 = 1;
  *(a2 + 8) = 1;
  return v3;
}

uint64_t sub_2394343D4(uint64_t a1, void **a2, void *a3, void *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!a2 || (result = sub_239421F90(a2, a1 + 320)) != 0)
  {
    if (!a3 || (v9 = 0, (*(*a1 + 104))(a1, v10, &v9, a1 + 360), (result = sub_23942253C(v10, v9, a3)) != 0))
    {
      if (!a4 || (v9 = 0, (*(*a1 + 104))(a1, v10, &v9, a1 + 432), (result = sub_23942253C(v10, v9, a4)) != 0))
      {
        result = 1;
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

const char *sub_2394344D4(int a1)
{
  if (a1 > 714)
  {
    if (a1 != 715)
    {
      if (a1 == 716)
      {
        return "P-521";
      }

      return 0;
    }

    return "P-384";
  }

  else
  {
    if (a1 != 415)
    {
      if (a1 == 713)
      {
        return "P-224";
      }

      return 0;
    }

    return "P-256";
  }
}

uint64_t sub_239434534(const char *a1)
{
  if (!strcmp(a1, "P-224"))
  {
    return 713;
  }

  if (!strcmp(a1, "P-256"))
  {
    return 415;
  }

  if (!strcmp(a1, "P-384"))
  {
    return 715;
  }

  if (!strcmp(a1, "P-521"))
  {
    return 716;
  }

  return 0;
}

void *sub_2394345C0(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_23945004C(0xE0uLL);
    if (v2)
    {
      if (!*(a1 + 512))
      {
        sub_2394559F0((a1 + 540));
      }

      *v2 = a1;
      *(v2 + 1) = 0u;
      *(v2 + 3) = 0u;
      *(v2 + 5) = 0u;
      *(v2 + 7) = 0u;
      v2[9] = 0;
      *(v2 + 5) = 0u;
      *(v2 + 6) = 0u;
      *(v2 + 7) = 0u;
      *(v2 + 8) = 0u;
      v2[18] = 0;
      *(v2 + 19) = 0u;
      *(v2 + 21) = 0u;
      *(v2 + 23) = 0u;
      *(v2 + 25) = 0u;
      v2[27] = 0;
    }
  }

  else
  {
    sub_2394170F4(15, 0, 67, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec.c", 469);
    return 0;
  }

  return v2;
}

double sub_239434668(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  return result;
}

void sub_23943469C(uint64_t *a1)
{
  if (a1)
  {
    sub_239433D18(*a1);

    sub_239450144(a1);
  }
}

uint64_t sub_2394346E4(uint64_t a1, uint64_t a2)
{
  if (sub_2394321AC(*a1, *a2))
  {
    sub_2394170F4(15, 0, 106, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec.c", 501);
    return 0;
  }

  else
  {
    if (a1 != a2)
    {
      *(a1 + 8) = *(a2 + 8);
      v5 = *(a2 + 24);
      v6 = *(a2 + 40);
      v7 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v7;
      *(a1 + 40) = v6;
      *(a1 + 24) = v5;
      v9 = *(a2 + 112);
      v8 = *(a2 + 128);
      v10 = *(a2 + 96);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 112) = v9;
      *(a1 + 128) = v8;
      *(a1 + 96) = v10;
      *(a1 + 80) = *(a2 + 80);
      v11 = *(a2 + 184);
      v12 = *(a2 + 200);
      v13 = *(a2 + 216);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 216) = v13;
      *(a1 + 200) = v12;
      *(a1 + 184) = v11;
      *(a1 + 152) = *(a2 + 152);
    }

    return 1;
  }
}

__n128 sub_2394347B8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = v2;
  v5 = *(a2 + 104);
  v6 = *(a2 + 120);
  v7 = *(a2 + 136);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 136) = v7;
  *(a1 + 120) = v6;
  *(a1 + 104) = v5;
  *(a1 + 72) = *(a2 + 72);
  v9 = *(a2 + 176);
  v8 = *(a2 + 192);
  v10 = *(a2 + 160);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v9;
  *(a1 + 192) = v8;
  *(a1 + 160) = v10;
  result = *(a2 + 144);
  *(a1 + 144) = result;
  return result;
}

uint64_t *sub_239434824(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = sub_2394345C0(a2);
  v4 = v3;
  if (!v3 || !sub_2394346E4(v3, a1))
  {
    sub_23943469C(v4);
    return 0;
  }

  return v4;
}

uint64_t sub_239434878(uint64_t a1, uint64_t a2)
{
  if (sub_2394321AC(a1, *a2))
  {
    sub_2394170F4(15, 0, 106, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec.c", 528);
    return 0;
  }

  else
  {
    *(a2 + 72) = 0;
    *(a2 + 56) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0u;
    *(a2 + 168) = 0u;
    *(a2 + 184) = 0u;
    *(a2 + 200) = 0u;
    *(a2 + 216) = 0;
    return 1;
  }
}

double sub_239434904(uint64_t a1, uint64_t a2)
{
  *(a2 + 64) = 0;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0;
  return result;
}

BOOL sub_239434938(uint64_t a1, uint64_t *a2)
{
  if (sub_2394321AC(a1, *a2))
  {
    sub_2394170F4(15, 0, 106, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec.c", 537);
    return 0;
  }

  else
  {
    v5 = *(a1 + 328);
    if (v5 < 1)
    {
      return 1;
    }

    else
    {
      v6 = 0;
      v7 = a2 + 19;
      do
      {
        v8 = *v7++;
        v6 |= v8;
        --v5;
      }

      while (v5);
      return v6 == 0;
    }
  }
}

BOOL sub_2394349C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 328);
  if (v2 < 1)
  {
    return 1;
  }

  v3 = 0;
  v4 = (a2 + 144);
  do
  {
    v5 = *v4++;
    v3 |= v5;
    --v2;
  }

  while (v2);
  return v3 == 0;
}

BOOL sub_2394349F8(uint64_t a1, uint64_t *a2)
{
  if (sub_2394321AC(a1, *a2))
  {
    sub_2394170F4(15, 0, 106, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec.c", 546);
    return 0;
  }

  else
  {

    return sub_239434A6C(a1, (a2 + 1));
  }
}

BOOL sub_239434A6C(uint64_t a1, uint64_t a2)
{
  v5 = *(*a1 + 88);
  v4 = *(*a1 + 96);
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v4(a1, v22, a2);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v17 = 0;
  v6 = (a2 + 144);
  memset(v16, 0, sizeof(v16));
  v4(a1, v20, a2 + 144);
  v4(a1, v18, v20);
  v5(a1, v16, v18, v20);
  if (*(a1 + 528))
  {
    sub_239435174(a1, v20, v18, v18);
    sub_239435174(a1, v20, v20, v18);
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    sub_239423980(v22, v22, v20, *(a1 + 320), &v24, *(a1 + 328));
  }

  else
  {
    v5(a1, v20, v18, (a1 + 360));
    sub_239435174(a1, v22, v22, v20);
  }

  v5(a1, v22, v22, a2);
  v5(a1, v20, (a1 + 432), v16);
  sub_239435174(a1, v22, v22, v20);
  v4(a1, v20, a2 + 72);
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  sub_239423980(v20, v20, v22, *(a1 + 320), &v24, *(a1 + 328));
  v7 = *(a1 + 328);
  if (v7 < 1)
  {
    return 1;
  }

  v8 = 0;
  v9 = v20;
  v10 = *(a1 + 328);
  do
  {
    v11 = *v9++;
    v8 |= v11;
    --v10;
  }

  while (v10);
  v12 = 0;
  do
  {
    v13 = *v6++;
    v12 |= v13;
    --v7;
  }

  while (v7);
  return !v12 || v8 == 0;
}

uint64_t sub_239434C7C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (!sub_2394321AC(a1, *a2) && !sub_2394321AC(a1, *a3))
  {
    return sub_239434114(a1, (a2 + 1), (a3 + 1)) ^ 1;
  }

  sub_2394170F4(15, 0, 106, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec.c", 556);
  return 0xFFFFFFFFLL;
}

uint64_t sub_239434D00(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!**a1)
  {
    v8 = 66;
    v9 = 568;
    goto LABEL_5;
  }

  if (sub_2394321AC(a1, *a2))
  {
    v8 = 106;
    v9 = 572;
LABEL_5:
    sub_2394170F4(15, 0, v8, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec.c", v9);
    result = 0;
    goto LABEL_6;
  }

  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  if (a3)
  {
    v12 = v16;
  }

  else
  {
    v12 = 0;
  }

  if (a4)
  {
    v13 = v14;
  }

  else
  {
    v13 = 0;
  }

  result = (**a1)(a1, (a2 + 1), v12, v13);
  if (result)
  {
    if (!a3 || (v18 = 0, (*(*a1 + 104))(a1, v19, &v18, v16), (result = sub_23942253C(v19, v18, a3)) != 0))
    {
      if (!a4 || (v18 = 0, (*(*a1 + 104))(a1, v19, &v18, v14), (result = sub_23942253C(v19, v18, a4)) != 0))
      {
        result = 1;
      }
    }
  }

LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_239434E88(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 0;
  (*(*a1 + 104))(a1, v7, &v6, a3);
  result = sub_23942253C(v7, v6, a2) != 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 sub_239434F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v3 = *(a3 + 16);
  v4 = *(a3 + 32);
  v5 = *(a3 + 48);
  *(a2 + 64) = *(a3 + 64);
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  *(a2 + 16) = v3;
  v6 = *(a3 + 104);
  v7 = *(a3 + 120);
  v8 = *(a3 + 136);
  *(a2 + 88) = *(a3 + 88);
  *(a2 + 136) = v8;
  *(a2 + 120) = v7;
  *(a2 + 104) = v6;
  *(a2 + 72) = *(a3 + 72);
  v10 = *(a1 + 192);
  v9 = *(a1 + 208);
  v11 = *(a1 + 176);
  *(a2 + 208) = *(a1 + 224);
  *(a2 + 176) = v10;
  *(a2 + 192) = v9;
  *(a2 + 160) = v11;
  result = *(a1 + 160);
  *(a2 + 144) = result;
  return result;
}

uint64_t sub_239434F88(uint64_t a1)
{
  v2 = *(*a1 + 8);
  if (v2)
  {

    return v2();
  }

  else
  {
    sub_2394170F4(15, 0, 66, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec.c", 607);
    return 0;
  }
}

uint64_t sub_239434FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a1 + 88);
  v9 = *(*a1 + 96);
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v9(a1, v25, a4);
  v9(a1, v23, a3);
  sub_239435174(a1, v23, v23, (a1 + 360));
  v8(a1, v23, v23, a3);
  sub_239435174(a1, v23, v23, (a1 + 432));
  if (sub_23945022C(v25, v23, 8 * *(a1 + 328)))
  {
    sub_2394170F4(15, 0, 120, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec.c", 628);
    result = 0;
    if (*(a1 + 532))
    {
      *a2 = *(a1 + 16);
      v11 = *(a1 + 32);
      v12 = *(a1 + 48);
      v13 = *(a1 + 64);
      *(a2 + 64) = *(a1 + 80);
      *(a2 + 32) = v12;
      *(a2 + 48) = v13;
      *(a2 + 16) = v11;
      v14 = *(a1 + 120);
      v15 = *(a1 + 136);
      v16 = *(a1 + 104);
      *(a2 + 136) = *(a1 + 152);
      *(a2 + 88) = v16;
      *(a2 + 120) = v15;
      *(a2 + 104) = v14;
      *(a2 + 72) = *(a1 + 88);
    }
  }

  else
  {
    *a2 = *a3;
    v17 = *(a3 + 16);
    v18 = *(a3 + 32);
    v19 = *(a3 + 48);
    *(a2 + 64) = *(a3 + 64);
    *(a2 + 32) = v18;
    *(a2 + 48) = v19;
    *(a2 + 16) = v17;
    v21 = *(a4 + 32);
    v20 = *(a4 + 48);
    v22 = *(a4 + 64);
    *(a2 + 88) = *(a4 + 16);
    *(a2 + 136) = v22;
    *(a2 + 120) = v20;
    *(a2 + 104) = v21;
    *(a2 + 72) = *a4;
    return 1;
  }

  return result;
}

uint64_t sub_239435174(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v5 = *(a1 + 320);
  v6 = *(a1 + 328);
  v7 = sub_2394216D4(a2, a3, a4, v6);
  return sub_23942390C(a2, v7, v5, v9, v6);
}

double sub_2394351E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_2394321AC(a1, *a2))
  {
    v8 = 106;
    v9 = 649;
LABEL_10:
    sub_2394170F4(15, 0, v8, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec.c", v9);
    return *&v15;
  }

  if (!a3 || !a4)
  {
    v8 = 67;
    v9 = 654;
    goto LABEL_10;
  }

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  if (sub_239435414(a1, v35, a3) && sub_239435414(a1, v33, a4) && sub_239434FD8(a1, &v28, v35, v33))
  {
    v10 = v28;
    *(a2 + 24) = v29;
    v11 = v31;
    *(a2 + 40) = v30;
    *(a2 + 56) = v11;
    *(a2 + 72) = *&v32[0];
    *(a2 + 8) = v10;
    v12 = *(v32 + 8);
    *(a2 + 144) = *(&v32[4] + 1);
    v13 = *(&v32[3] + 8);
    *(a2 + 112) = *(&v32[2] + 8);
    *(a2 + 128) = v13;
    v14 = *(&v32[1] + 8);
    *(a2 + 80) = v12;
    *(a2 + 96) = v14;
    *(a2 + 152) = *(a1 + 160);
    v15 = *(a1 + 176);
    v16 = *(a1 + 192);
    v17 = *(a1 + 208);
    *(a2 + 216) = *(a1 + 224);
    *(a2 + 200) = v17;
    *(a2 + 184) = v16;
    *(a2 + 168) = v15;
  }

  else if (*(a1 + 532))
  {
    *(a2 + 8) = *(a1 + 16);
    v18 = *(a1 + 32);
    v19 = *(a1 + 48);
    v20 = *(a1 + 64);
    *(a2 + 72) = *(a1 + 80);
    *(a2 + 56) = v20;
    *(a2 + 40) = v19;
    *(a2 + 24) = v18;
    v21 = *(a1 + 120);
    v22 = *(a1 + 136);
    v23 = *(a1 + 104);
    *(a2 + 144) = *(a1 + 152);
    *(a2 + 112) = v21;
    *(a2 + 128) = v22;
    *(a2 + 96) = v23;
    *(a2 + 80) = *(a1 + 88);
    v25 = *(a1 + 192);
    v24 = *(a1 + 208);
    v26 = *(a1 + 176);
    *(a2 + 216) = *(a1 + 224);
    *(a2 + 168) = v26;
    *(a2 + 200) = v24;
    *(a2 + 184) = v25;
    v15 = *(a1 + 160);
    *(a2 + 152) = v15;
  }

  else
  {
    *(a2 + 72) = 0;
    *&v15 = 0;
    *(a2 + 56) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0u;
    *(a2 + 168) = 0u;
    *(a2 + 184) = 0u;
    *(a2 + 200) = 0u;
    *(a2 + 216) = 0;
  }

  return *&v15;
}

uint64_t sub_239435414(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = sub_239422114(a1 + 40);
  if (!*(a3 + 16) && (v7 = v6, (sub_2394229D8(a3, (a1 + 40)) & 0x80000000) != 0) && (v10 = (v7 + 7) >> 3, sub_2394227EC(v11, v10, a3)))
  {
    result = (*(*a1 + 112))(a1, a2, v11, v10);
  }

  else
  {
    sub_2394170F4(15, 0, 101, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/felem.c", 37);
    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2394354F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 532))
  {
    *a2 = *(a1 + 16);
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 64);
    *(a2 + 64) = *(a1 + 80);
    *(a2 + 32) = v3;
    *(a2 + 48) = v4;
    *(a2 + 16) = v2;
    v5 = *(a1 + 120);
    v6 = *(a1 + 136);
    v7 = *(a1 + 152);
    *(a2 + 88) = *(a1 + 104);
    *(a2 + 136) = v7;
    *(a2 + 120) = v6;
    *(a2 + 104) = v5;
    *(a2 + 72) = *(a1 + 88);
    v9 = *(a1 + 192);
    v8 = *(a1 + 208);
    v10 = *(a1 + 176);
    *(a2 + 208) = *(a1 + 224);
    *(a2 + 176) = v9;
    *(a2 + 192) = v8;
    *(a2 + 160) = v10;
    v11 = *(a1 + 160);
    *(a2 + 144) = v11;
  }

  else
  {
    *(a2 + 64) = 0;
    *&v11 = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 136) = 0;
    *(a2 + 144) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0;
  }

  return *&v11;
}

uint64_t sub_2394355A4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (sub_2394321AC(a1, *a2) || sub_2394321AC(a1, *a3) || sub_2394321AC(a1, *a4))
  {
    sub_2394170F4(15, 0, 106, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec.c", 684);
    return 0;
  }

  else
  {
    (*(*a1 + 16))(a1, a2 + 1, a3 + 1, a4 + 1);
    return 1;
  }
}

uint64_t sub_239435648(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (sub_2394321AC(a1, *a2) || sub_2394321AC(a1, *a3))
  {
    sub_2394170F4(15, 0, 106, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec.c", 695);
    return 0;
  }

  else
  {
    (*(*a1 + 24))(a1, a2 + 1, a3 + 1);
    return 1;
  }
}

uint64_t sub_2394356D4(uint64_t a1, uint64_t a2)
{
  if (sub_2394321AC(a1, *a2))
  {
    sub_2394170F4(15, 0, 106, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec.c", 705);
    return 0;
  }

  else
  {
    sub_239438220(a1, (a2 + 80), (a2 + 80));
    return 1;
  }
}

uint64_t sub_23943574C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if ((a4 == 0) != (a5 == 0) || !(a3 | a5))
  {
    v12 = 67;
    v13 = 738;
  }

  else
  {
    if (!sub_2394321AC(a1, *a2) && (!a4 || !sub_2394321AC(a1, *a4)))
    {
      if (a6)
      {
        v16 = 0;
        if (!a3)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v17 = sub_23945004C(0x30uLL);
        if (!v17)
        {
          v14 = 0;
          v16 = 0;
          goto LABEL_26;
        }

        a6 = v17;
        *(v17 + 26) = 0u;
        *v17 = 0u;
        v17[1] = 0u;
        v16 = v17;
        if (!a3)
        {
          goto LABEL_17;
        }
      }

      *&v28 = 0;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      if (!sub_23943599C(a1, &v24, a3, a6) || !sub_239435A44(a1, a2 + 8, &v24))
      {
LABEL_22:
        v14 = 0;
LABEL_26:
        sub_239422D38(v16);
        return v14;
      }

LABEL_17:
      if (!a5)
      {
LABEL_25:
        v14 = 1;
        goto LABEL_26;
      }

      v39 = 0;
      memset(v38, 0, sizeof(v38));
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v24 = 0u;
      if (sub_23943599C(a1, v38, a5, a6) && sub_23943228C(a1, &v24, (a4 + 1), v38))
      {
        if (a3)
        {
          (*(*a1 + 16))(a1, a2 + 8, a2 + 8, &v24);
        }

        else
        {
          v18 = v35;
          *(a2 + 168) = v34;
          *(a2 + 184) = v18;
          *(a2 + 200) = v36;
          v19 = v31;
          *(a2 + 104) = v30;
          *(a2 + 120) = v19;
          v20 = v33;
          *(a2 + 136) = v32;
          *(a2 + 152) = v20;
          v21 = v27;
          *(a2 + 40) = v26;
          *(a2 + 56) = v21;
          v22 = v29;
          *(a2 + 72) = v28;
          *(a2 + 88) = v22;
          v23 = v25;
          *(a2 + 8) = v24;
          *(a2 + 216) = v37;
          *(a2 + 24) = v23;
        }

        goto LABEL_25;
      }

      goto LABEL_22;
    }

    v12 = 106;
    v13 = 744;
  }

  sub_2394170F4(15, 0, v12, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec.c", v13);
  return 0;
}

uint64_t sub_23943599C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (sub_239432A10(a1, a2, a3))
  {
    return 1;
  }

  sub_239416A38();
  sub_239422DA4(a4);
  result = sub_239422E50(a4);
  if (result)
  {
    v9 = result;
    result = sub_239423800(result, a3, a1 + 256, a4);
    if (result)
    {
      result = sub_239432A10(a1, a2, v9);
    }
  }

  if (!*(a4 + 40))
  {
    v10 = *(a4 + 8);
    v11 = *(a4 + 16) - 1;
    *(a4 + 16) = v11;
    *(a4 + 32) = *(v10 + 8 * v11);
  }

  return result;
}

uint64_t sub_239435A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    (*(*a1 + 40))(a1);
    if (sub_239434A6C(a1, a2))
    {
      return 1;
    }

    v6 = 68;
    v7 = 867;
  }

  else
  {
    v6 = 67;
    v7 = 856;
  }

  sub_2394170F4(15, 0, v6, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec.c", v7);
  return 0;
}

uint64_t sub_239435AD0(uint64_t a1)
{
  v2 = *(*a1 + 64);
  if (v2)
  {

    return v2();
  }

  else
  {
    sub_2394170F4(15, 0, 66, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec.c", 826);
    return 0;
  }
}

uint64_t sub_239435B20(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 48);
  if (v2)
  {
    v2();
    if (sub_239434A6C(a1, a2))
    {
      return 1;
    }

    v6 = 68;
    v7 = 889;
  }

  else
  {
    v6 = 66;
    v7 = 880;
  }

  sub_2394170F4(15, 0, v6, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec.c", v7);
  return 0;
}

uint64_t sub_239435BA8(uint64_t a1)
{
  v2 = *(*a1 + 72);
  if (v2)
  {

    return v2();
  }

  else
  {
    sub_2394170F4(15, 0, 66, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec.c", 899);
    return 0;
  }
}

uint64_t sub_239435BF8(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 80);
  if (v2)
  {
    v2();
    if (sub_239434A6C(a1, a2))
    {
      return 1;
    }

    v6 = 68;
    v7 = 921;
  }

  else
  {
    v6 = 66;
    v7 = 912;
  }

  sub_2394170F4(15, 0, v6, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec.c", v7);
  return 0;
}

uint64_t sub_239435C80(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(result + 328);
  if (v5)
  {
    v6 = ~a3;
    v7 = a4;
    v8 = a5;
    v9 = a2;
    do
    {
      v11 = *v7++;
      v10 = v11;
      v12 = *v8++;
      *v9++ = v12 & v6 | v10 & a3;
      --v5;
    }

    while (v5);
    v13 = *(result + 328);
    if (v13)
    {
      v14 = a2 + 9;
      v15 = a4 + 9;
      v16 = a5 + 9;
      do
      {
        v18 = *v15++;
        v17 = v18;
        v19 = *v16++;
        *v14++ = v19 & v6 | v17 & a3;
        --v13;
      }

      while (v13);
      v20 = *(result + 328);
      if (v20)
      {
        v21 = a2 + 18;
        v22 = a4 + 18;
        v23 = a5 + 18;
        do
        {
          v25 = *v22++;
          v24 = v25;
          v26 = *v23++;
          *v21++ = v26 & v6 | v24 & a3;
          --v20;
        }

        while (v20);
      }
    }
  }

  return result;
}

uint64_t sub_239435D24(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(result + 328);
  if (v5)
  {
    do
    {
      v7 = *a4++;
      v6 = v7;
      v8 = *a5++;
      *a2++ = v8 & ~a3 | v6 & a3;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_239435D54(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(result + 328);
  if (v5)
  {
    v6 = ~a3;
    v7 = a4;
    v8 = a5;
    v9 = a2;
    do
    {
      v11 = *v7++;
      v10 = v11;
      v12 = *v8++;
      *v9++ = v12 & v6 | v10 & a3;
      --v5;
    }

    while (v5);
    v13 = *(result + 328);
    if (v13)
    {
      v14 = a2 + 9;
      v15 = a4 + 9;
      v16 = a5 + 9;
      do
      {
        v18 = *v15++;
        v17 = v18;
        v19 = *v16++;
        *v14++ = v19 & v6 | v17 & a3;
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

uint64_t sub_239435DC4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = 31;
  do
  {
    result = sub_239435D54(a1, a2, a3, a4, a5);
    a5 += 18;
    a4 += 18;
    a2 += 18;
    --v10;
  }

  while (v10);
  return result;
}

uint64_t sub_239435E34(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  result = sub_239432318(a1, v9, &v7, 0x42uLL, a3);
  if (result)
  {
    memset(v8, 0, sizeof(v8));
    sub_2394224A4(v8, *(a1 + 264) + 1, v9, v7);
    sub_23942389C(a2, v8, *(v8 + *(a1 + 264)), *(a1 + 256), *(a1 + 264));
    result = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_239435F14(uint64_t a1, int a2)
{
  if (a2 != 4)
  {
    abort();
  }
}

void *sub_239435F38(uint64_t a1)
{
  v2 = sub_2394500B0(0x38uLL);
  v4 = v2;
  if (!v2)
  {
    return v4;
  }

  if (!a1)
  {
    v5 = v2[5];
    if (!v5)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v5 = sub_2393FFBF4(a1);
  v4[5] = v5;
  if (v5)
  {
LABEL_4:
    nullsub_56(v5, v3);
  }

LABEL_5:
  *(v4 + 28) = 0x100000004;
  sub_2393F7EB0(v4 + 6);
  v6 = v4[5];
  if (v6)
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      if (!v7(v4))
      {
        sub_23941F114(&unk_27DF76CC8, v4, v4 + 6);
        v9 = v4[5];
        if (v9)
        {
          nullsub_56(v9, v8);
        }

        sub_239450144(v4);
        return 0;
      }
    }
  }

  return v4;
}

void *sub_239435FEC(int a1)
{
  v2 = sub_239435F38(0);
  if (v2)
  {
    v3 = sub_239433FAC(a1);
    *v2 = v3;
    if (!v3)
    {
      sub_23943603C(v2);
      return 0;
    }
  }

  return v2;
}

void sub_23943603C(uint64_t a1)
{
  if (a1 && sub_239455A20((a1 + 32)))
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = *(v3 + 24);
      if (v4)
      {
        v4(a1);
        v3 = *(a1 + 40);
      }

      nullsub_56(v3, v2);
    }

    sub_23941F114(&unk_27DF76CC8, a1, (a1 + 48));
    sub_239433D18(*a1);
    sub_23943469C(*(a1 + 8));
    sub_239450144(*(a1 + 16));

    sub_239450144(a1);
  }
}

uint64_t sub_2394360D8(uint64_t a1)
{
  if (!a1)
  {
    sub_2394170F4(15, 0, 67, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec_key.c", 177);
    return 0;
  }

  v2 = sub_239435F38(0);
  v3 = v2;
  if (v2)
  {
    if (!*a1 || sub_23943618C(v2, *a1))
    {
      v4 = *(a1 + 8);
      if (!v4 || sub_239436210(v3, v4))
      {
        v5 = *(a1 + 16);
        if (!v5 || sub_2394362AC(v3, v5))
        {
          *(v3 + 24) = *(a1 + 24);
          *(v3 + 28) = *(a1 + 28);
          return v3;
        }
      }
    }

    sub_23943603C(v3);
    return 0;
  }

  return v3;
}

BOOL sub_23943618C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    if (sub_2394321AC(v4, a2))
    {
      sub_2394170F4(15, 0, 130, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec_key.c", 216);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (a2 && !*(a2 + 512))
    {
      sub_2394559F0((a2 + 540));
    }

    *a1 = a2;
    return a2 != 0;
  }
}

BOOL sub_239436210(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  if (v3)
  {
    if (!a2 || !sub_2394321AC(v3, *a2))
    {
      sub_23943469C(*(a1 + 8));
      v7 = sub_239434824(a2, *a1);
      *(a1 + 8) = v7;
      return v7 != 0;
    }

    v5 = 130;
    v6 = 269;
  }

  else
  {
    v5 = 114;
    v6 = 264;
  }

  sub_2394170F4(15, 0, v5, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec_key.c", v6);
  return 0;
}

uint64_t sub_2394362AC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    result = sub_2394500B0(0x60uLL);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v7 = (result + 24);
    *result = result + 24;
    v8 = *(v2 + 264);
    *(result + 8) = v8;
    *(result + 12) = v8;
    *(result + 20) = 2;
    if (sub_239432A10(*a1, (result + 24), a2))
    {
      v9 = *(*a1 + 264);
      if (v9 < 1)
      {
        v12 = 1;
      }

      else
      {
        v10 = 0;
        do
        {
          v11 = *v7++;
          v10 |= v11;
          --v9;
        }

        while (v9);
        v12 = v10 == 0;
      }

      if (!v12)
      {
        sub_239450144(a1[2]);
        a1[2] = v6;
        return 1;
      }
    }

    sub_2394170F4(15, 0, 113, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec_key.c", 249);
    sub_239450144(v6);
  }

  else
  {
    sub_2394170F4(15, 0, 114, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec_key.c", 236);
  }

  return 0;
}

uint64_t sub_2394363D8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    return *(v1 + 48) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_2394363F4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 264);
  if (v2 < 1)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v4 = *a2++;
    v3 |= v4;
    --v2;
  }

  while (v2);
  return v3 == 0;
}

uint64_t sub_239436430(uint64_t a1)
{
  if (a1 && (v2 = *a1) != 0 && (v3 = *(a1 + 8)) != 0)
  {
    if (sub_239434938(v2, v3))
    {
      v4 = 119;
      v5 = 299;
    }

    else
    {
      if (sub_2394349F8(*a1, *(a1 + 8)))
      {
        v7 = *(a1 + 16);
        if (v7)
        {
          v9 = 0;
          memset(v8, 0, sizeof(v8));
          if (!sub_239435A44(*a1, v8, v7 + 24))
          {
            v4 = 15;
            v5 = 317;
            goto LABEL_7;
          }

          if (!sub_239434114(*a1, v8, *(a1 + 8) + 8))
          {
            v4 = 113;
            v5 = 324;
            goto LABEL_7;
          }
        }

        return 1;
      }

      v4 = 120;
      v5 = 305;
    }
  }

  else
  {
    v4 = 67;
    v5 = 294;
  }

LABEL_7:
  sub_2394170F4(15, 0, v4, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec_key.c", v5);
  return 0;
}

uint64_t sub_23943656C(uint64_t *a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = a1[5];
  if (v2 && (*(v2 + 48) & 1) != 0)
  {
    v7 = 338;
    goto LABEL_11;
  }

  result = sub_239436430(a1);
  if (result)
  {
    if (!a1[2])
    {
LABEL_7:
      result = 1;
      goto LABEL_12;
    }

    v9[0] = 0;
    v9[1] = 0;
    v4 = sub_239433008(v9, 0x10uLL, a1);
    if (v4)
    {
      v5 = v4;
      v6 = sub_23943277C(v9, 0x10uLL, v4, a1);
      sub_2394136CC(v5);
      if (v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_2394136CC(0);
    }

    v7 = 356;
LABEL_11:
    sub_2394170F4(15, 0, 132, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec_key.c", v7);
    result = 0;
  }

LABEL_12:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23943666C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a3 && a2 && (v6 = *a1) != 0)
  {
    v7 = sub_2394345C0(v6);
    if (v7 && (sub_2394351E8(*a1, v7, a2, a3), v8) && sub_239436210(a1, v7))
    {
      v9 = sub_239436430(a1);
    }

    else
    {
      v9 = 0;
    }

    sub_23943469C(v7);
  }

  else
  {
    sub_2394170F4(15, 0, 67, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec_key.c", 378);
    return 0;
  }

  return v9;
}

BOOL sub_239436728(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (v5)
  {
    v9 = sub_2394345C0(v5);
    v10 = v9 && sub_2394367DC(*a1, v9, a2, a3, a4) && sub_239436210(a1, v9);
    sub_23943469C(v9);
  }

  else
  {
    sub_2394170F4(15, 0, 114, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec_key.c", 399);
    return 0;
  }

  return v10;
}

uint64_t sub_2394367DC(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (sub_2394321AC(a1, *a2))
  {
    v10 = 106;
    v11 = 205;
LABEL_3:
    sub_2394170F4(15, 0, v10, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/oct.c", v11);
    return 0;
  }

  if (!a4)
  {
    v10 = 100;
    v11 = 140;
    goto LABEL_3;
  }

  v14 = *a3;
  if (v14 == 4)
  {
    v43 = 0u;
    memset(v44, 0, sizeof(v44));
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    if (sub_239438470(a1, &v40, a3, a4))
    {
      v15 = v40;
      *(a2 + 24) = v41;
      v16 = v43;
      *(a2 + 40) = v42;
      *(a2 + 56) = v16;
      *(a2 + 72) = *&v44[0];
      *(a2 + 8) = v15;
      v17 = *(v44 + 8);
      *(a2 + 144) = *(&v44[4] + 1);
      v18 = *(&v44[3] + 8);
      *(a2 + 112) = *(&v44[2] + 8);
      *(a2 + 128) = v18;
      v19 = *(&v44[1] + 8);
      *(a2 + 80) = v17;
      *(a2 + 96) = v19;
      *(a2 + 152) = *(a1 + 160);
      v20 = *(a1 + 176);
      v21 = *(a1 + 192);
      v22 = *(a1 + 208);
      *(a2 + 216) = *(a1 + 224);
      *(a2 + 200) = v22;
      *(a2 + 184) = v21;
      *(a2 + 168) = v20;
      return 1;
    }

    else
    {
      v12 = 0;
      if (*(a1 + 532))
      {
        *(a2 + 8) = *(a1 + 16);
        v26 = *(a1 + 32);
        v27 = *(a1 + 48);
        v28 = *(a1 + 64);
        *(a2 + 72) = *(a1 + 80);
        *(a2 + 56) = v28;
        *(a2 + 40) = v27;
        *(a2 + 24) = v26;
        v29 = *(a1 + 120);
        v30 = *(a1 + 136);
        v31 = *(a1 + 104);
        *(a2 + 144) = *(a1 + 152);
        *(a2 + 112) = v29;
        *(a2 + 128) = v30;
        *(a2 + 96) = v31;
        *(a2 + 80) = *(a1 + 88);
        v33 = *(a1 + 192);
        v32 = *(a1 + 208);
        v34 = *(a1 + 176);
        *(a2 + 216) = *(a1 + 224);
        *(a2 + 168) = v34;
        *(a2 + 200) = v32;
        *(a2 + 184) = v33;
        *(a2 + 152) = *(a1 + 160);
      }

      else
      {
        *(a2 + 72) = 0;
        *(a2 + 56) = 0u;
        *(a2 + 40) = 0u;
        *(a2 + 24) = 0u;
        *(a2 + 8) = 0u;
        *(a2 + 80) = 0u;
        *(a2 + 96) = 0u;
        *(a2 + 112) = 0u;
        *(a2 + 128) = 0u;
        *(a2 + 144) = 0;
        *(a2 + 152) = 0u;
        *(a2 + 168) = 0u;
        *(a2 + 184) = 0u;
        *(a2 + 200) = 0u;
        *(a2 + 216) = 0;
      }
    }

    return v12;
  }

  v23 = (sub_239422114((a1 + 320)) + 7) >> 3;
  if ((v14 & 0xFE) != 2 || v23 + 1 != a4)
  {
    v10 = 109;
    v11 = 162;
    goto LABEL_3;
  }

  if (a5)
  {
    v25 = 0;
  }

  else
  {
    v35 = sub_23945004C(0x30uLL);
    if (!v35)
    {
      return 0;
    }

    a5 = v35;
    *(v35 + 26) = 0u;
    *v35 = 0u;
    v35[1] = 0u;
    v25 = v35;
  }

  sub_239422DA4(a5);
  v36 = sub_239422E50(a5);
  if (v36)
  {
    v37 = v36;
    if (sub_23942253C(a3 + 1, v23, v36))
    {
      if ((sub_2394228F8(*v37, *(v37 + 8), *(a1 + 320), *(a1 + 328)) & 0x80000000) != 0)
      {
        v12 = sub_2394386BC(a1, a2, v37, v14 & 1, a5) != 0;
        goto LABEL_27;
      }

      sub_2394170F4(15, 0, 109, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/oct.c", 186);
    }
  }

  v12 = 0;
LABEL_27:
  if (!*(a5 + 40))
  {
    v38 = *(a5 + 8);
    v39 = *(a5 + 16) - 1;
    *(a5 + 16) = v39;
    *(a5 + 32) = *(v38 + 8 * v39);
  }

  sub_239422D38(v25);
  return v12;
}

char *sub_239436AFC(uint64_t *a1, int a2, char **a3)
{
  if (a1 && (v6 = a1[1]) != 0 && (v7 = *a1) != 0)
  {

    return sub_239436B60(v7, v6, a2, a3);
  }

  else
  {
    sub_2394170F4(15, 0, 114, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec_key.c", 414);
    return 0;
  }
}

char *sub_239436B60(uint64_t a1, uint64_t *a2, int a3, char **a4)
{
  *a4 = 0;
  result = sub_239438578(a1, a2, a3, 0, 0);
  if (result)
  {
    v9 = result;
    result = sub_23945004C(result);
    if (result)
    {
      v10 = result;
      result = sub_239438578(a1, a2, a3, result, v9);
      if (result)
      {
        *a4 = v10;
      }

      else
      {
        sub_239450144(v10);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_239436BF0(uint64_t *a1, unsigned __int8 *a2, unint64_t a3)
{
  if (!*a1)
  {
    v8 = 114;
    v9 = 423;
LABEL_7:
    sub_2394170F4(15, 0, v8, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec_key.c", v9);
    return 0;
  }

  if ((sub_239422114((*a1 + 256)) + 7) >> 3 != a3)
  {
    v8 = 128;
    v9 = 428;
    goto LABEL_7;
  }

  v6 = sub_23942253C(a2, a3, 0);
  if (v6)
  {
    v7 = sub_2394362AC(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  sub_239421EC8(v6);
  return v7;
}

unint64_t sub_239436CBC(uint64_t *a1, char *a2, unint64_t a3)
{
  v3 = *a1;
  if (!*a1 || (v4 = a1[2]) == 0)
  {
    v9 = 114;
    v10 = 441;
LABEL_7:
    sub_2394170F4(15, 0, v9, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec_key.c", v10);
    return 0;
  }

  v7 = sub_239422114((v3 + 256)) + 7;
  v8 = v7 >> 3;
  if (a2)
  {
    if (v8 <= a3)
    {
      sub_2394226C4(a2, v7 >> 3, (v4 + 24), *(v3 + 264));
      return v8;
    }

    v9 = 100;
    v10 = 451;
    goto LABEL_7;
  }

  return v8;
}

void sub_239436D74(uint64_t a1, char *a2, unint64_t *a3, char *a4)
{
  v8 = (sub_239422114((a1 + 256)) + 7) >> 3;
  sub_2394226C4(a2, v8, a4, *(a1 + 264));
  *a3 = v8;
}

char *sub_239436DD8(uint64_t *a1, char **a2)
{
  *a2 = 0;
  result = sub_239436CBC(a1, 0, 0);
  if (result)
  {
    v5 = result;
    result = sub_23945004C(result);
    if (result)
    {
      v6 = result;
      result = sub_239436CBC(a1, result, v5);
      if (result)
      {
        *a2 = v6;
      }

      else
      {
        sub_239450144(v6);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_239436E50(uint64_t a1)
{
  if (!a1 || (v2 = *a1) == 0)
  {
    v3 = 67;
    v4 = 485;
    goto LABEL_6;
  }

  if (sub_239422114((v2 + 256)) <= 159)
  {
    v3 = 112;
    v4 = 491;
LABEL_6:
    sub_2394170F4(15, 0, v3, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec_key.c", v4);
    return 0;
  }

  v6 = sub_2394500B0(0x60uLL);
  v7 = v6;
  if (v6)
  {
    *v6 = v6 + 24;
    v8 = *(v2 + 264);
    *(v6 + 2) = v8;
    *(v6 + 3) = v8;
    *(v6 + 5) = 2;
  }

  v9 = sub_2394345C0(*a1);
  v10 = v9;
  if (!v7 || !v9 || !sub_23942C260(v7 + 24, 1uLL, *(*a1 + 256), *(*a1 + 264), &unk_2395CAD98) || !sub_239435A44(*a1, (v10 + 1), (v7 + 24)))
  {
    sub_23943469C(v10);
    sub_239450144(v7);
    return 0;
  }

  sub_239450144(*(a1 + 16));
  *(a1 + 16) = v7;
  sub_23943469C(*(a1 + 8));
  *(a1 + 8) = v10;
  return 1;
}

uint64_t sub_239436F78(uint64_t a1)
{
  if (a1 && *a1)
  {
    if (sub_239436E50(a1) && sub_23943656C(a1))
    {
      return 1;
    }

    else
    {
      sub_23943469C(*(a1 + 8));
      sub_239450144(*(a1 + 16));
      result = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }
  }

  else
  {
    sub_2394170F4(15, 0, 67, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/ec_key.c", 525);
    return 0;
  }

  return result;
}

void sub_239437058(uint64_t a1, char *a2, unint64_t *a3, uint64_t a4)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_239425E7C(v8, *(a1 + 328), a4, *(a1 + 328), a1 + 296);
  v7 = (sub_239422114((a1 + 320)) + 7) >> 3;
  sub_2394226C4(a2, v7, v8, *(a1 + 328));
  *a3 = v7;
}

void sub_2394370E0(uint64_t a1, char *a2, unint64_t *a3, char *a4)
{
  v8 = (sub_239422114((a1 + 320)) + 7) >> 3;
  sub_2394226C4(a2, v8, a4, *(a1 + 328));
  *a3 = v8;
}

uint64_t sub_239437144(uint64_t a1, unint64_t *a2, unsigned __int8 *a3, unint64_t a4)
{
  result = sub_23943718C(a1, a2, a3, a4);
  if (result)
  {
    sub_239425F5C(a2, a2, *(a1 + 296), *(a1 + 328), a1 + 296);
    return 1;
  }

  return result;
}

uint64_t sub_23943718C(uint64_t a1, unint64_t *a2, unsigned __int8 *a3, unint64_t a4)
{
  if ((sub_239422114((a1 + 320)) + 7) >> 3 != a4)
  {
    v8 = 324;
    goto LABEL_5;
  }

  sub_2394224A4(a2, *(a1 + 328), a3, a4);
  if ((sub_2394228F8(a2, *(a1 + 328), *(a1 + 320), *(a1 + 328)) & 0x80000000) == 0)
  {
    v8 = 331;
LABEL_5:
    sub_2394170F4(15, 0, 128, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/simple.c", v8);
    return 0;
  }

  return 1;
}

void sub_239437234(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t a4)
{
  sub_239425E7C(a2, *(a1 + 328), a3, a4, a1 + 296);
  sub_239425F5C(a2, a2, *(a1 + 296), *(a1 + 328), a1 + 296);
  v6 = *(a1 + 328);
  v7 = *(a1 + 296);

  sub_239425F5C(a2, a2, v7, v6, a1 + 296);
}

uint64_t sub_2394372BC(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v4 = a3;
  if (a3 == a4)
  {

    return sub_2394379FC(a1, a2, a3);
  }

  else
  {
    v99 = 0;
    memset(v98, 0, sizeof(v98));
    v97 = 0;
    memset(v96, 0, sizeof(v96));
    v95 = 0;
    memset(v94, 0, sizeof(v94));
    v8 = (a3 + 18);
    v9 = *(a1 + 328);
    if (v9 <= 0)
    {
      v19 = 0;
      v20 = 0;
      v15 = a4 + 18;
    }

    else
    {
      v10 = 0;
      v11 = (a3 + 18);
      v12 = *(a1 + 328);
      do
      {
        v13 = *v11++;
        v10 |= v13;
        --v12;
      }

      while (v12);
      v14 = 0;
      v15 = a4 + 18;
      v16 = (a4 + 18);
      v17 = *(a1 + 328);
      do
      {
        v18 = *v16++;
        v14 |= v18;
        --v17;
      }

      while (v17);
      if (v10)
      {
        v19 = -1;
      }

      else
      {
        v19 = 0;
      }

      if (v14)
      {
        v20 = -1;
      }

      else
      {
        v20 = 0;
      }
    }

    v93 = 0;
    memset(v92, 0, sizeof(v92));
    sub_239425F5C(v92, a3 + 18, a3 + 18, v9, a1 + 296);
    v91 = 0;
    memset(v90, 0, sizeof(v90));
    sub_239425F5C(v90, v15, v15, *(a1 + 328), a1 + 296);
    v89 = 0;
    memset(v88, 0, sizeof(v88));
    sub_239425F5C(v88, v4, v90, *(a1 + 328), a1 + 296);
    v87 = 0;
    memset(v86, 0, sizeof(v86));
    sub_239435174(a1, v86, v4 + 18, v15);
    sub_239425F5C(v86, v86, v86, *(a1 + 328), a1 + 296);
    v104 = 0;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    sub_239423980(v86, v86, v92, *(a1 + 320), &v100, *(a1 + 328));
    v104 = 0;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    sub_239423980(v86, v86, v90, *(a1 + 320), &v100, *(a1 + 328));
    v85 = 0;
    memset(v84, 0, sizeof(v84));
    sub_239425F5C(v84, v15, v90, *(a1 + 328), a1 + 296);
    v22 = (v4 + 9);
    sub_239425F5C(v84, v84, v4 + 9, *(a1 + 328), a1 + 296);
    v83 = 0;
    memset(v82, 0, sizeof(v82));
    sub_239425F5C(v82, a4, v92, *(a1 + 328), a1 + 296);
    v81 = 0;
    memset(v80, 0, sizeof(v80));
    v104 = 0;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    sub_239423980(v80, v82, v88, *(a1 + 320), &v100, *(a1 + 328));
    v23 = *(a1 + 328);
    if (v23 < 1)
    {
      v28 = 0;
    }

    else
    {
      v24 = 0;
      v25 = v80;
      v26 = *(a1 + 328);
      do
      {
        v27 = *v25++;
        v24 |= v27;
        --v26;
      }

      while (v26);
      if (v24)
      {
        v28 = -1;
      }

      else
      {
        v28 = 0;
      }
    }

    sub_239425F5C(v94, v80, v86, v23, a1 + 296);
    v79 = 0;
    memset(v78, 0, sizeof(v78));
    sub_239425F5C(v78, v4 + 18, v92, *(a1 + 328), a1 + 296);
    v77 = 0;
    memset(v76, 0, sizeof(v76));
    v29 = (a4 + 9);
    sub_239425F5C(v76, a4 + 9, v78, *(a1 + 328), a1 + 296);
    v75 = 0;
    memset(v74, 0, sizeof(v74));
    v104 = 0;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    sub_239423980(v74, v76, v84, *(a1 + 320), &v100, *(a1 + 328));
    sub_239435174(a1, v74, v74, v74);
    v30 = *(a1 + 328);
    if (v30 < 1)
    {
      v34 = 0;
    }

    else
    {
      v31 = 0;
      v32 = v74;
      do
      {
        v33 = *v32++;
        v31 |= v33;
        --v30;
      }

      while (v30);
      if (v31)
      {
        v34 = -1;
      }

      else
      {
        v34 = 0;
      }
    }

    if ((v19 & ~(v34 | v28) & v20) != 0)
    {
      return sub_2394379FC(a1, a2, v4);
    }

    else
    {
      v73 = 0;
      memset(v72, 0, sizeof(v72));
      sub_239435174(a1, v72, v80, v80);
      sub_239425F5C(v72, v72, v72, *(a1 + 328), a1 + 296);
      v71 = 0;
      memset(v70, 0, sizeof(v70));
      sub_239425F5C(v70, v80, v72, *(a1 + 328), a1 + 296);
      v69 = 0;
      memset(v68, 0, sizeof(v68));
      sub_239425F5C(v68, v88, v72, *(a1 + 328), a1 + 296);
      sub_239425F5C(v98, v74, v74, *(a1 + 328), a1 + 296);
      v104 = 0;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      sub_239423980(v98, v98, v70, *(a1 + 320), &v100, *(a1 + 328));
      v104 = 0;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      sub_239423980(v98, v98, v68, *(a1 + 320), &v100, *(a1 + 328));
      v104 = 0;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      sub_239423980(v98, v98, v68, *(a1 + 320), &v100, *(a1 + 328));
      v104 = 0;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      sub_239423980(v96, v68, v98, *(a1 + 320), &v100, *(a1 + 328));
      sub_239425F5C(v96, v96, v74, *(a1 + 328), a1 + 296);
      v67 = 0;
      memset(v66, 0, sizeof(v66));
      sub_239425F5C(v66, v84, v70, *(a1 + 328), a1 + 296);
      v104 = 0;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      sub_239423980(v96, v96, v66, *(a1 + 320), &v100, *(a1 + 328));
      v104 = 0;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      result = sub_239423980(v96, v96, v66, *(a1 + 320), &v100, *(a1 + 328));
      v35 = *(a1 + 328);
      if (v35)
      {
        v36 = ~v19;
        v37 = v98;
        v38 = a4;
        v39 = *(a1 + 328);
        do
        {
          v40 = *v38++;
          *v37 = v40 & v36 | *v37 & v19;
          ++v37;
          --v39;
        }

        while (v39);
        v41 = ~v20;
        v42 = v98;
        v43 = a2;
        do
        {
          v45 = *v42++;
          v44 = v45;
          v46 = *v4++;
          *v43++ = v46 & v41 | v44 & v20;
          --v35;
        }

        while (v35);
        v47 = *(a1 + 328);
        if (v47)
        {
          v48 = v96;
          v49 = *(a1 + 328);
          do
          {
            v50 = *v29++;
            *v48 = v50 & v36 | *v48 & v19;
            ++v48;
            --v49;
          }

          while (v49);
          v51 = (a2 + 9);
          v52 = v96;
          do
          {
            v54 = *v52++;
            v53 = v54;
            v55 = *v22++;
            *v51++ = v55 & v41 | v53 & v20;
            --v47;
          }

          while (v47);
          v56 = *(a1 + 328);
          if (v56)
          {
            v57 = (a4 + 18);
            v58 = v94;
            v59 = *(a1 + 328);
            do
            {
              v60 = *v57++;
              *v58 = v60 & v36 | *v58 & v19;
              ++v58;
              --v59;
            }

            while (v59);
            v61 = (a2 + 18);
            v62 = v94;
            do
            {
              v64 = *v62++;
              v63 = v64;
              v65 = *v8++;
              *v61++ = v65 & v41 | v63 & v20;
              --v56;
            }

            while (v56);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2394379FC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (*(a1 + 528))
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_239425F5C(&v41, a3 + 18, a3 + 18, *(a1 + 328), a1 + 296);
    sub_239425F5C(&v36, a3 + 9, a3 + 9, *(a1 + 328), a1 + 296);
    sub_239425F5C(&v31, a3, &v36, *(a1 + 328), a1 + 296);
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    sub_239423980(&v26, a3, &v41, *(a1 + 320), &v46, *(a1 + 328));
    sub_239435174(a1, &v21, a3, &v41);
    sub_239435174(a1, &v16, &v21, &v21);
    sub_239435174(a1, &v21, &v21, &v16);
    sub_239425F5C(v14, &v26, &v21, *(a1 + 328), a1 + 296);
    sub_239425F5C(a2, v14, v14, *(a1 + 328), a1 + 296);
    sub_239435174(a1, v12, &v31, &v31);
    sub_239435174(a1, v12, v12, v12);
    sub_239435174(a1, &v16, v12, v12);
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    sub_239423980(a2, a2, &v16, *(a1 + 320), &v46, *(a1 + 328));
    sub_239435174(a1, &v41, &v36, &v41);
    sub_239435174(a1, &v26, a3 + 9, a3 + 18);
    sub_239425F5C(a2 + 18, &v26, &v26, *(a1 + 328), a1 + 296);
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    sub_239423980(a2 + 18, a2 + 18, &v41, *(a1 + 320), &v46, *(a1 + 328));
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    sub_239423980(a2 + 9, v12, a2, *(a1 + 320), &v46, *(a1 + 328));
    sub_239435174(a1, &v36, &v36, &v36);
    sub_239425F5C(&v36, &v36, &v36, *(a1 + 328), a1 + 296);
    sub_239425F5C(a2 + 9, v14, a2 + 9, *(a1 + 328), a1 + 296);
    sub_239435174(a1, &v36, &v36, &v36);
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v6 = *(a1 + 320);
    v7 = *(a1 + 328);
    v8 = a2 + 9;
    v9 = a2 + 9;
    v10 = &v36;
  }

  else
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    sub_239425F5C(&v41, a3, a3, *(a1 + 328), a1 + 296);
    sub_239425F5C(&v36, a3 + 9, a3 + 9, *(a1 + 328), a1 + 296);
    sub_239425F5C(&v31, &v36, &v36, *(a1 + 328), a1 + 296);
    sub_239425F5C(&v26, a3 + 18, a3 + 18, *(a1 + 328), a1 + 296);
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    sub_239435174(a1, &v21, a3, &v36);
    sub_239425F5C(&v21, &v21, &v21, *(a1 + 328), a1 + 296);
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    sub_239423980(&v21, &v21, &v41, *(a1 + 320), &v46, *(a1 + 328));
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    sub_239423980(&v21, &v21, &v31, *(a1 + 320), &v46, *(a1 + 328));
    sub_239435174(a1, &v21, &v21, &v21);
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    sub_239425F5C(&v16, &v26, &v26, *(a1 + 328), a1 + 296);
    sub_239425F5C(&v16, (a1 + 360), &v16, *(a1 + 328), a1 + 296);
    sub_239435174(a1, &v16, &v16, &v41);
    sub_239435174(a1, &v16, &v16, &v41);
    sub_239435174(a1, &v16, &v16, &v41);
    sub_239425F5C(a2, &v16, &v16, *(a1 + 328), a1 + 296);
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    sub_239423980(a2, a2, &v21, *(a1 + 320), &v46, *(a1 + 328));
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    sub_239423980(a2, a2, &v21, *(a1 + 320), &v46, *(a1 + 328));
    sub_239435174(a1, a2 + 18, a3 + 9, a3 + 18);
    sub_239425F5C(a2 + 18, a2 + 18, a2 + 18, *(a1 + 328), a1 + 296);
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    sub_239423980(a2 + 18, a2 + 18, &v36, *(a1 + 320), &v46, *(a1 + 328));
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    sub_239423980(a2 + 18, a2 + 18, &v26, *(a1 + 320), &v46, *(a1 + 328));
    sub_239435174(a1, &v31, &v31, &v31);
    sub_239435174(a1, &v31, &v31, &v31);
    sub_239435174(a1, &v31, &v31, &v31);
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    sub_239423980(a2 + 9, &v21, a2, *(a1 + 320), &v46, *(a1 + 328));
    sub_239425F5C(a2 + 9, a2 + 9, &v16, *(a1 + 328), a1 + 296);
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v6 = *(a1 + 320);
    v7 = *(a1 + 328);
    v8 = a2 + 9;
    v9 = a2 + 9;
    v10 = &v31;
  }

  return sub_239423980(v8, v9, v10, v6, &v46, v7);
}

uint64_t sub_239438058(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 328);
  if (v2 < 1)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = *a2++;
    v3 |= v4;
    --v2;
  }

  while (v2);
  if (v3)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23943808C(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  return sub_239423980(a2, a3, a4, *(a1 + 320), v5, *(a1 + 328));
}

void sub_2394380D8()
{
  qword_27DF78950 = sub_239449D08;
  qword_27DF78958 = sub_239449E40;
  qword_27DF78960 = sub_2394372BC;
  qword_27DF78968 = sub_2394379FC;
  qword_27DF78970 = sub_23943925C;
  qword_27DF78978 = sub_239439620;
  qword_27DF78980 = sub_23943962C;
  qword_27DF78990 = sub_23943A228;
  qword_27DF78998 = sub_239439BE8;
  qword_27DF789A0 = sub_239439D90;
  qword_27DF789A8 = sub_239437028;
  qword_27DF789B0 = sub_239437044;
  qword_27DF789B8 = sub_239437058;
  qword_27DF789C0 = sub_239437144;
  qword_27DF789C8 = sub_239437234;
  qword_27DF789D0 = sub_2394372A4;
  qword_27DF789D8 = sub_239438F4C;
  qword_27DF789E0 = sub_239438F64;
  qword_27DF789E8 = sub_23944A070;
}

unint64_t sub_239438220(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v5 = *(a1 + 328);
  if (v5 < 1)
  {
    v10 = 0;
  }

  else
  {
    v6 = 0;
    v7 = a3;
    v8 = *(a1 + 328);
    do
    {
      v9 = *v7++;
      v6 |= v9;
      --v8;
    }

    while (v8);
    if (v6)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }
  }

  result = sub_239421D64(a2, *(a1 + 320), a3, v5);
  if (*(a1 + 328) >= 1)
  {
    v12 = 0;
    do
    {
      a2[v12++] &= v10;
    }

    while (v12 < *(a1 + 328));
  }

  return result;
}

uint64_t sub_2394382C0(uint64_t a1, int a2)
{
  if (a2 == 2 || a2 == 4)
  {
    v3 = sub_239422114((a1 + 320));
    if (a2 == 4)
    {
      v4 = (v3 + 7) >> 3;
    }

    else
    {
      v4 = 0;
    }

    return ((v3 + 7) >> 3) + v4 + 1;
  }

  else
  {
    sub_2394170F4(15, 0, 111, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/oct.c", 79);
    return 0;
  }
}

unint64_t sub_239438334(uint64_t a1, uint64_t a2, int a3, char *a4, unint64_t a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = sub_2394382C0(a1, a3);
  if (v10 <= a5)
  {
    v11 = v10;
    v15 = 0;
    (*(*a1 + 104))(a1, a4 + 1, &v15, a2);
    if (a3 == 4)
    {
      (*(*a1 + 104))(a1, &a4[v15 + 1], &v15, a2 + 72);
      v12 = 4;
    }

    else
    {
      (*(*a1 + 104))(a1, v16, &v15, a2 + 72);
      v12 = (v16[v15 - 1] & 1) + a3;
    }

    *a4 = v12;
  }

  else
  {
    sub_2394170F4(15, 0, 100, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/oct.c", 97);
    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t sub_239438470(uint64_t *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v8 = (sub_239422114(a1 + 40) + 7) >> 3;
  if (((2 * v8) | 1) == a4 && *a3 == 4)
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    v9 = a3 + 1;
    result = (*(*a1 + 112))(a1, v13, v9, v8);
    if (result)
    {
      result = (*(*a1 + 112))(a1, v11, &v9[v8], v8);
      if (result)
      {
        return sub_239434FD8(a1, a2, v13, v11);
      }
    }
  }

  else
  {
    sub_2394170F4(15, 0, 109, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/oct.c", 122);
    return 0;
  }

  return result;
}

unint64_t sub_239438578(uint64_t a1, uint64_t *a2, int a3, char *a4, unint64_t a5)
{
  if (sub_2394321AC(a1, *a2))
  {
    v10 = 106;
    v11 = 215;
LABEL_3:
    sub_2394170F4(15, 0, v10, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/oct.c", v11);
    return 0;
  }

  if (a4)
  {
    memset(v17, 0, sizeof(v17));
    if ((**a1)(a1, (a2 + 1), v17, &v17[4] + 8))
    {
      return sub_239438334(a1, v17, a3, a4, a5);
    }

    return 0;
  }

  v13 = *(a1 + 328);
  if (v13 < 1)
  {
    goto LABEL_16;
  }

  v14 = 0;
  v15 = a2 + 19;
  do
  {
    v16 = *v15++;
    v14 |= v16;
    --v13;
  }

  while (v13);
  if (!v14)
  {
LABEL_16:
    v10 = 119;
    v11 = 222;
    goto LABEL_3;
  }

  return sub_2394382C0(a1, a3);
}

uint64_t sub_2394386BC(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  if (sub_2394321AC(a1, *a2))
  {
    v10 = 106;
    v11 = 259;
LABEL_6:
    sub_2394170F4(15, 0, v10, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/oct.c", v11);
    return 0;
  }

  if (*(a3 + 16) || (sub_2394229D8(a3, a1 + 320) & 0x80000000) == 0)
  {
    v10 = 107;
    v11 = 265;
    goto LABEL_6;
  }

  sub_239416A38();
  if (a5)
  {
    v14 = 0;
  }

  else
  {
    v15 = sub_23945004C(0x30uLL);
    if (!v15)
    {
      return 0;
    }

    v14 = v15;
    *(v15 + 26) = 0u;
    *v15 = 0u;
    v15[1] = 0u;
    a5 = v15;
  }

  v33 = a4 != 0;
  sub_239422DA4(a5);
  v16 = sub_239422E50(a5);
  v17 = sub_239422E50(a5);
  v18 = sub_239422E50(a5);
  v19 = sub_239422E50(a5);
  v20 = sub_239422E50(a5);
  if (!v20)
  {
    goto LABEL_47;
  }

  v21 = v20;
  if (!sub_2394343D4(a1, 0, v18, v19) || !sub_23942436C(v17, a3, a1 + 320, a5) || !sub_2394241E0(v16, v17, a3, a1 + 320, a5))
  {
    goto LABEL_47;
  }

  if (*(a1 + 528))
  {
    if (!sub_239423E1C(v17, a3, a3, a1 + 320, a5) || !sub_239423E1C(v17, v17, a3, a1 + 320, a5) || !sub_239424068(v16, v16, v17, a1 + 320, a5))
    {
      goto LABEL_47;
    }
  }

  else if (!sub_2394241E0(v17, v18, a3, a1 + 320, a5) || !sub_239423E1C(v16, v16, v17, a1 + 320, a5))
  {
    goto LABEL_47;
  }

  if (!sub_239423E1C(v16, v16, v19, a1 + 320, a5))
  {
    goto LABEL_47;
  }

  if (!sub_23942C8A8(v21, v16, a1 + 320, a5))
  {
    if ((sub_2394169C0() & 0xFF000FFF) == 0x300006E)
    {
      sub_239416A38();
      v24 = 107;
      v25 = 328;
    }

    else
    {
      v24 = 3;
      v25 = 330;
    }

    goto LABEL_46;
  }

  LODWORD(v22) = *(v21 + 8);
  if (v22 < 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = **v21 & 1;
  }

  if (v23 != v33)
  {
    if (!v22)
    {
      goto LABEL_40;
    }

    v27 = 0;
    v22 = v22;
    v28 = *v21;
    do
    {
      v29 = *v28;
      v28 += 2;
      v27 |= v29;
      --v22;
    }

    while (v22);
    if (!v27)
    {
LABEL_40:
      v24 = 108;
      v25 = 337;
LABEL_46:
      sub_2394170F4(15, 0, v24, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/ec/oct.c", v25);
      goto LABEL_47;
    }

    if (sub_239421484(v21, a1 + 320, v21))
    {
      LODWORD(v22) = *(v21 + 8);
      goto LABEL_32;
    }

LABEL_47:
    v12 = 0;
    goto LABEL_48;
  }

LABEL_32:
  if (v22 < 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = **v21 & 1;
  }

  if (v26 != v33)
  {
    v24 = 68;
    v25 = 345;
    goto LABEL_46;
  }

  sub_2394351E8(a1, a2, a3, v21);
  v12 = v30;
LABEL_48:
  if (!*(a5 + 40))
  {
    v31 = *(a5 + 8);
    v32 = *(a5 + 16) - 1;
    *(a5 + 16) = v32;
    *(a5 + 32) = *(v31 + 8 * v32);
  }

  sub_239422D38(v14);
  return v12;
}

void sub_239438AB0()
{
  qword_27DF789F0 = sub_23944A238;
  qword_27DF78A00 = sub_23944A79C;
  qword_27DF78A08 = sub_23944A94C;
  qword_27DF78A10 = sub_23944AA64;
  qword_27DF78A18 = sub_23944AD00;
  qword_27DF78A28 = sub_23944AF64;
  qword_27DF78A48 = sub_23944B33C;
  qword_27DF78A50 = sub_23944B424;
  qword_27DF78A58 = sub_2394370E0;
  qword_27DF78A60 = sub_23943718C;
  qword_27DF78A78 = sub_239438F4C;
  qword_27DF78A80 = sub_239438F64;
  qword_27DF78A88 = sub_2394391A4;
}

void sub_239438BC4()
{
  qword_27DF78A90 = sub_23944C6C0;
  qword_27DF78AA0 = sub_23944CA30;
  qword_27DF78AA8 = sub_23944CB08;
  qword_27DF78AB0 = sub_23944CBB0;
  qword_27DF78AB8 = sub_23944D014;
  qword_27DF78AC8 = sub_23944D1E0;
  qword_27DF78AE8 = sub_239437028;
  qword_27DF78AF0 = sub_239437044;
  qword_27DF78AF8 = sub_239437058;
  qword_27DF78B00 = sub_239437144;
  qword_27DF78B08 = sub_239437234;
  qword_27DF78B10 = sub_2394372A4;
  qword_27DF78B18 = sub_239438F4C;
  qword_27DF78B20 = sub_239438F64;
  qword_27DF78B28 = sub_23944D540;
}

void sub_239438D04(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t a4)
{
  sub_239425E7C(a2, *(a1 + 264), a3, a4, a1 + 232);
  v6 = *(a1 + 264);
  v7 = *(a1 + 232);

  sub_239425F5C(a2, a2, v7, v6, a1 + 232);
}

void sub_239438D78(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9[9] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 256);
  v6 = *(a1 + 264);
  v7 = sub_2394216D4(a2, a3, a4, v6);
  sub_23942390C(a2, v7, v5, v9, v6);
  sub_239450194(v9, 0x48uLL);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_239438E14(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  v5[9] = *MEMORY[0x277D85DE8];
  sub_239423980(a2, a3, a4, *(a1 + 256), v5, *(a1 + 264));
  sub_239450194(v5, 0x48uLL);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_239438E88(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  v6[9] = *MEMORY[0x277D85DE8];
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  sub_239423980(a2, v4, a3, *(a1 + 256), v6, *(a1 + 264));
  sub_239450194(v6, 0x48uLL);
  v3 = *MEMORY[0x277D85DE8];
}

uint64_t sub_239438F08(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(result + 264);
  if (v5)
  {
    do
    {
      v7 = *a4++;
      v6 = v7;
      v8 = *a5++;
      *a2++ = v8 & ~a3 | v6 & a3;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_239438F64(unsigned int *a1, unint64_t *a2, uint64_t a3)
{
  v3 = a1[66];
  if (v3 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = 8 * v3;
  do
  {
    v7 |= *(a3 + v6);
    v6 += 8;
  }

  while (v8 != v6);
  if (!v7)
  {
    return 0;
  }

  (*(*a1 + 136))(a1, a2);
  sub_239425E7C(a2, a1[66], a2, a1[66], (a1 + 58));
  return 1;
}

uint64_t sub_239439008(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v7 = *(*a1 + 88);
  v6 = *(*a1 + 96);
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v24 = 0;
  v8 = (a3 + 18);
  memset(v23, 0, sizeof(v23));
  v6(a1, v23, a3 + 18);
  v7(a1, v25, a2, v23);
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  sub_239423980(v25, v25, a3, *(a1 + 320), &v27, *(a1 + 328));
  v9 = *(a1 + 328);
  if (v9 < 1)
  {
    v13 = -1;
  }

  else
  {
    v10 = 0;
    v11 = v25;
    do
    {
      v12 = *v11++;
      v10 |= v12;
      --v9;
    }

    while (v9);
    v13 = v10 == 0;
  }

  v7(a1, v25, a2 + 72, v23);
  v7(a1, v25, v25, v8);
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  sub_239423980(v25, v25, a3 + 9, *(a1 + 320), &v27, *(a1 + 328));
  v14 = *(a1 + 328);
  if (v14 < 1)
  {
    v21 = 0;
  }

  else
  {
    v15 = 0;
    v16 = v25;
    v17 = *(a1 + 328);
    do
    {
      v18 = *v16++;
      v15 |= v18;
      --v17;
    }

    while (v17);
    v19 = 0;
    do
    {
      v20 = *v8++;
      v19 |= v20;
      --v14;
    }

    while (v14);
    if (v15)
    {
      v13 = 0;
    }

    v21 = v19 != 0;
  }

  return v13 & v21;
}

uint64_t sub_2394391A4(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = *(a1 + 328);
  if (v5 < 1)
  {
    return 0;
  }

  v14 = v3;
  v15 = v4;
  v8 = 0;
  v9 = 144;
  do
  {
    v8 |= *(a2 + v9);
    v9 += 8;
    --v5;
  }

  while (v5);
  if (!v8)
  {
    return 0;
  }

  v13 = 0;
  memset(v12, 0, sizeof(v12));
  result = sub_239435E34(a1, v12, a2);
  if (result)
  {
    v11 = *(a1 + 264);
    return !v11 || memcmp(v12, a3, 8 * v11) == 0;
  }

  return result;
}

uint64_t sub_23943925C()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v66[811] = *MEMORY[0x277D85DE8];
  memset(v52, 0, sizeof(v52));
  v7 = *(v6 + 64);
  v8 = *(v6 + 32);
  v54[3] = *(v6 + 48);
  v9 = *(v6 + 16);
  v54[0] = *v6;
  v53 = 0;
  v55 = v7;
  v54[2] = v8;
  v54[1] = v9;
  v10 = *(v6 + 72);
  v11 = *(v6 + 136);
  v12 = *(v6 + 120);
  v58 = *(v6 + 104);
  v59 = v12;
  v13 = *(v6 + 88);
  v14 = *(v6 + 192);
  v63 = *(v6 + 176);
  v64 = v14;
  v15 = *(v6 + 160);
  v16 = *(v6 + 208);
  v61 = *(v6 + 144);
  v62 = v15;
  v60 = v11;
  v65 = v16;
  v17 = v66;
  v18 = 2;
  v56 = v10;
  v57 = v13;
  do
  {
    if (v18)
    {
      sub_2394372BC(v5, v17, v54, v17 - 27);
    }

    else
    {
      sub_2394379FC(v5, v17, v52 + 27 * (v18 >> 1));
    }

    ++v18;
    v17 += 27;
  }

  while (v18 != 32);
  result = sub_239422114((v5 + 256));
  if (result)
  {
    v20 = result;
    v21 = 0;
    v22 = result - 1;
    v23 = result;
    while (2)
    {
      v24 = v23;
      while (1)
      {
        v23 = v22;
        if (v21)
        {
          result = sub_2394379FC(v5, v4, v4);
        }

        if (5 * (v23 / 5) == v23)
        {
          break;
        }

        v22 = v23 - 1;
        v24 = v23;
        if (v23 - 1 >= v20)
        {
          if (v21)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }
      }

      v25 = *(v5 + 264);
      if ((v24 + 3) >> 6 >= v25)
      {
        v26 = 0;
      }

      else
      {
        v26 = 16 * ((*(v2 + 8 * ((v24 + 3) >> 6)) >> (v24 + 3)) & 1);
      }

      if ((v24 + 2) >> 6 >= v25)
      {
        v27 = 0;
      }

      else
      {
        v27 = 8 * ((*(v2 + 8 * ((v24 + 2) >> 6)) >> (v24 + 2)) & 1);
      }

      if ((v24 + 1) >> 6 >= v25)
      {
        v28 = 0;
      }

      else
      {
        v28 = 4 * ((*(v2 + 8 * ((v24 + 1) >> 6)) >> (v24 + 1)) & 1);
      }

      v29 = v24 >> 6;
      if (v29 >= v25)
      {
        v30 = 0;
      }

      else
      {
        v30 = 2 * ((*(v2 + 8 * v29) >> v24) & 1);
      }

      v31 = v23 >> 6;
      v32 = v2;
      if (v31 >= v25)
      {
        v33 = 0;
      }

      else
      {
        v33 = (*(v2 + 8 * v31) >> v23) & 1;
      }

      v34 = 0;
      v51 = 0;
      v49 = 0u;
      v50 = 0u;
      v35 = v27 | v26 | v28 | v30 | v33;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      memset(v46, 0, sizeof(v46));
      v43 = 0u;
      v44 = 0u;
      v36 = v52;
      v42 = 0u;
      do
      {
        result = sub_239435C80(v5, &v42, ((v34++ ^ v35) - 1) >> 63, v36, &v42);
        v36 += 27;
      }

      while (v34 != 32);
      if (v21)
      {
        result = sub_2394372BC(v5, v4, v4, &v42);
      }

      else
      {
        v37 = v45;
        *(v4 + 32) = v44;
        *(v4 + 48) = v37;
        *(v4 + 64) = *&v46[0];
        v38 = v43;
        *v4 = v42;
        *(v4 + 16) = v38;
        *(v4 + 88) = *(&v46[1] + 8);
        *(v4 + 104) = *(&v46[2] + 8);
        *(v4 + 120) = *(&v46[3] + 8);
        *(v4 + 136) = *(&v46[4] + 1);
        *(v4 + 72) = *(v46 + 8);
        *(v4 + 208) = v51;
        v39 = v50;
        *(v4 + 176) = v49;
        *(v4 + 192) = v39;
        v40 = v48;
        *(v4 + 144) = v47;
        *(v4 + 160) = v40;
      }

      v2 = v32;
      v22 = v23 - 1;
      v21 = 1;
      if (v23 - 1 < v20)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_37:
    *(v4 + 64) = 0;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 88) = 0u;
    *(v4 + 104) = 0u;
    *(v4 + 120) = 0u;
    *(v4 + 136) = 0;
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
    *(v4 + 176) = 0u;
    *(v4 + 192) = 0u;
    *(v4 + 208) = 0;
  }

LABEL_38:
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23943962C()
{
  v0 = MEMORY[0x28223BE20]();
  v22 = v2;
  v23 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  v36[459] = *MEMORY[0x277D85DE8];
  sub_2394398B4(v0, v34, v12);
  sub_2394398B4(v11, v35, v6);
  if (v4)
  {
    sub_2394398B4(v11, v36, v4);
  }

  result = sub_239422114((v11 + 256));
  v14 = result;
  v15 = 0;
  v16 = result;
  do
  {
    while (1)
    {
      if (v15)
      {
        result = sub_2394379FC(v11, v10, v10);
      }

      if (5 * (v16 / 5) != v16)
      {
        break;
      }

      v33 = 0;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      memset(v28, 0, sizeof(v28));
      v25 = 0u;
      v26 = 0u;
      v24 = 0u;
      sub_2394399D4(v11, &v24, v34, v8, v16);
      if (v15)
      {
        sub_2394372BC(v11, v10, v10, &v24);
      }

      else
      {
        v17 = v27;
        *(v10 + 32) = v26;
        *(v10 + 48) = v17;
        *(v10 + 64) = *&v28[0];
        v18 = v25;
        *v10 = v24;
        *(v10 + 16) = v18;
        *(v10 + 88) = *(&v28[1] + 8);
        *(v10 + 104) = *(&v28[2] + 8);
        *(v10 + 120) = *(&v28[3] + 8);
        *(v10 + 136) = *(&v28[4] + 1);
        *(v10 + 72) = *(v28 + 8);
        *(v10 + 208) = v33;
        v19 = v32;
        *(v10 + 176) = v31;
        *(v10 + 192) = v19;
        v20 = v30;
        *(v10 + 144) = v29;
        *(v10 + 160) = v20;
      }

      sub_2394399D4(v11, &v24, v35, v23, v16);
      result = sub_2394372BC(v11, v10, v10, &v24);
      if (v4)
      {
        sub_2394399D4(v11, &v24, v36, v22, v16);
        result = sub_2394372BC(v11, v10, v10, &v24);
      }

      --v16;
      v15 = 1;
      if (v16 > v14)
      {
        goto LABEL_18;
      }
    }

    --v16;
  }

  while (v16 <= v14);
  if ((v15 & 1) == 0)
  {
    *(v10 + 64) = 0;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0u;
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 72) = 0u;
    *(v10 + 88) = 0u;
    *(v10 + 104) = 0u;
    *(v10 + 120) = 0u;
    *(v10 + 136) = 0;
    *(v10 + 144) = 0u;
    *(v10 + 160) = 0u;
    *(v10 + 176) = 0u;
    *(v10 + 192) = 0u;
    *(v10 + 208) = 0;
  }

LABEL_18:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394398B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0;
  v5 = (a2 + 216);
  *(a2 + 216) = *a3;
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);
  v8 = *(a3 + 48);
  *(a2 + 280) = *(a3 + 64);
  *(a2 + 264) = v8;
  *(a2 + 248) = v7;
  *(a2 + 232) = v6;
  v9 = *(a3 + 104);
  v10 = *(a3 + 120);
  v11 = *(a3 + 88);
  *(a2 + 352) = *(a3 + 136);
  *(a2 + 320) = v9;
  *(a2 + 336) = v10;
  *(a2 + 304) = v11;
  *(a2 + 288) = *(a3 + 72);
  v13 = *(a3 + 176);
  v12 = *(a3 + 192);
  v14 = *(a3 + 160);
  *(a2 + 424) = *(a3 + 208);
  *(a2 + 392) = v13;
  *(a2 + 408) = v12;
  *(a2 + 376) = v14;
  *(a2 + 360) = *(a3 + 144);
  v15 = (a2 + 432);
  for (i = 2; i != 17; ++i)
  {
    if (i)
    {
      result = sub_2394372BC(a1, v15, v5, v15 - 27);
    }

    else
    {
      result = sub_2394379FC(a1, v15, (a2 + 216 * (i >> 1)));
    }

    v15 += 27;
  }

  return result;
}

unint64_t sub_2394399D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned int a5)
{
  v8 = *(a1 + 264);
  if ((a5 + 4) >> 6 >= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 32 * ((*(a4 + 8 * ((a5 + 4) >> 6)) >> (a5 + 4)) & 1);
  }

  if ((a5 + 3) >> 6 >= v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 16 * ((*(a4 + 8 * ((a5 + 3) >> 6)) >> (a5 + 3)) & 1);
  }

  v11 = v10 | v9;
  if ((a5 + 2) >> 6 >= v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = 8 * ((*(a4 + 8 * ((a5 + 2) >> 6)) >> (a5 + 2)) & 1);
  }

  v13 = v11 | v12;
  if ((a5 + 1) >> 6 >= v8)
  {
    v14 = 0;
  }

  else
  {
    v14 = 4 * ((*(a4 + 8 * ((a5 + 1) >> 6)) >> (a5 + 1)) & 1);
  }

  v15 = v13 | v14;
  v16 = a5 >> 6;
  if (v16 >= v8)
  {
    v17 = 0;
  }

  else
  {
    v17 = 2 * ((*(a4 + 8 * v16) >> a5) & 1);
  }

  v18 = v15 | v17;
  if (a5)
  {
    if ((a5 - 1) >> 6 >= v8)
    {
      LODWORD(v19) = 0;
    }

    else
    {
      v19 = (*(a4 + 8 * ((a5 - 1) >> 6)) >> (a5 - 1)) & 1;
    }

    v18 |= v19;
  }

  v20 = 0;
  *(a2 + 208) = 0;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  v21 = -(v18 >> 5);
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  v22 = ((v18 >> 5) - 1) & v18 | (v18 ^ 0x3FLL) & v21;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  v23 = v22 - (v22 >> 1);
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  do
  {
    sub_239435C80(a1, a2, (((v20++ ^ v23) - 1) & ~v23) >> 63, a3, a2);
    a3 += 27;
  }

  while (v20 != 17);
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v24 = (a2 + 72);
  result = sub_239438220(a1, v29, v24);
  v26 = *(a1 + 328);
  if (v26)
  {
    v27 = v29;
    do
    {
      v28 = *v27++;
      *v24 = *v24 & ~v21 | v28 & v21;
      ++v24;
      --v26;
    }

    while (v26);
  }

  return result;
}

uint64_t sub_239439BE8()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v22 = *MEMORY[0x277D85DE8];
  v4 = sub_239422114((v0 + 320)) + 4;
  v5 = *(v2 + 176);
  v20[10] = *(v2 + 160);
  v20[11] = v5;
  v20[12] = *(v2 + 192);
  v21 = *(v2 + 208);
  v6 = *(v2 + 112);
  v20[6] = *(v2 + 96);
  v20[7] = v6;
  v7 = *(v2 + 144);
  v20[8] = *(v2 + 128);
  v20[9] = v7;
  v8 = *(v2 + 48);
  v20[2] = *(v2 + 32);
  v20[3] = v8;
  v9 = *(v2 + 80);
  v20[4] = *(v2 + 64);
  v20[5] = v9;
  v10 = *(v2 + 16);
  v11 = 1;
  v20[0] = *v2;
  v20[1] = v10;
  do
  {
    v12 = 1 << v11;
    sub_2394379FC(v3, &v20[-13] + 27 * v12 - 1, &v20[-13] + 27 * (v12 >> 1) - 1);
    v13 = v4 / 5 - 1;
    if (v4 >= 0xA)
    {
      do
      {
        sub_2394379FC(v3, &v20[-13] + 27 * v12 - 1, &v20[-13] + 27 * v12 - 1);
        --v13;
      }

      while (v13);
    }

    if (v12 <= 2)
    {
      v14 = 2;
    }

    else
    {
      v14 = v12;
    }

    v15 = 27 * v12;
    v16 = v14 - 1;
    v17 = v20;
    do
    {
      sub_2394372BC(v3, &v17[v15], v20 + 27 * ((1 << v11) - 1), v17);
      v17 += 27;
      --v16;
    }

    while (v16);
    ++v11;
  }

  while (v11 != 5);
  result = sub_239434F88(v3);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239439D90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  result = sub_239422114((a1 + 320));
  v16 = result + 4;
  if ((result + 4) >= 5)
  {
    v17 = 0;
    v18 = v16 / 5;
    v19 = v16 / 5 - 1;
    while ((v17 & 1) == 0)
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      memset(v29, 0, sizeof(v29));
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      result = sub_239439FC8(a1, &v25, a3, a4, v19);
      v20 = v28;
      *(a2 + 32) = v27;
      *(a2 + 48) = v20;
      *(a2 + 64) = *&v29[0];
      v21 = v26;
      *a2 = v25;
      *(a2 + 16) = v21;
      *(a2 + 88) = *(&v29[1] + 8);
      *(a2 + 104) = *(&v29[2] + 8);
      *(a2 + 120) = *(&v29[3] + 8);
      *(a2 + 136) = *(&v29[4] + 1);
      *(a2 + 72) = *(v29 + 8);
      *(a2 + 208) = v34;
      v22 = v33;
      *(a2 + 176) = v32;
      *(a2 + 192) = v22;
      v23 = v31;
      *(a2 + 144) = v30;
      *(a2 + 160) = v23;
      if (a5)
      {
        goto LABEL_8;
      }

LABEL_9:
      if (a7)
      {
        sub_239439FC8(a1, &v25, a7, a8, v19);
        result = sub_2394372BC(a1, a2, a2, &v25);
      }

      --v19;
      v17 = 1;
      if (v19 >= v18)
      {
        return result;
      }
    }

    sub_2394379FC(a1, a2, a2);
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    memset(v29, 0, sizeof(v29));
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    sub_239439FC8(a1, &v25, a3, a4, v19);
    result = sub_2394372BC(a1, a2, a2, &v25);
    if (!a5)
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_239439FC8(a1, &v25, a5, a6, v19);
    result = sub_2394372BC(a1, a2, a2, &v25);
    goto LABEL_9;
  }

  *(a2 + 64) = 0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0;
  return result;
}

uint64_t sub_239439FC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned int a5)
{
  v10 = *(a1 + 264);
  result = sub_239422114((a1 + 320));
  v12 = 0;
  LODWORD(v13) = 0;
  v14 = a5;
  do
  {
    if (v14 >> 6 >= v10)
    {
      LODWORD(v15) = 0;
    }

    else
    {
      v15 = (*(a4 + 8 * (v14 >> 6)) >> v14) & 1;
    }

    v13 = (v15 << v12++) | v13;
    v14 += (result + 4) / 5uLL;
  }

  while (v12 != 5);
  v16 = 0;
  *(a2 + 208) = 0;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  do
  {
    ++v16;
    v17 = *(a1 + 328);
    if (v17)
    {
      v18 = ((v13 ^ v16) - 1) >> 63;
      v19 = ~v18;
      v20 = a3;
      v21 = a2;
      do
      {
        v22 = *v20++;
        *v21 = *v21 & v19 | v22 & v18;
        ++v21;
        --v17;
      }

      while (v17);
      v23 = *(a1 + 328);
      if (v23)
      {
        v24 = 9;
        do
        {
          *(a2 + v24 * 8) = *(a2 + v24 * 8) & v19 | a3[v24] & v18;
          ++v24;
          --v23;
        }

        while (v23);
      }
    }

    a3 += 18;
  }

  while (v16 != 31);
  v25 = *(a1 + 328);
  if (v25)
  {
    v26 = (a2 + 144);
    v27 = (a1 + 160);
    v28 = (v13 - 1) >> 63;
    do
    {
      v29 = *v27++;
      *v26 = v29 & ~v28 | *v26 & v28;
      ++v26;
      --v25;
    }

    while (v25);
  }

  return result;
}

uint64_t *sub_23943A150(uint64_t *result, void *a2, unint64_t a3)
{
  *result = -(a3 >> 5) & 1;
  *a2 = (((a3 >> 5) - 1) & a3 | (63 - a3) & -(a3 >> 5)) - ((((a3 >> 5) - 1) & a3 | (63 - a3) & -(a3 >> 5)) >> 1);
  return result;
}

uint64_t sub_23943A184(uint64_t result, _BYTE *a2, _DWORD *a3, unint64_t a4, int a5)
{
  if (a4 != -1)
  {
    v5 = ((2 << a5) - 1) & *a3;
    v6 = a4 + 1;
    v7 = a5 + 1;
    do
    {
      v8 = v5 - (2 << a5);
      if (v7 >= a4)
      {
        v8 = v5 & (((2 << a5) - 1) >> 1);
      }

      if ((v5 & (1 << a5)) == 0)
      {
        v8 = v5;
      }

      if (v5)
      {
        v5 -= v8;
      }

      else
      {
        LOBYTE(v8) = 0;
      }

      *a2 = v8;
      if (v7 >> 6 >= *(result + 264))
      {
        LODWORD(v9) = 0;
      }

      else
      {
        v9 = (*&a3[2 * (v7 >> 6)] >> v7) & 1;
      }

      v5 = (v9 << a5) + (v5 >> 1);
      ++a2;
      ++v7;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_23943A228()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v0;
  *&v53[1587] = *MEMORY[0x277D85DE8];
  LODWORD(v12) = sub_239422114((v0 + 256));
  if (v2 >= 4)
  {
    v13 = sub_2394500F0(v2, 0x211uLL);
    v15 = sub_2394500F0(v2, 0x6C0uLL);
    v14 = v15;
    v16 = 0;
    if (!v13)
    {
      goto LABEL_30;
    }

    v38 = v15;
    v39 = v13;
    if (!v15)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v38 = &v52;
    v39 = v53;
  }

  v35 = v14;
  v36 = v13;
  v12 = v12;
  if (v8)
  {
    sub_23943A184(v11, v51, v8, v12, 4);
    sub_23943A5B4(v11, v50, v11 + 16);
  }

  if (v2)
  {
    v17 = v38;
    v18 = v39;
    v19 = v2;
    do
    {
      sub_23943A184(v11, v18, v4, v12, 4);
      sub_23943A5B4(v11, v17, v6);
      v6 += 216;
      v17 += 1728;
      v4 += 18;
      v18 += 529;
      --v19;
    }

    while (v19);
  }

  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  memset(v44, 0, sizeof(v44));
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  if (v12 == -1)
  {
LABEL_28:
    *(v10 + 64) = 0;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0u;
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 72) = 0u;
    *(v10 + 88) = 0u;
    *(v10 + 104) = 0u;
    *(v10 + 120) = 0u;
    *(v10 + 136) = 0;
    *(v10 + 144) = 0u;
    *(v10 + 160) = 0u;
    *(v10 + 176) = 0u;
    *(v10 + 192) = 0u;
    *(v10 + 208) = 0;
    goto LABEL_29;
  }

  v37 = v12 + 1;
  v20 = 1;
  v21 = v8;
  do
  {
    if (v20)
    {
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_2394379FC(v11, v10, v10);
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    if (v51[v12])
    {
      sub_23943A6AC(v11, &v40, v50, v51[v12]);
      if (v20)
      {
        v20 = 0;
        *(v10 + 64) = *&v44[0];
        *(v10 + 136) = *(&v44[4] + 1);
        *(v10 + 208) = v49;
        v22 = v43;
        *(v10 + 32) = v42;
        *(v10 + 48) = v22;
        v23 = v41;
        *v10 = v40;
        *(v10 + 16) = v23;
        *(v10 + 88) = *(&v44[1] + 8);
        *(v10 + 104) = *(&v44[2] + 8);
        *(v10 + 120) = *(&v44[3] + 8);
        *(v10 + 72) = *(v44 + 8);
        v24 = v48;
        *(v10 + 176) = v47;
        *(v10 + 192) = v24;
        v25 = v46;
        *(v10 + 144) = v45;
        *(v10 + 160) = v25;
      }

      else
      {
        sub_2394372BC(v11, v10, v10, &v40);
      }
    }

LABEL_20:
    v27 = v38;
    v26 = v39;
    for (i = v2; i; --i)
    {
      if (v26[v12])
      {
        sub_23943A6AC(v11, &v40, v27, v26[v12]);
        if (v20)
        {
          v20 = 0;
          *(v10 + 64) = *&v44[0];
          *(v10 + 136) = *(&v44[4] + 1);
          *(v10 + 208) = v49;
          v29 = v43;
          *(v10 + 32) = v42;
          *(v10 + 48) = v29;
          v30 = v41;
          *v10 = v40;
          *(v10 + 16) = v30;
          *(v10 + 88) = *(&v44[1] + 8);
          *(v10 + 104) = *(&v44[2] + 8);
          *(v10 + 120) = *(&v44[3] + 8);
          *(v10 + 72) = *(v44 + 8);
          v31 = v48;
          *(v10 + 176) = v47;
          *(v10 + 192) = v31;
          v32 = v46;
          *(v10 + 144) = v45;
          *(v10 + 160) = v32;
        }

        else
        {
          sub_2394372BC(v11, v10, v10, &v40);
        }
      }

      v26 += 529;
      v27 += 1728;
    }

    --v12;
    v8 = v21;
  }

  while (v12 < v37);
  if (v20)
  {
    goto LABEL_28;
  }

LABEL_29:
  v16 = 1;
  v14 = v35;
  v13 = v36;
LABEL_30:
  sub_239450144(v13);
  sub_239450144(v14);
  v33 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t sub_23943A5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  *a2 = *a3;
  v5 = *(a3 + 16);
  v6 = *(a3 + 32);
  v7 = *(a3 + 48);
  *(a2 + 64) = *(a3 + 64);
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 16) = v5;
  v8 = *(a3 + 104);
  v9 = *(a3 + 120);
  v10 = *(a3 + 136);
  *(a2 + 88) = *(a3 + 88);
  *(a2 + 136) = v10;
  *(a2 + 120) = v9;
  *(a2 + 104) = v8;
  *(a2 + 72) = *(a3 + 72);
  v12 = *(a3 + 176);
  v11 = *(a3 + 192);
  v13 = *(a3 + 160);
  *(a2 + 208) = *(a3 + 208);
  *(a2 + 176) = v12;
  *(a2 + 192) = v11;
  *(a2 + 160) = v13;
  *(a2 + 144) = *(a3 + 144);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_2394379FC(a1, v16, a3);
  v14 = 7;
  do
  {
    result = sub_2394372BC(a1, v3 + 27, v3, v16);
    v3 += 27;
    --v14;
  }

  while (v14);
  return result;
}

unint64_t sub_23943A6AC(unint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if ((a4 & 0x80000000) != 0)
  {
    v14 = a3 + 216 * (-a4 >> 1);
    *a2 = *v14;
    v15 = *(v14 + 16);
    v16 = *(v14 + 32);
    v17 = *(v14 + 48);
    *(a2 + 64) = *(v14 + 64);
    *(a2 + 32) = v16;
    *(a2 + 48) = v17;
    *(a2 + 16) = v15;
    v18 = *(v14 + 104);
    v19 = *(v14 + 120);
    v20 = *(v14 + 136);
    *(a2 + 88) = *(v14 + 88);
    *(a2 + 136) = v20;
    *(a2 + 120) = v19;
    *(a2 + 104) = v18;
    *(a2 + 72) = *(v14 + 72);
    v22 = *(v14 + 176);
    v21 = *(v14 + 192);
    v23 = *(v14 + 160);
    *(a2 + 208) = *(v14 + 208);
    *(a2 + 176) = v22;
    *(a2 + 192) = v21;
    *(a2 + 160) = v23;
    *(a2 + 144) = *(v14 + 144);
    return sub_239438220(result, (a2 + 72), (a2 + 72));
  }

  else
  {
    v4 = a3 + 216 * (a4 >> 1);
    *a2 = *v4;
    v5 = *(v4 + 16);
    v6 = *(v4 + 32);
    v7 = *(v4 + 48);
    *(a2 + 64) = *(v4 + 64);
    *(a2 + 32) = v6;
    *(a2 + 48) = v7;
    *(a2 + 16) = v5;
    v8 = *(v4 + 104);
    v9 = *(v4 + 120);
    v10 = *(v4 + 136);
    *(a2 + 88) = *(v4 + 88);
    *(a2 + 136) = v10;
    *(a2 + 120) = v9;
    *(a2 + 104) = v8;
    *(a2 + 72) = *(v4 + 72);
    v12 = *(v4 + 176);
    v11 = *(v4 + 192);
    v13 = *(v4 + 160);
    *(a2 + 208) = *(v4 + 208);
    *(a2 + 176) = v12;
    *(a2 + 192) = v11;
    *(a2 + 160) = v13;
    *(a2 + 144) = *(v4 + 144);
  }

  return result;
}

uint64_t sub_23943A7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 0;
  result = sub_23943A854(v16, &v15, a3, a4, a5, a6, a7);
  if (result)
  {
    result = sub_23943A8D4(a1, a2, a3, v16, v15, a8, a9) != 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23943A854(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v9 = 0;
  if (sub_23943AAC0(a3, a6, a7, a4, a5, a1, &v9))
  {
    *a2 = v9;
    return 1;
  }

  else
  {
    sub_2394170F4(31, 0, 28, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/hkdf/hkdf.c", 51);
    return 0;
  }
}

uint64_t sub_23943A8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 4);
  v8 = v7 + a2;
  if (__CFADD__(v7, a2) || (v9 = v8 - 1, v10 = (v8 - 1) / v7, v10 >= 0x100))
  {
    v20 = 100;
    v21 = 73;
LABEL_19:
    sub_2394170F4(31, 0, v20, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/fipsmodule/hkdf/hkdf.c", v21);
    result = 0;
    goto LABEL_20;
  }

  v25 = 0;
  memset(v24, 0, sizeof(v24));
  if (!sub_23943AB9C(v24, a4, a5, a3))
  {
LABEL_18:
    sub_23943AE54(v24);
    v20 = 28;
    v21 = 109;
    goto LABEL_19;
  }

  if (v9 >= v7)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      v23 = v16;
      if (v16 != 1)
      {
        if (!sub_23943AB9C(v24, 0, 0, 0))
        {
          goto LABEL_18;
        }

        (*(*(&v24[0] + 1) + 24))(v24 + 8, __src, v7);
      }

      (*(*(&v24[0] + 1) + 24))(v24 + 8, a6, a7);
      (*(*(&v24[0] + 1) + 24))(v24 + 8, &v23, 1);
      if (!sub_23943AD88(v24, __src, 0))
      {
        goto LABEL_18;
      }

      if (a2 - v15 >= v7)
      {
        v17 = v7;
      }

      else
      {
        v17 = a2 - v15;
      }

      if (a2 != v15)
      {
        memcpy((a1 + v15), __src, v17);
      }

      v15 += v17;
    }

    while (v10 > v16++);
  }

  sub_23943AE54(v24);
  result = 1;
LABEL_20:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23943AAC0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  if (sub_23943AB9C(v13, a2, a3, a1))
  {
    (*(*(&v13[0] + 1) + 24))(v13 + 8, a4, a5);
    v11 = sub_23943AD88(v13, a6, a7);
    sub_23943AE54(v13);
    if (v11)
    {
      return a6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_23943AE54(v13);
    return 0;
  }
}

double sub_23943AB78(uint64_t a1)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

uint64_t sub_23943AB9C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a3;
  v22 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = *a1;
  }

  if (!a2 && v7 == *a1)
  {
    goto LABEL_22;
  }

  v8 = *(v7 + 40);
  if (v8 >= a3)
  {
    if (a3)
    {
      __memcpy_chk();
    }
  }

  else
  {
    if (!sub_23943134C((a1 + 8), v7))
    {
LABEL_23:
      result = 0;
      goto LABEL_24;
    }

    (*(*(a1 + 8) + 24))(a1 + 8, a2, v4);
    (*(*(a1 + 8) + 32))(a1 + 8, v20);
    v9 = *(a1 + 8);
    LODWORD(v4) = *(v9 + 4);
    sub_239450194(*(a1 + 16), *(v9 + 44));
  }

  if (v8 != v4)
  {
    bzero(&v20[v4], v8 - v4);
  }

  if (v8)
  {
    v10 = v21;
    v11 = v20;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v10++ = v13 ^ 0x36;
      --v12;
    }

    while (v12);
  }

  if (!sub_23943134C((a1 + 40), v7))
  {
    goto LABEL_23;
  }

  (*(*(a1 + 40) + 24))(a1 + 40, v21, v8);
  if (v8)
  {
    v14 = v21;
    v15 = v20;
    v16 = v8;
    do
    {
      v17 = *v15++;
      *v14++ = v17 ^ 0x5C;
      --v16;
    }

    while (v16);
  }

  if (!sub_23943134C((a1 + 72), v7))
  {
    goto LABEL_23;
  }

  (*(*(a1 + 72) + 24))(a1 + 72, v21, v8);
  *a1 = v7;
LABEL_22:
  result = sub_2394311C8((a1 + 8), (a1 + 40));
LABEL_24:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23943AD88(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 8);
  (*(*(a1 + 8) + 32))(a1 + 8, v9);
  v6 = *(*v5 + 1);
  sub_239450194(v5[1], *(*v5 + 11));
  result = sub_2394311C8(v5, v5 + 8);
  if (result)
  {
    (*(*v5 + 3))(v5, v9, v6);
    sub_2394313E8(v5, a2, a3);
    result = 1;
  }

  else
  {
    *a3 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23943AE54(uint64_t a1)
{
  sub_239450144(*(a1 + 48));
  v2 = *(a1 + 64);
  if (v2)
  {
    (*v2)(*(a1 + 56));
  }

  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  sub_239450144(*(a1 + 80));
  v3 = *(a1 + 96);
  if (v3)
  {
    (*v3)(*(a1 + 88));
  }

  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  sub_239450144(*(a1 + 16));
  v4 = *(a1 + 32);
  if (v4)
  {
    (*v4)(*(a1 + 24));
  }

  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;

  sub_239450194(a1, 0x68uLL);
}

double sub_23943AF04()
{
  v0 = sub_23945004C(0x68uLL);
  if (v0)
  {
    *v0 = 0;
    result = 0.0;
    *(v0 + 5) = 0u;
    *(v0 + 7) = 0u;
    *(v0 + 9) = 0u;
    *(v0 + 11) = 0u;
    *(v0 + 1) = 0u;
    *(v0 + 3) = 0u;
  }

  return result;
}

void sub_23943AF44(void *a1)
{
  sub_2394310DC(a1 + 40);
  sub_2394310DC(a1 + 72);
  sub_2394310DC(a1 + 8);

  sub_239450194(a1, 0x68uLL);
}

void sub_23943AF94(void *a1)
{
  if (a1)
  {
    sub_23943AE54(a1);

    sub_239450144(a1);
  }
}

uint64_t sub_23943AFD4(void *a1, void *a2)
{
  result = sub_2394311C8(a1 + 5, a2 + 5);
  if (result)
  {
    result = sub_2394311C8(a1 + 9, a2 + 9);
    if (result)
    {
      result = sub_2394311C8(a1 + 1, a2 + 1);
      if (result)
      {
        *a1 = *a2;
        return 1;
      }
    }
  }

  return result;
}

double sub_23943B034(uint64_t a1)
{
  sub_23943AE54(a1);
  *a1 = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

uint64_t sub_23943B078(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a2 && a4)
  {
    *a1 = 0;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
  }

  return sub_23943AB9C(a1, a2, a3, a4);
}

uint64_t sub_23943B0A8(void *a1, void *a2)
{
  *a1 = 0;
  *(a1 + 5) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 3) = 0u;
  return sub_23943AFD4(a1, a2);
}

_DWORD *sub_23943B0CC(_DWORD *__src, size_t __n, _DWORD *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(&v6[1], 0, 76);
  v6[0] = xmmword_2395CAA30;
  sub_23943B180(v6, __src, __n);
  sub_23943B29C(a3, v6);
  v4 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t sub_23943B15C(_OWORD *a1)
{
  *(a1 + 76) = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = xmmword_2395CAA30;
  return 1;
}

uint64_t sub_23943B180(unint64_t a1, _DWORD *__src, size_t __n)
{
  if (__n)
  {
    v3 = __n;
    v4 = __src;
    v6 = a1 + 24;
    v7 = *(a1 + 16) + 8 * __n;
    *(a1 + 16) = v7;
    v8 = *(a1 + 88);
    if (v8)
    {
      if (__n <= 0x3F && v8 + __n < 0x40)
      {
        memcpy((v6 + v8), __src, __n);
        *(a1 + 88) += v3;
        return 1;
      }

      v9 = 64 - v8;
      if (v8 != 64)
      {
        memcpy((v6 + v8), __src, 64 - v8);
      }

      sub_23943B388(a1, v6, 1);
      v4 = (v4 + v9);
      v3 -= v9;
      *(a1 + 88) = 0;
      *v6 = 0u;
      *(v6 + 16) = 0u;
      *(v6 + 32) = 0u;
      *(v6 + 48) = 0u;
    }

    if (v3 >= 0x40)
    {
      sub_23943B388(a1, v4, v3 >> 6);
      v4 = (v4 + (v3 & 0xFFFFFFFFFFFFFFC0));
      v3 &= 0x3Fu;
    }

    if (v3)
    {
      *(a1 + 88) = v3;
      memcpy(v6, v4, v3);
    }
  }

  return 1;
}

uint64_t sub_23943B29C(_DWORD *a1, unint64_t a2)
{
  v4 = a2 + 24;
  v5 = *(a2 + 16);
  v6 = *(a2 + 88);
  *(a2 + 24 + v6) = 0x80;
  v7 = v6 + 1;
  if (v6 >= 0x38)
  {
    if (v6 != 63)
    {
      bzero((v4 + v7), 63 - v6);
    }

    sub_23943B388(a2, v4, 1);
    v7 = 0;
    goto LABEL_6;
  }

  if (v6 != 55)
  {
LABEL_6:
    bzero((v4 + v7), 56 - v7);
  }

  *(a2 + 80) = v5;
  sub_23943B388(a2, v4, 1);
  *(a2 + 88) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *a1 = *a2;
  a1[1] = *(a2 + 4);
  a1[2] = *(a2 + 8);
  a1[3] = *(a2 + 12);
  return 1;
}

unint64_t sub_23943B388(unint64_t result, _DWORD *a2, uint64_t a3)
{
  v183 = result;
  if (a3)
  {
    v4 = *(result + 8);
    v3 = *(result + 12);
    v6 = *result;
    v5 = *(result + 4);
    do
    {
      v184 = a3;
      v7 = a2[1];
      v9 = __ROR4__((v4 & v5 | v3 & ~v5) + v6 + *a2, 29);
      v8 = v4 & ~v9;
      v10 = v5 & v9;
      HIDWORD(v12) = (v4 & v5 | v3 & ~v5) + v6 + *a2;
      LODWORD(v12) = HIDWORD(v12);
      v11 = v12 >> 29;
      v14 = a2[2];
      v13 = a2[3];
      HIDWORD(v12) = v7 + v3 + (v10 | v8);
      LODWORD(v12) = HIDWORD(v12);
      v15 = v12 >> 25;
      LODWORD(v12) = v14 + v4 + (v11 & __ROR4__(HIDWORD(v12), 25) | v5 & ~__ROR4__(HIDWORD(v12), 25));
      HIDWORD(v12) = v12;
      v16 = v12 >> 21;
      LODWORD(v12) = v13 + v5 + (v15 & __ROR4__(v12, 21) | v11 & ~__ROR4__(v12, 21));
      HIDWORD(v12) = v12;
      v17 = v12 >> 13;
      v19 = a2[4];
      v18 = a2[5];
      LODWORD(v12) = v19 + v11 + (v16 & __ROR4__(v12, 13) | v15 & ~__ROR4__(v12, 13));
      HIDWORD(v12) = v12;
      v20 = v12 >> 29;
      v21 = v15 + v18 + (v17 & __ROR4__(v12, 29) | v16 & ~__ROR4__(v12, 29));
      v22 = a2[6];
      v23 = a2[7];
      v24 = v17 & ~__ROR4__(v21, 25);
      v26 = __PAIR64__(v21, __ROR4__(v21, 25));
      v25 = v20 & v26;
      LODWORD(v26) = v21;
      v27 = v26 >> 25;
      HIDWORD(v26) = v16 + v22 + (v25 | v24);
      LODWORD(v26) = HIDWORD(v26);
      v28 = v26 >> 21;
      LODWORD(v26) = v17 + v23 + (v27 & __ROR4__(HIDWORD(v26), 21) | v20 & ~__ROR4__(HIDWORD(v26), 21));
      HIDWORD(v26) = v26;
      v29 = v26 >> 13;
      v31 = a2[8];
      v30 = a2[9];
      v32 = v20 + v31 + (v28 & __ROR4__(v26, 13) | v27 & ~__ROR4__(v26, 13));
      v34 = __PAIR64__(v32, __ROR4__(v32, 29));
      v33 = v29 & v34;
      LODWORD(v34) = v32;
      v35 = v34 >> 29;
      v36 = v27 + v30 + (v33 | v28 & ~__ROR4__(v32, 29));
      v38 = a2[10];
      v37 = a2[11];
      HIDWORD(v34) = v36;
      LODWORD(v34) = v36;
      v39 = v34 >> 25;
      LODWORD(v34) = v28 + v38 + (v35 & __ROR4__(v36, 25) | v29 & ~__ROR4__(v36, 25));
      HIDWORD(v34) = v34;
      v40 = v34 >> 21;
      LODWORD(v34) = v29 + v37 + (v39 & __ROR4__(v34, 21) | v35 & ~__ROR4__(v34, 21));
      HIDWORD(v34) = v34;
      v41 = v34 >> 13;
      v43 = a2[12];
      v42 = a2[13];
      LODWORD(v34) = v35 + v43 + (v40 & __ROR4__(v34, 13) | v39 & ~__ROR4__(v34, 13));
      HIDWORD(v34) = v34;
      v44 = v34 >> 29;
      v45 = v39 + v42 + (v41 & __ROR4__(v34, 29) | v40 & ~__ROR4__(v34, 29));
      v47 = a2[14];
      v46 = a2[15];
      v48 = v40 + v47 + (v44 & __ROR4__(v45, 25) | v41 & ~__ROR4__(v45, 25));
      HIDWORD(v34) = v48;
      LODWORD(v34) = v48;
      v49 = v34 >> 21;
      v51 = __PAIR64__(v45, __ROR4__(v45, 25));
      v50 = v49 & v51;
      v52 = v41 + v46 + (v49 & v51 | v44 & ~__ROR4__(v48, 21));
      LODWORD(v51) = v45;
      v53 = v51 >> 25;
      v54 = __PAIR64__(v52, __ROR4__(v52, 13));
      v55 = (v49 | __ROR4__(v45, 25)) & v54 | v50;
      LODWORD(v54) = v52;
      v56 = v54 >> 13;
      v57 = *a2 + 1518500249 + v44 + v55;
      v58 = v19 + 1518500249 + v53;
      v59 = __PAIR64__(v57, __ROR4__(v57, 29));
      v60 = (v56 | __ROR4__(v48, 21)) & v59 | v56 & __ROR4__(v48, 21);
      LODWORD(v59) = v57;
      v61 = v59 >> 29;
      v62 = v58 + v60;
      v63 = __PAIR64__(v62, __ROR4__(v62, 27));
      v64 = (v61 | __ROR4__(v52, 13)) & v63 | v61 & __ROR4__(v52, 13);
      LODWORD(v63) = v62;
      v65 = v63 >> 27;
      v66 = v31 + 1518500249 + v49 + v64;
      v67 = v43 + 1518500249 + v56;
      v68 = __PAIR64__(v66, __ROR4__(v66, 23));
      v69 = (v65 | __ROR4__(v57, 29)) & v68 | v65 & __ROR4__(v57, 29);
      LODWORD(v68) = v66;
      v70 = v68 >> 23;
      v71 = v67 + v69;
      v72 = __PAIR64__(v71, __ROR4__(v71, 19));
      v73 = (v70 | __ROR4__(v62, 27)) & v72 | v70 & __ROR4__(v62, 27);
      v74 = v7 + 1518500249 + v61;
      LODWORD(v72) = v71;
      v75 = v72 >> 19;
      v76 = v74 + v73;
      v77 = v18 + 1518500249 + v65;
      v78 = __PAIR64__(v76, __ROR4__(v76, 29));
      v79 = (v75 | __ROR4__(v66, 23)) & v78 | v75 & __ROR4__(v66, 23);
      LODWORD(v78) = v76;
      v80 = v78 >> 29;
      v81 = v77 + v79;
      v82 = __PAIR64__(v81, __ROR4__(v81, 27));
      v83 = (v80 | __ROR4__(v71, 19)) & v82 | v80 & __ROR4__(v71, 19);
      v84 = v30 + 1518500249 + v70;
      LODWORD(v82) = v81;
      v85 = v82 >> 27;
      v86 = v84 + v83;
      v87 = v42 + 1518500249 + v75;
      v88 = __PAIR64__(v86, __ROR4__(v86, 23));
      v89 = (v85 | __ROR4__(v76, 29)) & v88 | v85 & __ROR4__(v76, 29);
      LODWORD(v88) = v86;
      v90 = v88 >> 23;
      v91 = v87 + v89;
      v92 = __PAIR64__(v91, __ROR4__(v91, 19));
      v93 = (v90 | __ROR4__(v81, 27)) & v92 | v90 & __ROR4__(v81, 27);
      v94 = v14 + 1518500249 + v80;
      LODWORD(v92) = v91;
      v95 = v92 >> 19;
      v96 = v94 + v93;
      v97 = v22 + 1518500249 + v85;
      v98 = __PAIR64__(v96, __ROR4__(v96, 29));
      v99 = (v95 | __ROR4__(v86, 23)) & v98 | v95 & __ROR4__(v86, 23);
      LODWORD(v98) = v96;
      v100 = v98 >> 29;
      v101 = v97 + v99;
      v102 = __PAIR64__(v101, __ROR4__(v101, 27));
      v103 = (v100 | __ROR4__(v91, 19)) & v102 | v100 & __ROR4__(v91, 19);
      v104 = v38 + 1518500249 + v90;
      LODWORD(v102) = v101;
      v105 = v102 >> 27;
      v106 = v104 + v103;
      v107 = v47 + 1518500249 + v95;
      v108 = __PAIR64__(v106, __ROR4__(v106, 23));
      v109 = (v105 | __ROR4__(v96, 29)) & v108 | v105 & __ROR4__(v96, 29);
      LODWORD(v108) = v106;
      v110 = v108 >> 23;
      v111 = v107 + v109;
      v112 = __PAIR64__(v111, __ROR4__(v111, 19));
      v113 = (v110 | __ROR4__(v101, 27)) & v112 | v110 & __ROR4__(v101, 27);
      v114 = v13 + 1518500249 + v100;
      LODWORD(v112) = v111;
      v115 = v112 >> 19;
      v116 = v114 + v113;
      v117 = v23 + 1518500249 + v105;
      v118 = __PAIR64__(v116, __ROR4__(v116, 29));
      v119 = (v115 | __ROR4__(v106, 23)) & v118 | v115 & __ROR4__(v106, 23);
      LODWORD(v118) = v116;
      v120 = v118 >> 29;
      v121 = v117 + v119;
      v122 = __PAIR64__(v121, __ROR4__(v121, 27));
      v123 = (v120 | __ROR4__(v111, 19)) & v122 | v120 & __ROR4__(v111, 19);
      v124 = v37 + 1518500249 + v110;
      LODWORD(v122) = v121;
      v125 = v122 >> 27;
      v126 = v124 + v123;
      v127 = v46 + 1518500249 + v115 + ((v125 | __ROR4__(v116, 29)) & __ROR4__(v126, 23) | v125 & __ROR4__(v116, 29));
      HIDWORD(v122) = v127;
      LODWORD(v122) = v127;
      v128 = v122 >> 19;
      v129 = v128 ^ __ROR4__(v126, 23);
      v130 = *a2 + 1859775393 + v120 + (v129 ^ __ROR4__(v121, 27));
      v131 = __PAIR64__(v126, __ROR4__(v130, 29));
      v132 = v31 + 1859775393 + v125 + (v129 ^ v131);
      LODWORD(v131) = v126;
      v133 = v19 + 1859775393 + (v131 >> 23);
      HIDWORD(v131) = v130;
      LODWORD(v131) = v130;
      v134 = v131 >> 29;
      v135 = __PAIR64__(v132, __ROR4__(v132, 23));
      v136 = v133 + (v134 ^ __ROR4__(v127, 19) ^ v135);
      v137 = v14 + 1859775393 + v134;
      LODWORD(v135) = v132;
      v138 = v135 >> 23;
      v139 = __PAIR64__(v136, __ROR4__(v136, 21));
      v140 = v43 + 1859775393 + v128 + (v138 ^ __ROR4__(v130, 29) ^ v139);
      LODWORD(v139) = v136;
      v141 = v139 >> 21;
      v142 = __PAIR64__(v140, __ROR4__(v140, 17));
      v143 = v137 + (v141 ^ __ROR4__(v132, 23) ^ v142);
      v144 = v38 + 1859775393 + v138;
      LODWORD(v142) = v140;
      v145 = v142 >> 17;
      v146 = __PAIR64__(v143, __ROR4__(v143, 29));
      v147 = v144 + (v145 ^ __ROR4__(v136, 21) ^ v146);
      v148 = v22 + 1859775393 + v141;
      LODWORD(v146) = v143;
      v149 = v146 >> 29;
      v150 = __PAIR64__(v147, __ROR4__(v147, 23));
      v151 = v148 + (v149 ^ __ROR4__(v140, 17) ^ v150);
      LODWORD(v150) = v147;
      v152 = v150 >> 23;
      v153 = __PAIR64__(v151, __ROR4__(v151, 21));
      v154 = v47 + 1859775393 + v145 + (v152 ^ __ROR4__(v143, 29) ^ v153);
      v155 = v7 + 1859775393 + v149;
      LODWORD(v153) = v151;
      v156 = v153 >> 21;
      v157 = __PAIR64__(v154, __ROR4__(v154, 17));
      v158 = v155 + (v156 ^ __ROR4__(v147, 23) ^ v157);
      v159 = v30 + 1859775393 + v152;
      LODWORD(v157) = v154;
      v160 = v157 >> 17;
      v161 = __PAIR64__(v158, __ROR4__(v158, 29));
      v162 = v159 + (v160 ^ __ROR4__(v151, 21) ^ v161);
      LODWORD(v161) = v158;
      v163 = v161 >> 29;
      v164 = __PAIR64__(v162, __ROR4__(v162, 23));
      v165 = v18 + 1859775393 + v156 + (v163 ^ __ROR4__(v154, 17) ^ v164);
      v166 = v42 + 1859775393 + v160;
      LODWORD(v164) = v162;
      v167 = v164 >> 23;
      v168 = __PAIR64__(v165, __ROR4__(v165, 21));
      v169 = v166 + (v167 ^ __ROR4__(v158, 29) ^ v168);
      v170 = v13 + 1859775393 + v163;
      LODWORD(v168) = v165;
      result = (v168 >> 21);
      v171 = __PAIR64__(v169, __ROR4__(v169, 17));
      v172 = v170 + (result ^ __ROR4__(v162, 23) ^ v171);
      v173 = v37 + 1859775393 + v167;
      LODWORD(v171) = v169;
      v174 = v171 >> 17;
      v175 = __PAIR64__(v172, __ROR4__(v172, 29));
      v176 = v173 + (v174 ^ __ROR4__(v165, 21) ^ v175);
      LODWORD(v175) = v172;
      v177 = v175 >> 29;
      v178 = __PAIR64__(v176, __ROR4__(v176, 23));
      v179 = v23 + 1859775393 + result + (v177 ^ __ROR4__(v169, 17) ^ v178);
      LODWORD(v178) = v176;
      v180 = v178 >> 23;
      v181 = __PAIR64__(v179, __ROR4__(v179, 21));
      v182 = v46 + 1859775393 + v174 + (v180 ^ __ROR4__(v172, 29) ^ v181);
      LODWORD(v181) = v179;
      v6 += v177;
      v4 += v181 >> 21;
      v3 += v180;
      HIDWORD(v181) = v182;
      LODWORD(v181) = v182;
      v5 += v181 >> 17;
      *v183 = v6;
      v183[1] = v5;
      v183[2] = v4;
      v183[3] = v3;
      a2 += 16;
      a3 = v184 - 1;
    }

    while (v184 != 1);
  }

  return result;
}

_DWORD *sub_23943B930(_DWORD *__src, size_t __n, _DWORD *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(&v6[1], 0, 76);
  v6[0] = xmmword_2395CAA30;
  sub_23943B9C0(v6, __src, __n);
  sub_23943BADC(a3, v6);
  v4 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t sub_23943B9C0(unint64_t a1, _DWORD *__src, size_t __n)
{
  if (__n)
  {
    v3 = __n;
    v4 = __src;
    v6 = a1 + 24;
    v7 = *(a1 + 16) + 8 * __n;
    *(a1 + 16) = v7;
    v8 = *(a1 + 88);
    if (v8)
    {
      if (__n <= 0x3F && v8 + __n < 0x40)
      {
        memcpy((v6 + v8), __src, __n);
        *(a1 + 88) += v3;
        return 1;
      }

      v9 = 64 - v8;
      if (v8 != 64)
      {
        memcpy((v6 + v8), __src, 64 - v8);
      }

      sub_23943BBC8(a1, v6, 1);
      v4 = (v4 + v9);
      v3 -= v9;
      *(a1 + 88) = 0;
      *v6 = 0u;
      *(v6 + 16) = 0u;
      *(v6 + 32) = 0u;
      *(v6 + 48) = 0u;
    }

    if (v3 >= 0x40)
    {
      sub_23943BBC8(a1, v4, v3 >> 6);
      v4 = (v4 + (v3 & 0xFFFFFFFFFFFFFFC0));
      v3 &= 0x3Fu;
    }

    if (v3)
    {
      *(a1 + 88) = v3;
      memcpy(v6, v4, v3);
    }
  }

  return 1;
}

uint64_t sub_23943BADC(_DWORD *a1, unint64_t a2)
{
  v4 = a2 + 24;
  v5 = *(a2 + 16);
  v6 = *(a2 + 88);
  *(a2 + 24 + v6) = 0x80;
  v7 = v6 + 1;
  if (v6 >= 0x38)
  {
    if (v6 != 63)
    {
      bzero((v4 + v7), 63 - v6);
    }

    sub_23943BBC8(a2, v4, 1);
    v7 = 0;
    goto LABEL_6;
  }

  if (v6 != 55)
  {
LABEL_6:
    bzero((v4 + v7), 56 - v7);
  }

  *(a2 + 80) = v5;
  sub_23943BBC8(a2, v4, 1);
  *(a2 + 88) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *a1 = *a2;
  a1[1] = *(a2 + 4);
  a1[2] = *(a2 + 8);
  a1[3] = *(a2 + 12);
  return 1;
}

unint64_t sub_23943BBC8(unint64_t result, _DWORD *a2, uint64_t a3)
{
  v85 = result;
  if (a3)
  {
    v4 = *(result + 8);
    v3 = *(result + 12);
    v6 = *result;
    v5 = *(result + 4);
    do
    {
      v7 = a2[1];
      HIDWORD(v8) = v6 + (v4 & v5 | v3 & ~v5) - 680876936 + *a2;
      LODWORD(v8) = HIDWORD(v8);
      v9 = (v8 >> 25) + v5;
      HIDWORD(v8) = v3 + v7 - 389564586 + (v5 & v9 | v4 & ~v9);
      LODWORD(v8) = HIDWORD(v8);
      v10 = (v8 >> 20) + v9;
      result = a2[2];
      v11 = a2[3];
      HIDWORD(v8) = v4 + result + 606105819 + (v9 & v10 | v5 & ~v10);
      LODWORD(v8) = HIDWORD(v8);
      v12 = (v8 >> 15) + v10;
      HIDWORD(v8) = v5 + v11 - 1044525330 + (v10 & v12 | v9 & ~v12);
      LODWORD(v8) = HIDWORD(v8);
      v13 = (v8 >> 10) + v12;
      v14 = a2[4];
      v15 = a2[5];
      HIDWORD(v8) = v14 + v9 - 176418897 + (v12 & v13 | v10 & ~v13);
      LODWORD(v8) = HIDWORD(v8);
      v16 = (v8 >> 25) + v13;
      HIDWORD(v8) = v15 + v10 + 1200080426 + (v13 & v16 | v12 & ~v16);
      LODWORD(v8) = HIDWORD(v8);
      v17 = (v8 >> 20) + v16;
      v19 = a2[6];
      v18 = a2[7];
      HIDWORD(v8) = v19 + v12 - 1473231341 + (v16 & v17 | v13 & ~v17);
      LODWORD(v8) = HIDWORD(v8);
      v20 = (v8 >> 15) + v17;
      HIDWORD(v8) = v18 + v13 - 45705983 + (v17 & v20 | v16 & ~v20);
      LODWORD(v8) = HIDWORD(v8);
      v21 = (v8 >> 10) + v20;
      v23 = a2[8];
      v22 = a2[9];
      HIDWORD(v8) = v23 + v16 + 1770035416 + (v20 & v21 | v17 & ~v21);
      LODWORD(v8) = HIDWORD(v8);
      v24 = (v8 >> 25) + v21;
      HIDWORD(v8) = v22 + v17 - 1958414417 + (v21 & v24 | v20 & ~v24);
      LODWORD(v8) = HIDWORD(v8);
      v25 = (v8 >> 20) + v24;
      v26 = a2[10];
      v27 = a2[11];
      HIDWORD(v8) = v26 + v20 - 42063 + (v24 & v25 | v21 & ~v25);
      LODWORD(v8) = HIDWORD(v8);
      v28 = (v8 >> 15) + v25;
      HIDWORD(v8) = v27 + v21 - 1990404162 + (v25 & v28 | v24 & ~v28);
      LODWORD(v8) = HIDWORD(v8);
      v29 = (v8 >> 10) + v28;
      v31 = a2[12];
      v30 = a2[13];
      HIDWORD(v8) = v31 + v24 + 1804603682 + (v28 & v29 | v25 & ~v29);
      LODWORD(v8) = HIDWORD(v8);
      v32 = (v8 >> 25) + v29;
      HIDWORD(v8) = v30 + v25 - 40341101 + (v29 & v32 | v28 & ~v32);
      LODWORD(v8) = HIDWORD(v8);
      v33 = (v8 >> 20) + v32;
      v35 = a2[14];
      v34 = a2[15];
      HIDWORD(v8) = v35 + v28 - 1502002290 + (v32 & v33 | v29 & ~v33);
      LODWORD(v8) = HIDWORD(v8);
      v36 = (v8 >> 15) + v33;
      HIDWORD(v8) = v34 + v29 + 1236535329 + (v33 & v36 | v32 & ~v36);
      LODWORD(v8) = HIDWORD(v8);
      v37 = (v8 >> 10) + v36;
      HIDWORD(v8) = v7 + v32 - 165796510 + (v37 & v33 | v36 & ~v33);
      LODWORD(v8) = HIDWORD(v8);
      v38 = (v8 >> 27) + v37;
      HIDWORD(v8) = v19 + v33 - 1069501632 + (v38 & v36 | v37 & ~v36);
      LODWORD(v8) = HIDWORD(v8);
      v39 = (v8 >> 23) + v38;
      HIDWORD(v8) = v27 + v36 + 643717713 + (v39 & v37 | v38 & ~v37);
      LODWORD(v8) = HIDWORD(v8);
      v40 = (v8 >> 18) + v39;
      HIDWORD(v8) = *a2 + v37 - 373897302 + (v40 & v38 | v39 & ~v38);
      LODWORD(v8) = HIDWORD(v8);
      v41 = (v8 >> 12) + v40;
      HIDWORD(v8) = v15 + v38 - 701558691 + (v41 & v39 | v40 & ~v39);
      LODWORD(v8) = HIDWORD(v8);
      v42 = (v8 >> 27) + v41;
      HIDWORD(v8) = v26 + v39 + 38016083 + (v42 & v40 | v41 & ~v40);
      LODWORD(v8) = HIDWORD(v8);
      v43 = (v8 >> 23) + v42;
      HIDWORD(v8) = v34 + v40 - 660478335 + (v43 & v41 | v42 & ~v41);
      LODWORD(v8) = HIDWORD(v8);
      v44 = (v8 >> 18) + v43;
      HIDWORD(v8) = v14 + v41 - 405537848 + (v44 & v42 | v43 & ~v42);
      LODWORD(v8) = HIDWORD(v8);
      v45 = (v8 >> 12) + v44;
      HIDWORD(v8) = v22 + v42 + 568446438 + (v45 & v43 | v44 & ~v43);
      LODWORD(v8) = HIDWORD(v8);
      v46 = (v8 >> 27) + v45;
      HIDWORD(v8) = v35 + v43 - 1019803690 + (v46 & v44 | v45 & ~v44);
      LODWORD(v8) = HIDWORD(v8);
      v47 = (v8 >> 23) + v46;
      HIDWORD(v8) = v11 + v44 - 187363961 + (v47 & v45 | v46 & ~v45);
      LODWORD(v8) = HIDWORD(v8);
      v48 = (v8 >> 18) + v47;
      HIDWORD(v8) = v23 + v45 + 1163531501 + (v48 & v46 | v47 & ~v46);
      LODWORD(v8) = HIDWORD(v8);
      v49 = (v8 >> 12) + v48;
      HIDWORD(v8) = v30 + v46 - 1444681467 + (v49 & v47 | v48 & ~v47);
      LODWORD(v8) = HIDWORD(v8);
      v50 = (v8 >> 27) + v49;
      HIDWORD(v8) = result + v47 - 51403784 + (v50 & v48 | v49 & ~v48);
      LODWORD(v8) = HIDWORD(v8);
      v51 = (v8 >> 23) + v50;
      HIDWORD(v8) = v18 + v48 + 1735328473 + (v51 & v49 | v50 & ~v49);
      LODWORD(v8) = HIDWORD(v8);
      v52 = (v8 >> 18) + v51;
      HIDWORD(v8) = v31 + v49 - 1926607734 + ((v52 ^ v51) & v50 ^ v51);
      LODWORD(v8) = HIDWORD(v8);
      v53 = (v8 >> 12) + v52;
      HIDWORD(v8) = v15 + v50 - 378558 + (v52 ^ v51 ^ v53);
      LODWORD(v8) = HIDWORD(v8);
      v54 = (v8 >> 28) + v53;
      HIDWORD(v8) = v23 + v51 - 2022574463 + (v53 ^ v52 ^ v54);
      LODWORD(v8) = HIDWORD(v8);
      v55 = (v8 >> 21) + v54;
      HIDWORD(v8) = v27 + v52 + 1839030562 + (v54 ^ v53 ^ v55);
      LODWORD(v8) = HIDWORD(v8);
      v56 = (v8 >> 16) + v55;
      HIDWORD(v8) = v35 + v53 - 35309556 + (v55 ^ v54 ^ v56);
      LODWORD(v8) = HIDWORD(v8);
      v57 = (v8 >> 9) + v56;
      HIDWORD(v8) = v7 + v54 - 1530992060 + (v56 ^ v55 ^ v57);
      LODWORD(v8) = HIDWORD(v8);
      v58 = (v8 >> 28) + v57;
      HIDWORD(v8) = v14 + v55 + 1272893353 + (v57 ^ v56 ^ v58);
      LODWORD(v8) = HIDWORD(v8);
      v59 = (v8 >> 21) + v58;
      HIDWORD(v8) = v18 + v56 - 155497632 + (v58 ^ v57 ^ v59);
      LODWORD(v8) = HIDWORD(v8);
      v60 = (v8 >> 16) + v59;
      HIDWORD(v8) = v26 + v57 - 1094730640 + (v59 ^ v58 ^ v60);
      LODWORD(v8) = HIDWORD(v8);
      v61 = (v8 >> 9) + v60;
      HIDWORD(v8) = v30 + v58 + 681279174 + (v60 ^ v59 ^ v61);
      LODWORD(v8) = HIDWORD(v8);
      v62 = (v8 >> 28) + v61;
      HIDWORD(v8) = *a2 + v59 - 358537222 + (v61 ^ v60 ^ v62);
      LODWORD(v8) = HIDWORD(v8);
      v63 = (v8 >> 21) + v62;
      HIDWORD(v8) = v11 + v60 - 722521979 + (v62 ^ v61 ^ v63);
      LODWORD(v8) = HIDWORD(v8);
      v64 = (v8 >> 16) + v63;
      HIDWORD(v8) = v19 + v61 + 76029189 + (v63 ^ v62 ^ v64);
      LODWORD(v8) = HIDWORD(v8);
      v65 = (v8 >> 9) + v64;
      HIDWORD(v8) = v22 + v62 - 640364487 + (v64 ^ v63 ^ v65);
      LODWORD(v8) = HIDWORD(v8);
      v66 = (v8 >> 28) + v65;
      HIDWORD(v8) = v31 + v63 - 421815835 + (v65 ^ v64 ^ v66);
      LODWORD(v8) = HIDWORD(v8);
      v67 = (v8 >> 21) + v66;
      HIDWORD(v8) = v34 + v64 + 530742520 + (v66 ^ v65 ^ v67);
      LODWORD(v8) = HIDWORD(v8);
      v68 = (v8 >> 16) + v67;
      HIDWORD(v8) = result + v65 - 995338651 + (v67 ^ v66 ^ v68);
      LODWORD(v8) = HIDWORD(v8);
      v69 = (v8 >> 9) + v68;
      HIDWORD(v8) = *a2 + v66 - 198630844 + ((v69 | ~v67) ^ v68);
      LODWORD(v8) = HIDWORD(v8);
      v70 = (v8 >> 26) + v69;
      HIDWORD(v8) = v18 + v67 + 1126891415 + ((v70 | ~v68) ^ v69);
      LODWORD(v8) = HIDWORD(v8);
      v71 = (v8 >> 22) + v70;
      HIDWORD(v8) = v35 + v68 - 1416354905 + ((v71 | ~v69) ^ v70);
      LODWORD(v8) = HIDWORD(v8);
      v72 = (v8 >> 17) + v71;
      HIDWORD(v8) = v15 + v69 - 57434055 + ((v72 | ~v70) ^ v71);
      LODWORD(v8) = HIDWORD(v8);
      v73 = (v8 >> 11) + v72;
      HIDWORD(v8) = v31 + v70 + 1700485571 + ((v73 | ~v71) ^ v72);
      LODWORD(v8) = HIDWORD(v8);
      v74 = (v8 >> 26) + v73;
      HIDWORD(v8) = v11 + v71 - 1894986606 + ((v74 | ~v72) ^ v73);
      LODWORD(v8) = HIDWORD(v8);
      v75 = (v8 >> 22) + v74;
      HIDWORD(v8) = v26 + v72 - 1051523 + ((v75 | ~v73) ^ v74);
      LODWORD(v8) = HIDWORD(v8);
      v76 = (v8 >> 17) + v75;
      HIDWORD(v8) = v7 + v73 - 2054922799 + ((v76 | ~v74) ^ v75);
      LODWORD(v8) = HIDWORD(v8);
      v77 = (v8 >> 11) + v76;
      HIDWORD(v8) = v23 + v74 + 1873313359 + ((v77 | ~v75) ^ v76);
      LODWORD(v8) = HIDWORD(v8);
      v78 = (v8 >> 26) + v77;
      HIDWORD(v8) = v34 + v75 - 30611744 + ((v78 | ~v76) ^ v77);
      LODWORD(v8) = HIDWORD(v8);
      v79 = (v8 >> 22) + v78;
      HIDWORD(v8) = v19 + v76 - 1560198380 + ((v79 | ~v77) ^ v78);
      LODWORD(v8) = HIDWORD(v8);
      v80 = (v8 >> 17) + v79;
      HIDWORD(v8) = v30 + v77 + 1309151649 + ((v80 | ~v78) ^ v79);
      LODWORD(v8) = HIDWORD(v8);
      v81 = (v8 >> 11) + v80;
      HIDWORD(v8) = v14 + v78 - 145523070 + ((v81 | ~v79) ^ v80);
      LODWORD(v8) = HIDWORD(v8);
      v82 = (v8 >> 26) + v81;
      HIDWORD(v8) = v27 + v79 - 1120210379 + ((v82 | ~v80) ^ v81);
      LODWORD(v8) = HIDWORD(v8);
      v83 = (v8 >> 22) + v82;
      HIDWORD(v8) = result + v80 + 718787259 + ((v83 | ~v81) ^ v82);
      LODWORD(v8) = HIDWORD(v8);
      v84 = (v8 >> 17) + v83;
      v6 += v82;
      HIDWORD(v8) = v22 + v81 - 343485551 + ((v84 | ~v82) ^ v83);
      LODWORD(v8) = HIDWORD(v8);
      v5 += v84 + (v8 >> 11);
      v4 += v84;
      v3 += v83;
      *v85 = v6;
      v85[1] = v5;
      v85[2] = v4;
      v85[3] = v3;
      a2 += 16;
      --a3;
    }

    while (a3);
  }

  return result;
}

uint8x16_t sub_23943C5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void (*a8)(uint64_t, uint64_t, uint64_t))
{
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      v26 = 1 << (i & 7 ^ 7);
      v16 = a5;
      v17 = vld1q_dup_s8(v16++);
      v25 = v17;
      v18 = (v26 & *(a1 + (i >> 3))) != 0;
      v17.i64[0] = *v16;
      v17.i32[2] = *(a5 + 9);
      v17.i16[6] = *(a5 + 13);
      v17.i8[14] = *(a5 + 15);
      v24 = v17;
      a8(a5, a5, a4);
      v19 = *a5 ^ (v18 << 7);
      v20 = v18 << 7;
      if (a7)
      {
        v20 = *a5 ^ (v18 << 7);
      }

      v21 = v24;
      v22 = vextq_s8(v25, v24, 0xFuLL);
      v21.i8[15] = v20;
      result = vsraq_n_u8(vaddq_s8(v22, v22), vshrq_n_u8(v21, 1uLL), 6uLL);
      *a5 = result;
      *(a2 + (i >> 3)) = *(a2 + (i >> 3)) & ~v26 | ((v19 & 0x80) >> (i & 7));
    }
  }

  return result;
}

uint64_t sub_23943C710(uint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, int a7, uint64_t (*a8)(__int128 *, __int128 *, uint64_t))
{
  v8 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v13 = a3;
    v15 = result;
    do
    {
      v20 = *a5;
      result = a8(a5, a5, a4);
      v17 = *v15++;
      v16 = v17;
      v18 = *a5 ^ v17;
      if (a7)
      {
        v16 = v18;
      }

      *a2++ = v18;
      *a5 = *(&v20 + 1);
      *(a5 + 7) = *(&v20 + 1);
      *(a5 + 15) = v16;
      --v13;
    }

    while (v13);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

int8x16_t (**sub_23943C7E8(int8x16_t (**result)(int8x16_t *a1, uint64_t *a2), int8x16_t (**a2)(int8x16_t *a1, uint64_t *a2, int8x16_t *a3, unint64_t a4), unint64_t *a3, _DWORD *a4, unint64_t *a5))(int8x16_t *a1, uint64_t *a2)
{
  *a4 = 0;
  v5 = bswap64(*a5);
  *(&v7 + 1) = v5;
  *&v7 = bswap64(a5[1]);
  v6 = v7 >> 63;
  *(&v7 + 1) = v7;
  *&v7 = v5;
  *a3 = (v5 >> 63) & 0xC200000000000000 ^ v6;
  a3[1] = v7 >> 63;
  *result = sub_23943C85C;
  *a2 = sub_23943C8D8;
  return result;
}