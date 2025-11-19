void *sub_2393FCBBC(void *a1, char **a2, size_t a3)
{
  if (a3 >> 30)
  {
    v3 = 177;
    v4 = 182;
LABEL_18:
    sub_2394170F4(12, 0, v3, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_int.c", v4);
    return 0;
  }

  v21 = *a2;
  v22 = a3;
  v20 = 0;
  if (!sub_239408344(&v21, &v20))
  {
    v3 = 196;
    v4 = 190;
    goto LABEL_18;
  }

  if (a1 && (v8 = *a1) != 0 || (v8 = sub_239402EE8()) != 0)
  {
    if (v20)
    {
      if (!v22 || *v21 != 255 || v22 == 1)
      {
        goto LABEL_24;
      }

      if (!v21[1])
      {
        v9 = (v21 + 2);
        v10 = v22 - 2;
        v11 = -1;
        do
        {
          v12 = v11;
          if (!v10)
          {
            break;
          }

          v13 = *v9++;
          --v11;
          --v10;
        }

        while (!v13);
        if (-v12 >= v22 - 1)
        {
          goto LABEL_24;
        }
      }
    }

    else if (!v22 || *v21)
    {
      goto LABEL_24;
    }

    sub_239407718(&v21, 1uLL);
LABEL_24:
    if (!sub_2393FF8AC(v8, v21, v22))
    {
      if (!a1 || *a1 != v8)
      {
        sub_239402ECC(v8);
      }

      return 0;
    }

    if (v20)
    {
      *(v8 + 1) = 258;
      v15 = *v8;
      if (v15)
      {
        v16 = 0;
        v17 = v8[1];
        v18 = v15 - 1;
        do
        {
          v19 = *(v17 + v18);
          *(v17 + v18) = -v16 - v19;
          v16 |= v19 != 0;
          --v18;
        }

        while (v18 < v15);
      }
    }

    else
    {
      *(v8 + 1) = 2;
    }

    *a2 += a3;
    if (a1)
    {
      *a1 = v8;
    }
  }

  return v8;
}

uint64_t sub_2393FCD8C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_2393FCE74(a1, -a2, 2);
    if (result)
    {
      *(a1 + 4) = 258;
      return 1;
    }
  }

  else
  {

    return sub_2393FCE74(a1, a2, 2);
  }

  return result;
}

uint64_t sub_2393FCDFC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_2393FCE74(a1, -a2, 10);
    if (result)
    {
      *(a1 + 4) = 266;
      return 1;
    }
  }

  else
  {

    return sub_2393FCE74(a1, a2, 10);
  }

  return result;
}

uint64_t sub_2393FCE74(uint64_t a1, unint64_t a2, int a3)
{
  v5 = 0;
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = bswap64(a2);
  do
  {
    if (*(v8 + v5))
    {
      break;
    }

    ++v5;
  }

  while (v5 != 8);
  result = sub_2393FF8AC(a1, v8 + v5, 8 - v5);
  if (result)
  {
    *(a1 + 4) = a3;
    result = 1;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393FCF1C(void *a1, uint64_t a2, int a3)
{
  result = sub_2393FD224(a1, a2, a3);
  if (result)
  {
    if (*(a2 + 5))
    {
      sub_2394170F4(12, 0, 196, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_int.c", 334);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2393FCF84(uint64_t *a1, uint64_t a2, int a3)
{
  v8 = 0;
  result = sub_2393FD224(&v8, a2, a3);
  if (result)
  {
    v6 = v8;
    v7 = v8 > 0;
    if ((*(a2 + 5) & (v8 != 0)) == 0)
    {
      v7 = v8 >= 0;
    }

    if (v7)
    {
      if ((*(a2 + 5) & (v8 != 0)) != 0)
      {
        v6 = -v8;
      }

      *a1 = v6;
      return 1;
    }

    else
    {
      sub_2394170F4(12, 0, 196, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_int.c", 364);
      return 0;
    }
  }

  return result;
}

uint64_t sub_2393FD030(uint64_t result, int a2)
{
  if (result)
  {
    v2 = 0;
    if (sub_2393FCF84(&v2, result, a2))
    {
      return v2;
    }

    else
    {
      sub_239416A38();
      return -1;
    }
  }

  return result;
}

void *sub_2393FD08C(uint64_t *a1, void *a2, int a3)
{
  v3 = a3;
  v6 = a2;
  if (!a2)
  {
    v6 = sub_2393FFADC(a3);
    if (!v6)
    {
      sub_2394170F4(12, 0, 158, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_int.c", 412);
LABEL_10:
      if (v6 != a2)
      {
        sub_2393FFA58(v6);
      }

      return 0;
    }
  }

  if (sub_23942236C(a1) && !sub_239421914(a1))
  {
    v3 |= 0x100u;
  }

  *(v6 + 1) = v3;
  v7 = sub_239422178(a1);
  if (!sub_2393FF8AC(v6, 0, v7) || !sub_2394227EC(v6[1], v7, a1))
  {
    goto LABEL_10;
  }

  return v6;
}

void *sub_2393FD174(unsigned __int8 **a1, void *a2, int a3)
{
  if ((*(a1 + 1) & 0xFFFFFEFF) == a3)
  {
    v4 = sub_23942253C(a1[1], *a1, a2);
    v5 = v4;
    if (v4)
    {
      if (*(a1 + 5))
      {
        sub_239421E20(v4, 1);
      }
    }

    else
    {
      sub_2394170F4(12, 0, 105, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_int.c", 452);
    }
  }

  else
  {
    sub_2394170F4(12, 0, 195, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_int.c", 446);
    return 0;
  }

  return v5;
}

uint64_t sub_2393FD224(void *a1, const void **a2, int a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 1) & 0xFFFFFEFF) != a3)
  {
    v4 = 195;
    v5 = 315;
    goto LABEL_5;
  }

  v10[0] = 0;
  v3 = *a2;
  if (v3 >= 9)
  {
    v4 = 196;
    v5 = 320;
LABEL_5:
    sub_2394170F4(12, 0, v4, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_int.c", v5);
    result = 0;
    goto LABEL_10;
  }

  if (v3)
  {
    memcpy(&v10[1] - v3, a2[1], v3);
    v8 = v10[0];
  }

  else
  {
    v8 = 0;
  }

  *a1 = bswap64(v8);
  result = 1;
LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393FD314(void *a1, char *__s, size_t a3, int a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a3;
  if (a3 == -1)
  {
    v11 = strlen(__s);
  }

  if (!a5)
  {
    a5 = 10246;
  }

  v14 = a4 - 4096;
  if ((a4 - 4096) >= 5 || ((0x17u >> a4) & 1) == 0)
  {
    v25 = 182;
    v26 = 120;
LABEL_40:
    sub_2394170F4(12, 0, v25, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_mbstr.c", v26);
    return 0xFFFFFFFFLL;
  }

  v49 = a1;
  v15 = off_284BB9200[v14];
  v16 = dword_2395C2AF0[v14];
  v55 = __s;
  v56 = v11;
  if (v11)
  {
    v48 = v16;
    v17 = 0;
    v18 = 0;
    v20 = a4 == 4098 || a4 == 4100;
    v50 = v20;
    while (1)
    {
      LODWORD(v54[0]) = 0;
      if (!(v15)(&v55, v54))
      {
        v25 = v48;
        v26 = 131;
        goto LABEL_40;
      }

      if (!v17)
      {
        v21 = v50;
        if (LODWORD(v54[0]) != 65279)
        {
          v21 = 0;
        }

        if (v21)
        {
          break;
        }
      }

      if ((a5 & 2) != 0)
      {
        v22 = v54[0];
        if (LODWORD(v54[0]) > 0x7F || !sub_23945043C(v54[0]) && (v22 > 0x3F || ((1 << v22) & 0xA400FB8100000000) == 0))
        {
          a5 &= ~2uLL;
        }
      }

      if (((LODWORD(v54[0]) > 0x7F) & (a5 >> 4)) != 0)
      {
        v23 = a5 & 0xFFFFFFFFFFFFFFEFLL;
      }

      else
      {
        v23 = a5;
      }

      if (((LODWORD(v54[0]) > 0xFF) & (v23 >> 2)) != 0)
      {
        v23 &= ~4uLL;
      }

      if ((((v54[0] & 0xFFFF0000) != 0) & (v23 >> 11)) != 0)
      {
        a5 = v23 & 0xFFFFFFFFFFFFF7FFLL;
      }

      else
      {
        a5 = v23;
      }

      if (!a5)
      {
        v25 = 126;
        v26 = 160;
        goto LABEL_40;
      }

      ++v17;
      v24 = sub_239408F9C(v54[0]);
      if (a7 >= 1 && v17 > a7)
      {
        sub_2394170F4(12, 0, 173, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_mbstr.c", 167);
        sub_239417270("maxsize=%zu", v36, v37, v38, v39, v40, v41, v42, a7);
        return 0xFFFFFFFFLL;
      }

      v18 += v24;
      if (!v56)
      {
        goto LABEL_44;
      }
    }

    v25 = 126;
    v26 = 142;
    goto LABEL_40;
  }

  v18 = 0;
  v17 = 0;
LABEL_44:
  if (a6 >= 1 && v17 < a6)
  {
    sub_2394170F4(12, 0, 174, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_mbstr.c", 174);
    sub_239417270("minsize=%zu", v29, v30, v31, v32, v33, v34, v35, a6);
    return 0xFFFFFFFFLL;
  }

  if ((a5 & 2) != 0)
  {
    v43 = sub_239409124;
    v44 = 4097;
    v27 = 19;
  }

  else if ((a5 & 0x10) != 0)
  {
    v43 = sub_239409124;
    v44 = 4097;
    v27 = 22;
  }

  else if ((a5 & 4) != 0)
  {
    v43 = sub_239409124;
    v44 = 4097;
    v27 = 20;
  }

  else if ((a5 & 0x800) != 0)
  {
    v17 *= 2;
    v44 = 4098;
    v43 = sub_23940915C;
    v27 = 30;
  }

  else if ((a5 & 0x100) != 0)
  {
    v17 *= 4;
    v44 = 4100;
    v43 = sub_2394091D0;
    v27 = 28;
  }

  else
  {
    if ((a5 & 0x2000) == 0)
    {
      v25 = 126;
      v26 = 206;
      goto LABEL_40;
    }

    v43 = sub_239408FC4;
    v44 = 4096;
    v27 = 12;
    v17 = v18;
  }

  if (!v49)
  {
    return v27;
  }

  v45 = *v49;
  v46 = *v49;
  if (*v49 || (v46 = sub_2393FFADC(v27)) != 0)
  {
    memset(v54, 0, sizeof(v54));
    sub_2394065E4(v54);
    if (v44 == a4)
    {
      if (sub_2393FF8AC(v46, __s, v11))
      {
        *(v46 + 1) = v27;
LABEL_70:
        *v49 = v46;
        return v27;
      }
    }

    else if (sub_2394065F4(v54, v17 + 1))
    {
      v55 = __s;
      v56 = v11;
      if (v11)
      {
        while (1)
        {
          v53 = 0;
          if (!(v15)(&v55, &v53) || !(v43)(v54, v53))
          {
            break;
          }

          if (!v56)
          {
            goto LABEL_76;
          }
        }

        sub_2394170F4(12, 0, 68, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_mbstr.c", 244);
      }

      else
      {
LABEL_76:
        v51 = 0;
        v52 = 0;
        if (sub_239406ACC(v54, 0))
        {
          if (sub_2394066A4(v54, &v52, &v51))
          {
            v47 = v51;
            if ((v51 - 0x80000000) > 0xFFFFFFFF80000000)
            {
              *(v46 + 1) = v27;
              sub_2393FFA9C(v46, v52, v47 - 1);
              goto LABEL_70;
            }
          }
        }

        sub_2394170F4(12, 0, 68, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_mbstr.c", 254);
        sub_239450144(v52);
      }
    }

    if (!v45)
    {
      sub_2393FFA58(v46);
    }

    sub_239406688(v54);
  }

  return 0xFFFFFFFFLL;
}

BOOL sub_2393FD800(unsigned int a1)
{
  if (a1 > 0x7F)
  {
    return 0;
  }

  if (sub_23945043C(a1) || a1 <= 0x3D && ((1 << a1) & 0x2400FB8100000000) != 0)
  {
    return 1;
  }

  return a1 == 63;
}

uint64_t sub_2393FD870(uint64_t a1, void **a2)
{
  if (!a1)
  {
    v6 = 67;
    v7 = 74;
LABEL_10:
    sub_2394170F4(12, 0, v6, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_object.c", v7);
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 20);
  if (v3 <= 0)
  {
    v6 = 134;
    v7 = 79;
    goto LABEL_10;
  }

  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  if (sub_2394065F4(v9, v3 + 2) && sub_239406A10(v9, v8, 6u) && sub_239406C48(v8, *(a1 + 24), *(a1 + 20)))
  {
    return sub_23940603C(v9, a2);
  }

  sub_239406688(v9);
  return 0xFFFFFFFFLL;
}

uint64_t sub_2393FD954(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2 && *(a2 + 24))
  {
    v4 = v14;
    v5 = sub_239451134(v14, 80, a2, 0);
    if (v5 < 80)
    {
      v8 = 0;
    }

    else
    {
      v6 = v5 + 1;
      v7 = sub_23945004C((v5 + 1));
      if (!v7)
      {
        v12 = 0xFFFFFFFFLL;
LABEL_14:
        v13 = *MEMORY[0x277D85DE8];
        return v12;
      }

      v8 = v7;
      v5 = sub_239451134(v7, v6, a2, 0);
      v4 = v8;
    }

    if (v5 >= 1)
    {
      v11 = v4;
    }

    else
    {
      v11 = "<INVALID>";
    }

    v12 = sub_2393FDA88(a1, v11);
    sub_239450144(v8);
    goto LABEL_14;
  }

  v9 = *MEMORY[0x277D85DE8];

  return sub_2393FDA88(a1, "NULL");
}

uint64_t sub_2393FDA88(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >> 31)
  {
    sub_2394170F4(12, 0, 69, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_object.c", 101);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v6 = v4;
    if (sub_239403738(a1, __s, v4) == v4)
    {
      return v6;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }
}

const char **sub_2393FDB04(const char ***a1, void *a2, uint64_t a3)
{
  if (a3 < 0)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  *&v9 = *a2;
  *(&v9 + 1) = a3;
  if (sub_239407F5C(&v9, &v7, 6))
  {
    v6 = v7;
    result = sub_2393FDBA4(a1, &v6, v8);
    if (result)
    {
      *a2 = v9;
    }
  }

  else
  {
    sub_2394170F4(12, 0, 109, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_object.c", 142);
    return 0;
  }

  return result;
}

const char **sub_2393FDBA4(const char ***a1, uint64_t *a2, unint64_t a3)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    v7 = 159;
LABEL_9:
    sub_2394170F4(12, 0, 146, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_object.c", v7);
    return 0;
  }

  v9[0] = *a2;
  v9[1] = a3;
  if (!sub_23940871C(v9))
  {
    v7 = 166;
    goto LABEL_9;
  }

  v6 = sub_2393FDC74(0, *a2, a3, 0, 0);
  if (v6)
  {
    if (a1)
    {
      sub_2393FDCD8(*a1);
      *a1 = v6;
    }

    *a2 += a3;
  }

  return v6;
}

const char **sub_2393FDC74(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 >> 31)
  {
    sub_2394170F4(12, 0, 173, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_object.c", 222);
    return 0;
  }

  else
  {
    v6[0] = a4;
    v6[1] = a5;
    v9 = a2;
    v7 = a1;
    v8 = a3;
    v10 = 13;
    return sub_239450894(v6);
  }
}

void sub_2393FDCD8(void **a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 8);
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_239450144(a1[3]);
    a1[3] = 0;
    *(a1 + 5) = 0;
    if ((a1[4] & 1) == 0)
    {
      return;
    }

    goto LABEL_8;
  }

  sub_239450144(*a1);
  sub_239450144(a1[1]);
  *a1 = 0;
  a1[1] = 0;
  v2 = *(a1 + 8);
  if ((v2 & 8) != 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  if ((v2 & 1) == 0)
  {
    return;
  }

LABEL_8:

  sub_239450144(a1);
}

double sub_2393FDD60()
{
  v0 = sub_23945004C(0x28uLL);
  if (v0)
  {
    result = 0.0;
    *v0 = 0u;
    *(v0 + 1) = 0u;
    *(v0 + 8) = 1;
  }

  return result;
}

uint64_t sub_2393FDD9C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v6 = *(a2 + 4);
  if ((a3 & 0x40) != 0)
  {
    v8 = sub_2393FFBFC(*(a2 + 4));
    v9 = strlen(v8);
    v10 = v9;
    if (a1)
    {
      if (sub_239403738(a1, v8, v9) != v9)
      {
        return 0xFFFFFFFFLL;
      }

      v11 = sub_239403738(a1, ":", 1);
      v7 = v11 == 1 ? v10 + 1 : v10;
      if (v11 != 1)
      {
        return 0xFFFFFFFFLL;
      }

      if ((a3 & 0x80) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v7 = v9 + 1;
      if ((a3 & 0x80) != 0)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    v7 = 0;
    if ((a3 & 0x80) != 0)
    {
      goto LABEL_27;
    }
  }

  if ((a3 & 0x20) != 0)
  {
LABEL_14:
    v12 = 4097;
    goto LABEL_15;
  }

  v12 = sub_2393FDFB0(v6);
  if (v12 == -1)
  {
    if ((a3 & 0x100) == 0)
    {
      goto LABEL_14;
    }

LABEL_27:
    if (a1 && sub_239403738(a1, "#", 1) != 1)
    {
      return 0xFFFFFFFFLL;
    }

    if ((a3 & 0x200) != 0)
    {
      v21[0] = 0;
      v21[1] = 0;
      sub_2393FF0F4(v21, a2);
      v20 = 0;
      v17 = sub_2394030AC(v21, &v20);
      v16 = -1;
      if ((v17 & 0x80000000) == 0)
      {
        v18 = sub_2393FE5AC(a1, v20, v17);
        sub_239450144(v20);
        if (v18 >= 0)
        {
          v16 = v18 + 1;
        }

        else
        {
          v16 = -1;
        }
      }
    }

    else
    {
      v15 = sub_2393FE5AC(a1, *(a2 + 8), *a2);
      if (v15 < 0)
      {
        return 0xFFFFFFFFLL;
      }

      v16 = v15 + 1;
    }

    if ((v16 & 0x80000000) == 0)
    {
      return (v16 + v7);
    }

    return 0xFFFFFFFFLL;
  }

LABEL_15:
  LOBYTE(v21[0]) = 0;
  v13 = sub_2393FDFD4(*(a2 + 8), *a2, v12, a3, v21, 0);
  if (v13 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = LOBYTE(v21[0]) ? (v13 + v7 + 2) : (v13 + v7);
  if (a1 && (LOBYTE(v21[0]) && sub_239403738(a1, "", 1) != 1 || (sub_2393FDFD4(*(a2 + 8), *a2, v12, a3, 0, a1) & 0x80000000) != 0 || LOBYTE(v21[0]) && sub_239403738(a1, "", 1) != 1))
  {
    return 0xFFFFFFFFLL;
  }

  return v14;
}

uint64_t sub_2393FDFB0(int a1)
{
  if ((a1 - 12) > 0x12)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_2395C2B04[a1 - 12];
  }
}

uint64_t sub_2393FDFD4(uint64_t a1, int a2, int a3, char a4, _BYTE *a5, uint64_t a6)
{
  v6 = a3 - 4096;
  if ((a3 - 4096) > 4 || ((0x17u >> a3) & 1) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = dword_2395C2B50[v6];
  v9 = off_284BB9228[v6];
  v32 = a1;
  v33 = a2;
  if (!a2)
  {
    return 0;
  }

  v27 = v8;
  v13 = 0;
  v28 = v9;
  while (1)
  {
    v14 = v32;
    v15 = v32 == a1;
    v31 = 0;
    if (!(v9)(&v32, &v31))
    {
      sub_2394170F4(12, 0, v27, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_strex.c", 168);
      return 0xFFFFFFFFLL;
    }

    v16 = v33;
    if ((a4 & 0x10) == 0)
    {
      v17 = sub_2393FE64C(v31, a4, a5, a6, v15, v33 == 0);
      if (v17 < 0)
      {
        return 0xFFFFFFFFLL;
      }

      v13 = (v17 + v13);
      goto LABEL_27;
    }

    memset(v29, 0, sizeof(v29));
    sub_239406658(v29, v30, 6);
    if (!sub_239408FC4(v29, v31))
    {
      sub_2394170F4(12, 0, 68, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_strex.c", 177);
      return 1;
    }

    v18 = sub_239406968(v29);
    if (v18)
    {
      break;
    }

LABEL_26:
    v9 = v28;
LABEL_27:
    if (!v33)
    {
      return v13;
    }
  }

  v19 = v18;
  v20 = 0;
  while (1)
  {
    v21 = v14 == a1 && v20 == 0;
    v22 = v21;
    v23 = !v16 && v19 == 1;
    v24 = v23;
    v25 = sub_2393FE64C(v30[v20], a4, a5, a6, v22, v24);
    if (v25 < 0)
    {
      return 0xFFFFFFFFLL;
    }

    v13 = (v25 + v13);
    ++v20;
    if (!--v19)
    {
      goto LABEL_26;
    }
  }
}

uint64_t sub_2393FE1A8(uint64_t a1, uint64_t a2, __int16 a3)
{
  if (a1)
  {
    v5 = sub_2394042E8();
    if (!v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = sub_2393FDD9C(v5, a2, a3);
  sub_239403520(v5);
  return v7;
}

uint64_t sub_2393FE214(void *a1, char **a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = sub_2393FDFB0(*(a2 + 1));
  if (v4 == -1)
  {
    sub_2394170F4(12, 0, 185, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_strex.c", 369);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v6 = &v7;
    v9 = 0;
    result = sub_2393FD308(&v6, a2[1], *a2, v4, 0x2000uLL);
    if ((result & 0x80000000) == 0)
    {
      *a1 = v8;
      return v7;
    }
  }

  return result;
}

uint64_t sub_2393FE2C0(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_21;
  }

  v3 = *a2;
  if (*a2 < 1)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = *(a2 + 8);
  do
  {
    v8 = *(v7 + v5);
    if (v8 == 127)
    {
      v8 = 46;
    }

    else
    {
      if (v8 == 10)
      {
        v9 = 10;
      }

      else
      {
        v9 = 46;
      }

      if (v8 == 13)
      {
        v9 = 13;
      }

      if (v8 <= 31)
      {
        v8 = v9;
      }
    }

    v12[v6] = v8;
    if (v6 < 79)
    {
      ++v6;
    }

    else
    {
      if (sub_239403738(a1, v12, v6 + 1) < 1)
      {
        goto LABEL_21;
      }

      v6 = 0;
      v3 = *a2;
    }

    ++v5;
  }

  while (v5 < v3);
  if (v6 < 1 || sub_239403738(a1, v12, v6) >= 1)
  {
LABEL_20:
    result = 1;
  }

  else
  {
LABEL_21:
    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_2393FE3EC(uint64_t a1, int *a2)
{
  v3 = a2[1];
  if (v3 == 24)
  {

    return sub_2393FE4F8(a1, a2);
  }

  else if (v3 == 23)
  {

    return sub_2393FE444(a1, a2);
  }

  else
  {
    sub_239403848(a1, "Bad time value");
    return 0;
  }
}

BOOL sub_2393FE444(uint64_t a1, int *a2)
{
  v3 = *a2;
  *&v9 = *(a2 + 1);
  *(&v9 + 1) = v3;
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  if (sub_239408CA4(&v9, &v5, 0))
  {
    return sub_239404AE0(a1, "%s %2d %02d:%02d:%02d %d GMT", off_278A76D48[v6], HIDWORD(v5), DWORD2(v5), DWORD1(v5), v5, DWORD1(v6) + 1900) > 0;
  }

  sub_239403848(a1, "Bad time value");
  return 0;
}

BOOL sub_2393FE4F8(uint64_t a1, int *a2)
{
  v3 = *a2;
  *&v9 = *(a2 + 1);
  *(&v9 + 1) = v3;
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  if (sub_2394089B4(&v9, &v5, 0))
  {
    return sub_239404AE0(a1, "%s %2d %02d:%02d:%02d %d GMT", off_278A76D48[v6], HIDWORD(v5), DWORD2(v5), DWORD1(v5), v5, DWORD1(v6) + 1900) > 0;
  }

  sub_239403848(a1, "Bad time value");
  return 0;
}

uint64_t sub_2393FE5AC(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (!a1 || !a3)
  {
    return (2 * a3);
  }

  v6 = a3;
  while (1)
  {
    v7 = *a2;
    v9[0] = a0123456789abcd_0[v7 >> 4];
    v9[1] = a0123456789abcd_0[v7 & 0xF];
    if (sub_239403738(a1, v9, 2) != 2)
    {
      break;
    }

    ++a2;
    if (!--v6)
    {
      return (2 * a3);
    }
  }

  return 0xFFFFFFFFLL;
}

size_t sub_2393FE64C(unsigned int a1, char a2, _BYTE *a3, uint64_t a4, int a5, int a6)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = a1;
  if (a1 >= 0x10000)
  {
    snprintf(__str, 0x10uLL, "\\W%08X");
    goto LABEL_22;
  }

  if (a1 >= 0x100)
  {
    snprintf(__str, 0x10uLL, "\\U%04X");
    goto LABEL_22;
  }

  if (a1 >= 0x80 && (a2 & 4) != 0 || (a2 & 2) != 0 && (a1 < 0x20u || a1 == 127))
  {
    snprintf(__str, 0x10uLL, "\\%02X");
    goto LABEL_22;
  }

  if ((a2 & 1) == 0)
  {
    if (a1 == 92 && (a2 & 0xE) != 0)
    {
      goto LABEL_21;
    }

LABEL_29:
    if (a4)
    {
      if (sub_239403738(a4, &v10, 1) == 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = 0xFFFFFFFFLL;
      }
    }

    else
    {
      v7 = 1;
    }

    goto LABEL_26;
  }

  if (a1 == 92 || a1 == 34)
  {
    goto LABEL_21;
  }

  if ((a1 & 0xFD) != 0x3C && (a1 > 0x3Bu || ((1 << a1) & 0x800180000000000) == 0) && (!a5 || a1 != 32 && a1 != 35) && (a1 != 32 || !a6))
  {
    goto LABEL_29;
  }

  if ((a2 & 8) != 0)
  {
    if (a3)
    {
      *a3 = 1;
    }

    goto LABEL_29;
  }

LABEL_21:
  snprintf(__str, 0x10uLL, "\\%c");
LABEL_22:
  v7 = strlen(__str);
  if (a4)
  {
    if (sub_239403738(a4, __str, v7) == v7)
    {
      v7 = v7;
    }

    else
    {
      v7 = 0xFFFFFFFFLL;
    }
  }

LABEL_26:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_2393FE810(uint64_t *a1, char *a2, size_t a3, int a4, int a5)
{
  v13 = 0;
  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = &v13;
  }

  v9 = sub_2393FE8BC(a5);
  if (v9)
  {
    if ((v9[4] & 2) != 0)
    {
      v10 = v9[3];
    }

    else
    {
      v10 = v9[3] & 0x2000;
    }

    v11 = sub_2393FD314(v8, a2, a3, a4, v10, v9[1], v9[2]);
  }

  else
  {
    v11 = sub_2393FD308(v8, a2, a3, a4, 0x2000uLL);
  }

  if (v11 < 1)
  {
    return 0;
  }

  else
  {
    return *v8;
  }
}

uint64_t sub_2393FE8BC(int a1)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  LODWORD(v3[0]) = a1;
  v1 = bsearch(v3, &unk_2395C2B68, 0x13uLL, 0x28uLL, sub_2393FEB48);
  if (!v1)
  {
    sub_239457D1C(&stru_27DF76600);
    if (qword_27DF77770)
    {
      v1 = sub_23944FC1C(qword_27DF77770, v3, sub_2393FEB60, sub_2393FEB6C);
    }

    else
    {
      v1 = 0;
    }

    sub_239457D5C(&stru_27DF76600);
  }

  return v1;
}

uint64_t sub_2393FE97C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!sub_2393FE8BC(a1))
  {
    sub_239457D3C(&stru_27DF76600);
    if (qword_27DF77770)
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
      LODWORD(v14[0]) = a1;
      if (sub_23944FC1C(qword_27DF77770, v14, sub_2393FEB60, sub_2393FEB6C))
      {
        sub_2394170F4(12, 0, 66, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_strnid.c", 212);
        goto LABEL_11;
      }
    }

    else
    {
      qword_27DF77770 = sub_23944FB28(sub_2393FEB10, sub_2393FEB18);
      if (!qword_27DF77770)
      {
        goto LABEL_11;
      }
    }

    v11 = sub_23945004C(0x28uLL);
    if (v11)
    {
      v12 = v11;
      *v11 = a1;
      v11[1] = a2;
      v11[2] = a3;
      v11[3] = a4;
      v11[4] = a5;
      *&v14[0] = 0;
      if (sub_23944FD8C(qword_27DF77770, v14, v11, sub_2393FEB60, sub_2393FEB6C))
      {
        v10 = 1;
LABEL_12:
        sub_239457D5C(&stru_27DF76600);
        return v10;
      }

      sub_239450144(v12);
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  sub_2394170F4(12, 0, 66, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_strnid.c", 194);
  return 0;
}

uint64_t sub_2393FEB18(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

void *sub_2393FEB30(void *result, void *a2)
{
  *result = &unk_2395C2B68;
  *a2 = 19;
  return result;
}

uint64_t sub_2393FEB48(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

void *sub_2393FEBB8(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (!sub_2394000EC(a2, &v9))
  {
    sub_2394170F4(12, 0, 113, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/a_time.c", 95);
    return 0;
  }

  if ((a3 || a4) && !sub_239400390(&v9, a3, a4))
  {
    return 0;
  }

  if ((DWORD1(v10) - 150) >= 0xFFFFFF9C)
  {
    return sub_2393FF3C4(a1, a2, a3, a4);
  }

  else
  {
    return sub_2393FC734(a1, a2, a3, a4);
  }
}

BOOL sub_2393FEC80(int *a1)
{
  v1 = a1[1];
  if (v1 == 23)
  {
    return sub_2393FF32C(a1);
  }

  if (v1 == 24)
  {
    return sub_2393FC6A0(a1);
  }

  return 0;
}

void *sub_2393FECA4(int *a1, void **a2)
{
  if (!sub_2393FEC80(a1))
  {
    return 0;
  }

  if (!a2 || (v4 = *a2) == 0)
  {
    v4 = sub_239403008();
    if (!v4)
    {
      goto LABEL_16;
    }
  }

  if (a1[1] == 24)
  {
    if (sub_2393FF8AC(v4, *(a1 + 1), *a1))
    {
      if (!a2)
      {
        return v4;
      }

      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if (!sub_2393FF8AC(v4, 0, *a1 + 2))
  {
LABEL_16:
    if (!a2 || *a2 != v4)
    {
      sub_239402ECC(v4);
    }

    return 0;
  }

  v5 = *a1;
  v6 = v4[1];
  if (**(a1 + 1) <= 0x34u)
  {
    v7 = "20";
  }

  else
  {
    v7 = "19";
  }

  sub_2394507BC(v4[1], v7, v5 + 3);
  sub_239450834(v6, *(a1 + 1), v5 + 3);
  if (a2)
  {
LABEL_14:
    if (!*a2)
    {
      *a2 = v4;
    }
  }

  return v4;
}

uint64_t sub_2393FEDF8(uint64_t a1, char *__s)
{
  *&v9 = __s;
  *(&v9 + 1) = strlen(__s);
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  if (sub_239408CA4(&v9, 0, 0))
  {
    goto LABEL_2;
  }

  result = sub_2394089B4(&v9, &v5, 0);
  if (result)
  {
    if ((DWORD1(v6) - 150) < 0xFFFFFF9C)
    {
      v3 = 24;
      if (a1)
      {
        goto LABEL_3;
      }

      return 1;
    }

    sub_239407718(&v9, 2uLL);
LABEL_2:
    v3 = 23;
    if (a1)
    {
LABEL_3:
      result = sub_2393FF8AC(a1, v9, *(&v9 + 1));
      if (!result)
      {
        return result;
      }

      *(a1 + 4) = v3;
    }

    return 1;
  }

  return result;
}

uint64_t sub_2393FEEB4(_DWORD *a1, _DWORD *a2, int *a3, int *a4)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  result = sub_2393FEF44(v10, a3, 1);
  if (result)
  {
    result = sub_2393FEF44(v8, a4, 1);
    if (result)
    {
      return sub_23940043C(a1, a2, v10, v8);
    }
  }

  return result;
}

BOOL sub_2393FEF44(int *a1, int *a2, int a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (v4 == 24)
    {

      return sub_2393FC644(a1, a2);
    }

    else if (v4 == 23)
    {

      return sub_2393FF2D4(a1, a2, a3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = time(0);
    return sub_2394000EC(v6, a1) != 0;
  }
}

uint64_t sub_2393FEFDC(int *a1, void *a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  result = sub_2393FEF44(v4, a1, 0);
  if (result)
  {
    return sub_23940031C(v4, a2);
  }

  return result;
}

uint64_t sub_2393FF034(int *a1, void *a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  result = sub_2393FEF44(v4, a1, 0);
  if (result)
  {
    return sub_2393FFF08(v4, a2);
  }

  return result;
}

uint64_t sub_2393FF08C(unsigned int *a1)
{
  result = *a1;
  if ((result | 4) != 5)
  {
    if (*(a1 + 1))
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2393FF0B4(int *a1)
{
  v1 = *a1;
  if (*a1 == 6)
  {
    return *(a1 + 1);
  }

  if (v1 == 5)
  {
    return 0;
  }

  if (v1 != 1)
  {
    return *(a1 + 1);
  }

  if (a1[2])
  {
    return 255;
  }

  else
  {
    return 0;
  }
}

void sub_2393FF0F4(int *a1, uint64_t a2)
{
  v3 = *(a2 + 4);
  if (v3 == 266)
  {
    v4 = 10;
  }

  else
  {
    v4 = *(a2 + 4);
  }

  if (v3 == 258)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  sub_2393FF118(a1, v5, a2);
}

void sub_2393FF118(int *a1, int a2, uint64_t a3)
{
  sub_2393FF188(a1);
  *a1 = a2;
  if (a2 == 1)
  {
    if (a3)
    {
      v6 = 255;
    }

    else
    {
      v6 = 0;
    }

    a1[2] = v6;
  }

  else if (a2 == 5)
  {
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a3;
  }
}

void sub_2393FF188(int *a1)
{
  v2 = *a1;
  if (*a1 == 1)
  {
    a1[2] = -1;
  }

  else
  {
    if (v2 == 6)
    {
      sub_2393FDCD8(*(a1 + 1));
    }

    else if (v2 != 5)
    {
      sub_2393FFA58(*(a1 + 1));
    }

    *(a1 + 1) = 0;
  }
}

uint64_t sub_2393FF1E8(uint64_t a1, int a2, int *a3)
{
  if (a2 != 1 && a3)
  {
    if (a2 == 6)
    {
      result = sub_239450894(a3);
      if (!result)
      {
        return result;
      }

      v6 = result;
      sub_2393FF188(a1);
      *a1 = 6;
      *(a1 + 8) = v6;
      return 1;
    }

    result = sub_2393FF9A4(a3);
    if (!result)
    {
      return result;
    }

    a3 = result;
  }

  sub_2393FF118(a1, a2, a3);
  return 1;
}

uint64_t sub_2393FF264(int *a1, uint64_t a2)
{
  v2 = 0xFFFFFFFFLL;
  if (!a1 || !a2)
  {
    return v2;
  }

  v3 = *a1;
  if (*a1 != *a2)
  {
    return 0xFFFFFFFFLL;
  }

  switch(v3)
  {
    case 1:
      return (a1[2] - *(a2 + 8));
    case 5:
      return 0;
    case 6:
      return sub_239450998(*(a1 + 1), *(a2 + 8));
    default:
      return sub_2393FFB10(*(a1 + 1), *(a2 + 8));
  }
}

BOOL sub_2393FF2D4(int *a1, int *a2, int a3)
{
  if (a2[1] != 23)
  {
    return 0;
  }

  v8 = v3;
  v9 = v4;
  v5 = *a2;
  *&v7 = *(a2 + 1);
  *(&v7 + 1) = v5;
  return sub_239408CA4(&v7, a1, a3) != 0;
}

uint64_t sub_2393FF33C(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  *&v6 = __s;
  *(&v6 + 1) = v4;
  result = sub_239408CA4(&v6, 0, 0);
  if (result)
  {
    if (a1)
    {
      result = sub_2393FF8AC(a1, __s, v4);
      if (!result)
      {
        return result;
      }

      *(a1 + 4) = 23;
    }

    return 1;
  }

  return result;
}

void *sub_2393FF3C4(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  if (!sub_2394000EC(a2, &v12) || (a3 || a4) && !sub_239400390(&v12, a3, a4) || (DWORD1(v13) - 150) < 0xFFFFFF9C)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  if (DWORD1(v13) >= 0x64)
  {
    v10 = DWORD1(v13) - 100;
  }

  else
  {
    v10 = DWORD1(v13);
  }

  if (snprintf(__str, 0xEuLL, "%02d%02d%02d%02d%02d%02dZ", v10, v13 + 1, HIDWORD(v12), DWORD2(v12), DWORD1(v12), v12) != 13)
  {
    abort();
  }

  v7 = a1;
  if (a1 || (v7 = sub_239402FE8()) != 0)
  {
    v11 = strlen(__str);
    if (sub_2393FF8AC(v7, __str, v11))
    {
      *(v7 + 1) = 23;
      goto LABEL_7;
    }

    if (!a1)
    {
      sub_239402ECC(v7);
    }

    goto LABEL_6;
  }

LABEL_7:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_2393FF510(int *a1, uint64_t a2)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v5 = 0;
  if (!sub_2393FF2D4(v8, a1, 1) || !sub_2394000EC(a2, v6) || !sub_23940043C(&v5 + 1, &v5, v6, v8))
  {
    return 4294967294;
  }

  if (v5 > 0)
  {
    return 1;
  }

  if (v5 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5)
  {
    v4 = -1;
  }

  else
  {
    v4 = 0;
  }

  if (v5 <= 0)
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2393FF5D0(void *a1, unint64_t *a2, int *a3, int *a4, uint64_t a5)
{
  if (a5 < 0)
  {
    v10 = 119;
  }

  else
  {
    v18 = 0;
    v15 = 0;
    v16 = 0;
    *&v17 = *a1;
    *(&v17 + 1) = a5;
    if (sub_239407CF0(&v17, &v15, &v18) && (v9 = v16, !(v16 >> 30)))
    {
      v11 = HIBYTE(v18) & 0xC0;
      v12 = v18 & 0x1FFFFFFF;
      if ((v18 & 0x1FFFFFFF) < 0x100 || v11 != 0)
      {
        result = HIBYTE(v18) & 0x20;
        *a1 = v15;
        *a2 = v9;
        *a3 = v12;
        *a4 = v11;
        return result;
      }

      v10 = 141;
    }

    else
    {
      v10 = 130;
    }
  }

  sub_2394170F4(12, 0, 123, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/asn1_lib.c", v10);
  return 128;
}

_BYTE **sub_2393FF6D0(_BYTE **result, int a2, int a3, int a4, char a5)
{
  v5 = *result;
  v6 = a5 & 0xC0 | (32 * (a2 != 0));
  if (a4 > 30)
  {
    *v5 = v6 | 0x1F;
    v8 = -1;
    v9 = a4;
    do
    {
      ++v5;
      ++v8;
      v10 = v9 >= 0x80;
      v9 >>= 7;
    }

    while (v10);
    v11 = 0;
    do
    {
      v5[v11] = a4 & 0x7F | ((v11 != 0) << 7);
      a4 = a4 >> 7;
      v12 = v8 + v11--;
    }

    while (v12 > 0);
    v7 = v5 + 1;
  }

  else
  {
    *v5 = v6 | a4 & 0x1F;
    v7 = v5 + 1;
  }

  if (a2 == 2)
  {
    *v7 = 0x80;
    v13 = v7 + 1;
  }

  else if (a3 >= 128)
  {
    v14 = 1;
    v15 = a3;
    do
    {
      ++v14;
      v16 = v15 > 0xFF;
      v15 >>= 8;
    }

    while (v16);
    *v7 = (v14 - 1) | 0x80;
    v17 = v14;
    do
    {
      v7[(v17 - 2) + 1] = a3;
      a3 = a3 >> 8;
      --v17;
    }

    while (v17 > 1);
    v13 = &v7[v14];
  }

  else
  {
    *v7 = a3;
    v13 = v7 + 1;
  }

  *result = v13;
  return result;
}

uint64_t sub_2393FF7CC(_WORD **a1)
{
  v1 = *a1;
  *v1 = 0;
  *a1 = v1 + 1;
  return 2;
}

uint64_t sub_2393FF7E0(int a1, int a2, int a3)
{
  if (a2 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 1;
  if (a3 >= 31)
  {
    do
    {
      ++v3;
      v4 = a3 > 0x7F;
      a3 = a3 >> 7;
    }

    while (v4);
  }

  if (a1 == 2)
  {
    v5 = v3 + 3;
  }

  else
  {
    v5 = v3 + 1;
    if (a2 >= 128)
    {
      v7 = a2;
      do
      {
        ++v5;
        v4 = v7 > 0xFF;
        v7 >>= 8;
      }

      while (v4);
    }
  }

  if (v5 >= (a2 ^ 0x7FFFFFFF))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v5 + a2);
  }
}

uint64_t sub_2393FF854(uint64_t a1, char **a2)
{
  if (!a2)
  {
    return 0;
  }

  result = sub_2393FF8AC(a1, a2[1], *a2);
  if (result)
  {
    *(a1 + 4) = *(a2 + 1);
    *(a1 + 16) = a2[2];
    return 1;
  }

  return result;
}

uint64_t sub_2393FF8AC(uint64_t a1, char *__s, size_t __n)
{
  v3 = __n;
  if ((__n & 0x8000000000000000) != 0)
  {
    if (!__s)
    {
      return 0;
    }

    v3 = strlen(__s);
  }

  if (v3 >= 0x4000001)
  {
    sub_2394170F4(12, 0, 69, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/asn1_lib.c", 287);
    return 0;
  }

  v7 = *(a1 + 8);
  if (*a1 <= v3)
  {
    if (v7)
    {
      v8 = sub_2394501A0(*(a1 + 8), v3 + 1);
      v9 = v7;
      v7 = v8;
      goto LABEL_13;
    }
  }

  else if (v7)
  {
    goto LABEL_14;
  }

  v7 = sub_23945004C(v3 + 1);
  v9 = 0;
LABEL_13:
  *(a1 + 8) = v7;
  if (!v7)
  {
    result = 0;
    *(a1 + 8) = v9;
    return result;
  }

LABEL_14:
  *a1 = v3;
  if (__s)
  {
    if (v3)
    {
      memcpy(v7, __s, v3);
      v7 = *(a1 + 8);
    }

    *(v7 + v3) = 0;
  }

  return 1;
}

void *sub_2393FF9A4(int *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_23945004C(0x18uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = 0x400000000;
    v2[1] = 0;
    v2[2] = 0;
    if (sub_2393FF8AC(v2, *(a1 + 1), *a1))
    {
      *(v3 + 1) = a1[1];
      v3[2] = *(a1 + 2);
      return v3;
    }

    sub_239450144(v3[1]);
    sub_239450144(v3);
    return 0;
  }

  return v3;
}

double sub_2393FFA28()
{
  v0 = sub_23945004C(0x18uLL);
  if (v0)
  {
    *&result = 0x400000000;
    *v0 = 0x400000000;
    v0[1] = 0;
    v0[2] = 0;
  }

  return result;
}

void sub_2393FFA58(uint64_t a1)
{
  if (a1)
  {
    sub_239450144(*(a1 + 8));

    sub_239450144(a1);
  }
}

void sub_2393FFA9C(uint64_t a1, uint64_t a2, int a3)
{
  sub_239450144(*(a1 + 8));
  *(a1 + 8) = a2;
  *a1 = a3;
}

void *sub_2393FFADC(int a1)
{
  result = sub_23945004C(0x18uLL);
  if (result)
  {
    *result = 0;
    *(result + 1) = a1;
    result[1] = 0;
    result[2] = 0;
  }

  return result;
}

uint64_t sub_2393FFB10(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v12 = 0;
  v5 = *a1;
  if (*(a1 + 4) == 3)
  {
    v5 = sub_2393FBFB8(a1, &v12 + 1);
  }

  if (*(a2 + 4) == 3)
  {
    v4 = sub_2393FBFB8(a2, &v12);
  }

  if (v5 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 > v4)
  {
    return 1;
  }

  if (HIBYTE(v12) > v12)
  {
    return 0xFFFFFFFFLL;
  }

  if (HIBYTE(v12) < v12)
  {
    return 1;
  }

  if (!v5 || (result = memcmp(*(a1 + 8), *(a2 + 8), v5), !result))
  {
    v7 = *(a1 + 4);
    v8 = *(a2 + 4);
    v10 = __OFSUB__(v7, v8);
    v9 = v7 - v8 < 0;
    v11 = v7 > v8;
    if (v9 != v10)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v11;
    }
  }

  return result;
}

const char *sub_2393FFBFC(unsigned int a1)
{
  if ((a1 & 0xFFFFFFF7) == 0x102)
  {
    v1 = a1 & 0xA;
  }

  else
  {
    v1 = a1;
  }

  if (v1 <= 0x1E)
  {
    return off_278A76DD8[v1];
  }

  else
  {
    return "(unknown)";
  }
}

uint64_t sub_2393FFC34(uint64_t a1, unsigned __int8 *a2, uint64_t *a3)
{
  v9 = 0;
  v4 = sub_2394018FC(a1, &v9, a2);
  if (v4 <= 0)
  {
    sub_2394170F4(12, 0, 112, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/asn_pack.c", 67);
    return 0;
  }

  v5 = v4;
  if (a3)
  {
    v6 = *a3;
    if (*a3)
    {
      sub_2393FFA9C(*a3, v9, v4);
LABEL_7:
      *a3 = v6;
      return v6;
    }
  }

  sub_2393FFA28();
  v6 = v7;
  if (!v7)
  {
    sub_239450144(v9);
    return v6;
  }

  sub_2393FFA9C(v7, v9, v5);
  if (a3)
  {
    goto LABEL_7;
  }

  return v6;
}

uint64_t sub_2393FFCF8(int *a1, unsigned __int8 *a2)
{
  v6 = *(a1 + 1);
  v4 = sub_2394004F8(0, &v6, *a1, a2);
  if (!v4 || v6 != *(a1 + 1) + *a1)
  {
    sub_2394170F4(12, 0, 109, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/asn_pack.c", 93);
    sub_2394026C0(v4, a2);
    return 0;
  }

  return v4;
}

uint64_t sub_2393FFD98(uint64_t a1, int *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*(a2 + 5))
  {
    v4 = 1;
    if (sub_239403738(a1, "-", 1) != 1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    if (*a2 >= 1)
    {
      v5 = 0;
      while (1)
      {
        if (v5 && 35 * (v5 / 0x23) == v5)
        {
          if (sub_239403738(a1, "\\\n", 2) != 2)
          {
            return 0xFFFFFFFFLL;
          }

          LODWORD(v4) = v4 + 2;
        }

        v6 = *(a2 + 1);
        v8[0] = a0123456789abcd_1[*(v6 + v5) >> 4];
        v8[1] = a0123456789abcd_1[*(v6 + v5) & 0xF];
        if (sub_239403738(a1, v8, 2) != 2)
        {
          break;
        }

        v4 = (v4 + 2);
        if (++v5 >= *a2)
        {
          return v4;
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  else if (sub_239403738(a1, "00", 2) == 2)
  {
    return v4 | 2;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }

  return v4;
}

uint64_t sub_2393FFF08(int *a1, void *a2)
{
  result = 0;
  v4 = a1[5];
  if ((v4 + 1900) >> 4 > 0x270)
  {
    return result;
  }

  v5 = a1[4];
  if ((v5 & 0x80000000) != 0)
  {
    return result;
  }

  v6 = a1[3];
  v7 = v6 - 1;
  if (v6 < 1)
  {
    return result;
  }

  if (v5 > 0xB)
  {
    return 0;
  }

  v9 = a1[1];
  v8 = a1[2];
  v10 = *a1;
  if (((1 << v5) & 0xAD5) == 0)
  {
    if (((1 << v5) & 0x528) != 0)
    {
      if (v6 < 0x1F)
      {
        goto LABEL_7;
      }
    }

    else
    {
      HIDWORD(v19) = -1030792151 * (v4 + 1900);
      LODWORD(v19) = HIDWORD(v19);
      v18 = v19 >> 2;
      v21 = (v4 & 3) == 0 && v18 > 0x28F5C28;
      HIDWORD(v22) = -1030792151 * (v4 + 1900);
      LODWORD(v22) = HIDWORD(v22);
      if ((v22 >> 4) >= 0xA3D70B && !v21)
      {
        if (v6 < 0x1D)
        {
          goto LABEL_7;
        }
      }

      else if (v6 < 0x1E)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

  if (v6 > 0x1F)
  {
    return 0;
  }

LABEL_7:
  result = 0;
  if (v10 <= 59 && v9 <= 59 && v8 <= 23 && ((v9 | v8 | v10) & 0x8000000000000000) == 0)
  {
    v11 = v5 + 1;
    v12 = (__PAIR128__(v4 + 1900, v11) - 3) >> 64;
    v13 = v12 - 399;
    if (v12 >= 0)
    {
      v13 = (__PAIR128__(v4 + 1900, v11) - 3) >> 64;
    }

    v14 = ((5243 * v13) >> 21) + ((5243 * v13) >> 31);
    v15 = v12 - 400 * v14;
    if (v11 <= 2)
    {
      v16 = 9;
    }

    else
    {
      v16 = -3;
    }

    v17 = 26215 * (153 * (v16 + v11) + 2);
    *a2 = 60 * v9 + 3600 * v8 + v10 + 86400 * (v7 + ((v17 >> 17) + (v17 >> 31)) + 146097 * v14 + 365 * v15 + (((v15 + ((v15 >> 29) & 3)) << 16) >> 18) + (((-5243 * v15) >> 19) + ((-5243 * v15) >> 31))) - 0xE79256200;
    return 1;
  }

  return result;
}

uint64_t sub_2394000EC(uint64_t a1, uint64_t a2)
{
  if ((a1 - 0x3AFFF44180) < 0xFFFFFFB686974280)
  {
    return 0;
  }

  v3 = a1 % 86400 + 86400;
  if (a1 % 86400 >= 0)
  {
    v3 = a1 % 86400;
  }

  v4 = a1 / 86400 + ((a1 % 86400) >> 63);
  v5 = v4 + 719468;
  if (v4 <= -719468)
  {
    v6 = v4 + 573372;
  }

  else
  {
    v6 = v4 + 719468;
  }

  v7 = v6 / 146097;
  v8 = v5 - 146097 * v7;
  v9 = ((((1282606671 * v8) >> 32) - v8) >> 10) + ((((1282606671 * v8) >> 32) - v8) >> 31) + v8 + v8 / 36524 + ((((441679365 * v8) >> 32) - v8) >> 17) + ((((441679365 * v8) >> 32) - v8) >> 31);
  v10 = v9 / 365;
  v11 = v8 + (((((1282606671 * v9) >> 32) - v9) >> 10) + ((((1282606671 * v9) >> 32) - v9) >> 31)) + v9 / 36500 - 365 * (v9 / 365);
  v12 = (5 * v11 + 2) / 153;
  if (v11 >= 306)
  {
    v13 = -9;
  }

  else
  {
    v13 = 3;
  }

  v14 = v12 + v13;
  v15 = v3 / 0xE10;
  v16 = v3 % 0xE10;
  v17 = v11 + (153 * v12 + 2) / -5 + 1;
  *a2 = v16 % 0x3Cu;
  *(a2 + 4) = v16 / 0x3Cu;
  v18 = v10 + 400 * v7;
  if (v14 < 3)
  {
    ++v18;
  }

  *(a2 + 8) = v15;
  *(a2 + 12) = v17;
  *(a2 + 16) = v14 - 1;
  *(a2 + 20) = v18 - 1900;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  return 1;
}

uint64_t sub_23940031C(int *a1, void *a2)
{
  v4 = 0;
  result = sub_2393FFF08(a1, &v4);
  if (result)
  {
    *a2 = v4;
    return 1;
  }

  return result;
}

uint64_t sub_239400360(uint64_t *a1, uint64_t a2)
{
  if (sub_2394000EC(*a1, a2))
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239400390(int *a1, int a2, uint64_t a3)
{
  v9 = 0;
  if (!sub_2393FFF08(a1, &v9))
  {
    return 0;
  }

  v6 = v9 + 86400 * a2;
  v7 = v6 >= 1 && (v6 ^ 0x7FFFFFFFFFFFFFFFLL) < a3;
  if (v7 || v6 < 0 && (0x8000000000000000 - v6) > a3)
  {
    return 0;
  }

  return sub_2394000EC(v6 + a3, a1);
}

uint64_t sub_23940043C(_DWORD *a1, _DWORD *a2, int *a3, int *a4)
{
  v10 = 0;
  result = sub_2393FFF08(a4, &v10);
  if (result)
  {
    v9 = 0;
    result = sub_2393FFF08(a3, &v9);
    if (result)
    {
      v8 = (v10 - v9) / 86400;
      *a2 = (v10 - v9) % 86400;
      *a1 = v8;
      return 1;
    }
  }

  return result;
}

uint64_t sub_2394004D8(unsigned int a1)
{
  if (a1 <= 0x1E)
  {
    return qword_2395C2E68[a1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2394004F8(uint64_t *a1, uint64_t *a2, uint64_t a3, unsigned __int8 *a4)
{
  v7 = 0;
  if (sub_23940057C(&v7, a2, a3, a4, -1, 0, 0, 0, 0) <= 0)
  {
    sub_2394026E8(&v7, a4);
    if (a1)
    {
      goto LABEL_3;
    }
  }

  else if (a1)
  {
LABEL_3:
    sub_2394026E8(a1, a4);
    result = v7;
    *a1 = v7;
    return result;
  }

  return v7;
}

uint64_t sub_23940057C(uint64_t result, uint64_t *a2, uint64_t a3, unsigned __int8 *a4, int a5, int a6, int a7, uint64_t a8, int a9)
{
  v67 = 0;
  v68 = a3;
  if (!result)
  {
    return result;
  }

  v12 = a3;
  v14 = result;
  if (a3 >= 0x40000000)
  {
    v12 = 0x3FFFFFFFLL;
    v68 = 0x3FFFFFFFLL;
  }

  v66 = 0;
  v65 = 0;
  if (a9 >= 30)
  {
    v15 = 192;
    v16 = 222;
LABEL_6:
    sub_2394170F4(12, 0, v15, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/tasn_dec.c", v16);
LABEL_7:
    sub_2394026E8(v14, a4);
    goto LABEL_8;
  }

  result = 0;
  v24 = *a4;
  if (v24 <= 1)
  {
    if (!*a4)
    {
      v27 = *(a4 + 1);
      if (v27)
      {
        if (a5 != -1 || a7)
        {
          v15 = 136;
          v16 = 234;
          goto LABEL_6;
        }

        return sub_239400E30(v14, a2, v12, v27, 0, a8, a9 + 1);
      }

      else
      {

        return sub_239400FD8(v14, a2, v12, a4, a5, a6, a7);
      }
    }

    if (v24 != 1)
    {
      return result;
    }

    v67 = *a2;
    v25 = a5 == -1 ? 0 : a6;
    v26 = a5 == -1 ? 16 : a5;
    result = sub_239401570(&v68, 0, 0, &v66, &v67, v12, v26, v25, a7);
    if (result == -1)
    {
      return result;
    }

    if (!result)
    {
      v15 = 158;
      v16 = 367;
      goto LABEL_6;
    }

    if (!v66)
    {
      v15 = 169;
      v16 = 373;
      goto LABEL_6;
    }

    if (!*v14 && !sub_239402AF8(v14, a4))
    {
      v15 = 158;
      v16 = 378;
      goto LABEL_6;
    }

    v32 = *(a4 + 3);
    if (v32 && (v33 = *(v32 + 16)) != 0)
    {
      v64 = v33;
      if (!v33(4, v14, a4, 0))
      {
        goto LABEL_129;
      }

      v63 = 0;
    }

    else
    {
      v64 = 0;
      v63 = 1;
    }

    v43 = *(a4 + 1);
    v42 = *(a4 + 2);
    if (v42 >= 1)
    {
      for (i = 0; i < v42; ++i)
      {
        if ((*(v43 + 1) & 3) != 0)
        {
          v45 = sub_239403404(v14, v43, 0);
          if (v45)
          {
            v46 = v45;
            v47 = sub_2394033F4(v14, v45);
            sub_239402970(v47, v46);
          }
        }

        v43 += 32;
        v42 = *(a4 + 2);
      }

      v43 = *(a4 + 1);
      if (v42 >= 1)
      {
        v48 = 0;
        while (1)
        {
          v49 = sub_239403404(v14, v43, 1);
          if (!v49)
          {
            goto LABEL_7;
          }

          v39 = v49;
          v50 = sub_2394033F4(v14, v49);
          if (!v68)
          {
            v42 = *(a4 + 2);
            goto LABEL_120;
          }

          v51 = v50;
          if (v48 == *(a4 + 2) - 1)
          {
            v52 = 0;
          }

          else
          {
            v52 = *v39 & 1;
          }

          v53 = v67;
          v54 = sub_239400E30(v50, &v67, v68, v39, v52, a8, a9 + 1);
          if (v54 == -1)
          {
            sub_239402970(v51, v39);
          }

          else
          {
            if (!v54)
            {
LABEL_132:
              sub_2394026E8(v14, a4);
              goto LABEL_133;
            }

            v68 += v53 - v67;
          }

          ++v48;
          v43 += 32;
          v42 = *(a4 + 2);
          if (v42 <= v48)
          {
            goto LABEL_96;
          }
        }
      }
    }

    LODWORD(v48) = 0;
LABEL_96:
    if (v68)
    {
      v15 = 168;
      v16 = 442;
      goto LABEL_6;
    }

LABEL_120:
    if (v42 > v48)
    {
      v57 = v48;
      do
      {
        v58 = sub_239403404(v14, v43, 1);
        if (!v58)
        {
          goto LABEL_7;
        }

        v39 = v58;
        if ((*v58 & 1) == 0)
        {
          sub_2394170F4(12, 0, 121, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/tasn_dec.c", 461);
          goto LABEL_132;
        }

        v59 = sub_2394033F4(v14, v58);
        sub_239402970(v59, v39);
        v43 += 32;
      }

      while (*(a4 + 2) > ++v57);
    }

    if (!sub_2394032BC(v14, *a2, v67 - *a2, a4, a8) || (v63 & 1) == 0 && !v64(5, v14, a4, 0))
    {
LABEL_129:
      v15 = 101;
      v16 = 480;
      goto LABEL_6;
    }

LABEL_128:
    *a2 = v67;
    return 1;
  }

  switch(v24)
  {
    case 2u:
      if (a5 != -1)
      {
        v15 = 193;
        v16 = 293;
        goto LABEL_6;
      }

      v28 = *(a4 + 3);
      if (v28)
      {
        v29 = *(v28 + 16);
        if (v29)
        {
          if (!v29(4, v14, a4, 0))
          {
            goto LABEL_129;
          }

          v30 = 0;
LABEL_62:
          if (*v14)
          {
            v34 = sub_239403190(v14, a4);
            if ((v34 & 0x80000000) == 0 && *(a4 + 2) > v34)
            {
              v35 = *(a4 + 1) + 32 * v34;
              v36 = sub_2394033F4(v14, v35);
              sub_239402970(v36, v35);
              sub_2394031A0(v14, -1, a4);
            }
          }

          else if (!sub_239402AF8(v14, a4))
          {
            v15 = 158;
            v16 = 313;
            goto LABEL_6;
          }

          v67 = *a2;
          v37 = *(a4 + 2);
          if (v37 >= 1)
          {
            v38 = 0;
            v39 = *(a4 + 1);
            while (1)
            {
              v40 = sub_2394033F4(v14, v39);
              v41 = sub_239400E30(v40, &v67, v68, v39, 1, a8, a9 + 1);
              if (v41 != -1)
              {
                break;
              }

              ++v38;
              v39 += 32;
              v37 = *(a4 + 2);
              if (v37 <= v38)
              {
                goto LABEL_102;
              }
            }

            if (v41 >= 1)
            {
              v37 = *(a4 + 2);
LABEL_102:
              v55 = v38;
              goto LABEL_103;
            }

            sub_2394170F4(12, 0, 158, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/tasn_dec.c", 332);
            sub_2394026E8(v14, a4);
            if (v39)
            {
LABEL_133:
              v62 = *(a4 + 5);
              v61 = *(v39 + 16);
              sub_2394171A0(4u, v17, v18, v19, v20, v21, v22, v23, "Field=");
              return 0;
            }

LABEL_8:
            v60 = *(a4 + 5);
            sub_2394171A0(2u, v17, v18, v19, v20, v21, v22, v23, "Type=");
            return 0;
          }

          v55 = 0;
          v38 = 0;
LABEL_103:
          if (v37 == v38)
          {
            if (!a7)
            {
              v15 = 163;
              v16 = 344;
              goto LABEL_6;
            }

            sub_2394026E8(v14, a4);
            return 0xFFFFFFFFLL;
          }

          sub_2394031A0(v14, v55, a4);
          if ((v30 & 1) == 0 && !v29(5, v14, a4, 0))
          {
            goto LABEL_129;
          }

          goto LABEL_128;
        }
      }

      else
      {
        v29 = 0;
      }

      v30 = 1;
      goto LABEL_62;
    case 4u:
      if (a5 != -1)
      {
        v15 = 193;
        v16 = 282;
        goto LABEL_6;
      }

      v31 = *(*(a4 + 3) + 16);

      return v31(v14, a2, v12);
    case 5u:
      if (a5 != -1)
      {
        v15 = 193;
        v16 = 247;
        goto LABEL_6;
      }

      v67 = *a2;
      if (!sub_239401570(0, &v65, &v66 + 1, 0, &v67, v12, -1, 0, 1))
      {
        v15 = 158;
        v16 = 255;
        goto LABEL_6;
      }

      if (HIBYTE(v66))
      {
        if (!a7)
        {
          v15 = 156;
          v16 = 265;
          goto LABEL_6;
        }
      }

      else
      {
        if (v65 <= 0x1E)
        {
          v56 = qword_2395C2E68[v65];
        }

        else
        {
          v56 = 0;
        }

        if ((v56 & *(a4 + 1)) != 0)
        {
          return sub_239400FD8(v14, a2, v68, a4, v65, 0, 0);
        }

        if (!a7)
        {
          v15 = 157;
          v16 = 274;
          goto LABEL_6;
        }
      }

      return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_239400E30(uint64_t result, uint64_t *a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, int a7)
{
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *a4;
  v17 = *a2;
  if ((v12 & 0x10) != 0)
  {
    v18 = 0;
    v16 = 0;
    result = sub_239401570(&v18, 0, 0, &v16, &v17, a3, a4[1], v12 & 0xC0, a5);
    if (result == -1)
    {
      return result;
    }

    if (result)
    {
      if (v16)
      {
        v15 = v17;
        if (sub_239401690(v11, &v17, v18, a4, 0, a6, a7))
        {
          v18 += v15 - v17;
          if (!v18)
          {
            *a2 = v17;
            return 1;
          }

          sub_2394170F4(12, 0, 119, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/tasn_dec.c", 544);
          sub_239402970(v11, a4);
          return 0;
        }

        v13 = 158;
        v14 = 537;
      }

      else
      {
        v13 = 120;
        v14 = 531;
      }
    }

    else
    {
      v13 = 158;
      v14 = 525;
    }

    sub_2394170F4(12, 0, v13, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/tasn_dec.c", v14);
    return 0;
  }

  return sub_239401690(result, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_239400FD8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  v7 = a7;
  v9 = a5;
  v34 = 0;
  v33 = 0;
  if (*a4 == 5)
  {
    v35 = a5;
    if (a5 != -4)
    {
      v14 = a5;
      v9 = -1;
      goto LABEL_16;
    }

    LOBYTE(v37) = 0;
    v9 = -1;
  }

  else
  {
    v14 = *(a4 + 4);
    v35 = v14;
    if (v14 != -4)
    {
      goto LABEL_16;
    }

    LOBYTE(v37) = 0;
    if ((a5 & 0x80000000) == 0)
    {
      v15 = 137;
      v16 = 684;
LABEL_41:
      sub_2394170F4(12, 0, v15, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/tasn_dec.c", v16);
      return 0;
    }
  }

  if (a7)
  {
    v15 = 135;
    v16 = 688;
    goto LABEL_41;
  }

  v32 = *a2;
  if (!sub_239401570(0, &v35, &v37, 0, &v32, a3, -1, 0, 0))
  {
    v15 = 158;
    v16 = 694;
    goto LABEL_41;
  }

  if (v37 || (v17 = v35 - 1, (v35 - 1) >= 0x1E) || ((0x2FFF8A3Fu >> v17) & 1) == 0)
  {
    v14 = -3;
    v35 = -3;
  }

  else
  {
    v14 = dword_2395C2F60[v17];
  }

LABEL_16:
  if (v9 == -1)
  {
    v18 = v14;
  }

  else
  {
    v18 = v9;
  }

  if (v9 == -1)
  {
    v19 = 0;
  }

  else
  {
    v19 = a6;
  }

  v32 = *a2;
  result = sub_239401570(&v34, 0, 0, &v33, &v32, a3, v18, v19, v7);
  if (result != -1)
  {
    if (!result)
    {
      v15 = 158;
      v16 = 709;
      goto LABEL_41;
    }

    v21 = v35;
    if ((v35 + 3) <= 0x14 && ((1 << (v35 + 3)) & 0x180001) != 0)
    {
      if (v35 != -3 && !v33)
      {
        v15 = 178;
        v16 = 720;
        goto LABEL_41;
      }

      v22 = *a2;
      v23 = &v32[v34 - *a2];
      v24 = &v32[v34];
    }

    else
    {
      if (v33)
      {
        v15 = 179;
        v16 = 731;
        goto LABEL_41;
      }

      v22 = v32;
      v23 = v34;
      v24 = &v32[v34];
    }

    v32 = v24;
    __s = v22;
    if (*(a4 + 4) == -4)
    {
      v25 = *a1;
      if (!*a1)
      {
        v26 = sub_2394030B8();
        if (!v26)
        {
          sub_2394030C4(0);
          return 0;
        }

        v25 = v26;
        *a1 = v26;
      }

      if (*v25 != v21)
      {
        sub_2393FF118(v25, v21, 0);
      }

      v27 = (v25 + 8);
    }

    else
    {
      v25 = 0;
      v27 = a1;
      a1 = 0;
    }

    if (v21 > 4)
    {
      if (v21 == 5)
      {
        if (v23)
        {
          v28 = 164;
          v29 = 791;
          goto LABEL_73;
        }

        *v27 = 1;
LABEL_94:
        if (v21 == 5 && v25)
        {
          *(v25 + 8) = 0;
        }

        goto LABEL_97;
      }

      if (v21 != 10)
      {
        if (v21 == 6)
        {
          if (!sub_2393FDBA4(v27, &__s, v23))
          {
LABEL_74:
            sub_2394030C4(v25);
            if (a1)
            {
              *a1 = 0;
            }

            return 0;
          }

LABEL_97:
          *a2 = v32;
          return 1;
        }

        goto LABEL_63;
      }
    }

    else
    {
      if (v21 == 1)
      {
        if (v23 == 1)
        {
          *v27 = *v22;
          goto LABEL_97;
        }

        v28 = 106;
        v29 = 799;
        goto LABEL_73;
      }

      if (v21 != 2)
      {
        if (v21 == 3)
        {
          if (!sub_2393FC15C(v27, &__s, v23))
          {
            goto LABEL_74;
          }

          goto LABEL_97;
        }

LABEL_63:
        *&v37 = v22;
        *(&v37 + 1) = v23;
        if (v21 > 23)
        {
          if (v21 != 24)
          {
            if (v21 == 28)
            {
              if (v23)
              {
                while (1)
                {
                  v36 = 0;
                  if (!sub_239408F3C(&v37, &v36))
                  {
                    break;
                  }

                  if (!*(&v37 + 1))
                  {
                    goto LABEL_89;
                  }
                }

                v28 = 149;
                v29 = 863;
                goto LABEL_73;
              }
            }

            else if (v21 == 30 && v23)
            {
              while (1)
              {
                v36 = 0;
                if (!sub_239408EC8(&v37, &v36))
                {
                  break;
                }

                if (!*(&v37 + 1))
                {
                  goto LABEL_89;
                }
              }

              v28 = 142;
              v29 = 854;
              goto LABEL_73;
            }

            goto LABEL_89;
          }

          if (!sub_2394089B4(&v37, 0, 0))
          {
            v28 = 148;
            v29 = 886;
            goto LABEL_73;
          }

LABEL_89:
          v30 = *v27;
          if (*v27)
          {
            *(v30 + 1) = v21;
          }

          else
          {
            v31 = sub_2393FFADC(v21);
            if (!v31)
            {
              goto LABEL_74;
            }

            v30 = v31;
            *v27 = v31;
          }

          if (!sub_2393FF8AC(v30, __s, v23))
          {
            sub_2393FFA58(v30);
            *v27 = 0;
            goto LABEL_74;
          }

          goto LABEL_94;
        }

        if (v21 == 12 && v23)
        {
          while (1)
          {
            v36 = 0;
            if (!sub_239408D54(&v37, &v36))
            {
              break;
            }

            if (!*(&v37 + 1))
            {
              goto LABEL_80;
            }
          }

          v28 = 150;
          v29 = 872;
          goto LABEL_73;
        }

LABEL_80:
        if (v21 != 23 || sub_239408CA4(&v37, 0, 1))
        {
          goto LABEL_89;
        }

        v28 = 148;
        v29 = 879;
LABEL_73:
        sub_2394170F4(12, 0, v28, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/tasn_dec.c", v29);
        goto LABEL_74;
      }
    }

    if (!sub_2393FCBBC(v27, &__s, v23))
    {
      goto LABEL_74;
    }

    *(*v27 + 1) = *(*v27 + 1) & 0x100 | v21;
    goto LABEL_94;
  }

  return result;
}

uint64_t sub_239401570(void *a1, _DWORD *a2, _BYTE *a3, _BYTE *a4, uint64_t *a5, uint64_t a6, int a7, int a8, char a9)
{
  v22 = 0;
  v23 = 0;
  v21 = *a5;
  v16 = sub_2393FF5D0(&v21, &v22, &v23 + 1, &v23, a6);
  if (v16 < 0)
  {
    v19 = 103;
    v20 = 941;
LABEL_10:
    sub_2394170F4(12, 0, v19, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/tasn_dec.c", v20);
    return 0;
  }

  if ((a7 & 0x80000000) == 0 && (HIDWORD(v23) != a7 || v23 != a8))
  {
    if (a9)
    {
      return 0xFFFFFFFFLL;
    }

    v19 = 190;
    v20 = 950;
    goto LABEL_10;
  }

  if (a4)
  {
    *a4 = v16 & 0x20;
  }

  if (a1)
  {
    *a1 = v22;
  }

  if (a3)
  {
    *a3 = v23;
  }

  if (a2)
  {
    *a2 = HIDWORD(v23);
  }

  *a5 = v21;
  return 1;
}

uint64_t sub_239401690(unint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v12 = *a4;
  v13 = *a4 & 0xC0;
  v23 = *a2;
  v24 = a3;
  if ((v12 & 6) == 0)
  {
    v15 = *(a4 + 24);
    if ((v12 & 8) != 0)
    {
      result = sub_23940057C(a1, &v23, a3, v15, *(a4 + 4), v12 & 0xC0, a5, a6, a7);
      if (result == -1)
      {
        return result;
      }

      if (result)
      {
        goto LABEL_28;
      }

      v17 = 634;
    }

    else
    {
      result = sub_23940057C(a1, &v23, a3, v15, 0xFFFFFFFFLL, 0, a5, a6, a7);
      if (result == -1)
      {
        return result;
      }

      if (result)
      {
        goto LABEL_28;
      }

      v17 = 644;
    }

LABEL_30:
    sub_2394170F4(12, 0, 158, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/tasn_dec.c", v17);
    goto LABEL_31;
  }

  if ((v12 & 8) != 0)
  {
    v14 = *(a4 + 4);
  }

  else
  {
    v13 = 0;
    if ((v12 & 2) != 0)
    {
      v14 = 17;
    }

    else
    {
      v14 = 16;
    }
  }

  result = sub_239401570(&v24, 0, 0, 0, &v23, a3, v14, v13, a5);
  if (result != -1)
  {
    if (!result)
    {
      sub_2394170F4(12, 0, 158, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/tasn_dec.c", 592);
      return 0;
    }

    v18 = *a1;
    if (*a1)
    {
      v22 = 0;
      while (sub_239431484(v18))
      {
        v22 = sub_2394579D8(v18);
        sub_2394026E8(&v22, *(a4 + 24));
      }

      if (!*a1)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }

    v19 = sub_2394574D8();
    *a1 = v19;
    if (v19)
    {
LABEL_24:
      v20 = v24;
      if (v24 >= 1)
      {
        while (1)
        {
          v21 = v23;
          v22 = 0;
          if (!sub_23940057C(&v22, &v23, v20, *(a4 + 24), 0xFFFFFFFFLL, 0, 0, a6, a7))
          {
            v17 = 620;
            goto LABEL_30;
          }

          v24 += v21 - v23;
          if (!sub_2394579D0(*a1, v22))
          {
            break;
          }

          v20 = v24;
          if (v24 <= 0)
          {
            goto LABEL_28;
          }
        }

        sub_2394026E8(&v22, *(a4 + 24));
        goto LABEL_31;
      }

LABEL_28:
      *a2 = v23;
      return 1;
    }

LABEL_31:
    sub_239402970(a1, a4);
    return 0;
  }

  return result;
}

uint64_t sub_2394018FC(uint64_t a1, void **a2, unsigned __int8 *a3)
{
  v13 = a1;
  if (!a2 || *a2)
  {
    return sub_2394019F0(&v13, a2, a3, 0xFFFFFFFFLL, 0, 0);
  }

  v7 = sub_2394019F0(&v13, 0, a3, 0xFFFFFFFFLL, 0, 0);
  v5 = v7;
  if (v7 >= 1)
  {
    v8 = sub_23945004C(v7);
    if (v8)
    {
      v9 = v8;
      v12 = v8;
      v10 = sub_2394019F0(&v13, &v12, a3, 0xFFFFFFFFLL, 0, 0);
      if (v10 <= 0)
      {
        v11 = v10;
        sub_239450144(v9);
        return v11;
      }

      else
      {
        *a2 = v9;
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

uint64_t sub_2394019F0(void *a1, void **a2, unsigned __int8 *a3, uint64_t a4, char a5, int a6)
{
  v6 = a5;
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v34 = 0;
  v11 = *a3;
  if (*a3)
  {
    if (!*a1)
    {
      if (!a6)
      {
        v12 = 155;
        v13 = 141;
        goto LABEL_39;
      }

      return 0;
    }

    if (*a3 <= 3u)
    {
      if (v11 != 1)
      {
        if (v11 == 2)
        {
          if (a4 != -1)
          {
            v12 = 193;
            v13 = 171;
LABEL_39:
            sub_2394170F4(12, 0, v12, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/tasn_enc.c", v13);
            return 0xFFFFFFFFLL;
          }

          v18 = sub_239403190(a1, a3);
          if ((v18 & 0x80000000) != 0 || *(v8 + 2) <= v18)
          {
            v12 = 163;
            v13 = 176;
            goto LABEL_39;
          }

          v19 = (*(v8 + 1) + 32 * v18);
          if (*v19)
          {
            v12 = 193;
            v13 = 181;
            goto LABEL_39;
          }

          a1 = sub_2394033F4(v10, v19);
          a2 = v9;
          v14 = v19;
          a4 = 0xFFFFFFFFLL;
          a5 = 0;
          a6 = 0;
          goto LABEL_10;
        }

LABEL_25:
        v12 = 193;
        v13 = 264;
        goto LABEL_39;
      }

      v17 = sub_239403358(&v34, a2, a1, a3);
      if (v17 < 0)
      {
        return 0xFFFFFFFFLL;
      }

      if (!v17)
      {
        v34 = 0;
        if (v7 == -1)
        {
          v6 = 0;
          v20 = 16;
        }

        else
        {
          v20 = v7;
        }

        if (*(v8 + 2) < 1)
        {
          v27 = 0;
LABEL_53:
          v28 = sub_2393FF7E0(1, v27, v20);
          v16 = v28;
          if (!v9)
          {
            return v16;
          }

          if (v28 == -1)
          {
            return v16;
          }

          sub_2393FF6D0(v9, 1, v34, v20, v6);
          if (*(v8 + 2) < 1)
          {
            return v16;
          }

          v29 = 0;
          for (i = *(v8 + 1); ; i += 32)
          {
            v31 = sub_239403404(v10, i, 1);
            if (!v31)
            {
              break;
            }

            v32 = v31;
            v33 = sub_2394033F4(v10, v31);
            if ((sub_239401E34(v33, v9, v32, 0xFFFFFFFFLL, 0, 0) & 0x80000000) != 0)
            {
              break;
            }

            if (*(v8 + 2) <= ++v29)
            {
              return v16;
            }
          }
        }

        else
        {
          v21 = 0;
          v22 = *(v8 + 1);
          while (1)
          {
            v23 = sub_239403404(v10, v22, 1);
            if (!v23)
            {
              break;
            }

            v24 = v23;
            v25 = sub_2394033F4(v10, v23);
            v16 = 0xFFFFFFFFLL;
            v26 = sub_239401E34(v25, 0, v24, 0xFFFFFFFFLL, 0, 0);
            if (v26 == -1 || v26 > (v34 ^ 0x7FFFFFFF))
            {
              return v16;
            }

            v27 = v34 + v26;
            v34 += v26;
            v22 += 32;
            if (*(v8 + 2) <= ++v21)
            {
              goto LABEL_53;
            }
          }
        }

        return 0xFFFFFFFFLL;
      }

      return v34;
    }

    if (v11 == 4)
    {
      if (a4 != -1)
      {
        v12 = 193;
        v13 = 191;
        goto LABEL_39;
      }

      v16 = (*(*(a3 + 3) + 24))(a1, a2, a3);
      if (!v16)
      {
        v12 = 68;
        v13 = 200;
        goto LABEL_39;
      }

      return v16;
    }

    if (v11 != 5)
    {
      goto LABEL_25;
    }

    if (a4 != -1)
    {
      v12 = 193;
      v13 = 162;
      goto LABEL_39;
    }

    LODWORD(a4) = -1;
    a5 = 0;
  }

  else
  {
    v14 = *(a3 + 1);
    if (v14)
    {
      if (*v14)
      {
        v12 = 193;
        v13 = 150;
        goto LABEL_39;
      }

LABEL_10:

      return sub_239401E34(a1, a2, v14, a4, a5, a6);
    }

    a3 = v8;
  }

  return sub_2394022D8(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_239401E34(unint64_t **a1, void **a2, int *a3, uint64_t a4, unsigned __int8 a5, int a6)
{
  v6 = a4;
  v10 = *a3;
  if ((*a3 & 0x18) != 0)
  {
    if (a4 != -1)
    {
      v11 = 193;
      v12 = 291;
LABEL_4:
      sub_2394170F4(12, 0, v11, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/tasn_enc.c", v12);
      return 0xFFFFFFFFLL;
    }

    v6 = a3[1];
    v15 = v10 & 0xC0;
  }

  else if (a4 == -1)
  {
    v15 = 0;
  }

  else
  {
    v15 = a5 & 0xC0;
  }

  v16 = *a3 & 1 | a6;
  v17 = v16 != 0;
  if ((v10 & 6) != 0)
  {
    v18 = *a1;
    v50 = 0;
    if (v18)
    {
      v19 = v6 != -1;
      v20 = (v10 & 0x10) == 0;
      if ((v10 & 2) != 0)
      {
        v21 = 17;
      }

      else
      {
        v21 = 16;
      }

      if (v20 && v19)
      {
        v22 = v6;
      }

      else
      {
        v22 = v21;
      }

      if (v20 && v19)
      {
        v23 = v15;
      }

      else
      {
        v23 = 0;
      }

      v49 = v23;
      v24 = 0;
      if (sub_239431484(v18))
      {
        v25 = 0;
        do
        {
          v50 = sub_239457528(v18, v25);
          v13 = 0xFFFFFFFFLL;
          v26 = sub_2394019F0(&v50, 0, *(a3 + 3), 0xFFFFFFFFLL, 0, 0);
          if (v26 == -1 || v24 > (v26 ^ 0x7FFFFFFF))
          {
            return v13;
          }

          v24 += v26;
        }

        while (++v25 < sub_239431484(v18));
      }

      v13 = sub_2393FF7E0(1, v24, v22);
      if (v13 != -1)
      {
        if ((v10 & 0x10) != 0)
        {
          v32 = sub_2393FF7E0(1, v13, v6);
          v33 = v32;
          if (!a2 || v32 == -1)
          {
            return v32;
          }

          sub_2393FF6D0(a2, 1, v13, v6, v15);
          v13 = v33;
        }

        else if (!a2)
        {
          return v13;
        }

        sub_2393FF6D0(a2, 1, v24, v22, v49);
        v34 = *(a3 + 3);
        if ((v10 & 2) != 0 && sub_239431484(v18) > 1)
        {
          v38 = sub_23945004C(v24);
          v39 = sub_239431484(v18);
          v40 = sub_2394500F0(v39, 0x10uLL);
          v37 = 0;
          if (v40 && v38)
          {
            __dst = v38;
            if (sub_239431484(v18))
            {
              v41 = 0;
              v42 = v40 + 1;
              while (1)
              {
                v52 = sub_239457528(v18, v41);
                *(v42 - 1) = __dst;
                v43 = sub_2394019F0(&v52, &__dst, v34, 0xFFFFFFFFLL, 0, 0);
                *v42 = v43;
                if (v43 < 0)
                {
                  break;
                }

                ++v41;
                v42 += 4;
                if (v41 >= sub_239431484(v18))
                {
                  goto LABEL_64;
                }
              }

              v37 = 0;
            }

            else
            {
LABEL_64:
              v44 = sub_239431484(v18);
              qsort(v40, v44, 0x10uLL, sub_239402450);
              __dst = *a2;
              if (sub_239431484(v18))
              {
                v45 = 0;
                v46 = (v40 + 1);
                do
                {
                  v47 = *v46;
                  if (v47)
                  {
                    memcpy(__dst, *(v46 - 1), v47);
                    v48 = *v46;
                  }

                  else
                  {
                    v48 = 0;
                  }

                  __dst = __dst + v48;
                  ++v45;
                  v46 += 2;
                }

                while (v45 < sub_239431484(v18));
              }

              *a2 = __dst;
              v37 = 1;
            }
          }

          sub_239450144(v40);
          sub_239450144(v38);
        }

        else
        {
          if (!sub_239431484(v18))
          {
            return v13;
          }

          v35 = 0;
          do
          {
            v52 = sub_239457528(v18, v35);
            v36 = sub_2394019F0(&v52, a2, v34, 0xFFFFFFFFLL, 0, 0);
            if (v36 < 0)
            {
              break;
            }

            ++v35;
          }

          while (v35 < sub_239431484(v18));
          v37 = v36 >= 0;
        }

        if (v37)
        {
          return v13;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }

      return v13;
    }

    if (v16)
    {
      return 0;
    }

    v11 = 155;
    v12 = 327;
    goto LABEL_4;
  }

  v28 = *(a3 + 3);
  if ((v10 & 0x10) != 0)
  {
    v29 = sub_2394019F0(a1, 0, v28, 0xFFFFFFFFLL, 0, v17);
    v30 = v29;
    if (v29 < 1)
    {
      return v29;
    }

    v31 = sub_2393FF7E0(1, v29, v6);
    v13 = v31;
    if (!a2)
    {
      return v13;
    }

    if (v31 == -1)
    {
      return v13;
    }

    sub_2393FF6D0(a2, 1, v30, v6, v15);
    if ((sub_2394019F0(a1, a2, *(a3 + 3), 0xFFFFFFFFLL, 0, 0) & 0x80000000) == 0)
    {
      return v13;
    }

    return 0xFFFFFFFFLL;
  }

  return sub_2394019F0(a1, a2, v28, v6, v15, v17);
}

uint64_t sub_2394022D8(int **a1, void **a2, uint64_t a3, int a4, char a5, int a6)
{
  v18 = *(a3 + 4);
  v19 = 0;
  v12 = sub_239402498(a1, 0, &v19, &v18, a3);
  if ((v12 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v19)
  {
    if (a6)
    {
      return 0;
    }

    sub_2394170F4(12, 0, 155, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/tasn_enc.c", 508);
    return 0xFFFFFFFFLL;
  }

  v13 = v12;
  v14 = v18;
  if (a4 == -1)
  {
    a4 = v18;
  }

  if (a2)
  {
    if ((v18 + 3) > 0x14 || ((1 << (v18 + 3)) & 0x180001) == 0)
    {
      sub_2393FF6D0(a2, 0, v12, a4, a5);
    }

    if ((sub_239402498(a1, *a2, &v19, &v18, a3) & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    *a2 = *a2 + v13;
  }

  if ((v14 + 3) <= 0x14 && ((1 << (v14 + 3)) & 0x180001) != 0)
  {
    return v13;
  }

  return sub_2393FF7E0(0, v13, a4);
}

uint64_t sub_239402450(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = (v2 - v3);
  if (v2 >= v3)
  {
    v2 = *(a2 + 8);
  }

  if (!v2)
  {
    return v4;
  }

  result = memcmp(*a1, *a2, v2);
  if (!result)
  {
    return v4;
  }

  return result;
}

uint64_t sub_239402498(int **a1, void *__dst, _DWORD *a3, int *a4, uint64_t a5)
{
  v24 = __dst;
  *a3 = 0;
  if (*a5)
  {
    if (!*a1)
    {
      goto LABEL_61;
    }

    if (*a5 == 5)
    {
      v5 = (*a1)[1];
      if (v5 < 0 && v5 != -3)
      {
        v6 = 191;
        v7 = 589;
LABEL_56:
        sub_2394170F4(12, 0, v6, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/tasn_enc.c", v7);
        return 0xFFFFFFFFLL;
      }

      if (v5 == 266)
      {
        v11 = 10;
      }

      else
      {
        v11 = (*a1)[1];
      }

      if (v5 == 258)
      {
        v10 = 2;
      }

      else
      {
        v10 = v11;
      }

      *a4 = v10;
      goto LABEL_24;
    }

    v8 = *(a5 + 4);
  }

  else
  {
    v8 = *(a5 + 4);
    if (v8 == 1)
    {
LABEL_15:
      v10 = *a4;
      goto LABEL_24;
    }

    if (!*a1)
    {
      goto LABEL_61;
    }
  }

  if (v8 != -4)
  {
    goto LABEL_15;
  }

  v9 = *a1;
  v10 = **a1;
  if (v10 < 0 && v10 != -3)
  {
    v6 = 191;
    v7 = 614;
    goto LABEL_56;
  }

  *a4 = v10;
  a1 = (v9 + 2);
LABEL_24:
  v23 = 0;
  if (v10 > 4)
  {
    if (v10 == 5)
    {
      return 0;
    }

    if (v10 != 10)
    {
      if (v10 == 6)
      {
        v15 = (*a1)[5];
        if (!v15)
        {
          v6 = 134;
          v7 = 630;
          goto LABEL_56;
        }

        v16 = *(*a1 + 3);
        goto LABEL_52;
      }

      goto LABEL_51;
    }

LABEL_37:
    v17 = *a1;
    if (__dst)
    {
      v18 = &v24;
    }

    else
    {
      v18 = 0;
    }

    v14 = sub_2393FC9F8(v17, v18);
    goto LABEL_41;
  }

  if (v10 != 1)
  {
    if (v10 != 2)
    {
      if (v10 == 3)
      {
        v12 = *a1;
        if (__dst)
        {
          v13 = &v24;
        }

        else
        {
          v13 = 0;
        }

        v14 = sub_2393FC07C(v12, v13);
LABEL_41:
        if (v14 < 1)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          return v14;
        }
      }

LABEL_51:
      v16 = *(*a1 + 1);
      v15 = **a1;
      goto LABEL_52;
    }

    goto LABEL_37;
  }

  v19 = *a1;
  if (*a1 == -1)
  {
    goto LABEL_61;
  }

  if (*(a5 + 4) != -4)
  {
    v21 = *(a5 + 32);
    if (v19)
    {
      if (v21 <= 0)
      {
        goto LABEL_46;
      }
    }

    else if (v21)
    {
      goto LABEL_46;
    }

LABEL_61:
    v15 = 0;
    *a3 = 1;
    return v15;
  }

LABEL_46:
  if (v19)
  {
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  v23 = v20;
  v15 = 1;
  v16 = &v23;
LABEL_52:
  if (__dst && v15)
  {
    memcpy(__dst, v16, v15);
  }

  return v15;
}

void sub_2394026E8(uint64_t *a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    return;
  }

  v4 = *a2;
  if (*a2)
  {
    if (!*a1)
    {
      return;
    }

    if (*a2 <= 3u)
    {
      if (v4 != 1)
      {
        if (v4 != 2)
        {
          return;
        }

        v5 = *(a2 + 3);
        if (v5)
        {
          v6 = *(v5 + 16);
          if (v6)
          {
            if (v6(2, a1, a2, 0) == 2)
            {
              return;
            }

            v7 = 0;
            goto LABEL_32;
          }
        }

        else
        {
          v6 = 0;
        }

        v7 = 1;
LABEL_32:
        v14 = sub_239403190(a1, a2);
        if ((v14 & 0x80000000) == 0 && *(a2 + 2) > v14)
        {
          v15 = *(a2 + 1) + 32 * v14;
          v16 = sub_2394033F4(a1, v15);
          sub_239402970(v16, v15);
        }

        if ((v7 & 1) == 0)
        {
          v6(3, a1, a2, 0);
        }

LABEL_46:
        sub_239450144(*a1);
        *a1 = 0;
        return;
      }

      if (!sub_2394031E8(a1, a2))
      {
        return;
      }

      v9 = *(a2 + 3);
      if (v9)
      {
        v10 = *(v9 + 16);
        if (v10)
        {
          if (v10(2, a1, a2, 0) == 2)
          {
            return;
          }

          v11 = 0;
          goto LABEL_39;
        }
      }

      else
      {
        v10 = 0;
      }

      v11 = 1;
LABEL_39:
      sub_239403250(a1, a2);
      v17 = *(a2 + 2);
      if (v17 >= 1)
      {
        v18 = 0;
        v19 = *(a2 + 1) + 32 * v17 - 32;
        do
        {
          v20 = sub_239403404(a1, v19, 0);
          if (v20)
          {
            v21 = v20;
            v22 = sub_2394033F4(a1, v20);
            sub_239402970(v22, v21);
          }

          ++v18;
          v19 -= 32;
        }

        while (*(a2 + 2) > v18);
      }

      if ((v11 & 1) == 0)
      {
        v10(3, a1, a2, 0);
      }

      goto LABEL_46;
    }

    if (v4 != 4)
    {
      if (v4 != 5)
      {
        return;
      }

      goto LABEL_17;
    }

    v12 = *(a2 + 3);
    if (v12)
    {
      v13 = *(v12 + 8);
      if (v13)
      {

        v13();
      }
    }
  }

  else
  {
    v8 = *(a2 + 1);
    if (!v8)
    {
LABEL_17:

      sub_239402A2C(a1, a2);
      return;
    }

    sub_239402970(a1, v8);
  }
}

void sub_239402970(uint64_t *a1, uint64_t a2)
{
  if ((*a2 & 6) != 0)
  {
    v4 = *a1;
    if (sub_239431484(*a1))
    {
      v5 = 0;
      do
      {
        v7 = sub_239457528(v4, v5);
        sub_2394026E8(&v7, *(a2 + 24));
        ++v5;
      }

      while (v5 < sub_239431484(v4));
    }

    sub_2393FFA58(v4);
    *a1 = 0;
  }

  else
  {
    v6 = *(a2 + 24);

    sub_2394026E8(a1, v6);
  }
}

void sub_239402A2C(uint64_t *a1, uint64_t a2)
{
  if (*a2 == 5)
  {
    goto LABEL_2;
  }

  v3 = *(a2 + 4);
  if (v3 > 4)
  {
    if (v3 == 5)
    {
      goto LABEL_3;
    }

    if (v3 == 6)
    {
      sub_2393FDCD8(*a1);
      goto LABEL_3;
    }

LABEL_2:
    sub_2393FFA58(*a1);
LABEL_3:
    *a1 = 0;
    return;
  }

  if (v3 == -4)
  {
    v4 = *a1;
    if (*a1)
    {
      sub_2393FF188(v4);
      sub_239450144(*a1);
    }

    goto LABEL_3;
  }

  if (v3 != 1)
  {
    goto LABEL_2;
  }

  *a1 = *(a2 + 32);
}

uint64_t sub_239402AC0(unsigned __int8 *a1)
{
  v2 = 0;
  if (sub_239402AF8(&v2, a1))
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239402AF8(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v5 = 1;
  if (v4 <= 1)
  {
    if (!*a2)
    {
      v14 = *(a2 + 1);
      if (v14)
      {
        if (sub_239402D20(a1, v14))
        {
          return v5;
        }

        return 0;
      }

LABEL_24:
      if (sub_239402DEC(a1, a2))
      {
        return v5;
      }

      return 0;
    }

    if (v4 != 1)
    {
      return v5;
    }

    v8 = *(a2 + 3);
    if (v8)
    {
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = v9(0, a1, a2, 0);
        if (!v10)
        {
          goto LABEL_40;
        }

        v11 = 0;
        if (v10 == 2)
        {
          return v5;
        }

LABEL_32:
        v16 = sub_2394500B0(*(a2 + 4));
        *a1 = v16;
        if (!v16)
        {
          return 0;
        }

        sub_2394031B4(a1, a2);
        sub_239403220(a1, a2);
        if (*(a2 + 2) >= 1)
        {
          v17 = 0;
          v18 = *(a2 + 1);
          while (1)
          {
            v19 = sub_2394033F4(a1, v18);
            if (!sub_239402D20(v19, v18))
            {
              break;
            }

            v18 += 8;
            if (*(a2 + 2) <= ++v17)
            {
              goto LABEL_37;
            }
          }

          sub_2394026E8(a1, a2);
          return 0;
        }

LABEL_37:
        if (v11)
        {
          return 1;
        }

LABEL_38:
        v5 = 1;
        if (v9(1, a1, a2, 0))
        {
          return v5;
        }

        sub_2394026E8(a1, a2);
        goto LABEL_40;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = 1;
    goto LABEL_32;
  }

  switch(v4)
  {
    case 2u:
      v12 = *(a2 + 3);
      if (!v12)
      {
        v9 = 0;
        goto LABEL_27;
      }

      v9 = *(v12 + 16);
      if (!v9)
      {
        goto LABEL_27;
      }

      v13 = v9(0, a1, a2, 0);
      if (v13)
      {
        LOBYTE(v5) = 0;
        if (v13 == 2)
        {
          return 1;
        }

LABEL_27:
        v15 = sub_2394500B0(*(a2 + 4));
        *a1 = v15;
        if (!v15)
        {
          return 0;
        }

        sub_2394031A0(a1, -1, a2);
        if (v5)
        {
          return 1;
        }

        goto LABEL_38;
      }

LABEL_40:
      sub_2394170F4(12, 0, 101, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/tasn_new.c", 181);
      return 0;
    case 5u:
      goto LABEL_24;
    case 4u:
      v6 = *(a2 + 3);
      if (v6)
      {
        v7 = *v6;
        if (v7)
        {
          if (!v7(a1, a2))
          {
            return 0;
          }
        }
      }

      break;
  }

  return v5;
}

uint64_t sub_239402D20(_DWORD *a1, int *a2)
{
  v3 = *a2;
  if (*a2)
  {
    while ((*a2 & 0x306) == 0)
    {
      v5 = *(a2 + 3);
      v6 = *v5;
      if (*v5)
      {
        if ((v6 - 1) >= 2 && v6 != 5 && v6 != 4)
        {
          return 1;
        }

        goto LABEL_14;
      }

      a2 = *(v5 + 1);
      if (!a2)
      {
        if (*(v5 + 1) != 1)
        {
          goto LABEL_14;
        }

        *a1 = *(v5 + 4);
        return 1;
      }
    }

    goto LABEL_14;
  }

  if ((v3 & 0x300) != 0)
  {
LABEL_14:
    *a1 = 0;
    return 1;
  }

  if ((v3 & 6) != 0)
  {
    result = sub_2394574D8();
    if (!result)
    {
      return result;
    }

    *a1 = result;
    return 1;
  }

  v7 = *(a2 + 3);

  return sub_239402AF8(a1, v7);
}

uint64_t sub_239402DEC(void *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*a2 == 5)
  {
    v3 = -1;
LABEL_4:
    result = sub_2393FFADC(v3);
LABEL_5:
    *a1 = result;
    return result != 0;
  }

  v3 = *(a2 + 4);
  if (v3 > 4)
  {
    if (v3 != 5)
    {
      if (v3 != 6)
      {
        goto LABEL_4;
      }

      *a1 = sub_239450FF8();
      return 1;
    }

    result = 1;
    *a1 = 1;
  }

  else
  {
    if (v3 != -4)
    {
      if (v3 != 1)
      {
        goto LABEL_4;
      }

      *a1 = *(a2 + 32);
      return 1;
    }

    result = sub_23945004C(0x10uLL);
    if (result)
    {
      *(result + 8) = 0;
      *result = -1;
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t sub_2394031A0(uint64_t *a1, int a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a3 + 4);
  result = *(*a1 + v4);
  *(v3 + v4) = a2;
  return result;
}

void *sub_2394031B4(void *result, uint64_t a2)
{
  if (*a2 == 1)
  {
    v2 = *(a2 + 24);
    if (v2)
    {
      if (*(v2 + 8))
      {
        if (*result)
        {
          *(*result + *(v2 + 12)) = 1;
        }
      }
    }
  }

  return result;
}

void *sub_239403220(void *result, uint64_t a2)
{
  if (result)
  {
    if (*result)
    {
      v2 = *(a2 + 24);
      if (v2)
      {
        if ((*(v2 + 8) & 2) != 0)
        {
          v3 = (*result + *(v2 + 24));
          *v3 = 0;
          v3[1] = 0;
          v3[2] = 0;
        }
      }
    }
  }

  return result;
}

void sub_239403250(void *a1, uint64_t a2)
{
  if (a1)
  {
    if (*a1)
    {
      v2 = *(a2 + 24);
      if (v2)
      {
        if ((*(v2 + 8) & 2) != 0)
        {
          sub_23940327C(*a1 + *(v2 + 24));
        }
      }
    }
  }
}

void sub_23940327C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_239455724(v2);
  }

  else
  {
    sub_239450144(*a1);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_2394032BC(void *a1, const void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return 1;
  }

  if (!*a1)
  {
    return 1;
  }

  v5 = *(a4 + 24);
  if (!v5)
  {
    return 1;
  }

  if ((*(v5 + 8) & 2) != 0)
  {
    v9 = (*a1 + *(v5 + 24));
    sub_23940327C(v9);
    if (a5)
    {
      sub_239455868(a5);
      v9[2] = a5;
      *v9 = a2;
    }

    else
    {
      result = sub_239450350(a2, a3);
      *v9 = result;
      if (!result)
      {
        return result;
      }
    }

    v9[1] = a3;
  }

  return 1;
}

uint64_t sub_239403358(_DWORD *a1, void **a2, void *a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  if (!*a3)
  {
    return 0;
  }

  v4 = *(a4 + 24);
  if (!v4)
  {
    return 0;
  }

  if ((*(v4 + 8) & 2) == 0)
  {
    return 0;
  }

  v5 = *a3 + *(v4 + 24);
  v6 = *(v5 + 8);
  if (!v6)
  {
    return 0;
  }

  if (a2)
  {
    memcpy(*a2, *v5, v6);
    *a2 = *a2 + *(v5 + 8);
  }

  if (a1)
  {
    *a1 = *(v5 + 8);
  }

  return 1;
}

uint64_t sub_239403404(void *a1, uint64_t a2, int a3)
{
  if ((*(a2 + 1) & 3) == 0)
  {
    return a2;
  }

  v4 = *(a2 + 24);
  v5 = *(*a1 + v4[1]);
  if (!v5)
  {
    a2 = v4[6];
    if (a2)
    {
      return a2;
    }

LABEL_10:
    if (a3)
    {
      sub_2394170F4(12, 0, 186, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/asn1/tasn_utl.c", 265);
    }

    return 0;
  }

  v6 = sub_2394509E8(v5);
  v7 = v4[4];
  if (v7 < 1)
  {
LABEL_7:
    a2 = v4[5];
    if (a2)
    {
      return a2;
    }

    goto LABEL_10;
  }

  a2 = v4[3] + 8;
  while (*(a2 - 8) != v6)
  {
    a2 += 40;
    if (!--v7)
    {
      goto LABEL_7;
    }
  }

  return a2;
}

void *sub_2394034B4(uint64_t a1)
{
  v2 = sub_2394500B0(0x48uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = a1;
    *(v2 + 5) = 1;
    *(v2 + 9) = 1;
    sub_2393F7EB0(v2 + 1);
    v4 = *(a1 + 56);
    if (v4)
    {
      if (!v4(v3))
      {
        sub_239450144(v3);
        return 0;
      }
    }
  }

  return v3;
}

BOOL sub_239403520(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = a1;
  while (1)
  {
    v2 = v1;
    result = sub_239455A20((v1 + 36));
    if (!result)
    {
      break;
    }

    v1 = *(v1 + 48);
    v2[6] = 0;
    if (*v2)
    {
      v4 = *(*v2 + 64);
      if (v4)
      {
        v4(v2);
      }
    }

    sub_23941F114(&unk_27DF766C8, v2, v2 + 1);
    sub_239450144(v2);
    if (!v1)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2394035B0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 48);
    *(v1 + 48) = 0;
  }

  return result;
}

uint64_t sub_2394035E8(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1 || !*a1 || (v4 = *(*a1 + 24)) == 0)
  {
    v6 = 115;
    v7 = 129;
LABEL_9:
    sub_2394170F4(17, 0, v6, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/bio/bio.c", v7);
    return 4294967294;
  }

  if (!*(a1 + 16))
  {
    v6 = 114;
    v7 = 133;
    goto LABEL_9;
  }

  if (a3 < 1)
  {
    return 0;
  }

  result = v4(a1);
  if (result >= 1)
  {
    *(a1 + 56) += result;
  }

  return result;
}

uint64_t sub_239403690(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1 || !*a1 || (v4 = *(*a1 + 40)) == 0)
  {
    v6 = 115;
    v7 = 148;
LABEL_9:
    sub_2394170F4(17, 0, v6, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/bio/bio.c", v7);
    return 4294967294;
  }

  if (!*(a1 + 16))
  {
    v6 = 114;
    v7 = 152;
    goto LABEL_9;
  }

  if (a3 < 1)
  {
    return 0;
  }

  result = v4(a1);
  if (result >= 1)
  {
    *(a1 + 56) += result;
  }

  return result;
}

uint64_t sub_239403738(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1 || !*a1 || (v4 = *(*a1 + 16)) == 0)
  {
    v6 = 115;
    v7 = 167;
LABEL_9:
    sub_2394170F4(17, 0, v6, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/bio/bio.c", v7);
    return 4294967294;
  }

  if (!*(a1 + 16))
  {
    v6 = 114;
    v7 = 171;
    goto LABEL_9;
  }

  if (a3 < 1)
  {
    return 0;
  }

  result = v4(a1);
  if (result >= 1)
  {
    *(a1 + 64) += result;
  }

  return result;
}

uint64_t sub_2394037E0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  while (a3)
  {
    if (a3 >= 0x7FFFFFFF)
    {
      v6 = 0x7FFFFFFF;
    }

    else
    {
      v6 = a3;
    }

    v7 = sub_239403738(a1, a2, v6);
    a2 += v7;
    a3 -= v7;
    if (v7 <= 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_239403848(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >> 31)
  {
    sub_2394170F4(17, 0, 69, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/bio/bio.c", 201);
    return 0xFFFFFFFFLL;
  }

  else
  {

    return sub_239403738(a1, __s, v4);
  }
}

uint64_t sub_2394038E8(uint64_t result)
{
  if (result)
  {
    if (*result && (v2 = *(*result + 48)) != 0)
    {

      return v2();
    }

    else
    {
      sub_2394170F4(17, 0, 115, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/bio/bio.c", 217);
      return -2;
    }
  }

  return result;
}

uint64_t sub_239403944(uint64_t a1)
{
  if (sub_2394038E8(a1) >= 1)
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239403AA4(uint64_t result)
{
  v1 = *(result + 24);
  *(result + 24) = v1 & 0xFFFFFFF0;
  *(result + 28) = 0;
  v2 = *(result + 48);
  *(result + 24) = v1 & 0xFFFFFFF0 | *(v2 + 24) & 0xF;
  *(result + 28) = *(v2 + 28);
  return result;
}

uint64_t sub_239403ACC(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*a1 || (v2 = *(*a1 + 72)) == 0)
  {
    sub_2394170F4(17, 0, 115, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/bio/bio.c", 313);
    return 0;
  }

  return v2();
}

uint64_t sub_239403BAC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    do
    {
      v3 = v2;
      v2 = *(v2 + 48);
    }

    while (v2);
    *(v3 + 48) = a2;
  }

  return result;
}

int *sub_239403BC8(int *result, int a2)
{
  for (; result; result = *(result + 6))
  {
    if (*result)
    {
      v2 = **result;
      if (a2)
      {
        if (v2 == a2)
        {
          return result;
        }
      }

      else if ((v2 & a2) != 0)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_239403C00(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 1;
  while (--v5)
  {
    if (sub_239403848(a1, " ") != 1)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_239403C7C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  while (a2)
  {
    if (a2 >= 0x7FFFFFFF)
    {
      v6 = 0x7FFFFFFF;
    }

    else
    {
      v6 = a2;
    }

    v7 = sub_239403738(a3, a1, v6);
    a1 += v7;
    a2 -= v7;
    if (v7 <= 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_239403CE4(uint64_t a1, uint64_t *a2, void *a3, unint64_t a4)
{
  v8 = sub_2394035E8(a1, &__src, 2);
  v9 = v8;
  if (v8 < 1)
  {
LABEL_8:
    if (v9 > 0 || v8)
    {
      v13 = 162;
      v14 = 542;
    }

    else
    {
      v13 = 123;
      v14 = 540;
    }

    goto LABEL_69;
  }

  p_src = &__src;
  v11 = 2;
  while (1)
  {
    v11 -= v8;
    if (!v11)
    {
      break;
    }

    p_src = (p_src + v8);
    if (v11 >> 31)
    {
      v12 = 0x7FFFFFFF;
    }

    else
    {
      v12 = v11;
    }

    v8 = sub_2394035E8(a1, p_src, v12);
    if (v8 < 1)
    {
      goto LABEL_8;
    }
  }

  if ((~__src & 0x1F) == 0)
  {
    v13 = 109;
    v14 = 552;
LABEL_69:
    sub_2394170F4(12, 0, v13, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/bio/bio.c", v14);
    return 0;
  }

  v15 = HIBYTE(__src);
  if (__src < 0)
  {
    v23 = HIBYTE(__src) & 0x7F;
    if ((__src & 0x20) != 0 && (__src & 0x7F00) == 0)
    {
      if (a4 >= 0x1002)
      {
        v24 = 4098;
      }

      else
      {
        v24 = a4;
      }

      if (a4 >= 2)
      {
        v25 = sub_23945004C(v24);
        *a2 = v25;
        if (v25)
        {
          *v25 = __src;
          if (a4 != 2)
          {
            v26 = 2;
            do
            {
              v27 = v24 - v26 >= 0x7FFFFFFF ? 0x7FFFFFFF : v24 - v26;
              v28 = sub_2394035E8(a1, *a2 + v26, v27);
              if (v28 == -1)
              {
                break;
              }

              if (!v28)
              {
                *a3 = v26;
                return 1;
              }

              v26 += v28;
              if (v24 < a4 && v24 - v26 <= 0x7FF)
              {
                v29 = v24 + 4096;
                if (v24 + 4096 >= a4)
                {
                  v29 = a4;
                }

                if (v24 <= 0xFFFFFFFFFFFFEFFFLL)
                {
                  v24 = v29;
                }

                else
                {
                  v24 = a4;
                }

                v30 = sub_2394501A0(*a2, v24);
                if (!v30)
                {
                  break;
                }

                *a2 = v30;
              }
            }

            while (v26 != v24);
          }

          sub_239450144(*a2);
        }
      }

      v13 = 162;
      v14 = 568;
      goto LABEL_69;
    }

    if ((v23 - 5) <= 0xFBu)
    {
      v13 = 109;
      v14 = 575;
      goto LABEL_69;
    }

    v31 = v39;
    v32 = HIBYTE(__src) & 0x7F;
    do
    {
      if (v32 >> 31)
      {
        v33 = 0x7FFFFFFF;
      }

      else
      {
        v33 = v32;
      }

      v34 = sub_2394035E8(a1, v31, v33);
      if (v34 < 1)
      {
        v13 = 162;
        v14 = 580;
        goto LABEL_69;
      }

      v31 += v34;
      v32 -= v34;
    }

    while (v32);
    if (!v23)
    {
      goto LABEL_66;
    }

    LODWORD(v35) = 0;
    v16 = v23 + 2;
    v36 = v39;
    do
    {
      v37 = *v36++;
      v35 = v37 | (v35 << 8);
      --v23;
    }

    while (v23);
    if (v35 < 0x80)
    {
LABEL_66:
      v13 = 109;
      v14 = 593;
      goto LABEL_69;
    }

    if (!(v35 >> (8 * (v15 & 0x1F) - 8)))
    {
      v13 = 109;
      v14 = 599;
      goto LABEL_69;
    }

    v15 = v35;
  }

  else
  {
    v16 = 2;
  }

  if (v15 >> 31 || (v17 = v16 + v15, v16 + v15 > a4))
  {
    v13 = 177;
    v14 = 609;
    goto LABEL_69;
  }

  *a3 = v17;
  result = sub_23945004C(v17);
  *a2 = result;
  if (!result)
  {
    return result;
  }

  memcpy(result, &__src, v16);
  if (!v15)
  {
    return 1;
  }

  v19 = *a2 + v16;
  while (1)
  {
    v20 = v15 >> 31 ? 0x7FFFFFFF : v15;
    v21 = sub_2394035E8(a1, v19, v20);
    if (v21 < 1)
    {
      break;
    }

    v22 = v21;
    v19 += v21;
    result = 1;
    v15 -= v22;
    if (!v15)
    {
      return result;
    }
  }

  sub_2394170F4(12, 0, 162, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/bio/bio.c", 621);
  sub_239450144(*a2);
  return 0;
}

uint64_t sub_2394040D4()
{
  sub_239457D3C(&stru_27DF767A8);
  v0 = dword_27DF76870;
  if (dword_27DF76870 <= 255)
  {
    ++dword_27DF76870;
  }

  else
  {
    v0 = 0xFFFFFFFFLL;
  }

  sub_239457D5C(&stru_27DF767A8);
  return v0;
}

void *sub_23940412C(int a1, uint64_t a2)
{
  result = sub_2394500B0(0x50uLL);
  if (result)
  {
    *result = a1;
    result[1] = a2;
  }

  return result;
}

void *sub_239404208(const char *a1, const char *a2)
{
  v2 = fopen(a1, a2);
  if (v2)
  {
    v3 = v2;
    result = sub_2394042E8();
    if (result)
    {
      return result;
    }

    fclose(v3);
  }

  else
  {
    sub_2394170F4(2, 0, 0, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/bio/file.c", 110);
    sub_2394171A0(5u, v5, v6, v7, v8, v9, v10, v11, "fopen('");
    if (*__error() == 2)
    {
      v12 = 110;
      v13 = 114;
    }

    else
    {
      v12 = 112;
      v13 = 116;
    }

    sub_2394170F4(17, 0, v12, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/bio/file.c", v13);
  }

  return 0;
}

void *sub_2394042E8()
{
  v0 = sub_2394034B4(&unk_284BB9250);
  v1 = v0;
  if (v0)
  {
    sub_2394038E8(v0);
  }

  return v1;
}

uint64_t sub_239404444(uint64_t a1, void *__ptr, unsigned int a3)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  LODWORD(result) = fwrite(__ptr, a3, 1uLL, *(a1 + 40));
  if (result <= 0)
  {
    return result;
  }

  else
  {
    return a3;
  }
}

size_t sub_239404498(uint64_t a1, void *__ptr, int a3)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = fread(__ptr, 1uLL, a3, *(a1 + 40));
  if (!v4 && ferror(*(a1 + 40)))
  {
    sub_2394170F4(2, 0, 0, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/bio/file.c", 161);
    sub_2394170F4(17, 0, 2, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/bio/file.c", 162);
    return 0xFFFFFFFFLL;
  }

  return v4;
}

char *sub_239404530(uint64_t a1, char *a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  result = fgets(a2, a3, *(a1 + 40));
  if (result)
  {
    return strlen(a2);
  }

  *a2 = 0;
  return result;
}

uint64_t sub_239404588(uint64_t a1, int a2, uint64_t a3, char *a4)
{
  v4 = a3;
  result = 0;
  if (a2 > 10)
  {
    if (a2 <= 107)
    {
      switch(a2)
      {
        case 11:
          return fflush(*(a1 + 40)) == 0;
        case 106:
          sub_2394047E0(a1);
          *(a1 + 40) = a4;
          result = 1;
          *(a1 + 16) = 1;
          *(a1 + 20) = v4 & 1;
          break;
        case 107:
          if (a4)
          {
            *a4 = *(a1 + 40);
          }

          return 1;
      }

      return result;
    }

    if (a2 != 108)
    {
      if (a2 != 128)
      {
        if (a2 != 133)
        {
          return result;
        }

LABEL_17:
        v8 = *(a1 + 40);

        JUMPOUT(0x23EE78050);
      }

      goto LABEL_24;
    }

    sub_2394047E0(a1);
    *(a1 + 20) = v4 & 1;
    if ((v4 & 8) != 0)
    {
      if ((v4 & 2) != 0)
      {
        v10 = "ab+";
      }

      else
      {
        v10 = "ab";
      }
    }

    else
    {
      v9 = v4 & 6;
      if (v9 == 6)
      {
        v10 = "rb+";
      }

      else
      {
        if ((v4 & 4) != 0)
        {
          v10 = "wb";
        }

        else
        {
          v10 = "rb";
        }

        if (!v9)
        {
          v19 = 100;
          v20 = 235;
LABEL_43:
          sub_2394170F4(17, 0, v19, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/bio/file.c", v20);
          return 0;
        }
      }
    }

    v11 = fopen(a4, v10);
    if (v11)
    {
      *(a1 + 40) = v11;
      result = 1;
      *(a1 + 16) = 1;
      return result;
    }

    sub_2394170F4(2, 0, 0, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/bio/file.c", 241);
    sub_2394171A0(5u, v12, v13, v14, v15, v16, v17, v18, "fopen('");
    v19 = 2;
    v20 = 243;
    goto LABEL_43;
  }

  if (a2 <= 2)
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        return result;
      }

      LODWORD(result) = feof(*(a1 + 40));
      return result;
    }

    v4 = 0;
LABEL_24:
    LODWORD(result) = fseek(*(a1 + 40), v4, 0);
    return result;
  }

  switch(a2)
  {
    case 3:
      goto LABEL_17;
    case 8:
      return *(a1 + 20);
    case 9:
      *(a1 + 20) = a3;
      return 1;
  }

  return result;
}

uint64_t sub_2394047E0(uint64_t a1)
{
  if (*(a1 + 20))
  {
    if (*(a1 + 16))
    {
      v2 = *(a1 + 40);
      if (v2)
      {
        fclose(v2);
        *(a1 + 40) = 0;
      }
    }

    *(a1 + 16) = 0;
  }

  return 1;
}

uint64_t sub_23940482C(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = a4;
  if (a3)
  {
    v6 = 0;
    v7 = 0;
    for (i = 0; i != a3; v7 = i >= a3)
    {
      if (!v6)
      {
        sub_239403C00(a1, v21, 0xFFFFFFFF);
        v22[0] = a0123456789abcd_2[DWORD2(v20) >> 28];
        v22[1] = a0123456789abcd_2[(*(&v20 + 1) >> 24) & 0xFLL];
        v22[2] = a0123456789abcd_2[(*(&v20 + 1) >> 20) & 0xFLL];
        v22[3] = a0123456789abcd_2[(*(&v20 + 1) >> 16) & 0xFLL];
        v22[4] = a0123456789abcd_2[WORD4(v20) >> 12];
        v23 = a0123456789abcd_2[(*(&v20 + 1) >> 8) & 0xFLL];
        v24 = a0123456789abcd_2[BYTE8(v20) >> 4];
        v25 = a0123456789abcd_2[BYTE8(v20) & 0xF];
        v26 = 8224;
        if ((sub_239403738(a1, v22, 10) & 0x80000000) != 0)
        {
          break;
        }

        v6 = DWORD1(v20);
      }

      v9 = *(a2 + i);
      v22[0] = a0123456789abcd_2[v9 >> 4];
      v22[1] = a0123456789abcd_2[v9 & 0xF];
      v22[2] = 32;
      if (v6 == 15)
      {
        *&v22[3] = 31776;
        v10 = 5;
      }

      else if (v6 == 7)
      {
        v22[3] = 32;
        v10 = 4;
      }

      else
      {
        v10 = 3;
      }

      if ((sub_239403738(a1, v22, v10) & 0x80000000) != 0)
      {
        break;
      }

      v11 = *(a2 + i);
      if ((v11 - 127) < 0xFFFFFFA1)
      {
        LOBYTE(v11) = 46;
      }

      *(&v19 + DWORD1(v20)) = v11;
      v6 = DWORD1(v20) + 1;
      DWORD1(v20) = v6;
      ++*(&v20 + 1);
      if (v6 == 16)
      {
        LOWORD(v20) = 2684;
        if ((sub_239403738(a1, &v19, 18) & 0x80000000) != 0)
        {
          break;
        }

        v6 = 0;
        DWORD1(v20) = 0;
      }

      ++i;
    }

    if (!v7)
    {
      goto LABEL_32;
    }

    v12 = DWORD1(v20);
    if (DWORD1(v20))
    {
      qmemcpy(v22, "    |", sizeof(v22));
      if (DWORD1(v20) <= 0xF)
      {
        for (j = DWORD1(v20); j < 0x10; DWORD1(v20) = j)
        {
          v14 = j == 15 ? 5 : 3;
          v15 = j == 7 ? 4 : v14;
          if ((sub_239403738(a1, v22, v15) & 0x80000000) != 0)
          {
            goto LABEL_32;
          }

          j = DWORD1(v20) + 1;
        }
      }

      *(&v19 + v12) = 124;
      *(&v19 + v12 + 1) = 10;
      if ((sub_239403738(a1, &v19, v12 + 2) & 0x80000000) != 0)
      {
LABEL_32:
        result = 0;
        goto LABEL_33;
      }
    }
  }

  result = 1;
LABEL_33:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239404AE0(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  v13 = *MEMORY[0x277D85DE8];
  v4 = vsnprintf(__str, 0x100uLL, __format, va);
  if ((v4 & 0x80000000) != 0)
  {
    goto LABEL_6;
  }

  if (v4 > 0xFF)
  {
    v6 = v4 + 1;
    v7 = sub_23945004C(v6);
    if (v7)
    {
      v8 = v7;
      v9 = vsnprintf(v7, v6, __format, va);
      v5 = sub_239403738(a1, v8, v9);
      sub_239450144(v8);
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

  v5 = sub_239403738(a1, __str, v4);
LABEL_7:
  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

double sub_239404BE0(uint64_t a1)
{
  *(a1 + 208) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = 2.87627503e82;
  *(a1 + 32) = xmmword_2395C2FF8;
  *(a1 + 48) = unk_2395C3008;
  *a1 = xmmword_2395C2FD8;
  *(a1 + 16) = unk_2395C2FE8;
  *a1 ^= 0x1010020uLL;
  return result;
}

void *sub_239404C34(void *result, char *__src, unint64_t a3)
{
  if (a3)
  {
    v5 = result;
    v6 = result[26];
    v7 = 128;
    if (128 - v6 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = 128 - v6;
    }

    v9 = (result + 10);
    if (v6 != 128)
    {
      result = memcpy(&v9[v6], __src, v8);
      v7 = *(v5 + 208);
    }

    *(v5 + 208) = v7 + v8;
    v10 = a3 - v8;
    if (v10)
    {
      v11 = &__src[v8];
      sub_239404D14(v5, v9, 128, 0);
      *(v5 + 208) = 0;
      if (v10 >= 0x81)
      {
        do
        {
          sub_239404D14(v5, v11, 128, 0);
          v11 += 128;
          v10 -= 128;
        }

        while (v10 > 0x80);
      }

      result = memcpy(v9, v11, v10);
      *(v5 + 208) = v10;
    }
  }

  return result;
}

__int128 *sub_239404D14(__int128 *result, uint64_t a2, uint64_t a3, int a4)
{
  v87[9] = *MEMORY[0x277D85DE8];
  v4 = result[1];
  v83 = *result;
  v84 = v4;
  v5 = result[3];
  v85 = result[2];
  v86 = v5;
  v6 = *(result + 8);
  v7 = *(result + 9);
  v8 = v6 + a3;
  *(result + 8) = v6 + a3;
  if (__CFADD__(v6, a3))
  {
    *(result + 9) = ++v7;
  }

  v9 = 0;
  v10 = 0;
  v11 = v8 ^ 0x510E527FADE682D1;
  v12 = v7 ^ 0x9B05688C2B3E6C1FLL;
  v13 = *(&v83 + 1);
  v14 = v83;
  v15 = *(&v85 + 1);
  v16 = v85;
  if (a4)
  {
    v17 = 0xE07C265404BE4294;
  }

  else
  {
    v17 = 0x1F83D9ABFB41BD6BLL;
  }

  v18 = 0xA54FF53A5F1D36F1;
  v19 = 0x5BE0CD19137E2179;
  v20 = *(&v84 + 1);
  v21 = v84;
  v22 = 0x3C6EF372FE94F82BLL;
  v23 = 0xBB67AE8584CAA73BLL;
  v24 = 0x6A09E667F3BCC908;
  v25 = *(&v86 + 1);
  v26 = v86;
  do
  {
    LODWORD(v27) = v9 - 160;
    if (v10 >= 0xA)
    {
      v27 = v27;
    }

    else
    {
      v27 = v9;
    }

    v28 = &unk_2395C3018 + v27;
    v29 = v14 + v16 + *(a2 + 8 * *v28);
    v30 = v11 ^ v29;
    v31 = v13 + v15 + *(a2 + 8 * v28[2]);
    v32 = v12 ^ v31;
    v33 = v24 + __ROR8__(v30, 32);
    v34 = v33 ^ v16;
    v35 = v23 + __ROR8__(v12 ^ v31, 32);
    v36 = v35 ^ v15;
    v37 = v29 + *(a2 + 8 * v28[1]) + __ROR8__(v34, 24);
    v38 = v37 ^ __ROR8__(v30, 32);
    v39 = v31 + *(a2 + 8 * v28[3]) + __ROR8__(v35 ^ v15, 24);
    v40 = v39 ^ __ROR8__(v32, 32);
    v41 = v21 + v26 + *(a2 + 8 * v28[4]);
    v42 = v17 ^ v41;
    v43 = __ROR8__(v38, 16) + v33;
    v44 = v22 + __ROR8__(v17 ^ v41, 32);
    v45 = v44 ^ v26;
    v46 = __ROR8__(v40, 16) + v35;
    v47 = v41 + *(a2 + 8 * v28[5]) + __ROR8__(v44 ^ v26, 24);
    v48 = v47 ^ __ROR8__(v42, 32);
    v49 = v43 ^ __ROR8__(v34, 24);
    v50 = __ROR8__(v48, 16) + v44;
    v51 = v20 + v25 + *(a2 + 8 * v28[6]);
    v52 = v19 ^ v51;
    v53 = v50 ^ __ROR8__(v45, 24);
    v54 = v18 + __ROR8__(v52, 32);
    v55 = v54 ^ v25;
    v56 = v51 + *(a2 + 8 * v28[7]) + __ROR8__(v54 ^ v25, 24);
    v57 = __ROR8__(v46 ^ __ROR8__(v36, 24), 63);
    v58 = v56 ^ __ROR8__(v52, 32);
    v59 = __ROR8__(v58, 16) + v54;
    v60 = v59 ^ __ROR8__(v55, 24);
    v61 = v57 + v37 + *(a2 + 8 * v28[8]);
    v62 = v61 ^ __ROR8__(v58, 16);
    v63 = __ROR8__(v62, 32) + v50;
    v64 = v63 ^ v57;
    v65 = __ROR8__(v53, 63) + v39 + *(a2 + 8 * v28[10]);
    v66 = v65 ^ __ROR8__(v38, 16);
    v14 = v61 + *(a2 + 8 * v28[9]) + __ROR8__(v63 ^ v57, 24);
    v67 = __ROR8__(v66, 32) + v59;
    v68 = v67 ^ __ROR8__(v53, 63);
    v13 = v65 + *(a2 + 8 * v28[11]) + __ROR8__(v68, 24);
    v69 = v13 ^ __ROR8__(v66, 32);
    v19 = __ROR8__(v14 ^ __ROR8__(v62, 32), 16);
    v70 = __ROR8__(v60, 63) + v47 + *(a2 + 8 * v28[12]);
    v71 = __ROR8__(v70 ^ __ROR8__(v40, 16), 32);
    v11 = __ROR8__(v69, 16);
    v22 = v19 + v63;
    v72 = v71 + v43;
    v73 = (v71 + v43) ^ __ROR8__(v60, 63);
    v18 = v11 + v67;
    v21 = v70 + *(a2 + 8 * v28[13]) + __ROR8__(v73, 24);
    v12 = __ROR8__(v21 ^ v71, 16);
    v74 = v22 ^ __ROR8__(v64, 24);
    v24 = v12 + v72;
    v75 = v18 ^ __ROR8__(v68, 24);
    v76 = v56 + *(a2 + 8 * v28[14]) + __ROR8__(v49, 63);
    v77 = v76 ^ __ROR8__(v48, 16);
    v78 = (v12 + v72) ^ __ROR8__(v73, 24);
    v79 = __ROR8__(v77, 32) + v46;
    v80 = v79 ^ __ROR8__(v49, 63);
    v15 = __ROR8__(v74, 63);
    v20 = v76 + *(a2 + 8 * v28[15]) + __ROR8__(v80, 24);
    v26 = __ROR8__(v75, 63);
    v17 = __ROR8__(v20 ^ __ROR8__(v77, 32), 16);
    v23 = v17 + v79;
    v25 = __ROR8__(v78, 63);
    ++v10;
    v9 += 16;
    v16 = __ROR8__((v17 + v79) ^ __ROR8__(v80, 24), 63);
  }

  while (v10 != 12);
  v81 = 0;
  *&v83 = v14;
  *(&v83 + 1) = v13;
  *&v85 = v16;
  *(&v85 + 1) = v15;
  v87[4] = v11;
  v87[5] = v12;
  v87[0] = v24;
  v87[1] = v17 + v79;
  *&v84 = v21;
  *(&v84 + 1) = v20;
  *&v86 = v26;
  *(&v86 + 1) = v25;
  v87[6] = v17;
  v87[7] = v19;
  v87[2] = v22;
  v87[3] = v18;
  do
  {
    result[v81 / 0x10] = veorq_s8(*&v87[v81 / 8], veorq_s8(result[v81 / 0x10], *(&v83 + v81)));
    v81 += 16;
  }

  while (v81 != 64);
  v82 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 sub_23940510C(_OWORD *a1, uint64_t a2)
{
  v4 = a2 + 80;
  v5 = *(a2 + 208);
  if (v5 == 128)
  {
    v6 = 128;
  }

  else
  {
    bzero((v4 + v5), 128 - v5);
    v6 = *(a2 + 208);
  }

  sub_239404D14(a2, v4, v6, 1);
  result = *a2;
  v8 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v8;
  return result;
}

void sub_23940517C(char *__src, unint64_t a2, _OWORD *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5[1] = 0xBB67AE8584CAA73BLL;
  v6 = unk_2395C2FE8;
  v7 = xmmword_2395C2FF8;
  v8 = unk_2395C3008;
  v9 = 0u;
  v5[0] = 0x6A09E667F2BDC928;
  sub_239404C34(v5, __src, a2);
  sub_23940510C(a3, v5);
  v4 = *MEMORY[0x277D85DE8];
}

BOOL sub_239405234(__int128 *a1, void *a2)
{
  v7 = 0;
  v8 = 0;
  v6 = 0;
  if (sub_239407F5C(a1, &v7, 2) && sub_239408344(&v7, &v6))
  {
    if (!v6)
    {
      return sub_23942253C(v7, v8, a2) != 0;
    }

    v3 = 109;
    v4 = 31;
  }

  else
  {
    v3 = 117;
    v4 = 26;
  }

  sub_2394170F4(3, 0, v3, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/bn_extra/bn_asn1.c", v4);
  return 0;
}

uint64_t sub_2394052E0(uint64_t *a1, uint64_t *a2)
{
  if (sub_23942236C(a2))
  {
    v4 = 109;
    v5 = 41;
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    if (sub_239406A10(a1, v8, 2u) && ((sub_239422114(a2) & 7) != 0 || sub_239406ACC(v8, 0)))
    {
      v6 = sub_239422178(a2);
      if (sub_2394053C4(v8, v6, a2))
      {
        if (sub_239406758(a1))
        {
          return 1;
        }
      }
    }

    v4 = 118;
    v5 = 52;
  }

  sub_2394170F4(3, 0, v4, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/bn_extra/bn_asn1.c", v5);
  return 0;
}

uint64_t sub_2394053C4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = 0;
  result = sub_239406C9C(a1, &v6, a2);
  if (result)
  {
    return sub_2394227EC(v6, a2, a3) != 0;
  }

  return result;
}

void *sub_23940541C(uint64_t a1)
{
  v2 = sub_239421E5C(a1);
  v3 = sub_23945004C((16 * v2) | 3);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    if (*(a1 + 16))
    {
      *v3 = 45;
      v5 = v3 + 1;
    }

    if (sub_239421914(a1))
    {
      *v5++ = 48;
    }

    if (v2 >= 1)
    {
      v6 = 0;
      v7 = v2;
      do
      {
        v8 = v7--;
        for (i = 56; i != -8; i -= 8)
        {
          v10 = *(*a1 + 8 * v7) >> i;
          v6 |= v10;
          if (v6)
          {
            *v5 = a0123456789abcd_5[v10 >> 4];
            v5[1] = a0123456789abcd_5[v10 & 0xF];
            v5 += 2;
            v6 = 1;
          }
        }
      }

      while (v8 >= 2);
    }

    *v5 = 0;
  }

  return v4;
}

uint64_t sub_23940552C(uint64_t *a1, _BYTE *a2, unsigned int (*a3)(uint64_t, uint64_t, void), unsigned int (*a4)(void))
{
  if (!a2)
  {
    return 0;
  }

  v4 = *a2;
  if (*a2)
  {
    v8 = (v4 == 45 ? a2 + 1 : a2);
    v9 = v4 == 45;
    v10 = (v4 == 45) - 0x7FFFFFFFLL;
    v11 = 1;
    v12 = v8;
    do
    {
      v13 = *v12++;
      --v11;
      if (a4(v13))
      {
        v14 = v10 == 0;
      }

      else
      {
        v14 = 1;
      }

      ++v10;
    }

    while (!v14);
    v4 = (v9 - v11);
    if (a1)
    {
      v15 = *a1;
      if (*a1)
      {
        sub_239422198(*a1);
      }

      else
      {
        v15 = sub_239421E8C();
        if (!v15)
        {
          return 0;
        }
      }

      if (a3(v15, v8, -v11))
      {
        sub_239421790(v15);
        if (!sub_239421914(v15))
        {
          *(v15 + 16) = v9;
        }

        *a1 = v15;
        return v4;
      }

      if (!*a1)
      {
        sub_239421EC8(v15);
      }

      return 0;
    }
  }

  return v4;
}

uint64_t sub_239405628(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 < 0x20000000)
  {
    v4 = a3;
    result = sub_23942237C(a1, 4 * a3);
    if (result)
    {
      if (v4 < 1)
      {
        v13 = 0;
      }

      else
      {
        v7 = 0;
        do
        {
          v8 = 0;
          if (v4 >= 0x10)
          {
            v9 = 16;
          }

          else
          {
            v9 = v4;
          }

          v10 = v9 + 1;
          v11 = (a2 - v9 + v4);
          do
          {
            v15 = 0;
            v12 = *v11++;
            sub_2394503EC(&v15, v12);
            v8 = v15 | (16 * v8);
            --v10;
          }

          while (v10 > 1);
          v13 = v7 + 1;
          *(*a1 + 8 * v7++) = v8;
          v14 = v4 > 0x10;
          if (v4 >= 0x10)
          {
            v4 -= 16;
          }

          else
          {
            v4 = 0;
          }
        }

        while (v14);
      }

      *(a1 + 8) = v13;
      return 1;
    }
  }

  else
  {
    sub_2394170F4(3, 0, 102, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/bn_extra/convert.c", 116);
    return 0;
  }

  return result;
}

uint64_t sub_239405728(uint64_t a1)
{
  memset(v17, 0, sizeof(v17));
  if (!sub_2394065F4(v17, 0x10uLL) || !sub_239406ACC(v17, 0))
  {
    v2 = 0;
    goto LABEL_7;
  }

  if (!sub_239421914(a1))
  {
    v4 = sub_239421F2C(a1);
    v2 = v4;
    if (v4)
    {
      if (!sub_239421914(v4))
      {
        while (1)
        {
          v9 = sub_2394247C0(v2, 0x8AC7230489E80000);
          if (v9 == -1)
          {
            goto LABEL_7;
          }

          v10 = v9;
          v11 = sub_239421914(v2);
          if (!v11 || v10)
          {
            v12 = 0;
            while (sub_239406ACC(v17, (v10 % 0xA) | 0x30))
            {
              v14 = !v11 || v10 > 9;
              if (v12 <= 0x11)
              {
                ++v12;
                v10 /= 0xAuLL;
                if (v14)
                {
                  continue;
                }
              }

              goto LABEL_20;
            }

            goto LABEL_7;
          }

LABEL_20:
          if (sub_239421914(v2))
          {
            goto LABEL_10;
          }
        }
      }

      goto LABEL_10;
    }

LABEL_7:
    sub_239421EC8(v2);
    sub_239406688(v17);
    return 0;
  }

  v2 = 0;
  if (!sub_239406ACC(v17, 0x30u))
  {
    goto LABEL_7;
  }

LABEL_10:
  if (sub_23942236C(a1) && !sub_239406ACC(v17, 0x2Du))
  {
    goto LABEL_7;
  }

  v15 = 0;
  v16 = 0;
  if (!sub_2394066A4(v17, &v16, &v15))
  {
    goto LABEL_7;
  }

  v5 = v15;
  if (v15 >= 2)
  {
    v6 = 0;
    v7 = -1;
    do
    {
      v8 = *(v16 + v6);
      *(v16 + v6) = *(v16 + v5 + v7);
      *(v16 + v15 + v7) = v8;
      ++v6;
      v5 = v15;
      --v7;
    }

    while (v6 < v15 >> 1);
  }

  sub_239421EC8(v2);
  return v16;
}

uint64_t sub_239405940(uint64_t a1, char *a2, unsigned int a3)
{
  if (a3 < 1)
  {
    return 1;
  }

  v5 = 0;
  if (a3 % 0x13)
  {
    LODWORD(result) = 19 - a3 % 0x13;
  }

  else
  {
    LODWORD(result) = 0;
  }

  v7 = a3;
  do
  {
    v8 = *a2++;
    v5 = v8 + 10 * v5 - 48;
    LODWORD(result) = result + 1;
    if (result == 19)
    {
      result = sub_23942A658(a1, 0x8AC7230489E80000);
      if (!result)
      {
        return result;
      }

      v9 = sub_2394217D4(a1, v5);
      result = 0;
      if (!v9)
      {
        return result;
      }

      v5 = 0;
    }

    --v7;
  }

  while (v7);
  return 1;
}

uint64_t sub_239405A20(uint64_t *a1, _BYTE *a2)
{
  v2 = a2;
  if (*a2 == 45)
  {
    ++a2;
  }

  if (*a2 == 48 && (a2[1] | 0x20) == 0x78)
  {
    v4 = sub_239405628;
    v5 = sub_2394503D0;
    a2 += 2;
  }

  else
  {
    v4 = sub_239405940;
    v5 = sub_2394503C0;
  }

  result = sub_23940552C(a1, a2, v4, v5);
  if (result)
  {
    if (*v2 == 45)
    {
      v7 = sub_239421914(*a1);
      result = 1;
      if (!v7)
      {
        *(*a1 + 16) = 1;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_239405AF4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && sub_239403738(a1, "-", 1) != 1 || sub_239421914(a2) && sub_239403738(a1, "0", 1) != 1)
  {
    return 0;
  }

  v4 = sub_239421E5C(a2);
  if (v4 < 1)
  {
    return 1;
  }

  v5 = 0;
  v6 = v4;
  do
  {
    v7 = v6--;
    for (i = 60; i != -4; i -= 4)
    {
      v9 = (*(*a2 + 8 * v6) >> i) & 0xFLL;
      if (v5 || v9)
      {
        v5 = 1;
        if (sub_239403738(a1, &a0123456789abcd_5[v9], 1) != 1)
        {
          return 0;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    result = 1;
  }

  while (v7 >= 2);
  return result;
}

void *sub_239405C0C(uint64_t a1, uint64_t a2)
{
  result = sub_2394042E8();
  if (result)
  {
    v4 = result;
    v5 = sub_239405AF4(result, a2);
    sub_239403520(v4);
    return v5;
  }

  return result;
}

unint64_t sub_239405C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_239422114(a1);
  v5 = (v4 & 7) != 0 || v4 == 0;
  v6 = !v5;
  if (v5)
  {
    v7 = (v4 + 7) >> 3;
  }

  else
  {
    v7 = ((v4 + 7) >> 3) + 1;
  }

  if (a2)
  {
    *a2 = bswap32(v7);
    if (v6)
    {
      *(a2 + 4) = 0;
    }

    v8 = (a2 + 4);
    sub_239422704(a1, &v8[v6]);
    if (*(a1 + 16) && v7)
    {
      *v8 |= 0x80u;
    }
  }

  return v7 + 4;
}

void *sub_239405CE0(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2 <= 3)
  {
    v3 = 411;
LABEL_11:
    sub_2394170F4(3, 0, 117, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/bn_extra/convert.c", v3);
    return 0;
  }

  v5 = bswap32(*a1);
  if (v5 != a2 - 4)
  {
    v3 = 419;
    goto LABEL_11;
  }

  v7 = a3;
  if (a3 || (v7 = sub_239421E8C()) != 0)
  {
    if (!v5)
    {
      sub_239422198(v7);
      return v7;
    }

    if (!sub_23942253C((a1 + 4), v5, v7))
    {
      if (!a3)
      {
        sub_239421EC8(v7);
      }

      return 0;
    }

    v8 = *(a1 + 4);
    *(v7 + 4) = (v8 >> 7) & 1;
    if ((v8 & 0x80000000) != 0)
    {
      v9 = sub_239422114(v7);
      sub_23942C7A0(v7, v9 - 1);
    }
  }

  return v7;
}

uint64_t sub_239405DD8(uint64_t a1, char *a2, unsigned int a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (sub_2394227EC(a2, a3, a1))
  {
    return a3;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_239405E20(char **a1, char *__dst, unsigned int a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (sub_239422754(__dst, a3, a1))
  {
    return a3;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_239405E70(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) >= a2)
  {
    return 1;
  }

  if (a2 >= 0xFFFFFFFFFFFFFFFDLL)
  {
    v2 = 85;
LABEL_9:
    sub_2394170F4(7, 0, 69, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/buf/buf.c", v2);
    return 0;
  }

  if (a2 >= 0xBFFFFFFFFFFFFFFDLL)
  {
    v2 = 91;
    goto LABEL_9;
  }

  v5 = (2 * (((a2 + 3) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
  result = sub_2394501A0(*(a1 + 8), v5);
  if (result)
  {
    *(a1 + 8) = result;
    *(a1 + 16) = v5;
    return 1;
  }

  return result;
}

unint64_t sub_239405F30(unint64_t *a1, unint64_t a2)
{
  v2 = a2;
  if (!sub_239405E70(a1, a2))
  {
    return 0;
  }

  if (v2 > *a1)
  {
    bzero((a1[1] + *a1), v2 - *a1);
  }

  *a1 = v2;
  return v2;
}

uint64_t sub_239405F88(void *a1, const void *a2, size_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v5 = *a1 + a3;
  if (__CFADD__(*a1, a3))
  {
    sub_2394170F4(7, 0, 69, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/buf/buf.c", 127);
    return 0;
  }

  else
  {
    result = sub_239405E70(a1, *a1 + a3);
    if (result)
    {
      memcpy((a1[1] + *a1), a2, a3);
      *a1 = v5;
      return 1;
    }
  }

  return result;
}

uint64_t sub_23940603C(uint64_t a1, void **a2)
{
  __n = 0;
  __src = 0;
  if (!sub_2394066A4(a1, &__src, &__n))
  {
    sub_239406688(a1);
    return 0xFFFFFFFFLL;
  }

  if (__n >> 31)
  {
    sub_239450144(__src);
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      if (__n)
      {
        memcpy(v5, __src, __n);
        v6 = __n;
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
      *a2 = __src;
      __src = 0;
    }
  }

  sub_239450144(__src);
  return __n;
}

uint64_t sub_2394060F0(uint64_t a1, void *a2, void *a3)
{
  memset(v10, 0, sizeof(v10));
  v9 = 0;
  result = sub_2394061D4(a1, &v9, 0);
  if (result)
  {
    if (v9)
    {
      v8 = 0;
      if (!sub_2394065F4(v10, *(a1 + 8)) || !sub_2394062D8(a1, v10, 0, 0, 0) || !sub_2394066A4(v10, a3, &v8))
      {
        sub_239406688(v10);
        return 0;
      }

      v7 = v8;
      *a2 = *a3;
      a2[1] = v7;
    }

    else
    {
      result = sub_239407D5C(a1, a2, 0, 0);
      if (!result)
      {
        return result;
      }

      *a3 = 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_2394061D4(__int128 *a1, char *a2, unsigned int a3)
{
  if (a3 <= 0x80)
  {
    v12 = *a1;
    *a2 = 0;
    v3 = 1;
    if (!*(&v12 + 1))
    {
      return v3;
    }

    while (1)
    {
      v11[0] = 0;
      v11[1] = 0;
      v10 = 0;
      v9 = 0;
      v8 = 0;
      if (!sub_239407F2C(&v12, v11, &v10, &v9, a2, &v8))
      {
        break;
      }

      if (*a2)
      {
        return 1;
      }

      if ((v10 & 0x20000000) != 0)
      {
        if ((v10 & 0xDFFFFFFF) <= 0x1E && ((1 << v10) & 0x5E7C1010) != 0)
        {
          v3 = 1;
          *a2 = 1;
          return v3;
        }

        if (!sub_239407718(v11, v9) || !sub_2394061D4(v11, a2, a3 + 1))
        {
          return 0;
        }

        if (*a2)
        {
          return 1;
        }
      }

      if (!*(&v12 + 1))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2394062D8(__int128 *a1, uint64_t *a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5 > 0x80)
  {
    return 0;
  }

  v29 = v5;
  v30 = v6;
  while (1)
  {
    v13 = *(a1 + 1);
    if (!v13)
    {
      return a4 == 0;
    }

    if (a4 && v13 != 1 && !**a1 && !*(*a1 + 1) && sub_239407718(a1, 2uLL))
    {
      return 1;
    }

    v27 = 0;
    v28 = 0;
    v26 = 0;
    v25 = 0;
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    if (!sub_239407F2C(a1, &v27, &v26, &v25, 0, &v24))
    {
      return 0;
    }

    v14 = v26;
    if (a3)
    {
      v15 = a3;
      v16 = a2;
      if ((v26 & 0xDFFFFFFF) != a3)
      {
        return 0;
      }
    }

    else
    {
      if (v26 & 0x20000000) != 0 && (v17 = (v26 & 0xDFFFFFFF) - 4, v17 <= 0x1A) && ((0x5E7C101u >> (v26 - 4)))
      {
        v15 = dword_2395C30CC[v17];
        v14 = dword_2395C30CC[v17];
      }

      else
      {
        v15 = 0;
      }

      v16 = v23;
      if (!sub_239406A10(a2, v23, v14))
      {
        return 0;
      }
    }

    if (v24)
    {
      v18 = a5 + 1;
      v19 = a1;
      v20 = v16;
      v21 = v15;
      v22 = 1;
    }

    else
    {
      if (!sub_239407718(&v27, v25))
      {
        return 0;
      }

      if ((v26 & 0x20000000) == 0)
      {
        if (!sub_239406C48(v16, v27, v28))
        {
          return 0;
        }

        goto LABEL_28;
      }

      v19 = &v27;
      v18 = a5 + 1;
      v20 = v16;
      v21 = v15;
      v22 = 0;
    }

    if (!sub_2394062D8(v19, v20, v21, v22, v18))
    {
      return 0;
    }

LABEL_28:
    result = sub_239406758(a2);
    if (!result)
    {
      return result;
    }
  }
}

uint64_t sub_2394064B8(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  if (sub_239408024(a1, a4))
  {
    *a3 = 0;

    return sub_239407F5C(a1, a2, a4);
  }

  else
  {
    memset(v18, 0, sizeof(v18));
    v17 = 0uLL;
    if (!sub_2394065F4(v18, *(a1 + 8)) || !sub_239407F5C(a1, &v17, a4 | 0x20000000u))
    {
      goto LABEL_13;
    }

    while (*(&v17 + 1))
    {
      v15 = 0;
      v16 = 0;
      if (!sub_239407F5C(&v17, &v15, a5) || !sub_239406C48(v18, v15, v16))
      {
        goto LABEL_13;
      }
    }

    v13 = 0;
    v14 = 0;
    if (sub_2394066A4(v18, &v14, &v13))
    {
      v12 = v13;
      v11 = v14;
      *a2 = v14;
      a2[1] = v12;
      *a3 = v11;
      return 1;
    }

    else
    {
LABEL_13:
      sub_239406688(v18);
      return 0;
    }
  }
}

double sub_2394065E4(_OWORD *a1)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_2394065F4(uint64_t a1, unint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = sub_23945004C(a2);
  if (!a2 || result)
  {
    *(a1 + 8) = 0;
    *a1 = 0;
    *(a1 + 16) = result;
    *(a1 + 24) = 0;
    *(a1 + 32) = a2;
    *(a1 + 40) = *(a1 + 40) & 0xFC | 1;
    return 1;
  }

  return result;
}

uint64_t sub_239406658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 8) = 0;
  *a1 = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  *(a1 + 40) &= 0xFCu;
  return 1;
}

void sub_239406688(uint64_t a1)
{
  if (!*(a1 + 8) && (*(a1 + 40) & 1) != 0)
  {
    sub_239450144(*(a1 + 16));
  }
}

uint64_t sub_2394066A4(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 8))
  {
    sub_2394170F4(14, 0, 66, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/bytestring/cbb.c", 127);
    return 0;
  }

  result = sub_239406758(a1);
  if (result)
  {
    if (*(a1 + 40))
    {
      result = 0;
      if (!a2 || !a3)
      {
        return result;
      }
    }

    else if (!a2)
    {
      goto LABEL_10;
    }

    *a2 = *(a1 + 16);
LABEL_10:
    if (a3)
    {
      *a3 = *(a1 + 24);
    }

    *(a1 + 16) = 0;
    if (!*(a1 + 8) && (*(a1 + 40) & 1) != 0)
    {
      sub_239450144(0);
    }

    return 1;
  }

  return result;
}

uint64_t sub_239406758(uint64_t *a1)
{
  v2 = (a1 + 2);
  v3 = (a1 + 2);
  if (*(a1 + 8))
  {
    v3 = *v2;
    if (!*v2)
    {
      return 0;
    }
  }

  if ((*(v3 + 24) & 2) != 0)
  {
    return 0;
  }

  v4 = *a1;
  if (!*a1)
  {
    return 1;
  }

  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  if (!sub_239406758(*a1))
  {
    goto LABEL_31;
  }

  v7 = v5 + v6;
  v8 = *(v4 + 24);
  if (v5 + v6 < v8)
  {
    goto LABEL_31;
  }

  v9 = *(v3 + 8);
  v10 = v9 - v7;
  if (v9 < v7)
  {
    goto LABEL_31;
  }

  if ((*(v4 + 33) & 1) == 0)
  {
    LODWORD(v11) = *(v4 + 32);
    goto LABEL_25;
  }

  if (v10 > 0xFFFFFFFE)
  {
    v13 = 221;
LABEL_30:
    sub_2394170F4(14, 0, 69, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/bytestring/cbb.c", v13);
    goto LABEL_31;
  }

  if (v10 >> 24)
  {
    v14 = -124;
    v15 = 4;
LABEL_22:
    v11 = v15;
    if (!sub_239406DB4(v3, 0, v15))
    {
LABEL_31:
      if (*(a1 + 8))
      {
        v2 = *v2;
      }

      result = 0;
      *(v2 + 24) |= 2u;
      goto LABEL_34;
    }

    v16 = *v3;
    *(v3 + 8) += v11;
    memmove((v16 + v7 + v11), (v16 + v7), v10);
    v8 = *(v4 + 24);
    goto LABEL_24;
  }

  if (v10 >> 16)
  {
    v14 = -125;
    v15 = 3;
    goto LABEL_22;
  }

  if (v10 > 0xFF)
  {
    v14 = -126;
    v15 = 2;
    goto LABEL_22;
  }

  if (v10 > 0x7F)
  {
    v14 = -127;
    v15 = 1;
    goto LABEL_22;
  }

  LODWORD(v11) = 0;
  v14 = v9 - v7;
  v10 = 0;
LABEL_24:
  v17 = *v3;
  *(v4 + 24) = v8 + 1;
  *(v17 + v8) = v14;
  *(v4 + 32) = v11;
LABEL_25:
  if (v11)
  {
    v18 = v11 - 1;
    do
    {
      *(*v3 + *(v4 + 24) + v18) = v10;
      v10 >>= 8;
      --v18;
    }

    while (v18 < *(v4 + 32));
  }

  if (v10)
  {
    v13 = 260;
    goto LABEL_30;
  }

  *(v4 + 16) = 0;
  result = 1;
LABEL_34:
  *a1 = 0;
  return result;
}

void *sub_239406940(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(a1 + 16);
  if (v2)
  {
    return (*result + *(a1 + 24) + *(a1 + 32));
  }

  return result;
}

uint64_t sub_239406968(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return *(*(a1 + 16) + 8) - (*(a1 + 24) + *(a1 + 32));
  }

  else
  {
    return *(a1 + 24);
  }
}

uint64_t sub_239406998(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  result = sub_239406758(a1);
  if (result)
  {

    return sub_239406B84(a1, a2, a3, 0);
  }

  return result;
}

uint64_t sub_239406A10(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  if (!sub_239406758(a1))
  {
    return 0;
  }

  if ((a3 & 0x1FFFFFFF) < 0x1F)
  {
    if (!sub_239406ED0(a1, HIBYTE(a3) & 0xE0 | a3, 1uLL))
    {
      return 0;
    }
  }

  else if (!sub_239406ED0(a1, HIBYTE(a3) | 0x1F, 1uLL) || !sub_239406AD8(a1, a3 & 0x1FFFFFFF))
  {
    return 0;
  }

  return sub_239406B84(a1, a2, 1u, 1);
}

BOOL sub_239406AD8(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  if (a2)
  {
    v5 = a2;
    do
    {
      ++v4;
      v6 = v5 > 0x7F;
      v5 >>= 7;
    }

    while (v6);
  }

  if (v4 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7 - 1;
  v9 = 7 * v7 - 7;
  do
  {
    v10 = v8;
    if (v8 >= v7)
    {
      break;
    }

    v11 = sub_239406ED0(a1, (a2 >> v9) & 0x7F | ((v8 != 0) << 7), 1uLL);
    v8 = v10 - 1;
    v9 -= 7;
  }

  while (v11);
  return v10 >= v7;
}

uint64_t sub_239406B84(uint64_t a1, uint64_t a2, unsigned int a3, char a4)
{
  v8 = (a1 + 16);
  if (*(a1 + 8))
  {
    v8 = *v8;
  }

  v9 = v8[1];
  v11 = 0;
  result = sub_239406DB4(v8, &v11, a3);
  if (result)
  {
    v8[1] += a3;
    if (a3)
    {
      bzero(v11, a3);
    }

    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    result = 1;
    *(a2 + 8) = 1;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
    *(a2 + 32) = a3;
    *(a2 + 33) = *(a2 + 33) & 0xFE | a4 & 1;
    *a1 = a2;
  }

  return result;
}

uint64_t sub_239406C48(uint64_t a1, const void *a2, size_t a3)
{
  __dst = 0;
  result = sub_239406C9C(a1, &__dst, a3);
  if (result)
  {
    if (a3)
    {
      memcpy(__dst, a2, a3);
    }

    return 1;
  }

  return result;
}

uint64_t sub_239406C9C(uint64_t a1, void *a2, uint64_t a3)
{
  result = sub_239406758(a1);
  if (result)
  {
    v7 = *(a1 + 8);
    v8 = (a1 + 16);
    if (v7)
    {
      v8 = *v8;
    }

    result = sub_239406DB4(v8, a2, a3);
    if (result)
    {
      v8[1] += a3;
      return 1;
    }
  }

  return result;
}

uint64_t sub_239406D08(uint64_t a1, size_t a2)
{
  v4 = 0;
  result = sub_239406C9C(a1, &v4, a2);
  if (result)
  {
    if (a2)
    {
      bzero(v4, a2);
    }

    return 1;
  }

  return result;
}

uint64_t sub_239406D58(uint64_t a1, void *a2, uint64_t a3)
{
  result = sub_239406758(a1);
  if (result)
  {
    v7 = (a1 + 16);
    if (*(a1 + 8))
    {
      v7 = *v7;
    }

    return sub_239406DB4(v7, a2, a3) != 0;
  }

  return result;
}

uint64_t sub_239406DB4(uint64_t result, void *a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 8);
    v5 = __CFADD__(v4, a3);
    v6 = v4 + a3;
    if (v5)
    {
      v7 = 81;
LABEL_5:
      sub_2394170F4(14, 0, 69, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/bytestring/cbb.c", v7);
LABEL_6:
      result = 0;
      *(v3 + 24) |= 2u;
      return result;
    }

    v9 = *(result + 16);
    if (v6 > v9)
    {
      if ((*(result + 24) & 1) == 0)
      {
        v7 = 87;
        goto LABEL_5;
      }

      v10 = 2 * v9;
      if (2 * v9 <= v6)
      {
        v10 = v6;
      }

      if (v9 >= 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = v6;
      }

      v12 = sub_2394501A0(*result, v11);
      if (!v12)
      {
        goto LABEL_6;
      }

      *v3 = v12;
      *(v3 + 16) = v11;
    }

    if (a2)
    {
      *a2 = *v3 + *(v3 + 8);
    }

    return 1;
  }

  return result;
}

uint64_t sub_239406E80(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 16);
  if (*(a1 + 8))
  {
    v3 = *v3;
  }

  result = 0;
  v5 = v3[1];
  v6 = __CFADD__(v5, a2);
  v7 = v5 + a2;
  v8 = v6;
  if (!*a1 && (v8 & 1) == 0)
  {
    if (v7 <= v3[2])
    {
      v3[1] = v7;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_239406ED0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v9 = 0;
  result = sub_239406C9C(a1, &v9, a3);
  if (result)
  {
    if (a3)
    {
      v7 = a3 - 1;
      do
      {
        *(v9 + v7) = a2;
        a2 >>= 8;
        --v7;
      }

      while (v7 < a3);
    }

    if (a2)
    {
      v8 = a1 + 16;
      if (*(a1 + 8))
      {
        v8 = *v8;
      }

      result = 0;
      *(v8 + 24) |= 2u;
      *a1 = 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

_BYTE *sub_239406FB8(_BYTE *result)
{
  if (*result)
  {
    v1 = result + 16;
    if (result[8])
    {
      v1 = *v1;
    }

    v1[1] = *(*result + 24);
    *(*result + 16) = 0;
    *result = 0;
  }

  return result;
}

uint64_t sub_239406FF0(uint64_t a1, unint64_t a2, unsigned int a3)
{
  memset(v9, 0, sizeof(v9));
  if (!sub_239406A10(a1, v9, a3))
  {
LABEL_13:
    v8 = (a1 + 16);
    if (*(a1 + 8))
    {
      v8 = *v8;
    }

    result = 0;
    *(v8 + 24) |= 2u;
    *a1 = 0;
    return result;
  }

  v5 = 0;
  v6 = 1;
  do
  {
    while ((v6 & 1) == 0)
    {
LABEL_7:
      if (!sub_239406ED0(v9, (a2 >> (56 - 8 * v5)), 1uLL))
      {
        goto LABEL_13;
      }

      v6 = 0;
      if (++v5 == 8)
      {
        return sub_239406758(a1);
      }
    }

    if ((a2 >> (56 - 8 * v5)))
    {
      if (((a2 >> (56 - 8 * v5)) & 0x80) != 0 && !sub_239406ED0(v9, 0, 1uLL))
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }

    ++v5;
    v6 = 1;
  }

  while (v5 != 8);
  if (!sub_239406ED0(v9, 0, 1uLL))
  {
    goto LABEL_13;
  }

  return sub_239406758(a1);
}

uint64_t sub_239407100(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if ((a2 & 0x8000000000000000) != 0)
  {
    v12[0] = a2;
    v6 = 7;
    do
    {
      LODWORD(v7) = v6;
      if (!v6)
      {
        break;
      }

      if (*(v12 + v6) != 255)
      {
        break;
      }

      --v6;
    }

    while (*(v12 + v6) < 0);
    memset(v11, 0, sizeof(v11));
    if (sub_239406A10(a1, v11, a3))
    {
      v7 = v7;
      while (sub_239406ED0(v11, *(v12 + v7), 1uLL))
      {
        if (v7-- < 1)
        {
          result = sub_239406758(a1);
          goto LABEL_18;
        }
      }
    }

    v9 = a1 + 16;
    if (*(a1 + 8))
    {
      v9 = *v9;
    }

    result = 0;
    *(v9 + 24) |= 2u;
    *a1 = 0;
LABEL_18:
    v10 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v4 = *MEMORY[0x277D85DE8];

    return sub_239406FF0(a1, a2, a3);
  }

  return result;
}

uint64_t sub_23940723C(uint64_t a1, const void *a2, size_t a3)
{
  memset(v8, 0, sizeof(v8));
  if (sub_239406A10(a1, v8, 4u) && sub_239406C48(v8, a2, a3) && sub_239406758(a1))
  {
    return 1;
  }

  v7 = (a1 + 16);
  if (*(a1 + 8))
  {
    v7 = *v7;
  }

  result = 0;
  *(v7 + 24) |= 2u;
  *a1 = 0;
  return result;
}

uint64_t sub_2394072DC(uint64_t a1, int a2)
{
  memset(v7, 0, sizeof(v7));
  if (sub_239406A10(a1, v7, 1u))
  {
    v4 = a2 ? 255 : 0;
    if (sub_239406ED0(v7, v4, 1uLL) && sub_239406758(a1))
    {
      return 1;
    }
  }

  v6 = (a1 + 16);
  if (*(a1 + 8))
  {
    v6 = *v6;
  }

  result = 0;
  *(v6 + 24) |= 2u;
  *a1 = 0;
  return result;
}

uint64_t sub_239407378(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_239406758(a1);
  if (result)
  {
    v11 = a2;
    v12 = a3;
    v9 = 0;
    v10 = 0;
    result = sub_23940745C(&v11, &v10);
    if (result)
    {
      result = sub_23940745C(&v11, &v9);
      if (result)
      {
        if (v10 <= 2)
        {
          result = 0;
          if ((v9 <= 0x27 || v10 == 2) && v9 <= 0xFFFFFFFFFFFFFFAFLL)
          {
            result = sub_239406AD8(a1, v9 + 40 * v10);
            if (result)
            {
              while (v12)
              {
                result = sub_23940745C(&v11, &v10);
                if (result)
                {
                  v8 = sub_239406AD8(a1, v10);
                  result = 0;
                  if (v8)
                  {
                    continue;
                  }
                }

                return result;
              }

              return 1;
            }
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

BOOL sub_23940745C(uint64_t a1, unint64_t *a2)
{
  result = sub_239407BFC(a1, a2);
  if (result)
  {
    v4 = 0;
    if (sub_239407860(a1, &v4))
    {
      return v4 == 46 && *(a1 + 8) != 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2394074C8(uint64_t a1)
{
  if (!sub_239406758(a1))
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (*(a1 + 8))
  {
    v3 = *(a1 + 24) + *(a1 + 32);
    v4 = (v3 + *v2);
    v5 = v2[1] - v3;
    v2 = v4;
  }

  else
  {
    v5 = *(a1 + 24);
  }

  *&v22 = v2;
  *(&v22 + 1) = v5;
  if (!v5)
  {
    return 1;
  }

  v6 = 0;
  do
  {
    if (!sub_239407D5C(&v22, 0, 0, 0))
    {
      sub_2394170F4(14, 0, 66, "../../../../../../../../Sources/CHIPFramework/connectedhomeip/third_party/boringssl/repo/src/crypto/bytestring/cbb.c", 676);
      return 0;
    }

    ++v6;
  }

  while (*(&v22 + 1));
  if (v6 < 2)
  {
    return 1;
  }

  if (*(a1 + 8))
  {
    v9 = *(a1 + 24) + *(a1 + 32);
    v10 = *(*(a1 + 16) + 8) - v9;
    v11 = (v9 + **(a1 + 16));
  }

  else
  {
    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
  }

  v12 = sub_239450350(v11, v10);
  v13 = sub_2394500F0(v6, 0x10uLL);
  v14 = v13;
  if (v12)
  {
    v15 = v13 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    *&v22 = v12;
    *(&v22 + 1) = v10;
    v16 = v13;
    v17 = v6;
    while (sub_239407D5C(&v22, v16, 0, 0))
    {
      v16 += 2;
      if (!--v17)
      {
        qsort(v14, v6, 0x10uLL, sub_2394076B4);
        v18 = *(a1 + 16);
        if (*(a1 + 8))
        {
          v18 = (*v18 + *(a1 + 24) + *(a1 + 32));
        }

        v19 = 0;
        v20 = v14 + 1;
        do
        {
          if (*v20)
          {
            memcpy(v18 + v19, *(v20 - 1), *v20);
            v21 = *v20;
          }

          else
          {
            v21 = 0;
          }

          v19 += v21;
          v20 += 2;
          --v6;
        }

        while (v6);
        v7 = 1;
        goto LABEL_33;
      }
    }
  }

  v7 = 0;
LABEL_33:
  sub_239450144(v12);
  sub_239450144(v14);
  return v7;
}

uint64_t sub_2394076B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 >= v3)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = *(a1 + 8);
  }

  if (v4)
  {
    result = memcmp(*a1, *a2, v4);
    if (v2 < v3)
    {
      LODWORD(v6) = -1;
    }

    else
    {
      LODWORD(v6) = 1;
    }

    if (v2 == v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = v6;
    }

    if (!result)
    {
      return v6;
    }
  }

  else
  {
    if (v2 < v3)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    if (v2 == v3)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_239407718(void *a1, unint64_t a2)
{
  v2 = a1[1];
  v3 = v2 >= a2;
  v4 = v2 - a2;
  if (!v3)
  {
    return 0;
  }

  *a1 += a2;
  a1[1] = v4;
  return 1;
}

uint64_t sub_239407740(uint64_t a1, uint64_t *a2, void *a3)
{
  sub_239450144(*a2);
  *a2 = 0;
  *a3 = 0;
  v6 = *(a1 + 8);
  if (v6)
  {
    result = sub_239450350(*a1, v6);
    *a2 = result;
    if (!result)
    {
      return result;
    }

    *a3 = *(a1 + 8);
  }

  return 1;
}

BOOL sub_2394077A4(uint64_t a1, void **a2)
{
  if (*a2)
  {
    sub_239450144(*a2);
  }

  v4 = sub_23945071C(*a1, *(a1 + 8));
  *a2 = v4;
  return v4 != 0;
}

uint64_t sub_239407860(void *a1, _BYTE *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = (*a1)++;
  a1[1] = v2 - 1;
  *a2 = *v3;
  return 1;
}

uint64_t sub_239407890(unsigned __int16 **a1, _WORD *a2)
{
  v2 = a1[1];
  v3 = v2 >= 2;
  v4 = v2 - 2;
  if (!v3)
  {
    return 0;
  }

  v6 = (*a1)++;
  a1[1] = v4;
  *a2 = bswap32(*v6) >> 16;
  return 1;
}

uint64_t sub_2394078C8(uint64_t a1, _WORD *a2)
{
  v2 = *(a1 + 8);
  v3 = v2 >= 2;
  v4 = v2 - 2;
  if (!v3)
  {
    return 0;
  }

  v6 = *a1;
  *a1 += 2;
  *(a1 + 8) = v4;
  *a2 = *v6;
  return 1;
}

uint64_t sub_2394078F8(uint64_t *a1, int *a2)
{
  v2 = a1[1];
  v3 = v2 - 3;
  if (v2 < 3)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = *a1;
  *a1 += 3;
  a1[1] = v3;
  do
  {
    v6 = *(v7 + v5++) | (v6 << 8);
  }

  while (v5 != 3);
  *a2 = v6;
  return 1;
}

uint64_t sub_239407940(uint64_t *a1, int *a2)
{
  v2 = a1[1];
  v3 = v2 - 4;
  if (v2 < 4)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = *a1;
  *a1 += 4;
  a1[1] = v3;
  do
  {
    v6 = *(v7 + v5++) | (v6 << 8);
  }

  while (v5 != 4);
  *a2 = v6;
  return 1;
}

uint64_t sub_239407988(uint64_t *a1, _DWORD *a2)
{
  v2 = a1[1];
  v3 = v2 - 4;
  if (v2 < 4)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = *a1;
  *a1 += 4;
  a1[1] = v3;
  do
  {
    v6 = *(v7 + v5++) | (v6 << 8);
  }

  while (v5 != 4);
  *a2 = bswap32(v6);
  return 1;
}

uint64_t sub_2394079D4(uint64_t *a1, unint64_t *a2)
{
  v2 = a1[1];
  v3 = v2 - 8;
  if (v2 < 8)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = *a1;
  *a1 += 8;
  a1[1] = v3;
  do
  {
    v6 = *(v7 + v5++) | (v6 << 8);
  }

  while (v5 != 8);
  *a2 = v6;
  return 1;
}

uint64_t sub_239407A1C(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = v2 - 8;
  if (v2 < 8)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = *a1;
  *a1 += 8;
  a1[1] = v3;
  do
  {
    v6 = *(v7 + v5++) | (v6 << 8);
  }

  while (v5 != 8);
  *a2 = bswap64(v6);
  return 1;
}

uint64_t sub_239407A68(void *a1, _BYTE *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  *a2 = *(*a1 + v2 - 1);
  --a1[1];
  return 1;
}

uint64_t sub_239407A9C(uint64_t *a1, void *a2, unint64_t a3)
{
  v3 = a1[1];
  v4 = v3 >= a3;
  v5 = v3 - a3;
  if (!v4)
  {
    return 0;
  }

  v7 = *a1;
  *a1 += a3;
  a1[1] = v5;
  *a2 = v7;
  a2[1] = a3;
  return 1;
}

uint64_t sub_239407AC8(uint64_t a1, void *__dst, size_t a3)
{
  v3 = *(a1 + 8);
  v4 = v3 - a3;
  if (v3 < a3)
  {
    return 0;
  }

  v6 = *a1;
  *a1 += a3;
  *(a1 + 8) = v4;
  if (a3)
  {
    memcpy(__dst, v6, a3);
  }

  return 1;
}

uint64_t sub_239407B24(unsigned __int8 **a1, unint64_t *a2, unint64_t a3)
{
  v3 = a1[1];
  v4 = v3 >= a3;
  v5 = v3 - a3;
  if (!v4)
  {
    return 0;
  }

  v6 = *a1;
  v7 = &(*a1)[a3];
  *a1 = v7;
  a1[1] = v5;
  v8 = 0;
  if (a3)
  {
    do
    {
      v9 = *v6++;
      v8 = v9 | (v8 << 8);
      --a3;
    }

    while (a3);
    if (v5 < v8)
    {
      return 0;
    }
  }

  *a1 = (v7 + v8);
  a1[1] = (v5 - v8);
  *a2 = v7;
  a2[1] = v8;
  return 1;
}

uint64_t sub_239407B8C(uint64_t a1, void *a2, int __c)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  v6 = *a1;
  result = memchr(*a1, __c, v3);
  if (!result)
  {
    return result;
  }

  if (v3 < result - v6)
  {
    return 0;
  }

  *a1 = result;
  *(a1 + 8) = v3 - (result - v6);
  *a2 = v6;
  a2[1] = result - v6;
  return 1;
}

BOOL sub_239407BFC(unsigned __int8 **a1, unint64_t *a2)
{
  if (!a1[1])
  {
    v6 = 0;
    result = 0;
    goto LABEL_14;
  }

  v4 = **a1;
  result = sub_2394503C0(v4);
  v6 = 0;
  if (!result)
  {
LABEL_14:
    *a2 = v6;
    return result;
  }

  v7 = 0;
  while (1)
  {
    v8 = a1[1];
    if (v8)
    {
      v9 = v8 - 1;
      ++*a1;
      a1[1] = v9;
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    result = 0;
    if (v6 > 0x1999999999999999 || ((v6 == 0) & v7) != 0)
    {
      return result;
    }

    if (__CFADD__(10 * v6, v4 - 48))
    {
      return 0;
    }

    v6 = 10 * v6 + v4 - 48;
    if (!v10)
    {
      v4 = **a1;
      v11 = sub_2394503C0(v4);
      v7 = 1;
      if (v11)
      {
        continue;
      }
    }

    result = 1;
    goto LABEL_14;
  }
}

uint64_t sub_239407CF0(__int128 *a1, void *a2, _DWORD *a3)
{
  v8 = 0;
  result = sub_239407D6C(a1, a2, a3, &v8, 0, 0, 0);
  if (result)
  {
    v5 = a2[1];
    v6 = v5 >= v8;
    v7 = v5 - v8;
    if (v6)
    {
      *a2 += v8;
      a2[1] = v7;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_239407D6C(__int128 *a1, void *a2, _DWORD *a3, unint64_t *a4, _DWORD *a5, _DWORD *a6, int a7)
{
  v31 = *a1;
  if (a7)
  {
    *a5 = 0;
    *a6 = 0;
  }

  v30 = 0;
  result = sub_239408074(&v31, &v30);
  if (result)
  {
    if (a3)
    {
      *a3 = v30;
    }

    if (!*(&v31 + 1))
    {
      return 0;
    }

    v15 = (v31 + 1);
    v16 = *v31;
    v17 = *(a1 + 1) - (*(&v31 + 1) - 1);
    if ((*v31 & 0x80000000) == 0)
    {
      v18 = v17 + v16;
      if (!a4)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v22 = v16 & 0x7F;
    if (a7)
    {
      if (!v22 && (v30 & 0x20000000) != 0)
      {
        if (a4)
        {
          *a4 = v17;
        }

        *a5 = 1;
        *a6 = 1;
        v28 = *(a1 + 1);
        v24 = v28 >= v17;
        v29 = v28 - v17;
        if (!v24)
        {
          return 0;
        }

        v21 = *a1;
        *a1 += v17;
        *(a1 + 1) = v29;
        if (a2)
        {
LABEL_13:
          *a2 = v21;
          a2[1] = v17;
        }

        return 1;
      }
    }

    v24 = (v22 - 5) >= 0xFFFFFFFC && *(&v31 + 1) - 1 >= v22;
    if (!v24)
    {
      return 0;
    }

    v25 = 0;
    v26 = v22;
    do
    {
      v27 = *v15++;
      v25 = v27 | (v25 << 8);
      --v26;
    }

    while (v26);
    if (v25 > 0x7F)
    {
      if (v25 >> (8 * v22 - 8))
      {
        goto LABEL_41;
      }

      if (!a7)
      {
        return 0;
      }
    }

    else
    {
      if (!a7)
      {
        return 0;
      }

      *a5 = 1;
      if (v25 >> (8 * v22 - 8))
      {
LABEL_41:
        v17 += v22;
        if (!__CFADD__(v25, v17))
        {
          v18 = v25 + v17;
          if (!a4)
          {
LABEL_10:
            v19 = *(a1 + 1);
            v24 = v19 >= v18;
            v20 = v19 - v18;
            if (!v24)
            {
              return 0;
            }

            v21 = *a1;
            *a1 += v18;
            *(a1 + 1) = v20;
            v17 = v18;
            if (a2)
            {
              goto LABEL_13;
            }

            return 1;
          }

LABEL_9:
          *a4 = v17;
          goto LABEL_10;
        }

        return 0;
      }
    }

    *a5 = 1;
    goto LABEL_41;
  }

  return result;
}

uint64_t sub_239407F2C(__int128 *a1, void *a2, _DWORD *a3, unint64_t *a4, char *a5, _DWORD *a6)
{
  if (!a5)
  {
    a5 = &v7;
  }

  return sub_239407D6C(a1, a2, a3, a4, a5, a6, 1);
}

uint64_t sub_239407F64(__int128 *a1, void *a2, int a3, int a4)
{
  v16 = 0;
  v15 = 0;
  v14[0] = 0;
  v14[1] = 0;
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v14;
  }

  if (sub_239407D6C(a1, v7, &v15, &v16, 0, 0, 0))
  {
    v8 = v15 == a3;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    return 0;
  }

  if (a4)
  {
    v9 = v14;
    if (a2)
    {
      v9 = a2;
    }

    v10 = v9[1];
    v11 = v10 >= v16;
    v12 = v10 - v16;
    if (!v11)
    {
      return 0;
    }

    *v7 += v16;
    v9[1] = v12;
  }

  return 1;
}

BOOL sub_239408024(__int128 *a1, int a2)
{
  v6 = *a1;
  v5 = 0;
  return sub_239408074(&v6, &v5) && v5 == a2;
}

uint64_t sub_239408074(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v4 = (*a1)++;
  a1[1] = v2 - 1;
  v5 = *v4;
  v6 = v5 & 0x1F;
  if (v6 != 31 || (v10 = 0, v7 = sub_2394088D0(a1, &v10), result = 0, v7) && (v6 = v10, v10 - 31 <= 0x1FFFFFE0))
  {
    v9 = v6 | (v5 << 24) & 0xE0000000;
    if ((v9 & 0xDFFFFFFF) != 0)
    {
      *a2 = v9;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_239408120(__int128 *a1, unint64_t *a2)
{
  v16 = 0;
  v17 = 0;
  result = sub_239407F64(a1, &v16, 2, 1);
  if (!result)
  {
    return result;
  }

  v4 = v17;
  if (!v17)
  {
    return 0;
  }

  v5 = v16;
  v6 = *v16;
  v7 = v17 - 1;
  if (v17 == 1)
  {
    v8 = 0;
    goto LABEL_14;
  }

  v9 = v16[1];
  if (!*v16 && (v9 & 0x80000000) == 0)
  {
    return 0;
  }

  v8 = v6 == 255 && (v9 & 0x80u) != 0;
LABEL_14:
  result = 0;
  if (!v8 && (v6 & 0x80000000) == 0)
  {
    v11 = 0;
    v12 = 0;
    *a2 = 0;
    do
    {
      *a2 = v12 << 8;
      v13 = v5[v11] | (v12 << 8);
      *a2 = v13;
      v14 = v11 + 1;
      if (v7 == v11)
      {
        break;
      }

      v15 = HIWORD(v12);
      ++v11;
      v12 = v13;
    }

    while (!v15);
    return v14 >= v4;
  }

  return result;
}

BOOL sub_2394081F8(unsigned __int8 **a1)
{
  v1 = a1[1];
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = **a1;
  v3 = v2 >> 7;
  if (v1 == 1)
  {
    v4 = 1;
    return !v3 && v4;
  }

  v5 = (*a1)[1];
  if (**a1 || v5 < 0)
  {
    v4 = v2 != 255 || (v5 & 0x80u) == 0;
  }

  else
  {
LABEL_6:
    v3 = 0;
    v4 = 0;
  }

  return !v3 && v4;
}