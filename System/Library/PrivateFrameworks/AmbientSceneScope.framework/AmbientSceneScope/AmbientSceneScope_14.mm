void sub_23F05C43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a31 == 1 && a30 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 88) == 1 && *(v33 - 89) < 0)
  {
    operator delete(*(v33 - 112));
  }

  MEMORY[0x245CACD00](v32, v31);
  _Unwind_Resume(a1);
}

BOOL sub_23F05C498(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v31[3] = v2;
  v31[4] = v3;
  v6 = *(a1 + 112);
  v7 = *(a2 + 112);
  if (v6 != -1 && v7 == v6)
  {
    v31[0] = &v30;
    if (((off_28517C938[v6])(v31, a1 + 16, a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7 != v6)
  {
    return 0;
  }

  v10 = *(a1 + 144);
  v11 = *(a2 + 144);
  if (v10 == v11 && *(a1 + 144))
  {
    v12 = *(a1 + 143);
    if (v12 >= 0)
    {
      v13 = *(a1 + 143);
    }

    else
    {
      v13 = *(a1 + 128);
    }

    v14 = *(a2 + 143);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a2 + 128);
    }

    if (v13 != v14)
    {
      return 0;
    }

    v16 = (a2 + 120);
    v17 = v12 >= 0 ? (a1 + 120) : *(a1 + 120);
    v18 = *v16;
    v19 = (v15 >= 0 ? a2 + 120 : *v16);
    if (memcmp(v17, v19, v13))
    {
      return 0;
    }
  }

  else if (v10 != v11)
  {
    return 0;
  }

  v20 = *(a2 + 176);
  v21 = *(a1 + 176);
  result = v21 == v20;
  if (v21 != v20 || !*(a1 + 176))
  {
    return result;
  }

  v22 = *(a1 + 175);
  if (v22 >= 0)
  {
    v23 = *(a1 + 175);
  }

  else
  {
    v23 = *(a1 + 160);
  }

  v24 = *(a2 + 175);
  v25 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a2 + 160);
  }

  if (v23 != v24)
  {
    return 0;
  }

  v26 = (a2 + 152);
  if (v22 >= 0)
  {
    v27 = (a1 + 152);
  }

  else
  {
    v27 = *(a1 + 152);
  }

  v28 = *v26;
  if (v25 >= 0)
  {
    v29 = (a2 + 152);
  }

  else
  {
    v29 = *v26;
  }

  return memcmp(v27, v29, v23) == 0;
}

BOOL sub_23F05C640(uint64_t a1, float *a2, float *a3)
{
  result = *a2 == *a3;
  if (*a2 == *a3)
  {
    v4 = a2[1];
    v5 = a3[1];
    result = v4 == v5;
    if (v4 == v5)
    {
      v6 = a2[2];
      v7 = a3[2];
      result = v6 == v7;
      if (v6 == v7)
      {
        result = a2[3] == a3[3];
      }
    }
  }

  if (result)
  {
    v8 = a2[4];
    v9 = a3[4];
    result = v8 == v9;
    if (v8 == v9)
    {
      v10 = a2[5];
      v11 = a3[5];
      result = v10 == v11;
      if (v10 == v11)
      {
        v12 = a2[6];
        v13 = a3[6];
        result = v12 == v13;
        if (v12 == v13)
        {
          result = a2[7] == a3[7];
        }
      }
    }

    if (result)
    {
      v14 = a2[8];
      v15 = a3[8];
      result = v14 == v15;
      if (v14 == v15)
      {
        v16 = a2[9];
        v17 = a3[9];
        result = v16 == v17;
        if (v16 == v17)
        {
          v18 = a2[10];
          v19 = a3[10];
          result = v18 == v19;
          if (v18 == v19)
          {
            return a2[11] == a3[11];
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_23F05C730(uint64_t a1, double *a2, double *a3)
{
  result = *a2 == *a3;
  if (*a2 == *a3)
  {
    v4 = a2[1];
    v5 = a3[1];
    result = v4 == v5;
    if (v4 == v5)
    {
      v6 = a2[2];
      v7 = a3[2];
      result = v6 == v7;
      if (v6 == v7)
      {
        result = a2[3] == a3[3];
      }
    }
  }

  if (result)
  {
    v8 = a2[4];
    v9 = a3[4];
    result = v8 == v9;
    if (v8 == v9)
    {
      v10 = a2[5];
      v11 = a3[5];
      result = v10 == v11;
      if (v10 == v11)
      {
        v12 = a2[6];
        v13 = a3[6];
        result = v12 == v13;
        if (v12 == v13)
        {
          result = a2[7] == a3[7];
        }
      }
    }

    if (result)
    {
      v14 = a2[8];
      v15 = a3[8];
      result = v14 == v15;
      if (v14 == v15)
      {
        v16 = a2[9];
        v17 = a3[9];
        result = v16 == v17;
        if (v16 == v17)
        {
          v18 = a2[10];
          v19 = a3[10];
          result = v18 == v19;
          if (v18 == v19)
          {
            return a2[11] == a3[11];
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_23F05C820(uint64_t a1, float *a2, float *a3)
{
  result = *a2 == *a3;
  if (*a2 == *a3)
  {
    v4 = a2[1];
    v5 = a3[1];
    result = v4 == v5;
    if (v4 == v5)
    {
      result = a2[2] == a3[2];
    }
  }

  if (result)
  {
    v6 = a2[3];
    v7 = a3[3];
    result = v6 == v7;
    if (v6 == v7)
    {
      v8 = a2[4];
      v9 = a3[4];
      result = v8 == v9;
      if (v8 == v9)
      {
        return a2[5] == a3[5];
      }
    }
  }

  return result;
}

BOOL sub_23F05C898(uint64_t a1, double *a2, double *a3)
{
  result = *a2 == *a3;
  if (*a2 == *a3)
  {
    v4 = a2[1];
    v5 = a3[1];
    result = v4 == v5;
    if (v4 == v5)
    {
      result = a2[2] == a3[2];
    }
  }

  if (result)
  {
    v6 = a2[3];
    v7 = a3[3];
    result = v6 == v7;
    if (v6 == v7)
    {
      v8 = a2[4];
      v9 = a3[4];
      result = v8 == v9;
      if (v8 == v9)
      {
        return a2[5] == a3[5];
      }
    }
  }

  return result;
}

void sub_23F05CB64(char *a1)
{
  if (a1)
  {
    sub_23F05CB64(*a1);
    sub_23F05CB64(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

uint64_t sub_23F05CBE0(uint64_t a1, uint64_t a2, double *a3)
{
  v10 = a2;
  v11 = "{";
  v12 = a2;
  v13 = "{";
  v14 = "{";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    goto LABEL_6;
  }

  v15 = &v10;
  (*(&off_28517C988 + v3))(&v15);
  sub_23F05B5C8(&v10, a2, a3);
  v10 = a2;
  v11 = ",";
  v12 = a2;
  v13 = ",";
  v14 = ",";
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    goto LABEL_6;
  }

  v15 = &v10;
  (*(&off_28517C988 + v6))(&v15, a2);
  sub_23F05B5C8(&v10, a2, a3 + 1);
  v10 = a2;
  v11 = ",";
  v12 = a2;
  v13 = ",";
  v14 = ",";
  v7 = *(a2 + 24);
  if (v7 == -1)
  {
    goto LABEL_6;
  }

  v15 = &v10;
  (*(&off_28517C988 + v7))(&v15, a2);
  sub_23F05B5C8(&v10, a2, a3 + 2);
  v10 = a2;
  v11 = "}";
  v12 = a2;
  v13 = "}";
  v14 = "}";
  v8 = *(a2 + 24);
  if (v8 == -1)
  {
LABEL_6:
    sub_23EF41D6C();
  }

  v15 = &v10;
  return (*(&off_28517C988 + v8))(&v15, a2);
}

void sub_23F05D150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x245CACD00](v21, v22);
  _Unwind_Resume(a1);
}

void *sub_23F05D25C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(v1 + 408) == 1 && *(v1 + 407) < 0)
    {
      operator delete(*(v1 + 384));
    }

    v3 = sub_23EF505F8(v1);
    MEMORY[0x245CACD00](v3, 0x10B2C40FBB7FC15);
    return v2;
  }

  return result;
}

BOOL sub_23F05D2C4(float ***a1, float ***a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = **a2;
  if (v4 - v5 != (*a2)[1] - v6)
  {
    return 0;
  }

  if (v5 != v4)
  {
    while (*v5 == *v6 && v5[1] == v6[1] && v5[2] == v6[2])
    {
      v5 += 3;
      v6 += 3;
      if (v5 == v4)
      {
        goto LABEL_7;
      }
    }

    return 0;
  }

LABEL_7:
  v8 = v2[4];
  v7 = v2[5];
  v9 = v3[4];
  if (v7 - v8 != v3[5] - v9)
  {
    return 0;
  }

  if (v8 != v7)
  {
    while (*v8 == *v9 && v8[1] == v9[1] && v8[2] == v9[2])
    {
      v8 += 3;
      v9 += 3;
      if (v8 == v7)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

LABEL_13:
  if (*(v2 + 16) != *(v3 + 16))
  {
    return 0;
  }

  v11 = v2[9];
  v10 = v2[10];
  v12 = v3[9];
  if (v10 - v11 != v3[10] - v12)
  {
    return 0;
  }

  if (v11 != v10)
  {
    while (*v11 == *v12 && v11[1] == v12[1] && v11[2] == v12[2])
    {
      v11 += 3;
      v12 += 3;
      if (v11 == v10)
      {
        goto LABEL_20;
      }
    }

    return 0;
  }

LABEL_20:
  if (*(v2 + 26) != *(v3 + 26))
  {
    return 0;
  }

  v14 = v2[14];
  v13 = v2[15];
  v15 = v3[14];
  if (v13 - v14 != v3[15] - v15)
  {
    return 0;
  }

  if (v14 != v13)
  {
    while (*v14 == *v15 && *(v14 + 1) == *(v15 + 1) && *(v14 + 2) == *(v15 + 2))
    {
      v14 += 3;
      v15 += 12;
      if (v14 == v13)
      {
        goto LABEL_27;
      }
    }

    return 0;
  }

LABEL_27:
  v17 = v2[18];
  v16 = v2[19];
  v18 = v3[18];
  if (v16 - v17 != v3[19] - v18)
  {
    return 0;
  }

  if (v17 != v16)
  {
    while (*v17 == *v18 && *(v17 + 1) == *(v18 + 1))
    {
      v17 += 2;
      v18 += 8;
      if (v17 == v16)
      {
        goto LABEL_35;
      }
    }

    return 0;
  }

LABEL_35:
  v21 = v2[22];
  v20 = v2[23];
  v22 = v3[22];
  if (v20 - v21 != v3[23] - v22)
  {
    return 0;
  }

  if (v21 != v20)
  {
    while (*v21 == *v22 && v21[1] == v22[1])
    {
      v21 += 2;
      v22 += 2;
      if (v21 == v20)
      {
        goto LABEL_40;
      }
    }

    return 0;
  }

LABEL_40:
  v52 = *a2;
  v53 = *a1;
  v25 = v2 + 26;
  v23 = v2[26];
  v24 = v25[1];
  v27 = v3 + 26;
  v26 = v3[26];
  if (v24 - v23 != v27[1] - v26)
  {
    return 0;
  }

  if (v23 != v24)
  {
    while (*v23 == *v26 && *(v23 + 1) == *(v26 + 1) && *(v23 + 2) == *(v26 + 2))
    {
      v23 += 3;
      v26 += 3;
      if (v23 == v24)
      {
        goto LABEL_46;
      }
    }

    return 0;
  }

LABEL_46:
  v28 = *a1;
  v29 = v53[30];
  v30 = v53[31] - v29;
  v31 = v52[30];
  if (v30 != v52[31] - v31)
  {
    return 0;
  }

  if (memcmp(v29, v31, v30))
  {
    return 0;
  }

  if (*(v53 + 68) != *(v52 + 68))
  {
    return 0;
  }

  v32 = v53[35];
  v33 = v53[36] - v32;
  v34 = v52[35];
  if (v33 != v52[36] - v34)
  {
    return 0;
  }

  if (memcmp(v32, v34, v33))
  {
    return 0;
  }

  if (*(v53 + 78) != *(v52 + 78))
  {
    return 0;
  }

  v36 = v53[40];
  v35 = v53[41];
  v37 = v52[40];
  if (v35 - v36 != v52[41] - v37)
  {
    return 0;
  }

  if (v36 != v35)
  {
    while (*v36 == *v37)
    {
      ++v36;
      ++v37;
      if (v36 == v35)
      {
        goto LABEL_56;
      }
    }

    return 0;
  }

LABEL_56:
  if (*(v53 + 88) != *(v52 + 88))
  {
    return 0;
  }

  v38 = *(v53 + 380);
  v39 = *(v52 + 380);
  if (v38 == v39 && v38 != 0)
  {
    if (*(v53 + 89) != *(v52 + 89) || *(v53 + 90) != *(v52 + 90) || *(v53 + 91) != *(v52 + 91) || *(v53 + 92) != *(v52 + 92) || *(v53 + 93) != *(v52 + 93) || *(v53 + 94) != *(v52 + 94))
    {
      return 0;
    }

    goto LABEL_63;
  }

  if (v38 != v39)
  {
    return 0;
  }

LABEL_63:
  v41 = *(v52 + 408);
  v42 = *(v53 + 408);
  result = v42 == v41;
  if (v42 == v41 && *(v53 + 408))
  {
    v44 = *(v53 + 407);
    if (v44 >= 0)
    {
      v45 = *(v53 + 407);
    }

    else
    {
      v45 = v53[49];
    }

    v46 = *(v52 + 407);
    v47 = v52[49];
    if (v46 >= 0)
    {
      v47 = *(v52 + 407);
    }

    if (v45 != v47)
    {
      return 0;
    }

    v48 = (v52 + 48);
    if (v44 >= 0)
    {
      v49 = (v53 + 48);
    }

    else
    {
      v49 = v53[48];
    }

    v50 = *v48;
    if (v46 >= 0)
    {
      v51 = v52 + 48;
    }

    else
    {
      v51 = *v48;
    }

    return memcmp(v49, v51, v45) == 0;
  }

  return result;
}

void sub_23F05D788(void *a1, uint64_t *a2)
{
  sub_23EF2F9B0(a1, "{", 1);
  v3 = *a2;
  v4 = 0;
  operator new();
}

void sub_23F05DAD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F05DAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x245CACD00](v4, 0x10B2C40EED050F3);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F05DB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F05DB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F05DB44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
    sub_23F04B948(&a12);
    _Unwind_Resume(a1);
  }

  sub_23F04B948(&a12);
  _Unwind_Resume(a1);
}

uint64_t *sub_23F05DB90(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = -1431655765 * ((a1[2] - v2) >> 2);
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_23EF41D6C();
    }

    v8 = &v6;
    (off_28517C9A0[v4])(&v8, a1 + 3);
  }

  return a1;
}

uint64_t *sub_23F05DC20(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = -1431655765 * ((a1[2] - v2) >> 2);
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_23EF41D6C();
    }

    v8 = &v6;
    (off_28517C9D0[v4])(&v8, a1 + 3);
  }

  return a1;
}

uint64_t *sub_23F05DCB0(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = (a1[2] - v2) >> 3;
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_23EF41D6C();
    }

    v8 = &v6;
    (off_28517C9B0[v4])(&v8, a1 + 3);
  }

  return a1;
}

uint64_t *sub_23F05DD34(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = (a1[2] - v2) >> 3;
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_23EF41D6C();
    }

    v8 = &v6;
    (off_28517C9C0[v4])(&v8, a1 + 3);
  }

  return a1;
}

int **sub_23F05DDB8(int **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 28);
  if (v2 == -1)
  {
    sub_23EF41D6C();
  }

  v12 = &v15;
  v5 = (off_28517C9E0[v2])(&v12, a2 + 24);
  a1[3] = v5;
  v7 = *a2;
  v6 = *(a2 + 8);
  v12 = a1;
  v13 = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v8 >> 2) >= 0x1555555555555556)
    {
      sub_23EF3AE74();
    }

    v14 = -1431655765 * (v8 >> 2);
    if (HIDWORD(v5) == 0xFFFFFFFF)
    {
      sub_23EF41D6C();
    }

    v15 = &v14;
    v9 = (off_28517C9F0[HIDWORD(v5)])(&v15, a1 + 3);
    *a1 = v9;
    a1[1] = v9;
    a1[2] = &v9[12 * v10];
    memmove(v9, v7, v8);
    a1[1] = &v9[v8];
  }

  return a1;
}

int **sub_23F05DEE4(int **a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(a2 + 28);
  if (v2 == -1)
  {
    sub_23EF41D6C();
  }

  v12 = &v15;
  v5 = (off_28517CA00[v2])(&v12, a2 + 24);
  a1[3] = v5;
  v7 = *a2;
  v6 = *(a2 + 8);
  v12 = a1;
  v13 = 0;
  v8 = v6 - v7;
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v8 >> 2) >= 0x1555555555555556)
    {
      sub_23EF3AE74();
    }

    v14 = -1431655765 * (v8 >> 2);
    if (HIDWORD(v5) == 0xFFFFFFFF)
    {
      sub_23EF41D6C();
    }

    v15 = &v14;
    v9 = (off_28517CA10[HIDWORD(v5)])(&v15, a1 + 3);
    *a1 = v9;
    a1[1] = v9;
    a1[2] = &v9[12 * v10];
    memmove(v9, v7, v8);
    a1[1] = &v9[v8];
  }

  return a1;
}

vm_address_t sub_23F05E064(unsigned int **a1)
{
  v1 = (((12 * **a1 + 4095) & 0x1FFFFFF000) * 0x1555555555555556uLL) >> 64;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 12 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t **sub_23F05E108(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = -1431655765 * ((v1[2] - v2) >> 2);
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_23EF41D6C();
      }

      v5 = result;
      v8 = &v6;
      (off_28517C9D0[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

vm_address_t sub_23F05E1F8(unsigned int **a1)
{
  v1 = (((12 * **a1 + 4095) & 0x1FFFFFF000) * 0x1555555555555556uLL) >> 64;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 12 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t **sub_23F05E29C(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = -1431655765 * ((v1[2] - v2) >> 2);
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_23EF41D6C();
      }

      v5 = result;
      v8 = &v6;
      (off_28517C9A0[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

vm_address_t sub_23F05E388(unsigned int **a1)
{
  v1 = (**a1 + 511) & 0x1FFFFFE00;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 8 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t **sub_23F05E410(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = (v1[2] - v2) >> 3;
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_23EF41D6C();
      }

      v5 = result;
      v8 = &v6;
      (off_28517C9C0[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

vm_address_t sub_23F05E4F0(unsigned int **a1)
{
  v1 = (**a1 + 511) & 0x1FFFFFE00;
  address = 0;
  if (vm_allocate(*MEMORY[0x277D85F48], &address, 8 * v1, 1))
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x277D82788], MEMORY[0x277D826E0]);
  }

  return address;
}

uint64_t **sub_23F05E578(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v1[1] = v2;
      v3 = (v1[2] - v2) >> 3;
      v6 = v2;
      v7 = v3;
      v4 = *(v1 + 7);
      if (v4 == -1)
      {
        sub_23EF41D6C();
      }

      v5 = result;
      v8 = &v6;
      (off_28517C9B0[v4])(&v8, v1 + 3);
      return v5;
    }
  }

  return result;
}

void sub_23F05E60C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F05E644(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (*(v1 + 408) == 1 && *(v1 + 407) < 0)
    {
      operator delete(*(v1 + 384));
    }

    sub_23EF505F8(v1);

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F05E6B8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit3viz7TriMesh7PrivateEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit3viz7TriMesh7PrivateEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit3viz7TriMesh7PrivateEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit3viz7TriMesh7PrivateEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_23F05E718()
{
  if ((atomic_load_explicit(&qword_27E3960E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27E3960E8))
  {
    LOBYTE(__p) = 0;
    v2 = 0;
    sub_23F05EBC0(&qword_27E3960C8, &__p);
  }

  return &qword_27E3960C8;
}

void sub_23F05E7BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_27E3960E8);
  _Unwind_Resume(a1);
}

uint64_t sub_23F05E7F0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a1 + 64);
    v8 = v2;
    v9 = v3;
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v4 = *(a1 + 64);
    v8 = *a2;
    v9 = 0;
  }

  result = sub_23F04AEE0(v4, &v8);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = result;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    result = v6;
  }

  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v7;
    }
  }

  return result;
}

void sub_23F05E8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_23EF3AE8C(&a11);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_23F05E914(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 64);
  std::mutex::lock((v3 + 32));
  v4 = sub_23F04A8AC(v3, a2);
  std::mutex::unlock((v3 + 32));
  return v4;
}

uint64_t sub_23F05E980@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 40);
  *a2 = *(result + 32);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_23F05E99C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 40);
  *a2 = *(result + 32);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

std::__shared_weak_count *sub_23F05E9B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 24);
  if (result && (result = std::__shared_weak_count::lock(result)) != 0)
  {
    *a2 = *(a1 + 16);
    a2[1] = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = result;
  }

  return result;
}

std::__shared_weak_count *sub_23F05EA08@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 24);
  if (result && (result = std::__shared_weak_count::lock(result)) != 0)
  {
    *a2 = *(a1 + 16);
    a2[1] = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = result;
  }

  return result;
}

uint64_t sub_23F05EA60(uint64_t a1, uint64_t a2)
{
  v3 = atomic_load((a1 + 176));
  if (v3)
  {
    std::mutex::lock((a1 + 112));
    if ((*(a2 + 48) & 1) == 0)
    {
      v5 = *(a1 + 184);
      *(a2 + 48) = *(a1 + 200);
      *(a2 + 32) = v5;
    }

    std::mutex::unlock((a1 + 112));
  }

  return a2;
}

uint64_t sub_23F05EB1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  std::mutex::lock((v4 + 32));
  v5 = *(v4 + 96);
  for (i = *(v4 + 104); v5 != i; v5 += 2)
  {
    (*(**v5 + 16))(*v5, a2);
  }

  std::mutex::unlock((v4 + 32));
  return a1;
}

void sub_23F05EBC0(void *a1, uint64_t *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(a2 + 24) == 1)
  {
    v2 = *a2;
    *&v4 = a2[1];
    *(&v4 + 7) = *(a2 + 15);
    v3 = *(a2 + 23);
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
  }

  *a1 = &unk_28517CB28;
  a1[1] = &unk_28517CBE8;
  sub_23F05EDD0();
}

void sub_23F05ED90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  if (v19)
  {
    if (v20 < 0)
    {
      operator delete(v18);
    }
  }

  sub_23EFF0CC0(&a9);
  _Unwind_Resume(a1);
}

void sub_23F05F264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if (!v16)
    {
LABEL_3:
      sub_23EF3AE8C(v15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_weak(v16);
  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23F05F2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  std::__shared_weak_count::~__shared_weak_count(v19);
  operator delete(v21);
  sub_23EF3AE8C(v18);
  _Unwind_Resume(a1);
}

void sub_23F05F304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  sub_23EF3AE8C(v16);
  v18 = v15[2].__vftable;
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  sub_23EFF0CC0(&a9);
  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_23F05F358(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = a1;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/VisualLogger.cpp", 245, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v4 = qword_27E396178, v5 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
        v2 = *(v3 + 16);
        goto LABEL_10;
      }
    }

    else
    {
      v4 = qword_27E396178;
      v5 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "p_", 2, &unk_23F3091D6, 0);
    }

    while (v4 != v5);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v8 = *(*v2 + 120);

  return v8();
}

uint64_t sub_23F05F4C0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = a1;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/VisualLogger.cpp", 245, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v4 = qword_27E396178, v5 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
        v2 = *(v3 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v4 = qword_27E396178;
      v5 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "p_", 2, &unk_23F3091D6, 0);
    }

    while (v4 != v5);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v8 = *(*v2 + 120);

  return v8();
}

uint64_t sub_23F05F628(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/VisualLogger.cpp", 245, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1)
      {
        goto LABEL_11;
      }

      v8 = qword_27E396178;
      v9 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = qword_27E396178;
      v9 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_23;
      }
    }

    do
    {
      v11 = *v8;
      v10 = *(v8 + 8);
      v8 += 16;
      v11(v10, "p_", 2, &unk_23F3091D6, 0);
    }

    while (v8 != v9);
    if (byte_27E3961A0)
    {
LABEL_11:
      qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
      v2 = *(a1 + 16);
      v3 = *a2;
      v4 = a2[1];
      v16 = v4;
      if (v4)
      {
        goto LABEL_3;
      }

LABEL_12:
      v17 = 0;
      v5 = *(v2 + 64);
      v18 = v3;
      v19 = 0;
      goto LABEL_13;
    }

LABEL_23:
    abort();
  }

  v3 = *a2;
  v4 = a2[1];
  v16 = v4;
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_3:
  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  v17 = v4;
  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  v5 = *(v2 + 64);
  v18 = v3;
  v19 = v4;
  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_13:
  result = sub_23F04AEE0(v5, &v18);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v13 = result;
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    result = v13;
  }

  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v14 = result;
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    result = v14;
  }

  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = result;
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
      return v15;
    }
  }

  return result;
}

void sub_23F05F89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  sub_23EF3AE8C(&a13);
  sub_23EF3AE8C(&a11);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_23F05F8C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/VisualLogger.cpp", 245, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v5 = qword_27E396178, v6 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
        v3 = *(a1 + 16);
        goto LABEL_10;
      }
    }

    else
    {
      v5 = qword_27E396178;
      v6 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_11;
      }
    }

    do
    {
      v8 = *v5;
      v7 = *(v5 + 8);
      v5 += 16;
      v8(v7, "p_", 2, &unk_23F3091D6, 0);
    }

    while (v5 != v6);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_11:
    abort();
  }

LABEL_10:
  v9 = *(v3 + 64);
  std::mutex::lock((v9 + 32));
  v10 = sub_23F04A8AC(v9, a2);
  std::mutex::unlock((v9 + 32));
  return v10;
}

uint64_t sub_23F05FA2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return v1 + 48;
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/VisualLogger.cpp", 241, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 != 1)
  {
    v4 = qword_27E396178;
    v5 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (byte_27E3961A8 == 1)
  {
    v4 = qword_27E396178;
    v5 = unk_27E396180;
    if (qword_27E396178 != unk_27E396180)
    {
      do
      {
LABEL_8:
        v7 = *v4;
        v6 = *(v4 + 8);
        v4 += 16;
        v7(v6, "p_", 2, &unk_23F3091D6, 0);
      }

      while (v4 != v5);
      if (byte_27E3961A0)
      {
        goto LABEL_10;
      }

LABEL_11:
      abort();
    }
  }

LABEL_10:
  qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
  return *(a1 + 16) + 48;
}

uint64_t sub_23F05FB6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return v1 + 48;
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/VisualLogger.cpp", 245, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 != 1)
  {
    v4 = qword_27E396178;
    v5 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (byte_27E3961A8 == 1)
  {
    v4 = qword_27E396178;
    v5 = unk_27E396180;
    if (qword_27E396178 != unk_27E396180)
    {
      do
      {
LABEL_8:
        v7 = *v4;
        v6 = *(v4 + 8);
        v4 += 16;
        v7(v6, "p_", 2, &unk_23F3091D6, 0);
      }

      while (v4 != v5);
      if (byte_27E3961A0)
      {
        goto LABEL_10;
      }

LABEL_11:
      abort();
    }
  }

LABEL_10:
  qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
  return *(a1 + 16) + 48;
}

uint64_t sub_23F05FCAC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    goto LABEL_10;
  }

  v3 = result;
  v4 = a2;
  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/VisualLogger.cpp", 241, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 != 1)
  {
    v5 = qword_27E396178;
    v6 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (byte_27E3961A8 == 1)
  {
    v5 = qword_27E396178;
    v6 = unk_27E396180;
    if (qword_27E396178 != unk_27E396180)
    {
      do
      {
LABEL_7:
        v8 = *v5;
        v7 = *(v5 + 8);
        v5 += 16;
        v8(v7, "p_", 2, &unk_23F3091D6, 0);
      }

      while (v5 != v6);
      if (byte_27E3961A0)
      {
        goto LABEL_9;
      }

LABEL_13:
      abort();
    }
  }

LABEL_9:
  result = qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
  v2 = *(v3 + 16);
  a2 = v4;
LABEL_10:
  v10 = *(v2 + 32);
  v9 = *(v2 + 40);
  *a2 = v10;
  a2[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_23F05FDF8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    goto LABEL_10;
  }

  v3 = result;
  v4 = a2;
  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/VisualLogger.cpp", 245, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 != 1)
  {
    v5 = qword_27E396178;
    v6 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (byte_27E3961A8 == 1)
  {
    v5 = qword_27E396178;
    v6 = unk_27E396180;
    if (qword_27E396178 != unk_27E396180)
    {
      do
      {
LABEL_7:
        v8 = *v5;
        v7 = *(v5 + 8);
        v5 += 16;
        v8(v7, "p_", 2, &unk_23F3091D6, 0);
      }

      while (v5 != v6);
      if (byte_27E3961A0)
      {
        goto LABEL_9;
      }

LABEL_13:
      abort();
    }
  }

LABEL_9:
  result = qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
  v2 = *(v3 + 16);
  a2 = v4;
LABEL_10:
  v10 = *(v2 + 32);
  v9 = *(v2 + 40);
  *a2 = v10;
  a2[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

std::__shared_weak_count *sub_23F05FF44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    result = *(v3 + 24);
    if (!result)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/VisualLogger.cpp", 241, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1)
    {
      goto LABEL_11;
    }

    v6 = qword_27E396178;
    v7 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = qword_27E396178;
    v7 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_16;
    }
  }

  do
  {
    v9 = *v6;
    v8 = *(v6 + 8);
    v6 += 16;
    v9(v8, "p_", 2, &unk_23F3091D6, 0);
  }

  while (v6 != v7);
  if ((byte_27E3961A0 & 1) == 0)
  {
LABEL_16:
    abort();
  }

LABEL_11:
  qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
  v3 = *(a1 + 16);
  result = *(v3 + 24);
  if (!result)
  {
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

LABEL_12:
  result = std::__shared_weak_count::lock(result);
  if (!result)
  {
    goto LABEL_14;
  }

  v10 = *(v3 + 16);
LABEL_15:
  *a2 = v10;
  a2[1] = result;
  return result;
}

std::__shared_weak_count *sub_23F0600A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    result = *(v3 + 24);
    if (!result)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/VisualLogger.cpp", 245, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 == 1)
  {
    if (byte_27E3961A8 != 1)
    {
      goto LABEL_11;
    }

    v6 = qword_27E396178;
    v7 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = qword_27E396178;
    v7 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_16;
    }
  }

  do
  {
    v9 = *v6;
    v8 = *(v6 + 8);
    v6 += 16;
    v9(v8, "p_", 2, &unk_23F3091D6, 0);
  }

  while (v6 != v7);
  if ((byte_27E3961A0 & 1) == 0)
  {
LABEL_16:
    abort();
  }

LABEL_11:
  qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
  v3 = *(a1 + 16);
  result = *(v3 + 24);
  if (!result)
  {
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

LABEL_12:
  result = std::__shared_weak_count::lock(result);
  if (!result)
  {
    goto LABEL_14;
  }

  v10 = *(v3 + 16);
LABEL_15:
  *a2 = v10;
  a2[1] = result;
  return result;
}

uint64_t sub_23F0601FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return v1 + 176;
  }

  sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/VisualLogger.cpp", 241, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
  if (byte_27E3961A0 != 1)
  {
    v4 = qword_27E396178;
    v5 = unk_27E396180;
    if (qword_27E396178 == unk_27E396180)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (byte_27E3961A8 == 1)
  {
    v4 = qword_27E396178;
    v5 = unk_27E396180;
    if (qword_27E396178 != unk_27E396180)
    {
      do
      {
LABEL_8:
        v7 = *v4;
        v6 = *(v4 + 8);
        v4 += 16;
        v7(v6, "p_", 2, &unk_23F3091D6, 0);
      }

      while (v4 != v5);
      if (byte_27E3961A0)
      {
        goto LABEL_10;
      }

LABEL_11:
      abort();
    }
  }

LABEL_10:
  qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
  return *(a1 + 16) + 176;
}

uint64_t sub_23F06033C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/VisualLogger.cpp", 241, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1)
      {
        goto LABEL_11;
      }

      v6 = qword_27E396178;
      v7 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = qword_27E396178;
      v7 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_16;
      }
    }

    do
    {
      v9 = *v6;
      v8 = *(v6 + 8);
      v6 += 16;
      v9(v8, "p_", 2, &unk_23F3091D6, 0);
    }

    while (v6 != v7);
    if (byte_27E3961A0)
    {
LABEL_11:
      qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
      v3 = *(a1 + 16);
      v10 = atomic_load((v3 + 176));
      if ((v10 & 1) == 0)
      {
        return a2;
      }

      goto LABEL_12;
    }

LABEL_16:
    abort();
  }

  v4 = atomic_load((v3 + 176));
  if ((v4 & 1) == 0)
  {
    return a2;
  }

LABEL_12:
  std::mutex::lock((v3 + 112));
  if ((*(a2 + 48) & 1) == 0)
  {
    v11 = *(v3 + 184);
    *(a2 + 48) = *(v3 + 200);
    *(a2 + 32) = v11;
  }

  std::mutex::unlock((v3 + 112));
  return a2;
}

uint64_t sub_23F0604B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = a1;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/VisualLogger.cpp", 241, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v4 = qword_27E396178, v5 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
        v2 = *(v3 + 16);
        goto LABEL_10;
      }
    }

    else
    {
      v4 = qword_27E396178;
      v5 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "p_", 2, &unk_23F3091D6, 0);
    }

    while (v4 != v5);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v8 = *(*v2 + 128);

  return v8();
}

uint64_t sub_23F06060C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = a1;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/VisualLogger.cpp", 241, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v4 = qword_27E396178, v5 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
        v2 = *(v3 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v4 = qword_27E396178;
      v5 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "p_", 2, &unk_23F3091D6, 0);
    }

    while (v4 != v5);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v8 = *(*v2 + 128);

  return v8();
}

uint64_t sub_23F060764(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = a1;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/VisualLogger.cpp", 245, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v4 = qword_27E396178, v5 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
        v2 = *(v3 + 16);
        goto LABEL_10;
      }
    }

    else
    {
      v4 = qword_27E396178;
      v5 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "p_", 2, &unk_23F3091D6, 0);
    }

    while (v4 != v5);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v8 = *(*v2 + 136);

  return v8();
}

uint64_t sub_23F0608CC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = a1;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/VisualLogger.cpp", 245, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v4 = qword_27E396178, v5 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
        v2 = *(v3 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v4 = qword_27E396178;
      v5 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "p_", 2, &unk_23F3091D6, 0);
    }

    while (v4 != v5);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v8 = *(*v2 + 136);

  return v8();
}

uint64_t sub_23F060A34(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = a1;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/VisualLogger.cpp", 245, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v4 = qword_27E396178, v5 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
        v2 = *(v3 + 16);
        goto LABEL_10;
      }
    }

    else
    {
      v4 = qword_27E396178;
      v5 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "p_", 2, &unk_23F3091D6, 0);
    }

    while (v4 != v5);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v8 = *(*v2 + 144);

  return v8();
}

uint64_t sub_23F060B9C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v3 = a1;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/VisualLogger.cpp", 245, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v4 = qword_27E396178, v5 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
        v2 = *(v3 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v4 = qword_27E396178;
      v5 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v7 = *v4;
      v6 = *(v4 + 8);
      v4 += 16;
      v7(v6, "p_", 2, &unk_23F3091D6, 0);
    }

    while (v4 != v5);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v8 = *(*v2 + 144);

  return v8();
}

void *sub_23F060D04(uint64_t a1, char *a2, size_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    v5 = a2;
    v6 = a3;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/VisualLogger.cpp", 245, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v7 = qword_27E396178, v8 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
        v3 = *(a1 + 16);
        a3 = v6;
        a2 = v5;
        goto LABEL_10;
      }
    }

    else
    {
      v7 = qword_27E396178;
      v8 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "p_", 2, &unk_23F3091D6, 0);
    }

    while (v7 != v8);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v11 = *(v3 + 32);

  return sub_23F05197C(v11, a2, a3);
}

void *sub_23F060E54(uint64_t a1, char *a2, size_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v5 = a2;
    v6 = a3;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/VisualLogger.cpp", 245, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v7 = qword_27E396178, v8 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
        v3 = *(a1 + 8);
        a3 = v6;
        a2 = v5;
        goto LABEL_10;
      }
    }

    else
    {
      v7 = qword_27E396178;
      v8 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "p_", 2, &unk_23F3091D6, 0);
    }

    while (v7 != v8);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v11 = *(v3 + 32);

  return sub_23F05197C(v11, a2, a3);
}

unint64_t sub_23F060FA4(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    v5 = a2;
    v6 = a3;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/VisualLogger.cpp", 241, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v7 = qword_27E396178, v8 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
        v3 = *(a1 + 16);
        a3 = v6;
        a2 = v5;
        goto LABEL_10;
      }
    }

    else
    {
      v7 = qword_27E396178;
      v8 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "p_", 2, &unk_23F3091D6, 0);
    }

    while (v7 != v8);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v11 = *(v3 + 32);

  return sub_23F051AF8(v11, a2, a3);
}

unint64_t sub_23F0610F4(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v5 = a2;
    v6 = a3;
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/VisualLogger.cpp", 241, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v7 = qword_27E396178, v8 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
        v3 = *(a1 + 8);
        a3 = v6;
        a2 = v5;
        goto LABEL_10;
      }
    }

    else
    {
      v7 = qword_27E396178;
      v8 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "p_", 2, &unk_23F3091D6, 0);
    }

    while (v7 != v8);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v11 = *(v3 + 32);

  return sub_23F051AF8(v11, a2, a3);
}

uint64_t sub_23F061244(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/VisualLogger.cpp", 241, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
        v1 = *(a1 + 16);
        goto LABEL_10;
      }
    }

    else
    {
      v3 = qword_27E396178;
      v4 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v6 = *v3;
      v5 = *(v3 + 8);
      v3 += 16;
      v6(v5, "p_", 2, &unk_23F3091D6, 0);
    }

    while (v3 != v4);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v7 = *(**(v1 + 32) + 64);

  return v7();
}

uint64_t sub_23F0613B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/VisualLogger.cpp", 241, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v3 = qword_27E396178, v4 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
        v1 = *(a1 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v3 = qword_27E396178;
      v4 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v6 = *v3;
      v5 = *(v3 + 8);
      v3 += 16;
      v6(v5, "p_", 2, &unk_23F3091D6, 0);
    }

    while (v3 != v4);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v7 = *(**(v1 + 32) + 64);

  return v7();
}

uint64_t sub_23F061524(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    sub_23F3034A8("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Visualization/src/VisualLogger.cpp", 245, "p_", 2uLL, &unk_23F3091D6, 0, sub_23F303DA4);
    if (byte_27E3961A0 == 1)
    {
      if (byte_27E3961A8 != 1 || (v5 = qword_27E396178, v6 = unk_27E396180, qword_27E396178 == unk_27E396180))
      {
LABEL_9:
        qword_27E396190(*algn_27E396198, "p_", 2, &unk_23F3091D6, 0);
        v4 = *(a1 + 16);
        goto LABEL_10;
      }
    }

    else
    {
      v5 = qword_27E396178;
      v6 = unk_27E396180;
      if (qword_27E396178 == unk_27E396180)
      {
        goto LABEL_13;
      }
    }

    do
    {
      v8 = *v5;
      v7 = *(v5 + 8);
      v5 += 16;
      v8(v7, "p_", 2, &unk_23F3091D6, 0);
    }

    while (v5 != v6);
    if (byte_27E3961A0)
    {
      goto LABEL_9;
    }

LABEL_13:
    abort();
  }

LABEL_10:
  v9 = *(v4 + 64);
  std::mutex::lock((v9 + 32));
  v10 = *(v9 + 96);
  for (i = *(v9 + 104); v10 != i; v10 += 2)
  {
    (*(**v10 + 16))(*v10, a2);
  }

  std::mutex::unlock((v9 + 32));
  return a1;
}

void sub_23F0616C8(uint64_t a1)
{
  sub_23F061A8C(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F061708(uint64_t a1)
{
  sub_23F061A8C(a1 - 8);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F061744(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_23F0617BC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

void sub_23F061848(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_23F0618C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CACD00);
}

void sub_23F061974(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28517CDB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F061A10(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28517CE08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F061A8C(uint64_t a1)
{
  *a1 = &unk_28517CC78;
  *(a1 + 8) = &unk_28517CD30;
  std::mutex::~mutex((a1 + 112));
  if (*(a1 + 104) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = *(a1 + 72);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 40);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_23F061BAC(_BYTE *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[8] = 0;
  v2 = *a2;
  operator new();
}

void sub_23F061CBC(_Unwind_Exception *a1)
{
  sub_23F063F0C(*(v1 + 176));
  std::mutex::~mutex(v4);
  sub_23F061EB0(v3);
  sub_23EF3AE8C(v2);
  if (*(v1 + 24) == 1)
  {
    sub_23F2D8E74((v1 + 16));
    if (*(v1 + 8) != 1)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (*(v1 + 8) != 1)
  {
    goto LABEL_3;
  }

  sub_23F2D8E1C(v1);
  _Unwind_Resume(a1);
}

void sub_23F061E48(_Unwind_Exception *a1)
{
  sub_23F063F0C(*(v1 + 176));
  std::mutex::~mutex(v5);
  sub_23F061EB0(v4);
  sub_23EF3AE8C(v3);
  if (*(v1 + 24) == 1)
  {
    sub_23F2D8E74(v2);
    if (*(v1 + 8) != 1)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (*(v1 + 8) != 1)
  {
    goto LABEL_3;
  }

  sub_23F2D8E1C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_23F061EB0(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    v1 = *(result + 8);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = result;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        return v2;
      }
    }
  }

  return result;
}

uint64_t sub_23F061F2C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v7 = -1;
  if (*(a2 + 23) < 0)
  {
    sub_23EF34EA4(&v5, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    v6 = *(a2 + 2);
  }

  v7 = 1;
  v8 = &v5;
  v9 = ", but contains ";
  v10 = &v5;
  v11 = ", but contains ";
  v12 = ", but contains ";
  sub_23F064398(&v10, &v5);
  if (*(a3 + 24) == 1)
  {
    v8 = &v5;
    v9 = a3;
    v10 = &v5;
    v11 = a3;
    v12 = a3;
    if (v7 != -1)
    {
      v13 = &v8;
      (off_28517CE98[v7])(&v13, &v5);
      goto LABEL_9;
    }

LABEL_13:
    sub_23EF41D6C();
  }

  v8 = &v5;
  v9 = "nullopt";
  v10 = &v5;
  v11 = "nullopt";
  v12 = "nullopt";
  if (v7 == -1)
  {
    goto LABEL_13;
  }

  v13 = &v8;
  (off_28517CEC8[v7])(&v13, &v5);
LABEL_9:
  if (v7 == -1)
  {
    sub_23EF41D6C();
  }

  v8 = &v13;
  result = (off_28517CEE0[v7])(&v8, &v5);
  if (v7 != -1)
  {
    return (off_28517CEB0[v7])(&v8, &v5);
  }

  return result;
}

void sub_23F062104(int a1, CFTypeRef cf, int a3)
{
  if (cf)
  {
    if (a3)
    {
      v3 = cf;
      CFRetain(cf);
      cf = v3;
    }
  }

  sub_23F064058(&v4, cf);
}

uint64_t sub_23F0621C4(uint64_t a1, std::mutex **a2)
{
  if (a2)
  {
    v4 = 0;
    LOBYTE(v11) = 0;
    v13 = 0;
    v5 = *(a1 + 32);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (!*(a1 + 184))
    {
      v8[0] = 0;
      v8[1] = 0;
      v9 = 1;
      if (a2)
      {
        v7 = a2;
      }

      else
      {
        v7 = &v11;
      }

      sub_23F06231C(&v10, a1, v8, v7);
    }

    v5 = *(*(a1 + 168) + 56);
    if ((v4 & 1) == 0)
    {
      return v5;
    }

    goto LABEL_13;
  }

  std::mutex::lock((a1 + 104));
  v11 = (a1 + 104);
  v4 = 1;
  v12 = 1;
  v13 = 1;
  v5 = *(a1 + 32);
  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 1) == 0)
  {
    return v5;
  }

LABEL_13:
  std::mutex::unlock(v11);
  return v5;
}

void sub_23F0622F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::mutex *a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  if ((a17 & 1) != 0 && a15 == 1)
  {
    std::mutex::unlock(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F06231C(uint64_t a1, std::once_flag::_State_type *a2, unsigned int *a3, uint64_t a4)
{
  if ((a2[12] & 1) != 0 || *(a2 + 24) == 1)
  {
    v9 = a2;
    v10 = &v11;
    v11 = a4;
    if (atomic_load_explicit(a2 + 10, memory_order_acquire) != -1)
    {
      v13 = &v9;
      v12 = &v13;
      std::__call_once(a2 + 10, &v12, sub_23F0648A8);
    }

    v6 = a2[2];
    sub_23F2D7DC4(a3, &v8);
  }

  v9 = a2;
  v10 = &v11;
  v11 = a4;
  if (atomic_load_explicit(a2 + 9, memory_order_acquire) != -1)
  {
    v13 = &v9;
    v12 = &v13;
    std::__call_once(a2 + 9, &v12, sub_23F0645A4);
  }

  v7 = *a2;
  sub_23F2D765C(a3, &v8);
}

void sub_23F062670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_23F0633AC(&a9);
  sub_23EF3AE8C(&a14);
  _Unwind_Resume(a1);
}

void sub_23F06268C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23F0626A8(uint64_t a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_23F064D7C();
  }

  if (*(a1 + 8) == 1)
  {
    sub_23F064FA8();
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_23F0651D4();
  }

  v3 = *(v2 + 8);
  if (*(v2 + 23) >= 0)
  {
    v4 = *(v2 + 23);
  }

  else
  {
    v2 = *v2;
    v4 = v3;
  }

  return sub_23EF2F9B0(a2, v2, v4);
}

uint64_t sub_23F062774(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 96) == 1 && *(a2 + 96) == 1)
  {
    v4 = (a1 + 80);
    v9 = a1;
    v10 = &v11;
    v11 = 0;
    if (atomic_load_explicit((a1 + 80), memory_order_acquire) != -1)
    {
      v13 = &v9;
      v12 = &v13;
      std::__call_once(v4, &v12, sub_23F0648A8);
    }

    v10 = &v11;
    v11 = 0;
    v9 = a2;
    if (atomic_load_explicit((a2 + 80), memory_order_acquire) != -1)
    {
      v13 = &v9;
      v12 = &v13;
      std::__call_once((a2 + 80), &v12, sub_23F0648A8);
    }

    return sub_23F2D92D8(*(a1 + 16), *(a2 + 16));
  }

  else if (*(a1 + 64) == 1 && *(a2 + 64) == 1)
  {
    v6 = (a1 + 48);
    v7 = a2 + 48;

    return sub_23F0631BC(v6, v7);
  }

  else
  {
    v8 = (a1 + 72);
    v9 = a1;
    v10 = &v11;
    v11 = 0;
    if (atomic_load_explicit((a1 + 72), memory_order_acquire) != -1)
    {
      v13 = &v9;
      v12 = &v13;
      std::__call_once(v8, &v12, sub_23F0645A4);
    }

    v10 = &v11;
    v11 = 0;
    v9 = a2;
    if (atomic_load_explicit((a2 + 72), memory_order_acquire) != -1)
    {
      v13 = &v9;
      v12 = &v13;
      std::__call_once((a2 + 72), &v12, sub_23F0645A4);
    }

    return sub_23F2D8ECC(*a1, *a2);
  }
}

void sub_23F062A38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F2D8E74(va);
  MEMORY[0x245CACD00](v2, v3);
  _Unwind_Resume(a1);
}

uint64_t ***sub_23F062A70(uint64_t ***a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_23F063424(v2);
    MEMORY[0x245CACD00](v4, 0x10E2C40590DAB7CLL);
    return v3;
  }

  return v1;
}

void sub_23F062F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v39 - 65) < 0)
  {
    operator delete(*(v39 - 88));
  }

  if (a26 == 1 && a25 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(&a18);
  if (a32 < 0)
  {
    operator delete(a27);
    if ((v38 & 1) == 0)
    {
LABEL_11:
      sub_23F063F0C(*(v32 + 176));
      std::mutex::~mutex(v36);
      sub_23F061EB0(v35);
      sub_23EF3AE8C(v34);
      if (*(v32 + 24) == 1)
      {
        sub_23F2D8E74(v33);
      }

      if (*(v32 + 8) == 1)
      {
        sub_23F2D8E1C(v32);
      }

      sub_23EF3AE8C(&a14);
      MEMORY[0x245CACD00](v32, 0x10E2C40590DAB7CLL);
      sub_23EF3AE8C(&a9);
      _Unwind_Resume(a1);
    }
  }

  else if (!v38)
  {
    goto LABEL_11;
  }

  __cxa_free_exception(v37);
  goto LABEL_11;
}

uint64_t sub_23F063074(void *a1)
{
  v1 = *a1;
  v2 = (*a1 + 72);
  v4[0] = v1;
  v4[1] = &v5;
  v5 = 0;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v7 = v4;
    v6 = &v7;
    std::__call_once(v2, &v6, sub_23F0645A4);
  }

  return v1;
}

uint64_t sub_23F0630E4(void *a1)
{
  v1 = *a1;
  v2 = (*a1 + 80);
  v4[0] = v1;
  v4[1] = &v5;
  v5 = 0;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v7 = v4;
    v6 = &v7;
    std::__call_once(v2, &v6, sub_23F0648A8);
  }

  return v1 + 16;
}

uint64_t sub_23F063154(void *a1)
{
  v1 = *a1;
  v2 = (*a1 + 88);
  v4 = v1;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v6 = &v4;
    v5 = &v6;
    std::__call_once(v2, &v5, sub_23F064BAC);
  }

  return v1 + 48;
}

BOOL sub_23F0631BC(const void **a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_9:
      v8 = *a1;
      goto LABEL_10;
    }
  }

  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  v7 = *a2;
  v6 = *(a2 + 8);
  if (v6 && (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v8 = *a1;
    if (v7)
    {
      return CFEqual(v8, *a2) != 0;
    }
  }

  else
  {
    v8 = *a1;
    if (v7)
    {
      return CFEqual(v8, *a2) != 0;
    }
  }

LABEL_10:
  v10 = a1[1];
  if (v10 && (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v11 = v8;
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (v11)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v13 = *a2;
  v12 = *(a2 + 8);
  if (!v12)
  {
    return v13 == 0;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v13 == 0;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  return v13 == 0;
}

uint64_t sub_23F0633AC(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t **sub_23F063424(uint64_t **a1)
{
  sub_23F063F0C(a1[22]);
  std::mutex::~mutex((a1 + 13));
  if (*(a1 + 64) == 1)
  {
    v2 = a1[7];
    if (v2)
    {
      if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v2->__on_zero_shared)(v2);
        std::__shared_weak_count::__release_weak(v2);
      }
    }
  }

  v3 = a1[5];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (*(a1 + 24) != 1)
    {
      goto LABEL_11;
    }
  }

  else if (*(a1 + 24) != 1)
  {
    goto LABEL_11;
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    sub_23F0655DC(v4 + 1, *v4);
    MEMORY[0x245CACD00](v4, 0x1022C40B06DCE69);
  }

LABEL_11:
  if (*(a1 + 8) == 1)
  {
    v5 = *a1;
    *a1 = 0;
    if (v5)
    {
      sub_23F06357C(v5 + 1, *v5);
      MEMORY[0x245CACD00](v5, 0x1022C40B06DCE69);
    }
  }

  return a1;
}

void sub_23F06357C(uint64_t *a1, int a2)
{
  v2 = a1;
  __p = 0;
  v68 = 0;
  v69 = 0;
  if (a2 == 1)
  {
    v6 = *(*a1 + 16);
    if (v6)
    {
      if (!(v6 >> 60))
      {
        operator new();
      }

LABEL_114:
      sub_23F063D28();
    }

    v3 = 0;
    v9 = *v2 + 8;
    v10 = **v2;
    if (v10 != v9)
    {
      do
      {
        if (v3 >= v69)
        {
          v3 = sub_23F063D40(&__p, (v10 + 7));
        }

        else
        {
          *v3 = *(v10 + 56);
          *(v3 + 1) = v10[8];
          *(v10 + 56) = 0;
          v10[8] = 0;
          v3 += 16;
        }

        v68 = v3;
        v12 = v10[1];
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
            v13 = v10[2];
            v14 = *v13 == v10;
            v10 = v13;
          }

          while (!v14);
        }

        v10 = v13;
      }

      while (v13 != v9);
    }
  }

  else
  {
    v3 = 0;
    if (a2 == 2)
    {
      v4 = **v2;
      v5 = *(*v2 + 8);
      if (v5 != v4)
      {
        if (((v5 - v4) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_114;
      }

      v3 = 0;
      v8 = **v2;
      v7 = *(*v2 + 8);
      while (v8 != v7)
      {
        if (v3 < v69)
        {
          *v3 = *v8;
          *(v3 + 1) = *(v8 + 8);
          *v8 = 0;
          *(v8 + 8) = 0;
          v3 += 16;
        }

        else
        {
          v3 = sub_23F063D40(&__p, v8);
        }

        v68 = v3;
        v8 += 16;
      }
    }
  }

  v11 = __p;
  if (__p != v3)
  {
    v63 = v2;
    do
    {
      v65 = *(v3 - 16);
      v66 = *(v3 - 1);
      *(v3 - 16) = 0;
      *(v3 - 1) = 0;
      v16 = v68 - 16;
      sub_23F06357C(v68 - 8, *(v68 - 16));
      v68 = v16;
      if (v65 == 1)
      {
        v15 = v66;
        v32 = v66 + 1;
        v33 = *v66;
        if (*v66 != v66 + 1)
        {
          do
          {
            if (v16 >= v69)
            {
              v34 = __p;
              v35 = (v16 - __p) >> 4;
              v36 = v35 + 1;
              if ((v35 + 1) >> 60)
              {
                goto LABEL_114;
              }

              v37 = v69 - __p;
              if ((v69 - __p) >> 3 > v36)
              {
                v36 = v37 >> 3;
              }

              if (v37 >= 0x7FFFFFFFFFFFFFF0)
              {
                v38 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v38 = v36;
              }

              if (v38)
              {
                if (!(v38 >> 60))
                {
                  operator new();
                }

LABEL_115:
                sub_23EF34E18();
              }

              v39 = (v16 - __p) >> 4;
              v40 = 16 * v35;
              *v40 = *(v33 + 56);
              *(v40 + 8) = v33[8];
              *(v33 + 56) = 0;
              v33[8] = 0;
              v41 = (v40 - 16 * v39);
              if (v34 != v16)
              {
                v42 = v34;
                v43 = v41;
                do
                {
                  *v43 = *v42;
                  v43[1] = *(v42 + 1);
                  *v42 = 0;
                  *(v42 + 1) = 0;
                  v42 += 16;
                  v43 += 2;
                }

                while (v42 != v16);
                v44 = v34;
                do
                {
                  v45 = *v44;
                  v44 += 16;
                  sub_23F06357C(v34 + 8, v45);
                  v34 = v44;
                }

                while (v44 != v16);
                v34 = __p;
              }

              v16 = (v40 + 16);
              __p = v41;
              v68 = (v40 + 16);
              v69 = 0;
              if (v34)
              {
                operator delete(v34);
              }
            }

            else
            {
              *v16 = *(v33 + 56);
              *(v16 + 1) = v33[8];
              *(v33 + 56) = 0;
              v33[8] = 0;
              v16 += 16;
            }

            v68 = v16;
            v46 = v33[1];
            if (v46)
            {
              do
              {
                v47 = v46;
                v46 = *v46;
              }

              while (v46);
            }

            else
            {
              do
              {
                v47 = v33[2];
                v14 = *v47 == v33;
                v33 = v47;
              }

              while (!v14);
            }

            v33 = v47;
          }

          while (v47 != v32);
          v15 = v66;
        }

        sub_23F063E7C(v15, *(v15 + 8));
        *v15 = v15 + 8;
        *(v15 + 16) = 0;
        *(v15 + 8) = 0;
      }

      else if (v65 == 2)
      {
        v17 = v66;
        v18 = *v66;
        v19 = v66[1];
        if (*v66 != v19)
        {
          do
          {
            if (v16 < v69)
            {
              *v16 = *v18;
              *(v16 + 1) = *(v18 + 8);
              *v18 = 0;
              *(v18 + 8) = 0;
              v16 += 16;
            }

            else
            {
              v20 = __p;
              v21 = (v16 - __p) >> 4;
              v22 = v21 + 1;
              if ((v21 + 1) >> 60)
              {
                goto LABEL_114;
              }

              v23 = v69 - __p;
              if ((v69 - __p) >> 3 > v22)
              {
                v22 = v23 >> 3;
              }

              if (v23 >= 0x7FFFFFFFFFFFFFF0)
              {
                v24 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v24 = v22;
              }

              if (v24)
              {
                if (!(v24 >> 60))
                {
                  operator new();
                }

                goto LABEL_115;
              }

              v25 = 16 * v21;
              *v25 = *v18;
              *(v25 + 8) = *(v18 + 8);
              *v18 = 0;
              *(v18 + 8) = 0;
              v26 = v68;
              v27 = (16 * v21 + v20 - v68);
              if (v20 != v68)
              {
                v28 = v20;
                v29 = v25 + v20 - v68;
                do
                {
                  *v29 = *v28;
                  *(v29 + 8) = *(v28 + 1);
                  *v28 = 0;
                  *(v28 + 1) = 0;
                  v28 += 16;
                  v29 += 16;
                }

                while (v28 != v26);
                v30 = v20;
                do
                {
                  v31 = *v30;
                  v30 += 16;
                  sub_23F06357C(v20 + 8, v31);
                  v20 = v30;
                }

                while (v30 != v26);
                v20 = __p;
              }

              v16 = (v25 + 16);
              __p = v27;
              v68 = v16;
              v69 = 0;
              if (v20)
              {
                operator delete(v20);
              }
            }

            v68 = v16;
            v18 += 16;
          }

          while (v18 != v19);
          v17 = v66;
          v18 = *v66;
          v48 = v66[1];
          if (v48 != *v66)
          {
            v49 = v48 - 8;
            do
            {
              v50 = v49 - 8;
              sub_23F06357C(v49, *(v49 - 8));
              v49 -= 16;
            }

            while (v50 != v18);
          }
        }

        v17[1] = v18;
      }

      sub_23F06357C(&v66, v65);
      v11 = __p;
      v3 = v68;
    }

    while (__p != v68);
    v2 = v63;
  }

  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      sub_23F063E7C(*v2, *(*v2 + 8));
LABEL_105:
      v51 = *v2;
      goto LABEL_106;
    }

    if (a2 != 2)
    {
      goto LABEL_107;
    }

    v51 = *v2;
    v52 = **v2;
    if (!v52)
    {
      goto LABEL_106;
    }

    v53 = v51[1];
    v54 = **v2;
    if (v53 != v52)
    {
      v55 = *v2;
      v56 = v53 - 8;
      do
      {
        v57 = (v56 - 8);
        sub_23F06357C(v56, *(v56 - 8));
        v56 -= 16;
      }

      while (v57 != v52);
      v51 = v55;
      v54 = *v55;
    }

    v51[1] = v52;
    v58 = v54;
LABEL_104:
    operator delete(v58);
    goto LABEL_105;
  }

  if (a2 == 3)
  {
    v51 = *v2;
    if (*(*v2 + 23) < 0)
    {
      v58 = *v51;
      goto LABEL_104;
    }
  }

  else
  {
    if (a2 != 8)
    {
      goto LABEL_107;
    }

    v51 = *v2;
    v59 = **v2;
    if (v59)
    {
      v51[1] = v59;
      v58 = v59;
      goto LABEL_104;
    }
  }

LABEL_106:
  operator delete(v51);
  v11 = __p;
LABEL_107:
  if (v11)
  {
    v60 = v11;
    if (v68 != v11)
    {
      v61 = (v68 - 8);
      do
      {
        v62 = v61 - 8;
        sub_23F06357C(v61, *(v61 - 8));
        v61 -= 16;
      }

      while (v62 != v11);
      v60 = __p;
    }

    v68 = v11;
    operator delete(v60);
  }
}

uint64_t sub_23F063D40(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_23F063D28();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v7 = 16 * v2;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = *a1;
  v9 = a1[1];
  v10 = 16 * v2 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = 16 * v2 + *a1 - v9;
    do
    {
      *v12 = *v11;
      *(v12 + 8) = *(v11 + 1);
      *v11 = 0;
      *(v11 + 1) = 0;
      v11 += 16;
      v12 += 16;
    }

    while (v11 != v9);
    v13 = v8;
    do
    {
      v14 = *v13;
      v13 += 16;
      sub_23F06357C(v8 + 8, v14);
      v8 = v13;
    }

    while (v13 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = 16 * v2 + 16;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return 16 * v2 + 16;
}

void sub_23F063E7C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_23F063E7C(a1, *a2);
    sub_23F063E7C(a1, *(a2 + 1));
    sub_23F06357C(a2 + 64, a2[56]);
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

void sub_23F063F0C(void *a1)
{
  if (a1)
  {
    sub_23F063F0C(*a1);
    sub_23F063F0C(a1[1]);
    v2 = a1[8];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

void sub_23F063FE8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28517CE58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F06403C(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void sub_23F06425C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_23EF3AE8C(v15);
  _Unwind_Resume(a1);
}

void sub_23F0642DC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F064314(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_23F064338(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK10__CFStringEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK10__CFStringEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK10__CFStringEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK10__CFStringEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_23F064398(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_23EF2F8F4();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_28517CEB0[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_23EF42150(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_23F064558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_23EF2F99C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0645A4(uint64_t ***a1)
{
  v1 = **a1;
  v3 = *v1;
  v2 = v1[1];
  if (!*(v3 + 32) && *(v3 + 24) != 1)
  {
    sub_23EF4652C(&v5, v3 + 48);
  }

  v4 = sub_23F0621C4(v3, *v2);
  sub_23F2D86F4(v4);
}

void sub_23F06484C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  MEMORY[0x245CACD00](v3, v2);
  sub_23F2D8E1C(va1);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F064880(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F064894(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F2D8E1C(va);
  _Unwind_Resume(a1);
}

void sub_23F0648A8(uint64_t ***a1)
{
  v1 = **a1;
  v3 = *v1;
  v2 = v1[1];
  if (!*(v3 + 32) && *(v3 + 8) != 1)
  {
    sub_23EF4652C(&v5, v3 + 48);
  }

  v4 = sub_23F0621C4(v3, *v2);
  sub_23F2D883C(v4);
}

void sub_23F064B50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  MEMORY[0x245CACD00](v3, v2);
  sub_23F2D8E74(va1);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F064B84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F064B98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F2D8E74(va);
  _Unwind_Resume(a1);
}

void sub_23F064BAC(uint64_t ***a1)
{
  v1 = ***a1;
  if (*(v1 + 96) == 1)
  {
    v2 = ***a1;
    v3 = &v4;
    v4 = 0;
    if (atomic_load_explicit((v1 + 80), memory_order_acquire) != -1)
    {
      v6 = &v2;
      v5 = &v6;
      std::__call_once((v1 + 80), &v5, sub_23F0648A8);
    }

    v6 = *(v1 + 16);
    sub_23F06BE40(&v6);
  }

  v2 = ***a1;
  v3 = &v4;
  v4 = 0;
  if (atomic_load_explicit((v1 + 72), memory_order_acquire) != -1)
  {
    v6 = &v2;
    v5 = &v6;
    std::__call_once((v1 + 72), &v5, sub_23F0645A4);
  }

  v6 = *v1;
  sub_23F06BD34(&v6);
}

void sub_23F064F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F065178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F0653A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F065420(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28517CF08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F065474(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void sub_23F065490(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t **sub_23F0654C8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_23F063424(result);

    JUMPOUT(0x245CACD00);
  }

  return result;
}

uint64_t sub_23F06550C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit4dict10Dictionary7PrivateEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit4dict10Dictionary7PrivateEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit4dict10Dictionary7PrivateEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit4dict10Dictionary7PrivateEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23F06556C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = v3;
      v3 -= 5;
      sub_23F0655DC(v5 - 1, *(v5 - 16));
      if (*(v5 - 17) < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void sub_23F0655DC(uint64_t **a1, int a2)
{
  v2 = a1;
  __p = 0;
  v66 = 0;
  v67 = 0;
  if (a2 == 1)
  {
    v6 = (*a1)[1] - **a1;
    if (v6)
    {
      if (!((0xCCCCCCCCCCCCCCCDLL * (v6 >> 3)) >> 60))
      {
        operator new();
      }

LABEL_111:
      sub_23F063D28();
    }

    v3 = 0;
    v9 = **v2;
    v10 = (*v2)[1];
    if (v9 != v10)
    {
      v11 = v9 + 24;
      do
      {
        if (v3 < v67)
        {
          *v3 = *v11;
          *(v3 + 1) = *(v11 + 8);
          *v11 = 0;
          *(v11 + 8) = 0;
          v3 += 16;
        }

        else
        {
          v3 = sub_23F065DA8(&__p, v11);
        }

        v66 = v3;
        v12 = v11 + 16;
        v11 += 40;
      }

      while (v12 != v10);
    }
  }

  else
  {
    v3 = 0;
    if (a2 == 2)
    {
      v4 = **v2;
      v5 = (*v2)[1];
      if (v5 != v4)
      {
        if (((v5 - v4) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_111;
      }

      v3 = 0;
      v8 = **v2;
      v7 = (*v2)[1];
      while (v8 != v7)
      {
        if (v3 < v67)
        {
          *v3 = *v8;
          *(v3 + 1) = *(v8 + 8);
          *v8 = 0;
          *(v8 + 8) = 0;
          v3 += 16;
        }

        else
        {
          v3 = sub_23F065DA8(&__p, v8);
        }

        v66 = v3;
        v8 += 16;
      }
    }
  }

  v13 = __p;
  if (__p == v3)
  {
    goto LABEL_81;
  }

  v61 = v2;
  do
  {
    v63 = *(v3 - 16);
    v64 = *(v3 - 1);
    *(v3 - 16) = 0;
    *(v3 - 1) = 0;
    v14 = v66 - 16;
    sub_23F0655DC(v66 - 8, *(v66 - 16));
    v66 = v14;
    if (v63 == 1)
    {
      v15 = v64;
      v16 = *v64;
      v30 = v64[1];
      if (*v64 != v30)
      {
        do
        {
          if (v14 < v67)
          {
            *v14 = *(v16 + 24);
            *(v14 + 1) = v16[4];
            *(v16 + 24) = 0;
            v16[4] = 0;
            v14 += 16;
          }

          else
          {
            v31 = __p;
            v32 = (v14 - __p) >> 4;
            v33 = v32 + 1;
            if ((v32 + 1) >> 60)
            {
              goto LABEL_111;
            }

            v34 = v67 - __p;
            if ((v67 - __p) >> 3 > v33)
            {
              v33 = v34 >> 3;
            }

            if (v34 >= 0x7FFFFFFFFFFFFFF0)
            {
              v35 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v33;
            }

            if (v35)
            {
              if (!(v35 >> 60))
              {
                operator new();
              }

LABEL_112:
              sub_23EF34E18();
            }

            v36 = (v14 - __p) >> 4;
            v37 = 16 * v32;
            *v37 = *(v16 + 24);
            *(v37 + 8) = v16[4];
            *(v16 + 24) = 0;
            v16[4] = 0;
            v38 = (v37 - 16 * v36);
            if (v31 != v14)
            {
              v39 = v31;
              v40 = v38;
              do
              {
                *v40 = *v39;
                v40[1] = *(v39 + 1);
                *v39 = 0;
                *(v39 + 1) = 0;
                v39 += 16;
                v40 += 2;
              }

              while (v39 != v14);
              v41 = v31;
              do
              {
                v42 = *v41;
                v41 += 16;
                sub_23F0655DC(v31 + 8, v42);
                v31 = v41;
              }

              while (v41 != v14);
              v31 = __p;
            }

            v14 = (v37 + 16);
            __p = v38;
            v66 = (v37 + 16);
            v67 = 0;
            if (v31)
            {
              operator delete(v31);
            }
          }

          v66 = v14;
          v16 += 5;
        }

        while (v16 != v30);
        v15 = v64;
        v16 = *v64;
        v30 = v64[1];
      }

      while (v30 != v16)
      {
        v46 = v30;
        v30 -= 5;
        sub_23F0655DC(v46 - 1, *(v46 - 16));
        if (*(v46 - 17) < 0)
        {
          operator delete(*v30);
        }
      }

      goto LABEL_23;
    }

    if (v63 == 2)
    {
      v15 = v64;
      v16 = *v64;
      v17 = v64[1];
      if (*v64 != v17)
      {
        do
        {
          if (v14 < v67)
          {
            *v14 = *v16;
            *(v14 + 1) = v16[1];
            *v16 = 0;
            v16[1] = 0;
            v14 += 16;
          }

          else
          {
            v18 = __p;
            v19 = (v14 - __p) >> 4;
            v20 = v19 + 1;
            if ((v19 + 1) >> 60)
            {
              goto LABEL_111;
            }

            v21 = v67 - __p;
            if ((v67 - __p) >> 3 > v20)
            {
              v20 = v21 >> 3;
            }

            if (v21 >= 0x7FFFFFFFFFFFFFF0)
            {
              v22 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v20;
            }

            if (v22)
            {
              if (!(v22 >> 60))
              {
                operator new();
              }

              goto LABEL_112;
            }

            v23 = 16 * v19;
            *v23 = *v16;
            *(v23 + 8) = v16[1];
            *v16 = 0;
            v16[1] = 0;
            v24 = v66;
            v25 = (16 * v19 + v18 - v66);
            if (v18 != v66)
            {
              v26 = v18;
              v27 = v23 + v18 - v66;
              do
              {
                *v27 = *v26;
                *(v27 + 8) = *(v26 + 1);
                *v26 = 0;
                *(v26 + 1) = 0;
                v26 += 16;
                v27 += 16;
              }

              while (v26 != v24);
              v28 = v18;
              do
              {
                v29 = *v28;
                v28 += 16;
                sub_23F0655DC(v18 + 8, v29);
                v18 = v28;
              }

              while (v28 != v24);
              v18 = __p;
            }

            v14 = (v23 + 16);
            __p = v25;
            v66 = v14;
            v67 = 0;
            if (v18)
            {
              operator delete(v18);
            }
          }

          v66 = v14;
          v16 += 2;
        }

        while (v16 != v17);
        v15 = v64;
        v16 = *v64;
        v43 = v64[1];
        if (v43 != *v64)
        {
          v44 = v43 - 1;
          do
          {
            v45 = v44 - 1;
            sub_23F0655DC(v44, *(v44 - 8));
            v44 -= 2;
          }

          while (v45 != v16);
        }
      }

LABEL_23:
      v15[1] = v16;
    }

    sub_23F0655DC(&v64, v63);
    v13 = __p;
    v3 = v66;
  }

  while (__p != v66);
  v2 = v61;
LABEL_81:
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v47 = *v2;
      if ((*(*v2 + 23) & 0x80000000) == 0)
      {
        goto LABEL_103;
      }

      v55 = *v47;
    }

    else
    {
      if (a2 != 8)
      {
        goto LABEL_104;
      }

      v47 = *v2;
      v54 = **v2;
      if (!v54)
      {
        goto LABEL_103;
      }

      v47[1] = v54;
      v55 = v54;
    }

LABEL_102:
    operator delete(v55);
    v47 = *v2;
    goto LABEL_103;
  }

  if (a2 == 1)
  {
    v47 = *v2;
    v48 = **v2;
    if (!v48)
    {
      goto LABEL_103;
    }

    v56 = v47[1];
    v50 = **v2;
    if (v56 != v48)
    {
      v51 = *v2;
      do
      {
        v57 = v56;
        v56 -= 5;
        sub_23F0655DC(v57 - 1, *(v57 - 16));
        if (*(v57 - 17) < 0)
        {
          operator delete(*v56);
        }
      }

      while (v56 != v48);
LABEL_88:
      v47 = v51;
      v50 = *v51;
    }

LABEL_99:
    v47[1] = v48;
    v55 = v50;
    goto LABEL_102;
  }

  if (a2 == 2)
  {
    v47 = *v2;
    v48 = **v2;
    if (v48)
    {
      v49 = v47[1];
      v50 = **v2;
      if (v49 != v48)
      {
        v51 = *v2;
        v52 = v49 - 1;
        do
        {
          v53 = v52 - 1;
          sub_23F0655DC(v52, *(v52 - 8));
          v52 -= 2;
        }

        while (v53 != v48);
        goto LABEL_88;
      }

      goto LABEL_99;
    }

LABEL_103:
    operator delete(v47);
    v13 = __p;
  }

LABEL_104:
  if (v13)
  {
    v58 = v13;
    if (v66 != v13)
    {
      v59 = (v66 - 8);
      do
      {
        v60 = v59 - 8;
        sub_23F0655DC(v59, *(v59 - 8));
        v59 -= 16;
      }

      while (v60 != v13);
      v58 = __p;
    }

    v66 = v13;
    operator delete(v58);
  }
}

uint64_t sub_23F065DA8(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_23F063D28();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v7 = 16 * v2;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v8 = *a1;
  v9 = a1[1];
  v10 = 16 * v2 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = 16 * v2 + *a1 - v9;
    do
    {
      *v12 = *v11;
      *(v12 + 8) = *(v11 + 1);
      *v11 = 0;
      *(v11 + 1) = 0;
      v11 += 16;
      v12 += 16;
    }

    while (v11 != v9);
    v13 = v8;
    do
    {
      v14 = *v13;
      v13 += 16;
      sub_23F0655DC(v8 + 8, v14);
      v8 = v13;
    }

    while (v13 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = 16 * v2 + 16;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return 16 * v2 + 16;
}

uint64_t *sub_23F065EE4(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, const void **a5)
{
  v8 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_23;
  }

  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  v13 = *(a2 + 55);
  if (v13 >= 0)
  {
    v14 = a2 + 4;
  }

  else
  {
    v14 = a2[4];
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 55);
  }

  else
  {
    v15 = a2[5];
  }

  if (v15 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v11, v14, v16);
  if (!v17)
  {
    if (v12 >= v15)
    {
      goto LABEL_19;
    }

LABEL_23:
    v19 = *a2;
    if (*a1 == a2)
    {
      v21 = a2;
    }

    else
    {
      if (v19)
      {
        v20 = *a2;
        do
        {
          v21 = v20;
          v20 = v20[1];
        }

        while (v20);
      }

      else
      {
        v22 = a2;
        do
        {
          v21 = v22[2];
          v23 = *v21 == v22;
          v22 = v21;
        }

        while (v23);
      }

      v24 = *(v21 + 55);
      if (v24 >= 0)
      {
        v25 = v21 + 4;
      }

      else
      {
        v25 = v21[4];
      }

      if (v24 >= 0)
      {
        v26 = *(v21 + 55);
      }

      else
      {
        v26 = v21[5];
      }

      v27 = *(a5 + 23);
      if (v27 >= 0)
      {
        v28 = a5;
      }

      else
      {
        v28 = *a5;
      }

      if (v27 >= 0)
      {
        v29 = *(a5 + 23);
      }

      else
      {
        v29 = a5[1];
      }

      if (v29 >= v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = v29;
      }

      v31 = memcmp(v25, v28, v30);
      if (v31)
      {
        if ((v31 & 0x80000000) == 0)
        {
          goto LABEL_48;
        }
      }

      else if (v26 >= v29)
      {
LABEL_48:
        v32 = *v8;
        if (!*v8)
        {
          v33 = v8;
LABEL_69:
          *a3 = v33;
          return v8;
        }

        while (1)
        {
          v33 = v32;
          v36 = v32[4];
          v34 = v32 + 4;
          v35 = v36;
          v37 = *(v34 + 23);
          if (v37 >= 0)
          {
            v38 = v34;
          }

          else
          {
            v38 = v35;
          }

          if (v37 >= 0)
          {
            v39 = *(v34 + 23);
          }

          else
          {
            v39 = v34[1];
          }

          if (v39 >= v29)
          {
            v40 = v29;
          }

          else
          {
            v40 = v39;
          }

          v41 = memcmp(v28, v38, v40);
          if (v41)
          {
            if (v41 < 0)
            {
              goto LABEL_50;
            }

LABEL_64:
            v42 = memcmp(v38, v28, v40);
            if (v42)
            {
              if ((v42 & 0x80000000) == 0)
              {
                goto LABEL_69;
              }
            }

            else if (v39 >= v29)
            {
              goto LABEL_69;
            }

            v8 = v33 + 1;
            v32 = v33[1];
            if (!v32)
            {
              goto LABEL_69;
            }
          }

          else
          {
            if (v29 >= v39)
            {
              goto LABEL_64;
            }

LABEL_50:
            v32 = *v33;
            v8 = v33;
            if (!*v33)
            {
              goto LABEL_69;
            }
          }
        }
      }
    }

    if (v19)
    {
      *a3 = v21;
      return v21 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if (v17 < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  v18 = memcmp(v14, v11, v16);
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
LABEL_21:
      *a3 = a2;
      *a4 = a2;
      return a4;
    }
  }

  else if (v15 >= v12)
  {
    goto LABEL_21;
  }

  v43 = a2[1];
  if (v43)
  {
    v44 = a2[1];
    do
    {
      a4 = v44;
      v44 = *v44;
    }

    while (v44);
  }

  else
  {
    v45 = a2;
    do
    {
      a4 = v45[2];
      v23 = *a4 == v45;
      v45 = a4;
    }

    while (!v23);
  }

  if (a4 != v8)
  {
    v46 = *(a4 + 55);
    if (v46 >= 0)
    {
      v47 = (a4 + 4);
    }

    else
    {
      v47 = a4[4];
    }

    if (v46 >= 0)
    {
      v48 = *(a4 + 55);
    }

    else
    {
      v48 = a4[5];
    }

    if (v48 >= v12)
    {
      v49 = v12;
    }

    else
    {
      v49 = v48;
    }

    v50 = memcmp(v11, v47, v49);
    if (v50)
    {
      if ((v50 & 0x80000000) == 0)
      {
        goto LABEL_95;
      }
    }

    else if (v12 >= v48)
    {
LABEL_95:
      v51 = *v8;
      if (!*v8)
      {
        v52 = v8;
LABEL_116:
        *a3 = v52;
        return v8;
      }

      while (1)
      {
        v52 = v51;
        v55 = v51[4];
        v53 = v51 + 4;
        v54 = v55;
        v56 = *(v53 + 23);
        if (v56 >= 0)
        {
          v57 = v53;
        }

        else
        {
          v57 = v54;
        }

        if (v56 >= 0)
        {
          v58 = *(v53 + 23);
        }

        else
        {
          v58 = v53[1];
        }

        if (v58 >= v12)
        {
          v59 = v12;
        }

        else
        {
          v59 = v58;
        }

        v60 = memcmp(v11, v57, v59);
        if (v60)
        {
          if (v60 < 0)
          {
            goto LABEL_97;
          }

LABEL_111:
          v61 = memcmp(v57, v11, v59);
          if (v61)
          {
            if ((v61 & 0x80000000) == 0)
            {
              goto LABEL_116;
            }
          }

          else if (v58 >= v12)
          {
            goto LABEL_116;
          }

          v8 = v52 + 1;
          v51 = v52[1];
          if (!v51)
          {
            goto LABEL_116;
          }
        }

        else
        {
          if (v12 >= v58)
          {
            goto LABEL_111;
          }

LABEL_97:
          v51 = *v52;
          v8 = v52;
          if (!*v52)
          {
            goto LABEL_116;
          }
        }
      }
    }
  }

  if (v43)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *sub_23F066288(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_23F06357C((v1 + 64), *(v1 + 56));
      if (*(v1 + 55) < 0)
      {
        operator delete(*(v1 + 32));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_23F0662E8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  result = sub_23F062774(v3, v5);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = result;
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    result = v8;
  }

  if (v10)
  {
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = result;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      return v9;
    }
  }

  return result;
}

void sub_23F0663F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_23EF3AE8C(&a9);
  sub_23EF3AE8C(&a11);
  _Unwind_Resume(a1);
}

void *sub_23F066414(uint64_t a1, unint64_t a2)
{
  sub_23F2CCE60(a2, &v13);
  v7 = v13;
  v8 = v14;
  v9 = v15;
  v10 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = v17;
  v12 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = v19;
  v5 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    v2 = v4 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if ((v7 == 0) == (v4 != 0))
    {
      goto LABEL_17;
    }
  }

  else if (*(&v7 + 1) != *(&v4 + 1))
  {
LABEL_17:
    sub_23F2CCB8C(&v7);
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  return sub_23F06C44C(&v13);
}

void sub_23F067020(_Unwind_Exception *a1)
{
  sub_23EF3AE8C(v1 - 224);
  sub_23EF3AE8C(&v3);
  sub_23F067058(&v4);
  sub_23F067058(&v5);
  sub_23F06C44C(&v6);
  _Unwind_Resume(a1);
}

uint64_t sub_23F067058(uint64_t result)
{
  v1 = *(result + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = *(result + 32);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void *sub_23F067120(uint64_t a1, unint64_t a2)
{
  sub_23F2CCE60(a2, &v13);
  v7 = v13;
  v8 = v14;
  v9 = v15;
  v10 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = v17;
  v12 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = v19;
  v5 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v7)
  {
    v2 = v4 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if ((v7 == 0) == (v4 != 0))
    {
      goto LABEL_17;
    }
  }

  else if (*(&v7 + 1) != *(&v4 + 1))
  {
LABEL_17:
    sub_23F2CCB8C(&v7);
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  return sub_23F06C44C(&v13);
}

void sub_23F067D2C(_Unwind_Exception *a1)
{
  sub_23EF3AE8C(v1 - 224);
  sub_23EF3AE8C(&v3);
  sub_23F067058(&v4);
  sub_23F067058(&v5);
  sub_23F06C44C(&v6);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_23F067D64(unsigned __int8 *result)
{
  v1 = *result;
  if (*result)
  {
    if (v1 == 6)
    {
      theArray[0] = 0;
      sub_23F06FAB4(result, theArray);
      LOBYTE(__p[0]) = 3;
      operator new();
    }

    if ((v1 - 5) <= 1)
    {
      theArray[0] = 0;
      sub_23F06FC08(result, theArray);
      LOBYTE(__p[0]) = 8;
      operator new();
    }

    if (*result <= 2u)
    {
      if (v1 == 1)
      {
        __p[1] = 0;
        v8 = 0;
        __p[0] = &__p[1];
        sub_23F2D2898();
      }

      if (v1 == 2)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
        sub_23F2CB9D8(__p, Mutable);
      }
    }

    else
    {
      switch(v1)
      {
        case 3:
          __p[0] = 0;
          __p[1] = 0;
          v8 = 0;
          sub_23F06FFE4(result, __p);
          if (v8 >= 0)
          {
            v3 = __p;
          }

          else
          {
            v3 = __p[0];
          }

          if (v8 >= 0)
          {
            v4 = HIBYTE(v8);
          }

          else
          {
            v4 = __p[1];
          }

          v5 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v3, v4, 0x8000100u, 0);
          sub_23F064058(theArray, v5);
        case 4:
          LOBYTE(__p[0]) = 0;
          sub_23F06FED0(result, __p);
          v6 = MEMORY[0x277CBED28];
          if (!LOBYTE(__p[0]))
          {
            v6 = MEMORY[0x277CBED10];
          }

          sub_23F2CB698(__p, *v6);
        case 7:
          theArray[0] = 0;
          sub_23F06FD5C(result, theArray);
          LOBYTE(__p[0]) = 12;
          operator new();
      }
    }
  }

  return result;
}

void sub_23F0686FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F068710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  sub_23EF3AE8C(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F0687C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F0687DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_23EF3AE8C(&a9);
  sub_23EF3AE8C(&a17);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_23F0687FC(unsigned __int8 *result)
{
  v1 = *result;
  if (*result)
  {
    if (v1 == 6)
    {
      theArray[0] = 0;
      sub_23F0702B4(result, theArray);
      LOBYTE(__p[0]) = 3;
      operator new();
    }

    if ((v1 - 5) <= 1)
    {
      theArray[0] = 0;
      sub_23F070408(result, theArray);
      LOBYTE(__p[0]) = 8;
      operator new();
    }

    if (*result <= 2u)
    {
      if (v1 == 1)
      {
        __p[1] = 0;
        v8 = 0;
        __p[0] = &__p[1];
        sub_23F2D2898();
      }

      if (v1 == 2)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
        sub_23F2CB9D8(__p, Mutable);
      }
    }

    else
    {
      switch(v1)
      {
        case 3:
          __p[0] = 0;
          __p[1] = 0;
          v8 = 0;
          sub_23F0707E4(result, __p);
          if (v8 >= 0)
          {
            v3 = __p;
          }

          else
          {
            v3 = __p[0];
          }

          if (v8 >= 0)
          {
            v4 = HIBYTE(v8);
          }

          else
          {
            v4 = __p[1];
          }

          v5 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v3, v4, 0x8000100u, 0);
          sub_23F064058(theArray, v5);
        case 4:
          LOBYTE(__p[0]) = 0;
          sub_23F0706D0(result, __p);
          v6 = MEMORY[0x277CBED28];
          if (!LOBYTE(__p[0]))
          {
            v6 = MEMORY[0x277CBED10];
          }

          sub_23F2CB698(__p, *v6);
        case 7:
          theArray[0] = 0;
          sub_23F07055C(result, theArray);
          LOBYTE(__p[0]) = 12;
          operator new();
      }
    }
  }

  return result;
}

void sub_23F0691A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F0691BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  sub_23EF3AE8C(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23F069274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F069288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_23EF3AE8C(&a9);
  sub_23EF3AE8C(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_23F0692A8(uint64_t result)
{
  if (*result == 1)
  {
    v1 = *(result + 8);
    if (*(v1 + 16))
    {
      v15 = xmmword_23F3147D0;
      v2 = *v1;
      v14[0] = result;
      v14[1] = v2;
      v13 = xmmword_23F3147D0;
      v12[0] = result;
      v12[1] = (v1 + 8);
      result = sub_23F070C08(v14, v12);
      if ((result & 1) == 0)
      {
        v3 = *MEMORY[0x277CBECE8];
        v4 = sub_23F07099C(v14);
        if (*(v4 + 23) < 0)
        {
          sub_23EF34EA4(__p, *v4, *(v4 + 8));
        }

        else
        {
          v5 = *v4;
          v11 = *(v4 + 16);
          *__p = v5;
        }

        v6 = sub_23F070F64(v14);
        sub_23F067D64(v6);
        if (v11 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        if (v11 >= 0)
        {
          v8 = HIBYTE(v11);
        }

        else
        {
          v8 = __p[1];
        }

        v9 = CFStringCreateWithBytes(v3, v7, v8, 0x8000100u, 0);
        sub_23F064058(&v16, v9);
      }
    }
  }

  return result;
}

void sub_23F069544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23F069584(uint64_t result)
{
  if (*result == 1)
  {
    v1 = *(result + 8);
    v2 = *v1;
    if (*v1 != v1[1])
    {
      v16 = xmmword_23F3147D0;
      v15[0] = result;
      v15[1] = v2;
      v14 = xmmword_23F3147D0;
      v3 = v1[1];
      v13[0] = result;
      v13[1] = v3;
      result = sub_23F0711B0(v15, v13);
      if ((result & 1) == 0)
      {
        v4 = *MEMORY[0x277CBECE8];
        v5 = sub_23F0710E0(v15);
        if (*(v5 + 23) < 0)
        {
          sub_23EF34EA4(__p, *v5, *(v5 + 8));
        }

        else
        {
          v6 = *v5;
          v12 = *(v5 + 16);
          *__p = v6;
        }

        v7 = sub_23F0712BC(v15);
        sub_23F0687FC(v7);
        if (v12 >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        if (v12 >= 0)
        {
          v9 = HIBYTE(v12);
        }

        else
        {
          v9 = __p[1];
        }

        v10 = CFStringCreateWithBytes(v4, v8, v9, 0x8000100u, 0);
        sub_23F064058(&v17, v10);
      }
    }
  }

  return result;
}

void sub_23F0697FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23F06983C(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1[16] = 0;
  v2 = 0;
  sub_23EF4652C(v1, a1);
}

void sub_23F0699A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_23F0699D8(uint64_t a1, unint64_t a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v10 = sub_23F06D864(a1);
    sub_23EF3F240(&v11, v10);
    sub_23F06C3EC("cannot use operator[] with a numeric argument with ", &v11, &v12);
    sub_23F06D6C8(305, &v12, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v4 = *(a1 + 8);
  v6 = *v4;
  v5 = *(v4 + 8);
  v7 = &v5[-*v4] >> 4;
  if (v7 <= a2)
  {
    v12.__r_.__value_.__s.__data_[0] = 0;
    v12.__r_.__value_.__l.__size_ = 0;
    sub_23F072284(v4, v5, a2 - v7 + 1, &v12);
    sub_23F06357C(&v12.__r_.__value_.__l.__size_, v12.__r_.__value_.__s.__data_[0]);
    v6 = **(a1 + 8);
  }

  return &v6[2 * a2];
}

void sub_23F069B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void sub_23F069B80(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1[16] = 0;
  v2 = 0;
  sub_23EF4652C(v1, a1);
}

void sub_23F069CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_23F069D1C(uint64_t a1, unint64_t a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v10 = sub_23F06D864(a1);
    sub_23EF3F240(&v11, v10);
    sub_23F06C3EC("cannot use operator[] with a numeric argument with ", &v11, &v12);
    sub_23F06D6C8(305, &v12, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v4 = *(a1 + 8);
  v6 = *v4;
  v5 = *(v4 + 8);
  v7 = &v5[-*v4] >> 4;
  if (v7 <= a2)
  {
    v12.__r_.__value_.__s.__data_[0] = 0;
    v12.__r_.__value_.__l.__size_ = 0;
    sub_23F072624(v4, v5, a2 - v7 + 1, &v12);
    sub_23F0655DC(&v12.__r_.__value_.__l.__size_, v12.__r_.__value_.__s.__data_[0]);
    v6 = **(a1 + 8);
  }

  return &v6[2 * a2];
}

void sub_23F069E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void sub_23F069EC4(const void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (!*a1)
  {
    goto LABEL_18;
  }

  TypeID = CFNumberGetTypeID();
  if (CFGetTypeID(v3) == TypeID)
  {
    *a2 = 0;
LABEL_7:
    *(a2 + 120) = 1;
    return;
  }

  v6 = *a1;
  if (!*a1)
  {
    goto LABEL_18;
  }

  v7 = CFStringGetTypeID();
  if (CFGetTypeID(v6) == v7)
  {
    *a2 = 1;
    goto LABEL_7;
  }

  v8 = *a1;
  if (!*a1)
  {
    goto LABEL_18;
  }

  v9 = CFBooleanGetTypeID();
  if (CFGetTypeID(v8) == v9)
  {
    v10 = 2;
LABEL_17:
    *a2 = v10;
    goto LABEL_7;
  }

  v11 = *a1;
  if (!*a1)
  {
    goto LABEL_18;
  }

  v12 = CFArrayGetTypeID();
  if (CFGetTypeID(v11) == v12)
  {
    v10 = 3;
    goto LABEL_17;
  }

  v13 = *a1;
  if (*a1)
  {
    v14 = CFDictionaryGetTypeID();
    if (CFGetTypeID(v13) == v14)
    {
      v10 = 4;
      goto LABEL_17;
    }

    v15 = *a1;
  }

  else
  {
LABEL_18:
    v15 = 0;
  }

  v16 = CFGetTypeID(v15);
  sub_23F2D42A4(v16, &v24);
  v19 = v17->__r_.__value_.__r.__words[0];
  size = v17->__r_.__value_.__l.__size_;
  v25[0] = v17->__r_.__value_.__r.__words[2];
  *(v25 + 3) = *(&v17->__r_.__value_.__r.__words[2] + 3);
  v20 = SHIBYTE(v17->__r_.__value_.__r.__words[2]);
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (v20 < 0)
  {
    sub_23EF34EA4(v26, v19, size);
  }

  else
  {
    v26[0] = v19;
    v26[1] = size;
    *v27 = v25[0];
    *&v27[3] = *(v25 + 3);
    v28 = v20;
  }

  v29 = 1;
  LOBYTE(v30) = 0;
  v34 = 0;
  v35 = 1;
  sub_23F06C200(0x16u, v26, &v36);
  *a2 = v36;
  *(a2 + 16) = 0;
  *(a2 + 112) = 0;
  if (v46 != 1)
  {
    *(a2 + 120) = 0;
    goto LABEL_32;
  }

  *(a2 + 40) = 0;
  v21 = v39;
  if (v39 == 1)
  {
    *(a2 + 16) = __p;
    *(a2 + 32) = v38;
    v38 = 0;
    __p = 0uLL;
    *(a2 + 40) = 1;
    *(a2 + 48) = 0;
    v22 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v45 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *(a2 + 48) = 0;
    v22 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v45 & 1) == 0)
    {
LABEL_25:
      *(a2 + 112) = 1;
      *(a2 + 120) = 0;
      if (!v21)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }
  }

  v23 = v42;
  *(v22 + 16) = v41;
  *v22 = v40;
  v40 = 0uLL;
  *(a2 + 72) = v23;
  *(a2 + 80) = v43;
  *(a2 + 96) = v44;
  v41 = 0;
  v43 = 0uLL;
  v44 = 0;
  *(a2 + 104) = 1;
  *(a2 + 112) = 1;
  *(a2 + 120) = 0;
  if (!v21)
  {
    goto LABEL_32;
  }

LABEL_30:
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
  }

LABEL_32:
  if (v35 == 1)
  {
    if (v34 == 1)
    {
      if (v33 < 0)
      {
        operator delete(v32);
      }

      if (v31 < 0)
      {
        operator delete(v30);
      }
    }

    if (v29 == 1 && v28 < 0)
    {
      operator delete(v26[0]);
    }
  }

  if ((v20 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_45:
    operator delete(v24.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v19);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_45;
  }
}

void sub_23F06A214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  operator delete(v16);
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F06A32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_23EF574C0(&a11);
  sub_23EF3AE8C(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_23F06A35C()
{
  if ((atomic_load_explicit(&qword_27E396118, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_27E396118))
  {
    return &qword_27E3960F0;
  }

  qword_27E3960F0 = CFBooleanGetTypeID();
  qword_27E3960F8 = CFStringGetTypeID();
  qword_27E396100 = CFNumberGetTypeID();
  qword_27E396108 = CFArrayGetTypeID();
  qword_27E396110 = CFDictionaryGetTypeID();
  __cxa_guard_release(&qword_27E396118);
  return &qword_27E3960F0;
}

void sub_23F06A6C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x245CACD00](v2, 0x10B2C40EED050F3);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F06A6EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F04B948(va);
  _Unwind_Resume(a1);
}

void sub_23F06A708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_23F04B948(&a10);
    _Unwind_Resume(a1);
  }

  sub_23F04B948(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_23F06A754(uint64_t result)
{
  v1 = *(result + 32);
  if (!v1 || atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(result + 23) & 0x80000000) == 0)
    {
      return result;
    }

LABEL_6:
    v3 = result;
    operator delete(*result);
    return v3;
  }

  v2 = result;
  (v1->__on_zero_shared)(v1);
  std::__shared_weak_count::__release_weak(v1);
  result = v2;
  if (*(v2 + 23) < 0)
  {
    goto LABEL_6;
  }

  return result;
}

void sub_23F06A7F0(const UInt8 **a1@<X0>, int a2@<W8>)
{
  v4 = (a1[1] - *a1) >> 3;
  v27 = 0uLL;
  v26 = 0;
  sub_23F06C5A0(&v26, 0xAAAAAAAAAAAAAAABLL * v4);
  v5 = *a1;
  v6 = MEMORY[0x277CBECE8];
  if (*a1 != a1[1])
  {
    v7 = *(v5 + 23);
    if (v7 >= 0)
    {
      v8 = *a1;
    }

    else
    {
      v8 = *v5;
    }

    if (v7 >= 0)
    {
      v9 = v5[23];
    }

    else
    {
      v9 = *(v5 + 1);
    }

    v10 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v8, v9, 0x8000100u, 0);
    sub_23F064058(&v22, v10);
  }

  v11 = v26;
  __p = v26;
  v21 = v27;
  v25 = v27;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((a1[4] - a1[3]) >> 3);
  v27 = 0uLL;
  v26 = 0;
  sub_23F06C5A0(&v26, v12);
  v13 = a1[3];
  v14 = a1[4];
  if (v13 == v14)
  {
    v20 = v21;
  }

  else
  {
    do
    {
      v15 = *(v13 + 1);
      v16 = *(v13 + 2);
      *&v28 = v15;
      *(&v28 + 1) = v16;
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = v27;
      if (v27 < *(&v27 + 1))
      {
        *v27 = v15;
        *(v17 + 8) = *(&v28 + 1);
        *&v27 = v17 + 16;
      }

      else
      {
        v18 = sub_23F06C7A0(&v26, &v28);
        v19 = *(&v28 + 1);
        *&v27 = v18;
        if (*(&v28 + 1) && !atomic_fetch_add((*(&v28 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }
      }

      v13 += 24;
    }

    while (v13 != v14);
    v11 = __p;
    v20 = v25;
  }

  v22 = v26;
  v23 = v27;
  sub_23F2CC144((v20 - v11) >> 4, (v27 - v26) >> 4, *v6, MEMORY[0x277CBF138], MEMORY[0x277CBF150], a2);
}

void sub_23F06AC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_23EFF0CC0(va);
  sub_23EFF0CC0(va1);
  _Unwind_Resume(a1);
}

void sub_23F06ACB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_23EFF0CC0(va1);
  sub_23EFF0CC0(va);
  _Unwind_Resume(a1);
}

void sub_23F06ACCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23EFF0CC0(va);
  _Unwind_Resume(a1);
}

void sub_23F06ACE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EFF0CC0(va1);
  _Unwind_Resume(a1);
}

void sub_23F06ACFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_23EF3AE8C(v6 - 96);
  sub_23EFF0CC0(va1);
  sub_23EFF0CC0(va);
  _Unwind_Resume(a1);
}

void sub_23F06AD20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_23EF3AE8C(v12 - 96);
  sub_23EF3AE8C(va);
  sub_23EFF0CC0(va1);
  _Unwind_Resume(a1);
}

void sub_23F06AD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23EFF0CC0(va);
  _Unwind_Resume(a1);
}

void sub_23F06AE38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_23EF3AE8C(&a10);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      sub_23EF3AE8C(v17);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_23EF3AE8C(&a10);
    if (!v19)
    {
      goto LABEL_6;
    }
  }

  __cxa_free_exception(v18);
  sub_23EF3AE8C(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_23F06AEAC(uint64_t a1, unint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v5 = *a2;
  v4 = *(a2 + 8);
  if (!v4 || (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  Count = CFDictionaryGetCount(*a2);
  v7 = Count;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < Count)
  {
    if (Count < 0xAAAAAAAAAAAAAABLL)
    {
      v8 = *(a1 + 8);
      operator new();
    }

    sub_23EF3AE74();
  }

LABEL_9:
  sub_23EFEA28C((a1 + 24), v7);
  sub_23F2CCE60(a2, &v20);
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v24;
  v19 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = v26;
  v12 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v14)
  {
    v9 = v11 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if ((v14 == 0) == (v11 != 0))
    {
      goto LABEL_25;
    }
  }

  else if (*(&v14 + 1) != *(&v11 + 1))
  {
LABEL_25:
    sub_23F2CCB8C(&v14);
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  sub_23F06C44C(&v20);
  return a1;
}

void sub_23F06B42C(_Unwind_Exception *a1)
{
  sub_23EFE94A8((v1 + 24));
  sub_23EF3291C(v1);
  _Unwind_Resume(a1);
}

void sub_23F06B44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  *(v32 + 8) = v33;
  sub_23F06A754(&__p);
  sub_23F067058(&a24);
  sub_23F067058(&a32);
  sub_23F06C44C((v34 - 176));
  sub_23EFE94A8((v32 + 24));
  sub_23EF3291C(v32);
  _Unwind_Resume(a1);
}

void sub_23F06B4DC(const UInt8 **a1@<X0>, int a2@<W8>)
{
  v4 = (a1[1] - *a1) >> 3;
  v27 = 0uLL;
  v26 = 0;
  sub_23F06C5A0(&v26, 0xAAAAAAAAAAAAAAABLL * v4);
  v5 = *a1;
  v6 = MEMORY[0x277CBECE8];
  if (*a1 != a1[1])
  {
    v7 = *(v5 + 23);
    if (v7 >= 0)
    {
      v8 = *a1;
    }

    else
    {
      v8 = *v5;
    }

    if (v7 >= 0)
    {
      v9 = v5[23];
    }

    else
    {
      v9 = *(v5 + 1);
    }

    v10 = CFStringCreateWithBytes(*MEMORY[0x277CBECE8], v8, v9, 0x8000100u, 0);
    sub_23F064058(&v22, v10);
  }

  v11 = v26;
  __p = v26;
  v21 = v27;
  v25 = v27;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((a1[4] - a1[3]) >> 3);
  v27 = 0uLL;
  v26 = 0;
  sub_23F06C5A0(&v26, v12);
  v13 = a1[3];
  v14 = a1[4];
  if (v13 == v14)
  {
    v20 = v21;
  }

  else
  {
    do
    {
      v15 = *(v13 + 1);
      v16 = *(v13 + 2);
      *&v28 = v15;
      *(&v28 + 1) = v16;
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
      }

      v17 = v27;
      if (v27 < *(&v27 + 1))
      {
        *v27 = v15;
        *(v17 + 8) = *(&v28 + 1);
        *&v27 = v17 + 16;
      }

      else
      {
        v18 = sub_23F06C7A0(&v26, &v28);
        v19 = *(&v28 + 1);
        *&v27 = v18;
        if (*(&v28 + 1) && !atomic_fetch_add((*(&v28 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }
      }

      v13 += 24;
    }

    while (v13 != v14);
    v11 = __p;
    v20 = v25;
  }

  v22 = v26;
  v23 = v27;
  sub_23F2CC144((v20 - v11) >> 4, (v27 - v26) >> 4, *v6, MEMORY[0x277CBF138], MEMORY[0x277CBF150], a2);
}

void sub_23F06B980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_23EFF0CC0(va);
  sub_23EFF0CC0(va1);
  _Unwind_Resume(a1);
}

void sub_23F06B99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void *);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_23EFF0CC0(va1);
  sub_23EFF0CC0(va);
  _Unwind_Resume(a1);
}

void sub_23F06B9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23EFF0CC0(va);
  _Unwind_Resume(a1);
}

void sub_23F06B9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_23EF3AE8C(va);
  sub_23EFF0CC0(va1);
  _Unwind_Resume(a1);
}

void sub_23F06B9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void *);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_23EF3AE8C(v6 - 96);
  sub_23EFF0CC0(va1);
  sub_23EFF0CC0(va);
  _Unwind_Resume(a1);
}

void sub_23F06BA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_23EF3AE8C(v12 - 96);
  sub_23EF3AE8C(va);
  sub_23EFF0CC0(va1);
  _Unwind_Resume(a1);
}

void sub_23F06BA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_23EFF0CC0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F06BA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  v8 = *(a1 + 23);
  v9 = *(a1 + 8);
  if (v8 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  *(a5 + 8) = 0;
  if (v8 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  v12 = *(a2 + 24);
  if (!v12)
  {
    goto LABEL_10;
  }

  if (v12 != a2)
  {
    v12 = (*(*v12 + 16))(v12);
LABEL_10:
    v16 = v12;
    goto LABEL_12;
  }

  v16 = v15;
  (*(*v12 + 24))(v12, v15);
LABEL_12:
  sub_23F0729C4(v10, v10 + v11, v15, a3, a4, v17);
  sub_23F072B2C(v17, 1, a5);
  if (v22 < 0)
  {
    operator delete(__p);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v18 != v17)
  {
    if (v18)
    {
      (*(*v18 + 40))();
    }

    result = v16;
    if (v16 != v15)
    {
      goto LABEL_20;
    }

LABEL_23:
    result = (*(*result + 32))(result);
    goto LABEL_24;
  }

  (*(*v18 + 32))(v18);
  result = v16;
  if (v16 == v15)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_24:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23F06BC78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_23F07BCAC(va1);
  sub_23F06BCA8(va);
  sub_23F06357C(v3, *v2);
  _Unwind_Resume(a1);
}

uint64_t sub_23F06BCA8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void sub_23F06BD34(uint64_t *a1)
{
  v1 = *a1;
  v3[0] = 0;
  v3[1] = 0;
  v2 = v3;
  sub_23F2D2898();
}

void sub_23F06BE40(uint64_t *a1)
{
  v1 = *a1;
  v3[0] = 0;
  v3[1] = 0;
  v2 = v3;
  sub_23F2D2898();
}

uint64_t *sub_23F06BF4C(uint64_t *a1, _WORD *a2)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  sub_23F04A2C0(a1, &v21);
  v4 = SHIBYTE(v23);
  v5 = v21;
  v6 = v22;
  if (v23 < 0)
  {
    v7 = v21;
  }

  else
  {
    v6 = HIBYTE(v23);
    v7 = &v21;
  }

  if (v6 > 5)
  {
    if (v6 == 10)
    {
      v15 = *v7;
      v16 = *(v7 + 4);
      if (v15 == 0x616E6F6974636944 && v16 == 31090)
      {
        *a2 = (&off_278C74698 - &off_278C74658) >> 4;
        if ((v4 & 0x80000000) == 0)
        {
          return a1;
        }

        goto LABEL_38;
      }
    }

    else
    {
      if (v6 != 6)
      {
        goto LABEL_39;
      }

      if (*v7 == 1651340622 && *(v7 + 2) == 29285)
      {
        *a2 = 0;
        if ((v4 & 0x80000000) == 0)
        {
          return a1;
        }

        goto LABEL_38;
      }

      v12 = *v7;
      v13 = *(v7 + 2);
      if (v12 == 1769108563 && v13 == 26478)
      {
        *a2 = (&off_278C74668 - &off_278C74658) >> 4;
        if ((v4 & 0x80000000) == 0)
        {
          return a1;
        }

        goto LABEL_38;
      }
    }

LABEL_39:
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    std::logic_error::logic_error(exception, &v20);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_278C744A8, MEMORY[0x277D82610]);
  }

  if (v6 != 4)
  {
    if (v6 != 5)
    {
      goto LABEL_39;
    }

    v8 = *v7;
    v9 = *(v7 + 4);
    if (v8 != 1634890305 || v9 != 121)
    {
      goto LABEL_39;
    }

    *a2 = (&off_278C74688 - &off_278C74658) >> 4;
    if (v4 < 0)
    {
      goto LABEL_38;
    }

    return a1;
  }

  if (*v7 != 1819242306)
  {
    goto LABEL_39;
  }

  *a2 = (&off_278C74678 - &off_278C74658) >> 4;
  if ((v4 & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_38:
  operator delete(v5);
  return a1;
}

void sub_23F06C1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      if (a20 < 0)
      {
        operator delete(a15);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

void sub_23F06C200(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v8[0]) = 0;
  v16 = 0;
  if (*(a2 + 96) == 1)
  {
    sub_23EF57668(v8, a2);
    v16 = 1;
  }

  sub_23F06C908(&v17, a1, v8);
  *a3 = v17;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v27 == 1)
  {
    *(a3 + 40) = 0;
    v5 = v20;
    if (v20 == 1)
    {
      *(a3 + 16) = __p;
      *(a3 + 32) = v19;
      v19 = 0;
      __p = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v6 = a3 + 48;
      *(a3 + 104) = 0;
      if (v26 != 1)
      {
LABEL_6:
        *(a3 + 112) = 1;
        if (!v5)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v6 = a3 + 48;
      *(a3 + 104) = 0;
      if (v26 != 1)
      {
        goto LABEL_6;
      }
    }

    v7 = v23;
    *(v6 + 16) = v22;
    *v6 = v21;
    v21 = 0uLL;
    *(a3 + 72) = v7;
    *(a3 + 80) = v24;
    *(a3 + 96) = v25;
    v22 = 0;
    v24 = 0uLL;
    v25 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    if (!v5)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }
  }

LABEL_12:
  if (v16 != 1)
  {
    return;
  }

  if (v15 != 1)
  {
    goto LABEL_16;
  }

  if (v14 < 0)
  {
    operator delete(v13);
    if (v12 < 0)
    {
      goto LABEL_21;
    }

LABEL_16:
    if (v10 != 1)
    {
      return;
    }

    goto LABEL_17;
  }

  if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  operator delete(v11);
  if (v10 != 1)
  {
    return;
  }

LABEL_17:
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }
}

__n128 sub_23F06C3EC@<Q0>(const char *a1@<X0>, std::string *a2@<X1>, std::string *a3@<X8>)
{
  v6 = strlen(a1);
  v7 = std::string::insert(a2, 0, a1, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void *sub_23F06C44C(void *a1)
{
  v2 = a1[13];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[11];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[6];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[4];
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

void *sub_23F06C5A0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_23F06C6E8();
  }

  return result;
}

void sub_23F06C700(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  operator new();
}

void sub_23F06C774(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    CFRelease(v1);
  }

  __cxa_rethrow();
}

_OWORD *sub_23F06C7A0(void *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_23F06C6E8();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 3 > v3)
  {
    v3 = v5 >> 3;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 60))
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v7 = (16 * v2);
  v8 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v9 = *a1;
  v10 = a1[1];
  v11 = *a1 == v10;
  v12 = (v7 + *a1 - v10);
  *v7 = v8;
  v13 = v7 + 1;
  if (!v11)
  {
    v14 = v9;
    v15 = v12;
    do
    {
      *v15++ = *v14;
      *v14 = 0;
      v14[1] = 0;
      v14 += 2;
    }

    while (v14 != v10);
    do
    {
      v16 = v9[1];
      if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }

      v9 += 2;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v12;
  a1[1] = v13;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v13;
}

uint64_t sub_23F06C908(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = std::generic_category();
  v7 = v6;
  LOBYTE(v10[0]) = 0;
  v19 = 0;
  if (*(a3 + 96) != 1)
  {
    *a1 = a2;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    return a1;
  }

  sub_23EF57668(v10, a3);
  v19 = 1;
  *a1 = a2;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  *(a1 + 40) = 0;
  if (v12 == 1)
  {
    *(a1 + 16) = *v10;
    *(a1 + 32) = v11;
    v10[1] = 0;
    v11 = 0;
    v10[0] = 0;
    *(a1 + 40) = 1;
  }

  *(a1 + 48) = 0;
  *(a1 + 104) = 0;
  if (v18)
  {
    v8 = v15;
    *(a1 + 64) = v14;
    *(a1 + 48) = *v13;
    v13[0] = 0;
    v13[1] = 0;
    *(a1 + 72) = v8;
    *(a1 + 80) = *__p;
    *(a1 + 96) = v17;
    __p[1] = 0;
    v17 = 0;
    v14 = 0;
    __p[0] = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v14) & 0x80000000) == 0)
      {
LABEL_7:
        if (v12 != 1)
        {
          return a1;
        }

        goto LABEL_14;
      }
    }

    else if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    operator delete(v13[0]);
    if (v12 != 1)
    {
      return a1;
    }
  }

  else
  {
    *(a1 + 112) = 1;
    if (v12 != 1)
    {
      return a1;
    }
  }

LABEL_14:
  if ((SHIBYTE(v11) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(v10[0]);
  return a1;
}

void sub_23F06CAAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF57834(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F06CAC0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v5 = *(i - 16);
    v4 = i - 16;
    *(a1 + 16) = v4;
    sub_23F06357C((v4 + 8), v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_23F06CB18(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 1;
      do
      {
        v5 = v4 - 1;
        sub_23F06357C(v4, *(v4 - 8));
        v4 -= 2;
      }

      while (v5 != v3);
    }
  }

  return a1;
}

void *sub_23F06CB80(uint64_t a1, const void **a2)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = sub_23F06D864(a1);
    sub_23EF3F240(&v7, v6);
    sub_23F06C3EC("cannot use operator[] with a string argument with ", &v7, &v8);
    sub_23F06D6C8(305, &v8, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v3 = *(a1 + 8);
  v8.__r_.__value_.__r.__words[0] = a2;
  return sub_23F06D8E0(v3, a2) + 7;
}

void sub_23F06CC94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void sub_23F06D47C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, void *__p, uint64_t a32)
{
  sub_23F06357C((v32 + 8), 7);
  if (__p)
  {
    a32 = __p;
    operator delete(__p);
    sub_23EF3AE8C(&a26);
    sub_23EF3AE8C(&a24);
    _Unwind_Resume(a1);
  }

  sub_23EF3AE8C(&a26);
  sub_23EF3AE8C(&a24);
  _Unwind_Resume(a1);
}

void sub_23F06D5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  sub_23F06357C((v33 + 8), 3);
  if (a33 == 1 && a32 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F06D614(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F06D640(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F06D654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27)
{
  sub_23EF574C0(&a27);
  sub_23EF3AE8C(&a25);
  _Unwind_Resume(a1);
}

void sub_23F06D670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F06D684(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F06D698(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F06D6B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F06D6C8(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = 10;
  strcpy(__p, "type_error");
  sub_23F06DC14(__p, a1, &v14);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p[0]);
LABEL_9:
  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  *a3 = &unk_28517D058;
  *(a3 + 8) = a1;
  std::runtime_error::runtime_error((a3 + 16), v11);
  *a3 = &unk_28517D098;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_23F06D814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::exception::~exception(v26);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const char *sub_23F06D864(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 9)
  {
    return "number";
  }

  else
  {
    return off_278C746A8[v1];
  }
}

void sub_23F06D88C(std::runtime_error *a1)
{
  a1->__vftable = &unk_28517D058;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void *sub_23F06D8E0(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

void sub_23F06DA7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23F066288(va);
  _Unwind_Resume(a1);
}

void *sub_23F06DA90(void *result, int a2)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 != 2)
      {
        operator new();
      }

      operator new();
    }

    if (a2 == 1)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 > 5)
  {
    if (a2 == 8)
    {
      operator new();
    }

    goto LABEL_11;
  }

  if (a2 != 4)
  {
LABEL_11:
    *result = 0;
    return result;
  }

  *result = 0;
  return result;
}

void sub_23F06DC14(const void **a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (v5 + 16 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_23EF2F8F4();
  }

  if (v5 + 16 >= 0x17)
  {
    operator new();
  }

  v23[0] = 0;
  HIBYTE(v23[0]) = v5 + 16;
  *__p = *"[json.exception.";
  if (v5)
  {
    if ((v4 & 0x80u) == 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    memmove(v23, v7, v5);
  }

  *(v23 + v5) = 0;
  v8 = SHIBYTE(v23[0]);
  if ((SHIBYTE(v23[0]) & 0x8000000000000000) != 0)
  {
    v8 = __p[1];
    v10 = ((v23[0] & 0x7FFFFFFFFFFFFFFFLL) - 1);
    if (v10 == __p[1])
    {
      if ((v23[0] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
      {
        sub_23EF2F8F4();
      }

LABEL_17:
      operator new();
    }

    v9 = __p[0];
  }

  else
  {
    v9 = __p;
    if (SHIBYTE(v23[0]) == 22)
    {
      goto LABEL_17;
    }
  }

  *(v8 + v9) = 46;
  v11 = v8 + 1;
  if (SHIBYTE(v23[0]) < 0)
  {
    __p[1] = v11;
  }

  else
  {
    HIBYTE(v23[0]) = v11 & 0x7F;
  }

  *(v11 + v9) = 0;
  *&v24.__r_.__value_.__l.__data_ = *__p;
  v24.__r_.__value_.__r.__words[2] = v23[0];
  __p[1] = 0;
  v23[0] = 0;
  __p[0] = 0;
  std::to_string(&v21, a2);
  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v21;
  }

  else
  {
    v12 = v21.__r_.__value_.__r.__words[0];
  }

  if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v21.__r_.__value_.__l.__size_;
  }

  v14 = std::string::append(&v24, v12, size);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v26 = v14->__r_.__value_.__r.__words[2];
  v25 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = SHIBYTE(v26);
  if ((SHIBYTE(v26) & 0x8000000000000000) != 0)
  {
    v17 = *(&v25 + 1);
    v18 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if ((v18 - *(&v25 + 1)) < 2)
    {
      if (0x7FFFFFFFFFFFFFF7 - (v26 & 0x7FFFFFFFFFFFFFFFLL) < *(&v25 + 1) + 2 - v18)
      {
        sub_23EF2F8F4();
      }

LABEL_33:
      operator new();
    }

    v19 = v25;
    *(v25 + *(&v25 + 1)) = 8285;
    v20 = v17 + 2;
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if ((SHIBYTE(v26) - 21) < 2)
    {
      goto LABEL_33;
    }

    v19 = &v25;
    *(&v25 + SHIBYTE(v26)) = 8285;
    v20 = v16 + 2;
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
LABEL_35:
      HIBYTE(v26) = v20 & 0x7F;
      goto LABEL_38;
    }
  }

  *(&v25 + 1) = v20;
LABEL_38:
  *(v19 + v20) = 0;
  *a3 = v25;
  *(a3 + 16) = v26;
  v26 = 0;
  v25 = 0uLL;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_40:
      if ((SHIBYTE(v23[0]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_44:
      operator delete(__p[0]);
      return;
    }
  }

  else if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

  operator delete(v24.__r_.__value_.__l.__data_);
  if (SHIBYTE(v23[0]) < 0)
  {
    goto LABEL_44;
  }
}

void sub_23F06E04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p)
{
  if (v30 < 0)
  {
    operator delete(__p);
    if (a15 < 0)
    {
LABEL_5:
      operator delete(a10);
      if (a28 < 0)
      {
LABEL_8:
        operator delete(a23);
        if ((a21 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_11;
      }

LABEL_10:
      if ((a21 & 0x80000000) == 0)
      {
LABEL_9:
        _Unwind_Resume(a1);
      }

LABEL_11:
      operator delete(a16);
      _Unwind_Resume(a1);
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_5;
  }

  if (a28 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_10;
}

__n128 sub_23F06E0E4@<Q0>(char *__s@<X1>, std::string *a2@<X0>, std::string *a3@<X8>)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void sub_23F06E14C(std::runtime_error *a1)
{
  a1->__vftable = &unk_28517D058;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

void sub_23F06E1A0(std::runtime_error *a1)
{
  a1->__vftable = &unk_28517D058;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x245CACD00);
}

void sub_23F06E208(std::runtime_error *a1)
{
  a1->__vftable = &unk_28517D058;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  JUMPOUT(0x245CACD00);
}

uint64_t sub_23F06E270(uint64_t a1, uint64_t a2)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v7 = sub_23F06D864(a1);
    sub_23EF3F240(&v8, v7);
    sub_23F06C3EC("cannot use operator[] with a string argument with ", &v8, &v9);
    sub_23F06D6C8(305, &v9, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v3 = *(a1 + 8);
  v9.__r_.__value_.__s.__data_[0] = 0;
  v9.__r_.__value_.__l.__size_ = 0;
  v4 = sub_23F06EDE4(v3, a2, &v9);
  sub_23F0655DC(&v9.__r_.__value_.__l.__size_, v9.__r_.__value_.__s.__data_[0]);
  return v4 + 24;
}

void sub_23F06E3A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

void sub_23F06EB98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, void *__p, uint64_t a32)
{
  sub_23F0655DC((v32 + 8), 7);
  if (__p)
  {
    a32 = __p;
    operator delete(__p);
    sub_23EF3AE8C(&a26);
    sub_23EF3AE8C(&a24);
    _Unwind_Resume(a1);
  }

  sub_23EF3AE8C(&a26);
  sub_23EF3AE8C(&a24);
  _Unwind_Resume(a1);
}

void sub_23F06ECC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  sub_23F0655DC((v33 + 8), 3);
  if (a33 == 1 && a32 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23F06ED30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F06ED5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F06ED70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27)
{
  sub_23EF574C0(&a27);
  sub_23EF3AE8C(&a25);
  _Unwind_Resume(a1);
}

void sub_23F06ED8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F06EDA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F06EDB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_23EF3AE8C(va1);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

void sub_23F06EDD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23EF3AE8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F06EDE4(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v7 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
LABEL_17:
    if (v6 >= a1[2])
    {
      v15 = sub_23F06EF2C(a1, a2, a3);
    }

    else
    {
      if (*(a2 + 23) < 0)
      {
        sub_23EF34EA4(v6, *a2, *(a2 + 8));
      }

      else
      {
        v14 = *a2;
        *(v6 + 16) = *(a2 + 16);
        *v6 = v14;
      }

      sub_23F06F0C0(v6 + 24, a3);
      v15 = v6 + 40;
      a1[1] = v6 + 40;
    }

    a1[1] = v15;
    return v15 - 40;
  }

  else
  {
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = *(a2 + 8);
    }

    if (v8 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    while (1)
    {
      v11 = *(v7 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v7 + 8);
      }

      if (v11 == v9)
      {
        v13 = v12 >= 0 ? v7 : *v7;
        if (!memcmp(v13, v10, v9))
        {
          break;
        }
      }

      v7 += 40;
      if (v7 == v6)
      {
        goto LABEL_17;
      }
    }
  }

  return v7;
}

void sub_23F06EF0C(_Unwind_Exception *exception_object)
{
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_23F06EF2C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v3 > 0x666666666666666)
  {
    sub_23F063D28();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x666666666666666)
    {
      operator new();
    }

    sub_23EF34E18();
  }

  v7 = 8 * ((*(a1 + 8) - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_23EF34EA4(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  sub_23F06F0C0(v7 + 24, a3);
  v8 = *(a1 + 8);
  v9 = v7 + *a1 - v8;
  sub_23F06F6B4(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7 + 40;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7 + 40;
}

void sub_23F06F088(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
    sub_23F06F810(va);
    _Unwind_Resume(a1);
  }

  sub_23F06F810(va);
  _Unwind_Resume(a1);
}

uint64_t sub_23F06F0C0(uint64_t result, unsigned __int8 *a2)
{
  v2 = *a2;
  *result = v2;
  *(result + 8) = 0;
  if (v2 <= 4)
  {
    if (v2 <= 2)
    {
      if (v2 == 1)
      {
        v6 = *(a2 + 1);
        operator new();
      }

      if (v2 == 2)
      {
        v3 = *(a2 + 1);
        operator new();
      }

      return result;
    }

    if (v2 == 3)
    {
      v7 = *(a2 + 1);
      operator new();
    }

    v5 = a2[8];
LABEL_12:
    *(result + 8) = v5;
    return result;
  }

  if (v2 < 8)
  {
    v5 = *(a2 + 1);
    goto LABEL_12;
  }

  if (v2 == 8)
  {
    v4 = *(a2 + 1);
    operator new();
  }

  return result;
}

void sub_23F06F3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_23F06F414(&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void sub_23F06F3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_23F06556C(&a11);
  v11[1] = v12;
  sub_23F06F414(&a9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void ***sub_23F06F414(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v6 = v4;
          v4 -= 5;
          sub_23F0655DC(v6 - 1, *(v6 - 16));
          if (*(v6 - 17) < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_23F06F4B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      operator new();
    }

    sub_23F063D28();
  }
}

void sub_23F06F5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_23F06F64C(&a11);
  *(v11 + 8) = v12;
  sub_23F06F5C0(&a9);
  _Unwind_Resume(a1);
}

void ***sub_23F06F5C0(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        v6 = v4 - 1;
        do
        {
          v7 = v6 - 1;
          sub_23F0655DC(v6, *(v6 - 8));
          v6 -= 2;
        }

        while (v7 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_23F06F64C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 1;
      do
      {
        v5 = v4 - 1;
        sub_23F0655DC(v4, *(v4 - 8));
        v4 -= 2;
      }

      while (v5 != v3);
    }
  }

  return a1;
}

void sub_23F06F6B4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v9 = a4;
  if (a2 != a3)
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      if (*(v7 + 23) < 0)
      {
        sub_23EF34EA4(v4, *v7, *(v7 + 1));
      }

      else
      {
        v8 = *v7;
        *(v4 + 16) = *(v7 + 2);
        *v4 = v8;
      }

      sub_23F06F0C0(v4 + 24, v7 + 24);
      v7 = (v7 + 40);
      v4 = v9 + 40;
      v9 += 40;
    }

    while (v7 != a3);
    do
    {
      sub_23F0655DC(v6 + 4, *(v6 + 24));
      if (*(v6 + 23) < 0)
      {
        operator delete(*v6);
      }

      v6 = (v6 + 40);
    }

    while (v6 != a3);
  }
}

void sub_23F06F7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_23F06556C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_23F06F810(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    sub_23F0655DC((i - 8), *(i - 16));
    if (*(i - 17) < 0)
    {
      operator delete(*(i - 40));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_23F06F884(uint64_t a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v5 = sub_23F06D864(a1);
    sub_23EF3F240(&v6, v5);
    sub_23F06C3EC("cannot use operator[] with a numeric argument with ", &v6, &v7);
    sub_23F06D6C8(305, &v7, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  return **(a1 + 8) + 16 * a2;
}

void sub_23F06F93C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void sub_23F06F99C(uint64_t a1, const void *a2, uint64_t a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_23EFEB0A4(&v3, a2);
}

double sub_23F06FAB4(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  if (v2 == 5)
  {
    goto LABEL_4;
  }

  if (v2 != 7)
  {
    if (v2 != 6)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v6 = sub_23F06D864(a1);
      sub_23EF3F240(&v7, v6);
      sub_23F06C3EC("type must be number, but is ", &v7, &v8);
      sub_23F06D6C8(302, &v8, exception);
      __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
    }

LABEL_4:
    *a2 = *(a1 + 1);
    return result;
  }

  result = *(a1 + 1);
  *a2 = result;
  return result;
}

void sub_23F06FB98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

double sub_23F06FC08(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  if (v2 == 5)
  {
    goto LABEL_4;
  }

  if (v2 != 7)
  {
    if (v2 != 6)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      v6 = sub_23F06D864(a1);
      sub_23EF3F240(&v7, v6);
      sub_23F06C3EC("type must be number, but is ", &v7, &v8);
      sub_23F06D6C8(302, &v8, exception);
      __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
    }

LABEL_4:
    *a2 = *(a1 + 1);
    return result;
  }

  result = *(a1 + 1);
  *a2 = result;
  return result;
}

void sub_23F06FCEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

double sub_23F06FD5C(uint64_t *a1, double *a2)
{
  v2 = *a1;
  switch(v2)
  {
    case 5:
      result = a1[1];
      *a2 = result;
      break;
    case 7:
      result = *(a1 + 1);
      *a2 = result;
      break;
    case 6:
      result = a1[1];
      *a2 = result;
      break;
    default:
      exception = __cxa_allocate_exception(0x20uLL);
      v6 = sub_23F06D864(a1);
      sub_23EF3F240(&v7, v6);
      sub_23F06C3EC("type must be number, but is ", &v7, &v8);
      sub_23F06D6C8(302, &v8, exception);
      __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  return result;
}

void sub_23F06FE60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *sub_23F06FED0(unsigned __int8 *result, _BYTE *a2)
{
  if (*result != 4)
  {
    v2 = result;
    exception = __cxa_allocate_exception(0x20uLL);
    v4 = sub_23F06D864(v2);
    sub_23EF3F240(&v5, v4);
    sub_23F06C3EC("type must be BOOLean, but is ", &v5, &v6);
    sub_23F06D6C8(302, &v6, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  *a2 = result[8];
  return result;
}

void sub_23F06FF84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void **sub_23F06FFE4(void **result, uint64_t a2)
{
  if (*result != 3)
  {
    v10 = result;
    exception = __cxa_allocate_exception(0x20uLL);
    v12 = sub_23F06D864(v10);
    sub_23EF3F240(&v13, v12);
    sub_23F06C3EC("type must be string, but is ", &v13, &v14);
    sub_23F06D6C8(302, &v14, exception);
    __cxa_throw(exception, &unk_28517D070, sub_23F06D88C);
  }

  v2 = result[1];
  if (v2 != a2)
  {
    v3 = v2[23];
    if (*(a2 + 23) < 0)
    {
      if ((v3 & 0x80u) == 0)
      {
        v5 = result[1];
      }

      else
      {
        v5 = *v2;
      }

      if ((v3 & 0x80u) == 0)
      {
        v6 = v2[23];
      }

      else
      {
        v6 = *(v2 + 1);
      }

      return sub_23EF36678(a2, v5, v6);
    }

    else if ((v2[23] & 0x80) != 0)
    {
      v7 = *(v2 + 1);
      v9 = *v2;

      return sub_23EF365A8(a2, v9, v7);
    }

    else
    {
      v4 = *v2;
      *(a2 + 16) = *(v2 + 2);
      *a2 = v4;
    }
  }

  return result;
}

void sub_23F07012C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if (v21)
    {
LABEL_8:
      __cxa_free_exception(v20);
      _Unwind_Resume(a1);
    }
  }

  else if (v21)
  {
    goto LABEL_8;
  }

  _Unwind_Resume(a1);
}