BOOL sub_2338BDE40(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, void *a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = sub_2338A818C(v8, @"S9100", 1);
  v10 = sub_2338A818C(v8, @"S9600", 1);
  v11 = sub_2338A818C(v8, @"S3Pro", 1);
  v12 = sub_2338A818C(v8, @"S2Pro", 1);
  v13 = sub_2338A818C(v8, @"S20Pro", 1);
  v14 = sub_2338A818C(v8, @"S5Pro", 1);
  if (v9 || v10)
  {
    *a5 = 0x4B000000640;
    if (a3 <= 0x22)
    {
      v15 = (((a3 - ((37 * a3) >> 8)) >> 1) + ((37 * a3) >> 8)) >> 2;
      v16 = dword_2339167C0[(a3 - 7 * v15)];
      v17 = dword_2339167DC[v15];
      *a4 = v16;
      *(a4 + 4) = v17;
      *(a4 + 8) = 0xF0000003CLL;
LABEL_11:
      v23 = 1;
      goto LABEL_16;
    }

LABEL_15:
    v23 = 0;
    goto LABEL_16;
  }

  if (v11 || v12)
  {
    *a5 = 0x3C0000005A0;
    if (a3 > 4)
    {
      goto LABEL_15;
    }

    v18 = dword_233916818[a3];
    v19 = dword_23391682C[a3];
    v20 = dword_2339167F0[a3];
    v21 = &unk_233916804;
LABEL_10:
    v22 = v21[a3];
    *a4 = v18;
    *(a4 + 4) = v19;
    *(a4 + 8) = v20;
    *(a4 + 12) = v22;
    goto LABEL_11;
  }

  if (v13)
  {
    *a5 = 0x3C000000500;
    if (a3 > 4)
    {
      goto LABEL_15;
    }

    v18 = dword_233916818[a3];
    v19 = dword_23391682C[a3];
    v20 = dword_233916840[a3];
    v21 = &unk_233916854;
    goto LABEL_10;
  }

  if (!v14)
  {
    goto LABEL_15;
  }

  *a5 = 0x3C0000005A0;
  v31 = 0;
  v28 = 0u;
  v29 = 0;
  *(&v28 + 4) = 0xFFFFFF3D000000C3;
  v30 = xmmword_2339167B0;
  v23 = a3 < 0xB;
  if (a3 <= 0xA)
  {
    v24 = *(&v28 + a3);
    v25 = dword_233916894[a3];
    v26 = dword_2339168C0[a3];
    *a4 = dword_233916868[a3];
    *(a4 + 4) = v24;
    *(a4 + 8) = v25;
    *(a4 + 12) = v26;
  }

LABEL_16:

  return v23;
}

void sub_2338BE114(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v15 = a2;
  v11 = sub_2338AA324(a1, v15, a3, a4, a5, a6);
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = sub_2338A9B94(a1);
      v13 = sub_2338A9BFC(a3);
      v14 = sub_2338A9B78(a3);
      sub_2337830C4(v12, v13, v14, &unk_2849588A0);
    }

    else
    {
      v12 = sub_2338A9B94(a1);
      v13 = sub_2338A9BFC(a3);
      v14 = sub_2338A9B78(a3);
      sub_2338AE980(v12, v13, v14);
    }
  }

  else
  {
    v12 = sub_2338A9B94(a1);
    v13 = sub_2338A9BFC(a3);
    v14 = sub_2338A9B78(a3);
    sub_2337830C4(v12, v13, v14, &unk_284958888);
  }
}

void sub_2338BE2B4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, int a6)
{
  v40[4] = *MEMORY[0x277D85DE8];
  v10 = sub_2338A9B94(a1);
  v11 = sub_2338A9BFC(a3);
  v12 = sub_2338A9B78(a3);
  v13 = sub_2338AE7EC(v10, v11, v12);

  v18 = 0;
  v40[0] = 0;
  do
  {
    if (v18 >= objc_msgSend_count(v13, v14, v15, v16, v17))
    {
      v19 = -1;
    }

    else
    {
      v19 = sub_23386EA2C(v13, v40, v15, v16, v17);
    }

    v20 = v40[0];
    *(&v40[1] + v40[0]) = v19;
    v18 = v20 + 1;
    v40[0] = v20 + 1;
  }

  while ((v20 + 1) < 6);
  v21 = a4[4];
  v22 = bswap32(v21) >> 16;
  if (a6)
  {
    LOWORD(v21) = v22;
  }

  v23 = a4[5];
  v24 = bswap32(v23) >> 16;
  if (a6)
  {
    LOWORD(v23) = v24;
  }

  v25 = 3;
  if (*a4 - 4131 < 3)
  {
    v25 = 2 * (*a4 - 4131) + 1;
  }

  *(&v40[1] + v25) = v23;
  v40[0] = v25 - 1;
  *(v40 + v25 + 1) = v21;
  v26 = sub_2338A9B94(a1);
  v27 = sub_2338A9BFC(a3);
  v28 = sub_2338A9B78(a3);
  sub_2338AE980(v26, v27, v28);

  v40[0] = 0;
  do
  {
    v29 = sub_2338A9B94(a1);
    v30 = sub_2338A9BFC(a3);
    v31 = sub_2338A9B78(a3);
    v32 = sub_2338BE594(v29, v30, v31);

    if (v32)
    {
      v36 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v33, *(&v40[1] + v40[0]), v34, v35);
      objc_msgSend_addObject_(v32, v37, v36, v38, v39);
    }

    ++v40[0];
  }

  while (v40[0] < 6uLL);
}

id sub_2338BE594(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = sub_2337854A4(a1, a2, 0);
  v7 = sub_2337E2674(v6, v5);

  return v7;
}

void sub_2338BE628(uint64_t a1)
{
  sub_2338B1F54(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2338BE6FC(uint64_t a1, uint64_t *a2, void **a3, void **a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284932190;
  sub_2338B21BC(a1 + 24, a2, *a3, *a4);
  *(a1 + 24) = &unk_284932098;
  *(a1 + 220) = 0;
  *(a1 + 224) = 0;
  return a1;
}

void sub_2338BE7A0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284932190;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

_BYTE *sub_2338BE81C(_BYTE *result)
{
  if (result)
  {
    result = __dynamic_cast(result, &unk_28492EBB0, &unk_284932328, 0);
    if (result)
    {
      result[195] = 1;
    }
  }

  return result;
}

void sub_2338BE884(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338BE9B4();
}

uint64_t sub_2338BE918(_BYTE *a1)
{
  if (sub_2338A94CC(a1))
  {
    v2 = 1;
  }

  else
  {
    v2 = a1[195];
  }

  return v2 & 1;
}

void sub_2338BE97C(uint64_t a1)
{
  sub_2338B1F54(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2338BEA50(uint64_t a1, uint64_t *a2, void **a3, void **a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284932350;
  sub_2338B21BC(a1 + 24, a2, *a3, *a4);
  *(a1 + 24) = &unk_284932258;
  *(a1 + 219) = 0;
  return a1;
}

void sub_2338BEAF4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284932350;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2338BEB70(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338BEC38();
}

void *sub_2338BECD4(void *a1, uint64_t *a2, void **a3, void **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284932498;
  sub_2338B21BC((a1 + 3), a2, *a3, *a4);
  a1[3] = &unk_2849323A0;
  return a1;
}

void sub_2338BED74(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284932498;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2338BF05C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284932630, 0);
    if (v10)
    {
      sub_2338BF59C(v10, v11, v12, a4, a5, a6);
    }
  }
}

uint64_t sub_2338BF128(uint64_t *a1)
{
  v2 = (*(**a1 + 16))(*a1);
  if (v2 < 4)
  {
    return 0;
  }

  v3 = v2;
  sub_233754E04(v16, a1);
  v15 = 0;
  if ((*(**a1 + 32))(*a1, &v15, 4) == 4)
  {
    if (v15 == 73 && BYTE1(v15) == 73 && BYTE2(v15) == 42 && !HIBYTE(v15) || (v4 = 0, v15 == 77) && BYTE1(v15) == 77 && !BYTE2(v15) && HIBYTE(v15) == 42)
    {
      if (v15 == 77)
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }

      sub_233735A18(v14, a1, v5);
      v6 = sub_233725614(*a1);
      v7 = v3;
      if (v3 - 2 >= v6 && (v8 = sub_2337255C0(*a1), v9 = v8, v7 >= v6 + 2 + 12 * v8) && (v13 = v6 + 2, v8))
      {
        while (1)
        {
          v10 = *a1;
          sub_233723AE0(&v12, &v13);
          (*(*v10 + 40))(v10, &v12, 0);
          if (sub_2337255C0(*a1) == 34310)
          {
            break;
          }

          --v9;
          v13 += 12;
          if (!v9)
          {
            goto LABEL_19;
          }
        }

        v4 = 1;
      }

      else
      {
LABEL_19:
        v4 = 0;
      }

      sub_233735A90(v14);
    }
  }

  else
  {
    v4 = 0;
  }

  sub_233725FD4(v16);
  return v4;
}

void sub_2338BF318(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_233735A90(va);
  sub_233725FD4(va1);
  _Unwind_Resume(a1);
}

void sub_2338BF350(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338BFEC4();
}

void sub_2338BF410(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  memset(v15, 0, sizeof(v15));
  sub_2338B0B1C(a1, a2, &v14);
  sub_233723AE0(&v12, (a1 + 200));
  v11 = *(a1 + 204);
  sub_2338A820C(a1, &v12, &v11, 0, &v13);
  if (v14)
  {
    sub_233753C74(v15, &v14);
  }

  if (v13)
  {
    v6 = sub_2338A9B94(a1);
    v10 = sub_2337397B0(v6, *MEMORY[0x277CD3410], v7, v8, v9);

    if (v10)
    {
      if (v10 == 6)
      {
        v10 = 8;
      }

      else if (v10 == 8)
      {
        v10 = 6;
      }
    }

    *(v13 + 20) = v10;
    sub_233753C74(v15, &v13);
  }

  sub_2338A86B8(v15, a2, a3);
  if (*(&v13 + 1))
  {
    sub_2337239E8(*(&v13 + 1));
  }

  if (*(&v14 + 1))
  {
    sub_2337239E8(*(&v14 + 1));
  }

  *&v14 = v15;
  sub_233723948(&v14);
}

void sub_2338BF540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void **a12, std::__shared_weak_count *a13, char a14)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  if (a13)
  {
    sub_2337239E8(a13);
  }

  a12 = &a14;
  sub_233723948(&a12);
  _Unwind_Resume(a1);
}

uint64_t *sub_2338BF59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  sub_2338A832C(a1, &v16);
  if (a6)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  sub_233735A18(v18, &v16, v10);
  if (v17)
  {
    sub_2337239E8(v17);
  }

  v11 = *(a4 + 8);
  v12 = bswap32(v11);
  if (a6)
  {
    v11 = v12;
  }

  v13 = *(a4 + 2);
  if (v13 > 0x6F)
  {
    v14 = 0;
  }

  else
  {
    v14 = qword_233916A68[v13];
  }

  sub_2338BF680(a1, a5 + v11, v14 * *(a4 + 4), 0);
  return sub_233735A90(v18);
}

void sub_2338BF650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_233735A90(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2338BF680(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v43 = a2;
  sub_2338A832C(a1, v44);
  sub_2337268D8(&v47, &v43);
  sub_233725F08(v42, v44, &v47, 0);
  if (v45)
  {
    sub_2337239E8(v45);
  }

  if (a3 >= 0x35)
  {
    do
    {
      sub_2338A832C(a1, v44);
      v6 = sub_233725614(*v44);
      if (v45)
      {
        sub_2337239E8(v45);
      }

      if (v6 != 1347114067)
      {
        return sub_233725FD4(v42);
      }

      sub_2338A832C(a1, v44);
      v7 = *v44;
      v47 = 4;
      sub_233723B40(&v40, &v47);
      (*(*v7 + 40))(v7, &v40, 1);
      if (v45)
      {
        sub_2337239E8(v45);
      }

      sub_2338A832C(a1, v44);
      (*(**v44 + 32))(*v44, &v47, 32);
      if (v45)
      {
        sub_2337239E8(v45);
      }

      v49 = 0;
      sub_2338A832C(a1, v44);
      v8 = *v44;
      v40 = 8;
      sub_233723B40(&v38, &v40);
      (*(*v8 + 40))(v8, &v38, 1);
      if (v45)
      {
        sub_2337239E8(v45);
      }

      sub_2338A832C(a1, v44);
      v9 = sub_233725614(*v44);
      if (v45)
      {
        sub_2337239E8(v45);
      }

      sub_2338A832C(a1, v44);
      v10 = (*(**v44 + 48))(*v44);
      if (v45)
      {
        sub_2337239E8(v45);
      }

      v11 = v9;
      if (v47 == 0x666F725074706143 && *v48 == 0x7461645F7761725FLL && *&v48[8] == 0x697461746F725F61 && *&v48[11] == 0x6E6F697461746FLL)
      {
        sub_2338A832C(a1, &v40);
        if (v9 >= 0x27uLL)
        {
          v32 = 39;
        }

        else
        {
          v32 = v9;
        }

        (*(*v40 + 32))(v40, v44, v32);
        v46 = 0;
        if (v41)
        {
          sub_2337239E8(v41);
        }

        sscanf(v44, "%d", a1 + 216);
        v31 = 0;
        *(a1 + 195) = 1;
        goto LABEL_114;
      }

      if (v47 == 0x5F666F7250676D49 && *v48 == 0x6E6F697461746F72 && *&v48[7] == 0x656C676E615F6ELL)
      {
        sub_2338A832C(a1, &v40);
        if (v9 >= 0x27uLL)
        {
          v33 = 39;
        }

        else
        {
          v33 = v9;
        }

        (*(*v40 + 32))(v40, v44, v33);
        v46 = 0;
        if (v41)
        {
          sub_2337239E8(v41);
        }

        sscanf(v44, "%d", a1 + 212);
        v31 = 0;
        *(a1 + 196) = 1;
        goto LABEL_114;
      }

      if (v47 == 0x6572705F4745504ALL && *v48 == 0x7461645F77656976 && *&v48[8] == 97)
      {
        v31 = 0;
        *(a1 + 200) = v10;
        *(a1 + 204) = v9;
        *(a1 + 197) = 1;
      }

      else
      {
        if (v47 == 0x624F6172656D6143 && *v48 == 0x70735F4F53495F6ALL && *&v48[8] == 6579557)
        {
          LODWORD(v38) = 0;
          sub_2338A832C(a1, &v40);
          if (v9 >= 0x27uLL)
          {
            v34 = 39;
          }

          else
          {
            v34 = v9;
          }

          (*(*v40 + 32))(v40, v44, v34);
          v46 = 0;
          if (v41)
          {
            sub_2337239E8(v41);
          }

          if (sscanf(v44, "%u", &v38) == 1 && v38 <= 6)
          {
            *(a1 + 208) = dword_233916A30[v38];
          }

          v31 = 0;
          *(a1 + 198) = 1;
          goto LABEL_114;
        }

        if (v47 != 0x4F65727574706143 || *v48 != 0x63656C65735F6A62 || *&v48[5] != 0x6E6F697463656CLL)
        {
          v23 = v47 == 0x4F65727574706143 && *v48 == 0x5F656E6F745F6A62;
          if (!v23 || *&v48[6] != 0x65767275635F65)
          {
            v25 = v47 == 0x4F65727574706143 && *v48 == 0x70726168735F6A62;
            if (!v25 || *&v48[5] != 0x7373656E707261)
            {
              v27 = v47 == 0x6A624F746F6F6853 && *v48 == 0x735F726F6C6F635FLL;
              if (!v27 || *&v48[5] != 0x70757465735F72)
              {
                v29 = v47 == 0x6A624F746F6F6853 && *v48 == 0x65735F657661735FLL;
                if (!v29 || *&v48[8] != 7370100)
                {
                  if (*(a1 + 195) == 1 && *(a1 + 196) == 1 && *(a1 + 197) == 1)
                  {
                    v31 = *(a1 + 198);
                  }

                  else
                  {
                    v31 = 0;
                  }

                  if ((v31 & 1) != 0 || v9 < 0x35)
                  {
                    goto LABEL_114;
                  }

                  sub_2338BF680(a1, v10, v9, (a4 + 1));
                }
              }
            }
          }
        }

        v31 = 0;
      }

LABEL_114:
      sub_2338A832C(a1, &v40);
      v35 = v40;
      v38 = v10 + v11;
      sub_2337268D8(&v39, &v38);
      (*(*v35 + 40))(v35, &v39, 0);
      if (v41)
      {
        sub_2337239E8(v41);
      }

      a3 = a3 - 52 - v11;
    }

    while (!(v31 & 1 | (a3 < 0x35)));
  }

  return sub_233725FD4(v42);
}

void sub_2338BFDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

void sub_2338BFE8C(uint64_t a1)
{
  sub_2338B1F54(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2338BFF60(uint64_t a1, uint64_t *a2, void **a3, void **a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284932658;
  sub_2338B21BC(a1 + 24, a2, *a3, *a4);
  *(a1 + 24) = &unk_284932560;
  *(a1 + 219) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  return a1;
}

void sub_2338C000C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284932658;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2338C0088(const void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v3 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284932818, 0);
    if (v3)
    {
      sub_2338C01EC(v3);
    }
  }
}

void sub_2338C0138(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338C0268();
}

void sub_2338C01EC(uint64_t a1)
{
  v1 = sub_2338A9B94(a1);
  sub_2337830C4(v1, *MEMORY[0x277CD3490], *MEMORY[0x277CD34A8], @"Hasselblad");
}

void *sub_2338C0304(void *a1, uint64_t *a2, void **a3, void **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284932840;
  sub_2338B21BC((a1 + 3), a2, *a3, *a4);
  a1[3] = &unk_284932748;
  return a1;
}

void sub_2338C03A4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284932840;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2338C0420()
{
  if ((atomic_load_explicit(&qword_280C04EF0, memory_order_acquire) & 1) == 0)
  {
    sub_2338FF8E0();
  }

  return qword_280C04EE8;
}

uint64_t sub_2338C0458()
{
  if ((atomic_load_explicit(&qword_280C04F00, memory_order_acquire) & 1) == 0)
  {
    sub_2338FF93C();
  }

  return qword_280C04EF8;
}

uint64_t sub_2338C0490()
{
  if ((atomic_load_explicit(qword_280C04F10, memory_order_acquire) & 1) == 0)
  {
    sub_2338FF998();
  }

  return qword_280C04F08;
}

uint64_t sub_2338C04C8()
{
  if ((atomic_load_explicit(qword_280C04F30, memory_order_acquire) & 1) == 0)
  {
    sub_2338FF9F4();
  }

  return qword_280C04F28;
}

void sub_2338C0500(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284932A78, 0);
    if (v10)
    {
      sub_2338C1D30(v10, v11, v12, a4, a5, a6);
    }
  }
}

void sub_2338C05CC(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284932A78, 0);
    if (v10)
    {
      sub_2338C1BC4(v10, v11, v12, a4, a5, a6);
    }
  }
}

void sub_2338C0698(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284932A78, 0);
    if (v10)
    {
      sub_2338C1AF0(v10, v11, a3, a4, v12, a6);
    }
  }
}

void sub_2338C0764(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338C21A8();
}

uint64_t sub_2338C07F8(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_2338A832C(a1, &v9);
  LODWORD(v8) = 0;
  sub_233725F08(v7, &v9, &v8, 0);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  v8 = 0;
  sub_2338A832C(a1, &v9);
  v2 = (*(*v9 + 32))(v9, &v8, 8);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  if (v2 == 8 && bswap32(v8) == 5067341)
  {
    v9 = 0;
    if (sub_2338A9730(a1, &v9, 8, 48, 0) != 8)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (BYTE1(v9) == 77 && v9 == 77)
    {
      v4 = 48;
    }

    else
    {
      v4 = 140;
    }
  }

  else
  {
    v4 = sub_2338AEFA4();
  }

  sub_233725FD4(v7);
  return v4;
}

void sub_2338C0984(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

BOOL sub_2338C09F8(uint64_t *a1)
{
  v4 = 0;
  sub_233725F08(v5, a1, &v4, 0);
  v4 = 0;
  v2 = (*(**a1 + 32))(*a1, &v4, 4);
  sub_2338FFA78(v2, &v4, v5, &v6);
  return v6;
}

void sub_2338C0A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

void sub_2338C0A98(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v3 = *MEMORY[0x277CD2F50];
  v11 = sub_2338BD598(v2, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2F68]);

  if (v11)
  {
    v8 = objc_msgSend_intValue(v11, v4, v5, v6, v7);
    v9 = sub_2338C0BB0(a1, v8);
    if (v9)
    {
      v10 = sub_2338A9B94(a1);
      sub_2337830C4(v10, v3, *MEMORY[0x277CD2F78], v9);
    }
  }

  sub_2338AF5B0(a1);
}

id sub_2338C0BB0(uint64_t a1, uint64_t a2)
{
  v174 = 0;
  v175 = 0;
  v176 = 0;
  v7 = sub_2338E9010(@"minolta");
  v166 = v7;
  if (v7)
  {
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"%u", v5, v6, a2);
    v12 = sub_23378DDE8(v7, v8, v9, v10, v11);

    for (i = 0; ; i = v173 + 1)
    {
      v173 = i;
      if (i >= objc_msgSend_count(v12, v13, v14, v15, v16))
      {

        goto LABEL_26;
      }

      v21 = sub_23386EAC4(v12, &v173, v18, v19, v20);
      if (objc_msgSend_count(v21, v22, v23, v24, v25) == 5)
      {
        break;
      }

LABEL_22:
    }

    __p[0] = 0;
    v29 = sub_23386E0B8(v21, __p, v26, v27, v28);
    __p[0] = 1;
    v33 = sub_23386EA74(v21, __p, v30, v31, v32);
    __p[0] = 2;
    v37 = sub_23386EA74(v21, __p, v34, v35, v36);
    __p[0] = 3;
    v41 = sub_23386EA74(v21, __p, v38, v39, v40);
    __p[0] = 4;
    v45 = sub_23386EA74(v21, __p, v42, v43, v44);
    if (!v29)
    {
LABEL_21:

      goto LABEL_22;
    }

    v46 = v45;
    v47 = v29;
    v52 = objc_msgSend_UTF8String(v47, v48, v49, v50, v51);
    v53 = strlen(v52);
    if (v53 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_2337304FC();
    }

    v54 = v53;
    if (v53 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v168) = v53;
    if (v53)
    {
      memmove(&__dst, v52, v53);
    }

    *(&__dst + v54) = 0;
    v55 = SHIBYTE(v168);
    if (SHIBYTE(v168) < 0)
    {
      sub_233731FB8(__p, __dst, *(&__dst + 1));
    }

    else
    {
      *__p = __dst;
      v170 = v168;
    }

    *&v171 = v33;
    *(&v171 + 1) = v37;
    *&v172 = v41;
    *(&v172 + 1) = v46;
    v56 = v175;
    if (v175 >= v176)
    {
      v175 = sub_2338BAFB4(&v174, __p);
      if (SHIBYTE(v170) < 0)
      {
        operator delete(__p[0]);
        if ((v55 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }
      }

      else if ((v55 & 0x80000000) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v57 = *__p;
      *(v175 + 16) = v170;
      *v56 = v57;
      __p[1] = 0;
      v170 = 0;
      __p[0] = 0;
      v58 = v172;
      *(v56 + 24) = v171;
      *(v56 + 40) = v58;
      v175 = v56 + 56;
      if ((v55 & 0x80000000) == 0)
      {
LABEL_20:
        v7 = v166;
        goto LABEL_21;
      }
    }

    operator delete(__dst);
    goto LABEL_20;
  }

LABEL_26:
  v59 = v174;
  if (v175 - v174 != 56)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v175 - v174) >> 3)) < 2)
    {
      v60 = 0;
      goto LABEL_98;
    }

    v61 = sub_2338B0E5C(a1);
    v62 = sub_2338A9B94(a1);
    v63 = sub_233739994(v62, *MEMORY[0x277CD2F50], 0);

    v67 = sub_233740FAC(v61, *MEMORY[0x277CD3088], v64, v65, v66);
    v71 = sub_233740FAC(v61, *MEMORY[0x277CD30E8], v68, v69, v70);
    v75 = sub_23378DDE8(v63, *MEMORY[0x277CD2F70], v72, v73, v74);
    v81 = v75;
    v82 = 0.0;
    if (v75)
    {
      v84 = 0.0;
      if (objc_msgSend_count(v75, v76, v77, v78, v79) == 4)
      {
        __p[0] = 0;
        v84 = sub_23386EA74(v81, __p, v83, v78, v79);
        __p[0] = 1;
        v82 = sub_23386EA74(v81, __p, v85, v86, v87);
        __p[0] = 2;
        sub_23386EA74(v81, __p, v88, v89, v90);
        __p[0] = 3;
        v80 = sub_23386EA74(v81, __p, v91, v92, v93);
      }
    }

    else
    {
      v84 = 0.0;
    }

    v94 = v174;
    if (*(v174 + 23) < 0)
    {
      v94 = *v174;
    }

    v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, v94, v78, v79, v80);
    if (v67)
    {
      v163 = v71;
      v164 = v63;
      v162 = v99;
      objc_msgSend_doubleValue(v67, v95, v96, v97, v98);
      v101 = v100;
      objc_msgSend_doubleValue(v71, v102, v103, v104, v105);
      v107 = exp2(v106 * 0.5);
      v112 = sub_233755CB8(0x6DB6DB6DB6DB6DB7 * ((v175 - v174) >> 3));
      v114 = v174;
      if ((0x6DB6DB6DB6DB6DB7 * ((v175 - v174) >> 3)) >= 2)
      {
        v160 = log(v101);
        v115 = 0;
        v116 = 0;
        v117 = 999999999.0;
        v118 = 1;
        v165 = v107;
        while (1)
        {
          v119 = v114 + v115;
          if (*(v114 + v115 + 79) < 0)
          {
            v121 = v117;
            sub_233731FB8(__p, *(v119 + 56), *(v119 + 64));
            v117 = v121;
          }

          else
          {
            v120 = *(v119 + 56);
            v170 = *(v119 + 72);
            *__p = v120;
          }

          v122 = *(v114 + v115 + 80);
          v172 = *(v114 + v115 + 96);
          v171 = v122;
          v123 = v122;
          v124 = *(&v172 + 1);
          v113 = *&v172;
          if ((v84 <= 0.0 || vabdd_f64(v84, *&v171) <= 0.9) && (v82 <= 0.0 || vabdd_f64(v82, *(&v171 + 1)) <= 0.9) && v101 >= *&v171 + -0.9 && v101 <= *(&v171 + 1) + 0.9)
          {
            if (v107 <= 0.0)
            {
              v134 = v117;
LABEL_70:
              if (v170 >= 0)
              {
                objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v108, __p, v110, v111);
              }

              else
              {
                objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v108, __p[0], v110, v111);
              }
              v138 = ;
              if (v138)
              {
                objc_msgSend_addObject_(v112, v135, v138, v136, v137);
              }

              v117 = v134;
              goto LABEL_76;
            }

            if (v107 >= *&v172 + -0.15 && v107 <= *(&v172 + 1) + 0.15)
            {
              if (*&v171 != *(&v171 + 1) && *&v172 != *(&v172 + 1))
              {
                v161 = v117;
                v127 = log(*&v172);
                v128 = log(v124) - v127;
                v129 = log(*(&v123 + 1));
                v130 = log(*&v123);
                v131 = v127 + v128 / (v129 - v130) * (v160 - v130);
                v107 = v165;
                v113 = exp(v131);
                v117 = v161;
              }

              v132 = vabdd_f64(v107, v113);
              v113 = v117 + 0.15;
              if (v132 <= v117 + 0.15)
              {
                if (v132 < v117 + -0.15)
                {
                  if (v170 >= 0)
                  {
                    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v108, __p, v110, v111);
                  }

                  else
                  {
                    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v108, __p[0], v110, v111);
                  }
                  v133 = ;

                  v116 = v133;
                }

                v134 = v132;
                v107 = v165;
                goto LABEL_70;
              }

              v107 = v165;
            }
          }

LABEL_76:
          if (SHIBYTE(v170) < 0)
          {
            v139 = v117;
            operator delete(__p[0]);
            v117 = v139;
          }

          ++v118;
          v114 = v174;
          v115 += 56;
          if (v118 >= 0x6DB6DB6DB6DB6DB7 * ((v175 - v174) >> 3))
          {
            goto LABEL_82;
          }
        }
      }

      v116 = 0;
LABEL_82:
      if (objc_msgSend_count(v112, v108, v109, v110, v111, v113))
      {
        if (v116)
        {
          objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v140, v116, v141, v142);
        }

        else
        {
          objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v140, &stru_284938540, v141, v142);
        }
        v60 = ;
        for (j = 0; ; j = __p[0] + 1)
        {
          __p[0] = j;
          if (j >= objc_msgSend_count(v112, v143, v144, v145, v146))
          {
            break;
          }

          v151 = sub_23386E0B8(v112, __p, v148, v149, v150);
          if (objc_msgSend_length(v60, v152, v153, v154, v155))
          {
            if (!v116 || (objc_msgSend_isEqualToString_(v151, v156, v60, v157, v158) & 1) == 0)
            {
              objc_msgSend_appendFormat_(v60, v156, @" or %@", v157, v158, v151);
            }
          }

          else
          {
            objc_msgSend_appendString_(v60, v156, v151, v157, v158);
          }
        }

        v7 = v166;
        v71 = v163;
        v63 = v164;
        v99 = v162;
        goto LABEL_97;
      }

      v7 = v166;
      v71 = v163;
      v99 = v162;
    }

    v60 = v99;
LABEL_97:

    goto LABEL_98;
  }

  if (*(v174 + 23) < 0)
  {
    v59 = *v174;
  }

  v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v59, v5, v6);
LABEL_98:

  __p[0] = &v174;
  sub_2338BB644(__p);

  return v60;
}

void sub_2338C13E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, char *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  __p = &a34;
  sub_2338BB644(&__p);
  _Unwind_Resume(a1);
}

BOOL sub_2338C1588(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v10 = a2;
  v13 = 0;
  v14[0] = 0;
  *(v14 + 5) = 0;
  v11 = sub_2338A9730(a1, &v13, 20, a5, a3);
  if (v11 == 20)
  {
    sub_2338ADD58(a1, v10, word_284932880, a3, a5, a6);
    (*(*a1 + 160))(a1);
  }

  return v11 == 20;
}

uint64_t sub_2338C169C(uint64_t a1, void *a2, unsigned int a3, _DWORD *a4, void *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v18[0] = 0;
  v18[2] = 650;
  v18[1] = 0x1450000028ALL;
  v18[3] = 0xFFFFFEBBFFFFFD76;
  v19 = -650;
  v14 = 0u;
  *(&v14 + 4) = 0x10E00000168;
  v15 = 0xFFFFFE98FFFFFEF2;
  v16 = 4294967026;
  v17 = 270;
  if (sub_2338BA75C(v8, @"ALPHA SWEET DIGITAL", 0) && sub_2338BA75C(v8, @"ALPHA-7 DIGITAL", 0) && sub_2338BA75C(v8, @"MAXXUM 7D", 0) || (*a5 = 0x7D000000BC0, a3 > 8))
  {
    v12 = 0;
  }

  else
  {
    v9 = *(&v14 + a3);
    v10 = dword_233916BC0[a3];
    v11 = dword_233916BE4[a3];
    *a4 = *(v18 + a3);
    a4[1] = v9;
    a4[2] = v10;
    a4[3] = v11;
    v12 = 1;
  }

  return v12;
}

void sub_2338C181C(char **a1, int a2)
{
  v23 = 0;
  v4 = sub_2338A9B94(a1);
  v5 = sub_233875D18(v4, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B0]);

  for (i = 0; ; ++i)
  {
    v6 = sub_2338C169C(v6, v5, i, v22, &v23);
    if (!v6)
    {
      break;
    }
  }

  if (i)
  {
    v8 = sub_2338AC594(a1, 0, 0, sub_2338C1A6C);
    v9 = 0;
    __p = 0;
    v20 = 0;
    v21 = 0;
    do
    {
      v18 = 0uLL;
      v8 = sub_2338C169C(v8, v5, v9, &v18, &v23);
      if (v8)
      {
        v10 = v20;
        if (v20 >= v21)
        {
          v12 = (v20 - __p) >> 4;
          v13 = v12 + 1;
          if ((v12 + 1) >> 60)
          {
            sub_2337235BC();
          }

          v14 = v21 - __p;
          if ((v21 - __p) >> 3 > v13)
          {
            v13 = v14 >> 3;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF0)
          {
            v15 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            sub_23377FC40(&__p, v15);
          }

          v16 = (16 * v12);
          *v16 = v18;
          v11 = 16 * v12 + 16;
          v17 = (16 * v12 - (v20 - __p));
          memcpy(v16 - (v20 - __p), __p, v20 - __p);
          v8 = __p;
          __p = v17;
          v20 = v11;
          v21 = 0;
          if (v8)
          {
            operator delete(v8);
          }
        }

        else
        {
          *v20 = v18;
          v11 = (v10 + 16);
        }

        v20 = v11;
      }

      ++v9;
    }

    while (v9 < i);
    sub_2338B1160(a1, &__p, 1);
    if (a2)
    {
      sub_2338B1254(a1, 1 << (a2 - 1), (1 << (a2 - 1)) >> 63, 1);
    }

    sub_2338B1194(a1, &v23, 1);
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }
  }
}

id sub_2338C1A6C(void *a1, unsigned int a2)
{
  if (a1)
  {
    a1 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284932A78, 0);
    if (a1)
    {
      a1 = sub_2338C2188(a1, a2);
    }

    v2 = vars8;
  }

  return a1;
}

void sub_2338C1AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(v8) = *(a4 + 8);
  v15 = sub_2338A9B94(a1);
  v9 = bswap32(v8);
  if (a6)
  {
    v8 = v9;
  }

  else
  {
    v8 = v8;
  }

  v10 = sub_2338A9BFC(a3);
  v14 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v11, v8, v12, v13);
  sub_2337830C4(v15, v10, *MEMORY[0x277CD2F68], v14);
}

void sub_2338C1BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (*(a4 + 4) >= 0xA2u)
  {
    v28 = 0;
    LODWORD(v8) = *(a4 + 8);
    v9 = bswap32(v8);
    v8 = a6 ? v9 : v8;
    if (sub_2338A9730(a1, &v28, 2, a5, v8 + 160) == 2)
    {
      v10 = v28;
      v11 = bswap32(v28) >> 16;
      if (a6)
      {
        v10 = v11;
      }

      v12 = v10;
      v28 = v10;
      if (v10 == 76)
      {
        v13 = 6;
      }

      else
      {
        v13 = 1;
      }

      if (v12 == 82)
      {
        v14 = 8;
      }

      else
      {
        v14 = v13;
      }

      v15 = sub_2338A9B94(a1);
      v19 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v16, v14, v17, v18);
      v20 = *MEMORY[0x277CD34B8];
      sub_2337830C4(v15, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B8], v19);

      v24 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v21, v14, v22, v23);
      v25 = sub_2338A9B94(a1);
      objc_msgSend_setObject_forKeyedSubscript_(v25, v26, v24, v20, v27);
    }
  }
}

void sub_2338C1D30(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (*(a4 + 4) >= 0x8Eu)
  {
    v32 = 0;
    v9 = *(a4 + 8);
    v10 = bswap32(v9);
    if (a6)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    if (sub_2338A9730(a1, &v32, 2, a5, v11 + 140) == 2)
    {
      v12 = v32;
      v13 = bswap32(v32) >> 16;
      if (a6)
      {
        v12 = v13;
      }

      v14 = v12;
      v32 = v12;
      if (v12 == 76)
      {
        v15 = 6;
      }

      else
      {
        v15 = 1;
      }

      if (v14 == 82)
      {
        v16 = 8;
      }

      else
      {
        v16 = v15;
      }

      v17 = sub_2338A9B94(a1);
      v21 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v18, v16, v19, v20);
      v22 = *MEMORY[0x277CD34B8];
      sub_2337830C4(v17, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B8], v21);

      v26 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v23, v16, v24, v25);
      v27 = sub_2338A9B94(a1);
      objc_msgSend_setObject_forKeyedSubscript_(v27, v28, v26, v22, v29);
    }

    if (sub_2338A9730(a1, &v32, 2, a5, v11 + 32) == 2)
    {
      v30 = v32;
      v31 = bswap32(v32) >> 16;
      if (a6)
      {
        v30 = v31;
      }

      v32 = v30;
      sub_2338C181C(a1, v30);
    }
  }
}

void sub_2338C1EF0(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2338A9B94(a1);
  v10 = sub_2337397B0(v6, *MEMORY[0x277CD3410], v7, v8, v9);

  memset(v44, 0, sizeof(v44));
  sub_2338B0B1C(a1, a2, &v43);
  v42 = 0uLL;
  v11 = sub_2338A9C18(a1);
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"IFD0/Exif/Makernote/%@", v13, v14, @"PreviewImageStart");
  v19 = sub_233740FAC(v11, v15, v16, v17, v18);

  v20 = sub_2338A9C18(a1);
  v24 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v21, @"IFD0/Exif/Makernote/%@", v22, v23, @"PreviewImageLength");
  v28 = sub_233740FAC(v20, v24, v25, v26, v27);

  v33 = 1;
  if (v19 && v28)
  {
    v40 = objc_msgSend_intValue(v19, v29, v30, v31, v32);
    v38 = objc_msgSend_intValue(v28, v34, v35, v36, v37);
    sub_233726998(&v39, &v38);
    sub_2338A820C(a1, &v40, &v39, v10, &v41);
    v42 = v41;
    v33 = v41 == 0;
  }

  if (v43)
  {
    sub_233753C74(v44, &v43);
  }

  if (!v33)
  {
    sub_233753C74(v44, &v42);
  }

  sub_2338A86B8(v44, a2, a3);

  if (*(&v42 + 1))
  {
    sub_2337239E8(*(&v42 + 1));
  }

  if (*(&v43 + 1))
  {
    sub_2337239E8(*(&v43 + 1));
  }

  *&v43 = v44;
  sub_233723948(&v43);
}

void sub_2338C20E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void **a18, std::__shared_weak_count *a19, char a20)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  if (a19)
  {
    sub_2337239E8(a19);
  }

  a18 = &a20;
  sub_233723948(&a18);
  _Unwind_Resume(a1);
}

__CFString *sub_2338C2188(uint64_t a1, unsigned int a2)
{
  if (a2 > 8)
  {
    return 0;
  }

  else
  {
    return off_2789F0240[a2];
  }
}

void *sub_2338C2244(void *a1, uint64_t *a2, void **a3, void **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284932AA0;
  sub_2338B21BC((a1 + 3), a2, *a3, *a4);
  a1[3] = &unk_2849329A8;
  return a1;
}

void sub_2338C22E4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284932AA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2338C2360(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v9 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284933250, 0);
    if (v9)
    {
      sub_2338C74C0(v9, v12, v10, a4, v11, a6);
    }
  }
}

void sub_2338C2428(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284933250, 0);
    if (v11)
    {
      sub_2338C64CC(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338C2508(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  if (a1)
  {
    v7 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284933250, 0);
    if (v7)
    {
      sub_2338C65D4(v7, v8, a3, a4);
    }
  }
}

void sub_2338C25D0(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v9 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284933250, 0);
    if (v9)
    {
      sub_2338C6940(v9, v10, v11, a4, v12, a6);
    }
  }
}

void sub_2338C2694(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284933250, 0);
    if (v10)
    {
      sub_2338C6C04(v10, v12, v11, a4, a5, a6);
    }
  }
}

void sub_2338C2764(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  if (a1)
  {
    v7 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284933250, 0);
    if (v7)
    {
      sub_2338FFBFC(v7, v8, a3, a4);
    }
  }
}

void sub_2338C2840(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v14 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284933250, 0);
    if (v10)
    {
      sub_2338FFD80(v10, v13, v11, v12, a4, a5, a6);
    }
  }
}

void sub_2338C290C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284933250, 0);
    if (v11)
    {
      sub_2338C6724(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338C29E8(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284933250, 0);
    if (v10)
    {
      sub_2338C7294(v10, v12, v11, a4, a5, a6);
    }
  }
}

void sub_2338C2AB8(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284933250, 0);
    if (v10)
    {
      sub_2338C7910(v10, v12, v11, a4, a5, a6);
    }
  }
}

void sub_2338C2B88(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338C7D94();
}

uint64_t sub_2338C2C1C(uint64_t a1, unsigned int *a2, int *a3, float *a4, float *a5)
{
  v41 = *MEMORY[0x277D85DE8];
  v9 = sub_2338A9B94(a1);
  v10 = @"{Temporary}";
  v11 = @"_AutoFocus";
  v12 = sub_2338AE7EC(v9, v10, v11);

  v17 = 0;
  v33 = 0;
  LOBYTE(v18) = 1;
  do
  {
    while ((v18 & 1) == 0)
    {
      LOBYTE(v18) = 0;
      v22 = 0;
      v33 = v17 + 1;
      if (v17++ >= 6)
      {
        goto LABEL_25;
      }
    }

    if (v17 < objc_msgSend_count(v12, v13, v14, v15, v16) && (sub_23386F6F4(v12, &v33, v14, v15, v16), v19 = objc_claimAutoreleasedReturnValue(), (v20 = v19) != 0))
    {
      v21 = objc_msgSend_intValue(v19, v13, v14, v15, v16);
      *(&v34 + v33) = v21;

      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    v17 = v33 + 1;
    v33 = v17;
  }

  while (v17 < 7);
  v22 = 0;
  if (v18)
  {
    if (v34)
    {
      v24 = v35;
      if (v35)
      {
        v25 = v36;
        if (v36)
        {
          v26 = v37;
          v27 = v38;
          v28 = v40;
          *a2 = v39 + (v37 - v35) / 2;
          v29 = v28 + (v27 - v25) / 2;
          *a3 = v29;
          *a4 = *a4 * v26;
          *a5 = *a5 * v27;
          *a4 = *a4 / v24;
          *a5 = *a5 / v25;
          if ((*a2 & 0x80000000) == 0)
          {
            v30 = *a2;
          }

          else
          {
            v30 = -*a2;
          }

          if (v29 >= 0)
          {
            v31 = v28 + (v27 - v25) / 2;
          }

          else
          {
            v31 = -v29;
          }

          if (v30 > 0x20 || v31 >= 0x21)
          {
            *a3 = 0;
            *a2 = 0;
          }

          v22 = 1;
        }
      }
    }
  }

LABEL_25:

  return v22;
}

void sub_2338C2E74(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v3 = *MEMORY[0x277CD2F50];
  v4 = @"ImageStabilization";
  v26 = sub_233875D18(v2, v3, v4);

  if (v26)
  {
    v8 = sub_2338C3068(v5, off_2789F0288, &v26, v6, v7);
  }

  else
  {
    v9 = sub_2338A9B94(a1);
    v10 = sub_2338AE7EC(v9, v3, v4);

    if (objc_msgSend_count(v10, v11, v12, v13, v14, 4, 0) < 5)
    {
      v8 = 0x7FFFLL;
    }

    else
    {
      v18 = sub_23386EA2C(v10, &v25, v15, v16, v17);
      if (v18 == 2)
      {
        v19 = 0;
      }

      else
      {
        v19 = 0x7FFF;
      }

      if (v18 == 1)
      {
        v8 = 3;
      }

      else
      {
        v8 = v19;
      }
    }
  }

  v23 = sub_2338A9B94(a1);
  if (v8 == 0x7FFF)
  {
    sub_2338AE980(v23, v3, v4);
  }

  else
  {
    v24 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v20, v8, v21, v22);
    sub_2337830C4(v23, v3, v4, v24);
  }
}

uint64_t sub_2338C3068(uint64_t a1, const char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], a2, *a3, a4, a5);
  v12 = objc_msgSend_length(*a3, v8, v9, v10, v11);
  objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v7, v13, @" ", &stru_284938540, 0, 0, v12);
  v14 = MEMORY[0x277CCAB68];
  v19 = objc_msgSend_uppercaseString(v7, v15, v16, v17, v18);
  v23 = objc_msgSend_stringWithString_(v14, v20, v19, v21, v22);

  v24 = 0;
  do
  {
    v25 = &a2[24 * v24];
    if (!*v25)
    {
      break;
    }

    v26 = *v25;
    v27 = sub_2338BA75C(v26, v23, 0);

    if (!v27)
    {
      objc_storeStrong(a3, v25[1]);
      break;
    }

    ++v24;
  }

  while (*v25);
  v28 = *(v25 + 4);

  return v28;
}

void sub_2338C31B0(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v3 = *MEMORY[0x277CD2F50];
  v4 = *MEMORY[0x277CD33D8];
  v5 = sub_2338AE880(v2, *MEMORY[0x277CD2F50], *MEMORY[0x277CD33D8]);

  if (!v5)
  {
    v6 = sub_2338A9B94(a1);
    v7 = sub_233875D18(v6, *MEMORY[0x277CD33C8], v4);

    if (v7)
    {
      v8 = sub_2338A818C(v7, @"MANUAL", 1);
      v9 = sub_2338A9B94(a1);
      v13 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v10, !v8, v11, v12);
      sub_2337830C4(v9, v3, v4, v13);
    }
  }

  sub_2338AF5B0(a1);
}

void sub_2338C32FC(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2338A9B94(a1);
  v10 = sub_2337397B0(v6, *MEMORY[0x277CD3410], v7, v8, v9);

  memset(v44, 0, sizeof(v44));
  sub_2338B0B1C(a1, a2, &v43);
  v42 = 0uLL;
  v11 = sub_2338A9C18(a1);
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"IFD0/Exif/Makernote/%@/%@", v13, v14, @"NikonThumbnail", @"PreviewImageStart");
  v19 = sub_233740FAC(v11, v15, v16, v17, v18);

  v20 = sub_2338A9C18(a1);
  v24 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v21, @"IFD0/Exif/Makernote/%@/%@", v22, v23, @"NikonThumbnail", @"PreviewImageLength");
  v28 = sub_233740FAC(v20, v24, v25, v26, v27);

  v33 = 1;
  if (v19 && v28)
  {
    v40 = objc_msgSend_intValue(v19, v29, v30, v31, v32);
    v38 = objc_msgSend_intValue(v28, v34, v35, v36, v37);
    sub_233726998(&v39, &v38);
    sub_2338A820C(a1, &v40, &v39, v10, &v41);
    v42 = v41;
    v33 = v41 == 0;
  }

  if (v43)
  {
    sub_233753C74(v44, &v43);
  }

  if (!v33)
  {
    sub_233753C74(v44, &v42);
  }

  sub_2338A86B8(v44, a2, a3);

  if (*(&v42 + 1))
  {
    sub_2337239E8(*(&v42 + 1));
  }

  if (*(&v43 + 1))
  {
    sub_2337239E8(*(&v43 + 1));
  }

  *&v43 = v44;
  sub_233723948(&v43);
}

void sub_2338C34FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void **a18, std::__shared_weak_count *a19, char a20)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  if (a19)
  {
    sub_2337239E8(a19);
  }

  a18 = &a20;
  sub_233723948(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_2338C3594(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v10 = a2;
  v17 = 0;
  v18[0] = 0;
  *(v18 + 5) = 0;
  if (sub_2338A9730(a1, &v17, 20, a5, a3) != 20)
  {
    goto LABEL_19;
  }

  if (v17 == 1869310286 && *(&v17 + 3) == 33582703)
  {
    if (BYTE2(v18[0]) == 73)
    {
      v12 = 0;
    }

    else
    {
      v12 = a6;
    }

    if (BYTE2(v18[0]) == 77)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    if (BYTE2(v18[0]) == BYTE3(v18[0]))
    {
      v14 = v13;
    }

    else
    {
      v14 = a6;
    }

    sub_2338ADD58(a1, v10, word_284933030, 8, a3 + a5 + 10, v14);
    goto LABEL_18;
  }

  if (!(v17 ^ 0x100006E6F6B694ELL | LOWORD(v18[0])))
  {
LABEL_19:
    v15 = 0;
    goto LABEL_20;
  }

  sub_2338ADD58(a1, v10, word_2789F0648, a3, a5, a6);
LABEL_18:
  (*(*a1 + 160))(a1);
  v15 = 1;
LABEL_20:

  return v15;
}

void sub_2338C373C(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = sub_2338A9B94(a1);
  v3 = *MEMORY[0x277CD33C8];
  v4 = sub_233739994(v2, *MEMORY[0x277CD33C8], 0);

  v5 = sub_2338A9B94(a1);
  v6 = *MEMORY[0x277CD2F50];
  v7 = *MEMORY[0x277CD2FE0];
  v8 = sub_233875D18(v5, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2FE0]);

  if (v8 && CFStringGetCString(v8, buffer, 256, 0x8000100u))
  {
    v9 = buffer[0];
    if (buffer[0])
    {
      v10 = 0;
      v11 = &buffer[1];
      do
      {
        if ((*(MEMORY[0x277D85DE0] + 4 * v9 + 60) & 0x400) != 0)
        {
          LOBYTE(v9) = v9 - 48;
        }

        else
        {
          v9 %= 0xAu;
        }

        v10 = v9 + 10 * v10;
        v12 = *v11++;
        v9 = v12;
      }

      while (v12);
    }

    else
    {
      v10 = 0;
    }

    if (sub_2338A9524(a1, buffer))
    {
      v43 = sub_2338A9B94(a1);
      sub_2338AE980(v43, v6, v7);
    }
  }

  else
  {
    v10 = 0;
  }

  v13 = *MEMORY[0x277CD33E8];
  if (sub_233739ACC(v4, *MEMORY[0x277CD33E8]))
  {
    v17 = sub_2337397B0(v4, v13, v14, v15, v16);
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277CD33F8];
  if (sub_233739ACC(v4, *MEMORY[0x277CD33F8]))
  {
    v22 = sub_2337397B0(v4, v18, v19, v20, v21);
    v23 = sub_2338A9B94(a1);
    v27 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v24, v22, v25, v26);
    sub_2337830C4(v23, v6, *MEMORY[0x277CD2F60], v27);
  }

  else
  {
    LODWORD(v22) = 0;
  }

  v28 = sub_2338A9B94(a1);
  v29 = v3;
  v30 = sub_2338AE7EC(v28, v29, @"_Nikon98Tag");

  if (v30)
  {
    v35 = objc_msgSend_count(v30, v31, v32, v33, v34);
    if (v35)
    {
      sub_233726154(buffer, v35);
      v39 = 0;
      v40 = 1;
      do
      {
        v44 = v39;
        v41 = sub_23386EA2C(v30, &v44, v36, v37, v38);
        *(*buffer + v39) = v41;
        v39 = v40;
      }

      while (v35 > v40++);
      sub_2338C3B28(a1, *buffer, v35, v22, v10, v17);
      if (*buffer)
      {
        v46 = *buffer;
        operator delete(*buffer);
      }
    }
  }

  objc_msgSend_removeObjectForKey_(v4, v31, @"_Nikon98Tag", v33, v34);
}

void sub_2338C3B28(uint64_t a1, _DWORD *a2, unint64_t a3, unsigned int a4, unsigned __int8 a5, char a6)
{
  v10 = sub_2338FFB34(a1, a2, a3, a4, a5);
  v38 = 0;
  v12 = 11;
  v13 = 9;
  if (v10 > 200)
  {
    if ((v10 - 201) >= 3)
    {
      if (v10 != 204)
      {
        return;
      }

      v12 = 12;
      v13 = 10;
    }

LABEL_7:
    if (v13 < a3)
    {
      LOBYTE(v11) = *(a2 + v13);
      v14 = expf((v11 * 2.3026) / 40.0);
      v35 = sub_2338A9B94(a1);
      *&v15 = v14 / 100.0;
      v20 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v16, v17, v18, v19, v15);
      sub_2337830C4(v35, *MEMORY[0x277CD2F50], *MEMORY[0x277CD33D0], v20);
    }

    goto LABEL_10;
  }

  if (v10 != 100)
  {
    if (v10 != 101)
    {
      return;
    }

    goto LABEL_7;
  }

  v12 = 6;
LABEL_10:
  if (v12 + 6 < a3)
  {
    v21 = a2 + v12;
    v22 = 7;
    do
    {
      v23 = *v21++;
      *(&v38 + v22) = v23;
    }

    while (v22-- > 1);
    LOBYTE(v38) = a6;
    v36 = sub_2338A9B94(a1);
    v25 = v38;
    v29 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v26, v38, v27, v28);
    v30 = *MEMORY[0x277CD2F50];
    sub_2337830C4(v36, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2F68], v29);

    v37 = sub_2338C5A6C(a1, v25, v31, v32, v33);
    if (v37)
    {
      v34 = sub_2338A9B94(a1);
      sub_2337830C4(v34, v30, *MEMORY[0x277CD2F78], v37);
    }
  }
}

void sub_2338C3D94(uint64_t a1)
{
  sub_2338C3F64(a1);
  v2 = sub_2338A9B94(a1);
  v15 = sub_233739994(v2, @"{PictureStyle}", 0);

  if (v15)
  {
    v3 = sub_2338A9B94(a1);
    v4 = sub_2338AE880(v3, @"{PictureStyle}", @"Monochrome");

    if (!v4)
    {
      sub_2338ACF60(a1, @"Monochrome", 0);
    }

    v5 = (*(*a1 + 96))(a1);
    if ((v5 & 0x80000000) == 0)
    {
      v6 = sub_2338AD1AC(a1, v5);
      sub_2338AD018(a1, @"{PictureStyle}", @"PictStyleColorSpace", v6, v5, v5);
    }
  }

  v7 = sub_2338A9B94(a1);
  objc_msgSend_removeObjectForKey_(v7, v8, @"{PictStyleSetting}", v9, v10);

  v11 = sub_2338A9B94(a1);
  objc_msgSend_removeObjectForKey_(v11, v12, @"{PictStyleNormalized}", v13, v14);
}

void sub_2338C3F64(uint64_t a1)
{
  v123 = *MEMORY[0x277D85DE8];
  v121 = 0;
  v2 = sub_2338A9B94(a1);
  v3 = *MEMORY[0x277CD33C8];
  v4 = *MEMORY[0x277CD33F0];
  v121 = sub_233875D18(v2, v3, v4);

  if (v121)
  {
    v8 = sub_2338C3068(v5, off_2789F02D0, &v121, v6, v7);
    if (v8 != 0x7FFF)
    {
      sub_2338AD018(a1, @"{PictureStyle}", *MEMORY[0x277CD3150], v121, v8, v8);
    }
  }

  v9 = sub_2338A9B94(a1);
  v10 = @"{PictStyleSetting}";
  v11 = sub_233875D18(v9, v10, @"ToneCompensation");
  v12 = v121;
  v121 = v11;

  if (v11)
  {
    v16 = sub_2338C3068(v13, off_2789F03A8, &v121, v14, v15);
    if (v16 != 0x7FFF)
    {
      sub_2338AD018(a1, @"{PictureStyle}", @"ToneCompensation", v121, v16, v16);
    }
  }

  v17 = sub_2338A9B94(a1);
  v18 = v10;
  v19 = *MEMORY[0x277CD3128];
  v20 = sub_233875D18(v17, v18, v19);
  v21 = v121;
  v121 = v20;

  if (v20)
  {
    v25 = sub_2338C3068(v22, off_2789F0468, &v121, v23, v24);
    if (v25 != 0x7FFF)
    {
      sub_2338AD018(a1, @"{PictureStyle}", v19, v121, v25, v25);
    }
  }

  v26 = sub_2338A9B94(a1);
  v27 = sub_2338AE880(v26, v18, @"HueAdjustment");

  if (v27)
  {
    v28 = sub_2338A9B94(a1);
    v29 = sub_2338AE900(v28, v18, @"HueAdjustment");

    v30 = v29 >= 0 ? v29 : -v29;
    if (v30 <= 0x7E)
    {
      sub_2338ACF60(a1, @"HueAdjustment", v29);
    }
  }

  v31 = sub_2338A9B94(a1);
  v32 = v18;
  v33 = @"ToningEffect";
  v34 = sub_233875D18(v31, v32, v33);
  v35 = v121;
  v121 = v34;

  if (v34)
  {
    sub_2338AD018(a1, @"{PictureStyle}", v33, v34, 32767.0, 32767.0);
  }

  v117 = v34;
  v36 = sub_2338A9B94(a1);
  v37 = v32;
  v38 = sub_2338AE7EC(v36, v37, @"_Nikon23Tag");

  if (v38)
  {
    v43 = objc_msgSend_count(v38, v39, v40, v41, v42);
    if (v43 >= 0x3A)
    {
      sub_233726154(__p, v43);
      *v122 = 0;
      do
      {
        v47 = sub_23386EA2C(v38, v122, v44, v45, v46);
        *(__p[0] + (*v122)++) = v47;
      }

      while (*v122 < v43);
      v106 = v19;
      v49 = *(__p[0] + 48);
      v111 = *(__p[0] + 52);
      v112 = *(__p[0] + 50);
      v114 = *(__p[0] + 53);
      v115 = *(__p[0] + 51);
      v110 = *(__p[0] + 54);
      v113 = *(__p[0] + 55);
      v116 = *(__p[0] + 56);
      v50 = *(__p[0] + 57);
      memset(v122, 0, sizeof(v122));
      v51 = *(__p[0] + 4);
      *&v122[16] = *(__p[0] + 5);
      *v122 = v51;
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, v122, v45, v46);
      v57 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v53, v54, v55, v56);
      v108 = v50;
      v109 = v49;
      v61 = objc_msgSend_stringByTrimmingCharactersInSet_(v52, v58, v57, v59, v60);
      v62 = v61;
      if (v61)
      {
        v63 = v61;
      }

      else
      {
        v63 = &stru_284938540;
      }

      v119 = v63;

      *v122 = *(__p[0] + 24);
      *&v122[16] = *(__p[0] + 10);
      v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v64, v122, v65, v66);
      v72 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v68, v69, v70, v71);
      v76 = objc_msgSend_stringByTrimmingCharactersInSet_(v67, v73, v72, v74, v75);
      v77 = v76;
      if (v76)
      {
        v78 = v76;
      }

      else
      {
        v78 = &stru_284938540;
      }

      v118 = v78;

      v82 = sub_2338C3068(v79, off_2789F04C8, &v119, v80, v81);
      v83 = v82;
      v86 = sub_2338C3068(v82, off_2789F04C8, &v118, v84, v85);
      v87 = v119;
      v107 = v118;
      v88 = sub_2338BA75C(v119, v118, 0) == 0;
      if (v86 == 0x7FFF)
      {
        v88 = 1;
      }

      if (v86 == v83)
      {
        v88 = 1;
      }

      v89 = v83;
      if (v88 && v86 == 0x7FFF)
      {
        v90 = v83;
      }

      else
      {
        v90 = v86;
      }

      if (!v88)
      {
        v89 = 0.0;
      }

      sub_2338AD018(a1, @"{PictureStyle}", @"PictureStyle", v87, v89, v90);
      v91 = (v115 - 128);
      v92 = v114 - 128;
      v94 = sub_2338FFAF8(v93, v90, (v114 - 128));
      v95 = v94;
      if (v91 >= 0)
      {
        v96 = v115 - 128;
      }

      else
      {
        v96 = 128 - v115;
      }

      if (v96 < 0x7F)
      {
        v105 = sub_2338FFABC(v94, v90, v91);
        sub_2338AD018(a1, @"{PictureStyle}", *MEMORY[0x277CD3018], 0, v91, v105);
      }

      if (v92 >= 0)
      {
        v97 = v114 - 128;
      }

      else
      {
        v97 = 128 - v114;
      }

      if (v97 <= 0x7E)
      {
        sub_2338AD018(a1, @"{PictureStyle}", v106, 0, v92, v95);
      }

      v98 = sub_2338C4904(v94, v116);
      sub_2338AD018(a1, @"{PictureStyle}", v33, v98, v116, v116);

      v99 = v116 < -125 || v90 == 11;
      v100 = @"{PictureStyle}";
      v101 = @"FilterEffect";
      v102 = 0;
      if (v113 > 130)
      {
        switch(v113)
        {
          case 131:
            v102 = @"Red";
            break;
          case 132:
            v102 = @"Green";
            break;
          case 255:
            v102 = @"N/A";
            break;
        }
      }

      else
      {
        switch(v113)
        {
          case 128:
            v102 = @"Off";
            break;
          case 129:
            v102 = @"Yellow";
            break;
          case 130:
            v102 = @"Orange";
            break;
        }
      }

      sub_2338AD018(a1, v100, v101, v102, v113, v113);

      sub_2338ACF60(a1, *MEMORY[0x277CD3150], v112 - 128);
      sub_2338ACF60(a1, *MEMORY[0x277CD2FF0], v111 - 128);
      if (v110 - 128 >= 0)
      {
        v103 = v110 - 128;
      }

      else
      {
        v103 = 128 - v110;
      }

      if (v103 <= 0x7E)
      {
        sub_2338ACF60(a1, @"HueAdjustment", v110 - 128);
      }

      if (v108 - 128 >= 0)
      {
        v104 = v108 - 128;
      }

      else
      {
        v104 = 128 - v108;
      }

      if (v104 <= 0x7E)
      {
        sub_2338ACF60(a1, @"ToningSaturation", v108 - 128);
      }

      sub_2338ACF60(a1, @"PictureControlAdjust", v109 & 0x7F);
      sub_2338ACF60(a1, @"Monochrome", v99);

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }
}

void sub_2338C4794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *__p, uint64_t a20, uint64_t a21, void *a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__CFString *sub_2338C4904(uint64_t a1, unsigned __int8 a2)
{
  v2 = @"Purple-blue";
  v3 = @"Red-purple ";
  v4 = @"N/A";
  if (a2 != 255)
  {
    v4 = 0;
  }

  if (a2 != 137)
  {
    v3 = v4;
  }

  if (a2 != 136)
  {
    v2 = v3;
  }

  v5 = @"Blue";
  if (a2 != 135)
  {
    v5 = 0;
  }

  if (a2 == 134)
  {
    v5 = @"Blue-green";
  }

  if (a2 == 133)
  {
    v5 = @"Green";
  }

  if (a2 <= 0x87u)
  {
    v2 = v5;
  }

  v6 = @"Red";
  v7 = @"Yellow";
  if (a2 != 132)
  {
    v7 = 0;
  }

  if (a2 != 131)
  {
    v6 = v7;
  }

  if (a2 == 130)
  {
    v6 = @"Cyanotype";
  }

  v8 = @"Sepia";
  if (a2 != 129)
  {
    v8 = 0;
  }

  if (a2 == 128)
  {
    v8 = @"Black and White";
  }

  if (a2 <= 0x81u)
  {
    v6 = v8;
  }

  if (a2 <= 0x84u)
  {
    return v6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2338C49D4(uint64_t a1, void *a2, unsigned int a3, int *a4, uint64_t *a5)
{
  v7 = a2;
  v67 = sub_2338A818C(v7, @"D7000", 1);
  v60 = sub_2338A818C(v7, @"D7100", 1);
  v66 = sub_2338A818C(v7, @"D700", 1);
  v8 = sub_2338A818C(v7, @"D3000", 1);
  v75 = sub_2338A818C(v7, @"D3100", 1);
  v74 = sub_2338A818C(v7, @"D3200", 1);
  v72 = sub_2338A818C(v7, @"D300S", 1);
  v71 = sub_2338A818C(v7, @"D300", 1);
  v70 = sub_2338A818C(v7, @"D3X", 1);
  v69 = sub_2338A818C(v7, @"D3S", 1);
  v68 = sub_2338A818C(v7, @"D3", 1);
  v9 = sub_2338A818C(v7, @"D90", 1);
  v10 = sub_2338A818C(v7, @"D5000", 1);
  v11 = sub_2338A818C(v7, @"D5100", 1);
  v59 = sub_2338A818C(v7, @"D5200", 1);
  v58 = sub_2338A818C(v7, @"D5300", 1);
  v65 = sub_2338A818C(v7, @"wide", 1);
  v64 = sub_2338A818C(v7, @"D4", 1);
  v63 = sub_2338A818C(v7, @"Df", 1);
  v62 = sub_2338A818C(v7, @"D800", 1);
  v61 = sub_2338A818C(v7, @"D810", 1);
  v12 = sub_2338A818C(v7, @"D600", 1);
  v13 = sub_2338A818C(v7, @"D610", 1);
  v14 = sub_2338A818C(v7, @"D750", 1);
  v15 = sub_2338C5504(a1, a3);
  v78 = v15;
  if (v15)
  {
    v16 = v15;
    v73 = sub_2338B9D7C(v15, 0);
    v17 = sub_2338B9D7C(v16, 1uLL);
    v18 = sub_2338B9D7C(v16, 2uLL) + 10 * v17;
    v19 = v18 - 528;
    if (v9 || v10 || v8 || v75 || v74)
    {
      v20 = 0xB20000010C0;
      if (v8)
      {
        v20 = 0xA2000000F20;
      }

      v21 = v78;
      *a5 = v20;
      v22 = v19 + (v73 << 8) - 14080;
      if (v22 <= 3077)
      {
        if (v22 <= 2821)
        {
          if (v19 + (v73 << 8) == 16645)
          {
            v23 = 2;
            goto LABEL_73;
          }

          if (v19 + (v73 << 8) == 16646)
          {
            v23 = 4;
            goto LABEL_73;
          }
        }

        else
        {
          switch(v19 + (v73 << 8))
          {
            case 16902:
              v23 = 1;
              goto LABEL_73;
            case 16903:
              v23 = 9;
              goto LABEL_73;
            case 17157:
              v23 = 10;
              goto LABEL_73;
          }
        }
      }

      else if (v22 > 3334)
      {
        switch(v19 + (v73 << 8))
        {
          case 17415:
            v23 = 6;
            goto LABEL_73;
          case 17669:
            v23 = 5;
            goto LABEL_73;
          case 17670:
            v23 = 8;
            goto LABEL_73;
        }
      }

      else
      {
        switch(v19 + (v73 << 8))
        {
          case 17158:
            v23 = 11;
            if (!v65)
            {
              v23 = 0;
            }

            goto LABEL_73;
          case 17159:
            v23 = 7;
            goto LABEL_73;
          case 17414:
            v23 = 3;
LABEL_73:
            v47 = dword_233916E48[v23];
            v48 = dword_233916E7C[v23];
            v49 = dword_233916EB0[v23];
            v50 = dword_233916EE4[v23];
LABEL_91:
            *a4 = v47;
            a4[1] = v48;
            a4[2] = v49;
            a4[3] = v50;
LABEL_92:
            v24 = 1;
            goto LABEL_93;
        }
      }

      v23 = 12;
      goto LABEL_73;
    }

    v21 = v78;
    if (v11)
    {
      *a5 = 0xCC000001340;
      v25 = v19 + (v73 << 8) - 14080;
      if (v25 <= 3077)
      {
        if (v25 <= 2821)
        {
          if (v19 + (v73 << 8) == 16645)
          {
            v26 = 2;
            goto LABEL_90;
          }

          if (v19 + (v73 << 8) == 16646)
          {
            v26 = 4;
            goto LABEL_90;
          }
        }

        else
        {
          switch(v19 + (v73 << 8))
          {
            case 16902:
              v26 = 1;
              goto LABEL_90;
            case 16903:
              v26 = 9;
              goto LABEL_90;
            case 17157:
              v26 = 10;
              goto LABEL_90;
          }
        }
      }

      else if (v25 > 3334)
      {
        switch(v19 + (v73 << 8))
        {
          case 17415:
            v26 = 6;
            goto LABEL_90;
          case 17669:
            v26 = 5;
            goto LABEL_90;
          case 17670:
            v26 = 8;
            goto LABEL_90;
        }
      }

      else
      {
        switch(v19 + (v73 << 8))
        {
          case 17158:
            v26 = 11;
            if (!v65)
            {
              v26 = 0;
            }

            goto LABEL_90;
          case 17159:
            v26 = 7;
            goto LABEL_90;
          case 17414:
            v26 = 3;
LABEL_90:
            v56 = dword_233916F18[v26];
            v48 = dword_233916F4C[v26];
            v49 = dword_233916F80[v26];
            v50 = dword_233916FB4[v26];
            v47 = v56 + 65;
            goto LABEL_91;
        }
      }

      v26 = 12;
      goto LABEL_90;
    }

    v27 = v18 - 480;
    if (v71 && !v8 && !v72 || v72)
    {
      v28 = 1;
      v29 = 0xB3400001100;
      v30 = 110.0;
      v31 = 1124204544;
      v32 = 1127481344;
      v33 = 80.0;
      v34 = 200.0;
      v35 = 150.0;
      v36 = 212.0;
      v37 = 240.0;
      v38 = 1.4;
      v39 = 1.4;
      goto LABEL_37;
    }

    v28 = 1;
    v29 = 0xB1C000010C0;
    v30 = 110.0;
    v31 = 1124204544;
    v32 = 1127481344;
    v33 = 80.0;
    v34 = 200.0;
    v35 = 150.0;
    v36 = 212.0;
    v39 = 1.02;
    v38 = 0.99;
    v37 = 240.0;
    if ((((!v68 || v8 || v72) | ((v71 || v70) | v69)) & ~v69 & 1) == 0 || v66 && !v67)
    {
LABEL_37:
      *a5 = v29;
      if (67 - v73 >= 0)
      {
        v40 = 67 - v73;
      }

      else
      {
        v40 = v73 - 67;
      }

      if (v40 <= 1)
      {
        v28 = 0;
      }

      v41 = v27 + v28;
      v43 = v41 - 54;
      v42 = v41 - 54 < 0;
      v44 = 54 - v41;
      if (!v42)
      {
        v44 = v43;
      }

      v45 = v43;
      if (v44 > 1)
      {
        v46 = ((v33 * v45) / v44) + (v34 * v45);
        v36 = *&v32;
        v35 = *&v31;
      }

      else
      {
        v46 = v37 * v45;
        v30 = 125.0;
      }

      LODWORD(v79) = (v38 * v46);
      DWORD1(v79) = (v39 * (v36 * (67 - v73)));
      sub_2337238F0(&v79 + 2, (v38 * v35), (v39 * v30));
      *a4 = v79;
      goto LABEL_92;
    }

    if (v64 || v63)
    {
      v28 = 1;
      v29 = 0xCDC00001380;
      v30 = 110.0;
      v31 = 1124204544;
      v32 = 1127481344;
      v33 = 80.0;
      v34 = 200.0;
      v35 = 150.0;
      v36 = 212.0;
      v37 = 240.0;
      v38 = 1.15;
LABEL_36:
      v39 = v38;
      goto LABEL_37;
    }

    if (!v12 && !v13)
    {
      if (v62 || v61)
      {
        v28 = 1;
        v29 = 0x133C00001D00;
        v30 = 110.0;
        v31 = 1124204544;
        v32 = 1127481344;
        v33 = 80.0;
        v34 = 200.0;
        v35 = 150.0;
        v39 = 1.72;
        v36 = 212.0;
        v38 = 1.7;
        v37 = 240.0;
        goto LABEL_37;
      }

      if (v14)
      {
        v28 = 1;
        v29 = 0xFB000001780;
        v38 = 1.25;
        v30 = 110.0;
        v31 = 1124204544;
        v32 = 1127481344;
        v33 = 80.0;
        v34 = 200.0;
        v35 = 150.0;
        v36 = 212.0;
        v39 = 1.25;
        v37 = 240.0;
        goto LABEL_37;
      }

      v29 = 0xFB400001790;
      if (!v60)
      {
        if (v70)
        {
          v28 = 1;
          v30 = 110.0;
          v31 = 1124204544;
          v32 = 1127481344;
          v33 = 80.0;
          v34 = 200.0;
          v35 = 150.0;
          v36 = 212.0;
          v37 = 240.0;
          v39 = 1.45;
          v38 = 1.4;
        }

        else
        {
          v33 = 30.0;
          v32 = 1132756992;
          if (v67)
          {
            v28 = 4;
            v29 = 0xCC000001340;
            v30 = 125.0;
            v34 = 210.0;
            v35 = 150.0;
            v37 = 225.0;
            v38 = 1.4;
            v39 = 1.4;
            v36 = 225.0;
            v31 = 1125515264;
          }

          else
          {
            if (!v59 && !v58)
            {
              v24 = 0;
              goto LABEL_93;
            }

            v28 = 4;
            v29 = 17179869190000;
            v34 = 210.0;
            v35 = 125.0;
            v37 = 225.0;
            v38 = 1.7;
            v39 = 1.7;
            v36 = 225.0;
            v31 = 1123680256;
            v30 = 125.0;
          }
        }

        goto LABEL_37;
      }

      v29 = 0xFB400001794;
      v28 = 1;
      v30 = 110.0;
      v31 = 1124204544;
      v32 = 1127481344;
      v33 = 80.0;
      v34 = 200.0;
      v35 = 150.0;
      v36 = 212.0;
      v37 = 240.0;
      v38 = 1.95;
      goto LABEL_36;
    }

    v24 = 0;
    *a5 = 0xFBC000017C0;
    if ((v27 - 49) <= 9)
    {
      v51 = v73 - 65;
      if ((v73 - 65) <= 4u)
      {
        v52 = v27 - 44;
        if ((v51 & 0xFFFFFFFB) != 0)
        {
          v52 = v19;
        }

        v53 = v52 - 1;
        v54 = ((dword_233916FE8[11 * v51 + v53] * 250.0) + -60.0);
        v55 = ((dword_2339170C4[11 * v51 + v53] * 250.0) + 60.0);
        *a4 = v54;
        a4[1] = v55;
        *(a4 + 1) = 0x7800000078;
        goto LABEL_92;
      }
    }
  }

  else
  {
    if (a3)
    {
      sub_2338C49D4(a1, v7, 0, a4, a5);
    }

    v24 = 0;
    v21 = 0;
  }

LABEL_93:

  return v24;
}

id sub_2338C5504(uint64_t a1, unsigned int a2)
{
  v3 = sub_2338C70F0(a1);
  if (a2 >= objc_msgSend_length(v3, v4, v5, v6, v7) / 0xCuLL)
  {
    v10 = 0;
  }

  else
  {
    v10 = objc_msgSend_substringWithRange_(v3, v8, 12 * a2, 12, v9);
  }

  return v10;
}

BOOL sub_2338C5598(uint64_t a1, void *a2, unsigned int a3, _DWORD *a4, uint64_t *a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v33 = sub_2338A818C(v6, @"D100", 1);
  v30 = sub_2338A818C(v6, @"D200", 1);
  v29 = sub_2338A818C(v6, @"D80", 1);
  v32 = sub_2338A818C(v6, @"D70", 1);
  v7 = sub_2338A818C(v6, @"D60", 1);
  v8 = sub_2338A818C(v6, @"D50", 1);
  v9 = sub_2338A818C(v6, @"D40", 1);
  v27 = sub_2338A818C(v6, @"D2", 1);
  v28 = sub_2338A818C(v6, @"D1X", 1);
  v10 = sub_2338A818C(v6, @"D1H", 1);
  v11 = sub_2338A818C(v6, @"D1", 1);
  v12 = sub_2338A818C(v6, @"P6000", 1);
  v13 = sub_2338A818C(v6, @"E8400", 1);
  v14 = sub_2338A818C(v6, @"E8700", 1);
  v15 = sub_2338A818C(v6, @"E8800", 1);
  if (v7 || v9)
  {
    *a5 = 0xA3800000F40;
    if (a3 <= 4)
    {
      v16 = dword_2339171A0[a3];
      v17 = dword_2339171B4[a3];
      v18 = dword_2339171C8[a3];
      v19 = &unk_2339171DC;
LABEL_7:
      v20 = v19[a3];
      *a4 = v16;
      a4[1] = v17;
      a4[2] = v18;
      a4[3] = v20;
      v21 = 1;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v32 || v33 || v8)
  {
    *a5 = 0x7DE00000BE0;
    if (a3 <= 4)
    {
      v16 = dword_2339171F0[a3];
      v17 = dword_233917204[a3];
      v18 = dword_233917218[a3];
      v19 = &unk_23391722C;
      goto LABEL_7;
    }

    goto LABEL_22;
  }

  if (!v29 && !v30)
  {
    if (v13 || v14 || v15)
    {
      *a5 = 0x99600000CD0;
      if (a3 <= 4)
      {
        v16 = dword_2339172C4[a3];
        v17 = dword_2339172D8[a3];
        v18 = dword_2339172EC[a3];
        v19 = &unk_233917300;
        goto LABEL_7;
      }
    }

    else
    {
      if (!v28 && !v10 && (!v11 || v33))
      {
        if (v12)
        {
          v21 = 0;
          v25 = 0xC5600001080;
        }

        else
        {
          v38 = 0;
          v35 = 0u;
          v36 = 0;
          *(&v35 + 4) = 0xFFFFFD8000000280;
          v37 = xmmword_233916CB0;
          if (v27)
          {
            *a5 = 0xB20000010C0;
            if (a3 < 0xB)
            {
              v16 = dword_233917364[a3];
              v17 = *(&v35 + a3);
              v18 = dword_233917390[a3];
              v19 = &unk_2339173BC;
              goto LABEL_7;
            }

            goto LABEL_22;
          }

          v21 = 0;
          v25 = 0x7DE00000BE0;
        }

        *a5 = v25;
        goto LABEL_23;
      }

      *a5 = 0x7AA00000BBELL;
      if (a3 <= 4)
      {
        v16 = dword_233917314[a3];
        v17 = dword_233917328[a3];
        v18 = dword_23391733C[a3];
        v19 = &unk_233917350;
        goto LABEL_7;
      }
    }

LABEL_22:
    v21 = 0;
    goto LABEL_23;
  }

  *a5 = 0xA2800000F30;
  v38 = 0;
  v35 = 0u;
  v36 = 0;
  *(&v35 + 4) = 0xFFFFFDD000000230;
  v37 = xmmword_233916CC0;
  v21 = a3 < 0xB;
  if (a3 <= 0xA)
  {
    v22 = *(&v35 + a3);
    v23 = dword_23391726C[a3];
    v24 = dword_233917298[a3];
    *a4 = dword_233917240[a3];
    a4[1] = v22;
    a4[2] = v23;
    a4[3] = v24;
  }

LABEL_23:

  return v21;
}

id sub_2338C5A6C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = vdupq_n_s64(a2);
  *v6.i8 = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_s64(v6, xmmword_233916CE0), vshlq_s64(v6, xmmword_233916CD0)), vuzp1q_s32(vshlq_s64(v6, xmmword_233916D00), vshlq_s64(v6, xmmword_233916CF0))));
  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%02X %02X %02X %02X %02X %02X %02X %02X", a4, a5, v6.u8[7], v6.u8[6], v6.u8[5], v6.u8[4], v6.u8[3], v6.u8[2], v6.u8[1], v6.u8[0]);
  v178 = 0;
  v179 = 0;
  v180 = 0;
  v8 = sub_2338E9010(@"nikon");
  v13 = v8;
  v170 = v8;
  if (v8)
  {
    v168 = v7;
    v18 = sub_23378DDE8(v8, v7, v10, v11, v12);
    for (i = 0; ; i = v177 + 1)
    {
      v177 = i;
      if (i >= objc_msgSend_count(v18, v14, v15, v16, v17))
      {

        v7 = v168;
        goto LABEL_25;
      }

      v23 = sub_23386EAC4(v18, &v177, v20, v21, v22);
      if (objc_msgSend_count(v23, v24, v25, v26, v27) == 5)
      {
        break;
      }

LABEL_21:
    }

    __p[0] = 0;
    v31 = sub_23386E0B8(v23, __p, v28, v29, v30);
    __p[0] = 1;
    v35 = sub_23386EA74(v23, __p, v32, v33, v34);
    __p[0] = 2;
    v39 = sub_23386EA74(v23, __p, v36, v37, v38);
    __p[0] = 3;
    v43 = sub_23386EA74(v23, __p, v40, v41, v42);
    __p[0] = 4;
    v47 = sub_23386EA74(v23, __p, v44, v45, v46);
    if (v31)
    {
      v48 = v47;
      v49 = v31;
      v54 = objc_msgSend_UTF8String(v49, v50, v51, v52, v53);
      v55 = strlen(v54);
      if (v55 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_2337304FC();
      }

      v56 = v55;
      if (v55 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v172) = v55;
      if (v55)
      {
        memmove(&__dst, v54, v55);
      }

      v13 = v170;
      *(&__dst + v56) = 0;
      v57 = SHIBYTE(v172);
      if (SHIBYTE(v172) < 0)
      {
        sub_233731FB8(__p, __dst, *(&__dst + 1));
      }

      else
      {
        *__p = __dst;
        v174 = v172;
      }

      *&v175 = v35;
      *(&v175 + 1) = v39;
      *&v176 = v43;
      *(&v176 + 1) = v48;
      v58 = v179;
      if (v179 >= v180)
      {
        v179 = sub_2338BAFB4(&v178, __p);
        if (SHIBYTE(v174) < 0)
        {
          operator delete(__p[0]);
          if ((v57 & 0x80000000) == 0)
          {
            goto LABEL_20;
          }
        }

        else if ((v57 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_17;
      }

      v59 = *__p;
      *(v179 + 16) = v174;
      *v58 = v59;
      __p[1] = 0;
      v174 = 0;
      __p[0] = 0;
      v60 = v176;
      *(v58 + 24) = v175;
      *(v58 + 40) = v60;
      v179 = v58 + 56;
      if (v57 < 0)
      {
LABEL_17:
        operator delete(__dst);
      }
    }

LABEL_20:

    goto LABEL_21;
  }

LABEL_25:
  v61 = v178;
  if (v179 - v178 != 56)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v179 - v178) >> 3)) < 2)
    {
      v62 = 0;
      goto LABEL_94;
    }

    v63 = sub_2338B0E5C(a1);
    v64 = sub_2338A9B94(a1);
    v65 = sub_233739994(v64, *MEMORY[0x277CD2F50], 0);

    v69 = sub_233740FAC(v63, *MEMORY[0x277CD3088], v66, v67, v68);
    v73 = sub_233740FAC(v63, *MEMORY[0x277CD30E8], v70, v71, v72);
    v77 = sub_23378DDE8(v65, *MEMORY[0x277CD2F70], v74, v75, v76);
    v83 = v77;
    v84 = 0.0;
    if (v77)
    {
      v86 = 0.0;
      if (objc_msgSend_count(v77, v78, v79, v80, v81) == 4)
      {
        __p[0] = 0;
        v86 = sub_23386EA74(v83, __p, v85, v80, v81);
        __p[0] = 1;
        v84 = sub_23386EA74(v83, __p, v87, v88, v89);
        __p[0] = 2;
        sub_23386EA74(v83, __p, v90, v91, v92);
        __p[0] = 3;
        v82 = sub_23386EA74(v83, __p, v93, v94, v95);
      }
    }

    else
    {
      v86 = 0.0;
    }

    v96 = v178;
    if (*(v178 + 23) < 0)
    {
      v96 = *v178;
    }

    v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, v96, v80, v81, v82);
    if (v69)
    {
      v169 = v7;
      v166 = v69;
      v164 = v101;
      v165 = v73;
      objc_msgSend_doubleValue(v69, v97, v98, v99, v100);
      v103 = v102;
      objc_msgSend_doubleValue(v73, v104, v105, v106, v107);
      v109 = exp2(v108 * 0.5);
      v114 = sub_233755CB8(0x6DB6DB6DB6DB6DB7 * ((v179 - v178) >> 3));
      v116 = v178;
      if ((0x6DB6DB6DB6DB6DB7 * ((v179 - v178) >> 3)) >= 2)
      {
        v162 = log(v103);
        v117 = 0;
        v118 = 0;
        v119 = 999999999.0;
        v120 = 1;
        v167 = v109;
        while (1)
        {
          v121 = v116 + v117;
          if (*(v116 + v117 + 79) < 0)
          {
            v123 = v119;
            sub_233731FB8(__p, *(v121 + 56), *(v121 + 64));
            v119 = v123;
          }

          else
          {
            v122 = *(v121 + 56);
            v174 = *(v121 + 72);
            *__p = v122;
          }

          v124 = *(v116 + v117 + 80);
          v176 = *(v116 + v117 + 96);
          v175 = v124;
          v125 = v124;
          v126 = *(&v176 + 1);
          v115 = *&v176;
          if ((v86 <= 0.0 || vabdd_f64(v86, *&v175) <= 0.9) && (v84 <= 0.0 || vabdd_f64(v84, *(&v175 + 1)) <= 0.9) && v103 >= *&v175 + -0.9 && v103 <= *(&v175 + 1) + 0.9)
          {
            if (v109 <= 0.0)
            {
              v136 = v119;
LABEL_69:
              if (v174 >= 0)
              {
                objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, __p, v112, v113);
              }

              else
              {
                objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, __p[0], v112, v113);
              }
              v140 = ;
              if (v140)
              {
                objc_msgSend_addObject_(v114, v137, v140, v138, v139);
              }

              v119 = v136;
              goto LABEL_75;
            }

            if (v109 >= *&v176 + -0.15 && v109 <= *(&v176 + 1) + 0.15)
            {
              if (*&v175 != *(&v175 + 1) && *&v176 != *(&v176 + 1))
              {
                v163 = v119;
                v129 = log(*&v176);
                v130 = log(v126) - v129;
                v131 = log(*(&v125 + 1));
                v132 = log(*&v125);
                v133 = v129 + v130 / (v131 - v132) * (v162 - v132);
                v109 = v167;
                v115 = exp(v133);
                v119 = v163;
              }

              v134 = vabdd_f64(v109, v115);
              v115 = v119 + 0.15;
              if (v134 <= v119 + 0.15)
              {
                if (v134 < v119 + -0.15)
                {
                  if (v174 >= 0)
                  {
                    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, __p, v112, v113);
                  }

                  else
                  {
                    objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, __p[0], v112, v113);
                  }
                  v135 = ;

                  v118 = v135;
                }

                v136 = v134;
                v109 = v167;
                goto LABEL_69;
              }

              v109 = v167;
            }
          }

LABEL_75:
          if (SHIBYTE(v174) < 0)
          {
            v141 = v119;
            operator delete(__p[0]);
            v119 = v141;
          }

          ++v120;
          v116 = v178;
          v117 += 56;
          if (v120 >= 0x6DB6DB6DB6DB6DB7 * ((v179 - v178) >> 3))
          {
            goto LABEL_81;
          }
        }
      }

      v118 = 0;
LABEL_81:
      v7 = v169;
      if (objc_msgSend_count(v114, v110, v111, v112, v113, v115))
      {
        v62 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v142, v118, v143, v144);
        for (j = 0; ; j = __p[0] + 1)
        {
          __p[0] = j;
          if (j >= objc_msgSend_count(v114, v145, v146, v147, v148))
          {
            break;
          }

          v153 = sub_23386E0B8(v114, __p, v150, v151, v152);
          if (objc_msgSend_length(v62, v154, v155, v156, v157))
          {
            if (!v118 || (objc_msgSend_isEqualToString_(v153, v158, v118, v159, v160) & 1) == 0)
            {
              objc_msgSend_appendFormat_(v62, v158, @" or %@", v159, v160, v153);
            }
          }

          else
          {
            objc_msgSend_appendString_(v62, v158, v153, v159, v160);
          }
        }

        v7 = v169;
        v13 = v170;
        v69 = v166;
        v101 = v164;
        v73 = v165;
        goto LABEL_93;
      }

      v13 = v170;
      v69 = v166;
      v101 = v164;
      v73 = v165;
    }

    v62 = v101;
LABEL_93:

    goto LABEL_94;
  }

  if (*(v178 + 23) < 0)
  {
    v61 = *v178;
  }

  v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v61, v11, v12);
LABEL_94:

  __p[0] = &v178;
  sub_2338BB644(__p);

  return v62;
}

void sub_2338C630C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  __p = (v42 - 176);
  sub_2338BB644(&__p);

  _Unwind_Resume(a1);
}

void sub_2338C64CC(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  if (*(a4 + 4))
  {
    v12 = MEMORY[0x277CCACA8];
    v21 = v11;
    v13 = sub_2338A9B78(a3);
    v17 = objc_msgSend_stringWithFormat_(v12, v14, @"%@/%@", v15, v16, v21, v13);

    v18 = *(a4 + 8);
    v19 = bswap32(v18);
    if (a6)
    {
      v20 = v19;
    }

    else
    {
      v20 = v18;
    }

    sub_2338ADD58(a1, v17, word_2789F0728, v20, a5, a6);

    v11 = v21;
  }
}

void sub_2338C65D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 4) >= 3u)
  {
    v5 = *(a4 + 8);
    v6 = *(a4 + 9);
    v7 = *(a4 + 10);
    v20 = sub_2338A9B94(a1);
    v8 = v5 * v6;
    if (!v7)
    {
      v8 = -0.0;
    }

    v9 = v7;
    if (!v7)
    {
      v9 = 6.0;
    }

    v10 = v8 / v9;
    if (v10 == 0.0)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v10;
    }

    v12 = sub_2338A9BFC(a3);
    v13 = sub_2338A9B78(a3);
    *&v14 = v11;
    v19 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v15, v16, v17, v18, v14);
    sub_2337830C4(v20, v12, v13, v19);
  }
}

void sub_2338C66F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2338C6724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = *(a4 + 4);
  if ((v6 - 16385) >= 0xFFFFC00A)
  {
    sub_233726154(&__p, v6);
    v12 = *(a4 + 8);
    v13 = bswap32(v12);
    if (a6)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    v15 = sub_2338A9730(a1, __p, v35 - __p, a5, v14);
    v16 = __p;
    if (v15 == v35 - __p)
    {
      v17 = 0;
      v18 = 0;
      do
      {
        v18 = (*(__p + v17++) & 0xF) + 10 * v18;
      }

      while (v17 != 4);
      if ((v18 - 100) <= 5)
      {
        v19 = *(__p + 10);
        if ((v19 / -6.0) == 0.0)
        {
          v20 = 0.0;
        }

        else
        {
          v20 = v19 / -6.0;
        }

        v21 = sub_2338A9B94(a1);
        v22 = sub_2338A9BFC(a3);
        v23 = sub_2338A9B78(a3);
        v24 = sub_2338AE880(v21, v22, v23);

        if (!v24)
        {
          v25 = sub_2338A9B94(a1);
          v26 = sub_2338A9BFC(a3);
          v27 = sub_2338A9B78(a3);
          *&v28 = v20;
          v33 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v29, v30, v31, v32, v28);
          sub_2337830C4(v25, v26, v27, v33);
        }
      }

      v16 = __p;
    }

    if (v16)
    {
      v35 = v16;
      operator delete(v16);
    }
  }
}

void sub_2338C68E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v15 = v11;

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2338C6940(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = sub_2338A9B94(a1);
  v10 = sub_233875D18(v9, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B0]);

  v12 = 0;
  v13 = 0;
  v29 = 0;
  v28 = 0uLL;
  v14 = *(a4 + 8);
  v15 = *(a4 + 9);
  v16 = bswap32(*(a4 + 10)) >> 16;
  if (a6)
  {
    v17 = v16;
  }

  else
  {
    v17 = *(a4 + 10);
  }

  LODWORD(v18) = 11;
  do
  {
    LODWORD(v11) = sub_2338C5598(v11, v10, v13, &v28, &v29);
    if (v11)
    {
      v18 = v18;
    }

    else
    {
      v18 = v12;
    }

    v13 += v11;
    v12 = v13;
  }

  while (v18 > v13);
  if (v14 > 5)
  {
    v19 = @" UNKNOWN AF Mode";
  }

  else
  {
    v19 = off_2789F0830[v14];
  }

  v20 = sub_2338AC594(a1, v19, v18, sub_2338C6B80);
  v21 = v20;
  if (v20)
  {
    v22 = v20 >= 9 ? v17 : (v17 | HIBYTE(v17)) & 0x7F;
    if ((v15 & 0x80000000) == 0)
    {
      if ((v15 & 0x40) != 0)
      {
        v23 = 1 << v15;
      }

      else
      {
        v23 = 0;
      }

      if ((v15 & 0x40) != 0)
      {
        v24 = 0;
      }

      else
      {
        v24 = 1 << v15;
      }

      if ((v14 & 0xFE) == 2 && sub_2338A818C(v10, @"D2", 1))
      {
        v23 = 0;
        v24 = 0;
      }

      sub_2338B1254(a1, v22, 0, 0);
      v25 = sub_2338B11B8(a1, v24, v23, 0);
      v26 = 0;
      memset(v27, 0, sizeof(v27));
      do
      {
        sub_2338C5598(v25, v10, v26, &v28, &v29);
        sub_2338B44A8(v27, &v28);
        ++v26;
      }

      while (v21 > v26);
      sub_2338B1160(a1, v27, 0);
      sub_2338B1194(a1, &v29, 0);
      sub_2338F884C(v27);
    }
  }
}

id sub_2338C6B80(void *a1, unsigned int a2)
{
  if (a1)
  {
    a1 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284933250, 0);
    if (a1)
    {
      a1 = sub_2338C7D74(a1, a2);
    }

    v2 = vars8;
  }

  return a1;
}

void sub_2338C6C04(char **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = a2;
  v11 = sub_2338A9B94(a1);
  v12 = sub_233875D18(v11, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B0]);

  v16 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v13, v12, v14, v15);
  v71 = 0;
  v17 = sub_2338C70F0(a1);
  v18 = *(a4 + 4);
  if (v18 >= 0xD)
  {
    sub_233726154(&v68, v18);
    v19 = *(a4 + 8);
    v20 = bswap32(v19);
    if (a6)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    v25 = sub_2338A9730(a1, v68, v69 - v68, a5, v21);
    v26 = v68;
    if (v25 != v69 - v68)
    {
      goto LABEL_31;
    }

    v27 = *(v68 + 5);
    v28 = *(v68 + 6);
    appended = objc_msgSend_appendString_(v16, v22, @" ", v23, v24);
    v30 = sub_2338C71EC(appended, v27);
    objc_msgSend_appendString_(v16, v31, v30, v32, v33);

    v35 = sub_2338C71EC(v34, v27);
    sub_2338AC594(a1, v35, 0, sub_2338C7210);

    v36 = sub_2338A9B94(a1);
    v37 = *MEMORY[0x277CD2F50];
    v38 = *MEMORY[0x277CD33D8];
    v39 = sub_2338AE880(v36, *MEMORY[0x277CD2F50], *MEMORY[0x277CD33D8]);

    if (v39)
    {
      v40 = sub_2338A9B94(a1);
      v44 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v41, v28 != 0, v42, v43);
      sub_2337830C4(v40, v37, v38, v44);
    }

      ;
    }

    v26 = v68;
    if (i)
    {
      v62 = v10;
      v63 = v12;
      v46 = *(v68 + 7);
      if (*(v68 + 7))
      {
        v47 = 0;
        v48 = 0;
        v49 = (v46 - 1) & 7;
        v50 = ((v46 - v49 + (((v46 - v49) & 0xE000u) >> 13)) >> 3);
        v51 = 1 << v49;
        while (sub_2338B9D7C(v17, v47))
        {
          if (sub_2338B9D7C(v17, v47 + 6) - 48 == v50)
          {
            v52 = sub_2338B9D7C(v17, v47 + 9);
            if (v51 == v52 + 16 * sub_2338B9D7C(v17, v47 + 8) - 816)
            {
              sub_2338B11B8(a1, 1 << v48, 0, 1);
              break;
            }
          }

          v47 += 12;
          ++v48;
        }
      }

      v53 = 0;
      v54 = 0;
      v55 = 0;
      while (1)
      {
        if (!sub_2338B9D7C(v17, v53))
        {
          sub_2338B1254(a1, v55, 0, 1);
          v61 = 0;
          __p = 0;
          v66 = 0;
          v67 = 0;
          v12 = v63;
          do
          {
            v64 = 0uLL;
            sub_2338C49D4(a1, v16, v61, &v64, &v71);
            sub_2338B44A8(&__p, &v64);
            ++v61;
          }

          while (i > v61);
          sub_2338B1160(a1, &__p, 1);
          sub_2338B1194(a1, &v71, 1);
          v10 = v62;
          if (__p)
          {
            v66 = __p;
            operator delete(__p);
          }

          v26 = v68;
          goto LABEL_31;
        }

        v56 = sub_2338B9D7C(v17, v53 + 6);
        v57 = sub_2338B9D7C(v17, v53 + 9);
        v58 = sub_2338B9D7C(v17, v53 + 8);
        v59 = (v56 - 40);
        v26 = v68;
        if (v59 >= v69 - v68)
        {
          break;
        }

        if (((v57 + 16 * v58 + 208) & *(v68 + v59)) != 0)
        {
          v60 = 1 << v54;
        }

        else
        {
          v60 = 0;
        }

        v55 |= v60;
        v53 += 12;
        ++v54;
      }

      v10 = v62;
      v12 = v63;
      if (v68)
      {
        goto LABEL_32;
      }
    }

    else
    {
LABEL_31:
      if (v26)
      {
LABEL_32:
        v69 = v26;
        operator delete(v26);
      }
    }
  }
}

void sub_2338C7028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__CFString *sub_2338C70F0(uint64_t a1)
{
  v1 = sub_2338A9B94(a1);
  v2 = sub_233875D18(v1, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B0]);

  if (sub_2338A818C(v2, @"D7000", 1) || sub_2338A818C(v2, @"D600", 1))
  {
    v3 = @"A01 = 1 10  A02 = 0 04  A03 = 0 80  B01 = 4 20  B02 = 4 04  B03 = 3 80  B04 = 3 10  B05 = 1 08  B06 = 0 02  B07 = 0 40  B08 = 2 01  B09 = 2 08  B10 = 2 40  B11 = 3 02  C01 = 4 10  C02 = 4 02  C03 = 3 40  C04 = 3 08  C05 = 1 04  C06 = 0 01  C07 = 0 20  C08 = 1 80  C09 = 2 04  C10 = 2 20  C11 = 3 01  D01 = 4 40  D02 = 4 08  D03 = 4 01  D04 = 3 20  D05 = 1 20  D06 = 0 08  D07 = 1 01  D08 = 2 02  D09 = 2 10  D10 = 2 80  D11 = 3 04  E01 = 1 40  E02 = 0 10  E03 = 1 02  ";
  }

  else
  {
    v3 = @"A01 = 1 10  A02 = 0 04  A03 = 0 80  B01 = 4 20  B02 = 4 04  B03 = 3 80  B04 = 3 10  B05 = 1 08  B06 = 0 02  B07 = 0 40  B08 = 2 01  B09 = 2 08  B10 = 2 40  B11 = 3 02  C01 = 4 10  C02 = 4 02  C03 = 3 40  C04 = 3 08  C05 = 1 04  C06 = 0 01  C07 = 0 20  C08 = 1 80  C09 = 2 04  C10 = 2 20  C11 = 3 01  D01 = 4 40  D02 = 4 08  D03 = 4 01  D04 = 3 20  D05 = 1 20  D06 = 0 08  D07 = 1 01  D08 = 2 02  D09 = 2 10  D10 = 2 80  D11 = 3 04  E01 = 1 40  E02 = 0 10  E03 = 1 02  ";
    if (!sub_2338A818C(v2, @"D5200", 1) && !sub_2338A818C(v2, @"D5300", 1))
    {
      v3 = @"A01 = 5 20  A02 = 5 01  A03 = 4 08  A04 = 1 10  A05 = 0 04  A06 = 0 80  A07 = 2 02  A08 = 2 40  A09 = 3 08  B01 = 6 02  B02 = 5 10  B03 = 4 80  B04 = 4 04  B05 = 1 08  B06 = 0 02  B07 = 0 40  B08 = 2 01  B09 = 2 20  B10 = 3 04  B11 = 3 80  C01 = 6 01  C02 = 5 08  C03 = 4 40  C04 = 4 02  C05 = 1 04  C06 = 0 01  C07 = 0 20  C08 = 1 80  C09 = 2 10  C10 = 3 02  C11 = 3 40  D01 = 6 04  D02 = 5 40  D03 = 5 02  D04 = 4 10  D05 = 1 20  D06 = 0 08  D07 = 1 01  D08 = 2 04  D09 = 2 80  D10 = 3 10  D11 = 4 01  E01 = 5 80  E02 = 5 04  E03 = 4 20  E04 = 1 40  E05 = 0 10  E06 = 1 02  E07 = 2 08  E08 = 3 01  E09 = 3 20  ";
    }
  }

  return v3;
}

__CFString *sub_2338C71EC(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xC)
  {
    return @" UNKNOWN AF Mode";
  }

  else
  {
    return off_2789F0860[a2];
  }
}

id sub_2338C7210(void *a1, unsigned int a2)
{
  if (a1)
  {
    a1 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284933250, 0);
    if (a1)
    {
      a1 = sub_2338C5504(a1, a2);
    }

    v2 = vars8;
  }

  return a1;
}

void sub_2338C7294(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = a2;
  v11 = *(a4 + 4);
  if (v11 <= 0x4000)
  {
    sub_233726154(&v34, v11);
    v12 = *(a4 + 8);
    v13 = bswap32(v12);
    if (a6)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    v15 = sub_2338A9730(a1, v34, &v35[-v34], a5, v14);
    v16 = v34;
    if (v15 == &v35[-v34])
    {
      v17 = *(a4 + 4);
      if (v17 >= 0x2D)
      {
        v18 = v34 + v17;
        v19 = (v34 + 44);
        v20 = (v34 + 22);
        v21 = *MEMORY[0x277CD3490];
        v22 = *MEMORY[0x277CD34B8];
        do
        {
          v23 = *(v20 + 18);
          v24 = v23 - 4;
          if (v23 >= 4 && v23 < *(a4 + 4))
          {
            break;
          }

          v26 = v19 + v24;
          if (v19 + v24 > v18)
          {
            break;
          }

          if (*v20 == 1990472199)
          {
            v27 = *v19 + 360 - 360 * ((11930465 * (*v19 + 360)) >> 32);
            if (v27 == 90 || v27 == 270 || v27 == 180)
            {
              if (v27 == 90)
              {
                v28 = 6;
              }

              else if (v27 == 180)
              {
                v28 = 3;
              }

              else
              {
                v28 = 8;
              }

              v29 = sub_2338A9B94(a1);
              v33 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v30, v28, v31, v32);
              sub_2337830C4(v29, v21, v22, v33);
            }
          }

          v19 = (v26 + 22);
          v20 = v26;
        }

        while ((v26 + 22) < v18);
        v16 = v34;
      }
    }

    if (v16)
    {
      v35 = v16;
      operator delete(v16);
    }
  }
}

void sub_2338C7470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2338C74C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = a2;
  v10 = *(a4 + 4);
  if ((v10 - 1) > 1)
  {
    goto LABEL_51;
  }

  LODWORD(v11) = *(a4 + 8);
  v12 = bswap32(v11) >> 16;
  if (a6)
  {
    LOWORD(v11) = v12;
  }

  v13 = v11;
  if (v11)
  {
    v11 = v11;
  }

  else
  {
    v11 = -1;
  }

  if (v10 == 1)
  {
    v14 = v13;
  }

  else
  {
    v14 = -1;
  }

  if (v10 == 1)
  {
    v15 = v11;
  }

  else
  {
    v15 = -1;
  }

  if (v10 == 2)
  {
    v16 = *(a4 + 10);
    v17 = bswap32(v16) >> 16;
    if (a6)
    {
      LOWORD(v16) = v17;
    }

    v18 = v13 >= 2u || v16 == 0;
    v14 = v16;
    if (v18)
    {
      v15 = -1;
    }

    else
    {
      v15 = v16;
    }
  }

  else
  {
    v13 = -1;
  }

  v19 = v14 == 6400 || v14 == 0;
  v20 = MEMORY[0x277CD33C8];
  if (v19)
  {
    v21 = sub_2338A9B94(a1);
    v22 = sub_233875D18(v21, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B0]);

    if (sub_2338A818C(v22, @"P7000", 1))
    {
      v23 = sub_2338B0E5C(a1);
      v24 = *MEMORY[0x277CD30B0];
      v28 = sub_23378DDE8(v23, *MEMORY[0x277CD30B0], v25, v26, v27);

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (objc_msgSend_count(v28, v29, v30, v31, v32))
        {
          v76 = 0;
          if (!sub_23386EA2C(v28, &v76, v33, v34, v35))
          {
            if (!v14)
            {
              v14 = 6400;
            }

            v36 = sub_2338ADA50(a1, 0);
            objc_msgSend_removeObjectForKey_(v36, v37, v24, v38, v39);

            v15 = v14;
          }
        }
      }
    }

    goto LABEL_38;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
LABEL_38:
    v40 = sub_2338A9B94(a1);
    sub_2338AE980(v40, *v20, *MEMORY[0x277CD33E0]);

    v41 = 1;
    goto LABEL_39;
  }

  v41 = 0;
  v14 = 0xFFFFFFFFLL;
LABEL_39:
  if (v15 >= 1)
  {
    v42 = sub_2338ADA50(a1, 0);
    v43 = *MEMORY[0x277CD30B0];
    v44 = sub_233739ACC(v42, *MEMORY[0x277CD30B0]);

    if (!v44)
    {
      v45 = sub_2338ADA50(a1, 1);
      v46 = sub_2337E2674(v45, v43);
      v50 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v47, v15, v48, v49);
      objc_msgSend_addObject_(v46, v51, v50, v52, v53);
    }
  }

  v54 = sub_2338A9B94(a1);
  v55 = *v20;
  v56 = *MEMORY[0x277CD33E0];
  v57 = sub_2338AE880(v54, *v20, *MEMORY[0x277CD33E0]);

  if (!v57)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      v58 = sub_2338A9B94(a1);
      v59 = sub_2338BE594(v58, v55, v56);

      if (v59)
      {
        v63 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v60, v13, v61, v62);
        objc_msgSend_addObject_(v59, v64, v63, v65, v66);
      }
    }

    if (v41)
    {
      v67 = sub_2338A9B94(a1);
      v68 = sub_2338BE594(v67, v55, v56);

      if (v68)
      {
        v72 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v69, v14, v70, v71);
        objc_msgSend_addObject_(v68, v73, v72, v74, v75);
      }
    }
  }

LABEL_51:
}

void sub_2338C7910(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = a2;
  v11 = *(a4 + 4);
  if (v11 < 4)
  {
    goto LABEL_54;
  }

  v12 = *(a4 + 8);
  v13 = bswap32(v12);
  if (a6)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  v56 = 0;
  if (sub_2338A9730(a1, &v56, 1, a5, v14) != 1)
  {
    v18 = -1;
    v19 = -1;
    goto LABEL_45;
  }

  v15 = 1.0;
  v16 = v56;
  while (1)
  {
    while (1)
    {
      while (v16 > 0x43u)
      {
        if (v16 > 0x7Bu)
        {
          if (v16 == 124)
          {
            v16 = 0;
            v17 = 4000.0;
            goto LABEL_25;
          }

          if (v16 != 140)
          {
            goto LABEL_28;
          }

          v16 = 0;
          v15 = v15 * 10000.0;
          v56 = 0;
        }

        else
        {
          if (v16 == 68)
          {
            v16 = 0;
            v17 = 160.0;
          }

          else
          {
            if (v16 != 72)
            {
              goto LABEL_28;
            }

            v16 = 0;
            v17 = 200.0;
          }

LABEL_25:
          v15 = v15 * v17;
          v56 = 0;
        }
      }

      if (v16 > 0x3Bu)
      {
        if (v16 == 60)
        {
          v16 = 0;
          v17 = 100.0;
        }

        else
        {
          if (v16 != 64)
          {
            goto LABEL_28;
          }

          v16 = 0;
          v17 = 125.0;
        }

        goto LABEL_25;
      }

      if (v16 != 36)
      {
        break;
      }

      v16 = 0;
      v15 = v15 * 25.0;
      v56 = 0;
    }

    if (v16 == 48)
    {
      v16 = 0;
      v17 = 50.0;
      goto LABEL_25;
    }

    if (!v16)
    {
      break;
    }

LABEL_28:
    if (v16 < 0x49u)
    {
      if (v16 > 0x23u)
      {
        v15 = v15 * 1.0595;
        v56 = --v16;
      }

      else
      {
        v16 += 12;
        v56 = v16;
        v15 = v15 * 0.5;
      }
    }

    else
    {
      v16 -= 12;
      v56 = v16;
      v15 = v15 + v15;
    }
  }

  if ((v11 & 0xFFFE) >= 6 && (v55 = 0, sub_2338A9730(a1, &v55, 2, a5, (v14 + 4)) == 2))
  {
    v20 = v55;
    if (a6)
    {
      v20 = v55 << 8;
    }

    if ((v20 & 0x300) == 0x100)
    {
      v19 = 1;
    }

    else
    {
      v19 = -1;
    }
  }

  else
  {
    v19 = -1;
  }

  v18 = llroundf(v15);
  if (v18 >= 1)
  {
    v21 = sub_2338ADA50(a1, 0);
    v22 = *MEMORY[0x277CD30B0];
    v23 = sub_233739ACC(v21, *MEMORY[0x277CD30B0]);

    if (!v23)
    {
      v24 = sub_2338ADA50(a1, 1);
      v25 = sub_2337E2674(v24, v22);
      v29 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v26, v18, v27, v28);
      objc_msgSend_addObject_(v25, v30, v29, v31, v32);
    }
  }

LABEL_45:
  v33 = sub_2338A9B94(a1);
  v34 = *MEMORY[0x277CD33C8];
  v35 = *MEMORY[0x277CD33E0];
  v36 = sub_2338AE880(v33, *MEMORY[0x277CD33C8], *MEMORY[0x277CD33E0]);

  if (!v36)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      v37 = sub_2338A9B94(a1);
      v38 = sub_2338BE594(v37, v34, v35);

      if (v38)
      {
        v42 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v39, v19, v40, v41);
        objc_msgSend_addObject_(v38, v43, v42, v44, v45);
      }
    }

    if ((v18 & 0x8000000000000000) == 0)
    {
      v46 = sub_2338A9B94(a1);
      v47 = sub_2338BE594(v46, v34, v35);

      if (v47)
      {
        v51 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v48, v18, v49, v50);
        objc_msgSend_addObject_(v47, v52, v51, v53, v54);
      }
    }
  }

LABEL_54:
}

__CFString *sub_2338C7D74(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xA)
  {
    return 0;
  }

  else
  {
    return off_2789F08C8[a2];
  }
}

void *sub_2338C7E30(void *a1, uint64_t *a2, void **a3, void **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284933278;
  sub_2338B21BC((a1 + 3), a2, *a3, *a4);
  a1[3] = &unk_284933180;
  return a1;
}

void sub_2338C7ED0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284933278;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2338C7F6C(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = sub_2338F4DD0(a1, a2);
  *v5 = &unk_2849332C8;
  v5[6] = 0;
  v6 = (v5 + 6);
  v5[7] = 0;
  v5[8] = 0;
  *(a1 + 12) = sub_233725614(*a3);
  *(a1 + 16) = sub_233725614(*a3);
  *(a1 + 20) = sub_233725614(*a3);
  *(a1 + 24) = sub_233725614(*a3);
  *(a1 + 28) = sub_233725614(*a3);
  *(a1 + 32) = sub_233725614(*a3);
  *(a1 + 36) = sub_233725614(*a3);
  *(a1 + 40) = sub_233725614(*a3);
  for (i = sub_233725614(*a3); i; --i)
  {
    v8 = sub_2337255C0(*a3);
    v10 = *(a1 + 56);
    v9 = *(a1 + 64);
    if (v10 >= v9)
    {
      v12 = *v6;
      v13 = v10 - *v6;
      v14 = v13 >> 1;
      if (v13 >> 1 <= -2)
      {
        sub_2337235BC();
      }

      v15 = v9 - v12;
      if (v15 <= v14 + 1)
      {
        v16 = v14 + 1;
      }

      else
      {
        v16 = v15;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        sub_2337262C8(v6, v17);
      }

      *(2 * v14) = v8;
      v11 = 2 * v14 + 2;
      memcpy(0, v12, v13);
      v18 = *(a1 + 48);
      *(a1 + 48) = 0;
      *(a1 + 56) = v11;
      *(a1 + 64) = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v10 = v8;
      v11 = (v10 + 2);
    }

    *(a1 + 56) = v11;
  }

  return a1;
}

void sub_2338C8110(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

id sub_2338C813C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, a3, a4, a5);
  v10 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v7, *(a1 + 12), v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v11, v10, @"Top", v12);

  v16 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v13, *(a1 + 16), v14, v15);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v17, v16, @"Left", v18);

  v22 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v19, *(a1 + 20), v20, v21);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v23, v22, @"Bottom", v24);

  v28 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v25, *(a1 + 24), v26, v27);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v29, v28, @"mRight", v30);

  v34 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v31, *(a1 + 28), v32, v33);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v35, v34, @"Plane", v36);

  v40 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v37, *(a1 + 32), v38, v39);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v41, v40, @"Planes", v42);

  v46 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v43, *(a1 + 36), v44, v45);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v47, v46, @"RowPitch", v48);

  v52 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v49, *(a1 + 40), v50, v51);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v53, v52, @"ColPitch", v54);

  v62 = objc_msgSend_array(MEMORY[0x277CBEB18], v55, v56, v57, v58);
  v63 = *(a1 + 48);
  v64 = *(a1 + 56);
  while (v63 != v64)
  {
    v65 = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x277CCABB0], v59, *v63, v60, v61);
    objc_msgSend_addObject_(v62, v66, v65, v67, v68);

    ++v63;
  }

  objc_msgSend_setObject_forKeyedSubscript_(v6, v59, v62, @"Table", v61);
  v69 = [RAWOpcodeMapTable alloc];
  v73 = objc_msgSend_initWithArguments_(v69, v70, v6, v71, v72);

  return v73;
}

void *sub_2338C83CC(void *a1)
{
  *a1 = &unk_2849332C8;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2338C841C(void *a1)
{
  *a1 = &unk_2849332C8;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2383ABF10);
}

void sub_2338C849C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v11)
    {
      sub_2338CA6A0(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338C857C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v11)
    {
      sub_2338CBE5C(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338C865C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v10)
    {
      sub_2338CB19C(v10, v12, v11, a4, a5, a6);
    }
  }
}

void sub_2338C872C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v10)
    {
      sub_2338CB274(v10, v12, v11, a4, a5, a6);
    }
  }
}

void sub_2338C87FC(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v10)
    {
      sub_2338CB34C(v10, v12, v11, a4, a5, a6);
    }
  }
}

void sub_2338C88CC(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v11)
    {
      sub_2338CA888(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338C89A8(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v10)
    {
      sub_2338CB068(v10, v11, a3, a4, v12, a6);
    }
  }
}

void sub_2338C8A74(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v11)
    {
      sub_2338CB9C4(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338C8B54(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v11)
    {
      sub_2338CBC94(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338C8C34(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v11)
    {
      sub_2338CB424(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338C8D14(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v11)
    {
      sub_2338CAD58(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338C8DF4(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v11)
    {
      sub_2338CC034(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338C8ED0(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v9 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v9)
    {
      sub_2338CB50C(v9, v12, v10, a4, v11, a6);
    }
  }
}

void sub_2338C8F98(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v11)
    {
      sub_2338CA590(v11, v12, a3, a4, a5, a6);
    }
  }
}

BOOL sub_2338C9074(uint64_t *a1)
{
  v4 = 0;
  sub_233725F08(v5, a1, &v4, 0);
  v4 = 0;
  v2 = (*(**a1 + 32))(*a1, &v4, 4) == 4 && sub_2338FFE88(&v4, 4uLL);
  sub_233725FD4(v5);
  return v2;
}

void sub_2338C9114(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

void sub_2338C912C(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338CC1A0();
}

uint64_t sub_2338C91C0(uint64_t a1, int a2)
{
  v3 = sub_2338AF450(a1, a2);
  v4 = a2 == 21330 || v3;
  if (a2 == 20306)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

void sub_2338C9208(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2338A9C18(a1);
  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"IFD0/%@", v8, v9, *MEMORY[0x277CD34B8]);
  v14 = sub_233740FAC(v6, v10, v11, v12, v13);

  v80 = v14;
  v19 = objc_msgSend_intValue(v14, v15, v16, v17, v18);
  if ((v19 - 9) >= 0xFFFFFFF8)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (!v14)
  {
    v20 = v19;
  }

  v78 = v20;
  v21 = sub_2338A9C18(a1);
  v25 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"IFD0/Exif/Makernote/OlympusCameraSettings/%@", v23, v24, @"PreviewImageValid");
  v29 = sub_233740FAC(v21, v25, v26, v27, v28);

  v30 = sub_2338A9C18(a1);
  v34 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v31, @"IFD0/Exif/Makernote/OlympusCameraSettings/%@", v32, v33, @"PreviewImageOffset");
  v38 = sub_233740FAC(v30, v34, v35, v36, v37);

  v79 = v38;
  v39 = sub_2338A9C18(a1);
  v43 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v40, @"IFD0/Exif/Makernote/OlympusCameraSettings/%@", v41, v42, @"PreviewImageLength");
  v47 = sub_233740FAC(v39, v43, v44, v45, v46);

  v48 = sub_2338A9C18(a1);
  v52 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v49, @"IFD0/Exif/Makernote/%@/Offset", v50, v51, @"JPEGThumbnail");
  v56 = sub_233740FAC(v48, v52, v53, v54, v55);

  v57 = sub_2338A9C18(a1);
  v61 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v58, @"IFD0/Exif/Makernote/%@/Length", v59, v60, @"JPEGThumbnail");
  v65 = sub_233740FAC(v57, v61, v62, v63, v64);

  memset(v87, 0, sizeof(v87));
  sub_2338B0B1C(a1, a2, &v86);
  if (v29 && objc_msgSend_intValue(v29, v66, v67, v68, v69) && v79 && v47)
  {
    LODWORD(v82) = objc_msgSend_intValue(v79, v66, v67, v68, v69);
    v83 = objc_msgSend_intValue(v47, v70, v71, v72, v73);
    sub_233726998(&v84, &v83);
    sub_2338A820C(a1, &v82, &v84, v78, &v85);
    if (!v56)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v85 = 0uLL;
    if (!v56)
    {
      goto LABEL_15;
    }
  }

  if (v65)
  {
    v84 = objc_msgSend_intValue(v56, v66, v67, v68, v69);
    v81 = objc_msgSend_intValue(v65, v74, v75, v76, v77);
    sub_233726998(&v83, &v81);
    sub_2338A820C(a1, &v84, &v83, v78, &v82);
    goto LABEL_16;
  }

LABEL_15:
  v82 = 0uLL;
LABEL_16:
  if (v86)
  {
    sub_233753C74(v87, &v86);
  }

  if (v85)
  {
    sub_233753C74(v87, &v85);
  }

  if (v82)
  {
    sub_233753C74(v87, &v82);
  }

  sub_2338A86B8(v87, a2, a3);
  if (*(&v82 + 1))
  {
    sub_2337239E8(*(&v82 + 1));
  }

  if (*(&v85 + 1))
  {
    sub_2337239E8(*(&v85 + 1));
  }

  if (*(&v86 + 1))
  {
    sub_2337239E8(*(&v86 + 1));
  }

  *&v86 = v87;
  sub_233723948(&v86);
}

void sub_2338C95C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, std::__shared_weak_count *a21, char a22)
{
  if (a21)
  {
    sub_2337239E8(a21);
  }

  a20 = &a22;
  sub_233723948(&a20);

  _Unwind_Resume(a1);
}

void sub_2338C9704(uint64_t a1)
{
  sub_2338C99CC(a1, *MEMORY[0x277CD3018]);
  sub_2338C99CC(a1, *MEMORY[0x277CD3128]);
  sub_2338C99CC(a1, *MEMORY[0x277CD3150]);
  v2 = sub_2338A9B94(a1);
  v3 = sub_2338AE7EC(v2, @"{PictStyleSetting}", @"PictureStyle");

  if (objc_msgSend_count(v3, v4, v5, v6, v7))
  {
    v34 = 0;
    v11 = sub_23386EA2C(v3, &v34, v8, v9, v10);
    v12 = v11;
    v13 = @"Portrait";
    v14 = @"Monotone";
    v15 = @"Sepia";
    if (v11 != 512)
    {
      v15 = 0;
    }

    if (v11 != 256)
    {
      v14 = v15;
    }

    if (v11 != 4)
    {
      v13 = v14;
    }

    v16 = @"Vivid";
    v17 = @"Natural";
    v18 = @"Muted";
    if (v11 != 3)
    {
      v18 = 0;
    }

    if (v11 != 2)
    {
      v17 = v18;
    }

    if (v11 != 1)
    {
      v16 = v17;
    }

    if (v11 <= 3)
    {
      v19 = v16;
    }

    else
    {
      v19 = v13;
    }

    sub_2338AD018(a1, @"{PictureStyle}", @"PictureStyle", v19, v11, v11);
    v21 = v12 == 512 || v12 == 256;
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_2338A9B94(a1);
  v23 = sub_233739994(v22, @"{PictStyleSetting}", 0);

  if (sub_233739ACC(v23, @"ColorTone"))
  {
    v27 = sub_2337397B0(v23, @"ColorTone", v24, v25, v26);
    if (v27 > 5)
    {
      v28 = 0;
    }

    else
    {
      v28 = off_2789F0948[v27];
    }

    sub_2338AD018(a1, @"{PictureStyle}", @"ColorTone", v28, v27, v27);
  }

  if (sub_233739ACC(v23, @"FilterEffect"))
  {
    v32 = sub_2337397B0(v23, @"FilterEffect", v29, v30, v31);
    if (v32 > 5)
    {
      v33 = 0;
    }

    else
    {
      v33 = off_2789F0978[v32];
    }

    sub_2338AD018(a1, @"{PictureStyle}", @"FilterEffect", v33, v32, v32);
  }

  sub_2338ACF60(a1, @"Monochrome", v21);
}

void sub_2338C99CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_2338A9B94(a1);
  v5 = sub_2338AE7EC(v4, @"{PictStyleNormalized}", v3);

  v6 = sub_2338A9B94(a1);
  v7 = sub_2338AE7EC(v6, @"{PictStyleSetting}", v3);

  if (v5)
  {
    v12 = objc_msgSend_count(v5, v8, v9, v10, v11) > 2;
    if (v7)
    {
LABEL_3:
      v13 = objc_msgSend_count(v7, v8, v9, v10, v11) > 1;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  v14 = 0.0;
  if (v12)
  {
    v19 = 2;
    v14 = sub_2338C9B8C(v5, &v19, v9, v10, v11);
  }

  if (v13)
  {
    v19 = 1;
    v15 = sub_2338C9B8C(v7, &v19, v9, v10, v11);
    v16 = v15;
  }

  else
  {
    v16 = 0.0;
    v15 = v14;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (v12 && !v13)
  {
    v17 = v14;
  }

  else
  {
    v17 = v16;
  }

  if (v12)
  {
    v18 = v14;
  }

  else
  {
    v18 = v15;
  }

  sub_2338AD018(a1, @"{PictureStyle}", v3, 0, v17, v18);
LABEL_18:
}

float sub_2338C9B8C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_23386F6F4(a1, a2, a3, a4, a5);
  objc_msgSend_floatValue(v5, v6, v7, v8, v9);
  v11 = v10;

  return v11;
}

void sub_2338C9BDC(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v4 = sub_233875D18(v2, *MEMORY[0x277CD3038], @"LensModel");

  if (v4)
  {
    v3 = sub_2338A9B94(a1);
    sub_2338AE980(v3, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2F78]);
  }

  sub_2338AF5B0(a1);
}

uint64_t sub_2338C9CB8(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v12 = a2;
  v18 = 0;
  v19[0] = 0;
  *(v19 + 5) = 0;
  if (sub_2338A9730(a1, &v18, 20, a5, a3) == 20)
  {
    if (v18 == 1297697871 && WORD2(v18) == 80)
    {
      if ((a7 & 1) == 0)
      {
        v15 = a3 + 8;
        v14 = &unk_284933ED0;
        goto LABEL_11;
      }
    }

    else if (v18 == 0x5355504D594C4FLL)
    {
      a5 += a3;
      v14 = &unk_284933FC0;
      v15 = 12;
LABEL_11:
      sub_2338ADD58(a1, v12, v14, v15, a5, a6);
      (*(*a1 + 160))(a1);
      v16 = 1;
      goto LABEL_12;
    }
  }

  v16 = 0;
LABEL_12:

  return v16;
}

uint64_t sub_2338C9E24(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v3 = *MEMORY[0x277CD3000];
  v4 = sub_2338AE880(v2, @"{PictStyleSetting}", *MEMORY[0x277CD3000]);

  if (v4)
  {
    v5 = sub_2338A9B94(a1);
    v6 = sub_2338AE900(v5, @"{PictStyleSetting}", v3);

    if (v6 < 0x100)
    {
      return v6 + 1;
    }

    else
    {
      return 0xFFFFLL;
    }
  }

  else
  {
    v8 = sub_2338B0E5C(a1);
    v9 = sub_233739ACC(v8, v3);

    if (v9)
    {
      v10 = sub_2338B0E5C(a1);
      v7 = sub_2337397B0(v10, v3, v11, v12, v13);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v7;
}

void sub_2338C9F30(uint64_t a1)
{
  sub_2338C9704(a1);
  v2 = sub_2338A9B94(a1);
  v15 = sub_233739994(v2, @"{PictureStyle}", 0);

  if (v15)
  {
    v3 = sub_2338A9B94(a1);
    v4 = sub_2338AE880(v3, @"{PictureStyle}", @"Monochrome");

    if (!v4)
    {
      sub_2338ACF60(a1, @"Monochrome", 0);
    }

    v5 = (*(*a1 + 96))(a1);
    if ((v5 & 0x80000000) == 0)
    {
      v6 = sub_2338AD1AC(a1, v5);
      sub_2338AD018(a1, @"{PictureStyle}", @"PictStyleColorSpace", v6, v5, v5);
    }
  }

  v7 = sub_2338A9B94(a1);
  objc_msgSend_removeObjectForKey_(v7, v8, @"{PictStyleSetting}", v9, v10);

  v11 = sub_2338A9B94(a1);
  objc_msgSend_removeObjectForKey_(v11, v12, @"{PictStyleNormalized}", v13, v14);
}

uint64_t sub_2338CA100(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (v6)
  {
    v7 = MEMORY[0x277CCAB68];
    v8 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v2, v3, v4, v5);
    v12 = objc_msgSend_stringByTrimmingCharactersInSet_(v6, v9, v8, v10, v11);
    v16 = objc_msgSend_stringWithString_(v7, v13, v12, v14, v15);

    if (objc_msgSend_isEqualToString_(v16, v17, @"XZ-1", v18, v19))
    {
      v23 = 10001;
    }

    else if (objc_msgSend_isEqualToString_(v16, v20, @"E-P1", v21, v22))
    {
      v23 = 10002;
    }

    else if (objc_msgSend_isEqualToString_(v16, v24, @"E-P2", v25, v26))
    {
      v23 = 10004;
    }

    else if (objc_msgSend_isEqualToString_(v16, v27, @"E-PL1", v28, v29))
    {
      v23 = 10003;
    }

    else if (objc_msgSend_isEqualToString_(v16, v30, @"E-PL2", v31, v32))
    {
      v23 = 10005;
    }

    else
    {
      if (!CFStringGetCString(v6, buffer, 256, 0x8000100u))
      {
        goto LABEL_28;
      }

      v33 = strcasestr(buffer, "C");
      v34 = v33;
      if (v33)
      {
        v35 = strcasestr(v33 + 1, "C");
        if (v35)
        {
          v36 = v35;
        }

        else
        {
          v36 = v34;
        }

        v34 = v36 + 1;
      }

      v37 = strcasestr(buffer, "E-");
      v38 = v37 ? v37 + 2 : v34;
      if (v38 && (v39 = *v38, v39 >= 48))
      {
        v40 = 0;
        v23 = 0;
        v41 = v38 + 1;
        do
        {
          if (v40 > 4)
          {
            break;
          }

          if (v39 > 0x39u)
          {
            break;
          }

          v42 = v39 - 48;
          v39 = v41[v40++];
          v23 = 10 * v23 + v42;
        }

        while (v39 > 47);
      }

      else
      {
LABEL_28:
        v23 = 0;
      }
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

uint64_t sub_2338CA36C(uint64_t a1, int a2, unsigned int a3, uint64_t a4, void *a5)
{
  result = 0;
  v20 = *MEMORY[0x277D85DE8];
  if (a2 > 409)
  {
    if (a2 > 509)
    {
      if (a2 == 510)
      {
        goto LABEL_22;
      }

      if (a2 == 620)
      {
        result = 0;
        *a5 = 0x10000000100;
        return result;
      }

      if (a2 != 520)
      {
        return result;
      }
    }

    else
    {
      if (a2 == 410)
      {
        goto LABEL_22;
      }

      if (a2 != 420)
      {
        if (a2 == 500)
        {
          goto LABEL_22;
        }

        return result;
      }
    }

    *a5 = 0x10000000100;
    v15 = 0;
    *v16 = 0;
    if (a3 < 4)
    {
      v8 = v15.i32[a3];
      *a4 = dword_233917700[a3];
      *(a4 + 4) = v8;
      v9 = 0x2B00000020;
LABEL_29:
      *(a4 + 8) = v9;
      return 1;
    }

    return 0;
  }

  if (a2 <= 299)
  {
    if (a2 != 1)
    {
      if (a2 == 3)
      {
        *a5 = 0xAB000000E40;
        if (a3 <= 0xA)
        {
          v17 = 0;
          *&v16[4] = 0u;
          v15 = vdup_n_s32(0x221u);
          *v16 = 545;
          v6 = -545;
          v18 = vdup_n_s32(0xFFFFFDDF);
          v7 = &unk_233917740;
          goto LABEL_28;
        }
      }

      else
      {
        if (a2 != 5)
        {
          return result;
        }

        *a5 = 0xBD000000FC0;
        if (a3 <= 0xA)
        {
          v17 = 0;
          *&v16[4] = 0u;
          v15 = vdup_n_s32(0x25Du);
          *v16 = 605;
          v6 = -605;
          v18 = vdup_n_s32(0xFFFFFDA3);
          v7 = &unk_23391776C;
LABEL_28:
          v19 = v6;
          v13 = v7[a3];
          v14 = v15.i32[a3];
          *a4 = v13;
          *(a4 + 4) = v14;
          v9 = 0x900000006CLL;
          goto LABEL_29;
        }
      }

      return 0;
    }

LABEL_22:
    *a5 = 0x79E00000A30;
    v15 = 0;
    *v16 = 0;
    if (a3 < 4)
    {
      v10 = v15.i32[a3];
      v11 = dword_233917720[a3];
      v12 = dword_233917730[a3];
      *a4 = dword_233917710[a3];
      *(a4 + 4) = v10;
      *(a4 + 8) = v11;
      *(a4 + 12) = v12;
      return 1;
    }

    return 0;
  }

  if (a2 == 300 || a2 == 330 || a2 == 400)
  {
    goto LABEL_22;
  }

  return result;
}

void sub_2338CA590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v18 = 0;
  if (*(a4 + 4) >= 0x2Du)
  {
    v8 = *(a4 + 8);
    v9 = bswap32(v8);
    if (a6)
    {
      v8 = v9;
    }

    if (sub_2338A9730(a1, &v18, 1, a5, v8 + 44))
    {
      v10 = v18;
      if (v18 <= 3u)
      {
        v11 = sub_2338A9B94(a1);
        v12 = sub_2338A9BFC(a3);
        v13 = sub_2338A9B78(a3);
        v17 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v14, v10, v15, v16);
        sub_2337830C4(v11, v12, v13, v17);
      }
    }
  }
}

void sub_2338CA678(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2338CA6A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v39 = a2;
  v11 = MEMORY[0x277CCACA8];
  v12 = sub_2338A9B78(a3);
  v16 = objc_msgSend_stringWithFormat_(v11, v13, @"%@/%@/%@", v14, v15, v39, v12, @"Offset");

  v17 = MEMORY[0x277CCACA8];
  v18 = sub_2338A9B78(a3);
  v22 = objc_msgSend_stringWithFormat_(v17, v19, @"%@/%@/%@", v20, v21, v39, v18, @"Length");

  LODWORD(v26) = *(a4 + 8);
  v27 = bswap32(v26);
  if (a6)
  {
    v26 = v27;
  }

  else
  {
    v26 = v26;
  }

  v28 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v23, v26 + a5, v24, v25);
  v29 = sub_2338A9C18(a1);
  objc_msgSend_setObject_forKeyedSubscript_(v29, v30, v28, v16, v31);

  v35 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v32, *(a4 + 4), v33, v34);
  v36 = sub_2338A9C18(a1);
  objc_msgSend_setObject_forKeyedSubscript_(v36, v37, v35, v22, v38);
}

void sub_2338CA888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (*(a4 + 4) == 6)
  {
    v17 = 0;
    v16 = 0;
    LODWORD(v8) = *(a4 + 8);
    v9 = bswap32(v8);
    v8 = a6 ? v9 : v8;
    if (sub_2338A9730(a1, &v16, 6, a5, v8) == 6)
    {
      v13 = sub_2338CA98C(6, ((v16 << 16) | (BYTE2(v16) << 8) | HIBYTE(v16)), v10, v11, v12);
      if (v13)
      {
        v14 = sub_2338A9B94(a1);
        v15 = sub_2338A9BFC(a3);
        sub_2337830C4(v14, v15, *MEMORY[0x277CD2F78], v13);
      }
    }
  }
}

id sub_2338CA98C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%1X %02X %02X", a4, a5, BYTE2(a2), BYTE1(a2), a2);
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v5 = sub_2338E9010(@"olympus");
  v10 = v5;
  if (v5)
  {
    v15 = sub_23378DDE8(v5, v61, v7, v8, v9);
    for (i = 0; ; i = v68 + 1)
    {
      v68 = i;
      if (i >= objc_msgSend_count(v15, v11, v12, v13, v14))
      {

        goto LABEL_25;
      }

      v20 = sub_23386EAC4(v15, &v68, v17, v18, v19);
      if (objc_msgSend_count(v20, v21, v22, v23, v24) == 5)
      {
        break;
      }

LABEL_21:
    }

    __p[0] = 0;
    v28 = sub_23386E0B8(v20, __p, v25, v26, v27);
    __p[0] = 1;
    v32 = sub_23386EA74(v20, __p, v29, v30, v31);
    __p[0] = 2;
    v36 = sub_23386EA74(v20, __p, v33, v34, v35);
    __p[0] = 3;
    v40 = sub_23386EA74(v20, __p, v37, v38, v39);
    __p[0] = 4;
    v44 = sub_23386EA74(v20, __p, v41, v42, v43);
    if (v28)
    {
      v45 = v44;
      v46 = v28;
      v51 = objc_msgSend_UTF8String(v46, v47, v48, v49, v50);
      v52 = strlen(v51);
      if (v52 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_2337304FC();
      }

      v53 = v52;
      if (v52 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v63) = v52;
      if (v52)
      {
        memmove(&__dst, v51, v52);
      }

      *(&__dst + v53) = 0;
      v54 = SHIBYTE(v63);
      if (SHIBYTE(v63) < 0)
      {
        sub_233731FB8(__p, __dst, *(&__dst + 1));
      }

      else
      {
        *__p = __dst;
        v65 = v63;
      }

      *&v66 = v32;
      *(&v66 + 1) = v36;
      *&v67 = v40;
      *(&v67 + 1) = v45;
      v55 = v70;
      if (v70 >= v71)
      {
        v70 = sub_2338BAFB4(&v69, __p);
        if (SHIBYTE(v65) < 0)
        {
          operator delete(__p[0]);
          if ((v54 & 0x80000000) == 0)
          {
            goto LABEL_20;
          }
        }

        else if ((v54 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_17;
      }

      v56 = *__p;
      *(v70 + 16) = v65;
      *v55 = v56;
      __p[1] = 0;
      v65 = 0;
      __p[0] = 0;
      v57 = v67;
      *(v55 + 24) = v66;
      *(v55 + 40) = v57;
      v70 = v55 + 56;
      if (v54 < 0)
      {
LABEL_17:
        operator delete(__dst);
      }
    }

LABEL_20:

    goto LABEL_21;
  }

LABEL_25:
  v58 = v69;
  if (v70 == v69)
  {
    v59 = 0;
  }

  else
  {
    if (*(v69 + 23) < 0)
    {
      v58 = *v69;
    }

    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, v58, v8, v9);
  }

  __p[0] = &v69;
  sub_2338BB644(__p);

  return v59;
}

void sub_2338CACB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  __p = &a28;
  sub_2338BB644(&__p);

  _Unwind_Resume(a1);
}

void sub_2338CAD58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v55 = a2;
  if (!*(a4 + 4))
  {
    goto LABEL_18;
  }

  v11 = sub_2338A9B94(a1);
  v12 = sub_2338A9BFC(a3);
  v13 = sub_233739994(v11, v12, 0);

  sub_2338AA0D0(a1, v55, a3, a4, a5, a6);
  v14 = sub_2338A9B78(a3);
  v18 = sub_233740FAC(v13, v14, v15, v16, v17);

  v23 = v18 != 0;
  if (v18)
  {
    v24 = objc_msgSend_intValue(v18, v19, v20, v21, v22);
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  v26 = v24;
  if (*(a4 + 4) >= 3u)
  {
    v27 = sub_2338A9B78(a3);
    v31 = sub_233740FAC(v13, v27, v28, v29, v30);

    v32 = sub_2338A9B78(a3);
    v36 = sub_233740FAC(v13, v32, v33, v34, v35);

    v23 = 0;
    if (v31)
    {
      v26 = v24;
      if (!v36)
      {
LABEL_12:

        goto LABEL_13;
      }

      objc_msgSend_floatValue(v31, v37, v38, v39, v40);
      v42 = v41;
      objc_msgSend_floatValue(v36, v43, v44, v45, v46);
      v23 = 0;
      if (v18)
      {
        v26 = v24;
        if (v47 != v42)
        {
          v23 = 1;
          v26 = (v25 - v42) / (v47 - v42);
        }

        goto LABEL_12;
      }
    }

    v26 = v24;
    goto LABEL_12;
  }

LABEL_13:
  if (v13)
  {
    v48 = sub_2338A9B78(a3);
    objc_msgSend_removeObjectForKey_(v13, v49, v48, v50, v51);
  }

  if (v23)
  {
    v52 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"%ld", v21, v22, v24);
    v53 = sub_2338A9BFC(a3);
    v54 = sub_2338A9B78(a3);
    sub_2338AD018(a1, v53, v54, v52, v25, v26);
  }

LABEL_18:
}

void sub_2338CB068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (*(a4 + 4) == 1 && *(a4 + 2) == 3)
  {
    v21 = sub_2338A9B94(a1);
    v10 = sub_2338A9BFC(a3);
    v11 = sub_2338A9B78(a3);
    v12 = MEMORY[0x277CCABB0];
    v13 = *(a4 + 8);
    v14 = bswap32(v13) >> 16;
    if (a6)
    {
      LOWORD(v13) = v14;
    }

    v15 = pow(1.41421356, vcvtd_n_f64_u32(v13, 8uLL));
    v20 = objc_msgSend_numberWithDouble_(v12, v16, v17, v18, v19, v15);
    sub_2337830C4(v21, v10, v11, v20);
  }
}

uint64_t sub_2338CB19C(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  v13 = v10;
  if (*(a4 + 4))
  {
    v19 = v10;
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%@/OlympusEquipment", v11, v12, v10);
    v15 = *(a4 + 8);
    v16 = bswap32(v15);
    if (a6)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_2338ADD58(a1, v14, word_2849340B0, v17, a5, a6);

    v13 = v19;
  }

  return MEMORY[0x2821F96F8](v10, v13);
}

uint64_t sub_2338CB274(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  v13 = v10;
  if (*(a4 + 4))
  {
    v19 = v10;
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%@/OlympusCameraSettings", v11, v12, v10);
    v15 = *(a4 + 8);
    v16 = bswap32(v15);
    if (a6)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_2338ADD58(a1, v14, word_2849341F0, v17, a5, a6);

    v13 = v19;
  }

  return MEMORY[0x2821F96F8](v10, v13);
}

uint64_t sub_2338CB34C(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  v13 = v10;
  if (*(a4 + 4))
  {
    v19 = v10;
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v10, @"%@/OlympusFocusInfo", v11, v12, v10);
    v15 = *(a4 + 8);
    v16 = bswap32(v15);
    if (a6)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_2338ADD58(a1, v14, word_284934588, v17, a5, a6);

    v13 = v19;
  }

  return MEMORY[0x2821F96F8](v10, v13);
}

uint64_t sub_2338CB424(char **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  result = sub_2338AABA4(a1, a2, a3, a4, a5, a6);
  v8 = BYTE1(result) - BYTE3(result);
  v9 = result - BYTE2(result);
  if (v8 >= 4 && v9 >= 4)
  {
    v13 = 0x10000000100;
    v11[0] = (BYTE1(result) + BYTE3(result) - 256 + (((BYTE1(result) + BYTE3(result) - 256) & 0x8000) >> 15)) >> 1;
    v11[1] = (256 - (BYTE2(result) + result) + (((256 - (BYTE2(result) + result)) & 0x8000u) >> 15)) >> 1;
    sub_2337238F0(&v12, v8 >> 2, v9 >> 2);
    sub_2338B1194(a1, &v13, 0);
    sub_2338B10E8(a1, v11, 0);
    sub_2338B1254(a1, 1uLL, 0, 0);
    return sub_2338B11B8(a1, 1uLL, 0, 0);
  }

  return result;
}

void sub_2338CB50C(char **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v34 = a2;
  v9 = sub_2338A9B94(a1);
  v10 = sub_233875D18(v9, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B0]);

  v12 = sub_2338CA100(v11, v10);
  v13 = v12;
  v14 = 0;
  v15 = 0;
  v16 = *(a4 + 8);
  v17 = bswap32(v16) >> 16;
  if (a6)
  {
    LOWORD(v16) = v17;
  }

  v18 = v16 & 0x3F;
  v32 = v16;
  v33 = v16 & 0xC0;
  v38 = 0;
  v39 = 0;
  __p = 0;
  v37 = 0;
  v19 = 22;
  do
  {
    v35 = 0uLL;
    v12 = sub_2338CA36C(v12, v13, v15, &v35, &v39);
    if (v12)
    {
      if (v14 >= v38)
      {
        v20 = (v14 - __p) >> 4;
        if ((v20 + 1) >> 60)
        {
          sub_2337235BC();
        }

        v21 = (v38 - __p) >> 3;
        if (v21 <= v20 + 1)
        {
          v21 = v20 + 1;
        }

        if (v38 - __p >= 0x7FFFFFFFFFFFFFF0)
        {
          v22 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          sub_23377FC40(&__p, v22);
        }

        v23 = (16 * v20);
        *v23 = v35;
        v14 = (16 * v20 + 16);
        v24 = (16 * v20 - (v37 - __p));
        memcpy(v23 - (v37 - __p), __p, v37 - __p);
        v12 = __p;
        __p = v24;
        v37 = v14;
        v38 = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v14 = v35;
        v14 += 16;
      }

      v37 = v14;
    }

    else
    {
      v19 = v15;
    }

    ++v15;
  }

  while (v15 < v19);
  if (v13 <= 0x1E && ((1 << v13) & 0x40000028) != 0)
  {
    v25 = v33;
    if (!v19)
    {
      goto LABEL_41;
    }

    sub_2338AC594(a1, off_2789F09A8[v33 >> 6], 0, sub_2338CB878);
    v26 = v32;
    if (v32 != 255)
    {
      if (v18)
      {
        v18 = (v18 - 1) % v19;
      }

      else
      {
        v18 = 255;
      }
    }
  }

  else
  {
    if (!v19)
    {
      goto LABEL_41;
    }

    sub_2338AC594(a1, 0, 0, sub_2338CB8FC);
    v26 = v32;
    v25 = v32 & 0x40;
  }

  if (v18 >= v19 || v26 == 255)
  {
    v28 = 0;
  }

  else
  {
    v28 = 1 << v18;
  }

  sub_2338B1194(a1, &v39, 1);
  sub_2338B1160(a1, &__p, 1);
  sub_2338B1254(a1, v28, 0, 1);
  v29 = (v25 >> 6) ^ 2;
  v30 = ~(-1 << v19);
  if (v29 == 2)
  {
    v30 = v28;
  }

  if (v29 <= 1)
  {
    v31 = 0;
  }

  else
  {
    v31 = v30;
  }

  sub_2338B11B8(a1, v31, 0, 1);
LABEL_41:
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }
}

void sub_2338CB824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_2338CB878(void *a1, unsigned int a2)
{
  if (a1)
  {
    a1 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (a1)
    {
      a1 = sub_2338CC180(a1, a2);
    }

    v2 = vars8;
  }

  return a1;
}

__CFString *sub_2338CB8FC(__CFString *result, int a2)
{
  if (result)
  {
    v3 = __dynamic_cast(result, &unk_28492EBB0, &unk_284934708, 0);
    v4 = @"Right";
    v5 = @"Center (vertical)";
    v6 = @"(none)";
    if (a2 != 255)
    {
      v6 = 0;
    }

    if (a2 != 3)
    {
      v5 = v6;
    }

    if (a2 != 2)
    {
      v4 = v5;
    }

    v7 = @"Left";
    v8 = @"Center (horizontal)";
    if (a2 != 1)
    {
      v8 = 0;
    }

    if (a2)
    {
      v7 = v8;
    }

    if (a2 <= 1)
    {
      v4 = v7;
    }

    if (v3)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_2338CB9C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = a2;
  v12 = sub_2338A9BFC(a3);
  if (!objc_msgSend_length(v12, v13, v14, v15, v16))
  {

    goto LABEL_20;
  }

  v17 = sub_2338A9B78(a3);
  v22 = objc_msgSend_length(v17, v18, v19, v20, v21);

  if (v22)
  {
    v23 = sub_2338AA324(a1, v11, a3, a4, a5, a6);
    if (v23 >= 0xB)
    {
      v24 = 0x7FFFLL;
    }

    else
    {
      v24 = dword_233917800[v23];
    }

    if (*(a4 + 4) < 2u)
    {
      goto LABEL_16;
    }

    v25 = sub_2338A9B94(a1);
    v26 = sub_2338A9BFC(a3);
    v27 = sub_2338A9B78(a3);
    v28 = sub_2338AE7EC(v25, v26, v27);

    v33 = objc_msgSend_count(v28, v29, v30, v31, v32);
    if (v33)
    {
      v46 = 0;
      LOBYTE(v33) = sub_23386EA2C(v28, &v46, v34, v35, v36);
      if ((v33 & 0x30) == 0x10)
      {
        v24 = 0;
        goto LABEL_15;
      }

      if ((v33 & 0x30) == 0x20)
      {
        v24 = 2;
LABEL_15:

LABEL_16:
        v37 = sub_2338A9B94(a1);
        sub_2338A9BFC(a3);
        if (v24 == 0x7FFF)
          v38 = {;
          v39 = sub_2338A9B78(a3);
          sub_2338AE980(v37, v38, v39);
        }

        else
          v40 = {;
          v41 = sub_2338A9B78(a3);
          v45 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v42, v24, v43, v44);
          sub_2337830C4(v37, v40, v41, v45);
        }

        goto LABEL_20;
      }
    }

    if ((v33 & 3) != 0)
    {
      v24 = 1;
    }

    else
    {
      v24 = v24;
    }

    goto LABEL_15;
  }

LABEL_20:
}

void sub_2338CBC94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v28 = a2;
  v11 = sub_2338A9BFC(a3);
  if (objc_msgSend_length(v11, v12, v13, v14, v15))
  {
    v16 = sub_2338A9B78(a3);
    v21 = objc_msgSend_length(v16, v17, v18, v19, v20);

    if (!v21)
    {
      goto LABEL_8;
    }

    if (sub_2338AA324(a1, v28, a3, a4, a5, a6))
    {
      v11 = sub_2338A9B94(a1);
      v22 = sub_2338A9BFC(a3);
      v23 = sub_2338A9B78(a3);
      v27 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v24, 1, v25, v26);
      sub_2337830C4(v11, v22, v23, v27);
    }

    else
    {
      v11 = sub_2338A9B94(a1);
      v22 = sub_2338A9BFC(a3);
      v23 = sub_2338A9B78(a3);
      sub_2338AE980(v11, v22, v23);
    }
  }

LABEL_8:
}

void sub_2338CBE5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v30 = a2;
  v11 = sub_2338A9BFC(a3);
  if (!objc_msgSend_length(v11, v12, v13, v14, v15))
  {
    goto LABEL_10;
  }

  v16 = sub_2338A9B78(a3);
  v21 = objc_msgSend_length(v16, v17, v18, v19, v20);

  if (!v21)
  {
    goto LABEL_11;
  }

  v22 = sub_2338AA324(a1, v30, a3, a4, a5, a6);
  if (v22)
  {
    if (v22 != 1)
    {
      v11 = sub_2338A9B94(a1);
      v24 = sub_2338A9BFC(a3);
      v25 = sub_2338A9B78(a3);
      sub_2338AE980(v11, v24, v25);
      goto LABEL_9;
    }

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v11 = sub_2338A9B94(a1);
  v24 = sub_2338A9BFC(a3);
  v25 = sub_2338A9B78(a3);
  v29 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v26, v23, v27, v28);
  sub_2337830C4(v11, v24, v25, v29);

LABEL_9:
LABEL_10:

LABEL_11:
}

void sub_2338CC034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v24 = 0;
  v10 = *(a4 + 8);
  v11 = bswap32(v10);
  if (a6)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  if (sub_2338A9730(a1, &v24, 4, a5, v12) == 4)
  {
    v13 = v24;
    v14 = bswap32(v24);
    if (a6)
    {
      v13 = v14;
    }

    v24 = v13;
    if (v13 >= 1)
    {
      v15 = v13;
      sub_2338A9730(a1, &v24, 4, a5, v12 + 4);
      v16 = sub_2338A9B94(a1);
      v17 = sub_2338A9BFC(a3);
      v18 = sub_2338A9B78(a3);
      v23 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v19, v20, v21, v22, v15 / 1000.0);
      sub_2337830C4(v16, v17, v18, v23);
    }
  }
}

__CFString *sub_2338CC180(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x15)
  {
    return 0;
  }

  else
  {
    return off_2789F09C8[a2];
  }
}

void *sub_2338CC23C(void *a1, uint64_t *a2, void **a3, void **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284934730;
  sub_2338B21BC((a1 + 3), a2, *a3, *a4);
  a1[3] = &unk_284934638;
  return a1;
}

void sub_2338CC2DC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284934730;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2338CC5C4(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934990, 0);
    if (v10)
    {
      sub_2338CD14C(v10, v12, v11, a4, a5, a6);
    }
  }
}

uint64_t sub_2338CC694(uint64_t *a1)
{
  v4 = 0;
  sub_233725F08(v5, a1, &v4, 0);
  v4 = 0;
  v2 = (*(**a1 + 32))(*a1, &v4, 4);
  sub_2338FFF88(v2, &v4, v5, &v6);
  return v6;
}

void sub_2338CC71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

void sub_2338CC734(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338CD304();
}

uint64_t sub_2338CC7C8(uint64_t a1, int a2)
{
  LODWORD(result) = sub_2338AF450(a1, a2);
  if (a2 == 85)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

void sub_2338CC814(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v3 = *MEMORY[0x277CD2F50];
  v11 = v2;
  v4 = sub_2338AE880(v2, *MEMORY[0x277CD2F50], @"ImageStabilization");

  if (v4 && (sub_2338A9B94(a1), v12 = objc_claimAutoreleasedReturnValue(), v5 = sub_2338AE900(v12, v3, @"ImageStabilization"), v12, (v5 - 2) < 3))
  {
    v6 = dword_233917930[v5 - 2];
    v13 = sub_2338A9B94(a1);
    v10 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v7, v6, v8, v9);
    sub_2337830C4(v13, v3, @"ImageStabilization", v10);
  }

  else
  {
    v13 = sub_2338A9B94(a1);
    sub_2338AE980(v13, v3, @"ImageStabilization");
  }
}

uint64_t sub_2338CC970(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v10 = a2;
  v16 = 0;
  v17[0] = 0;
  *(v17 + 5) = 0;
  if (sub_2338A9730(a1, &v16, 20, a5, a3) == 20)
  {
    if (v16 == 1128875340 && WORD2(v16) == 65)
    {
      v14 = 8;
    }

    else
    {
      if (v16 != 0x696E6F73616E6150 || LOWORD(v17[0]) != 99)
      {
        goto LABEL_10;
      }

      v14 = 12;
    }

    sub_2338ADD58(a1, v10, L"%\a", v14 + a3, a5, a6);
    (*(*a1 + 160))(a1);
    v13 = 1;
    goto LABEL_14;
  }

LABEL_10:
  v13 = 0;
LABEL_14:

  return v13;
}

void sub_2338CCAD8(uint64_t a1)
{
  v19 = sub_2338A9B94(a1);
  v2 = sub_2338AE880(v19, @"{PictStyleSetting}", @"PictureStyle");

  if (v2)
  {
    v20 = sub_2338A9B94(a1);
    v3 = sub_2338AE900(v20, @"{PictStyleSetting}", @"PictureStyle");

    v21 = sub_2338CCD70(v4, v3);
    sub_2338AD018(a1, @"{PictureStyle}", @"PictureStyle", v21, v3, v3);
  }

  v5 = sub_2338A9B94(a1);
  v22 = sub_233739994(v5, @"{PictureStyle}", 0);

  if (v22)
  {
    v6 = sub_2338A9B94(a1);
    v7 = sub_2338AE880(v6, @"{PictureStyle}", @"Monochrome");

    if (!v7)
    {
      sub_2338ACF60(a1, @"Monochrome", 0);
    }

    v8 = (*(*a1 + 96))(a1);
    if ((v8 & 0x80000000) == 0)
    {
      v9 = @"{PictureStyle}";
      v10 = sub_2338AD1AC(a1, v8);
      sub_2338AD018(a1, v9, @"PictStyleColorSpace", v10, v8, v8);
    }
  }

  v11 = sub_2338A9B94(a1);
  objc_msgSend_removeObjectForKey_(v11, v12, @"{PictStyleSetting}", v13, v14);

  v15 = sub_2338A9B94(a1);
  objc_msgSend_removeObjectForKey_(v15, v16, @"{PictStyleNormalized}", v17, v18);
}

__CFString *sub_2338CCD70(uint64_t a1, int a2)
{
  if ((a2 - 1) > 0x2B)
  {
    return 0;
  }

  else
  {
    return off_2789F0B90[a2 - 1];
  }
}

void sub_2338CCD94(char **a1)
{
  v2 = sub_2338A9B94(a1);
  v3 = @"{Temporary}";
  v4 = @"_AutoFocus";
  v5 = sub_2338AE7EC(v2, v3, v4);

  if (objc_msgSend_count(v5, v6, v7, v8, v9) >= 2)
  {
    v33 = 0;
    v32 = sub_2338C9B8C(v5, &v33, v10, v11, v12);
    v33 = 1;
    v16 = sub_2338C9B8C(v5, &v33, v13, v14, v15);
    v17 = vdupq_lane_s64(__SPAIR64__(LODWORD(v16), LODWORD(v32)), 0);
    v18.i32[0] = vmovn_s32(vcgeq_f32(xmmword_233917830, v17)).u32[0];
    v18.i32[1] = vmovn_s32(vcgtq_f32(v17, xmmword_233917830)).i32[1];
    if (vminv_u16(v18))
    {
      v31 = v16;
      v19 = sub_2338B0E5C(a1);
      v35 = 0xBB800000FA0;
      v20 = *MEMORY[0x277CD3110];
      if (sub_233739ACC(v19, v20))
      {
        v21 = *MEMORY[0x277CD3118];
        v22 = sub_233739ACC(v19, *MEMORY[0x277CD3118]);

        if (v22)
        {
          v26 = sub_2337397B0(v19, v20, v23, v24, v25);
          LODWORD(v35) = v26;
          v30 = sub_2337397B0(v19, v21, v27, v28, v29);
          HIDWORD(v35) = v30;
LABEL_8:
          LODWORD(v33) = ((v32 + -0.5) * v26);
          HIDWORD(v33) = ((0.5 - v31) * v30);
          sub_2337238F0(&v34, v26 / 20, v30 / 20);
          sub_2338B1194(a1, &v35, 0);
          sub_2338B10E8(a1, &v33, 0);
          sub_2338B1254(a1, 1uLL, 0, 0);
          sub_2338AC690(a1);

          goto LABEL_9;
        }
      }

      else
      {
      }

      v26 = 4000;
      v30 = 3000;
      goto LABEL_8;
    }
  }

LABEL_9:
}

void sub_2338CD02C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  memset(v10, 0, sizeof(v10));
  sub_2338B0B1C(a1, a2, &v9);
  sub_233723AE0(&v7, (a1 + 196));
  v6 = *(a1 + 200);
  sub_2338A820C(a1, &v7, &v6, 0, &v8);
  if (v9)
  {
    sub_233753C74(v10, &v9);
  }

  if (v8)
  {
    sub_233753C74(v10, &v8);
  }

  sub_2338A86B8(v10, a2, a3);
  if (*(&v8 + 1))
  {
    sub_2337239E8(*(&v8 + 1));
  }

  if (*(&v9 + 1))
  {
    sub_2337239E8(*(&v9 + 1));
  }

  *&v9 = v10;
  sub_233723948(&v9);
}

void sub_2338CD104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, std::__shared_weak_count *a13, char a14)
{
  if (a13)
  {
    sub_2337239E8(a13);
  }

  a12 = &a14;
  sub_233723948(&a12);
  _Unwind_Resume(a1);
}

void sub_2338CD14C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = *(a4 + 4);
  v12 = *(a4 + 8);
  v13 = bswap32(v12);
  if (a6)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  *(a1 + 196) = v14;
  v15 = *(a4 + 2);
  if (v15 > 0x6F)
  {
    LODWORD(v16) = 0;
  }

  else
  {
    v16 = qword_233917870[v15];
  }

  *(a1 + 200) = v16 * v11;
  v24 = 0uLL;
  v25 = 0;
  if (sub_2338A9730(a1, &v24, 24, a5, v14) == 24 && !(*(&v24 + 6) ^ 0x66697845 | WORD5(v24)))
  {
    v20 = BYTE12(v24);
    if (BYTE12(v24) == BYTE13(v24) && (BYTE13(v24) & 0xFB) == 0x49)
    {
      v21 = bswap32(v25);
      if (BYTE12(v24) == 77)
      {
        v22 = v21;
      }

      else
      {
        v22 = v25;
      }

      if (HIBYTE(v24) + BYTE14(v24) == 42)
      {
        v23 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v17, @"%@/PanasonicThumbnail", v18, v19, v10);
        sub_2338ADD58(a1, v23, word_28492EDC8, a5 + v22, (v14 + 12), v20 == 77);
      }
    }
  }
}

uint64_t sub_2338CD3A0(uint64_t a1, uint64_t *a2, void **a3, void **a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2849349B8;
  sub_2338B21BC(a1 + 24, a2, *a3, *a4);
  *(a1 + 24) = &unk_2849348C0;
  *(a1 + 220) = 0;
  *(a1 + 224) = 0;
  return a1;
}

void sub_2338CD444(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849349B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2338CD4C0(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934F60, 0);
    if (v10)
    {
      sub_2338D038C(v10, v11, a3, a4, v12, a6);
    }
  }
}

void sub_2338CD58C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934F60, 0);
    if (v11)
    {
      sub_2338D074C(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338CD668(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934F60, 0);
    if (v10)
    {
      sub_2338CFC40(v10, v11, v12, a4, a5, a6);
    }
  }
}

void sub_2338CD734(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  if (a1)
  {
    v7 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934F60, 0);
    if (v7)
    {
      sub_2338D0684(v7, v8, a3, a4);
    }
  }
}

void sub_2338CD7FC(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v9 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934F60, 0);
    if (v9)
    {
      sub_2338CFEA0(v9, v12, v10, a4, v11, a6);
    }
  }
}

void sub_2338CD8F4(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a1)
  {
    v8 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934F60, 0);
    if (v8)
    {
      v9 = *(a4 + 8);
      v10 = bswap32(v9) >> 16;
      if (a6)
      {
        LOWORD(v9) = v10;
      }

      sub_2338CF9AC(v8, 0, v9);
    }
  }
}

void sub_2338CD998(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934F60, 0);
    if (v10)
    {
      sub_2338CFFE0(v10, v12, v11, a4, a5, a6);
    }
  }
}

void sub_2338CDA68(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934F60, 0);
    if (v10)
    {
      sub_2338D01C4(v10, v12, v11, a4, a5, a6);
    }
  }
}

void sub_2338CDB38(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934F60, 0);
    if (v11)
    {
      sub_2338D0494(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338CDC18(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338D097C();
}

void sub_2338CDCB8(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2338A9C18(a1);
  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"IFD0/%@", v8, v9, *MEMORY[0x277CD34B8]);
  v14 = sub_233740FAC(v6, v10, v11, v12, v13);

  v19 = objc_msgSend_intValue(v14, v15, v16, v17, v18);
  if ((v19 - 9) >= 0xFFFFFFF8)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v14)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  v22 = sub_2338A9C18(a1);
  v23 = MEMORY[0x277CCACA8];
  v24 = @"_JPEGInterchangeFormat";
  v28 = objc_msgSend_stringWithFormat_(v23, v25, @"IFD2/%@", v26, v27, v24);
  v32 = sub_233740FAC(v22, v28, v29, v30, v31);

  v33 = sub_2338A9C18(a1);
  v34 = MEMORY[0x277CCACA8];
  v35 = @"_JPEGInterchangeFormatLength";
  v39 = objc_msgSend_stringWithFormat_(v34, v36, @"IFD2/%@", v37, v38, v35);
  v43 = sub_233740FAC(v33, v39, v40, v41, v42);

  memset(v57, 0, sizeof(v57));
  sub_2338B0B1C(a1, a2, &v56);
  LODWORD(v52) = objc_msgSend_intValue(v32, v44, v45, v46, v47);
  v53 = objc_msgSend_intValue(v43, v48, v49, v50, v51);
  sub_233726998(&v54, &v53);
  sub_2338A820C(a1, &v52, &v54, v21, &v55);
  sub_2338AFE60(a1, @"IFD2", &v52);
  if (v56)
  {
    sub_233753C74(v57, &v56);
  }

  if (v55)
  {
    sub_233753C74(v57, &v55);
  }

  if (v52)
  {
    sub_233753C74(v57, &v52);
  }

  sub_2338A86B8(v57, a2, a3);
  if (*(&v52 + 1))
  {
    sub_2337239E8(*(&v52 + 1));
  }

  if (*(&v55 + 1))
  {
    sub_2337239E8(*(&v55 + 1));
  }

  if (*(&v56 + 1))
  {
    sub_2337239E8(*(&v56 + 1));
  }

  *&v56 = v57;
  sub_233723948(&v56);
}

void sub_2338CDF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void **a16, std::__shared_weak_count *a17, char a18)
{
  if (a15)
  {
    sub_2337239E8(a15);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  a16 = &a18;
  sub_233723948(&a16);

  _Unwind_Resume(a1);
}

void sub_2338CE004(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v3 = *MEMORY[0x277CD2F50];
  v14 = sub_2338BD598(v2, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2F68]);

  if (v14)
  {
    v8 = objc_msgSend_intValue(v14, v4, v5, v6, v7);
    v12 = sub_2338CE11C(a1, v8, v9, v10, v11);
    if (v12)
    {
      v13 = sub_2338A9B94(a1);
      sub_2337830C4(v13, v3, *MEMORY[0x277CD2F78], v12);
    }
  }

  sub_2338AF5B0(a1);
}

id sub_2338CE11C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%d %d", a4, a5, BYTE1(a2), a2);
  v148 = 0;
  v149 = 0;
  v150 = 0;
  v6 = sub_2338E9010(@"pentax");
  v11 = v6;
  v140 = v6;
  if (v6)
  {
    v138 = v5;
    v16 = sub_23378DDE8(v6, v5, v8, v9, v10);
    for (i = 0; ; i = v147 + 1)
    {
      v147 = i;
      if (i >= objc_msgSend_count(v16, v12, v13, v14, v15))
      {

        v5 = v138;
        goto LABEL_25;
      }

      v21 = sub_23386EAC4(v16, &v147, v18, v19, v20);
      if (objc_msgSend_count(v21, v22, v23, v24, v25) == 5)
      {
        break;
      }

LABEL_21:
    }

    __p[0] = 0;
    v29 = sub_23386E0B8(v21, __p, v26, v27, v28);
    __p[0] = 1;
    v33 = sub_23386EA74(v21, __p, v30, v31, v32);
    __p[0] = 2;
    v37 = sub_23386EA74(v21, __p, v34, v35, v36);
    __p[0] = 3;
    v41 = sub_23386EA74(v21, __p, v38, v39, v40);
    __p[0] = 4;
    v45 = sub_23386EA74(v21, __p, v42, v43, v44);
    if (v29)
    {
      v46 = v45;
      v47 = v29;
      v52 = objc_msgSend_UTF8String(v47, v48, v49, v50, v51);
      v53 = strlen(v52);
      if (v53 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_2337304FC();
      }

      v54 = v53;
      if (v53 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v142) = v53;
      if (v53)
      {
        memmove(&__dst, v52, v53);
      }

      *(&__dst + v54) = 0;
      v55 = SHIBYTE(v142);
      if (SHIBYTE(v142) < 0)
      {
        v11 = v140;
        sub_233731FB8(__p, __dst, *(&__dst + 1));
      }

      else
      {
        *__p = __dst;
        v144 = v142;
        v11 = v140;
      }

      *&v145 = v33;
      *(&v145 + 1) = v37;
      *&v146 = v41;
      *(&v146 + 1) = v46;
      v56 = v149;
      if (v149 >= v150)
      {
        v149 = sub_2338BAFB4(&v148, __p);
        if (SHIBYTE(v144) < 0)
        {
          operator delete(__p[0]);
          if ((v55 & 0x80000000) == 0)
          {
            goto LABEL_20;
          }
        }

        else if ((v55 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_17;
      }

      v57 = *__p;
      *(v149 + 16) = v144;
      *v56 = v57;
      __p[1] = 0;
      v144 = 0;
      __p[0] = 0;
      v58 = v146;
      *(v56 + 24) = v145;
      *(v56 + 40) = v58;
      v149 = v56 + 56;
      if (v55 < 0)
      {
LABEL_17:
        operator delete(__dst);
      }
    }

LABEL_20:

    goto LABEL_21;
  }

LABEL_25:
  v59 = v148;
  if (v149 - v148 == 56)
  {
    if (*(v148 + 23) < 0)
    {
      v59 = *v148;
    }

    v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v59, v9, v10);
    goto LABEL_84;
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((v149 - v148) >> 3)) < 2)
  {
    v60 = 0;
    goto LABEL_84;
  }

  v61 = sub_2338B0E5C(a1);
  v65 = sub_2337397B0(v61, *MEMORY[0x277CD3088], v62, v63, v64);

  v66 = sub_2338B0E5C(a1);
  v70 = sub_233740FAC(v66, *MEMORY[0x277CD30E8], v67, v68, v69);

  objc_msgSend_doubleValue(v70, v71, v72, v73, v74);
  v76 = v75;
  v80 = sub_233755CB8(0x6DB6DB6DB6DB6DB7 * ((v149 - v148) >> 3));
  v81 = v148;
  if (*(v148 + 23) < 0)
  {
    v81 = *v148;
  }

  v82 = v5;
  v137 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v77, v81, v78, v79);
  v87 = v148;
  if ((0x6DB6DB6DB6DB6DB7 * ((v149 - v148) >> 3)) >= 2)
  {
    v88 = v65;
    v136 = log(v65);
    v89 = 0;
    v90 = 0;
    v91 = 1;
    v92 = 999999999.0;
    v135 = v76;
    while (1)
    {
      v93 = v87 + v89;
      if (*(v87 + v89 + 79) < 0)
      {
        sub_233731FB8(__p, *(v93 + 56), *(v93 + 64));
      }

      else
      {
        v94 = *(v93 + 56);
        v144 = *(v93 + 72);
        *__p = v94;
      }

      v95 = *(v87 + v89 + 80);
      v146 = *(v87 + v89 + 96);
      v145 = v95;
      v96 = v95;
      v97 = *&v95 + -0.9;
      v98 = *(&v145 + 1) + 0.9;
      if (*&v145 + -0.9 <= v88 && v98 >= v88)
      {
        if (v70)
        {
          v101 = *(&v146 + 1);
          v100 = *&v146;
          v98 = *&v146 + -0.15;
          if (v76 < *&v146 + -0.15 || v76 > *(&v146 + 1) + 0.15)
          {
            goto LABEL_63;
          }

          if (*&v145 != *(&v145 + 1) && *&v146 != *(&v146 + 1))
          {
            v103 = log(*&v146);
            v104 = log(v101) - v103;
            v105 = log(*(&v96 + 1));
            v106 = log(*&v96);
            v107 = v103 + v104 / (v105 - v106) * (v136 - v106);
            v76 = v135;
            v100 = exp(v107);
          }

          v108 = vabdd_f64(v76, v100);
          if (v108 > v92 + 0.15)
          {
            goto LABEL_63;
          }

          v97 = v92 + -0.15;
          if (v108 >= v92 + -0.15)
          {
            v92 = v108;
          }

          else
          {
            if (v144 >= 0)
            {
              objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, __p, v85, v86);
            }

            else
            {
              objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, __p[0], v85, v86);
            }
            v109 = ;

            v92 = v108;
            v90 = v109;
          }
        }

        if (v144 >= 0)
        {
          objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, __p, v85, v86, v97, v98);
        }

        else
        {
          objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v83, __p[0], v85, v86, v97, v98);
        }
        v113 = ;
        if (v113)
        {
          objc_msgSend_addObject_(v80, v110, v113, v111, v112);
        }
      }

LABEL_63:
      if (SHIBYTE(v144) < 0)
      {
        operator delete(__p[0]);
      }

      ++v91;
      v87 = v148;
      v89 += 56;
      if (v91 >= 0x6DB6DB6DB6DB6DB7 * ((v149 - v148) >> 3))
      {
        goto LABEL_69;
      }
    }
  }

  v90 = 0;
LABEL_69:
  v11 = v140;
  if (objc_msgSend_count(v80, v83, v84, v85, v86))
  {
    if (v90)
    {
      objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v114, v90, v115, v116);
    }

    else
    {
      objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v114, &stru_284938540, v115, v116);
    }
    v60 = ;
    for (j = 0; ; j = __p[0] + 1)
    {
      __p[0] = j;
      if (j >= objc_msgSend_count(v80, v117, v118, v119, v120))
      {
        break;
      }

      v125 = sub_23386E0B8(v80, __p, v122, v123, v124);
      if (objc_msgSend_length(v60, v126, v127, v128, v129))
      {
        if (!v90 || (objc_msgSend_isEqualToString_(v125, v130, v90, v131, v132) & 1) == 0)
        {
          objc_msgSend_appendFormat_(v60, v130, @" or %@", v131, v132, v125);
        }
      }

      else
      {
        objc_msgSend_appendString_(v60, v130, v125, v131, v132);
      }
    }

    v5 = v82;
    v133 = v137;
  }

  else
  {
    v5 = v82;
    v133 = v137;
    v60 = v137;
  }

LABEL_84:
  __p[0] = &v148;
  sub_2338BB644(__p);

  return v60;
}

void sub_2338CE810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  __p = &a32;
  sub_2338BB644(&__p);

  _Unwind_Resume(a1);
}

void sub_2338CE964(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v3 = sub_2338AE7EC(v2, @"{PictStyleSetting}", @"PictureStyle");

  if (objc_msgSend_count(v3, v4, v5, v6, v7))
  {
    v53 = 0;
    v11 = sub_23386EA2C(v3, &v53, v8, v9, v10);
    v12 = v11;
    v13 = sub_2338CEE20(v11, v11);
    sub_2338AD018(a1, @"{PictureStyle}", @"PictureStyle", v13, v12, v12);
  }

  v14 = sub_2338A9B94(a1);
  v15 = sub_2338AE7EC(v14, @"{PictStyleSetting}", @"ColorTone");

  if (objc_msgSend_count(v15, v16, v17, v18, v19))
  {
    v53 = 0;
    v23 = sub_23386EA2C(v15, &v53, v20, v21, v22);
    v24 = v23;
    if (v23 > 5)
    {
      v25 = 0;
    }

    else
    {
      v25 = off_2789F0D18[v23];
    }

    sub_2338AD018(a1, @"{PictureStyle}", @"ColorTone", v25, v23, v23);
    v26 = v24 == 5;
  }

  else
  {
    v26 = 0;
  }

  v27 = sub_2338A9B94(a1);
  v28 = sub_2338AE880(v27, @"{PictStyleSetting}", @"Hue");

  if (v28)
  {
    v29 = sub_2338A9B94(a1);
    v30 = sub_2338AE900(v29, @"{PictStyleSetting}", @"Hue");

    sub_2338ACF60(a1, @"Hue", v30);
  }

  v31 = sub_2338A9B94(a1);
  v32 = sub_2338AE880(v31, @"{PictStyleSetting}", @"FineSharpness");

  if (v32)
  {
    v33 = sub_2338A9B94(a1);
    v34 = sub_2338AE900(v33, @"{PictStyleSetting}", @"FineSharpness");

    sub_2338ACF60(a1, @"FineSharpness", v34);
  }

  v35 = sub_2338A9B94(a1);
  v36 = sub_2338AE880(v35, @"{PictStyleSetting}", @"ShadowCompensation");

  if (v36)
  {
    v37 = sub_2338A9B94(a1);
    v38 = sub_2338AE900(v37, @"{PictStyleSetting}", @"ShadowCompensation");

    sub_2338ACF60(a1, @"ShadowCompensation", v38);
  }

  v39 = sub_2338A9B94(a1);
  v40 = sub_233739994(v39, @"{PictureStyle}", 0);

  if (v40)
  {
    v41 = sub_2338A9B94(a1);
    v42 = sub_2338AE880(v41, @"{PictureStyle}", @"Monochrome");

    if (!v42)
    {
      sub_2338ACF60(a1, @"Monochrome", v26);
    }

    v43 = (*(*a1 + 96))(a1);
    if ((v43 & 0x80000000) == 0)
    {
      v44 = sub_2338AD1AC(a1, v43);
      sub_2338AD018(a1, @"{PictureStyle}", @"PictStyleColorSpace", v44, v43, v43);
    }
  }

  v45 = sub_2338A9B94(a1);
  objc_msgSend_removeObjectForKey_(v45, v46, @"{PictStyleSetting}", v47, v48);

  v49 = sub_2338A9B94(a1);
  objc_msgSend_removeObjectForKey_(v49, v50, @"{PictStyleNormalized}", v51, v52);
}

__CFString *sub_2338CEE20(uint64_t a1, int a2)
{
  result = 0;
  switch(a2)
  {
    case 0:
      result = @"Program";
      break;
    case 1:
      result = @"Shutter Speed Priority";
      break;
    case 2:
      result = @"Program AE";
      break;
    case 3:
      result = @"Manual";
      break;
    case 4:
    case 10:
    case 16:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 32:
    case 34:
    case 35:
    case 36:
    case 39:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 52:
    case 57:
    case 59:
    case 62:
    case 63:
    case 64:
      return result;
    case 5:
      result = @"Portrait";
      break;
    case 6:
      result = @"Landscape";
      break;
    case 7:
      result = @"?";
      break;
    case 8:
      result = @"Sport";
      break;
    case 9:
      result = @"Night Scene";
      break;
    case 11:
      result = @"Soft";
      break;
    case 12:
      result = @"Surf and Snow";
      break;
    case 13:
    case 54:
      result = @"Candlelight";
      break;
    case 14:
      result = @"Autumn";
      break;
    case 15:
      result = @"Macro";
      break;
    case 17:
      result = @"Fireworks";
      break;
    case 18:
      result = @"Text";
      break;
    case 19:
      result = @"Panorama";
      break;
    case 30:
      result = @"Self Portrait";
      break;
    case 31:
      result = @"Illustrations";
      break;
    case 33:
      result = @"Digital Filter";
      break;
    case 37:
      result = @"Museum";
      break;
    case 38:
      result = @"Food";
      break;
    case 40:
      result = @"Green Mode";
      break;
    case 49:
      result = @"Light Pet";
      break;
    case 50:
      result = @"Dark Pet";
      break;
    case 51:
      result = @"Medium Pet";
      break;
    case 53:
      result = @"Underwater";
      break;
    case 55:
      result = @"Natural Skin Tone";
      break;
    case 56:
      result = @"Synchro Sound Record";
      break;
    case 58:
      result = @"Frame Composite";
      break;
    case 60:
      result = @"Kids";
      break;
    case 61:
      result = @"Blur Reduction";
      break;
    case 65:
      result = @"Half-length Portrait";
      break;
    default:
      if (a2 == 255)
      {
        result = @"Digital Filter";
      }

      else
      {
        result = 0;
      }

      break;
  }

  return result;
}

void sub_2338CEFF0(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v3 = *MEMORY[0x277CD2F50];
  v4 = sub_2338AE7EC(v2, *MEMORY[0x277CD2F50], @"ImageStabilization");

  if (objc_msgSend_count(v4, v5, v6, v7, v8) < 2)
  {
    v21 = sub_2338A9B94(a1);
    sub_2338AE980(v21, v3, @"ImageStabilization");
  }

  else
  {
    v26 = 0;
    v12 = sub_23386EA2C(v4, &v26, v9, v10, v11);
    v26 = 1;
    v16 = sub_23386EA2C(v4, &v26, v13, v14, v15);
    if ((v12 & 0x42) != 0)
    {
      v17 = 131;
    }

    else
    {
      v17 = 3;
    }

    if (v12)
    {
      v18 = 7;
    }

    else
    {
      v18 = v17;
    }

    if (v12)
    {
      v19 = v18;
    }

    else
    {
      v19 = 131;
    }

    if (v16)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = sub_2338A9B94(a1);
    v25 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v22, v20, v23, v24);
    sub_2337830C4(v21, v3, @"ImageStabilization", v25);
  }
}

uint64_t sub_2338CF174(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v12 = a2;
  v15 = 0;
  v16[0] = 0;
  *(v16 + 5) = 0;
  if (sub_2338A9730(a1, &v15, 20, a5, a3) == 20)
  {
    if (a7)
    {
      sub_2338ADD58(a1, @"IFD0", word_2849349F8, a3, a5, a6);
LABEL_9:
      sub_2338ADD58(a1, v12, word_284934A48, a3, a5, a6);
      (*(*a1 + 160))(a1);
      v13 = 1;
      goto LABEL_10;
    }

    if (v15 == 4411201)
    {
      a3 += 6;
      sub_2338ADD58(a1, @"IFD0", word_2849349F8, a3, a5, a6);
      goto LABEL_9;
    }

    if (v15 == 0x205841544E4550)
    {
      a3 += 10;
      sub_2338ADD58(a1, @"IFD0", word_2849349F8, a3, a5, a6);
      goto LABEL_9;
    }
  }

  v13 = 0;
LABEL_10:

  return v13;
}

uint64_t sub_2338CF338(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v11 = 0;
  v12[0] = 0;
  *(v12 + 5) = 0;
  if (sub_2338A9730(a1, &v11, 20, a4, a3) == 20)
  {
    sub_2338AEC78(a1, v9, a3, a4, a5);
  }

  return 1;
}

uint64_t sub_2338CF480(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v3 = *MEMORY[0x277CD3000];
  v4 = sub_2338AE880(v2, @"{PictStyleSetting}", *MEMORY[0x277CD3000]);

  if (v4)
  {
    v5 = sub_2338A9B94(a1);
    v6 = sub_2338AE900(v5, @"{PictStyleSetting}", v3);

    if (v6 < 0x100)
    {
      return v6 + 1;
    }

    else
    {
      return 0xFFFFLL;
    }
  }

  else
  {
    v8 = sub_2338B0E5C(a1);
    v9 = sub_233739ACC(v8, v3);

    if (v9)
    {
      v10 = sub_2338B0E5C(a1);
      v7 = sub_2337397B0(v10, v3, v11, v12, v13);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v7;
}

uint64_t sub_2338CF58C(uint64_t a1, int a2, int a3, __int128 *a4, uint64_t *a5)
{
  if (a2 <= 76705)
  {
    if (a2 <= 76639)
    {
      if (a2 != 76180 && a2 != 76450 && a2 != 76570)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v7 = a2 - 96;
      if ((a2 - 76640) > 0x3D)
      {
        goto LABEL_68;
      }

      if (((1 << v7) & 0x140000005) == 0)
      {
        if (((1 << v7) & 0x3000000000000000) != 0)
        {
          goto LABEL_28;
        }

        goto LABEL_68;
      }
    }

    v8 = 65;
    v9 = 70;
    v10 = 135;
    v11 = 45;
    v12 = 50;
    v13 = 1150;
    v14 = 400;
    v15 = 575;
    v16 = 0x7E800000BE0;
    goto LABEL_29;
  }

  if (a2 <= 77049)
  {
    if (a2 <= 76831)
    {
      if (a2 != 76706)
      {
        v6 = 11294;
LABEL_22:
        if (a2 != (v6 | 0x10000))
        {
          goto LABEL_68;
        }
      }
    }

    else if (a2 != 76832 && a2 != 77010)
    {
      v6 = 11476;
      goto LABEL_22;
    }

LABEL_28:
    v8 = 65;
    v9 = 70;
    v10 = 135;
    v11 = 45;
    v12 = 50;
    v13 = 1150;
    v14 = 400;
    v15 = 575;
    v16 = 0xA2000000F20;
    goto LABEL_29;
  }

  if (a2 <= 77419)
  {
    if ((a2 - 77170) < 2)
    {
      *a5 = 0xA2000000F20;
      if (a3 == 1)
      {
        v17 = xmmword_233917940;
      }

      else
      {
        if (a3)
        {
          return 0;
        }

        v17 = xmmword_233917950;
      }

      goto LABEL_63;
    }

    if (a2 == 77050)
    {
      v8 = 65;
      v9 = 70;
      v10 = 150;
      v12 = 55;
      v13 = 1320;
      v14 = 480;
      v15 = 660;
      v16 = 0xA2000000F20;
      v11 = 55;
      goto LABEL_29;
    }

LABEL_68:
    result = 0;
    *a5 = 0xA2000000F20;
    return result;
  }

  if (a2 != 77420)
  {
    if (a2 == 77430)
    {
      v8 = 83;
      v9 = 90;
      v10 = 172;
      v11 = 57;
      v12 = 63;
      v13 = 1465;
      v14 = 504;
      v15 = 732;
      v16 = 0xCC000001340;
      goto LABEL_29;
    }

    goto LABEL_68;
  }

  v8 = 72;
  v9 = 78;
  v10 = 150;
  v11 = 50;
  v12 = 55;
  v13 = 1275;
  v14 = 440;
  v15 = 637;
  v16 = 0xB20000010C0;
LABEL_29:
  *a5 = v16;
  if (a3 > 5)
  {
    if (a3 > 8)
    {
      if (a3 == 9)
      {
        v15 = 0;
      }

      else if (a3 != 10)
      {
        result = 0;
        if (a3 != 11)
        {
          return result;
        }

        goto LABEL_45;
      }
    }

    else
    {
      if (a3 == 6)
      {
        v14 = 0;
        goto LABEL_55;
      }

      if (a3 == 7)
      {
        v14 = 0;
        v15 = v13;
        goto LABEL_52;
      }

      v15 = -v15;
    }

    v14 = -v14;
    goto LABEL_55;
  }

  if (a3 > 2)
  {
    if (a3 != 3)
    {
      if (a3 == 4)
      {
        v14 = 0;
        goto LABEL_54;
      }

LABEL_45:
      v15 = 0;
      v14 = 0;
      v12 = v9;
      v11 = v8;
      goto LABEL_55;
    }

    v14 = 0;
    v15 = -v13;
LABEL_52:
    v11 = v10;
    goto LABEL_55;
  }

  if (!a3)
  {
LABEL_54:
    v15 = -v15;
    goto LABEL_55;
  }

  if (a3 == 1)
  {
    v15 = 0;
  }

  else
  {
    result = 0;
    if (a3 != 2)
    {
      return result;
    }
  }

LABEL_55:
  if (a2 == 76570)
  {
    v19 = 1 << a3;
    v20 = 2160;
  }

  else
  {
    if (a2 != 76672 && a2 != 76670)
    {
      goto LABEL_62;
    }

    v19 = 1 << a3;
    v20 = 2674;
  }

  if ((v19 & v20) == 0)
  {
    v15 = 0;
    v14 = 0;
    v12 = 0;
    v11 = 0;
  }

LABEL_62:
  *&v21 = __PAIR64__(v14, v15);
  sub_2337238F0(&v21 + 2, v12, v11);
  v17 = v21;
LABEL_63:
  *a4 = v17;
  return 1;
}

void sub_2338CF9AC(char **a1, unsigned int a2, unsigned int a3)
{
  if (a3 | a2)
  {
    v3 = a1;
    v4 = 0;
    v5 = *(a1 + 49);
    if (v5 >> 1 == 38585)
    {
      v6 = 0;
    }

    else
    {
      v6 = a3;
    }

    if (v5 >> 1 == 38585)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    v17 = v7;
    __p = 0;
    v21 = 0;
    v22 = 0;
    v19 = 0;
    v8 = 100;
    do
    {
      v18 = 0uLL;
      a1 = sub_2338CF58C(a1, v5, v4, &v18, &v19);
      if (a1)
      {
        v9 = v21;
        if (v21 >= v22)
        {
          v11 = (v21 - __p) >> 4;
          v12 = v11 + 1;
          if ((v11 + 1) >> 60)
          {
            sub_2337235BC();
          }

          v13 = v22 - __p;
          if ((v22 - __p) >> 3 > v12)
          {
            v12 = v13 >> 3;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF0)
          {
            v14 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v12;
          }

          if (v14)
          {
            sub_23377FC40(&__p, v14);
          }

          v15 = (16 * v11);
          *v15 = v18;
          v10 = 16 * v11 + 16;
          v16 = (16 * v11 - (v21 - __p));
          memcpy(v15 - (v21 - __p), __p, v21 - __p);
          a1 = __p;
          __p = v16;
          v21 = v10;
          v22 = 0;
          if (a1)
          {
            operator delete(a1);
          }
        }

        else
        {
          *v21 = v18;
          v10 = (v9 + 16);
        }

        v21 = v10;
        ++v4;
      }

      else
      {
        v8 = v4;
      }
    }

    while (v4 < v8);
    if (v8)
    {
      sub_2338B1194(v3, &v19, 1);
      sub_2338B1254(v3, v6, 0, v6 != 0);
      sub_2338B11B8(v3, v17, 0, v17 != 0);
      sub_2338B1160(v3, &__p, 1);
      sub_2338AC594(v3, 0, 0, sub_2338CFBBC);
    }

    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }
  }
}

void sub_2338CFB94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_2338CFBBC(void *a1, unsigned int a2)
{
  if (a1)
  {
    a1 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934F60, 0);
    if (a1)
    {
      a1 = sub_2338D0924(a1, a2);
    }

    v2 = vars8;
  }

  return a1;
}

void sub_2338CFC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = *(a4 + 4);
  if (v6 >= 0xC8)
  {
    v7 = 200;
  }

  else
  {
    v7 = v6;
  }

  if (v6 >= 0x21)
  {
    v12 = sub_2338A9B94(a1);
    v13 = sub_233875D18(v12, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B0]);

    sub_233756E64(&__p, v7);
    v14 = *(a4 + 8);
    v15 = bswap32(v14);
    if (a6)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    v17 = sub_2338A9730(a1, __p, v31 - __p, a5, v16);
    v18 = __p;
    if (v17 == v31 - __p)
    {
      if (sub_2338A818C(v13, @"*ist", 0) || sub_2338A818C(v13, @"GX-1S", 0) || sub_2338A818C(v13, @"GX-1L", 0) || (sub_2338A818C(v13, @"K100D", 0) || sub_2338A818C(v13, @"K110D", 0)) && (v18[20] == 255 || !v18[20] && !v18[21]))
      {
        v19 = 17;
      }

      else if ((v31 - __p) >= 0x5A)
      {
        v19 = 26;
        if (v31 - __p == 90)
        {
          v19 = 27;
        }
      }

      else
      {
        v19 = 18;
      }

      v18 = __p;
      v20 = *(__p + v19);
      if (v20 < 2)
      {
        goto LABEL_16;
      }

      v21 = exp2(vcvtd_n_f64_u32((v20 - 1), 5uLL));
      v26 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v22, v23, v24, v25, v21);
      v27 = sub_2338ADA50(a1, 1);
      objc_msgSend_setObject_forKeyedSubscript_(v27, v28, v26, *MEMORY[0x277CD30E8], v29);

      v18 = __p;
    }

    if (!v18)
    {
LABEL_17:

      return;
    }

LABEL_16:
    v31 = v18;
    operator delete(v18);
    goto LABEL_17;
  }
}

void sub_2338CFE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2338CFEA0(char **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  LOWORD(v9) = 0;
  v10 = *(a4 + 8);
  v11 = bswap32(v10) >> 16;
  if (a6)
  {
    LOWORD(v10) = v11;
  }

  if (v10 <= 0xFFFCu)
  {
    if (v10)
    {
      if (v10 == 65532)
      {
        v12 = sub_2338A9B94(a1);
        sub_2337830C4(v12, *MEMORY[0x277CD2F50], *MEMORY[0x277CD33D8], &unk_2849588B8);

        LOWORD(v9) = 0;
      }

      else
      {
        if (v10 > 0x10u)
        {
          goto LABEL_13;
        }

        v9 = 1 << (v10 - 1);
      }
    }
  }

  else if (v10 == 65534)
  {
    LOWORD(v9) = 32;
  }

  sub_2338CF9AC(a1, v9, 0);
LABEL_13:
}

void sub_2338CFFE0(char **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = a2;
  if (*(a4 + 4) >= 6u)
  {
    v11 = *(a4 + 8);
    v12 = bswap32(v11);
    if (a6)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    v14 = sub_2338A9B94(a1);
    v15 = *MEMORY[0x277CD2F50];
    v16 = *MEMORY[0x277CD33D8];
    v17 = sub_2338AE880(v14, *MEMORY[0x277CD2F50], *MEMORY[0x277CD33D8]);

    if (!v17)
    {
      v26 = 0;
      if ((v13 + 3) << 31 >> 31 != v13 + 3)
      {
        goto LABEL_20;
      }

      if (sub_2338A9730(a1, &v26, 1, a5, v13 + 3) == 1)
      {
        if ((v26 & 0xF) != 0)
        {
          v26 = 1;
        }

        v18 = sub_2338A9B94(a1);
        v22 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v19, v26, v20, v21);
        sub_2337830C4(v18, v15, v16, v22);
      }
    }

    v25 = 0;
    if ((v13 + 4) << 31 >> 31 == v13 + 4)
    {
      if (sub_2338A9730(a1, &v25, 2, a5, v13 + 4) == 2)
      {
        v23 = v25;
        v24 = bswap32(v25) >> 16;
        if (a6)
        {
          v23 = v24;
        }

        v25 = v23;
        if (!v23)
        {
          v23 = 2047;
        }
      }

      else
      {
        v23 = 0;
      }

      sub_2338CF9AC(a1, v23, 0);
    }
  }

LABEL_20:
}

void sub_2338D01C4(char **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = a2;
  if (*(a4 + 4) >= 0xCu)
  {
    v11 = *(a4 + 8);
    v12 = bswap32(v11);
    if (a6)
    {
      v11 = v12;
    }

    if (v11 <= 0xFFFFFFF3)
    {
      v17 = 0;
      if (sub_2338A9730(a1, &v17, 1, a5, v11 + 11) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 9;
        v16 = 8;
        switch(v17)
        {
          case 0:
            break;
          case 1:
            goto LABEL_30;
          case 2:
            goto LABEL_22;
          case 3:
            goto LABEL_15;
          case 4:
            v15 = 5;
            v16 = 4;
            goto LABEL_30;
          case 5:
            v16 = 5;
            v15 = 5;
            goto LABEL_30;
          case 6:
            v15 = 5;
            v16 = 6;
            goto LABEL_30;
          case 7:
            v16 = 0;
            goto LABEL_28;
          case 8:
            v16 = 1;
LABEL_28:
            v15 = 1;
            goto LABEL_30;
          case 9:
            v15 = 1;
            goto LABEL_13;
          case 10:
            v16 = 7;
            v15 = 7;
            goto LABEL_30;
          case 11:
            goto LABEL_25;
          case 12:
            v16 = 0;
            goto LABEL_25;
          case 13:
            v15 = 5;
LABEL_22:
            v16 = 9;
            goto LABEL_30;
          case 14:
            v15 = 5;
            v16 = 1;
            goto LABEL_30;
          case 15:
            v15 = 6;
LABEL_15:
            v16 = 10;
            goto LABEL_30;
          case 16:
            v15 = 6;
LABEL_13:
            v16 = 2;
            goto LABEL_30;
          case 17:
            v16 = 3;
            v15 = 3;
            goto LABEL_30;
          case 18:
            v16 = 4;
LABEL_25:
            v15 = 4;
            goto LABEL_30;
          case 19:
            v16 = 11;
            v15 = 11;
            goto LABEL_30;
          case 20:
            v16 = 6;
            v15 = 6;
LABEL_30:
            v13 = 1 << v16;
            v14 = (1 << v15) | (1 << v16);
            break;
          default:
            v13 = 0;
            v14 = 0;
            v17 = 0;
            break;
        }
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      sub_2338CF9AC(a1, v13, v14);
    }
  }
}

void sub_2338D038C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = *(a4 + 8);
  v7 = bswap32(v6);
  if (a6)
  {
    v6 = v7;
  }

  *(a1 + 196) = v6;
  if ((*(a3 + 32) & 4) != 0)
  {
    v16 = sub_2338A9B94(a1);
    v10 = sub_2338A9BFC(a3);
    v11 = sub_2338A9B78(a3);
    v15 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v12, *(a1 + 196), v13, v14);
    sub_2337830C4(v16, v10, v11, v15);
  }
}

void sub_2338D0468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2338D0494(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  sub_2338AA0D0(a1, a2, a3, a4, a5, a6);
  v8 = sub_2338A9B94(a1);
  v9 = sub_2338A9BFC(a3);
  v10 = sub_2337854A4(v8, v9, 0);

  v11 = sub_2338A9B78(a3);
  v15 = sub_23378DDE8(v10, v11, v12, v13, v14);

  if (v15)
  {
    v20 = objc_msgSend_count(v15, v16, v17, v18, v19) == 0;
  }

  else
  {
    v20 = 1;
  }

  v34 = 0;
  v21 = sub_23386EA2C(v15, &v34, v17, v18, v19);
  v22 = sub_2338A9B78(a3);
  objc_msgSend_removeObjectForKey_(v10, v23, v22, v24, v25);

  if (v21 != 0xFFFF && !v20)
  {
    if (v21 <= 8)
    {
      v21 = dword_233917960[v21];
    }

    v29 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v26, v21, v27, v28);
    v30 = sub_2338A9B78(a3);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v31, v29, v30, v32);

    v33 = sub_2338A9B78(a3);
    sub_2338ACF60(a1, v33, v21);
  }
}

void sub_2338D0684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  v11 = sub_2338A9B94(a1);
  v6 = sub_2338A9BFC(a3);
  v10 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v7, __rev16(v5), v8, v9);
  sub_2337830C4(v11, v6, *MEMORY[0x277CD2F68], v10);
}

void sub_2338D074C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = *(a4 + 4);
  if (v6 >= 3)
  {
    LODWORD(v10) = *(a4 + 8);
    v11 = bswap32(v10);
    v10 = a6 ? v11 : v10;
    v27[0] = 0;
    v27[1] = 0;
    v28 = 0;
    if (sub_2338A9730(a1, v27, 20, a5, v10) == 20)
    {
      v12 = v27[0];
      v13 = bswap32(v27[0]);
      if (a6)
      {
        v12 = v13;
      }

      *(a1 + 196) = v12;
      v14 = sub_2338A9B94(a1);
      v18 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v15, *(a1 + 196), v16, v17);
      sub_2337830C4(v14, @"{MakerPentax}", @"PentaxModelID", v18);

      if (v6 >= 5)
      {
        v22 = bswap32(v28);
        if (a6)
        {
          objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"%u", v20, v21, v22);
        }

        else
        {
          objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v19, @"%u", v20, v21, v28);
        }
        v23 = ;
        v24 = sub_2338A9B94(a1);
        v25 = sub_2338A9BFC(a3);
        v26 = sub_2338A9B78(a3);
        sub_2337830C4(v24, v25, v26, v23);
      }
    }
  }
}