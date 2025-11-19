void sub_10026E1E0(__int128 *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v9 = *a1;
  v8 = a1[1];
  *v54 = *a1;
  *&v54[16] = v8;
  *&v54[32] = a1[2];
  v10 = *(a1 + 7);
  *&v54[48] = *(a1 + 6);
  *&v54[56] = v10;
  v55 = &v54[8];
  v56 = v57;
  v57[0] = 0;
  v57[1] = 0;
  if (v10)
  {
    atomic_fetch_add((v10 + 20), 1u);
    v11 = *(a1 + 1);
    if (v11 <= 2)
    {
LABEL_3:
      v12 = *(a1 + 9);
      v13 = v56;
      *v56 = *v12;
      v13[1] = v12[1];
      goto LABEL_8;
    }
  }

  else
  {
    v11 = DWORD1(v9);
    if (SDWORD1(v9) <= 2)
    {
      goto LABEL_3;
    }
  }

  v53 = v9;
  *&v54[4] = 0;
  sub_100269568(v54, v11, 0, 0, 0);
  LODWORD(v9) = v53;
  if (*&v54[4] >= 1)
  {
    v14 = 0;
    v15 = *(a1 + 8);
    v16 = *(a1 + 9);
    v17 = v55;
    v18 = v56;
    do
    {
      *&v17[4 * v14] = *(v15 + 4 * v14);
      v18[v14] = *(v16 + 8 * v14);
      ++v14;
    }

    while (v14 < *&v54[4]);
  }

LABEL_8:
  v19 = ((v9 >> 3) & 0x1FF) + 1;
  v20 = *(a1 + 1);
  if (v20 < 3)
  {
    if (!a2)
    {
      a2 = ((v9 >> 3) & 0x1FF) + 1;
    }

    v45 = *(a1 + 3) * v19;
    if (a2 <= v45)
    {
      if (a3 || !(v45 % a2))
      {
LABEL_41:
        if (!a3)
        {
          goto LABEL_50;
        }

        goto LABEL_42;
      }
    }

    else if (a3)
    {
LABEL_42:
      v46 = *(a1 + 2);
      if (a3 != v46)
      {
        if ((*(a1 + 1) & 0x40) == 0)
        {
          v58 = 0;
          v59 = 0;
          qmemcpy(sub_1002A80E0(&v58, 72), "The matrix is not continuous, thus its number of rows can not be changed", 72);
          sub_1002A8980(-13, &v58, "reshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1102);
        }

        v47 = v46 * v45;
        if (a3 > v47)
        {
          v58 = 0;
          v59 = 0;
          qmemcpy(sub_1002A80E0(&v58, 22), "Bad new number of rows", 22);
          sub_1002A8980(-211, &v58, "reshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1105);
        }

        v45 = v47 / a3;
        if (v47 / a3 * a3 != v47)
        {
          v58 = 0;
          v59 = 0;
          qmemcpy(sub_1002A80E0(&v58, 78), "The total number of matrix elements is not divisible by the new number of rows", 78);
          sub_1002A8980(-5, &v58, "reshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1111);
        }

        *&v54[8] = a3;
        *v56 = ((0x88442211uLL >> (4 * (*a1 & 7u))) & 0xF) * v45;
      }

LABEL_50:
      if (v45 / a2 * a2 != v45)
      {
        v58 = 0;
        v59 = 0;
        qmemcpy(sub_1002A80E0(&v58, 62), "The total width is not divisible by the new number of channels", 62);
        sub_1002A8980(-15, &v58, "reshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1121);
      }

      *&v54[12] = v45 / a2;
      v48 = *v54;
      v49 = 8 * a2 - 8;
      v25 = v56;
      *(v56 + 1) = (((v49 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v54[0] & 7))) & 3);
      *a4 = v48 & 0xFFFFF007 | v49;
      v50 = *&v54[4];
      *(a4 + 4) = *&v54[4];
      *(a4 + 12) = v45 / a2;
      v51 = *&v54[32];
      *(a4 + 16) = *&v54[16];
      *(a4 + 32) = v51;
      v52 = *&v54[48];
      *(a4 + 80) = 0;
      *(a4 + 48) = v52;
      *(a4 + 64) = a4 + 8;
      *(a4 + 72) = a4 + 80;
      *(a4 + 88) = 0;
      if (v50 > 2)
      {
        *(a4 + 64) = v55;
        *(a4 + 72) = v25;
        goto LABEL_55;
      }

LABEL_53:
      *(a4 + 80) = *v25;
      *(a4 + 88) = v25[1];
      goto LABEL_56;
    }

    a3 = *(a1 + 2) * v45 / a2;
    goto LABEL_41;
  }

  if (a2 && !a3)
  {
    v21 = v20 - 1;
    if (!((*(*(a1 + 8) + 4 * (v20 - 1)) * v19) % a2))
    {
      v22 = v54[0];
      v23 = 8 * a2 - 8;
      *v54 = *v54 & 0xFFFFF007 | v23;
      v24 = (((v23 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v22 & 7))) & 3);
      v25 = v56;
      *(v56 + v21) = v24;
      v26 = v55;
      *&v55[4 * v21] = (*&v55[4 * v21] * v19) / a2;
      v27 = *&v54[4];
      v28 = *&v54[16];
      *a4 = *v54;
      *(a4 + 16) = v28;
      v29 = *&v54[48];
      *(a4 + 32) = *&v54[32];
      *(a4 + 48) = v29;
      *(a4 + 80) = 0;
      *(a4 + 64) = a4 + 8;
      *(a4 + 72) = a4 + 80;
      *(a4 + 88) = 0;
      if (v27 > 2)
      {
        *(a4 + 64) = v26;
        *(a4 + 72) = v25;
LABEL_55:
        v55 = &v54[8];
        v56 = v57;
LABEL_56:
        *v54 = 1124007936;
        memset(&v54[4], 0, 60);
        v43 = v56;
        if (v56 == v57)
        {
          return;
        }

        goto LABEL_57;
      }

      goto LABEL_53;
    }

LABEL_32:
    v58 = 0;
    v59 = 0;
    v44 = sub_1002A80E0(&v58, 9);
    *(v44 + 8) = 50;
    *v44 = *"dims <= 2";
    sub_1002A8980(-215, &v58, "reshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1087);
  }

  if (a3 < 1)
  {
    goto LABEL_32;
  }

  LODWORD(v58) = a3;
  v30 = *(a1 + 8);
  v31 = (v30 + 4);
  v32 = 1;
  v33 = v20 & 0x7FFFFFFE;
  v34 = 1;
  do
  {
    v32 *= *(v31 - 1);
    v34 *= *v31;
    v31 += 2;
    v33 -= 2;
  }

  while (v33);
  v35 = v34 * v32;
  v36 = v20 - (v20 & 0x7FFFFFFE);
  if (v36)
  {
    v37 = (v30 + 8 * ((v20 >> 1) & 0x3FFFFFFF));
    do
    {
      v38 = *v37++;
      v35 *= v38;
      --v36;
    }

    while (v36);
  }

  HIDWORD(v58) = v35 / a3;
  sub_10026E8FC(a1, a2, 2, &v58, a4);
  if (*&v54[56])
  {
    if (atomic_fetch_add((*&v54[56] + 20), 0xFFFFFFFF) == 1)
    {
      v39 = *&v54[56];
      if (*&v54[56])
      {
        *&v54[56] = 0;
        v40 = *(v39 + 8);
        if (!v40)
        {
          v40 = *&v54[48];
          if (!*&v54[48])
          {
            v40 = sub_100268CC8();
          }
        }

        (*(*v40 + 48))(v40, v39);
      }
    }
  }

  *&v54[56] = 0;
  memset(&v54[16], 0, 32);
  if (*&v54[4] >= 1)
  {
    v41 = 0;
    v42 = v55;
    do
    {
      *&v42[4 * v41++] = 0;
    }

    while (v41 < *&v54[4]);
  }

  v43 = v56;
  if (v56 != v57)
  {
LABEL_57:
    j__free(v43);
  }
}

void sub_10026E840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100008E3C(exception_object);
}

uint64_t sub_10026E8FC@<X0>(unsigned int *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a2;
  if (a1[1] != a3 || a4 && a3 != 2)
  {
    if ((*(a1 + 1) & 0x40) == 0)
    {
      v39 = 0;
      v40 = 0;
      qmemcpy(sub_1002A80E0(&v39, 71), "Reshaping of n-dimensional non-continuous matrices is not supported yet", 71);
      sub_1002A8980(-213, &v39, "reshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 4767);
    }

    if (!a4 || a2 < 0 || (a3 - 1) >= 0x20)
    {
      v39 = 0;
      v40 = 0;
      qmemcpy(sub_1002A80E0(&v39, 54), "_cn >= 0 && _newndims > 0 && _newndims <= 32 && _newsz", 54);
      sub_1002A8980(-215, &v39, "reshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 4731);
    }

    if (a2)
    {
      if (a2 >= 513)
      {
        v39 = 0;
        v40 = 0;
        v8 = sub_1002A80E0(&v39, 10);
        *(v8 + 8) = 12849;
        *v8 = *"_cn <= 512";
        sub_1002A8980(-215, &v39, "reshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 4736);
      }

      v9 = a1[1];
      if (v9 < 3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v5 = ((*a1 >> 3) & 0x1FF) + 1;
      v9 = a1[1];
      if (v9 < 3)
      {
LABEL_14:
        v10 = a1[3] * a1[2];
        goto LABEL_24;
      }
    }

    v12 = *(a1 + 8);
    v13 = (v12 + 4);
    v14 = 1;
    v15 = v9 & 0x7FFFFFFE;
    v16 = 1;
    do
    {
      v14 *= *(v13 - 1);
      v16 *= *v13;
      v13 += 2;
      v15 -= 2;
    }

    while (v15);
    v10 = v16 * v14;
    v17 = v9 - (v9 & 0x7FFFFFFE);
    if (v17)
    {
      v18 = (v12 + 8 * ((v9 >> 1) & 0x3FFFFFFF));
      do
      {
        v19 = *v18++;
        v10 *= v19;
        --v17;
      }

      while (v17);
    }

LABEL_24:
    v35 = *a1;
    v20 = v5;
    v39 = v41;
    v40 = a3;
    if (a3 >= 5)
    {
      operator new[]();
    }

    if (a3 >= 1)
    {
      for (i = 0; i != a3; ++i)
      {
        v22 = *(a4 + 4 * i);
        if (v22 < 0)
        {
          v37 = 0;
          v38 = 0;
          qmemcpy(sub_1002A80E0(&v37, 14), "_newsz[i] >= 0", 14);
          sub_1002A8980(-215, &v37, "reshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 4745);
        }

        if (v22 < 1)
        {
          if (i >= a1[1])
          {
            v37 = 0;
            v38 = 0;
            qmemcpy(sub_1002A80E0(&v37, 68), "Copy dimension (which has zero size) is not present in source matrix", 68);
            sub_1002A8980(-211, &v37, "reshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 4752);
          }

          v22 = *(*(a1 + 8) + 4 * i);
        }

        *&v39[4 * i] = v22;
        v20 *= v22;
      }
    }

    if (v20 != v10 + v10 * ((v35 >> 3) & 0x1FF))
    {
      v37 = 0;
      v38 = 0;
      qmemcpy(sub_1002A80E0(&v37, 62), "Requested and source matrices have different count of elements", 62);
      sub_1002A8980(-209, &v37, "reshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 4758);
    }

    v23 = *a1;
    v24 = *(a1 + 1);
    *a5 = *a1;
    *(a5 + 16) = v24;
    *(a5 + 32) = *(a1 + 2);
    v25 = *(a1 + 7);
    *(a5 + 48) = *(a1 + 6);
    *(a5 + 56) = v25;
    *(a5 + 80) = 0;
    *(a5 + 64) = a5 + 8;
    *(a5 + 72) = a5 + 80;
    *(a5 + 88) = 0;
    if (v25)
    {
      atomic_fetch_add((v25 + 20), 1u);
      v26 = a1[1];
      if (v26 <= 2)
      {
LABEL_40:
        v27 = *(a1 + 9);
        v28 = *(a5 + 72);
        *v28 = *v27;
        v28[1] = v27[1];
LABEL_45:
        *a5 = *a5 & 0xFFFFF007 | (8 * v5 - 8);
        sub_100269568(a5, a3, v39, 0, 1);
        result = v39;
        if (v39 != v41 && v39 != 0)
        {
          operator delete[]();
        }

        return result;
      }
    }

    else
    {
      v26 = DWORD1(v23);
      if (SDWORD1(v23) <= 2)
      {
        goto LABEL_40;
      }
    }

    *(a5 + 4) = 0;
    sub_100269568(a5, v26, 0, 0, 0);
    if (*(a5 + 4) >= 1)
    {
      v29 = 0;
      v30 = *(a1 + 8);
      v31 = *(a1 + 9);
      v32 = *(a5 + 64);
      v33 = *(a5 + 72);
      do
      {
        *(v32 + 4 * v29) = *(v30 + 4 * v29);
        *(v33 + 8 * v29) = *(v31 + 8 * v29);
        ++v29;
      }

      while (v29 < *(a5 + 4));
    }

    goto LABEL_45;
  }

  return sub_10026E1E0();
}

void sub_10026EEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void sub_10026EF8C(int *a1, uint64_t a2)
{
  sub_1002ACE7C(v50, &off_100474DD8);
  v4 = sub_100271A88(a1, -1);
  v5 = (((v4 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v4 & 7))) & 3);
  if (sub_10027377C(a1, -1) > 2 || v5 >= 0x21)
  {
    v41 = 0;
    v42 = 0;
    qmemcpy(sub_1002A80E0(&v41, 29), "_src.dims() <= 2 && esz <= 32", 29);
    sub_1002A8980(-215, &v41, "transpose", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 3591);
  }

  sub_10026E0C8(a1, -1, &v41);
  if (!v43)
  {
    goto LABEL_19;
  }

  if (SHIDWORD(v41) >= 3)
  {
    v7 = v47 + 1;
    v8 = 1;
    v9 = HIDWORD(v41) & 0x7FFFFFFE;
    v10 = 1;
    do
    {
      v8 *= *(v7 - 1);
      v10 *= *v7;
      v7 += 2;
      v9 -= 2;
    }

    while (v9);
    v6 = v10 * v8;
    v11 = HIDWORD(v41) - (HIDWORD(v41) & 0x7FFFFFFE);
    if (v11)
    {
      v12 = &v47[(HIDWORD(v41) >> 1) & 0x3FFFFFFF];
      do
      {
        v13 = v12->i32[0];
        v12 = (v12 + 4);
        v6 *= v13;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v6 = SHIDWORD(v42) * v42;
  }

  if (HIDWORD(v41) && v6)
  {
    sub_100275A84(a2, HIDWORD(v42), v42, v41 & 0xFFF, -1, 0, 0);
    sub_10026E0C8(a2, -1, v31);
    if (__PAIR64__(v42, HIDWORD(v42)) == v33)
    {
      v14 = 0xFEFEEEA1uLL >> v5;
      if (v34 == v43)
      {
        if (v14)
        {
          v28 = 0;
          v29 = 0;
          v26 = sub_1002A80E0(&v28, 9);
          *(v26 + 8) = 48;
          *v26 = *"func != 0";
          sub_1002A8980(-215, &v28, "transpose", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 3619);
        }

        if (v42 != HIDWORD(v42))
        {
          v28 = 0;
          v29 = 0;
          v27 = sub_1002A80E0(&v28, 20);
          *(v27 + 16) = 1937207154;
          *v27 = *"dst.cols == dst.rows";
          sub_1002A8980(-215, &v28, "transpose", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 3620);
        }

        qword_100474DF8[v5](v34, v40);
      }

      else
      {
        v15 = qword_100474F00[v5];
        if (v14)
        {
          v28 = 0;
          v29 = 0;
          v16 = sub_1002A80E0(&v28, 9);
          *(v16 + 8) = 48;
          *v16 = *"func != 0";
          sub_1002A8980(-215, &v28, "transpose", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 3626);
        }

        v28 = vrev64_s32(*v47);
        v15();
      }
    }

    else
    {
      v17 = v47->i32[1] == v38[1] && v47->i32[0] == *v38;
      if (!v17 || v42 != 1 && HIDWORD(v42) != 1)
      {
        v28 = 0;
        v29 = 0;
        qmemcpy(sub_1002A80E0(&v28, 60), "src.size() == dst.size() && (src.cols == 1 || src.rows == 1)", 60);
        sub_1002A8980(-215, &v28, "transpose", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 3609);
      }

      v28.i32[0] = 33619968;
      v29 = v31;
      v30 = 0;
      sub_10022B754(&v41, &v28);
    }

    if (v37)
    {
      if (atomic_fetch_add((v37 + 20), 0xFFFFFFFF) == 1)
      {
        v18 = v37;
        if (v37)
        {
          v37 = 0;
          v19 = *(v18 + 8);
          if (!v19)
          {
            v19 = v36;
            if (!v36)
            {
              v19 = sub_100268CC8();
            }
          }

          (*(*v19 + 48))(v19, v18);
        }
      }
    }

    v37 = 0;
    v34 = 0u;
    v35 = 0u;
    if (v32 >= 1)
    {
      v20 = 0;
      v21 = v38;
      do
      {
        v21[v20++] = 0;
      }

      while (v20 < v32);
    }

    if (v39 != &v40)
    {
      j__free(v39);
    }
  }

  else
  {
LABEL_19:
    sub_100274CEC(a2);
  }

  if (v46)
  {
    if (atomic_fetch_add((v46 + 20), 0xFFFFFFFF) == 1)
    {
      v22 = v46;
      if (v46)
      {
        v46 = 0;
        v23 = *(v22 + 8);
        if (!v23)
        {
          v23 = v45;
          if (!v45)
          {
            v23 = sub_100268CC8();
          }
        }

        (*(*v23 + 48))(v23, v22);
      }
    }
  }

  v46 = 0;
  v43 = 0u;
  v44 = 0u;
  if (SHIDWORD(v41) >= 1)
  {
    v24 = 0;
    v25 = v47;
    do
    {
      v25->i32[v24++] = 0;
    }

    while (v24 < SHIDWORD(v41));
  }

  if (v48 != &v49)
  {
    j__free(v48);
  }

  if (v51)
  {
    sub_1002ACC1C(v50);
  }
}

void sub_10026F4F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  sub_1002A8124(va);
  sub_100006D14(va1);
  sub_100006D14(va2);
  sub_1001D8BF4(v2 - 64);
  _Unwind_Resume(a1);
}

void sub_10026F590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_100006D14(va);
  sub_1001D8BF4(v17 - 64);
  _Unwind_Resume(a1);
}

unint64_t sub_10026F620(unsigned int *a1, signed int a2, int a3, char a4)
{
  if (!*(a1 + 2))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *a1;
  if (a3 >= 1 && (*a1 & 7) != a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 & 0x4000) == 0 && (a4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a1[1];
  if (v5 == 3)
  {
    if ((v4 & 0xFF8) == 0)
    {
      v11 = *(a1 + 8);
      if (v11[2] == a2 && (*v11 == 1 || v11[1] == 1) && ((v4 & 0x4000) != 0 || *(*(a1 + 9) + 8) == *(*(a1 + 9) + 16) * a2))
      {
        v10 = *v11 * v11[1] * v11[2];
        return (v10 + v10 * ((v4 >> 3) & 0x1FF)) / a2;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (v5 != 2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = a1[2];
  if ((v6 == 1 || (v7 = a1[3], v7 == 1)) && (v7 = a1[3], ((v4 >> 3) & 0x1FF) + 1 == a2) || (result = 0xFFFFFFFFLL, (v4 & 0xFF8) == 0) && (v9 = v7 == a2, v7 = a2, v9))
  {
    v10 = v6 * v7;
    return (v10 + v10 * ((v4 >> 3) & 0x1FF)) / a2;
  }

  return result;
}

void sub_10026F720(unint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  sub_1002ACE7C(v127, &off_100474D98);
  v8 = (a3 >> 3) & 0x1FF;
  if (v8 >= 4)
  {
    v125 = 0;
    v126 = 0;
    v9 = sub_1002A80E0(&v125, 7);
    *(v9 + 3) = 874528060;
    *v9 = 1008758371;
    sub_1002A8980(-215, &v125, "scalarToRawData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1168);
  }

  v10 = a3 & 7;
  v11 = v8 + 1;
  if (v10 > 3)
  {
    if ((a3 & 7) > 5)
    {
      if (v10 != 6)
      {
        v125 = 0;
        v126 = 0;
        sub_1002A8980(-210, &v125, "scalarToRawData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1193);
      }

      v22 = 0;
      v23 = v11;
      if (v8 < 3)
      {
        goto LABEL_28;
      }

      if (a2 - a1 <= 0x1F)
      {
        goto LABEL_28;
      }

      v22 = v11 & 0x3FC;
      v24 = (a1 + 16);
      v25 = (a2 + 16);
      v26 = v22;
      do
      {
        v27 = *v24;
        *(v25 - 1) = *(v24 - 1);
        *v25 = v27;
        v24 += 2;
        v25 += 2;
        v26 -= 4;
      }

      while (v26);
      if (v22 != v11)
      {
LABEL_28:
        v28 = ((a3 >> 3) & 0x1FF) - v22 + 1;
        v29 = 8 * v22;
        v30 = (a2 + 8 * v22);
        v31 = (a1 + v29);
        do
        {
          v32 = *v31++;
          *v30++ = v32;
          --v28;
        }

        while (v28);
      }

      if (v11 < a4)
      {
        v33 = a4 + ~v8;
        if (v33 < 6 || (a3 & 0xFF8) <= 0x17)
        {
          goto LABEL_39;
        }

        v23 = (v33 & 0xFFFFFFFFFFFFFFFCLL) + v11;
        v35 = (a2 + 8 * ((a3 >> 3) & 0x1FF) + 24);
        v36 = (a2 + 16);
        v37 = v33 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v38 = *v36;
          *(v35 - 1) = *(v36 - 1);
          *v35 = v38;
          v35 += 2;
          v36 += 2;
          v37 -= 4;
        }

        while (v37);
        if (v33 != (v33 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_39:
          v39 = a4 - v23;
          v40 = (a2 + 8 * v23);
          do
          {
            *v40 = *(v40 + ((8 * ~(a3 >> 3)) | 0xFFFFFFFFFFFFF000));
            ++v40;
            --v39;
          }

          while (v39);
        }
      }

      goto LABEL_134;
    }

    if (v10 != 4)
    {
      v47 = v11;
      v73 = ((a3 >> 3) & 0x1FF) + 1;
      v74 = a2;
      v75 = a1;
      do
      {
        v76 = *v75++;
        v77 = v76;
        *v74++ = v77;
        --v73;
      }

      while (v73);
      if (v11 < a4)
      {
        v78 = a4 + ~v8;
        if (v78 < 8)
        {
          goto LABEL_86;
        }

        if ((a3 & 0xFF8) <= 0x37)
        {
          goto LABEL_86;
        }

        v47 = (v78 & 0xFFFFFFFFFFFFFFF8) + v11;
        v79 = (a2 + 4 * ((a3 >> 3) & 0x1FF) + 20);
        v80 = (a2 + 16);
        v81 = v78 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v82 = *v80;
          *(v79 - 1) = *(v80 - 1);
          *v79 = v82;
          v79 += 2;
          v80 += 2;
          v81 -= 8;
        }

        while (v81);
        if (v78 != (v78 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_86:
          v83 = a4 - v47;
          v84 = (a2 + 4 * v47);
          do
          {
            *v84 = *(v84 + ((4 * ~(a3 >> 3)) | 0xFFFFFFFFFFFFF800));
            ++v84;
            --v83;
          }

          while (v83);
        }
      }

      goto LABEL_134;
    }

    v19 = v11;
    if (v8 > 2)
    {
      v20 = v11 & 0x3FC;
      v49 = v20;
      v50 = a2;
      v51 = a1;
      do
      {
        v52 = *v51;
        v53 = v51[1];
        v51 += 2;
        *v50++ = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v52)), vcvtq_s64_f64(vrndxq_f64(v53)));
        v49 -= 4;
      }

      while (v49);
      if (v20 == v11)
      {
LABEL_62:
        if (v11 < a4)
        {
          v58 = a4 + ~v8;
          if (v58 < 8)
          {
            goto LABEL_68;
          }

          if ((a3 & 0xFF8) <= 0x37)
          {
            goto LABEL_68;
          }

          v19 = (v58 & 0xFFFFFFFFFFFFFFF8) + v11;
          v59 = (a2 + 4 * ((a3 >> 3) & 0x1FF) + 20);
          v60 = (a2 + 16);
          v61 = v58 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v62 = *v60;
            *(v59 - 1) = *(v60 - 1);
            *v59 = v62;
            v59 += 2;
            v60 += 2;
            v61 -= 8;
          }

          while (v61);
          if (v58 != (v58 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_68:
            v63 = a4 - v19;
            v64 = (a2 + 4 * v19);
            do
            {
              *v64 = *(v64 + ((4 * ~(a3 >> 3)) | 0xFFFFFFFFFFFFF800));
              ++v64;
              --v63;
            }

            while (v63);
          }
        }

        goto LABEL_134;
      }
    }

    else
    {
      v20 = 0;
    }

    v54 = ((a3 >> 3) & 0x1FF) - v20 + 1;
    v55 = (a2 + 4 * v20);
    v56 = (a1 + 8 * v20);
    do
    {
      v57 = *v56++;
      *v55++ = rint(v57);
      --v54;
    }

    while (v54);
    goto LABEL_62;
  }

  if ((a3 & 7) <= 1)
  {
    if ((a3 & 7) == 0)
    {
      if (v8 >= 3 && (a1 + (a3 & 0xFF8) + 8 <= a2 || a2 + v11 <= a1))
      {
        v12 = v11 & 0x3FC;
        v92 = a1;
        v93 = a2;
        v94 = -v12;
        v95.i64[0] = 0xFF000000FFLL;
        v95.i64[1] = 0xFF000000FFLL;
        do
        {
          v96 = *v92;
          v97 = v92[1];
          v92 += 2;
          *v93++ = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v96)), vcvtq_s64_f64(vrndxq_f64(v97))), 0), v95)), 0).u32[0];
          v94 += 4;
        }

        while (v94);
        if (v12 == v11)
        {
LABEL_14:
          if (v11 < a4)
          {
            v117 = a4 - (v8 + 1);
            v118 = (a2 + v8 + 1);
            do
            {
              *v118 = v118[~(a3 >> 3) | 0xFFFFFFFFFFFFFE00];
              ++v118;
              --v117;
            }

            while (v117);
          }

          goto LABEL_134;
        }
      }

      else
      {
        v12 = 0;
      }

      v13 = ((a3 >> 3) & 0x1FF) - v12 + 1;
      v14 = (a2 + v12);
      v15 = (a1 + 8 * v12);
      do
      {
        v16 = *v15++;
        v17 = rint(v16);
        v18 = v17 & ~(v17 >> 31);
        if (v18 >= 255)
        {
          LOBYTE(v18) = -1;
        }

        *v14++ = v18;
        --v13;
      }

      while (v13);
      goto LABEL_14;
    }

    if (v8 >= 3 && (a1 + (a3 & 0xFF8) + 8 <= a2 || a2 + v11 <= a1))
    {
      v41 = v11 & 0x3FC;
      v98 = a1;
      v99 = a2;
      v100 = -v41;
      v101.i64[0] = 0x7F0000007FLL;
      v101.i64[1] = 0x7F0000007FLL;
      v102.i64[0] = 0x7F0000007FLL;
      v102.i64[1] = 0x7F0000007FLL;
      do
      {
        v103 = *v98;
        v104 = v98[1];
        v98 += 2;
        *v99++ = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v103)), vcvtq_s64_f64(vrndxq_f64(v104))), v101), v102)), *v101.i8).u32[0];
        v100 += 4;
      }

      while (v100);
      if (v41 == v11)
      {
LABEL_52:
        if (v11 < a4)
        {
          v119 = a4 - (v8 + 1);
          v120 = (a2 + v8 + 1);
          do
          {
            *v120 = v120[~(a3 >> 3) | 0xFFFFFFFFFFFFFE00];
            ++v120;
            --v119;
          }

          while (v119);
        }

        goto LABEL_134;
      }
    }

    else
    {
      v41 = 0;
    }

    v42 = ((a3 >> 3) & 0x1FF) - v41 + 1;
    v43 = (a2 + v41);
    v44 = (a1 + 8 * v41);
    do
    {
      v45 = *v44++;
      v46 = rint(v45);
      if (v46 <= -128)
      {
        LODWORD(v46) = -128;
      }

      if (v46 >= 127)
      {
        LOBYTE(v46) = 127;
      }

      *v43++ = v46;
      --v42;
    }

    while (v42);
    goto LABEL_52;
  }

  if (v10 != 2)
  {
    v48 = v11;
    v85 = ((a3 >> 3) & 0x1FF) + 1;
    v86 = a2;
    v87 = a1;
    do
    {
      v88 = *v87++;
      v89 = rint(v88);
      if (v89 <= -32768)
      {
        LODWORD(v89) = -32768;
      }

      if (v89 >= 0x7FFF)
      {
        LOWORD(v89) = 0x7FFF;
      }

      *v86++ = v89;
      --v85;
    }

    while (v85);
    if (v11 >= a4)
    {
      goto LABEL_134;
    }

    v90 = a4 + ~v8;
    if (v90 >= 4 && (a3 & 0xFF8) >= 0x78)
    {
      if (v90 < 0x10)
      {
        v91 = 0;
        goto LABEL_119;
      }

      v91 = v90 & 0xFFFFFFFFFFFFFFF0;
      v111 = (a2 + 2 * ((a3 >> 3) & 0x1FF) + 18);
      v112 = (a2 + 16);
      v113 = v90 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v114 = *v112;
        *(v111 - 1) = *(v112 - 1);
        *v111 = v114;
        v111 += 2;
        v112 += 2;
        v113 -= 16;
      }

      while (v113);
      if (v90 == v91)
      {
        goto LABEL_134;
      }

      if ((v90 & 0xC) != 0)
      {
LABEL_119:
        v48 = (v90 & 0xFFFFFFFFFFFFFFFCLL) + v11;
        v115 = (a2 + 2 * v91);
        v116 = v91 - (v90 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          *(v115 + 2 * ((a3 >> 3) & 0x1FF) + 2) = *v115;
          ++v115;
          v116 += 4;
        }

        while (v116);
        if (v90 == (v90 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_134;
        }

        goto LABEL_132;
      }

      v48 = v91 + v11;
    }

LABEL_132:
    v123 = a4 - v48;
    v124 = (a2 + 2 * v48);
    do
    {
      *v124 = *(v124 + ((2 * ~(a3 >> 3)) | 0xFFFFFFFFFFFFFC00));
      ++v124;
      --v123;
    }

    while (v123);
    goto LABEL_134;
  }

  v21 = v11;
  v65 = ((a3 >> 3) & 0x1FF) + 1;
  v66 = a2;
  v67 = a1;
  do
  {
    v68 = *v67++;
    v69 = rint(v68);
    v70 = v69 & ~(v69 >> 31);
    if (v70 >= 0xFFFF)
    {
      LOWORD(v70) = -1;
    }

    *v66++ = v70;
    --v65;
  }

  while (v65);
  if (v11 < a4)
  {
    v71 = a4 + ~v8;
    if (v71 >= 4 && (a3 & 0xFF8) >= 0x78)
    {
      if (v71 < 0x10)
      {
        v72 = 0;
        goto LABEL_111;
      }

      v72 = v71 & 0xFFFFFFFFFFFFFFF0;
      v105 = (a2 + 2 * ((a3 >> 3) & 0x1FF) + 18);
      v106 = (a2 + 16);
      v107 = v71 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v108 = *v106;
        *(v105 - 1) = *(v106 - 1);
        *v105 = v108;
        v105 += 2;
        v106 += 2;
        v107 -= 16;
      }

      while (v107);
      if (v71 == v72)
      {
        goto LABEL_134;
      }

      if ((v71 & 0xC) != 0)
      {
LABEL_111:
        v21 = (v71 & 0xFFFFFFFFFFFFFFFCLL) + v11;
        v109 = (a2 + 2 * v72);
        v110 = v72 - (v71 & 0xFFFFFFFFFFFFFFFCLL);
        do
        {
          *(v109 + 2 * ((a3 >> 3) & 0x1FF) + 2) = *v109;
          ++v109;
          v110 += 4;
        }

        while (v110);
        if (v71 == (v71 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_134;
        }

        goto LABEL_128;
      }

      v21 = v72 + v11;
    }

LABEL_128:
    v121 = a4 - v21;
    v122 = (a2 + 2 * v21);
    do
    {
      *v122 = *(v122 + ((2 * ~(a3 >> 3)) | 0xFFFFFFFFFFFFFC00));
      ++v122;
      --v121;
    }

    while (v121);
  }

LABEL_134:
  if (v128)
  {
    sub_1002ACC1C(v127);
  }
}

void sub_10027037C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_1002A8124(&a9);
  sub_1001D8BF4(&a11);
  _Unwind_Resume(a1);
}

void sub_1002703C0(uint64_t a1@<X0>, signed int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  switch(HIWORD(*a1) & 0x1F)
  {
    case 0:
      goto LABEL_65;
    case 1:
      v27 = *(a1 + 8);
      if ((a2 & 0x80000000) == 0)
      {
        __src.i32[0] = a2;
        __src.i32[1] = a2 + 1;
        v60 = 0x7FFFFFFF80000000;
        sub_100269C44(a3, v27, &__src, &v60);
        return;
      }

      v38 = *v27;
      *a3 = *v27;
      *(a3 + 16) = v27[1];
      *(a3 + 32) = v27[2];
      *(a3 + 48) = *(v27 + 6);
      v39 = *(v27 + 7);
      *(a3 + 56) = v39;
      *(a3 + 64) = a3 + 8;
      *(a3 + 80) = 0;
      *(a3 + 72) = a3 + 80;
      *(a3 + 88) = 0;
      if (v39)
      {
        atomic_fetch_add((v39 + 20), 1u);
        v40 = *(v27 + 1);
      }

      else
      {
        v40 = DWORD1(v38);
      }

      if (v40 <= 2)
      {
        v46 = *(v27 + 9);
        goto LABEL_78;
      }

      *(a3 + 4) = 0;
      v53 = v27;
      sub_100269568(a3, *(v27 + 1), 0, 0, 0);
      if (*(a3 + 4) >= 1)
      {
        v54 = 0;
        v55 = *(v53 + 8);
        v56 = *(v53 + 9);
        v57 = *(a3 + 64);
        v58 = *(a3 + 72);
        do
        {
          *(v57 + 4 * v54) = *(v55 + 4 * v54);
          *(v58 + 8 * v54) = *(v56 + 8 * v54);
          ++v54;
        }

        while (v54 < *(a3 + 4));
      }

      return;
    case 2:
    case 0xE:
      if ((a2 & 0x80000000) == 0)
      {
        __src = 0;
        v62 = 0;
        v7 = sub_1002A80E0(&__src, 5);
        *(v7 + 4) = 48;
        *v7 = 540811369;
        sub_1002A8980(-215, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1231);
      }

      __src = *(a1 + 16);
      sub_10024255C(a3, &__src, v4, *(a1 + 8), 0);
      return;
    case 3:
      if ((a2 & 0x80000000) == 0)
      {
        __src = 0;
        v62 = 0;
        v32 = sub_1002A80E0(&__src, 5);
        *(v32 + 4) = 48;
        *v32 = 540811369;
        sub_1002A8980(-215, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1237);
      }

      v33 = *(a1 + 8);
      if (*v33 == v33[1])
      {
        goto LABEL_65;
      }

      v34 = *a1;
      sub_100271154(a1, 0xFFFFFFFF, &__src);
      sub_10024255C(a3, &__src, v34 & 0xFFF, *v33, 0);
      return;
    case 4:
      v15 = sub_100271A88(a1, a2);
      v16 = *(a1 + 8);
      if (a2 < 0 || (-1431655765 * ((v16[1] - *v16) >> 3)) <= a2)
      {
        __src = 0;
        v62 = 0;
        qmemcpy(sub_1002A80E0(&__src, 28), "0 <= i && i < (int)vv.size()", 28);
        sub_1002A8980(-215, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1266);
      }

      v17 = (*v16 + 24 * a2);
      if (*v17 == v17[1])
      {
LABEL_65:
        *a3 = 1124007936;
        *(a3 + 4) = 0u;
        *(a3 + 20) = 0u;
        *(a3 + 36) = 0u;
        *(a3 + 48) = 0u;
        *(a3 + 80) = 0;
        *(a3 + 64) = a3 + 8;
        *(a3 + 72) = a3 + 80;
        *(a3 + 88) = 0;
      }

      else
      {
        sub_100271154(a1, a2, &__src);
        sub_10024255C(a3, &__src, v15, *v17, 0);
      }

      return;
    case 5:
      v23 = *(a1 + 8);
      if (a2 < 0 || (-1431655765 * ((v23[1] - *v23) >> 5)) <= a2)
      {
        __src = 0;
        v62 = 0;
        qmemcpy(sub_1002A80E0(&__src, 27), "0 <= i && i < (int)v.size()", 27);
        sub_1002A8980(-215, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1275);
      }

      v24 = *v23 + 96 * a2;
      v25 = *v24;
      *a3 = *v24;
      *(a3 + 16) = *(v24 + 16);
      *(a3 + 32) = *(v24 + 32);
      *(a3 + 48) = *(v24 + 48);
      v26 = *(v24 + 56);
      *(a3 + 56) = v26;
      *(a3 + 64) = a3 + 8;
      *(a3 + 80) = 0;
      *(a3 + 72) = a3 + 80;
      *(a3 + 88) = 0;
      if (v26)
      {
        atomic_fetch_add((v26 + 20), 1u);
        if (*(v24 + 4) <= 2)
        {
          goto LABEL_77;
        }
      }

      else if (SDWORD1(v25) <= 2)
      {
        goto LABEL_77;
      }

      *(a3 + 4) = 0;
      sub_100269568(a3, *(v24 + 4), 0, 0, 0);
      if (*(a3 + 4) >= 1)
      {
        v41 = 0;
        v42 = *(v24 + 64);
        v43 = *(v24 + 72);
        v44 = *(a3 + 64);
        v45 = *(a3 + 72);
        do
        {
          *(v44 + 4 * v41) = *(v42 + 4 * v41);
          *(v45 + 8 * v41) = *(v43 + 8 * v41);
          ++v41;
        }

        while (v41 < *(a3 + 4));
      }

      return;
    case 6:
      if ((a2 & 0x80000000) == 0)
      {
        __src = 0;
        v62 = 0;
        v28 = sub_1002A80E0(&__src, 5);
        *(v28 + 4) = 48;
        *v28 = 540811369;
        sub_1002A8980(-215, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1225);
      }

      v29 = *(a1 + 8);
      *a3 = 1124007936;
      *(a3 + 48) = 0u;
      *(a3 + 36) = 0u;
      *(a3 + 20) = 0u;
      *(a3 + 4) = 0u;
      *(a3 + 80) = 0;
      *(a3 + 64) = a3 + 8;
      *(a3 + 72) = a3 + 80;
      *(a3 + 88) = 0;
      (*(**v29 + 24))(*v29, v29, a3, 0xFFFFFFFFLL);
      return;
    case 7:
      if ((a2 & 0x80000000) == 0)
      {
        __src = 0;
        v62 = 0;
        v37 = sub_1002A80E0(&__src, 5);
        *(v37 + 4) = 48;
        *v37 = 540811369;
        sub_1002A8980(-215, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1298);
      }

      __src = 0;
      v62 = 0;
      qmemcpy(sub_1002A80E0(&__src, 75), "You should explicitly call mapHost/unmapHost methods for ogl::Buffer object", 75);
      sub_1002A8980(-213, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1299);
    case 8:
      if ((a2 & 0x80000000) == 0)
      {
        __src = 0;
        v62 = 0;
        v35 = sub_1002A80E0(&__src, 5);
        *(v35 + 4) = 48;
        *v35 = 540811369;
        sub_1002A8980(-215, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1312);
      }

      v36 = *(a1 + 8);
      __src = vrev64_s32(*(v36 + 4));
      sub_10024255C(a3, &__src, *v36 & 0xFFF, *(v36 + 24), *(v36 + 16));
      return;
    case 9:
      if ((a2 & 0x80000000) == 0)
      {
        __src = 0;
        v62 = 0;
        v13 = sub_1002A80E0(&__src, 5);
        *(v13 + 4) = 48;
        *v13 = 540811369;
        sub_1002A8980(-215, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1305);
      }

      __src = 0;
      v62 = 0;
      qmemcpy(sub_1002A80E0(&__src, 66), "You should explicitly call download method for cuda::GpuMat object", 66);
      sub_1002A8980(-213, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1306);
    case 0xA:
      v18 = *(a1 + 8);
      if (a2 < 0)
      {

        sub_1002B1E74(v18, v4 & 0x3000000, a3);
      }

      else
      {
        sub_1002B1E74(v18, v4 & 0x3000000, &__src);
        LODWORD(v60) = a2;
        HIDWORD(v60) = a2 + 1;
        v59 = 0x7FFFFFFF80000000;
        sub_100269C44(a3, &__src, &v60, &v59);
        if (v66)
        {
          if (atomic_fetch_add((v66 + 20), 0xFFFFFFFF) == 1)
          {
            v19 = v66;
            if (v66)
            {
              v66 = 0;
              v20 = *(v19 + 8);
              if (!v20)
              {
                v20 = v65;
                if (!v65)
                {
                  v20 = sub_100268CC8();
                }
              }

              (*(*v20 + 48))(v20, v19);
            }
          }
        }

        v66 = 0;
        v63 = 0u;
        v64 = 0u;
        if (__src.i32[1] >= 1)
        {
          v21 = 0;
          v22 = v67;
          do
          {
            *(v22 + 4 * v21++) = 0;
          }

          while (v21 < __src.i32[1]);
        }

        if (v68 != &v69)
        {
          j__free(v68);
        }
      }

      return;
    case 0xB:
      v14 = *(a1 + 8);
      if (a2 < 0 || (-858993459 * ((v14[1] - *v14) >> 4)) <= a2)
      {
        __src = 0;
        v62 = 0;
        qmemcpy(sub_1002A80E0(&__src, 27), "0 <= i && i < (int)v.size()", 27);
        sub_1002A8980(-215, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1291);
      }

      sub_1002B1E74(*v14 + 80 * a2, v4 & 0x3000000, a3);
      return;
    case 0xC:
      if ((a2 & 0x80000000) == 0)
      {
        __src = 0;
        v62 = 0;
        v8 = sub_1002A80E0(&__src, 5);
        *(v8 + 4) = 48;
        *v8 = 540811369;
        sub_1002A8980(-215, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1246);
      }

      v9 = *(a1 + 8);
      v10 = v9[1];
      *a3 = 1124007936;
      *(a3 + 4) = 0u;
      *(a3 + 20) = 0u;
      *(a3 + 36) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 80) = 0;
      *(a3 + 64) = a3 + 8;
      *(a3 + 72) = a3 + 80;
      *(a3 + 88) = 0;
      if (v10)
      {
        __src.i32[0] = 1;
        __src.i32[1] = v10;
        sub_100268ED0(a3, 2, &__src, 0);
        if (v10 >= 1)
        {
          v11 = 0;
          v12 = *(a3 + 16);
          do
          {
            *(v12 + v11) = (*(*v9 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11) & 1;
            ++v11;
          }

          while ((v10 & 0x7FFFFFFF) != v11);
        }
      }

      return;
    case 0xF:
      if (a2 < 0 || *(a1 + 20) <= a2)
      {
        __src = 0;
        v62 = 0;
        qmemcpy(sub_1002A80E0(&__src, 23), "0 <= i && i < sz.height", 23);
        sub_1002A8980(-215, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1283);
      }

      v24 = *(a1 + 8) + 96 * a2;
      v30 = *v24;
      *a3 = *v24;
      *(a3 + 16) = *(v24 + 16);
      *(a3 + 32) = *(v24 + 32);
      *(a3 + 48) = *(v24 + 48);
      v31 = *(v24 + 56);
      *(a3 + 56) = v31;
      *(a3 + 64) = a3 + 8;
      *(a3 + 80) = 0;
      *(a3 + 72) = a3 + 80;
      *(a3 + 88) = 0;
      if (v31)
      {
        atomic_fetch_add((v31 + 20), 1u);
        if (*(v24 + 4) > 2)
        {
LABEL_79:
          *(a3 + 4) = 0;
          sub_100269568(a3, *(v24 + 4), 0, 0, 0);
          if (*(a3 + 4) >= 1)
          {
            v48 = 0;
            v49 = *(v24 + 64);
            v50 = *(v24 + 72);
            v51 = *(a3 + 64);
            v52 = *(a3 + 72);
            do
            {
              *(v51 + 4 * v48) = *(v49 + 4 * v48);
              *(v52 + 8 * v48) = *(v50 + 8 * v48);
              ++v48;
            }

            while (v48 < *(a3 + 4));
          }

          return;
        }
      }

      else if (SDWORD1(v30) > 2)
      {
        goto LABEL_79;
      }

LABEL_77:
      v46 = *(v24 + 72);
LABEL_78:
      v47 = *(a3 + 72);
      *v47 = *v46;
      v47[1] = v46[1];
      return;
    default:
      __src = 0;
      v62 = 0;
      qmemcpy(sub_1002A80E0(&__src, 30), "Unknown/unsupported array type", 30);
      sub_1002A8980(-213, &__src, "getMat_", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1319);
  }
}

void sub_100270F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100271154@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  switch(*(result + 2) & 0x1F)
  {
    case 0:
      goto LABEL_54;
    case 1:
      if ((a2 & 0x80000000) == 0)
      {
        v29 = 0;
        v30 = 0;
        v15 = sub_1002A80E0(&v29, 5);
        *v15 = 540811369;
        *(v15 + 4) = 48;
        sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1592);
      }

      v14 = *(result + 8);
      goto LABEL_44;
    case 2:
    case 0xE:
      if ((a2 & 0x80000000) == 0)
      {
        v29 = 0;
        v30 = 0;
        v4 = sub_1002A80E0(&v29, 5);
        *v4 = 540811369;
        *(v4 + 4) = 48;
        sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1610);
      }

      *a3 = *(result + 16);
      return result;
    case 3:
      if ((a2 & 0x80000000) == 0)
      {
        v29 = 0;
        v30 = 0;
        v9 = sub_1002A80E0(&v29, 5);
        *v9 = 540811369;
        *(v9 + 4) = 48;
        sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1616);
      }

      v10 = *(*(result + 8) + 8) - **(result + 8);
      if (v10 != v10 >> 2)
      {
        v10 /= ((((*result >> 3) & 0x1FFu) + 1) << ((0xFA50u >> (2 * (*result & 7))) & 3));
      }

      goto LABEL_69;
    case 4:
      v17 = *(result + 8);
      if ((a2 & 0x80000000) == 0)
      {
        if ((-1431655765 * ((v17[1] - *v17) >> 3)) <= a2)
        {
          sub_1001FA81C(&v29, "i < (int)vv.size()");
          sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1638);
        }

        v18 = *(*v17 + 24 * a2 + 8) - *(*v17 + 24 * a2);
        if (v18 == v18 >> 2)
        {
          *a3 = v18;
          *(a3 + 4) = 1;
          return result;
        }

        v10 = v18 / ((((*result >> 3) & 0x1FFu) + 1) << ((0xFA50u >> (2 * (*result & 7))) & 3));
        goto LABEL_69;
      }

      v27 = v17[1];
      if (*v17 == v27)
      {
        goto LABEL_54;
      }

      v25 = (v27 - *v17) >> 3;
      goto LABEL_65;
    case 5:
      v20 = *(result + 8);
      if ((a2 & 0x80000000) == 0)
      {
        if ((-1431655765 * ((v20[1] - *v20) >> 5)) <= a2)
        {
          sub_1001FA81C(&v29, "i < (int)vv.size()");
          sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1650);
        }

        v14 = *v20 + 96 * a2;
        goto LABEL_44;
      }

      v28 = v20[1];
      if (*v20 == v28)
      {
        goto LABEL_54;
      }

      v25 = (v28 - *v20) >> 5;
LABEL_65:
      v26 = -1431655765;
      goto LABEL_66;
    case 6:
      if ((a2 & 0x80000000) == 0)
      {
        v29 = 0;
        v30 = 0;
        v16 = sub_1002A80E0(&v29, 5);
        *v16 = 540811369;
        *(v16 + 4) = 48;
        sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1598);
      }

      return sub_1002633C8(*(result + 8), a3);
    case 7:
      if ((a2 & 0x80000000) == 0)
      {
        v29 = 0;
        v30 = 0;
        v22 = sub_1002A80E0(&v29, 5);
        *v22 = 540811369;
        *(v22 + 4) = 48;
        sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1686);
      }

      v6 = *(*(result + 8) + 16);
      goto LABEL_52;
    case 8:
      if ((a2 & 0x80000000) == 0)
      {
        v29 = 0;
        v30 = 0;
        v12 = sub_1002A80E0(&v29, 5);
        *v12 = 540811369;
        *(v12 + 4) = 48;
        sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1700);
      }

      goto LABEL_48;
    case 9:
      if ((a2 & 0x80000000) == 0)
      {
        v29 = 0;
        v30 = 0;
        v21 = sub_1002A80E0(&v29, 5);
        *v21 = 540811369;
        *(v21 + 4) = 48;
        sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1693);
      }

LABEL_48:
      v6 = *(*(result + 8) + 4);
      goto LABEL_52;
    case 0xA:
      if ((a2 & 0x80000000) == 0)
      {
        v29 = 0;
        v30 = 0;
        v7 = sub_1002A80E0(&v29, 5);
        *v7 = 540811369;
        *(v7 + 4) = 48;
        sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1604);
      }

      v8 = *(*(result + 8) + 48);
      goto LABEL_45;
    case 0xB:
      v11 = *(result + 8);
      if ((a2 & 0x80000000) == 0)
      {
        if ((-858993459 * ((v11[1] - *v11) >> 4)) <= a2)
        {
          sub_1001FA81C(&v29, "i < (int)vv.size()");
          sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1679);
        }

        v8 = *(*v11 + 80 * a2 + 48);
        goto LABEL_45;
      }

      v24 = v11[1];
      if (*v11 == v24)
      {
        goto LABEL_54;
      }

      v25 = (v24 - *v11) >> 4;
      v26 = -858993459;
LABEL_66:
      v13 = v25 * v26;
      goto LABEL_67;
    case 0xC:
      if ((a2 & 0x80000000) == 0)
      {
        v29 = 0;
        v30 = 0;
        v19 = sub_1002A80E0(&v29, 5);
        *v19 = 540811369;
        *(v19 + 4) = 48;
        sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1625);
      }

      v10 = *(*(result + 8) + 8);
      goto LABEL_69;
    case 0xD:
      v5 = *(result + 8);
      if ((a2 & 0x80000000) == 0)
      {
        if (((v5[1] - *v5) >> 6) <= a2)
        {
          sub_1001FA81C(&v29, "i < (int)vv.size()");
          sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1670);
        }

        v6 = *(*v5 + (a2 << 6) + 4);
        goto LABEL_52;
      }

      v23 = v5[1];
      if (*v5 == v23)
      {
        goto LABEL_54;
      }

      v10 = (v23 - *v5) >> 6;
LABEL_69:
      *a3 = v10;
      *(a3 + 4) = 1;
      break;
    case 0xF:
      v13 = *(result + 20);
      if ((a2 & 0x80000000) != 0)
      {
        if (v13)
        {
LABEL_67:
          *a3 = v13;
          *(a3 + 4) = 1;
        }

        else
        {
LABEL_54:
          *a3 = 0;
        }
      }

      else
      {
        if (v13 <= a2)
        {
          sub_1001FA81C(&v29, "i < sz.height");
          sub_1002A8980(-215, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1660);
        }

        v14 = *(result + 8) + 96 * a2;
LABEL_44:
        v8 = *(v14 + 64);
LABEL_45:
        v6 = *v8;
LABEL_52:
        *a3 = vrev64_s32(v6);
      }

      break;
    default:
      v29 = 0;
      v30 = 0;
      qmemcpy(sub_1002A80E0(&v29, 30), "Unknown/unsupported array type", 30);
      sub_1002A8980(-213, &v29, "size", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1705);
  }

  return result;
}

uint64_t sub_100271A88(int *a1, int a2)
{
  v2 = *a1;
  v3 = *a1 & 0x1F0000;
  switch(v3)
  {
    case 0xA0000u:
      return **(a1 + 1) & 0xFFF;
    case 0x60000u:
      v5 = *(a1 + 1);

      return sub_100263504(v5);
    case 0x10000u:
      return **(a1 + 1) & 0xFFF;
  }

  if ((v2 & 0x170000) == 0x40000 || (v2 & 0x1E0000) == 0x20000 || v3 == 917504)
  {
    return v2 & 0xFFF;
  }

  v6 = HIWORD(v3);
  if (v6 > 8)
  {
    if (v6 <= 12)
    {
      if (v6 == 9)
      {
        return **(a1 + 1) & 0xFFF;
      }

      if (v6 == 11)
      {
        v12 = *(a1 + 1);
        v8 = *v12;
        v13 = v12[1];
        if (*v12 != v13)
        {
          if ((-858993459 * ((v13 - v8) >> 4)) <= a2)
          {
            sub_1001FA81C(v18, "i < (int)vv.size()");
            sub_1002A8980(-215, v18, "type", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1985);
          }

          v10 = a2 & ~(a2 >> 31);
          v11 = 80;
          goto LABEL_26;
        }

        if ((v2 & 0x80000000) == 0)
        {
          sub_1001FA81C(v18, "(flags & FIXED_TYPE) != 0");
          sub_1002A8980(-215, v18, "type", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1982);
        }

        return v2 & 0xFFF;
      }

      goto LABEL_42;
    }

    if (v6 == 13)
    {
      v16 = *(a1 + 1);
      v8 = *v16;
      v17 = v16[1];
      if (*v16 != v17)
      {
        if (((v17 - v8) >> 6) <= a2)
        {
          sub_1001FA81C(v18, "i < (int)vv.size()");
          sub_1002A8980(-215, v18, "type", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2021);
        }

        v14 = (a2 & ~(a2 >> 31)) << 6;
        return *(v8 + v14) & 0xFFF;
      }

      if ((v2 & 0x80000000) == 0)
      {
        sub_1001FA81C(v18, "(flags & FIXED_TYPE) != 0");
        sub_1002A8980(-215, v18, "type", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2018);
      }
    }

    else
    {
      if (v6 != 15)
      {
        goto LABEL_42;
      }

      v15 = a1[5];
      if (v15)
      {
        if (v15 <= a2)
        {
          sub_1001FA81C(v18, "i < sz.height");
          sub_1002A8980(-215, v18, "type", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2009);
        }

        return *(*(a1 + 1) + 96 * (a2 & ~(a2 >> 31))) & 0xFFF;
      }

      if ((v2 & 0x80000000) == 0)
      {
        sub_1001FA81C(v18, "(flags & FIXED_TYPE) != 0");
        sub_1002A8980(-215, v18, "type", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2006);
      }
    }

    return v2 & 0xFFF;
  }

  if (v6 <= 6)
  {
    if (!v6)
    {
      return 0xFFFFFFFFLL;
    }

    if (v6 == 5)
    {
      v7 = *(a1 + 1);
      v8 = *v7;
      v9 = v7[1];
      if (*v7 != v9)
      {
        if ((-1431655765 * ((v9 - v8) >> 5)) <= a2)
        {
          sub_1001FA81C(v18, "i < (int)vv.size()");
          sub_1002A8980(-215, v18, "type", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1997);
        }

        v10 = a2 & ~(a2 >> 31);
        v11 = 96;
LABEL_26:
        v14 = v10 * v11;
        return *(v8 + v14) & 0xFFF;
      }

      if ((v2 & 0x80000000) == 0)
      {
        sub_1001FA81C(v18, "(flags & FIXED_TYPE) != 0");
        sub_1002A8980(-215, v18, "type", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1994);
      }

      return v2 & 0xFFF;
    }

LABEL_42:
    sub_1001FA81C(v18, "Unknown/unsupported array type");
    sub_1002A8980(-213, v18, "type", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2034);
  }

  if (v6 != 7)
  {
    return **(a1 + 1) & 0xFFF;
  }

  return *(*(a1 + 1) + 24);
}

void sub_100271FE8(uint64_t a1@<X0>, signed int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a1 & 0x1F0000;
  if (v6 == 0x10000)
  {
    v10 = *(a1 + 8);
    if (a2 < 0)
    {
      v20 = *(a1 + 8);

      sub_1002AF980(v20, v5 & 0x3000000, 0, a3);
      return;
    }

    LODWORD(v33) = a2;
    HIDWORD(v33) = a2 + 1;
    v32 = 0x7FFFFFFF80000000;
    sub_100269C44(v24, v10, &v33, &v32);
    sub_1002AF980(v24, v5 & 0x3000000, 0, a3);
    if (v28)
    {
      if (atomic_fetch_add((v28 + 20), 0xFFFFFFFF) == 1)
      {
        v11 = v28;
        if (v28)
        {
          v28 = 0;
          v12 = *(v11 + 8);
          if (!v12)
          {
            v12 = v27;
            if (!v27)
            {
              v12 = sub_100268CC8();
            }
          }

          (*(*v12 + 48))(v12, v11);
        }
      }
    }

    v28 = 0;
    v25 = 0u;
    v26 = 0u;
    if (SHIDWORD(v24[0]) >= 1)
    {
      v13 = 0;
      v14 = v29;
      do
      {
        *(v14 + 4 * v13++) = 0;
      }

      while (v13 < SHIDWORD(v24[0]));
    }

    v15 = v30;
    if (v30 == v31)
    {
      return;
    }

LABEL_26:
    j__free(v15);
    return;
  }

  if (v6 == 720896)
  {
    v8 = *(a1 + 8);
    if (a2 < 0 || (-858993459 * ((v8[1] - *v8) >> 4)) <= a2)
    {
      v24[0] = 0;
      v24[1] = 0;
      qmemcpy(sub_1002A80E0(v24, 27), "0 <= i && i < (int)v.size()", 27);
      sub_1002A8980(-215, v24, "getUMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1339);
    }

    v7 = *v8 + 80 * a2;
    *a3 = *v7;
    *(a3 + 16) = *(v7 + 16);
    *(a3 + 24) = *(v7 + 24);
    v9 = *(v7 + 32);
    *(a3 + 32) = v9;
    *(a3 + 40) = *(v7 + 40);
    *(a3 + 48) = a3 + 8;
    *(a3 + 64) = 0;
    *(a3 + 56) = a3 + 64;
    *(a3 + 72) = 0;
    if (v9)
    {
      atomic_fetch_add((v9 + 16), 1u);
    }

    if (*(v7 + 4) > 2)
    {
      *(a3 + 4) = 0;
      sub_1002B07FC(a3, v7);
      return;
    }

    goto LABEL_45;
  }

  if (v6 != 655360)
  {
    sub_10026E0C8(a1, a2, v24);
    sub_1002AF980(v24, v5 & 0x3000000, 0, a3);
    if (v28)
    {
      if (atomic_fetch_add((v28 + 20), 0xFFFFFFFF) == 1)
      {
        v16 = v28;
        if (v28)
        {
          v28 = 0;
          v17 = *(v16 + 8);
          if (!v17)
          {
            v17 = v27;
            if (!v27)
            {
              v17 = sub_100268CC8();
            }
          }

          (*(*v17 + 48))(v17, v16);
        }
      }
    }

    v28 = 0;
    v25 = 0u;
    v26 = 0u;
    if (SHIDWORD(v24[0]) >= 1)
    {
      v18 = 0;
      v19 = v29;
      do
      {
        *(v19 + 4 * v18++) = 0;
      }

      while (v18 < SHIDWORD(v24[0]));
    }

    v15 = v30;
    if (v30 == v31)
    {
      return;
    }

    goto LABEL_26;
  }

  v7 = *(a1 + 8);
  if ((a2 & 0x80000000) == 0)
  {
    LODWORD(v24[0]) = a2;
    HIDWORD(v24[0]) = a2 + 1;
    v33 = 0x7FFFFFFF80000000;
    sub_1002B10E8(a3, v7, v24, &v33);
    return;
  }

  *a3 = *v7;
  *(a3 + 16) = *(v7 + 16);
  *(a3 + 24) = *(v7 + 24);
  v21 = *(v7 + 32);
  *(a3 + 32) = v21;
  *(a3 + 40) = *(v7 + 40);
  *(a3 + 48) = a3 + 8;
  *(a3 + 64) = 0;
  *(a3 + 56) = a3 + 64;
  *(a3 + 72) = 0;
  if (v21)
  {
    atomic_fetch_add((v21 + 16), 1u);
  }

  if (*(v7 + 4) <= 2)
  {
LABEL_45:
    v22 = *(v7 + 56);
    v23 = *(a3 + 56);
    *v23 = *v22;
    v23[1] = v22[1];
    return;
  }

  *(a3 + 4) = 0;

  sub_1002B07FC(a3, v7);
}

void sub_100272444(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = HIWORD(*a1) & 0x1F;
  if (v5 > 4)
  {
    if ((HIWORD(*a1) & 0x1Fu) <= 0xA)
    {
      if (v5 == 5)
      {
        v27 = *(a1 + 8);
        v29 = *v27;
        v28 = v27[1];
        v30 = v28 - *v27;
        v31 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 5);
        v32 = *a2;
        v33 = *(a2 + 8);
        v34 = 0xAAAAAAAAAAAAAAABLL * ((v33 - *a2) >> 5);
        if (v31 <= v34)
        {
          if (v31 < v34)
          {
            v85 = &v32[v30];
            while (v33 != v85)
            {
              v33 -= 96;
              sub_10027BD1C(a2, v33);
            }

            *(a2 + 8) = v85;
          }
        }

        else
        {
          sub_10027B954(a2, v31 - v34);
        }

        if (v28 != v29)
        {
          v86 = 0;
          if (v31 <= 1)
          {
            v31 = 1;
          }

          do
          {
            sub_10026A244(*a2 + v86, *v27 + v86);
            v86 += 96;
            --v31;
          }

          while (v31);
        }
      }

      else
      {
        if (v5 != 6)
        {
          goto LABEL_51;
        }

        v18 = *(a1 + 8);
        *v138 = 1124007936;
        memset(&v138[4], 0, 60);
        v139 = &v138[8];
        v140 = &v141;
        v141 = 0;
        v142 = 0;
        (*(**v18 + 24))(*v18, v18, v138, 0xFFFFFFFFLL);
        v19 = *v139;
        v20 = *(a2 + 8);
        v21 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *a2) >> 5);
        if (v19 <= v21)
        {
          if (v19 < v21)
          {
            v119 = *a2 + 96 * v19;
            while (v20 != v119)
            {
              v20 -= 96;
              sub_10027BD1C(a2, v20);
            }

            *(a2 + 8) = v119;
          }
        }

        else
        {
          sub_10027B954(a2, v19 - v21);
        }

        if (v19 >= 1)
        {
          v120 = 0;
          do
          {
            v121 = v120 + 1;
            v144[0] = v120;
            v144[1] = v120 + 1;
            v143 = 0x7FFFFFFF80000000;
            sub_100269C44(v132, v138, v144, &v143);
            v123.n128_f64[0] = sub_10025DAEC(*a2 + 96 * v120, v132, v122);
            if (v134)
            {
              if (atomic_fetch_add((v134 + 20), 0xFFFFFFFF) == 1)
              {
                v124 = v134;
                if (v134)
                {
                  v134 = 0;
                  v125 = *(v124 + 8);
                  if (!v125)
                  {
                    v125 = v133;
                    if (!v133)
                    {
                      v125 = sub_100268CC8();
                    }
                  }

                  (*(*v125 + 48))(v125, v124, v123);
                }
              }
            }

            v134 = 0;
            memset(&v132[1], 0, 32);
            if (SDWORD1(v132[0]) >= 1)
            {
              v126 = 0;
              v127 = v135;
              do
              {
                *(v127 + 4 * v126++) = 0;
              }

              while (v126 < SDWORD1(v132[0]));
            }

            if (v136 != &v137)
            {
              j__free(v136);
            }

            v120 = v121;
          }

          while (v121 != v19);
        }

        if (*&v138[56])
        {
          if (atomic_fetch_add((*&v138[56] + 20), 0xFFFFFFFF) == 1)
          {
            v128 = *&v138[56];
            if (*&v138[56])
            {
              *&v138[56] = 0;
              v129 = *(v128 + 8);
              if (!v129)
              {
                v129 = *&v138[48];
                if (!*&v138[48])
                {
                  v129 = sub_100268CC8();
                }
              }

              (*(*v129 + 48))(v129, v128);
            }
          }
        }

        *&v138[56] = 0;
        memset(&v138[16], 0, 32);
        if (*&v138[4] >= 1)
        {
          v130 = 0;
          v131 = v139;
          do
          {
            v131[v130++] = 0;
          }

          while (v130 < *&v138[4]);
        }

        if (v140 != &v141)
        {
          j__free(v140);
        }
      }

      return;
    }

    if (v5 == 11)
    {
      v35 = *(a1 + 8);
      v37 = *v35;
      v36 = v35[1];
      v38 = 0xCCCCCCCCCCCCCCCDLL * ((v36 - *v35) >> 4);
      v39 = *(a2 + 8);
      v40 = 0xAAAAAAAAAAAAAAABLL * ((v39 - *a2) >> 5);
      if (v38 <= v40)
      {
        if (v38 < v40)
        {
          v87 = *a2 - 0x3333333333333320 * ((v36 - *v35) >> 4);
          while (v39 != v87)
          {
            v39 -= 96;
            sub_10027BD1C(a2, v39);
          }

          *(a2 + 8) = v87;
        }
      }

      else
      {
        sub_10027B954(a2, v38 - v40);
      }

      if (v36 != v37)
      {
        v88 = 0;
        if (v38 <= 1)
        {
          v38 = 1;
        }

        do
        {
          sub_1002B1E74(*v35 + 80 * v88, v4 & 0x3000000, v138);
          v90.n128_f64[0] = sub_10025DAEC(*a2 + 96 * v88, v138, v89);
          if (*&v138[56])
          {
            if (atomic_fetch_add((*&v138[56] + 20), 0xFFFFFFFF) == 1)
            {
              v91 = *&v138[56];
              if (*&v138[56])
              {
                *&v138[56] = 0;
                v92 = *(v91 + 8);
                if (!v92)
                {
                  v92 = *&v138[48];
                  if (!*&v138[48])
                  {
                    v92 = sub_100268CC8();
                  }
                }

                (*(*v92 + 48))(v92, v91, v90);
              }
            }
          }

          *&v138[56] = 0;
          memset(&v138[16], 0, 32);
          if (*&v138[4] >= 1)
          {
            v93 = 0;
            v94 = v139;
            do
            {
              v94[v93++] = 0;
            }

            while (v93 < *&v138[4]);
          }

          if (v140 != &v141)
          {
            j__free(v140);
          }

          ++v88;
        }

        while (v88 != v38);
      }

      return;
    }

    if (v5 != 14)
    {
      if (v5 != 15)
      {
        goto LABEL_51;
      }

      v10 = *(a1 + 8);
      v11 = *(a1 + 20);
      v12 = *(a2 + 8);
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a2) >> 5);
      if (v11 <= v13)
      {
        if (v11 < v13)
        {
          v105 = *a2 + 96 * v11;
          while (v12 != v105)
          {
            v12 -= 96;
            sub_10027BD1C(a2, v12);
          }

          *(a2 + 8) = v105;
        }
      }

      else
      {
        sub_10027B954(a2, v11 - v13);
      }

      if (v11)
      {
        v106 = 0;
        do
        {
          sub_10026A244(*a2 + v106, v10);
          v10 += 96;
          v106 += 96;
          --v11;
        }

        while (v11);
      }

      return;
    }

LABEL_21:
    v22 = *(a1 + 20);
    v23 = *(a2 + 8);
    v24 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a2) >> 5);
    if (v22 <= v24)
    {
      if (v22 < v24)
      {
        v41 = *a2 + 96 * v22;
        while (v23 != v41)
        {
          v23 -= 96;
          sub_10027BD1C(a2, v23);
        }

        *(a2 + 8) = v41;
      }
    }

    else
    {
      sub_10027B954(a2, v22 - v24);
    }

    if (v22)
    {
      v42 = 0;
      v43 = (((v4 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v4 & 7))) & 3);
      do
      {
        sub_10000A690(v138, 1, *(a1 + 16), *a1 & 0xFFF, *(a1 + 8) + v42 * v43 * *(a1 + 16), 0);
        v45.n128_f64[0] = sub_10025DAEC(*a2 + 96 * v42, v138, v44);
        if (*&v138[56])
        {
          if (atomic_fetch_add((*&v138[56] + 20), 0xFFFFFFFF) == 1)
          {
            v46 = *&v138[56];
            if (*&v138[56])
            {
              *&v138[56] = 0;
              v47 = *(v46 + 8);
              if (!v47)
              {
                v47 = *&v138[48];
                if (!*&v138[48])
                {
                  v47 = sub_100268CC8();
                }
              }

              (*(*v47 + 48))(v47, v46, v45);
            }
          }
        }

        *&v138[56] = 0;
        memset(&v138[16], 0, 32);
        if (*&v138[4] >= 1)
        {
          v48 = 0;
          v49 = v139;
          do
          {
            v49[v48++] = 0;
          }

          while (v48 < *&v138[4]);
        }

        if (v140 != &v141)
        {
          j__free(v140);
        }

        ++v42;
      }

      while (v42 != v22);
    }

    return;
  }

  if ((HIWORD(*a1) & 0x1Fu) <= 1)
  {
    if (!v5)
    {
      v26 = *a2;
      v25 = *(a2 + 8);
      if (v25 != *a2)
      {
        do
        {
          v25 -= 96;
          sub_10027BD1C(a2, v25);
        }

        while (v25 != v26);
      }

      *(a2 + 8) = v26;
      return;
    }

    v14 = *(a1 + 8);
    v15 = **(v14 + 8);
    v16 = *(a2 + 8);
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *a2) >> 5);
    if (v15 <= v17)
    {
      if (v15 < v17)
      {
        v55 = *a2 + 96 * v15;
        while (v16 != v55)
        {
          v16 -= 96;
          sub_10027BD1C(a2, v16);
        }

        *(a2 + 8) = v55;
      }
    }

    else
    {
      sub_10027B954(a2, v15 - v17);
    }

    if (v15 < 1)
    {
      return;
    }

    v56 = 0;
    while (1)
    {
      v57 = v14[1];
      if (v57 == 2)
      {
        sub_10000A690(v138, 1, v14[3], *v14 & 0xFFF, *(v14 + 2) + **(v14 + 9) * v56, 0);
      }

      else
      {
        v59 = v57 - 1;
        v60 = *v14;
        v62 = *(v14 + 8);
        v61 = *(v14 + 9);
        v63 = *(v14 + 2) + *v61 * v56;
        memset(&v138[20], 0, 44);
        *&v138[4] = 0u;
        v139 = &v138[8];
        v140 = &v141;
        v141 = 0;
        v142 = 0;
        *v138 = v60 & 0xFFF | 0x42FF0000;
        *&v138[16] = v63;
        *&v138[24] = v63;
        sub_100269568(v138, v59, v62 + 4, (v61 + 1), 1);
        v64 = v139;
        if (*&v138[4] < 1)
        {
          v66 = 0;
        }

        else
        {
          v65 = 0;
          while (v139[v65] <= 1)
          {
            if (*&v138[4] == ++v65)
            {
              LODWORD(v65) = *&v138[4];
              break;
            }
          }

          v66 = v65;
        }

        v67 = v140;
        v68 = *&v138[4] - 1;
        v69 = v140 + 8 * *&v138[4] - 8;
        while (v68 > v66)
        {
          v70 = *v69 * v139[v68];
          v71 = *--v69;
          --v68;
          if (v70 < v71)
          {
            *v138 &= ~0x4000u;
            if (*&v138[4] < 3)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          }
        }

        *v138 = *v138 & 0xFFFFBFFF | 0x4000;
        if (*&v138[4] < 3)
        {
          goto LABEL_75;
        }

LABEL_74:
        v58 = NAN;
        *&v138[8] = -1;
LABEL_75:
        if (*&v138[56])
        {
          v72 = *(*&v138[56] + 24);
          *&v138[16] = v72;
          *&v138[24] = v72;
          if (v72)
          {
            goto LABEL_77;
          }
        }

        else
        {
          v72 = *&v138[16];
          if (*&v138[16])
          {
LABEL_77:
            v73 = *v139;
            v74 = *&v138[24] + *v140 * v73;
            *&v138[40] = v74;
            if (v73 < 1)
            {
              *&v138[32] = v74;
            }

            else
            {
              v75 = (*&v138[4] - 1);
              v76 = v72 + *(v140 + v75) * v139[v75];
              *&v138[32] = v76;
              if (*&v138[4] >= 2)
              {
                do
                {
                  v77 = *v64++;
                  v78 = v77 - 1;
                  v79 = *v67++;
                  v76 += v79 * v78;
                  --v75;
                }

                while (v75);
                *&v138[32] = v76;
              }
            }

            goto LABEL_84;
          }
        }

        *&v138[32] = 0;
        *&v138[40] = 0;
      }

LABEL_84:
      v80.n128_f64[0] = sub_10025DAEC(*a2 + 96 * v56, v138, v58);
      if (*&v138[56])
      {
        if (atomic_fetch_add((*&v138[56] + 20), 0xFFFFFFFF) == 1)
        {
          v81 = *&v138[56];
          if (*&v138[56])
          {
            *&v138[56] = 0;
            v82 = *(v81 + 8);
            if (!v82)
            {
              v82 = *&v138[48];
              if (!*&v138[48])
              {
                v82 = sub_100268CC8();
              }
            }

            (*(*v82 + 48))(v82, v81, v80);
          }
        }
      }

      *&v138[56] = 0;
      memset(&v138[16], 0, 32);
      if (*&v138[4] >= 1)
      {
        v83 = 0;
        v84 = v139;
        do
        {
          v84[v83++] = 0;
        }

        while (v83 < *&v138[4]);
      }

      if (v140 != &v141)
      {
        j__free(v140);
      }

      if (++v56 == v15)
      {
        return;
      }
    }
  }

  if (v5 == 2)
  {
    goto LABEL_21;
  }

  if (v5 != 3)
  {
    if (v5 == 4)
    {
      v6 = *(a1 + 8);
      v7 = 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3);
      v8 = *(a2 + 8);
      v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 5);
      if (v7 <= v9)
      {
        if (v7 < v9)
        {
          v95 = *a2 + 96 * v7;
          while (v8 != v95)
          {
            v8 -= 96;
            sub_10027BD1C(a2, v8);
          }

          *(a2 + 8) = v95;
        }
      }

      else
      {
        sub_10027B954(a2, v7 - v9);
      }

      if (v7 >= 1)
      {
        v96 = 0;
        v97 = v7 & 0x7FFFFFFF;
        do
        {
          v98 = *v6;
          sub_100271154(a1, v96, v132);
          sub_10024255C(v138, v132, v4 & 0xFFF, *(v98 + 24 * v96), 0);
          v100.n128_f64[0] = sub_10025DAEC(*a2 + 96 * v96, v138, v99);
          if (*&v138[56])
          {
            if (atomic_fetch_add((*&v138[56] + 20), 0xFFFFFFFF) == 1)
            {
              v101 = *&v138[56];
              if (*&v138[56])
              {
                *&v138[56] = 0;
                v102 = *(v101 + 8);
                if (!v102)
                {
                  v102 = *&v138[48];
                  if (!*&v138[48])
                  {
                    v102 = sub_100268CC8();
                  }
                }

                (*(*v102 + 48))(v102, v101, v100);
              }
            }
          }

          *&v138[56] = 0;
          memset(&v138[16], 0, 32);
          if (*&v138[4] >= 1)
          {
            v103 = 0;
            v104 = v139;
            do
            {
              v104[v103++] = 0;
            }

            while (v103 < *&v138[4]);
          }

          if (v140 != &v141)
          {
            j__free(v140);
          }

          ++v96;
        }

        while (v96 != v97);
      }

      return;
    }

LABEL_51:
    *v138 = 0;
    *&v138[8] = 0;
    qmemcpy(sub_1002A80E0(v138, 30), "Unknown/unsupported array type", 30);
    sub_1002A8980(-213, v138, "getMatVector", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1460);
  }

  v50 = *(a1 + 8);
  sub_100271154(a1, 0xFFFFFFFF, v138);
  v51 = *v138;
  v52 = *a1;
  v53 = *(a2 + 8);
  v54 = 0xAAAAAAAAAAAAAAABLL * ((v53 - *a2) >> 5);
  if (*v138 <= v54)
  {
    if (*v138 < v54)
    {
      v107 = *a2 + 96 * *v138;
      while (v53 != v107)
      {
        v53 -= 96;
        sub_10027BD1C(a2, v53);
      }

      *(a2 + 8) = v107;
    }
  }

  else
  {
    sub_10027B954(a2, *v138 - v54);
  }

  if (v51)
  {
    v108 = 0;
    v109 = v52 & 7;
    v110 = 0xFA50u >> (2 * (v52 & 7));
    v111 = ((v52 >> 3) & 0x1FF) + 1;
    v112 = (v111 << (v110 & 3));
    do
    {
      sub_10000A690(v138, 1, v111, v109, *v50 + v108 * v112, 0);
      v114.n128_f64[0] = sub_10025DAEC(*a2 + 96 * v108, v138, v113);
      if (*&v138[56])
      {
        if (atomic_fetch_add((*&v138[56] + 20), 0xFFFFFFFF) == 1)
        {
          v115 = *&v138[56];
          if (*&v138[56])
          {
            *&v138[56] = 0;
            v116 = *(v115 + 8);
            if (!v116)
            {
              v116 = *&v138[48];
              if (!*&v138[48])
              {
                v116 = sub_100268CC8();
              }
            }

            (*(*v116 + 48))(v116, v115, v114);
          }
        }
      }

      *&v138[56] = 0;
      memset(&v138[16], 0, 32);
      if (*&v138[4] >= 1)
      {
        v117 = 0;
        v118 = v139;
        do
        {
          v118[v117++] = 0;
        }

        while (v117 < *&v138[4]);
      }

      if (v140 != &v141)
      {
        j__free(v140);
      }

      ++v108;
    }

    while (v108 != v51);
  }
}

void sub_100273270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_100006D14(va);
  _Unwind_Resume(a1);
}

void sub_1002732E4(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_10027B954(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 96 * a2;
    while (v3 != v7)
    {
      v3 -= 96;
      sub_10027BD1C(a1, v3);
    }

    *(a1 + 8) = v7;
  }
}

void sub_100273384(uint64_t *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    sub_10027BDEC(a1, v7);
  }

  else if (!v6)
  {
    v8 = a1;
      ;
    }

    v8[1] = i;
  }
}

BOOL sub_100273410(uint64_t a1, uint64_t a2)
{
  v3 = *a1 & 0x1F0000;
  v4 = *a2 & 0x1F0000;
  if (v3 == 655360)
  {
    v10 = *(a1 + 8);
    if (v4 == 655360)
    {
      v6 = *(v10 + 48);
      v15 = *(v6 - 1);
      v8 = *(*(a2 + 8) + 48);
      if (v15 != *(v8 - 1))
      {
        return 0;
      }

      if (v15 == 2)
      {
        if (*v6 == *v8)
        {
          return v6[1] == v8[1];
        }

        return 0;
      }

      if (v15 < 1)
      {
        return 1;
      }

      v38 = v15 - 1;
      do
      {
        v40 = *v6++;
        v39 = v40;
        v42 = *v8++;
        v41 = v42;
        v24 = v38-- != 0;
        v43 = v24;
        result = v39 == v41;
      }

      while (v39 == v41 && (v43 & 1) != 0);
    }

    else
    {
      if (v4 != 0x10000)
      {
        if (*(v10 + 4) > 2)
        {
          return 0;
        }

        v17 = *(v10 + 48);
        v13 = *v17;
        v12 = v17[1];
        if (sub_10027377C(a2, -1) <= 2)
        {
          goto LABEL_33;
        }

        return 0;
      }

      v6 = *(v10 + 48);
      v11 = *(v6 - 1);
      v8 = *(*(a2 + 8) + 64);
      if (v11 != *(v8 - 1))
      {
        return 0;
      }

      if (v11 == 2)
      {
        if (*v6 != *v8)
        {
          return 0;
        }

        return v6[1] == v8[1];
      }

      if (v11 < 1)
      {
        return 1;
      }

      v26 = v11 - 1;
      do
      {
        v28 = *v6++;
        v27 = v28;
        v30 = *v8++;
        v29 = v30;
        v24 = v26-- != 0;
        v31 = v24;
        result = v27 == v29;
      }

      while (v27 == v29 && (v31 & 1) != 0);
    }
  }

  else
  {
    if (v3 != 0x10000)
    {
      sub_100271154(a1, 0xFFFFFFFF, &v44);
      v12 = v44;
      v13 = v45;
      if (sub_10027377C(a2, -1) <= 2)
      {
        goto LABEL_33;
      }

      return 0;
    }

    v5 = *(a1 + 8);
    if (v4 != 655360)
    {
      if (v4 == 0x10000)
      {
        v6 = *(v5 + 64);
        v7 = *(v6 - 1);
        v8 = *(*(a2 + 8) + 64);
        if (v7 == *(v8 - 1))
        {
          if (v7 == 2)
          {
            if (*v6 != *v8)
            {
              return 0;
            }

            return v6[1] == v8[1];
          }

          if (v7 >= 1)
          {
            v19 = v7 - 1;
            do
            {
              v21 = *v6++;
              v20 = v21;
              v23 = *v8++;
              v22 = v23;
              v24 = v19-- != 0;
              v25 = v24;
              result = v20 == v22;
            }

            while (v20 == v22 && (v25 & 1) != 0);
            return result;
          }

          return 1;
        }

        return 0;
      }

      if (*(v5 + 4) > 2)
      {
        return 0;
      }

      v16 = *(v5 + 64);
      v13 = *v16;
      v12 = v16[1];
      if (sub_10027377C(a2, -1) <= 2)
      {
LABEL_33:
        sub_100271154(a2, 0xFFFFFFFF, &v44);
        return v12 == v44 && v13 == v45;
      }

      return 0;
    }

    v6 = *(v5 + 64);
    v14 = *(v6 - 1);
    v8 = *(*(a2 + 8) + 48);
    if (v14 != *(v8 - 1))
    {
      return 0;
    }

    if (v14 == 2)
    {
      if (*v6 != *v8)
      {
        return 0;
      }

      return v6[1] == v8[1];
    }

    if (v14 < 1)
    {
      return 1;
    }

    v32 = v14 - 1;
    do
    {
      v34 = *v6++;
      v33 = v34;
      v36 = *v8++;
      v35 = v36;
      v24 = v32-- != 0;
      v37 = v24;
      result = v33 == v35;
    }

    while (v33 == v35 && (v37 & 1) != 0);
  }

  return result;
}

uint64_t sub_10027377C(uint64_t a1, signed int a2)
{
  result = *(a1 + 2) & 0x1F;
  switch(result)
  {
    case 0:
      return result;
    case 1:
      if ((a2 & 0x80000000) == 0)
      {
        v16 = 0;
        v17 = 0;
        v12 = sub_1002A80E0(&v16, 5);
        *v12 = 540811369;
        *(v12 + 4) = 48;
        sub_1002A8980(-215, &v16, "dims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1817);
      }

      return *(*(a1 + 8) + 4);
    case 2:
    case 14:
      if ((a2 & 0x80000000) == 0)
      {
        v16 = 0;
        v17 = 0;
        v4 = sub_1002A80E0(&v16, 5);
        *v4 = 540811369;
        *(v4 + 4) = 48;
        sub_1002A8980(-215, &v16, "dims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1835);
      }

      return 2;
    case 3:
    case 12:
      if ((a2 & 0x80000000) == 0)
      {
        v16 = 0;
        v17 = 0;
        v5 = sub_1002A80E0(&v16, 5);
        *v5 = 540811369;
        *(v5 + 4) = 48;
        sub_1002A8980(-215, &v16, "dims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1841);
      }

      return 2;
    case 4:
      if (a2 < 0)
      {
        goto LABEL_32;
      }

      if ((-1431655765 * ((*(*(a1 + 8) + 8) - **(a1 + 8)) >> 3)) <= a2)
      {
        sub_1001FA81C(&v16, "i < (int)vv.size()");
        sub_1002A8980(-215, &v16, "dims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1853);
      }

      return 2;
    case 5:
      if (a2 < 0)
      {
        goto LABEL_32;
      }

      v13 = *(a1 + 8);
      v7 = *v13;
      if ((-1431655765 * ((v13[1] - *v13) >> 5)) <= a2)
      {
        sub_1001FA81C(&v16, "i < (int)vv.size()");
        sub_1002A8980(-215, &v16, "dims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1862);
      }

      v8 = 96;
      goto LABEL_27;
    case 6:
      if ((a2 & 0x80000000) == 0)
      {
        v16 = 0;
        v17 = 0;
        v15 = sub_1002A80E0(&v16, 5);
        *v15 = 540811369;
        *(v15 + 4) = 48;
        sub_1002A8980(-215, &v16, "dims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1823);
      }

      return *(*(a1 + 8) + 20);
    case 7:
      if ((a2 & 0x80000000) == 0)
      {
        v16 = 0;
        v17 = 0;
        v14 = sub_1002A80E0(&v16, 5);
        *v14 = 540811369;
        *(v14 + 4) = 48;
        sub_1002A8980(-215, &v16, "dims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1889);
      }

      return 2;
    case 8:
      if ((a2 & 0x80000000) == 0)
      {
        v16 = 0;
        v17 = 0;
        v9 = sub_1002A80E0(&v16, 5);
        *v9 = 540811369;
        *(v9 + 4) = 48;
        sub_1002A8980(-215, &v16, "dims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1901);
      }

      return 2;
    case 9:
      if ((a2 & 0x80000000) == 0)
      {
        v16 = 0;
        v17 = 0;
        v11 = sub_1002A80E0(&v16, 5);
        *v11 = 540811369;
        *(v11 + 4) = 48;
        sub_1002A8980(-215, &v16, "dims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1895);
      }

      return 2;
    case 10:
      if ((a2 & 0x80000000) == 0)
      {
        v16 = 0;
        v17 = 0;
        v10 = sub_1002A80E0(&v16, 5);
        *v10 = 540811369;
        *(v10 + 4) = 48;
        sub_1002A8980(-215, &v16, "dims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1829);
      }

      return *(*(a1 + 8) + 4);
    case 11:
      if (a2 < 0)
      {
        goto LABEL_32;
      }

      v6 = *(a1 + 8);
      v7 = *v6;
      if ((-858993459 * ((v6[1] - *v6) >> 4)) <= a2)
      {
        sub_1001FA81C(&v16, "i < (int)vv.size()");
        sub_1002A8980(-215, &v16, "dims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1882);
      }

      v8 = 80;
LABEL_27:
      result = *(v7 + a2 * v8 + 4);
      break;
    case 15:
      if (a2 < 0)
      {
LABEL_32:
        result = 1;
      }

      else
      {
        if (*(a1 + 20) <= a2)
        {
          sub_1001FA81C(&v16, "i < sz.height");
          sub_1002A8980(-215, &v16, "dims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1872);
        }

        result = *(*(a1 + 8) + 96 * a2 + 4);
      }

      break;
    default:
      v16 = 0;
      v17 = 0;
      qmemcpy(sub_1002A80E0(&v16, 30), "Unknown/unsupported array type", 30);
      sub_1002A8980(-213, &v16, "dims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1905);
  }

  return result;
}

uint64_t sub_100273E70(uint64_t a1, unsigned int a2)
{
  v3 = *a1 & 0x1F0000;
  if (v3 < 0xA0000)
  {
    if (v3 == 0x10000)
    {
      if ((a2 & 0x80000000) == 0)
      {
        v58 = 0;
        v59 = 0;
        v48 = sub_1002A80E0(&v58, 5);
        *v48 = 540811369;
        *(v48 + 4) = 48;
        sub_1002A8980(-215, &v58, "total", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1915);
      }

      v6 = *(a1 + 8);
      v49 = *(v6 + 4);
      if (v49 < 3)
      {
        return *(v6 + 12) * *(v6 + 8);
      }

      v50 = *(v6 + 64);
      v51 = (v50 + 4);
      v52 = 1;
      v53 = v49 & 0x7FFFFFFE;
      v54 = 1;
      do
      {
        v52 *= *(v51 - 1);
        v54 *= *v51;
        v51 += 2;
        v53 -= 2;
      }

      while (v53);
      result = v54 * v52;
      v55 = v49 - (v49 & 0x7FFFFFFE);
      if (v55)
      {
        v56 = (v50 + 8 * ((v49 >> 1) & 0x3FFFFFFF));
        do
        {
          v57 = *v56++;
          result *= v57;
          --v55;
        }

        while (v55);
      }
    }

    else
    {
      if (v3 != 327680)
      {
        goto LABEL_50;
      }

      v16 = *(a1 + 8);
      result = 0xAAAAAAAAAAAAAAABLL * ((v16[1] - *v16) >> 5);
      if ((a2 & 0x80000000) != 0)
      {
        return result;
      }

      if (result <= a2)
      {
        v58 = 0;
        v59 = 0;
        v17 = sub_1002A80E0(&v58, 18);
        *(v17 + 16) = 10536;
        *v17 = *"i < (int)vv.size()";
        sub_1002A8980(-215, &v58, "total", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1931);
      }

      v6 = *v16 + 96 * a2;
      v18 = *(v6 + 4);
      if (v18 < 3)
      {
        return *(v6 + 12) * *(v6 + 8);
      }

      v19 = *(v6 + 64);
      v20 = (v19 + 4);
      v21 = 1;
      v22 = v18 & 0x7FFFFFFE;
      v23 = 1;
      do
      {
        v21 *= *(v20 - 1);
        v23 *= *v20;
        v20 += 2;
        v22 -= 2;
      }

      while (v22);
      result = v23 * v21;
      v24 = v18 - (v18 & 0x7FFFFFFE);
      if (v24)
      {
        v25 = (v19 + 8 * ((v18 >> 1) & 0x3FFFFFFF));
        do
        {
          v26 = *v25++;
          result *= v26;
          --v24;
        }

        while (v24);
      }
    }
  }

  else
  {
    switch(v3)
    {
      case 0xA0000u:
        if ((a2 & 0x80000000) == 0)
        {
          v58 = 0;
          v59 = 0;
          v27 = sub_1002A80E0(&v58, 5);
          *v27 = 540811369;
          *(v27 + 4) = 48;
          sub_1002A8980(-215, &v58, "total", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1921);
        }

        v6 = *(a1 + 8);
        v28 = *(v6 + 4);
        if (v28 < 3)
        {
          return *(v6 + 12) * *(v6 + 8);
        }

        v29 = *(v6 + 48);
        v30 = (v29 + 4);
        v31 = 1;
        v32 = v28 & 0x7FFFFFFE;
        v33 = 1;
        do
        {
          v31 *= *(v30 - 1);
          v33 *= *v30;
          v30 += 2;
          v32 -= 2;
        }

        while (v32);
        result = v33 * v31;
        v34 = v28 - (v28 & 0x7FFFFFFE);
        if (v34)
        {
          v35 = (v29 + 8 * ((v28 >> 1) & 0x3FFFFFFF));
          do
          {
            v36 = *v35++;
            result *= v36;
            --v34;
          }

          while (v34);
        }

        break;
      case 0xB0000u:
        v37 = *(a1 + 8);
        result = 0xCCCCCCCCCCCCCCCDLL * ((v37[1] - *v37) >> 4);
        if ((a2 & 0x80000000) != 0)
        {
          return result;
        }

        if (result <= a2)
        {
          v58 = 0;
          v59 = 0;
          v38 = sub_1002A80E0(&v58, 18);
          *(v38 + 16) = 10536;
          *v38 = *"i < (int)vv.size()";
          sub_1002A8980(-215, &v58, "total", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1951);
        }

        v6 = *v37 + 80 * a2;
        v39 = *(v6 + 4);
        if (v39 < 3)
        {
          return *(v6 + 12) * *(v6 + 8);
        }

        v40 = *(v6 + 48);
        v41 = (v40 + 4);
        v42 = 1;
        v43 = v39 & 0x7FFFFFFE;
        v44 = 1;
        do
        {
          v42 *= *(v41 - 1);
          v44 *= *v41;
          v41 += 2;
          v43 -= 2;
        }

        while (v43);
        result = v44 * v42;
        v45 = v39 - (v39 & 0x7FFFFFFE);
        if (v45)
        {
          v46 = (v40 + 8 * ((v39 >> 1) & 0x3FFFFFFF));
          do
          {
            v47 = *v46++;
            result *= v47;
            --v45;
          }

          while (v45);
        }

        break;
      case 0xF0000u:
        result = *(a1 + 20);
        if ((a2 & 0x80000000) != 0)
        {
          return result;
        }

        v5 = *(a1 + 8);
        if (result <= a2)
        {
          v58 = 0;
          v59 = 0;
          qmemcpy(sub_1002A80E0(&v58, 13), "i < sz.height", 13);
          sub_1002A8980(-215, &v58, "total", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 1941);
        }

        v6 = v5 + 96 * a2;
        v7 = *(v6 + 4);
        if (v7 >= 3)
        {
          v8 = *(v6 + 64);
          v9 = (v8 + 4);
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
          result = v12 * v10;
          v13 = v7 - (v7 & 0x7FFFFFFE);
          if (v13)
          {
            v14 = (v8 + 8 * ((v7 >> 1) & 0x3FFFFFFF));
            do
            {
              v15 = *v14++;
              result *= v15;
              --v13;
            }

            while (v13);
          }

          return result;
        }

        return *(v6 + 12) * *(v6 + 8);
      default:
LABEL_50:
        sub_100271154(a1, a2, &v58);
        return SHIDWORD(v58) * v58;
    }
  }

  return result;
}

BOOL sub_1002743D4(uint64_t a1)
{
  v1 = *(a1 + 2) & 0x1F;
  v2 = a1;
  result = 0;
  switch(v1)
  {
    case 0:
      return 1;
    case 1:
      v6 = *(v2 + 8);
      if (!*(v6 + 16))
      {
        return 1;
      }

      v7 = *(v6 + 4);
      if (v7 < 3)
      {
        goto LABEL_16;
      }

      v17 = *(v6 + 64);
      v18 = (v17 + 4);
      v19 = 1;
      v20 = v7 & 0x7FFFFFFE;
      v21 = 1;
      do
      {
        v19 *= *(v18 - 1);
        v21 *= *v18;
        v18 += 2;
        v20 -= 2;
      }

      while (v20);
      v13 = v21 * v19;
      v22 = v7 - (v7 & 0x7FFFFFFE);
      if (v22)
      {
        v23 = (v17 + 8 * ((v7 >> 1) & 0x3FFFFFFF));
        do
        {
          v24 = *v23++;
          v13 *= v24;
          --v22;
        }

        while (v22);
      }

      return !v7 || v13 == 0;
    case 2:
    case 6:
    case 14:
      return result;
    case 3:
    case 4:
    case 5:
    case 11:
    case 13:
      return **(v2 + 8) == *(*(v2 + 8) + 8);
    case 7:
      v2 = *(v2 + 8);
      if (*(v2 + 16))
      {
        return *(v2 + 20) == 0;
      }

      return 1;
    case 8:
    case 9:
      v5 = *(*(v2 + 8) + 24);
      return v5 == 0;
    case 10:
      v6 = *(v2 + 8);
      if (!*(v6 + 32))
      {
        return 1;
      }

      v7 = *(v6 + 4);
      if (v7 < 3)
      {
LABEL_16:
        v13 = *(v6 + 12) * *(v6 + 8);
      }

      else
      {
        v8 = *(v6 + 48);
        v9 = (v8 + 4);
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
        v13 = v12 * v10;
        v14 = v7 - (v7 & 0x7FFFFFFE);
        if (v14)
        {
          v15 = (v8 + 8 * ((v7 >> 1) & 0x3FFFFFFF));
          do
          {
            v16 = *v15++;
            v13 *= v16;
            --v14;
          }

          while (v14);
        }
      }

      return !v7 || v13 == 0;
    case 12:
      v5 = *(*(v2 + 8) + 8);
      return v5 == 0;
    case 15:
      return *(v2 + 20) == 0;
    default:
      v25[0] = 0;
      v25[1] = 0;
      qmemcpy(sub_1002A80E0(v25, 30), "Unknown/unsupported array type", 30);
      sub_1002A8980(-213, v25, "empty", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2117);
  }
}

uint64_t sub_100274628(uint64_t a1, int a2)
{
  v2 = *a1 & 0x1F0000;
  if (v2 == 655360)
  {
    if ((a2 & 0x80000000) == 0)
    {
      return 1;
    }

    goto LABEL_19;
  }

  if (v2 != 0x10000)
  {
    v4 = *a1 & 0x1B0000;
    v5 = v2 == 786432 || v4 == 0;
    if (v5 || v2 == 917504 || v4 == 0x20000 || v2 == 196608)
    {
      return 1;
    }

    HIDWORD(v7) = v2 - 327680;
    LODWORD(v7) = v2 - 327680;
    v6 = v7 >> 17;
    if (v6 > 2)
    {
      if (v6 != 3)
      {
        if (v6 == 5)
        {
          if (a2 < 1 || *(a1 + 20) <= a2)
          {
            v13 = 0;
            v14 = 0;
            qmemcpy(sub_1002A80E0(&v13, 22), "i > 0 && i < sz.height", 22);
            sub_1002A8980(-215, &v13, "isContinuous", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2145);
          }

          v8 = *(a1 + 8) + 96 * a2;
          return (*(v8 + 1) >> 6) & 1;
        }

        goto LABEL_26;
      }

      v12 = *(a1 + 8);
      v10 = *v12;
      if (0xCCCCCCCCCCCCCCCDLL * ((v12[1] - *v12) >> 4) <= a2)
      {
        sub_1001FA81C(&v13, "(size_t)i < vv.size()");
        sub_1002A8980(-215, &v13, "isContinuous", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2152);
      }

      v11 = 80;
    }

    else
    {
      if (v6)
      {
        if (v6 == 2)
        {
          if ((a2 & 0x80000000) == 0)
          {
            return 1;
          }

          goto LABEL_19;
        }

LABEL_26:
        v13 = 0;
        v14 = 0;
        qmemcpy(sub_1002A80E0(&v13, 30), "Unknown/unsupported array type", 30);
        sub_1002A8980(-213, &v13, "isContinuous", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2159);
      }

      v9 = *(a1 + 8);
      v10 = *v9;
      if (0xAAAAAAAAAAAAAAABLL * ((v9[1] - *v9) >> 5) <= a2)
      {
        sub_1001FA81C(&v13, "(size_t)i < vv.size()");
        sub_1002A8980(-215, &v13, "isContinuous", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2138);
      }

      v11 = 96;
    }

    v8 = v10 + a2 * v11;
    return (*(v8 + 1) >> 6) & 1;
  }

  if ((a2 & 0x80000000) == 0)
  {
    return 1;
  }

LABEL_19:
  v8 = *(a1 + 8);
  return (*(v8 + 1) >> 6) & 1;
}

void sub_100274944(uint64_t a1, _DWORD *a2)
{
  v2 = *a1 & 0x1F0000;
  if (v2 == 0x20000)
  {
    goto LABEL_8;
  }

  if (!v2)
  {

    sub_100274CEC(a2);
    return;
  }

  v3 = *a1 & 0x1D0000;
  if (v3 == 786432 || v3 == 0x10000)
  {
LABEL_8:
    sub_10026E0C8(a1, -1, v18);
    sub_10022B754(v18, a2);
    if (*&v18[56])
    {
      if (atomic_fetch_add((*&v18[56] + 20), 0xFFFFFFFF) == 1)
      {
        v5 = *&v18[56];
        if (*&v18[56])
        {
          *&v18[56] = 0;
          v6 = *(v5 + 8);
          if (!v6)
          {
            v6 = *&v18[48];
            if (!*&v18[48])
            {
              v6 = sub_100268CC8();
            }
          }

          (*(*v6 + 48))(v6, v5);
        }
      }
    }

    *&v18[56] = 0;
    memset(&v18[16], 0, 32);
    if (*&v18[4] >= 1)
    {
      v7 = 0;
      v8 = v19;
      do
      {
        *&v8[4 * v7++] = 0;
      }

      while (v7 < *&v18[4]);
    }

    v9 = v20;
    if (v20 != v21)
    {
LABEL_19:
      j__free(v9);
    }
  }

  else if (v2 == 655360)
  {
    v12 = *(a1 + 8);

    sub_1002B16DC(v12, a2);
  }

  else
  {
    if (v2 != 393216)
    {
      *v18 = 0;
      *&v18[8] = 0;
      sub_1002A8980(-213, v18, "copyTo", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2350);
    }

    v10 = *(a1 + 8);
    if ((*a2 & 0x1F0000) == 0x10000)
    {
      sub_1002750F0(a2, -1);
      v11 = *(**v10 + 24);

      v11();
    }

    else
    {
      *v18 = 1124007936;
      memset(&v18[4], 0, 60);
      v19 = &v18[8];
      v20 = v21;
      v21[0] = 0;
      v21[1] = 0;
      (*(**v10 + 24))(*v10, v10, v18, 0xFFFFFFFFLL);
      sub_10022B754(v18, a2);
      if (*&v18[56])
      {
        if (atomic_fetch_add((*&v18[56] + 20), 0xFFFFFFFF) == 1)
        {
          v14 = *&v18[56];
          if (*&v18[56])
          {
            *&v18[56] = 0;
            v15 = *(v14 + 8);
            if (!v15)
            {
              v15 = *&v18[48];
              if (!*&v18[48])
              {
                v15 = sub_100268CC8();
              }
            }

            (*(*v15 + 48))(v15, v14);
          }
        }
      }

      *&v18[56] = 0;
      memset(&v18[16], 0, 32);
      if (*&v18[4] >= 1)
      {
        v16 = 0;
        v17 = v19;
        do
        {
          *&v17[4 * v16++] = 0;
        }

        while (v16 < *&v18[4]);
      }

      v9 = v20;
      if (v20 != v21)
      {
        goto LABEL_19;
      }
    }
  }
}

void sub_100274CEC(uint64_t a1)
{
  v1 = *a1;
  if ((*a1 & 0x40000000) != 0)
  {
    v28 = 0;
    v29 = 0;
    v2 = sub_1002A80E0(&v28, 12);
    *(v2 + 8) = 690513274;
    *v2 = *"!fixedSize()";
    sub_1002A8980(-215, &v28, "release", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2832);
  }

  v3 = HIWORD(v1) & 0x1F;
  if (v3 > 6)
  {
    if ((HIWORD(v1) & 0x1F) <= 9u)
    {
      if (v3 == 7 || v3 == 8 || v3 == 9)
      {
        nullsub_1(*(a1 + 8));
        return;
      }

LABEL_53:
      v28 = 0;
      v29 = 0;
      qmemcpy(sub_1002A80E0(&v28, 30), "Unknown/unsupported array type", 30);
      sub_1002A8980(-213, &v28, "release", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2897);
    }

    if (v3 == 10)
    {
      v24 = *(a1 + 8);
      v25 = *(v24 + 32);
      if (v25 && atomic_fetch_add((v25 + 16), 0xFFFFFFFF) == 1)
      {
        sub_1002B086C(v24);
      }

      if (*(v24 + 4) >= 1)
      {
        v26 = 0;
        v27 = *(v24 + 48);
        do
        {
          *(v27 + 4 * v26++) = 0;
        }

        while (v26 < *(v24 + 4));
      }

      *(v24 + 32) = 0;
      return;
    }

    if (v3 != 11)
    {
      if (v3 != 13)
      {
        goto LABEL_53;
      }

      v7 = *(a1 + 8);
      v9 = *v7;
      for (i = v7[1]; i != v9; nullsub_1(i))
      {
        i -= 64;
      }

      v7[1] = v9;
      return;
    }

    v17 = *(a1 + 8);
    v19 = *v17;
    v23 = v17[1];
    if (v23 != *v17)
    {
      do
      {
        v23 = sub_1002B00D8(v23 - 80);
      }

      while (v23 != v19);
    }

LABEL_43:
    v17[1] = v19;
    return;
  }

  if ((HIWORD(v1) & 0x1F) > 2u)
  {
    if (v3 == 3)
    {
      v28 = 0;
      sub_100275370(a1, &v28, v1 & 0xFFF, -1, 0, 0);
      return;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_53;
      }

      v4 = *(a1 + 8);
      v6 = *v4;
      v5 = v4[1];
      if (v5 != *v4)
      {
        do
        {
          v5 -= 96;
          sub_10027BD1C(v4, v5);
        }

        while (v5 != v6);
      }

      v4[1] = v6;
      return;
    }

    v17 = *(a1 + 8);
    v19 = *v17;
    v18 = v17[1];
    if (v18 != *v17)
    {
      v20 = v17[1];
      do
      {
        v22 = *(v20 - 24);
        v20 -= 24;
        v21 = v22;
        if (v22)
        {
          *(v18 - 16) = v21;
          operator delete(v21);
        }

        v18 = v20;
      }

      while (v20 != v19);
    }

    goto LABEL_43;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_53;
    }

    v10 = *(a1 + 8);
    v11 = *(v10 + 56);
    if (v11)
    {
      if (atomic_fetch_add((v11 + 20), 0xFFFFFFFF) == 1)
      {
        v12 = *(v10 + 56);
        if (v12)
        {
          *(v10 + 56) = 0;
          v13 = *(v12 + 8);
          if (!v13)
          {
            v13 = *(v10 + 48);
            if (!v13)
            {
              v14 = v12;
              v13 = sub_100268CC8();
              v12 = v14;
            }
          }

          (*(*v13 + 48))(v13, v12);
        }
      }
    }

    *(v10 + 56) = 0;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    if (*(v10 + 4) >= 1)
    {
      v15 = 0;
      v16 = *(v10 + 64);
      do
      {
        *(v16 + 4 * v15++) = 0;
      }

      while (v15 < *(v10 + 4));
    }
  }
}

uint64_t sub_1002750F0(uint64_t a1, signed int a2)
{
  v2 = *a1 & 0x1F0000;
  if (a2 < 0)
  {
    if (v2 != 0x10000)
    {
      v6 = 0;
      v7 = 0;
      *sub_1002A80E0(&v6, 8) = 0x54414D203D3D206BLL;
      sub_1002A8980(-215, &v6, "getMatRef", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2924);
    }

    return *(a1 + 8);
  }

  else if (v2 == 327680)
  {
    v3 = *(a1 + 8);
    if ((-1431655765 * ((v3[1] - *v3) >> 5)) <= a2)
    {
      v6 = 0;
      v7 = 0;
      v4 = sub_1002A80E0(&v6, 17);
      *(v4 + 16) = 41;
      *v4 = *"i < (int)v.size()";
      sub_1002A8980(-215, &v6, "getMatRef", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2933);
    }

    return *v3 + 96 * a2;
  }

  else
  {
    if (v2 != 983040)
    {
      v6 = 0;
      v7 = 0;
      qmemcpy(sub_1002A80E0(&v6, 41), "k == STD_VECTOR_MAT || k == STD_ARRAY_MAT", 41);
      sub_1002A8980(-215, &v6, "getMatRef", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2928);
    }

    if (*(a1 + 20) <= a2)
    {
      v6 = 0;
      v7 = 0;
      qmemcpy(sub_1002A80E0(&v6, 23), "0 <= i && i < sz.height", 23);
      sub_1002A8980(-215, &v6, "getMatRef", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2939);
    }

    return *(a1 + 8) + 96 * a2;
  }
}

void sub_100275370(uint64_t a1, int32x2_t *a2, int a3, signed int a4, char a5, unsigned int a6)
{
  v6 = *a1;
  v7 = *a1 & 0x1F0000;
  if (a6)
  {
    v8 = 1;
  }

  else
  {
    v8 = a5;
  }

  if ((v8 & 1) == 0 && a4 < 0 && v7 == 0x10000)
  {
    if ((v6 & 0x40000000) != 0 && (*(*(*(a1 + 8) + 64) + 4) != a2->i32[0] || **(*(a1 + 8) + 64) != a2->i32[1]))
    {
      __src = 0;
      v29 = 0;
      qmemcpy(sub_1002A80E0(&__src, 53), "!fixedSize() || ((Mat*)obj)->size.operator()() == _sz", 53);
      sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2385);
    }

    if (v6 < 0 && (**(a1 + 8) & 0xFFF) != a3)
    {
      __src = 0;
      v29 = 0;
      qmemcpy(sub_1002A80E0(&__src, 44), "!fixedType() || ((Mat*)obj)->type() == mtype", 44);
      sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2386);
    }

    v10 = *(a1 + 8);
    v11 = a2->i32[0];
    v12 = a3 & 0xFFF;
    if (*(v10 + 4) > 2 || *(v10 + 8) != a2->i32[1] || *(v10 + 12) != v11 || (*v10 & 0xFFF) != v12 || !*(v10 + 16))
    {
      __src.i32[0] = a2->i32[1];
      __src.i32[1] = v11;
      sub_100268ED0(v10, 2, &__src, v12);
    }
  }

  else
  {
    if (a4 < 0 && v7 == 655360)
    {
      v14 = v8;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      if (a4 < 0 && v7 == 589824)
      {
        v16 = v8;
      }

      else
      {
        v16 = 1;
      }

      if ((v16 & 1) == 0)
      {
        if ((v6 & 0x40000000) != 0 && (*(*(a1 + 8) + 8) != a2->i32[0] || *(*(a1 + 8) + 4) != a2->i32[1]))
        {
          __src = 0;
          v29 = 0;
          qmemcpy(sub_1002A80E0(&__src, 51), "!fixedSize() || ((cuda::GpuMat*)obj)->size() == _sz", 51);
          sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2399);
        }

        if (v6 < 0 && (**(a1 + 8) & 0xFFF) != a3)
        {
          __src = 0;
          v29 = 0;
          qmemcpy(sub_1002A80E0(&__src, 53), "!fixedType() || ((cuda::GpuMat*)obj)->type() == mtype", 53);
          sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2400);
        }

        sub_1002312E0();
      }

      if (a4 < 0 && v7 == 458752)
      {
        v18 = v8;
      }

      else
      {
        v18 = 1;
      }

      if ((v18 & 1) == 0)
      {
        if ((v6 & 0x40000000) != 0 && (*(*(a1 + 8) + 20) != a2->i32[0] || *(*(a1 + 8) + 16) != a2->i32[1]))
        {
          sub_1001FA81C(&__src, "!fixedSize() || ((ogl::Buffer*)obj)->size() == _sz");
          sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2406);
        }

        if (v6 < 0 && *(*(a1 + 8) + 24) != a3)
        {
          sub_1001FA81C(&__src, "!fixedType() || ((ogl::Buffer*)obj)->type() == mtype");
          sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2407);
        }

        sub_100282938();
      }

      if (a4 < 0 && v7 == 0x80000)
      {
        v20 = v8;
      }

      else
      {
        v20 = 1;
      }

      if ((v20 & 1) == 0)
      {
        if ((v6 & 0x40000000) != 0)
        {
          v27 = *(a1 + 8);
          if (*(v27 + 8) != a2->i32[0] || *(v27 + 4) != a2->i32[1])
          {
            sub_1001FA81C(&__src, "!fixedSize() || ((cuda::HostMem*)obj)->size() == _sz");
            sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2413);
          }
        }

        if (v6 < 0 && (**(a1 + 8) & 0xFFF) != a3)
        {
          sub_1001FA81C(&__src, "!fixedType() || ((cuda::HostMem*)obj)->type() == mtype");
          sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2414);
        }

        sub_100231408();
      }

      __src = vrev64_s32(*a2);
      sub_10026BEEC(a1, 2, &__src, a3, a4, a5, a6);
    }

    else
    {
      if ((v6 & 0x40000000) != 0 && (*(*(*(a1 + 8) + 48) + 4) != a2->i32[0] || **(*(a1 + 8) + 48) != a2->i32[1]))
      {
        __src = 0;
        v29 = 0;
        qmemcpy(sub_1002A80E0(&__src, 54), "!fixedSize() || ((UMat*)obj)->size.operator()() == _sz", 54);
        sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2392);
      }

      if (v6 < 0 && (**(a1 + 8) & 0xFFF) != a3)
      {
        __src = 0;
        v29 = 0;
        qmemcpy(sub_1002A80E0(&__src, 45), "!fixedType() || ((UMat*)obj)->type() == mtype", 45);
        sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2393);
      }

      v22 = *(a1 + 8);
      v23 = a2->i32[0];
      v24 = a3 & 0xFFF;
      if (*(v22 + 4) > 2 || *(v22 + 8) != a2->i32[1] || *(v22 + 12) != v23 || (*v22 & 0xFFF) != v24 || !*(v22 + 32))
      {
        __src.i32[0] = a2->i32[1];
        __src.i32[1] = v23;
        sub_1002B018C(v22, 2, &__src, v24, 0);
      }
    }
  }
}

void sub_10027597C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100275A84(uint64_t a1, unsigned int a2, unsigned int a3, int a4, signed int a5, char a6, unsigned int a7)
{
  v7 = *a1;
  v8 = *a1 & 0x1F0000;
  if (a7)
  {
    v9 = 1;
  }

  else
  {
    v9 = a6;
  }

  if ((v9 & 1) == 0 && a5 < 0 && v8 == 0x10000)
  {
    if ((v7 & 0x40000000) != 0 && (*(*(*(a1 + 8) + 64) + 4) != a3 || **(*(a1 + 8) + 64) != a2))
    {
      __src = 0;
      v28 = 0;
      qmemcpy(sub_1002A80E0(&__src, 68), "!fixedSize() || ((Mat*)obj)->size.operator()() == Size(_cols, _rows)", 68);
      sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2427);
    }

    if (v7 < 0 && (**(a1 + 8) & 0xFFF) != a4)
    {
      __src = 0;
      v28 = 0;
      qmemcpy(sub_1002A80E0(&__src, 44), "!fixedType() || ((Mat*)obj)->type() == mtype", 44);
      sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2428);
    }

    v11 = *(a1 + 8);
    v12 = a4 & 0xFFF;
    if (*(v11 + 4) > 2 || *(v11 + 8) != a2 || *(v11 + 12) != a3 || (*v11 & 0xFFF) != v12 || !*(v11 + 16))
    {
      __src = __PAIR64__(a3, a2);
      sub_100268ED0(v11, 2, &__src, v12);
    }
  }

  else
  {
    if (a5 < 0 && v8 == 655360)
    {
      v14 = v9;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      if (a5 < 0 && v8 == 589824)
      {
        v16 = v9;
      }

      else
      {
        v16 = 1;
      }

      if ((v16 & 1) == 0)
      {
        if ((v7 & 0x40000000) != 0 && (*(*(a1 + 8) + 8) != a3 || *(*(a1 + 8) + 4) != a2))
        {
          __src = 0;
          v28 = 0;
          qmemcpy(sub_1002A80E0(&__src, 66), "!fixedSize() || ((cuda::GpuMat*)obj)->size() == Size(_cols, _rows)", 66);
          sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2441);
        }

        if (v7 < 0 && (**(a1 + 8) & 0xFFF) != a4)
        {
          __src = 0;
          v28 = 0;
          qmemcpy(sub_1002A80E0(&__src, 53), "!fixedType() || ((cuda::GpuMat*)obj)->type() == mtype", 53);
          sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2442);
        }

        sub_1002312E0();
      }

      if (a5 < 0 && v8 == 458752)
      {
        v18 = v9;
      }

      else
      {
        v18 = 1;
      }

      if ((v18 & 1) == 0)
      {
        if ((v7 & 0x40000000) != 0 && (*(*(a1 + 8) + 20) != a3 || *(*(a1 + 8) + 16) != a2))
        {
          sub_1001FA81C(&__src, "!fixedSize() || ((ogl::Buffer*)obj)->size() == Size(_cols, _rows)");
          sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2448);
        }

        if (v7 < 0 && *(*(a1 + 8) + 24) != a4)
        {
          sub_1001FA81C(&__src, "!fixedType() || ((ogl::Buffer*)obj)->type() == mtype");
          sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2449);
        }

        sub_100282938();
      }

      if (a5 < 0 && v8 == 0x80000)
      {
        v20 = v9;
      }

      else
      {
        v20 = 1;
      }

      if ((v20 & 1) == 0)
      {
        if ((v7 & 0x40000000) != 0)
        {
          v26 = *(a1 + 8);
          if (*(v26 + 8) != a3 || *(v26 + 4) != a2)
          {
            sub_1001FA81C(&__src, "!fixedSize() || ((cuda::HostMem*)obj)->size() == Size(_cols, _rows)");
            sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2455);
          }
        }

        if (v7 < 0 && (**(a1 + 8) & 0xFFF) != a4)
        {
          sub_1001FA81C(&__src, "!fixedType() || ((cuda::HostMem*)obj)->type() == mtype");
          sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2456);
        }

        sub_100231408();
      }

      __src = __PAIR64__(a3, a2);
      sub_10026BEEC(a1, 2, &__src, a4, a5, a6, a7);
    }

    else
    {
      if ((v7 & 0x40000000) != 0 && (*(*(*(a1 + 8) + 48) + 4) != a3 || **(*(a1 + 8) + 48) != a2))
      {
        __src = 0;
        v28 = 0;
        qmemcpy(sub_1002A80E0(&__src, 69), "!fixedSize() || ((UMat*)obj)->size.operator()() == Size(_cols, _rows)", 69);
        sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2434);
      }

      if (v7 < 0 && (**(a1 + 8) & 0xFFF) != a4)
      {
        __src = 0;
        v28 = 0;
        qmemcpy(sub_1002A80E0(&__src, 45), "!fixedType() || ((UMat*)obj)->type() == mtype", 45);
        sub_1002A8980(-215, &__src, "create", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2435);
      }

      v22 = *(a1 + 8);
      v23 = a4 & 0xFFF;
      if (*(v22 + 4) > 2 || *(v22 + 8) != a2 || *(v22 + 12) != a3 || (*v22 & 0xFFF) != v23 || !*(v22 + 32))
      {
        __src = __PAIR64__(a3, a2);
        sub_1002B018C(v22, 2, &__src, v23, 0);
      }
    }
  }
}

void sub_10027606C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100276174(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 && atomic_fetch_add((v1 + 16), 0xFFFFFFFF) == 1)
  {
    v2 = result;
    sub_1002B086C(result);
    result = v2;
  }

  if (*(result + 4) >= 1)
  {
    v3 = 0;
    v4 = *(result + 48);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(result + 4));
  }

  *(result + 32) = 0;
  return result;
}

void sub_1002761E4(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_10027C134(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void sub_100276294(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = &v3[-*a1];
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      a1[1] = *a1 + a2;
    }
  }

  else
  {
    v6 = a1[2];
    if (v6 - v3 < v5)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10000918C();
    }

    v7 = &v3[v5];
    bzero(v3, a2 - v4);
    a1[1] = v7;
  }
}

void sub_1002763DC(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027C2E0(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 2 * a2;
  }
}

void sub_100276408(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027C544(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 3 * a2;
  }
}

void sub_100276440(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_1002374D8(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 4 * a2;
  }
}

void sub_10027646C(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 1);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027C854(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 6 * a2;
  }
}

void sub_1002764A8(uint64_t a1, unint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027CB6C(a1, v4);
  }

  else if (!v3)
  {
    *(a1 + 8) = *a1 + 8 * a2;
  }
}

void sub_1002764D4(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027CD80(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 12 * a2;
  }
}

void sub_100276510(uint64_t a1, unint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027D01C(a1, v4);
  }

  else if (!v3)
  {
    *(a1 + 8) = *a1 + 16 * a2;
  }
}

void sub_10027653C(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027D254(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void sub_100276578(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027D440(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 32 * a2;
  }
}

void sub_1002765A4(void *a1, unint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027D5E4(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 36 * a2;
  }
}

void sub_1002765E8(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027D80C(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 48 * a2;
  }
}

void sub_100276624(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027DA28(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + (a2 << 6);
  }
}

void sub_100276650(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027DC0C(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + (a2 << 7);
  }
}

void sub_10027667C(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 8;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027DE9C(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + (a2 << 8);
  }
}

void sub_1002766A8(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 9;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10027E20C(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + (a2 << 9);
  }
}

void sub_1002766D4(int *a1, char *a2, unsigned __int16 a3)
{
  v4 = a2;
  LODWORD(a2) = *a2 & 0x1F0000;
  if (a2)
  {
    if (a2 == 655360)
    {
      v18 = *(v4 + 8);
      a2 = *(v18 + 4);
      if (a2 >= 1)
      {
        v19 = 0;
        v20 = *(v18 + 48);
        if (a2 < 8)
        {
          goto LABEL_19;
        }

        if (__src - v20 < 0x20)
        {
          goto LABEL_19;
        }

        v19 = (a2 & 0x7FFFFFF8);
        v21 = (v20 + 16);
        v22 = v32;
        v23 = v19;
        do
        {
          v24 = *v21;
          *(v22 - 1) = *(v21 - 1);
          *v22 = v24;
          v21 += 2;
          v22 += 2;
          v23 -= 8;
        }

        while (v23);
        if (v19 != a2)
        {
LABEL_19:
          v25 = (a2 - v19);
          v26 = 4 * v19;
          v27 = __src + v19;
          v28 = (v20 + v26);
          do
          {
            v29 = *v28++;
            *v27++ = v29;
            --v25;
          }

          while (v25);
        }
      }
    }

    else if (a2 == 0x10000)
    {
      v6 = *(v4 + 8);
      a2 = *(v6 + 4);
      if (a2 >= 1)
      {
        v7 = 0;
        v8 = *(v6 + 64);
        if (a2 < 8)
        {
          goto LABEL_10;
        }

        if (__src - v8 < 0x20)
        {
          goto LABEL_10;
        }

        v7 = (a2 & 0x7FFFFFF8);
        v9 = (v8 + 16);
        v10 = v32;
        v11 = v7;
        do
        {
          v12 = *v9;
          *(v10 - 1) = *(v9 - 1);
          *v10 = v12;
          v9 += 2;
          v10 += 2;
          v11 -= 8;
        }

        while (v11);
        if (v7 != a2)
        {
LABEL_10:
          v13 = (a2 - v7);
          v14 = 4 * v7;
          v15 = __src + v7;
          v16 = (v8 + v14);
          do
          {
            v17 = *v16++;
            *v15++ = v17;
            --v13;
          }

          while (v13);
        }
      }
    }

    else
    {
      sub_100271154(v4, 0xFFFFFFFF, &v30);
      __src[0] = vrev64_s32(v30);
      LODWORD(a2) = 2;
    }
  }

  sub_10026BEEC(a1, a2, __src, a3, -1, 0, 0);
}

void sub_10027689C(uint64_t a1)
{
  if ((*a1 & 0x1F0000) == 0x10000)
  {
    if ((*a1 & 0x40000000) != 0)
    {
      v6[0] = 0;
      v6[1] = 0;
      v1 = sub_1002A80E0(v6, 12);
      *(v1 + 8) = 690513274;
      *v1 = *"!fixedSize()";
      sub_1002A8980(-215, v6, "clear", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 2906);
    }

    v2 = *(a1 + 8);
    v3 = *(v2 + 64);
    v4 = *v3;
    if (v4)
    {
      if ((*(v2 + 1) & 0x80) != 0 || *(v2 + 16) > *(v2 + 40))
      {
        sub_10026A93C(v2, 0);
        v3 = *(v2 + 64);
      }

      v5 = **(v2 + 72);
      *v3 = 0;
      *(v2 + 32) -= v4 * v5;
    }
  }

  else
  {

    sub_100274CEC(a1);
  }
}

void sub_1002769D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1 & 0x1F0000;
  if (!v3)
  {
    return;
  }

  if ((*a1 & 0x1D0000) == 0x10000)
  {
    goto LABEL_3;
  }

  if ((*a1 & 0x1F0000u) < 0xA0000)
  {
    if (v3 != 0x20000)
    {
      if (v3 == 589824)
      {
        sub_10026E0C8(a2, -1, v19);
        v11 = sub_100271A88(a1, -1);
        if (SHIDWORD(v19[0]) <= 2 && (v19[0] & 0x4000) != 0)
        {
          v12 = *v24;
          v13 = v24[1];
          if (v13 == 1 || v12 == 1)
          {
            v16 = (v11 >> 3) & 0x1FF;
            v17 = v13 == v16 + 1;
            if (v12 != 1)
            {
              v17 = 0;
            }

            v18 = v12 == v16 + 1 || v12 == 1;
            if (v13 != 1)
            {
              v18 = 0;
            }

            if (v18 || v17 || v13 == 1 && v12 == 4 && v16 <= 3 && (v19[0] & 0xFFF) == 6)
            {
              v14 = *(v20 + 16);
              v27[0] = *v20;
              v27[1] = v14;
              sub_1002315B4();
            }
          }
        }

        v27[0] = 0uLL;
        qmemcpy(sub_1002A80E0(v27, 65), "checkScalar(value, type(), arr.kind(), _InputArray::CUDA_GPU_MAT)", 65);
        sub_1002A8980(-215, v27, "setTo", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 3004);
      }

LABEL_27:
      v19[0] = 0;
      v19[1] = 0;
      sub_1002A8980(-213, v19, "setTo", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 3008);
    }

LABEL_3:
    sub_10026E0C8(a1, -1, v19);
    sub_10022CDA0(v19, a2, a3);
    if (v23)
    {
      if (atomic_fetch_add((v23 + 20), 0xFFFFFFFF) == 1)
      {
        v7 = v23;
        if (v23)
        {
          v23 = 0;
          v8 = *(v7 + 8);
          if (!v8)
          {
            v8 = v22;
            if (!v22)
            {
              v8 = sub_100268CC8();
            }
          }

          (*(*v8 + 48))(v8, v7);
        }
      }
    }

    v23 = 0;
    v20 = 0u;
    v21 = 0u;
    if (SHIDWORD(v19[0]) >= 1)
    {
      v9 = 0;
      v10 = v24;
      do
      {
        v10[v9++] = 0;
      }

      while (v9 < SHIDWORD(v19[0]));
    }

    if (v25 != &v26)
    {
      j__free(v25);
    }

    return;
  }

  if (v3 != 655360)
  {
    if (v3 != 917504)
    {
      goto LABEL_27;
    }

    goto LABEL_3;
  }

  v15 = *(a1 + 8);

  sub_1002B24D4(v15, a2, a3);
}

void sub_100276D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1002A8124((v9 - 48));
  sub_100006D14(&a9);
  _Unwind_Resume(a1);
}

void sub_100276DB0(uint64_t a1, int64x2_t *a2)
{
  sub_1002ACE7C(v66, &off_100474DB8);
  if (sub_10027377C(a1, -1) >= 3)
  {
    v57 = 0;
    v58 = 0;
    qmemcpy(sub_1002A80E0(&v57, 14), "_m.dims() <= 2", 14);
    sub_1002A8980(-215, &v57, "setIdentity", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 3277);
  }

  sub_10026E0C8(a1, -1, &v57);
  v4 = v58;
  v5 = HIDWORD(v58);
  v6 = v57 & 0xFFF;
  if (v6 == 6)
  {
    if (v58 >= 1 && SHIDWORD(v58) >= 1)
    {
      v12 = *a2->i64;
      v13 = v59[0];
      v14 = v65 >> 3;
      if (HIDWORD(v58) > 3)
      {
        v28 = vdupq_lane_s64(*&v12, 0);
        if ((HIDWORD(v58) & 0x7FFFFFFC) == HIDWORD(v58))
        {
          v29 = 0;
          v30 = (v59[0] + 16);
          v31 = 8 * v14;
          v32 = vdupq_n_s64(2uLL);
          v33 = vdupq_n_s64(4uLL);
          do
          {
            v34 = vdupq_n_s64(v29);
            v35 = v30;
            v36 = v5 & 0x7FFFFFFC;
            v37 = xmmword_1003E0C50;
            do
            {
              v35[-1] = vandq_s8(v28, vceqq_s64(v37, v34));
              *v35 = vandq_s8(v28, vceqq_s64(vaddq_s64(v37, v32), v34));
              v37 = vaddq_s64(v37, v33);
              v35 += 2;
              v36 -= 4;
            }

            while (v36);
            ++v29;
            v30 = (v30 + v31);
          }

          while (v29 != v4);
        }

        else
        {
          v38 = 0;
          v39 = (v59[0] + 16);
          v40 = 8 * v14;
          v41 = vdupq_n_s64(2uLL);
          v42 = vdupq_n_s64(4uLL);
          do
          {
            v43 = vdupq_n_s64(v38);
            v44 = v5 & 0x7FFFFFFC;
            v45 = v39;
            v46 = xmmword_1003E0C50;
            do
            {
              v45[-1] = vandq_s8(v28, vceqq_s64(v46, v43));
              *v45 = vandq_s8(v28, vceqq_s64(vaddq_s64(v46, v41), v43));
              v46 = vaddq_s64(v46, v42);
              v45 += 2;
              v44 -= 4;
            }

            while (v44);
            v47 = v5 & 0x7FFFFFFC;
            do
            {
              if (v38 == v47)
              {
                v48 = v12;
              }

              else
              {
                v48 = 0.0;
              }

              v13[v47++] = v48;
            }

            while (v5 != v47);
            ++v38;
            v39 = (v39 + v40);
            v13 = (v13 + v40);
          }

          while (v38 != v4);
        }
      }

      else
      {
        *v59[0] = v12;
        if (v5 != 1)
        {
          v13[1] = 0.0;
          if (v5 != 2)
          {
            v13[2] = 0.0;
          }
        }

        if (v4 != 1)
        {
          v15 = &v13[v14];
          *v15 = 0.0;
          if (v5 != 1)
          {
            v15[1] = v12;
            if (v5 != 2)
            {
              v15[2] = 0.0;
            }
          }

          if (v4 != 2)
          {
            v16 = &v15[v14];
            *v16 = 0;
            if (v5 != 1)
            {
              *(v16 + 1) = 0;
              if (v5 != 2)
              {
                *(v16 + 2) = v12;
              }
            }

            if (v4 != 3)
            {
              v17 = v4 - 3;
              v18 = &v13[3 * v14 + 2];
              v19 = 8 * v14;
              do
              {
                *(v18 - 2) = 0.0;
                if (v5 != 1)
                {
                  *(v18 - 1) = 0.0;
                  if (v5 != 2)
                  {
                    *v18 = 0.0;
                  }
                }

                v18 = (v18 + v19);
                --v17;
              }

              while (v17);
            }
          }
        }
      }
    }
  }

  else if (v6 == 5)
  {
    if (v58 >= 1 && SHIDWORD(v58) >= 1)
    {
      v7 = 0;
      v8 = *a2->i64;
      v9 = v59[0];
      v10 = 4 * (v65 >> 2);
      v11 = v59[0];
      do
      {
        bzero(v9, 4 * v5);
        if (v7 < v5)
        {
          *v11 = v8;
        }

        ++v7;
        v11 = (v11 + v10 + 4);
        v9 += v10;
      }

      while (v4 != v7);
    }
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
    sub_10022CAFC(&v57, &v49);
    sub_10026A6E4(&v57, 0, &v49);
    sub_10022CAFC(&v49, a2);
    if (v53)
    {
      if (atomic_fetch_add((v53 + 20), 0xFFFFFFFF) == 1)
      {
        v20 = v53;
        if (v53)
        {
          v53 = 0;
          v21 = *(v20 + 8);
          if (!v21)
          {
            v21 = v52;
            if (!v52)
            {
              v21 = sub_100268CC8();
            }
          }

          (*(*v21 + 48))(v21, v20);
        }
      }
    }

    v53 = 0;
    v50 = 0u;
    v51 = 0u;
    if (v49.i32[1] >= 1)
    {
      v22 = 0;
      v23 = v54;
      do
      {
        *(v23 + 4 * v22++) = 0;
      }

      while (v22 < v49.i32[1]);
    }

    if (v55 != &v56)
    {
      j__free(v55);
    }
  }

  if (v62)
  {
    if (atomic_fetch_add((v62 + 20), 0xFFFFFFFF) == 1)
    {
      v24 = v62;
      if (v62)
      {
        v62 = 0;
        v25 = *(v24 + 8);
        if (!v25)
        {
          v25 = v61;
          if (!v61)
          {
            v25 = sub_100268CC8();
          }
        }

        (*(*v25 + 48))(v25, v24);
      }
    }
  }

  v62 = 0;
  *v59 = 0u;
  v60 = 0u;
  if (SHIDWORD(v57) >= 1)
  {
    v26 = 0;
    v27 = v63;
    do
    {
      *(v27 + 4 * v26++) = 0;
    }

    while (v26 < SHIDWORD(v57));
  }

  if (v64 != &v65)
  {
    j__free(v64);
  }

  if (v67)
  {
    sub_1002ACC1C(v66);
  }
}

void sub_1002772A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_100006D14(&a9);
  sub_100006D14(&a21);
  sub_1001D8BF4(v21 - 112);
  _Unwind_Resume(a1);
}

void sub_1002772DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1002A8124(va);
  sub_1001D8BF4(v13 - 112);
  _Unwind_Resume(a1);
}

void sub_100277334(uint64_t a1, char a2)
{
  sub_1002ACE7C(v37, &off_100475008);
  sub_10026E0C8(a1, -1, v26);
  v4 = v36;
  if (v27 < 1)
  {
    v5 = 0;
    LODWORD(v6) = v28;
    if (v28 == v29)
    {
      goto LABEL_4;
    }

LABEL_7:
    v25[0] = 0;
    v25[1] = 0;
    qmemcpy(sub_1002A80E0(v25, 31), "m.dims <= 2 && m.rows == m.cols", 31);
    sub_1002A8980(-215, v25, "completeSymm", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 3640);
  }

  v5 = *(v35 + v27 - 1);
  if (v27 > 2)
  {
    goto LABEL_7;
  }

  LODWORD(v6) = v28;
  if (v28 != v29)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (v6 >= 1)
  {
    v7 = __src;
    v6 = v6;
    v24 = v6;
    if (a2)
    {
      v8 = 0;
      v9 = (__src + v36);
      v10 = v5 + v36;
      v11 = v6 - 1;
      do
      {
        ++v8;
        v12 = v11;
        v13 = v7;
        v14 = v9;
        if (v8 < v6)
        {
          do
          {
            v13 += v5;
            memcpy(v13, v14, v5);
            v14 += v4;
            --v12;
          }

          while (v12);
        }

        v9 += v10;
        v7 += v10;
        --v11;
        v6 = v24;
      }

      while (v8 != v24);
    }

    else
    {
      v15 = 0;
      v16 = __src;
      do
      {
        if (v15)
        {
          v17 = v15;
          v18 = v7;
          v19 = v16;
          do
          {
            memcpy(v18, v19, v5);
            v19 += v4;
            v18 += v5;
            --v17;
          }

          while (v17);
        }

        ++v15;
        v16 += v5;
        v7 += v4;
      }

      while (v15 != v24);
    }
  }

  if (v33)
  {
    if (atomic_fetch_add((v33 + 20), 0xFFFFFFFF) == 1)
    {
      v20 = v33;
      if (v33)
      {
        v33 = 0;
        v21 = *(v20 + 8);
        if (!v21)
        {
          v21 = v32;
          if (!v32)
          {
            v21 = sub_100268CC8();
          }
        }

        (*(*v21 + 48))(v21, v20);
      }
    }
  }

  v33 = 0;
  __src = 0u;
  v31 = 0u;
  if (v27 >= 1)
  {
    v22 = 0;
    v23 = v34;
    do
    {
      *(v23 + 4 * v22++) = 0;
    }

    while (v22 < v27);
  }

  if (v35 != &v36)
  {
    j__free(v35);
  }

  if (v38)
  {
    sub_1002ACC1C(v37);
  }
}

void sub_1002775E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1002A8124(va);
  sub_100006D14(va1);
  sub_1001D8BF4(v3 - 96);
  _Unwind_Resume(a1);
}

void sub_10027762C(uint64_t **a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, int a5)
{
  LODWORD(v5) = a5;
  v6 = a2;
  if (!a2 || !(a3 | a4))
  {
    *v67 = 0;
    *&v67[8] = 0;
    qmemcpy(sub_1002A80E0(v67, 29), "_arrays && (_ptrs || _planes)", 29);
    sub_1002A8980(-215, v67, "init", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 4803);
  }

  a1[1] = a3;
  a1[2] = a4;
  *a1 = a2;
  *(a1 + 6) = a5;
  a1[4] = 0;
  a1[5] = 0;
  if (a5 < 0)
  {
    v5 = -1;
    do
    {
      v8 = *v6++;
      ++v5;
    }

    while (v8);
    *(a1 + 6) = v5;
    if (v5 > 0x3E8)
    {
      *v67 = 0;
      *&v67[8] = 0;
      qmemcpy(sub_1002A80E0(v67, 15), "narrays <= 1000", 15);
      sub_1002A8980(-215, v67, "init", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 4818);
    }
  }

  *(a1 + 12) = 0;
  if (v5 < 1)
  {
    v35 = 0;
LABEL_65:
    *(a1 + 12) = 0;
    a1[7] = 0;
    if (a1[1])
    {
      v46 = !v35;
    }

    else
    {
      v46 = 1;
    }

    if (!v46)
    {
      goto LABEL_85;
    }

    return;
  }

  v9 = 0;
  LODWORD(v10) = 0;
  v11 = -1;
  v12 = 0xFFFFFFFFLL;
  while (2)
  {
    v16 = *a1;
    v17 = (*a1)[v9];
    if (!v17)
    {
      *v67 = 0;
      *&v67[8] = 0;
      qmemcpy(sub_1002A80E0(v67, 14), "arrays[i] != 0", 14);
      sub_1002A8980(-215, v67, "init", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 4825);
    }

    v18 = a1[2];
    v19 = *(v17 + 16);
    if (v18)
    {
      v18[v9] = v19;
    }

    if (!v19)
    {
      goto LABEL_15;
    }

    if ((v12 & 0x80000000) == 0)
    {
      v20 = v16[v12];
      v21 = *(v17 + 64);
      v22 = *(v21 - 1);
      v23 = *(v20 + 64);
      if (v22 != *(v23 - 1))
      {
        goto LABEL_25;
      }

      if (v22 == 2)
      {
        if (*v21 != *v23 || v21[1] != v23[1])
        {
          goto LABEL_25;
        }
      }

      else if (v22 >= 1)
      {
        while (1)
        {
          v26 = *v21++;
          v25 = v26;
          v27 = *v23++;
          if (v25 != v27)
          {
            break;
          }

          if (!--v22)
          {
            goto LABEL_38;
          }
        }

LABEL_25:
        *v67 = 0;
        *&v67[8] = 0;
        qmemcpy(sub_1002A80E0(v67, 26), "A.size == arrays[i0]->size", 26);
        sub_1002A8980(-215, v67, "init", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 4845);
      }

LABEL_38:
      if ((*(v17 + 1) & 0x40) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_15;
    }

    v10 = *(v17 + 4);
    v12 = v9;
    if (v10 <= 0)
    {
      v11 = *(v17 + 4);
      LODWORD(v10) = 0;
      goto LABEL_38;
    }

    for (i = 0; i != v10; ++i)
    {
      if (*(*(v17 + 64) + 4 * i) > 1)
      {
        v11 = *(v17 + 4);
        LODWORD(v10) = i;
        if ((*(v17 + 1) & 0x40) != 0)
        {
          goto LABEL_15;
        }

LABEL_39:
        v28 = *(v17 + 72);
        v29 = *(v17 + 4);
        if (v29 < 1)
        {
          v30 = v11 - 1;
          if (!*(v28 + 8 * (v11 - 1)))
          {
            goto LABEL_44;
          }
        }

        else
        {
          v30 = v11 - 1;
          if (*(v28 + 8 * (v11 - 1)) == *(v28 + 8 * v29 - 8))
          {
LABEL_44:
            v31 = v30;
            if (v10 >= v30)
            {
              v32 = v30;
            }

            else
            {
              v32 = v10;
            }

            v13 = v11;
            while (v31 > v10)
            {
              v33 = *(*(v17 + 72) + 8 * v31 - 8);
              v34 = *(*(v17 + 72) + 8 * v31) * *(*(v17 + 64) + 4 * v31);
              --v31;
              --v13;
              if (v34 < v33)
              {
                goto LABEL_12;
              }
            }

            v13 = v32;
LABEL_12:
            v14 = *(a1 + 12);
            if (v14 <= v13)
            {
              v14 = v13;
            }

            *(a1 + 12) = v14;
            goto LABEL_15;
          }
        }

        *v67 = 0;
        *&v67[8] = 0;
        qmemcpy(sub_1002A80E0(v67, 27), "A.step[d-1] == A.elemSize()", 27);
        sub_1002A8980(-215, v67, "init", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 4849);
      }
    }

    v11 = *(v17 + 4);
    if ((*(v17 + 1) & 0x40) == 0)
    {
      goto LABEL_39;
    }

LABEL_15:
    ++v9;
    v15 = *(a1 + 6);
    if (v9 < v15)
    {
      continue;
    }

    break;
  }

  v35 = v15 > 0;
  if ((v12 & 0x80000000) != 0)
  {
    goto LABEL_65;
  }

  LODWORD(v36) = v11 - 1;
  v37 = *((*a1)[v12] + 64);
  v38 = (v11 - 1);
  v39 = *(v37 + 4 * v38);
  v40 = *(a1 + 12);
  if (v40 < (v11 - 1))
  {
    LODWORD(v36) = *(a1 + 12);
  }

  while (1)
  {
    v41 = v39;
    if (v38 <= v40)
    {
      break;
    }

    v42 = *(v37 - 4 + 4 * v38--);
    v39 = v41 * v42;
    --v11;
    if (v39 != v39)
    {
      a1[5] = v41;
      if (v11 == v10)
      {
        v36 = 0;
      }

      else
      {
        v36 = v11;
      }

      *(a1 + 12) = v36;
      if (v36 >= 1)
      {
        goto LABEL_62;
      }

LABEL_74:
      v45 = 1;
      v43 = (a1 + 4);
      goto LABEL_79;
    }
  }

  a1[5] = v39;
  if (v36 == v10)
  {
    v36 = 0;
  }

  else
  {
    v36 = v36;
  }

  *(a1 + 12) = v36;
  if (v36 < 1)
  {
    goto LABEL_74;
  }

LABEL_62:
  v43 = (a1 + 4);
  if (v36 == 1)
  {
    v44 = 1;
    v45 = 1;
    goto LABEL_78;
  }

  v44 = v36 & 1;
  v47 = (v37 + 4 * v36 - 4);
  v48 = 1;
  v49 = v36 & 0x7FFFFFFE;
  v50 = 1;
  do
  {
    v48 *= *v47;
    v50 *= *(v47 - 1);
    v47 -= 2;
    v49 -= 2;
  }

  while (v49);
  v45 = v50 * v48;
  if ((v36 & 0x7FFFFFFE) != v36)
  {
LABEL_78:
    v45 *= *(v37 + 4 * v44 - 4);
  }

LABEL_79:
  *v43 = v45;
  a1[7] = 0;
  if (a1[1])
  {
    v51 = !v35;
  }

  else
  {
    v51 = 1;
  }

  if (!v51)
  {
LABEL_85:
    for (j = 0; j < *(a1 + 6); ++j)
    {
      v53 = (*a1)[j];
      if (!v53)
      {
        *v67 = 0;
        *&v67[8] = 0;
        qmemcpy(sub_1002A80E0(v67, 14), "arrays[i] != 0", 14);
        sub_1002A8980(-215, v67, "init", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 4886);
      }

      v54 = *(v53 + 16);
      if (v54)
      {
        sub_10000A690(v67, 1, *(a1 + 10), *v53 & 0xFFF, v54, 0);
        v56.n128_f64[0] = sub_10025DAEC(&a1[1][12 * j], v67, v55);
        if (*&v67[56])
        {
          if (atomic_fetch_add((*&v67[56] + 20), 0xFFFFFFFF) == 1)
          {
            v57 = *&v67[56];
            if (*&v67[56])
            {
              *&v67[56] = 0;
              v58 = *(v57 + 8);
              if (!v58)
              {
                v58 = *&v67[48];
                if (!*&v67[48])
                {
                  v58 = sub_100268CC8();
                }
              }

              (*(*v58 + 48))(v58, v57, v56);
            }
          }
        }

        *&v67[56] = 0;
        memset(&v67[16], 0, 32);
        if (*&v67[4] >= 1)
        {
          v59 = 0;
          v60 = v68;
          do
          {
            *&v60[4 * v59++] = 0;
          }

          while (v59 < *&v67[4]);
        }

        v61 = v69;
        if (v69 == v70)
        {
          continue;
        }
      }

      else
      {
        *v67 = 1124007936;
        memset(&v67[4], 0, 60);
        v68 = &v67[8];
        v69 = v70;
        v70[0] = 0;
        v70[1] = 0;
        v62.n128_f64[0] = sub_10025DAEC(&a1[1][12 * j], v67, 0.0);
        if (*&v67[56])
        {
          if (atomic_fetch_add((*&v67[56] + 20), 0xFFFFFFFF) == 1)
          {
            v63 = *&v67[56];
            if (*&v67[56])
            {
              *&v67[56] = 0;
              v64 = *(v63 + 8);
              if (!v64)
              {
                v64 = *&v67[48];
                if (!*&v67[48])
                {
                  v64 = sub_100268CC8();
                }
              }

              (*(*v64 + 48))(v64, v63, v62);
            }
          }
        }

        *&v67[56] = 0;
        memset(&v67[16], 0, 32);
        if (*&v67[4] >= 1)
        {
          v65 = 0;
          v66 = v68;
          do
          {
            *&v66[4 * v65++] = 0;
          }

          while (v65 < *&v67[4]);
        }

        v61 = v69;
        if (v69 == v70)
        {
          continue;
        }
      }

      j__free(v61);
    }
  }
}

void sub_100277DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100277E60(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
    {
      v2 = *(result + 8);
      if (v2)
      {
        v3 = v2[8];
        if (v3)
        {
          v2[9] = v3;
          operator delete(v3);
        }

        v4 = v2[5];
        if (v4)
        {
          v2[6] = v4;
          operator delete(v4);
        }

        operator delete();
      }
    }
  }

  *(result + 8) = 0;
  return result;
}

void sub_100277F28(uint64_t a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v6 = (((a4 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (a4 & 7))) & 3);
  v7 = (a2 - 1);
  if (a2 < 1)
  {
    goto LABEL_18;
  }

  if (a6)
  {
    if (a5)
    {
      do
      {
        v8 = *(a6 + 8 * v7);
        if (v8 == 0x7FFFFFFF)
        {
          *(a6 + 8 * v7) = v6;
        }

        else
        {
          v9 = v6 > v8;
          v6 = *(a6 + 8 * v7);
          if (v9)
          {
            v15[0] = 0;
            v15[1] = 0;
            *sub_1002A80E0(v15, 16) = *"total <= step[i]";
            sub_1002A8980(-215, v15, "allocate", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 183);
          }
        }

        v6 *= *(a3 + 4 * v7--);
      }

      while (v7 != -1);
    }

    else
    {
      do
      {
        *(a6 + 8 * v7) = v6;
        v6 *= *(a3 + 4 * v7--);
      }

      while (v7 != -1);
    }
  }

  else
  {
    if (a2 == 1)
    {
      v10 = 0;
    }

    else
    {
      v11 = a2 & 0x7FFFFFFE;
      v10 = v7 - v11;
      v12 = (a3 + 4 * v7);
      v13 = 1;
      v14 = v11;
      do
      {
        v6 *= *v12;
        v13 *= *(v12 - 1);
        v12 -= 2;
        v14 -= 2;
      }

      while (v14);
      v6 *= v13;
      if (v11 == a2)
      {
        goto LABEL_18;
      }
    }

    do
    {
      v6 *= *(a3 + 4 * v10--);
    }

    while (v10 != -1);
  }

LABEL_18:
  if (!a5)
  {
    sub_1001D8FE8(v6);
  }

  operator new();
}

void sub_10027814C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 16))
    {
      v4 = 0;
      v5 = 0;
      v3 = sub_1002A80E0(&v4, 17);
      *(v3 + 16) = 48;
      *v3 = *"u->urefcount == 0";
      sub_1002A8980(-215, &v4, "deallocate", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 212);
    }

    if (*(a2 + 20))
    {
      v4 = 0;
      v5 = 0;
      *sub_1002A80E0(&v4, 16) = *"u->refcount == 0";
      sub_1002A8980(-215, &v4, "deallocate", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/matrix.cpp", 213);
    }

    if ((*(a2 + 48) & 0x20) == 0)
    {
      j__free(*(a2 + 32));
      *(a2 + 32) = 0;
    }

    sub_1002AF5B4(a2);
    operator delete();
  }
}

uint64_t sub_100278284(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    if (a2 == 1)
    {
      v4 = 0;
      v5 = v3 - 1;
      v6 = (result + 17);
      v7 = result + 1;
      v8 = 1;
      v9 = result;
      v10 = result + 1;
      v11 = (result + 17);
      while (1)
      {
        v12 = v4 + 1;
        if (v4 + 1 < v3)
        {
          break;
        }

LABEL_4:
        ++v8;
        --v5;
        v11 = (v11 + 2);
        v6 = (v6 + 2);
        v10 += 2;
        v7 += 2;
        ++v9;
        ++result;
        v4 = v12;
        if (v12 == v3)
        {
          return result;
        }
      }

      v13 = ~v4 + v3;
      v14 = v8;
      if (v13 > 7)
      {
        if (v13 < 0x20)
        {
          v15 = 0;
          goto LABEL_13;
        }

        v16 = v5 & 0xFFFFFFFFFFFFFFE0;
        v15 = v13 & 0xFFFFFFFFFFFFFFE0;
        v17 = v6;
        v18 = v11;
        do
        {
          v19 = *(v18 - 1);
          v20 = *v18;
          v21 = *v17;
          *(v18 - 1) = *(v17 - 1);
          *v18 = v21;
          *(v17 - 1) = v19;
          *v17 = v20;
          v18 += 2;
          v17 += 2;
          v16 -= 32;
        }

        while (v16);
        if (v13 == v15)
        {
          goto LABEL_4;
        }

        if ((v13 & 0x18) != 0)
        {
LABEL_13:
          v14 = v8 + (v13 & 0xFFFFFFFFFFFFFFF8);
          v22 = v15 - (v5 & 0xFFFFFFFFFFFFFFF8);
          v23 = (v10 + v15);
          v24 = (v7 + v15);
          do
          {
            v25 = *v24;
            *v24++ = *v23;
            *v23++ = v25;
            v22 += 8;
          }

          while (v22);
          if (v13 == (v13 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_4;
          }

          goto LABEL_18;
        }

        v14 = v8 + v15;
      }

LABEL_18:
      v26 = v3 - v14;
      v27 = (v9 + v14);
      v28 = (result + v14);
      do
      {
        v29 = *v28;
        *v28++ = *v27;
        *v27++ = v29;
        --v26;
      }

      while (v26);
      goto LABEL_4;
    }

    v30 = 0;
    v31 = a3 - 1;
    v32 = (result + a2);
    v33 = a2 + 1;
    v34 = (result + 1);
    do
    {
      if (++v30 < a3)
      {
        v35 = v34;
        v36 = v32;
        v37 = v31;
        do
        {
          v38 = *v35;
          result = *v36;
          *v35++ = result;
          *v36 = v38;
          v36 += a2;
          --v37;
        }

        while (v37);
      }

      --v31;
      v32 += v33;
      v34 += v33;
    }

    while (v30 != a3);
  }

  return result;
}

uint64_t sub_100278430(uint64_t result, uint64_t a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3 - 1;
    v5 = (result + a2);
    v6 = a2 + 2;
    v7 = (result + 2);
    do
    {
      if (++v3 < a3)
      {
        v8 = v7;
        v9 = v5;
        v10 = v4;
        do
        {
          v11 = *v8;
          result = *v9;
          *v8++ = result;
          *v9 = v11;
          v9 = (v9 + a2);
          --v10;
        }

        while (v10);
      }

      --v4;
      v5 = (v5 + v6);
      v7 = (v7 + v6);
    }

    while (v3 != a3);
  }

  return result;
}

uint64_t sub_1002784A4(uint64_t result, uint64_t a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3;
    v5 = a3 - 1;
    v6 = (result + 5);
    v7 = a2 + 3;
    v8 = a2 + result + 1;
    do
    {
      if (++v3 < v4)
      {
        v9 = v8;
        v10 = v6;
        v11 = v5;
        do
        {
          v12 = *(v10 - 1);
          result = *v10;
          v13 = *(v9 + 1);
          *(v10 - 1) = *(v9 - 1);
          *v10 = v13;
          v10 += 3;
          *(v9 - 1) = v12;
          *(v9 + 1) = result;
          v9 += a2;
          --v11;
        }

        while (v11);
      }

      --v5;
      v6 += v7;
      v8 += v7;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_10027852C(uint64_t result, uint64_t a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3 - 1;
    v5 = (result + a2);
    v6 = a2 + 4;
    v7 = (result + 4);
    do
    {
      if (++v3 < a3)
      {
        v8 = v7;
        v9 = v5;
        v10 = v4;
        do
        {
          v11 = *v8;
          result = *v9;
          *v8++ = result;
          *v9 = v11;
          v9 = (v9 + a2);
          --v10;
        }

        while (v10);
      }

      --v4;
      v5 = (v5 + v6);
      v7 = (v7 + v6);
    }

    while (v3 != a3);
  }

  return result;
}

uint64_t sub_1002785A0(uint64_t result, uint64_t a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3;
    v5 = a3 - 1;
    v6 = (result + 6);
    v7 = a2 + 6;
    v8 = (result + a2);
    do
    {
      if (++v3 < v4)
      {
        v9 = v8;
        v10 = v6;
        v11 = v5;
        do
        {
          v12 = *v10;
          result = *(v10 + 2);
          v13 = *(v9 + 2);
          *v10 = *v9;
          *(v10 + 2) = v13;
          *v9 = v12;
          *(v9 + 2) = result;
          v10 = (v10 + 6);
          v9 = (v9 + a2);
          --v11;
        }

        while (v11);
      }

      --v5;
      v6 = (v6 + v7);
      v8 = (v8 + v7);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_100278628(uint64_t result, uint64_t a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3 - 1;
    v5 = (result + a2);
    v6 = a2 + 8;
    v7 = (result + 8);
    do
    {
      if (++v3 < a3)
      {
        v8 = v7;
        v9 = v5;
        v10 = v4;
        do
        {
          v11 = *v8;
          result = *v9;
          *v8++ = *v9;
          *v9 = v11;
          v9 = (v9 + a2);
          --v10;
        }

        while (v10);
      }

      --v4;
      v5 = (v5 + v6);
      v7 = (v7 + v6);
    }

    while (v3 != a3);
  }

  return result;
}

uint64_t sub_10027869C(uint64_t result, uint64_t a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3 - 1;
    v5 = (result + a2);
    v6 = a2 + 12;
    v7 = (result + 12);
    do
    {
      if (++v3 < a3)
      {
        v8 = v7;
        v9 = v5;
        v10 = v4;
        do
        {
          v11 = *(v8 + 2);
          v12 = *v8;
          result = *(v9 + 2);
          *v8 = *v9;
          *(v8 + 2) = result;
          *v9 = v12;
          *(v9 + 2) = v11;
          v9 = (v9 + a2);
          v8 = (v8 + 12);
          --v10;
        }

        while (v10);
      }

      --v4;
      v5 = (v5 + v6);
      v7 = (v7 + v6);
    }

    while (v3 != a3);
  }

  return result;
}

uint64_t sub_100278724(uint64_t result, uint64_t a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3 - 1;
    v5 = (result + a2);
    v6 = a2 + 16;
    v7 = (result + 16);
    do
    {
      if (++v3 < a3)
      {
        v8 = v7;
        v9 = v5;
        v10 = v4;
        v11 = v7;
        do
        {
          v12 = *v11++;
          *v8 = *v9;
          *v9 = v12;
          v9 = (v9 + a2);
          v8 = v11;
          --v10;
        }

        while (v10);
      }

      --v4;
      v5 = (v5 + v6);
      v7 = (v7 + v6);
    }

    while (v3 != a3);
  }

  return result;
}

uint64_t sub_1002787A0(uint64_t result, uint64_t a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3 - 1;
    v5 = (result + a2);
    v6 = a2 + 24;
    v7 = (result + 24);
    do
    {
      if (++v3 < a3)
      {
        v8 = v7;
        v9 = v5;
        v10 = v4;
        do
        {
          v11 = *v8;
          v12 = *(v8 + 2);
          v13 = *(v9 + 2);
          *v8 = *v9;
          *(v8 + 2) = v13;
          *v9 = v11;
          *(v9 + 2) = v12;
          v9 = (v9 + a2);
          v8 = (v8 + 24);
          --v10;
        }

        while (v10);
      }

      --v4;
      v5 = (v5 + v6);
      v7 = (v7 + v6);
    }

    while (v3 != a3);
  }

  return result;
}

uint64_t sub_100278828(uint64_t result, uint64_t a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3 - 1;
    v5 = (result + a2);
    v6 = a2 + 32;
    v7 = (result + 32);
    do
    {
      if (++v3 < a3)
      {
        v8 = v7;
        v9 = v5;
        v10 = v4;
        do
        {
          v11 = *v8;
          v12 = v8[1];
          v13 = v9[1];
          *v8 = *v9;
          v8[1] = v13;
          v8 += 2;
          *v9 = v11;
          v9[1] = v12;
          v9 = (v9 + a2);
          --v10;
        }

        while (v10);
      }

      --v4;
      v5 = (v5 + v6);
      v7 = (v7 + v6);
    }

    while (v3 != a3);
  }

  return result;
}

unint64_t sub_10027889C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = result;
  v7 = *a5;
  v6 = a5[1];
  v8 = (*a5 - 4);
  if (*a5 < 4)
  {
    LODWORD(v9) = 0;
    if (v7 <= 0)
    {
      return result;
    }

    goto LABEL_169;
  }

  if (v6 >= 4)
  {
    v150 = *a5;
    v15 = 0;
    v16 = (v6 - 4);
    v17 = v16 & 0x7FFFFFFC;
    v18 = a3 + v17 + 4;
    v157 = v17 + 4;
    if (v17 + 5 <= v6)
    {
      v19 = a5[1];
    }

    else
    {
      v19 = (v16 & 0x7FFFFFFC) + 5;
    }

    v20 = a3 + v19;
    v21 = v19;
    v158 = v19;
    v22 = a3 + v19 + 4 * (v8 >> 2) * a4;
    v23 = a3 + v17;
    v24 = a3 + v17 + a4 + 4;
    v25 = v20 + (v8 & 0x7FFFFFFC | 1) * a4;
    v26 = a3 + v17 + 2 * a4 + 4;
    v27 = v20 + (v8 & 0x7FFFFFFC | 2) * a4;
    v147 = 3 * a4;
    v148 = 2 * a4;
    v28 = a3 + v17 + 3 * a4 + 4;
    v29 = v20 + (v8 | 3) * a4;
    v30 = result + (v16 & 0x7FFFFFFC) + 4;
    v31 = result + (v8 & 0x7FFFFFFC) + v21;
    v32 = result + v17 + 5;
    v33 = a3;
    v34 = v31 + 1;
    v35 = result + v17 + 6;
    v36 = v31 + 2;
    v37 = result + v17 + 7;
    v38 = v31 + 3;
    v40 = v18 < v27 && v26 < v22;
    if (v18 < v25 && v24 < v22)
    {
      v40 = 1;
    }

    if (v18 < v29 && v28 < v22)
    {
      v40 = 1;
    }

    if (v18 < v31 && v30 < v22)
    {
      v40 = 1;
    }

    if (v18 < v34 && v32 < v22)
    {
      v40 = 1;
    }

    if (v18 < v36 && v35 < v22)
    {
      v40 = 1;
    }

    v47 = v18 < v38 && v37 < v22 || v40;
    v155 = v47;
    v49 = v24 < v27 && v26 < v25;
    v154 = v49;
    v51 = v24 < v29 && v28 < v25;
    v153 = v51;
    v53 = v24 < v31 && v30 < v25 || (a4 & 0x2000000000000000) != 0;
    v152 = v53;
    v55 = v24 < v34 && v32 < v25;
    v151 = v55;
    v57 = v24 < v36 && v35 < v25;
    v59 = v24 < v38 && v37 < v25;
    v61 = v26 < v29 && v28 < v27;
    v63 = v26 < v31 && v30 < v27;
    v65 = v26 < v34 && v32 < v27;
    v67 = v26 < v36 && v35 < v27;
    v69 = v26 < v38 && v37 < v27 || (a4 & 0x2000000000000000) != 0;
    v71 = v28 < v31 && v30 < v29;
    v73 = v28 < v34 && v32 < v29;
    v75 = v28 < v36 && v35 < v29;
    v76 = v158 - v17 - 4;
    v78 = v28 < v38 && v37 < v29;
    v79 = (v78 || v75 || v73 || v71 || v67 || v65 || v63 || v69) | (v61 || v59 || v57 || v151 || v154 || v153 || v152) | v155;
    v159 = v158 - v17 - 4;
    v80 = v76 & 0xFFFFFFFFFFFFFFF8;
    v82 = v76 < 8 || a2 != 1;
    v156 = v82 | v79;
    v83 = 4 * a4;
    v84 = a2 + 3;
    v85 = 2 * a2 + 3;
    v86 = 3 * a2;
    v87 = v17 + v147 + v33 + 4;
    v88 = v17 + v148 + v33 + 4;
    v89 = a4 + v33 + v17 + 4;
    v90 = v33 + v147;
    v91 = v33 + v148;
    v92 = v33 + a4;
    v149 = v5;
    v93 = v5;
    v94 = v33;
    while (1)
    {
      v95 = 0;
      result = v93;
      do
      {
        v96 = (v94 + v95);
        *v96 = *result;
        v96[1] = *(result + a2);
        v96[2] = *(result + 2 * a2);
        v96[3] = *(result + 3 * a2);
        v97 = (v94 + v95 + a4);
        *v97 = *(result + 1);
        v97[1] = *(result + v84 - 2);
        v97[2] = *(result + v85 - 2);
        v97[3] = *(result + v86 + 1);
        v98 = &v97[a4];
        *v98 = *(result + 2);
        v98[1] = *(result + v84 - 1);
        v98[2] = *(result + v85 - 1);
        v98[3] = *(result + v86 + 2);
        v99 = &v98[a4];
        *v99 = *(result + 3);
        v99[1] = *(result + v84);
        v99[2] = *(result + v85);
        v99[3] = *(result + v86 + 3);
        v95 += 4;
        result += 4 * a2;
      }

      while (v95 <= v16);
      if (v6 <= v95)
      {
        goto LABEL_148;
      }

      v100 = (v16 & 0x7FFFFFFC) + 4;
      if (v156)
      {
        goto LABEL_161;
      }

      if (v159 < 0x20)
      {
        break;
      }

      v101 = v16 & 0x7FFFFFFC;
      result = v76 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v102 = *(v93 + v101 + 20);
        *(v94 + v101 + 4) = *(v93 + v101 + 4);
        v103 = v94 + v101 + 4;
        *(v103 + 16) = v102;
        v104 = *(v93 + v101 + 21);
        v105 = (v103 + a4);
        *v105 = *(v93 + v101 + 5);
        v105[1] = v104;
        v106 = *(v93 + v101 + 22);
        v107 = (v105 + a4);
        *v107 = *(v93 + v101 + 6);
        v107[1] = v106;
        v108 = *(v93 + v101 + 23);
        v109 = (v107 + a4);
        *v109 = *(v93 + v101 + 7);
        v109[1] = v108;
        v101 += 32;
        result -= 32;
      }

      while (result);
      if (v159 == (v76 & 0xFFFFFFFFFFFFFFE0))
      {
        goto LABEL_148;
      }

      result = v76 & 0xFFFFFFFFFFFFFFE0;
      v100 = v157 + (v76 & 0xFFFFFFFFFFFFFFE0);
      if ((v76 & 0x18) != 0)
      {
        goto LABEL_159;
      }

LABEL_161:
      result = a2 * v100;
      do
      {
        *(v94 + v100) = *(v93 + result);
        *(v92 + v100) = *(v93 + result + 1);
        *(v91 + v100) = *(v93 + result + 2);
        *(v90 + v100++) = *(v93 + result + 3);
        result += a2;
      }

      while (v100 < v6);
LABEL_148:
      v15 += 4;
      v94 += v83;
      v93 += 4;
      v87 += v83;
      v37 += 4;
      v88 += v83;
      v89 += v83;
      v23 += v83;
      v90 += v83;
      v91 += v83;
      v92 += v83;
      if (v15 > v8)
      {
        LODWORD(v9) = v15;
        v7 = v150;
        a3 = v33;
        v5 = v149;
        if (v15 >= v150)
        {
          return result;
        }

LABEL_169:
        if (v6 < 4)
        {
          if (v6 >= 1)
          {
            v111 = (v5 + v9);
            v112 = (a3 + a4 * v9 + 2);
            do
            {
              *(v112 - 2) = *v111;
              if (v6 != 1)
              {
                *(v112 - 1) = v111[a2];
                if (v6 != 2)
                {
                  *v112 = v111[2 * a2];
                }
              }

              LODWORD(v9) = v9 + 1;
              ++v111;
              v112 += a4;
            }

            while (v7 > v9);
          }

          return result;
        }

        v113 = (v6 - 4);
        v114 = v9;
        v115 = v113 & 0x7FFFFFFC;
        v116 = v115 + 4;
        v117 = v9 * a4;
        v118 = a3 + v117;
        v119 = v115 + 5;
        if (v115 + 5 <= v6)
        {
          v119 = v6;
        }

        v120 = v9 + (v7 + ~v9);
        v121 = a3 + v119 + v120 * a4;
        v122 = (v5 + v9);
        v123 = a3;
        v124 = v120 + v5 + v119;
        v125 = v119 - v115 - 4;
        v127 = v116 + a3 + v117 < v124 && v116 + v5 + v114 < v121;
        result = v125 & 0x18;
        v128 = v125 & 0xFFFFFFFFFFFFFFF8;
        v130 = v125 < 8 || a2 != 1;
        v131 = v130 || a4 < 0 || v127;
        v132 = v118 + 1;
        v133 = v117 + v123 + v115 + 20;
        v134 = v115 + v114 + v5 + 20;
        while (2)
        {
          v135 = 0;
          v136 = v122;
          do
          {
            v137 = (v132 + v135);
            *(v137 - 1) = *v136;
            *v137 = v136[a2];
            v137[1] = v136[2 * a2];
            v137[2] = v136[3 * a2];
            v135 += 4;
            v136 += 4 * a2;
          }

          while (v135 <= v113);
          if (v6 > v135)
          {
            v138 = (v113 & 0x7FFFFFFC) + 4;
            if (v131)
            {
              goto LABEL_205;
            }

            if (v125 >= 0x20)
            {
              v140 = v134;
              v141 = v133;
              v142 = v125 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v143 = *v140;
                *(v141 - 1) = *(v140 - 1);
                *v141 = v143;
                v141 += 2;
                v140 += 2;
                v142 -= 32;
              }

              while (v142);
              if (v125 != (v125 & 0xFFFFFFFFFFFFFFE0))
              {
                v139 = v125 & 0xFFFFFFFFFFFFFFE0;
                v138 = v116 + (v125 & 0xFFFFFFFFFFFFFFE0);
                if ((v125 & 0x18) != 0)
                {
                  goto LABEL_202;
                }

                goto LABEL_205;
              }
            }

            else
            {
              v139 = 0;
LABEL_202:
              v144 = v139 - v128;
              v145 = v116 + v139;
              do
              {
                *(v118 + v145) = *&v122[v145];
                v145 += 8;
                v144 += 8;
              }

              while (v144);
              v138 = v116 + (v125 & 0xFFFFFFFFFFFFFFF8);
              if (v125 != v128)
              {
LABEL_205:
                v146 = a2 * v138;
                do
                {
                  *(v118 + v138++) = v122[v146];
                  v146 += a2;
                }

                while (v138 < v6);
              }
            }
          }

          ++v114;
          ++v122;
          v132 += a4;
          v133 += a4;
          ++v134;
          v118 += a4;
          if (v7 <= v114)
          {
            return result;
          }

          continue;
        }
      }
    }

    result = 0;
    do
    {
LABEL_159:
      v110 = *(v37 + result - 3);
      *(v89 + result) = *(v37 + result - 2);
      *(v88 + result) = *(v37 + result - 1);
      *(v23 + result + 4) = v110;
      *(v87 + result) = *(v37 + result);
      result += 8;
    }

    while (v80 != result);
    v100 = v157 + (v76 & 0xFFFFFFFFFFFFFFF8);
    if (v159 == v80)
    {
      goto LABEL_148;
    }

    goto LABEL_161;
  }

  if (v6 <= 0)
  {
    LODWORD(v9) = (v8 & 0xFFFFFFFC) + 4;
    if (v9 >= v7)
    {
      return result;
    }

    goto LABEL_169;
  }

  v9 = 0;
  v10 = (a3 + 1);
  v11 = result + a2;
  v12 = 2 * a4;
  v13 = 3 * a4;
  v14 = result + 2 * a2;
  do
  {
    *(v10 - 1) = *(v5 + v9);
    v10[a4 - 1] = *(v5 + v9 + 1);
    v10[v12 - 1] = *(v5 + v9 + 2);
    result = *(v5 + v9 + 3);
    v10[v13 - 1] = result;
    if (v6 != 1)
    {
      *v10 = *(v11 + v9);
      v10[a4] = *(v11 + v9 + 1);
      v10[2 * a4] = *(v11 + v9 + 2);
      result = *(v11 + v9 + 3);
      v10[3 * a4] = result;
      if (v6 != 2)
      {
        v10[1] = *(v14 + v9);
        v10[a4 + 1] = *(v14 + v9 + 1);
        v10[v12 + 1] = *(v14 + v9 + 2);
        result = *(v14 + v9 + 3);
        v10[v13 + 1] = result;
      }
    }

    v9 += 4;
    v10 += 4 * a4;
  }

  while (v9 <= v8);
  if (v9 < v7)
  {
    goto LABEL_169;
  }

  return result;
}

uint64_t sub_10027910C(uint64_t result, uint64_t a2, _WORD *a3, uint64_t a4, int *a5)
{
  v5 = *a5;
  v6 = a5[1];
  v7 = (*a5 - 4);
  if (*a5 < 4)
  {
    LODWORD(v8) = 0;
    if (v5 <= 0)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v6 >= 4)
  {
    v8 = 0;
    v14 = (v6 - 4);
    v15 = 4 * a4;
    v16 = a2 + 6;
    v17 = 2 * a2 + 6;
    v18 = 3 * a2;
    v19 = a3 + a4;
    v20 = &a3[a4] + a4;
    v21 = &a3[a4];
    v22 = result + a2 * ((v14 & 0x7FFFFFFC) + 4) + 4;
    v23 = result;
    v24 = a3;
    do
    {
      v25 = 0;
      v26 = v23;
      do
      {
        v27 = &v24[v25];
        *v27 = *v26;
        v27[1] = *(v26 + a2);
        v27[2] = v26[a2];
        v27[3] = *(v26 + 3 * a2);
        v28 = (v27 + a4);
        *v28 = v26[1];
        v28[1] = *(v26 + v16 - 4);
        v28[2] = *(v26 + v17 - 4);
        v28[3] = *(v26 + v18 + 2);
        v29 = (v28 + a4);
        *v29 = v26[2];
        v29[1] = *(v26 + v16 - 2);
        v29[2] = *(v26 + v17 - 2);
        v29[3] = *(v26 + v18 + 4);
        v30 = (v29 + a4);
        *v30 = v26[3];
        v30[1] = *(v26 + v16);
        v30[2] = *(v26 + v17);
        v30[3] = *(v26 + v18 + 6);
        v25 += 4;
        v26 += 2 * a2;
      }

      while (v25 <= v14);
      v31 = v22;
      v32 = (v14 & 0x7FFFFFFC) + 4;
      if (v6 > v25)
      {
        do
        {
          v24[v32] = *(v31 - 2);
          *&v19[2 * v32] = *(v31 - 1);
          v21[v32] = *v31;
          *(v20 + 2 * v32++) = v31[1];
          v31 = (v31 + a2);
        }

        while (v32 < v6);
      }

      v8 += 4;
      v24 = (v24 + v15);
      v23 += 4;
      v20 += v15;
      v21 = (v21 + v15);
      v19 += v15;
      v22 += 8;
    }

    while (v8 <= v7);
  }

  else
  {
    if (v6 <= 0)
    {
      LODWORD(v8) = (v7 & 0xFFFFFFFC) + 4;
      if (v8 >= v5)
      {
        return result;
      }

      goto LABEL_19;
    }

    v8 = 0;
    v9 = a2;
    v10 = a4;
    v11 = 3 * a4;
    v12 = result;
    v13 = a3;
    do
    {
      *v13 = *v12;
      *(v13 + a4) = v12[1];
      v13[a4] = v12[2];
      *(v13 + 3 * a4) = v12[3];
      if (v6 != 1)
      {
        v13[1] = *(v12 + a2);
        *(v13 + a4 + 2) = *(v12 + a2 + 2);
        v13[v10 + 1] = *(v12 + a2 + 4);
        *(v13 + v11 + 2) = *(v12 + a2 + 6);
        if (v6 != 2)
        {
          v13[2] = v12[a2];
          *(v13 + a4 + 4) = v12[v9 + 1];
          v13[v10 + 2] = v12[v9 + 2];
          *(v13 + v11 + 4) = v12[v9 + 3];
        }
      }

      v8 += 4;
      v13 += 2 * a4;
      v12 += 4;
    }

    while (v8 <= v7);
  }

  if (v8 >= v5)
  {
    return result;
  }

LABEL_19:
  if (v6 >= 4)
  {
    v35 = (v6 - 4);
    v36 = v8;
    v37 = (v35 & 0x7FFFFFFC) + 4;
    v38 = (result + 2 * v8);
    v39 = a3 + a4 * v36;
    v40 = v39 + 4;
    result = a2 * v37;
    do
    {
      v41 = 0;
      v42 = v40;
      v43 = v38;
      do
      {
        *(v42 - 2) = *v43;
        *(v42 - 1) = *(v43 + a2);
        *v42 = v43[a2];
        v42[1] = *(v43 + 3 * a2);
        v41 += 4;
        v43 += 2 * a2;
        v42 += 4;
      }

      while (v41 <= v35);
      v44 = a2 * v37;
      v45 = (v35 & 0x7FFFFFFC) + 4;
      if (v6 > v41)
      {
        do
        {
          *&v39[2 * v45++] = *(v38 + v44);
          v44 += a2;
        }

        while (v45 < v6);
      }

      ++v36;
      ++v38;
      v40 = (v40 + a4);
      v39 += a4;
    }

    while (v5 > v36);
  }

  else if (v6 >= 1)
  {
    v33 = (result + 2 * v8);
    v34 = (a3 + a4 * v8 + 2);
    do
    {
      *(v34 - 1) = *v33;
      if (v6 != 1)
      {
        *v34 = *(v33 + a2);
        if (v6 != 2)
        {
          v34[1] = v33[a2];
        }
      }

      LODWORD(v8) = v8 + 1;
      ++v33;
      v34 = (v34 + a4);
    }

    while (v5 > v8);
  }

  return result;
}

uint64_t sub_1002794B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v6 = *a5;
  v5 = a5[1];
  v7 = (*a5 - 4);
  if (*a5 < 4)
  {
    LODWORD(v8) = 0;
    if (v6 <= 0)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (v5 >= 4)
  {
    v88 = *a5;
    v8 = 0;
    v32 = (v5 - 4);
    v33 = 4 * a4;
    v34 = a2 + 9;
    v35 = 2 * a2 + 9;
    v36 = 3 * a2;
    v37 = a3 + 12 * ((v32 >> 2) & 0x1FFFFFFF) + 12;
    v38 = result + a2 * ((v32 & 0x7FFFFFFC) + 4) + 6;
    v39 = result;
    v40 = a3;
    do
    {
      v41 = 0;
      v42 = v39;
      v43 = v40;
      do
      {
        v44 = *v42;
        *(v43 + 2) = *(v42 + 2);
        *v43 = v44;
        v45 = *(v42 + a2);
        *(v43 + 5) = *(v42 + v34 - 7);
        *(v43 + 3) = v45;
        v46 = *(v42 + 2 * a2);
        *(v43 + 8) = *(v42 + v35 - 7);
        *(v43 + 6) = v46;
        v47 = *(v42 + 3 * a2);
        *(v43 + 11) = *(v42 + v36 + 2);
        *(v43 + 9) = v47;
        v48 = v43 + a4;
        v49 = *(v42 + 3);
        *(v48 + 2) = *(v42 + 5);
        *v48 = v49;
        v50 = *(v42 + v34 - 6);
        *(v48 + 5) = *(v42 + v34 - 4);
        *(v48 + 3) = v50;
        v51 = *(v42 + v35 - 6);
        *(v48 + 8) = *(v42 + v35 - 4);
        *(v48 + 6) = v51;
        v52 = *(v42 + v36 + 3);
        *(v48 + 11) = *(v42 + v36 + 5);
        *(v48 + 9) = v52;
        v53 = v43 + a4 + a4;
        LOWORD(v48) = *(v42 + 6);
        *(v53 + 2) = *(v42 + 8);
        *v53 = v48;
        LOWORD(v48) = *(v42 + v34 - 3);
        *(v53 + 5) = *(v42 + v34 - 1);
        *(v53 + 3) = v48;
        LOWORD(v48) = *(v42 + v35 - 3);
        *(v53 + 8) = *(v42 + v35 - 1);
        *(v53 + 6) = v48;
        LOWORD(v48) = *(v42 + v36 + 6);
        *(v53 + 11) = *(v42 + v36 + 8);
        *(v53 + 9) = v48;
        v54 = v53 + a4;
        LOWORD(v48) = *(v42 + 9);
        *(v54 + 2) = *(v42 + 11);
        *v54 = v48;
        LOWORD(v48) = *(v42 + v34);
        *(v54 + 5) = *(v42 + v34 + 2);
        *(v54 + 3) = v48;
        v55 = *(v42 + v35);
        *(v54 + 8) = *(v42 + v35 + 2);
        *(v54 + 6) = v55;
        v56 = *(v42 + v36 + 9);
        *(v54 + 11) = *(v42 + v36 + 11);
        *(v54 + 9) = v56;
        v41 += 4;
        v43 += 12;
        v42 += 4 * a2;
      }

      while (v41 <= v32);
      v57 = v38;
      v58 = v37;
      v59 = (v32 & 0x7FFFFFFC) + 4;
      if (v5 > v41)
      {
        do
        {
          v60 = *(v57 - 6);
          *(v58 + 2) = *(v57 - 4);
          *v58 = v60;
          v61 = v58 + a4;
          v62 = *(v57 - 3);
          *(v61 + 2) = *(v57 - 1);
          *v61 = v62;
          v63 = v58 + 2 * a4;
          v64 = *v57;
          *(v63 + 2) = *(v57 + 2);
          *v63 = v64;
          v65 = v58 + 3 * a4;
          v66 = *(v57 + 3);
          *(v65 + 2) = *(v57 + 5);
          *v65 = v66;
          ++v59;
          v58 += 3;
          v57 += a2;
        }

        while (v59 < v5);
      }

      v8 += 4;
      v40 += v33;
      v39 += 12;
      v37 += v33;
      v38 += 12;
    }

    while (v8 <= v7);
    v6 = v88;
  }

  else
  {
    if (v5 <= 0)
    {
      LODWORD(v8) = (v7 & 0xFFFFFFFC) + 4;
      if (v8 >= v6)
      {
        return result;
      }

      goto LABEL_20;
    }

    v8 = 0;
    v9 = 2 * a2;
    v10 = 2 * a4;
    v11 = 3 * a4;
    v12 = result;
    v13 = a3;
    do
    {
      v14 = v13 + a4;
      v15 = v13 + v10;
      v16 = v13 + v11;
      v17 = *v12;
      *(v13 + 2) = *(v12 + 2);
      *v13 = v17;
      v18 = *(v12 + 3);
      *(v14 + 2) = *(v12 + 5);
      *v14 = v18;
      v19 = *(v12 + 6);
      *(v15 + 2) = *(v12 + 8);
      *v15 = v19;
      v20 = *(v12 + 9);
      *(v16 + 2) = *(v12 + 11);
      *v16 = v20;
      if (v5 != 1)
      {
        v21 = *(v12 + a2);
        *(v13 + 5) = *(v12 + a2 + 2);
        *(v13 + 3) = v21;
        v22 = *(v12 + a2 + 3);
        *(v14 + 5) = *(v12 + a2 + 5);
        *(v14 + 3) = v22;
        v23 = *(v12 + a2 + 6);
        *(v15 + 5) = *(v12 + a2 + 8);
        *(v15 + 3) = v23;
        v24 = *(v12 + a2 + 9);
        *(v16 + 5) = *(v12 + a2 + 11);
        *(v16 + 3) = v24;
        if (v5 != 2)
        {
          v25 = *(v12 + 2 * a2);
          *(v13 + 8) = *(v12 + v9 + 2);
          *(v13 + 6) = v25;
          v26 = v13 + a4;
          v27 = *(v12 + v9 + 3);
          *(v26 + 8) = *(v12 + v9 + 5);
          *(v26 + 6) = v27;
          v28 = v13 + v10;
          v29 = *(v12 + v9 + 6);
          *(v28 + 8) = *(v12 + v9 + 8);
          *(v28 + 6) = v29;
          v30 = v13 + v11;
          v31 = *(v12 + v9 + 9);
          *(v30 + 8) = *(v12 + v9 + 11);
          *(v30 + 6) = v31;
        }
      }

      v8 += 4;
      v13 += 4 * a4;
      v12 += 12;
    }

    while (v8 <= v7);
  }

  if (v8 >= v6)
  {
    return result;
  }

LABEL_20:
  if (v5 >= 4)
  {
    v72 = (v5 - 4);
    v73 = v8;
    v74 = result + 3 * v8;
    v75 = a3 + a4 * v73;
    v76 = v75 + 6;
    result = v75 + 12 * ((v72 >> 2) & 0x1FFFFFFF) + 12;
    do
    {
      v77 = 0;
      v78 = v76;
      v79 = v74;
      do
      {
        v80 = *v79;
        *(v78 - 4) = *(v79 + 2);
        *(v78 - 6) = v80;
        v81 = *(v79 + a2);
        *(v78 - 1) = *(v79 + a2 + 2);
        *(v78 - 3) = v81;
        v82 = *(v79 + 2 * a2);
        *(v78 + 2) = *(v79 + 2 * a2 + 2);
        *v78 = v82;
        v83 = *(v79 + 3 * a2);
        *(v78 + 5) = *(v79 + 3 * a2 + 2);
        *(v78 + 3) = v83;
        v77 += 4;
        v79 += 4 * a2;
        v78 += 12;
      }

      while (v77 <= v72);
      v84 = a2 * ((v72 & 0x7FFFFFFC) + 4);
      v85 = result;
      v86 = (v72 & 0x7FFFFFFC) + 4;
      if (v5 > v77)
      {
        do
        {
          v87 = *(v74 + v84);
          *(v85 + 2) = *(v74 + v84 + 2);
          *v85 = v87;
          v85 += 3;
          ++v86;
          v84 += a2;
        }

        while (v86 < v5);
      }

      ++v73;
      v74 += 3;
      v76 += a4;
      result += a4;
    }

    while (v6 > v73);
  }

  else if (v5 >= 1)
  {
    v67 = result + 3 * v8;
    v68 = a3 + a4 * v8 + 3;
    do
    {
      v69 = *v67;
      *(v68 - 1) = *(v67 + 2);
      *(v68 - 3) = v69;
      if (v5 != 1)
      {
        v70 = *(v67 + a2);
        *(v68 + 2) = *(v67 + a2 + 2);
        *v68 = v70;
        if (v5 != 2)
        {
          v71 = *(v67 + 2 * a2);
          *(v68 + 5) = *(v67 + 2 * a2 + 2);
          *(v68 + 3) = v71;
        }
      }

      LODWORD(v8) = v8 + 1;
      v67 += 3;
      v68 += a4;
    }

    while (v6 > v8);
  }

  return result;
}

_DWORD *sub_100279A18(_DWORD *result, uint64_t a2, _DWORD *a3, uint64_t a4, int *a5)
{
  v5 = *a5;
  v6 = a5[1];
  v7 = (*a5 - 4);
  if (*a5 < 4)
  {
    LODWORD(v8) = 0;
    if (v5 <= 0)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v6 >= 4)
  {
    v8 = 0;
    v14 = (v6 - 4);
    v15 = 4 * a4;
    v16 = a2 + 12;
    v17 = 2 * a2 + 12;
    v18 = 3 * a2;
    v19 = a3 + a4;
    v20 = a3 + 2 * a4 + a4;
    v21 = a3 + 2 * a4;
    v22 = result + a2 * ((v14 & 0x7FFFFFFC) + 4) + 8;
    v23 = result;
    v24 = a3;
    do
    {
      v25 = 0;
      v26 = v23;
      do
      {
        v27 = &v24[v25];
        *v27 = *v26;
        v27[1] = *(v26 + a2);
        v27[2] = *(v26 + 2 * a2);
        v27[3] = *(v26 + 3 * a2);
        v28 = (v27 + a4);
        *v28 = v26[1];
        v28[1] = *(v26 + v16 - 8);
        v28[2] = *(v26 + v17 - 8);
        v28[3] = *(v26 + v18 + 4);
        v29 = (v28 + a4);
        *v29 = v26[2];
        v29[1] = *(v26 + v16 - 4);
        v29[2] = *(v26 + v17 - 4);
        v29[3] = *(v26 + v18 + 8);
        v30 = (v29 + a4);
        *v30 = v26[3];
        v30[1] = *(v26 + v16);
        v30[2] = *(v26 + v17);
        v30[3] = *(v26 + v18 + 12);
        v25 += 4;
        v26 += a2;
      }

      while (v25 <= v14);
      v31 = v22;
      v32 = (v14 & 0x7FFFFFFC) + 4;
      if (v6 > v25)
      {
        do
        {
          v24[v32] = *(v31 - 2);
          *&v19[4 * v32] = *(v31 - 1);
          *&v21[4 * v32] = *v31;
          *(v20 + 4 * v32++) = v31[1];
          v31 = (v31 + a2);
        }

        while (v32 < v6);
      }

      v8 += 4;
      v24 = (v24 + v15);
      v23 += 4;
      v20 += v15;
      v21 += v15;
      v19 += v15;
      v22 += 16;
    }

    while (v8 <= v7);
  }

  else
  {
    if (v6 <= 0)
    {
      LODWORD(v8) = (v7 & 0xFFFFFFFC) + 4;
      if (v8 >= v5)
      {
        return result;
      }

      goto LABEL_19;
    }

    v8 = 0;
    v9 = 2 * a2;
    v10 = 2 * a4;
    v11 = 3 * a4;
    v12 = result;
    v13 = a3;
    do
    {
      *v13 = *v12;
      *(v13 + a4) = v12[1];
      *(v13 + 2 * a4) = v12[2];
      *(v13 + 3 * a4) = v12[3];
      if (v6 != 1)
      {
        v13[1] = *(v12 + a2);
        *(v13 + a4 + 4) = *(v12 + a2 + 4);
        *(v13 + v10 + 4) = *(v12 + a2 + 8);
        *(v13 + v11 + 4) = *(v12 + a2 + 12);
        if (v6 != 2)
        {
          v13[2] = *(v12 + 2 * a2);
          *(v13 + a4 + 8) = *(v12 + v9 + 4);
          *(v13 + v10 + 8) = *(v12 + v9 + 8);
          *(v13 + v11 + 8) = *(v12 + v9 + 12);
        }
      }

      v8 += 4;
      v13 += a4;
      v12 += 4;
    }

    while (v8 <= v7);
  }

  if (v8 >= v5)
  {
    return result;
  }

LABEL_19:
  if (v6 >= 4)
  {
    v35 = (v6 - 4);
    v36 = v8;
    v37 = &result[v8];
    v38 = a3 + a4 * v36;
    result = v38 + 8;
    do
    {
      v39 = 0;
      v40 = result;
      v41 = v37;
      do
      {
        *(v40 - 2) = *v41;
        *(v40 - 1) = *(v41 + a2);
        *v40 = *(v41 + 2 * a2);
        v40[1] = *(v41 + 3 * a2);
        v39 += 4;
        v41 += a2;
        v40 += 4;
      }

      while (v39 <= v35);
      v42 = a2 * ((v35 & 0x7FFFFFFC) + 4);
      v43 = (v35 & 0x7FFFFFFC) + 4;
      if (v6 > v39)
      {
        do
        {
          *&v38[4 * v43++] = *(v37 + v42);
          v42 += a2;
        }

        while (v43 < v6);
      }

      ++v36;
      ++v37;
      result = (result + a4);
      v38 += a4;
    }

    while (v5 > v36);
  }

  else if (v6 >= 1)
  {
    v33 = &result[v8];
    v34 = (a3 + a4 * v8 + 4);
    do
    {
      *(v34 - 1) = *v33;
      if (v6 != 1)
      {
        *v34 = *(v33 + a2);
        if (v6 != 2)
        {
          v34[1] = *(v33 + 2 * a2);
        }
      }

      LODWORD(v8) = v8 + 1;
      ++v33;
      v34 = (v34 + a4);
    }

    while (v5 > v8);
  }

  return result;
}

uint64_t sub_100279DC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v6 = *a5;
  v5 = a5[1];
  v7 = (*a5 - 4);
  if (*a5 < 4)
  {
    LODWORD(v8) = 0;
    if (v6 <= 0)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (v5 >= 4)
  {
    v88 = *a5;
    v8 = 0;
    v32 = (v5 - 4);
    v33 = 4 * a4;
    v34 = a2 + 18;
    v35 = 2 * a2 + 18;
    v36 = 3 * a2;
    v37 = a3 + 24 * ((v32 >> 2) & 0x1FFFFFFF) + 24;
    v38 = result + a2 * ((v32 & 0x7FFFFFFC) + 4) + 12;
    v39 = result;
    v40 = a3;
    do
    {
      v41 = 0;
      v42 = v39;
      v43 = v40;
      do
      {
        v44 = *v42;
        *(v43 + 4) = *(v42 + 4);
        *v43 = v44;
        v45 = *(v42 + a2);
        *(v43 + 10) = *(v42 + v34 - 14);
        *(v43 + 6) = v45;
        v46 = *(v42 + 2 * a2);
        *(v43 + 16) = *(v42 + v35 - 14);
        *(v43 + 12) = v46;
        v47 = *(v42 + 3 * a2);
        *(v43 + 22) = *(v42 + v36 + 4);
        *(v43 + 18) = v47;
        v48 = v43 + a4;
        v49 = *(v42 + 6);
        *(v48 + 4) = *(v42 + 10);
        *v48 = v49;
        v50 = *(v42 + v34 - 12);
        *(v48 + 10) = *(v42 + v34 - 8);
        *(v48 + 6) = v50;
        v51 = *(v42 + v35 - 12);
        *(v48 + 16) = *(v42 + v35 - 8);
        *(v48 + 12) = v51;
        v52 = *(v42 + v36 + 6);
        *(v48 + 22) = *(v42 + v36 + 10);
        *(v48 + 18) = v52;
        v53 = v43 + a4 + a4;
        LODWORD(v48) = *(v42 + 12);
        *(v53 + 4) = *(v42 + 16);
        *v53 = v48;
        LODWORD(v48) = *(v42 + v34 - 6);
        *(v53 + 10) = *(v42 + v34 - 2);
        *(v53 + 6) = v48;
        LODWORD(v48) = *(v42 + v35 - 6);
        *(v53 + 16) = *(v42 + v35 - 2);
        *(v53 + 12) = v48;
        LODWORD(v48) = *(v42 + v36 + 12);
        *(v53 + 22) = *(v42 + v36 + 16);
        *(v53 + 18) = v48;
        v54 = v53 + a4;
        LODWORD(v48) = *(v42 + 18);
        *(v54 + 4) = *(v42 + 22);
        *v54 = v48;
        LODWORD(v48) = *(v42 + v34);
        *(v54 + 10) = *(v42 + v34 + 4);
        *(v54 + 6) = v48;
        v55 = *(v42 + v35);
        *(v54 + 16) = *(v42 + v35 + 4);
        *(v54 + 12) = v55;
        v56 = *(v42 + v36 + 18);
        *(v54 + 22) = *(v42 + v36 + 22);
        *(v54 + 18) = v56;
        v41 += 4;
        v43 += 24;
        v42 += 4 * a2;
      }

      while (v41 <= v32);
      v57 = v38;
      v58 = v37;
      v59 = (v32 & 0x7FFFFFFC) + 4;
      if (v5 > v41)
      {
        do
        {
          v60 = *(v57 - 12);
          *(v58 + 4) = *(v57 - 8);
          *v58 = v60;
          v61 = v58 + a4;
          v62 = *(v57 - 6);
          *(v61 + 4) = *(v57 - 2);
          *v61 = v62;
          v63 = v58 + 2 * a4;
          v64 = *v57;
          *(v63 + 4) = *(v57 + 4);
          *v63 = v64;
          v65 = v58 + 3 * a4;
          v66 = *(v57 + 6);
          *(v65 + 4) = *(v57 + 10);
          *v65 = v66;
          ++v59;
          v58 += 6;
          v57 += a2;
        }

        while (v59 < v5);
      }

      v8 += 4;
      v40 += v33;
      v39 += 24;
      v37 += v33;
      v38 += 24;
    }

    while (v8 <= v7);
    v6 = v88;
  }

  else
  {
    if (v5 <= 0)
    {
      LODWORD(v8) = (v7 & 0xFFFFFFFC) + 4;
      if (v8 >= v6)
      {
        return result;
      }

      goto LABEL_20;
    }

    v8 = 0;
    v9 = 2 * a2;
    v10 = 2 * a4;
    v11 = 3 * a4;
    v12 = result;
    v13 = a3;
    do
    {
      v14 = v13 + a4;
      v15 = v13 + v10;
      v16 = v13 + v11;
      v17 = *v12;
      *(v13 + 4) = *(v12 + 4);
      *v13 = v17;
      v18 = *(v12 + 6);
      *(v14 + 4) = *(v12 + 10);
      *v14 = v18;
      v19 = *(v12 + 12);
      *(v15 + 4) = *(v12 + 16);
      *v15 = v19;
      v20 = *(v12 + 18);
      *(v16 + 4) = *(v12 + 22);
      *v16 = v20;
      if (v5 != 1)
      {
        v21 = *(v12 + a2);
        *(v13 + 10) = *(v12 + a2 + 4);
        *(v13 + 6) = v21;
        v22 = *(v12 + a2 + 6);
        *(v14 + 10) = *(v12 + a2 + 10);
        *(v14 + 6) = v22;
        v23 = *(v12 + a2 + 12);
        *(v15 + 10) = *(v12 + a2 + 16);
        *(v15 + 6) = v23;
        v24 = *(v12 + a2 + 18);
        *(v16 + 10) = *(v12 + a2 + 22);
        *(v16 + 6) = v24;
        if (v5 != 2)
        {
          v25 = *(v12 + 2 * a2);
          *(v13 + 16) = *(v12 + v9 + 4);
          *(v13 + 12) = v25;
          v26 = v13 + a4;
          v27 = *(v12 + v9 + 6);
          *(v26 + 16) = *(v12 + v9 + 10);
          *(v26 + 12) = v27;
          v28 = v13 + v10;
          v29 = *(v12 + v9 + 12);
          *(v28 + 16) = *(v12 + v9 + 16);
          *(v28 + 12) = v29;
          v30 = v13 + v11;
          v31 = *(v12 + v9 + 18);
          *(v30 + 16) = *(v12 + v9 + 22);
          *(v30 + 12) = v31;
        }
      }

      v8 += 4;
      v13 += 4 * a4;
      v12 += 24;
    }

    while (v8 <= v7);
  }

  if (v8 >= v6)
  {
    return result;
  }

LABEL_20:
  if (v5 >= 4)
  {
    v72 = (v5 - 4);
    v73 = v8;
    v74 = result + 6 * v8;
    v75 = a3 + a4 * v73;
    v76 = v75 + 12;
    result = v75 + 24 * ((v72 >> 2) & 0x1FFFFFFF) + 24;
    do
    {
      v77 = 0;
      v78 = v76;
      v79 = v74;
      do
      {
        v80 = *v79;
        *(v78 - 8) = *(v79 + 4);
        *(v78 - 12) = v80;
        v81 = *(v79 + a2);
        *(v78 - 2) = *(v79 + a2 + 4);
        *(v78 - 6) = v81;
        v82 = *(v79 + 2 * a2);
        *(v78 + 4) = *(v79 + 2 * a2 + 4);
        *v78 = v82;
        v83 = *(v79 + 3 * a2);
        *(v78 + 10) = *(v79 + 3 * a2 + 4);
        *(v78 + 6) = v83;
        v77 += 4;
        v79 += 4 * a2;
        v78 += 24;
      }

      while (v77 <= v72);
      v84 = a2 * ((v72 & 0x7FFFFFFC) + 4);
      v85 = result;
      v86 = (v72 & 0x7FFFFFFC) + 4;
      if (v5 > v77)
      {
        do
        {
          v87 = *(v74 + v84);
          *(v85 + 4) = *(v74 + v84 + 4);
          *v85 = v87;
          v85 += 6;
          ++v86;
          v84 += a2;
        }

        while (v86 < v5);
      }

      ++v73;
      v74 += 6;
      v76 += a4;
      result += a4;
    }

    while (v6 > v73);
  }

  else if (v5 >= 1)
  {
    v67 = result + 6 * v8;
    v68 = a3 + a4 * v8 + 6;
    do
    {
      v69 = *v67;
      *(v68 - 2) = *(v67 + 4);
      *(v68 - 6) = v69;
      if (v5 != 1)
      {
        v70 = *(v67 + a2);
        *(v68 + 4) = *(v67 + a2 + 4);
        *v68 = v70;
        if (v5 != 2)
        {
          v71 = *(v67 + 2 * a2);
          *(v68 + 10) = *(v67 + 2 * a2 + 4);
          *(v68 + 6) = v71;
        }
      }

      LODWORD(v8) = v8 + 1;
      v67 += 6;
      v68 += a4;
    }

    while (v6 > v8);
  }

  return result;
}

void *sub_10027A32C(void *result, uint64_t a2, void *a3, uint64_t a4, int *a5)
{
  v5 = *a5;
  v6 = a5[1];
  v7 = (*a5 - 4);
  if (*a5 < 4)
  {
    LODWORD(v8) = 0;
    if (v5 <= 0)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v6 >= 4)
  {
    v8 = 0;
    v14 = (v6 - 4);
    v15 = 4 * a4;
    v16 = a2 + 24;
    v17 = 2 * a2 + 24;
    v18 = 3 * a2;
    v19 = a3 + a4;
    v20 = a3 + 2 * a4 + a4;
    v21 = a3 + 2 * a4;
    v22 = result + a2 * ((v14 & 0x7FFFFFFC) + 4) + 16;
    v23 = result;
    v24 = a3;
    do
    {
      v25 = 0;
      v26 = v23;
      do
      {
        v27 = &v24[v25];
        *v27 = *v26;
        v27[1] = *(v26 + a2);
        v27[2] = *(v26 + 2 * a2);
        v27[3] = *(v26 + 3 * a2);
        v28 = (v27 + a4);
        *v28 = v26[1];
        v28[1] = *(v26 + v16 - 16);
        v28[2] = *(v26 + v17 - 16);
        v28[3] = *(v26 + v18 + 8);
        v29 = (v28 + a4);
        *v29 = v26[2];
        v29[1] = *(v26 + v16 - 8);
        v29[2] = *(v26 + v17 - 8);
        v29[3] = *(v26 + v18 + 16);
        v30 = (v29 + a4);
        *v30 = v26[3];
        v30[1] = *(v26 + v16);
        v30[2] = *(v26 + v17);
        v30[3] = *(v26 + v18 + 24);
        v25 += 4;
        v26 = (v26 + 4 * a2);
      }

      while (v25 <= v14);
      v31 = v22;
      v32 = (v14 & 0x7FFFFFFC) + 4;
      if (v6 > v25)
      {
        do
        {
          v24[v32] = *(v31 - 2);
          *&v19[8 * v32] = *(v31 - 1);
          *&v21[8 * v32] = *v31;
          *(v20 + 8 * v32++) = v31[1];
          v31 = (v31 + a2);
        }

        while (v32 < v6);
      }

      v8 += 4;
      v24 = (v24 + v15);
      v23 += 4;
      v20 += v15;
      v21 += v15;
      v19 += v15;
      v22 += 32;
    }

    while (v8 <= v7);
  }

  else
  {
    if (v6 <= 0)
    {
      LODWORD(v8) = (v7 & 0xFFFFFFFC) + 4;
      if (v8 >= v5)
      {
        return result;
      }

      goto LABEL_19;
    }

    v8 = 0;
    v9 = 2 * a2;
    v10 = 2 * a4;
    v11 = 3 * a4;
    v12 = result;
    v13 = a3;
    do
    {
      *v13 = *v12;
      *(v13 + a4) = v12[1];
      *(v13 + 2 * a4) = v12[2];
      *(v13 + 3 * a4) = v12[3];
      if (v6 != 1)
      {
        v13[1] = *(v12 + a2);
        *(v13 + a4 + 8) = *(v12 + a2 + 8);
        *(v13 + v10 + 8) = *(v12 + a2 + 16);
        *(v13 + v11 + 8) = *(v12 + a2 + 24);
        if (v6 != 2)
        {
          v13[2] = *(v12 + 2 * a2);
          *(v13 + a4 + 16) = *(v12 + v9 + 8);
          *(v13 + v10 + 16) = *(v12 + v9 + 16);
          *(v13 + v11 + 16) = *(v12 + v9 + 24);
        }
      }

      v8 += 4;
      v13 = (v13 + 4 * a4);
      v12 += 4;
    }

    while (v8 <= v7);
  }

  if (v8 >= v5)
  {
    return result;
  }

LABEL_19:
  if (v6 >= 4)
  {
    v35 = (v6 - 4);
    v36 = v8;
    v37 = &result[v8];
    v38 = a3 + a4 * v36;
    result = v38 + 16;
    do
    {
      v39 = 0;
      v40 = result;
      v41 = v37;
      do
      {
        *(v40 - 2) = *v41;
        *(v40 - 1) = *(v41 + a2);
        *v40 = *(v41 + 2 * a2);
        v40[1] = *(v41 + 3 * a2);
        v39 += 4;
        v41 = (v41 + 4 * a2);
        v40 += 4;
      }

      while (v39 <= v35);
      v42 = a2 * ((v35 & 0x7FFFFFFC) + 4);
      v43 = (v35 & 0x7FFFFFFC) + 4;
      if (v6 > v39)
      {
        do
        {
          *&v38[8 * v43++] = *(v37 + v42);
          v42 += a2;
        }

        while (v43 < v6);
      }

      ++v36;
      ++v37;
      result = (result + a4);
      v38 += a4;
    }

    while (v5 > v36);
  }

  else if (v6 >= 1)
  {
    v33 = &result[v8];
    v34 = (a3 + a4 * v8 + 8);
    do
    {
      *(v34 - 1) = *v33;
      if (v6 != 1)
      {
        *v34 = *(v33 + a2);
        if (v6 != 2)
        {
          v34[1] = *(v33 + 2 * a2);
        }
      }

      LODWORD(v8) = v8 + 1;
      ++v33;
      v34 = (v34 + a4);
    }

    while (v5 > v8);
  }

  return result;
}

uint64_t sub_10027A6DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v6 = *a5;
  v5 = a5[1];
  v7 = (*a5 - 4);
  if (*a5 < 4)
  {
    LODWORD(v8) = 0;
    if (v6 <= 0)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (v5 >= 4)
  {
    v94 = *a5;
    v8 = 0;
    v32 = (v5 - 4);
    v33 = 4 * a4;
    v34 = a2 + 36;
    v35 = 2 * a2 + 36;
    v36 = 3 * a2;
    v37 = a3 + 48 * ((v32 >> 2) & 0x1FFFFFFF) + 48;
    v38 = result + a2 * ((v32 & 0x7FFFFFFC) + 4) + 24;
    v39 = result;
    v40 = a3;
    do
    {
      v41 = 0;
      v42 = v39;
      v43 = v40;
      do
      {
        v44 = *v42;
        *(v43 + 8) = *(v42 + 8);
        *v43 = v44;
        v45 = *(v42 + a2);
        *(v43 + 20) = *(v42 + v34 - 28);
        *(v43 + 12) = v45;
        v46 = *(v42 + 2 * a2);
        *(v43 + 32) = *(v42 + v35 - 28);
        *(v43 + 24) = v46;
        v47 = *(v42 + 3 * a2);
        *(v43 + 44) = *(v42 + v36 + 8);
        *(v43 + 36) = v47;
        v48 = v43 + a4;
        v49 = *(v42 + 12);
        *(v48 + 8) = *(v42 + 20);
        *v48 = v49;
        v50 = *(v42 + v34 - 24);
        *(v48 + 20) = *(v42 + v34 - 16);
        *(v48 + 12) = v50;
        v51 = *(v42 + v35 - 24);
        *(v48 + 32) = *(v42 + v35 - 16);
        *(v48 + 24) = v51;
        v52 = *(v42 + v36 + 12);
        *(v48 + 44) = *(v42 + v36 + 20);
        *(v48 + 36) = v52;
        v53 = v43 + a4 + a4;
        v54 = *(v42 + 24);
        *(v53 + 8) = *(v42 + 32);
        *v53 = v54;
        v55 = *(v42 + v34 - 12);
        *(v53 + 20) = *(v42 + v34 - 4);
        *(v53 + 12) = v55;
        v56 = *(v42 + v35 - 12);
        *(v53 + 32) = *(v42 + v35 - 4);
        *(v53 + 24) = v56;
        v57 = *(v42 + v36 + 24);
        *(v53 + 44) = *(v42 + v36 + 32);
        *(v53 + 36) = v57;
        v58 = v53 + a4;
        v59 = *(v42 + 36);
        *(v58 + 8) = *(v42 + 44);
        *v58 = v59;
        v60 = *(v42 + v34);
        *(v58 + 20) = *(v42 + v34 + 8);
        *(v58 + 12) = v60;
        v61 = *(v42 + v35);
        *(v58 + 32) = *(v42 + v35 + 8);
        *(v58 + 24) = v61;
        v62 = *(v42 + v36 + 36);
        *(v58 + 44) = *(v42 + v36 + 44);
        *(v58 + 36) = v62;
        v41 += 4;
        v43 += 48;
        v42 += 4 * a2;
      }

      while (v41 <= v32);
      v63 = v38;
      v64 = v37;
      v65 = (v32 & 0x7FFFFFFC) + 4;
      if (v5 > v41)
      {
        do
        {
          v66 = *(v63 - 24);
          *(v64 + 8) = *(v63 - 16);
          *v64 = v66;
          v67 = v64 + a4;
          v68 = *(v63 - 12);
          *(v67 + 8) = *(v63 - 4);
          *v67 = v68;
          v69 = v64 + 2 * a4;
          v70 = *v63;
          *(v69 + 8) = *(v63 + 8);
          *v69 = v70;
          v71 = v64 + 3 * a4;
          v72 = *(v63 + 12);
          *(v71 + 8) = *(v63 + 20);
          *v71 = v72;
          ++v65;
          v64 += 12;
          v63 += a2;
        }

        while (v65 < v5);
      }

      v8 += 4;
      v40 += v33;
      v39 += 48;
      v37 += v33;
      v38 += 48;
    }

    while (v8 <= v7);
    v6 = v94;
  }

  else
  {
    if (v5 <= 0)
    {
      LODWORD(v8) = (v7 & 0xFFFFFFFC) + 4;
      if (v8 >= v6)
      {
        return result;
      }

      goto LABEL_20;
    }

    v8 = 0;
    v9 = 2 * a2;
    v10 = 2 * a4;
    v11 = 3 * a4;
    v12 = result;
    v13 = a3;
    do
    {
      v14 = v13 + a4;
      v15 = v13 + v10;
      v16 = v13 + v11;
      v17 = *v12;
      *(v13 + 8) = *(v12 + 8);
      *v13 = v17;
      v18 = *(v12 + 12);
      *(v14 + 8) = *(v12 + 20);
      *v14 = v18;
      v19 = *(v12 + 24);
      *(v15 + 8) = *(v12 + 32);
      *v15 = v19;
      v20 = *(v12 + 36);
      *(v16 + 8) = *(v12 + 44);
      *v16 = v20;
      if (v5 != 1)
      {
        v21 = *(v12 + a2);
        *(v13 + 20) = *(v12 + a2 + 8);
        *(v13 + 12) = v21;
        v22 = *(v12 + a2 + 12);
        *(v14 + 20) = *(v12 + a2 + 20);
        *(v14 + 12) = v22;
        v23 = *(v12 + a2 + 24);
        *(v15 + 20) = *(v12 + a2 + 32);
        *(v15 + 12) = v23;
        v24 = *(v12 + a2 + 36);
        *(v16 + 20) = *(v12 + a2 + 44);
        *(v16 + 12) = v24;
        if (v5 != 2)
        {
          v25 = *(v12 + 2 * a2);
          *(v13 + 32) = *(v12 + v9 + 8);
          *(v13 + 24) = v25;
          v26 = v13 + a4;
          v27 = *(v12 + v9 + 12);
          *(v26 + 32) = *(v12 + v9 + 20);
          *(v26 + 24) = v27;
          v28 = v13 + v10;
          v29 = *(v12 + v9 + 24);
          *(v28 + 32) = *(v12 + v9 + 32);
          *(v28 + 24) = v29;
          v30 = v13 + v11;
          v31 = *(v12 + v9 + 36);
          *(v30 + 32) = *(v12 + v9 + 44);
          *(v30 + 24) = v31;
        }
      }

      v8 += 4;
      v13 += 4 * a4;
      v12 += 48;
    }

    while (v8 <= v7);
  }

  if (v8 >= v6)
  {
    return result;
  }

LABEL_20:
  if (v5 >= 4)
  {
    v78 = (v5 - 4);
    v79 = v8;
    v80 = result + 12 * v8;
    v81 = a3 + a4 * v79;
    v82 = v81 + 24;
    result = v81 + 48 * ((v78 >> 2) & 0x1FFFFFFF) + 48;
    do
    {
      v83 = 0;
      v84 = v82;
      v85 = v80;
      do
      {
        v86 = *v85;
        *(v84 - 16) = *(v85 + 8);
        *(v84 - 24) = v86;
        v87 = *(v85 + a2);
        *(v84 - 4) = *(v85 + a2 + 8);
        *(v84 - 12) = v87;
        v88 = *(v85 + 2 * a2);
        *(v84 + 8) = *(v85 + 2 * a2 + 8);
        *v84 = v88;
        v89 = *(v85 + 3 * a2);
        *(v84 + 20) = *(v85 + 3 * a2 + 8);
        *(v84 + 12) = v89;
        v83 += 4;
        v85 += 4 * a2;
        v84 += 48;
      }

      while (v83 <= v78);
      v90 = a2 * ((v78 & 0x7FFFFFFC) + 4);
      v91 = result;
      v92 = (v78 & 0x7FFFFFFC) + 4;
      if (v5 > v83)
      {
        do
        {
          v93 = *(v80 + v90);
          *(v91 + 8) = *(v80 + v90 + 8);
          *v91 = v93;
          v91 += 12;
          ++v92;
          v90 += a2;
        }

        while (v92 < v5);
      }

      ++v79;
      v80 += 12;
      v82 += a4;
      result += a4;
    }

    while (v6 > v79);
  }

  else if (v5 >= 1)
  {
    v73 = result + 12 * v8;
    v74 = a3 + a4 * v8 + 12;
    do
    {
      v75 = *v73;
      *(v74 - 4) = *(v73 + 8);
      *(v74 - 12) = v75;
      if (v5 != 1)
      {
        v76 = *(v73 + a2);
        *(v74 + 8) = *(v73 + a2 + 8);
        *v74 = v76;
        if (v5 != 2)
        {
          v77 = *(v73 + 2 * a2);
          *(v74 + 20) = *(v73 + 2 * a2 + 8);
          *(v74 + 12) = v77;
        }
      }

      LODWORD(v8) = v8 + 1;
      v73 += 12;
      v74 += a4;
    }

    while (v6 > v8);
  }

  return result;
}

uint64_t sub_10027AC40(uint64_t result, uint64_t a2, _OWORD *a3, uint64_t a4, int *a5)
{
  v5 = *a5;
  v6 = a5[1];
  v7 = (*a5 - 4);
  if (*a5 < 4)
  {
    LODWORD(v8) = 0;
    if (v5 <= 0)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v6 >= 4)
  {
    v8 = 0;
    v14 = (v6 - 4);
    v15 = 4 * a4;
    v16 = a2 + 48;
    v17 = 2 * a2 + 48;
    v18 = 3 * a2;
    v19 = &a3[4 * ((v14 >> 2) & 0x1FFFFFFF) + 4];
    v20 = result + a2 * ((v14 & 0x7FFFFFFC) + 4) + 32;
    v21 = result;
    v22 = a3;
    do
    {
      v23 = 0;
      v24 = v21;
      v25 = v22;
      do
      {
        *v25 = *v24;
        v25[1] = *(v24 + a2);
        v25[2] = *(v24 + 2 * a2);
        v25[3] = *(v24 + 3 * a2);
        v26 = (v25 + a4);
        *v26 = v24[1];
        v26[1] = *(v24 + v16 - 32);
        v26[2] = *(v24 + v17 - 32);
        v26[3] = *(v24 + v18 + 16);
        v27 = (v25 + a4 + a4);
        *v27 = v24[2];
        v27[1] = *(v24 + v16 - 16);
        v27[2] = *(v24 + v17 - 16);
        v27[3] = *(v24 + v18 + 32);
        v28 = (v27 + a4);
        *v28 = v24[3];
        v28[1] = *(v24 + v16);
        v28[2] = *(v24 + v17);
        v28[3] = *(v24 + v18 + 48);
        v23 += 4;
        v25 += 4;
        v24 = (v24 + 4 * a2);
      }

      while (v23 <= v14);
      v29 = v20;
      v30 = v19;
      v31 = (v14 & 0x7FFFFFFC) + 4;
      if (v6 > v23)
      {
        do
        {
          *v30 = *(v29 - 2);
          *(v30 + a4) = *(v29 - 1);
          *(v30 + 2 * a4) = *v29;
          *(v30 + 3 * a4) = v29[1];
          ++v31;
          ++v30;
          v29 = (v29 + a2);
        }

        while (v31 < v6);
      }

      v8 += 4;
      v22 = (v22 + v15);
      v21 += 4;
      v19 += v15;
      v20 += 64;
    }

    while (v8 <= v7);
  }

  else
  {
    if (v6 <= 0)
    {
      LODWORD(v8) = (v7 & 0xFFFFFFFC) + 4;
      if (v8 >= v5)
      {
        return result;
      }

      goto LABEL_19;
    }

    v8 = 0;
    v9 = 2 * a2;
    v10 = 2 * a4;
    v11 = 3 * a4;
    v12 = result;
    v13 = a3;
    do
    {
      *v13 = *v12;
      *(v13 + a4) = v12[1];
      *(v13 + 2 * a4) = v12[2];
      *(v13 + 3 * a4) = v12[3];
      if (v6 != 1)
      {
        v13[1] = *(v12 + a2);
        *(v13 + a4 + 16) = *(v12 + a2 + 16);
        *(v13 + v10 + 16) = *(v12 + a2 + 32);
        *(v13 + v11 + 16) = *(v12 + a2 + 48);
        if (v6 != 2)
        {
          v13[2] = *(v12 + 2 * a2);
          *(v13 + a4 + 32) = *(v12 + v9 + 16);
          *(v13 + v10 + 32) = *(v12 + v9 + 32);
          *(v13 + v11 + 32) = *(v12 + v9 + 48);
        }
      }

      v8 += 4;
      v13 = (v13 + 4 * a4);
      v12 += 4;
    }

    while (v8 <= v7);
  }

  if (v8 >= v5)
  {
    return result;
  }

LABEL_19:
  if (v6 >= 4)
  {
    v34 = (v6 - 4);
    v35 = v8;
    v36 = (result + 16 * v8);
    v37 = a3 + a4 * v35;
    v38 = v37 + 32;
    result = &v37[64 * ((v34 >> 2) & 0x1FFFFFFF) + 64];
    do
    {
      v39 = 0;
      v40 = v38;
      v41 = v36;
      do
      {
        *(v40 - 2) = *v41;
        *(v40 - 1) = *(v41 + a2);
        *v40 = *(v41 + 2 * a2);
        v40[1] = *(v41 + 3 * a2);
        v39 += 4;
        v41 = (v41 + 4 * a2);
        v40 += 4;
      }

      while (v39 <= v34);
      v42 = a2 * ((v34 & 0x7FFFFFFC) + 4);
      v43 = result;
      v44 = (v34 & 0x7FFFFFFC) + 4;
      if (v6 > v39)
      {
        do
        {
          *v43++ = *(v36 + v42);
          ++v44;
          v42 += a2;
        }

        while (v44 < v6);
      }

      ++v35;
      ++v36;
      v38 = (v38 + a4);
      result += a4;
    }

    while (v5 > v35);
  }

  else if (v6 >= 1)
  {
    v32 = (result + 16 * v8);
    v33 = (a3 + a4 * v8 + 16);
    do
    {
      *(v33 - 1) = *v32;
      if (v6 != 1)
      {
        *v33 = *(v32 + a2);
        if (v6 != 2)
        {
          v33[1] = *(v32 + 2 * a2);
        }
      }

      LODWORD(v8) = v8 + 1;
      ++v32;
      v33 = (v33 + a4);
    }

    while (v5 > v8);
  }

  return result;
}

uint64_t sub_10027B008(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = *a5;
  v6 = a5[1];
  v7 = (*a5 - 4);
  if (*a5 < 4)
  {
    LODWORD(v8) = 0;
    if (v5 <= 0)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (v6 >= 4)
  {
    v8 = 0;
    v32 = (v6 - 4);
    v33 = 4 * a4;
    v34 = a2 + 72;
    v35 = 2 * a2 + 72;
    v36 = 3 * a2;
    v37 = a3 + 96 * ((v32 >> 2) & 0x1FFFFFFF) + 96;
    v38 = result + a2 * ((v32 & 0x7FFFFFFC) + 4) + 48;
    v39 = result;
    v40 = a3;
    do
    {
      v41 = 0;
      v42 = v39;
      v43 = v40;
      do
      {
        v44 = *v42;
        *(v43 + 16) = *(v42 + 16);
        *v43 = v44;
        v45 = *(v42 + a2);
        *(v43 + 40) = *(v42 + v34 - 56);
        *(v43 + 24) = v45;
        v46 = *(v42 + 2 * a2);
        *(v43 + 64) = *(v42 + v35 - 56);
        *(v43 + 48) = v46;
        v47 = *(v42 + 3 * a2);
        *(v43 + 88) = *(v42 + v36 + 16);
        *(v43 + 72) = v47;
        v48 = v43 + a4;
        v49 = *(v42 + 24);
        *(v48 + 16) = *(v42 + 40);
        *v48 = v49;
        v50 = *(v42 + v34 - 48);
        *(v48 + 40) = *(v42 + v34 - 32);
        *(v48 + 24) = v50;
        v51 = *(v42 + v35 - 48);
        *(v48 + 64) = *(v42 + v35 - 32);
        *(v48 + 48) = v51;
        v52 = *(v42 + v36 + 24);
        *(v48 + 88) = *(v42 + v36 + 40);
        *(v48 + 72) = v52;
        v53 = v43 + a4 + a4;
        v54 = *(v42 + 48);
        *(v53 + 16) = *(v42 + 64);
        *v53 = v54;
        v55 = *(v42 + v34 - 24);
        *(v53 + 40) = *(v42 + v34 - 8);
        *(v53 + 24) = v55;
        v56 = *(v42 + v35 - 24);
        *(v53 + 64) = *(v42 + v35 - 8);
        *(v53 + 48) = v56;
        v57 = *(v42 + v36 + 48);
        *(v53 + 88) = *(v42 + v36 + 64);
        *(v53 + 72) = v57;
        v58 = v53 + a4;
        v59 = *(v42 + 72);
        *(v58 + 16) = *(v42 + 88);
        *v58 = v59;
        v60 = *(v42 + v34);
        *(v58 + 40) = *(v42 + v34 + 16);
        *(v58 + 24) = v60;
        v61 = *(v42 + v35);
        *(v58 + 64) = *(v42 + v35 + 16);
        *(v58 + 48) = v61;
        v62 = *(v42 + v36 + 72);
        *(v58 + 88) = *(v42 + v36 + 88);
        *(v58 + 72) = v62;
        v41 += 4;
        v43 += 96;
        v42 += 4 * a2;
      }

      while (v41 <= v32);
      v63 = v38;
      v64 = v37;
      v65 = (v32 & 0x7FFFFFFC) + 4;
      if (v6 > v41)
      {
        do
        {
          v66 = *(v63 - 48);
          *(v64 + 16) = *(v63 - 32);
          *v64 = v66;
          v67 = v64 + a4;
          v68 = *(v63 - 24);
          *(v67 + 16) = *(v63 - 8);
          *v67 = v68;
          v69 = v64 + 2 * a4;
          v70 = *v63;
          *(v69 + 16) = *(v63 + 16);
          *v69 = v70;
          v71 = v64 + 3 * a4;
          v72 = *(v63 + 24);
          *(v71 + 16) = *(v63 + 40);
          *v71 = v72;
          ++v65;
          v64 += 24;
          v63 += a2;
        }

        while (v65 < v6);
      }

      v8 += 4;
      v40 += v33;
      v39 += 96;
      v37 += v33;
      v38 += 96;
    }

    while (v8 <= v7);
  }

  else
  {
    if (v6 <= 0)
    {
      LODWORD(v8) = (v7 & 0xFFFFFFFC) + 4;
      if (v8 >= v5)
      {
        return result;
      }

      goto LABEL_19;
    }

    v8 = 0;
    v9 = 2 * a2;
    v10 = 2 * a4;
    v11 = 3 * a4;
    v12 = result;
    v13 = a3;
    do
    {
      v14 = v13 + a4;
      v15 = v13 + v10;
      v16 = v13 + v11;
      v17 = *v12;
      *(v13 + 16) = *(v12 + 16);
      *v13 = v17;
      v18 = *(v12 + 24);
      *(v14 + 16) = *(v12 + 40);
      *v14 = v18;
      v19 = *(v12 + 48);
      *(v15 + 16) = *(v12 + 64);
      *v15 = v19;
      v20 = *(v12 + 72);
      *(v16 + 16) = *(v12 + 88);
      *v16 = v20;
      if (v6 != 1)
      {
        v21 = *(v12 + a2);
        *(v13 + 40) = *(v12 + a2 + 16);
        *(v13 + 24) = v21;
        v22 = *(v12 + a2 + 24);
        *(v14 + 40) = *(v12 + a2 + 40);
        *(v14 + 24) = v22;
        v23 = *(v12 + a2 + 48);
        *(v15 + 40) = *(v12 + a2 + 64);
        *(v15 + 24) = v23;
        v24 = *(v12 + a2 + 72);
        *(v16 + 40) = *(v12 + a2 + 88);
        *(v16 + 24) = v24;
        if (v6 != 2)
        {
          v25 = *(v12 + 2 * a2);
          *(v13 + 64) = *(v12 + v9 + 16);
          *(v13 + 48) = v25;
          v26 = v13 + a4;
          v27 = *(v12 + v9 + 24);
          *(v26 + 64) = *(v12 + v9 + 40);
          *(v26 + 48) = v27;
          v28 = v13 + v10;
          v29 = *(v12 + v9 + 48);
          *(v28 + 64) = *(v12 + v9 + 64);
          *(v28 + 48) = v29;
          v30 = v13 + v11;
          v31 = *(v12 + v9 + 72);
          *(v30 + 64) = *(v12 + v9 + 88);
          *(v30 + 48) = v31;
        }
      }

      v8 += 4;
      v13 += 4 * a4;
      v12 += 96;
    }

    while (v8 <= v7);
  }

  if (v8 >= v5)
  {
    return result;
  }

LABEL_19:
  if (v6 >= 4)
  {
    v78 = (v6 - 4);
    v79 = v8;
    v80 = result + 24 * v8;
    v81 = a3 + a4 * v79;
    v82 = v81 + 48;
    result = v81 + 96 * ((v78 >> 2) & 0x1FFFFFFF) + 96;
    do
    {
      v83 = 0;
      v84 = v82;
      v85 = v80;
      do
      {
        v86 = *v85;
        *(v84 - 32) = *(v85 + 16);
        *(v84 - 48) = v86;
        v87 = *(v85 + a2);
        *(v84 - 8) = *(v85 + a2 + 16);
        *(v84 - 24) = v87;
        v88 = *(v85 + 2 * a2);
        *(v84 + 16) = *(v85 + 2 * a2 + 16);
        *v84 = v88;
        v89 = *(v85 + 3 * a2);
        *(v84 + 40) = *(v85 + 3 * a2 + 16);
        *(v84 + 24) = v89;
        v83 += 4;
        v85 += 4 * a2;
        v84 += 96;
      }

      while (v83 <= v78);
      v90 = a2 * ((v78 & 0x7FFFFFFC) + 4);
      v91 = result;
      v92 = (v78 & 0x7FFFFFFC) + 4;
      if (v6 > v83)
      {
        do
        {
          v93 = *(v80 + v90);
          *(v91 + 16) = *(v80 + v90 + 16);
          *v91 = v93;
          v91 += 24;
          ++v92;
          v90 += a2;
        }

        while (v92 < v6);
      }

      ++v79;
      v80 += 24;
      v82 += a4;
      result += a4;
    }

    while (v5 > v79);
  }

  else if (v6 >= 1)
  {
    v73 = result + 24 * v8;
    v74 = a3 + a4 * v8 + 24;
    do
    {
      v75 = *v73;
      *(v74 - 8) = *(v73 + 16);
      *(v74 - 24) = v75;
      if (v6 != 1)
      {
        v76 = *(v73 + a2);
        *(v74 + 16) = *(v73 + a2 + 16);
        *v74 = v76;
        if (v6 != 2)
        {
          v77 = *(v73 + 2 * a2);
          *(v74 + 40) = *(v73 + 2 * a2 + 16);
          *(v74 + 24) = v77;
        }
      }

      LODWORD(v8) = v8 + 1;
      v73 += 24;
      v74 += a4;
    }

    while (v5 > v8);
  }

  return result;
}