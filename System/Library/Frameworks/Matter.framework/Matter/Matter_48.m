uint64_t sub_2394F7868(uint64_t a1)
{
  result = *(a1 + 80);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t sub_2394F7898(uint64_t a1, const char *a2, int a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 5540;
  *(a1 + 40) = 0;
  *(a1 + 139) = 0;
  *(a1 + 28) = 0;
  *(a1 + 20) = 0;
  *(a1 + 36) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 228) = 0;
  *(a1 + 232) = a3;
  *(a1 + 228) = *a2;
  strncpy((a1 + 184), a2 + 98, 0x29uLL);
  *(a1 + 224) = 0;
  v7 = &a2[16 * a4];
  v8 = *(a2 + 48);
  v9 = sub_2393CFBB4(v7 + 4);
  v10 = *a2;
  if (!v9)
  {
    v10 = 0;
  }

  *a1 = *(v7 + 1);
  *(a1 + 16) = 1;
  *(a1 + 18) = v8;
  *(a1 + 20) = v10;
  *(a1 + 24) = 0;
  if (a2[148] == 1)
  {
    sub_2394F7984(a1, *(a2 + 36));
  }

  if (a2[156] == 1)
  {
    sub_2394F79E0(a1, *(a2 + 38));
  }

  return a1;
}

uint64_t sub_2394F7984(uint64_t a1, int a2)
{
  v4 = (a1 + 140);
  if ((*(a1 + 140) & 1) == 0)
  {
    v5 = sub_239476060();
    *(a1 + 140) = 1;
    *(a1 + 144) = v5;
    *(a1 + 152) = v6;
  }

  *sub_2393E1D9C(v4) = a2;
  return a1;
}

uint64_t sub_2394F79E0(uint64_t a1, int a2)
{
  v4 = (a1 + 140);
  if ((*(a1 + 140) & 1) == 0)
  {
    v5 = sub_239476060();
    *(a1 + 140) = 1;
    *(a1 + 144) = v5;
    *(a1 + 152) = v6;
  }

  *(sub_2393E1D9C(v4) + 1) = a2;
  return a1;
}

uint64_t sub_2394F7A44(uint64_t result, uint64_t a2, int a3, int a4)
{
  *(result + 40) = 0;
  *(result + 139) = 0;
  *(result + 32) = 0;
  *(result + 36) = 0;
  *(result + 160) = 0u;
  *(result + 176) = 0u;
  *(result + 192) = 0u;
  *(result + 208) = 0u;
  *(result + 224) = 0;
  *(result + 228) = 0;
  *(result + 232) = a3;
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 2;
  *(result + 18) = 5540;
  *(result + 20) = 0;
  v4 = 176;
  if (a4)
  {
    v4 = 168;
  }

  *(result + 24) = 0;
  *(result + v4) = a2;
  return result;
}

void sub_2394F7AA0(uint64_t a1)
{
  sub_2394F7B1C(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_2394F7AE0(uint64_t a1)
{
  sub_2394F7B1C(a1 - 8);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394F7B1C(uint64_t a1)
{
  *a1 = &unk_284BBF050;
  *(a1 + 8) = &unk_284BBF0F0;
  sub_2394F7B9C((a1 + 96));
  v3 = (a1 + 56);
  sub_2394F7C48(&v3);
  return a1;
}

uint64_t sub_2394F7B9C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 8;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 17;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_2392982AC(a1);
}

void sub_2394F7C48(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_23948F6F8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2394F7C9C(uint64_t *a1)
{
  if (*a1)
  {
    sub_23948F6F8(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *sub_2394F7CDC(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a2)
  {
    if (a3)
    {
      sub_239531804();
    }
  }

  return result;
}

uint64_t sub_2394F7CFC(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x11)
  {
    a2 = 1;
  }

  if (v2 < 0x22)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 17;
  }

  return v4 ^ 1u;
}

const void **sub_2394F7D5C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 2 * (v2 - v1) + ((v2 - v1) >> 3) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x11)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    sub_2393BEFD8(a1, v10);
  }

  *(a1 + 32) = v5 + 17;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return sub_2394F7F40(a1, v11);
}

const void **sub_2394F7F40(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_2393BEFD8(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_2394F804C(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_2393BEFD8(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void *sub_2394F8154(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_2393BEFD8(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void *sub_2394F825C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x11;
  v3 = v1 - 17;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_2393BEFD8(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_2394F804C(a1, &v10);
}

const void **sub_2394F83D0(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_2393BEFD8(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

uint64_t sub_2394F84DC(uint64_t a1)
{
  *a1 = &unk_284BBE7C8;
  *(a1 + 8) = 0;
  v2 = 0;
  *(a1 + 16) = sub_2394BA124();
  *(a1 + 24) = 0;
  *a1 = &unk_284BBF168;
  *(a1 + 36) = 256;
  do
  {
    v3 = a1 + v2;
    *(a1 + v2 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 184) = 0;
    *(v3 + 188) = 0;
    *(v3 + 192) = 0;
    *(v3 + 196) = 0;
    *(v3 + 200) = 0;
    *(v3 + 202) = 0;
    *(v3 + 136) = 0u;
    *(v3 + 152) = 0u;
    *(v3 + 167) = 0u;
    sub_2394BD44C(a1 + v2 + 40);
    *(v3 + 208) = 0u;
    v4 = (a1 + v2 + 208);
    *(v4 + 235) = 0u;
    v4[13] = 0u;
    v4[14] = 0u;
    v4[11] = 0u;
    v4[12] = 0u;
    v4[9] = 0u;
    v4[10] = 0u;
    v4[7] = 0u;
    v4[8] = 0u;
    v4[5] = 0u;
    v4[6] = 0u;
    v4[3] = 0u;
    v4[4] = 0u;
    v2 += 424;
    v4[1] = 0u;
    v4[2] = 0u;
  }

  while (v2 != 4240);
  *(a1 + 4280) = 0;
  *(a1 + 32) = 0;
  return a1;
}

unint64_t sub_2394F85D4(uint64_t a1, _BYTE *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  sub_23947632C("src/controller/CHIPDeviceController.cpp", 112);
  if (*(a1 + 32))
  {
    v4 = 0x7200000000;
    LODWORD(v5) = 3;
    goto LABEL_22;
  }

  v6 = *a2;
  if (!*a2)
  {
    v4 = 0x7300000000;
    goto LABEL_21;
  }

  if (!*v6)
  {
    v4 = 0x7500000000;
    goto LABEL_21;
  }

  if (!v6[2])
  {
    v4 = 0x7600000000;
    goto LABEL_21;
  }

  if (!v6[3])
  {
    v4 = 0x7900000000;
    goto LABEL_21;
  }

  if (!v6[4])
  {
    v4 = 0x7C00000000;
    goto LABEL_21;
  }

  v5 = sub_2394BA160((a1 + 16));
  if (v5)
  {
LABEL_15:
    v4 = v5 & 0xFFFFFFFF00000000;
    goto LABEL_22;
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    *(v7 + 8) = a1;
  }

  *(a1 + 8) = *(a2 + 1);
  *(a1 + 4296) = *(a2 + 47);
  if (!*(a2 + 3) && !*(a2 + 6) && !*(a2 + 10))
  {
    if (a2[92] != 1)
    {
      goto LABEL_27;
    }

    v10 = *(*a2 + 72);
    if (*(v10 + 2642))
    {
      v11 = sub_2392C86E0(a2 + 92);
      if (sub_2394A7FC0(v10, *v11))
      {
        *(a1 + 36) = *sub_2392C86E0(a2 + 92);
        goto LABEL_27;
      }

      v31 = sub_2393D9044(9u);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v31, OS_LOG_TYPE_ERROR, "There is no fabric corresponding to the given fabricIndex", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(9u, 1);
      }

      v4 = 0x9100000000;
    }

    else
    {
      v4 = 0x8900000000;
    }

LABEL_21:
    LODWORD(v5) = 47;
    goto LABEL_22;
  }

  v5 = sub_2394F8980(a1, a2);
  if (v5)
  {
    goto LABEL_15;
  }

LABEL_27:
  *(a1 + 4280) = sub_2394EF218(*a2);
  *(a1 + 32) = 1;
  *(a1 + 37) = a2[90];
  *(a1 + 38) = a2[91];
  v12 = *(a1 + 36);
  if (*(a1 + 36))
  {
    v13 = sub_2393D9044(9u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = sub_239293160(a1);
      if (v14)
      {
        v15 = *(v14 + 12);
      }

      else
      {
        v15 = 0;
      }

      v16 = sub_239293160(a1);
      if (v16)
      {
        v17 = *(v16 + 8);
      }

      else
      {
        v17 = 0;
      }

      v18 = sub_239293160(a1);
      if (v18)
      {
        v19 = *(v18 + 20);
      }

      else
      {
        v19 = 0;
      }

      v20 = sub_239293160(a1);
      if (v20)
      {
        v21 = *(v20 + 16);
      }

      else
      {
        v21 = 0;
      }

      *buf = 67110144;
      v33 = v12;
      v34 = 1024;
      v35 = v15;
      v36 = 1024;
      v37 = v17;
      v38 = 1024;
      v39 = v19;
      v40 = 1024;
      v41 = v21;
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "Joined the fabric at index %d. Fabric ID is 0x%08X%08X (Compressed Fabric ID: %08X%08X)", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      v22 = *(a1 + 36);
      v23 = sub_239293160(a1);
      if (v23)
      {
        v24 = *(v23 + 12);
      }

      v25 = sub_239293160(a1);
      if (v25)
      {
        v26 = *(v25 + 8);
      }

      v27 = sub_239293160(a1);
      if (v27)
      {
        v28 = *(v27 + 20);
      }

      v29 = sub_239293160(a1);
      if (v29)
      {
        v30 = *(v29 + 16);
      }

      sub_2393D5320(9u, 2);
    }
  }

  LODWORD(v5) = 0;
  v4 = 0;
LABEL_22:
  v8 = *MEMORY[0x277D85DE8];
  return v4 | v5;
}

unint64_t sub_2394F8980(uint64_t a1, _BYTE *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  memset(v54, 0, 24);
  v54[3] = &unk_284BB9138;
  v55 = 0u;
  v56 = 0u;
  v57 = 0;
  v58 = 16842751;
  v59 = 0;
  sub_238DCCC50(v54);
  v46 = 0;
  v47 = &unk_2395D6B90;
  v45 = 0;
  v4 = *(a2 + 47);
  v5 = *(a2 + 3);
  v6 = a2[32];
  v7 = sub_2393D52C4(0x190uLL);
  if (v7)
  {
    v8 = v7;
    v9 = sub_2393D52C4(0x190uLL);
    if (!v9)
    {
      v14 = 0xC200000000;
      v13 = 11;
LABEL_12:
      j__free(v8);
      goto LABEL_13;
    }

    v10 = v9;
    v11 = sub_2393D52C4(0x190uLL);
    if (!v11)
    {
      v14 = 0xC300000000;
      v13 = 11;
      goto LABEL_11;
    }

    v37 = v11;
    sub_238DB9BD8(&v43, v8, 400);
    v12 = sub_2394A1510(*(a2 + 9), *(a2 + 10), &v43);
    v13 = v12;
    if (v12)
    {
      goto LABEL_6;
    }

    sub_238DB6950(&v48, v43, v44);
    v12 = sub_2394A0354(&v48, &v47);
    v13 = v12;
    if (v12)
    {
      goto LABEL_6;
    }

    v48 = &unk_284BB9138;
    v49 = *v47;
    v19 = v47[2];
    v18 = v47[3];
    v20 = *(v47 + 64);
    v50 = v47[1];
    v53 = v20;
    v52 = v18;
    v51 = v19;
    v42 = 0uLL;
    if (*(a2 + 8))
    {
      sub_238DB9BD8(buf, v10, 400);
      v42 = *buf;
      v12 = sub_2394A1510(*(a2 + 7), *(a2 + 8), &v42);
      v13 = v12;
      if (v12)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v21 = sub_2393D9044(9u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_DEFAULT, "Intermediate CA is not needed", buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9u, 2);
      }
    }

    sub_238DB9BD8(buf, v37, 400);
    v12 = sub_2394A1510(*(a2 + 5), *(a2 + 6), buf);
    v13 = v12;
    if (!v12)
    {
      sub_238DB6950(v40, *buf, *&buf[8]);
      v12 = sub_2394A03F4(v40, &v45, &v46);
      v13 = v12;
      if (!v12)
      {
        v22 = *(*a2 + 72);
        if (a2[88] == 1)
        {
          v23 = sub_2394A7F44(*(*a2 + 72), &v48, v46, v45);
        }

        else
        {
          v23 = sub_2394A7DA0(*(*a2 + 72), &v48, v46);
        }

        if (v23)
        {
          v24 = *(v23 + 137);
        }

        else
        {
          v24 = 0;
        }

        v39 = v24;
        v25 = a2[89];
        if (a2[88] == 1)
        {
          *(v22 + 2644) |= 0x40u;
        }

        v26 = (v25 & 1) == 0;
        if (v5)
        {
          if (v23)
          {
            sub_238DB6950(v40, *buf, *&buf[8]);
            sub_238DB6950(v38, v42, *(&v42 + 1));
            v27 = v6 & 1;
            v28 = v22;
            v29 = v24;
            v30 = v5;
LABEL_37:
            v32 = sub_2394ABFF0(v28, v29, v40, v38, v30, v27, v26);
            goto LABEL_38;
          }

          sub_238DB6950(v40, v43, v44);
          v33 = sub_2394AB5D4(v22);
          if (!v33)
          {
            sub_238DB6950(v40, *buf, *&buf[8]);
            sub_238DB6950(v38, v42, *(&v42 + 1));
            v32 = sub_2394ABA3C(v22, v40, v38, v4, v5, v6 & 1, v26, &v39);
LABEL_38:
            v33 = v32;
            v34 = v26;
            if (!v32)
            {
LABEL_39:
              v33 = sub_2394AC43C(v22);
              v35 = v33 & 0xFFFFFFFF00000000;
              goto LABEL_46;
            }

            goto LABEL_44;
          }
        }

        else
        {
          if (v23)
          {
            if (!sub_2394AB290(v22, v24))
            {
              v14 = 0x12700000000;
              v36 = 16;
              v15 = v37;
LABEL_52:
              v13 = v36;
              goto LABEL_7;
            }

            v31 = v39;
            sub_238DB6950(v40, *buf, *&buf[8]);
            sub_238DB6950(v38, v42, *(&v42 + 1));
            v28 = v22;
            v29 = v31;
            v30 = 0;
            v27 = 0;
            goto LABEL_37;
          }

          sub_238DB6950(v40, v43, v44);
          v33 = sub_2394AB5D4(v22);
          if (!v33)
          {
            sub_238DB6950(v40, *buf, *&buf[8]);
            sub_238DB6950(v38, v42, *(&v42 + 1));
            v34 = v26;
            v33 = sub_2394ABA3C(v22, v40, v38, v4, 0, 0, v26, &v39);
            if (!v33)
            {
              if (sub_2394AB290(v22, v39))
              {
                goto LABEL_39;
              }

              v35 = 0x13B00000000;
              LODWORD(v33) = 16;
LABEL_45:
              sub_2394A9DC0(v22);
LABEL_46:
              v15 = v37;
              if (v33)
              {
                v36 = v33 | v35;
                v14 = v35 & 0xFFFFFFFF00000000;
              }

              else if (v39)
              {
                v14 = 0;
                v36 = 0;
                *(a1 + 36) = v39;
                *(a1 + 39) = v34;
              }

              else
              {
                v14 = 0x14D00000000;
                v36 = 172;
              }

              goto LABEL_52;
            }

LABEL_44:
            v35 = v33 & 0xFFFFFFFF00000000;
            goto LABEL_45;
          }
        }

        v34 = v26;
        goto LABEL_44;
      }
    }

LABEL_6:
    v14 = v12 & 0xFFFFFFFF00000000;
    v15 = v37;
LABEL_7:
    j__free(v15);
LABEL_11:
    j__free(v10);
    goto LABEL_12;
  }

  v14 = 0xC100000000;
  v13 = 11;
LABEL_13:
  sub_238DCCC50(v54);
  v16 = *MEMORY[0x277D85DE8];
  return v14 | v13;
}

unint64_t sub_2394F8F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!*(a1 + 36))
  {
    v13 = 0x15800000000;
LABEL_10:
    v14 = 172;
    return v14 | v13;
  }

  v6 = *(a1 + 4280);
  if (!v6)
  {
    v13 = 0x15900000000;
    goto LABEL_10;
  }

  v11 = *(v6 + 72);
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v12 = sub_2394A03F4(a2, &v31, &v32);
  if (!v12)
  {
    v12 = sub_2394A87A4(v11, *(a1 + 36), &v29);
    if (!v12)
    {
      v12 = sub_2394A052C(a2, &v27);
      if (!v12)
      {
        v16 = sub_239293160(a1);
        v17 = *v16 != v31 || !sub_239220F58(&v29, &v27);
        v18 = *(a1 + 36);
        if (a4)
        {
          v19 = *(a1 + 39);
          v20 = v11;
          v21 = a2;
          v22 = a3;
          v23 = a4;
          v24 = a5;
        }

        else
        {
          if (!sub_2394AB290(v11, v18))
          {
            v13 = 0x17100000000;
            LODWORD(v12) = 16;
            goto LABEL_7;
          }

          v18 = *(a1 + 36);
          v19 = *(a1 + 39);
          v20 = v11;
          v21 = a2;
          v22 = a3;
          v23 = 0;
          v24 = 0;
        }

        v12 = sub_2394ABFF0(v20, v18, v21, v22, v23, v24, v19);
        if (v12)
        {
          sub_2394A9DC0(v11);
        }

        else
        {
          v12 = sub_2394AC43C(v11);
        }

        if (!v12)
        {
          if (v17)
          {
            sub_239497630(*(*(a1 + 4280) + 40), *(a1 + 36));
          }

          v25 = sub_2393D9044(9u);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *v26 = 0;
            _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_DEFAULT, "Controller NOC chain has updated", v26, 2u);
          }

          if (sub_2393D5398(2u))
          {
            sub_2393D5320(9u, 2);
          }

          v13 = 0;
          LODWORD(v12) = 0;
          goto LABEL_7;
        }
      }
    }
  }

  v13 = v12 & 0xFFFFFFFF00000000;
LABEL_7:
  v14 = v12;
  return v14 | v13;
}

void sub_2394F9134(uint64_t a1)
{
  sub_23947632C("src/controller/CHIPDeviceController.cpp", 396);
  if (*(a1 + 32))
  {
    v2 = sub_2393D9044(9u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Shutting down the controller", v6, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(9u, 3);
    }

    *(a1 + 32) = 0;
    if (*(a1 + 36))
    {
      v3 = sub_2394C7C20();
      sub_2394C8644(v3, *(a1 + 36));
      v4 = *(a1 + 36);
      sub_2394C4CFC(*(*(a1 + 4280) + 96));
      v5 = *(*(a1 + 4280) + 80);
      v7 = *(a1 + 36);
      sub_2393D6A10((v5 + 56), &v7, sub_23950F110);
      sub_239497630(*(*(a1 + 4280) + 40), *(a1 + 36));
      if (*(a1 + 38) == 1)
      {
        sub_2394A9924(*(*(a1 + 4280) + 72), *(a1 + 36));
      }

      else if (*(a1 + 37) == 1)
      {
        sub_2394AA948(*(*(a1 + 4280) + 72), *(a1 + 36));
      }
    }

    sub_2394EF25C(*(a1 + 4280));
    *(a1 + 4280) = 0;
    sub_2394BA220(a1 + 16);
    *(a1 + 8) = 0;
  }
}

uint64_t sub_2394F928C(uint64_t a1, uint64_t a2, _OWORD *a3, __int16 *a4)
{
  if (*(a1 + 32) != 1)
  {
    return 0x1BA00000003;
  }

  v20 = v4;
  v21 = v5;
  v15 = 0uLL;
  v16 = 0;
  v17 = 5540;
  v18 = 0;
  v19 = 0;
  v8 = *(*(a1 + 4280) + 96);
  v9 = *(a1 + 36);
  v13 = a2;
  v14 = v9;
  v10 = sub_2394C4D4C(v8, &v13, &v15, 0);
  if (v10)
  {
    v11 = v10 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v10) = 0;
    v11 = 0;
    *a3 = v15;
    *a4 = v17;
  }

  return v11 | v10;
}

unint64_t sub_2394F934C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) == 1)
  {
    v12 = v3;
    v13 = v4;
    v5 = *(*(a1 + 4280) + 96);
    v6 = *(a1 + 36);
    v10 = a2;
    v11 = v6;
    v7 = sub_2394C4D4C(v5, &v10, a3, 0);
    if (v7)
    {
      v8 = v7 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v7) = 0;
      v8 = 0;
    }
  }

  else
  {
    v8 = 0x1C400000000;
    LODWORD(v7) = 3;
  }

  return v8 | v7;
}

unint64_t sub_2394F93D0(uint64_t a1, unsigned int a2, int a3, uint64_t *a4, uint64_t a5)
{
  v6 = a3;
  result = sub_2393EBA44(a5, a2, a4, 0, &v6);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2394F9410(uint64_t a1)
{
  v1 = *(a1 + 4280);
  result = *(v1 + 40);
  v3 = *(v1 + 56);
  return result;
}

uint64_t sub_2394F9420(uint64_t a1)
{
  v2 = (a1 + 9170);
  v3 = (a1 + 4368);
  v4 = sub_2394F84DC(a1);
  *v4 = &unk_284BBF1B0;
  *(v4 + 4304) = &unk_284BBF238;
  *(v4 + 4312) = &unk_284BBF2E0;
  *(v4 + 4320) = 0u;
  *(v4 + 4336) = 0u;
  *(v4 + 4345) = 0u;
  *(v4 + 4368) = 1;
  v3[2] = 0;
  *(v4 + 4400) = 0;
  *(v4 + 4464) = 0u;
  *(v4 + 4473) = 0u;
  *(v4 + 4432) = 0u;
  *(v4 + 4448) = 0u;
  *(v4 + 4472) = v4 + 4456;
  *(v4 + 4464) = v4 + 4456;
  *(v4 + 4496) = 0u;
  *(v4 + 4512) = 0;
  *(v4 + 4514) = 5540;
  v3[168] = 0;
  *(v4 + 4635) = 0;
  *(v4 + 4532) = 0;
  *(v4 + 4516) = 0u;
  *(v4 + 4672) = 0;
  *(v4 + 4656) = 0u;
  *(v4 + 4688) = v4 + 4680;
  *(v4 + 4680) = v4 + 4680;
  *(v4 + 4696) = 0;
  *(v4 + 4704) = v4;
  *(v4 + 4712) = sub_2394F96DC;
  *(v4 + 4728) = v4 + 4720;
  *(v4 + 4720) = v4 + 4720;
  *(v4 + 4736) = 0;
  *(v4 + 4744) = v4;
  *(v4 + 4752) = sub_2394F9A24;
  *(v4 + 4768) = v4 + 4760;
  *(v4 + 4760) = v4 + 4760;
  *(v4 + 4776) = 0;
  *(v4 + 4784) = v4;
  *(v4 + 4792) = sub_2394F9C78;
  *(v4 + 4808) = v4 + 4800;
  *(v4 + 4800) = v4 + 4800;
  *(v4 + 4816) = 0;
  *(v4 + 4824) = v4;
  *(v4 + 4832) = sub_2394F9E98;
  *(v4 + 4848) = v4 + 4840;
  *(v4 + 4840) = v4 + 4840;
  *(v4 + 4856) = 0;
  *(v4 + 4864) = v4;
  *(v4 + 4872) = sub_2394FA684;
  *(v4 + 4880) = &unk_284BBF050;
  *(v4 + 4888) = &unk_284BBF0F0;
  *(v4 + 4896) = 0;
  *(v4 + 4904) = v4;
  *(v4 + 4912) = 0u;
  *(v4 + 4928) = 512;
  v3[904] = 0;
  *(v4 + 4936) = 0u;
  *(v4 + 4952) = 0u;
  *(v4 + 4968) = 0;
  *(v4 + 5024) = 0;
  *(v4 + 5008) = 0u;
  *(v4 + 4992) = 0u;
  *(v4 + 4976) = 0u;
  *(v4 + 5280) = 0u;
  sub_2394EA000(v4 + 5296);
  *v2 = 0;
  v2[4] = 0;
  v2[6] = 0;
  *(a1 + 9136) = 0u;
  *(a1 + 9152) = 0u;
  *(a1 + 9168) = 0;
  *(a1 + 9192) = 0u;
  return a1;
}

void sub_2394F96DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  LODWORD(v22) = 1;
  *&v23 = "core_dcm_operational_setup";
  DWORD2(v23) = 0;
  BYTE12(v23) = 3;
  sub_23948BD20(&v22);
  if ((*(a1 + 4368) & 0xFE) != 0x1E)
  {
    sub_239538BF4();
  }

  v6 = (*(**(a1 + 4344) + 24))(*(a1 + 4344));
  if (v6 != (*(**a3 + 48))())
  {
    sub_239538C8C();
  }

  sub_2394FE658(a1);
  v22 = -1;
  v30 = 0;
  sub_23950F2A0(v8, a2, a3);
  v10.n128_u64[0] = &unk_284BBE888;
  v10.n128_u64[1] = v8[1];
  v11 = v8[2];
  sub_239495A4C(v12, v9);
  *&v12[40] = *&v9[40];
  sub_239504510(&v22, &v10);
  v10.n128_u64[0] = &unk_284BBE888;
  sub_239495880(v12);
  v8[0] = &unk_284BBE888;
  sub_239495880(v9);
  v13 = v22;
  if (v22 <= 2)
  {
    if (!v22)
    {
      v14 = v23;
      goto LABEL_19;
    }

    if (v22 == 1 || v22 == 2)
    {
      v14 = v23;
      v15 = v24;
      goto LABEL_19;
    }
  }

  else
  {
    if (v22 <= 4)
    {
      if (v22 == 3)
      {
        v14 = v23;
        v15 = v24;
        v16 = v25;
        v17 = v26;
      }

      else
      {
        *&v14 = &unk_284BBE888;
        *(&v14 + 1) = *(&v23 + 1);
        *&v15 = v24;
        sub_239495A4C(&v15 + 8, &v24 + 8);
        v18 = v27;
      }

      goto LABEL_19;
    }

    if (v22 == 5)
    {
      v18 = v27;
      v19 = v28;
      v20 = v29;
      v14 = v23;
      v15 = v24;
      v16 = v25;
      v17 = v26;
      goto LABEL_19;
    }

    if (v22 == 6)
    {
      LOWORD(v14) = v23;
      goto LABEL_19;
    }
  }

  if ((v22 - 7) <= 2)
  {
    LOBYTE(v14) = v23;
  }

LABEL_19:
  v21 = v30;
  sub_2394FDB60(a1, 0, 0, &v13);
  if (v13 == 4)
  {
    *&v14 = &unk_284BBE888;
    sub_239495880(&v15 + 8);
  }

  if (v22 == 4)
  {
    *&v23 = &unk_284BBE888;
    sub_239495880(&v24 + 8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_2394F9A24(uint64_t a1, void *a2, unint64_t a3, const char *a4)
{
  v5 = a3;
  v19 = *MEMORY[0x277D85DE8];
  *buf = 1;
  *&v16[4] = "core_dcm_operational_setup";
  v17 = a3;
  v18 = 3;
  sub_23948BD20(buf);
  if ((*(a1 + 4368) & 0xFE) != 0x1E)
  {
    sub_239538D24();
  }

  if ((*(**(a1 + 4344) + 24))(*(a1 + 4344)) != *a2)
  {
    sub_239538DBC();
  }

  sub_2394FE658(a1);
  v8 = sub_2393D9044(9u);
  v9 = v8;
  if (v5)
  {
    v10 = HIDWORD(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_2393C9138();
      *buf = 136315138;
      *v16 = v11;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Device connection failed. Error %s", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393C9138();
      sub_2393D5320(9u, 2);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Device connection failed without a valid error code.", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9u, 1);
    }

    a4 = "src/controller/CHIPDeviceController.cpp";
    LODWORD(v10) = 2203;
    LODWORD(v5) = 172;
  }

  v13[0] = -1;
  v14[80] = 0;
  sub_2394FDB60(a1, v5 | (v10 << 32), a4, v13);
  if (v13[0] == 4)
  {
    v13[1] = &unk_284BBE888;
    sub_239495880(v14);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2394F9C78(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned __int16 a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = sub_2393D9044(9u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = *a2;
    v10 = HIDWORD(*a2);
    v11 = *(a2 + 8);
    *buf = 67110146;
    v20 = v10;
    v21 = 1024;
    v22 = v9;
    v23 = 1024;
    v24 = v11;
    v25 = 2080;
    v26 = sub_2393C9138();
    v27 = 1024;
    v28 = a5;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Session establishment failed for <%08X%08X, %d>, error: %s.  Next retry expected to get a response to Sigma1 or fail within %d seconds", buf, 0x24u);
  }

  if (sub_2393D5398(1u))
  {
    v12 = *a2;
    v13 = *(a2 + 8);
    sub_2393C9138();
    sub_2393D5320(9u, 1);
  }

  if ((*(a1 + 4368) & 0xFE) != 0x1E)
  {
    sub_239538E54();
  }

  v14 = (*(**(a1 + 4344) + 24))(*(a1 + 4344));
  if (v14 != *a2)
  {
    sub_239538EEC();
  }

  result = sub_2394FB1BC(a1, v14);
  if (result)
  {
    v16 = a5 + 60;
    if (a5 > 0xFFC3u)
    {
      v16 = -1;
    }

    v17 = *(a1 + 4368);
    buf[0] = 1;
    v20 = 30000;
    result = sub_239500688(a1, result, v17, v16, buf, sub_2395045BC, sub_239504688, 1);
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2394F9E98(uint64_t a1, uint64_t a2, int a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC();
  if (os_signpost_enabled(v6))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "OnDeviceAttestationInformationVerification";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (*(a1 + 4368) == 12)
  {
    if (a3)
    {
      v7 = 0x54B00000020;
    }

    else
    {
      v7 = 0;
    }

    v54 = 6;
    v8 = &v54;
    LOWORD(v55) = a3;
    v56 = 0;
    if (a3)
    {
      v9 = "src/controller/CHIPDeviceController.cpp";
    }

    else
    {
      v9 = 0;
    }

    sub_2394FDB60(a1, v7, v9, &v54);
    if (v54 != 4)
    {
      goto LABEL_81;
    }

    v55 = &unk_284BBE888;
    goto LABEL_12;
  }

  if (*(a1 + 4344))
  {
    v11 = (*(**(a1 + 9136) + 24))(*(a1 + 9136));
    v12 = *(v11 + 584);
    if (*(v11 + 570) == 1 && (v13 = sub_2394FFDA4((v11 + 570)), v14 = *v13, *v13) || (v14 = a3) != 0)
    {
      v53 = 0;
      *&buf[8] = v14;
      *buf = 6;
      v15 = sub_2393D9044(9u);
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      if (v14 == 703)
      {
        if (v16)
        {
          *v33 = 0;
          _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Failed in verifying 'Attestation Information' command received from the device due to default DeviceAttestationVerifier Class not being overridden by a real implementation.", v33, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9u, 1);
        }

        v37 = *buf;
        if (*buf <= 2)
        {
          if (!*buf)
          {
            v38 = *&buf[8];
            goto LABEL_65;
          }

          if (*buf == 1 || *buf == 2)
          {
            v38 = *&buf[8];
            v39 = v47;
            goto LABEL_65;
          }
        }

        else
        {
          if (*buf <= 4)
          {
            if (*buf == 3)
            {
              v38 = *&buf[8];
              v39 = v47;
              v40 = v48;
              v41 = v49;
            }

            else
            {
              *&v38 = &unk_284BBE888;
              *(&v38 + 1) = *&buf[16];
              *&v39 = v47;
              sub_239495A4C(&v39 + 8, &v47 + 8);
              v42 = v50;
            }

            goto LABEL_65;
          }

          if (*buf == 5)
          {
            v42 = v50;
            v43 = v51;
            v44 = v52;
            v38 = *&buf[8];
            v39 = v47;
            v40 = v48;
            v41 = v49;
            goto LABEL_65;
          }

          if (*buf == 6)
          {
            LOWORD(v38) = *&buf[8];
            goto LABEL_65;
          }
        }

        if ((*buf - 7) <= 2)
        {
          LOBYTE(v38) = buf[8];
        }

LABEL_65:
        v45 = v53;
        v19 = &v37;
        sub_2394FDB60(a1, 0x5690000002DLL, "src/controller/CHIPDeviceController.cpp", &v37);
        if (v37 == 4)
        {
          *&v38 = &unk_284BBE888;
LABEL_77:
          sub_239495880(v19 + 4);
          goto LABEL_78;
        }

        goto LABEL_78;
      }

      if (v16)
      {
        *v33 = 67109378;
        v34 = v14;
        v35 = 2080;
        v36 = sub_2394B9798(v14);
        _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Failed in verifying 'Attestation Information' command received from the device: err %hu (%s)", v33, 0x12u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2394B9798(v14);
        sub_2393D5320(9u, 1);
      }

      if (v12)
      {
        sub_2394FFDC4(a1, a2, v14);
        goto LABEL_78;
      }

      v24 = *buf;
      if (*buf <= 2)
      {
        if (!*buf)
        {
          v25 = *&buf[8];
          goto LABEL_75;
        }

        if (*buf == 1 || *buf == 2)
        {
          v25 = *&buf[8];
          v26 = v47;
          goto LABEL_75;
        }
      }

      else
      {
        if (*buf <= 4)
        {
          if (*buf == 3)
          {
            v25 = *&buf[8];
            v26 = v47;
            v27 = v48;
            v28 = v49;
          }

          else
          {
            *&v25 = &unk_284BBE888;
            *(&v25 + 1) = *&buf[16];
            *&v26 = v47;
            sub_239495A4C(&v26 + 8, &v47 + 8);
            v29 = v50;
          }

          goto LABEL_75;
        }

        if (*buf == 5)
        {
          v29 = v50;
          v30 = v51;
          v31 = v52;
          v25 = *&buf[8];
          v26 = v47;
          v27 = v48;
          v28 = v49;
          goto LABEL_75;
        }

        if (*buf == 6)
        {
          LOWORD(v25) = *&buf[8];
          goto LABEL_75;
        }
      }

      if ((*buf - 7) <= 2)
      {
        LOBYTE(v25) = buf[8];
      }

LABEL_75:
      v32 = v53;
      v19 = &v24;
      sub_2394FDB60(a1, 0x57A00000020, "src/controller/CHIPDeviceController.cpp", &v24);
      if (v24 == 4)
      {
        *&v25 = &unk_284BBE888;
        goto LABEL_77;
      }

LABEL_78:
      if (*buf != 4)
      {
        goto LABEL_81;
      }

      *&buf[8] = &unk_284BBE888;
      v10 = &v47 + 8;
      goto LABEL_80;
    }

    if (v12 && (*(*v12 + 32))(v12))
    {
      sub_2394FFDC4(a1, a2, 0);
      goto LABEL_81;
    }

    v18 = sub_2393D9044(9u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_DEFAULT, "Successfully validated 'Attestation Information' command received from the device.", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9u, 2);
    }

    v22[0] = -1;
    v23 = 0;
    v8 = v22;
    sub_2394FDB60(a1, 0, 0, v22);
    if (v22[0] == 4)
    {
      v22[1] = &unk_284BBE888;
LABEL_12:
      v10 = (v8 + 4);
LABEL_80:
      sub_239495880(v10);
    }
  }

  else
  {
    v17 = sub_2393D9044(9u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Device attestation verification result received when we're not commissioning a device", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9u, 1);
    }
  }

LABEL_81:
  v20 = sub_23948B4CC();
  if (os_signpost_enabled(v20))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "OnDeviceAttestationInformationVerification";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_2394FA684(uint64_t a1, unint64_t a2, const char *a3, __int128 *a4, __int128 *a5, __int128 *a6, _BYTE *a7, _BYTE *a8)
{
  v12 = a2;
  v39[2] = *MEMORY[0x277D85DE8];
  v14 = HIDWORD(a2);
  v15 = sub_23948B4CC();
  if (os_signpost_enabled(v15))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "OnDeviceNOCChainGeneration";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v39[0] = 0;
  v39[1] = 0;
  if (!v12)
  {
    if (*a7)
    {
      v12 = 0;
    }

    else
    {
      v16 = sub_2393D9044(9u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Did not have an IPK from the OperationalCredentialsIssuer! Cannot commission.", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(9u, 1);
      }

      a3 = "src/controller/CHIPDeviceController.cpp";
      v14 = 1671;
      v12 = 47;
    }
  }

  v17 = sub_2393D9044(9u);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = sub_2393C9138();
    *buf = 136315138;
    *&buf[4] = v18;
    _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Received callback from the CA for NOC Chain generation. Status: %s", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393C9138();
    sub_2393D5320(9u, 2);
  }

  if (!v12)
  {
    if (*(a1 + 32) == 1)
    {
      v12 = 0;
      goto LABEL_23;
    }

    a3 = "src/controller/CHIPDeviceController.cpp";
    v14 = 1678;
    v12 = 3;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v19 = sub_2393C9138();
    *buf = 136315138;
    *&buf[4] = v19;
    _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed in generating device's operational credentials. Error: %s", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393C9138();
    sub_2393D5320(9u, 1);
  }

LABEL_23:
  v38 = 0;
  v20 = *a4;
  v26 = *a4;
  v28 = *a5;
  v30 = *a6;
  if (*a7 == 1)
  {
    v21 = *sub_2393E088C(a7);
  }

  else
  {
    v21 = v39;
  }

  if (*a8 == 1)
  {
    v22 = sub_239289A18(a8);
LABEL_29:
    v23 = *v22;
    goto LABEL_30;
  }

  v22 = sub_239293160(a1);
  if (v22)
  {
    goto LABEL_29;
  }

  v23 = 0;
LABEL_30:
  *&buf[8] = v26;
  v36[0] = v28;
  v36[1] = v30;
  *&v37 = v21;
  *(&v37 + 1) = v23;
  *buf = 3;
  v31 = 3;
  v32 = v26;
  v33[0] = v28;
  v33[1] = v30;
  v33[2] = v37;
  v34 = 0;
  sub_2394FDB60(a1, v12 | (v14 << 32), a3, &v31);
  if (v31 == 4)
  {
    *&v32 = &unk_284BBE888;
    sub_239495880(v33 + 8);
  }

  if (*buf == 4)
  {
    *&buf[8] = &unk_284BBE888;
    sub_239495880(v36 + 8);
  }

  v24 = sub_23948B4CC();
  if (os_signpost_enabled(v24))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "OnDeviceNOCChainGeneration";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v24, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v25 = *MEMORY[0x277D85DE8];
}

unint64_t sub_2394FAB20(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    v8 = 0x1E900000000;
    LODWORD(v7) = 47;
    return v8 | v7;
  }

  a1[536] = v2;
  v5 = *(a2 + 48);
  v16[2] = *(a2 + 32);
  v16[3] = v5;
  *v17 = *(a2 + 64);
  *&v17[12] = *(a2 + 76);
  v6 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v6;
  v18 = *(a2 + 92);
  if (v18 == 1)
  {
    v19 = *(a2 + 93);
  }

  v20 = *(a2 + 94);
  v7 = sub_2394F85D4(a1, v16);
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFF00000000;
    return v8 | v7;
  }

  a1[542] = *(a2 + 96);
  v9 = *(a2 + 112);
  a1[1150] = v9;
  if (v9)
  {
    goto LABEL_8;
  }

  v13 = sub_2394B9C74();
  a1[1150] = v13;
  v14 = sub_2393D9044(9u);
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16[0]) = 0;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_DEFAULT, "*** Missing DeviceAttestationVerifier configuration at DeviceCommissioner init: using global default, consider passing one in CommissionerInitParams.", v16, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9u, 2);
    }

LABEL_8:
    LODWORD(v7) = 0;
    v8 = 0;
    v10 = *(a2 + 104);
    if (!v10)
    {
      v10 = a1 + 662;
    }

    a1[1142] = v10;
    v11 = a1[535];
    a1[614] = *v11;
    a1[612] = v11[3];
    return v8 | v7;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v16[0]) = 0;
    _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Missing DeviceAttestationVerifier configuration at DeviceCommissioner init and none set with Credentials::SetDeviceAttestationVerifier()!", v16, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(9u, 1);
  }

  v8 = 0x1F900000000;
  LODWORD(v7) = 47;
  return v8 | v7;
}

void sub_2394FAD00(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = sub_2393D9044(9u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Shutting down the commissioner", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(9u, 3);
    }

    sub_2394F6F94(a1 + 4880, 0);
    v3 = *(a1 + 4352);
    if (v3 && *(v3 + 80) == 1)
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *v4 = 0;
        _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Setup in progress, stopping setup before shutting down", v4, 2u);
      }

      if (sub_2393D5398(3u))
      {
        sub_2393D5320(9u, 3);
      }

      (*(*a1 + 64))(a1, 0x23400000002, "src/controller/CHIPDeviceController.cpp");
    }

    sub_2394FAE7C(a1);
    v6 = a1;
    sub_2393D6A10((a1 + 4456), &v6, sub_23950F568);
    sub_2394F9134(a1);
  }
}

void sub_2394FAE7C(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 4328))
  {
    v2 = sub_2393D9044(9u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = sub_2394F2C88(*(a1 + 4368));
      *buf = 136315138;
      v14 = v3;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Cancelling read request for step '%s'", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2394F2C88(*(a1 + 4368));
      sub_2393D5320(9u, 3);
    }

    sub_2394FE578((a1 + 4328), 0);
    sub_2394FE5E8((a1 + 4320), 0);
  }

  if (*(a1 + 4400))
  {
    v4 = sub_2393D9044(9u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = sub_2394F2C88(*(a1 + 4368));
      *buf = 136315138;
      v14 = v5;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "Cancelling command invocation for step '%s'", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2394F2C88(*(a1 + 4368));
      sub_2393D5320(9u, 3);
    }

    v6 = *(a1 + 4400);
    if (!v6)
    {
      goto LABEL_28;
    }

    (*(*v6 + 48))(v6);
    sub_23950F81C(a1 + 4376);
  }

  if (!*(a1 + 4432))
  {
    goto LABEL_21;
  }

  v7 = sub_2393D9044(9u);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = sub_2394F2C88(*(a1 + 4368));
    *buf = 136315138;
    v14 = v8;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "Cancelling write request for step '%s'", buf, 0xCu);
  }

  if (sub_2393D5398(3u))
  {
    sub_2394F2C88(*(a1 + 4368));
    sub_2393D5320(9u, 3);
  }

  v9 = *(a1 + 4432);
  if (!v9)
  {
LABEL_28:
    sub_2393E97BC();
  }

  (*(*v9 + 48))(v9);
  sub_23950F81C(a1 + 4408);
LABEL_21:
  if (*(a1 + 4696))
  {
    v10 = sub_2393D9044(9u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = sub_2394F2C88(*(a1 + 4368));
      *buf = 136315138;
      v14 = v11;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "Cancelling CASE setup for step '%s'", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2394F2C88(*(a1 + 4368));
      sub_2393D5320(9u, 3);
    }

    sub_2394FE658(a1);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2394FB1BC(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v3 = sub_23948B4CC();
  if (os_signpost_enabled(v3))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "FindCommissioneeDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v8 = 0;
  *buf = &v9;
  *&buf[8] = &v8;
  sub_2393D6A10((a1 + 4456), buf, sub_23950F588);
  v4 = v8;
  v5 = sub_23948B4CC();
  if (os_signpost_enabled(v5))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "FindCommissioneeDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_2394FB32C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4[0] = a2;
  v4[1] = &v3;
  sub_2393D6A10((a1 + 4456), v4, sub_23950F604);
  return v3;
}

void sub_2394FB378(void *a1, uint64_t a2)
{
  if (*(a1[535] + 24) && *(a2 + 64) == 2)
  {
    v4 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Closing all BLE connections", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0x22u, 2);
    }

    v5 = *(a1[535] + 24);
    sub_2393CC984();
  }

  v6 = sub_23948A9E8()[2];
  if (v6)
  {
    v7 = sub_2393D9044(9u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Stopping discovery of all NFC tags", v8, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9u, 2);
    }

    (*(*v6 + 32))(v6);
  }

  if (a1[544] == a2)
  {
    a1[544] = 0;
  }

  if (a1[543] == a2)
  {
    a1[543] = 0;
  }

  sub_2394FB4F4((a1 + 555), a2);
}

void sub_2394FB4F4(uint64_t a1, void (***a2)(void))
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_239532AB8();
    }

    v5 = v4;
    *v4 = 0;
    (**a2)(a2);
    j__free(a2);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = v5[2];
      *(v5[1] + 16) = v6;
      *(v6 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

uint64_t sub_2394FB5A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    v4 = sub_2394FB1BC(a1, a2);
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      *a3 = v4;
    }

    else
    {
      v5 = 0x29E00000000;
      v6 = 47;
    }
  }

  else
  {
    v5 = 0x29B00000000;
    v6 = 47;
  }

  return v6 | v5;
}

unint64_t sub_2394FB610(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, int a5, uint64_t a6)
{
  v38 = *MEMORY[0x277D85DE8];
  v12 = sub_23948B4CC();
  if (os_signpost_enabled(v12))
  {
    v26 = 136315394;
    v27 = "DeviceCommissioner";
    v28 = 2080;
    *v29 = "PairDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v26, 0x16u);
  }

  v13 = *(a1 + 9136);
  if (v13)
  {
    v14 = (*(*v13 + 16))(v13, a4);
    v15 = v14;
    if (v14)
    {
      v16 = v14 & 0xFFFFFFFF00000000;
    }

    else
    {
      LOBYTE(v26) = *a6;
      if (v26 == 1)
      {
        HIDWORD(v27) = *(a6 + 8);
        v18 = *(a6 + 128);
        v35 = *(a6 + 112);
        v36 = v18;
        v37[0] = *(a6 + 144);
        *(v37 + 11) = *(a6 + 155);
        v19 = *(a6 + 64);
        v31 = *(a6 + 48);
        v32 = v19;
        v20 = *(a6 + 96);
        v33 = *(a6 + 80);
        v34 = v20;
        v21 = *(a6 + 32);
        *&v29[2] = *(a6 + 16);
        v30 = v21;
      }

      v22 = sub_2394F4788(a1 + 4880, a2, a3, 0, a5, &v26);
      v15 = v22;
      v16 = v22 & 0xFFFFFFFF00000000;
    }
  }

  else
  {
    v17 = sub_2393D9044(9u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "No default commissioner is specified", &v26, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9u, 1);
    }

    v16 = 0x2AD00000000;
    v15 = 3;
  }

  v23 = sub_23948B4CC();
  if (os_signpost_enabled(v23))
  {
    v26 = 136315394;
    v27 = "DeviceCommissioner";
    v28 = 2080;
    *v29 = "PairDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v23, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v26, 0x16u);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v15 | v16;
}

uint64_t sub_2394FB8A4(uint64_t a1, uint64_t a2, char *a3, int a4, uint64_t a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = sub_23948B4CC();
  if (os_signpost_enabled(v10))
  {
    v19 = 136315394;
    v20 = "DeviceCommissioner";
    v21 = 2080;
    *v22 = "PairDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v19, 0x16u);
  }

  LOBYTE(v19) = *a5;
  if (v19 == 1)
  {
    HIDWORD(v20) = *(a5 + 8);
    v11 = *(a5 + 128);
    v28 = *(a5 + 112);
    v29 = v11;
    v30[0] = *(a5 + 144);
    *(v30 + 11) = *(a5 + 155);
    v12 = *(a5 + 64);
    v24 = *(a5 + 48);
    v25 = v12;
    v13 = *(a5 + 96);
    v26 = *(a5 + 80);
    v27 = v13;
    v14 = *(a5 + 32);
    *&v22[2] = *(a5 + 16);
    v23 = v14;
  }

  v15 = sub_2394F4788(a1 + 4880, a2, a3, 0, a4, &v19);
  v16 = sub_23948B4CC();
  if (os_signpost_enabled(v16))
  {
    v19 = 136315394;
    v20 = "DeviceCommissioner";
    v21 = 2080;
    *v22 = "PairDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v19, 0x16u);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

unint64_t sub_2394FBA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC();
  if (os_signpost_enabled(v6))
  {
    v12 = 136315394;
    *v13 = "DeviceCommissioner";
    *&v13[8] = 2080;
    *&v13[10] = "PairDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v12, 0x16u);
  }

  v7 = sub_2394FBC2C(a1, a2, a3);
  if (v7 || (v7 = sub_2394FC440(a1, a2), v7))
  {
    v12 = 2;
    *&v13[4] = "core_dcm_commission_device";
    *&v13[12] = v7;
    v13[16] = 3;
    sub_23948BD20(&v12);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_23948B4CC();
  if (os_signpost_enabled(v9))
  {
    v12 = 136315394;
    *v13 = "DeviceCommissioner";
    *&v13[8] = 2080;
    *&v13[10] = "PairDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7 & 0xFFFFFFFF00000000 | v8;
}

uint64_t sub_2394FBC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC();
  if (os_signpost_enabled(v6))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "EstablishPASEConnection";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = "core_dcm_pase_session";
  buf[20] = 0;
  sub_23948BD20(buf);
  *buf = xmmword_27DF7BD44;
  buf[16] = 1;
  *&buf[18] = 5540;
  *&buf[20] = 0;
  v70 = 0;
  v67[0] = 0;
  if (*(a1 + 32) != 1)
  {
    v8 = 741;
    LODWORD(v7) = 3;
    goto LABEL_7;
  }

  if (*(a1 + 4352))
  {
    LODWORD(v7) = 3;
    v8 = 742;
LABEL_7:
    *v63 = 1;
    *&v63[8] = "core_dcm_pase_session";
    v64 = v7;
    LOBYTE(v65) = 3;
    sub_23948BD20(v63);
    v9 = v7;
    goto LABEL_8;
  }

  v14 = *(a3 + 16);
  if (v14 > 1)
  {
    if (v14 == 3)
    {
      goto LABEL_22;
    }

    if (v14 != 2)
    {
      goto LABEL_24;
    }

LABEL_19:
    if (!*(a3 + 160))
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 2;
      *(a3 + 18) = 5540;
      *(a3 + 20) = 0;
      *(a3 + 24) = 0;
    }

    v15 = 0;
    *buf = 0;
    *&buf[8] = 0;
    v16 = 5540;
    v17 = 2;
    goto LABEL_23;
  }

  if (!*(a3 + 16))
  {
    goto LABEL_19;
  }

  if (v14 == 1)
  {
LABEL_22:
    v16 = *(a3 + 18);
    v15 = *(a3 + 20);
    *buf = *a3;
    v17 = 1;
LABEL_23:
    buf[16] = v17;
    *&buf[18] = v16;
    *&buf[20] = v15;
    v70 = 0;
  }

LABEL_24:
  v61 = 0;
  *v63 = buf;
  *&v63[8] = &v61;
  sub_2393D6A10((a1 + 4456), v63, sub_23950F604);
  v18 = v61;
  if (!v61)
  {
    goto LABEL_37;
  }

  if ((*(*v61 + 24))(v61) != a2)
  {
    goto LABEL_32;
  }

  if ((*(*v18 + 72))(v18))
  {
    v19 = *(a1 + 4336);
    if (v19)
    {
      (*(*v19 + 24))(v19, 0, 0);
    }

    *v63 = 1;
    *&v63[8] = "core_dcm_pase_session";
    v64 = 0;
    LOBYTE(v65) = 3;
    sub_23948BD20(v63);
    goto LABEL_31;
  }

  if (v18[20] != 1)
  {
LABEL_32:
    v20 = sub_2393D9044(9u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v63 = 0;
      _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "Found unconnected device, removing", v63, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9u, 1);
    }

    sub_2394FB378(a1, v18);
LABEL_37:
    v21 = sub_2394FCD48((a1 + 4440));
    if (!v21)
    {
      LODWORD(v7) = 11;
      v8 = 806;
      goto LABEL_7;
    }

    v22 = v21;
    *(a1 + 4352) = v21;
    v23 = *(a1 + 4280);
    v24 = *(v23 + 40);
    v25 = *(v23 + 56);
    v21[246] = v24;
    v21[247] = v25;
    v21[3] = a2;
    v21[4] = 0;
    v21[5] = a2;
    *(v21 + 20) = 1;
    *(v21 + 3) = *buf;
    LODWORD(v24) = *&buf[20];
    *(v21 + 16) = *&buf[16];
    *(v21 + 17) = v24;
    v21[9] = v70;
    *v63 = *a3;
    LODWORD(v24) = *(a3 + 20);
    v64 = *(a3 + 16);
    v65 = v24;
    v66 = *(a3 + 24);
    v61 = sub_2394FCDCC(a3);
    LOWORD(v62) = v26;
    sub_2394F28AC(v22, v63, &v61);
    if (*(a3 + 16) == 2)
    {
      v27 = *(a3 + 168);
      if (!v27)
      {
        if (*(a3 + 176))
        {
          v38 = *a3;
          *(a1 + 4512) = *(a3 + 16);
          *(a1 + 4496) = v38;
          *(a1 + 4516) = *(a3 + 20);
          *(a1 + 4520) = *(a3 + 24);
          v39 = *(a3 + 32);
          v40 = *(a3 + 48);
          *(a1 + 4560) = *(a3 + 64);
          *(a1 + 4544) = v40;
          *(a1 + 4528) = v39;
          v41 = *(a3 + 80);
          v42 = *(a3 + 96);
          v43 = *(a3 + 112);
          *(a1 + 4620) = *(a3 + 124);
          *(a1 + 4608) = v43;
          *(a1 + 4592) = v42;
          *(a1 + 4576) = v41;
          v44 = *(a3 + 140);
          *(a1 + 4636) = v44;
          if (v44 == 1)
          {
            v45 = *(a3 + 144);
            *(a1 + 4648) = *(a3 + 152);
            *(a1 + 4640) = v45;
          }

          v46 = *(a3 + 160);
          *(a1 + 4672) = *(a3 + 176);
          *(a1 + 4656) = v46;
          v37 = sub_2393CCC18(*(*(a1 + 4280) + 24), *(a3 + 176), a1, sub_2394FCE24, sub_2394FD078);
          goto LABEL_58;
        }

        if (*(a3 + 40) == 1)
        {
          v47 = *a3;
          *(a1 + 4512) = *(a3 + 16);
          *(a1 + 4496) = v47;
          *(a1 + 4516) = *(a3 + 20);
          *(a1 + 4520) = *(a3 + 24);
          v48 = *(a3 + 32);
          v49 = *(a3 + 48);
          *(a1 + 4560) = *(a3 + 64);
          *(a1 + 4544) = v49;
          *(a1 + 4528) = v48;
          v50 = *(a3 + 80);
          v51 = *(a3 + 96);
          v52 = *(a3 + 112);
          *(a1 + 4620) = *(a3 + 124);
          *(a1 + 4608) = v52;
          *(a1 + 4592) = v51;
          *(a1 + 4576) = v50;
          v53 = *(a3 + 140);
          *(a1 + 4636) = v53;
          if (v53 == 1)
          {
            v54 = *(a3 + 144);
            *(a1 + 4648) = *(a3 + 152);
            *(a1 + 4640) = v54;
          }

          v55 = *(a3 + 160);
          *(a1 + 4672) = *(a3 + 176);
          *(a1 + 4656) = v55;
          v56 = *(*(a1 + 4280) + 24);
          v57 = sub_2394FD1A0(a3);
          *v63 = v57;
          v63[4] = BYTE4(v57);
          if ((v57 & 0x100000000) == 0)
          {
            v58 = sub_2394EDF14();
            return sub_2394FC440(v58);
          }

          v37 = sub_2393CCB68(v56, v63, a1, sub_2394FCE24, sub_2394FD078);
          goto LABEL_58;
        }

        LODWORD(v7) = 47;
        v8 = 842;
LABEL_60:
        sub_2394FB378(a1, v22);
        goto LABEL_7;
      }

      v7 = sub_2393CCCC8(*(*(a1 + 4280) + 24), v27);
      if (v7)
      {
        goto LABEL_59;
      }
    }

    v28 = *(*(a1 + 4280) + 40);
    *v63 = *a3;
    v29 = *(a3 + 20);
    v64 = *(a3 + 16);
    v65 = v29;
    v66 = *(a3 + 24);
    v59 = sub_2394FCDCC(a3);
    v60 = v30;
    sub_2394C4774(v28, v63, &v59, &v61);
    sub_2393DECA4(v67, &v61);
    if (v61 == 1)
    {
      (*(*v62 + 32))(v62);
    }

    if (v67[0] == 1)
    {
      v31 = *(*(a1 + 4280) + 56);
      v32 = sub_238EA9094(v67);
      v33 = sub_239471E34(v31, v32, v22 + 96, 1u);
      if (v33)
      {
        v34 = v33;
        v35 = *(*(a1 + 4280) + 40);
        v36 = *(a3 + 32);
        sub_239476008(v63);
        v37 = sub_2393EBF78(v22 + 88, v35, v36, v63, v34, a1 + 4312);
LABEL_58:
        v7 = v37;
LABEL_59:
        v8 = HIDWORD(v7);
        if (!v7)
        {
          v9 = 0;
LABEL_8:
          v10 = v8 << 32;
          if (v67[0])
          {
            (*(*v68 + 32))(v68);
          }

          goto LABEL_10;
        }

        goto LABEL_60;
      }

      LODWORD(v7) = 172;
      v8 = 880;
    }

    else
    {
      LODWORD(v7) = 11;
      v8 = 871;
    }

    goto LABEL_60;
  }

LABEL_31:
  v10 = 0;
  v9 = 0;
LABEL_10:
  v11 = sub_23948B4CC();
  if (os_signpost_enabled(v11))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "EstablishPASEConnection";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10 | v9;
}

uint64_t sub_2394FC440(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    *v20 = "DeviceCommissioner";
    *&v20[8] = 2080;
    *&v20[10] = "Commission";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (!*(a1 + 9136))
  {
    v9 = sub_2393D9044(9u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "No default commissioner is specified", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9u, 1);
    }

    v8 = 0x3E200000000;
    goto LABEL_36;
  }

  v5 = sub_2394FB1BC(a1, a2);
  if (!v5 || (v6 = v5, ((*(*v5 + 72))(v5) & 1) == 0) && v6[20] != 1)
  {
    v10 = sub_2393D9044(9u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v20 = HIDWORD(a2);
      *&v20[4] = 1024;
      *&v20[6] = a2;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Invalid device for commissioning %08X%08X", buf, 0xEu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9u, 1);
    }

    v8 = 0x3E900000000;
    goto LABEL_36;
  }

  if (((*(*v6 + 72))(v6) & 1) == 0 && v6 != *(a1 + 4352))
  {
    v7 = sub_2393D9044(9u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v20 = HIDWORD(a2);
      *&v20[4] = 1024;
      *&v20[6] = a2;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Device is not connected and not being paired %08X%08X", buf, 0xEu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9u, 1);
    }

    v8 = 0x3EF00000000;
LABEL_36:
    v14 = 3;
    goto LABEL_37;
  }

  v11 = *(a1 + 4368);
  v12 = sub_2393D9044(9u);
  v13 = v12;
  if (v11 != 1)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_2394F2C88(v11);
      *buf = 136315138;
      *v20 = v15;
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "Commissioning already in progress (stage '%s') - not restarting", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2394F2C88(*(a1 + 4368));
      sub_2393D5320(9u, 1);
    }

    v8 = 0x3F600000000;
    goto LABEL_36;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v20 = HIDWORD(a2);
    *&v20[4] = 1024;
    *&v20[6] = a2;
    _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "Commission called for node ID 0x%08X%08X", buf, 0xEu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9u, 2);
  }

  (*(**(a1 + 9136) + 32))(*(a1 + 9136), *(a1 + 4288));
  if ((*(*v6 + 72))(v6))
  {
    *buf = 0;
    *&v20[4] = "core_dcm_commission_device";
    v20[16] = 0;
    sub_23948BD20(buf);
    (*(**(a1 + 9136) + 40))(*(a1 + 9136), a1, v6);
    v14 = 0;
    v8 = 0;
  }

  else
  {
    v14 = 0;
    v8 = 0;
    *(a1 + 4370) = 1;
  }

LABEL_37:
  v16 = sub_23948B4CC();
  if (os_signpost_enabled(v16))
  {
    *buf = 136315394;
    *v20 = "DeviceCommissioner";
    *&v20[8] = 2080;
    *&v20[10] = "Commission";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v8 | v14;
}

unint64_t sub_2394FC990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    v14 = 136315394;
    *v15 = "DeviceCommissioner";
    *&v15[8] = 2080;
    *&v15[10] = "PairDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v14, 0x16u);
  }

  v9 = sub_2394FBC2C(a1, a2, a3);
  if (v9 || (v9 = (*(*a1 + 56))(a1, a2, a4), v9))
  {
    v14 = 2;
    *&v15[4] = "core_dcm_commission_device";
    *&v15[12] = v9;
    v15[16] = 3;
    sub_23948BD20(&v14);
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_23948B4CC();
  if (os_signpost_enabled(v11))
  {
    v14 = 136315394;
    *v15 = "DeviceCommissioner";
    *&v15[8] = 2080;
    *&v15[10] = "PairDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v14, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9 & 0xFFFFFFFF00000000 | v10;
}

uint64_t sub_2394FCB7C(uint64_t a1, uint64_t a2, char *a3, int a4, uint64_t a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = sub_23948B4CC();
  if (os_signpost_enabled(v10))
  {
    v19 = 136315394;
    v20 = "DeviceCommissioner";
    v21 = 2080;
    *v22 = "EstablishPASEConnection";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v19, 0x16u);
  }

  LOBYTE(v19) = *a5;
  if (v19 == 1)
  {
    HIDWORD(v20) = *(a5 + 8);
    v11 = *(a5 + 128);
    v28 = *(a5 + 112);
    v29 = v11;
    v30[0] = *(a5 + 144);
    *(v30 + 11) = *(a5 + 155);
    v12 = *(a5 + 64);
    v24 = *(a5 + 48);
    v25 = v12;
    v13 = *(a5 + 96);
    v26 = *(a5 + 80);
    v27 = v13;
    v14 = *(a5 + 32);
    *&v22[2] = *(a5 + 16);
    v23 = v14;
  }

  v15 = sub_2394F4788(a1 + 4880, a2, a3, 1, a4, &v19);
  v16 = sub_23948B4CC();
  if (os_signpost_enabled(v16))
  {
    v19 = 136315394;
    v20 = "DeviceCommissioner";
    v21 = 2080;
    *v22 = "EstablishPASEConnection";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v19, 0x16u);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

void *sub_2394FCD48(unint64_t *a1)
{
  v2 = sub_2393D52C4(0x7F0uLL);
  v3 = v2;
  if (v2)
  {
    sub_23950F644(v2);
    v4 = sub_2393D52C4(0x18uLL);
    if (v4)
    {
      *v4 = v3;
      v4[1] = a1 + 2;
      v4[2] = 0;
      v5 = a1[4];
      v4[2] = v5;
      *(v5 + 8) = v4;
      a1[4] = v4;
      v6 = a1[1];
      v7 = *a1 + 1;
      *a1 = v7;
      if (v7 > v6)
      {
        a1[1] = v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_2394FCDCC(uint64_t a1)
{
  result = sub_239476060();
  v4 = *(a1 + 140);
  v3 = (a1 + 140);
  v9 = v5;
  if (v4 == 1)
  {
    v6 = sub_238DD173C(v3);
    result = *v6;
  }

  else
  {
    v6 = &v8;
  }

  v7 = *(v6 + 2);
  return result;
}

uint64_t sub_2394FCE24(uint64_t result, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(result + 4352);
  if (v2 && v2[64] == 2)
  {
    v4 = result;
    v5 = (*(*v2 + 24))(*(result + 4352));
    v16 = *(v4 + 4496);
    v6 = *(v4 + 4516);
    v17 = *(v4 + 4512);
    v18 = v6;
    v19 = *(v4 + 4520);
    v7 = *(v4 + 4576);
    v8 = *(v4 + 4608);
    v24 = *(v4 + 4592);
    *v25 = v8;
    *&v25[12] = *(v4 + 4620);
    v9 = *(v4 + 4544);
    v20 = *(v4 + 4528);
    v21 = v9;
    v22 = *(v4 + 4560);
    v23 = v7;
    v26 = *(v4 + 4636);
    if (v26 == 1)
    {
      v27 = *(v4 + 4640);
      v28 = *(v4 + 4648);
    }

    v29 = *(v4 + 4656);
    v10 = *(v4 + 4672);
    *(&v29 + 1) = a2;
    v30 = v10;
    *buf = 0;
    *&buf[8] = 0;
    *(v4 + 4496) = 0u;
    *(v4 + 4512) = 363069440;
    *(v4 + 4656) = 0;
    *(v4 + 4672) = 0;
    *(v4 + 4664) = 0;
    *(v4 + 4516) = 0u;
    *(v4 + 4532) = 0u;
    *(v4 + 4548) = 0u;
    *(v4 + 4564) = 0u;
    *(v4 + 4580) = 0u;
    *(v4 + 4596) = 0u;
    *(v4 + 4612) = 0u;
    *(v4 + 4621) = 0u;
    sub_2394FB378(v4, v2);
    result = sub_2394FBC2C(v4, v5, &v16);
    if (result)
    {
      v11 = sub_2393D9044(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = sub_2393C9138();
        *&buf[12] = 2080;
        *&buf[14] = "src/controller/CHIPDeviceController.cpp";
        v14 = 1024;
        v15 = 913;
        _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
      }

      result = sub_2393D5398(1u);
      if (result)
      {
        sub_2393C9138();
        result = sub_2393D5320(0, 1);
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2394FD078(void *result)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = result[544];
  if (!v1)
  {
    goto LABEL_7;
  }

  if (*(v1 + 64) != 2)
  {
    goto LABEL_7;
  }

  v2 = result;
  sub_2394FB378(result, v1);
  *(v2 + 281) = 0uLL;
  *(v2 + 1128) = 363069440;
  v2[582] = 0;
  v2[584] = 0;
  v2[583] = 0;
  *(v2 + 4516) = 0u;
  *(v2 + 4532) = 0u;
  *(v2 + 4548) = 0u;
  *(v2 + 4564) = 0u;
  *(v2 + 4580) = 0u;
  *(v2 + 4596) = 0u;
  *(v2 + 4612) = 0u;
  *(v2 + 4621) = 0u;
  result = v2[542];
  if (result)
  {
    v3 = *(*result + 24);
    v4 = *MEMORY[0x277D85DE8];

    return v3();
  }

  else
  {
LABEL_7:
    v5 = *MEMORY[0x277D85DE8];
  }

  return result;
}

unint64_t sub_2394FD1A0(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v2 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "Get RendezvousParameters::GetSetupDiscriminator() called without discriminator in params (inconsistent).", v4, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0x22u, 1);
    }
  }

  return *(a1 + 36) | (*(a1 + 40) << 32);
}

unint64_t sub_2394FD23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 9136);
  if (v4)
  {
    v6 = (*(*v4 + 16))(v4, a3);
    v7 = v6;
    if (v6)
    {
      v8 = HIDWORD(v6);
    }

    else
    {
      v10 = sub_2394FC440(a1, a2);
      v7 = v10;
      v8 = HIDWORD(v10);
      if (!v10)
      {
        v7 = 0;
        return v7 | (v8 << 32);
      }
    }

    v12 = 2;
    v13 = "core_dcm_commission_device";
    v14 = v7;
    v15 = 3;
    sub_23948BD20(&v12);
  }

  else
  {
    v9 = sub_2393D9044(9u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "No default commissioner is specified", &v12, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9u, 1);
    }

    v7 = 3;
    LODWORD(v8) = 979;
  }

  return v7 | (v8 << 32);
}

uint64_t sub_2394FD380(uint64_t a1, uint64_t a2, int a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC();
  if (os_signpost_enabled(v6))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "continueCommissioningDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (!*(a1 + 9136))
  {
    v9 = sub_2393D9044(9u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "No default commissioner is specified", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9u, 1);
    }

    v8 = 0x41100000000;
    goto LABEL_16;
  }

  if (!a2 || *(a1 + 4344) != a2)
  {
    v7 = sub_2393D9044(9u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = a2;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Invalid device for commissioning %p", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9u, 1);
    }

    v8 = 0x41700000000;
LABEL_16:
    v10 = 3;
    goto LABEL_17;
  }

  v14 = (*(*a2 + 24))(a2);
  v15 = sub_2394FB1BC(a1, v14);
  if (!v15)
  {
    v20 = sub_2393D9044(9u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "Couldn't find commissionee device", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9u, 1);
    }

    v8 = 0x41D00000000;
    goto LABEL_16;
  }

  v16 = v15;
  if (!(*(*v15 + 72))(v15) || v16 != *(a1 + 4344))
  {
    v17 = sub_2393D9044(9u);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = (*(*v16 + 24))(v16) >> 32;
      v19 = (*(*v16 + 24))(v16);
      *buf = 67109376;
      *&buf[4] = v18;
      *&buf[8] = 1024;
      *&buf[10] = v19;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Invalid device for commissioning after attestation failure: 0x%08X%08X", buf, 0xEu);
    }

    if (sub_2393D5398(1u))
    {
      v27 = (*(*v16 + 24))(v16) >> 32;
      (*(*v16 + 24))(v16);
      sub_2393D5320(9u, 1);
    }

    v8 = 0x42300000000;
    goto LABEL_16;
  }

  v21 = *(a1 + 4368);
  v22 = sub_2393D9044(9u);
  v23 = v22;
  if (v21 != 13)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "Commissioning is not attestation verification phase", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9u, 1);
    }

    v8 = 0x42900000000;
    goto LABEL_16;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v24 = (*(*v16 + 24))(v16) >> 32;
    v25 = (*(*v16 + 24))(v16);
    *buf = 67109376;
    *&buf[4] = v24;
    *&buf[8] = 1024;
    *&buf[10] = v25;
    _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_DEFAULT, "Continuing commissioning after attestation failure for device ID 0x%08X%08X", buf, 0xEu);
  }

  if (sub_2393D5398(2u))
  {
    v28 = (*(*v16 + 24))(v16) >> 32;
    (*(*v16 + 24))(v16);
    sub_2393D5320(9u, 2);
  }

  if (a3)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "Client selected error: %u for failed 'Attestation Information' for device", buf, 8u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9u, 1);
    }

    v34[80] = 0;
    *&buf[8] = a3;
    *buf = 6;
    sub_23950F14C(v31, buf);
    sub_2394FDB60(a1, 0x436000000ACLL, "src/controller/CHIPDeviceController.cpp", v31);
    if (v31[0] == 4)
    {
      v31[1] = &unk_284BBE888;
      sub_239495880(&v32);
    }

    if (*buf != 4)
    {
      goto LABEL_59;
    }

    *&buf[8] = &unk_284BBE888;
    v26 = v34;
  }

  else
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_DEFAULT, "Overriding attestation failure per client and continuing commissioning", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9u, 2);
    }

    v29[0] = -1;
    v30[80] = 0;
    sub_2394FDB60(a1, 0, 0, v29);
    if (v29[0] != 4)
    {
      goto LABEL_59;
    }

    v29[1] = &unk_284BBE888;
    v26 = v30;
  }

  sub_239495880(v26);
LABEL_59:
  v10 = 0;
  v8 = 0;
LABEL_17:
  v11 = sub_23948B4CC();
  if (os_signpost_enabled(v11))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "continueCommissioningDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8 | v10;
}

void sub_2394FDB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    *v33 = 136315394;
    *&v33[4] = "DeviceCommissioner";
    *&v33[12] = 2080;
    *&v33[14] = "CommissioningStageComplete";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", v33, 0x16u);
  }

  v9 = sub_2394F2CAC(*(a1 + 4368));
  *v33 = 1;
  *&v33[8] = v9;
  *&v33[16] = a2;
  v33[20] = 3;
  sub_23948BD20(v33);
  v10 = *(a1 + 4344);
  if (!v10)
  {
    sub_239538F84();
  }

  v11 = (*(*v10 + 24))(v10);
  v12 = *(a1 + 4344);
  *(a1 + 4344) = 0;
  sub_23950F81C(a1 + 4376);
  sub_23950F81C(a1 + 4408);
  v13 = *(a1 + 4336);
  if (v13)
  {
    v14 = sub_239293160(a1);
    if (v14)
    {
      v15 = *(v14 + 16);
    }

    else
    {
      v15 = 0;
    }

    (*(*v13 + 64))(v13, v11, v15, *(a1 + 4368), a2, a3);
  }

  if (*(a1 + 9144))
  {
    v16 = *(a1 + 4368);
    *(a4 + 112) = v16;
    v17 = *(a1 + 9144);
    v18 = *a4;
    v36 = v18;
    if (v18 <= 2)
    {
      if (!v18)
      {
        v37 = *(a4 + 8);
        goto LABEL_26;
      }

      if (v18 == 1 || v18 == 2)
      {
        v21 = *(a4 + 24);
        v37 = *(a4 + 8);
        v38 = v21;
LABEL_26:
        v44 = v16;
        v27 = (*(*v17 + 48))(v17, a2, a3, &v36);
        v29 = v28;
        if (v36 == 4)
        {
          *&v37 = &unk_284BBE888;
          sub_239495880(&v38 + 8);
        }

        if (v27 && *(a1 + 4368) != 40)
        {
          v33[18] = 0;
          v34 = 0;
          v35 = 0;
          *v33 = v27;
          *&v33[8] = v29;
          v30 = *(a4 + 112);
          v33[16] = 1;
          *(a1 + 4368) = 40;
          v33[17] = v30;
          *(a1 + 4344) = v12;
          (*(*a1 + 96))(a1, v12, v11, v33);
        }

        goto LABEL_31;
      }
    }

    else
    {
      if (v18 <= 4)
      {
        if (v18 == 3)
        {
          v22 = *(a4 + 24);
          v37 = *(a4 + 8);
          v38 = v22;
          v23 = *(a4 + 56);
          v39 = *(a4 + 40);
          v40 = v23;
        }

        else
        {
          v20 = *(a4 + 16);
          v19 = *(a4 + 24);
          *&v37 = &unk_284BBE888;
          *(&v37 + 1) = v20;
          *&v38 = v19;
          sub_239495A4C(&v38 + 8, a4 + 32);
          v41 = *(a4 + 72);
          v16 = *(a4 + 112);
        }

        goto LABEL_26;
      }

      if (v18 == 5)
      {
        v24 = *(a4 + 56);
        v25 = *(a4 + 88);
        v41 = *(a4 + 72);
        v42 = v25;
        v43 = *(a4 + 104);
        v26 = *(a4 + 24);
        v37 = *(a4 + 8);
        v38 = v26;
        v39 = *(a4 + 40);
        v40 = v24;
        goto LABEL_26;
      }

      if (v18 == 6)
      {
        LOWORD(v37) = *(a4 + 8);
        goto LABEL_26;
      }
    }

    if ((v18 - 7) <= 2)
    {
      LOBYTE(v37) = *(a4 + 8);
    }

    goto LABEL_26;
  }

LABEL_31:
  v31 = sub_23948B4CC();
  if (os_signpost_enabled(v31))
  {
    *v33 = 136315394;
    *&v33[4] = "DeviceCommissioner";
    *&v33[12] = 2080;
    *&v33[14] = "CommissioningStageComplete";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v31, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", v33, 0x16u);
  }

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2394FDFC0(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    *v21 = "DeviceCommissioner";
    *&v21[8] = 2080;
    *&v21[10] = "continueCommissioningAfterConnectNetworkRequest";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v5 = *(a1 + 9136);
  if (v5)
  {
    *(a1 + 4368) = 29;
    if (*(a1 + 4344))
    {
      v6 = 0;
    }

    else
    {
      v10 = sub_2394FCD48((a1 + 4440));
      if (!v10)
      {
        v8 = 11;
        v9 = 1109;
        goto LABEL_21;
      }

      v6 = v10;
      v11 = *(a1 + 4280);
      v12 = *(v11 + 40);
      v13 = *(v11 + 56);
      v10[246] = v12;
      v10[247] = v13;
      v10[3] = a2;
      v10[4] = 0;
      v10[5] = a2;
      *(v10 + 20) = 1;
      *(v10 + 3) = xmmword_27DF7BD44;
      *(v10 + 64) = 1;
      *(v10 + 33) = 5540;
      *(v10 + 17) = 0;
      v10[9] = 0;
      *(a1 + 4344) = v10;
      v5 = *(a1 + 9136);
    }

    (*(*v5 + 32))(v5, *(a1 + 4288));
    v14 = sub_2393D9044(9u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v21 = HIDWORD(a2);
      *&v21[4] = 1024;
      *&v21[6] = a2;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_DEFAULT, "Continuing commissioning after connect to network complete for device ID 0x%08X%08X", buf, 0xEu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9u, 2);
    }

    *buf = 0;
    *&v21[4] = "core_dcm_operational_setup";
    v21[16] = 0;
    sub_23948BD20(buf);
    v15 = (*(**(a1 + 9136) + 40))(*(a1 + 9136), a1, v6);
    v16 = v15;
    v9 = HIDWORD(v15);
    if (v15)
    {
      *buf = 1;
      *&v21[4] = "core_dcm_operational_setup";
      *&v21[12] = v15;
      v21[16] = 3;
      sub_23948BD20(buf);
      v8 = v16;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v7 = sub_2393D9044(9u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "No default commissioner is specified", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(9u, 1);
    }

    v8 = 3;
    v9 = 1096;
  }

LABEL_21:
  v17 = sub_23948B4CC();
  if (os_signpost_enabled(v17))
  {
    *buf = 136315394;
    *v21 = "DeviceCommissioner";
    *&v21[8] = 2080;
    *&v21[10] = "continueCommissioningAfterConnectNetworkRequest";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v8 | (v9 << 32);
}

uint64_t sub_2394FE350(_BYTE *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) == 1)
  {
    if (a2)
    {
      v4 = sub_2393D9044(9u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v13 = HIDWORD(a2);
        v14 = 1024;
        v15 = a2;
        _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "StopPairing called for node ID 0x%08X%08X", buf, 0xEu);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9u, 2);
      }

      if (sub_2394F6F94((a1 + 4880), a2))
      {
        a1[4370] = 0;
        (*(*a1 + 64))(a1, 0x47600000074, "src/controller/CHIPDeviceController.cpp");
LABEL_17:
        v6 = 0;
        v5 = 0;
        goto LABEL_18;
      }

      v7 = sub_2394FB1BC(a1, a2);
      if (v7)
      {
        if (*(a1 + 543) == v7)
        {
          sub_2394FAE7C(a1);
          v10[0] = -1;
          v11[80] = 0;
          sub_2394FDB60(a1, 0x48100000074, "src/controller/CHIPDeviceController.cpp", v10);
          if (v10[0] == 4)
          {
            v10[1] = &unk_284BBE888;
            sub_239495880(v11);
          }
        }

        else
        {
          sub_2394FB378(a1, v7);
        }

        goto LABEL_17;
      }

      v5 = 0x47C00000000;
      v6 = 51;
    }

    else
    {
      v5 = 0x46E00000000;
      v6 = 47;
    }
  }

  else
  {
    v5 = 0x46D00000000;
    v6 = 3;
  }

LABEL_18:
  v8 = *MEMORY[0x277D85DE8];
  return v5 | v6;
}

void sub_2394FE578(void (****a1)(void), void (***a2)(void))
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    (**v2)(v2);

    j__free(v2);
  }
}

void sub_2394FE5E8(void (****a1)(void), void (***a2)(void))
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    (**v2)(v2);

    j__free(v2);
  }
}

uint64_t sub_2394FE658(uint64_t result)
{
  v1 = result;
  v2 = *(result + 4696);
  if (v2)
  {
    *(result + 4696) = 0;
    result = v2(result + 4680);
  }

  v3 = *(v1 + 4736);
  if (v3)
  {
    *(v1 + 4736) = 0;
    result = v3(v1 + 4720);
  }

  v4 = *(v1 + 4776);
  if (v4)
  {
    *(v1 + 4776) = 0;

    return v4(v1 + 4760);
  }

  return result;
}

unint64_t sub_2394FE6D8(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    v11 = 136315394;
    v12 = "DeviceCommissioner";
    v13 = 2080;
    v14 = "UnpairDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v11, 0x16u);
  }

  if (*(a1 + 32) == 1)
  {
    v5 = sub_239525300(a1, a2);
    v6 = v5 & 0xFFFFFFFF00000000;
    v7 = v5;
  }

  else
  {
    v6 = 0x4B100000000;
    v7 = 3;
  }

  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    v11 = 136315394;
    v12 = "DeviceCommissioner";
    v13 = 2080;
    v14 = "UnpairDevice";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6 | v7;
}

void *sub_2394FE858(void *result)
{
  v1 = result[544];
  if (v1)
  {
    v2 = result;
    sub_2394FB378(result, v1);
    result = v2[542];
    if (result)
    {
      v3 = *(*result + 24);

      return v3();
    }
  }

  return result;
}

void *sub_2394FE8E4(void *a1, int a2)
{
  v5 = 1;
  v6 = "core_dcm_pase_session";
  v7 = a2;
  v8 = 3;
  sub_23948BD20(&v5);
  v3 = a1[542];
  if (v3)
  {
    (*(*v3 + 16))(v3, 1);
  }

  return sub_2394FE858(a1);
}

uint64_t sub_2394FE990(uint64_t a1, uint64_t *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 4352);
  *(a1 + 4352) = 0;
  if (v3)
  {
    v4 = sub_2394F29C0(v3, a2);
    v6 = v5;
    v7 = sub_2393D9044(9u);
    v8 = v7;
    if (v4)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *v14 = sub_2393C9138();
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Failed in setting up secure channel: %s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(9u, 1);
      }

      result = (*(*a1 + 64))(a1, v4, v6);
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "Remote device completed SPAKE2+ handshake", buf, 2u);
      }

      if (sub_2393D5398(3u))
      {
        sub_2393D5320(9u, 3);
      }

      *buf = 1;
      *&v14[4] = "core_dcm_pase_session";
      v15 = 0;
      v16 = 3;
      sub_23948BD20(buf);
      result = *(a1 + 4336);
      if (result)
      {
        result = (*(*result + 24))(result, 0, 0);
      }

      if (*(a1 + 4370) == 1)
      {
        *(a1 + 4370) = 0;
        *buf = 0;
        *&v14[4] = "core_dcm_commission_device";
        v16 = 0;
        sub_23948BD20(buf);
        result = (*(**(a1 + 9136) + 40))(*(a1 + 9136), a1, v3);
      }
    }

    v12 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = *(*a1 + 64);
    v11 = *MEMORY[0x277D85DE8];

    return v10();
  }

  return result;
}

unint64_t sub_2394FEC68(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    v18 = "DeviceCommissioner";
    v19 = 2080;
    v20 = "SendCertificateChainRequestCommand";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v9 = sub_2393D9044(9u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v18 = a2;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "Sending Certificate Chain request to %p device", buf, 0xCu);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(9u, 3);
  }

  if (a2)
  {
    v16 = a3;
    buf[0] = *a4;
    if (buf[0] == 1)
    {
      LODWORD(v18) = *(a4 + 4);
    }

    v10 = sub_2394FEEAC(a1, a2, &v16, sub_2394FF094, sub_2394FF294, 0, buf, 0);
    v11 = v10 & 0xFFFFFFFF00000000;
    v12 = v10;
  }

  else
  {
    v11 = 0x4FA00000000;
    v12 = 47;
  }

  v13 = sub_23948B4CC();
  if (os_signpost_enabled(v13))
  {
    *buf = 136315394;
    v18 = "DeviceCommissioner";
    v19 = 2080;
    v20 = "SendCertificateChainRequestCommand";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11 | v12;
}

unint64_t sub_2394FEEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 a6, uint64_t a7, int a8)
{
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v18 = sub_238DE36B8(&v24);
  v27[0] = &unk_284BBF520;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BBF5B0;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v19 = (a1 + 4376);
  if (a8)
  {
    v19 = 0;
  }

  v20 = sub_23950F8A0(v17, v18, a6, a3, v27, v26, v23, a7, v19, 0);
  sub_238EF641C(v26);
  sub_239510894(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2394FF094(uint64_t a1, __int128 *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    v13 = "DeviceCommissioner";
    v14 = 2080;
    v15 = "OnCertificateChainResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v5 = sub_2393D9044(9u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Received certificate chain from the device", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9u, 2);
  }

  v6 = *a2;
  v9 = 0;
  v10 = v6;
  v11[80] = 0;
  sub_2394FDB60(a1, 0, 0, &v9);
  if (v9 == 4)
  {
    *&v10 = &unk_284BBE888;
    sub_239495880(v11);
  }

  v7 = sub_23948B4CC();
  if (os_signpost_enabled(v7))
  {
    *buf = 136315394;
    v13 = "DeviceCommissioner";
    v14 = 2080;
    v15 = "OnCertificateChainResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_2394FF294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC();
  if (os_signpost_enabled(v6))
  {
    *buf = 136315394;
    v14 = "DeviceCommissioner";
    v15 = 2080;
    v16 = "OnCertificateChainFailureResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v7 = sub_2393D9044(9u);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_2393C9138();
    *buf = 136315138;
    v14 = v8;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Device failed to receive the Certificate Chain request Response: %s", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393C9138();
    sub_2393D5320(9u, 2);
  }

  v11[0] = -1;
  v12[80] = 0;
  sub_2394FDB60(a1, a2, a3, v11);
  if (v11[0] == 4)
  {
    v11[1] = &unk_284BBE888;
    sub_239495880(v12);
  }

  v9 = sub_23948B4CC();
  if (os_signpost_enabled(v9))
  {
    *buf = 136315394;
    v14 = "DeviceCommissioner";
    v15 = 2080;
    v16 = "OnCertificateChainFailureResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

unint64_t sub_2394FF4CC(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "SendAttestationRequestCommand";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v9 = sub_2393D9044(9u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "Sending Attestation request to %p device", buf, 0xCu);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(9u, 3);
  }

  if (a2)
  {
    *buf = *a3;
    v16[0] = *a4;
    if (v16[0] == 1)
    {
      v17 = *(a4 + 4);
    }

    v10 = sub_2394FF780(a1, a2, buf, sub_2394FF968, sub_2394FFB6C, 0, v16, 0);
    if (v10)
    {
      v11 = v10 & 0xFFFFFFFF00000000;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v16 = 0;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "Sent Attestation request, waiting for the Attestation Information", v16, 2u);
      }

      if (sub_2393D5398(3u))
      {
        sub_2393D5320(9u, 3);
      }

      v11 = 0;
      LODWORD(v10) = 0;
    }

    v12 = v10;
  }

  else
  {
    v11 = 0x51D00000000;
    v12 = 47;
  }

  v13 = sub_23948B4CC();
  if (os_signpost_enabled(v13))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "SendAttestationRequestCommand";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12 | v11;
}

unint64_t sub_2394FF780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 a6, uint64_t a7, int a8)
{
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v18 = sub_238DE36B8(&v24);
  v27[0] = &unk_284BBF7C8;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BBF858;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v19 = (a1 + 4376);
  if (a8)
  {
    v19 = 0;
  }

  v20 = sub_239510914(v17, v18, a6, a3, v27, v26, v23, a7, v19, 0);
  sub_238EF641C(v26);
  sub_2395113B0(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2394FF968(uint64_t a1, __int128 *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    v15 = "DeviceCommissioner";
    v16 = 2080;
    v17 = "OnAttestationResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v5 = sub_2393D9044(9u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Received Attestation Information from the device", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9u, 2);
  }

  v6 = *a2;
  v7 = a2[1];
  v10 = 1;
  v11 = v6;
  v12 = v7;
  v13 = 0;
  sub_2394FDB60(a1, 0, 0, &v10);
  if (v10 == 4)
  {
    *&v11 = &unk_284BBE888;
    sub_239495880(&v12 + 8);
  }

  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    v15 = "DeviceCommissioner";
    v16 = 2080;
    v17 = "OnAttestationResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2394FFB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC();
  if (os_signpost_enabled(v6))
  {
    *buf = 136315394;
    v14 = "DeviceCommissioner";
    v15 = 2080;
    v16 = "OnAttestationFailureResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v7 = sub_2393D9044(9u);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_2393C9138();
    *buf = 136315138;
    v14 = v8;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Device failed to receive the Attestation Information Response: %s", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393C9138();
    sub_2393D5320(9u, 2);
  }

  v11[0] = -1;
  v12[80] = 0;
  sub_2394FDB60(a1, a2, a3, v11);
  if (v11[0] == 4)
  {
    v11[1] = &unk_284BBE888;
    sub_239495880(v12);
  }

  v9 = sub_23948B4CC();
  if (os_signpost_enabled(v9))
  {
    *buf = 136315394;
    v14 = "DeviceCommissioner";
    v15 = 2080;
    v16 = "OnAttestationFailureResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

_BYTE *sub_2394FFDA4(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952F0D8();
  }

  return a1 + 2;
}

void sub_2394FFDC4(uint64_t a1, uint64_t a2, __int16 a3)
{
  v19 = *MEMORY[0x277D85DE8];
  *(a1 + 9184) = a3;
  v5 = *((*(**(a1 + 9136) + 24))(*(a1 + 9136)) + 584);
  v6 = sub_2393D52C4(0x38uLL);
  v7 = v6;
  if (v6)
  {
    sub_2394B9DA4(v6, a2);
  }

  sub_23950F4D8((a1 + 9192), v7);
  (*(*v5 + 16))(&v17, v5);
  v8 = v17;
  v9 = sub_2393D9044(9u);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8 != 1)
  {
    if (v10)
    {
      WORD2(v17) = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Proceeding without changing fail-safe timer value as delegate has not set it", &v17 + 4, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9u, 2);
    }

    goto LABEL_14;
  }

  if (v10)
  {
    v11 = *sub_238EAB248(&v17);
    HIDWORD(v17) = 67109120;
    v18 = v11;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Changing fail-safe timer to %u seconds to handle DA failure", &v17 + 4, 8u);
  }

  if (sub_2393D5398(2u))
  {
    v16 = *sub_238EAB248(&v17);
    sub_2393D5320(9u, 2);
  }

  v12 = *(a1 + 4344);
  v13 = *(a1 + 4368);
  v14 = *sub_238EAB248(&v17);
  BYTE4(v17) = 1;
  v18 = 30000;
  if (!sub_239500688(a1, v12, v13, v14, &v17 + 4, sub_239500000, sub_239500294, 0))
  {
LABEL_14:
    sub_2395000A0(a1);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_239500000(uint64_t a1)
{
  v2 = sub_2393D9044(9u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Successfully extended fail-safe timer to handle DA failure", v3, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9u, 2);
  }

  sub_23950F81C(a1 + 4376);
  sub_2395000A0(a1);
}

void sub_2395000A0(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 4344))
  {
    v2 = *((*(**(a1 + 9136) + 24))(*(a1 + 9136)) + 584);
    v3 = sub_2393D9044(9u);
    v4 = v3;
    if (v2)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Device attestation completed, delegating continuation to client", v7, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9u, 2);
      }

      (*(*v2 + 24))(v2, a1, *(a1 + 4344), *(a1 + 9192), *(a1 + 9184));
    }

    else
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Need to wait for device attestation delegate, but no delegate available. Failing commissioning", v7, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(9u, 1);
      }

      v5 = *(a1 + 9184);
      v8 = 6;
      LOWORD(v9) = v5;
      v10[80] = 0;
      sub_2394FDB60(a1, 0x5AE000000ACLL, "src/controller/CHIPDeviceController.cpp", &v8);
      if (v8 == 4)
      {
        v9 = &unk_284BBE888;
        sub_239495880(v10);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_239500294(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(9u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Failed to extend fail-safe timer to handle attestation failure: %s", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393C9138();
    sub_2393D5320(9u, 2);
  }

  v3 = *(a1 + 9184);
  v5 = 6;
  LOWORD(v6) = v3;
  v7[80] = 0;
  sub_2394FDB60(a1, 0x5BA000000ACLL, "src/controller/CHIPDeviceController.cpp", &v5);
  if (v5 == 4)
  {
    v6 = &unk_284BBE888;
    sub_239495880(v7);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_2395003F4(uint64_t a1, unsigned int *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v8 = 0x5C20000002FLL;
LABEL_10:
    v7 = "src/controller/CHIPDeviceController.cpp";
    goto LABEL_11;
  }

  if (*(a1 + 4368) != 22)
  {
    v8 = 0x5C300000003;
    goto LABEL_10;
  }

  v3 = *(a1 + 4344);
  if (!v3)
  {
    v8 = 0x5C400000003;
    goto LABEL_10;
  }

  v4 = *(a1 + 4336);
  if (v4)
  {
    v6 = (*(*v3 + 24))(v3);
    (*(*v4 + 112))(v4, v6, *(a1 + 36), *a2);
  }

  v7 = 0;
  v8 = 0;
LABEL_11:
  v10[0] = -1;
  v11[80] = 0;
  sub_2394FDB60(a1, v8, v7, v10);
  if (v10[0] == 4)
  {
    v10[1] = &unk_284BBE888;
    sub_239495880(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_239500554(uint64_t a1, unsigned int *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (*(a1 + 4368) == 33)
    {
      v3 = *(a1 + 4344);
      if (v3)
      {
        v4 = *(a1 + 4336);
        if (v4)
        {
          v6 = (*(*v3 + 24))(v3);
          (*(*v4 + 120))(v4, v6, *(a1 + 36), *a2);
        }
      }
    }
  }

  v8[0] = -1;
  v9[80] = 0;
  sub_2394FDB60(a1, 0, 0, v8);
  if (v8[0] == 4)
  {
    v8[1] = &unk_284BBE888;
    sub_239495880(v9);
  }

  v7 = *MEMORY[0x277D85DE8];
}

BOOL sub_239500688(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, unint64_t, uint64_t), int a8)
{
  v33 = *MEMORY[0x277D85DE8];
  v15 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  v16 = v15 + 1000 * a4;
  v17 = *(a2 + 8);
  if (v16 < v17)
  {
    v22 = v15;
    v23 = sub_2393D9044(9u);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 67109376;
      v31 = a4;
      LOWORD(v32) = 1024;
      *(&v32 + 2) = (((((v17 - v22) >> 3) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4);
      _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_DEFAULT, "Skipping arming failsafe: new time (%u seconds from now) before old time (%u seconds from now)", v30, 0xEu);
    }

    if (sub_2393D5398(2u))
    {
      v26 = (((((*(a2 + 8) - v22) >> 3) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4);
      sub_2393D5320(9u, 2);
    }
  }

  else
  {
    *v30 = a4;
    v32 = a3;
    v18 = sub_2393D9044(9u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v29 = a4;
      _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_DEFAULT, "Arming failsafe (%u seconds)", buf, 8u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9u, 2);
    }

    buf[0] = *a5;
    if (buf[0] == 1)
    {
      v29 = *(a5 + 4);
    }

    v20 = sub_2395008F8(a1, a2, v30, a6, a7, 0, buf, a8);
    if (v20)
    {
      if (a8)
      {
        v21 = 0;
      }

      else
      {
        v21 = a1;
      }

      a7(v21, v20, v19);
    }

    else
    {
      *(a2 + 8) = v16;
    }
  }

  result = v16 >= v17;
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2395008F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 a6, uint64_t a7, int a8)
{
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v18 = sub_238DE36B8(&v24);
  v27[0] = &unk_284BBFA70;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BBFB00;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v19 = (a1 + 4376);
  if (a8)
  {
    v19 = 0;
  }

  v20 = sub_239511430(v17, v18, a6, a3, v27, v26, v23, a7, v19, 0);
  sub_238EF641C(v26);
  sub_23951431C(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t sub_239500AE0(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    v11 = 136315394;
    v12 = "DeviceCommissioner";
    v13 = 2080;
    v14 = "ValidateAttestationInfo";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v11, 0x16u);
  }

  if (*(a1 + 32) == 1)
  {
    v5 = *(a1 + 9200);
    if (v5)
    {
      (*(*v5 + 16))(v5, a2, a1 + 4800);
      v6 = 0;
      v7 = 0;
      goto LABEL_9;
    }

    v7 = 0x62E00000000;
  }

  else
  {
    v7 = 0x62D00000000;
  }

  v6 = 3;
LABEL_9:
  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    v11 = 136315394;
    v12 = "DeviceCommissioner";
    v13 = 2080;
    v14 = "ValidateAttestationInfo";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7 | v6;
}

uint64_t sub_239500C9C(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    v11 = 136315394;
    v12 = "DeviceCommissioner";
    v13 = 2080;
    v14 = "CheckForRevokedDACChain";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v11, 0x16u);
  }

  if (*(a1 + 32) == 1)
  {
    v5 = *(a1 + 9200);
    if (v5)
    {
      (*(*v5 + 48))(v5, a2, a1 + 4800);
      v6 = 0;
      v7 = 0;
      goto LABEL_9;
    }

    v7 = 0x63C00000000;
  }

  else
  {
    v7 = 0x63B00000000;
  }

  v6 = 3;
LABEL_9:
  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    v11 = 136315394;
    v12 = "DeviceCommissioner";
    v13 = 2080;
    v14 = "CheckForRevokedDACChain";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7 | v6;
}

unint64_t sub_239500E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v26 = *MEMORY[0x277D85DE8];
  v12 = sub_23948B4CC();
  if (os_signpost_enabled(v12))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    v24 = 2080;
    v25 = "ValidateCSR";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (*(a1 + 32) != 1)
  {
    v15 = 0x64700000000;
LABEL_9:
    v14 = 3;
    goto LABEL_14;
  }

  if (!*(a1 + 9200))
  {
    v15 = 0x64800000000;
    goto LABEL_9;
  }

  *buf = &unk_284BB9138;
  v13 = sub_2393FA970(a5, buf);
  v14 = v13;
  if (!v13)
  {
    (*(*a2 + 48))(&v20, a2);
    v16 = sub_238DE36B8(&v20);
    v22[0] = sub_239495304(*v16) + 216;
    v22[1] = 16;
    if (v20 == 1)
    {
      (*(*v21 + 32))(v21);
    }

    v13 = (*(**(a1 + 9200) + 40))(*(a1 + 9200), a3, v22, a4, buf, a6);
    v14 = v13;
  }

  v15 = v13 & 0xFFFFFFFF00000000;
LABEL_14:
  v17 = sub_23948B4CC();
  if (os_signpost_enabled(v17))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    v24 = 2080;
    v25 = "ValidateCSR";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v14 | v15;
}

unint64_t sub_2395010EC(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "SendOperationalCertificateSigningRequestCommand";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v9 = sub_2393D9044(9u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "Sending CSR request to %p device", buf, 0xCu);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(9u, 3);
  }

  if (a2)
  {
    buf[16] = 0;
    *buf = *a3;
    v16[0] = *a4;
    if (v16[0] == 1)
    {
      v17 = *(a4 + 4);
    }

    v10 = sub_2395013A4(a1, a2, buf, sub_23950158C, sub_239501790, 0, v16, 0);
    if (v10)
    {
      v11 = v10 & 0xFFFFFFFF00000000;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v16 = 0;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "Sent CSR request, waiting for the CSR", v16, 2u);
      }

      if (sub_2393D5398(3u))
      {
        sub_2393D5320(9u, 3);
      }

      v11 = 0;
      LODWORD(v10) = 0;
    }

    v12 = v10;
  }

  else
  {
    v11 = 0x65B00000000;
    v12 = 47;
  }

  v13 = sub_23948B4CC();
  if (os_signpost_enabled(v13))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "SendOperationalCertificateSigningRequestCommand";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12 | v11;
}

unint64_t sub_2395013A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 a6, uint64_t a7, int a8)
{
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v18 = sub_238DE36B8(&v24);
  v27[0] = &unk_284BBFD18;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BBFDA8;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v19 = (a1 + 4376);
  if (a8)
  {
    v19 = 0;
  }

  v20 = sub_239511ECC(v17, v18, a6, a3, v27, v26, v23, a7, v19, 0);
  sub_238EF641C(v26);
  sub_239512968(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_23950158C(uint64_t a1, __int128 *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    v15 = "DeviceCommissioner";
    v16 = 2080;
    v17 = "OnOperationalCertificateSigningRequest";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v5 = sub_2393D9044(9u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Received certificate signing request from the device", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9u, 2);
  }

  v6 = *a2;
  v7 = a2[1];
  v10 = 2;
  v11 = v6;
  v12 = v7;
  v13 = 0;
  sub_2394FDB60(a1, 0, 0, &v10);
  if (v10 == 4)
  {
    *&v11 = &unk_284BBE888;
    sub_239495880(&v12 + 8);
  }

  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    v15 = "DeviceCommissioner";
    v16 = 2080;
    v17 = "OnOperationalCertificateSigningRequest";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_239501790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC();
  if (os_signpost_enabled(v6))
  {
    *buf = 136315394;
    v14 = "DeviceCommissioner";
    v15 = 2080;
    v16 = "OnCSRFailureResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v7 = sub_2393D9044(9u);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_2393C9138();
    *buf = 136315138;
    v14 = v8;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Device failed to receive the CSR request Response: %s", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393C9138();
    sub_2393D5320(9u, 2);
  }

  v11[0] = -1;
  v12[80] = 0;
  sub_2394FDB60(a1, a2, a3, v11);
  if (v11[0] == 4)
  {
    v11[1] = &unk_284BBE888;
    sub_239495880(v12);
  }

  v9 = sub_23948B4CC();
  if (os_signpost_enabled(v9))
  {
    *buf = 136315394;
    v14 = "DeviceCommissioner";
    v15 = 2080;
    v16 = "OnCSRFailureResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

unint64_t sub_2395019C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "IssueNOCChain";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (*(a1 + 32) == 1)
  {
    v9 = sub_2393D9044(9u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 36);
      *buf = 67109120;
      *&buf[4] = v10;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Getting certificate chain for the device on fabric idx %u", buf, 8u);
    }

    if (sub_2393D5398(2u))
    {
      v21 = *(a1 + 36);
      sub_2393D5320(9u, 2);
    }

    (*(**(a1 + 4288) + 24))(*(a1 + 4288), a3);
    if (*(a1 + 36))
    {
      v11 = *(a1 + 4288);
      v12 = sub_239293160(a1);
      if (v12)
      {
        v13 = *(v12 + 8);
      }

      else
      {
        v13 = 0;
      }

      (*(*v11 + 32))(v11, v13);
    }

    v16 = *(a1 + 4288);
    *buf = 0;
    *&buf[8] = 0;
    v25[0] = 0;
    v25[1] = 0;
    v24[0] = 0;
    v24[1] = 0;
    v23[0] = 0;
    v23[1] = 0;
    v22[0] = 0;
    v22[1] = 0;
    v17 = (*(*v16 + 16))(v16, a2, buf, v25, v24, v23, v22, a4, v21);
    v14 = v17 & 0xFFFFFFFF00000000;
    v15 = v17;
  }

  else
  {
    v14 = 0x6A100000000;
    v15 = 3;
  }

  v18 = sub_23948B4CC();
  if (os_signpost_enabled(v18))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "IssueNOCChain";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v14 | v15;
}

unint64_t sub_239501C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = sub_23948B4CC();
  if (os_signpost_enabled(v12))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    v34 = 2080;
    v35 = "ProcessOpCSR";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (*(a1 + 32) == 1)
  {
    v27 = a7;
    v13 = sub_2393D9044(9u);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "Getting certificate chain for the device from the issuer", buf, 2u);
    }

    v14 = a6;
    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9u, 2);
    }

    *buf = &unk_284BB9138;
    v15 = sub_2393FA970(a5, buf);
    v16 = v15;
    if (!v15)
    {
      (*(*a2 + 48))(&v30, a2);
      v18 = sub_238DE36B8(&v30);
      v32[0] = sub_239495304(*v18) + 216;
      v32[1] = 16;
      if (v30 == 1)
      {
        (*(*v31 + 32))(v31);
      }

      v19 = *(a1 + 4288);
      v20 = (*(*a2 + 24))(a2);
      (*(*v19 + 24))(v19, v20);
      if (*(a1 + 36))
      {
        v21 = *(a1 + 4288);
        v22 = sub_239293160(a1);
        if (v22)
        {
          v23 = *(v22 + 8);
        }

        else
        {
          v23 = 0;
        }

        (*(*v21 + 32))(v21, v23);
      }

      v15 = (*(**(a1 + 4288) + 16))(*(a1 + 4288), a3, v27, a4, v32, a5, v14, a1 + 4840);
      v16 = v15;
    }

    v17 = v15 & 0xFFFFFFFF00000000;
  }

  else
  {
    v17 = 0x6B700000000;
    v16 = 3;
  }

  v24 = sub_23948B4CC();
  if (os_signpost_enabled(v24))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    v34 = 2080;
    v35 = "ProcessOpCSR";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v24, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v16 | v17;
}

unint64_t sub_239502030(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = *MEMORY[0x277D85DE8];
  v14 = sub_23948B4CC();
  if (os_signpost_enabled(v14))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "SendOperationalCertificate";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (a2)
  {
    *buf = *a3;
    buf[16] = *a4;
    if (buf[16] == 1)
    {
      v25 = *(a4 + 8);
    }

    v26 = a5;
    v27 = 16;
    v28 = a6;
    v29 = *(a1 + 4296);
    v22[0] = *a7;
    if (v22[0] == 1)
    {
      v23 = *(a7 + 4);
    }

    v15 = sub_2395022C0(a1, a2, buf, sub_2395024A8, sub_2395027BC, 0, v22, 0);
    if (v15)
    {
      v16 = v15 & 0xFFFFFFFF00000000;
    }

    else
    {
      v18 = sub_2393D9044(9u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_DEFAULT, "Sent operational certificate to the device", v22, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9u, 2);
      }

      v16 = 0;
      LODWORD(v15) = 0;
    }

    v17 = v15;
  }

  else
  {
    v16 = 0x6D400000000;
    v17 = 47;
  }

  v19 = sub_23948B4CC();
  if (os_signpost_enabled(v19))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "SendOperationalCertificate";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v17 | v16;
}

unint64_t sub_2395022C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 a6, uint64_t a7, int a8)
{
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v18 = sub_238DE36B8(&v24);
  v27[0] = &unk_284BBFFC0;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BC0050;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v19 = (a1 + 4376);
  if (a8)
  {
    v19 = 0;
  }

  v20 = sub_2395129E8(v17, v18, a6, a3, v27, v26, v23, a7, v19, 0);
  sub_238EF641C(v26);
  sub_239513484(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_2395024A8(uint64_t a1, unsigned __int8 *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    v19 = "DeviceCommissioner";
    v20 = 2080;
    v21 = "OnOperationalCertificateAddResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v5 = sub_2393D9044(9u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    *buf = 67109120;
    LODWORD(v19) = v6;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Device returned status %d on receiving the NOC", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    v15 = *a2;
    sub_2393D5320(9u, 2);
  }

  if (*(a1 + 32) != 1)
  {
    v10 = "src/controller/CHIPDeviceController.cpp";
    v11 = 1816;
LABEL_15:
    LODWORD(v9) = 3;
    goto LABEL_16;
  }

  v7 = *(a1 + 4344);
  if (!v7)
  {
    v10 = "src/controller/CHIPDeviceController.cpp";
    v11 = 1818;
    goto LABEL_15;
  }

  v9 = sub_2395029F4(*a2);
  if (!v9)
  {
    v9 = sub_239502A3C(a1, v7);
  }

  v10 = v8;
  if (v9)
  {
    v11 = HIDWORD(v9);
LABEL_16:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = sub_2393C9138();
      *buf = 136315138;
      v19 = v12;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Add NOC failed with error: %s", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393C9138();
      sub_2393D5320(9u, 2);
    }

    v16[0] = -1;
    v17[80] = 0;
    sub_2394FDB60(a1, v9 | (v11 << 32), v10, v16);
    if (v16[0] == 4)
    {
      v16[1] = &unk_284BBE888;
      sub_239495880(v17);
    }
  }

  v13 = sub_23948B4CC();
  if (os_signpost_enabled(v13))
  {
    *buf = 136315394;
    v19 = "DeviceCommissioner";
    v20 = 2080;
    v21 = "OnOperationalCertificateAddResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2395027BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC();
  if (os_signpost_enabled(v6))
  {
    *buf = 136315394;
    v14 = "DeviceCommissioner";
    v15 = 2080;
    v16 = "OnAddNOCFailureResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v7 = sub_2393D9044(9u);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_2393C9138();
    *buf = 136315138;
    v14 = v8;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Device failed to receive the operational certificate Response: %s", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393C9138();
    sub_2393D5320(9u, 2);
  }

  v11[0] = -1;
  v12[80] = 0;
  sub_2394FDB60(a1, a2, a3, v11);
  if (v11[0] == 4)
  {
    v11[1] = &unk_284BBE888;
    sub_239495880(v12);
  }

  v9 = sub_23948B4CC();
  if (os_signpost_enabled(v9))
  {
    *buf = 136315394;
    v14 = "DeviceCommissioner";
    v15 = 2080;
    v16 = "OnAddNOCFailureResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2395029F4(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return 0x70300000056;
  }

  v1 = qword_278A83738[a1];
  return qword_2395EAA28[a1] | qword_2395EA9C8[a1];
}

uint64_t sub_239502A3C(uint64_t a1, const char *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    v15 = "DeviceCommissioner";
    v16 = 2080;
    v17 = "OnOperationalCredentialsProvisioningCompletion";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v5 = sub_2393D9044(9u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = a2;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Operational credentials provisioned on device %p", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9u, 2);
  }

  if (a2)
  {
    v6 = *(a1 + 4336);
    if (v6)
    {
      (*(*v6 + 16))(v6, 0);
    }

    v12[0] = -1;
    v13[80] = 0;
    sub_2394FDB60(a1, 0, 0, v12);
    if (v12[0] == 4)
    {
      v12[1] = &unk_284BBE888;
      sub_239495880(v13);
    }

    v7 = 0;
    v8 = 0;
  }

  else
  {
    v8 = 0x74F00000000;
    v7 = 47;
  }

  v9 = sub_23948B4CC();
  if (os_signpost_enabled(v9))
  {
    *buf = 136315394;
    v15 = "DeviceCommissioner";
    v16 = 2080;
    v17 = "OnOperationalCredentialsProvisioningCompletion";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8 | v7;
}

unint64_t sub_239502CAC(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "SendTrustedRootCertificate";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (a2)
  {
    v9 = sub_2393D9044(9u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Sending root certificate to the device", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9u, 2);
    }

    *buf = *a3;
    v16[0] = *a4;
    if (v16[0] == 1)
    {
      v17 = *(a4 + 4);
    }

    v10 = sub_239502F50(a1, a2, buf, sub_239503138, sub_239503330, 0, v16, 0);
    if (v10)
    {
      v11 = v10 & 0xFFFFFFFF00000000;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Sent root certificate to the device", v16, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9u, 2);
      }

      v11 = 0;
      LODWORD(v10) = 0;
    }

    v12 = v10;
  }

  else
  {
    v11 = 0x72D00000000;
    v12 = 47;
  }

  v13 = sub_23948B4CC();
  if (os_signpost_enabled(v13))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceCommissioner";
    *&buf[12] = 2080;
    *&buf[14] = "SendTrustedRootCertificate";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12 | v11;
}

unint64_t sub_239502F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 a6, uint64_t a7, int a8)
{
  v27[4] = *MEMORY[0x277D85DE8];
  if (a8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a1;
    if (*(a1 + 4400))
    {
      sub_23953901C();
    }
  }

  v17 = (*(*a2 + 40))(a2);
  (*(*a2 + 48))(&v24, a2);
  v18 = sub_238DE36B8(&v24);
  v27[0] = &unk_284BC0268;
  v27[1] = v16;
  v27[2] = a4;
  v27[3] = v27;
  v26[0] = &unk_284BC02F8;
  v26[1] = v16;
  v26[2] = a5;
  v26[3] = v26;
  v23[0] = 0;
  v19 = (a1 + 4376);
  if (a8)
  {
    v19 = 0;
  }

  v20 = sub_239513504(v17, v18, a6, a3, v27, v26, v23, a7, v19, 0);
  sub_238EF641C(v26);
  sub_239513F80(v27);
  if (v24 == 1)
  {
    (*(*v25 + 32))(v25);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_239503138(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = sub_23948B4CC();
  if (os_signpost_enabled(v2))
  {
    *buf = 136315394;
    v9 = "DeviceCommissioner";
    v10 = 2080;
    v11 = "OnRootCertSuccessResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v3 = sub_2393D9044(9u);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "Device confirmed that it has received the root certificate", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9u, 2);
  }

  v6[0] = -1;
  v7[80] = 0;
  sub_2394FDB60(a1, 0, 0, v6);
  if (v6[0] == 4)
  {
    v6[1] = &unk_284BBE888;
    sub_239495880(v7);
  }

  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    v9 = "DeviceCommissioner";
    v10 = 2080;
    v11 = "OnRootCertSuccessResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_239503330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC();
  if (os_signpost_enabled(v6))
  {
    *buf = 136315394;
    v14 = "DeviceCommissioner";
    v15 = 2080;
    v16 = "OnRootCertFailureResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v7 = sub_2393D9044(9u);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_2393C9138();
    *buf = 136315138;
    v14 = v8;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Device failed to receive the root certificate Response: %s", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393C9138();
    sub_2393D5320(9u, 2);
  }

  v11[0] = -1;
  v12[80] = 0;
  sub_2394FDB60(a1, a2, a3, v11);
  if (v11[0] == 4)
  {
    v11[1] = &unk_284BBE888;
    sub_239495880(v12);
  }

  v9 = sub_23948B4CC();
  if (os_signpost_enabled(v9))
  {
    *buf = 136315394;
    v14 = "DeviceCommissioner";
    v15 = 2080;
    v16 = "OnRootCertFailureResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t sub_239503574(uint64_t a1, uint64_t a2)
{
  result = sub_2394E9BEC(a1);
  if (!result)
  {
    v5 = *a2;
    v6 = *(a2 + 16);
    return sub_2394BA294((a1 + 16), &v5);
  }

  return result;
}

uint64_t sub_2395035D0(uint64_t a1, void *a2)
{
  sub_2394E97A0(a1, a2);

  return sub_2394F6CAC((a1 + 4880), a2);
}

void sub_239503614(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2[0] = -1;
  v3[80] = 0;
  sub_2394FDB60(a1, 0, 0, v2);
  if (v2[0] == 4)
  {
    v2[1] = &unk_284BBE888;
    sub_239495880(v3);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void sub_2395036B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = sub_2393D9044(9u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Received failure response: %s", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393C9138();
    sub_2393D5320(9u, 2);
  }

  v8[0] = -1;
  v9[80] = 0;
  sub_2394FDB60(a1, a2, a3, v8);
  if (v8[0] == 4)
  {
    v8[1] = &unk_284BBE888;
    sub_239495880(v9);
  }

  v7 = *MEMORY[0x277D85DE8];
}

unint64_t sub_239503804(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a1 + 1024;
  *(a1 + 572) = *a4;
  v8 = (a4 + 16);
  v9 = *(a4 + 16);
  *(v7 + 976) = v9;
  if (v9 == 1)
  {
    *(v7 + 977) = *(a4 + 17);
  }

  v10 = *(a4 + 18);
  *(v7 + 978) = v10;
  if (v10 == 1)
  {
    *(v7 + 490) = *(a4 + 20);
  }

  v11 = *(a4 + 22);
  *(v7 + 982) = v11;
  if (v11 == 1)
  {
    *(v7 + 983) = *(a4 + 23);
  }

  v12 = *(a4 + 24);
  *(v7 + 984) = v12;
  if (v12 == 1)
  {
    *(v7 + 985) = *(a4 + 25);
  }

  if (*a4 == 116)
  {
    v15 = sub_2394FB1BC(a1, a3);
    v16 = v15;
    if (v15 == a2)
    {
      v17 = v30;
      sub_2394F2864(v15, v30);
    }

    else
    {
      v17 = v29;
      (*(*a2 + 48))(v29, a2);
    }

    v20 = sub_238DE36B8(v17);
    *(&buf + 1) = 0;
    v39 = 0;
    *&buf = &unk_284BBBF18;
    v40[0] = 0;
    sub_239495C6C(&buf, v20);
    if (v16 == a2)
    {
      if (v30[0] != 1)
      {
        goto LABEL_39;
      }

      v21 = v31;
    }

    else
    {
      if (LOBYTE(v29[0]) != 1)
      {
        goto LABEL_39;
      }

      v21 = v29[1];
    }

    (*(*v21 + 32))(v21);
LABEL_39:
    v27 = 0;
    v28 = 0;
    sub_239495A4C(v36, &buf);
    sub_239495A4C(v26, &buf);
    v22 = sub_2393D9044(9u);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v34 = 134217984;
      *v35 = a2;
      _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_DEFAULT, "Disarming failsafe on device %p in background", v34, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(9u, 2);
    }

    (*(*a2 + 40))(a2);
    if (v40[0] == 1)
    {
      *&v35[4] = *sub_238DE36B8(v40);
      (*(**&v35[4] + 24))(*&v35[4]);
      v23 = 1;
    }

    else
    {
      v23 = 0;
    }

    v34[0] = v23;
    sub_238DE36B8(v34);
    sub_239495A4C(v25, v36);
    operator new();
  }

  if (!*a4)
  {
    v41[0] = -1;
    v42[80] = 0;
    sub_2394FDB60(a1, 0, 0, v41);
    if (v41[0] == 4)
    {
      v41[1] = &unk_284BBE888;
      sub_239495880(v42);
    }

    v13 = sub_2394FB1BC(a1, a3);
    if (v13)
    {
      sub_2394FB378(a1, v13);
    }

LABEL_15:
    result = sub_239503F14(a1, a3, a1 + 1144);
    goto LABEL_47;
  }

  if (*v8 == 1 && *sub_23949B670(v8) >= 0x17u)
  {
    v32[0] = -1;
    v33[80] = 0;
    sub_2394FDB60(a1, 0, 0, v32);
    if (v32[0] == 4)
    {
      v32[1] = &unk_284BBE888;
      sub_239495880(v33);
    }

    goto LABEL_15;
  }

  v18 = sub_2393D9044(9u);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a2;
    _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_DEFAULT, "Disarming failsafe on device %p", &buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9u, 2);
  }

  buf = 0uLL;
  v36[0] = 0;
  result = sub_2395008F8(a1, a2, &buf, sub_239504384, sub_239504414, 0, v36, 0);
  if (result)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_2393C9138();
      *v36 = 136315138;
      v37 = v19;
      _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "Failed to send command to disarm fail-safe: %s", v36, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(9u, 1);
    }

    result = sub_239504270(a1);
  }

LABEL_47:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239503F14(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  *buf = 1;
  v22 = "core_dcm_commission_device";
  LODWORD(v23) = *a3;
  BYTE4(v23) = 3;
  sub_23948BD20(buf);
  v6 = sub_2393D9044(9u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*a3)
    {
      v7 = *a3;
      v8 = a3[1];
      v9 = sub_2393C9138();
    }

    else
    {
      v9 = "success";
    }

    *buf = 67109634;
    v21 = HIDWORD(a2);
    LOWORD(v22) = 1024;
    *(&v22 + 2) = a2;
    HIWORD(v22) = 2080;
    v23 = v9;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Commissioning complete for node ID 0x%08X%08X: %s", buf, 0x18u);
  }

  if (sub_2393D5398(2u))
  {
    if (*a3)
    {
      v10 = *a3;
      v11 = a3[1];
      sub_2393C9138();
    }

    sub_2393D5320(9u, 2);
  }

  *(a1 + 4368) = 1;
  result = *(a1 + 4336);
  if (result)
  {
    (*(*result + 40))(result, a2, *a3, a3[1]);
    v13 = sub_239293160(a1);
    if (v13)
    {
      v14 = *(v13 + 16);
    }

    else
    {
      v14 = 0;
    }

    v15 = *(a1 + 4336);
    if (*a3)
    {
      v16 = *a3;
      v17 = a3[1];
      if (*(a3 + 16) == 1)
      {
        v18 = *sub_23949B670(a3 + 16);
      }

      else
      {
        v18 = 0;
      }

      buf[0] = *(a3 + 18);
      if (buf[0] == 1)
      {
        *&buf[2] = *(a3 + 10);
      }

      result = (*(*v15 + 56))(v15, a2, v14, v16, v17, v18, buf);
    }

    else
    {
      result = (*(*v15 + 48))(v15, a2, v14);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_239504190(uint64_t a1, uint64_t *a2, unsigned __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = *MEMORY[0x277D85DE8];
  sub_2395117DC(v18, a5);
  sub_238EFB6DC(v17, a6);
  v16[0] = 0;
  v13 = sub_239511430(a1, a2, a3, a4, v18, v17, v16, a7, 0, 0);
  sub_238EF641C(v17);
  sub_23951431C(v18);
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t sub_239504270(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  result = a1[543];
  if (result)
  {
    v3 = (*(*result + 24))(result);
    v6[0] = -1;
    v7[80] = 0;
    sub_2394FDB60(a1, 0, 0, v6);
    if (v6[0] == 4)
    {
      v6[1] = &unk_284BBE888;
      sub_239495880(v7);
    }

    v4 = sub_2394FB1BC(a1, v3);
    if (v4)
    {
      sub_2394FB378(a1, v4);
    }

    result = sub_239503F14(a1, v3, a1 + 1144);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239504384(void *a1)
{
  v2 = sub_2393D9044(9u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Failsafe disarmed", v4, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9u, 2);
  }

  return sub_239504270(a1);
}

uint64_t sub_239504414(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(9u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Ignoring failure to disarm failsafe: %s", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393C9138();
    sub_2393D5320(9u, 2);
  }

  result = sub_239504270(a1);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 sub_239504510(uint64_t a1, __n128 *a2)
{
  if (*a1 == 4)
  {
    *(a1 + 8) = &unk_284BBE888;
    sub_239495880(a1 + 32);
  }

  *(a1 + 8) = &unk_284BBD538;
  v4 = a2->n128_u64[1];
  *(a1 + 8) = &unk_284BBE888;
  *(a1 + 16) = v4;
  *(a1 + 24) = a2[1].n128_u64[0];
  sub_239495ADC(a1 + 32, &a2[1].n128_i8[8]);
  result = a2[4];
  *(a1 + 72) = result;
  *a1 = 4;
  return result;
}

uint64_t sub_2395045BC(uint64_t a1, unsigned __int8 *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(9u);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a2;
    *buf = 67109120;
    v9 = v4;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "Status of extending fail-safe for CASE retry: %u", buf, 8u);
  }

  result = sub_2393D5398(2u);
  if (result)
  {
    v7 = *a2;
    result = sub_2393D5320(9u, 2);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239504688()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = sub_2393D9044(9u);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v4 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_ERROR, "Failed to extend fail-safe for CASE retry: %s", buf, 0xCu);
  }

  result = sub_2393D5398(1u);
  if (result)
  {
    sub_2393C9138();
    result = sub_2393D5320(9u, 1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_239504778(uint64_t a1, uint64_t a2)
{
  if (!a2 || *(a1 + 4328) != a2)
  {
    sub_23953913C();
  }

  sub_2394FE578((a1 + 4328), 0);
  if (*(a1 + 4368) != 2)
  {
    sub_2395390A4();
  }

  v3 = (*(**(a1 + 9144) + 24))(*(a1 + 9144));

  sub_239504810(a1, v3);
}

void sub_239504810(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 4096;
  if (*(a1 + 4368) != 2)
  {
    sub_2395391D4();
  }

  v5 = *(a1 + 4369);
  if (v5 == 255)
  {

    sub_239504EC4(a1, a2);
    return;
  }

  v69 = *(a1 + 4369);
  v70 = 0;
  *&v6 = -1;
  *(&v6 + 1) = -1;
  v71[0] = v6;
  v71[1] = v6;
  v71[2] = v6;
  v71[3] = v6;
  v71[4] = v6;
  v72[0] = v6;
  *(v72 + 12) = v6;
  if (!v5)
  {
    *&v71[0] = 0x400000030;
    WORD4(v71[0]) = 0;
    v7 = 1;
    goto LABEL_27;
  }

  v7 = v5 - 1;
  v69 = v5 - 1;
  if (v5 == 1)
  {
LABEL_27:
    v32 = v7 + 1;
    v33 = v71 + 12 * v7;
    *v33 = 48;
    *(v33 + 2) = -65536;
    goto LABEL_28;
  }

  v69 = v5 - 2;
  if (v5 != 2)
  {
    v8 = v5 - 3;
    v69 = v8;
    if (!v8)
    {
      goto LABEL_10;
    }

LABEL_29:
    v11 = v8 - 1;
    v69 = v11;
    if (!v11)
    {
      goto LABEL_12;
    }

LABEL_30:
    v14 = v11 - 1;
    v69 = v14;
    if (!v14)
    {
      goto LABEL_14;
    }

LABEL_31:
    v17 = v14 - 1;
    v69 = v17;
    if (!v17)
    {
      goto LABEL_16;
    }

LABEL_32:
    v20 = v17 - 1;
    v69 = v20;
    if (!v20)
    {
      goto LABEL_18;
    }

LABEL_33:
    v23 = v20 - 1;
    v69 = v23;
    if (!v23)
    {
      goto LABEL_20;
    }

LABEL_34:
    v26 = v23 - 1;
    v69 = v26;
    if (!v26)
    {
      goto LABEL_22;
    }

    goto LABEL_35;
  }

  v32 = 0;
LABEL_28:
  v70 = v32 + 1;
  v34 = v71 + 12 * v32;
  *v34 = 0x100000030;
  *(v34 + 2) = -65536;
  v8 = v69;
  if (v69)
  {
    goto LABEL_29;
  }

LABEL_10:
  v9 = v70;
  if (v70 > 8)
  {
    goto LABEL_72;
  }

  ++v70;
  v10 = v71 + 12 * v9;
  *v10 = 0x200000030;
  *(v10 + 2) = -65536;
  v11 = v69;
  if (v69)
  {
    goto LABEL_30;
  }

LABEL_12:
  v12 = v70;
  if (v70 > 8)
  {
    goto LABEL_72;
  }

  ++v70;
  v13 = v71 + 12 * v12;
  *v13 = 0x300000030;
  *(v13 + 2) = -65536;
  v14 = v69;
  if (v69)
  {
    goto LABEL_31;
  }

LABEL_14:
  v15 = v70;
  if (v70 > 8)
  {
    goto LABEL_72;
  }

  ++v70;
  v16 = v71 + 12 * v15;
  *v16 = 0xC00000030;
  *(v16 + 2) = -65536;
  v17 = v69;
  if (v69)
  {
    goto LABEL_32;
  }

LABEL_16:
  v18 = v70;
  if (v70 > 8)
  {
    goto LABEL_72;
  }

  ++v70;
  v19 = v71 + 12 * v18;
  *v19 = 0x200000028;
  *(v19 + 2) = -65536;
  v20 = v69;
  if (v69)
  {
    goto LABEL_33;
  }

LABEL_18:
  v21 = v70;
  if (v70 > 8)
  {
    goto LABEL_72;
  }

  ++v70;
  v22 = v71 + 12 * v21;
  *v22 = 0x400000028;
  *(v22 + 2) = -65536;
  v23 = v69;
  if (v69)
  {
    goto LABEL_34;
  }

LABEL_20:
  v24 = v70;
  if (v70 > 8)
  {
    goto LABEL_72;
  }

  ++v70;
  v25 = v71 + 12 * v24;
  *v25 = -4294967240;
  *(v25 + 2) = -65536;
  v26 = v69;
  if (!v69)
  {
LABEL_22:
    v27 = v70;
    if (v70 > 8)
    {
      goto LABEL_72;
    }

    ++v70;
    v28 = v71 + 12 * v27;
    *v28 = 0xFFFC00000031;
    *(v28 + 2) = -1;
    v29 = v69;
    if (!v69)
    {
      goto LABEL_24;
    }

LABEL_36:
    v69 = v29 - 1;
    goto LABEL_37;
  }

LABEL_35:
  v29 = v26 - 1;
  v69 = v29;
  if (v29)
  {
    goto LABEL_36;
  }

LABEL_24:
  v30 = v70;
  if (v70 > 8)
  {
    goto LABEL_72;
  }

  ++v70;
  v31 = v71 + 12 * v30;
  *v31 = 0x300000031;
  *(v31 + 2) = -1;
LABEL_37:
  v67[0] = *(a2 + 592);
  if (v67[0] & 1) != 0 && (v67[1] = *(a2 + 593), (*sub_238DE36D8(v67)) || (v73[0] = *(a2 + 594), (v73[0]) && (v73[1] = *(a2 + 595), (*sub_238DE36D8(v73)))
  {
    if (v69)
    {
      v35 = --v69;
      goto LABEL_47;
    }

    v36 = v70;
    if (v70 > 8)
    {
      goto LABEL_72;
    }

    ++v70;
    v37 = v71 + 12 * v36;
    *v37 = 0x200000031;
    *(v37 + 2) = -1;
  }

  v35 = v69;
LABEL_47:
  if (*(a2 + 669) == 1)
  {
    if (v35)
    {
      v69 = --v35;
    }

    else
    {
      v38 = v70;
      if (v70 > 8)
      {
        goto LABEL_72;
      }

      ++v70;
      v39 = v71 + 12 * v38;
      *v39 = 0x10000003ELL;
      *(v39 + 2) = -65536;
      v35 = v69;
    }
  }

  if (!*(a2 + 668))
  {
LABEL_55:
    if (v35)
    {
      goto LABEL_56;
    }

    goto LABEL_63;
  }

  if (v35)
  {
    v69 = --v35;
    goto LABEL_55;
  }

  v44 = v70;
  if (v70 > 8)
  {
    goto LABEL_72;
  }

  ++v70;
  v45 = v71 + 12 * v44;
  *v45 = 0xFFFC00000046;
  *(v45 + 2) = -65536;
  v35 = v69;
  if (v69)
  {
LABEL_56:
    v40 = v35 - 1;
    v69 = v40;
    if (v40)
    {
      goto LABEL_57;
    }

LABEL_65:
    v48 = v70;
    if (v70 > 8)
    {
      goto LABEL_72;
    }

    ++v70;
    v49 = v71 + 12 * v48;
    *v49 = 0x700000046;
    *(v49 + 2) = -65536;
    v41 = v69;
    if (v69)
    {
      goto LABEL_58;
    }

    goto LABEL_67;
  }

LABEL_63:
  v46 = v70;
  if (v70 > 8)
  {
    goto LABEL_72;
  }

  ++v70;
  v47 = v71 + 12 * v46;
  *v47 = 0x600000046;
  *(v47 + 2) = -65536;
  v40 = v69;
  if (!v69)
  {
    goto LABEL_65;
  }

LABEL_57:
  v41 = v40 - 1;
  v69 = v41;
  if (v41)
  {
LABEL_58:
    v42 = v41 - 1;
    v69 = v42;
    if (v42)
    {
      goto LABEL_59;
    }

LABEL_69:
    v52 = v70;
    if (v70 <= 8)
    {
      ++v70;
      v53 = v71 + 12 * v52;
      *v53 = 0x100000046;
      *(v53 + 2) = -65536;
      v43 = v69;
      if (v69)
      {
        goto LABEL_60;
      }

      goto LABEL_71;
    }

LABEL_72:
    v70 = 10;
    v55 = 9;
LABEL_73:
    v56 = *(v2 + 273);
    if (v56 >= 0xF6)
    {
      sub_239539304();
    }

    v57 = v56 + 9;
    goto LABEL_75;
  }

LABEL_67:
  v50 = v70;
  if (v70 > 8)
  {
    goto LABEL_72;
  }

  ++v70;
  v51 = v71 + 12 * v50;
  *v51 = 70;
  *(v51 + 2) = -65536;
  v42 = v69;
  if (!v69)
  {
    goto LABEL_69;
  }

LABEL_59:
  v43 = v42 - 1;
  v69 = v43;
  if (v43)
  {
LABEL_60:
    v69 = v43 - 1;
    goto LABEL_79;
  }

LABEL_71:
  v54 = v70;
  if (v70 > 8)
  {
    goto LABEL_72;
  }

  ++v70;
  v59 = v71 + 12 * v54;
  *v59 = 0x200000046;
  *(v59 + 2) = -65536;
LABEL_79:
  v60 = *(a2 + 680);
  if (v60)
  {
    v61 = *(a2 + 672);
    v62 = 12 * v60;
    do
    {
      if (v69)
      {
        --v69;
      }

      else
      {
        v63 = v70;
        if (v70 > 8)
        {
          goto LABEL_72;
        }

        v64 = *(v61 + 2);
        v65 = *v61;
        ++v70;
        v66 = v71 + 12 * v63;
        *v66 = v65;
        *(v66 + 2) = v64;
      }

      v61 = (v61 + 12);
      v62 -= 12;
    }

    while (v62);
  }

  if (!v70)
  {
    sub_23953926C();
  }

  if (v70 >= 9)
  {
    v55 = 9;
  }

  else
  {
    v55 = v70;
  }

  if (v70 >= 0xA)
  {
    goto LABEL_73;
  }

  v57 = -1;
LABEL_75:
  *(v2 + 273) = v57;
  v58 = *(a1 + 4344);
  v67[0] = *(v2 + 264);
  if (v67[0] == 1)
  {
    v68 = *(a1 + 4364);
  }

  sub_239505188(a1, v58, v67, v71, v55);
}

void sub_239504EC4(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  *v26 = -1;
  *&v26[2] = 0uLL;
  *&v26[18] = 514;
  v26[20] = 0;
  *&v26[24] = 0;
  *&v26[28] = 257;
  *&v27 = 0;
  BYTE8(v27) = 1;
  LOWORD(v28) = 0;
  *(&v28 + 4) = 0;
  WORD6(v28) = 0;
  LODWORD(v29) = 0;
  *(&v29 + 1) = 0;
  v30 = 0;
  *&v25 = *(a1 + 4320);
  *(&v25 + 1) = 0xFFFF0000FFFFLL;
  v4 = sub_2395054F0(a1, &v25);
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_239505A24(a1, &v25);
  if (v8 == 0 && v9 != 0)
  {
    v6 = v10;
    v7 = v9;
    v8 = v9;
  }

  v11 = sub_239505C28(a1, &v25);
  if (v8 == 0 && v11 != 0)
  {
    v6 = v12;
    v7 = v11;
    v8 = v11;
  }

  v13 = sub_2395060A0(a1, &v25);
  if (v8 == 0 && v13 != 0)
  {
    v6 = v14;
    v7 = v13;
    v8 = v13;
  }

  sub_239506224(a1, &v25);
  v15 = sub_239506770(a1, &v25);
  if (v8 == 0 && v15 != 0)
  {
    v6 = v16;
    v7 = v15;
    v8 = v15;
  }

  v17 = (*(*a1 + 112))(a1, &v25, a2);
  v19 = v8 == 0;
  v20 = v17 != 0;
  if (v19 && v20)
  {
    v21 = v18;
  }

  else
  {
    v21 = v6;
  }

  if (v19 && v20)
  {
    v7 = v17;
    v22 = v17;
  }

  else
  {
    v22 = v8;
  }

  v23 = *(a1 + 4336);
  if (v23 && !v22)
  {
    (*(*v23 + 72))(v23, &v25);
  }

  v33[2] = v27;
  v33[3] = v28;
  v33[4] = v29;
  v32 = v25;
  v33[0] = *v26;
  v31 = 5;
  v34 = v30;
  v33[1] = *&v26[16];
  v35 = 0;
  sub_2394FDB60(a1, v7 & 0xFFFFFFFF00000000 | v22, v21, &v31);
  if (v31 == 4)
  {
    *&v32 = &unk_284BBE888;
    sub_239495880(v33 + 8);
  }

  sub_2394FE5E8((a1 + 4320), 0);
  v24 = *MEMORY[0x277D85DE8];
}

uint64_t sub_239505188(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v37 = *MEMORY[0x277D85DE8];
  if (*(a1 + 4328))
  {
    sub_23953939C();
  }

  v10 = sub_2394C7C20();
  (*(*a2 + 48))(buf, a2);
  v11 = sub_238DE36B8(buf);
  v23[1] = 0;
  v23[2] = 0;
  v23[0] = &unk_284BBBF18;
  v24 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 1;
  v32 = 0;
  sub_239495C6C(v23, v11);
  if (buf[0] == 1)
  {
    (*(**&v36[4] + 32))(*&v36[4]);
  }

  LOBYTE(v31) = 0;
  if (*a3 == 1)
  {
    LODWORD(v29) = *sub_2393E1D9C(a3);
  }

  *&v26 = a4;
  *(&v26 + 1) = a5;
  v12 = *(a1 + 4320);
  *(a1 + 4320) = 0;
  v13 = (*(*a2 + 40))(a2);
  v14 = sub_2393D52C4(0x160uLL);
  v15 = v14;
  if (v14)
  {
    sub_2394D76F4(v14, v10, v13, v12 + 22, 0);
  }

  v17 = sub_2394D80C8(v15, v23);
  if (v17)
  {
    v18 = v16;
    v19 = sub_2393D9044(9u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = sub_2393C9138();
      *buf = 136315138;
      *v36 = v20;
      _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "Failed to send read request: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(9u, 1);
    }

    v33[0] = -1;
    v34[80] = 0;
    sub_2394FDB60(a1, v17, v18, v33);
    if (v33[0] == 4)
    {
      v33[1] = &unk_284BBE888;
      sub_239495880(v34);
    }

    if (v15)
    {
      (**v15)(v15);
      j__free(v15);
    }

    if (v12)
    {
      (**v12)(v12);
      j__free(v12);
    }
  }

  else
  {
    sub_2394FE5E8((a1 + 4320), v12);
    sub_2394FE578((a1 + 4328), v15);
  }

  result = sub_239495880(v23);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2395054F0(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v4 = *(a1 + 4320);
  *buf = 0;
  v30 = 0x100000030;
  buf[2] = 0;
  v5 = sub_2395146E0(v4, buf, &v28);
  if (v5)
  {
    v6 = sub_2393D9044(9u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = sub_2393C9138();
      *buf = 136315138;
      v30 = v7;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Failed to read BasicCommissioningInfo: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(9u, 1);
    }
  }

  else
  {
    v5 = 0;
    *(a2 + 32) = v28;
  }

  v8 = *(a1 + 4320);
  *buf = 0;
  v30 = 0x200000030;
  buf[2] = 0;
  v9 = sub_239514770(v8, buf, (a2 + 34));
  if (v9)
  {
    v10 = sub_2393D9044(9u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_2393C9138();
      *buf = 136315138;
      v30 = v11;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Failed to read RegulatoryConfig: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(9u, 1);
    }

    v5 = v9;
  }

  v12 = *(a1 + 4320);
  *buf = 0;
  v30 = 0x300000030;
  buf[2] = 0;
  v13 = sub_239514800(v12, buf, (a2 + 35));
  if (v13)
  {
    v14 = sub_2393D9044(9u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = sub_2393C9138();
      *buf = 136315138;
      v30 = v15;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Failed to read LocationCapability: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(9u, 1);
    }

    v5 = v13;
  }

  v16 = *(a1 + 4320);
  *buf = 0;
  v30 = 48;
  buf[2] = 0;
  v17 = sub_239514890(v16, buf, (a2 + 24));
  if (v17)
  {
    v18 = sub_2393D9044(9u);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = sub_2393C9138();
      *buf = 136315138;
      v30 = v19;
      _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_ERROR, "Failed to read Breadcrumb: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(9u, 1);
    }

    v5 = v17;
  }

  v20 = *(a1 + 4320);
  *buf = 0;
  v30 = 0x400000030;
  buf[2] = 0;
  if (sub_239514920(v20, buf, (a2 + 56)))
  {
    v21 = sub_2393D9044(9u);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = sub_2393C9138();
      *buf = 136315138;
      v30 = v22;
      _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "Ignoring failure to read SupportsConcurrentConnection: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(9u, 1);
    }

    *(a2 + 56) = 1;
  }

  v23 = *(a1 + 4320);
  *buf = 0;
  v30 = 0xC00000030;
  buf[2] = 0;
  if (sub_2395149B0(v23, buf, (a2 + 36)))
  {
    v24 = sub_2393D9044(9u);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = sub_2393C9138();
      *buf = 136315138;
      v30 = v25;
      _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_ERROR, "Ignoring failure to read IsCommissioningWithoutPower: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(9u, 1);
    }

    *(a2 + 36) = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v5;
}

unint64_t sub_239505A24(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4320);
  *buf = 0;
  v15 = 0x200000028;
  buf[2] = 0;
  v5 = sub_239514A40(v4, buf, (a2 + 20));
  if (v5)
  {
    v6 = sub_2393D9044(9u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = sub_2393C9138();
      *buf = 136315138;
      v15 = v7;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Failed to read VendorID: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(9u, 1);
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = *(a1 + 4320);
  *buf = 0;
  v15 = 0x400000028;
  buf[2] = 0;
  v9 = sub_239514ADC(v8, buf, (a2 + 22));
  if (v9)
  {
    v10 = sub_2393D9044(9u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_2393C9138();
      *buf = 136315138;
      v15 = v11;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Failed to read ProductID: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(9u, 1);
    }

    v5 = v9;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

unint64_t sub_239505C28(uint64_t a1, _WORD *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4320);
  v5 = *(v4 + 16);
  v32 = (v4 + 24);
  if (v5 != (v4 + 24))
  {
    do
    {
      v6 = v5[5];
      if (v6 != v5 + 6)
      {
        do
        {
          if (*(v6 + 8) == 49)
          {
            v7 = v6[5];
            if (v7 != v6 + 6)
            {
              do
              {
                v8 = *(v7 + 8);
                *v34 = *(v5 + 16);
                LODWORD(v35) = 49;
                HIDWORD(v35) = v8;
                v34[2] = 0;
                if (v8 == 65532)
                {
                  v33 = 0;
                  if (!sub_238DB4ADC(*(a1 + 4320), v34, &v33))
                  {
                    if (v33)
                    {
                      v10 = sub_2393D9044(9u);
                      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 67109120;
                        v37 = *v34;
                        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "NetworkCommissioning Features: has WiFi. endpointid = %u", buf, 8u);
                      }

                      if (sub_2393D5398(2u))
                      {
                        sub_2393D5320(9u, 2);
                      }

                      a2[4] = *v34;
                    }

                    else if ((v33 & 2) != 0)
                    {
                      v11 = sub_2393D9044(9u);
                      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 67109120;
                        v37 = *v34;
                        _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "NetworkCommissioning Features: has Thread. endpointid = %u", buf, 8u);
                      }

                      if (sub_2393D5398(2u))
                      {
                        sub_2393D5320(9u, 2);
                      }

                      a2[6] = *v34;
                    }

                    else if ((v33 & 4) != 0)
                    {
                      v9 = sub_2393D9044(9u);
                      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 67109120;
                        v37 = *v34;
                        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "NetworkCommissioning Features: has Ethernet. endpointid = %u", buf, 8u);
                      }

                      if (sub_2393D5398(2u))
                      {
                        sub_2393D5320(9u, 2);
                      }

                      a2[8] = *v34;
                    }
                  }
                }

                v12 = v7[1];
                if (v12)
                {
                  do
                  {
                    v13 = v12;
                    v12 = *v12;
                  }

                  while (v12);
                }

                else
                {
                  do
                  {
                    v13 = v7[2];
                    v14 = *v13 == v7;
                    v7 = v13;
                  }

                  while (!v14);
                }

                v7 = v13;
              }

              while (v13 != v6 + 6);
            }
          }

          v15 = v6[1];
          if (v15)
          {
            do
            {
              v16 = v15;
              v15 = *v15;
            }

            while (v15);
          }

          else
          {
            do
            {
              v16 = v6[2];
              v14 = *v16 == v6;
              v6 = v16;
            }

            while (!v14);
          }

          v6 = v16;
        }

        while (v16 != v5 + 6);
      }

      v17 = v5[1];
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
        do
        {
          v18 = v5[2];
          v14 = *v18 == v5;
          v5 = v18;
        }

        while (!v14);
      }

      v5 = v18;
    }

    while (v18 != v32);
  }

  v20 = a2[6];
  v19 = a2 + 6;
  v21 = v19 - 2;
  if (v20 == -1)
  {
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v22 = sub_239506C4C(a1, v19, "Thread");
    if (v22)
    {
      v23 = HIDWORD(v22);
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }
  }

  if (*v21 != -1)
  {
    v25 = sub_239506C4C(a1, v21, "Wi-Fi");
    v26 = HIDWORD(v25);
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      LODWORD(v26) = v23;
      v27 = v24;
    }

    v23 = v24 ? v23 : v26;
    if (!v24)
    {
      v24 = v27;
    }
  }

  if (v24)
  {
    v28 = sub_2393D9044(9u);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = sub_2393C9138();
      *v34 = 136315138;
      v35 = v29;
      _os_log_impl(&dword_238DAE000, v28, OS_LOG_TYPE_ERROR, "Failed to parse Network Commissioning information: %s", v34, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(9u, 1);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return v24 | (v23 << 32);
}

uint64_t sub_2395060A0(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v4 = *(a1 + 4320);
  v11 = 0;
  *v13 = 0xFFFC00000038;
  v12 = 0;
  if (sub_239514C8C(v4, &v11, &v16))
  {
    *(a2 + 40) = 0;
  }

  else
  {
    *(a2 + 40) = 1;
    v5 = v16;
    *(a2 + 41) = v16 & 1;
    *(a2 + 42) = (v5 & 2) != 0;
    *(a2 + 43) = (v5 & 8) != 0;
    if (v5)
    {
      v6 = *(a1 + 4320);
      v11 = 0;
      *v13 = 0xA00000038;
      v12 = 0;
      if (sub_239514D20(v6, &v11, (a2 + 44)))
      {
        *(a2 + 41) = 0;
      }

      v7 = *(a1 + 4320);
      v11 = 0;
      *v13 = 0xB00000038;
      v12 = 0;
      if (sub_239514DB0(v7, &v11, (a2 + 45)))
      {
        *(a2 + 41) = 0;
      }
    }

    if (*(a2 + 42) == 1)
    {
      LOBYTE(v11) = 0;
      v14 = 0;
      v8 = *(a1 + 4320);
      v17 = 0;
      v19 = 0x400000038;
      v18 = 0;
      if (!sub_239514E40(v8, &v17, &v11) && v14 == 1 && *&v13[4])
      {
        *(a2 + 42) = 0;
      }
    }

    if (*(a2 + 43) == 1)
    {
      LOBYTE(v11) = 0;
      v15 = 0;
      v9 = *(a1 + 4320);
      v17 = 0;
      v19 = 0x300000038;
      v18 = 0;
      if (!sub_239514ED0(v9, &v17, &v11) && (v15 & 1) != 0)
      {
        *(a2 + 43) = 0;
      }
    }
  }

  return 0;
}

uint64_t sub_239506224(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 4320);
  v4 = *(v3 + 16);
  v26 = (v3 + 24);
  if (v4 != (v3 + 24))
  {
    while (1)
    {
      v5 = v4[5];
      if (v5 != v4 + 6)
      {
        break;
      }

LABEL_52:
      v21 = v4[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v4[2];
          v18 = *v22 == v4;
          v4 = v22;
        }

        while (!v18);
      }

      v4 = v22;
      if (v22 == v26)
      {
        goto LABEL_58;
      }
    }

    while (1)
    {
      if (*(v5 + 8) == 62)
      {
        v6 = v5[5];
        v7 = v5 + 6;
        if (v6 != v5 + 6)
        {
          break;
        }
      }

LABEL_46:
      v19 = v5[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v5[2];
          v18 = *v20 == v5;
          v5 = v20;
        }

        while (!v18);
      }

      v5 = v20;
      if (v20 == v4 + 6)
      {
        goto LABEL_52;
      }
    }

    while (1)
    {
      v8 = *(v6 + 8);
      v28 = *(v4 + 16);
      v30 = 62;
      v31 = v8;
      v29 = 0;
      if (v8 == 1)
      {
        sub_2393C5AAC(v40);
        sub_2393C5ADC(v40, 0, 0);
        v40[72] = 0;
        if (sub_239514F60(*(a1 + 4320), &v28, v40))
        {
          break;
        }

        sub_2392C7A68(v40, v34);
        if (sub_2392C7AC8(v34))
        {
          v9 = sub_2393D9044(9u);
          while (1)
          {
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 67110144;
              HIDWORD(buf) = v37;
              *v43 = 1024;
              *&v43[2] = HIDWORD(v38);
              *&v43[6] = 1024;
              *&v43[8] = v38;
              *&v43[12] = 1024;
              *&v43[14] = HIDWORD(v39);
              *&v43[18] = 1024;
              *&v43[20] = v39;
              _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "DeviceCommissioner::OnDone - fabric.vendorId=0x%04X fabric.fabricId=0x%08X%08X fabric.nodeId=0x%08X%08X", &buf, 0x20u);
            }

            if (sub_2393D5398(2u))
            {
              sub_2393D5320(9u, 2);
            }

            v10 = sub_239293160(a1);
            if (v10)
            {
              v11 = *(v10 + 8);
            }

            else
            {
              v11 = 0;
            }

            if (v11 != v38)
            {
              goto LABEL_31;
            }

            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "DeviceCommissioner::OnDone - found a matching fabric id", &buf, 2u);
            }

            if (sub_2393D5398(2u))
            {
              sub_2393D5320(9u, 2);
            }

            v12 = v36;
            if (v36 != 65)
            {
              break;
            }

            sub_238DC45B4(&v33, v35);
            buf = &unk_284BB9138;
            *v43 = *v33;
            v14 = *(v33 + 32);
            v13 = *(v33 + 48);
            v15 = *(v33 + 64);
            *&v43[16] = *(v33 + 16);
            v46 = v15;
            v45 = v13;
            v44 = v14;
            v41[0] = &unk_284BB9138;
            if (!sub_23950EDF0(a1, v41))
            {
              if (sub_23928F6C0(v41, &buf))
              {
                if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
                {
                  *v32 = 0;
                  _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "DeviceCommissioner::OnDone - fabric root keys match", v32, 2u);
                }

                if (sub_2393D5398(2u))
                {
                  sub_2393D5320(9u, 2);
                }

                *(a2 + 48) = v39;
              }

              goto LABEL_31;
            }

            if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
            {
              *v32 = 0;
              _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "DeviceCommissioner::OnDone - error reading commissioner root public key", v32, 2u);
            }

            if (sub_2393D5398(1u))
            {
              goto LABEL_30;
            }

LABEL_31:
            if (!sub_2392C7AC8(v34))
            {
              goto LABEL_39;
            }
          }

          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 67109376;
            HIDWORD(buf) = v12;
            *v43 = 1024;
            *&v43[2] = 65;
            _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "DeviceCommissioner::OnDone - fabric root key size mismatch %u != %u", &buf, 0xEu);
          }

          if (!sub_2393D5398(1u))
          {
            goto LABEL_31;
          }

LABEL_30:
          sub_2393D5320(9u, 1);
          goto LABEL_31;
        }

LABEL_39:
        v7 = v5 + 6;
      }

      v16 = v6[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v6[2];
          v18 = *v17 == v6;
          v6 = v17;
        }

        while (!v18);
      }

      v6 = v17;
      if (v17 == v7)
      {
        goto LABEL_46;
      }
    }
  }

LABEL_58:
  v23 = *(a1 + 4336);
  if (v23)
  {
    (*(*v23 + 80))(v23, *(a2 + 48));
  }

  v24 = *MEMORY[0x277D85DE8];
  return 0;
}

unint64_t sub_239506770(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v4 = *(a1 + 4320);
  *buf = 0;
  v30 = 0xFFFC00000046;
  buf[2] = 0;
  v5 = sub_239514FF0(v4, buf, &v28);
  LODWORD(v6) = v5;
  switch(v5)
  {
    case 0:
      v8 = v28;
      v9 = (v28 & 4) != 0;
      *(a2 + 80) = 0;
      *(a2 + 64) = v9;
      *(a2 + 65) = v8 & 1;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0;
      if ((v8 & 2) == 0)
      {
        goto LABEL_8;
      }

      v14 = *(a1 + 4320);
      *buf = 0;
      v30 = 0x600000046;
      buf[2] = 0;
      v6 = sub_239515084(v14, buf, (a2 + 80));
      if (v6)
      {
        v15 = sub_2393D9044(9u);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "IcdManagement.UserActiveModeTriggerHint expected, but failed to read.", buf, 2u);
        }

        if (!sub_2393D5398(1u))
        {
          goto LABEL_41;
        }

        goto LABEL_40;
      }

      if ((*(a2 + 80) & 0x1AEE4) != 0 && (v19 = *(a1 + 4320), *buf = 0, v30 = 0x700000046, buf[2] = 0, v6 = sub_239515114(v19, buf, (a2 + 88)), v6))
      {
        v20 = sub_2393D9044(9u);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "IcdManagement.UserActiveModeTriggerInstruction expected for given active mode trigger hint, but failed to read.", buf, 2u);
        }

        if (!sub_2393D5398(1u))
        {
          goto LABEL_41;
        }
      }

      else
      {
LABEL_8:
        v10 = *(a1 + 4320);
        *buf = 0;
        v30 = 70;
        buf[2] = 0;
        v6 = sub_2395151A4(v10, buf, (a2 + 68));
        if (v6)
        {
          v11 = sub_2393D9044(9u);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v12 = sub_2393C9138();
            *buf = 136315138;
            v30 = v12;
            _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "IcdManagement.IdleModeDuration expected, but failed to read: %s", buf, 0xCu);
          }

          if (!sub_2393D5398(1u))
          {
            goto LABEL_41;
          }
        }

        else
        {
          v16 = *(a1 + 4320);
          *buf = 0;
          v30 = 0x100000046;
          buf[2] = 0;
          v6 = sub_239515234(v16, buf, (a2 + 72));
          if (v6)
          {
            v17 = sub_2393D9044(9u);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = sub_2393C9138();
              *buf = 136315138;
              v30 = v18;
              _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "IcdManagement.ActiveModeDuration expected, but failed to read: %s", buf, 0xCu);
            }

            if (!sub_2393D5398(1u))
            {
              goto LABEL_41;
            }
          }

          else
          {
            v21 = *(a1 + 4320);
            *buf = 0;
            v30 = 0x200000046;
            buf[2] = 0;
            v6 = sub_2395152C4(v21, buf, (a2 + 76));
            if (!v6)
            {
              goto LABEL_41;
            }

            v22 = sub_2393D9044(9u);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = sub_2393C9138();
              *buf = 136315138;
              v30 = v23;
              _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "IcdManagement.ActiveModeThreshold expected, but failed to read: %s", buf, 0xCu);
            }

            if (!sub_2393D5398(1u))
            {
              goto LABEL_41;
            }
          }
        }

        sub_2393C9138();
      }

LABEL_40:
      sub_2393D5320(9u, 1);
LABEL_41:
      v13 = v6 & 0xFFFFFFFF00000000;
      goto LABEL_42;
    case 0xCA:
      v26 = 0;
      v27 = 0;
      v7 = *(a1 + 4320);
      *buf = 0;
      v30 = 0xFFFC00000046;
      buf[2] = 0;
      v5 = sub_2393C1B24(v7, buf, &v26);
      if (v5)
      {
        LODWORD(v6) = v5;
      }

      else if (v26 == 195)
      {
        LODWORD(v6) = 0;
        *(a2 + 64) = 0;
      }

      else
      {
        v5 = sub_2393DD584(&v26);
        LODWORD(v6) = v5;
      }

      break;
    case 0x10:
      *(a2 + 64) = 0;
LABEL_15:
      LODWORD(v6) = 0;
      v13 = 0;
      *(a2 + 80) = 0;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0;
      *(a2 + 68) = 0;
      *(a2 + 72) = 0;
      *(a2 + 76) = 0;
      goto LABEL_42;
  }

  if (!v6)
  {
    goto LABEL_15;
  }

  v13 = v5 & 0xFFFFFFFF00000000;
LABEL_42:
  v24 = *MEMORY[0x277D85DE8];
  return v13 | v6;
}

unint64_t sub_239506C4C(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 4320);
  *buf = *a2;
  v21 = 0x300000031;
  buf[2] = 0;
  v7 = sub_239514B6C(v6, buf, a2 + 2);
  if (v7)
  {
    v8 = sub_2393D9044(9u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *a2;
      v10 = sub_2393C9138();
      *buf = 136315650;
      v21 = a3;
      v22 = 1024;
      v23 = v9;
      v24 = 2080;
      v25 = v10;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Failed to read %s ConnectMaxTimeSeconds (endpoint %u): %s", buf, 0x1Cu);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v14 = *(a1 + 4320);
  *buf = *a2;
  v21 = 0x200000031;
  buf[2] = 0;
  v15 = sub_239514BFC(v14, buf, a2 + 3);
  v7 = v15;
  if (!v15)
  {
    v11 = 0;
    goto LABEL_7;
  }

  if (v15 == 16)
  {
    LODWORD(v7) = 0;
    v11 = 0;
    *(a2 + 3) = 0;
    goto LABEL_7;
  }

  v16 = sub_2393D9044(9u);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = *a2;
    v18 = sub_2393C9138();
    *buf = 136315650;
    v21 = a3;
    v22 = 1024;
    v23 = v17;
    v24 = 2080;
    v25 = v18;
    _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Failed to read %s ScanMaxTimeSeconds (endpoint: %u): %s", buf, 0x1Cu);
  }

  if (sub_2393D5398(1u))
  {
LABEL_5:
    v19 = *a2;
    sub_2393C9138();
    sub_2393D5320(9u, 1);
  }

LABEL_6:
  v11 = v7 & 0xFFFFFFFF00000000;
LABEL_7:
  v12 = *MEMORY[0x277D85DE8];
  return v11 | v7;
}

void sub_239506EC0(uint64_t a1, char *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = -1;
  v18[80] = 0;
  v4 = sub_2393D9044(9u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    *buf = 67109120;
    v15 = v5;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Received ArmFailSafe response errorCode=%u", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    v10 = *a2;
    sub_2393D5320(9u, 2);
  }

  v6 = *a2;
  if (*a2)
  {
    LOBYTE(v17) = *a2;
    v16 = 7;
    v11 = 7;
    LOBYTE(v12) = v6;
    v7 = "src/controller/CHIPDeviceController.cpp";
    v8 = 0xB48000000ACLL;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v11 = -1;
  }

  v13[80] = 0;
  sub_2394FDB60(a1, v8, v7, &v11);
  if (v11 == 4)
  {
    v12 = &unk_284BBE888;
    sub_239495880(v13);
  }

  if (v16 == 4)
  {
    v17 = &unk_284BBE888;
    sub_239495880(v18);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_239507084(uint64_t a1, char *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = -1;
  v18[80] = 0;
  v4 = sub_2393D9044(9u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    *buf = 67109120;
    v15 = v5;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Received SetRegulatoryConfig response errorCode=%u", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    v10 = *a2;
    sub_2393D5320(9u, 2);
  }

  v6 = *a2;
  if (*a2)
  {
    LOBYTE(v17) = *a2;
    v16 = 7;
    v11 = 7;
    LOBYTE(v12) = v6;
    v7 = "src/controller/CHIPDeviceController.cpp";
    v8 = 0xB59000000ACLL;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v11 = -1;
  }

  v13[80] = 0;
  sub_2394FDB60(a1, v8, v7, &v11);
  if (v11 == 4)
  {
    v12 = &unk_284BBE888;
    sub_239495880(v13);
  }

  if (v16 == 4)
  {
    v17 = &unk_284BBE888;
    sub_239495880(v18);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_239507248(uint64_t a1, char *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = -1;
  v18[80] = 0;
  v4 = sub_2393D9044(9u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    *buf = 67109120;
    v15 = v5;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Received SetTCAcknowledgements response errorCode=%u", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    v10 = *a2;
    sub_2393D5320(9u, 2);
  }

  v6 = *a2;
  if (*a2)
  {
    LOBYTE(v17) = *a2;
    v16 = 7;
    v11 = 7;
    LOBYTE(v12) = v6;
    v7 = "src/controller/CHIPDeviceController.cpp";
    v8 = 0xB69000000ACLL;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v11 = -1;
  }

  v13[80] = 0;
  sub_2394FDB60(a1, v8, v7, &v11);
  if (v11 == 4)
  {
    v12 = &unk_284BBE888;
    sub_239495880(v13);
  }

  if (v16 == 4)
  {
    v17 = &unk_284BBE888;
    sub_239495880(v18);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_23950740C(uint64_t a1, char *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v4 = 9;
  LOBYTE(v5) = v2;
  v6[80] = 0;
  sub_2394FDB60(a1, 0, 0, &v4);
  if (v4 == 4)
  {
    v5 = &unk_284BBE888;
    sub_239495880(v6);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_2395074B8(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2[0] = -1;
  v3[80] = 0;
  sub_2394FDB60(a1, 0, 0, v2);
  if (v2[0] == 4)
  {
    v2[1] = &unk_284BBE888;
    sub_239495880(v3);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23950755C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = sub_2393D9044(9u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Received ScanNetworks failure response %s", buf, 0xCu);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393C9138();
    sub_2393D5320(9u, 2);
  }

  v9[0] = -1;
  v10[80] = 0;
  sub_2394FDB60(a1, 0, 0, v9);
  if (v9[0] == 4)
  {
    v9[1] = &unk_284BBE888;
    sub_239495880(v10);
  }

  result = *(a1 + 4336);
  if (result)
  {
    result = (*(*result + 96))(result, a2, a3);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2395076DC(uint64_t a1, unsigned __int8 *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(9u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    if (a2[8] == 1)
    {
      v6 = *sub_238DE36B8(a2 + 8);
      v7 = sub_238DE36B8(a2 + 8);
      sub_23950797C(__p, v6, *(v7 + 1));
      if (v16 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 67109378;
      v20 = v5;
      v21 = 2080;
      v22 = v8;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Received ScanNetwork response, networkingStatus=%u debugText=%s", buf, 0x12u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 67109378;
      v20 = v5;
      v21 = 2080;
      v22 = "none provided";
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Received ScanNetwork response, networkingStatus=%u debugText=%s", buf, 0x12u);
    }
  }

  if (sub_2393D5398(2u))
  {
    v9 = *a2;
    if (a2[8] == 1)
    {
      v10 = *sub_238DE36B8(a2 + 8);
      v11 = sub_238DE36B8(a2 + 8);
      sub_23950797C(__p, v10, *(v11 + 1));
      sub_2393D5320(9u, 2);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v14 = *a2;
      sub_2393D5320(9u, 2);
    }
  }

  v17[0] = -1;
  v18[80] = 0;
  sub_2394FDB60(a1, 0, 0, v17);
  if (v17[0] == 4)
  {
    v17[1] = &unk_284BBE888;
    sub_239495880(v18);
  }

  result = *(a1 + 4336);
  if (result)
  {
    result = (*(*result + 88))(result, a2);
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_23950797C(_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_238EAEDBC();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

uint64_t sub_239507A2C(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(a1 + 4368) == 35)
  {
    v5[0] = -1;
    v6[80] = 0;
    sub_2394FDB60(a1, 0, 0, v5);
    if (v5[0] == 4)
    {
      v5[1] = &unk_284BBE888;
      sub_239495880(v6);
    }

    v1 = 0;
    v2 = 0;
  }

  else
  {
    v1 = 0xBA900000000;
    v2 = 3;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2 | v1;
}

uint64_t sub_239507B04(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(a1 + 4368) == 21)
  {
    v5[0] = -1;
    v6[80] = 0;
    sub_2394FDB60(a1, 0, 0, v5);
    if (v5[0] == 4)
    {
      v5[1] = &unk_284BBE888;
      sub_239495880(v6);
    }

    v1 = 0;
    v2 = 0;
  }

  else
  {
    v1 = 0xBB300000000;
    v2 = 3;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2 | v1;
}

void sub_239507BDC(uint64_t a1, char *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = -1;
  v18[80] = 0;
  v4 = sub_2393D9044(9u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    *buf = 67109120;
    v15 = v5;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Received NetworkConfig response, networkingStatus=%u", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    v10 = *a2;
    sub_2393D5320(9u, 2);
  }

  v6 = *a2;
  if (*a2)
  {
    LOBYTE(v17) = *a2;
    v16 = 8;
    v11 = 8;
    LOBYTE(v12) = v6;
    v7 = "src/controller/CHIPDeviceController.cpp";
    v8 = 0xBC4000000ACLL;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v11 = -1;
  }

  v13[80] = 0;
  sub_2394FDB60(a1, v8, v7, &v11);
  if (v11 == 4)
  {
    v12 = &unk_284BBE888;
    sub_239495880(v13);
  }

  if (v16 == 4)
  {
    v17 = &unk_284BBE888;
    sub_239495880(v18);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_239507DA0(uint64_t a1, char *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = -1;
  v18[80] = 0;
  v4 = sub_2393D9044(9u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    *buf = 67109120;
    v15 = v5;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Received ConnectNetwork response, networkingStatus=%u", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    v10 = *a2;
    sub_2393D5320(9u, 2);
  }

  v6 = *a2;
  if (*a2)
  {
    LOBYTE(v17) = *a2;
    v16 = 8;
    v11 = 8;
    LOBYTE(v12) = v6;
    v7 = "src/controller/CHIPDeviceController.cpp";
    v8 = 0xBD4000000ACLL;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v11 = -1;
  }

  v13[80] = 0;
  sub_2394FDB60(a1, v8, v7, &v11);
  if (v11 == 4)
  {
    v12 = &unk_284BBE888;
    sub_239495880(v13);
  }

  if (v16 == 4)
  {
    v17 = &unk_284BBE888;
    sub_239495880(v18);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_239507F64(uint64_t a1, char *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = -1;
  v18[80] = 0;
  v4 = sub_2393D9044(9u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    *buf = 67109120;
    v15 = v5;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Received CommissioningComplete response, errorCode=%u", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    v10 = *a2;
    sub_2393D5320(9u, 2);
  }

  v6 = *a2;
  if (*a2)
  {
    LOBYTE(v17) = *a2;
    v16 = 7;
    v11 = 7;
    LOBYTE(v12) = v6;
    v7 = "src/controller/CHIPDeviceController.cpp";
    v8 = 0xBE4000000ACLL;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v11 = -1;
  }

  v13[80] = 0;
  sub_2394FDB60(a1, v8, v7, &v11);
  if (v11 == 4)
  {
    v12 = &unk_284BBE888;
    sub_239495880(v13);
  }

  if (v16 == 4)
  {
    v17 = &unk_284BBE888;
    sub_239495880(v18);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_239508128()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v0;
  v342 = *MEMORY[0x277D85DE8];
  *buf = 2;
  *&buf[8] = "core_dcm_commission_stage";
  v14 = (v0 + 4096);
  *&buf[16] = v9;
  buf[20] = 2;
  sub_23948BD20(buf);
  v15 = sub_2394F2CAC(v10);
  *buf = 0;
  *&buf[8] = v15;
  buf[20] = 0;
  sub_23948BD20(buf);
  v16 = *(v8 + 552);
  v17 = sub_2393D9044(9u);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (v18)
    {
      v19 = sub_2394F2C88(v10);
      v20 = *(v8 + 552);
      v21 = *(v8 + 560);
      v22 = sub_2393C9138();
      *buf = 136315394;
      *&buf[4] = v19;
      *&buf[12] = 2080;
      *&buf[14] = v22;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Performing next commissioning step '%s' with completion status = '%s'", buf, 0x16u);
    }

    if (!sub_2393D5398(2u))
    {
      goto LABEL_11;
    }

    sub_2394F2C88(v10);
    v23 = *(v8 + 552);
    v24 = *(v8 + 560);
    sub_2393C9138();
  }

  else
  {
    if (v18)
    {
      v25 = sub_2394F2C88(v10);
      *buf = 136315138;
      *&buf[4] = v25;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Performing next commissioning step '%s'", buf, 0xCu);
    }

    if (!sub_2393D5398(2u))
    {
      goto LABEL_11;
    }

    sub_2394F2C88(v10);
  }

  sub_2393D5320(9u, 2);
LABEL_11:
  v26 = *v2;
  v14[264] = v26;
  if (v26 == 1)
  {
    *(v13 + 4364) = *(v2 + 1);
  }

  v14[272] = v10;
  *(v13 + 9144) = v6;
  *(v13 + 4344) = v12;
  v27 = v10;
  switch(v10)
  {
    case 0u:
      v14[272] = 1;
      goto LABEL_549;
    case 2u:
      if (v4)
      {
        sub_239539434();
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Sending read requests for commissioning information", buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9u, 2);
      }

      v97 = sub_2393D52C4(0x100uLL);
      v98 = v97;
      if (v97)
      {
        buf[0] = 0;
        sub_238EF73E4(v97, v13 + 4304, buf);
      }

      sub_2394FE5E8((v13 + 4320), v98);
      v14[273] = 0;
      sub_239504810(v13, v8);
      goto LABEL_549;
    case 3u:
      if (v4)
      {
        sub_2395394CC();
      }

      v12[1] = 0;
      v324[0] = *v8;
      if (v324[0] == 1)
      {
        *&v324[2] = *(v8 + 2);
        v99 = sub_238E0A934(v324);
      }

      else
      {
        v99 = &word_2395D8998;
      }

      v180 = *v99;
      buf[0] = *v2;
      if (buf[0] == 1)
      {
        *&buf[4] = *(v2 + 1);
      }

      if (!sub_239500688(v13, v12, 3u, v180, buf, sub_239506EC0, sub_2395036B8, 0))
      {
        sub_239539564();
      }

      goto LABEL_549;
    case 4u:
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Setting Regulatory Config", buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9u, 2);
      }

      buf[0] = *(v8 + 546);
      if ((buf[0] & 1) == 0)
      {
        LOBYTE(v120) = 1;
LABEL_485:
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Device does not support configurable regulatory location", buf, 2u);
        }

        if (sub_2393D5398(2u))
        {
          goto LABEL_488;
        }

        goto LABEL_489;
      }

      buf[1] = *(v8 + 547);
      v120 = *sub_23949B670(buf);
      if (v120 != 2)
      {
        goto LABEL_485;
      }

      if (*(v8 + 8) == 1)
      {
        buf[0] = 1;
        buf[1] = *(v8 + 9);
        v120 = *sub_23949B670(buf);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v120;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Setting regulatory config to %u from commissioner override", buf, 8u);
        }

        if (sub_2393D5398(2u))
        {
LABEL_488:
          sub_2393D5320(9u, 2);
        }
      }

      else if (*(v8 + 544) == 1)
      {
        buf[0] = 1;
        buf[1] = *(v8 + 545);
        v120 = *sub_23949B670(buf);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v120;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "No regulatory config supplied by controller, leaving as device default (%u)", buf, 8u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(9u, 2);
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "No overrride or device regulatory config supplied, setting to outdoor", buf, 2u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(9u, 2);
        }

        LOBYTE(v120) = 1;
      }

LABEL_489:
      v324[0] = *(v8 + 216);
      if (v324[0] == 1)
      {
        *&v324[8] = *(v8 + 224);
        v173 = sub_238DE36B8(v324);
        v174 = *v173;
        v175 = *(v173 + 1);
      }

      else
      {
        v174 = "XX";
        v175 = 2;
      }

      buf[0] = v120;
      *&buf[8] = v174;
      *&buf[16] = v175;
      *&buf[24] = v27;
      v305[0] = *v2;
      if (v305[0] == 1)
      {
        *&v305[4] = *(v2 + 1);
      }

      v177 = sub_23950D6F8(v13, v12, buf, sub_239507084, sub_2395036B8, v4, v305, 0);
      if (v177)
      {
        v178 = v176;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v179 = sub_2393C9138();
          *v305 = 136315138;
          *&v305[4] = v179;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send SetRegulatoryConfig command: %s", v305, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(9u, 1);
        }

        v320[0] = -1;
        v321 = 0;
        v31 = v320;
        sub_2394FDB60(v13, v177, v178, v320);
        if (v320[0] == 4)
        {
          v320[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

LABEL_549:
      v189 = *MEMORY[0x277D85DE8];
      return;
    case 5u:
      buf[9] = 0;
      if ((*(*off_27DF765E8 + 5))(off_27DF765E8, v305) || *v305 <= 0x35D013B37E000uLL)
      {
        v340[0] = -1;
        v341 = 0;
        v31 = v340;
        sub_2394FDB60(v13, 0, 0, v340);
        if (v340[0] == 4)
        {
          v340[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      else
      {
        *buf = *v305 - 946684800000000;
        buf[8] = 2;
        v324[0] = *v2;
        if (v324[0] == 1)
        {
          *&v324[4] = *(v2 + 1);
        }

        v182 = sub_23950CD70(v13, v12, buf, sub_239503614, sub_2395074B8, v4, v324, 0);
        if (v182)
        {
          v183 = v181;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v184 = sub_2393C9138();
            *v324 = 136315138;
            *&v324[4] = v184;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send SetUTCTime command: %s", v324, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(9u, 1);
          }

          v338[0] = -1;
          v339 = 0;
          v31 = v338;
          sub_2394FDB60(v13, v182, v183, v338);
          if (v338[0] == 4)
          {
            v338[1] = &unk_284BBE888;
            goto LABEL_548;
          }
        }
      }

      goto LABEL_549;
    case 6u:
      v114 = *(v8 + 16);
      if (v114)
      {
        *&v324[8] = 0;
        *v324 = 0;
        buf[0] = v114;
        *&buf[8] = *(v8 + 24);
        v115 = sub_2394EB70C(buf);
        sub_238DB9BD8(v324, *v115, v115[1]);
        buf[0] = *v2;
        if (buf[0] == 1)
        {
          *&buf[4] = *(v2 + 1);
        }

        v117 = sub_23950CF58(v13, v12, v324, sub_23950740C, sub_2395036B8, v4, buf, 0);
        if (v117)
        {
          v118 = v116;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v119 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v119;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send SetTimeZone command: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(9u, 1);
          }

          v334[0] = -1;
          v335 = 0;
          v31 = v334;
          sub_2394FDB60(v13, v117, v118, v334);
          if (v334[0] == 4)
          {
            v334[1] = &unk_284BBE888;
            goto LABEL_548;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "ConfigureTimeZone stage called with no time zone data", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9u, 1);
        }

        v336[0] = -1;
        v337 = 0;
        v31 = v336;
        sub_2394FDB60(v13, 0xC830000002FLL, "src/controller/CHIPDeviceController.cpp", v336);
        if (v336[0] == 4)
        {
          v336[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      goto LABEL_549;
    case 7u:
      v137 = *(v8 + 40);
      if (v137)
      {
        *&v324[8] = 0;
        *v324 = 0;
        buf[0] = v137;
        *&buf[8] = *(v8 + 48);
        v138 = sub_2394EB70C(buf);
        sub_238DB9BD8(v324, *v138, v138[1]);
        buf[0] = *v2;
        if (buf[0] == 1)
        {
          *&buf[4] = *(v2 + 1);
        }

        v140 = sub_23950D140(v13, v12, v324, sub_239503614, sub_2395036B8, v4, buf, 0);
        if (v140)
        {
          v141 = v139;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v142 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v142;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send SetDSTOffset command: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(9u, 1);
          }

          v330[0] = -1;
          v331 = 0;
          v31 = v330;
          sub_2394FDB60(v13, v140, v141, v330);
          if (v330[0] == 4)
          {
            v330[1] = &unk_284BBE888;
            goto LABEL_548;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "ConfigureDSTOffset stage called with no DST data", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9u, 1);
        }

        v332[0] = -1;
        v333 = 0;
        v31 = v332;
        sub_2394FDB60(v13, 0xC960000002FLL, "src/controller/CHIPDeviceController.cpp", v332);
        if (v332[0] == 4)
        {
          v332[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      goto LABEL_549;
    case 8u:
      if (*(v8 + 64))
      {
        buf[0] = *(v8 + 64);
        *&buf[8] = *(v8 + 72);
        *&buf[24] = *(v8 + 88);
        v143 = sub_238DE36B8(buf);
        v144 = v143[16];
        *v324 = *v143;
        v324[16] = v144;
        buf[0] = *v2;
        if (buf[0] == 1)
        {
          *&buf[4] = *(v2 + 1);
        }

        v146 = sub_23950D328(v13, v12, v324, sub_239503614, sub_2395036B8, v4, buf, 0);
        if (v146)
        {
          v147 = v145;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v148 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v148;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send SetDefaultNTP command: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(9u, 1);
          }

          v326[0] = -1;
          v327 = 0;
          v31 = v326;
          sub_2394FDB60(v13, v146, v147, v326);
          if (v326[0] == 4)
          {
            v326[1] = &unk_284BBE888;
            goto LABEL_548;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "ConfigureDefaultNTP stage called with no default NTP data", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9u, 1);
        }

        v328[0] = -1;
        v329 = 0;
        v31 = v328;
        sub_2394FDB60(v13, 0xCA90000002FLL, "src/controller/CHIPDeviceController.cpp", v328);
        if (v328[0] == 4)
        {
          v328[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      goto LABEL_549;
    case 9u:
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Sending request for PAI certificate", buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9u, 2);
      }

      buf[0] = *v2;
      if (buf[0] == 1)
      {
        *&buf[4] = *(v2 + 1);
      }

      v57 = sub_2394FEC68(v13, v12, 2, buf);
      if (v57)
      {
        v58 = v56;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v59 = sub_2393C9138();
          *buf = 136315138;
          *&buf[4] = v59;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send CertificateChainRequest command to get PAI: %s", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(9u, 1);
        }

        v314[0] = -1;
        v315 = 0;
        v31 = v314;
        sub_2394FDB60(v13, v57, v58, v314);
        if (v314[0] == 4)
        {
          v314[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      goto LABEL_549;
    case 0xAu:
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Sending request for DAC certificate", buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9u, 2);
      }

      buf[0] = *v2;
      if (buf[0] == 1)
      {
        *&buf[4] = *(v2 + 1);
      }

      v150 = sub_2394FEC68(v13, v12, 1, buf);
      if (v150)
      {
        v151 = v149;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v152 = sub_2393C9138();
          *buf = 136315138;
          *&buf[4] = v152;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send CertificateChainRequest command to get DAC: %s", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(9u, 1);
        }

        v312[0] = -1;
        v313 = 0;
        v31 = v312;
        sub_2394FDB60(v13, v150, v151, v312);
        if (v312[0] == 4)
        {
          v312[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      goto LABEL_549;
    case 0xBu:
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Sending Attestation Request to the device.", buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9u, 2);
      }

      if (*(v8 + 152))
      {
        buf[0] = *(v8 + 152);
        *&buf[8] = *(v8 + 160);
        v64 = sub_238DE36B8(buf);
        v324[0] = *v2;
        if (v324[0] == 1)
        {
          *&v324[4] = *(v2 + 1);
        }

        v66 = sub_2394FF4CC(v13, v12, v64, v324);
        if (v66)
        {
          v67 = v65;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v68 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v68;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send AttestationRequest command: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(9u, 1);
          }

          v308[0] = -1;
          v309 = 0;
          v31 = v308;
          sub_2394FDB60(v13, v66, v67, v308);
          if (v308[0] == 4)
          {
            v308[1] = &unk_284BBE888;
            goto LABEL_548;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "No attestation nonce found", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9u, 1);
        }

        v310[0] = -1;
        v311 = 0;
        v31 = v310;
        sub_2394FDB60(v13, 0xD450000002FLL, "src/controller/CHIPDeviceController.cpp", v310);
        if (v310[0] == 4)
        {
          v310[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      goto LABEL_549;
    case 0xCu:
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Verifying Device Attestation information received from the device", buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9u, 2);
      }

      if (*(v8 + 424) == 1 && *(v8 + 448) == 1 && *(v8 + 152) == 1 && *(v8 + 496) == 1 && *(v8 + 472) == 1 && *(v8 + 536) == 1 && (*(v8 + 540) & 1) != 0)
      {
        v324[0] = 1;
        *&v324[8] = *(v8 + 432);
        v213 = sub_238DE36B8(v324);
        (*(*v12 + 48))(&v223, v12);
        v100 = sub_238DE36B8(&v223);
        v101 = sub_239495304(*v100);
        v305[0] = *(v8 + 448);
        if (v305[0] == 1)
        {
          *&v305[8] = *(v8 + 456);
        }

        v102 = sub_238DE36B8(v305);
        LOBYTE(v303) = *(v8 + 472);
        if (v303 == 1)
        {
          *&v304[4] = *(v8 + 480);
        }

        v103 = sub_238DE36B8(&v303);
        v220[0] = *(v8 + 496);
        if (v220[0] == 1)
        {
          v222 = *(v8 + 504);
        }

        v104 = sub_238DE36B8(v220);
        v218[0] = *(v8 + 152);
        if (v218[0] == 1)
        {
          v219 = *(v8 + 160);
        }

        v105 = v101 + 216;
        v106 = sub_238DE36B8(v218);
        v216[0] = *(v8 + 536);
        if (v216[0] == 1)
        {
          v217 = *(v8 + 538);
        }

        v107 = *sub_238E0A934(v216);
        v214[0] = *(v8 + 540);
        if (v214[0] == 1)
        {
          v215 = *(v8 + 542);
        }

        v108 = *sub_238E0A934(v214);
        *buf = *v213;
        *&buf[16] = v105;
        *&buf[24] = 16;
        *&buf[32] = *v102;
        v250 = *v103;
        v251 = *v104;
        v252 = *v106;
        v253 = v107;
        v254 = v108;
        if (v223 == 1)
        {
          (*(*v224 + 32))(v224);
        }

        if (sub_239500AE0(v13, buf))
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v109 = sub_2393C9138();
            *v324 = 136315138;
            *&v324[4] = v109;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Error validating attestation information: %s", v324, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(9u, 1);
          }

          v301[0] = -1;
          v302 = 0;
          v31 = v301;
          sub_2394FDB60(v13, 0xD6500000020, "src/controller/CHIPDeviceController.cpp", v301);
          if (v301[0] == 4)
          {
            v301[1] = &unk_284BBE888;
            goto LABEL_548;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Missing attestation information", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9u, 1);
        }

        v306[0] = -1;
        v307 = 0;
        v31 = v306;
        sub_2394FDB60(v13, 0xD570000002FLL, "src/controller/CHIPDeviceController.cpp", v306);
        if (v306[0] == 4)
        {
          v306[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      goto LABEL_549;
    case 0xDu:
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Verifying the device's DAC chain revocation status", buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9u, 2);
      }

      if (*(v8 + 424) == 1 && *(v8 + 448) == 1 && *(v8 + 152) == 1 && *(v8 + 496) == 1 && *(v8 + 472) == 1 && *(v8 + 536) == 1 && (*(v8 + 540) & 1) != 0)
      {
        v324[0] = 1;
        *&v324[8] = *(v8 + 432);
        v212 = sub_238DE36B8(v324);
        (*(*v12 + 48))(&v223, v12);
        v81 = sub_238DE36B8(&v223);
        v82 = sub_239495304(*v81);
        v305[0] = *(v8 + 448);
        if (v305[0] == 1)
        {
          *&v305[8] = *(v8 + 456);
        }

        v83 = sub_238DE36B8(v305);
        LOBYTE(v303) = *(v8 + 472);
        if (v303 == 1)
        {
          *&v304[4] = *(v8 + 480);
        }

        v84 = sub_238DE36B8(&v303);
        v220[0] = *(v8 + 496);
        if (v220[0] == 1)
        {
          v222 = *(v8 + 504);
        }

        v85 = sub_238DE36B8(v220);
        v218[0] = *(v8 + 152);
        if (v218[0] == 1)
        {
          v219 = *(v8 + 160);
        }

        v86 = v82 + 216;
        v87 = sub_238DE36B8(v218);
        v216[0] = *(v8 + 536);
        if (v216[0] == 1)
        {
          v217 = *(v8 + 538);
        }

        v88 = *sub_238E0A934(v216);
        v214[0] = *(v8 + 540);
        if (v214[0] == 1)
        {
          v215 = *(v8 + 542);
        }

        v89 = *sub_238E0A934(v214);
        *buf = *v212;
        *&buf[16] = v86;
        *&buf[24] = 16;
        *&buf[32] = *v83;
        v250 = *v84;
        v251 = *v85;
        v252 = *v87;
        v253 = v88;
        v254 = v89;
        if (v223 == 1)
        {
          (*(*v224 + 32))(v224);
        }

        if (sub_239500C9C(v13, buf))
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v90 = sub_2393C9138();
            *v324 = 136315138;
            *&v324[4] = v90;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Error validating device's DAC chain revocation status: %s", v324, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(9u, 1);
          }

          v297[0] = -1;
          v298 = 0;
          v31 = v297;
          sub_2394FDB60(v13, 0xD7E00000020, "src/controller/CHIPDeviceController.cpp", v297);
          if (v297[0] == 4)
          {
            v297[1] = &unk_284BBE888;
            goto LABEL_548;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Missing attestation information", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9u, 1);
        }

        v299[0] = -1;
        v300 = 0;
        v31 = v299;
        sub_2394FDB60(v13, 0xD6F0000002FLL, "src/controller/CHIPDeviceController.cpp", v299);
        if (v299[0] == 4)
        {
          v299[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      goto LABEL_549;
    case 0xEu:
      v53 = (*(*v13 + 104))(v13);
      if (v53)
      {
        v54 = v52;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v55 = sub_2393C9138();
          *buf = 136315138;
          *&buf[4] = v55;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to start JCM Trust Verification: %s", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(9u, 1);
        }

        v295[0] = -1;
        v296 = 0;
        v31 = v295;
        sub_2394FDB60(v13, v53, v54, v295);
        if (v295[0] == 4)
        {
          v295[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      goto LABEL_549;
    case 0xFu:
      if (*(v8 + 128))
      {
        buf[0] = *(v8 + 128);
        *&buf[8] = *(v8 + 136);
        v122 = sub_238DE36B8(buf);
        v324[0] = *v2;
        if (v324[0] == 1)
        {
          *&v324[4] = *(v2 + 1);
        }

        v124 = sub_2395010EC(v13, v12, v122, v324);
        if (v124)
        {
          v125 = v123;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v126 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v126;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send CSR request: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(9u, 1);
          }

          v291[0] = -1;
          v292 = 0;
          v31 = v291;
          sub_2394FDB60(v13, v124, v125, v291);
          if (v291[0] == 4)
          {
            v291[1] = &unk_284BBE888;
            goto LABEL_548;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "No CSR nonce found", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9u, 1);
        }

        v293[0] = -1;
        v294 = 0;
        v31 = v293;
        sub_2394FDB60(v13, 0xD920000002FLL, "src/controller/CHIPDeviceController.cpp", v293);
        if (v293[0] == 4)
        {
          v293[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      goto LABEL_549;
    case 0x10u:
      if (*(v8 + 272) == 1 && *(v8 + 496) == 1 && (*(v8 + 128) & 1) != 0)
      {
        buf[0] = 1;
        v127 = *(v8 + 296);
        *&buf[8] = *(v8 + 280);
        *&buf[24] = v127;
        v128 = sub_2394EB70C(buf);
        v324[0] = *(v8 + 272);
        if (v324[0] == 1)
        {
          v129 = *(v8 + 296);
          *&v324[8] = *(v8 + 280);
          v325 = v129;
        }

        v130 = sub_2394EB70C(v324);
        v305[0] = *(v8 + 496);
        if (v305[0] == 1)
        {
          *&v305[8] = *(v8 + 504);
        }

        v131 = sub_238DE36B8(v305);
        LOBYTE(v303) = *(v8 + 128);
        if (v303 == 1)
        {
          *&v304[4] = *(v8 + 136);
        }

        v132 = sub_238DE36B8(&v303);
        v133 = sub_239500E58(v13, v12, v128, (v130 + 16), v131, v132);
        v135 = v134;
        if (v133)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v136 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v136;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to validate CSR: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(9u, 1);
          }
        }

        v287[0] = -1;
        v288 = 0;
        v31 = v287;
        sub_2394FDB60(v13, v133, v135, v287);
        if (v287[0] == 4)
        {
          v287[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Unable to validate CSR", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9u, 1);
        }

        v289[0] = -1;
        v290 = 0;
        v31 = v289;
        sub_2394FDB60(v13, 0xDA30000002FLL, "src/controller/CHIPDeviceController.cpp", v289);
        if (v289[0] == 4)
        {
          v289[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      goto LABEL_549;
    case 0x11u:
      if (*(v8 + 272) == 1 && *(v8 + 496) == 1 && *(v8 + 472) == 1 && (*(v8 + 128) & 1) != 0)
      {
        buf[0] = 1;
        v162 = *(v8 + 296);
        *&buf[8] = *(v8 + 280);
        *&buf[24] = v162;
        v163 = sub_2394EB70C(buf);
        v324[0] = *(v8 + 272);
        if (v324[0] == 1)
        {
          v164 = *(v8 + 296);
          *&v324[8] = *(v8 + 280);
          v325 = v164;
        }

        v165 = sub_2394EB70C(v324);
        v305[0] = *(v8 + 496);
        if (v305[0] == 1)
        {
          *&v305[8] = *(v8 + 504);
        }

        v166 = sub_238DE36B8(v305);
        LOBYTE(v303) = *(v8 + 472);
        if (v303 == 1)
        {
          *&v304[4] = *(v8 + 480);
        }

        v167 = sub_238DE36B8(&v303);
        v220[0] = *(v8 + 128);
        if (v220[0] == 1)
        {
          v222 = *(v8 + 136);
        }

        v168 = sub_238DE36B8(v220);
        v170 = sub_239501C94(v13, v12, v163, (v165 + 16), v166, v167, v168);
        if (v170)
        {
          v171 = v169;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v172 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v172;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to process Operational Certificate Signing Request (CSR): %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(9u, 1);
          }

          v283[0] = -1;
          v284 = 0;
          v31 = v283;
          sub_2394FDB60(v13, v170, v171, v283);
          if (v283[0] == 4)
          {
            v283[1] = &unk_284BBE888;
            goto LABEL_548;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Unable to generate NOC chain parameters", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9u, 1);
        }

        v285[0] = -1;
        v286 = 0;
        v31 = v285;
        sub_2394FDB60(v13, 0xDB60000002FLL, "src/controller/CHIPDeviceController.cpp", v285);
        if (v285[0] == 4)
        {
          v285[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      goto LABEL_549;
    case 0x12u:
      if (*(v8 + 312) == 1 && (*(v8 + 336) & 1) != 0)
      {
        buf[0] = 1;
        *&buf[8] = *(v8 + 320);
        v153 = sub_238DE36B8(buf);
        v324[0] = *v2;
        if (v324[0] == 1)
        {
          *&v324[4] = *(v2 + 1);
        }

        v155 = sub_239502CAC(v13, v12, v153, v324);
        if (v155)
        {
          v156 = v154;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v157 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v157;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Error sending trusted root certificate: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(9u, 1);
          }

          v279[0] = -1;
          v280 = 0;
          v31 = v279;
          sub_2394FDB60(v13, v155, v156, v279);
          if (v279[0] == 4)
          {
            v279[1] = &unk_284BBE888;
            goto LABEL_548;
          }
        }

        else
        {
          buf[0] = *(v8 + 312);
          if (buf[0] == 1)
          {
            *&buf[8] = *(v8 + 320);
          }

          v190 = sub_238DE36B8(buf);
          v191 = *v190;
          v192 = v190[1];
          v324[0] = *(v8 + 336);
          if (v324[0] == 1)
          {
            *&v324[8] = *(v8 + 344);
          }

          v193 = sub_238DE36B8(v324);
          v195 = (*(*v12 + 56))(v12, v191, v192, *v193, v193[1]);
          if (v195)
          {
            v196 = v194;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v197 = sub_2393C9138();
              *buf = 136315138;
              *&buf[4] = v197;
              _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Error setting peer id: %s", buf, 0xCu);
            }

            if (sub_2393D5398(1u))
            {
              sub_2393C9138();
              sub_2393D5320(9u, 1);
            }

            v277[0] = -1;
            v278 = 0;
            v31 = v277;
            sub_2394FDB60(v13, v195, v196, v277);
            if (v277[0] == 4)
            {
              v277[1] = &unk_284BBE888;
              goto LABEL_548;
            }
          }

          else if (((*(*v12 + 24))(v12) - 1) >= 0xFFFFFFEFFFFFFFFFLL)
          {
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Given node ID is not an operational node ID", buf, 2u);
            }

            if (sub_2393D5398(1u))
            {
              sub_2393D5320(9u, 1);
            }

            v275[0] = -1;
            v276 = 0;
            v31 = v275;
            sub_2394FDB60(v13, 0xDDD0000002FLL, "src/controller/CHIPDeviceController.cpp", v275);
            if (v275[0] == 4)
            {
              v275[1] = &unk_284BBE888;
              goto LABEL_548;
            }
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "No trusted root cert or NOC specified", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9u, 1);
        }

        v281[0] = -1;
        v282 = 0;
        v31 = v281;
        sub_2394FDB60(v13, 0xDC80000002FLL, "src/controller/CHIPDeviceController.cpp", v281);
        if (v281[0] == 4)
        {
          v281[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      goto LABEL_549;
    case 0x13u:
      if (*(v8 + 336) == 1 && *(v8 + 384) == 1 && (sub_238DE36D8((v8 + 384)), (*(v8 + 408) & 1) != 0))
      {
        buf[0] = *(v8 + 336);
        if (buf[0] == 1)
        {
          *&buf[8] = *(v8 + 344);
        }

        v46 = sub_238DE36B8(buf);
        v324[0] = *(v8 + 360);
        if (v324[0] == 1)
        {
          *&v324[8] = *(v8 + 368);
        }

        if (*(v8 + 384) == 1)
        {
          *&v305[8] = sub_238DE36D8((v8 + 384));
          v47 = 1;
        }

        else
        {
          v47 = 0;
        }

        v305[0] = v47;
        v206 = *sub_238DE36B8(v305);
        LOBYTE(v303) = *(v8 + 408);
        if (v303 == 1)
        {
          *&v304[4] = *(v8 + 416);
        }

        v207 = *sub_238DE36B8(&v303);
        v220[0] = *v2;
        if (v220[0] == 1)
        {
          v221 = *(v2 + 1);
        }

        v209 = sub_239502030(v13, v12, v46, v324, v206, v207, v220);
        if (v209)
        {
          v210 = v208;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v211 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v211;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Error installing operational certificate with AddNOC: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(9u, 1);
          }

          v271[0] = -1;
          v272 = 0;
          v31 = v271;
          sub_2394FDB60(v13, v209, v210, v271);
          if (v271[0] == 4)
          {
            v271[1] = &unk_284BBE888;
            goto LABEL_548;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "AddNOC contents not specified", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9u, 1);
        }

        v273[0] = -1;
        v274 = 0;
        v31 = v273;
        sub_2394FDB60(v13, 0xDE60000002FLL, "src/controller/CHIPDeviceController.cpp", v273);
        if (v273[0] == 4)
        {
          v273[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      goto LABEL_549;
    case 0x14u:
      if (*(v8 + 96))
      {
        buf[0] = *(v8 + 96);
        *&buf[8] = *(v8 + 104);
        *&buf[24] = *(v8 + 120);
        v91 = sub_2394EB70C(buf);
        v92 = v91[16];
        *v324 = *v91;
        v324[16] = v92;
        buf[0] = *v2;
        if (buf[0] == 1)
        {
          *&buf[4] = *(v2 + 1);
        }

        v94 = sub_23950DB28(v13, v12, v324, sub_239503614, sub_2395036B8, v4, buf, 0);
        if (v94)
        {
          v95 = v93;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v96 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v96;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send SendTrustedTimeSource command: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(9u, 1);
          }

          v267[0] = -1;
          v268 = 0;
          v31 = v267;
          sub_2394FDB60(v13, v94, v95, v267);
          if (v267[0] == 4)
          {
            v267[1] = &unk_284BBE888;
            goto LABEL_548;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "ConfigureTrustedTimeSource stage called with no trusted time source data!", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9u, 1);
        }

        v269[0] = -1;
        v270 = 0;
        v31 = v269;
        sub_2394FDB60(v13, 0xDF80000002FLL, "src/controller/CHIPDeviceController.cpp", v269);
        if (v269[0] == 4)
        {
          v269[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      goto LABEL_549;
    case 0x15u:
      (*(**(v13 + 4336) + 104))(*(v13 + 4336));
      goto LABEL_549;
    case 0x16u:
      BYTE8(v250) = 0;
      memset(&buf[16], 0, 17);
      if (*(v8 + 600) == 1 && *(v8 + 616) == 1 && (*(v8 + 632) & 1) != 0)
      {
        v324[0] = 1;
        *&v324[8] = *(v8 + 608);
        *buf = *sub_238DE36B8(v324);
        v324[0] = *(v8 + 616);
        if (v324[0] == 1)
        {
          *&v324[8] = *(v8 + 624);
        }

        *&buf[8] = *sub_238DE36B8(v324);
        v324[0] = *(v8 + 632);
        if (v324[0] == 1)
        {
          *&v324[8] = *(v8 + 640);
        }

        *&buf[16] = *sub_238DE36B8(v324);
        v324[0] = *v2;
        if (v324[0] == 1)
        {
          *&v324[4] = *(v2 + 1);
        }

        v49 = sub_23950E5D4(v13, v12, buf, sub_2395003F4, sub_2395036B8, v4, v324, 0);
        if (v49)
        {
          v50 = v48;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v51 = sub_2393C9138();
            *v324 = 136315138;
            *&v324[4] = v51;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send IcdManagement.RegisterClient command: %s", v324, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(9u, 1);
          }

          v241[0] = -1;
          v242 = 0;
          v31 = v241;
          sub_2394FDB60(v13, v49, v50, v241);
          if (v241[0] == 4)
          {
            v241[1] = &unk_284BBE888;
            goto LABEL_548;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *v324 = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "No ICD Registration information provided!", v324, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9u, 1);
        }

        v243[0] = -1;
        v244 = 0;
        v31 = v243;
        sub_2394FDB60(v13, 0xE7800000003, "src/controller/CHIPDeviceController.cpp", v243);
        if (v243[0] == 4)
        {
          v243[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      goto LABEL_549;
    case 0x17u:
      v76 = *(v8 + 176);
      if (v76)
      {
        LOBYTE(v250) = 0;
        BYTE8(v251) = 0;
        LOBYTE(v253) = 0;
        v324[0] = v76;
        *&v324[8] = *(v8 + 184);
        v325 = *(v8 + 200);
        *buf = *sub_2394EB70C(v324);
        v324[0] = *(v8 + 176);
        if (v324[0] == 1)
        {
          *&v324[8] = *(v8 + 184);
          v325 = *(v8 + 200);
        }

        *&buf[16] = *(sub_2394EB70C(v324) + 1);
        buf[32] = 1;
        *&buf[40] = v10;
        v324[0] = *v2;
        if (v324[0] == 1)
        {
          *&v324[4] = *(v2 + 1);
        }

        v78 = sub_23950DD10(v13, v12, buf, sub_239507BDC, sub_2395036B8, v4, v324, 0);
        if (v78)
        {
          v79 = v77;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v80 = sub_2393C9138();
            *v324 = 136315138;
            *&v324[4] = v80;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send AddOrUpdateWiFiNetwork command: %s", v324, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(9u, 1);
          }

          v263[0] = -1;
          v264 = 0;
          v31 = v263;
          sub_2394FDB60(v13, v78, v79, v263);
          if (v263[0] == 4)
          {
            v263[1] = &unk_284BBE888;
            goto LABEL_548;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "No wifi credentials specified", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9u, 1);
        }

        v265[0] = -1;
        v266 = 0;
        v31 = v265;
        sub_2394FDB60(v13, 0xE0B0000002FLL, "src/controller/CHIPDeviceController.cpp", v265);
        if (v265[0] == 4)
        {
          v265[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      goto LABEL_549;
    case 0x18u:
      if (*(v8 + 248))
      {
        v324[0] = *(v8 + 248);
        *&v324[8] = *(v8 + 256);
        *buf = *sub_238DE36B8(v324);
        buf[16] = 1;
        *&buf[24] = v10;
        v324[0] = *v2;
        if (v324[0] == 1)
        {
          *&v324[4] = *(v2 + 1);
        }

        v61 = sub_23950DEF8(v13, v12, buf, sub_239507BDC, sub_2395036B8, v4, v324, 0);
        if (v61)
        {
          v62 = v60;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v63 = sub_2393C9138();
            *v324 = 136315138;
            *&v324[4] = v63;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send AddOrUpdateThreadNetwork command: %s", v324, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(9u, 1);
          }

          v259[0] = -1;
          v260 = 0;
          v31 = v259;
          sub_2394FDB60(v13, v61, v62, v259);
          if (v259[0] == 4)
          {
            v259[1] = &unk_284BBE888;
            goto LABEL_548;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "No thread credentials specified", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9u, 1);
        }

        v261[0] = -1;
        v262 = 0;
        v31 = v261;
        sub_2394FDB60(v13, 0xE210000002FLL, "src/controller/CHIPDeviceController.cpp", v261);
        if (v261[0] == 4)
        {
          v261[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      goto LABEL_549;
    case 0x19u:
    case 0x1Au:
      sub_23950E0E0(v13, v12, v8, v10);
      goto LABEL_549;
    case 0x1Bu:
      if (*(v8 + 176))
      {
        buf[0] = *(v8 + 176);
        *&buf[8] = *(v8 + 184);
        *&buf[24] = *(v8 + 200);
        *v324 = *sub_2394EB70C(buf);
        v324[16] = 1;
        *&v325 = v10;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v8 + 548) == 1)
          {
            v305[0] = 1;
            v305[1] = *(v8 + 549);
            if (*sub_238DE36D8(v305))
            {
              v45 = "true";
            }

            else
            {
              v45 = "false";
            }
          }

          else
          {
            v45 = "missing";
          }

          *buf = 136315138;
          *&buf[4] = v45;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "SendCommand kWiFiNetworkEnable, supportsConcurrentConnection=%s", buf, 0xCu);
        }

        if (sub_2393D5398(2u))
        {
          if (*(v8 + 548) == 1)
          {
            buf[0] = 1;
            buf[1] = *(v8 + 549);
            *sub_238DE36D8(buf);
          }

          sub_2393D5320(9u, 2);
        }

        buf[0] = *v2;
        if (buf[0] == 1)
        {
          *&buf[4] = *(v2 + 1);
        }

        v186 = sub_23950E3EC(v13, v12, v324, sub_239507DA0, sub_2395036B8, v4, buf, 0);
        if (v186)
        {
          v187 = v185;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v188 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v188;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send WiFi ConnectNetwork command: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(9u, 1);
          }

          v255[0] = -1;
          v256 = 0;
          v31 = v255;
          sub_2394FDB60(v13, v186, v187, v255);
          if (v255[0] == 4)
          {
            v255[1] = &unk_284BBE888;
            goto LABEL_548;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "No wifi credentials specified", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9u, 1);
        }

        v257[0] = -1;
        v258 = 0;
        v31 = v257;
        sub_2394FDB60(v13, 0xE3D0000002FLL, "src/controller/CHIPDeviceController.cpp", v257);
        if (v257[0] == 4)
        {
          v257[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      goto LABEL_549;
    case 0x1Cu:
      *&v305[8] = 0;
      *v305 = 0;
      *buf = &buf[16];
      *&buf[8] = 0;
      if (*(v8 + 248) != 1 || (v324[0] = 1, *&v324[8] = *(v8 + 256), v37 = sub_238DE36B8(v324), sub_2393D79D4(buf, *v37, *(v37 + 1))) || sub_2393D7380(buf, v305))
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *v324 = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Invalid Thread operational dataset configured at commissioner!", v324, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9u, 1);
        }

        v247[0] = -1;
        v248 = 0;
        v31 = v247;
        sub_2394FDB60(v13, 0xE5C0000002FLL, "src/controller/CHIPDeviceController.cpp", v247);
        if (v247[0] == 4)
        {
          v247[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      else
      {
        *v324 = *v305;
        v324[16] = 1;
        *&v325 = v10;
        LOBYTE(v303) = *v2;
        if (v303 == 1)
        {
          *v304 = *(v2 + 1);
        }

        v203 = sub_23950E3EC(v13, v12, v324, sub_239507DA0, sub_2395036B8, v4, &v303, 0);
        if (v203)
        {
          v204 = v202;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v205 = sub_2393C9138();
            v303 = 136315138;
            *v304 = v205;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send Thread ConnectNetwork command: %s", &v303, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(9u, 1);
          }

          v245[0] = -1;
          v246 = 0;
          v31 = v245;
          sub_2394FDB60(v13, v203, v204, v245);
          if (v245[0] == 4)
          {
            v245[1] = &unk_284BBE888;
            goto LABEL_548;
          }
        }
      }

      goto LABEL_549;
    case 0x1Du:
      v74 = (*(*v12 + 24))(v12);
      v75 = *(v13 + 36);
      *buf = v74;
      buf[8] = v75;
      sub_23949750C(*(*(v13 + 4280) + 40), buf);
      v239[0] = -1;
      v240 = 0;
      v31 = v239;
      sub_2394FDB60(v13, 0, 0, v239);
      if (v239[0] == 4)
      {
        v239[1] = &unk_284BBE888;
        goto LABEL_548;
      }

      goto LABEL_549;
    case 0x1Eu:
    case 0x1Fu:
      v28 = (*(*v12 + 24))(v12);
      v29 = *(v13 + 36);
      *v324 = v28;
      v324[8] = v29;
      *buf = 0;
      *&buf[8] = "core_dcm_operational_setup";
      buf[20] = 0;
      sub_23948BD20(buf);
      sub_2394C49D8(*(*(v13 + 4280) + 96), v324, (v13 + 4680), v13 + 4720, 3, (v13 + 4760), 0);
      goto LABEL_549;
    case 0x20u:
      buf[0] = *v2;
      if (buf[0] == 1)
      {
        *&buf[4] = *(v2 + 1);
      }

      v111 = sub_23950EB8C(v13, v12, v324, sub_239507F64, sub_2395036B8, v4, buf, 0);
      if (v111)
      {
        v112 = v110;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v113 = sub_2393C9138();
          *buf = 136315138;
          *&buf[4] = v113;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send CommissioningComplete command: %s", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(9u, 1);
        }

        v227[0] = -1;
        v228 = 0;
        v31 = v227;
        sub_2394FDB60(v13, v111, v112, v227);
        if (v227[0] == 4)
        {
          v227[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      goto LABEL_549;
    case 0x21u:
      if (*(v8 + 660))
      {
        buf[0] = *(v8 + 660);
        *&buf[4] = *(v8 + 664);
        v32 = *sub_238DE3698(buf);
        *v324 = v32;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v32;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Send ICD StayActive with Duration %u", buf, 8u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9u, 1);
        }

        buf[0] = *v2;
        if (buf[0] == 1)
        {
          *&buf[4] = *(v2 + 1);
        }

        v34 = sub_23950E9A4(v13, v12, v324, sub_239500554, sub_2395036B8, v4, buf, 0);
        if (v34)
        {
          v35 = v33;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v36 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v36;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send IcdManagement.StayActive command: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(9u, 1);
          }

          v229[0] = -1;
          v230 = 0;
          v31 = v229;
          sub_2394FDB60(v13, v34, v35, v229);
          if (v229[0] == 4)
          {
            v229[1] = &unk_284BBE888;
            goto LABEL_548;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Skipping kICDSendStayActive", buf, 2u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(9u, 2);
        }

        v231[0] = -1;
        v232 = 0;
        v31 = v231;
        sub_2394FDB60(v13, 0, 0, v231);
        if (v231[0] == 4)
        {
          v231[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      goto LABEL_549;
    case 0x22u:
      buf[0] = 0;
      if (*(v8 + 176) == 1)
      {
        v324[0] = 1;
        *&v324[8] = *(v8 + 184);
        v325 = *(v8 + 200);
        v69 = sub_2394EB70C(v324);
        buf[0] = 1;
        *&buf[8] = *v69;
        buf[24] = 1;
      }

      buf[32] = 1;
      *&buf[40] = v10;
      v324[0] = *v2;
      if (v324[0] == 1)
      {
        *&v324[4] = *(v2 + 1);
      }

      v71 = sub_23950D510(v13, v12, buf, sub_2395076DC, sub_23950755C, v4, v324, 0);
      if (v71)
      {
        v72 = v70;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v73 = sub_2393C9138();
          *v324 = 136315138;
          *&v324[4] = v73;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send ScanNetworks command: %s", v324, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(9u, 1);
        }

        v322[0] = -1;
        v323 = 0;
        v31 = v322;
        sub_2394FDB60(v13, v71, v72, v322);
        if (v322[0] == 4)
        {
          v322[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      goto LABEL_549;
    case 0x25u:
      buf[0] = *(v8 + 176);
      if (buf[0] == 1)
      {
        *&buf[8] = *(v8 + 184);
        *&buf[24] = *(v8 + 200);
      }

      *v324 = *sub_2394EB70C(buf);
      v324[16] = 1;
      *&v325 = v10;
      buf[0] = *v2;
      if (buf[0] == 1)
      {
        *&buf[4] = *(v2 + 1);
      }

      v159 = sub_23950E7BC(v13, v12, v324, sub_239507BDC, sub_2395036B8, v4, buf, 0);
      if (v159)
      {
        v160 = v158;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v161 = sub_2393C9138();
          *buf = 136315138;
          *&buf[4] = v161;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send RemoveNetwork command: %s", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(9u, 1);
        }

        v237[0] = -1;
        v238 = 0;
        v31 = v237;
        sub_2394FDB60(v13, v159, v160, v237);
        if (v237[0] == 4)
        {
          v237[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      goto LABEL_549;
    case 0x26u:
      *&v305[8] = 0;
      *v305 = 0;
      *buf = &buf[16];
      *&buf[8] = 0;
      if (*(v8 + 248) != 1 || (v324[0] = 1, *&v324[8] = *(v8 + 256), v30 = sub_238DE36B8(v324), sub_2393D79D4(buf, *v30, *(v30 + 1))) || sub_2393D7380(buf, v305))
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *v324 = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Invalid Thread operational dataset configured at commissioner!", v324, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(9u, 1);
        }

        v235[0] = -1;
        v236 = 0;
        v31 = v235;
        sub_2394FDB60(v13, 0xEC10000002FLL, "src/controller/CHIPDeviceController.cpp", v235);
        if (v235[0] == 4)
        {
          v235[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      else
      {
        *v324 = *v305;
        v324[16] = 1;
        *&v325 = v10;
        LOBYTE(v303) = *v2;
        if (v303 == 1)
        {
          *v304 = *(v2 + 1);
        }

        v199 = sub_23950E7BC(v13, v12, v324, sub_239507BDC, sub_2395036B8, v4, &v303, 0);
        if (v199)
        {
          v200 = v198;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v201 = sub_2393C9138();
            v303 = 136315138;
            *v304 = v201;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send RemoveNetwork command: %s", &v303, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(9u, 1);
          }

          v233[0] = -1;
          v234 = 0;
          v31 = v233;
          sub_2394FDB60(v13, v199, v200, v233);
          if (v233[0] == 4)
          {
            v233[1] = &unk_284BBE888;
            goto LABEL_548;
          }
        }
      }

      goto LABEL_549;
    case 0x27u:
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Setting Terms and Conditions", buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9u, 2);
      }

      if (*(v8 + 240))
      {
        buf[0] = *(v8 + 240);
        *&buf[2] = *(v8 + 242);
        v38 = sub_2394FFDA4(buf);
        v39 = *v38;
        v40 = v38[1];
        *&v324[2] = *v38;
        *v324 = v40;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *&buf[4] = v39;
          *&buf[8] = 1024;
          *&buf[10] = v40;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Setting Terms and Conditions: %hu, %hu", buf, 0xEu);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(9u, 2);
        }

        buf[0] = *v2;
        if (buf[0] == 1)
        {
          *&buf[4] = *(v2 + 1);
        }

        v42 = sub_23950D8E0(v13, v12, v324, sub_239507248, sub_2395036B8, v4, buf, 0);
        if (v42)
        {
          v43 = v41;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v44 = sub_2393C9138();
            *buf = 136315138;
            *&buf[4] = v44;
            _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "Failed to send SetTCAcknowledgements command: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(9u, 1);
          }

          v316[0] = -1;
          v317 = 0;
          v31 = v316;
          sub_2394FDB60(v13, v42, v43, v316);
          if (v316[0] == 4)
          {
            v316[1] = &unk_284BBE888;
            goto LABEL_548;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Setting Terms and Conditions: Skipped", buf, 2u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(9u, 2);
        }

        v318[0] = -1;
        v319 = 0;
        v31 = v318;
        sub_2394FDB60(v13, 0, 0, v318);
        if (v318[0] == 4)
        {
          v318[1] = &unk_284BBE888;
          goto LABEL_548;
        }
      }

      goto LABEL_549;
    case 0x28u:
      v121 = (*(*v12 + 24))(v12);
      (*(*v13 + 96))(v13, v12, v121, v8 + 552);
      goto LABEL_549;
    case 0x29u:
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "Completed unpowered commissioning phase, marking commissioning as complete", buf, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(9u, 2);
      }

      v225[0] = -1;
      v226 = 0;
      v31 = v225;
      sub_2394FDB60(v13, 0, 0, v225);
      if (v225[0] == 4)
      {
        v225[1] = &unk_284BBE888;
LABEL_548:
        sub_239495880(v31 + 4);
      }

      goto LABEL_549;
    default:
      goto LABEL_549;
  }
}